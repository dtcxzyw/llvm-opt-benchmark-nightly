Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/environment?download=true
begin_hunk_0_@_Z18printPrecisionInfov:._crit_edge.i.i

bb.ag:                                            ; preds = %.noexc164
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !23 ; 2 uses
  %i.gu = icmp ult i64 %i.gt, 16
  call void @llvm.assume(i1 %i.gu)
  %i.gv = add nuw nsw i64 %i.gt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.go, ptr noundef nonnull align 8 dereferenceable(1) %i.gq, i64 %i.gv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i160: ; preds = %.noexc164
  store ptr %i.gp, ptr %14, align 8, !tbaa !30, !alias.scope !49
  %i.gw = load i64, ptr %i.gq, align 8, !tbaa !26
  store i64 %i.gw, ptr %i.go, align 8, !tbaa !26, !alias.scope !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i161: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i160, %bb.ag
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !23
  %i.gz = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !23, !alias.scope !49
  store ptr %i.gq, ptr %i.gn, align 8, !tbaa !30
  store i64 0, ptr %i.gx, align 8, !tbaa !23
  store i8 0, ptr %i.gq, align 8, !tbaa !26
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit167

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i152
  %i.ha = sub i64 4611686018427387903, %i.fx
  %i.hb = icmp ult i64 %i.ha, %i.fz
  br i1 %i.hb, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i153

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
          to label %.noexc165 unwind label %bb.bo

.noexc165:                                        ; preds = %bb.ai
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i153: ; preds = %bb.ah
  %i.hc = load ptr, ptr %17, align 8, !tbaa !30, !noalias !49
  %i.hd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef %i.hc, i64 noundef %i.fz)
          to label %.noexc166 unwind label %bb.bo ; 5 uses

.noexc166:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i153
  %i.he = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.he, ptr %14, align 8, !tbaa !20, !alias.scope !49
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !30 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 5 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i154

bb.aj:                                            ; preds = %.noexc166
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !23 ; 2 uses
  %i.hk = icmp ult i64 %i.hj, 16
  call void @llvm.assume(i1 %i.hk)
  %i.hl = add nuw nsw i64 %i.hj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.he, ptr noundef nonnull align 8 dereferenceable(1) %i.hg, i64 %i.hl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i154: ; preds = %.noexc166
  store ptr %i.hf, ptr %14, align 8, !tbaa !30, !alias.scope !49
  %i.hm = load i64, ptr %i.hg, align 8, !tbaa !26
  store i64 %i.hm, ptr %i.he, align 8, !tbaa !26, !alias.scope !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i155: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i154, %bb.aj
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !23
  %i.hp = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !23, !alias.scope !49
  store ptr %i.hg, ptr %i.hd, align 8, !tbaa !30
  store i64 0, ptr %i.hn, align 8, !tbaa !23
  store i8 0, ptr %i.hg, align 8, !tbaa !26
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit167

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i161
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.hq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !23, !noalias !52
  %i.hs = icmp eq i64 %i.hr, 4611686018427387903
  br i1 %i.hs, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i168

bb.ak:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit167
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
          to label %.noexc173 unwind label %bb.bp

.noexc173:                                        ; preds = %bb.ak
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i168: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit167
  %i.ht = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %.noexc174 unwind label %bb.bp ; 6 uses

.noexc174:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i168
  %i.hu = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.hu, ptr %13, align 8, !tbaa !20, !alias.scope !52
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !30 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 5 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

bb.al:                                            ; preds = %.noexc174
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !23 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 16
  call void @llvm.assume(i1 %i.ia)
  %i.ib = add nuw nsw i64 %i.hz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hu, ptr noundef nonnull align 8 dereferenceable(1) %i.hw, i64 %i.ib, i1 false)
  br label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %.noexc174
  store ptr %i.hv, ptr %13, align 8, !tbaa !30, !alias.scope !52
  %i.ic = load i64, ptr %i.hw, align 8, !tbaa !26
  store i64 %i.ic, ptr %i.hu, align 8, !tbaa !26, !alias.scope !52
  %.phi.trans.insert.i170 = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %.pre.i171 = load i64, ptr %.phi.trans.insert.i170, align 8, !tbaa !23
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %bb.al
  %i.id = phi i64 [ %i.hz, %bb.al ], [ %.pre.i171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.id, ptr %i.if, align 8, !tbaa !23, !alias.scope !52
  store ptr %i.hw, ptr %i.ht, align 8, !tbaa !30
  store i64 0, ptr %i.ie, align 8, !tbaa !23
  store i8 0, ptr %i.hw, align 8, !tbaa !26
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA7_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ff, ptr noundef nonnull align 1 dereferenceable(7) @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA7_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit unwind label %bb.bq

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA7_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.am
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.ih = invoke noundef double @_Z25validateconfig_getEpsilonv()
          to label %bb.an unwind label %bb.br

bb.an:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA7_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  invoke void @_Z13printer_toStrB5cxx11d(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, double noundef %i.ih)
          to label %bb.ao unwind label %bb.br

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA18_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ig, ptr noundef nonnull align 1 dereferenceable(18) @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA18_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit unwind label %bb.bs

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA18_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.ii = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #28
          to label %.noexc290 unwind label %.body291.thread ; 9 uses

.noexc290:                                        ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA18_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  store ptr %i.ii, ptr %1, align 8, !tbaa !55
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 256
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !58
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.ii, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.ap

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc290
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 64 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.il, ptr noundef nonnull align 8 dereferenceable(64) %i.ce)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %bb.ap

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 128 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.im, ptr noundef nonnull align 8 dereferenceable(64) %i.ff)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 unwind label %bb.ap

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 192 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.in, ptr noundef nonnull align 8 dereferenceable(64) %i.ig)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3 unwind label %bb.ap

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 256
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !59
  %i.iq = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.iq, ptr %19, align 8, !tbaa !20
  %i.ir = load ptr, ptr @_ZL18defaultTableIndentB5cxx11, align 8, !tbaa !30 ; 2 uses
  %i.is = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.is, ptr %i.a, align 8, !tbaa !60
  %i.it = icmp ugt i64 %i.is, 15
  br i1 %i.it, label %.noexc.i179, label %._crit_edge.i.i178

bb.ap:                                            ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc290
  %.016.i.i.i.i.i.lcssa = phi ptr [ %i.ii, %.noexc290 ], [ %i.il, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.im, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ], [ %i.in, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 ]
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  %i.iw = call ptr @__cxa_begin_catch(ptr %i.iv) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvT_S9_(ptr noundef nonnull %i.ii, ptr noundef nonnull %.016.i.i.i.i.i.lcssa)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @__cxa_rethrow() #27
          to label %bb.at unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body291 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  call void @__clang_call_terminate(ptr %i.iz) #25
  unreachable

bb.at:                                            ; preds = %bb.aq
  unreachable

.body291.thread:                                  ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA18_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body291:                                         ; preds = %bb.ar
  %.pr = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %.body, label %bb.au

bb.au:                                            ; preds = %.body291
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !58
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %.pr to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.jf) #29
  br label %.body

.noexc.i179:                                      ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3
  %i.jg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc180 unwind label %bb.bt ; 2 uses

.noexc180:                                        ; preds = %.noexc.i179
  store ptr %i.jg, ptr %19, align 8, !tbaa !30
  %i.jh = load i64, ptr %i.a, align 8, !tbaa !60
  store i64 %i.jh, ptr %i.iq, align 8, !tbaa !26
  br label %._crit_edge.i.i178

._crit_edge.i.i178:                               ; preds = %.noexc180, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3
  %i.ji = phi ptr [ %i.jg, %.noexc180 ], [ %i.iq, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3 ] ; 2 uses
  switch i64 %i.is, label %bb.aw [
    i64 1, label %bb.av
    i64 0, label %bb.ax
  ]

bb.av:                                            ; preds = %._crit_edge.i.i178
  %i.jj = load i8, ptr %i.ir, align 1, !tbaa !26
  store i8 %i.jj, ptr %i.ji, align 1, !tbaa !26
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge.i.i178
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ji, ptr align 1 %i.ir, i64 %i.is, i1 false)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %._crit_edge.i.i178
  %i.jk = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !23
  %i.jm = load ptr, ptr %19, align 8, !tbaa !30
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jk
  store i8 0, ptr %i.jn, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_Z11print_tableNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt5tupleIJS4_S4_EESaIS7_EES4_(ptr nofree noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ay unwind label %bb.bu

bb.ay:                                            ; preds = %bb.ax
  %i.jo = load ptr, ptr %19, align 8, !tbaa !30   ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.iq
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %bb.ay
  %i.jq = load i64, ptr %i.iq, align 8, !tbaa !26
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  %i.js = load ptr, ptr %1, align 8, !tbaa !55    ; 3 uses
  %i.jt = load ptr, ptr %i.ip, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.js, %i.jt
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kf, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i ], [ %i.js, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !30 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !26
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jz) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ka = load ptr, ptr %.05.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !26
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #29
  br label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i183 = icmp eq ptr %i.kf, %i.jt
  br i1 %.not.i.i.i183, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !61

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.kg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.js, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.kg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.kh = load ptr, ptr %i.ik, align 8, !tbaa !58
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.kg to i64
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kk) #29
  br label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.az
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !30 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !26
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kr) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ks = load ptr, ptr %i.kl, align 8, !tbaa !30 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !26
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kw) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !30 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !26
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1
  %i.le = load ptr, ptr %i.kx, align 8, !tbaa !30 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.lg = icmp eq ptr %i.le, %i.lf
  br i1 %i.lg, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1
  %i.lh = load i64, ptr %i.lf, align 8, !tbaa !26
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.li) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !30 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ln = icmp eq ptr %i.ll, %i.lm
  br i1 %i.ln, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1
  %i.lo = load i64, ptr %i.lm, align 8, !tbaa !26
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lp) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2
  %i.lq = load ptr, ptr %i.lj, align 8, !tbaa !30 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2
  %i.lt = load i64, ptr %i.lr, align 8, !tbaa !26
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lu) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !30 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.3

end_hunk_0
begin_hunk_1_@_Z18printPrecisionInfov:._crit_edge.i.i
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217
  %i.oh = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218
  %i.oj = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ol = icmp eq ptr %i.oj, %i.ok
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220
  %i.om = load i64, ptr %i.ok, align 8, !tbaa !26
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.on) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  %i.oo = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %i.or = load i64, ptr %i.op, align 8, !tbaa !26
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ot = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.j
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  %i.ov = load i64, ptr %i.j, align 8, !tbaa !26
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ow) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  %i.ox = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.oz = icmp eq ptr %i.ox, %i.oy
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %i.pa = load i64, ptr %i.oy, align 8, !tbaa !26
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.pc = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.b
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.pe = load i64, ptr %i.b, align 8, !tbaa !26
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286.thread: ; preds = %._crit_edge.i.i
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.loopexit

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.b
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283

bb.bb:                                            ; preds = %bb.d
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.i, %.critedge.i
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i99, %bb.k
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

bb.be:                                            ; preds = %bb.m
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bf:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA6_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i108, %bb.o
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

bb.bh:                                            ; preds = %bb.q
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i118, %bb.v, %.critedge.i124
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i133, %bb.x
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

bb.bk:                                            ; preds = %bb.z
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bl:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA6_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit142
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i143, %bb.ab
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

bb.bn:                                            ; preds = %bb.ad
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i153, %bb.ai, %.critedge.i159
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i168, %bb.ak
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.bq:                                            ; preds = %bb.am
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.br:                                            ; preds = %bb.an, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA7_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

bb.bs:                                            ; preds = %bb.ao
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit299

bb.bt:                                            ; preds = %.noexc.i179
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

bb.bu:                                            ; preds = %bb.ax
  %i.qb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qc = load ptr, ptr %19, align 8, !tbaa !30   ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.iq
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.bu
  %i.qe = load i64, ptr %i.iq, align 8, !tbaa !26
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236, %bb.bt
  %.pn = phi { ptr, i32 } [ %i.qa, %bb.bt ], [ %i.qb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236 ], [ %i.qb, %bb.bu ]
  call void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #24
  br label %.body

.body:                                            ; preds = %.body291.thread, %bb.au, %.body291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238 ], [ %i.ix, %.body291 ], [ %i.ix, %bb.au ], [ %i.ja, %.body291.thread ]
  %i.qg = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.qg) #24
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.qh) #24
  %i.qi = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.qi) #24
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #24
  br label %.loopexit299

.loopexit299:                                     ; preds = %.body, %bb.bs
  %.pn.pn.pn = phi { ptr, i32 } [ %i.pz, %bb.bs ], [ %.pn.pn, %.body ] ; 2 uses
  %i.qj = phi i1 [ false, %bb.bs ], [ true, %.body ] ; 2 uses
  %i.qk = load ptr, ptr %18, align 8, !tbaa !30   ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.qm = icmp eq ptr %i.qk, %i.ql
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %.loopexit299
  %i.qn = load i64, ptr %i.ql, align 8, !tbaa !26
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.qk, i64 noundef %i.qo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %.loopexit299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239, %bb.br
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.py, %bb.br ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239 ], [ %.pn.pn.pn, %.loopexit299 ]
  %.1 = phi i1 [ false, %bb.br ], [ %i.qj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239 ], [ %i.qj, %.loopexit299 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %bb.bq
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %i.px, %bb.bq ] ; 2 uses
  %.04 = phi ptr [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %i.ff, %bb.bq ] ; 2 uses
  %.2 = phi i1 [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ false, %bb.bq ] ; 2 uses
  %i.qp = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.qq = icmp eq ptr %i.qp, %i.hu
  br i1 %i.qq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %bb.bv
  %i.qr = load i64, ptr %i.hu, align 8, !tbaa !26
  %i.qs = add i64 %i.qr, 1
  call void @_ZdlPvm(ptr noundef %i.qp, i64 noundef %i.qs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %bb.bp
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pw, %bb.bp ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %.pn.pn.pn.pn.pn, %bb.bv ] ; 2 uses
  %.110 = phi ptr [ %i.ff, %bb.bp ], [ %.04, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %.04, %bb.bv ] ; 2 uses
  %.3 = phi i1 [ false, %bb.bp ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %.2, %bb.bv ] ; 2 uses
  %i.qt = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.qv = icmp eq ptr %i.qt, %i.qu
  br i1 %i.qv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %i.qw = load i64, ptr %i.qu, align 8, !tbaa !26
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.bo
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pv, %bb.bo ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ] ; 2 uses
  %.211 = phi ptr [ %i.ff, %bb.bo ], [ %.110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ] ; 2 uses
  %.4 = phi i1 [ false, %bb.bo ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ] ; 2 uses
  %i.qy = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ra = icmp eq ptr %i.qy, %i.qz
  br i1 %i.ra, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %i.rb = load i64, ptr %i.qz, align 8, !tbaa !26
  %i.rc = add i64 %i.rb, 1
  call void @_ZdlPvm(ptr noundef %i.qy, i64 noundef %i.rc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, %bb.bn
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pu, %bb.bn ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ] ; 2 uses
  %.312 = phi ptr [ %i.ff, %bb.bn ], [ %.211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %.211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ] ; 2 uses
  %.5 = phi i1 [ false, %bb.bn ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.rd = load ptr, ptr %15, align 8, !tbaa !30   ; 2 uses
  %i.re = icmp eq ptr %i.rd, %i.fl
  br i1 %i.re, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %i.rf = load i64, ptr %i.fl, align 8, !tbaa !26
  %i.rg = add i64 %i.rf, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %bb.bm
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pt, %bb.bm ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ] ; 2 uses
  %.413 = phi ptr [ %i.ff, %bb.bm ], [ %.312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ] ; 2 uses
  %.6 = phi i1 [ false, %bb.bm ], [ %.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ] ; 2 uses
  %i.rh = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.rj = icmp eq ptr %i.rh, %i.ri
  br i1 %i.rj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %i.rk = load i64, ptr %i.ri, align 8, !tbaa !26
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254, %bb.bl
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ps, %bb.bl ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ]
  %.514 = phi ptr [ %i.ff, %bb.bl ], [ %.413, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %.413, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ]
  %.7 = phi i1 [ false, %bb.bl ], [ %.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %bb.bk
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %i.pr, %bb.bk ] ; 2 uses
  %.615 = phi ptr [ %.514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %i.ce, %bb.bk ] ; 2 uses
  %.8 = phi i1 [ %.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ false, %bb.bk ] ; 2 uses
  %i.rm = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.rn = icmp eq ptr %i.rm, %i.et
  br i1 %i.rn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %bb.bw
  %i.ro = load i64, ptr %i.et, align 8, !tbaa !26
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257, %bb.bj
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pq, %bb.bj ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bw ] ; 2 uses
  %.716 = phi ptr [ %i.ce, %bb.bj ], [ %.615, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %.615, %bb.bw ] ; 2 uses
  %.9 = phi i1 [ false, %bb.bj ], [ %.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %.8, %bb.bw ] ; 2 uses
  %i.rq = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.rs = icmp eq ptr %i.rq, %i.rr
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
  %i.rt = load i64, ptr %i.rr, align 8, !tbaa !26
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.ru) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260, %bb.bi
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pp, %bb.bi ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259 ] ; 2 uses
  %.817 = phi ptr [ %i.ce, %bb.bi ], [ %.716, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ %.716, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259 ] ; 2 uses
  %.10 = phi i1 [ false, %bb.bi ], [ %.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ %.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259 ] ; 2 uses
  %i.rv = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.rx = icmp eq ptr %i.rv, %i.rw
  br i1 %i.rx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  %i.ry = load i64, ptr %i.rw, align 8, !tbaa !26
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.rz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263, %bb.bh
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.po, %bb.bh ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ] ; 2 uses
  %.918 = phi ptr [ %i.ce, %bb.bh ], [ %.817, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263 ], [ %.817, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ] ; 2 uses
  %.11 = phi i1 [ false, %bb.bh ], [ %.10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263 ], [ %.10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.sa = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.ck
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265
  %i.sc = load i64, ptr %i.ck, align 8, !tbaa !26
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.sd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266, %bb.bg
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pn, %bb.bg ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ] ; 2 uses
  %.1019 = phi ptr [ %i.ce, %bb.bg ], [ %.918, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266 ], [ %.918, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ] ; 2 uses
  %.12 = phi i1 [ false, %bb.bg ], [ %.11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266 ], [ %.11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ] ; 2 uses
  %i.se = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.sg = icmp eq ptr %i.se, %i.sf
  br i1 %i.sg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  %i.sh = load i64, ptr %i.sf, align 8, !tbaa !26
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.si) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269, %bb.bf
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pm, %bb.bf ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ]
  %.1120 = phi ptr [ %i.ce, %bb.bf ], [ %.1019, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269 ], [ %.1019, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ]
  %.13 = phi i1 [ false, %bb.bf ], [ %.12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269 ], [ %.12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, %bb.be
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271 ], [ %i.pl, %bb.be ] ; 2 uses
  %.1221 = phi ptr [ %.1120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271 ], [ %2, %bb.be ] ; 2 uses
end_hunk_1
begin_hunk_2_@_Z12printCpuInfov:bb.a

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit115, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit111
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr noundef nonnull align 1 dereferenceable(12) @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit117 unwind label %bb.bg

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit117: ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.dx = invoke noundef zeroext i1 @_Z20cpu_isOpenmpCompiledv()
          to label %bb.ae unwind label %bb.bh     ; 3 uses

bb.ae:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit117
  br i1 %i.dx, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.dy = invoke noundef i32 @_Z26cpu_getAvailableNumThreadsv()
          to label %bb.ag unwind label %bb.bi

bb.ag:                                            ; preds = %bb.af
  invoke void @_Z13printer_toStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i32 noundef %i.dy)
          to label %bb.ah unwind label %bb.bi

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.dz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18printer_substrings2pnB5cxx11E, i64 8), align 8, !tbaa !23, !noalias !82 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !23, !noalias !82
  %i.ec = sub i64 4611686018427387903, %i.eb
  %i.ed = icmp ult i64 %i.ec, %i.dz
  br i1 %i.ed, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i118

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
          to label %.noexc122 unwind label %bb.bj

.noexc122:                                        ; preds = %bb.ai
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i118: ; preds = %bb.ah
  %i.ee = load ptr, ptr @_ZN18printer_substrings2pnB5cxx11E, align 8, !tbaa !30, !noalias !82
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.ee, i64 noundef %i.dz)
          to label %.noexc123 unwind label %bb.bj ; 6 uses

.noexc123:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i118
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.eg, ptr %10, align 8, !tbaa !20, !alias.scope !82
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !30 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 5 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

bb.aj:                                            ; preds = %.noexc123
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !23 ; 3 uses
  %i.em = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.em)
  %i.en = add nuw nsw i64 %i.el, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eg, ptr noundef nonnull align 8 dereferenceable(1) %i.ei, i64 %i.en, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %.noexc123
  store ptr %i.eh, ptr %10, align 8, !tbaa !30, !alias.scope !82
  %i.eo = load i64, ptr %i.ei, align 8, !tbaa !26
  store i64 %i.eo, ptr %i.eg, align 8, !tbaa !26, !alias.scope !82
  %.phi.trans.insert.i120 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.pre.i121 = load i64, ptr %.phi.trans.insert.i120, align 8, !tbaa !23
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit124

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit124: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  %i.ep = phi i64 [ %i.el, %bb.aj ], [ %.pre.i121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ep, ptr %i.er, align 8, !tbaa !23, !alias.scope !82
  store ptr %i.ei, ptr %i.ef, align 8, !tbaa !30
  store i64 0, ptr %i.eq, align 8, !tbaa !23
  store i8 0, ptr %i.ei, align 8, !tbaa !26
  br label %bb.an

bb.ak:                                            ; preds = %bb.ae
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.es, ptr %10, align 8, !tbaa !20
  %i.et = load ptr, ptr @_ZN18printer_substrings2naB5cxx11E, align 8, !tbaa !30 ; 2 uses
  %i.eu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18printer_substrings2naB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.eu, ptr %i.b, align 8, !tbaa !60
  %i.ev = icmp ugt i64 %i.eu, 15
  br i1 %i.ev, label %.noexc.i126, label %._crit_edge.i.i125

.noexc.i126:                                      ; preds = %bb.ak
  %i.ew = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc127 unwind label %bb.bj ; 2 uses

.noexc127:                                        ; preds = %.noexc.i126
  store ptr %i.ew, ptr %10, align 8, !tbaa !30
  %i.ex = load i64, ptr %i.b, align 8, !tbaa !60
  store i64 %i.ex, ptr %i.es, align 8, !tbaa !26
  br label %._crit_edge.i.i125

._crit_edge.i.i125:                               ; preds = %.noexc127, %bb.ak
  %i.ey = phi ptr [ %i.ew, %.noexc127 ], [ %i.es, %bb.ak ] ; 2 uses
  switch i64 %i.eu, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit128
  ]

bb.al:                                            ; preds = %._crit_edge.i.i125
  %i.ez = load i8, ptr %i.et, align 1, !tbaa !26
  store i8 %i.ez, ptr %i.ey, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit128

bb.am:                                            ; preds = %._crit_edge.i.i125
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %i.et, i64 %i.eu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit128: ; preds = %._crit_edge.i.i125, %bb.al, %bb.am
  %i.fa = load i64, ptr %i.b, align 8, !tbaa !60  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !23
  %i.fc = load ptr, ptr %10, align 8, !tbaa !30
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fa
  store i8 0, ptr %i.fd, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit128, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit124
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dw, ptr noundef nonnull align 1 dereferenceable(12) @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit130 unwind label %bb.bk

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit130: ; preds = %bb.an
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA10_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.fe, ptr noundef nonnull align 1 dereferenceable(10) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA10_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit unwind label %bb.bk

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA10_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit130
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 256 ; 4 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ff, ptr noundef nonnull align 1 dereferenceable(14) @.str.35, ptr noundef nonnull align 8 dereferenceable(32) @_ZN18printer_substrings2unB5cxx11E)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit unwind label %bb.bk

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA10_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.fg = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #28
          to label %.noexc193 unwind label %.body194.thread ; 10 uses

.noexc193:                                        ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  store ptr %i.fg, ptr %4, align 8, !tbaa !55
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 320
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !58
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.fg, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.ao

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc193
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 64 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.fj, ptr noundef nonnull align 8 dereferenceable(64) %i.co)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %bb.ao

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 128 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.fk, ptr noundef nonnull align 8 dereferenceable(64) %i.dw)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 unwind label %bb.ao

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 192 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.fl, ptr noundef nonnull align 8 dereferenceable(64) %i.fe)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3 unwind label %bb.ao

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 256 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.fm, ptr noundef nonnull align 8 dereferenceable(64) %i.ff)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4 unwind label %bb.ao

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 320
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !59
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.fp, ptr %12, align 8, !tbaa !20
  %i.fq = load ptr, ptr @_ZL18defaultTableIndentB5cxx11, align 8, !tbaa !30 ; 2 uses
  %i.fr = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.fr, ptr %i.a, align 8, !tbaa !60
  %i.fs = icmp ugt i64 %i.fr, 15
  br i1 %i.fs, label %.noexc.i134, label %._crit_edge.i.i133

bb.ao:                                            ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc193
  %.016.i.i.i.i.i.lcssa = phi ptr [ %i.fg, %.noexc193 ], [ %i.fj, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.fk, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ], [ %i.fl, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 ], [ %i.fm, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3 ]
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  %i.fv = call ptr @__cxa_begin_catch(ptr %i.fu) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvT_S9_(ptr noundef nonnull %i.fg, ptr noundef nonnull %.016.i.i.i.i.i.lcssa)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_rethrow() #27
          to label %bb.as unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body194 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #25
  unreachable

bb.as:                                            ; preds = %bb.ap
  unreachable

.body194.thread:                                  ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body194:                                         ; preds = %bb.aq
  %.pr = load ptr, ptr %4, align 8, !tbaa !55     ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %.body, label %bb.at

bb.at:                                            ; preds = %.body194
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !58
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %.pr to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ge) #29
  br label %.body

.noexc.i134:                                      ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4
  %i.gf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc135 unwind label %bb.bl ; 2 uses

.noexc135:                                        ; preds = %.noexc.i134
  store ptr %i.gf, ptr %12, align 8, !tbaa !30
  %i.gg = load i64, ptr %i.a, align 8, !tbaa !60
  store i64 %i.gg, ptr %i.fp, align 8, !tbaa !26
  br label %._crit_edge.i.i133

._crit_edge.i.i133:                               ; preds = %.noexc135, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4
  %i.gh = phi ptr [ %i.gf, %.noexc135 ], [ %i.fp, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4 ] ; 2 uses
  switch i64 %i.fr, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %bb.aw
  ]

bb.au:                                            ; preds = %._crit_edge.i.i133
  %i.gi = load i8, ptr %i.fq, align 1, !tbaa !26
  store i8 %i.gi, ptr %i.gh, align 1, !tbaa !26
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i133
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gh, ptr align 1 %i.fq, i64 %i.fr, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge.i.i133
  %i.gj = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !23
  %i.gl = load ptr, ptr %12, align 8, !tbaa !30
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gj
  store i8 0, ptr %i.gm, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_Z11print_tableNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt5tupleIJS4_S4_EESaIS7_EES4_(ptr nofree noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef nonnull align 8 dereferenceable(24) %4, ptr nofree noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ax unwind label %bb.bm

bb.ax:                                            ; preds = %bb.aw
  %i.gn = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.fp
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.ax
  %i.gp = load i64, ptr %i.fp, align 8, !tbaa !26
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  %i.gr = load ptr, ptr %4, align 8, !tbaa !55    ; 3 uses
  %i.gs = load ptr, ptr %i.fo, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gr, %i.gs
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.he, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i ], [ %i.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ] ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !30 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !26
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.gz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !26
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #29
  br label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i140 = icmp eq ptr %i.he, %i.gs
  br i1 %.not.i.i.i140, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !61

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.hf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.hg = load ptr, ptr %i.fi, align 8, !tbaa !58
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hj) #29
  br label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.ay
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !30 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 304 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !26
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.hr = load ptr, ptr %i.hk, align 8, !tbaa !30 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !26
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !30 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !26
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1
  %i.id = load ptr, ptr %i.hw, align 8, !tbaa !30 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !26
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !30 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 176 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1
  %i.in = load i64, ptr %i.il, align 8, !tbaa !26
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2
  %i.ip = load ptr, ptr %i.ii, align 8, !tbaa !30 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !26
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.it) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2
  %i.iu = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.iv = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !30 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.3
end_hunk_2
begin_hunk_3_@_Z12printCpuInfov:bb.a
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.4

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.4: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.4
  %i.jr = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.4
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !26
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.jv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  br i1 %i.dx, label %bb.az, label %.critedge

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %i.jw = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.az
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !26
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.ka) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.kb = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %.critedge
  %i.ke = load i64, ptr %i.kc, align 8, !tbaa !26
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.kf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  br i1 %i.cp, label %bb.ba, label %.critedge84

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.kg = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.ba
  %i.kj = load i64, ptr %i.kh, align 8, !tbaa !26
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %.critedge84

.critedge84:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.kl = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.cc
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %.critedge84
  %i.kn = load i64, ptr %i.cc, align 8, !tbaa !26
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.ko) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %.critedge84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  %i.kp = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !26
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ku = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.br
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %i.kw = load i64, ptr %i.br, align 8, !tbaa !26
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  %i.ky = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.e
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %i.la = load i64, ptr %i.e, align 8, !tbaa !26
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.thread: ; preds = %._crit_edge.i.i94
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.loopexit

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i97, %bb.r
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

bb.bc:                                            ; preds = %bb.t
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bd:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

bb.be:                                            ; preds = %bb.w, %bb.v
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i179

bb.bf:                                            ; preds = %.noexc.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i105, %bb.y
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.bg:                                            ; preds = %bb.ad
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bh:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit117
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.bi:                                            ; preds = %bb.ag, %bb.af
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i173

bb.bj:                                            ; preds = %.noexc.i126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i118, %bb.ai
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.bk:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA10_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit130, %bb.an
  %.028 = phi ptr [ %i.ff, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA10_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit ], [ %i.fe, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit130 ], [ %i.dw, %bb.an ]
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit216

bb.bl:                                            ; preds = %.noexc.i134
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

bb.bm:                                            ; preds = %bb.aw
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lp = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.fp
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.bm
  %i.lr = load i64, ptr %i.fp, align 8, !tbaa !26
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %bb.bl
  %.pn68 = phi { ptr, i32 } [ %i.ln, %bb.bl ], [ %i.lo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ %i.lo, %bb.bm ]
  call void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #24
  br label %.body

.body:                                            ; preds = %.body194.thread, %bb.at, %.body194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %i.fw, %.body194 ], [ %i.fw, %bb.at ], [ %i.fz, %.body194.thread ]
  %i.lt = getelementptr inbounds nuw i8, ptr %5, i64 256
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.lt) #24
  %i.lu = getelementptr inbounds nuw i8, ptr %5, i64 192
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.lu) #24
  %i.lv = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.lv) #24
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.lw) #24
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #24
  br label %.loopexit216

.loopexit216:                                     ; preds = %.body, %bb.bk
  %.pn68.pn.pn = phi { ptr, i32 } [ %i.lm, %bb.bk ], [ %.pn68.pn, %.body ] ; 2 uses
  %.129 = phi ptr [ %.028, %bb.bk ], [ %i.ff, %.body ] ; 2 uses
  %.0 = phi i1 [ true, %bb.bk ], [ false, %.body ] ; 2 uses
  %i.lx = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %.loopexit216
  %i.ma = load i64, ptr %i.ly, align 8, !tbaa !26
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.mb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %.loopexit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %bb.bj
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %i.ll, %bb.bj ], [ %.pn68.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %.pn68.pn.pn, %.loopexit216 ] ; 3 uses
  %.230 = phi ptr [ %i.dw, %bb.bj ], [ %.129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %.129, %.loopexit216 ] ; 3 uses
  %.1 = phi i1 [ true, %bb.bj ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %.0, %.loopexit216 ] ; 3 uses
  br i1 %i.dx, label %bb.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.mc = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.me = icmp eq ptr %i.mc, %i.md
  br i1 %i.me, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.bn
  %i.mf = load i64, ptr %i.md, align 8, !tbaa !26
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mg) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i173: ; preds = %bb.bn, %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  %.pn68.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn68.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %i.lk, %bb.bi ], [ %.pn68.pn.pn.pn, %bb.bn ]
  %.331.ph = phi ptr [ %.230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %i.dw, %bb.bi ], [ %.230, %bb.bn ]
  %.2.ph = phi i1 [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ true, %bb.bi ], [ %.1, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i173, %bb.bh
  %.pn68.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i173 ], [ %i.lj, %bb.bh ], [ %.pn68.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ]
  %.432 = phi ptr [ %.331.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i173 ], [ %i.dw, %bb.bh ], [ %.230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ]
  %.3 = phi i1 [ %.2.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i173 ], [ true, %bb.bh ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %bb.bg
  %.pn68.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %i.li, %bb.bg ] ; 2 uses
  %.533 = phi ptr [ %.432, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %i.co, %bb.bg ] ; 2 uses
  %.4 = phi i1 [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ true, %bb.bg ] ; 2 uses
  %i.mh = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.mj = icmp eq ptr %i.mh, %i.mi
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.bo
  %i.mk = load i64, ptr %i.mi, align 8, !tbaa !26
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.ml) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.bf
  %.pn68.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lh, %bb.bf ], [ %.pn68.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %.pn68.pn.pn.pn.pn.pn.pn, %bb.bo ] ; 3 uses
  %.634 = phi ptr [ %i.co, %bb.bf ], [ %.533, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %.533, %bb.bo ] ; 3 uses
  %.5 = phi i1 [ true, %bb.bf ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %.4, %bb.bo ] ; 3 uses
  br i1 %i.cp, label %bb.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.mm = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.mo = icmp eq ptr %i.mm, %i.mn
  br i1 %i.mo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %bb.bp
  %i.mp = load i64, ptr %i.mn, align 8, !tbaa !26
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mq) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i179: ; preds = %bb.bp, %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178 ], [ %i.lg, %bb.be ], [ %.pn68.pn.pn.pn.pn.pn.pn.pn, %bb.bp ]
  %.735.ph = phi ptr [ %.634, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178 ], [ %i.co, %bb.be ], [ %.634, %bb.bp ]
  %.6.ph = phi i1 [ %.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178 ], [ true, %bb.be ], [ %.5, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i179, %bb.bd
  %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i179 ], [ %i.lf, %bb.bd ], [ %.pn68.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ]
  %.836 = phi ptr [ %.735.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i179 ], [ %i.co, %bb.bd ], [ %.634, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ]
  %.7 = phi i1 [ %.6.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i179 ], [ true, %bb.bd ], [ %.5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.mr = xor i1 %.7, true
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %bb.bc
  %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ], [ %i.le, %bb.bc ] ; 2 uses
  %.937 = phi ptr [ %.836, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ], [ %5, %bb.bc ] ; 2 uses
  %.8 = phi i1 [ %i.mr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ], [ false, %bb.bc ] ; 2 uses
  %i.ms = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.cc
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %bb.bq
  %i.mu = load i64, ptr %i.cc, align 8, !tbaa !26
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181, %bb.bb
  %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ld, %bb.bb ], [ %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bq ] ; 2 uses
  %.1038 = phi ptr [ %5, %bb.bb ], [ %.937, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %.937, %bb.bq ] ; 2 uses
  %.9 = phi i1 [ false, %bb.bb ], [ %.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %.8, %bb.bq ]
  %i.mw = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.my = icmp eq ptr %i.mw, %i.mx
  br i1 %i.my, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %i.mz = load i64, ptr %i.mx, align 8, !tbaa !26
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.na) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.nb = icmp eq ptr %5, %.1038
  %or.cond = select i1 %.9, i1 true, i1 %i.nb
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %.preheader
  %i.nc = phi ptr [ %i.nd, %.preheader ], [ %.1038, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ]
  %i.nd = getelementptr inbounds i8, ptr %i.nc, i64 -64 ; 3 uses
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.nd) #24
  %i.ne = icmp eq ptr %i.nd, %5
  br i1 %i.ne, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186
  %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn215 = phi { ptr, i32 } [ %i.lc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.thread ], [ %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ], [ %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.nf = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.br
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %.loopexit
  %i.nh = load i64, ptr %i.br, align 8, !tbaa !26
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %.merged = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %.pn68.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn215, %.loopexit ]
  %i.nj = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.e
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.nl = load i64, ptr %i.e, align 8, !tbaa !26
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  resume { ptr, i32 } %.merged
}

declare noundef i64 @_Z33mem_tryGetLocalRamCapacityInBytesv() local_unnamed_addr #4

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z13printer_toStrIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = zext i32 %1 to i64
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.a)
          to label %_ZNSolsEj.exit unwind label %bb.e ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !20, !alias.scope !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_3
begin_hunk_4_@_Z12printGpuInfov:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit145: ; preds = %._crit_edge.i.i142, %bb.ai, %bb.aj
  %i.dq = load i64, ptr %i.c, align 8, !tbaa !60  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !23
  %i.ds = load ptr, ptr %8, align 8, !tbaa !30
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dq
  store i8 0, ptr %i.dt, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit145, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit141
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, ptr noundef nonnull align 1 dereferenceable(14) @.str.41, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit unwind label %bb.bn

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.ak
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  br i1 %i.ad, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.dv = invoke noundef i64 @_Z25gpu_getCacheMemoryInBytesv()
          to label %bb.am unwind label %bb.bo

bb.am:                                            ; preds = %bb.al
  invoke void @_Z28printer_getMemoryWithUnitStrB5cxx11m(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 noundef %i.dv)
          to label %bb.an unwind label %bb.bo

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.dw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18printer_substrings2pgB5cxx11E, i64 8), align 8, !tbaa !23, !noalias !112 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !23, !noalias !112
  %i.dz = sub i64 4611686018427387903, %i.dy
  %i.ea = icmp ult i64 %i.dz, %i.dw
  br i1 %i.ea, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i147

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
          to label %.noexc151 unwind label %.split.thread

.noexc151:                                        ; preds = %bb.ao
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i147: ; preds = %bb.an
  %i.eb = load ptr, ptr @_ZN18printer_substrings2pgB5cxx11E, align 8, !tbaa !30, !noalias !112
  %i.ec = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.eb, i64 noundef %i.dw)
          to label %.noexc152 unwind label %.split.thread ; 6 uses

.noexc152:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i147
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ed, ptr %10, align 8, !tbaa !20, !alias.scope !112
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !30 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 5 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

bb.ap:                                            ; preds = %.noexc152
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !23 ; 3 uses
  %i.ej = icmp ult i64 %i.ei, 16
  call void @llvm.assume(i1 %i.ej)
  %i.ek = add nuw nsw i64 %i.ei, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ed, ptr noundef nonnull align 8 dereferenceable(1) %i.ef, i64 %i.ek, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %.noexc152
  store ptr %i.ee, ptr %10, align 8, !tbaa !30, !alias.scope !112
  %i.el = load i64, ptr %i.ef, align 8, !tbaa !26
  store i64 %i.el, ptr %i.ed, align 8, !tbaa !26, !alias.scope !112
  %.phi.trans.insert.i149 = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.pre.i150 = load i64, ptr %.phi.trans.insert.i149, align 8, !tbaa !23
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit153

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit153: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  %i.em = phi i64 [ %i.ei, %bb.ap ], [ %.pre.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.em, ptr %i.eo, align 8, !tbaa !23, !alias.scope !112
  store ptr %i.ef, ptr %i.ec, align 8, !tbaa !30
  store i64 0, ptr %i.en, align 8, !tbaa !23
  store i8 0, ptr %i.ef, align 8, !tbaa !26
  br label %bb.at

bb.aq:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ep, ptr %10, align 8, !tbaa !20
  %i.eq = load ptr, ptr @_ZN18printer_substrings2naB5cxx11E, align 8, !tbaa !30 ; 2 uses
  %i.er = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18printer_substrings2naB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.er, ptr %i.b, align 8, !tbaa !60
  %i.es = icmp ugt i64 %i.er, 15
  br i1 %i.es, label %.noexc.i155, label %._crit_edge.i.i154

.noexc.i155:                                      ; preds = %bb.aq
  %i.et = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc156 unwind label %.split ; 2 uses

.noexc156:                                        ; preds = %.noexc.i155
  store ptr %i.et, ptr %10, align 8, !tbaa !30
  %i.eu = load i64, ptr %i.b, align 8, !tbaa !60
  store i64 %i.eu, ptr %i.ep, align 8, !tbaa !26
  br label %._crit_edge.i.i154

._crit_edge.i.i154:                               ; preds = %.noexc156, %bb.aq
  %i.ev = phi ptr [ %i.et, %.noexc156 ], [ %i.ep, %bb.aq ] ; 2 uses
  switch i64 %i.er, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit157
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i154
  %i.ew = load i8, ptr %i.eq, align 1, !tbaa !26
  store i8 %i.ew, ptr %i.ev, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit157

bb.as:                                            ; preds = %._crit_edge.i.i154
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr align 1 %i.eq, i64 %i.er, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit157: ; preds = %._crit_edge.i.i154, %bb.ar, %bb.as
  %i.ex = load i64, ptr %i.b, align 8, !tbaa !60  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !23
  %i.ez = load ptr, ptr %10, align 8, !tbaa !30
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ex
  store i8 0, ptr %i.fa, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit157, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit153
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA9_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.du, ptr noundef nonnull align 1 dereferenceable(9) @.str.42, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA9_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit unwind label %bb.bp

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA9_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.at
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.fb = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #28
          to label %.noexc235 unwind label %.body236.thread ; 11 uses

.noexc235:                                        ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA9_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  store ptr %i.fb, ptr %1, align 8, !tbaa !55
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 384
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !58
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.fb, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.au

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc235
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 64 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.fe, ptr noundef nonnull align 8 dereferenceable(64) %i.ae)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %bb.au

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 128 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.ff, ptr noundef nonnull align 8 dereferenceable(64) %i.as)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 unwind label %bb.au

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 192 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.fg, ptr noundef nonnull align 8 dereferenceable(64) %i.bg)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3 unwind label %bb.au

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 256 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.fh, ptr noundef nonnull align 8 dereferenceable(64) %i.cn)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4 unwind label %bb.au

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 320 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.fi, ptr noundef nonnull align 8 dereferenceable(64) %i.du)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.5 unwind label %bb.au

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.5: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 384
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !59
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.fl, ptr %12, align 8, !tbaa !20
  %i.fm = load ptr, ptr @_ZL18defaultTableIndentB5cxx11, align 8, !tbaa !30 ; 2 uses
  %i.fn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.fn, ptr %i.a, align 8, !tbaa !60
  %i.fo = icmp ugt i64 %i.fn, 15
  br i1 %i.fo, label %.noexc.i160, label %._crit_edge.i.i159

bb.au:                                            ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc235
  %.016.i.i.i.i.i.lcssa = phi ptr [ %i.fb, %.noexc235 ], [ %i.fe, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ff, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ], [ %i.fg, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 ], [ %i.fh, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3 ], [ %i.fi, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4 ]
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  %i.fr = call ptr @__cxa_begin_catch(ptr %i.fq) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvT_S9_(ptr noundef nonnull %i.fb, ptr noundef nonnull %.016.i.i.i.i.i.lcssa)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_rethrow() #27
          to label %bb.ay unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body236 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #25
  unreachable

bb.ay:                                            ; preds = %bb.av
  unreachable

.body236.thread:                                  ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA9_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body236:                                         ; preds = %bb.aw
  %.pr = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %.body, label %bb.az

bb.az:                                            ; preds = %.body236
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !58
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %.pr to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ga) #29
  br label %.body

.noexc.i160:                                      ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.5
  %i.gb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc161 unwind label %bb.bq ; 2 uses

.noexc161:                                        ; preds = %.noexc.i160
  store ptr %i.gb, ptr %12, align 8, !tbaa !30
  %i.gc = load i64, ptr %i.a, align 8, !tbaa !60
  store i64 %i.gc, ptr %i.fl, align 8, !tbaa !26
  br label %._crit_edge.i.i159

._crit_edge.i.i159:                               ; preds = %.noexc161, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.5
  %i.gd = phi ptr [ %i.gb, %.noexc161 ], [ %i.fl, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.5 ] ; 2 uses
  switch i64 %i.fn, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %bb.bc
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i159
  %i.ge = load i8, ptr %i.fm, align 1, !tbaa !26
  store i8 %i.ge, ptr %i.gd, align 1, !tbaa !26
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge.i.i159
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gd, ptr align 1 %i.fm, i64 %i.fn, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i159
  %i.gf = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !23
  %i.gh = load ptr, ptr %12, align 8, !tbaa !30
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gf
  store i8 0, ptr %i.gi, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_Z11print_tableNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt5tupleIJS4_S4_EESaIS7_EES4_(ptr nofree noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.bd unwind label %bb.br

bb.bd:                                            ; preds = %bb.bc
  %i.gj = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.fl
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.bd
  %i.gl = load i64, ptr %i.fl, align 8, !tbaa !26
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  %i.gn = load ptr, ptr %1, align 8, !tbaa !55    ; 3 uses
  %i.go = load ptr, ptr %i.fk, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gn, %i.go
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ha, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !30 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !26
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.gv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !26
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #29
  br label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i164 = icmp eq ptr %i.ha, %i.go
  br i1 %.not.i.i.i164, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !61

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.hc = load ptr, ptr %i.fd, align 8, !tbaa !58
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.hb to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef %i.hf) #29
  br label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.be
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !30 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !26
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.hn = load ptr, ptr %i.hg, align 8, !tbaa !30 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !26
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !30 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !26
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1
  %i.hz = load ptr, ptr %i.hs, align 8, !tbaa !30 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !26
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !30 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !26
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.2
  %i.il = load ptr, ptr %i.ie, align 8, !tbaa !30 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2
  %i.io = load i64, ptr %i.im, align 8, !tbaa !26
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.ip) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !30 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.3
end_hunk_4
begin_hunk_5_@_Z12printGpuInfov:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %.critedge109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  %i.ld = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !26
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lh) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i185

.critedge110:                                     ; preds = %.critedge107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.li = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.lk = icmp eq ptr %i.li, %i.lj
  br i1 %i.lk, label %.critedge112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %.critedge110
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !26
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.lm) #29
  br label %.critedge112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.critedge112

.critedge112:                                     ; preds = %.critedge110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ln = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %.critedge112
  %i.lq = load i64, ptr %i.lo, align 8, !tbaa !26
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %.critedge112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ls = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %i.lv = load i64, ptr %i.lt, align 8, !tbaa !26
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.lx = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.ma = load i64, ptr %i.ly, align 8, !tbaa !26
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.mb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.mc = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.ac
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %i.me = load i64, ptr %i.ac, align 8, !tbaa !26
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231.thread: ; preds = %bb.b, %bb.c, %.noexc.i114
  %i.mg = phi ptr [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %i.n, %.noexc.i114 ]
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.loopexit

bb.bf:                                            ; preds = %bb.g
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bg:                                            ; preds = %.noexc.i118, %bb.i, %bb.h
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

bb.bh:                                            ; preds = %bb.m
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bi:                                            ; preds = %.noexc.i123, %bb.o, %bb.n
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

bb.bj:                                            ; preds = %bb.s
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bk:                                            ; preds = %bb.u, %bb.t
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i221

.split385.thread:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.w
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.split385:                                        ; preds = %.noexc.i130
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

bb.bl:                                            ; preds = %bb.ab
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bm:                                            ; preds = %bb.ad, %bb.ac
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i215

.split377.thread:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i135, %bb.af
  %lpad.thr_comm394 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.split377:                                        ; preds = %.noexc.i143
  %lpad.thr_comm.split-lp395 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

bb.bn:                                            ; preds = %bb.ak
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bo:                                            ; preds = %bb.am, %bb.al
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209

.split.thread:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i147, %bb.ao
  %lpad.thr_comm397 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.split:                                           ; preds = %.noexc.i155
  %lpad.thr_comm.split-lp398 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

bb.bp:                                            ; preds = %bb.at
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit271

bb.bq:                                            ; preds = %.noexc.i160
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

bb.br:                                            ; preds = %bb.bc
  %i.mu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mv = load ptr, ptr %12, align 8, !tbaa !30   ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.fl
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %bb.br
  %i.mx = load i64, ptr %i.fl, align 8, !tbaa !26
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.my) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202, %bb.bq
  %.pn = phi { ptr, i32 } [ %i.mt, %bb.bq ], [ %i.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202 ], [ %i.mu, %bb.br ]
  call void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #24
  br label %.body

.body:                                            ; preds = %.body236.thread, %bb.az, %.body236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %i.fs, %.body236 ], [ %i.fs, %bb.az ], [ %i.fv, %.body236.thread ]
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 320
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.mz) #24
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 256
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.na) #24
  %i.nb = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.nb) #24
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.nc) #24
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.nd) #24
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #24
  br label %.loopexit271

.loopexit271:                                     ; preds = %.body, %bb.bp
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ms, %bb.bp ], [ %.pn.pn, %.body ] ; 4 uses
  %.0 = phi i1 [ true, %bb.bp ], [ false, %.body ] ; 4 uses
  %i.ne = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ng = icmp eq ptr %i.ne, %i.nf
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %.loopexit271
  %i.nh = load i64, ptr %i.nf, align 8, !tbaa !26
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.ni) #29
  br i1 %i.ad, label %bb.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %.loopexit271
  br i1 %i.ad, label %bb.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

bb.bs:                                            ; preds = %.split.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %.1374 = phi i1 [ true, %.split.thread ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205 ] ; 2 uses
  %.pn.pn.pn.pn373 = phi { ptr, i32 } [ %lpad.thr_comm397, %.split.thread ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205 ] ; 2 uses
  %i.nj = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.bs
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !26
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nn) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209: ; preds = %bb.bs, %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  %.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn373, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208 ], [ %i.mr, %bb.bo ], [ %.pn.pn.pn.pn373, %bb.bs ]
  %.2.ph = phi i1 [ %.1374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208 ], [ true, %bb.bo ], [ %.1374, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209
  %i.no = phi i1 [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ false, %.split ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205 ]
  %.2244 = phi i1 [ %.2.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209 ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ true, %.split ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205 ]
  %.pn.pn.pn.pn.pn242 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i209 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %lpad.thr_comm.split-lp398, %.split ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %bb.bn
  %i.np = phi i1 [ %i.no, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %i.ad, %bb.bn ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %i.mq, %bb.bn ] ; 4 uses
  %.044 = phi ptr [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %i.cn, %bb.bn ] ; 4 uses
  %.3 = phi i1 [ %.2244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ true, %bb.bn ] ; 4 uses
  %i.nq = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ns = icmp eq ptr %i.nq, %i.nr
  br i1 %i.ns, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %bb.bt
  %i.nt = load i64, ptr %i.nr, align 8, !tbaa !26
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nu) #29
  br i1 %i.np, label %bb.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %bb.bt
  br i1 %i.np, label %bb.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

bb.bu:                                            ; preds = %.split377.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213
  %.4382 = phi i1 [ true, %.split377.thread ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ] ; 2 uses
  %.145381 = phi ptr [ %i.cn, %.split377.thread ], [ %.044, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %.044, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn380 = phi { ptr, i32 } [ %lpad.thr_comm394, %.split377.thread ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ] ; 2 uses
  %i.nv = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.nx = icmp eq ptr %i.nv, %i.nw
  br i1 %i.nx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %bb.bu
  %i.ny = load i64, ptr %i.nw, align 8, !tbaa !26
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.nz) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i215: ; preds = %bb.bu, %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  %.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214 ], [ %i.mp, %bb.bm ], [ %.pn.pn.pn.pn.pn.pn.pn380, %bb.bu ]
  %.246.ph = phi ptr [ %.145381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214 ], [ %i.cn, %bb.bm ], [ %.145381, %bb.bu ]
  %.5.ph = phi i1 [ %.4382, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214 ], [ true, %bb.bm ], [ %.4382, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %.split377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i215
  %i.oa = phi i1 [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i215 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ false, %.split377 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ]
  %.5254 = phi i1 [ %.5.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i215 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ true, %.split377 ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ]
  %.246252 = phi ptr [ %.246.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i215 ], [ %.044, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %i.cn, %.split377 ], [ %.044, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ]
  %.pn.pn.pn.pn.pn.pn.pn.pn250 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i215 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213 ], [ %lpad.thr_comm.split-lp395, %.split377 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %bb.bl
  %i.ob = phi i1 [ %i.oa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %i.ad, %bb.bl ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn250, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %i.mo, %bb.bl ] ; 4 uses
  %.347 = phi ptr [ %.246252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ %i.bg, %bb.bl ] ; 4 uses
  %.6 = phi i1 [ %.5254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216 ], [ true, %bb.bl ] ; 4 uses
  %i.oc = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.oe = icmp eq ptr %i.oc, %i.od
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.bv
  %i.of = load i64, ptr %i.od, align 8, !tbaa !26
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.og) #29
  br i1 %i.ob, label %bb.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.bv
  br i1 %i.ob, label %bb.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

bb.bw:                                            ; preds = %.split385.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %.7390 = phi i1 [ true, %.split385.thread ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217 ] ; 2 uses
  %.448389 = phi ptr [ %i.bg, %.split385.thread ], [ %.347, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217 ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn388 = phi { ptr, i32 } [ %lpad.thr_comm, %.split385.thread ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217 ] ; 2 uses
  %i.oh = load ptr, ptr %7, align 8, !tbaa !30    ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.oj = icmp eq ptr %i.oh, %i.oi
  br i1 %i.oj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.bw
  %i.ok = load i64, ptr %i.oi, align 8, !tbaa !26
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ol) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i221: ; preds = %bb.bw, %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.mn, %bb.bk ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn388, %bb.bw ]
  %.549.ph = phi ptr [ %.448389, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.bg, %bb.bk ], [ %.448389, %bb.bw ]
  %.8.ph = phi i1 [ %.7390, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ true, %bb.bk ], [ %.7390, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %.split385, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i221
  %.8264 = phi i1 [ %.8.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i221 ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ true, %.split385 ], [ %.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217 ]
  %.549262 = phi ptr [ %.549.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i221 ], [ %.347, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %i.bg, %.split385 ], [ %.347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217 ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn260 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i221 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %lpad.thr_comm.split-lp, %.split385 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.om = xor i1 %.8264, true
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.bj
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %i.mm, %bb.bj ] ; 2 uses
  %.650 = phi ptr [ %.549262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %i.as, %bb.bj ] ; 2 uses
  %.9 = phi i1 [ %i.om, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ false, %bb.bj ] ; 2 uses
  %i.on = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.op = icmp eq ptr %i.on, %i.oo
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %bb.bx
  %i.oq = load i64, ptr %i.oo, align 8, !tbaa !26
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.or) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223, %bb.bi
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ml, %bb.bi ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bx ]
  %.751 = phi ptr [ %i.as, %bb.bi ], [ %.650, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223 ], [ %.650, %bb.bx ]
  %.10 = phi i1 [ false, %bb.bi ], [ %.9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223 ], [ %.9, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.by

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %bb.bh
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %i.mk, %bb.bh ] ; 2 uses
  %.852 = phi ptr [ %.751, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %i.ae, %bb.bh ] ; 2 uses
  %.11 = phi i1 [ %.10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ false, %bb.bh ] ; 2 uses
  %i.os = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ou = icmp eq ptr %i.os, %i.ot
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.by
  %i.ov = load i64, ptr %i.ot, align 8, !tbaa !26
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ow) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226, %bb.bg
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mj, %bb.bg ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.by ]
  %.953 = phi ptr [ %i.ae, %bb.bg ], [ %.852, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %.852, %bb.by ]
  %.12 = phi i1 [ false, %bb.bg ], [ %.11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %.11, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %bb.bf
end_hunk_5
begin_hunk_6_@_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA9_KcJS5_EvEEOT_DpOT0_:bb.a
  store i64 %i.p, ptr %i.a, align 8, !tbaa !60
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS5_EEOT_.exit
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.r, ptr %i.n, align 8, !tbaa !30
  %i.s = load i64, ptr %i.a, align 8, !tbaa !60
  store i64 %i.s, ptr %i.o, align 8, !tbaa !26
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS5_EEOT_.exit
  %i.t = phi ptr [ %i.r, %.noexc ], [ %i.o, %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS5_EEOT_.exit ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %1, align 1, !tbaa !26
  store i8 %i.u, ptr %i.t, align 1, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 dereferenceable(9) %1, i64 %i.p, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !23
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.f:                                             ; preds = %.noexc.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %bb.f
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !26
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define void @_Z21printDistributionInfov() local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %1 = alloca %"class.std::vector", align 8       ; 10 uses
  %2 = alloca [2 x %"class.std::tuple"], align 8  ; 19 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.43, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 12, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.e, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.f = invoke noundef zeroext i1 @_Z18comm_isMpiCompiledv()
          to label %bb.a unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread

bb.a:                                             ; preds = %._crit_edge.i.i
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef zeroext i1 @_Z18comm_isMpiGpuAwarev()
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_Z13printer_toStrIbENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i1 noundef zeroext %i.g)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !20
  %i.i = load ptr, ptr @_ZN18printer_substrings2naB5cxx11E, align 8, !tbaa !30 ; 2 uses
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18printer_substrings2naB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.j, ptr %i.b, align 8, !tbaa !60
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i25, label %._crit_edge.i.i24

.noexc.i25:                                       ; preds = %bb.d
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc26 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread ; 2 uses

.noexc26:                                         ; preds = %.noexc.i25
  store ptr %i.l, ptr %3, align 8, !tbaa !30
  %i.m = load i64, ptr %i.b, align 8, !tbaa !60
  store i64 %i.m, ptr %i.h, align 8, !tbaa !26
  br label %._crit_edge.i.i24

._crit_edge.i.i24:                                ; preds = %.noexc26, %bb.d
  %i.n = phi ptr [ %i.l, %.noexc26 ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.j, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i24
  %i.o = load i8, ptr %i.i, align 1, !tbaa !26
  store i8 %i.o, ptr %i.n, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.i, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i24, %bb.e, %bb.f
  %i.p = load i64, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !23
  %i.r = load ptr, ptr %3, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.c
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 1 dereferenceable(14) @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit unwind label %bb.t

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.u = load ptr, ptr @_ZL12globalEnvPtr, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19
  invoke void @_Z13printer_toStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.w)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 1 dereferenceable(12) @.str.45, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit unwind label %bb.v

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.x = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #28
          to label %.noexc56 unwind label %.body57.thread ; 7 uses

.noexc56:                                         ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  store ptr %i.x, ptr %1, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !58
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.i

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %i.t)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %bb.i

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !20
  %i.ae = load ptr, ptr @_ZL18defaultTableIndentB5cxx11, align 8, !tbaa !30 ; 2 uses
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.af, ptr %i.a, align 8, !tbaa !60
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i30, label %._crit_edge.i.i29

bb.i:                                             ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc56
  %.016.i.i.i.i.i.lcssa = phi ptr [ %i.x, %.noexc56 ], [ %i.aa, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = call ptr @__cxa_begin_catch(ptr %i.ai) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvT_S9_(ptr noundef nonnull %i.x, ptr noundef nonnull %.016.i.i.i.i.i.lcssa)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_rethrow() #27
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body57 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #25
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable

.body57.thread:                                   ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA12_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body57:                                          ; preds = %bb.k
  %.pr = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %.body, label %bb.n

bb.n:                                             ; preds = %.body57
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !58
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %.pr to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.as) #29
  br label %.body

.noexc.i30:                                       ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc31 unwind label %bb.w   ; 2 uses

.noexc31:                                         ; preds = %.noexc.i30
  store ptr %i.at, ptr %5, align 8, !tbaa !30
  %i.au = load i64, ptr %i.a, align 8, !tbaa !60
  store i64 %i.au, ptr %i.ad, align 8, !tbaa !26
  br label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %.noexc31, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.av = phi ptr [ %i.at, %.noexc31 ], [ %i.ad, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ] ; 2 uses
  switch i64 %i.af, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i29
  %i.aw = load i8, ptr %i.ae, align 1, !tbaa !26
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !26
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ae, i64 %i.af, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i29
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !23
  %i.az = load ptr, ptr %5, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_Z11print_tableNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt5tupleIJS4_S4_EESaIS7_EES4_(ptr nofree noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ad
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bd = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bf = load ptr, ptr %1, align 8, !tbaa !55    ; 3 uses
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bs, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !30 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !26
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !26
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #29
  br label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bs, %i.bg
  br i1 %.not.i.i.i33, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !61

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bt = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.bu = load ptr, ptr %i.z, align 8, !tbaa !58
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bx) #29
  br label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !30 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !26
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !30 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !26
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !30 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !26
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.1
  %i.cq = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !26
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1
  %i.cv = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !26
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.da = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !26
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.df = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.c
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.dh = load i64, ptr %i.c, align 8, !tbaa !26
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread: ; preds = %._crit_edge.i.i, %bb.b, %bb.c, %.noexc.i25
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.loopexit

bb.t:                                             ; preds = %bb.g
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.u:                                             ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA14_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.v:                                             ; preds = %bb.h
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit65

bb.w:                                             ; preds = %.noexc.i30
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.x:                                             ; preds = %bb.q
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.ad
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.x
  %i.dr = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.w
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.w ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.do, %bb.x ]
  call void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #24
  br label %.body

.body:                                            ; preds = %.body57.thread, %bb.n, %.body57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.ak, %.body57 ], [ %i.ak, %bb.n ], [ %i.an, %.body57.thread ]
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.dt) #24
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #24
  br label %.loopexit65

.loopexit65:                                      ; preds = %.body, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.v ], [ %.pn.pn, %.body ] ; 2 uses
  %i.du = phi i1 [ false, %bb.v ], [ true, %.body ] ; 2 uses
  %i.dv = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %.loopexit65
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !26
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %.loopexit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.u ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %.pn.pn.pn, %.loopexit65 ]
  %.1 = phi i1 [ false, %bb.u ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.du, %.loopexit65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.t
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.dk, %bb.t ] ; 2 uses
  %.04 = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %2, %bb.t ] ; 2 uses
  %.2 = phi i1 [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ false, %bb.t ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.y
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !26
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ef = icmp eq ptr %2, %.04
  %or.cond = select i1 %.2, i1 true, i1 %i.ef
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %.preheader
  %i.eg = phi ptr [ %i.eh, %.preheader ], [ %.04, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -64 ; 3 uses
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.eh) #24
  %i.ei = icmp eq ptr %i.eh, %2
  br i1 %i.ei, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn.pn.pn.pn.pn.pn64 = phi { ptr, i32 } [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn.pn.pn.pn.pn, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ej = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.c
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %.loopexit
  %i.el = load i64, ptr %i.c, align 8, !tbaa !26
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn64
}

declare noundef zeroext i1 @_Z18comm_isMpiGpuAwarev() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z20printQuregSizeLimitsb(i1 noundef zeroext %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::vector", align 8      ; 10 uses
  %13 = alloca [7 x %"class.std::tuple"], align 8 ; 49 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.h = load ptr, ptr @_ZL12globalEnvPtr, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !20
  %i.l = load ptr, ptr @_ZN18printer_substrings2unB5cxx11E, align 8, !tbaa !30 ; 2 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18printer_substrings2unB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i64 %i.m, ptr %i.g, align 8, !tbaa !60
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !30
  %i.p = load i64, ptr %i.g, align 8, !tbaa !60
  store i64 %i.p, ptr %i.k, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.q = phi ptr [ %i.o, %.noexc.i ], [ %i.k, %bb.a ] ; 2 uses
  switch i64 %i.m, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.l, align 1, !tbaa !26
  store i8 %i.r, ptr %i.q, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.l, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.s = load i64, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !23
  %i.u = load ptr, ptr %1, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !20
  %i.x = load ptr, ptr @_ZN18printer_substrings2unB5cxx11E, align 8, !tbaa !30 ; 2 uses
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18printer_substrings2unB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 %i.y, ptr %i.f, align 8, !tbaa !60
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i75, label %._crit_edge.i.i74

.noexc.i75:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc unwind label %bb.w     ; 2 uses

.noexc:                                           ; preds = %.noexc.i75
  store ptr %i.aa, ptr %2, align 8, !tbaa !30
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !60
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !26
  br label %._crit_edge.i.i74

._crit_edge.i.i74:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = phi ptr [ %i.aa, %.noexc ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.y, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i74
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !26
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i74
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.x, i64 %i.y, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i74
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !60  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !23
  %i.ag = load ptr, ptr %2, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %i.ai = invoke noundef i64 @_Z33mem_tryGetLocalRamCapacityInBytesv()
          to label %bb.g unwind label %bb.x       ; 2 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.aj = invoke noundef i32 @_Z43mem_getMaxNumQuregQubitsWhichCanFitInMemorybix(i1 noundef zeroext %0, i32 noundef 1, i64 noundef %i.ai)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  invoke void @_Z13printer_toStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.aj)
          to label %bb.i unwind label %bb.y

bb.i:                                             ; preds = %bb.h
end_hunk_6
begin_hunk_7_@_Z20printQuregSizeLimitsb:bb.a

bb.bh:                                            ; preds = %._crit_edge.i.i122
  %i.gy = load i8, ptr %i.gs, align 1, !tbaa !26
  store i8 %i.gy, ptr %i.gx, align 1, !tbaa !26
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i.i122
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gx, ptr align 1 %i.gs, i64 %i.gt, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i122
  %i.gz = load i64, ptr %i.c, align 8, !tbaa !60  ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !23
  %i.hb = load ptr, ptr %11, align 8, !tbaa !30
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gz
  store i8 0, ptr %i.hc, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.hd = icmp sgt i32 %i.j, 1
  br i1 %i.hd, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.he = invoke noundef i32 @_Z34mem_getMinNumQubitsForDistributioni(i32 noundef %i.j)
          to label %bb.bl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread

bb.bl:                                            ; preds = %bb.bk
  invoke void @_Z13printer_toStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i32 noundef %i.he)
          to label %bb.bp unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread

bb.bm:                                            ; preds = %bb.bj
  %i.hf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.hf, ptr %14, align 8, !tbaa !20
  %i.hg = load ptr, ptr @_ZN18printer_substrings2naB5cxx11E, align 8, !tbaa !30 ; 2 uses
  %i.hh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18printer_substrings2naB5cxx11E, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.hh, ptr %i.b, align 8, !tbaa !60
  %i.hi = icmp ugt i64 %i.hh, 15
  br i1 %i.hi, label %.noexc.i127, label %._crit_edge.i.i126

.noexc.i127:                                      ; preds = %bb.bm
  %i.hj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc128 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread ; 2 uses

.noexc128:                                        ; preds = %.noexc.i127
  store ptr %i.hj, ptr %14, align 8, !tbaa !30
  %i.hk = load i64, ptr %i.b, align 8, !tbaa !60
  store i64 %i.hk, ptr %i.hf, align 8, !tbaa !26
  br label %._crit_edge.i.i126

._crit_edge.i.i126:                               ; preds = %.noexc128, %bb.bm
  %i.hl = phi ptr [ %i.hj, %.noexc128 ], [ %i.hf, %bb.bm ] ; 2 uses
  switch i64 %i.hh, label %bb.bo [
    i64 1, label %bb.bn
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit129
  ]

bb.bn:                                            ; preds = %._crit_edge.i.i126
  %i.hm = load i8, ptr %i.hg, align 1, !tbaa !26
  store i8 %i.hm, ptr %i.hl, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit129

bb.bo:                                            ; preds = %._crit_edge.i.i126
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hl, ptr align 1 %i.hg, i64 %i.hh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit129: ; preds = %._crit_edge.i.i126, %bb.bn, %bb.bo
  %i.hn = load i64, ptr %i.b, align 8, !tbaa !60  ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !23
  %i.hp = load ptr, ptr %14, align 8, !tbaa !30
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hn
  store i8 0, ptr %i.hq, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit129, %bb.bl
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 1 dereferenceable(16) @.str.49, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit unwind label %bb.cg

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.bp
  %i.hr = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 3 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.hr, ptr noundef nonnull align 1 dereferenceable(16) @.str.50, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit unwind label %bb.cg

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 3 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.hs, ptr noundef nonnull align 1 dereferenceable(16) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit133 unwind label %bb.cg

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit133: ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %13, i64 192 ; 3 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA19_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ht, ptr noundef nonnull align 1 dereferenceable(19) @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA19_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit unwind label %bb.cg

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA19_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit133
  %i.hu = getelementptr inbounds nuw i8, ptr %13, i64 256 ; 3 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA19_KcJRS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.hu, ptr noundef nonnull align 1 dereferenceable(19) @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA19_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit136 unwind label %bb.cg

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA19_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit136: ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA19_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %13, i64 320 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.hw = invoke noundef i32 @_Z53mem_getMaxNumQuregQubitsBeforeGlobalMemSizeofOverflowbi(i1 noundef zeroext %0, i32 noundef %i.j)
          to label %bb.bq unwind label %bb.ch

bb.bq:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA19_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit136
  invoke void @_Z13printer_toStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i32 noundef %i.hw)
          to label %bb.br unwind label %bb.ch

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA24_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.hv, ptr noundef nonnull align 1 dereferenceable(24) @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA24_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit unwind label %bb.ci

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA24_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.br
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 384 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.hy = invoke noundef i32 @_Z43mem_getMaxNumQuregQubitsBeforeIndexOverflowb(i1 noundef zeroext %0)
          to label %bb.bs unwind label %bb.cj

bb.bs:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA24_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  invoke void @_Z13printer_toStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, i32 noundef %i.hy)
          to label %bb.bt unwind label %bb.cj

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA24_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %i.hx, ptr noundef nonnull align 1 dereferenceable(24) @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA24_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit139 unwind label %bb.ck

_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA24_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit139: ; preds = %bb.bt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.hz = invoke noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #28
          to label %.noexc216 unwind label %.body217.thread ; 12 uses

.noexc216:                                        ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA24_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit139
  store ptr %i.hz, ptr %12, align 8, !tbaa !55
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 448
  %i.ib = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !58
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.hz, ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.bu

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc216
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 64 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.ic, ptr noundef nonnull align 8 dereferenceable(64) %i.hr)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %bb.bu

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 128 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.id, ptr noundef nonnull align 8 dereferenceable(64) %i.hs)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 unwind label %bb.bu

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 192 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.ie, ptr noundef nonnull align 8 dereferenceable(64) %i.ht)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3 unwind label %bb.bu

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 256 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.if, ptr noundef nonnull align 8 dereferenceable(64) %i.hu)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4 unwind label %bb.bu

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 320 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.ig, ptr noundef nonnull align 8 dereferenceable(64) %i.hv)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.5 unwind label %bb.bu

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.5: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 384 ; 2 uses
  invoke void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.ih, ptr noundef nonnull align 8 dereferenceable(64) %i.hx)
          to label %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.6 unwind label %bb.bu

_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.6: ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.5
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hz, i64 448
  %i.ij = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !59
  %i.ik = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  store ptr %i.ik, ptr %17, align 8, !tbaa !20
  %i.il = load ptr, ptr @_ZL18defaultTableIndentB5cxx11, align 8, !tbaa !30 ; 2 uses
  %i.im = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.im, ptr %i.a, align 8, !tbaa !60
  %i.in = icmp ugt i64 %i.im, 15
  br i1 %i.in, label %.noexc.i143, label %._crit_edge.i.i142

bb.bu:                                            ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.5, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc216
  %.016.i.i.i.i.i.lcssa = phi ptr [ %i.hz, %.noexc216 ], [ %i.ic, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.id, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.1 ], [ %i.ie, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.2 ], [ %i.if, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.3 ], [ %i.ig, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.4 ], [ %i.ih, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.5 ]
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  %i.iq = call ptr @__cxa_begin_catch(ptr %i.ip) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvT_S9_(ptr noundef nonnull %i.hz, ptr noundef nonnull %.016.i.i.i.i.i.lcssa)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  invoke void @__cxa_rethrow() #27
          to label %bb.by unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ir = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body217 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #25
  unreachable

bb.by:                                            ; preds = %bb.bv
  unreachable

.body217.thread:                                  ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA24_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit139
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %.body140

.body217:                                         ; preds = %bb.bw
  %.pr = load ptr, ptr %12, align 8, !tbaa !55    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %.body140, label %bb.bz

bb.bz:                                            ; preds = %.body217
  %i.iv = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !58
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %.pr to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.iz) #29
  br label %.body140

.noexc.i143:                                      ; preds = %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.6
  %i.ja = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc144 unwind label %bb.cl ; 2 uses

.noexc144:                                        ; preds = %.noexc.i143
  store ptr %i.ja, ptr %17, align 8, !tbaa !30
  %i.jb = load i64, ptr %i.a, align 8, !tbaa !60
  store i64 %i.jb, ptr %i.ik, align 8, !tbaa !26
  br label %._crit_edge.i.i142

._crit_edge.i.i142:                               ; preds = %.noexc144, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.6
  %i.jc = phi ptr [ %i.ja, %.noexc144 ], [ %i.ik, %_ZSt10_ConstructISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.6 ] ; 2 uses
  switch i64 %i.im, label %bb.cb [
    i64 1, label %bb.ca
    i64 0, label %bb.cc
  ]

bb.ca:                                            ; preds = %._crit_edge.i.i142
  %i.jd = load i8, ptr %i.il, align 1, !tbaa !26
  store i8 %i.jd, ptr %i.jc, align 1, !tbaa !26
  br label %bb.cc

bb.cb:                                            ; preds = %._crit_edge.i.i142
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jc, ptr align 1 %i.il, i64 %i.im, i1 false)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %._crit_edge.i.i142
  %i.je = load i64, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.je, ptr %i.jf, align 8, !tbaa !23
  %i.jg = load ptr, ptr %17, align 8, !tbaa !30
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.je
  store i8 0, ptr %i.jh, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_Z11print_tableNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt5tupleIJS4_S4_EESaIS7_EES4_(ptr nofree noundef nonnull align 8 dereferenceable(32) %11, ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.cd unwind label %bb.cm

bb.cd:                                            ; preds = %bb.cc
  %i.ji = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.ik
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.cd
  %i.jk = load i64, ptr %i.ik, align 8, !tbaa !26
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  %i.jm = load ptr, ptr %12, align 8, !tbaa !55   ; 3 uses
  %i.jn = load ptr, ptr %i.ij, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jm, %i.jn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.jz, %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i ], [ %i.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !30 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.js = load i64, ptr %i.jq, align 8, !tbaa !26
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jt) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ju = load ptr, ptr %.05.i.i.i, align 8, !tbaa !30 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !26
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #29
  br label %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i149 = icmp eq ptr %i.jz, %i.jn
  br i1 %.not.i.i.i149, label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !61

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.ka = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.kb = load ptr, ptr %i.ib, align 8, !tbaa !58
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = ptrtoint ptr %i.ka to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.ke) #29
  br label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.ce
  %i.kf = getelementptr inbounds nuw i8, ptr %13, i64 384
  %i.kg = getelementptr inbounds nuw i8, ptr %13, i64 416
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !30 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %13, i64 432 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !26
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151
  %i.km = load ptr, ptr %i.kf, align 8, !tbaa !30 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %13, i64 400 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !26
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.kr = getelementptr inbounds nuw i8, ptr %13, i64 320
  %i.ks = getelementptr inbounds nuw i8, ptr %13, i64 352
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !30 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %13, i64 368 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !26
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151.1
  %i.ky = load ptr, ptr %i.kr, align 8, !tbaa !30 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %13, i64 336 ; 2 uses
  %i.la = icmp eq ptr %i.ky, %i.kz
  br i1 %i.la, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1
  %i.lb = load i64, ptr %i.kz, align 8, !tbaa !26
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lc) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.1
  %i.ld = getelementptr inbounds nuw i8, ptr %13, i64 256
  %i.le = getelementptr inbounds nuw i8, ptr %13, i64 288
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !30 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %13, i64 304 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !26
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151.2
  %i.lk = load ptr, ptr %i.ld, align 8, !tbaa !30 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %13, i64 272 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !26
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.2: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.2
  %i.lp = getelementptr inbounds nuw i8, ptr %13, i64 192
  %i.lq = getelementptr inbounds nuw i8, ptr %13, i64 224
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !30 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %13, i64 240 ; 2 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151.3
end_hunk_7
begin_hunk_8_@_Z20printQuregSizeLimitsb:bb.a
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.6

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.6: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i151.6
  %i.nf = load ptr, ptr %13, align 8, !tbaa !30   ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.nh = icmp eq ptr %i.nf, %i.ng
  br i1 %i.nh, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.6: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.6
  %i.ni = load i64, ptr %i.ng, align 8, !tbaa !26
  %i.nj = add i64 %i.ni, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.nj) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.6

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.6: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.6
  %i.nk = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.nm = icmp eq ptr %i.nk, %i.nl
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.6
  %i.nn = load i64, ptr %i.nl, align 8, !tbaa !26
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.no) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.np = load ptr, ptr %15, align 8, !tbaa !30   ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.ns = load i64, ptr %i.nq, align 8, !tbaa !26
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.nt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.nu = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.nw = icmp eq ptr %i.nu, %i.nv
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.nx = load i64, ptr %i.nv, align 8, !tbaa !26
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.ny) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.nz = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.gr
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.ob = load i64, ptr %i.gr, align 8, !tbaa !26
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  %i.od = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.gd
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.of = load i64, ptr %i.gd, align 8, !tbaa !26
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.oh = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %i.ga
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.oj = load i64, ptr %i.ga, align 8, !tbaa !26
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ok) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.ol = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.dd
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.on = load i64, ptr %i.dd, align 8, !tbaa !26
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.op = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.oq = icmp eq ptr %i.op, %i.cr
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %i.or = load i64, ptr %i.cr, align 8, !tbaa !26
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.os) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ot = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.w
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.ov = load i64, ptr %i.w, align 8, !tbaa !26
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ow) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ox = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.k
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %i.oz = load i64, ptr %i.k, align 8, !tbaa !26
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.cf:                                            ; preds = %.noexc.i123
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread: ; preds = %bb.bk, %bb.bl, %.noexc.i127
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %.loopexit

bb.cg:                                            ; preds = %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA19_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit133, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit, %bb.bp
  %.022 = phi ptr [ %i.hu, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA19_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit ], [ %i.ht, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit133 ], [ %i.hs, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit ], [ %i.hr, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA16_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit ], [ %13, %bb.bp ]
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.ch:                                            ; preds = %bb.bq, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA19_KcRS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISD_T0_EEEbE4typeELb1EEEOSD_OSE_.exit136
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

bb.ci:                                            ; preds = %bb.br
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cj:                                            ; preds = %bb.bs, %_ZNSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA24_KcS5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleISC_T0_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

bb.ck:                                            ; preds = %bb.bt
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit225

bb.cl:                                            ; preds = %.noexc.i143
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

bb.cm:                                            ; preds = %bb.cc
  %i.pj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pk = load ptr, ptr %17, align 8, !tbaa !30   ; 2 uses
  %i.pl = icmp eq ptr %i.pk, %i.ik
  br i1 %i.pl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.cm
  %i.pm = load i64, ptr %i.ik, align 8, !tbaa !26
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pk, i64 noundef %i.pn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183, %bb.cl
  %.pn58 = phi { ptr, i32 } [ %i.pi, %bb.cl ], [ %i.pj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ], [ %i.pj, %bb.cm ]
  call void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #24
  br label %.body140

.body140:                                         ; preds = %.body217.thread, %bb.bz, %.body217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %i.ir, %.body217 ], [ %i.ir, %bb.bz ], [ %i.iu, %.body217.thread ]
  %i.po = getelementptr inbounds nuw i8, ptr %13, i64 384
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.po) #24
  %i.pp = getelementptr inbounds nuw i8, ptr %13, i64 320
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.pp) #24
  %i.pq = getelementptr inbounds nuw i8, ptr %13, i64 256
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.pq) #24
  %i.pr = getelementptr inbounds nuw i8, ptr %13, i64 192
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.pr) #24
  %i.ps = getelementptr inbounds nuw i8, ptr %13, i64 128
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ps) #24
  %i.pt = getelementptr inbounds nuw i8, ptr %13, i64 64
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.pt) #24
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #24
  br label %.loopexit225

.loopexit225:                                     ; preds = %.body140, %bb.ck
  %.pn58.pn.pn = phi { ptr, i32 } [ %i.ph, %bb.ck ], [ %.pn58.pn, %.body140 ] ; 2 uses
  %i.pu = phi i1 [ false, %bb.ck ], [ true, %.body140 ] ; 2 uses
  %i.pv = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.px = icmp eq ptr %i.pv, %i.pw
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %.loopexit225
  %i.py = load i64, ptr %i.pw, align 8, !tbaa !26
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pv, i64 noundef %i.pz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %.loopexit225, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %bb.cj
  %.pn58.pn.pn.pn = phi { ptr, i32 } [ %i.pg, %bb.cj ], [ %.pn58.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %.pn58.pn.pn, %.loopexit225 ]
  %.1 = phi i1 [ false, %bb.cj ], [ %i.pu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %i.pu, %.loopexit225 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %bb.ci
  %.pn58.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %i.pf, %bb.ci ] ; 2 uses
  %.123 = phi ptr [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %i.hv, %bb.ci ] ; 2 uses
  %.2 = phi i1 [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ false, %bb.ci ] ; 2 uses
  %i.qa = load ptr, ptr %15, align 8, !tbaa !30   ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.qc = icmp eq ptr %i.qa, %i.qb
  br i1 %i.qc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.cn
  %i.qd = load i64, ptr %i.qb, align 8, !tbaa !26
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qe) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189, %bb.ch
  %.pn58.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pe, %bb.ch ], [ %.pn58.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ], [ %.pn58.pn.pn.pn.pn, %bb.cn ]
  %.224 = phi ptr [ %i.hv, %bb.ch ], [ %.123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ], [ %.123, %bb.cn ]
  %.3 = phi i1 [ false, %bb.ch ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ], [ %.2, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.co

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %bb.cg
  %.pn58.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %i.pd, %bb.cg ] ; 2 uses
  %.325 = phi ptr [ %.224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %.022, %bb.cg ] ; 2 uses
  %.4 = phi i1 [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ false, %bb.cg ]
  %i.qf = load ptr, ptr %14, align 8, !tbaa !30   ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.qh = icmp eq ptr %i.qf, %i.qg
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %bb.co
  %i.qi = load i64, ptr %i.qg, align 8, !tbaa !26
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qf, i64 noundef %i.qj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.qk = icmp eq ptr %13, %.325
  %or.cond = select i1 %.4, i1 true, i1 %i.qk
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %.preheader
  %i.ql = phi ptr [ %i.qm, %.preheader ], [ %.325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ]
  %i.qm = getelementptr inbounds i8, ptr %i.ql, i64 -64 ; 3 uses
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.qm) #24
  %i.qn = icmp eq ptr %i.qm, %13
  br i1 %i.qn, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  %.pn58.pn.pn.pn.pn.pn.pn.pn224 = phi { ptr, i32 } [ %i.pc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.thread ], [ %.pn58.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ %.pn58.pn.pn.pn.pn.pn.pn, %.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.qo = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %i.qp = icmp eq ptr %i.qo, %i.gr
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %.loopexit
  %i.qq = load i64, ptr %i.gr, align 8, !tbaa !26
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195, %bb.cf
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pb, %bb.cf ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195 ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn224, %.loopexit ] ; 2 uses
  %i.qs = load ptr, ptr %10, align 8, !tbaa !30   ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.gd
  br i1 %i.qt, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %bb.bg
  %.sink = phi ptr [ %i.gp, %bb.bg ], [ %i.qs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ]
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.go, %bb.bg ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ]
  %i.qu = load i64, ptr %i.gd, align 8, !tbaa !26
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.qv) #29
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %bb.bg
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.go, %bb.bg ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.qw = load ptr, ptr %9, align 8, !tbaa !30    ; 2 uses
  %i.qx = icmp eq ptr %i.qw, %i.ga
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %.body
  %i.qy = load i64, ptr %i.ga, align 8, !tbaa !26
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.qz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.cp

bb.cp:                                            ; preds = %bb.bc, %bb.bd, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ], [ %i.fy, %bb.be ], [ %i.fx, %bb.bd ], [ %i.fw, %bb.bc ] ; 2 uses
  %i.ra = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.dd
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.cp
  %i.rc = load i64, ptr %i.dd, align 8, !tbaa !26
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.rd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204, %bb.bb
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fv, %bb.bb ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204 ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.re = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.rf = icmp eq ptr %i.re, %i.cr
  br i1 %i.rf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %i.rg = load i64, ptr %i.cr, align 8, !tbaa !26
  %i.rh = add i64 %i.rg, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.rh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207, %bb.ba
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fu, %bb.ba ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.cq

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %bb.ab
  %.merged73 = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %.pn, %bb.ab ] ; 2 uses
  %i.ri = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.rj = icmp eq ptr %i.ri, %i.w
  br i1 %i.rj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.cq
  %i.rk = load i64, ptr %i.w, align 8, !tbaa !26
  %i.rl = add i64 %i.rk, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210, %bb.w
  %.merged = phi { ptr, i32 } [ %i.ck, %bb.w ], [ %.merged73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ %.merged73, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.rm = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.rn = icmp eq ptr %i.rm, %i.k
  br i1 %i.rn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %i.ro = load i64, ptr %i.k, align 8, !tbaa !26
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.merged
}

declare noundef i32 @_Z43mem_getMaxNumQuregQubitsWhichCanFitInMemorybix(i1 noundef zeroext, i32 noundef, i64 noundef) local_unnamed_addr #4

declare noundef i32 @_Z34mem_getMinNumQubitsForDistributioni(i32 noundef) local_unnamed_addr #4

declare noundef i32 @_Z53mem_getMaxNumQuregQubitsBeforeGlobalMemSizeofOverflowbi(i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_Z43mem_getMaxNumQuregQubitsBeforeIndexOverflowb(i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
end_hunk_8
begin_hunk_9_@_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA19_KcJRS5_EvEEOT_DpOT0_:bb.a
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEC2IRA24_KcJS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !20
  %i.c = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS5_EEOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !30
  %i.j = load i64, ptr %i.d, align 8, !tbaa !26
  store i64 %i.j, ptr %i.b, align 8, !tbaa !26
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS5_EEOT_.exit

_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS5_EEOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !23
  store ptr %i.d, ptr %2, align 8, !tbaa !30
  store i64 0, ptr %i.k, align 8, !tbaa !23
  store i8 0, ptr %i.d, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !20
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(24) %1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.p, ptr %i.a, align 8, !tbaa !60
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS5_EEOT_.exit
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.r, ptr %i.n, align 8, !tbaa !30
  %i.s = load i64, ptr %i.a, align 8, !tbaa !60
  store i64 %i.s, ptr %i.o, align 8, !tbaa !26
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS5_EEOT_.exit
  %i.t = phi ptr [ %i.r, %.noexc ], [ %i.o, %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS5_EEOT_.exit ] ; 2 uses
  switch i64 %i.p, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %1, align 1, !tbaa !26
  store i8 %i.u, ptr %i.t, align 1, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 dereferenceable(24) %1, i64 %i.p, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !23
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.f:                                             ; preds = %.noexc.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %bb.f
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !26
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define void @_Z25printQuregAutoDeploymentsb(i1 noundef zeroext %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::vector", align 8       ; 14 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %2 = alloca %struct.QuESTEnv, align 8           ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::tuple", align 8        ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::vector", align 8      ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  %i.j = load ptr, ptr @_ZL12globalEnvPtr, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19
  %i.m = invoke noundef i32 @_Z53mem_getMaxNumQuregQubitsBeforeGlobalMemSizeofOverflowbi(i1 noundef zeroext %0, i32 noundef %i.l)
          to label %.preheader unwind label %bb.b ; 2 uses

.preheader:                                       ; preds = %bb.a
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %.lr.ph, label %._crit_edge.i.i

.lr.ph:                                           ; preds = %.preheader
  %i.o = zext i1 %0 to i32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.t, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ac = select i1 %0, ptr @.str.46, ptr @.str.47
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !20
  %i.ae = select i1 %0, i64 14, i64 11            ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ad, ptr noundef nonnull align 1 dereferenceable(11) %i.ac, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !23
  %.sroa.sel.v.sroa.sel.v = select i1 %0, i64 30, i64 27
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %7, i64 %.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel, align 1, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.ag, ptr %8, align 8, !tbaa !20, !alias.scope !127
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !23, !alias.scope !127
  store i8 0, ptr %i.ag, align 8, !tbaa !26, !alias.scope !127
  %i.ai = add nuw nsw i64 %i.ae, 15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.ai)
          to label %bb.z unwind label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.c:                                             ; preds = %.lr.ph, %bb.t
  %.048267 = phi i32 [ 1, %.lr.ph ], [ %i.eb, %bb.t ] ; 3 uses
  %.069266 = phi i32 [ 0, %.lr.ph ], [ %.170, %bb.t ] ; 2 uses
  %.071265 = phi i32 [ 0, %.lr.ph ], [ %.172, %bb.t ] ; 2 uses
  %.073264 = phi i32 [ 0, %.lr.ph ], [ %.174, %bb.t ] ; 2 uses
  %i.ak = load i32, ptr @_ZN8modeflag8USE_AUTOE, align 4, !tbaa !9 ; 3 uses
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !9
  store i32 %i.ak, ptr %i.h, align 4, !tbaa !9
  store i32 %i.ak, ptr %i.i, align 4, !tbaa !9
  %i.al = load ptr, ptr @_ZL12globalEnvPtr, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) %i.al, i64 28, i1 false), !tbaa.struct !132
  invoke void @_Z29autodep_chooseQuregDeploymentiiRiS_S_8QuESTEnv(i32 noundef %.048267, i32 noundef %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull byval(%struct.QuESTEnv) align 8 %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = load i32, ptr %i.g, align 4, !tbaa !9
  %i.an = icmp eq i32 %i.am, %.069266
  %i.ao = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ap = icmp eq i32 %i.ao, %.073264
  %or.cond = select i1 %i.an, i1 %i.ap, i1 false
  %i.aq = load i32, ptr %i.i, align 4             ; 2 uses
  %i.ar = icmp eq i32 %i.aq, %.071265
  %or.cond96 = select i1 %or.cond, i1 %i.ar, i1 false
  br i1 %or.cond96, label %bb.t, label %._crit_edge.i.i107

bb.e:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

._crit_edge.i.i107:                               ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.p, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %i.q, align 8, !tbaa !23
  store i8 0, ptr %i.p, align 8, !tbaa !26
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %._crit_edge.i.i107
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.57, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %.pre = load i32, ptr %i.h, align 4, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i117
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge, %._crit_edge.i.i107
  %i.au = phi i32 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge ], [ %i.ao, %._crit_edge.i.i107 ]
  %.not84 = icmp eq i32 %i.au, 0
  br i1 %.not84, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit116, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.av = load i64, ptr %i.q, align 8, !tbaa !23
  %i.aw = add i64 %i.av, -4611686018427387898
  %i.ax = icmp ult i64 %i.aw, 6
  br i1 %i.ax, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113

.invoke:                                          ; preds = %bb.g, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113: ; preds = %bb.f
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.58, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit116 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.az = load i32, ptr %i.g, align 4, !tbaa !9
  %.not85 = icmp eq i32 %i.az, 0
  br i1 %.not85, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit120, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit116
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !23
  %i.bb = add i64 %i.ba, -4611686018427387898
  %i.bc = icmp ult i64 %i.bb, 6
  br i1 %i.bc, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i117: ; preds = %bb.g
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.59, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit120 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_Z13printer_toStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i32 noundef %.048267)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit120
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.be = load i64, ptr %i.r, align 8, !tbaa !23, !noalias !133
  %i.bf = add i64 %i.be, -4611686018427387897
  %i.bg = icmp ult i64 %i.bf, 7
  br i1 %i.bg, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i121

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
          to label %.noexc122 unwind label %.loopexit.split-lp235

.noexc122:                                        ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i121: ; preds = %bb.h
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.60, i64 noundef 7)
          to label %.noexc123 unwind label %.loopexit234 ; 6 uses

.noexc123:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i121
  store ptr %i.s, ptr %5, align 8, !tbaa !20, !alias.scope !133
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !30 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 5 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc123
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !23 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc123
  store ptr %i.bi, ptr %5, align 8, !tbaa !30, !alias.scope !133
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !26
  store i64 %i.bp, ptr %i.s, align 8, !tbaa !26, !alias.scope !133
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.bq = phi i64 [ %i.bm, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.bq, ptr %i.t, align 8, !tbaa !23, !alias.scope !133
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !30
  store i64 0, ptr %i.br, align 8, !tbaa !23
  store i8 0, ptr %i.bj, align 8, !tbaa !26
  store ptr %i.u, ptr %4, align 8, !tbaa !20
  %i.bs = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.bt = load i64, ptr %i.q, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 %i.bt, ptr %i.f, align 8, !tbaa !60
  %i.bu = icmp ugt i64 %i.bt, 15
  br i1 %i.bu, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.k
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc124 unwind label %bb.v  ; 2 uses

.noexc124:                                        ; preds = %.noexc.i.i.i.i.i
  store ptr %i.bv, ptr %4, align 8, !tbaa !30
  %i.bw = load i64, ptr %i.f, align 8, !tbaa !60
  store i64 %i.bw, ptr %i.u, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc124, %bb.k
  %i.bx = phi ptr [ %i.bv, %.noexc124 ], [ %i.u, %bb.k ] ; 2 uses
  switch i64 %i.bt, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit.i.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.by = load i8, ptr %i.bs, align 1, !tbaa !26
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !26
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.bs, i64 %i.bt, i1 false)
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit.i.i

_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit.i.i: ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.i.i
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !60  ; 2 uses
  store i64 %i.bz, ptr %i.v, align 8, !tbaa !23
  %i.ca = load ptr, ptr %4, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store i8 0, ptr %i.cb, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  store ptr %i.x, ptr %i.w, align 8, !tbaa !20
  %i.cc = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.s
  br i1 %i.cd, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.n:                                             ; preds = %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit.i.i
  %i.ce = load i64, ptr %i.t, align 8, !tbaa !23  ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.cg, i1 false)
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IRS5_EEOT_.exit.i.i
  store ptr %i.cc, ptr %i.w, align 8, !tbaa !30
  %i.ch = load i64, ptr %i.s, align 8, !tbaa !26
  store i64 %i.ch, ptr %i.x, align 8, !tbaa !26
  %.pre269 = load i64, ptr %i.t, align 8, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.n
  %i.ci = phi i64 [ %.pre269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ce, %bb.n ]
  store i64 %i.ci, ptr %i.y, align 8, !tbaa !23
  store ptr %i.s, ptr %5, align 8, !tbaa !30
  store i64 0, ptr %i.t, align 8, !tbaa !23
  store i8 0, ptr %i.s, align 8, !tbaa !26
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !59  ; 10 uses
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !20
  %i.cm = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.u
  br i1 %i.cn, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.co = load i64, ptr %i.v, align 8, !tbaa !23  ; 3 uses
  %i.cp = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cp)
  %i.cq = add nuw nsw i64 %i.co, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cl, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.cq, i1 false)
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.p
  store ptr %i.cm, ptr %i.cj, align 8, !tbaa !30
  %i.cr = load i64, ptr %i.u, align 8, !tbaa !26
  store i64 %i.cr, ptr %i.cl, align 8, !tbaa !26
  %.pre270 = load i64, ptr %i.v, align 8, !tbaa !23
  br label %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i

_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.q
  %i.cs = phi i64 [ %.pre270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.co, %bb.q ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !23
  store ptr %i.u, ptr %4, align 8, !tbaa !30
  store i64 0, ptr %i.v, align 8, !tbaa !23
  store i8 0, ptr %i.u, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 48 ; 3 uses
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !20
  %i.cw = load ptr, ptr %i.w, align 8, !tbaa !30  ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.x
  br i1 %i.cx, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i
  %i.cy = load i64, ptr %i.y, align 8, !tbaa !23  ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.cz)
  %i.da = add nuw nsw i64 %i.cy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cv, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.da, i1 false)
  br label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt11_Tuple_implILm1EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS6_.exit.i.i.i.i
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !30
  %i.db = load i64, ptr %i.x, align 8, !tbaa !26
  store i64 %i.db, ptr %i.cv, align 8, !tbaa !26
  %.pre271 = load i64, ptr %i.y, align 8, !tbaa !23
  br label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.dc = phi i64 [ %.pre271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.cy, %bb.r ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !23
  store ptr %i.x, ptr %i.w, align 8, !tbaa !30
  store i64 0, ptr %i.y, align 8, !tbaa !23
  store i8 0, ptr %i.x, align 8, !tbaa !26
  %i.de = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  store ptr %i.de, ptr %i.z, align 8, !tbaa !59
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

bb.s:                                             ; preds = %bb.o
  invoke void @_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.cj, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EE9push_backEOS7_.exit unwind label %bb.w

_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.s
  %.pre272 = load ptr, ptr %i.w, align 8, !tbaa !30 ; 2 uses
  %i.df = icmp eq ptr %.pre272, %i.x
  br i1 %i.df, label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i126: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EE9push_backEOS7_.exit
  %i.dg = load i64, ptr %i.x, align 8, !tbaa !26
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %.pre272, i64 noundef %i.dh) #29
  br label %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i126
  %i.di = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.u
  br i1 %i.dj, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.dk = load i64, ptr %i.u, align 8, !tbaa !26
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #29
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  %i.dm = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.s
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit
  %i.do = load i64, ptr %i.s, align 8, !tbaa !26
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  %i.dq = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.ab
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ds = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.du = load i32, ptr %i.g, align 4, !tbaa !9
  %i.dv = load i32, ptr %i.h, align 4, !tbaa !9
  %i.dw = load i32, ptr %i.i, align 4, !tbaa !9
  %i.dx = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.p
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.dz = load i64, ptr %i.p, align 8, !tbaa !26
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %.174 = phi i32 [ %.073264, %bb.d ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ]
  %.172 = phi i32 [ %.071265, %bb.d ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ]
  %.170 = phi i32 [ %.069266, %bb.d ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ]
  %i.eb = add nuw nsw i32 %.048267, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.eb, %i.m
  br i1 %exitcond.not, label %._crit_edge.i.i, label %bb.c, !llvm.loop !136

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit120
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

.loopexit234:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i121
  %lpad.loopexit236 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

.loopexit.split-lp235:                            ; preds = %bb.i
  %lpad.loopexit.split-lp237 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

bb.v:                                             ; preds = %.noexc.i.i.i.i.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn86 = phi { ptr, i32 } [ %i.ee, %bb.w ], [ %i.ed, %bb.v ] ; 2 uses
  %i.ef = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.s
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.x
  %i.eh = load i64, ptr %i.s, align 8, !tbaa !26
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.x, %.loopexit234, %.loopexit.split-lp235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  %.pn86.pn = phi { ptr, i32 } [ %.pn86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %lpad.loopexit.split-lp237, %.loopexit.split-lp235 ], [ %lpad.loopexit236, %.loopexit234 ], [ %.pn86, %bb.x ] ; 2 uses
  %i.ej = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ab
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.el = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.u
  %.pn86.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.u ], [ %.pn86.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %.pn86.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %.pn86.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.en = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.p
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.y
  %i.ep = load i64, ptr %i.p, align 8, !tbaa !26
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.az

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.er = load i64, ptr %i.ah, align 8, !tbaa !23, !alias.scope !127
  %i.es = sub i64 4611686018427387903, %i.er
  %i.et = icmp ult i64 %i.es, %i.ae
  br i1 %i.et, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.z
  %i.eu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.ad, i64 noundef %i.ae)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.aa ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ev = load i64, ptr %i.ah, align 8, !tbaa !23, !alias.scope !127
  %i.ew = add i64 %i.ev, -4611686018427387889
  %i.ex = icmp ult i64 %i.ew, 15
  br i1 %i.ex, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #27
          to label %.cont.i.i unwind label %bb.aa

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ey = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.61, i64 noundef 15)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %._crit_edge.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %8, align 8, !tbaa !30, !alias.scope !127 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ag
  br i1 %i.fb, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.fc = load ptr, ptr %1, align 8, !tbaa !137
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !137
  %i.ff = icmp eq ptr %i.fc, %i.fe
  br i1 %i.ff, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.fg, ptr %9, align 8, !tbaa !20
  %i.fh = load ptr, ptr %8, align 8, !tbaa !30    ; 2 uses
  %i.fi = load i64, ptr %i.ah, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i64 %i.fi, ptr %i.e, align 8, !tbaa !60
  %i.fj = icmp ugt i64 %i.fi, 15
  br i1 %i.fj, label %.noexc.i146, label %._crit_edge.i.i145

.noexc.i146:                                      ; preds = %bb.ab
  %i.fk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc147 unwind label %bb.ar ; 2 uses

.noexc147:                                        ; preds = %.noexc.i146
  store ptr %i.fk, ptr %9, align 8, !tbaa !30
  %i.fl = load i64, ptr %i.e, align 8, !tbaa !60
  store i64 %i.fl, ptr %i.fg, align 8, !tbaa !26
  br label %._crit_edge.i.i145

._crit_edge.i.i145:                               ; preds = %.noexc147, %bb.ab
  %i.fm = phi ptr [ %i.fk, %.noexc147 ], [ %i.fg, %bb.ab ] ; 2 uses
  switch i64 %i.fi, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %.noexc.i149
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i145
  %i.fn = load i8, ptr %i.fh, align 1, !tbaa !26
  store i8 %i.fn, ptr %i.fm, align 1, !tbaa !26
  br label %.noexc.i149

bb.ad:                                            ; preds = %._crit_edge.i.i145
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr align 1 %i.fh, i64 %i.fi, i1 false)
  br label %.noexc.i149

.noexc.i149:                                      ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i145
  %i.fo = load i64, ptr %i.e, align 8, !tbaa !60  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !23
  %i.fq = load ptr, ptr %9, align 8, !tbaa !30
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fo
  store i8 0, ptr %i.fr, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.fs, ptr %10, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 31, ptr %i.d, align 8, !tbaa !60
  %i.ft = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc150 unwind label %bb.as ; 2 uses

.noexc150:                                        ; preds = %.noexc.i149
  store ptr %i.ft, ptr %10, align 8, !tbaa !30
  %i.fu = load i64, ptr %i.d, align 8, !tbaa !60  ; 3 uses
  store i64 %i.fu, ptr %i.fs, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.ft, ptr noundef nonnull align 1 dereferenceable(31) @.str.62, i64 31, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !23
  %i.fw = load ptr, ptr %10, align 8, !tbaa !30
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fu
  store i8 0, ptr %i.fx, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  %i.fy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.fy, ptr %11, align 8, !tbaa !20
  %i.fz = load ptr, ptr @_ZL18defaultTableIndentB5cxx11, align 8, !tbaa !30 ; 2 uses
  %i.ga = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 8), align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.ga, ptr %i.c, align 8, !tbaa !60
  %i.gb = icmp ugt i64 %i.ga, 15
  br i1 %i.gb, label %.noexc.i153, label %._crit_edge.i.i152

.noexc.i153:                                      ; preds = %.noexc150
  %i.gc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc154 unwind label %bb.at ; 2 uses

.noexc154:                                        ; preds = %.noexc.i153
  store ptr %i.gc, ptr %11, align 8, !tbaa !30
  %i.gd = load i64, ptr %i.c, align 8, !tbaa !60
  store i64 %i.gd, ptr %i.fy, align 8, !tbaa !26
  br label %._crit_edge.i.i152

._crit_edge.i.i152:                               ; preds = %.noexc154, %.noexc150
end_hunk_9
