Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/use_v3_10_5?download=true
inline.NumInlined: 2215
inline.NumDeleted: 1016
begin_hunk_0_@_ZN8nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE:bb.a

bb.ah:                                            ; preds = %.lr.ph125
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #28, !inline_history !254
  unreachable

_ZN8nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEED2Ev.exit.i58: ; preds = %.lr.ph125
  %i.em = load ptr, ptr %.0.i.i40123, align 8, !tbaa !34 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i40123, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZSt8_DestroyISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN8nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEED2Ev.exit.i58
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !24
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #26, !inline_history !255
  br label %_ZSt8_DestroyISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvPT_.exit

_ZSt8_DestroyISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvPT_.exit: ; preds = %_ZN8nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEED2Ev.exit.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i40123, i64 48 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.er, %i.eg
  br i1 %.not.i.i41, label %_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonINS8_11ordered_mapES_S6_blmdSaNS8_14adl_serializerES_IhSaIhEEEEESaISF_EED2Ev.exit.loopexit, label %.lr.ph125, !llvm.loop !252

_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonINS8_11ordered_mapES_S6_blmdSaNS8_14adl_serializerES_IhSaIhEEEEESaISF_EED2Ev.exit.loopexit: ; preds = %_ZSt8_DestroyISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonINS8_11ordered_mapESt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEEvPT_.exit
  %.pre138 = load ptr, ptr %i.ed, align 8, !tbaa !262
  br label %_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonINS8_11ordered_mapES_S6_blmdSaNS8_14adl_serializerES_IhSaIhEEEEESaISF_EED2Ev.exit

_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonINS8_11ordered_mapES_S6_blmdSaNS8_14adl_serializerES_IhSaIhEEEEESaISF_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonINS8_11ordered_mapES_S6_blmdSaNS8_14adl_serializerES_IhSaIhEEEEESaISF_EED2Ev.exit.loopexit, %bb.ag
  %i.es = phi ptr [ %.pre138, %_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonINS8_11ordered_mapES_S6_blmdSaNS8_14adl_serializerES_IhSaIhEEEEESaISF_EED2Ev.exit.loopexit ], [ %i.ee, %bb.ag ] ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.es, null
  br i1 %.not.i.i39, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonINS8_11ordered_mapES_S6_blmdSaNS8_14adl_serializerES_IhSaIhEEEEESaISF_EED2Ev.exit
  %i.et = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !264
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ex) #26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNSt6vectorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann10basic_jsonINS8_11ordered_mapES_S6_blmdSaNS8_14adl_serializerES_IhSaIhEEEEESaISF_EED2Ev.exit
  %i.ey = load ptr, ptr %0, align 8, !tbaa !24
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef 24) #26
  br label %bb.as

bb.ak:                                            ; preds = %bb.af
  %i.ez = load ptr, ptr %0, align 8, !tbaa !24    ; 4 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !112 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !113 ; 2 uses
  %.not.i.i45118 = icmp eq ptr %i.fa, %i.fc
  br i1 %.not.i.i45118, label %_ZNSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28, label %.lr.ph121

.lr.ph121:                                        ; preds = %bb.ak, %_ZSt8_DestroyIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEEvPT_.exit60
  %.0.i.i44119 = phi ptr [ %i.fh, %_ZSt8_DestroyIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEEvPT_.exit60 ], [ %i.fa, %bb.ak ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i.i44119, i64 8
  %i.fe = load i8, ptr %.0.i.i44119, align 8, !tbaa !108
  invoke void @_ZN8nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, i8 noundef zeroext %i.fe)
          to label %_ZSt8_DestroyIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEEvPT_.exit60 unwind label %bb.al, !inline_history !256

bb.al:                                            ; preds = %.lr.ph121
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #28, !inline_history !256
  unreachable

_ZSt8_DestroyIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEEvPT_.exit60: ; preds = %.lr.ph121
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i44119, i64 16 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.fh, %i.fc
  br i1 %.not.i.i45, label %_ZNSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28.loopexit, label %.lr.ph121, !llvm.loop !9

_ZNSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28.loopexit: ; preds = %_ZSt8_DestroyIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEEvPT_.exit60
  %.pre137 = load ptr, ptr %i.ez, align 8, !tbaa !112
  br label %_ZNSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28

_ZNSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28: ; preds = %_ZNSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28.loopexit, %bb.ak
  %i.fi = phi ptr [ %.pre137, %_ZNSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28.loopexit ], [ %i.fa, %bb.ak ] ; 3 uses
  %.not.i.i42 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i42, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !114
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fn) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28
  %i.fo = load ptr, ptr %0, align 8, !tbaa !24
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef 24) #26
  br label %bb.as

bb.ao:                                            ; preds = %bb.af
  %i.fp = load ptr, ptr %0, align 8, !tbaa !24    ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !34 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ao
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !24
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #26
  %.pre136 = load ptr, ptr %0, align 8, !tbaa !24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fv = phi ptr [ %.pre136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.fp, %bb.ao ]
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef 32) #26
  br label %bb.as

bb.ap:                                            ; preds = %bb.af
  %i.fw = load ptr, ptr %0, align 8, !tbaa !24    ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !100
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #26
  %.pre135 = load ptr, ptr %0, align 8, !tbaa !24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gd = phi ptr [ %.pre135, %bb.aq ], [ %i.fw, %bb.ap ]
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef 40) #26
  br label %bb.as

bb.as:                                            ; preds = %bb.af, %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.an, %bb.aj
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !112    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %.not.i1 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i1, label %_ZSt8_DestroyIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN8nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEED2Ev.exit
  %.0.i2 = phi ptr [ %i.h, %_ZN8nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEED2Ev.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i2, i64 8
  %i.e = load i8, ptr %.0.i2, align 8, !tbaa !108
  invoke void @_ZN8nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext %i.e)
          to label %_ZN8nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEED2Ev.exit unwind label %bb.b, !inline_history !265

bb.b:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28, !inline_history !265
  unreachable

_ZN8nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEED2Ev.exit: ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i2, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i, label %_ZSt8_DestroyIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit.loopexit, label %.lr.ph, !llvm.loop !9

_ZSt8_DestroyIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit.loopexit: ; preds = %_ZN8nlohmann10basic_jsonINS_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEED2Ev.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !112
  br label %_ZSt8_DestroyIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit

_ZSt8_DestroyIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %_ZSt8_DestroyIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNSt12_Vector_baseIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EED2Ev.exit

_ZNSt12_Vector_baseIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !112    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #30
  unreachable

_ZNKSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.k = select i1 %i.i, i64 576460752303423487, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 4
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #29 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 2 uses
  %i.q = load i8, ptr %2, align 8, !tbaa !35
  store i8 %i.q, ptr %i.p, align 8, !tbaa !108
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24
  store i64 %i.t, ptr %i.r, align 8, !tbaa !24
  store i8 0, ptr %2, align 8, !tbaa !108
  store ptr null, ptr %i.s, align 8, !tbaa !24
  %.not.i.i27 = icmp eq ptr %i.c, %1
  br i1 %.not.i.i27, label %_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader, label %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit

_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader: ; preds = %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit, %_ZNKSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit
  %.0.i.i.lcssa = phi ptr [ %i.o, %_ZNKSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ], [ %i.z, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit ] ; 2 uses
  %.0.i.i1830 = getelementptr inbounds nuw i8, ptr %.0.i.i.lcssa, i64 16 ; 2 uses
  %.not.i.i1931 = icmp eq ptr %1, %i.b
  br i1 %.not.i.i1931, label %_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit20, label %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21

_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit: ; preds = %_ZNKSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit
  %.0.i.i29 = phi ptr [ %i.z, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit ], [ %i.o, %_ZNKSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.09.i.i28 = phi ptr [ %i.y, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit ], [ %i.c, %_ZNKSt6vectorIN8nlohmann10basic_jsonINS0_11ordered_mapES_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.u = load i8, ptr %.09.i.i28, align 1, !tbaa !35, !alias.scope !274, !noalias !273
  store i8 %i.u, ptr %.0.i.i29, align 8, !tbaa !108, !alias.scope !273, !noalias !274
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i28, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24, !alias.scope !274, !noalias !273
  store i64 %i.x, ptr %i.v, align 8, !tbaa !24, !alias.scope !273, !noalias !274
  store i8 0, ptr %.09.i.i28, align 8, !tbaa !108, !alias.scope !274, !noalias !273
  store ptr null, ptr %i.w, align 8, !tbaa !24, !alias.scope !274, !noalias !273
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i28, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader, label %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit, !llvm.loop !269

_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21: ; preds = %_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21
  %.0.i.i1834 = phi ptr [ %.0.i.i18, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21 ], [ %.0.i.i1830, %_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader ] ; 3 uses
  %.0.i.i.pn33 = phi ptr [ %.0.i.i1834, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21 ], [ %.0.i.i.lcssa, %_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader ]
  %.09.i.i1732 = phi ptr [ %i.ae, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21 ], [ %1, %_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.aa = load i8, ptr %.09.i.i1732, align 1, !tbaa !35, !alias.scope !276, !noalias !275
  store i8 %i.aa, ptr %.0.i.i1834, align 8, !tbaa !108, !alias.scope !275, !noalias !276
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.pn33, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i1732, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24, !alias.scope !276, !noalias !275
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !24, !alias.scope !275, !noalias !276
  store i8 0, ptr %.09.i.i1732, align 8, !tbaa !108, !alias.scope !276, !noalias !275
  store ptr null, ptr %i.ac, align 8, !tbaa !24, !alias.scope !276, !noalias !275
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i1732, i64 16 ; 2 uses
  %.0.i.i18 = getelementptr inbounds nuw i8, ptr %.0.i.i1834, i64 16 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i19, label %_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit20, label %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21, !llvm.loop !269

_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit20: ; preds = %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21, %_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader
  %.0.i.i18.lcssa = phi ptr [ %.0.i.i1830, %_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader ], [ %.0.i.i18, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21 ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i16 = icmp eq ptr %i.c, null
  br i1 %.not.i16, label %_ZNSt12_Vector_baseIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit20
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !114
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ai) #26
  br label %_ZNSt12_Vector_baseIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit

_ZNSt12_Vector_baseIN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit: ; preds = %_ZSt12__relocate_aIPN8nlohmann10basic_jsonINS0_11ordered_mapESt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit20, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !112
  store ptr %.0.i.i18.lcssa, ptr %i.a, align 8, !tbaa !113
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.k
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !114
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !37     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #30
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.i      ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !28
  %i.s = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.u, ptr %i.a, align 8, !tbaa !52
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !34
  %i.x = load i64, ptr %i.a, align 8, !tbaa !52
  store i64 %i.x, ptr %i.r, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !24
  store i8 %i.z, ptr %i.y, align 1, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !52  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !31
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !28, !alias.scope !284, !noalias !285
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !34, !alias.scope !285, !noalias !284 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !31, !alias.scope !285, !noalias !284 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !286
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !34, !alias.scope !284, !noalias !285
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !24, !alias.scope !285, !noalias !284
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !24, !alias.scope !284, !noalias !285
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !31, !alias.scope !285, !noalias !284
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.an = phi i64 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !31, !alias.scope !284, !noalias !285
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !34, !alias.scope !285, !noalias !284
  store i64 0, ptr %i.ao, align 8, !tbaa !31, !alias.scope !285, !noalias !284
  store i8 0, ptr %i.ag, align 8, !tbaa !24, !alias.scope !285, !noalias !284
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !280

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !28, !alias.scope !287, !noalias !288
  %i.au = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !34, !alias.scope !288, !noalias !287 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !31, !alias.scope !288, !noalias !287 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !289
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !34, !alias.scope !287, !noalias !288
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !24, !alias.scope !288, !noalias !287
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !24, !alias.scope !287, !noalias !288
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !31, !alias.scope !288, !noalias !287
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bc = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !31, !alias.scope !287, !noalias !288
  store ptr %i.av, ptr %.0911.i.i.i29, align 8, !tbaa !34, !alias.scope !288, !noalias !287
  store i64 0, ptr %i.bd, align 8, !tbaa !31, !alias.scope !288, !noalias !287
  store i8 0, ptr %i.av, align 8, !tbaa !24, !alias.scope !288, !noalias !287
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !280

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !40
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !37
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !38
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !40
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #25 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #30
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES7_ZNK8nlohmann12json_pointerINSE_10basic_jsonINSE_11ordered_mapESA_S7_blmdSaNSE_14adl_serializerESA_IhSaIhEEEEE9to_stringEvEUlRS8_SN_E_ET0_T_SQ_SP_T1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, ptr %2, ptr nofreeobj noundef align 8 dereferenceable(32) %3) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.168, align 1
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not5 = icmp eq ptr %1, %2
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE:bb.a
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !92
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #26
  br label %_ZNSt12_Vector_baseIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EED2Ev.exit

_ZNSt12_Vector_baseIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.af

bb.ae:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ac, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.ay, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn.pn

bb.af:                                            ; preds = %bb.a, %_ZNSt12_Vector_baseIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EED2Ev.exit
  switch i8 %1, label %bb.ar [
    i8 1, label %bb.ag
    i8 2, label %bb.aj
    i8 3, label %bb.an
    i8 8, label %bb.ao
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ef = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !90
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ef, ptr noundef %i.eh)
          to label %bb.ai unwind label %bb.ah, !inline_history !305

bb.ah:                                            ; preds = %bb.ag
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #28, !inline_history !305
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ek = load ptr, ptr %0, align 8, !tbaa !24
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef 48) #26
  br label %bb.ar

bb.aj:                                            ; preds = %bb.af
  %i.el = load ptr, ptr %0, align 8, !tbaa !24    ; 4 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !82 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !93 ; 2 uses
  %.not.i.i41109 = icmp eq ptr %i.em, %i.eo
  br i1 %.not.i.i41109, label %_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.aj, %_ZSt8_DestroyIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEEvPT_.exit53
  %.0.i.i40110 = phi ptr [ %i.et, %_ZSt8_DestroyIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEEvPT_.exit53 ], [ %i.em, %bb.aj ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.i.i40110, i64 8
  %i.eq = load i8, ptr %.0.i.i40110, align 8, !tbaa !23
  invoke void @_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, i8 noundef zeroext %i.eq)
          to label %_ZSt8_DestroyIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEEvPT_.exit53 unwind label %bb.ak, !inline_history !306

bb.ak:                                            ; preds = %.lr.ph112
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #28, !inline_history !306
  unreachable

_ZSt8_DestroyIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEEvPT_.exit53: ; preds = %.lr.ph112
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i40110, i64 16 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.et, %i.eo
  br i1 %.not.i.i41, label %_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28.loopexit, label %.lr.ph112, !llvm.loop !2

_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28.loopexit: ; preds = %_ZSt8_DestroyIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEEvPT_.exit53
  %.pre121 = load ptr, ptr %i.el, align 8, !tbaa !82
  br label %_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28

_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28: ; preds = %_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28.loopexit, %bb.aj
  %i.eu = phi ptr [ %.pre121, %_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28.loopexit ], [ %i.em, %bb.aj ] ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i38, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !92
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ez) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev.exit28
  %i.fa = load ptr, ptr %0, align 8, !tbaa !24
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef 24) #26
  br label %bb.ar

bb.an:                                            ; preds = %bb.af
  %i.fb = load ptr, ptr %0, align 8, !tbaa !24    ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !34 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.an
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !24
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #26
  %.pre120 = load ptr, ptr %0, align 8, !tbaa !24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fh = phi ptr [ %.pre120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.fb, %bb.an ]
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef 32) #26
  br label %bb.ar

bb.ao:                                            ; preds = %bb.af
  %i.fi = load ptr, ptr %0, align 8, !tbaa !24    ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !100
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fj to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fo) #26
  %.pre119 = load ptr, ptr %0, align 8, !tbaa !24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fp = phi ptr [ %.pre119, %bb.ap ], [ %i.fi, %bb.ao ]
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef 40) #26
  br label %bb.ar

bb.ar:                                            ; preds = %bb.af, %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.am, %bb.ai
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %.not.i1 = icmp eq ptr %i.a, %i.c
  br i1 %.not.i1, label %_ZSt8_DestroyIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEED2Ev.exit
  %.0.i2 = phi ptr [ %i.h, %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEED2Ev.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i2, i64 8
  %i.e = load i8, ptr %.0.i2, align 8, !tbaa !23
  invoke void @_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef zeroext %i.e)
          to label %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEED2Ev.exit unwind label %bb.b, !inline_history !307

bb.b:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28, !inline_history !307
  unreachable

_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEED2Ev.exit: ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i2, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i, label %_ZSt8_DestroyIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit.loopexit, label %.lr.ph, !llvm.loop !2

_ZSt8_DestroyIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit.loopexit: ; preds = %_ZN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEED2Ev.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !82
  br label %_ZSt8_DestroyIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit

_ZSt8_DestroyIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %_ZSt8_DestroyIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNSt12_Vector_baseIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EED2Ev.exit

_ZNSt12_Vector_baseIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_EvT_SF_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE17_M_realloc_insertIJSC_EEEvN9__gnu_cxx17__normal_iteratorIPSC_SE_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !82     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #30
  unreachable

_ZNKSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 576460752303423487)
  %i.k = select i1 %i.i, i64 576460752303423487, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 4
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #29 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 2 uses
  %i.q = load i8, ptr %2, align 8, !tbaa !35
  store i8 %i.q, ptr %i.p, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24
  store i64 %i.t, ptr %i.r, align 8, !tbaa !24
  store i8 0, ptr %2, align 8, !tbaa !23
  store ptr null, ptr %i.s, align 8, !tbaa !24
  %.not.i.i27 = icmp eq ptr %i.c, %1
  br i1 %.not.i.i27, label %_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader, label %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit

_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader: ; preds = %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit, %_ZNKSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit
  %.0.i.i.lcssa = phi ptr [ %i.o, %_ZNKSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ], [ %i.z, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit ] ; 2 uses
  %.0.i.i1830 = getelementptr inbounds nuw i8, ptr %.0.i.i.lcssa, i64 16 ; 2 uses
  %.not.i.i1931 = icmp eq ptr %1, %i.b
  br i1 %.not.i.i1931, label %_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit20, label %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21

_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit: ; preds = %_ZNKSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit
  %.0.i.i29 = phi ptr [ %i.z, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit ], [ %i.o, %_ZNKSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.09.i.i28 = phi ptr [ %i.y, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit ], [ %i.c, %_ZNKSt6vectorIN8nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISC_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.u = load i8, ptr %.09.i.i28, align 1, !tbaa !35, !alias.scope !316, !noalias !315
  store i8 %i.u, ptr %.0.i.i29, align 8, !tbaa !23, !alias.scope !315, !noalias !316
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.09.i.i28, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24, !alias.scope !316, !noalias !315
  store i64 %i.x, ptr %i.v, align 8, !tbaa !24, !alias.scope !315, !noalias !316
  store i8 0, ptr %.09.i.i28, align 8, !tbaa !23, !alias.scope !316, !noalias !315
  store ptr null, ptr %i.w, align 8, !tbaa !24, !alias.scope !316, !noalias !315
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i28, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader, label %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit, !llvm.loop !311

_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21: ; preds = %_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21
  %.0.i.i1834 = phi ptr [ %.0.i.i18, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21 ], [ %.0.i.i1830, %_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader ] ; 3 uses
  %.0.i.i.pn33 = phi ptr [ %.0.i.i1834, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21 ], [ %.0.i.i.lcssa, %_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader ]
  %.09.i.i1732 = phi ptr [ %i.ae, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21 ], [ %1, %_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.aa = load i8, ptr %.09.i.i1732, align 1, !tbaa !35, !alias.scope !318, !noalias !317
  store i8 %i.aa, ptr %.0.i.i1834, align 8, !tbaa !23, !alias.scope !317, !noalias !318
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.pn33, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i1732, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24, !alias.scope !318, !noalias !317
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !24, !alias.scope !317, !noalias !318
  store i8 0, ptr %.09.i.i1732, align 8, !tbaa !23, !alias.scope !318, !noalias !317
  store ptr null, ptr %i.ac, align 8, !tbaa !24, !alias.scope !318, !noalias !317
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i1732, i64 16 ; 2 uses
  %.0.i.i18 = getelementptr inbounds nuw i8, ptr %.0.i.i1834, i64 16 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i19, label %_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit20, label %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21, !llvm.loop !311

_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit20: ; preds = %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21, %_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader
  %.0.i.i18.lcssa = phi ptr [ %.0.i.i1830, %_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit.preheader ], [ %.0.i.i18, %_ZSt19__relocate_object_aIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESD_SaISD_EEvPT_PT0_RT1_.exit21 ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i16 = icmp eq ptr %i.c, null
  br i1 %.not.i16, label %_ZNSt12_Vector_baseIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit20
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ai) #26
  br label %_ZNSt12_Vector_baseIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit

_ZNSt12_Vector_baseIN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISD_EE13_M_deallocateEPSD_m.exit: ; preds = %_ZSt12__relocate_aIPN8nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESE_SaISD_EET0_T_SH_SG_RT1_.exit20, %bb.c
  store ptr %i.o, ptr %0, align 8, !tbaa !82
  store ptr %.0.i.i18.lcssa, ptr %i.a, align 8, !tbaa !93
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.k
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN8nlohmann6detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !55
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !319
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !319
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !64
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann6detail14output_adapterIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8nlohmann6detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !55
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !10
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !10
  br label %_ZNSt12__shared_ptrIN8nlohmann6detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !64
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8nlohmann6detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN8nlohmann6detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8nlohmann6detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann6detail10serializerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE4dumpERKSE_bbjj(ptr noundef nonnull align 8 dereferenceable(644) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !23
  switch i8 %i.a, label %common.ret361 [
    i8 1, label %bb.b
    i8 2, label %bb.i
    i8 3, label %bb.p
    i8 8, label %bb.q
    i8 4, label %bb.bn
end_hunk_1
