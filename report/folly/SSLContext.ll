inline.NumInlined: 1423
inline.NumDeleted: 749
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5folly10SSLContext18unsetNextProtocolsEv:bb.a
  %.not.i.i3.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i3.i, label %_ZN5folly10SSLContext26deleteNextProtocolsStringsEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt6vectorIN5folly10SSLContext27AdvertisedNextProtocolsItemESaIS2_EE5clearEv.exit.i
  store ptr %i.h, ptr %i.i, align 8, !tbaa !9339
  br label %_ZN5folly10SSLContext26deleteNextProtocolsStringsEv.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.sroa.04.07.i = phi ptr [ %i.l, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !9340 ; 2 uses
  %i.k = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0.copyload.i) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %._crit_edge.i, label %.lr.ph.i

_ZN5folly10SSLContext26deleteNextProtocolsStringsEv.exit: ; preds = %_ZNSt6vectorIN5folly10SSLContext27AdvertisedNextProtocolsItemESaIS2_EE5clearEv.exit.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9129
  tail call void @SSL_CTX_set_alpn_select_cb(ptr noundef %i.o, ptr noundef null, ptr noundef null)
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !9129
  %i.q = tail call i32 @SSL_CTX_set_alpn_protos(ptr noundef %i.p, ptr noundef null, i32 noundef 0) ; 0 uses
  tail call void @ERR_clear_error()
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #14

declare void @SSL_CTX_set_alpn_select_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @SSL_CTX_set_alpn_protos(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt21discrete_distributionIiE10param_typeC2IN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_SA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.e, label %bb.b, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #32
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.thread.i.i, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.f = getelementptr inbounds nuw [8 x i8], ptr null, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !9319
  br label %.loopexit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.h = shl nuw nsw i64 %i.c, 1
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #35
          to label %.noexc5.i unwind label %bb.c  ; 5 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  store ptr %i.i, ptr %0, align 8, !tbaa !9318
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !9319
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %.noexc5.i
  %n.vec = and i64 %i.d, 1152921504606846972      ; 4 uses
  %i.l = and i64 %i.d, 3
  %i.m = shl nuw nsw i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %i.i, i64 %i.m     ; 2 uses
  %i.o = shl nuw nsw i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %1, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  %i.r = shl i64 %index, 2
  %next.gep22 = getelementptr i8, ptr %1, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep22, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep22, align 4, !tbaa !9192
  %wide.load23 = load <2 x i32>, ptr %i.s, align 4, !tbaa !9192
  %i.t = sitofp <2 x i32> %wide.load to <2 x double>
  %i.u = sitofp <2 x i32> %wide.load23 to <2 x double>
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %i.t, ptr %next.gep, align 8, !tbaa !9389
  store <2 x double> %i.u, ptr %i.v, align 8, !tbaa !9389
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !9412

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %middle.block, %.noexc5.i
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.d, %.noexc5.i ], [ %i.l, %middle.block ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %.noexc5.i ], [ %i.n, %middle.block ] ; 4 uses
  %.0910.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %1, %.noexc5.i ], [ %i.p, %middle.block ] ; 3 uses
  %i.x = load i32, ptr %.0910.i.i.i.i.i.i.i.i.i.i.ph, align 4, !tbaa !9192
  %i.y = sitofp i32 %i.x to double
  store double %i.y, ptr %.0811.i.i.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !9389
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.ph, i64 8 ; 2 uses
  %i.aa = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.i.i.ph, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.1:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.ph, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !9192
  %i.ad = sitofp i32 %i.ac to double
  store double %i.ad, ptr %i.z, align 8, !tbaa !9389
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.ph, i64 16 ; 2 uses
  %i.af = icmp eq i64 %.012.i.i.i.i.i.i.i.i.i.i.ph, 3
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2, label %.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.2:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i.i.ph, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9192
  %i.ai = sitofp i32 %i.ah to double
  store double %i.ai, ptr %i.ae, align 8, !tbaa !9389
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.ph, i64 24
  br label %.loopexit

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !9318  ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i6.i, label %.body, label %.body.sink.split

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2, %middle.block, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.thread.i.i
  %.08.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.thread.i.i ], [ %i.n, %middle.block ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1 ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.08.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.am, align 8, !tbaa !9415
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  invoke void @_ZNSt21discrete_distributionIiE10param_type13_M_initializeEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.loopexit
  ret void

bb.e:                                             ; preds = %.loopexit
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !9318 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !9319
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #30
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  %i.av = load ptr, ptr %0, align 8, !tbaa !9318  ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i9, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  %.sink19 = phi ptr [ %i.al, %bb.c ], [ %i.av, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.ak, %bb.c ], [ %i.ao, %_ZNSt6vectorIdSaIdEED2Ev.exit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !9319
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %.sink19 to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink19, i64 noundef %i.ba) #30
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.c ], [ %i.ao, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %.pn.ph, %.body.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt21discrete_distributionIiE10param_type13_M_initializeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9415 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9318   ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp ult i64 %i.g, 2
  %.not.i.i = icmp eq ptr %i.b, %i.c              ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.b
  store ptr %i.c, ptr %i.a, align 8, !tbaa !9415
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.06.i = phi double [ %i.j, %.lr.ph.i ], [ 0.000000e+00, %bb.c ]
  %.sroa.02.05.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.i = load double, ptr %.sroa.02.05.i, align 8, !tbaa !9389
  %i.j = fadd double %.06.i, %i.i                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %.lr.ph.i10.preheader, label %.lr.ph.i, !llvm.loop !9416

.lr.ph.i10.preheader:                             ; preds = %.lr.ph.i
  %i.m = add i64 %i.d, -8
  %i.n = sub i64 %i.m, %i.e
  %i.o = lshr i64 %i.n, 3                         ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.iters.check, label %.lr.ph.i10.preheader21, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i10.preheader
  %1 = sub i64 %i.d, %i.e
  %2 = and i64 %1, 7
  %ident.check.not = icmp eq i64 %2, 0
  br i1 %ident.check.not, label %vector.ph, label %.lr.ph.i10.preheader21

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.p, 4611686018427387902      ; 3 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = getelementptr i8, ptr %i.c, i64 %i.q
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.s ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !9389
  %i.t = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.t, ptr %next.gep, align 8, !tbaa !9389
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !9417

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit, label %.lr.ph.i10.preheader21

.lr.ph.i10.preheader21:                           ; preds = %vector.scevcheck, %.lr.ph.i10.preheader, %middle.block
  %.sroa.0.07.i.ph = phi ptr [ %i.c, %vector.scevcheck ], [ %i.c, %.lr.ph.i10.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.preheader21, %.lr.ph.i10
  %.sroa.0.07.i = phi ptr [ %i.x, %.lr.ph.i10 ], [ %.sroa.0.07.i.ph, %.lr.ph.i10.preheader21 ] ; 3 uses
  %i.v = load double, ptr %.sroa.0.07.i, align 8, !tbaa !9389
  %i.w = fdiv double %i.v, %i.j
  store double %i.w, ptr %.sroa.0.07.i, align 8, !tbaa !9389
  %i.x = getelementptr i8, ptr %.sroa.0.07.i, i64 8 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.b
  br i1 %i.y, label %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit, label %.lr.ph.i10, !llvm.loop !9418

_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit: ; preds = %.lr.ph.i10, %middle.block
  %i.z = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.z, label %bb.d, label %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread

bb.d:                                             ; preds = %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #32
  unreachable

_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread: ; preds = %bb.c, %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9319
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !9318 ; 4 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.f
  br i1 %i.ah, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9415
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.af                    ; 3 uses
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #35 ; 4 uses
  %i.an = icmp sgt i64 %i.al, 0
  br i1 %i.an, label %bb.e, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %i.ad, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i: ; preds = %bb.e, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ad, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ag) #30
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !9387
  %.pre12.pre = load ptr, ptr %i.a, align 8, !tbaa !9387
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i: ; preds = %bb.f, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  %.pre12 = phi ptr [ %.pre12.pre, %bb.f ], [ %i.b, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.f ], [ %i.c, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i ]
  store ptr %i.am, ptr %i.aa, align 8, !tbaa !9318
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !9415
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f
  store ptr %i.ap, ptr %i.ab, align 8, !tbaa !9319
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt6vectorIdSaIdEE7reserveEm.exit:              ; preds = %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
  %i.aq = phi ptr [ %i.b, %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread ], [ %.pre12, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ]
  %i.ar = phi ptr [ %i.c, %_ZNSt8__detail11__normalizeIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_dEET0_T_S9_S8_RKT1_.exit.thread ], [ %.pre, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ]
  %i.as = tail call ptr @_ZSt11partial_sumIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_(ptr %i.ar, ptr %i.aq, ptr nonnull %i.aa) ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9415
  %i.av = load ptr, ptr %i.aa, align 8, !tbaa !9318 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr i8, ptr %i.av, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  store double 1.000000e+00, ptr %i.ba, align 8, !tbaa !9389
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %bb.b, %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt11partial_sumIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load double, ptr %0, align 8, !tbaa !9389 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9415 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9319 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double %i.b, ptr %i.d, align 8, !tbaa !9389
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !9415
  br label %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %2, align 8, !tbaa !9318   ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #32
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #35 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store double %i.b, ptr %i.t, align 8, !tbaa !9389
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #30
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  store ptr %i.s, ptr %2, align 8, !tbaa !9318
  store ptr %i.v, ptr %i.c, align 8, !tbaa !9415
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !9319
  br label %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit

_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit: ; preds = %bb.c, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i
  %i.x = phi ptr [ %i.f, %bb.c ], [ %i.w, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ]
  %i.y = phi ptr [ %i.g, %bb.c ], [ %i.v, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit9
  %i.ab = phi ptr [ %i.ax, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit9 ], [ %i.x, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit ] ; 3 uses
  %i.ac = phi ptr [ %i.ay, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit9 ], [ %i.y, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit ] ; 3 uses
  %i.ad = phi ptr [ %i.az, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit9 ], [ %i.z, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit ] ; 2 uses
  %.022 = phi double [ %i.af, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit9 ], [ %i.b, %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit ]
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !9389
  %i.af = fadd double %.022, %i.ae                ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  store double %i.af, ptr %i.ac, align 8, !tbaa !9389
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.c, align 8, !tbaa !9415
  br label %_ZNSt20back_insert_iteratorISt6vectorIdSaIdEEEaSERKd.exit9

bb.i:                                             ; preds = %.lr.ph
  %i.ah = load ptr, ptr %2, align 8, !tbaa !9318  ; 4 uses
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 6 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.j, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i3

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #32
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i3: ; preds = %bb.i
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i4 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i4, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i.i.i5 = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i5)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #35 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ak ; 2 uses
  store double %i.af, ptr %i.at, align 8, !tbaa !9389
  %i.au = icmp sgt i64 %i.ak, 0
end_hunk_0
begin_hunk_1_@llvm.umin.i32
!9218 = !{!"p1 _ZTS7x509_st", !9132, i64 0}
!9219 = !{!9220}
!9220 = distinct !{!9220, !9221, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9221 = distinct !{!9221, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9222 = !{!9223}
!9223 = distinct !{!9223, !9224, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9224 = distinct !{!9224, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9225 = distinct !{!9225, !9226}
!9226 = !{!"llvm.loop.mustprogress"}
!9227 = !{!9228}
!9228 = distinct !{!9228, !9229, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9229 = distinct !{!9229, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9230 = !{!9231}
!9231 = distinct !{!9231, !9232, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9232 = distinct !{!9232, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9233 = !{!9234}
!9234 = distinct !{!9234, !9235, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9235 = distinct !{!9235, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9236 = !{!9237}
!9237 = distinct !{!9237, !9238, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9238 = distinct !{!9238, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9239 = !{!9240, !9240, i64 0}
!9240 = !{!"p1 _ZTS11evp_pkey_st", !9132, i64 0}
!9241 = !{!9242}
!9242 = distinct !{!9242, !9243, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9243 = distinct !{!9243, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9244 = !{!9245}
!9245 = distinct !{!9245, !9246, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9246 = distinct !{!9246, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9247 = !{!9248, !9248, i64 0}
!9248 = !{!"p1 _ZTSSt10unique_ptrI7x509_stN5folly23static_function_deleterIS0_XadL_Z9X509_freeEEEEE", !9132, i64 0}
!9249 = !{!9250}
!9250 = distinct !{!9250, !9251, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9251 = distinct !{!9251, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9252 = !{!9253, !9248, i64 8}
!9253 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI7x509_stN5folly23static_function_deleterIS1_XadL_Z9X509_freeEEEEESaIS5_EE17_Vector_impl_dataE", !9248, i64 0, !9248, i64 8, !9248, i64 16}
!9254 = !{!9253, !9248, i64 0}
!9255 = !{!9256}
!9256 = distinct !{!9256, !9257, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9257 = distinct !{!9257, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9258 = distinct !{!9258, !9226}
!9259 = !{!9260}
!9260 = distinct !{!9260, !9261, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9261 = distinct !{!9261, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9262 = !{!9263}
!9263 = distinct !{!9263, !9264, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9264 = distinct !{!9264, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9265 = !{!9142, !9143, i64 0}
!9266 = !{!9144, !9145, i64 0}
!9267 = !{!9268, !9, i64 8}
!9268 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 8, !9, i64 12}
!9269 = !{!9268, !9, i64 12}
!9270 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !1008, file: !966, line: 139, type: !9271, scopeLine: 139, containingType: !1008, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!9271 = !DISubroutineType(types: !9272)
!9272 = !{null, !9273}
!9273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9274 = distinct !{null, null, null, null}
!9275 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !1008, file: !966, line: 143, type: !9271, scopeLine: 143, containingType: !1008, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!9276 = !{!9132, !9132, i64 0}
!9277 = !{!9147, !9132, i64 16}
!9278 = !{i64 0, i64 16, !9196}
!9279 = !{!9151, !9152, i64 8}
!9280 = !{!9151, !9152, i64 16}
!9281 = !{!9138, !9139, i64 0}
!9282 = !{!9130, !9136, i64 256}
!9283 = !{!9189, !9190, i64 0}
!9284 = !{!9285}
!9285 = distinct !{!9285, !9286, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9286 = distinct !{!9286, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9287 = !{!9288}
!9288 = distinct !{!9288, !9289, !"_ZSt11make_uniqueIN5folly15SSLAcceptRunnerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!9289 = distinct !{!9289, !"_ZSt11make_uniqueIN5folly15SSLAcceptRunnerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!9290 = !{!9159, !9159, i64 0}
!9291 = distinct !{null, null, null, null, null}
!9292 = !{!9190, !9190, i64 0}
!9293 = !DISubprogram(name: "~SessionLifecycleCallbacks", linkageName: "_ZN5folly10SSLContext25SessionLifecycleCallbacksD4Ev", scope: !4943, file: !15, line: 70, type: !9294, scopeLine: 70, containingType: !4943, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!9294 = !DISubroutineType(types: !9295)
!9295 = !{null, !9296}
!9296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9297 = distinct !{null, null}
!9298 = !{!9175, !9176, i64 0}
!9299 = !{!9175, !9176, i64 16}
!9300 = !{!9170, !9171, i64 0}
!9301 = !{!9170, !9171, i64 16}
!9302 = !{!9166, !9166, i64 0}
!9303 = !DISubprogram(name: "~OpenSSLTicketHandler", linkageName: "_ZN5folly20OpenSSLTicketHandlerD4Ev", scope: !2958, file: !2959, line: 36, type: !9304, scopeLine: 36, containingType: !2958, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!9304 = !DISubroutineType(types: !9305)
!9305 = !{null, !9306}
!9306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9307 = distinct !{null, null}
!9308 = distinct !{null, null}
!9309 = !{!"branch_weights", i32 1, i32 1048575}
!9310 = !{!9152, !9152, i64 0}
!9311 = !{!9312, !9312, i64 0}
!9312 = !{!"p1 _ZTS6ssl_st", !9132, i64 0}
!9313 = !{!9314, !9132, i64 24}
!9314 = !{!"_ZTSSt8functionIFvP6ssl_stEE", !9147, i64 0, !9132, i64 24}
!9315 = distinct !{null}
!9316 = !{!9146, !9132, i64 24}
!9317 = distinct !{null}
!9318 = !{!9182, !9183, i64 0}
!9319 = !{!9182, !9183, i64 16}
!9320 = !{!9151, !9152, i64 0}
!9321 = distinct !{!9321, !9226}
!9322 = distinct !{null, null}
!9323 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9324 = !{!9325}
!9325 = distinct !{!9325, !9326, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJiETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_: argument 0"}
!9326 = distinct !{!9326, !"_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJiETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_"}
!9327 = !{!9328}
!9328 = distinct !{!9328, !9329, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!9329 = distinct !{!9329, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!9330 = !{!9331, !9132, i64 48}
!9331 = !{!"_ZTSN5folly8FunctionIFivEEE", !10, i64 0, !9132, i64 48, !9132, i64 56}
!9332 = distinct !{null}
!9333 = !{!9334, !9132, i64 48}
!9334 = !{!"_ZTSN5folly8FunctionIFviEEE", !10, i64 0, !9132, i64 48, !9132, i64 56}
!9335 = distinct !{null}
!9336 = distinct !{null}
!9337 = !{!9171, !9171, i64 0}
!9338 = !{!9170, !9171, i64 8}
!9339 = !{!9175, !9176, i64 8}
!9340 = !{!9139, !9139, i64 0}
!9341 = distinct !{ptr @_ZNSt12__shared_ptrIN5folly3ssl17PasswordCollectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9342 = !{!9343, !9343, i64 0}
!9343 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9132, i64 0}
!9344 = distinct !{!9344, !9226}
!9345 = !{!9346}
!9346 = distinct !{!9346, !9347, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9347 = distinct !{!9347, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9348 = distinct !{!9348, !9226}
!9349 = distinct !{!9349, !9226}
!9350 = !{!9351}
!9351 = distinct !{!9351, !9352, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9352 = distinct !{!9352, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9353 = !{!9354, !9354, i64 0}
!9354 = !{!"p1 _ZTS20X509_VERIFY_PARAM_st", !9132, i64 0}
!9355 = !{!9356}
!9356 = distinct !{!9356, !9357, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9357 = distinct !{!9357, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9358 = !{!9359, !9359, i64 0}
!9359 = !{!"p1 _ZTS18stack_st_X509_NAME", !9132, i64 0}
!9360 = !{!9361, !9361, i64 0}
!9361 = !{!"p1 _ZTSSt10unique_ptrI12X509_name_stN5folly23static_function_deleterIS0_XadL_Z14X509_NAME_freeEEEEE", !9132, i64 0}
!9362 = !{!9363, !9363, i64 0}
!9363 = !{!"p1 _ZTS12X509_name_st", !9132, i64 0}
!9364 = !DISubprogram(name: "getPassword", linkageName: "_ZNK5folly3ssl17PasswordCollector11getPasswordERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi", scope: !976, file: !977, line: 40, type: !9365, scopeLine: 40, containingType: !976, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!9365 = !DISubroutineType(types: !9366)
!9366 = !{null, !9367, !9369, !24}
!9367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9368, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !976)
!9369 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !52, size: 64)
!9370 = !{!9371}
!9371 = distinct !{!9371, !9372, !"_ZSt19__relocate_object_aISt8functionIFvP6ssl_stEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!9372 = distinct !{!9372, !"_ZSt19__relocate_object_aISt8functionIFvP6ssl_stEES4_SaIS4_EEvPT_PT0_RT1_"}
!9373 = !{!9374}
!9374 = distinct !{!9374, !9372, !"_ZSt19__relocate_object_aISt8functionIFvP6ssl_stEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!9375 = !{!9371, !9374}
!9376 = distinct !{!9376, !9226}
!9377 = !{!9378}
!9378 = distinct !{!9378, !9379, !"_ZSt19__relocate_object_aISt8functionIFvP6ssl_stEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!9379 = distinct !{!9379, !"_ZSt19__relocate_object_aISt8functionIFvP6ssl_stEES4_SaIS4_EEvPT_PT0_RT1_"}
!9380 = !{!9381}
!9381 = distinct !{!9381, !9379, !"_ZSt19__relocate_object_aISt8functionIFvP6ssl_stEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!9382 = !{!9378, !9381}
!9383 = !{!9384, !9139, i64 0}
!9384 = !{!"_ZTSN5folly10SSLContext27AdvertisedNextProtocolsItemE", !9139, i64 0, !9, i64 8}
!9385 = !{!9384, !9, i64 8}
!9386 = !{i8 0, i8 2}
!9387 = !{!9183, !9183, i64 0}
!9388 = distinct !{!9388, !9226}
!9389 = !{!9390, !9390, i64 0}
!9390 = !{!"double", !10, i64 0}
!9391 = distinct !{!9391, !9226}
!9392 = distinct !{!9392, !9226}
!9393 = !{!9394, !9, i64 0}
!9394 = !{!"_ZTSN5folly10SSLContext17NextProtocolsItemE", !9, i64 0, !9395, i64 8}
!9395 = !{!"_ZTSNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !9396, i64 0}
!9396 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !9397, i64 0}
!9397 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implE", !9398, i64 0}
!9398 = !{!"_ZTSNSt8__detail17_List_node_headerE", !9399, i64 0, !9140, i64 16}
!9399 = !{!"_ZTSNSt8__detail15_List_node_baseE", !9400, i64 0, !9400, i64 8}
!9400 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !9132, i64 0}
!9401 = !{!9399, !9400, i64 8}
!9402 = !{!9399, !9400, i64 0}
!9403 = !{!9398, !9140, i64 16}
!9404 = !{!9396, !9140, i64 16}
!9405 = distinct !{!9405, !9226}
!9406 = distinct !{!9406, !9226}
!9407 = distinct !{!9407, !9226}
!9408 = !{!9176, !9176, i64 0}
!9409 = !{!9410, !9140, i64 16}
!9410 = !{!"_ZTSNSt7__cxx1110_List_baseIN5folly10SSLContext17NextProtocolsItemESaIS3_EEE", !9411, i64 0}
!9411 = !{!"_ZTSNSt7__cxx1110_List_baseIN5folly10SSLContext17NextProtocolsItemESaIS3_EE10_List_implE", !9398, i64 0}
!9412 = distinct !{!9412, !9226, !9413, !9414}
!9413 = !{!"llvm.loop.isvectorized", i32 1}
!9414 = !{!"llvm.loop.unroll.runtime.disable"}
!9415 = !{!9182, !9183, i64 8}
!9416 = distinct !{!9416, !9226}
!9417 = distinct !{!9417, !9226, !9413, !9414}
!9418 = distinct !{!9418, !9226, !9413}
!9419 = distinct !{!9419, !9226}
!9420 = !{!9421}
!9421 = distinct !{!9421, !9422, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev: argument 0"}
!9422 = distinct !{!9422, !"_ZN5folly10SSLContext9getErrorsB5cxx11Ev"}
!9423 = distinct !{!9423, !9226}
!9424 = distinct !{!9424, !9226}
!9425 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!9426 = !{!9427, !9427, i64 0}
!9427 = !{!"short", !10, i64 0}
!9428 = !{!9140, !9140, i64 0}
!9429 = distinct !{!9429, !9226}
!9430 = !{!9431, !9431, i64 0}
!9431 = !{!"p1 _ZTS14ssl_session_st", !9132, i64 0}
!9432 = !DISubprogram(name: "onNewSession", linkageName: "_ZN5folly10SSLContext25SessionLifecycleCallbacks12onNewSessionEP6ssl_stSt10unique_ptrI14ssl_session_stNS_23static_function_deleterIS5_XadL_Z16SSL_SESSION_freeEEEEE", scope: !4943, file: !15, line: 69, type: !9433, scopeLine: 69, containingType: !4943, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!9433 = !DISubroutineType(types: !9434)
!9434 = !{null, !9296, !7875, !9435}
!9435 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSLSessionUniquePtr", scope: !978, file: !5268, line: 128, baseType: !9436)
!9436 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<ssl_session_st, folly::static_function_deleter<ssl_session_st, &SSL_SESSION_free> >", scope: !54, file: !2370, line: 277, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !9437, templateParams: !9681, identifier: "_ZTSSt10unique_ptrI14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEE")
!9437 = !{!9438, !9694, !9699, !9702, !9706, !9709, !9722, !9726, !9727, !9732, !9737, !9740, !9743, !9746, !9749, !9753}
!9438 = !DIDerivedType(tag: DW_TAG_member, name: "_M_t", scope: !9436, file: !2370, line: 283, baseType: !9439, size: 64)
!9439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uniq_ptr_data<ssl_session_st, folly::static_function_deleter<ssl_session_st, &SSL_SESSION_free>, true, true>", scope: !54, file: !2370, line: 239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !9440, templateParams: !9693, identifier: "_ZTSSt15__uniq_ptr_dataI14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEELb1ELb1EE")
!9440 = !{!9441, !9684, !9689}
!9441 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !9439, baseType: !9442, extraData: i32 0)
!9442 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__uniq_ptr_impl<ssl_session_st, folly::static_function_deleter<ssl_session_st, &SSL_SESSION_free> >", scope: !54, file: !2370, line: 148, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !9443, templateParams: !9681, identifier: "_ZTSSt15__uniq_ptr_implI14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEE")
!9443 = !{!9444, !9638, !9642, !9651, !9655, !9659, !9663, !9668, !9671, !9674, !9675, !9678}
!9444 = !DIDerivedType(tag: DW_TAG_member, name: "_M_t", scope: !9442, file: !2370, line: 232, baseType: !9445, size: 64)
!9445 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<ssl_session_st *, folly::static_function_deleter<ssl_session_st, &SSL_SESSION_free> >", scope: !54, file: !2380, line: 1239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !9446, templateParams: !9637, identifier: "_ZTSSt5tupleIJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEE")
!9446 = !{!9447, !9612, !9613, !9619, !9623, !9629, !9634}
!9447 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !9445, baseType: !9448, flags: DIFlagPublic, extraData: i32 0)
!9448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, ssl_session_st *, folly::static_function_deleter<ssl_session_st, &SSL_SESSION_free> >", scope: !54, file: !2380, line: 259, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !9449, templateParams: !9608, identifier: "_ZTSSt11_Tuple_implILm0EJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEE")
!9449 = !{!9450, !9534, !9569, !9573, !9578, !9583, !9588, !9592, !9595, !9598, !9601, !9605}
!9450 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !9448, baseType: !9451, extraData: i32 0)
!9451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, folly::static_function_deleter<ssl_session_st, &SSL_SESSION_free> >", scope: !54, file: !2380, line: 489, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !9452, templateParams: !9530, identifier: "_ZTSSt11_Tuple_implILm1EJN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEEEE")
!9452 = !{!9453, !9501, !9505, !9510, !9514, !9517, !9520, !9523, !9527}
!9453 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !9451, baseType: !9454, flags: DIFlagPrivate, extraData: i32 0)
!9454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, folly::static_function_deleter<ssl_session_st, &SSL_SESSION_free>, true>", scope: !54, file: !2380, line: 79, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !9455, templateParams: !9499, identifier: "_ZTSSt10_Head_baseILm1EN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEELb1EE")
!9455 = !{!9456, !9471, !9475, !9479, !9484, !9488, !9491, !9496}
!9456 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !9454, file: !2380, line: 130, baseType: !9457, size: 8)
!9457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_function_deleter<ssl_session_st, &SSL_SESSION_free>", scope: !17, file: !5291, line: 301, size: 8, flags: DIFlagTypePassByValue, elements: !9458, templateParams: !9465, identifier: "_ZTSN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEE")
!9458 = !{!9459}
!9459 = !DISubprogram(name: "operator()", linkageName: "_ZNK5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEclEPS1_", scope: !9457, file: !5291, line: 302, type: !9460, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9460 = !DISubroutineType(types: !9461)
!9461 = !{null, !9462, !9464}
!9462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9463, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9457)
!9464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9128, size: 64)
!9465 = !{!9466, !9467}
!9466 = !DITemplateTypeParameter(name: "T", type: !9128)
!9467 = !DITemplateValueParameter(name: "f", type: !9468, value: ptr @SSL_SESSION_free)
!9468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9469, size: 64)
!9469 = !DISubroutineType(types: !9470)
!9470 = !{null, !9464}
!9471 = !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm1EN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEELb1EEC4Ev", scope: !9454, file: !2380, line: 81, type: !9472, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9472 = !DISubroutineType(types: !9473)
!9473 = !{null, !9474}
!9474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9454, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9475 = !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm1EN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEELb1EEC4ERKS3_", scope: !9454, file: !2380, line: 84, type: !9476, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9476 = !DISubroutineType(types: !9477)
!9477 = !{null, !9474, !9478}
!9478 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9463, size: 64)
!9479 = !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm1EN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEELb1EEC4ERKS4_", scope: !9454, file: !2380, line: 87, type: !9480, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9480 = !DISubroutineType(types: !9481)
!9481 = !{null, !9474, !9482}
!9482 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9483, size: 64)
!9483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9454)
!9484 = !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm1EN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEELb1EEC4EOS4_", scope: !9454, file: !2380, line: 88, type: !9485, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9485 = !DISubroutineType(types: !9486)
!9486 = !{null, !9474, !9487}
!9487 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !9454, size: 64)
!9488 = !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm1EN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEELb1EEC4ESt15allocator_arg_tSt13__uses_alloc0", scope: !9454, file: !2380, line: 95, type: !9489, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9489 = !DISubroutineType(types: !9490)
!9490 = !{null, !9474, !2636, !2643}
!9491 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1EN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEELb1EE7_M_headERS4_", scope: !9454, file: !2380, line: 125, type: !9492, scopeLine: 125, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9492 = !DISubroutineType(types: !9493)
!9493 = !{!9494, !9495}
!9494 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9457, size: 64)
!9495 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9454, size: 64)
!9496 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm1EN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEELb1EE7_M_headERKS4_", scope: !9454, file: !2380, line: 128, type: !9497, scopeLine: 128, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9497 = !DISubroutineType(types: !9498)
!9498 = !{!9478, !9482}
!9499 = !{!2663, !9500, !2665}
!9500 = !DITemplateTypeParameter(name: "_Head", type: !9457)
!9501 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEEEE7_M_headERS4_", scope: !9451, file: !2380, line: 497, type: !9502, scopeLine: 497, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9502 = !DISubroutineType(types: !9503)
!9503 = !{!9494, !9504}
!9504 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9451, size: 64)
!9505 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm1EJN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEEEE7_M_headERKS4_", scope: !9451, file: !2380, line: 500, type: !9506, scopeLine: 500, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9506 = !DISubroutineType(types: !9507)
!9507 = !{!9478, !9508}
!9508 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9509, size: 64)
!9509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9451)
!9510 = !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm1EJN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEEEEC4Ev", scope: !9451, file: !2380, line: 503, type: !9511, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9511 = !DISubroutineType(types: !9512)
!9512 = !{null, !9513}
!9513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9451, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9514 = !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm1EJN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEEEEC4ERKS3_", scope: !9451, file: !2380, line: 507, type: !9515, scopeLine: 507, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9515 = !DISubroutineType(types: !9516)
!9516 = !{null, !9513, !9478}
!9517 = !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm1EJN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEEEEC4ERKS4_", scope: !9451, file: !2380, line: 517, type: !9518, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9518 = !DISubroutineType(types: !9519)
!9519 = !{null, !9513, !9508}
!9520 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm1EJN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEEEEaSERKS4_", scope: !9451, file: !2380, line: 521, type: !9521, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!9521 = !DISubroutineType(types: !9522)
!9522 = !{!9504, !9513, !9508}
!9523 = !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm1EJN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEEEEC4EOS4_", scope: !9451, file: !2380, line: 527, type: !9524, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9524 = !DISubroutineType(types: !9525)
!9525 = !{null, !9513, !9526}
!9526 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !9451, size: 64)
!9527 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm1EJN5folly23static_function_deleterI14ssl_session_stXadL_Z16SSL_SESSION_freeEEEEEE7_M_swapERS4_", scope: !9451, file: !2380, line: 666, type: !9528, scopeLine: 666, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9528 = !DISubroutineType(types: !9529)
!9529 = !{null, !9513, !9504}
!9530 = !{!2663, !9531}
!9531 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !9532)
!9532 = !{!9533}
!9533 = !DITemplateTypeParameter(type: !9457)
!9534 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !9448, baseType: !9535, flags: DIFlagPrivate, extraData: i32 0)
!9535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, ssl_session_st *, false>", scope: !54, file: !2380, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !9536, templateParams: !9567, identifier: "_ZTSSt10_Head_baseILm0EP14ssl_session_stLb0EE")
!9536 = !{!9537, !9538, !9542, !9547, !9552, !9556, !9559, !9564}
!9537 = !DIDerivedType(tag: DW_TAG_member, name: "_M_head_impl", scope: !9535, file: !2380, line: 239, baseType: !9464, size: 64)
!9538 = !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm0EP14ssl_session_stLb0EEC4Ev", scope: !9535, file: !2380, line: 190, type: !9539, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9539 = !DISubroutineType(types: !9540)
!9540 = !{null, !9541}
!9541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9535, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9542 = !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm0EP14ssl_session_stLb0EEC4ERKS1_", scope: !9535, file: !2380, line: 193, type: !9543, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9543 = !DISubroutineType(types: !9544)
!9544 = !{null, !9541, !9545}
!9545 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9546, size: 64)
!9546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9464)
!9547 = !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm0EP14ssl_session_stLb0EEC4ERKS2_", scope: !9535, file: !2380, line: 196, type: !9548, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9548 = !DISubroutineType(types: !9549)
!9549 = !{null, !9541, !9550}
!9550 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9551, size: 64)
!9551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9535)
!9552 = !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm0EP14ssl_session_stLb0EEC4EOS2_", scope: !9535, file: !2380, line: 197, type: !9553, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9553 = !DISubroutineType(types: !9554)
!9554 = !{null, !9541, !9555}
!9555 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !9535, size: 64)
!9556 = !DISubprogram(name: "_Head_base", linkageName: "_ZNSt10_Head_baseILm0EP14ssl_session_stLb0EEC4ESt15allocator_arg_tSt13__uses_alloc0", scope: !9535, file: !2380, line: 204, type: !9557, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9557 = !DISubroutineType(types: !9558)
!9558 = !{null, !9541, !2636, !2643}
!9559 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EP14ssl_session_stLb0EE7_M_headERS2_", scope: !9535, file: !2380, line: 234, type: !9560, scopeLine: 234, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9560 = !DISubroutineType(types: !9561)
!9561 = !{!9562, !9563}
!9562 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9464, size: 64)
!9563 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9535, size: 64)
!9564 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt10_Head_baseILm0EP14ssl_session_stLb0EE7_M_headERKS2_", scope: !9535, file: !2380, line: 237, type: !9565, scopeLine: 237, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9565 = !DISubroutineType(types: !9566)
!9566 = !{!9545, !9550}
!9567 = !{!2733, !9568, !995}
!9568 = !DITemplateTypeParameter(name: "_Head", type: !9464)
!9569 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEE7_M_headERS5_", scope: !9448, file: !2380, line: 269, type: !9570, scopeLine: 269, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9570 = !DISubroutineType(types: !9571)
!9571 = !{!9562, !9572}
!9572 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9448, size: 64)
!9573 = !DISubprogram(name: "_M_head", linkageName: "_ZNSt11_Tuple_implILm0EJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEE7_M_headERKS5_", scope: !9448, file: !2380, line: 272, type: !9574, scopeLine: 272, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9574 = !DISubroutineType(types: !9575)
!9575 = !{!9545, !9576}
!9576 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9577, size: 64)
!9577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9448)
!9578 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEE7_M_tailERS5_", scope: !9448, file: !2380, line: 275, type: !9579, scopeLine: 275, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9579 = !DISubroutineType(types: !9580)
!9580 = !{!9581, !9572}
!9581 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9582, size: 64)
!9582 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Inherited", scope: !9448, file: !2380, line: 265, baseType: !9451)
!9583 = !DISubprogram(name: "_M_tail", linkageName: "_ZNSt11_Tuple_implILm0EJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEE7_M_tailERKS5_", scope: !9448, file: !2380, line: 278, type: !9584, scopeLine: 278, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9584 = !DISubroutineType(types: !9585)
!9585 = !{!9586, !9576}
!9586 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9587, size: 64)
!9587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9582)
!9588 = !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm0EJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEEC4Ev", scope: !9448, file: !2380, line: 280, type: !9589, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9589 = !DISubroutineType(types: !9590)
!9590 = !{null, !9591}
!9591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9448, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9592 = !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm0EJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEEC4ERKS1_RKS4_", scope: !9448, file: !2380, line: 284, type: !9593, scopeLine: 284, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9593 = !DISubroutineType(types: !9594)
!9594 = !{null, !9591, !9545, !9478}
!9595 = !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm0EJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEEC4ERKS5_", scope: !9448, file: !2380, line: 296, type: !9596, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9596 = !DISubroutineType(types: !9597)
!9597 = !{null, !9591, !9576}
!9598 = !DISubprogram(name: "operator=", linkageName: "_ZNSt11_Tuple_implILm0EJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEEaSERKS5_", scope: !9448, file: !2380, line: 300, type: !9599, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized | DISPFlagDeleted)
!9599 = !DISubroutineType(types: !9600)
!9600 = !{!9572, !9591, !9576}
!9601 = !DISubprogram(name: "_Tuple_impl", linkageName: "_ZNSt11_Tuple_implILm0EJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEEC4EOS5_", scope: !9448, file: !2380, line: 302, type: !9602, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9602 = !DISubroutineType(types: !9603)
!9603 = !{null, !9591, !9604}
!9604 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !9448, size: 64)
!9605 = !DISubprogram(name: "_M_swap", linkageName: "_ZNSt11_Tuple_implILm0EJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEE7_M_swapERS5_", scope: !9448, file: !2380, line: 469, type: !9606, scopeLine: 469, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9606 = !DISubroutineType(types: !9607)
!9607 = !{null, !9591, !9572}
!9608 = !{!2733, !9609}
!9609 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "_Elements", value: !9610)
!9610 = !{!9611, !9533}
!9611 = !DITemplateTypeParameter(type: !9464)
!9612 = !DISubprogram(name: "__nothrow_default_constructible", linkageName: "_ZNSt5tupleIJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEE31__nothrow_default_constructibleEv", scope: !9445, file: !2380, line: 1293, type: !193, scopeLine: 1293, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!9613 = !DISubprogram(name: "tuple", linkageName: "_ZNSt5tupleIJP14ssl_session_stN5folly23static_function_deleterIS0_XadL_Z16SSL_SESSION_freeEEEEEEC4ERKS5_", scope: !9445, file: !2380, line: 1356, type: !9614, scopeLine: 1356, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!9614 = !DISubroutineType(types: !9615)
!9615 = !{null, !9616, !9617}
!9616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9445, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!9617 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9618, size: 64)
!9618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9445)
end_hunk_1
