inline.NumInlined: 734
inline.NumDeleted: 191
begin_hunk_0_@_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 240
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !45 ; 6 uses
  %.not.i.i.i147 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i147, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  invoke void @_ZSt16__throw_bad_castv() #16
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 56
  %i.hx = load i8, ptr %i.hw, align 8, !tbaa !53
  %.not.i1.i.i149 = icmp eq i8 %i.hx, 0
  br i1 %.not.i1.i.i149, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 67
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !25
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hv)
          to label %.noexc153 unwind label %bb.h

.noexc153:                                        ; preds = %bb.ae
  %i.ia = load ptr, ptr %i.hv, align 8, !tbaa !33
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = invoke noundef signext i8 %i.ic(ptr noundef nonnull align 8 dereferenceable(570) %i.hv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150 unwind label %bb.h, !inline_history !58

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150: ; preds = %.noexc153, %bb.ad
  %.0.i.i.i151 = phi i8 [ %i.hz, %bb.ad ], [ %i.id, %.noexc153 ]
  %i.ie = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ho, i8 noundef signext %.0.i.i.i151)
          to label %.noexc155 unwind label %bb.h

.noexc155:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150
  %i.if = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ie)
          to label %_ZNSolsEPFRSoS_E.exit38 unwind label %bb.h ; 0 uses

_ZNSolsEPFRSoS_E.exit38:                          ; preds = %.noexc155
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ih = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ig)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZNSolsEPFRSoS_E.exit38
  %.not.i = icmp eq ptr %i.ih, null
  br i1 %.not.i, label %bb.af, label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit

bb.af:                                            ; preds = %.noexc
  %i.ii = load ptr, ptr %3, align 8, !tbaa !33
  %i.ij = getelementptr i8, ptr %i.ii, i64 -24
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = getelementptr inbounds i8, ptr %3, i64 %i.ik ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.in = load i32, ptr %i.im, align 8, !tbaa !35
  %i.io = or i32 %i.in, 4
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.il, i32 noundef %i.io)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit unwind label %bb.h

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit: ; preds = %.noexc, %bb.af
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ip = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.f
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
  %i.ir = load i64, ptr %i.f, align 8, !tbaa !25
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.is) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.ah:                                            ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.aj, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.it = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.f
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.ah
  %i.iv = load i64, ptr %i.f, align 8, !tbaa !25
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ExportGold9sortZonesEv(ptr noundef nonnull align 8 dereferenceable(188) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !59   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = sext i32 %i.c to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71   ; 2 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.g
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = sub nuw nsw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.p)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.q = icmp ugt i64 %i.n, %i.g
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.r, ptr %i.h, align 8, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.s = icmp sgt i32 %i.c, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 9 uses
  %.034 = phi i32 [ 0, %.lr.ph ], [ %i.cr, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4  ; 2 uses
  switch i32 %i.ad, label %bb.r [
    i32 3, label %bb.f
    i32 4, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !71  ; 4 uses
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !17  ; 4 uses
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 6 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775804
  br i1 %i.am, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #16
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.an = ashr exact i64 %i.al, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 2305843009213693951)
  %i.ar = select i1 %i.ap, i64 2305843009213693951, i64 %i.aq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #18 ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.al ; 2 uses
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.av, ptr %i.au, align 4, !tbaa !4
  %i.aw = icmp sgt i64 %i.al, 0
  br i1 %i.aw, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.al) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.at, ptr %i.w, align 8, !tbaa !17
  store ptr %i.ax, ptr %i.x, align 8, !tbaa !71
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  store ptr %i.ay, ptr %i.y, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.l:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %i.u, align 8, !tbaa !71  ; 4 uses
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !18
  %.not.i10 = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i10, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.bc, ptr %i.u, align 8, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.n:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !17  ; 4 uses
  %i.be = ptrtoint ptr %i.az to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 6 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775804
  br i1 %i.bh, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i11

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #16
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i11: ; preds = %bb.n
  %i.bi = ashr exact i64 %i.bg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i12 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i12, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 2305843009213693951)
  %i.bm = select i1 %i.bk, i64 2305843009213693951, i64 %i.bl ; 3 uses
  %.not.i.i.i13 = icmp ne i64 %i.bm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i13)
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #18 ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.bg ; 2 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !4
  %i.br = icmp sgt i64 %i.bg, 0
  br i1 %i.br, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i14

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr align 4 %i.bd, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i14

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i14: ; preds = %bb.p, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %.not.i17.i.i15 = icmp eq ptr %i.bd, null
  br i1 %.not.i17.i.i15, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i16, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i14
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bg) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i16

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i16: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i14
  store ptr %i.bo, ptr %i.t, align 8, !tbaa !17
  store ptr %i.bs, ptr %i.u, align 8, !tbaa !71
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.bt, ptr %i.v, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.r:                                             ; preds = %bb.e
  %i.bu = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 4 uses
  %i.bv = load ptr, ptr %i.ab, align 8, !tbaa !18
  %.not.i18 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i18, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store ptr %i.bx, ptr %i.aa, align 8, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.t:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %i.z, align 8, !tbaa !17  ; 4 uses
  %i.bz = ptrtoint ptr %i.bu to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 6 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775804
  br i1 %i.cc, label %bb.u, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i19

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #16
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i19: ; preds = %bb.t
  %i.cd = ashr exact i64 %i.cb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i20 = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i20, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 2305843009213693951)
  %i.ch = select i1 %i.cf, i64 2305843009213693951, i64 %i.cg ; 3 uses
  %.not.i.i.i21 = icmp ne i64 %i.ch, 0
  tail call void @llvm.assume(i1 %.not.i.i.i21)
  %i.ci = shl nuw nsw i64 %i.ch, 2
  %i.cj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #18 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %i.cb ; 2 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !4
  %i.cm = icmp sgt i64 %i.cb, 0
  br i1 %i.cm, label %bb.v, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i22

bb.v:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i19
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cj, ptr align 4 %i.by, i64 %i.cb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i22

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i22: ; preds = %bb.v, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %.not.i17.i.i23 = icmp eq ptr %i.by, null
  br i1 %.not.i17.i.i23, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i24, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cb) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i24

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i24: ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i22
  store ptr %i.cj, ptr %i.z, align 8, !tbaa !17
  store ptr %i.cn, ptr %i.aa, align 8, !tbaa !71
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.co, ptr %i.ab, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i24, %bb.s, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i16, %bb.m, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv
  store i32 %.034, ptr %i.cq, align 4, !tbaa !4
  %i.cr = add nsw i32 %i.ad, %.034
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !72
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2, double noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::basic_ofstream", align 8 ; 129 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4)
  %i.c = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNSolsEPFRSoS_E.exit270

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.e = load ptr, ptr %1, align 8, !tbaa !26, !noalias !74
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22, !noalias !74 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !19, !alias.scope !77
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.i, align 8, !tbaa !22, !alias.scope !77
  store i8 0, ptr %i.h, align 8, !tbaa !25, !alias.scope !77
  %i.j = add i64 %i.g, 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.j)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !22, !alias.scope !77
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.o = load i64, ptr %i.i, align 8, !tbaa !22, !alias.scope !77
  %i.p = and i64 %i.o, -4
  %i.q = icmp eq i64 %i.p, 4611686018427387900
  br i1 %i.q, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #16
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12, i64 noundef 4)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !26, !alias.scope !77 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.v = load ptr, ptr %5, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.w, ptr noundef %i.v, i32 noundef 16)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %.not.i = icmp eq ptr %i.x, null
  %i.y = load ptr, ptr %4, align 8, !tbaa !33
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !35
  %i.ae = or i32 %i.ad, 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc
  %.sink.i = phi i32 [ %i.ae, %bb.e ], [ 0, %.noexc ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ab, i32 noundef %.sink.i)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit unwind label %bb.h

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit: ; preds = %bb.f
  %i.af = load ptr, ptr %4, align 8, !tbaa !33
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %4, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !35
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.an = load ptr, ptr %5, align 8, !tbaa !26
  %i.ao = load i64, ptr %i.i, align 8, !tbaa !22
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.an, i64 noundef %i.ao)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.5, i64 noundef 12)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.h, !inline_history !44 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238
  call void @exit(i32 noundef 1) #17
  unreachable

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g, %bb.f, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.h
  br i1 %i.au, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit
  %i.av = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.h
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.i
  %i.ax = load i64, ptr %i.h, align 8, !tbaa !25
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i241

.body.sink.split:                                 ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.t, %bb.d ], [ %i.at, %bb.h ]
  %.pn.ph = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.as, %bb.h ]
  %i.az = load i64, ptr %i.h, align 8, !tbaa !25
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ba) #14
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.as, %bb.h ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.gj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i241: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.pr = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.bb = icmp eq i32 %.pr, 0
  br i1 %i.bb, label %bb.j, label %_ZNSolsEPFRSoS_E.exit270

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i241
  %i.bc = load ptr, ptr %4, align 8, !tbaa !33
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %4, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid:bb.a
          to label %.noexc422 unwind label %bb.en

.noexc422:                                        ; preds = %bb.ei
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i416: ; preds = %.loopexit1018
  %.not.i.i.i.i417 = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i417, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit424, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i416
  %i.aln = ashr exact i64 %sext, 30
  %i.alo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aln) #18
          to label %.noexc423 unwind label %bb.en ; 5 uses

.noexc423:                                        ; preds = %bb.ej
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.alo, i64 %i.all ; 2 uses
  store i32 0, ptr %i.alo, align 4, !tbaa !4
  %i.alq = add nsw i64 %i.all, -1                 ; 2 uses
  %i.alr = icmp eq i64 %i.alq, 0
  br i1 %i.alr, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit424, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i418

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i418: ; preds = %.noexc423
  %i.als = getelementptr i8, ptr %i.alo, i64 4
  %.idx.i.i.i.i.i.i.i419 = shl nuw nsw i64 %i.alq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.als, i8 0, i64 %.idx.i.i.i.i.i.i.i419, i1 false), !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit424

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit424:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i418, %.noexc423, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i416
  %.sroa.0838.0 = phi ptr [ %i.alo, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i418 ], [ %i.alo, %.noexc423 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i416 ] ; 7 uses
  %.sroa.11843.0 = phi ptr [ %i.alp, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i418 ], [ %i.alp, %.noexc423 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i416 ] ; 2 uses
  %i.alt = load i32, ptr %i.tn, align 8, !tbaa !106 ; 3 uses
  %i.alu = sext i32 %i.alt to i64                 ; 4 uses
  %i.alv = icmp slt i32 %i.alt, 0
  br i1 %i.alv, label %bb.ek, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i425

bb.ek:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit424
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc431 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit511.thread

.noexc431:                                        ; preds = %bb.ek
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i425: ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit424
  %.not.i.i.i.i426 = icmp eq i32 %i.alt, 0
  br i1 %.not.i.i.i.i426, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit442, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i425
  %i.alw = shl nuw nsw i64 %i.alu, 2              ; 2 uses
  %i.alx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alw) #18
          to label %.noexc432 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit511.thread ; 6 uses

.noexc432:                                        ; preds = %bb.el
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.alx, i64 %i.alu ; 3 uses
  store i32 0, ptr %i.alx, align 4, !tbaa !4
  %i.alz = add nsw i64 %i.alu, -1                 ; 3 uses
  %i.ama = icmp eq i64 %i.alz, 0                  ; 2 uses
  br i1 %i.ama, label %bb.em, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i427

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i427: ; preds = %.noexc432
  %i.amb = getelementptr i8, ptr %i.alx, i64 4
  %.idx.i.i.i.i.i.i.i428 = shl nuw nsw i64 %i.alz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.amb, i8 0, i64 %.idx.i.i.i.i.i.i.i428, i1 false), !tbaa !4
  br label %bb.em

bb.em:                                            ; preds = %.noexc432, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i427
  %i.amc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alw) #18
          to label %.noexc441 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit509.thread ; 5 uses

.noexc441:                                        ; preds = %bb.em
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.amc, i64 %i.alu ; 2 uses
  store i32 0, ptr %i.amc, align 4, !tbaa !4
  br i1 %i.ama, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit442, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i436

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i436: ; preds = %.noexc441
  %i.ame = getelementptr i8, ptr %i.amc, i64 4
  %.idx.i.i.i.i.i.i.i437 = shl nuw nsw i64 %i.alz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ame, i8 0, i64 %.idx.i.i.i.i.i.i.i437, i1 false), !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit442

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit442:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i436, %.noexc441, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i425
  %.sroa.11826.0937 = phi ptr [ %i.aly, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i436 ], [ %i.aly, %.noexc441 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i425 ] ; 2 uses
  %.sroa.0821.0933 = phi ptr [ %i.alx, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i436 ], [ %i.alx, %.noexc441 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i425 ] ; 6 uses
  %.sroa.0813.0 = phi ptr [ %i.amc, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i436 ], [ %i.amc, %.noexc441 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i425 ] ; 8 uses
  %.sroa.13.0 = phi ptr [ %i.amd, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i436 ], [ %i.amd, %.noexc441 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i425 ] ; 2 uses
  %i.amf = load ptr, ptr %i.oz, align 8, !tbaa !17
  %i.amg = load ptr, ptr %i.rb, align 8, !tbaa !17
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %i.amf, i32 noundef %i.ph, ptr noundef nonnull %.sroa.0821.0933, ptr noundef nonnull %i.amg)
          to label %.preheader1015 unwind label %bb.eo

.preheader1015:                                   ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit442
  %i.amh = icmp sgt i32 %i.ph, 0
  br i1 %i.amh, label %.lr.ph1121, label %._crit_edge1122

.lr.ph1121:                                       ; preds = %.preheader1015
  %i.ami = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count1202 = and i64 %i.pg, 2147483647
  br label %bb.ep

._crit_edge1122.loopexit:                         ; preds = %._crit_edge1114
  %i.amj = ptrtoint ptr %.sroa.10833.1.lcssa to i64
  br label %._crit_edge1122

._crit_edge1122:                                  ; preds = %._crit_edge1122.loopexit, %.preheader1015
  %.sroa.0828.0.lcssa = phi ptr [ null, %.preheader1015 ], [ %.sroa.0828.2.lcssa, %._crit_edge1122.loopexit ] ; 8 uses
  %.sroa.10833.0.lcssa = phi i64 [ 0, %.preheader1015 ], [ %i.amj, %._crit_edge1122.loopexit ]
  %.sroa.14.0.lcssa = phi ptr [ null, %.preheader1015 ], [ %.sroa.14.2.lcssa, %._crit_edge1122.loopexit ] ; 6 uses
  %i.amk = load ptr, ptr %i.rb, align 8, !tbaa !17
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %.sroa.0838.0, i32 noundef %i.ph, ptr noundef nonnull %.sroa.0813.0, ptr noundef nonnull %i.amk)
          to label %bb.ev unwind label %bb.eo

bb.en:                                            ; preds = %bb.ej, %bb.ei
  %i.aml = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit515

_ZNSt6vectorIiSaIiEED2Ev.exit511.thread:          ; preds = %bb.ek, %bb.el
  %i.amm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit513

_ZNSt6vectorIiSaIiEED2Ev.exit509.thread:          ; preds = %bb.em
  %i.amn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.eo:                                            ; preds = %._crit_edge1122, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit442
  %.sroa.0828.1 = phi ptr [ %.sroa.0828.0.lcssa, %._crit_edge1122 ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit442 ]
  %.sroa.14.1 = phi ptr [ %.sroa.14.0.lcssa, %._crit_edge1122 ], [ null, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit442 ]
  %i.amo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit507

bb.ep:                                            ; preds = %.lr.ph1121, %._crit_edge1114
  %indvars.iv1199 = phi i64 [ 0, %.lr.ph1121 ], [ %indvars.iv.next1200, %._crit_edge1114 ] ; 3 uses
  %.sroa.14.01119 = phi ptr [ null, %.lr.ph1121 ], [ %.sroa.14.2.lcssa, %._crit_edge1114 ] ; 2 uses
  %.sroa.10833.01118 = phi ptr [ null, %.lr.ph1121 ], [ %.sroa.10833.1.lcssa, %._crit_edge1114 ] ; 2 uses
  %.sroa.0828.01117 = phi ptr [ null, %.lr.ph1121 ], [ %.sroa.0828.2.lcssa, %._crit_edge1114 ] ; 2 uses
  %i.amp = load ptr, ptr %i.oz, align 8, !tbaa !17
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %i.amp, i64 %indvars.iv1199
  %i.amr = load i32, ptr %i.amq, align 4, !tbaa !4
  %i.ams = sext i32 %i.amr to i64                 ; 2 uses
  %i.amt = load ptr, ptr %i.ami, align 8, !tbaa !17
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.amt, i64 %i.ams
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !4
  %i.amw = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.ams ; 2 uses
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !4 ; 2 uses
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0838.0, i64 %indvars.iv1199
  store i32 %i.amx, ptr %i.amy, align 4, !tbaa !4
  %i.amz = icmp sgt i32 %i.amx, 0
  br i1 %i.amz, label %.lr.ph1113.preheader, label %._crit_edge1114

.lr.ph1113.preheader:                             ; preds = %bb.ep
  %i.ana = sext i32 %i.amv to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.og, i64 %i.ana
  br label %.lr.ph1113

._crit_edge1114:                                  ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.ep
  %.sroa.0828.2.lcssa = phi ptr [ %.sroa.0828.01117, %bb.ep ], [ %.sroa.0828.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.10833.1.lcssa = phi ptr [ %.sroa.10833.01118, %bb.ep ], [ %.sroa.10833.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.14.2.lcssa = phi ptr [ %.sroa.14.01119, %bb.ep ], [ %.sroa.14.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %indvars.iv.next1200 = add nuw nsw i64 %indvars.iv1199, 1 ; 2 uses
  %exitcond1203.not = icmp eq i64 %indvars.iv.next1200, %wide.trip.count1202
  br i1 %exitcond1203.not, label %._crit_edge1122.loopexit, label %bb.ep, !llvm.loop !120

.lr.ph1113:                                       ; preds = %.lr.ph1113.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %indvars.iv1196 = phi i64 [ 0, %.lr.ph1113.preheader ], [ %indvars.iv.next1197, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %.sroa.14.21110 = phi ptr [ %.sroa.14.01119, %.lr.ph1113.preheader ], [ %.sroa.14.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.10833.11109 = phi ptr [ %.sroa.10833.01118, %.lr.ph1113.preheader ], [ %.sroa.10833.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.sroa.0828.21108 = phi ptr [ %.sroa.0828.01117, %.lr.ph1113.preheader ], [ %.sroa.0828.6, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv1196
  %i.anb = load i32, ptr %gep, align 4, !tbaa !4
  %i.anc = load i32, ptr %i.b, align 4, !tbaa !4
  %i.and = add nsw i32 %i.anc, %i.anb             ; 2 uses
  %.not.i.i443 = icmp eq ptr %.sroa.10833.11109, %.sroa.14.21110
  br i1 %.not.i.i443, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %.lr.ph1113
  store i32 %i.and, ptr %.sroa.10833.11109, align 4, !tbaa !4
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.er:                                            ; preds = %.lr.ph1113
  %i.ane = ptrtoint ptr %.sroa.14.21110 to i64
  %i.anf = ptrtoint ptr %.sroa.0828.21108 to i64
  %i.ang = sub i64 %i.ane, %i.anf                 ; 6 uses
  %i.anh = icmp eq i64 %i.ang, 9223372036854775804
  br i1 %i.anh, label %bb.es, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.es:                                            ; preds = %bb.er
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #16
          to label %.noexc445.a unwind label %.loopexit.split-lp1011

.noexc445.a:                                      ; preds = %bb.es
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.er
  %i.ani = ashr exact i64 %i.ang, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ani, i64 1)
  %i.anj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ani ; 2 uses
  %i.ank = icmp ult i64 %i.anj, %i.ani
  %i.anl = call i64 @llvm.umin.i64(i64 %i.anj, i64 2305843009213693951)
  %i.anm = select i1 %i.ank, i64 2305843009213693951, i64 %i.anl ; 3 uses
  %.not.i.i.i.i444 = icmp ne i64 %i.anm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i444)
  %i.ann = shl nuw nsw i64 %i.anm, 2
  %i.ano = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ann) #18
          to label %.noexc446 unwind label %.loopexit1010 ; 4 uses

.noexc446:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.anp = getelementptr inbounds i8, ptr %i.ano, i64 %i.ang ; 2 uses
  store i32 %i.and, ptr %i.anp, align 4, !tbaa !4
  %i.anq = icmp sgt i64 %i.ang, 0
  br i1 %i.anq, label %bb.et, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.et:                                            ; preds = %.noexc446
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ano, ptr align 4 %.sroa.0828.21108, i64 %i.ang, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.et, %.noexc446
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0828.21108, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0828.21108, i64 noundef %i.ang) #14
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.eu, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.ano, i64 %i.anm
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.eq
  %.sroa.0828.6 = phi ptr [ %i.ano, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0828.21108, %bb.eq ] ; 2 uses
  %.pn997 = phi ptr [ %i.anp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.10833.11109, %bb.eq ]
  %.sroa.14.6 = phi ptr [ %i.anr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.14.21110, %bb.eq ] ; 2 uses
  %.sroa.10833.2 = getelementptr inbounds nuw i8, ptr %.pn997, i64 4 ; 2 uses
  %indvars.iv.next1197 = add nuw nsw i64 %indvars.iv1196, 1 ; 2 uses
  %i.ans = load i32, ptr %i.amw, align 4, !tbaa !4
  %i.ant = sext i32 %i.ans to i64
  %i.anu = icmp slt i64 %indvars.iv.next1197, %i.ant
  br i1 %i.anu, label %.lr.ph1113, label %._crit_edge1114, !llvm.loop !121

.loopexit1010:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1012 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit507

.loopexit.split-lp1011:                           ; preds = %bb.es
  %lpad.loopexit.split-lp1013 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit507

bb.ev:                                            ; preds = %._crit_edge1122
  %i.anv = ptrtoint ptr %.sroa.0828.0.lcssa to i64 ; 2 uses
  %i.anw = sub i64 %.sroa.10833.0.lcssa, %i.anv
  %i.anx = lshr exact i64 %i.anw, 2
  %i.any = trunc i64 %i.anx to i32                ; 2 uses
  invoke void @_ZN8Parallel6gatherEiPi(i32 noundef %i.any, ptr noundef nonnull %.sroa.0894.0)
          to label %bb.ew unwind label %bb.fh

bb.ew:                                            ; preds = %bb.ev
  %.not5.i447 = icmp eq ptr %.sroa.0894.0, %.0.i.i.i.i.i337
  br i1 %.not5.i447, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit463, label %.lr.ph.i448.preheader

.lr.ph.i448.preheader:                            ; preds = %bb.ew
  %i.anz = add i64 %.0.i.i.i.i.i3371437, -4
  %i.aoa = sub i64 %i.anz, %.sroa.0894.01438      ; 2 uses
  %i.aob = lshr i64 %i.aoa, 2
  %i.aoc = add nuw nsw i64 %i.aob, 1              ; 2 uses
  %min.iters.check1440 = icmp ult i64 %i.aoa, 28
  br i1 %min.iters.check1440, label %.lr.ph.i448.preheader1464, label %vector.ph1441

vector.ph1441:                                    ; preds = %.lr.ph.i448.preheader
  %n.vec1443 = and i64 %i.aoc, 9223372036854775800 ; 3 uses
  %i.aod = shl i64 %n.vec1443, 2
  %i.aoe = getelementptr i8, ptr %.sroa.0894.0, i64 %i.aod
  br label %vector.body1444

vector.body1444:                                  ; preds = %vector.body1444, %vector.ph1441
  %index1445 = phi i64 [ 0, %vector.ph1441 ], [ %index.next1451, %vector.body1444 ] ; 2 uses
  %vec.phi1446.a = phi <4 x i32> [ zeroinitializer, %vector.ph1441 ], [ %i.aoh, %vector.body1444 ]
  %vec.phi1447 = phi <4 x i32> [ zeroinitializer, %vector.ph1441 ], [ %i.aoi, %vector.body1444 ]
  %i.aof = shl i64 %index1445, 2
  %next.gep1448 = getelementptr i8, ptr %.sroa.0894.0, i64 %i.aof ; 2 uses
  %i.aog = getelementptr i8, ptr %next.gep1448, i64 16
  %wide.load1449.a = load <4 x i32>, ptr %next.gep1448, align 4, !tbaa !4
  %wide.load1450 = load <4 x i32>, ptr %i.aog, align 4, !tbaa !4
  %i.aoh = add <4 x i32> %wide.load1449.a, %vec.phi1446.a ; 2 uses
  %i.aoi = add <4 x i32> %wide.load1450, %vec.phi1447 ; 2 uses
  %index.next1451 = add nuw i64 %index1445, 8     ; 2 uses
  %i.aoj = icmp eq i64 %index.next1451, %n.vec1443
  br i1 %i.aoj, label %middle.block1452, label %vector.body1444, !llvm.loop !122

middle.block1452:                                 ; preds = %vector.body1444
  %bin.rdx1453 = add <4 x i32> %i.aoi, %i.aoh
  %i.aok = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1453) ; 2 uses
  %cmp.n1454 = icmp eq i64 %i.aoc, %n.vec1443
  br i1 %cmp.n1454, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit454, label %.lr.ph.i448.preheader1464

.lr.ph.i448.preheader1464:                        ; preds = %.lr.ph.i448.preheader, %middle.block1452
  %.07.i449.ph = phi i32 [ 0, %.lr.ph.i448.preheader ], [ %i.aok, %middle.block1452 ]
  %.sroa.02.06.i450.ph = phi ptr [ %.sroa.0894.0, %.lr.ph.i448.preheader ], [ %i.aoe, %middle.block1452 ]
  br label %.lr.ph.i448

.lr.ph.i448:                                      ; preds = %.lr.ph.i448.preheader1464, %.lr.ph.i448
  %.07.i449 = phi i32 [ %i.aom, %.lr.ph.i448 ], [ %.07.i449.ph, %.lr.ph.i448.preheader1464 ]
  %.sroa.02.06.i450 = phi ptr [ %i.aon, %.lr.ph.i448 ], [ %.sroa.02.06.i450.ph, %.lr.ph.i448.preheader1464 ] ; 2 uses
  %i.aol = load i32, ptr %.sroa.02.06.i450, align 4, !tbaa !4
  %i.aom = add nsw i32 %i.aol, %.07.i449          ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i450, i64 4 ; 2 uses
  %.not.i451 = icmp eq ptr %i.aon, %.0.i.i.i.i.i337
  br i1 %.not.i451, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit454, label %.lr.ph.i448, !llvm.loop !123

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit454: ; preds = %.lr.ph.i448, %middle.block1452
  %.lcssa1358 = phi i32 [ %i.aok, %middle.block1452 ], [ %i.aom, %.lr.ph.i448 ] ; 3 uses
  %i.aoo = sext i32 %.lcssa1358 to i64            ; 3 uses
  %i.aop = icmp slt i32 %.lcssa1358, 0
  br i1 %i.aop, label %bb.ex, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i455

bb.ex:                                            ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit454
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #16
          to label %.noexc461.a unwind label %bb.fi

.noexc461.a:                                      ; preds = %bb.ex
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i455: ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit454
  %.not.i.i.i.i456 = icmp eq i32 %.lcssa1358, 0
  br i1 %.not.i.i.i.i456, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit463, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i455
  %i.aoq = shl nuw nsw i64 %i.aoo, 2
  %i.aor = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aoq) #18
          to label %.noexc462 unwind label %bb.fi ; 5 uses

.noexc462:                                        ; preds = %bb.ey
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.aoo ; 2 uses
  store i32 0, ptr %i.aor, align 4, !tbaa !4
  %i.aot = add nsw i64 %i.aoo, -1                 ; 2 uses
  %i.aou = icmp eq i64 %i.aot, 0
  br i1 %i.aou, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit463, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i457

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i457: ; preds = %.noexc462
  %i.aov = getelementptr i8, ptr %i.aor, i64 4
  %.idx.i.i.i.i.i.i.i458 = shl nuw nsw i64 %i.aot, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aov, i8 0, i64 %.idx.i.i.i.i.i.i.i458, i1 false), !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit463

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit463:            ; preds = %bb.ew, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i457, %.noexc462, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i455
  %.sroa.0806.0 = phi ptr [ %i.aor, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i457 ], [ %i.aor, %.noexc462 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i455 ], [ null, %bb.ew ] ; 7 uses
  %.sroa.11.0 = phi ptr [ %i.aos, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i457 ], [ %i.aos, %.noexc462 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i455 ], [ null, %bb.ew ] ; 2 uses
  invoke void @_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi(ptr noundef nonnull %.sroa.0828.0.lcssa, i32 noundef %i.any, ptr noundef nonnull %.sroa.0806.0, ptr noundef nonnull %.sroa.0894.0)
          to label %bb.ez unwind label %bb.fj

bb.ez:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit463
  %i.aow = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4 ; 2 uses
  %i.aox = icmp eq i32 %i.aow, 0
  %i.aoy = load i32, ptr %i.tn, align 8
  %i.aoz = icmp sgt i32 %i.aoy, 0
  %or.cond233 = select i1 %i.aox, i1 %i.aoz, i1 false
  br i1 %or.cond233, label %bb.fa, label %bb.fw

bb.fa:                                            ; preds = %bb.ez
  %i.apa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.29, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit465 unwind label %bb.fj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit465: ; preds = %bb.fa
  %i.apb = load ptr, ptr %4, align 8, !tbaa !33
  %i.apc = getelementptr i8, ptr %i.apb, i64 -24
  %i.apd = load i64, ptr %i.apc, align 8
  %i.ape = getelementptr inbounds i8, ptr %4, i64 %i.apd
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 240
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !45 ; 6 uses
  %.not.i.i.i751 = icmp eq ptr %i.apg, null
  br i1 %.not.i.i.i751, label %.invoke1355, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i752

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i752: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit465
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 56
  %i.api = load i8, ptr %i.aph, align 8, !tbaa !53
  %.not.i1.i.i753 = icmp eq i8 %i.api, 0
  br i1 %.not.i1.i.i753, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i752
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apg, i64 67
  %i.apk = load i8, ptr %i.apj, align 1, !tbaa !25
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i754

bb.fc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i752
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.apg)
          to label %.noexc757 unwind label %bb.fj

.noexc757:                                        ; preds = %bb.fc
  %i.apl = load ptr, ptr %i.apg, align 8, !tbaa !33
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 48
  %i.apn = load ptr, ptr %i.apm, align 8
  %i.apo = invoke noundef signext i8 %i.apn(ptr noundef nonnull align 8 dereferenceable(570) %i.apg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i754 unwind label %bb.fj, !inline_history !58

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i754: ; preds = %.noexc757, %bb.fb
  %.0.i.i.i755 = phi i8 [ %i.apk, %bb.fb ], [ %i.apo, %.noexc757 ]
  %i.app = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %.0.i.i.i755)
          to label %.noexc759 unwind label %bb.fj

.noexc759:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i754
  %i.apq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.app)
end_hunk_1
