inline.NumInlined: 4892
inline.NumDeleted: 1491
begin_hunk_0_@_ZNK6google8protobuf8compiler3php9Generator11GenerateAllERKSt6vectorIPKNS0_14FileDescriptorESaIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_16GeneratorContextEPSH_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.i: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.0457.0711.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.oc, %i.ky
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.bn:                                            ; preds = %.lr.ph.i
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i: ; preds = %.body219
  %i.oe = load i64, ptr %i.bf, align 8, !tbaa !52
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.of) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i: ; preds = %.body219, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i, %bb.bn
  %.pn129.i = phi { ptr, i32 } [ %i.od, %bb.bn ], [ %.pn.i141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i ], [ %.pn.i141, %.body219 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  br label %.body.i

._crit_edge730.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i, %._crit_edge.i, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i156.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %37, ptr noundef nonnull align 8 dereferenceable(32) %32, i64 42, ptr nonnull @.str.244)
          to label %bb.bp unwind label %bb.bo

bb.bo:                                            ; preds = %._crit_edge730.i
  %i.og = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  br label %.body.i

bb.bp:                                            ; preds = %._crit_edge730.i
  %i.oh = load i64, ptr %32, align 8, !tbaa !93   ; 2 uses
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %bb.ft, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.oj = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i156.i, align 8, !tbaa !52
  %i.ok = load i64, ptr %i.er, align 8, !tbaa !94
  %i.ol = and i64 %i.ok, 65536
  %i.om = icmp ne i64 %i.ol, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %32, i64 noundef %i.oh, ptr noundef %i.oj, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.om)
          to label %bb.ft unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.on = landingpad { ptr, i32 }
          catch ptr null
  %i.oo = extractvalue { ptr, i32 } %i.on, 0
  call void @__clang_call_terminate(ptr %i.oo) #29
  unreachable

.lr.ph729.i:                                      ; preds = %._crit_edge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i
  %.sroa.0451.0727.i = phi ptr [ %i.afy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %i.op = load ptr, ptr %.sroa.0451.0727.i, align 8, !tbaa !100 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  %i.oq = getelementptr i8, ptr %i.op, i64 8      ; 4 uses
  %.val136.i = load ptr, ptr %i.oq, align 8, !tbaa !20 ; 2 uses
  %.val136.val.i = load ptr, ptr %.val136.i, align 8, !tbaa !44
  %i.or = getelementptr i8, ptr %.val136.i, i64 8
  %.val136.val139.i = load i64, ptr %i.or, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26, !noalias !315
  store i64 1, ptr %31, align 8, !tbaa !288, !noalias !315
  store ptr @.str.246, ptr %i.bw, align 8, !tbaa !289, !noalias !315
  store i64 1, ptr %i.bx, align 8, !tbaa !288, !noalias !315
  store ptr @.str.231, ptr %i.by, align 8, !tbaa !289, !noalias !315
  store i64 1, ptr %i.bz, align 8, !tbaa !288, !noalias !315
  store ptr @.str.13, ptr %i.ca, align 8, !tbaa !289, !noalias !315
  store i64 1, ptr %i.cb, align 8, !tbaa !288, !noalias !315
  store ptr @.str.231, ptr %i.cc, align 8, !tbaa !289, !noalias !315
  invoke void @_ZN4absl12lts_2025051213StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, i64 %.val136.val139.i, ptr %.val136.val.i, ptr nonnull %31, i64 2)
          to label %bb.bs unwind label %bb.cn

bb.bs:                                            ; preds = %.lr.ph729.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26, !noalias !315
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %41, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_125GeneratedMetadataFileNameB5cxx11EPKNS0_14FileDescriptorERKNS2_7OptionsE(ptr dead_on_unwind noalias writable align 8 %40, ptr noundef nonnull %i.op, ptr noundef nonnull align 8 dereferenceable(40) %41)
          to label %bb.bt unwind label %bb.co

bb.bt:                                            ; preds = %bb.bs
  %i.os = load i64, ptr %i.cd, align 8, !tbaa !93
  %i.ot = icmp eq i64 %i.os, 0
  br i1 %i.ot, label %_ZN6google8protobuf8compiler3php7OptionsD2Ev.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  store ptr %i.cd, ptr %30, align 8, !tbaa !219
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i64 noundef 32, ptr nonnull %30, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i.i unwind label %bb.bv

.noexc.i.i.i:                                     ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  %i.ou = load i64, ptr %i.cd, align 8, !tbaa !93
  %i.ov = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !52
  %i.ow = load i64, ptr %i.ce, align 8, !tbaa !94
  %i.ox = and i64 %i.ow, 65536
  %i.oy = icmp ne i64 %i.ox, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i64 noundef %i.ou, ptr noundef %i.ov, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.oy)
          to label %_ZN6google8protobuf8compiler3php7OptionsD2Ev.exit.i unwind label %bb.bv

bb.bv:                                            ; preds = %.noexc.i.i.i, %bb.bu
  %i.oz = landingpad { ptr, i32 }
          catch ptr null
  %i.pa = extractvalue { ptr, i32 } %i.oz, 0
  call void @__clang_call_terminate(ptr %i.pa) #29
  unreachable

_ZN6google8protobuf8compiler3php7OptionsD2Ev.exit.i: ; preds = %.noexc.i.i.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26
  %i.pb = load ptr, ptr %40, align 8, !tbaa !44   ; 4 uses
  %i.pc = load i64, ptr %i.cf, align 8, !tbaa !40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %.not.i.i.i121 = icmp eq i64 %i.pc, 0
  br i1 %.not.i.i.i121, label %._crit_edge.i.i.i.i.thread.i136, label %.preheader.i122.preheader

._crit_edge.i.i.i.i.thread.i136:                  ; preds = %_ZN6google8protobuf8compiler3php7OptionsD2Ev.exit.i
  store ptr %i.cn, ptr %42, align 8, !tbaa !50, !alias.scope !318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !318
  store i64 0, ptr %i.a, align 8, !tbaa !51, !noalias !318
  br label %bb.bz

.preheader.i122:                                  ; preds = %.preheader.i122.preheader
  %.not13.i.i.i124 = icmp eq i64 %i.pd, 0
  br i1 %.not13.i.i.i124, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.i134, label %.preheader.i122.preheader, !llvm.loop !321

.preheader.i122.preheader:                        ; preds = %_ZN6google8protobuf8compiler3php7OptionsD2Ev.exit.i, %.preheader.i122
  %.1.i.i.i1232162 = phi i64 [ %i.pd, %.preheader.i122 ], [ %i.pc, %_ZN6google8protobuf8compiler3php7OptionsD2Ev.exit.i ]
  %i.pd = add i64 %.1.i.i.i1232162, -1            ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !52, !noalias !318
  %i.pg = icmp eq i8 %i.pf, 46
  br i1 %i.pg, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread19.i125, label %.preheader.i122, !llvm.loop !321

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread19.i125: ; preds = %.preheader.i122.preheader
  store ptr %i.cn, ptr %42, align 8, !tbaa !50, !alias.scope !318
  br label %bb.bw

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.i134: ; preds = %.preheader.i122
  store ptr %i.cn, ptr %42, align 8, !tbaa !50, !alias.scope !318
  %i.ph = icmp eq ptr %i.pb, null
  br i1 %i.ph, label %.noexc.i135, label %bb.bw

.noexc.i135:                                      ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.i134
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #28
          to label %.noexc137 unwind label %.loopexit.split-lp363

.noexc137:                                        ; preds = %.noexc.i135
  unreachable

bb.bw:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.i134, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread19.i125
  %.09.i.i18.i126 = phi i64 [ %i.pd, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread19.i125 ], [ %i.pc, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.i134 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !318
  store i64 %.09.i.i18.i126, ptr %i.a, align 8, !tbaa !51, !noalias !318
  %i.pi = icmp ugt i64 %.09.i.i18.i126, 15
  br i1 %i.pi, label %.noexc.i.i.i.i133, label %._crit_edge.i.i.i.i.i127

.noexc.i.i.i.i133:                                ; preds = %bb.bw
  %i.pj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc138 unwind label %.loopexit362 ; 2 uses

.noexc138:                                        ; preds = %.noexc.i.i.i.i133
  store ptr %i.pj, ptr %42, align 8, !tbaa !44, !alias.scope !318
  %i.pk = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !318
  store i64 %i.pk, ptr %i.cn, align 8, !tbaa !52, !alias.scope !318
  br label %._crit_edge.i.i.i.i.i127

._crit_edge.i.i.i.i.i127:                         ; preds = %.noexc138, %bb.bw
  %i.pl = phi ptr [ %i.pj, %.noexc138 ], [ %i.cn, %bb.bw ] ; 2 uses
  switch i64 %.09.i.i18.i126, label %bb.by [
    i64 1, label %bb.bx
    i64 0, label %bb.bz
  ]

bb.bx:                                            ; preds = %._crit_edge.i.i.i.i.i127
  %i.pm = load i8, ptr %i.pb, align 1, !tbaa !52, !noalias !318
  store i8 %i.pm, ptr %i.pl, align 1, !tbaa !52
  br label %bb.bz

bb.by:                                            ; preds = %._crit_edge.i.i.i.i.i127
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pl, ptr nonnull readonly align 1 %i.pb, i64 %.09.i.i18.i126, i1 false)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %._crit_edge.i.i.i.i.i127, %._crit_edge.i.i.i.i.thread.i136
  %i.pn = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !318 ; 2 uses
  store i64 %i.pn, ptr %i.cg, align 8, !tbaa !40, !alias.scope !318
  %i.po = load ptr, ptr %42, align 8, !tbaa !44, !alias.scope !318
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pn
  store i8 0, ptr %i.pp, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !318
  %i.pq = load i64, ptr %i.cg, align 8, !tbaa !40, !alias.scope !318 ; 2 uses
  %.not.i128 = icmp eq i64 %i.pq, 0
  br i1 %.not.i128, label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_119FilenameToClassnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit139, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %bb.bz, %bb.cb
  %73 = phi i64 [ %i.pu, %bb.cb ], [ %i.pq, %bb.bz ]
  %.012.i130.a = phi i64 [ %i.pv, %bb.cb ], [ 0, %bb.bz ] ; 2 uses
  %74 = load ptr, ptr %42, align 8, !tbaa !44, !alias.scope !318
  %i.pr = getelementptr inbounds nuw i8, ptr %74, i64 %.012.i130.a ; 2 uses
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !52
  %i.pt = icmp eq i8 %i.ps, 47
  br i1 %i.pt, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.lr.ph.i129
  store i8 92, ptr %i.pr, align 1, !tbaa !52
  %.pre.i132 = load i64, ptr %i.cg, align 8, !tbaa !40, !alias.scope !318
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.lr.ph.i129
  %i.pu = phi i64 [ %73, %.lr.ph.i129 ], [ %.pre.i132, %bb.ca ] ; 3 uses
  %i.pv = add nuw i64 %.012.i130.a, 1             ; 2 uses
  %i.pw = icmp ult i64 %i.pv, %i.pu
  br i1 %i.pw, label %.lr.ph.i129, label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_119FilenameToClassnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit139, !llvm.loop !322

_ZN6google8protobuf8compiler3php12_GLOBAL__N_119FilenameToClassnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit139: ; preds = %bb.cb, %bb.bz
  %i.px = phi i64 [ 0, %bb.bz ], [ %i.pu, %bb.cb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26
  %75 = load ptr, ptr %42, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26
  store i64 1, ptr %44, align 8, !tbaa !288
  store ptr @.str.12, ptr %i.ch, align 8, !tbaa !289
  store i64 1, ptr %i.ci, align 8, !tbaa !288
  store ptr @.str.231, ptr %i.cj, align 8, !tbaa !289
  invoke void @_ZN4absl12lts_2025051213StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, i64 %i.px, ptr %75, ptr nonnull %44, i64 1)
          to label %bb.cc unwind label %bb.cp

bb.cc:                                            ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_119FilenameToClassnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit139
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26
  %i.py = load ptr, ptr %42, align 8, !tbaa !44
  %i.pz = load i64, ptr %i.cg, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #26
  store i64 1, ptr %46, align 8, !tbaa !288
  store ptr @.str.12, ptr %i.ck, align 8, !tbaa !289
  store i64 2, ptr %i.cl, align 8, !tbaa !288
  store ptr @.str.232, ptr %i.cm, align 8, !tbaa !289
  invoke void @_ZN4absl12lts_2025051213StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, i64 %i.pz, ptr %i.py, ptr nonnull %46, i64 1)
          to label %bb.cd unwind label %bb.cq

bb.cd:                                            ; preds = %bb.cc
  %i.qa = load ptr, ptr %42, align 8, !tbaa !44   ; 6 uses
  %i.qb = icmp eq ptr %i.qa, %i.cn
  %i.qc = load ptr, ptr %45, align 8, !tbaa !44   ; 5 uses
  %i.qd = icmp eq ptr %i.qc, %i.co                ; 2 uses
  br i1 %i.qb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cd
  br i1 %i.qd, label %bb.ce, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.cd
  br i1 %i.qd, label %bb.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.qe = load i64, ptr %i.cp, align 8, !tbaa !40 ; 3 uses
  %i.qf = icmp ult i64 %i.qe, 16
  call void @llvm.assume(i1 %i.qf)
  switch i64 %i.qe, label %bb.cg [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.qg = load i8, ptr %i.qc, align 1, !tbaa !52
  store i8 %i.qg, ptr %i.qa, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qa, ptr align 1 %i.qc, i64 %i.qe, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.qh = load i64, ptr %i.cp, align 8, !tbaa !40 ; 2 uses
  store i64 %i.qh, ptr %i.cg, align 8, !tbaa !40
  %i.qi = load ptr, ptr %42, align 8, !tbaa !44
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qh
  store i8 0, ptr %i.qj, align 1, !tbaa !52
  %.pre.i.i = load ptr, ptr %45, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.qc, ptr %42, align 8, !tbaa !44
  %i.qk = load <2 x i64>, ptr %i.cp, align 8, !tbaa !52
  store <2 x i64> %i.qk, ptr %i.cg, align 8, !tbaa !52
  br label %bb.ci

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ql = load i64, ptr %i.cn, align 8, !tbaa !52
  store ptr %i.qc, ptr %42, align 8, !tbaa !44
  %i.qm = load <2 x i64>, ptr %i.cp, align 8, !tbaa !52
  store <2 x i64> %i.qm, ptr %i.cg, align 8, !tbaa !52
  %.not.i.i = icmp eq ptr %i.qa, null
  br i1 %.not.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.qa, ptr %45, align 8, !tbaa !44
  store i64 %i.ql, ptr %i.co, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.co, ptr %45, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ci, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.qn = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.qa, %bb.ch ], [ %i.co, %bb.ci ]
  store i64 0, ptr %i.cp, align 8, !tbaa !40
  store i8 0, ptr %i.qn, align 1, !tbaa !52
  %i.qo = load ptr, ptr %45, align 8, !tbaa !44   ; 2 uses
  %i.qp = icmp eq ptr %i.qo, %i.co
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.qq = load i64, ptr %i.co, align 8, !tbaa !52
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26
  invoke void @_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14FileDescriptorEb(ptr dead_on_unwind nonnull writable sret(%"class.google::protobuf::FileDescriptorProto") align 8 %47, ptr noundef nonnull align 8 dereferenceable(184) %i.op, i1 noundef zeroext false)
          to label %bb.cj unwind label %bb.cr

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #26
  store ptr %i.cq, ptr %48, align 8, !tbaa !50
  store i64 0, ptr %i.cr, align 8, !tbaa !40
  store i8 0, ptr %i.cq, align 8, !tbaa !52
  %i.qs = invoke noundef zeroext i1 @_ZNK6google8protobuf11MessageLite17SerializeToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull %48)
          to label %bb.ck unwind label %bb.cs

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.qs, label %.critedge135.i, label %bb.cl, !prof !137

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull @.str.2, i32 noundef 2101, ptr noundef nonnull @.str.233) #30
          to label %bb.cm unwind label %bb.ct

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %49)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.cu

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.cm
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %49) #29
  unreachable

bb.cn:                                            ; preds = %.lr.ph729.i
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i

bb.co:                                            ; preds = %bb.bs
  %i.qu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf8compiler3php7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %41) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.i

.loopexit362:                                     ; preds = %.noexc.i.i.i.i133
  %lpad.loopexit364 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i

.loopexit.split-lp363:                            ; preds = %.noexc.i135
  %lpad.loopexit.split-lp365 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i

bb.cp:                                            ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_119FilenameToClassnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit139
  %i.qv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i

bb.cq:                                            ; preds = %bb.cc
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  br label %bb.fs

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168.i
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.cs:                                            ; preds = %bb.cj
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %.body181.i

bb.ct:                                            ; preds = %bb.cl
  %i.qz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  br label %.body181.i

bb.cu:                                            ; preds = %bb.cm
  %i.ra = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %49) #29
  unreachable

.critedge135.i:                                   ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26
  %i.rb = load ptr, ptr %i.oq, align 8, !tbaa !20 ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !44
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !40
  store i64 %i.re, ptr %50, align 8
  store ptr %i.rc, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  %i.rf = load i64, ptr %i.cr, align 8, !tbaa !40 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.rg = icmp ult i64 %i.rf, 10
  br i1 %i.rg, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i

end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler3php9Generator11GenerateAllERKSt6vectorIPKNS0_14FileDescriptorESaIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_16GeneratorContextEPSH_:bb.a
  %i.agp = load i64, ptr %i.cn, align 8, !tbaa !52
  %i.agq = add i64 %i.agp, 1
  call void @_ZdlPvm(ptr noundef %i.agn, i64 noundef %i.agq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i, %.loopexit362, %.loopexit.split-lp363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243.i
  %.pn118.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn118.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243.i ], [ %lpad.loopexit.split-lp365, %.loopexit.split-lp363 ], [ %lpad.loopexit364, %.loopexit362 ], [ %.pn118.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26
  %i.agr = load ptr, ptr %40, align 8, !tbaa !44  ; 2 uses
  %i.ags = icmp eq ptr %i.agr, %i.ep
  br i1 %i.ags, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i
  %i.agt = load i64, ptr %i.ep, align 8, !tbaa !52
  %i.agu = add i64 %i.agt, 1
  call void @_ZdlPvm(ptr noundef %i.agr, i64 noundef %i.agu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i, %bb.co
  %.pn118.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.qu, %bb.co ], [ %.pn118.pn.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i ], [ %.pn118.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  %i.agv = load ptr, ptr %39, align 8, !tbaa !44  ; 2 uses
  %i.agw = icmp eq ptr %i.agv, %i.eq
  br i1 %i.agw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.i
  %i.agx = load i64, ptr %i.eq, align 8, !tbaa !52
  %i.agy = add i64 %i.agx, 1
  call void @_ZdlPvm(ptr noundef %i.agv, i64 noundef %i.agy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.i, %bb.cn
  %.pn118.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.qt, %bb.cn ], [ %.pn118.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.i ], [ %.pn118.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  br label %.body.i

bb.ft:                                            ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  %i.agz = load ptr, ptr %1, align 8, !tbaa !241  ; 2 uses
  %i.aha = load ptr, ptr %i.ax, align 8, !tbaa !241 ; 2 uses
  %.not488736.i = icmp eq ptr %i.agz, %i.aha
  br i1 %.not488736.i, label %._crit_edge740.i, label %.lr.ph739.i

._crit_edge740.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i, %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i252.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %37, ptr noundef nonnull align 8 dereferenceable(32) %25, i64 2, ptr nonnull @.str.42)
          to label %bb.fv unwind label %bb.fu

bb.fu:                                            ; preds = %._crit_edge740.i
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %.body.i

bb.fv:                                            ; preds = %._crit_edge740.i
  %i.ahc = load i64, ptr %25, align 8, !tbaa !93  ; 2 uses
  %i.ahd = icmp eq i64 %i.ahc, 0
  br i1 %i.ahd, label %bb.ht, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ahe = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i252.i, align 8, !tbaa !52
  %i.ahf = load i64, ptr %i.gb, align 8, !tbaa !94
  %i.ahg = and i64 %i.ahf, 65536
  %i.ahh = icmp ne i64 %i.ahg, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef %i.ahc, ptr noundef %i.ahe, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.ahh)
          to label %bb.ht unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ahi = landingpad { ptr, i32 }
          catch ptr null
  %i.ahj = extractvalue { ptr, i32 } %i.ahi, 0
  call void @__clang_call_terminate(ptr %i.ahj) #29
  unreachable

.lr.ph739.i:                                      ; preds = %bb.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i
  %.sroa.0432.0737.i = phi ptr [ %i.amf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i ], [ %i.agz, %bb.ft ] ; 2 uses
  %i.ahk = load ptr, ptr %.sroa.0432.0737.i, align 8, !tbaa !100 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %58, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i256.i, align 8
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_125GeneratedMetadataFileNameB5cxx11EPKNS0_14FileDescriptorERKNS2_7OptionsE(ptr dead_on_unwind noalias writable align 8 %57, ptr noundef %i.ahk, ptr noundef nonnull align 8 dereferenceable(40) %58)
          to label %bb.fy unwind label %bb.gw

bb.fy:                                            ; preds = %.lr.ph739.i
  %i.ahl = load i64, ptr %i.es, align 8, !tbaa !93
  %i.ahm = icmp eq i64 %i.ahl, 0
  br i1 %i.ahm, label %_ZN6google8protobuf8compiler3php7OptionsD2Ev.exit258.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  store ptr %i.es, ptr %24, align 8, !tbaa !219
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.es, i64 noundef 32, ptr nonnull %24, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i257.i unwind label %bb.ga

.noexc.i.i257.i:                                  ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.ahn = load i64, ptr %i.es, align 8, !tbaa !93
  %i.aho = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i256.i, align 8, !tbaa !52
  %i.ahp = load i64, ptr %i.et, align 8, !tbaa !94
  %i.ahq = and i64 %i.ahp, 65536
  %i.ahr = icmp ne i64 %i.ahq, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.es, i64 noundef %i.ahn, ptr noundef %i.aho, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.ahr)
          to label %_ZN6google8protobuf8compiler3php7OptionsD2Ev.exit258.i unwind label %bb.ga

bb.ga:                                            ; preds = %.noexc.i.i257.i, %bb.fz
  %i.ahs = landingpad { ptr, i32 }
          catch ptr null
  %i.aht = extractvalue { ptr, i32 } %i.ahs, 0
  call void @__clang_call_terminate(ptr %i.aht) #29
  unreachable

_ZN6google8protobuf8compiler3php7OptionsD2Ev.exit258.i: ; preds = %.noexc.i.i257.i, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #26
  %i.ahu = load ptr, ptr %57, align 8, !tbaa !44  ; 4 uses
  %i.ahv = load i64, ptr %i.eu, align 8, !tbaa !40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %.not.i.i.i111 = icmp eq i64 %i.ahv, 0
  br i1 %.not.i.i.i111, label %._crit_edge.i.i.i.i.thread.i, label %.preheader.i112.preheader

._crit_edge.i.i.i.i.thread.i:                     ; preds = %_ZN6google8protobuf8compiler3php7OptionsD2Ev.exit258.i
  store ptr %i.fg, ptr %59, align 8, !tbaa !50, !alias.scope !388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !388
  store i64 0, ptr %i.b, align 8, !tbaa !51, !noalias !388
  br label %bb.ge

.preheader.i112:                                  ; preds = %.preheader.i112.preheader
  %.not13.i.i.i = icmp eq i64 %i.ahw, 0
  br i1 %.not13.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.i, label %.preheader.i112.preheader, !llvm.loop !321

.preheader.i112.preheader:                        ; preds = %_ZN6google8protobuf8compiler3php7OptionsD2Ev.exit258.i, %.preheader.i112
  %.1.i.i.i2163 = phi i64 [ %i.ahw, %.preheader.i112 ], [ %i.ahv, %_ZN6google8protobuf8compiler3php7OptionsD2Ev.exit258.i ]
  %i.ahw = add i64 %.1.i.i.i2163, -1              ; 4 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.ahw
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !52, !noalias !388
  %i.ahz = icmp eq i8 %i.ahy, 46
  br i1 %i.ahz, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread19.i, label %.preheader.i112, !llvm.loop !321

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread19.i: ; preds = %.preheader.i112.preheader
  store ptr %i.fg, ptr %59, align 8, !tbaa !50, !alias.scope !388
  br label %bb.gb

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.i: ; preds = %.preheader.i112
  store ptr %i.fg, ptr %59, align 8, !tbaa !50, !alias.scope !388
  %i.aia = icmp eq ptr %i.ahu, null
  br i1 %i.aia, label %.noexc.i117, label %bb.gb

.noexc.i117:                                      ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #28
          to label %.noexc118 unwind label %.loopexit.split-lp358

.noexc118:                                        ; preds = %.noexc.i117
  unreachable

bb.gb:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread19.i
  %.09.i.i18.i = phi i64 [ %i.ahw, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread19.i ], [ %i.ahv, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !388
  store i64 %.09.i.i18.i, ptr %i.b, align 8, !tbaa !51, !noalias !388
  %i.aib = icmp ugt i64 %.09.i.i18.i, 15
  br i1 %i.aib, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.gb
  %i.aic = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc119 unwind label %.loopexit357 ; 2 uses

.noexc119:                                        ; preds = %.noexc.i.i.i.i
  store ptr %i.aic, ptr %59, align 8, !tbaa !44, !alias.scope !388
  %i.aid = load i64, ptr %i.b, align 8, !tbaa !51, !noalias !388
  store i64 %i.aid, ptr %i.fg, align 8, !tbaa !52, !alias.scope !388
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc119, %bb.gb
  %i.aie = phi ptr [ %i.aic, %.noexc119 ], [ %i.fg, %bb.gb ] ; 2 uses
  switch i64 %.09.i.i18.i, label %bb.gd [
    i64 1, label %bb.gc
    i64 0, label %bb.ge
  ]

bb.gc:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.aif = load i8, ptr %i.ahu, align 1, !tbaa !52, !noalias !388
  store i8 %i.aif, ptr %i.aie, align 1, !tbaa !52
  br label %bb.ge

bb.gd:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aie, ptr nonnull readonly align 1 %i.ahu, i64 %.09.i.i18.i, i1 false)
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc, %._crit_edge.i.i.i.i.i, %._crit_edge.i.i.i.i.thread.i
  %i.aig = load i64, ptr %i.b, align 8, !tbaa !51, !noalias !388 ; 2 uses
  store i64 %i.aig, ptr %i.ev, align 8, !tbaa !40, !alias.scope !388
  %i.aih = load ptr, ptr %59, align 8, !tbaa !44, !alias.scope !388
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 %i.aig
  store i8 0, ptr %i.aii, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !388
  %i.aij = load i64, ptr %i.ev, align 8, !tbaa !40, !alias.scope !388 ; 2 uses
  %.not.i113 = icmp eq i64 %i.aij, 0
  br i1 %.not.i113, label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_119FilenameToClassnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %bb.ge, %bb.gg
  %76 = phi i64 [ %i.ain, %bb.gg ], [ %i.aij, %bb.ge ]
  %.012.i.a = phi i64 [ %i.aio, %bb.gg ], [ 0, %bb.ge ] ; 2 uses
  %77 = load ptr, ptr %59, align 8, !tbaa !44, !alias.scope !388
  %i.aik = getelementptr inbounds nuw i8, ptr %77, i64 %.012.i.a ; 2 uses
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !52
  %i.aim = icmp eq i8 %i.ail, 47
  br i1 %i.aim, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %.lr.ph.i114
  store i8 92, ptr %i.aik, align 1, !tbaa !52
  %.pre.i116 = load i64, ptr %i.ev, align 8, !tbaa !40, !alias.scope !388
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %.lr.ph.i114
  %i.ain = phi i64 [ %76, %.lr.ph.i114 ], [ %.pre.i116, %bb.gf ] ; 3 uses
  %i.aio = add nuw i64 %.012.i.a, 1               ; 2 uses
  %i.aip = icmp ult i64 %i.aio, %i.ain
  br i1 %i.aip, label %.lr.ph.i114, label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_119FilenameToClassnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit, !llvm.loop !322

_ZN6google8protobuf8compiler3php12_GLOBAL__N_119FilenameToClassnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.gg, %bb.ge
  %i.aiq = phi i64 [ 0, %bb.ge ], [ %i.ain, %bb.gg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #26
  %78 = load ptr, ptr %59, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #26
  store i64 1, ptr %61, align 8, !tbaa !288
  store ptr @.str.12, ptr %i.ew, align 8, !tbaa !289
  store i64 1, ptr %i.ex, align 8, !tbaa !288
  store ptr @.str.231, ptr %i.ey, align 8, !tbaa !289
  invoke void @_ZN4absl12lts_2025051213StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, i64 %i.aiq, ptr %78, ptr nonnull %61, i64 1)
          to label %bb.gh unwind label %bb.gx

bb.gh:                                            ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_119FilenameToClassnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #26
  %i.air = load ptr, ptr %60, align 8, !tbaa !44
  %i.ais = load i64, ptr %i.ff, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i101, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 1)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i103 unwind label %bb.gk

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i103: ; preds = %bb.gh
  %i.ait = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i101, align 8, !tbaa !52, !noalias !391 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.ait, i32 0, i32 1, i32 1), !noalias !391
  %i.aiu = load i64, ptr %i.fo, align 8, !tbaa !94, !noalias !394
  %i.aiv = and i64 %i.aiu, 65535
  %i.aiw = load i64, ptr %14, align 8, !tbaa !93, !noalias !394 ; 3 uses
  %i.aix = xor i64 %i.aiv, %i.fp
  %.sroa.0.0.copyload.i.i.i.i182 = load ptr, ptr %i.fs, align 8, !tbaa !52, !noalias !391 ; 2 uses
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gj, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i103
  %.pn.i185 = phi i64 [ %i.aix, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i103 ], [ %i.akc, %bb.gj ]
  %.sroa.15.0.i186 = phi i64 [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i103 ], [ %i.akb, %bb.gj ] ; 2 uses
  %.sroa.7.0.i187 = and i64 %.pn.i185, %i.aiw     ; 5 uses
  %i.aiy = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i182, i64 %.sroa.7.0.i187
  call void @llvm.prefetch.p0(ptr %i.aiy, i32 0, i32 3, i32 1), !noalias !391
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ait, i64 %.sroa.7.0.i187
  %i.aja = load <16 x i8>, ptr %i.aiz, align 1, !tbaa !52, !noalias !391 ; 2 uses
  %i.ajb = icmp eq <16 x i8> %i.fu, %i.aja
  %i.ajc = bitcast <16 x i1> %i.ajb to i16        ; 2 uses
  %.not59.i188 = icmp eq i16 %i.ajc, 0
  br i1 %.not59.i188, label %.critedge18.i196, label %.lr.ph.i189

.lr.ph.i189:                                      ; preds = %bb.gi, %.critedge.i194
  %.sroa.034.060.i190 = phi i16 [ %i.ajt, %.critedge.i194 ], [ %i.ajc, %bb.gi ] ; 3 uses
  %i.ajd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060.i190, i1 true)
  %i.aje = zext nneg i16 %i.ajd to i64
  %i.ajf = add i64 %.sroa.7.0.i187, %i.aje
  %i.ajg = and i64 %i.ajf, %i.aiw
  %i.ajh = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i182, i64 %i.ajg ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i191 = load i64, ptr %i.ajh, align 8, !tbaa !51, !noalias !391
  %i.aji = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i191, 15
  br i1 %i.aji, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i204, label %.critedge.i194, !prof !296

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i204: ; preds = %.lr.ph.i189
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i192 = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i193 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i192, align 8, !tbaa !225, !noalias !391 ; 2 uses
  %i.ajj = load i64, ptr %.sroa.22.0.copyload.i.i.i.i.i.i193, align 1
  %i.ajk = xor i64 %i.ajj, 7022344802737087853
  %i.ajl = getelementptr i8, ptr %.sroa.22.0.copyload.i.i.i.i.i.i193, i64 7
  %i.ajm = load i64, ptr %i.ajl, align 1
  %i.ajn = xor i64 %i.ajm, 7308604896966827873
  %i.ajo = or i64 %i.ajk, %i.ajn
  %i.ajp = icmp ne i64 %i.ajo, 0
  %i.ajq = zext i1 %i.ajp to i32
  %i.ajr = icmp eq i32 %i.ajq, 0
  br i1 %i.ajr, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i106, label %.critedge.i194

.critedge.i194:                                   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i204, %.lr.ph.i189
  %i.ajs = add i16 %.sroa.034.060.i190, -1
  %i.ajt = and i16 %i.ajs, %.sroa.034.060.i190    ; 2 uses
  %.not.i195 = icmp eq i16 %i.ajt, 0
  br i1 %.not.i195, label %.critedge18.i196, label %.lr.ph.i189

.critedge18.i196:                                 ; preds = %.critedge.i194, %bb.gi
  %i.aju = icmp eq <16 x i8> %i.aja, splat (i8 -128)
  %i.ajv = bitcast <16 x i1> %i.aju to i16        ; 2 uses
  %.not52.i197 = icmp eq i16 %i.ajv, 0
  br i1 %.not52.i197, label %bb.gj, label %.thread.i198, !prof !118

.thread.i198:                                     ; preds = %.critedge18.i196
  %i.ajw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ajv, i1 true)
  %i.ajx = zext nneg i16 %i.ajw to i64
  %i.ajy = add i64 %.sroa.7.0.i187, %i.ajx
  %i.ajz = and i64 %i.ajy, %i.aiw
  %i.aka = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.fn, i64 %i.ajz, i64 %.sroa.15.0.i186)
          to label %bb.gl unwind label %bb.gs

bb.gj:                                            ; preds = %.critedge18.i196
  %i.akb = add i64 %.sroa.15.0.i186, 16           ; 2 uses
  %i.akc = add i64 %i.akb, %.sroa.7.0.i187
  br label %bb.gi

bb.gk:                                            ; preds = %bb.gn, %bb.gh
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.gl:                                            ; preds = %.thread.i198
  %.sroa.0.0.copyload.i.i.i.i23.i199 = load ptr, ptr %i.fs, align 8, !tbaa !52, !noalias !391
  %i.ake = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23.i199, i64 %i.aka ; 4 uses
  store i64 15, ptr %i.ake, align 8, !tbaa !51
  %.sroa.7325.0..sroa.4321.8..sroa.2.0.copyload.i.i.i.i.i.i.i108.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  store ptr @.str.235, ptr %.sroa.7325.0..sroa.4321.8..sroa.2.0.copyload.i.i.i.i.i.i.i108.sroa_idx, align 8, !tbaa !225
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 16
  store i64 %i.ais, ptr %i.akf, align 8, !tbaa !51
  %.sroa.12327.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ake, i64 24
  store ptr %i.air, ptr %.sroa.12327.16..sroa_idx, align 8, !tbaa !225
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i106

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i106: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i204, %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !397
  store ptr %14, ptr %8, align 8, !tbaa !300, !noalias !397
  %i.akg = load ptr, ptr %i.br, align 16, !tbaa !303, !noalias !397 ; 5 uses
  %i.akh = load ptr, ptr %i.bs, align 8, !tbaa !304, !noalias !397
  %.not.i.i.i167 = icmp eq ptr %i.akg, %i.akh
  br i1 %.not.i.i.i167, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i106
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akg, i64 8
  store i64 0, ptr %i.akj, align 8, !noalias !397
  store i64 %i.fv, ptr %i.akg, align 8, !tbaa !305, !noalias !397
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.aki, align 8, !tbaa !193, !noalias !397
  %i.akk = load ptr, ptr %i.br, align 16, !tbaa !303, !noalias !397
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 32
  store ptr %i.akl, ptr %i.br, align 16, !tbaa !303, !noalias !397
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i168

bb.gn:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i106
  invoke void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIN4absl12lts_2025051213flat_hash_mapISC_SC_NSK_18container_internal10StringHashENSM_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr %i.akg, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i168 unwind label %bb.gk

_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i168: ; preds = %bb.gn, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !397
  store ptr %37, ptr %i.fw, align 8, !tbaa !306, !alias.scope !400
  store i8 1, ptr %9, align 8, !tbaa !311, !alias.scope !400
  store i32 65792, ptr %.sroa.4.0..sroa_idx.i169, align 1
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.7.0..sroa_idx.i170, align 1
  invoke void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %37, i64 34, ptr nonnull @.str.245, ptr null, i64 0, ptr noundef nonnull byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 %10)
          to label %bb.go unwind label %bb.gr

bb.go:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i168
  %i.akm = load ptr, ptr %i.br, align 16, !tbaa !303 ; 2 uses
  %i.akn = getelementptr inbounds i8, ptr %i.akm, i64 -32 ; 3 uses
  store ptr %i.akn, ptr %i.br, align 16, !tbaa !303
  %i.ako = getelementptr inbounds i8, ptr %i.akm, i64 -16
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !313 ; 2 uses
  %.not.i.i.i.i.i.i174 = icmp eq ptr %i.akp, null
  br i1 %.not.i.i.i.i.i.i174, label %bb.gt, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.akq = invoke noundef zeroext i1 %i.akp(ptr noundef nonnull align 8 dereferenceable(32) %i.akn, ptr noundef nonnull align 8 dereferenceable(32) %i.akn, i32 noundef 3)
          to label %bb.gt unwind label %bb.gq     ; 0 uses

bb.gq:                                            ; preds = %bb.gp
  %i.akr = landingpad { ptr, i32 }
          catch ptr null
  %i.aks = extractvalue { ptr, i32 } %i.akr, 0
  call void @__clang_call_terminate(ptr %i.aks) #29
  unreachable

bb.gr:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i168
  %i.akt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.body176

bb.gs:                                            ; preds = %.thread.i198
  %i.aku = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.gt:                                            ; preds = %bb.gp, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.akv = load i64, ptr %14, align 8, !tbaa !93  ; 2 uses
  %i.akw = icmp eq i64 %i.akv, 0
  br i1 %i.akw, label %.preheader490.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.akx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i101, align 8, !tbaa !52
  %i.aky = load i64, ptr %i.fo, align 8, !tbaa !94
  %i.akz = and i64 %i.aky, 65536
  %i.ala = icmp ne i64 %i.akz, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.akv, ptr noundef %i.akx, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.ala)
          to label %.preheader490.i unwind label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.alb = landingpad { ptr, i32 }
          catch ptr null
  %i.alc = extractvalue { ptr, i32 } %i.alb, 0
  call void @__clang_call_terminate(ptr %i.alc) #29
  unreachable

.body176:                                         ; preds = %bb.gk, %bb.gr, %bb.gs
  %.pn.i102 = phi { ptr, i32 } [ %i.aku, %bb.gs ], [ %i.akd, %bb.gk ], [ %i.akt, %bb.gr ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #26
end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !427

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !248
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8compiler13CodeGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler3php9GeneratorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN6google8protobuf8compiler13CodeGeneratorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6google8protobuf8compiler3php9Generator20GetSupportedFeaturesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i64 3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6google8protobuf8compiler13CodeGenerator14HasGenerateAllEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf8compiler3php9Generator20GetFeatureExtensionsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK6google8protobuf8compiler3php9Generator17GetMinimumEditionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 998
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK6google8protobuf8compiler3php9Generator17GetMaximumEditionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 1001
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_10StringHashENS2_8StringEqESaISA_EE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSI_SJ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !52
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_10StringHashENS2_8StringEqESaISA_EE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSI_SJ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit

_ZSt6invokeIRKZN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_10StringHashENS2_8StringEqESaISA_EE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_JSI_SJ_EENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, 15
  %i.c = add i64 %i.b, %4
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, 7
  %i.j = add i64 %i.i, %i.f
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6google8protobuf8compiler3php12_GLOBAL__N_119GenerateMessageFileEPKNS0_14FileDescriptorEPKNS0_10DescriptorERKNS2_7OptionsEPNS1_16GeneratorContextEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef %3, ptr nofree noundef captures(address) %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %10 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %13 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %14 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %15 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %16 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %19 = alloca %"struct.google::protobuf::SourceLocation", align 8 ; 15 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %23 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %24 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %25 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %27 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %28 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %29 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %30 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %32 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %33 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %34 = alloca %"struct.google::protobuf::SourceLocation", align 8 ; 15 uses
  %35 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %40 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %41 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %43 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %44 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %46 = alloca %"class.google::protobuf::io::Printer", align 16 ; 44 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %54 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !429
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 51
  %i.f = load i8, ptr %i.e, align 1, !tbaa !52, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.gd, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26, !noalias !437
  call fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_113FullClassNameINS0_10DescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_RKNS2_7OptionsE(ptr dead_on_unwind noalias writable align 8 %42, ptr noundef nonnull %1, ptr noundef nonnull readonly align 8 dereferenceable(40) %2), !noalias !437
  %i.h = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !40, !noalias !437 ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.j = phi i64 [ %i.n, %bb.d ], [ %i.i, %bb.b ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %55 = load ptr, ptr %42, align 8, !tbaa !44, !noalias !437
  %i.k = getelementptr inbounds nuw i8, ptr %55, i64 %indvars.iv.i ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !52, !noalias !437
  %i.m = icmp eq i8 %i.l, 92
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i8 47, ptr %i.k, align 1, !tbaa !52, !noalias !437
  %.pre.i.a = load i64, ptr %i.h, align 8, !tbaa !40, !noalias !437
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ %i.j, %.lr.ph.i ], [ %.pre.i.a, %bb.c ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = icmp ugt i64 %i.n, %indvars.iv.next.i
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !440

._crit_edge.i:                                    ; preds = %bb.d, %bb.b
  %.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26, !noalias !437
  %56 = load ptr, ptr %42, align 8, !tbaa !44, !noalias !437
  store i64 %.lcssa.i, ptr %43, align 8, !noalias !437
  %i.p = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %56, ptr %i.p, align 8, !noalias !437
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26, !noalias !437
  store i64 4, ptr %44, align 8, !noalias !437
  %i.q = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr @.str.15, ptr %i.q, align 8, !noalias !437
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 8 dereferenceable(48) %43, ptr noundef nonnull align 8 dereferenceable(48) %44)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26, !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26, !noalias !437
  %i.r = load ptr, ptr %42, align 8, !tbaa !44, !noalias !437 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_122GeneratedClassFileNameINS0_10DescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_RKNS2_7OptionsE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.u = load i64, ptr %i.s, align 8, !tbaa !52, !noalias !437
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_122GeneratedClassFileNameINS0_10DescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_RKNS2_7OptionsE.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26, !noalias !437
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26, !noalias !437
  %i.x = load ptr, ptr %42, align 8, !tbaa !44, !noalias !437 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !52, !noalias !437
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ], [ %.pn117.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26, !noalias !437
  br label %common.resume

_ZN6google8protobuf8compiler3php12_GLOBAL__N_122GeneratedClassFileNameINS0_10DescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_RKNS2_7OptionsE.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26, !noalias !437
  %i.ac = load ptr, ptr %3, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %45)
          to label %bb.g unwind label %bb.p       ; 7 uses

bb.g:                                             ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_122GeneratedClassFileNameINS0_10DescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_RKNS2_7OptionsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #26
  invoke void @_ZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamEcPNS1_19AnnotationCollectorE(ptr noundef nonnull align 16 dereferenceable(296) %46, ptr noundef %i.af, i8 noundef signext 94, ptr noundef null)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ag, align 8, !tbaa !20 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !44
  %i.ah = getelementptr i8, ptr %.val, i64 8
  %.val.val126 = load i64, ptr %i.ah, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26
  store i64 %.val.val126, ptr %41, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %.val.val, ptr %i.ai, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA9_cSt17basic_string_viewIcSt11char_traitsIcEEEEEvS8_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %46, i64 120, ptr nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(9) @.str.24, ptr noundef nonnull align 8 dereferenceable(16) %41)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26
  %i.aj = load ptr, ptr %45, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !40
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_119FilenameToClassnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %47, i64 %i.al, ptr %i.aj)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.am = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %47, i8 noundef signext 92, i64 noundef -1) #26
  %sext = shl i64 %i.am, 32                       ; 3 uses
  %.not = icmp eq i64 %sext, -4294967296          ; 2 uses
  br i1 %.not, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = ashr exact i64 %sext, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.ao = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !40, !noalias !441
  %i.aq = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 7 uses
  store ptr %i.aq, ptr %48, align 8, !tbaa !50, !alias.scope !441
  %i.ar = load ptr, ptr %47, align 8, !tbaa !44, !noalias !441 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.ap) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !441
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !51, !noalias !441
  %i.as = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.as, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.k
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.t     ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i
  store ptr %i.at, ptr %48, align 8, !tbaa !44, !alias.scope !441
  %i.au = load i64, ptr %i.b, align 8, !tbaa !51, !noalias !441
  store i64 %i.au, ptr %i.aq, align 8, !tbaa !52, !alias.scope !441
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.k
  %i.av = phi ptr [ %i.at, %.noexc ], [ %i.aq, %bb.k ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = load i8, ptr %i.ar, align 1, !tbaa !52
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !52
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ar, i64 %spec.select.i.i.i, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !51, !noalias !441 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !40, !alias.scope !441
  %i.az = load ptr, ptr %48, align 8, !tbaa !44, !alias.scope !441
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !441
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %46, i64 19, ptr nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %48, align 8, !tbaa !44   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aq
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.bd = load i64, ptr %i.aq, align 8, !tbaa !52
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  br label %bb.v

bb.p:                                             ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_122GeneratedClassFileNameINS0_10DescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_RKNS2_7OptionsE.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EED2Ev.exit256

bb.q:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.r:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.s:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

bb.t:                                             ; preds = %.noexc10.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

bb.u:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %48, align 8, !tbaa !44   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.aq
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.u
  %i.bn = load i64, ptr %i.aq, align 8, !tbaa !52
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.t ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129 ], [ %i.bk, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  br label %.body

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j
  %.val127 = load i8, ptr %2, align 8, !tbaa !7, !range !18, !noundef !19
  %i.bp = trunc nuw i8 %.val127 to i1
  br i1 %i.bp, label %bb.ab, label %bb.w
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler3php12_GLOBAL__N_119GenerateMessageFileEPKNS0_14FileDescriptorEPKNS0_10DescriptorERKNS2_7OptionsEPNS1_16GeneratorContextEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EED2Ev.exit256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #26
  br label %common.resume

bb.gd:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247
  %.7 = phi i1 [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ true, %bb.a ]
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6google8protobuf8compiler3php12_GLOBAL__N_116GenerateEnumFileEPKNS0_14FileDescriptorEPKNS0_14EnumDescriptorERKNS2_7OptionsEPNS1_16GeneratorContextEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef %3, ptr nofree noundef captures(address) %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %10 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %13 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %14 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %15 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %16 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %17 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %18 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %19 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %20 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %21 = alloca %"struct.google::protobuf::SourceLocation", align 8 ; 15 uses
  %22 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %27 = alloca %"struct.google::protobuf::SourceLocation", align 8 ; 15 uses
  %28 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %29 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %32 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %34 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %35 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %37 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %38 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %39 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %41 = alloca %"class.google::protobuf::io::Printer", align 16 ; 60 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %48 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %51 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %53 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %54 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.c = load i8, ptr %2, align 8, !tbaa !7, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZNK6google8protobuf14EnumDescriptor9is_closedEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  store i64 40, ptr %37, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr @.str.205, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #26
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !404  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.i, align 1
  %i.j = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.k = xor i64 %i.j, -1
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  store i64 %i.j, ptr %38, align 8, !tbaa !51
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.l, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  store i64 70, ptr %39, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr @.str.206, ptr %i.m, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef nonnull align 8 dereferenceable(48) %39)
  %i.n = load ptr, ptr %4, align 8, !tbaa !44     ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = load ptr, ptr %36, align 8, !tbaa !44    ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %i.s = icmp eq ptr %i.q, %i.r                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.c
  br i1 %i.s, label %bb.d, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.c
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !40   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %.not21.i = icmp eq ptr %36, %4
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.e, !prof !118

bb.e:                                             ; preds = %bb.d
  switch i64 %i.u, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.q, align 1, !tbaa !52
  store i8 %i.w, ptr %i.n, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.q, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.x = load i64, ptr %i.t, align 8, !tbaa !40   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !40
  %i.z = load ptr, ptr %4, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !52
  %.pre.i = load ptr, ptr %36, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.q, ptr %4, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ad = load <2 x i64>, ptr %i.ac, align 8, !tbaa !52
  store <2 x i64> %i.ad, ptr %i.ab, align 8, !tbaa !52
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !52
  store ptr %i.q, ptr %4, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !52
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !52
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %36, align 8, !tbaa !44
  store i64 %i.ae, ptr %i.r, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %36, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.ai = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.n, %bb.h ], [ %i.r, %bb.i ], [ %i.q, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !40
  store i8 0, ptr %i.ai, align 1, !tbaa !52
  %i.ak = load ptr, ptr %36, align 8, !tbaa !44   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.an = load i64, ptr %i.al, align 8, !tbaa !52
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  br label %bb.gg

bb.j:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26, !noalias !469
  call fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_113FullClassNameINS0_14EnumDescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_RKNS2_7OptionsE(ptr dead_on_unwind noalias writable align 8 %33, ptr noundef %1, ptr noundef nonnull readonly align 8 dereferenceable(40) %2), !noalias !469
  %i.ap = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !40, !noalias !469 ; 2 uses
  %.not.i81 = icmp eq i64 %i.aq, 0
  br i1 %.not.i81, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %i.ar = phi i64 [ %i.av, %bb.l ], [ %i.aq, %bb.j ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %55 = load ptr, ptr %33, align 8, !tbaa !44, !noalias !469
  %i.as = getelementptr inbounds nuw i8, ptr %55, i64 %indvars.iv.i ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !52, !noalias !469
  %i.au = icmp eq i8 %i.at, 92
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  store i8 47, ptr %i.as, align 1, !tbaa !52, !noalias !469
  %.pre.i82.a = load i64, ptr %i.ap, align 8, !tbaa !40, !noalias !469
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.av = phi i64 [ %i.ar, %.lr.ph.i ], [ %.pre.i82.a, %bb.k ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aw = icmp ugt i64 %i.av, %indvars.iv.next.i
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !472

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.lcssa.i = phi i64 [ 0, %bb.j ], [ %i.av, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26, !noalias !469
  %56 = load ptr, ptr %33, align 8, !tbaa !44, !noalias !469
  store i64 %.lcssa.i, ptr %34, align 8, !noalias !469
  %i.ax = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %56, ptr %i.ax, align 8, !noalias !469
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26, !noalias !469
  store i64 4, ptr %35, align 8, !noalias !469
  %i.ay = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr @.str.15, ptr %i.ay, align 8, !noalias !469
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %40, ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull align 8 dereferenceable(48) %35)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26, !noalias !469
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26, !noalias !469
  %i.az = load ptr, ptr %33, align 8, !tbaa !44, !noalias !469 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_122GeneratedClassFileNameINS0_14EnumDescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_RKNS2_7OptionsE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !52, !noalias !469
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #27
  br label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_122GeneratedClassFileNameINS0_14EnumDescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_RKNS2_7OptionsE.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26, !noalias !469
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26, !noalias !469
  %i.bf = load ptr, ptr %33, align 8, !tbaa !44, !noalias !469 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i: ; preds = %bb.n
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !52, !noalias !469
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i
  %common.resume.op = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ], [ %.pn69.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26, !noalias !469
  br label %common.resume

_ZN6google8protobuf8compiler3php12_GLOBAL__N_122GeneratedClassFileNameINS0_14EnumDescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_RKNS2_7OptionsE.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26, !noalias !469
  %i.bk = load ptr, ptr %3, align 8, !tbaa !45
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %bb.o unwind label %bb.ab      ; 7 uses

bb.o:                                             ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_122GeneratedClassFileNameINS0_14EnumDescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_RKNS2_7OptionsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26
  invoke void @_ZN6google8protobuf2io7PrinterC1EPNS1_20ZeroCopyOutputStreamEcPNS1_19AnnotationCollectorE(ptr noundef nonnull align 16 dereferenceable(296) %41, ptr noundef %i.bn, i8 noundef signext 94, ptr noundef null)
          to label %bb.p unwind label %bb.ac

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bo, align 8, !tbaa !20 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !44
  %i.bp = getelementptr i8, ptr %.val, i64 8
  %.val.val80 = load i64, ptr %i.bp, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  store i64 %.val.val80, ptr %32, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.val.val, ptr %i.bq, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA9_cSt17basic_string_viewIcSt11char_traitsIcEEEEEvS8_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %41, i64 120, ptr nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(9) @.str.24, ptr noundef nonnull align 8 dereferenceable(16) %32)
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26
  %i.br = load ptr, ptr %40, align 8, !tbaa !44
  %i.bs = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !40
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_119FilenameToClassnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %42, i64 %i.bt, ptr %i.br)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %bb.q
  %i.bu = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %42, i8 noundef signext 92, i64 noundef -1) #26
  %sext = shl i64 %i.bu, 32                       ; 3 uses
  %.not = icmp eq i64 %sext, -4294967296          ; 2 uses
  br i1 %.not, label %bb.ai, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = ashr exact i64 %sext, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.bw = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !40, !noalias !473
  %i.by = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 7 uses
  store ptr %i.by, ptr %43, align 8, !tbaa !50, !alias.scope !473
  %i.bz = load ptr, ptr %42, align 8, !tbaa !44, !noalias !473 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bx) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !473
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !51, !noalias !473
  %i.ca = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ca, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.s
  %i.cb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.af    ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i
  store ptr %i.cb, ptr %43, align 8, !tbaa !44, !alias.scope !473
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !51, !noalias !473
  store i64 %i.cc, ptr %i.by, align 8, !tbaa !52, !alias.scope !473
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.s
  %i.cd = phi ptr [ %i.cb, %.noexc ], [ %i.by, %bb.s ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %bb.v
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.ce = load i8, ptr %i.bz, align 1, !tbaa !52
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !52
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr align 1 %i.bz, i64 %spec.select.i.i.i, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !51, !noalias !473 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !40, !alias.scope !473
  %i.ch = load ptr, ptr %43, align 8, !tbaa !44, !alias.scope !473
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 0, ptr %i.ci, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !473
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %41, i64 19, ptr nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %43)
          to label %bb.w unwind label %bb.ag

bb.w:                                             ; preds = %bb.v
  %i.cj = load ptr, ptr %43, align 8, !tbaa !44   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.by
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.w
  %i.cl = load i64, ptr %i.by, align 8, !tbaa !52
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %31, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %41, ptr noundef nonnull align 8 dereferenceable(32) %31, i64 31, ptr nonnull @.str.207)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %.body

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.co = load i64, ptr %31, align 8, !tbaa !93   ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !52
  %i.cr = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !94
  %i.ct = and i64 %i.cs, 65536
  %i.cu = icmp ne i64 %i.ct, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef %i.co, ptr noundef %i.cq, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.cu)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #29
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #26
  br label %bb.ai

bb.ab:                                            ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_122GeneratedClassFileNameINS0_14EnumDescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_RKNS2_7OptionsE.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf2io20ZeroCopyOutputStreamESt14default_deleteIS3_EED2Ev.exit300

bb.ac:                                            ; preds = %bb.o
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

end_hunk_3
