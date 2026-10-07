Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/service_config_helper?download=true
inline.NumInlined: 880
inline.NumDeleted: 563
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9grpc_core19ChooseServiceConfigB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
bb.ab:                                            ; preds = %bb.z
  %i.db = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cz) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.db, ptr %i.a, align 8, !tbaa !55
  %i.dc = icmp ugt i64 %i.db, 15
  br i1 %i.dc, label %.noexc.i105, label %._crit_edge.i.i104

.noexc.i105:                                      ; preds = %bb.ab
  %i.dd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc107 unwind label %.loopexit ; 2 uses

.noexc107:                                        ; preds = %.noexc.i105
  store ptr %i.dd, ptr %14, align 8, !tbaa !49
  %i.de = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.de, ptr %i.ca, align 8, !tbaa !50
  br label %._crit_edge.i.i104

._crit_edge.i.i104:                               ; preds = %.noexc107, %bb.ab
  %i.df = phi ptr [ %i.dd, %.noexc107 ], [ %i.ca, %bb.ab ] ; 2 uses
  switch i64 %i.db, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i104
  %i.dg = load i8, ptr %i.cz, align 1, !tbaa !50
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !50
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i104
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr nonnull align 1 %i.cz, i64 %i.db, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i104
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  store i64 %i.dh, ptr %i.cb, align 8, !tbaa !54
  %i.di = load ptr, ptr %14, align 8, !tbaa !49
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  store i8 0, ptr %i.dj, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.dk = load ptr, ptr %i.cu, align 8, !tbaa !52
  %i.dl = load ptr, ptr %i.cw, align 8, !tbaa !52
  %i.dm = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIS8_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %i.dk, ptr %i.dl, ptr nonnull align 8 dereferenceable(32) %14)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dn = load ptr, ptr %i.cw, align 8, !tbaa !52
  %.not152 = icmp eq ptr %i.dm, %i.dn
  %i.do = load ptr, ptr %14, align 8, !tbaa !49   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ca
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.af
  %i.dq = load i64, ptr %i.ca, align 8, !tbaa !50
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %.not152, label %.thread144, label %bb.ai

bb.ag:                                            ; preds = %bb.y
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit:                                        ; preds = %.noexc.i105
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.ah:                                            ; preds = %bb.ae
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %14, align 8, !tbaa !49   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.ca
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.ah
  %i.dw = load i64, ptr %i.ca, align 8, !tbaa !50
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.ah, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  %.pn62 = phi { ptr, i32 } [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.dt, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.av

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %.critedge79.thread
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0141.0169, i64 24 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !60
  %.not = icmp eq i32 %i.dz, -1
  br i1 %.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = call i32 @rand() #22
  %i.eb = srem i32 %i.ea, 100
  %i.ec = load i32, ptr %i.dy, align 8, !tbaa !60 ; 2 uses
  %i.ed = icmp sle i32 %i.eb, %i.ec
  %i.ee = icmp ne i32 %i.ec, 0
  %or.cond.not = and i1 %i.ed, %i.ee
  br i1 %or.cond.not, label %bb.ak, label %.thread144

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0141.0169, i64 56
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  store i8 0, ptr %i.eg, align 8, !tbaa !62, !alias.scope !97
  %i.eh = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISA_S3_St4lessISA_ESaISt4pairIKSA_S3_EEESt6vectorIS3_SaIS3_EEEEaSIRKSI_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS0_bS4_SA_SI_SL_EE4typeEE18is_constructible_vISV_SS_E15is_assignable_vIRSV_SS_EERSM_E4typeEST_(ptr noundef nonnull align 8 dereferenceable(49) %16, ptr noundef nonnull align 8 dereferenceable(48) %i.ef)
          to label %_ZN9grpc_core12experimental4Json10FromObjectERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_St4lessIS8_ESaISt4pairIKS8_S1_EEE.exit unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body117

_ZN9grpc_core12experimental4Json10FromObjectERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_St4lessIS8_ESaISt4pairIKS8_S1_EEE.exit: ; preds = %bb.ak
  invoke void @_ZN9grpc_core8JsonDumpB5cxx11ERKNS_12experimental4JsonEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(56) %16, i32 noundef 0)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %_ZN9grpc_core12experimental4Json10FromObjectERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_St4lessIS8_ESaISt4pairIKS8_S1_EEE.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !53
  %i.el = load ptr, ptr %15, align 8, !tbaa !49   ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.eo = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !54 ; 3 uses
  %i.eq = icmp ult i64 %i.ep, 16
  call void @llvm.assume(i1 %i.eq)
  %i.er = add nuw nsw i64 %i.ep, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %i.em, i64 %i.er, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.am
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !49
  %i.es = load i64, ptr %i.em, align 8, !tbaa !50
  store i64 %i.es, ptr %i.ek, align 8, !tbaa !50
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.an
  %i.et = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ep, %bb.an ]
  %i.eu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.et, ptr %i.ev, align 8, !tbaa !54
  store ptr %i.em, ptr %15, align 8, !tbaa !49
  store i64 0, ptr %i.eu, align 8, !tbaa !54
  store i8 0, ptr %i.em, align 8, !tbaa !50
  store i64 1, ptr %0, align 8, !tbaa !17
  %i.ew = load i8, ptr %i.eg, align 8, !tbaa !62
  %.not.i = icmp eq i8 %i.ew, -1
  br i1 %.not.i, label %.thread147, label %bb.ao, !prof !37

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(56) %16)
          to label %.noexc.i122 unwind label %bb.ap, !inline_history !2

.noexc.i122:                                      ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.thread147

bb.ap:                                            ; preds = %bb.ao
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #23, !inline_history !63
  unreachable

.thread147:                                       ; preds = %.noexc.i122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %.loopexit155

bb.aq:                                            ; preds = %_ZN9grpc_core12experimental4Json10FromObjectERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_St4lessIS8_ESaISt4pairIKS8_S1_EEE.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body117

.body117:                                         ; preds = %bb.al, %bb.aq
  %.pn65.pn = phi { ptr, i32 } [ %i.ez, %bb.aq ], [ %i.ei, %bb.al ]
  call void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.av

.thread144:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %bb.aj, %.critedge79
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0141.0169, i64 104 ; 2 uses
  %.not150 = icmp eq ptr %i.fa, %.val82
  br i1 %.not150, label %.critedge81, label %bb.w

.critedge81:                                      ; preds = %.thread144, %.thread207
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.fc, ptr %i.fb, align 8, !tbaa !53
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.fd, align 8, !tbaa !54
  store i8 0, ptr %i.fc, align 8, !tbaa !50
  store i64 1, ptr %0, align 8, !tbaa !17
  br label %.loopexit155

.loopexit155:                                     ; preds = %.thread147, %_ZN4absl12lts_202505126StatusD2Ev.exit95, %.critedge81
  %.val.i = load i64, ptr %10, align 8, !tbaa !17 ; 3 uses
  %i.fe = icmp eq i64 %.val.i, 1
  br i1 %i.fe, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.as

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %.loopexit155
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !41 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i.i.i128 = icmp eq ptr %i.fg, %i.fi
  br i1 %.not4.i.i.i.i128, label %_ZSt8_DestroyIPN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceES2_EvT_S4_RSaIT0_E.exit.i.i134, label %.lr.ph.i.i.i.i129

.lr.ph.i.i.i.i129:                                ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %.lr.ph.i.i.i.i129
  %.05.i.i.i.i130 = phi ptr [ %i.fj, %.lr.ph.i.i.i.i129 ], [ %i.fg, %_ZN4absl12lts_202505126StatusD2Ev.exit.i ] ; 2 uses
  call fastcc void @_ZN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.05.i.i.i.i130) #22
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i130, i64 104 ; 2 uses
  %.not.i.i.i.i131 = icmp eq ptr %i.fj, %i.fi
  br i1 %.not.i.i.i.i131, label %_ZSt8_DestroyIPN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i132, label %.lr.ph.i.i.i.i129, !llvm.loop !0

_ZSt8_DestroyIPN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i132: ; preds = %.lr.ph.i.i.i.i129
  %.val.pr.i.i133 = load ptr, ptr %i.ff, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceES2_EvT_S4_RSaIT0_E.exit.i.i134

_ZSt8_DestroyIPN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceES2_EvT_S4_RSaIT0_E.exit.i.i134: ; preds = %_ZSt8_DestroyIPN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i132, %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %.val.i.i135 = phi ptr [ %.val.pr.i.i133, %_ZSt8_DestroyIPN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i132 ], [ %i.fg, %_ZN4absl12lts_202505126StatusD2Ev.exit.i ] ; 3 uses
  %.not.i.i2.i.i136 = icmp eq ptr %.val.i.i135, null
  br i1 %.not.i.i2.i.i136, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceESaIS6_EEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceES2_EvT_S4_RSaIT0_E.exit.i.i134
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.val1.i.i137 = load ptr, ptr %i.fk, align 8, !tbaa !40
  %i.fl = ptrtoint ptr %.val1.i.i137 to i64
  %i.fm = ptrtoint ptr %.val.i.i135 to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i135, i64 noundef %i.fn) #24
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceESaIS6_EEED2Ev.exit

bb.as:                                            ; preds = %.loopexit155
  %i.fo = trunc i64 %.val.i to i1
  br i1 %i.fo, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceESaIS6_EEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fp = inttoptr i64 %.val.i to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fp)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceESaIS6_EEED2Ev.exit unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #23
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceESaIS6_EEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceES2_EvT_S4_RSaIT0_E.exit.i.i134, %bb.ar, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ax

bb.av:                                            ; preds = %.body117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %bb.ag, %.body92
  %.pn70 = phi { ptr, i32 } [ %i.ds, %bb.ag ], [ %i.bu, %.body92 ], [ %.pn62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %.pn65.pn, %.body117 ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ]
  call fastcc void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceESaIS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %10) #22
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.body87
  %.pn70.pn = phi { ptr, i32 } [ %.pn70, %bb.av ], [ %.pn8.i, %.body87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.bd

bb.ax:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt6vectorIN9grpc_core12_GLOBAL__N_119ServiceConfigChoiceESaIS6_EEED2Ev.exit
  %i.fs = load i64, ptr %8, align 8, !tbaa !17    ; 3 uses
  %i.ft = icmp eq i64 %i.fs, 1
  br i1 %i.ft, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i138, label %bb.ba

_ZN4absl12lts_202505126StatusD2Ev.exit.i138:      ; preds = %bb.ax
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !62
  %.not.i.i = icmp eq i8 %i.fv, -1
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit, label %bb.ay, !prof !37

bb.ay:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i138
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISD_S6_St4lessISD_ESaISt4pairIKSD_S6_EEESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS7_SD_SL_SO_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.fw)
          to label %.noexc.i.i unwind label %bb.az, !inline_history !2

.noexc.i.i:                                       ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit

bb.az:                                            ; preds = %bb.ay
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #23, !inline_history !63
  unreachable

bb.ba:                                            ; preds = %bb.ax
  %i.fz = trunc i64 %i.fs to i1
  br i1 %i.fz, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ga = inttoptr i64 %i.fs to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ga)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #23
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i138, %.noexc.i.i, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

bb.bd:                                            ; preds = %bb.aw, %.body
  %.pn70.pn.pn = phi { ptr, i32 } [ %.pn70.pn, %bb.aw ], [ %i.s, %.body ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core12experimental4JsonEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  resume { ptr, i32 } %.pn70.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN9grpc_core9JsonParseESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::StatusOr.2") align 8, i64, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126Status5UnrefEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_ZN4absl12lts_202505126Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202505126Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #23
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core8JsonArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

declare noundef ptr @_Z16grpc_gethostnamev() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

declare void @_ZN9grpc_core8JsonDumpB5cxx11ERKNS_12experimental4JsonEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core12experimental4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.70, align 1             ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !62
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebN9grpc_core12experimental4Json11NumberValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3mapISC_S5_St4lessISC_ESaISt4pairIKSC_S5_EEESt6vectorIS5_SaIS5_EEEED2Ev.exit, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
end_hunk_0
