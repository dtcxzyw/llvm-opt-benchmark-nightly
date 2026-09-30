Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/CompressChunkTrace?download=true
inline.NumInlined: 1971
inline.NumDeleted: 1047
begin_hunk_0_@_ZN6openzl10visualizer18CompressChunkTrace18on_codecEncode_endEP12ZL_Encoder_sPPK11ZL_Output_sm18ZL_Result_size_t_u:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i8.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i

bb.ac:                                            ; preds = %bb.z
  %i.ek = load ptr, ptr %i.v, align 8, !tbaa !94  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ej, %i.ek
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ej, %bb.ac ] ; 3 uses
  %i.el = load ptr, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !98 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !99
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i9.i.i.i = icmp eq ptr %i.eq, %i.ek
  br i1 %.not.i.i.i.i.i.i.i.i9.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i = load ptr, ptr %14, align 16, !tbaa !100
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i, %bb.ac
  %i.er = phi ptr [ %.pr.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i.i.i ], [ %i.ej, %bb.ac ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i

bb.ad:                                            ; preds = %bb.z
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %bb.ab, %bb.aa
  %.sink20.i.i.i = phi ptr [ %i.ej, %bb.ab ], [ %i.ej, %bb.aa ], [ %i.er, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.es = load ptr, ptr %i.x, align 16, !tbaa !85
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %.sink20.i.i.i to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %.sink20.i.i.i, i64 noundef %i.ev) #26
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev.exit: ; preds = %bb.aa, %bb.ab, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt6vectorIhSaIhEES4_IlSaIlEES4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S8_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SO_.exit.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.ew = add nuw i64 %.037115, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ew, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !282

bb.ae:                                            ; preds = %bb.g
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6openzl10visualizer6StreamD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.ag

bb.af:                                            ; preds = %_ZN6openzl10visualizer6StreamD2Ev.exit
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit:                                        ; preds = %_ZNSt6vectorI9ZL_DataIDSaIS0_EE9push_backERKS0_.exit, %_ZNKSt6vectorI9ZL_DataIDSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.ae ], [ %i.ey, %bb.af ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt6vectorIhSaIhEES2_IlSaIlEES2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  resume { ptr, i32 } %.pn

._crit_edge120.loopexit:                          ; preds = %bb.ah
  %.pre = load i64, ptr %i.ae, align 8, !tbaa !207
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %._crit_edge
  %i.ez = phi i64 [ %.pre, %._crit_edge120.loopexit ], [ %i.af, %._crit_edge ]
  %i.fa = add i64 %i.ez, 1
  store i64 %i.fa, ptr %i.ae, align 8, !tbaa !207
  ret void

bb.ah:                                            ; preds = %.lr.ph119, %bb.ah
  %.sroa.051.0117 = phi ptr [ %i.aj, %.lr.ph119 ], [ %i.fi, %bb.ah ] ; 2 uses
  %i.fb = load i64, ptr %i.ae, align 8, !tbaa !207
  %i.fc = load ptr, ptr %i.ad, align 8, !tbaa !136
  %i.fd = getelementptr inbounds nuw [360 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 336
  %i.ff = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNSt3mapI9ZL_DataIDN6openzl10visualizer6StreamENS2_25ZL_DataIDCustomComparatorESaISt4pairIKS0_S3_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.051.0117)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 64
  %i.fh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI9ZL_DataIDSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %i.fe) ; 0 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.051.0117, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.fi, %i.al
  br i1 %.not, label %._crit_edge120.loopexit, label %bb.ah
}

declare { i32, i64 } @ZL_Output_eltWidth(ptr noundef) local_unnamed_addr #2

declare { i32, i64 } @ZL_Output_numElts(ptr noundef) local_unnamed_addr #2

declare { i32, i64 } @ZL_Output_contentSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer18CompressChunkTrace10streamdumpEPK11ZL_Output_s(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.156", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.137", align 1    ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"struct.std::pair.85", align 8     ; 10 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.d = tail call noundef ptr @ZL_Data_rPtr(ptr noundef %1) ; 3 uses
  %i.e = tail call { i32, i64 } @ZL_Output_contentSize(ptr noundef %1)
  %i.f = extractvalue { i32, i64 } %i.e, 1        ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !147
  %i.h = icmp eq ptr %i.d, null
  %i.i = icmp ne i64 %i.f, 0
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.f, ptr %i.b, align 8, !tbaa !135
  %i.j = icmp ugt i64 %i.f, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !98
  %i.l = load i64, ptr %i.b, align 8, !tbaa !135
  store i64 %i.l, ptr %i.g, align 8, !tbaa !99
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %._crit_edge.i.i26
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.d, align 1, !tbaa !99
  store i8 %i.n, ptr %i.m, align 1, !tbaa !99
  br label %._crit_edge.i.i26

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %._crit_edge.i.i26

._crit_edge.i.i26:                                ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.o = load i64, ptr %i.b, align 8, !tbaa !135  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !148
  %i.q = load ptr, ptr %4, align 8, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !147
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !148
  store i8 0, ptr %i.s, align 8, !tbaa !99
  %i.u = invoke noundef i32 @ZL_Data_type(ptr noundef %1)
          to label %_ZL14ZL_Output_typePK11ZL_Output_s.exit unwind label %bb.p

_ZL14ZL_Output_typePK11ZL_Output_s.exit:          ; preds = %._crit_edge.i.i26
  %i.v = icmp eq i32 %i.u, 8
  br i1 %i.v, label %bb.e, label %bb.u

bb.e:                                             ; preds = %_ZL14ZL_Output_typePK11ZL_Output_s.exit
  %i.w = invoke noundef ptr @ZL_Data_rStringLens(ptr noundef %1)
          to label %_ZL25ZL_Output_constStringLensPK11ZL_Output_s.exit unwind label %bb.q ; 2 uses

_ZL25ZL_Output_constStringLensPK11ZL_Output_s.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.x = invoke { i32, i64 } @ZL_Output_numElts(ptr noundef %1)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %_ZL25ZL_Output_constStringLensPK11ZL_Output_s.exit
  %i.y = extractvalue { i32, i64 } %i.x, 1
  %i.z = shl i64 %i.y, 2                          ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.aa, ptr %6, align 8, !tbaa !147
  %i.ab = icmp eq ptr %i.w, null
  %i.ac = icmp ne i64 %i.z, 0
  %or.cond.i31 = and i1 %i.ab, %i.ac
  br i1 %or.cond.i31, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #29
          to label %.noexc34 unwind label %bb.s

.noexc34:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.z, ptr %i.a, align 8, !tbaa !135
  %i.ad = icmp ugt i64 %i.z, 15
  br i1 %i.ad, label %.noexc.i33, label %._crit_edge.i.i32

.noexc.i33:                                       ; preds = %bb.h
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i32.thread unwind label %bb.s ; 2 uses

._crit_edge.i.i32.thread:                         ; preds = %.noexc.i33
  store ptr %i.ae, ptr %6, align 8, !tbaa !98
  %i.af = load i64, ptr %i.a, align 8, !tbaa !135
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !99
  br label %bb.i

._crit_edge.i.i32:                                ; preds = %bb.h
  %cond = icmp eq i64 %i.z, 0
  br i1 %cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i32.thread, %._crit_edge.i.i32
  %i.ag = phi ptr [ %i.ae, %._crit_edge.i.i32.thread ], [ %i.aa, %._crit_edge.i.i32 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.w, i64 %i.z, i1 false)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !135
  %.pre53 = load ptr, ptr %6, align 8, !tbaa !98
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i32, %bb.i
  %i.ah = phi ptr [ %i.aa, %._crit_edge.i.i32 ], [ %.pre53, %bb.i ]
  %i.ai = phi i64 [ %i.z, %._crit_edge.i.i32 ], [ %.pre, %bb.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !148
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.al = load ptr, ptr %5, align 8, !tbaa !98    ; 6 uses
  %i.am = icmp eq ptr %i.al, %i.s
  %i.an = load ptr, ptr %6, align 8, !tbaa !98    ; 5 uses
  %i.ao = icmp eq ptr %i.an, %i.aa                ; 2 uses
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  br i1 %i.ao, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  br i1 %i.ao, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !148 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  switch i64 %i.ap, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !99
  store i8 %i.ar, ptr %i.al, align 1, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.an, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.as = load i64, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  store i64 %i.as, ptr %i.t, align 8, !tbaa !148
  %i.at = load ptr, ptr %5, align 8, !tbaa !98
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !99
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.an, ptr %5, align 8, !tbaa !98
  %i.av = load <2 x i64>, ptr %i.aj, align 8, !tbaa !99
  store <2 x i64> %i.av, ptr %i.t, align 8, !tbaa !99
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aw = load i64, ptr %i.s, align 8, !tbaa !99
  store ptr %i.an, ptr %5, align 8, !tbaa !98
  %i.ax = load <2 x i64>, ptr %i.aj, align 8, !tbaa !99
  store <2 x i64> %i.ax, ptr %i.t, align 8, !tbaa !99
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.al, ptr %6, align 8, !tbaa !98
  store i64 %i.aw, ptr %i.aa, align 8, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aa, ptr %6, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.ay = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.al, %bb.n ], [ %i.aa, %bb.o ]
  store i64 0, ptr %i.aj, align 8, !tbaa !148
  store i8 0, ptr %i.ay, align 1, !tbaa !99
  %i.az = load ptr, ptr %6, align 8, !tbaa !98    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aa
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bb = load i64, ptr %i.aa, align 8, !tbaa !99
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.u

bb.p:                                             ; preds = %._crit_edge.i.i26
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.q:                                             ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.r:                                             ; preds = %_ZL25ZL_Output_constStringLensPK11ZL_Output_s.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %.noexc.i33, %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.s ], [ %i.bf, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ab

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZL14ZL_Output_typePK11ZL_Output_s.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.bh = invoke i32 @ZL_Data_id(ptr noundef %1)
          to label %_ZL12ZL_Output_idPK11ZL_Output_s.exit unwind label %bb.z

_ZL12ZL_Output_idPK11ZL_Output_s.exit:            ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = zext i32 %i.bh to i64                   ; 3 uses
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !135
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZL12ZL_Output_idPK11ZL_Output_s.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bl, %_ZL12ZL_Output_idPK11ZL_Output_s.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bm, %_ZL12ZL_Output_idPK11ZL_Output_s.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !135
  %i.bp = icmp ult i64 %i.bo, %i.bj               ; 2 uses
  %.19.i.i.i.i = select i1 %i.bp, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.bp, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !287

_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEE11lower_boundERSA_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.bq = icmp eq ptr %.19.i.i.i.i, %i.bm
  br i1 %i.bq, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEE11lower_boundERSA_.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !135
  %i.bt = icmp ugt i64 %i.bs, %i.bj
  br i1 %i.bt, label %.critedge.i, label %bb.x

.critedge.i:                                      ; preds = %bb.w, %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEE11lower_boundERSA_.exit.i, %_ZL12ZL_Output_idPK11ZL_Output_s.exit
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.w ], [ %.19.i.i.i.i, %_ZNSt3mapImSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4lessImESaIS0_IKmS7_EEE11lower_boundERSA_.exit.i ], [ %i.bm, %_ZL12ZL_Output_idPK11ZL_Output_s.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.c, ptr %2, align 8, !tbaa !153, !alias.scope !290
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bu = invoke ptr @_ZNSt8_Rb_treeImSt4pairIKmS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EESt10_Select1stIS9_ESt4lessImESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc38 unwind label %bb.z

.noexc38:                                         ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.x

bb.x:                                             ; preds = %.noexc38, %bb.w
  %.sroa.06.0.i = phi ptr [ %i.bu, %.noexc38 ], [ %.19.i.i.i.i, %bb.w ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.bw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EaSEOS6_(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, ptr noundef nonnull align 8 dereferenceable(64) %7) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !98 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.x
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !99
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cd = load ptr, ptr %7, align 8, !tbaa !98    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

end_hunk_0
