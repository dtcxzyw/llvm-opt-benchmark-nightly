Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cat_container?download=true
inline.NumInlined: 7305
inline.NumDeleted: 3143
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZNK7xgboost12CatContainer4SaveEPNS_4JsonE:bb.a
.noexc21.i.i.i.i203.i.i:                          ; preds = %_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i202.i.i
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8 ; 2 uses
  store i32 0, ptr %i.zu, align 4, !tbaa !151
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store i64 2, ptr %i.zv, align 8, !tbaa !156
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost11JsonIntegerE, i64 16), ptr %i.zt, align 8, !tbaa !134
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  store i64 13, ptr %i.zw, align 8, !tbaa !175
  %i.zx = atomicrmw add ptr %i.zu, i32 1 monotonic, align 4 ; 0 uses
  %i.zy = load ptr, ptr %i.zs, align 8, !tbaa !339 ; 4 uses
  store ptr %i.zt, ptr %i.zs, align 8, !tbaa !339
  %.not.i.i.i.i20.i.i.i.i204.i.i = icmp eq ptr %i.zy, null
  br i1 %.not.i.i.i.i20.i.i.i.i204.i.i, label %_ZN7xgboost4JsonaSENS_11JsonIntegerE.exit.i.i.i.i205.i.i, label %bb.ds

bb.ds:                                            ; preds = %.noexc21.i.i.i.i203.i.i
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  %i.aaa = atomicrmw add ptr %i.zz, i32 -1 release, align 4
  %i.aab = icmp eq i32 %i.aaa, 1
  br i1 %i.aab, label %bb.dt, label %_ZN7xgboost4JsonaSENS_11JsonIntegerE.exit.i.i.i.i205.i.i

bb.dt:                                            ; preds = %bb.ds
  fence acquire
  %i.aac = load ptr, ptr %i.zy, align 8, !tbaa !134
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aae = load ptr, ptr %i.aad, align 8
  call void %i.aae(ptr noundef nonnull align 8 dereferenceable(24) %i.zy) #15, !inline_history !325
  br label %_ZN7xgboost4JsonaSENS_11JsonIntegerE.exit.i.i.i.i205.i.i

_ZN7xgboost4JsonaSENS_11JsonIntegerE.exit.i.i.i.i205.i.i: ; preds = %bb.dt, %bb.ds, %.noexc21.i.i.i.i203.i.i
  %i.aaf = load ptr, ptr %10, align 8, !tbaa !142 ; 2 uses
  %i.aag = icmp eq ptr %i.aaf, %i.bi
  br i1 %i.aag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i221.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i206.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i206.i.i: ; preds = %_ZN7xgboost4JsonaSENS_11JsonIntegerE.exit.i.i.i.i205.i.i
  %i.aah = load i64, ptr %i.bi, align 8, !tbaa !86
  %i.aai = add i64 %i.aah, 1
  call void @_ZdlPvm(ptr noundef %i.aaf, i64 noundef %i.aai) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i221.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i221.i.i: ; preds = %_ZN7xgboost4JsonaSENS_11JsonIntegerE.exit.i.i.i.i205.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i206.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store ptr %i.bm, ptr %11, align 8, !tbaa !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bm, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, i64 6, i1 false)
  store i64 6, ptr %i.bn, align 8, !tbaa !143
  store i8 0, ptr %i.bo, align 2, !tbaa !86
  %i.aaj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost4JsonESt4lessIvESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit27.i.i.i.i210.i.i unwind label %bb.ea ; 2 uses

_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit27.i.i.i.i210.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i221.i.i
  %i.aak = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc29.i.i.i.i211.i.i unwind label %bb.ea ; 7 uses

.noexc29.i.i.i.i211.i.i:                          ; preds = %_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit27.i.i.i.i210.i.i
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8 ; 2 uses
  store i32 0, ptr %i.aal, align 4, !tbaa !151
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  store i64 13, ptr %i.aam, align 8, !tbaa !156
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost14JsonTypedArrayIiLNS_5Value9ValueKindE13EEE, i64 16), ptr %i.aak, align 8, !tbaa !134
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aak, i64 24
  store ptr %.sroa.8.1.i.i.i.i194.i.i, ptr %i.aan, align 8, !tbaa !82
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aak, i64 32
  store ptr %.sroa.21.1.i.i.i.i193.i.i, ptr %i.aao, align 8, !tbaa !81
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aak, i64 40
  store ptr %.sroa.21.1.i.i.i.i193.i.i, ptr %i.aap, align 8, !tbaa !170
  %i.aaq = atomicrmw add ptr %i.aal, i32 1 monotonic, align 4 ; 0 uses
  %i.aar = load ptr, ptr %i.aaj, align 8, !tbaa !339 ; 4 uses
  store ptr %i.aak, ptr %i.aaj, align 8, !tbaa !339
  %.not.i.i.i.i28.i.i.i.i212.i.i = icmp eq ptr %i.aar, null
  br i1 %.not.i.i.i.i28.i.i.i.i212.i.i, label %_ZN7xgboost4JsonaSIiLNS_5Value9ValueKindE13EEERS0_ONS_14JsonTypedArrayIT_XT0_EEE.exit.i.i.i.i213.i.i, label %bb.du

bb.du:                                            ; preds = %.noexc29.i.i.i.i211.i.i
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  %i.aat = atomicrmw add ptr %i.aas, i32 -1 release, align 4
  %i.aau = icmp eq i32 %i.aat, 1
  br i1 %i.aau, label %bb.dv, label %_ZN7xgboost4JsonaSIiLNS_5Value9ValueKindE13EEERS0_ONS_14JsonTypedArrayIT_XT0_EEE.exit.i.i.i.i213.i.i

bb.dv:                                            ; preds = %bb.du
  fence acquire
  %i.aav = load ptr, ptr %i.aar, align 8, !tbaa !134
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.aax = load ptr, ptr %i.aaw, align 8
  call void %i.aax(ptr noundef nonnull align 8 dereferenceable(24) %i.aar) #15, !inline_history !326
  br label %_ZN7xgboost4JsonaSIiLNS_5Value9ValueKindE13EEERS0_ONS_14JsonTypedArrayIT_XT0_EEE.exit.i.i.i.i213.i.i

_ZN7xgboost4JsonaSIiLNS_5Value9ValueKindE13EEERS0_ONS_14JsonTypedArrayIT_XT0_EEE.exit.i.i.i.i213.i.i: ; preds = %bb.dv, %bb.du, %.noexc29.i.i.i.i211.i.i
  %i.aay = load ptr, ptr %11, align 8, !tbaa !142 ; 2 uses
  %i.aaz = icmp eq ptr %i.aay, %i.bm
  br i1 %i.aaz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i.i215.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i.i.i214.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i.i.i214.i.i: ; preds = %_ZN7xgboost4JsonaSIiLNS_5Value9ValueKindE13EEERS0_ONS_14JsonTypedArrayIT_XT0_EEE.exit.i.i.i.i213.i.i
  %i.aba = load i64, ptr %i.bm, align 8, !tbaa !86
  %i.abb = add i64 %i.aba, 1
  call void @_ZdlPvm(ptr noundef %i.aay, i64 noundef %i.abb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i.i215.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i.i215.i.i: ; preds = %_ZN7xgboost4JsonaSIiLNS_5Value9ValueKindE13EEERS0_ONS_14JsonTypedArrayIT_XT0_EEE.exit.i.i.i.i213.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i.i.i.i214.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.abc = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29
          to label %.noexc34.i.i.i.i217.i.i unwind label %.thread.i.i.i.i216.i.i ; 3 uses

.noexc34.i.i.i.i217.i.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i.i215.i.i
  call void @_ZN7xgboost10JsonObjectC1EOS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.abc, ptr noundef nonnull align 8 dereferenceable(72) %9) #15
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  %i.abe = atomicrmw add ptr %i.abd, i32 1 monotonic, align 4 ; 0 uses
  %i.abf = load ptr, ptr %i.ey, align 8, !tbaa !339 ; 4 uses
  store ptr %i.abc, ptr %i.ey, align 8, !tbaa !339
  %.not.i.i.i.i33.i.i.i.i218.i.i = icmp eq ptr %i.abf, null
  br i1 %.not.i.i.i.i33.i.i.i.i218.i.i, label %_ZN7xgboost4JsonaSEONS_10JsonObjectE.exit.i.i.i.i219.i.i, label %bb.dw

bb.dw:                                            ; preds = %.noexc34.i.i.i.i217.i.i
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abh = atomicrmw add ptr %i.abg, i32 -1 release, align 4
  %i.abi = icmp eq i32 %i.abh, 1
  br i1 %i.abi, label %bb.dx, label %_ZN7xgboost4JsonaSEONS_10JsonObjectE.exit.i.i.i.i219.i.i

bb.dx:                                            ; preds = %bb.dw
  fence acquire
  %i.abj = load ptr, ptr %i.abf, align 8, !tbaa !134
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abl = load ptr, ptr %i.abk, align 8
  call void %i.abl(ptr noundef nonnull align 8 dereferenceable(24) %i.abf) #15, !inline_history !327
  br label %_ZN7xgboost4JsonaSEONS_10JsonObjectE.exit.i.i.i.i219.i.i

_ZN7xgboost4JsonaSEONS_10JsonObjectE.exit.i.i.i.i219.i.i: ; preds = %bb.dx, %bb.dw, %.noexc34.i.i.i.i217.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonObjectE, i64 16), ptr %9, align 8, !tbaa !134
  %i.abm = load ptr, ptr %i.be, align 8, !tbaa !162
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef %i.abm)
          to label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEON3enc10OverloadedIJZNK7xgboost12CatContainer4SaveEPNS7_4JsonEE3$_0ZNKS8_4SaveESA_E3$_1EEERKSt7variantIJNS7_8cpu_impl11CatStrArrayESt6vectorIhSaIhEESI_IaSaIaEESI_ItSaItEESI_IsSaIsEESI_IjSaIjEESI_IiSaIiEESI_ImSaImEESI_IlSaIlEEEEEJEEESt16integer_sequenceImJLm6EEEE14__visit_invokeESE_S11_.exit.i.i" unwind label %bb.dy

bb.dy:                                            ; preds = %_ZN7xgboost4JsonaSEONS_10JsonObjectE.exit.i.i.i.i219.i.i
  %i.abn = landingpad { ptr, i32 }
          catch ptr null
  %i.abo = extractvalue { ptr, i32 } %i.abn, 0
  call void @__clang_call_terminate(ptr %i.abo) #30
  unreachable

.thread.i.i.i.i216.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i.i.i.i215.i.i
  %i.abp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost10JsonObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %.body58

bb.dz:                                            ; preds = %_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i202.i.i, %bb.dr
  %i.abq = landingpad { ptr, i32 }
          cleanup
  %i.abr = load ptr, ptr %10, align 8, !tbaa !142 ; 2 uses
  %i.abs = icmp eq ptr %i.abr, %i.bi
  br i1 %i.abs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i.i196.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i.i195.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i.i195.i.i: ; preds = %bb.dz
  %i.abt = load i64, ptr %i.bi, align 8, !tbaa !86
  %i.abu = add i64 %i.abt, 1
  call void @_ZdlPvm(ptr noundef %i.abr, i64 noundef %i.abu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i.i196.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i.i196.i.i: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i.i.i.i195.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.eb

bb.ea:                                            ; preds = %_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit27.i.i.i.i210.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i221.i.i
  %i.abv = landingpad { ptr, i32 }
          cleanup
  %i.abw = load ptr, ptr %11, align 8, !tbaa !142 ; 2 uses
  %i.abx = icmp eq ptr %i.abw, %i.bm
  br i1 %i.abx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i.i208.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i.i.i207.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i.i.i207.i.i: ; preds = %bb.ea
  %i.aby = load i64, ptr %i.bm, align 8, !tbaa !86
  %i.abz = add i64 %i.aby, 1
  call void @_ZdlPvm(ptr noundef %i.abw, i64 noundef %i.abz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i.i208.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i.i208.i.i: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i.i.i.i207.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.eb

bb.eb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i.i208.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i.i196.i.i
  %.pn16.i.i.i.i197.i.i = phi { ptr, i32 } [ %i.abq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i.i196.i.i ], [ %i.abv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i.i.i.i208.i.i ] ; 2 uses
  call void @_ZN7xgboost10JsonObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %.not.i.i.i.i43.i.i.i.i198.i.i = icmp eq ptr %.sroa.8.1.i.i.i.i194.i.i, null
  br i1 %.not.i.i.i.i43.i.i.i.i198.i.i, label %.body58, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aca = ptrtoint ptr %.sroa.21.1.i.i.i.i193.i.i to i64
  %i.acb = ptrtoint ptr %.sroa.8.1.i.i.i.i194.i.i to i64
  %i.acc = sub i64 %i.aca, %i.acb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.8.1.i.i.i.i194.i.i, i64 noundef %i.acc) #32, !inline_history !173
  br label %.body58

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEON3enc10OverloadedIJZNK7xgboost12CatContainer4SaveEPNS7_4JsonEE3$_0ZNKS8_4SaveESA_E3$_1EEERKSt7variantIJNS7_8cpu_impl11CatStrArrayESt6vectorIhSaIhEESI_IaSaIaEESI_ItSaItEESI_IsSaIsEESI_IjSaIjEESI_IiSaIiEESI_ImSaImEESI_IlSaIlEEEEEJEEESt16integer_sequenceImJLm6EEEE14__visit_invokeESE_S11_.exit.i.i": ; preds = %_ZN7xgboost4JsonaSEONS_10JsonObjectE.exit.i.i.i.i219.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %"_ZSt5visitIN3enc10OverloadedIJZNK7xgboost12CatContainer4SaveEPNS2_4JsonEE3$_0ZNKS3_4SaveES5_E3$_1EEEJRKSt7variantIJNS2_8cpu_impl11CatStrArrayESt6vectorIhSaIhEESC_IaSaIaEESC_ItSaItEESC_IsSaIsEESC_IjSaIjEESC_IiSaIiEESC_ImSaImEESC_IlSaIlEEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISZ_EEEEE4typeEE4typeEOS18_EEEE4typeEOSX_DpOSZ_.exit"

bb.ed:                                            ; preds = %bb.e
  %i.acd = load ptr, ptr %i.fa, align 8, !tbaa !185 ; 6 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 3 uses
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !185 ; 5 uses
  %i.acg = ptrtoint ptr %i.acf to i64             ; 2 uses
  %i.ach = ptrtoint ptr %i.acd to i64             ; 3 uses
  %i.aci = sub i64 %i.acg, %i.ach                 ; 5 uses
  %i.acj = ashr i64 %i.aci, 5                     ; 2 uses
  %i.ack = icmp sgt i64 %i.acj, 0
  br i1 %i.ack, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ed
  %i.acl = and i64 %i.aci, -32
  %scevgep.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.acd, i64 %i.acl ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.eh, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.045.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.acy, %bb.eh ], [ %i.acj, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.acx, %bb.eh ], [ %i.acd, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %i.acm = load i64, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !69
  %i.acn = icmp slt i64 %i.acm, 0
  br i1 %i.acn, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i", label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aco = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !69
  %i.acq = icmp slt i64 %i.acp, 0
  br i1 %i.acq, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit", label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.acr = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.acs = load i64, ptr %i.acr, align 8, !tbaa !69
  %i.act = icmp slt i64 %i.acs, 0
  br i1 %i.act, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit747", label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.acu = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.acv = load i64, ptr %i.acu, align 8, !tbaa !69
  %i.acw = icmp slt i64 %i.acv, 0
  br i1 %i.acw, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit749", label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.acx = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.acy = add nsw i64 %.045.i.i.i.i.i.i.i.i.i.i, -1
  %i.acz = icmp sgt i64 %.045.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.acz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !328

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.eh
  %.pre.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i.i.i.i.i to i64
  %.pre50.i.i.i.i.i.i.i.i.i.i = sub i64 %i.acg, %.pre.i.i.i.i.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i, %bb.ed
  %.pre-phi51.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre50.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %i.aci, %bb.ed ]
  %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %i.acd, %bb.ed ] ; 5 uses
  %i.ada = ashr exact i64 %.pre-phi51.i.i.i.i.i.i.i.i.i.i, 3
  switch i64 %i.ada, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.thread.i.i.i.i.i.i" [
    i64 3, label %bb.ei
    i64 2, label %bb.ek
    i64 1, label %bb.em
  ]

bb.ei:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.adb = load i64, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !69
  %i.adc = icmp slt i64 %i.adb, 0
  br i1 %i.adc, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i", label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.add = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.sroa.025.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.add, %bb.ej ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ade = load i64, ptr %.sroa.025.1.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !69
  %i.adf = icmp slt i64 %i.ade, 0
  br i1 %i.adf, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i", label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.adg = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i.i.i.i.i, i64 8
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.sroa.025.2.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.adg, %bb.el ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.adh = load i64, ptr %.sroa.025.2.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !69
  %i.adi = icmp slt i64 %i.adh, 0
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.adi, ptr %.sroa.025.2.i.i.i.i.i.i.i.i.i.i, ptr %i.acf
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit": ; preds = %bb.ee
  %i.adj = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i, i64 8
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit747": ; preds = %bb.ef
  %i.adk = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i, i64 16
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit749": ; preds = %bb.eg
  %i.adl = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i, i64 24
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit747", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit749", %bb.em, %bb.ek, %bb.ei
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.025.1.i.i.i.i.i.i.i.i.i.i, %bb.ek ], [ %spec.select.i.i.i.i.i.i.i.i.i.i, %bb.em ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i, %bb.ei ], [ %i.adl, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit749" ], [ %i.adk, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit747" ], [ %i.adj, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i.loopexit.split.loop.exit" ], [ %.sroa.025.044.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.adm = icmp eq ptr %i.acf, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i
  br i1 %i.adm, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.thread.i.i.i.i.i.i", label %bb.en, !prof !340

bb.en:                                            ; preds = %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.adn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc74:                                         ; preds = %bb.en
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.adn, ptr noundef nonnull @.str, i32 noundef 152)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc75:                                         ; preds = %.noexc74
  %i.ado = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i.i unwind label %bb.eo ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i.i: ; preds = %.noexc75
  %i.adp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ado, ptr noundef nonnull @.str.43, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i.i unwind label %bb.eo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i.i
  %i.adq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ado, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26.i.i.i.i.i.i unwind label %bb.eo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i.i
  %i.adr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ado, ptr noundef nonnull @.str.44, i64 noundef 62)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i.i.i.i unwind label %bb.eo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26.i.i.i.i.i.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc76:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.pre.i.i.i.i225.i.i = load ptr, ptr %i.ace, align 8, !tbaa !121 ; 2 uses
  %.pre86.i.i.i.i.i.i = load ptr, ptr %i.fa, align 8, !tbaa !122 ; 2 uses
  %.pre89.i.i.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i225.i.i to i64
  %.pre90.i.i.i.i.i.i = ptrtoint ptr %.pre86.i.i.i.i.i.i to i64 ; 2 uses
  %.pre92.i.i.i.i.i.i = sub i64 %.pre89.i.i.i.i.i.i, %.pre90.i.i.i.i.i.i
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.thread.i.i.i.i.i.i"

bb.eo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26.i.i.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i.i.i.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i.i.i, %.noexc75
  %i.ads = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.ep unwind label %bb.fg

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.body58

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.thread.i.i.i.i.i.i": ; preds = %.noexc76, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.pre-phi93.i.i.i.i.i.i = phi i64 [ %i.aci, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %.pre92.i.i.i.i.i.i, %.noexc76 ], [ %i.aci, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i" ] ; 3 uses
  %.pre-phi91.i.i.i.i.i.i = phi i64 [ %i.ach, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %.pre90.i.i.i.i.i.i, %.noexc76 ], [ %i.ach, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.adt = phi ptr [ %i.acd, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %.pre86.i.i.i.i.i.i, %.noexc76 ], [ %i.acd, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.adu = phi ptr [ %i.acf, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i225.i.i, %.noexc76 ], [ %i.acf, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.i.i.i.i.i.i" ]
  %i.adv = ashr exact i64 %.pre-phi93.i.i.i.i.i.i, 3 ; 2 uses
  %.not.i.i.i.i.i226.i.i = icmp eq ptr %i.adu, %i.adt
  br i1 %.not.i.i.i.i.i226.i.i, label %_ZN7xgboost14JsonTypedArrayImLNS_5Value9ValueKindE16EEC2Em.exit.i.i.i.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.thread.i.i.i.i.i.i"
  %i.adw = icmp ugt i64 %i.adv, 1152921504606846975
  br i1 %i.adw, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.eq
  %i.adx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi93.i.i.i.i.i.i) #29
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  store i64 0, ptr %i.adx, align 8, !tbaa !69
  %i.ady = add nsw i64 %i.adv, -1                 ; 2 uses
  %i.adz = icmp eq i64 %i.ady, 0
  br i1 %i.adz, label %_ZNSt6vectorImSaImEE17_M_default_appendEm.exit.i.i.i.i.i.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i.i.i: ; preds = %.noexc78
  %i.aea = getelementptr i8, ptr %i.adx, i64 8
  %.idx.i.i.i.i.i31.i.i.i.i.i227.i.i = shl nuw nsw i64 %i.ady, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aea, i8 0, i64 %.idx.i.i.i.i.i31.i.i.i.i.i227.i.i, i1 false), !tbaa !69
  br label %_ZNSt6vectorImSaImEE17_M_default_appendEm.exit.i.i.i.i.i.i

_ZNSt6vectorImSaImEE17_M_default_appendEm.exit.i.i.i.i.i.i: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i.i.i.i.i.i, %.noexc78
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adx, i64 %.pre-phi93.i.i.i.i.i.i
  %.pre87.i.i.i.i.i.i = load ptr, ptr %i.fa, align 8, !tbaa !185 ; 2 uses
  %.pre88.i.i.i.i.i.i = load ptr, ptr %i.ace, align 8, !tbaa !185
  %.pre94.i.i.i.i.i.i = ptrtoint ptr %.pre88.i.i.i.i.i.i to i64
  %.pre96.i.i.i.i.i.i = ptrtoint ptr %.pre87.i.i.i.i.i.i to i64
  br label %_ZN7xgboost14JsonTypedArrayImLNS_5Value9ValueKindE16EEC2Em.exit.i.i.i.i.i.i

_ZN7xgboost14JsonTypedArrayImLNS_5Value9ValueKindE16EEC2Em.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorImSaImEE17_M_default_appendEm.exit.i.i.i.i.i.i, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.thread.i.i.i.i.i.i"
  %.pre-phi97.i.i.i.i.i.i = phi i64 [ %.pre96.i.i.i.i.i.i, %_ZNSt6vectorImSaImEE17_M_default_appendEm.exit.i.i.i.i.i.i ], [ %.pre-phi91.i.i.i.i.i.i, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.thread.i.i.i.i.i.i" ]
  %.pre-phi95.i.i.i.i.i.i = phi i64 [ %.pre94.i.i.i.i.i.i, %_ZNSt6vectorImSaImEE17_M_default_appendEm.exit.i.i.i.i.i.i ], [ %.pre-phi91.i.i.i.i.i.i, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.thread.i.i.i.i.i.i" ]
  %i.aec = phi ptr [ %.pre87.i.i.i.i.i.i, %_ZNSt6vectorImSaImEE17_M_default_appendEm.exit.i.i.i.i.i.i ], [ %i.adt, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.thread.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.21.1.i.i.i.i228.i.i = phi ptr [ %i.aeb, %_ZNSt6vectorImSaImEE17_M_default_appendEm.exit.i.i.i.i.i.i ], [ null, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.thread.i.i.i.i.i.i" ] ; 3 uses
  %.sroa.8.1.i.i.i.i229.i.i = phi ptr [ %i.adx, %_ZNSt6vectorImSaImEE17_M_default_appendEm.exit.i.i.i.i.i.i ], [ null, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEZZNK7xgboost12CatContainer4SaveEPNS8_4JsonEENK3$_1clIRKS6_EEDaOT_EUlmE_EbSG_SG_T0_.exit.thread.i.i.i.i.i.i" ] ; 6 uses
  %i.aed = sub i64 %.pre-phi95.i.i.i.i.i.i, %.pre-phi97.i.i.i.i.i.i ; 3 uses
  %i.aee = icmp sgt i64 %i.aed, 8
  br i1 %i.aee, label %bb.er, label %bb.es, !prof !65

bb.er:                                            ; preds = %_ZN7xgboost14JsonTypedArrayImLNS_5Value9ValueKindE16EEC2Em.exit.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.8.1.i.i.i.i229.i.i, ptr align 8 %i.aec, i64 %i.aed, i1 false)
  br label %bb.eu

bb.es:                                            ; preds = %_ZN7xgboost14JsonTypedArrayImLNS_5Value9ValueKindE16EEC2Em.exit.i.i.i.i.i.i
  %i.aef = icmp eq i64 %i.aed, 8
  br i1 %i.aef, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.aeg = load i64, ptr %i.aec, align 8, !tbaa !69
  store i64 %i.aeg, ptr %.sroa.8.1.i.i.i.i229.i.i, align 8, !tbaa !69
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es, %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i32 0, ptr %i.an, align 8, !tbaa !151
  store i64 3, ptr %i.ao, align 8, !tbaa !156
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonObjectE, i64 16), ptr %6, align 8, !tbaa !134
  store i32 0, ptr %i.ap, align 8, !tbaa !161
  store ptr null, ptr %i.aq, align 8, !tbaa !162
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !163
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !164
  store i64 0, ptr %i.at, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %i.au, ptr %7, align 8, !tbaa !167
  store i32 1701869940, ptr %i.au, align 8
  store i64 4, ptr %i.av, align 8, !tbaa !143
  store i8 0, ptr %i.aw, align 4, !tbaa !86
  %i.aeh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost4JsonESt4lessIvESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i230.i.i unwind label %bb.fc ; 2 uses

_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i230.i.i: ; preds = %bb.eu
  %i.aei = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29
          to label %.noexc30.i.i.i.i.i.i unwind label %bb.fc ; 5 uses

.noexc30.i.i.i.i.i.i:                             ; preds = %_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i230.i.i
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 8 ; 2 uses
  store i32 0, ptr %i.aej, align 4, !tbaa !151
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aei, i64 16
  store i64 2, ptr %i.aek, align 8, !tbaa !156
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost11JsonIntegerE, i64 16), ptr %i.aei, align 8, !tbaa !134
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aei, i64 24
  store i64 16, ptr %i.ael, align 8, !tbaa !175
  %i.aem = atomicrmw add ptr %i.aej, i32 1 monotonic, align 4 ; 0 uses
  %i.aen = load ptr, ptr %i.aeh, align 8, !tbaa !339 ; 4 uses
  store ptr %i.aei, ptr %i.aeh, align 8, !tbaa !339
  %.not.i.i.i.i29.i.i.i.i.i.i = icmp eq ptr %i.aen, null
  br i1 %.not.i.i.i.i29.i.i.i.i.i.i, label %_ZN7xgboost4JsonaSENS_11JsonIntegerE.exit.i.i.i.i231.i.i, label %bb.ev

bb.ev:                                            ; preds = %.noexc30.i.i.i.i.i.i
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 8
  %i.aep = atomicrmw add ptr %i.aeo, i32 -1 release, align 4
  %i.aeq = icmp eq i32 %i.aep, 1
  br i1 %i.aeq, label %bb.ew, label %_ZN7xgboost4JsonaSENS_11JsonIntegerE.exit.i.i.i.i231.i.i

bb.ew:                                            ; preds = %bb.ev
  fence acquire
  %i.aer = load ptr, ptr %i.aen, align 8, !tbaa !134
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  %i.aet = load ptr, ptr %i.aes, align 8
  call void %i.aet(ptr noundef nonnull align 8 dereferenceable(24) %i.aen) #15, !inline_history !329
  br label %_ZN7xgboost4JsonaSENS_11JsonIntegerE.exit.i.i.i.i231.i.i

_ZN7xgboost4JsonaSENS_11JsonIntegerE.exit.i.i.i.i231.i.i: ; preds = %bb.ew, %bb.ev, %.noexc30.i.i.i.i.i.i
  %i.aeu = load ptr, ptr %7, align 8, !tbaa !142  ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, %i.au
  br i1 %i.aev, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i235.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i232.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i232.i.i: ; preds = %_ZN7xgboost4JsonaSENS_11JsonIntegerE.exit.i.i.i.i231.i.i
  %i.aew = load i64, ptr %i.au, align 8, !tbaa !86
  %i.aex = add i64 %i.aew, 1
  call void @_ZdlPvm(ptr noundef %i.aeu, i64 noundef %i.aex) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i235.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i235.i.i: ; preds = %_ZN7xgboost4JsonaSENS_11JsonIntegerE.exit.i.i.i.i231.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i232.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr %i.ay, ptr %8, align 8, !tbaa !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ay, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, i64 6, i1 false)
  store i64 6, ptr %i.az, align 8, !tbaa !143
  store i8 0, ptr %i.ba, align 2, !tbaa !86
  %i.aey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost4JsonESt4lessIvESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit36.i.i.i.i.i.i unwind label %bb.fd ; 2 uses

_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit36.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i235.i.i
  %i.aez = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %.noexc38.i.i.i.i.i.i unwind label %bb.fd ; 7 uses

.noexc38.i.i.i.i.i.i:                             ; preds = %_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit36.i.i.i.i.i.i
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 8 ; 2 uses
  store i32 0, ptr %i.afa, align 4, !tbaa !151
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  store i64 16, ptr %i.afb, align 8, !tbaa !156
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost14JsonTypedArrayImLNS_5Value9ValueKindE16EEE, i64 16), ptr %i.aez, align 8, !tbaa !134
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aez, i64 24
  store ptr %.sroa.8.1.i.i.i.i229.i.i, ptr %i.afc, align 8, !tbaa !122
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aez, i64 32
  store ptr %.sroa.21.1.i.i.i.i228.i.i, ptr %i.afd, align 8, !tbaa !121
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aez, i64 40
  store ptr %.sroa.21.1.i.i.i.i228.i.i, ptr %i.afe, align 8, !tbaa !187
  %i.aff = atomicrmw add ptr %i.afa, i32 1 monotonic, align 4 ; 0 uses
  %i.afg = load ptr, ptr %i.aey, align 8, !tbaa !339 ; 4 uses
  store ptr %i.aez, ptr %i.aey, align 8, !tbaa !339
  %.not.i.i.i.i37.i.i.i.i.i.i = icmp eq ptr %i.afg, null
  br i1 %.not.i.i.i.i37.i.i.i.i.i.i, label %_ZN7xgboost4JsonaSImLNS_5Value9ValueKindE16EEERS0_ONS_14JsonTypedArrayIT_XT0_EEE.exit.i.i.i.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %.noexc38.i.i.i.i.i.i
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 8
  %i.afi = atomicrmw add ptr %i.afh, i32 -1 release, align 4
  %i.afj = icmp eq i32 %i.afi, 1
  br i1 %i.afj, label %bb.ey, label %_ZN7xgboost4JsonaSImLNS_5Value9ValueKindE16EEERS0_ONS_14JsonTypedArrayIT_XT0_EEE.exit.i.i.i.i.i.i

bb.ey:                                            ; preds = %bb.ex
  fence acquire
  %i.afk = load ptr, ptr %i.afg, align 8, !tbaa !134
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  %i.afm = load ptr, ptr %i.afl, align 8
  call void %i.afm(ptr noundef nonnull align 8 dereferenceable(24) %i.afg) #15, !inline_history !330
  br label %_ZN7xgboost4JsonaSImLNS_5Value9ValueKindE16EEERS0_ONS_14JsonTypedArrayIT_XT0_EEE.exit.i.i.i.i.i.i

_ZN7xgboost4JsonaSImLNS_5Value9ValueKindE16EEERS0_ONS_14JsonTypedArrayIT_XT0_EEE.exit.i.i.i.i.i.i: ; preds = %bb.ey, %bb.ex, %.noexc38.i.i.i.i.i.i
  %i.afn = load ptr, ptr %8, align 8, !tbaa !142  ; 2 uses
  %i.afo = icmp eq ptr %i.afn, %i.ay
  br i1 %i.afo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i.i.i.i.i: ; preds = %_ZN7xgboost4JsonaSImLNS_5Value9ValueKindE16EEERS0_ONS_14JsonTypedArrayIT_XT0_EEE.exit.i.i.i.i.i.i
  %i.afp = load i64, ptr %i.ay, align 8, !tbaa !86
  %i.afq = add i64 %i.afp, 1
  call void @_ZdlPvm(ptr noundef %i.afn, i64 noundef %i.afq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i.i.i.i.i: ; preds = %_ZN7xgboost4JsonaSImLNS_5Value9ValueKindE16EEERS0_ONS_14JsonTypedArrayIT_XT0_EEE.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.afr = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29
          to label %.noexc43.i.i.i.i.i.i unwind label %.thread.i.i.i.i233.i.i ; 3 uses

.noexc43.i.i.i.i.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i.i.i.i.i
  call void @_ZN7xgboost10JsonObjectC1EOS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.afr, ptr noundef nonnull align 8 dereferenceable(72) %6) #15
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.aft = atomicrmw add ptr %i.afs, i32 1 monotonic, align 4 ; 0 uses
  %i.afu = load ptr, ptr %i.ey, align 8, !tbaa !339 ; 4 uses
  store ptr %i.afr, ptr %i.ey, align 8, !tbaa !339
  %.not.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.afu, null
  br i1 %.not.i.i.i.i42.i.i.i.i.i.i, label %_ZN7xgboost4JsonaSEONS_10JsonObjectE.exit.i.i.i.i234.i.i, label %bb.ez

bb.ez:                                            ; preds = %.noexc43.i.i.i.i.i.i
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %i.afw = atomicrmw add ptr %i.afv, i32 -1 release, align 4
  %i.afx = icmp eq i32 %i.afw, 1
  br i1 %i.afx, label %bb.fa, label %_ZN7xgboost4JsonaSEONS_10JsonObjectE.exit.i.i.i.i234.i.i

bb.fa:                                            ; preds = %bb.ez
  fence acquire
  %i.afy = load ptr, ptr %i.afu, align 8, !tbaa !134
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 8
  %i.aga = load ptr, ptr %i.afz, align 8
  call void %i.aga(ptr noundef nonnull align 8 dereferenceable(24) %i.afu) #15, !inline_history !331
  br label %_ZN7xgboost4JsonaSEONS_10JsonObjectE.exit.i.i.i.i234.i.i

_ZN7xgboost4JsonaSEONS_10JsonObjectE.exit.i.i.i.i234.i.i: ; preds = %bb.fa, %bb.ez, %.noexc43.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonObjectE, i64 16), ptr %6, align 8, !tbaa !134
  %i.agb = load ptr, ptr %i.aq, align 8, !tbaa !162
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef %i.agb)
          to label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEON3enc10OverloadedIJZNK7xgboost12CatContainer4SaveEPNS7_4JsonEE3$_0ZNKS8_4SaveESA_E3$_1EEERKSt7variantIJNS7_8cpu_impl11CatStrArrayESt6vectorIhSaIhEESI_IaSaIaEESI_ItSaItEESI_IsSaIsEESI_IjSaIjEESI_IiSaIiEESI_ImSaImEESI_IlSaIlEEEEEJEEESt16integer_sequenceImJLm7EEEE14__visit_invokeESE_S11_.exit.i.i" unwind label %bb.fb

bb.fb:                                            ; preds = %_ZN7xgboost4JsonaSEONS_10JsonObjectE.exit.i.i.i.i234.i.i
  %i.agc = landingpad { ptr, i32 }
          catch ptr null
  %i.agd = extractvalue { ptr, i32 } %i.agc, 0
  call void @__clang_call_terminate(ptr %i.agd) #30
  unreachable

.thread.i.i.i.i233.i.i:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i.i.i.i.i
  %i.age = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost10JsonObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.body58

bb.fc:                                            ; preds = %_ZN7xgboost10JsonObjectixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.i.i230.i.i, %bb.eu
  %i.agf = landingpad { ptr, i32 }
          cleanup
  %i.agg = load ptr, ptr %7, align 8, !tbaa !142  ; 2 uses
  %i.agh = icmp eq ptr %i.agg, %i.au
  br i1 %i.agh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i.i.i.i.i.i: ; preds = %bb.fc
  %i.agi = load i64, ptr %i.au, align 8, !tbaa !86
  %i.agj = add i64 %i.agi, 1
  call void @_ZdlPvm(ptr noundef %i.agg, i64 noundef %i.agj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i.i.i.i.i.i: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i.i.i.i.i.i
end_hunk_0
