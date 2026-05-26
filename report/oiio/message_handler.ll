inline.NumInlined: 278
inline.NumDeleted: 178
begin_hunk_0_@_ZN22photos_editing_formats8image_io18VectorMessageStore13ClearMessagesEv:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io18VectorMessageStore10AddMessageERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8
  store i64 %i.f, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !37
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.l, ptr %i.a, align 8, !tbaa !40
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !38
  %i.o = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.o, ptr %i.i, align 8, !tbaa !41
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.p = phi ptr [ %i.n, %.noexc.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN22photos_editing_formats8image_io7MessageC2ERKS1_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !41
  store i8 %i.q, ptr %i.p, align 1, !tbaa !41
  br label %_ZN22photos_editing_formats8image_io7MessageC2ERKS1_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZN22photos_editing_formats8image_io7MessageC2ERKS1_.exit.i

_ZN22photos_editing_formats8image_io7MessageC2ERKS1_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !39
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr %i.w, ptr %i.b, align 8, !tbaa !73
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZN22photos_editing_formats8image_io7MessageC2ERKS1_.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK22photos_editing_formats8image_io18VectorMessageStore11GetMessagesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = icmp ugt i64 %i.h, 230584300921369395
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN22photos_editing_formats8image_io7MessageEE8allocateEmPKv.exit.i.i.i.i, !prof !78

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt15__new_allocatorIN22photos_editing_formats8image_io7MessageEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #16
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN22photos_editing_formats8image_io7MessageEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIN22photos_editing_formats8image_io7MessageEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !76
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io7MessageESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %i.d, ptr %i.c, ptr noundef %i.k)
          to label %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EEC2ERKS4_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io7MessageESaIS2_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.g) #18
  br label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io7MessageESaIS2_EED2Ev.exit.i

_ZNSt12_Vector_baseIN22photos_editing_formats8image_io7MessageESaIS2_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EEC2ERKS4_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.l, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK22photos_editing_formats8image_io18VectorMessageStore16HasErrorMessagesEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %.not1213.not = icmp eq ptr %i.b, %i.d
  br i1 %.not1213.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.08.014 = phi ptr [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load i32, ptr %.sroa.08.014, align 8, !tbaa !29
  %.not.not = icmp ne i32 %i.e, 0                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.014, i64 40 ; 2 uses
  %.not12.not = icmp eq ptr %i.f, %i.d
  %or.cond = select i1 %.not.not, i1 true, i1 %.not12.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not12.lcssa = phi i1 [ false, %bb.a ], [ %.not.not, %.lr.ph ]
  ret i1 %.not12.lcssa
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN22photos_editing_formats8image_io7MessageEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN22photos_editing_formats8image_io7MessageEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN22photos_editing_formats8image_io7MessageEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyIN22photos_editing_formats8image_io7MessageEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZSt8_DestroyIN22photos_editing_formats8image_io7MessageEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !41
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #18
  br label %_ZSt8_DestroyIN22photos_editing_formats8image_io7MessageEEvPT_.exit.i

_ZSt8_DestroyIN22photos_editing_formats8image_io7MessageEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN22photos_editing_formats8image_io7MessageEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !74

_ZNSt12_Destroy_auxILb0EE9__destroyIPN22photos_editing_formats8image_io7MessageEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN22photos_editing_formats8image_io7MessageEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !70     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

_ZNKSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %3 = icmp ult i64 %i.j, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 230584300921369395)
  %4 = select i1 %3, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %4, 40                   ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  %i.q = load i64, ptr %2, align 8
  store i64 %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !37
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !38   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.w, ptr %i.a, align 8, !tbaa !40
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.y, ptr %i.r, align 8, !tbaa !38
  %i.z = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.z, ptr %i.t, align 8, !tbaa !41
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.t, %_ZNKSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.w, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !41
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !41
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !39
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !83, !noalias !80
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !alias.scope !80, !noalias !83
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !37, !alias.scope !80, !noalias !83
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !38, !alias.scope !83, !noalias !80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !39, !alias.scope !83, !noalias !80 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !85
  br label %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !38, !alias.scope !80, !noalias !83
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !41, !alias.scope !83, !noalias !80
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !41, !alias.scope !80, !noalias !83
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !39, !alias.scope !83, !noalias !80
  br label %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.as = phi i64 [ %i.ao, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.as, ptr %i.au, align 8, !tbaa !39, !alias.scope !80, !noalias !83
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !38, !alias.scope !83, !noalias !80
  store i64 0, ptr %i.at, align 8, !tbaa !39, !alias.scope !83, !noalias !80
  store i8 0, ptr %i.al, align 8, !tbaa !41, !alias.scope !83, !noalias !80
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !86

_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.e ], [ %i.aw, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ax, %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.ay = load i64, ptr %.0911.i.i.i29, align 8, !alias.scope !90, !noalias !87
  store i64 %i.ay, ptr %.012.i.i.i28, align 8, !alias.scope !87, !noalias !90
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24 ; 3 uses
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !37, !alias.scope !87, !noalias !90
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !38, !alias.scope !90, !noalias !87 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24 ; 5 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !39, !alias.scope !90, !noalias !87 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bh)
  %i.bi = add nuw nsw i64 %i.bg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bi, i1 false), !alias.scope !92
  br label %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !38, !alias.scope !87, !noalias !90
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !41, !alias.scope !90, !noalias !87
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !41, !alias.scope !87, !noalias !90
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !39, !alias.scope !90, !noalias !87
  br label %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.bk = phi i64 [ %i.bg, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !39, !alias.scope !87, !noalias !90
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !38, !alias.scope !90, !noalias !87
  store i64 0, ptr %i.bl, align 8, !tbaa !39, !alias.scope !90, !noalias !87
  store i8 0, ptr %i.bd, align 8, !tbaa !41, !alias.scope !90, !noalias !87
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bn, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !86

_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ax, %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bo, %_ZSt19__relocate_object_aIN22photos_editing_formats8image_io7MessageES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io7MessageESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !76
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bs) #18
  br label %_ZNSt12_Vector_baseIN22photos_editing_formats8image_io7MessageESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN22photos_editing_formats8image_io7MessageESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN22photos_editing_formats8image_io7MessageESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !70
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !73
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %4
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !76
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  %i.bx = call ptr @__cxa_begin_catch(ptr %i.bw) #17 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #18
  invoke void @__cxa_rethrow() #19
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bu

bb.l:                                             ; preds = %bb.i
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #20
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN22photos_editing_formats8image_io7MessageESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.s, %bb.d ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.08.013 = phi ptr [ %i.r, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %i.b = load i64, ptr %.sroa.08.013, align 8
  store i64 %i.b, ptr %.014, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.014, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !37
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.h, ptr %i.a, align 8, !tbaa !40
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.c, align 8, !tbaa !38
  %i.k = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.k, ptr %i.e, align 8, !tbaa !41
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %.lr.ph ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !41
  store i8 %i.m, ptr %i.l, align 1, !tbaa !41
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !39
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.014, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.r, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !93

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %i.u) #17 ; 0 uses
  invoke void @_ZSt8_DestroyIPN22photos_editing_formats8image_io7MessageEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #19
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.s, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.w

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #20
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN22photos_editing_formats8image_io12MessageStatsELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

end_hunk_0
