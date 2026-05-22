inline.NumInlined: 3200
inline.NumDeleted: 979
begin_hunk_0_@_ZN11OpenImageIO4v3_17Strutil4joinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEES9_RKT_NS0_17basic_string_viewIcS7_EE:bb.a
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.peel
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %.not15.peel = icmp eq ptr %i.n, %i.h
  br i1 %.not15.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !9, !alias.scope !127
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !60, !alias.scope !127
  store i8 0, ptr %i.o, align 8, !tbaa !62, !alias.scope !127
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !128, !noalias !127 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !127 ; 2 uses
  %i.u = icmp ugt ptr %i.r, %i.t
  %.08.i.i.i = select i1 %i.u, ptr %i.r, ptr %i.t ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !132, !noalias !127 ; 2 uses
  %i.x = ptrtoint ptr %.08.i.i.i to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.w, i64 noundef %i.z)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !61, !alias.scope !127 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.o
  br i1 %i.ad, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !62, !alias.scope !127
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #33
  br label %.body

bb.f:                                             ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.peel.next:                                       ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.sroa.012.017 = phi ptr [ %i.aw, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %i.n, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel ] ; 3 uses
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !69  ; 2 uses
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, label %bb.h

bb.h:                                             ; preds = %.peel.next
  %i.aj = load ptr, ptr %3, align 8, !tbaa !7
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %3, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !133
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %2, align 8, !tbaa !67
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.aq, i64 noundef %i.ai)
          to label %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.i, %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit: ; preds = %bb.h, %bb.i, %.peel.next
  %i.as = load ptr, ptr %.sroa.012.017, align 8, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !60
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.as, i64 noundef %i.au)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN11OpenImageIO4v3_1lsERSoRKNS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.017, i64 32 ; 2 uses
  %.not15 = icmp eq ptr %i.aw, %i.h
  br i1 %.not15, label %._crit_edge, label %.peel.next, !llvm.loop !140

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.ax = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ax, ptr %3, align 8, !tbaa !7
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %3, i64 %i.ba
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bc, align 8, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !61 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !62
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #33
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bc, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bj) #30
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bk) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

.body:                                            ; preds = %bb.e, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.ab, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef, ptr noundef dead_on_return, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fgetpos(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !61 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !62
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !103

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #33
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput20read_native_scanlineEiiiiPv(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, ptr noundef writeonly captures(address_is_null) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %6 = alloca %struct._G_fpos_t, align 8          ; 6 uses
  %7 = alloca %struct._G_fpos_t, align 8          ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !3
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.c = load ptr, ptr %0, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %.noexc unwind label %bb.c, !inline_history !142

.noexc:                                           ; preds = %bb.a
  %i.g = icmp eq i32 %1, %i.f
  br i1 %i.g, label %bb.b, label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

bb.b:                                             ; preds = %.noexc
  %i.h = load ptr, ptr %0, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit unwind label %bb.c, !inline_history !142

_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit: ; preds = %bb.b
  %i.l = icmp eq i32 %2, %i.k
  br i1 %i.l, label %bb.d, label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 18 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !65   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 4
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  %i.x = icmp eq i32 %3, %i.w
  br i1 %i.x, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.y = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput18read_next_scanlineEPv(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef %5)
          to label %bb.f unwind label %bb.m       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !65
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 286
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !97
  %i.ah = zext i16 %i.ag to i64
  %i.ai = icmp ult i64 %i.ae, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !13
  %i.al = call i32 @fgetpos(ptr noundef %i.ak, ptr noundef nonnull %6) ; 0 uses
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !66  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !106
  %.not.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !107
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.aq, ptr %i.o, align 8, !tbaa !66
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !65  ; 4 uses
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 6 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775792
  br i1 %i.av, label %bb.j, label %_ZNKSt6vectorI9_G_fpos_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
          to label %.noexc23 unwind label %bb.n

.noexc23:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorI9_G_fpos_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.aw = ashr exact i64 %i.au, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 576460752303423487)
  %i.ba = select i1 %i.ay, i64 576460752303423487, i64 %i.az ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bb = shl nuw nsw i64 %i.ba, 4
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #32
          to label %.noexc24 unwind label %bb.n   ; 4 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorI9_G_fpos_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !107
  %i.be = icmp sgt i64 %i.au, 0
  br i1 %i.be, label %bb.k, label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.k:                                             ; preds = %.noexc24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %i.ar, i64 %i.au, i1 false)
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.k, %.noexc24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.not.i17.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.au) #33
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.bc, ptr %i.n, align 8, !tbaa !65
  store ptr %i.bf, ptr %i.o, align 8, !tbaa !66
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bg, ptr %i.an, align 8, !tbaa !106
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

bb.m:                                             ; preds = %bb.aj, %bb.af, %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.n:                                             ; preds = %_ZNKSt6vectorI9_G_fpos_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.aq

bb.o:                                             ; preds = %bb.d
  %.not = icmp slt i32 %3, %i.v
  br i1 %.not, label %bb.ae, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit34, %bb.p
  %i.bl = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput18read_next_scanlineEPv(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef null)
          to label %bb.r unwind label %.loopexit

bb.r:                                             ; preds = %bb.q
  br i1 %i.bl, label %bb.t, label %.critedge

.loopexit:                                        ; preds = %bb.q, %_ZNKSt6vectorI9_G_fpos_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i26
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %.invoke, %bb.y, %_ZNKSt6vectorI9_G_fpos_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i36
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.aq

bb.t:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !13
  %i.bn = call i32 @fgetpos(ptr noundef %i.bm, ptr noundef nonnull %7) ; 0 uses
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !66  ; 3 uses
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !106
  %.not.i25 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i25, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !107
  %i.bq = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  store ptr %i.br, ptr %i.o, align 8, !tbaa !66
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !65
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit34

bb.v:                                             ; preds = %bb.t
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !65  ; 4 uses
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 6 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775792
  br i1 %i.bw, label %.invoke, label %_ZNKSt6vectorI9_G_fpos_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i26

.invoke:                                          ; preds = %bb.v, %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #31
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorI9_G_fpos_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i26: ; preds = %bb.v
  %i.bx = ashr exact i64 %i.bv, 4                 ; 3 uses
  %.sroa.speculated.i.i.i27 = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i27, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 576460752303423487)
  %i.cb = select i1 %i.bz, i64 576460752303423487, i64 %i.ca ; 3 uses
  %.not.i.i.i28 = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i28)
  %i.cc = shl nuw nsw i64 %i.cb, 4
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #32
          to label %.noexc33 unwind label %.loopexit ; 5 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorI9_G_fpos_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i26
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !107
  %i.cf = icmp sgt i64 %i.bv, 0
  br i1 %i.cf, label %bb.w, label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i29

bb.w:                                             ; preds = %.noexc33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i29

_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i29: ; preds = %bb.w, %.noexc33
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %.not.i17.i.i30 = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i30, label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i31, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #33
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i31

_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i31: ; preds = %bb.x, %_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i29
  store ptr %i.cd, ptr %i.n, align 8, !tbaa !65
  store ptr %i.cg, ptr %i.o, align 8, !tbaa !66
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ch, ptr %i.bk, align 8, !tbaa !106
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit34

_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit34: ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i31, %bb.u
  %i.ci = phi ptr [ %i.cd, %_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i31 ], [ %.pre, %bb.u ]
  %i.cj = phi ptr [ %i.cg, %_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i31 ], [ %i.br, %bb.u ]
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = lshr exact i64 %i.cm, 4
  %i.co = trunc i64 %i.cn to i32
  %.not19 = icmp slt i32 %3, %i.co
  br i1 %.not19, label %bb.y, label %bb.q, !llvm.loop !143

bb.y:                                             ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit34
  %i.cp = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput18read_next_scanlineEPv(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef %5)
          to label %bb.z unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.cq = load ptr, ptr %i.bj, align 8, !tbaa !13
  %i.cr = call i32 @fgetpos(ptr noundef %i.cq, ptr noundef nonnull %7) ; 0 uses
  %i.cs = load ptr, ptr %i.o, align 8, !tbaa !66  ; 3 uses
  %i.ct = load ptr, ptr %i.bk, align 8, !tbaa !106
  %.not.i35 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i35, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !107
  %i.cu = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %i.cv, ptr %i.o, align 8, !tbaa !66
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit44

bb.ab:                                            ; preds = %bb.z
  %i.cw = load ptr, ptr %i.n, align 8, !tbaa !65  ; 4 uses
  %i.cx = ptrtoint ptr %i.cs to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 6 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775792
  br i1 %i.da, label %.invoke, label %_ZNKSt6vectorI9_G_fpos_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i36

_ZNKSt6vectorI9_G_fpos_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i36: ; preds = %bb.ab
  %i.db = ashr exact i64 %i.cz, 4                 ; 3 uses
  %.sroa.speculated.i.i.i37 = tail call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i37, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 576460752303423487)
  %i.df = select i1 %i.dd, i64 576460752303423487, i64 %i.de ; 3 uses
  %.not.i.i.i38 = icmp ne i64 %i.df, 0
  tail call void @llvm.assume(i1 %.not.i.i.i38)
  %i.dg = shl nuw nsw i64 %i.df, 4
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #32
          to label %.noexc43 unwind label %.loopexit.split-lp ; 4 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorI9_G_fpos_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i36
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %i.cz ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !107
  %i.dj = icmp sgt i64 %i.cz, 0
  br i1 %i.dj, label %bb.ac, label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i39

bb.ac:                                            ; preds = %.noexc43
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dh, ptr align 8 %i.cw, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i39

_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i39: ; preds = %bb.ac, %.noexc43
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %.not.i17.i.i40 = icmp eq ptr %i.cw, null
  br i1 %.not.i17.i.i40, label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i39
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.cz) #33
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41

_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41: ; preds = %bb.ad, %_ZNSt6vectorI9_G_fpos_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i39
  store ptr %i.dh, ptr %i.n, align 8, !tbaa !65
  store ptr %i.dk, ptr %i.o, align 8, !tbaa !66
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.dl, ptr %i.bk, align 8, !tbaa !106
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit44

_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit44: ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

bb.ae:                                            ; preds = %bb.o
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !13
  %i.do = sext i32 %3 to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.do
  %i.dq = tail call i32 @fsetpos(ptr noundef %i.dn, ptr noundef nonnull %i.dp)
  %.not17 = icmp eq i32 %i.dq, 0
  br i1 %.not17, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.10, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.dr)
          to label %bb.ag unwind label %bb.m

bb.ag:                                            ; preds = %bb.af
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !13 ; 2 uses
  %.not.i45 = icmp eq ptr %i.ds, null
  br i1 %.not.i45, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dt = call i32 @fclose(ptr noundef nonnull %i.ds) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store ptr null, ptr %i.dm, align 8, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %i.du, align 8, !tbaa !60
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !61
  store i8 0, ptr %i.dv, align 1, !tbaa !62
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !63 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !64
  %.not.i.i.i.i = icmp eq ptr %i.dz, %i.dx
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.ai
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !64
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i

_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %bb.ai
  %i.ea = load ptr, ptr %i.n, align 8, !tbaa !65  ; 2 uses
  %i.eb = load ptr, ptr %i.o, align 8, !tbaa !66
  %.not.i.i1.i.i = icmp eq ptr %i.eb, %i.ea
  br i1 %.not.i.i1.i.i, label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit, label %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i
  store ptr %i.ea, ptr %i.o, align 8, !tbaa !66
  br label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

bb.aj:                                            ; preds = %bb.ae
  %i.ec = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput18read_next_scanlineEPv(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef %5)
          to label %bb.ak unwind label %bb.m      ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ed = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.ee = load ptr, ptr %i.n, align 8, !tbaa !65  ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 2 uses
  %i.ei = ashr exact i64 %i.eh, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 286
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !97
  %i.el = zext i16 %i.ek to i64
  %i.em = icmp ult i64 %i.ei, %i.el
  br i1 %i.em, label %bb.al, label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

bb.al:                                            ; preds = %bb.ak
  %i.en = load ptr, ptr %i.dm, align 8, !tbaa !13
  %i.eo = getelementptr i8, ptr %i.ee, i64 %i.eh
  %i.ep = getelementptr i8, ptr %i.eo, i64 -16
  %i.eq = tail call i32 @fsetpos(ptr noundef %i.en, ptr noundef nonnull %i.ep)
  %.not18 = icmp eq i32 %i.eq, 0
  br i1 %.not18, label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.er = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.es = load ptr, ptr %i.n, align 8, !tbaa !65
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = ashr exact i64 %i.ev, 4
  %i.ex = add nsw i64 %i.ew, -1
  store i64 %i.ex, ptr %i.b, align 8, !tbaa !90
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 320
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ey)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.ez = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput5closeEv(ptr noundef nonnull align 8 dereferenceable(376) %0) ; 0 uses
  br label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

bb.ao:                                            ; preds = %bb.am
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.aq

.critedge:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit: ; preds = %bb.an, %.noexc, %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i, %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit44, %.critedge, %bb.al, %bb.ak, %bb.f, %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit
  %.2 = phi i1 [ false, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit ], [ false, %bb.an ], [ %i.cp, %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit44 ], [ false, %.critedge ], [ false, %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i ], [ %i.y, %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit ], [ %i.y, %bb.f ], [ %i.ec, %bb.al ], [ %i.ec, %bb.ak ], [ false, %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i ], [ false, %.noexc ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #34
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit
  ret i1 %.2

bb.aq:                                            ; preds = %bb.m, %bb.n, %bb.s, %bb.ao, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.bi, %bb.n ], [ %i.bh, %bb.m ], [ %lpad.phi, %bb.s ], [ %i.fa, %bb.ao ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit46 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #34
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit46: ; preds = %bb.aq
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.e = icmp eq i32 %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.j = icmp eq i32 %2, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput18read_next_scanlineEPv(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %.not32 = icmp eq ptr %i.c, %i.e
  br i1 %.not32, label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.025.033 = phi ptr [ %i.aa, %.critedge ], [ %i.c, %bb.a ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !88
  %i.h = and i8 %i.g, 3
  switch i8 %i.h, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.c
    i8 3, label %.critedge24
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.i = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput24read_pixels_uncompressedERKNS0_13softimage_pvt13ChannelPacketEPv(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 1 dereferenceable(4) %.sroa.025.033, ptr noundef %1)
  br i1 %i.i, label %.critedge, label %.critedge24

bb.c:                                             ; preds = %.lr.ph
  %i.j = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput28read_pixels_mixed_run_lengthERKNS0_13softimage_pvt13ChannelPacketEPv(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 1 dereferenceable(4) %.sroa.025.033, ptr noundef %1)
  br i1 %i.j, label %.critedge, label %.critedge24

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.d:                                             ; preds = %.lr.ph
  %i.k = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput27read_pixels_pure_run_lengthERKNS0_13softimage_pvt13ChannelPacketEPv(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 1 dereferenceable(4) %.sroa.025.033, ptr noundef %1)
  br i1 %i.k, label %.critedge, label %.critedge24

.critedge24:                                      ; preds = %bb.c, %bb.b, %.lr.ph, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.m = load i8, ptr %i.l, align 1, !tbaa !88
  %i.n = zext i8 %i.m to i32
  store i32 %i.n, ptr %i.a, align 4, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.16, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge24
  %i.r = call i32 @fclose(ptr noundef nonnull %i.q) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge24
  store ptr null, ptr %i.p, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %i.s, align 8, !tbaa !60
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !61
  store i8 0, ptr %i.t, align 1, !tbaa !62
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !64
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.f
  store ptr %i.u, ptr %i.d, align 8, !tbaa !64
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i

_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !65   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !66
  %.not.i.i1.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i1.i.i, label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit, label %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i
  store ptr %i.x, ptr %i.y, align 8, !tbaa !66
  br label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.e
  br i1 %.not, label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit, label %.lr.ph

_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit: ; preds = %.critedge, %bb.a, %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i
  %.not30 = phi i1 [ false, %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i ], [ false, %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i ], [ true, %bb.a ], [ true, %.critedge ]
  ret i1 %.not30
}

; Function Attrs: nofree nounwind
declare noundef i32 @fsetpos(ptr noundef captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.113", align 16 ; 6 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !150
  store i32 %i.b, ptr %4, align 16, !tbaa !62, !alias.scope !147, !noalias !144
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %3, align 8, !tbaa !61, !noalias !144
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !60, !noalias !144
  store ptr %i.d, ptr %i.c, align 16, !tbaa !62, !noalias !144
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.f, ptr %i.g, align 8, !tbaa !62, !noalias !144
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 209, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !144
  %i.h = load ptr, ptr %6, align 8, !tbaa !61
  store ptr %i.h, ptr %5, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !60
  store i64 %i.k, ptr %i.i, align 8, !tbaa !69
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %6, align 8, !tbaa !61     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8, !tbaa !62
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !61     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_114SoftimageInput27read_pixels_pure_run_lengthERKNS0_13softimage_pvt13ChannelPacketEPv:bb.a
  %i.dk = load i16, ptr %i.f, align 4, !tbaa !96
  %i.dl = zext i16 %i.dk to i64
  %.not95 = icmp samesign ult i64 %i.dj, %i.dl
  br i1 %.not95, label %.lr.ph.split.split, label %.critedge, !llvm.loop !162

.split:                                           ; preds = %bb.f
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.split.us, %.split
  %.us-phi85 = phi ptr [ %i.cy, %.split ], [ %i.af, %.split.us ] ; 2 uses
  %.us-phi86 = phi i64 [ %i.da, %.split ], [ %i.ah, %.split.us ]
  %.us-phi87 = phi { ptr, i32 } [ %i.dm, %.split ], [ %i.cu, %.split.us ]
  %.not.i.i.i = icmp eq ptr %.us-phi85, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !86
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %.us-phi86
  call void @_ZdlPvm(ptr noundef nonnull %.us-phi85, i64 noundef %i.dq) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %.us-phi87

.critedge:                                        ; preds = %.lr.ph.split.split.us, %._crit_edge.us, %bb.e, %.lr.ph.split.split, %.preheader52, %bb.g, %.lr.ph.split.us, %bb.b, %bb.c, %bb.a
  %.lcssa54 = phi i1 [ true, %bb.a ], [ false, %bb.g ], [ false, %bb.b ], [ true, %bb.c ], [ false, %.lr.ph.split.us ], [ true, %.preheader52 ], [ false, %.lr.ph.split.split ], [ false, %.lr.ph.split.split.us ], [ true, %._crit_edge.us ], [ false, %bb.e ]
  %i.dr = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIiSaIiEED2Ev.exit50, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !86
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit50

_ZNSt6vectorIiSaIiEED2Ev.exit50:                  ; preds = %.critedge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %.lcssa54
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput28read_pixels_mixed_run_lengthERKNS0_13softimage_pvt13ChannelPacketEPv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0, ptr noundef nonnull align 1 dereferenceable(4) %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 14 uses
  %i.b = alloca i16, align 2                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !95
  %i.e = lshr i8 %i.d, 3                          ; 4 uses
  %i.f = zext nneg i8 %i.e to i64                 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNK11OpenImageIO4v3_113softimage_pvt13ChannelPacket8channelsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.25") align 8 %3, ptr noundef nonnull align 1 dereferenceable(4) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 3 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !96
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %.not101 = icmp eq ptr %2, null                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %.not166.a = icmp eq i8 %i.e, 0                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %xtraiter = and i64 %i.f, 1
  %i.m = icmp eq i8 %i.e, 1
  %unroll_iter = and i64 %i.f, 30
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod200 = trunc i8 %i.e to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %.thread119
  %.081153 = phi i64 [ 0, %.lr.ph161 ], [ %.283, %.thread119 ] ; 7 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.o = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.n)
  %.not = icmp eq i64 %i.o, 1
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.a, align 1, !tbaa !62    ; 4 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.r = add nuw i8 %i.p, 1                       ; 3 uses
  store i8 %i.r, ptr %i.a, align 1, !tbaa !62
  %i.s = zext i8 %i.r to i64
  %i.t = add nuw nsw i64 %.081153, %i.s
  %i.u = load i16, ptr %i.g, align 4, !tbaa !96
  %i.v = zext i16 %i.u to i64                     ; 2 uses
  %i.w = icmp samesign ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = sub nsw i64 %i.v, %.081153
  %i.y = trunc i64 %i.x to i8                     ; 2 uses
  store i8 %i.y, ptr %i.a, align 1, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi i8 [ %i.y, %bb.e ], [ %i.r, %bb.d ]  ; 3 uses
  br i1 %.not101, label %bb.i, label %.preheader126.a

.preheader126.a:                                  ; preds = %bb.f
  %i.aa = zext i8 %i.z to i64                     ; 3 uses
  %i.ab = add nuw nsw i64 %.081153, %i.aa
  %.not169.a = icmp eq i8 %i.z, 0
  br i1 %.not169.a, label %.thread119, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader126.a
  %i.ac = load ptr, ptr %3, align 8, !tbaa !157
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !157
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %.thread119, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge151
  %.093152 = phi i64 [ %i.av, %._crit_edge151 ], [ %.081153, %.lr.ph ] ; 2 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !157   ; 2 uses
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !157 ; 2 uses
  %.not124147 = icmp eq ptr %i.af, %i.ag
  br i1 %.not124147, label %._crit_edge151, label %.lr.ph150

.lr.ph150:                                        ; preds = %.lr.ph.split
  %i.ah = mul nuw nsw i64 %.093152, %i.f
  br i1 %.not166.a, label %._crit_edge151, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph150, %._crit_edge146.us
  %.sroa.0112.0148.us = phi ptr [ %i.au, %._crit_edge146.us ], [ %i.af, %.lr.ph150 ] ; 2 uses
  %i.ai = load i32, ptr %.sroa.0112.0148.us, align 4, !tbaa !3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.f
  %invariant.gep.us = getelementptr i8, ptr %2, i64 %i.ak
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.al = add nuw nsw i64 %.092144.us, 1          ; 2 uses
  %exitcond179.not = icmp eq i64 %i.al, %i.f
  br i1 %exitcond179.not, label %._crit_edge146.us, label %bb.h, !llvm.loop !166

bb.h:                                             ; preds = %.lr.ph.us, %bb.g
  %.092144.us = phi i64 [ 0, %.lr.ph.us ], [ %i.al, %bb.g ] ; 2 uses
  %i.am = xor i64 %.092144.us, -1
  %i.an = load i32, ptr %i.l, align 4, !tbaa !159
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ah, %i.ao
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.ap
  %i.aq = getelementptr i8, ptr %gep.us, i64 %i.am
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.f
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.at = call i64 @fread(ptr noundef %i.ar, i64 noundef 1, i64 noundef 1, ptr noundef %i.as)
  %.not107.us = icmp eq i64 %i.at, 1
  br i1 %.not107.us, label %bb.g, label %.loopexit

._crit_edge146.us:                                ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0112.0148.us, i64 4 ; 2 uses
  %.not124.us = icmp eq ptr %i.au, %i.ag
  br i1 %.not124.us, label %._crit_edge151, label %.lr.ph.us

._crit_edge151:                                   ; preds = %._crit_edge146.us, %.lr.ph150, %.lr.ph.split
  %i.av = add nuw nsw i64 %.093152, 1             ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.ab
  br i1 %i.aw, label %.lr.ph.split, label %.thread119, !llvm.loop !167

bb.i:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.ay = zext i8 %i.z to i64                     ; 2 uses
  %i.az = mul nuw nsw i64 %i.ay, %i.f
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.bb = load ptr, ptr %3, align 8, !tbaa !85
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  %i.bg = mul i64 %i.az, %i.bf
  %i.bh = call i32 @fseek(ptr noundef %i.ax, i64 noundef %i.bg, i32 noundef 1)
  %.not106 = icmp eq i32 %i.bh, 0
  br i1 %.not106, label %.thread119, label %.loopexit

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i16 0, ptr %i.b, align 2, !tbaa !168
  %i.bi = icmp eq i8 %i.p, -128
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.bk = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 2, ptr noundef %i.bj)
  %.not100 = icmp eq i64 %i.bk, 2
  br i1 %.not100, label %.lr.ph.i.preheader, label %.critedge110

.lr.ph.i.preheader:                               ; preds = %bb.k
  %.promoted = load i16, ptr %i.b, align 2, !tbaa !168
  %i.bl = call noundef i16 @llvm.bswap.i16(i16 %.promoted)
  br label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit

bb.l:                                             ; preds = %bb.j
  %i.bm = zext i8 %i.p to i16
  %i.bn = add nsw i16 %i.bm, -127
  br label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit: ; preds = %.lr.ph.i.preheader, %bb.l
  %i.bo = phi i16 [ %i.bn, %bb.l ], [ %i.bl, %.lr.ph.i.preheader ] ; 3 uses
  br i1 %.not101, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.bq = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2
  %i.bv = mul i64 %i.bu, %i.f                     ; 3 uses
  %i.bw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bv) #32
          to label %bb.n unwind label %bb.o       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.by = call i64 @fread(ptr noundef nonnull %i.bw, i64 noundef 1, i64 noundef %i.bv, ptr noundef %i.bx)
  %.not104 = icmp eq i64 %i.by, %i.bv
  br i1 %.not104, label %.preheader127, label %.critedge110

.preheader127:                                    ; preds = %bb.n
  %i.bz = zext i16 %i.bo to i64                   ; 2 uses
  %i.ca = add nuw nsw i64 %.081153, %i.bz
  %.not167.a = icmp eq i16 %i.bo, 0
  br i1 %.not167.a, label %._crit_edge, label %.preheader125.lr.ph

.preheader125.lr.ph:                              ; preds = %.preheader127
  %i.cb = load ptr, ptr %i.k, align 8, !tbaa !82  ; 2 uses
  %i.cc = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 2
  %.not168 = icmp eq ptr %i.cb, %i.cc
  %brmerge = select i1 %.not168, i1 true, i1 %.not166.a
  br i1 %brmerge, label %._crit_edge, label %.preheader125.us.us

.preheader125.us.us:                              ; preds = %.preheader125.lr.ph, %._crit_edge137.split.us.us.us
  %.080138.us.us = phi i64 [ %i.ea, %._crit_edge137.split.us.us.us ], [ %.081153, %.preheader125.lr.ph ] ; 2 uses
  %i.ch = mul nuw nsw i64 %.080138.us.us, %i.f    ; 3 uses
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader125.us.us
  %.079136.us.us.us = phi i64 [ 0, %.preheader125.us.us ], [ %i.dz, %._crit_edge.us.us.us ] ; 3 uses
  %i.ci = mul i64 %.079136.us.us.us, %i.f
  %i.cj = getelementptr i8, ptr %i.bw, i64 %i.ci  ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.079136.us.us.us ; 3 uses
  br i1 %i.m, label %.epil.preheader, label %.preheader.us.us.us.new

.preheader.us.us.us.new:                          ; preds = %.preheader.us.us.us, %.preheader.us.us.us.new
  %.078135.us.us.us = phi i64 [ %i.dl, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ]
  %i.cl = xor i64 %.078135.us.us.us, -1
  %i.cm = add nsw i64 %i.cl, %i.f                 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cj, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !62
  %i.cp = load i32, ptr %i.l, align 4, !tbaa !159
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul nsw i64 %i.ch, %i.cq
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.ct, %i.f
  %i.cv = getelementptr i8, ptr %2, i64 %i.cr
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.cu
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.cm
  store i8 %i.co, ptr %i.cx, align 1, !tbaa !62
  %i.cy = xor i64 %.078135.us.us.us, -2
  %i.cz = add nsw i64 %i.cy, %i.f                 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cj, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !62
  %i.dc = load i32, ptr %i.l, align 4, !tbaa !159
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %i.ch, %i.dd
  %i.df = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.dg = sext i32 %i.df to i64
  %i.dh = mul nsw i64 %i.dg, %i.f
  %i.di = getelementptr i8, ptr %2, i64 %i.de
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.dh
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.cz
  store i8 %i.db, ptr %i.dk, align 1, !tbaa !62
  %i.dl = add nuw nsw i64 %.078135.us.us.us, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.unr-lcssa, label %.preheader.us.us.us.new, !llvm.loop !169

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %.preheader.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %.preheader.us.us.us
  %.078135.us.us.us.epil.init = phi i64 [ 0, %.preheader.us.us.us ], [ %i.dl, %._crit_edge.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod200)
  %i.dm = xor i64 %.078135.us.us.us.epil.init, -1
  %i.dn = add nsw i64 %i.dm, %i.f                 ; 2 uses
  %i.do = getelementptr i8, ptr %i.cj, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !62
  %i.dq = load i32, ptr %i.l, align 4, !tbaa !159
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %i.ch, %i.dr
  %i.dt = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul nsw i64 %i.du, %i.f
  %i.dw = getelementptr i8, ptr %2, i64 %i.ds
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.dv
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dn
  store i8 %i.dp, ptr %i.dy, align 1, !tbaa !62
  br label %._crit_edge.us.us.us

._crit_edge.us.us.us:                             ; preds = %._crit_edge.us.us.us.unr-lcssa, %.epil.preheader
  %i.dz = add nuw i64 %.079136.us.us.us, 1        ; 2 uses
  %exitcond178.not = icmp eq i64 %i.dz, %i.cg
  br i1 %exitcond178.not, label %._crit_edge137.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !170

._crit_edge137.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.ea = add nuw nsw i64 %.080138.us.us, 1       ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.ca
  br i1 %i.eb, label %.preheader125.us.us, label %._crit_edge, !llvm.loop !171

bb.o:                                             ; preds = %bb.m
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.q

._crit_edge:                                      ; preds = %._crit_edge137.split.us.us.us, %.preheader125.lr.ph, %.preheader127
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #33
  br label %.critedge

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit
  %i.ed = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.ee = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.ef = load ptr, ptr %3, align 8, !tbaa !85
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 2
  %i.ek = mul i64 %i.ej, %i.f
  %i.el = call i32 @fseek(ptr noundef %i.ed, i64 noundef %i.ek, i32 noundef 1)
  %.not102 = icmp eq i32 %i.el, 0
  br i1 %.not102, label %..critedge_crit_edge, label %.critedge110

..critedge_crit_edge:                             ; preds = %bb.p
  %.pre = zext i16 %i.bo to i64
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %._crit_edge
  %.pre-phi180 = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.bz, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.thread119

bb.q:                                             ; preds = %bb.o
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !86
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = sub i64 %i.eo, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.ep) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.o, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %i.ec

.thread119:                                       ; preds = %._crit_edge151, %bb.i, %.preheader126.a, %.lr.ph, %.critedge
  %.pn = phi i64 [ %.pre-phi180, %.critedge ], [ %i.aa, %.lr.ph ], [ %i.ay, %bb.i ], [ 0, %.preheader126.a ], [ %i.aa, %._crit_edge151 ]
  %.283 = add nuw nsw i64 %.pn, %.081153          ; 2 uses
  %i.eq = load i16, ptr %i.g, align 4, !tbaa !96
  %i.er = zext i16 %i.eq to i64
  %.not170 = icmp samesign ult i64 %.283, %i.er
  br i1 %.not170, label %bb.b, label %.loopexit, !llvm.loop !172

.critedge110:                                     ; preds = %bb.n, %bb.k, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.i, %.thread119, %bb.h, %bb.a, %.critedge110
  %i.es = phi i1 [ false, %bb.h ], [ false, %.critedge110 ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.i ], [ true, %.thread119 ]
  %i.et = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i110 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIiSaIiEED2Ev.exit111, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !86
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

_ZNSt6vectorIiSaIiEED2Ev.exit111:                 ; preds = %.loopexit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %i.es
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_114SoftimageInputD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %i.e, align 8, !tbaa !60
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !61
  store i8 0, ptr %i.f, align 1, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.h, ptr %i.i, align 8, !tbaa !64
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i

_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_113softimage_pvt13ChannelPacketES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66
  %.not.i.i1.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i1.i.i, label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit, label %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i
  store ptr %i.l, ptr %i.m, align 8, !tbaa !66
  br label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit: ; preds = %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI9_G_fpos_tSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.s) #33
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EED2Ev.exit

_ZNSt6vectorI9_G_fpos_tSaIS0_EED2Ev.exit:         ; preds = %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit, %bb.d
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !62
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !63   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #33
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  tail call void @_ZN11OpenImageIO4v3_110ImageInputD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_114SoftimageInputD0Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_114SoftimageInputD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) #30
  tail call void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK11OpenImageIO4v3_114SoftimageInput11format_nameEv(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #9 align 2 {
bb.a:
  ret ptr @.str.17
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK11OpenImageIO4v3_110ImageInput8supportsENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef dead_on_return %1) unnamed_addr #9 align 2 {
bb.a:
  ret i32 0
}

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_110ImageInput10valid_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_110ImageInput10valid_fileEPNS0_10Filesystem7IOProxyE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecERKSA_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %2)
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_110ImageInput4specEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

declare void @_ZN11OpenImageIO4v3_110ImageInput4specEii(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::ImageSpec") align 8, ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef) unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_110ImageInput15spec_dimensionsEii(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::ImageSpec") align 8, ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13get_thumbnailERNS0_8ImageBufEi(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 %1, i32 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK11OpenImageIO4v3_110ImageInput16current_subimageEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #9 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK11OpenImageIO4v3_110ImageInput16current_miplevelEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #9 align 2 {
bb.a:
  ret i32 0
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescERKNS0_10image_spanISt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput26read_native_deep_scanlinesEiiiiiiiRNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_tilesEiiiiiiiiiiRNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput22read_native_deep_imageEiiRNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13read_scanlineEiiNS0_8TypeDescEPvl(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput14read_scanlinesEiiiiiiiNS0_8TypeDescEPvll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput9read_tileEiiiNS0_8TypeDescEPvlll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_tilesEiiiiiiiiiiNS0_8TypeDescEPvlll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput10read_imageEiiiiNS0_8TypeDescEPvlllPFbS3_fES3_(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput21read_native_scanlinesEiiiiNS0_4spanISt4byteLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span") align 8) unnamed_addr #1
end_hunk_1
