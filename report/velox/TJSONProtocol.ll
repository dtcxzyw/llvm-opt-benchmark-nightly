inline.NumInlined: 1094
inline.NumDeleted: 330
begin_hunk_0_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br label %.outer

.outer:                                           ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit, %bb.c
  %.sroa.31.0.ph.a = phi ptr [ %.sroa.31.1.a, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ null, %bb.c ] ; 23 uses
  %.sroa.17.0.ph = phi ptr [ %.sroa.17.1, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ null, %bb.c ] ; 9 uses
  %.sroa.0103.0.ph = phi ptr [ %.sroa.0103.1, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ null, %bb.c ] ; 28 uses
  %.021.ph = phi i32 [ %i.bv, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ %i.j, %bb.c ] ; 2 uses
  %i.s = icmp eq ptr %.sroa.0103.0.ph, %.sroa.17.0.ph
  %.fr = freeze i1 %i.s                           ; 2 uses
  br i1 %.fr, label %.outer.split.us, label %.outer.split

end_hunk_0
begin_hunk_1_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  ]

bb.v:                                             ; preds = %bb.u
  %.not.i = icmp eq ptr %.sroa.17.0.ph, %.sroa.31.0.ph.a
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
end_hunk_1
begin_hunk_2_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.x:                                             ; preds = %bb.v
  %i.bz = ptrtoint ptr %.sroa.31.0.ph.a to i64
  %i.ca = ptrtoint ptr %.sroa.0103.0.ph to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 6 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775806
  br i1 %i.cc, label %.invoke, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
end_hunk_2
begin_hunk_3_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %i.cl, label %bb.y, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.y:                                             ; preds = %.noexc57
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cj, ptr align 2 %.sroa.0103.0.ph, i64 %i.cb, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.y, %.noexc57
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %.not.i17.i.i = icmp eq ptr %.sroa.0103.0.ph, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.0.ph, i64 noundef %i.cb) #30
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
end_hunk_3
begin_hunk_4_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

.loopexit:                                        ; preds = %.split235.us, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i59
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au
end_hunk_4
begin_hunk_5_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br label %bb.au

bb.ag:                                            ; preds = %bb.u, %bb.aa
  %.not.i58 = icmp eq ptr %.sroa.17.0.ph, %.sroa.31.0.ph.a
  br i1 %.not.i58, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
end_hunk_5
begin_hunk_6_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit67

bb.ai:                                            ; preds = %bb.ag
  %i.cw = ptrtoint ptr %.sroa.31.0.ph.a to i64
  %i.cx = ptrtoint ptr %.sroa.0103.0.ph to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 6 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775806
  br i1 %i.cz, label %.invoke, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i59
end_hunk_6
begin_hunk_7_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %i.di, label %bb.aj, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i62

bb.aj:                                            ; preds = %.noexc66
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dg, ptr align 2 %.sroa.0103.0.ph, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i62

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i62: ; preds = %bb.aj, %.noexc66
  %.not.i17.i.i63 = icmp eq ptr %.sroa.0103.0.ph, null
  br i1 %.not.i17.i.i63, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i62
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.0.ph, i64 noundef %i.cy) #30
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64: ; preds = %bb.ak, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i62
end_hunk_7
begin_hunk_8_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit67

_ZNSt6vectorItSaItEE9push_backERKt.exit67:        ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64, %bb.ah
  %.sroa.31.5.a = phi ptr [ %i.dj, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64 ], [ %.sroa.31.0.ph.a, %bb.ah ] ; 5 uses
  %.pn = phi ptr [ %i.dh, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64 ], [ %.sroa.17.0.ph, %bb.ah ] ; 2 uses
  %.sroa.0103.5 = phi ptr [ %i.dg, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i64 ], [ %.sroa.0103.0.ph, %bb.ah ] ; 7 uses
  %.sroa.17.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.17.3, %.sroa.31.5.a
  br i1 %.not.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit67
end_hunk_8
begin_hunk_9_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.am:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit67
  %i.dl = ptrtoint ptr %.sroa.31.5.a to i64
  %i.dm = ptrtoint ptr %.sroa.0103.5 to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 6 uses
  %i.do = icmp eq i64 %i.dn, 9223372036854775806
  br i1 %i.do, label %bb.an, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_9
begin_hunk_10_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br i1 %i.dx, label %bb.ao, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.ao:                                            ; preds = %.noexc69
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dv, ptr align 2 %.sroa.0103.5, i64 %i.dn, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ao, %.noexc69
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0103.5, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.5, i64 noundef %i.dn) #30
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.ap, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
end_hunk_10
begin_hunk_11_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.al
  %.sroa.31.6.a = phi ptr [ %i.dz, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %.sroa.31.5.a, %bb.al ] ; 2 uses
  %.sroa.17.4 = phi ptr [ %i.dy, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.dk, %bb.al ] ; 2 uses
  %.sroa.0103.6 = phi ptr [ %i.dv, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %.sroa.0103.5, %bb.al ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %.0.i.i = phi ptr [ %.sroa.0103.6, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ %i.eb, %bb.aq ] ; 3 uses
  %i.ea = load i16, ptr %.0.i.i, align 2, !tbaa !122, !noalias !129
  %.not.i.i70 = icmp eq i16 %i.ea, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  br i1 %.not.i.i70, label %_ZN5boost6locale4util7str_endIKtEEPT_S5_.exit.i, label %bb.aq, !llvm.loop !132

_ZN5boost6locale4util7str_endIKtEEPT_S5_.exit.i:  ; preds = %bb.aq
  invoke void @_ZN5boost6locale4conv10utf_to_utfIctEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEPKT0_SC_NS1_11method_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %.sroa.0103.6, ptr noundef nonnull %.0.i.i, i32 noundef 0)
          to label %_ZN5boost6locale4conv10utf_to_utfIctEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEPKT0_NS1_11method_typeE.exit unwind label %bb.as

_ZN5boost6locale4conv10utf_to_utfIctEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEPKT0_NS1_11method_typeE.exit: ; preds = %_ZN5boost6locale4util7str_endIKtEEPT_S5_.exit.i
end_hunk_11
begin_hunk_12_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %.not.i.i77 = icmp eq ptr %.sroa.17.4, %.sroa.0103.6
  %spec.select = select i1 %.not.i.i77, ptr %.sroa.17.4, ptr %.sroa.0103.6
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

.loopexit148:                                     ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_12
begin_hunk_13_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br label %bb.au

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.w
  %.sroa.31.1.a = phi ptr [ %.sroa.31.0.ph.a, %bb.w ], [ %i.cn, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %.sroa.31.6.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  %.sroa.17.1 = phi ptr [ %i.by, %bb.w ], [ %i.cm, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  %.sroa.0103.1 = phi ptr [ %.sroa.0103.0.ph, %bb.w ], [ %i.cj, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %.sroa.0103.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.outer

bb.au:                                            ; preds = %.loopexit148, %.loopexit.split-lp149, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %.sroa.31.2.a = phi ptr [ %.sroa.31.0.ph.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.31.0.ph.a, %bb.af ], [ %.sroa.31.0.ph.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.31.0.ph.a, %.loopexit.split-lp ], [ %.sroa.31.6.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.sroa.31.0.ph.a, %.loopexit ], [ %.sroa.31.5.a, %.loopexit148 ], [ %.sroa.31.5.a, %.loopexit.split-lp149 ]
  %.sroa.0103.2 = phi ptr [ %.sroa.0103.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.0103.0.ph, %bb.af ], [ %.sroa.0103.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0103.0.ph, %.loopexit.split-lp ], [ %.sroa.0103.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.sroa.0103.0.ph, %.loopexit ], [ %.sroa.0103.5, %.loopexit148 ], [ %.sroa.0103.5, %.loopexit.split-lp149 ]
  %.pn49 = phi { ptr, i32 } [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn47127, %bb.af ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit150, %.loopexit148 ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.bk
end_hunk_13
begin_hunk_14_@_ZN6apache6thrift8protocol13TJSONProtocol14readJSONStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  br label %bb.bk

.split229.us:                                     ; preds = %bb.f
  %.not.i.i.i97 = icmp eq ptr %.sroa.17.0.ph, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %.split229.us
  %i.gj = ptrtoint ptr %.sroa.31.0.ph.a to i64
  %i.gk = ptrtoint ptr %.sroa.17.0.ph to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.0.ph, i64 noundef %i.gl) #30
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %.split229.us, %bb.bj
  ret i32 %i.ab

bb.bk:                                            ; preds = %.split, %.split.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.be, %bb.au
  %.sroa.31.3.a = phi ptr [ %.sroa.31.0.ph.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.sroa.31.0.ph.a, %bb.be ], [ %.sroa.31.0.ph.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.sroa.31.0.ph.a, %bb.bi ], [ %.sroa.31.0.ph.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.sroa.31.2.a, %bb.au ], [ %.sroa.31.0.ph.a, %bb.ba ], [ %.sroa.31.0.ph.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.sroa.31.0.ph.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %.sroa.31.0.ph.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.sroa.31.0.ph.a, %.split ], [ %.sroa.31.0.ph.a, %.split.us ]
  %.sroa.0103.3 = phi ptr [ %.sroa.0103.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.sroa.0103.0.ph, %bb.be ], [ %.sroa.0103.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.sroa.0103.0.ph, %bb.bi ], [ %.sroa.0103.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.sroa.0103.2, %bb.au ], [ %.sroa.0103.0.ph, %bb.ba ], [ %.sroa.0103.0.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.sroa.0103.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %.sroa.0103.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.sroa.0103.0.ph, %.split ], [ %.sroa.0103.0.ph, %.split.us ] ; 3 uses
  %.pn51.pn = phi { ptr, i32 } [ %i.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn142, %bb.be ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %.pn51145, %bb.bi ], [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn49, %bb.au ], [ %.pn41.pn.pn130, %bb.ba ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %.pn41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.bl, %.split ], [ %i.bc, %.split.us ]
  %.not.i.i.i98 = icmp eq ptr %.sroa.0103.3, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorItSaItEED2Ev.exit99, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gm = ptrtoint ptr %.sroa.31.3.a to i64
  %i.gn = ptrtoint ptr %.sroa.0103.3 to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.3, i64 noundef %i.go) #30
  br label %_ZNSt6vectorItSaItEED2Ev.exit99

_ZNSt6vectorItSaItEED2Ev.exit99:                  ; preds = %bb.bk, %bb.bl
end_hunk_14
