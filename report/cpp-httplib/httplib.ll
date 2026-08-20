inline.NumInlined: 21632
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN7httplib6detail6divideEPKcmcSt8functionIFvS2_mS2_mEE:bb.a

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit36: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit38: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit:                ; preds = %bb.b, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit36, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit38, %bb.g, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i, %bb.j
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.e, %bb.j ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %.029.lcssa.i.i.i, %bb.g ], [ %i.aj, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit38 ], [ %i.ai, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit36 ], [ %i.ah, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.b ] ; 3 uses
  %i.ak = icmp ne ptr %.028.i.i.i, %i.e           ; 2 uses
  %.neg30 = sext i1 %i.ak to i64
  %i.al = zext i1 %i.ak to i64
  %i.am = ptrtoint ptr %.028.i.i.i to i64
  %i.an = sub i64 %i.am, %i.g                     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 %i.al
  %.neg21 = add i64 %1, %.neg30
  %i.ap = sub i64 %.neg21, %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.a, align 8, !tbaa !314
  store i64 %i.an, ptr %i.b, align 8, !tbaa !78
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !314
  store i64 %i.ap, ptr %i.d, align 8, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !159
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %bb.k, label %_ZNKSt8functionIFvPKcmS1_mEEclES1_mS1_m.exit

bb.k:                                             ; preds = %_ZSt4findIPKccET_S2_S2_RKT0_.exit
  tail call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFvPKcmS1_mEEclES1_mS1_m.exit:     ; preds = %_ZSt4findIPKccET_S2_S2_RKT0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !373
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail6divideERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcSt8functionIFvPKcmSB_mEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i8 noundef signext %1, ptr nofree noundef align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.148", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !373
  store ptr %i.f, ptr %i.d, align 8, !tbaa !373
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !159  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvPKcmS1_mEEC2EOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !160
  store ptr %i.h, ptr %i.i, align 8, !tbaa !159
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvPKcmS1_mEEC2EOS3_.exit

_ZNSt8functionIFvPKcmS1_mEEC2EOS3_.exit:          ; preds = %bb.a, %bb.b
  invoke void @_ZN7httplib6detail6divideEPKcmcSt8functionIFvS2_mS2_mEE(ptr noundef %i.a, i64 noundef %i.c, i8 noundef signext %1, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZNSt8functionIFvPKcmS1_mEEC2EOS3_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !159  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  ret void

bb.f:                                             ; preds = %_ZNSt8functionIFvPKcmS1_mEEC2EOS3_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !159  ; 2 uses
  %.not.i4 = icmp eq ptr %i.q, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail5splitEPKcS2_cmSt8functionIFvS2_S2_EE(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, i8 noundef signext %2, i64 noundef %3, ptr nofree noundef align 8 dereferenceable(32) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %.not = icmp eq ptr %1, null
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  br i1 %.not, label %.split59.us, label %.split59

.split59.us:                                      ; preds = %bb.a
  %i.j = load i8, ptr %0, align 1, !tbaa !65      ; 2 uses
  %.not56.us72 = icmp eq i8 %i.j, 0
  br i1 %.not56.us72, label %.split61.us.thread, label %.lr.ph76

.lr.ph76:                                         ; preds = %.split59.us, %bb.e
  %i.k = phi i8 [ %i.z, %bb.e ], [ %i.j, %.split59.us ]
  %.0.us75 = phi i64 [ %.1.us, %bb.e ], [ 1, %.split59.us ] ; 3 uses
  %.032.us74 = phi i64 [ %.133.us, %bb.e ], [ 0, %.split59.us ] ; 3 uses
  %.034.us73 = phi i64 [ %.pre-phi, %bb.e ], [ 0, %.split59.us ] ; 4 uses
  %i.l = icmp eq i8 %i.k, %2
  %i.m = icmp ult i64 %.0.us75, %3
  %or.cond.us = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond.us, label %.critedge.i.us, label %.lr.ph76._crit_edge

.lr.ph76._crit_edge:                              ; preds = %.lr.ph76
  %.pre = add i64 %.034.us73, 1
  br label %bb.e

.critedge.i.us:                                   ; preds = %.lr.ph76
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.032.us74
  %.not16.i.us = icmp eq i64 %.034.us73, 0
  br i1 %.not16.i.us, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.us, label %.lr.ph18.i.us

.lr.ph18.i.us:                                    ; preds = %.critedge.i.us, %bb.b
  %.017.i.us = phi i64 [ %i.r, %bb.b ], [ %.034.us73, %.critedge.i.us ] ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 %.017.i.us
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !65
  switch i8 %i.q, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.us [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph18.i.us, %.lr.ph18.i.us
  %i.r = add i64 %.017.i.us, -1                   ; 2 uses
  %.not.i.us = icmp eq i64 %i.r, 0
  br i1 %.not.i.us, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.us, label %.lr.ph18.i.us, !llvm.loop !365

_ZN7httplib6detail4trimEPKcS2_mm.exit.us:         ; preds = %.lr.ph18.i.us, %bb.b, %.critedge.i.us
  %.0.lcssa.i.us = phi i64 [ 0, %.critedge.i.us ], [ 0, %bb.b ], [ %.017.i.us, %.lr.ph18.i.us ] ; 2 uses
  %i.s = icmp ult i64 %.032.us74, %.0.lcssa.i.us
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit.us
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.n, ptr %i.c, align 8, !tbaa !314
  store ptr %i.t, ptr %i.d, align 8, !tbaa !314
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !159
  %.not.i.i.us = icmp eq ptr %i.u, null
  br i1 %.not.i.i.us, label %.split64.us, label %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit.us

_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit.us:      ; preds = %bb.c
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !341
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit.us, %_ZN7httplib6detail4trimEPKcS2_mm.exit.us
  %i.w = add i64 %.034.us73, 1                    ; 2 uses
  %i.x = add i64 %.0.us75, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph76._crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre, %.lr.ph76._crit_edge ], [ %i.w, %bb.d ] ; 4 uses
  %.133.us = phi i64 [ %.032.us74, %.lr.ph76._crit_edge ], [ %i.w, %bb.d ] ; 2 uses
  %.1.us = phi i64 [ %.0.us75, %.lr.ph76._crit_edge ], [ %i.x, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.pre-phi
  %i.z = load i8, ptr %i.y, align 1, !tbaa !65    ; 2 uses
  %.not56.us = icmp eq i8 %i.z, 0
  br i1 %.not56.us, label %.split61.us, label %.lr.ph76, !llvm.loop !377

.split59:                                         ; preds = %bb.a
  %i.aa = icmp ult ptr %0, %1
  br i1 %i.aa, label %.lr.ph, label %.split61.us.thread

.lr.ph:                                           ; preds = %.split59, %.split
  %.070 = phi i64 [ %.1, %.split ], [ 1, %.split59 ] ; 3 uses
  %.03269 = phi i64 [ %.133, %.split ], [ 0, %.split59 ] ; 4 uses
  %.03467 = phi i64 [ %.pre-phi83, %.split ], [ 0, %.split59 ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.03467
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !65
  %i.ad = icmp eq i8 %i.ac, %2
  %i.ae = icmp ult i64 %.070, %3
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.f, label %.lr.ph..split_crit_edge

.lr.ph..split_crit_edge:                          ; preds = %.lr.ph
  %.pre82 = add nuw i64 %.03467, 1
  br label %.split

bb.f:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.03269 ; 2 uses
  %i.ag = icmp ult ptr %i.af, %1
  br i1 %i.ag, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %i.ah = phi ptr [ %i.ak, %bb.g ], [ %i.af, %bb.f ]
  %.01213.i = phi i64 [ %i.aj, %bb.g ], [ %.03269, %bb.f ] ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !65
  switch i8 %i.ai, label %.critedge.i [
    i8 32, label %bb.g
    i8 9, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.aj = add i64 %.01213.i, 1                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  %i.al = icmp ult ptr %i.ak, %1
  br i1 %i.al, label %.lr.ph.i, label %.critedge.i, !llvm.loop !364

.critedge.i:                                      ; preds = %bb.g, %.lr.ph.i, %bb.f
  %.012.lcssa.i = phi i64 [ %.03269, %bb.f ], [ %i.g, %bb.g ], [ %.01213.i, %.lr.ph.i ] ; 2 uses
  %.not16.i = icmp eq i64 %.03467, 0
  br i1 %.not16.i, label %_ZN7httplib6detail4trimEPKcS2_mm.exit, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.critedge.i, %bb.h
  %.017.i = phi i64 [ %i.ap, %bb.h ], [ %.03467, %.critedge.i ] ; 3 uses
  %i.am = getelementptr i8, ptr %0, i64 %.017.i
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !65
  switch i8 %i.ao, label %_ZN7httplib6detail4trimEPKcS2_mm.exit [
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph18.i, %.lr.ph18.i
  %i.ap = add i64 %.017.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %_ZN7httplib6detail4trimEPKcS2_mm.exit, label %.lr.ph18.i, !llvm.loop !365

_ZN7httplib6detail4trimEPKcS2_mm.exit:            ; preds = %.lr.ph18.i, %bb.h, %.critedge.i
  %.0.lcssa.i = phi i64 [ 0, %.critedge.i ], [ 0, %bb.h ], [ %.017.i, %.lr.ph18.i ] ; 2 uses
  %i.aq = icmp ult i64 %.012.lcssa.i, %.0.lcssa.i
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.012.lcssa.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !314
  store ptr %i.as, ptr %i.d, align 8, !tbaa !314
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !159
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %.split64.us, label %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit

.split64.us:                                      ; preds = %bb.i, %bb.c
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit:         ; preds = %bb.i
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !341
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit, %_ZN7httplib6detail4trimEPKcS2_mm.exit
  %i.av = add nuw i64 %.03467, 1                  ; 2 uses
  %i.aw = add i64 %.070, 1
  br label %.split

.split:                                           ; preds = %.lr.ph..split_crit_edge, %bb.j
  %.pre-phi83 = phi i64 [ %.pre82, %.lr.ph..split_crit_edge ], [ %i.av, %bb.j ] ; 2 uses
  %.133 = phi i64 [ %.03269, %.lr.ph..split_crit_edge ], [ %i.av, %bb.j ] ; 2 uses
  %.1 = phi i64 [ %.070, %.lr.ph..split_crit_edge ], [ %i.aw, %bb.j ]
  %exitcond.not = icmp eq i64 %.pre-phi83, %i.g
  br i1 %exitcond.not, label %bb.k, label %.lr.ph, !llvm.loop !377

.split61.us:                                      ; preds = %bb.e
  %.not40 = icmp eq i64 %.pre-phi, 0
  br i1 %.not40, label %.split61.us.thread, label %bb.k

bb.k:                                             ; preds = %.split, %.split61.us
  %.us-phi62105 = phi i64 [ %.133.us, %.split61.us ], [ %.133, %.split ] ; 3 uses
  %.us-phi104 = phi i64 [ %.pre-phi, %.split61.us ], [ %i.g, %.split ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.us-phi62105 ; 2 uses
  %i.ay = icmp ult ptr %i.ax, %1
  br i1 %i.ay, label %.lr.ph.i51, label %.critedge.i41

.lr.ph.i51:                                       ; preds = %bb.k, %bb.l
  %i.az = phi ptr [ %i.bc, %bb.l ], [ %i.ax, %bb.k ]
  %.01213.i52 = phi i64 [ %i.bb, %bb.l ], [ %.us-phi62105, %bb.k ] ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !65
  switch i8 %i.ba, label %.critedge.i41 [
    i8 32, label %bb.l
    i8 9, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph.i51, %.lr.ph.i51
  %i.bb = add i64 %.01213.i52, 1                  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %1
  br i1 %i.bd, label %.lr.ph.i51, label %.critedge.i41, !llvm.loop !364

.critedge.i41:                                    ; preds = %bb.l, %.lr.ph.i51, %bb.k
  %.012.lcssa.i42 = phi i64 [ %.us-phi62105, %bb.k ], [ %i.g, %bb.l ], [ %.01213.i52, %.lr.ph.i51 ] ; 2 uses
  br label %.lr.ph18.i44

.lr.ph18.i44:                                     ; preds = %.critedge.i41, %bb.m
  %.017.i45 = phi i64 [ %i.bh, %bb.m ], [ %.us-phi104, %.critedge.i41 ] ; 3 uses
  %i.be = getelementptr i8, ptr %0, i64 %.017.i45
  %i.bf = getelementptr i8, ptr %i.be, i64 -1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !65
  switch i8 %i.bg, label %_ZN7httplib6detail4trimEPKcS2_mm.exit53 [
    i8 32, label %bb.m
    i8 9, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph18.i44, %.lr.ph18.i44
  %i.bh = add i64 %.017.i45, -1                   ; 2 uses
  %.not.i46 = icmp eq i64 %i.bh, 0
  br i1 %.not.i46, label %_ZN7httplib6detail4trimEPKcS2_mm.exit53, label %.lr.ph18.i44, !llvm.loop !365

_ZN7httplib6detail4trimEPKcS2_mm.exit53:          ; preds = %.lr.ph18.i44, %bb.m
  %.0.lcssa.i47 = phi i64 [ 0, %bb.m ], [ %.017.i45, %.lr.ph18.i44 ] ; 2 uses
  %i.bi = icmp ult i64 %.012.lcssa.i42, %.0.lcssa.i47
  br i1 %i.bi, label %bb.n, label %.split61.us.thread

bb.n:                                             ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit53
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.012.lcssa.i42
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !314
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !314
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !159
  %.not.i.i54 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i54, label %bb.o, label %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit55

bb.o:                                             ; preds = %bb.n
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit55:       ; preds = %bb.n
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !341
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.split61.us.thread

.split61.us.thread:                               ; preds = %.split59, %.split59.us, %_ZN7httplib6detail4trimEPKcS2_mm.exit53, %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit55, %.split61.us
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail10split_findEPKcS2_cmSt8functionIFbS2_S2_EE(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, i8 noundef signext %2, i64 noundef %3, ptr nofree noundef align 8 dereferenceable(32) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %.not = icmp eq ptr %1, null
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  br i1 %.not, label %.split81.us, label %.split81

.split81.us:                                      ; preds = %bb.a
  %i.j = load i8, ptr %0, align 1, !tbaa !65      ; 2 uses
  %.not76.us96 = icmp eq i8 %i.j, 0
  br i1 %.not76.us96, label %.critedge, label %.lr.ph100

.lr.ph100:                                        ; preds = %.split81.us, %bb.e
  %i.k = phi i8 [ %i.aa, %bb.e ], [ %i.j, %.split81.us ]
  %.042.us99 = phi i64 [ %.244.us, %bb.e ], [ 1, %.split81.us ] ; 3 uses
  %.045.us98 = phi i64 [ %.247.us, %bb.e ], [ 0, %.split81.us ] ; 3 uses
  %.048.us97 = phi i64 [ %.pre-phi, %bb.e ], [ 0, %.split81.us ] ; 4 uses
  %i.l = icmp eq i8 %i.k, %2
  %i.m = icmp ult i64 %.042.us99, %3
  %or.cond.us = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond.us, label %.critedge.i.us, label %.lr.ph100._crit_edge

.lr.ph100._crit_edge:                             ; preds = %.lr.ph100
  %.pre = add i64 %.048.us97, 1
  br label %bb.e

.critedge.i.us:                                   ; preds = %.lr.ph100
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.045.us98
  %.not16.i.us = icmp eq i64 %.048.us97, 0
  br i1 %.not16.i.us, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.us, label %.lr.ph18.i.us

.lr.ph18.i.us:                                    ; preds = %.critedge.i.us, %bb.b
  %.017.i.us = phi i64 [ %i.r, %bb.b ], [ %.048.us97, %.critedge.i.us ] ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 %.017.i.us
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !65
  switch i8 %i.q, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.us [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph18.i.us, %.lr.ph18.i.us
  %i.r = add i64 %.017.i.us, -1                   ; 2 uses
  %.not.i.us = icmp eq i64 %i.r, 0
  br i1 %.not.i.us, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.us, label %.lr.ph18.i.us, !llvm.loop !365

_ZN7httplib6detail4trimEPKcS2_mm.exit.us:         ; preds = %.lr.ph18.i.us, %bb.b, %.critedge.i.us
  %.0.lcssa.i.us = phi i64 [ 0, %.critedge.i.us ], [ 0, %bb.b ], [ %.017.i.us, %.lr.ph18.i.us ] ; 2 uses
  %i.s = icmp ult i64 %.045.us98, %.0.lcssa.i.us
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit.us
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.n, ptr %i.c, align 8, !tbaa !314
  store ptr %i.t, ptr %i.d, align 8, !tbaa !314
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !159
  %.not.i.i.us = icmp eq ptr %i.u, null
  br i1 %.not.i.i.us, label %.split86.us, label %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit.us

_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit.us:      ; preds = %bb.c
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !378
  %i.w = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.w, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit.us, %_ZN7httplib6detail4trimEPKcS2_mm.exit.us
  %i.x = add i64 %.048.us97, 1                    ; 2 uses
  %i.y = add i64 %.042.us99, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph100._crit_edge, %bb.d
  %.pre-phi = phi i64 [ %.pre, %.lr.ph100._crit_edge ], [ %i.x, %bb.d ] ; 4 uses
  %.247.us = phi i64 [ %.045.us98, %.lr.ph100._crit_edge ], [ %i.x, %bb.d ] ; 2 uses
  %.244.us = phi i64 [ %.042.us99, %.lr.ph100._crit_edge ], [ %i.y, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.pre-phi
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !65   ; 2 uses
  %.not76.us = icmp eq i8 %i.aa, 0
  br i1 %.not76.us, label %.split83.us, label %.lr.ph100, !llvm.loop !381

.split81:                                         ; preds = %bb.a
  %i.ab = icmp ult ptr %0, %1
  br i1 %i.ab, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.split81, %.split
  %.04294 = phi i64 [ %.244, %.split ], [ 1, %.split81 ] ; 3 uses
  %.04593 = phi i64 [ %.247, %.split ], [ 0, %.split81 ] ; 4 uses
  %.04891 = phi i64 [ %.pre-phi108, %.split ], [ 0, %.split81 ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.04891
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !65
  %i.ae = icmp eq i8 %i.ad, %2
  %i.af = icmp ult i64 %.04294, %3
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.f, label %.lr.ph..split_crit_edge

.lr.ph..split_crit_edge:                          ; preds = %.lr.ph
  %.pre107 = add nuw i64 %.04891, 1
  br label %.split

bb.f:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.04593 ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %1
  br i1 %i.ah, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %i.ai = phi ptr [ %i.al, %bb.g ], [ %i.ag, %bb.f ]
  %.01213.i = phi i64 [ %i.ak, %bb.g ], [ %.04593, %bb.f ] ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !65
  switch i8 %i.aj, label %.critedge.i [
    i8 32, label %bb.g
    i8 9, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.ak = add i64 %.01213.i, 1                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak ; 2 uses
  %i.am = icmp ult ptr %i.al, %1
  br i1 %i.am, label %.lr.ph.i, label %.critedge.i, !llvm.loop !364

.critedge.i:                                      ; preds = %bb.g, %.lr.ph.i, %bb.f
  %.012.lcssa.i = phi i64 [ %.04593, %bb.f ], [ %i.g, %bb.g ], [ %.01213.i, %.lr.ph.i ] ; 2 uses
  %.not16.i = icmp eq i64 %.04891, 0
  br i1 %.not16.i, label %_ZN7httplib6detail4trimEPKcS2_mm.exit, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.critedge.i, %bb.h
  %.017.i = phi i64 [ %i.aq, %bb.h ], [ %.04891, %.critedge.i ] ; 3 uses
  %i.an = getelementptr i8, ptr %0, i64 %.017.i
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !65
  switch i8 %i.ap, label %_ZN7httplib6detail4trimEPKcS2_mm.exit [
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph18.i, %.lr.ph18.i
  %i.aq = add i64 %.017.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %_ZN7httplib6detail4trimEPKcS2_mm.exit, label %.lr.ph18.i, !llvm.loop !365

_ZN7httplib6detail4trimEPKcS2_mm.exit:            ; preds = %.lr.ph18.i, %bb.h, %.critedge.i
  %.0.lcssa.i = phi i64 [ 0, %.critedge.i ], [ 0, %bb.h ], [ %.017.i, %.lr.ph18.i ] ; 2 uses
  %i.ar = icmp ult i64 %.012.lcssa.i, %.0.lcssa.i
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.012.lcssa.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.as, ptr %i.c, align 8, !tbaa !314
  store ptr %i.at, ptr %i.d, align 8, !tbaa !314
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !159
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %.split86.us, label %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit

.split86.us:                                      ; preds = %bb.i, %bb.c
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit:         ; preds = %bb.i
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !378
  %i.aw = call noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.aw, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit, %_ZN7httplib6detail4trimEPKcS2_mm.exit
  %i.ax = add nuw i64 %.04891, 1                  ; 2 uses
  %i.ay = add i64 %.04294, 1
  br label %.split

.split:                                           ; preds = %.lr.ph..split_crit_edge, %bb.j
  %.pre-phi108 = phi i64 [ %.pre107, %.lr.ph..split_crit_edge ], [ %i.ax, %bb.j ] ; 2 uses
  %.247 = phi i64 [ %.04593, %.lr.ph..split_crit_edge ], [ %i.ax, %bb.j ] ; 2 uses
  %.244 = phi i64 [ %.04294, %.lr.ph..split_crit_edge ], [ %i.ay, %bb.j ]
  %exitcond.not = icmp eq i64 %.pre-phi108, %i.g
  br i1 %exitcond.not, label %bb.k, label %.lr.ph, !llvm.loop !381

.split83.us:                                      ; preds = %bb.e
  %.not58 = icmp eq i64 %.pre-phi, 0
  br i1 %.not58, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.split, %.split83.us
  %.us-phi84129 = phi i64 [ %.247.us, %.split83.us ], [ %.247, %.split ] ; 3 uses
  %.us-phi128 = phi i64 [ %.pre-phi, %.split83.us ], [ %i.g, %.split ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %.us-phi84129 ; 2 uses
  %i.ba = icmp ult ptr %i.az, %1
  br i1 %i.ba, label %.lr.ph.i71, label %.critedge.i61

.lr.ph.i71:                                       ; preds = %bb.k, %bb.l
  %i.bb = phi ptr [ %i.be, %bb.l ], [ %i.az, %bb.k ]
  %.01213.i72 = phi i64 [ %i.bd, %bb.l ], [ %.us-phi84129, %bb.k ] ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !65
  switch i8 %i.bc, label %.critedge.i61 [
    i8 32, label %bb.l
    i8 9, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph.i71, %.lr.ph.i71
  %i.bd = add i64 %.01213.i72, 1                  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd ; 2 uses
  %i.bf = icmp ult ptr %i.be, %1
  br i1 %i.bf, label %.lr.ph.i71, label %.critedge.i61, !llvm.loop !364

.critedge.i61:                                    ; preds = %bb.l, %.lr.ph.i71, %bb.k
  %.012.lcssa.i62 = phi i64 [ %.us-phi84129, %bb.k ], [ %i.g, %bb.l ], [ %.01213.i72, %.lr.ph.i71 ] ; 2 uses
  br label %.lr.ph18.i64

.lr.ph18.i64:                                     ; preds = %.critedge.i61, %bb.m
  %.017.i65 = phi i64 [ %i.bj, %bb.m ], [ %.us-phi128, %.critedge.i61 ] ; 3 uses
  %i.bg = getelementptr i8, ptr %0, i64 %.017.i65
  %i.bh = getelementptr i8, ptr %i.bg, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !65
  switch i8 %i.bi, label %_ZN7httplib6detail4trimEPKcS2_mm.exit73 [
    i8 32, label %bb.m
    i8 9, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph18.i64, %.lr.ph18.i64
  %i.bj = add i64 %.017.i65, -1                   ; 2 uses
  %.not.i66 = icmp eq i64 %i.bj, 0
  br i1 %.not.i66, label %_ZN7httplib6detail4trimEPKcS2_mm.exit73, label %.lr.ph18.i64, !llvm.loop !365

_ZN7httplib6detail4trimEPKcS2_mm.exit73:          ; preds = %.lr.ph18.i64, %bb.m
  %.0.lcssa.i67 = phi i64 [ 0, %bb.m ], [ %.017.i65, %.lr.ph18.i64 ] ; 2 uses
  %i.bk = icmp ult i64 %.012.lcssa.i62, %.0.lcssa.i67
  br i1 %i.bk, label %bb.n, label %.critedge60

bb.n:                                             ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit73
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %.012.lcssa.i62
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !314
  store ptr %i.bm, ptr %i.b, align 8, !tbaa !314
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !159
  %.not.i.i74 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i74, label %bb.o, label %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit75

bb.o:                                             ; preds = %bb.n
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit75:       ; preds = %bb.n
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !378
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.bp, label %.critedge, label %.critedge60

.critedge60:                                      ; preds = %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit75, %_ZN7httplib6detail4trimEPKcS2_mm.exit73
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit, %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit.us, %.split81, %.split81.us, %.split83.us, %.critedge60, %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit75
  %.8 = phi i1 [ false, %.split83.us ], [ true, %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit75 ], [ false, %.critedge60 ], [ true, %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit.us ], [ false, %.split81 ], [ false, %.split81.us ], [ true, %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit ]
  ret i1 %.8
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail10split_findEPKcS2_cSt8functionIFbS2_S2_EE(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, i8 noundef signext %2, ptr nofree noundef align 8 captures(none) dereferenceable(32) %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.150", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !378
  store ptr %i.c, ptr %i.a, align 8, !tbaa !378
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbPKcS1_EEC2EOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !160
  store ptr %i.e, ptr %i.f, align 8, !tbaa !159
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbPKcS1_EEC2EOS3_.exit

_ZNSt8functionIFbPKcS1_EEC2EOS3_.exit:            ; preds = %bb.a, %bb.b
  %i.g = invoke noundef zeroext i1 @_ZN7httplib6detail10split_findEPKcS2_cmSt8functionIFbS2_S2_EE(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, i64 noundef -1, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZNSt8functionIFbPKcS1_EEC2EOS3_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  ret i1 %i.g

bb.f:                                             ; preds = %_ZNSt8functionIFbPKcS1_EEC2EOS3_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !159  ; 2 uses
  %.not.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7httplib6detail18stream_line_readerC2ERNS_6StreamEPcm(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !362
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8, !tbaa !361
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.c, align 8, !tbaa !357
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !64
  store i8 0, ptr %i.e, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7httplib6detail18stream_line_reader13end_with_crlfEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.a, align 8
  %.0.i = select i1 %i.d, ptr %i.f, ptr %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %.0.i3 = select i1 %i.d, i64 %i.i, i64 %i.c     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0.i3 ; 2 uses
  %i.k = icmp ugt i64 %.0.i3, 1
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !65
  %i.n = icmp eq i8 %i.m, 13
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !65
  %i.q = icmp eq i8 %i.p, 10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.r = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.q, %bb.c ]
  ret i1 %i.r
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail18stream_line_reader6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !357  ; 3 uses
  %i.g = add i64 %i.f, %2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !361
  %i.j = icmp ult i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !362  ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %1, i64 %2, i1 false)
  %i.n = load i64, ptr %i.e, align 8, !tbaa !357
  %i.o = add i64 %i.n, %2                         ; 2 uses
  store i64 %i.o, ptr %i.e, align 8, !tbaa !357
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !362
end_hunk_0
begin_hunk_1_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a
  %.not4.i.i10 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.br = and i32 %i.be, 65536
  %.not.i.i11 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !917
  %.not.i.i.i12 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !65
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !81
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !3045
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i14
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.83", align 8    ; 14 uses
  %3 = alloca %"class.std::__detail::_Executor", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !847  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !315    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !317
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !85

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !315
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !847
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !317
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !848

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !847
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !314
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !314
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3026, !nonnull !80, !align !156
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i32, ptr %i.x, align 8, !tbaa !2967
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr %.sroa.06.0.copyload, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef %i.y)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.z, align 8, !tbaa !3014
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !314
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !314
  %i.ad = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !3046 ; 2 uses

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.ad, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !847 ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !315   ; 5 uses
  %.not = icmp eq ptr %i.ae, %i.af
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = sdiv exact i64 %i.ai, 24                ; 3 uses
  %xtraiter = and i64 %i.aj, 1
  %i.ak = icmp eq i64 %i.ai, 24
  br i1 %i.ak, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.aj, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #23
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.021 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bk, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.021 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !310, !range !79, !noundef !80
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.ar = load ptr, ptr %0, align 8, !tbaa !315
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.021 ; 3 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !314
  store i64 %i.at, ptr %i.as, align 8, !tbaa !314
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !314
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !314
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i8 1, ptr %i.ax, align 8, !tbaa !310
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %i.ay = or disjoint i64 %.021, 1                ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !310, !range !79, !noundef !80
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.bd = load ptr, ptr %0, align 8, !tbaa !315
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.ay ; 3 uses
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !314
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !314
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !314
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !314
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i8 1, ptr %i.bj, align 8, !tbaa !310
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.bk = add nuw i64 %.021, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3047

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.021.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bk, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod35 = trunc i64 %i.aj to i1
  call void @llvm.assume(i1 %lcmp.mod35)
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.021.epil.init ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !310, !range !79, !noundef !80
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bp = load ptr, ptr %0, align 8, !tbaa !315
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.021.epil.init ; 3 uses
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !314
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !314
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !314
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !314
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i8 1, ptr %i.bv, align 8, !tbaa !310
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2983 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.by) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !2984 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2985 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ca, %i.cc
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ck, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.ca, %bb.l ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !315 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i16
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !317
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i16
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq ptr %i.ck, %i.cc
  br i1 %.not.i.i.i.i.i17, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i16, !llvm.loop !2986

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !2984
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.cl = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ca, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2987
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !2988 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !2989
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cx) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.cy = load ptr, ptr %3, align 8, !tbaa !315   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !317
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dd) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.de = load ptr, ptr %2, align 8, !tbaa !315   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit
  %i.df = load ptr, ptr %i.r, align 8, !tbaa !317
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.di) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.ad

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.al, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.dj = load ptr, ptr %2, align 8, !tbaa !315   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %i.r, align 8, !tbaa !317
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.dn) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit20: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_12regex_traitsIcEEE8_M_applyESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3042, !range !79, !noundef !80
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3048, !nonnull !80, !align !156
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #23
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.l = load ptr, ptr %5, align 8, !tbaa !2404
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2405
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2408 ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #47
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
end_hunk_1
begin_hunk_2_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl:bb.a
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !2495 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 48                ; 7 uses
  %i.ap = icmp ugt i64 %i.ao, 576460752303423487
  %i.aq = ptrtoint ptr %.sroa.06.0.copyload to i64
  br i1 %i.ap, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.363) #47
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i16 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i16, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.ar = shl nuw nsw i64 %i.ao, 4
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #50
          to label %.noexc9.i unwind label %bb.e  ; 4 uses

.noexc9.i:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  store ptr %i.as, ptr %i.ag, align 8, !tbaa !2988
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.at, ptr %i.au, align 8, !tbaa !2989
  %xtraiter = and i64 %i.ao, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc9.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.as, %.noexc9.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %.noexc9.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc9.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !2981
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !2992
  %i.aw = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3067

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc9.i
  %.lcssa.unr = phi ptr [ poison, %.noexc9.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.as, %.noexc9.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.ao, %.noexc9.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.ao, 8
  br i1 %i.ay, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !2981
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !2992
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ba, align 8, !tbaa !2981
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.bb, align 8, !tbaa !2992
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bc, align 8, !tbaa !2981
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !2992
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.be, align 8, !tbaa !2981
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bf, align 8, !tbaa !2992
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bg, align 8, !tbaa !2981
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bh, align 8, !tbaa !2992
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bi, align 8, !tbaa !2981
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bj, align 8, !tbaa !2992
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bk, align 8, !tbaa !2981
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bl, align 8, !tbaa !2992
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bm, align 8, !tbaa !2981
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bn, align 8, !tbaa !2992
  %i.bo = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2995

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bq, align 8, !tbaa !2996
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bu = and i32 %i.x, 128
  %.not.i = icmp eq i32 %i.bu, 0
  %i.bv = and i32 %i.x, -6
  %spec.select = select i1 %.not.i, i32 %i.x, i32 %i.bv
  store i32 %spec.select, ptr %i.bt, align 8, !tbaa !871
  store i64 %1, ptr %i.br, align 8, !tbaa !3001
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.aq, ptr %i.bw, align 8, !tbaa !314
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bx, align 4, !tbaa !2999
  store i64 0, ptr %i.bs, align 8, !tbaa !314
  %i.by = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !3068 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %bb.d
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.ca = load i64, ptr %i.br, align 8, !tbaa !3001
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.ca)
          to label %bb.f unwind label %bb.g, !inline_history !3068

bb.f:                                             ; preds = %.noexc
  %i.cb = load i8, ptr %i.bx, align 4, !tbaa !2999, !range !79, !noundef !80
  %i.cc = trunc nuw i8 %i.cb to i1                ; 2 uses
  br i1 %i.cc, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !847 ; 2 uses
  %i.ce = load ptr, ptr %2, align 8, !tbaa !315   ; 5 uses
  %.not = icmp eq ptr %i.cd, %i.ce
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = sdiv exact i64 %i.ch, 24                ; 3 uses
  %xtraiter37 = and i64 %i.ci, 1
  %i.cj = icmp eq i64 %i.ch, 24
  br i1 %i.cj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ci, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #23
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.di, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.024 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !310, !range !79, !noundef !80
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.cp = load ptr, ptr %0, align 8, !tbaa !315
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.024 ; 3 uses
  %i.cr = load i64, ptr %i.cl, align 8, !tbaa !314
  store i64 %i.cr, ptr %i.cq, align 8, !tbaa !314
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !314
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !314
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i8 1, ptr %i.cv, align 8, !tbaa !310
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.cw = or disjoint i64 %.024, 1                ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cw ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !310, !range !79, !noundef !80
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.db = load ptr, ptr %0, align 8, !tbaa !315
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %i.cw ; 3 uses
  %i.dd = load i64, ptr %i.cx, align 8, !tbaa !314
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !314
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !314
  store i64 %i.dg, ptr %i.df, align 8, !tbaa !314
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i8 1, ptr %i.dh, align 8, !tbaa !310
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.di = add nuw i64 %.024, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3069

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.di, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod39 = trunc i64 %i.ci to i1
  call void @llvm.assume(i1 %lcmp.mod39)
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.024.epil.init ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !310, !range !79, !noundef !80
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dn = load ptr, ptr %0, align 8, !tbaa !315
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %.024.epil.init ; 3 uses
  %i.dp = load i64, ptr %i.dj, align 8, !tbaa !314
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !314
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !314
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !314
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i8 1, ptr %i.dt, align 8, !tbaa !310
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.du = load ptr, ptr %i.ag, align 8, !tbaa !2988 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2989
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dz) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.l, %.loopexit
  %i.ea = load ptr, ptr %3, align 8, !tbaa !315   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !317
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.eg = load ptr, ptr %2, align 8, !tbaa !315   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.eh = load ptr, ptr %i.r, align 8, !tbaa !317
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.eg to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.ek) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.cc

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.g ], [ %i.bz, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.el = load ptr, ptr %2, align 8, !tbaa !315   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %.body
  %i.em = load ptr, ptr %i.r, align 8, !tbaa !317
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.ep) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21: ; preds = %.body, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2IPKS5_EET_SN_mRKSD_RKSC_RKS6_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::__detail::_AllocNode.881", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !335
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !337
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !338
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %3)
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8, !tbaa !337
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !85

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !3070
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.j, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !85

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %.noexc.i.i.i, label %.noexc7.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #47
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

.noexc7.i.i.i:                                    ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #47
          to label %.noexc9.i unwind label %bb.g

.noexc9.i:                                        ; preds = %.noexc7.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.e
  %i.l = shl nuw nsw i64 %i.f, 3                  ; 2 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #50
          to label %.noexc10.i unwind label %bb.g ; 2 uses

.noexc10.i:                                       ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.l, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %.noexc10.i, %bb.d
  %.0.i.i = phi ptr [ %i.a, %bb.d ], [ %i.m, %.noexc10.i ]
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !335
  store i64 %i.f, ptr %i.b, align 8, !tbaa !337
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit

common.resume:                                    ; preds = %bb.h, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.q, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, %.noexc7.i.i.i, %.noexc.i.i.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #23
  br label %common.resume

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %0, ptr %7, align 8, !tbaa !3071
  %.not7.i.i = icmp eq ptr %1, %2
  br i1 %.not7.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit, %.noexc
  %.08.i.i = phi ptr [ %i.p, %.noexc ], [ %1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit ] ; 3 uses
  %i.o = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SM_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %2
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !3073

.loopexit:                                        ; preds = %.noexc, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #23
  br label %common.resume
}

end_hunk_2
begin_hunk_3_@_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_word_boundaryEv:bb.a
_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i12 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2580
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !446
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i12
  %.not4.i.i13 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i13, label %bb.o, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11
  %i.br = and i32 %i.be, 65536
  %.not.i.i14 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i14, label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !917
  %.not.i.i.i15 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i15, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !65
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !81
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !3237
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i16

_ZNKSt5ctypeIcE5widenEc.exit.i.i16:               ; preds = %bb.r, %bb.q
  %.0.i.i.i17 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i17
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18

_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i16, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i11 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i16 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18
  %.04 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE10_M_is_wordEc.exit18 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.04
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.260", align 8   ; 14 uses
  %3 = alloca %"class.std::__detail::_Executor.911", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3199 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !612    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !614
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv exact i64 %i.f, 24
  %i.k = icmp ugt i64 %i.j, 384307168202282325
  br i1 %i.k, label %.noexc.i.i, label %bb.c, !prof !85

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #47
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #50 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !612
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !3199
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !614
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3210

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.thread
  %i.r = phi ptr [ %i.i, %.thread ], [ %i.o, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.s, align 8, !tbaa !3199
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3167
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3169
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3219, !nonnull !80, !align !156
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !3168
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EEC2ES2_S2_RSt6vectorIS5_S6_ERKNS3_11basic_regexIcS8_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %3, ptr noundef %i.u, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i32 noundef %i.aa)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i64 %1, ptr %i.ab, align 8, !tbaa !3206
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !3153
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !3167
  %i.af = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE16_M_main_dispatchENS9_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %3, i8 noundef zeroext 1)
          to label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit unwind label %bb.f, !inline_history !3238 ; 2 uses

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit: ; preds = %bb.d
  br i1 %i.af, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !3199 ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !612   ; 5 uses
  %.not = icmp eq ptr %i.ag, %i.ah
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = sdiv exact i64 %i.ak, 24                ; 3 uses
  %xtraiter = and i64 %i.al, 1
  %i.am = icmp eq i64 %i.ak, 24
  br i1 %i.am, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.al, -2
  br label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %3) #23
  br label %bb.r

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bg, %bb.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.020 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !592, !range !79, !noundef !80
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.at = load ptr, ptr %0, align 8, !tbaa !612
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.020 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !314
  store <2 x ptr> %i.av, ptr %i.au, align 8, !tbaa !314
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i8 1, ptr %i.aw, align 8, !tbaa !592
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.g, %.lr.ph
  %i.ax = or disjoint i64 %.020, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !592, !range !79, !noundef !80
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.bc = load ptr, ptr %0, align 8, !tbaa !612
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.ax ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !314
  store <2 x ptr> %i.be, ptr %i.bd, align 8, !tbaa !314
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i8 1, ptr %i.bf, align 8, !tbaa !592
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %i.bg = add nuw i64 %.020, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3239

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod34 = trunc i64 %i.al to i1
  call void @llvm.assume(i1 %lcmp.mod34)
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.020.epil.init ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !592, !range !79, !noundef !80
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.bl = load ptr, ptr %0, align 8, !tbaa !612
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %.020.epil.init ; 2 uses
  %i.bn = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !314
  store <2 x ptr> %i.bn, ptr %i.bm, align 8, !tbaa !314
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i8 1, ptr %i.bo, align 8, !tbaa !592
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph.epil.preheader, %.preheader, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE20_M_search_from_firstEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !3171 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.br) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !3172 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !3173 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i15

.lr.ph.i.i.i.i.i15:                               ; preds = %bb.l, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cd, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i ], [ %i.bt, %bb.l ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !612 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i15
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !614
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i15
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i16 = icmp eq ptr %i.cd, %i.bv
  br i1 %.not.i.i.i.i.i16, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i15, !llvm.loop !3174

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !3172
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.l
  %i.ce = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.bt, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !3175
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #46
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i: ; preds = %bb.n, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIPKcEESaIS6_EEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !3176 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !3177
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #46
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.o, %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorIS5_S6_EED2Ev.exit.i
  %i.cr = load ptr, ptr %3, align 8, !tbaa !612   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !614
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #46
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.cx = load ptr, ptr %2, align 8, !tbaa !612   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit
  %i.cy = load ptr, ptr %i.r, align 8, !tbaa !614
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.db) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb0EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.af

bb.r:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.f ], [ %i.an, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.dc = load ptr, ptr %2, align 8, !tbaa !612   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit19, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = load ptr, ptr %i.r, align 8, !tbaa !614
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dg) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit19

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit19: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIPKcNSt7__cxx1112regex_traitsIcEEE8_M_applyES2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3234, !range !79, !noundef !80
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IPKcS1_EbT_S2_T0_S3_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3240, !nonnull !80, !align !156
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #23
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #23
  %i.l = load ptr, ptr %5, align 8, !tbaa !2404
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2405
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2408 ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt16__throw_bad_castv() #47
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
end_hunk_3
begin_hunk_4_@_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE12_M_lookaheadEl:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2966 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !2545
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ag, align 8, !tbaa !3182
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2536 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !2495 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 48                ; 7 uses
  %i.aq = icmp ugt i64 %i.ap, 576460752303423487
  br i1 %i.aq, label %bb.d, label %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.363) #47
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEC2ERKS6_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i15 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i15, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.ar = shl nuw nsw i64 %i.ap, 4
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #50
          to label %.noexc10.i unwind label %bb.e ; 4 uses

.noexc10.i:                                       ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i
  store ptr %i.as, ptr %i.ah, align 8, !tbaa !3176
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.at, ptr %i.au, align 8, !tbaa !3177
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc10.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.as, %.noexc10.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ap, %.noexc10.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc10.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !3183
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !3185
  %i.aw = add i64 %.01012.i.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !3259

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc10.i
  %.lcssa.unr = phi ptr [ poison, %.noexc10.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.as, %.noexc10.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.ap, %.noexc10.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.ap, 8
  br i1 %i.ay, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !3183
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !3185
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ba, align 8, !tbaa !3183
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.bb, align 8, !tbaa !3185
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bc, align 8, !tbaa !3183
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !3185
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.be, align 8, !tbaa !3183
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bf, align 8, !tbaa !3185
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bg, align 8, !tbaa !3183
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bh, align 8, !tbaa !3185
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bi, align 8, !tbaa !3183
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bj, align 8, !tbaa !3185
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bk, align 8, !tbaa !3183
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bl, align 8, !tbaa !3185
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bm, align 8, !tbaa !3183
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bn, align 8, !tbaa !3185
  %i.bo = add i64 %.01012.i.i.i.i.i.i, -8         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3187

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIPKciESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bp, %.lr.ph.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bq, align 8, !tbaa !3188
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bt = and i32 %i.y, 128
  %.not.i = icmp eq i32 %i.bt, 0
  %i.bu = and i32 %i.y, -6
  %spec.select = select i1 %.not.i, i32 %i.y, i32 %i.bu
  store i32 %spec.select, ptr %i.bs, align 8, !tbaa !871
  store i64 %1, ptr %i.br, align 8, !tbaa !3192
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.u, ptr %i.bv, align 8, !tbaa !3190
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bw, align 4, !tbaa !3191
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr null, ptr %i.bx, align 8, !tbaa !314
  %i.by = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !3260 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIPKciESaIS3_EEC2EmRKS4_.exit.i.i, %bb.d
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.ca = load i64, ptr %i.br, align 8, !tbaa !3192
  invoke void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EE6_M_dfsENS9_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.ca)
          to label %bb.f unwind label %bb.g, !inline_history !3260

bb.f:                                             ; preds = %.noexc
  %i.cb = load i8, ptr %i.bw, align 4, !tbaa !3191, !range !79, !noundef !80
  %i.cc = trunc nuw i8 %i.cb to i1                ; 2 uses
  br i1 %i.cc, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !3199 ; 2 uses
  %i.ce = load ptr, ptr %2, align 8, !tbaa !612   ; 5 uses
  %.not = icmp eq ptr %i.cd, %i.ce
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = sdiv exact i64 %i.ch, 24                ; 3 uses
  %xtraiter36 = and i64 %i.ci, 1
  %i.cj = icmp eq i64 %i.ch, 24
  br i1 %i.cj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ci, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #23
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.023 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dc, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.023 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !592, !range !79, !noundef !80
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.cp = load ptr, ptr %0, align 8, !tbaa !612
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.023 ; 2 uses
  %i.cr = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !314
  store <2 x ptr> %i.cr, ptr %i.cq, align 8, !tbaa !314
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i8 1, ptr %i.cs, align 8, !tbaa !592
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.ct = or disjoint i64 %.023, 1                ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !592, !range !79, !noundef !80
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.cy = load ptr, ptr %0, align 8, !tbaa !612
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %i.ct ; 2 uses
  %i.da = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !314
  store <2 x ptr> %i.da, ptr %i.cz, align 8, !tbaa !314
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i8 1, ptr %i.db, align 8, !tbaa !592
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.dc = add nuw i64 %.023, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3261

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.023.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dc, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i64 %i.ci to i1
  call void @llvm.assume(i1 %lcmp.mod38)
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.023.epil.init ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i8, ptr %i.de, align 8, !tbaa !592, !range !79, !noundef !80
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dh = load ptr, ptr %0, align 8, !tbaa !612
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %.023.epil.init ; 2 uses
  %i.dj = load <2 x ptr>, ptr %i.dd, align 8, !tbaa !314
  store <2 x ptr> %i.dj, ptr %i.di, align 8, !tbaa !314
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i8 1, ptr %i.dk, align 8, !tbaa !592
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.dl = load ptr, ptr %i.ah, align 8, !tbaa !3176 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !3177
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #46
  br label %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i:    ; preds = %bb.l, %.loopexit
  %i.dr = load ptr, ptr %3, align 8, !tbaa !612   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !614
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #46
  br label %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKciESaIS3_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.dx = load ptr, ptr %2, align 8, !tbaa !612   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit
  %i.dy = load ptr, ptr %i.r, align 8, !tbaa !614
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIPKcSaINSt7__cxx119sub_matchIS2_EEENS3_12regex_traitsIcEELb1EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.cc

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ck, %bb.g ], [ %i.bz, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ec = load ptr, ptr %2, align 8, !tbaa !612   ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit20, label %bb.o

bb.o:                                             ; preds = %.body
  %i.ed = load ptr, ptr %i.r, align 8, !tbaa !614
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit20

_ZNSt6vectorINSt7__cxx119sub_matchIPKcEESaIS4_EED2Ev.exit20: ; preds = %.body, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail28is_chunked_transfer_encodingERKNS4_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_11case_ignore8equal_toEEEE3$_0E9_M_invokeERKSt9_Any_dataOS1_SM_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #7 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !3262  ; 2 uses
  %.val3 = load ptr, ptr %1, align 8, !tbaa !314  ; 2 uses
  %.val4 = load ptr, ptr %2, align 8, !tbaa !314
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64
  %i.c = ptrtoint ptr %.val4 to i64
  %i.d = ptrtoint ptr %.val3 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.val, i64 noundef 0, i64 noundef %i.b, ptr noundef %.val3, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail28is_chunked_transfer_encodingERKNS4_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_11case_ignore8equal_toEEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail28is_chunked_transfer_encodingERKNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6detail28is_chunked_transfer_encodingERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEEE3$_0", ptr %0, align 8, !tbaa !2735
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail28is_chunked_transfer_encodingERKNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail28is_chunked_transfer_encodingERKNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !164
  store i64 %.val.i, ptr %0, align 8, !tbaa !164
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail28is_chunked_transfer_encodingERKNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail28is_chunked_transfer_encodingERKNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKcmS1_mEZN7httplib6detail17divide_query_pairES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E9_M_invokeERKSt9_Any_dataOS1_OmSH_SI_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #7 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !314
  %.val5 = load i64, ptr %2, align 8, !tbaa !78
  %.val6 = load ptr, ptr %3, align 8, !tbaa !314
  %.val7 = load i64, ptr %4, align 8, !tbaa !78
  %i.a = load ptr, ptr %0, align 8, !tbaa !3264, !nonnull !80, !align !156 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !64
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.c, ptr noundef %.val, i64 noundef %.val5) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3266, !nonnull !80, !align !156 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.h, ptr noundef %.val6, i64 noundef %.val7) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPKcmS1_mEZN7httplib6detail17divide_query_pairES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_query_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6detail17divide_query_pairEPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E3$_0", ptr %0, align 8, !tbaa !2735
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_query_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_query_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !3127
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_query_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail17divide_query_pairEPKcS4_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail16parse_query_textES1_mRNS4_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8equal_toISB_EEEE3$_0E9_M_invokeERKSt9_Any_dataOS1_SL_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.148", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !314   ; 4 uses
  %.val3 = load ptr, ptr %2, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i64 0, ptr %i.c, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = ptrtoint ptr %.val3 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !78
  %i.g = icmp ugt i64 %i.f, 15
end_hunk_4
begin_hunk_5_@"_ZNSt17_Function_handlerIFbPKcmEZN7httplib6Server12read_contentERNS3_6StreamERNS3_7RequestERNS3_8ResponseEE3$_2E9_M_invokeERKSt9_Any_dataOS1_Om":bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3675
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !3676
  %i.u = getelementptr inbounds nuw [184 x i8], ptr %i.r, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !64   ; 2 uses
  %i.x = add i64 %i.w, %.val4
  %i.y = icmp ugt i64 %i.x, 4611686018427387903
  br i1 %i.y, label %"_ZSt10__invoke_rIbRZN7httplib6Server12read_contentERNS0_6StreamERNS0_7RequestERNS0_8ResponseEE3$_2JPKcmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = sub i64 4611686018427387903, %i.w
  %i.aa = icmp ult i64 %i.z, %.val4
  br i1 %i.aa, label %bb.g, label %.sink.split.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.361) #47
  unreachable

.sink.split.i.i.i:                                ; preds = %bb.f, %bb.c
  %.pn.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.u, %bb.f ]
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i.i, ptr noundef %.val3, i64 noundef %.val4) ; 0 uses
  br label %"_ZSt10__invoke_rIbRZN7httplib6Server12read_contentERNS0_6StreamERNS0_7RequestERNS0_8ResponseEE3$_2JPKcmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

"_ZSt10__invoke_rIbRZN7httplib6Server12read_contentERNS0_6StreamERNS0_7RequestERNS0_8ResponseEE3$_2JPKcmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit": ; preds = %bb.b, %bb.e, %.sink.split.i.i.i
  %.2.i.i.i = phi i1 [ false, %bb.e ], [ false, %bb.b ], [ true, %.sink.split.i.i.i ]
  ret i1 %.2.i.i.i
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPKcmEZN7httplib6Server12read_contentERNS3_6StreamERNS3_7RequestERNS3_8ResponseEE3$_2E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #7 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server12read_contentERNS1_6StreamERNS1_7RequestERNS1_8ResponseEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6Server12read_contentERNS_6StreamERNS_7RequestERNS_8ResponseEE3$_2", ptr %0, align 8, !tbaa !2735
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server12read_contentERNS1_6StreamERNS1_7RequestERNS1_8ResponseEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !71
  store ptr %.val, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server12read_contentERNS1_6StreamERNS1_7RequestERNS1_8ResponseEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #50 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !3677
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server12read_contentERNS1_6StreamERNS1_7RequestERNS1_8ResponseEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !71 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server12read_contentERNS1_6StreamERNS1_7RequestERNS1_8ResponseEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #46
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server12read_contentERNS1_6StreamERNS1_7RequestERNS1_8ResponseEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server12read_contentERNS1_6StreamERNS1_7RequestERNS1_8ResponseEE3$_2E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPKcmmmEZNK7httplib6Server17read_content_coreERNS3_6StreamERNS3_7RequestERNS3_8ResponseESt8functionIFbS1_mEESB_IFbRKNS3_8FormDataEEESD_E3$_0E9_M_invokeERKSt9_Any_dataOS1_OmSP_SP_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree nonnull readonly align 8 captures(none) %3, ptr nofree nonnull readonly align 8 captures(none) %4) #7 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !71    ; 3 uses
  %.val5 = load ptr, ptr %1, align 8, !tbaa !314
  %.val6 = load i64, ptr %2, align 8, !tbaa !78
  %i.a = load ptr, ptr %.val, align 8, !tbaa !3678, !nonnull !80, !align !156
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3680, !nonnull !80, !align !156
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3681, !nonnull !80, !align !156
  %i.f = tail call noundef zeroext i1 @_ZN7httplib6detail14FormDataParser5parseEPKcmRKSt8functionIFbRKNS_8FormDataEEERKS4_IFbS3_mEE(ptr noundef nonnull align 8 dereferenceable(384) %i.a, ptr noundef %.val5, i64 noundef %.val6, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPKcmmmEZNK7httplib6Server17read_content_coreERNS3_6StreamERNS3_7RequestERNS3_8ResponseESt8functionIFbS1_mEESB_IFbRKNS3_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #7 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server17read_content_coreERNS1_6StreamERNS1_7RequestERNS1_8ResponseESt8functionIFbPKcmEES9_IFbRKNS1_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK7httplib6Server17read_content_coreERNS_6StreamERNS_7RequestERNS_8ResponseESt8functionIFbPKcmEES7_IFbRKNS_8FormDataEEESB_E3$_0", ptr %0, align 8, !tbaa !2735
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server17read_content_coreERNS1_6StreamERNS1_7RequestERNS1_8ResponseESt8functionIFbPKcmEES9_IFbRKNS1_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !71
  store ptr %.val, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server17read_content_coreERNS1_6StreamERNS1_7RequestERNS1_8ResponseESt8functionIFbPKcmEES9_IFbRKNS1_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #50 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !3682
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server17read_content_coreERNS1_6StreamERNS1_7RequestERNS1_8ResponseESt8functionIFbPKcmEES9_IFbRKNS1_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !71 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server17read_content_coreERNS1_6StreamERNS1_7RequestERNS1_8ResponseESt8functionIFbPKcmEES9_IFbRKNS1_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #46
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server17read_content_coreERNS1_6StreamERNS1_7RequestERNS1_8ResponseESt8functionIFbPKcmEES9_IFbRKNS1_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server17read_content_coreERNS1_6StreamERNS1_7RequestERNS1_8ResponseESt8functionIFbPKcmEES9_IFbRKNS1_8FormDataEEESD_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7httplib6detail14FormDataParser5parseEPKcmRKSt8functionIFbRKNS_8FormDataEEERKS4_IFbS3_mEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.httplib::detail::insertion_ordered_multimap.65", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 16 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !3683 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 20 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !3684 ; 4 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %.not.i = icmp ne i64 %i.j, %i.l
  %.not22.i = icmp ne i64 %i.l, 0
  %or.cond.not27.i = and i1 %.not.i, %.not22.i
  br i1 %or.cond.not27.i, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.o = sub i64 %i.l, %i.j
  %i.p = icmp ugt i64 %i.o, -4
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.m, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.01823.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ar, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.q = load i64, ptr %i.k, align 8, !tbaa !3684
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !77   ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %i.q
  %i.t = getelementptr i8, ptr %i.s, i64 %.01823.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.01823.i
  store i8 %i.u, ptr %i.v, align 1, !tbaa !65
  %i.w = or disjoint i64 %.01823.i, 1             ; 2 uses
  %i.x = load i64, ptr %i.k, align 8, !tbaa !3684
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !77   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.w
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !65
  %i.ad = or disjoint i64 %.01823.i, 2            ; 2 uses
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !3684
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !77  ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.ae
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.ad
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !65
  %i.ak = or disjoint i64 %.01823.i, 3            ; 2 uses
  %i.al = load i64, ptr %i.k, align 8, !tbaa !3684
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !77  ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.ak
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !65
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !65
  %i.ar = add nuw i64 %.01823.i, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !3685

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i
  %.01823.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ar, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod963 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod963)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.01823.i.epil = phi i64 [ %.01823.i.epil.init, %.epil.preheader ], [ %i.ay, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.as = load i64, ptr %i.k, align 8, !tbaa !3684
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !77  ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 %.01823.i.epil
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !65
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %.01823.i.epil
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !65
  %i.ay = add nuw i64 %.01823.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %bb.c, !llvm.loop !3686

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.c, %bb.a
  store i64 0, ptr %i.k, align 8, !tbaa !3684
  store i64 %i.m, ptr %i.i, align 8, !tbaa !3683
  %i.az = add i64 %i.m, %2                        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 14 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !64
  %i.bd = icmp ugt i64 %i.az, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 noundef %i.az, i8 noundef signext 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.not28.i = icmp eq i64 %2, 0
  br i1 %.not28.i, label %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %bb.e
  %xtraiter964 = and i64 %2, 3                    ; 3 uses
  %i.be = icmp ult i64 %2, 4
  br i1 %i.be, label %.lr.ph25.i.epil.preheader, label %.lr.ph25.i.preheader.new

.lr.ph25.i.preheader.new:                         ; preds = %.lr.ph25.i.preheader
  %unroll_iter968 = and i64 %2, -4
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i, %.lr.ph25.i.preheader.new
  %.024.i = phi i64 [ 0, %.lr.ph25.i.preheader.new ], [ %i.cg, %.lr.ph25.i ] ; 6 uses
  %niter969 = phi i64 [ 0, %.lr.ph25.i.preheader.new ], [ %niter969.next.3, %.lr.ph25.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %.024.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !65
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !3683
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bh
  %i.bk = getelementptr i8, ptr %i.bj, i64 %.024.i
  store i8 %i.bg, ptr %i.bk, align 1, !tbaa !65
  %i.bl = or disjoint i64 %.024.i, 1              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !65
  %i.bo = load i64, ptr %i.i, align 8, !tbaa !3683
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bl
  store i8 %i.bn, ptr %i.br, align 1, !tbaa !65
  %i.bs = or disjoint i64 %.024.i, 2              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !65
  %i.bv = load i64, ptr %i.i, align 8, !tbaa !3683
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bv
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bs
  store i8 %i.bu, ptr %i.by, align 1, !tbaa !65
  %i.bz = or disjoint i64 %.024.i, 3              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !65
  %i.cc = load i64, ptr %i.i, align 8, !tbaa !3683
  %i.cd = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.bz
  store i8 %i.cb, ptr %i.cf, align 1, !tbaa !65
  %i.cg = add nuw i64 %.024.i, 4                  ; 2 uses
  %niter969.next.3 = add nuw i64 %niter969, 4     ; 2 uses
  %niter969.ncmp.3 = icmp eq i64 %niter969.next.3, %unroll_iter968
  br i1 %niter969.ncmp.3, label %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa, label %.lr.ph25.i, !llvm.loop !3687

_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph25.i
  %lcmp.mod966.not = icmp eq i64 %xtraiter964, 0
  br i1 %lcmp.mod966.not, label %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit, label %.lr.ph25.i.epil.preheader

.lr.ph25.i.epil.preheader:                        ; preds = %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa, %.lr.ph25.i.preheader
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph25.i.preheader ], [ %i.cg, %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa ]
  %lcmp.mod967 = icmp ne i64 %xtraiter964, 0
  tail call void @llvm.assume(i1 %lcmp.mod967)
  br label %.lr.ph25.i.epil

.lr.ph25.i.epil:                                  ; preds = %.lr.ph25.i.epil, %.lr.ph25.i.epil.preheader
  %.024.i.epil = phi i64 [ %i.cn, %.lr.ph25.i.epil ], [ %.024.i.epil.init, %.lr.ph25.i.epil.preheader ] ; 3 uses
  %epil.iter965 = phi i64 [ %epil.iter965.next, %.lr.ph25.i.epil ], [ 0, %.lr.ph25.i.epil.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %.024.i.epil
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !65
  %i.cj = load i64, ptr %i.i, align 8, !tbaa !3683
  %i.ck = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.cj
  %i.cm = getelementptr i8, ptr %i.cl, i64 %.024.i.epil
  store i8 %i.ci, ptr %i.cm, align 1, !tbaa !65
  %i.cn = add nuw i64 %.024.i.epil, 1
  %epil.iter965.next = add i64 %epil.iter965, 1   ; 2 uses
  %epil.iter965.cmp.not = icmp eq i64 %epil.iter965.next, %xtraiter964
  br i1 %epil.iter965.cmp.not, label %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit, label %.lr.ph25.i.epil, !llvm.loop !3688

_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit: ; preds = %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit.loopexit.unr-lcssa, %.lr.ph25.i.epil, %bb.e
  %i.co = load i64, ptr %i.i, align 8, !tbaa !3683
  %i.cp = add i64 %i.co, %2                       ; 3 uses
  store i64 %i.cp, ptr %i.i, align 8, !tbaa !3683
  %i.cq = load i64, ptr %i.k, align 8, !tbaa !3684 ; 10 uses
  %.not504 = icmp eq i64 %i.cp, %i.cq
  br i1 %.not504, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7httplib6detail14FormDataParser10buf_appendEPKcm.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 9 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.pre = load i64, ptr %i.cr, align 8, !tbaa !1735
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.dl
  %i.ej = phi i64 [ %i.cp, %.lr.ph ], [ %i.vj, %bb.dl ] ; 11 uses
  switch i64 %.pre, label %bb.dl [
    i64 0, label %bb.g
    i64 1, label %.loopexit771
    i64 2, label %.loopexit772
    i64 3, label %.loopexit773.loopexit
    i64 4, label %.loopexit774.loopexit
  ]

bb.g:                                             ; preds = %bb.f
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !77 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !65  ; 2 uses
  %i.em = icmp ult i64 %i.cq, %i.ej
  br i1 %i.em, label %.preheader.lr.ph.i, label %_ZNK7httplib6detail14FormDataParser14buf_start_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit291

.preheader.lr.ph.i:                               ; preds = %bb.g
  %i.en = load ptr, ptr %i.ba, align 8, !tbaa !77 ; 3 uses
  %i.eo = load i64, ptr %i.ei, align 8
  %.fr40.i = freeze i64 %i.eo                     ; 3 uses
  %i.ep = icmp eq i64 %.fr40.i, 0
  br i1 %i.ep, label %.preheader.us.i, label %.preheader.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %bb.h
  %.01633.us.i = phi i64 [ %i.et, %bb.h ], [ %i.cq, %.preheader.lr.ph.i ] ; 3 uses
end_hunk_5
begin_hunk_6_@"_ZNSt17_Function_handlerIFbSt8functionIFbRKN7httplib8FormDataEEES0_IFbPKcmEEEZNS1_6Server7routingERNS1_7RequestERNS1_8ResponseERNS1_6StreamEE3$_1E9_M_invokeERKSt9_Any_dataOS6_OSA_":bb.a

bb.aa:                                            ; preds = %bb.z
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #48
  unreachable

bb.ab:                                            ; preds = %bb.t, %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !159 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.ac, %bb.ab
  %i.cd = load ptr, ptr %i.w, align 8, !tbaa !159 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i5.i.i, label %"_ZSt10__invoke_rIbRZN7httplib6Server7routingERNS0_7RequestERNS0_8ResponseERNS0_6StreamEE3$_1JSt8functionIFbRKNS0_8FormDataEEESA_IFbPKcmEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit", label %bb.ae

bb.ae:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.ce = invoke noundef zeroext i1 %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %"_ZSt10__invoke_rIbRZN7httplib6Server7routingERNS0_7RequestERNS0_8ResponseERNS0_6StreamEE3$_1JSt8functionIFbRKNS0_8FormDataEEESA_IFbPKcmEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit" unwind label %bb.af ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #48
  unreachable

bb.ag:                                            ; preds = %bb.o
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ag, %bb.z, %_ZNSt14_Function_baseD2Ev.exit13.i.i.i, %bb.s
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ch, %bb.ag ], [ %i.bb, %bb.s ], [ %i.bj, %_ZNSt14_Function_baseD2Ev.exit13.i.i.i ], [ %i.bj, %bb.z ]
  %i.ci = load ptr, ptr %i.z, align 8, !tbaa !159 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i7.i.i, label %_ZNSt14_Function_baseD2Ev.exit8.i.i, label %bb.ah

bb.ah:                                            ; preds = %.body.i.i
  %i.cj = invoke noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8.i.i unwind label %bb.ai ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit8.i.i:              ; preds = %bb.ah, %.body.i.i
  %i.cm = load ptr, ptr %i.w, align 8, !tbaa !159 ; 2 uses
  %.not.i9.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i9.i.i, label %_ZNSt14_Function_baseD2Ev.exit10.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit8.i.i
  %i.cn = invoke noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10.i.i unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #48
  unreachable

_ZNSt14_Function_baseD2Ev.exit10.i.i:             ; preds = %bb.aj, %_ZNSt14_Function_baseD2Ev.exit8.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

"_ZSt10__invoke_rIbRZN7httplib6Server7routingERNS0_7RequestERNS0_8ResponseERNS0_6StreamEE3$_1JSt8functionIFbRKNS0_8FormDataEEESA_IFbPKcmEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESL_E4typeEOSM_DpOSN_.exit": ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i1 %i.ab
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbSt8functionIFbRKN7httplib8FormDataEEES0_IFbPKcmEEEZNS1_6Server7routingERNS1_7RequestERNS1_8ResponseERNS1_6StreamEE3$_1E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #7 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server7routingERNS1_7RequestERNS1_8ResponseERNS1_6StreamEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6Server7routingERNS_7RequestERNS_8ResponseERNS_6StreamEE3$_1", ptr %0, align 8, !tbaa !2735
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server7routingERNS1_7RequestERNS1_8ResponseERNS1_6StreamEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !71
  store ptr %.val, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server7routingERNS1_7RequestERNS1_8ResponseERNS1_6StreamEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #50 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val6, i64 40, i1 false), !tbaa.struct !3778
  store ptr %i.a, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server7routingERNS1_7RequestERNS1_8ResponseERNS1_6StreamEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !71 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server7routingERNS1_7RequestERNS1_8ResponseERNS1_6StreamEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 40) #46
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server7routingERNS1_7RequestERNS1_8ResponseERNS1_6StreamEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server7routingERNS1_7RequestERNS1_8ResponseERNS1_6StreamEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPKcmEZNK7httplib6Server12apply_rangesERKNS3_7RequestERNS3_8ResponseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_E3$_0E9_M_invokeERKSt9_Any_dataOS1_Om"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #7 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !3785  ; 2 uses
  %.val4 = load i64, ptr %2, align 8, !tbaa !78   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !64
  %i.c = sub i64 4611686018427387903, %i.b
  %i.d = icmp ult i64 %i.c, %.val4
  br i1 %i.d, label %bb.b, label %"_ZSt10__invoke_rIbRZNK7httplib6Server12apply_rangesERKNS0_7RequestERNS0_8ResponseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_E3$_0JPKcmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESJ_E4typeEOSK_DpOSL_.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.361) #47
  unreachable

"_ZSt10__invoke_rIbRZNK7httplib6Server12apply_rangesERKNS0_7RequestERNS0_8ResponseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_E3$_0JPKcmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESJ_E4typeEOSK_DpOSL_.exit": ; preds = %bb.a
  %.val3 = load ptr, ptr %1, align 8, !tbaa !314
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef %.val3, i64 noundef %.val4) ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbPKcmEZNK7httplib6Server12apply_rangesERKNS3_7RequestERNS3_8ResponseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_E3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server12apply_rangesERKNS1_7RequestERNS1_8ResponseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK7httplib6Server12apply_rangesERKNS_7RequestERNS_8ResponseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_E3$_0", ptr %0, align 8, !tbaa !2735
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server12apply_rangesERKNS1_7RequestERNS1_8ResponseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server12apply_rangesERKNS1_7RequestERNS1_8ResponseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !164
  store i64 %.val.i, ptr %0, align 8, !tbaa !164
  br label %"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server12apply_rangesERKNS1_7RequestERNS1_8ResponseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK7httplib6Server12apply_rangesERKNS1_7RequestERNS1_8ResponseERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_E3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib13get_client_ipERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS9_SaIS9_EEE3$_0E9_M_invokeERKSt9_Any_dataOS1_SM_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %.val3 = load ptr, ptr %1, align 8, !tbaa !314  ; 5 uses
  %.val4 = load ptr, ptr %2, align 8, !tbaa !314  ; 2 uses
  %i.b = ptrtoint ptr %.val4 to i64
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp ult ptr %.val3, %.val4
  br i1 %i.e, label %.lr.ph.i.i.i.i, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.01213.i.i.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val3, i64 %.01213.i.i.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !65
  switch i8 %i.g, label %.critedge.i.i.i.i [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.h = add nuw i64 %.01213.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.h, %i.d
  br i1 %exitcond.not.i.i.i, label %.lr.ph18.i.preheader.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !364

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.a ], [ %.01213.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not16.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not16.i.i.i.i, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i, label %.lr.ph18.i.preheader.i.i.i

.lr.ph18.i.preheader.i.i.i:                       ; preds = %bb.b, %.critedge.i.i.i.i
  %.012.lcssa.i14.i.i.i = phi i64 [ %.012.lcssa.i.i.i.i, %.critedge.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  br label %.lr.ph18.i.i.i.i

.lr.ph18.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph18.i.preheader.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.l, %bb.c ], [ %i.d, %.lr.ph18.i.preheader.i.i.i ] ; 3 uses
  %i.i = getelementptr i8, ptr %.val3, i64 %.017.i.i.i.i
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !65
  switch i8 %i.k, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph18.i.i.i.i, %.lr.ph18.i.i.i.i
  %i.l = add i64 %.017.i.i.i.i, -1                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i, label %.lr.ph18.i.i.i.i, !llvm.loop !365

_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i:      ; preds = %bb.c, %.lr.ph18.i.i.i.i, %.critedge.i.i.i.i
  %.012.lcssa.i15.i.i.i = phi i64 [ %.012.lcssa.i.i.i.i, %.critedge.i.i.i.i ], [ %.012.lcssa.i14.i.i.i, %.lr.ph18.i.i.i.i ], [ %.012.lcssa.i14.i.i.i, %bb.c ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.critedge.i.i.i.i ], [ 0, %bb.c ], [ %.017.i.i.i.i, %.lr.ph18.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.m = getelementptr inbounds nuw i8, ptr %.val3, i64 %.012.lcssa.i15.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.o, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %gepdiff.i.i.i = sub nsw i64 %.0.lcssa.i.i.i.i, %.012.lcssa.i15.i.i.i ; 4 uses
  store i64 %gepdiff.i.i.i, ptr %i.a, align 8, !tbaa !78
  %i.p = icmp ugt i64 %gepdiff.i.i.i, 15
  br i1 %i.p, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !77
  %i.r = load i64, ptr %i.a, align 8, !tbaa !78
  store i64 %i.r, ptr %i.n, align 8, !tbaa !65
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i
  %i.s = phi ptr [ %i.q, %.noexc.i.i.i.i ], [ %i.n, %_ZN7httplib6detail4trimEPKcS2_mm.exit.i.i.i ] ; 2 uses
  switch i64 %gepdiff.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.t = load i8, ptr %i.m, align 1, !tbaa !65
  store i8 %i.t, ptr %i.s, align 1, !tbaa !65
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.m, i64 %gepdiff.i.i.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  store i64 %i.u, ptr %i.o, align 8, !tbaa !64
  %i.v = load ptr, ptr %3, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !685  ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !697
  %.not.i10.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i10.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !63
  %i.ac = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.n
  br i1 %i.ad, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !64  ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !77
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !65
  store i64 %i.ah, ptr %i.ab, align 8, !tbaa !65
  %.pre.i.i.i = load i64, ptr %i.o, align 8, !tbaa !64
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.h
  %i.ai = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ae, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !64
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !685
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.al, ptr %i.x, align 8, !tbaa !685
  br label %"_ZSt10__invoke_rIvRZN7httplib13get_client_ipERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EEE3$_0JPKcSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESJ_E4typeEOSK_DpOSL_.exit"

bb.i:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.val, ptr %i.y, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i.i.i unwind label %bb.j

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i.i.i: ; preds = %bb.i
  %.pre1.i.i.i = load ptr, ptr %3, align 8, !tbaa !77 ; 2 uses
  %i.am = icmp eq ptr %.pre1.i.i.i, %i.n
  br i1 %i.am, label %"_ZSt10__invoke_rIvRZN7httplib13get_client_ipERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EEE3$_0JPKcSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESJ_E4typeEOSK_DpOSL_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i.i.i
  %i.an = load i64, ptr %i.n, align 8, !tbaa !65
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %.pre1.i.i.i, i64 noundef %i.ao) #46
  br label %"_ZSt10__invoke_rIvRZN7httplib13get_client_ipERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EEE3$_0JPKcSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESJ_E4typeEOSK_DpOSL_.exit"

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.n
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i: ; preds = %bb.j
  %i.as = load i64, ptr %i.n, align 8, !tbaa !65
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.ap

"_ZSt10__invoke_rIvRZN7httplib13get_client_ipERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EEE3$_0JPKcSH_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESJ_E4typeEOSK_DpOSL_.exit": ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib13get_client_ipERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS9_SaIS9_EEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib13get_client_ipERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS7_SaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib13get_client_ipERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EEE3$_0", ptr %0, align 8, !tbaa !2735
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib13get_client_ipERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS7_SaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib13get_client_ipERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS7_SaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !1079
  store i64 %.val.i, ptr %0, align 8, !tbaa !1079
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib13get_client_ipERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS7_SaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib13get_client_ipERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS7_SaIS7_EEE3$_0E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN7httplib6Server15process_requestERNS1_6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSC_ibRbRKSt8functionIFvRNS1_7RequestEEEPbE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #7 align 2 {
bb.a:
  %.val = load i32, ptr %0, align 8, !tbaa !3787
  %i.a = tail call noundef zeroext i1 @_ZN7httplib6detail15is_socket_aliveEi(i32 noundef %.val)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbvEZN7httplib6Server15process_requestERNS1_6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSC_ibRbRKSt8functionIFvRNS1_7RequestEEEPbE3$_0E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server15process_requestERNS1_6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSC_ibRbRKSt8functionIFvRNS1_7RequestEEEPbE3$_0E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6Server15process_requestERNS_6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSA_ibRbRKSt8functionIFvRNS_7RequestEEEPbE3$_0", ptr %0, align 8, !tbaa !2735
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server15process_requestERNS1_6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSC_ibRbRKSt8functionIFvRNS1_7RequestEEEPbE3$_0E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server15process_requestERNS1_6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSC_ibRbRKSt8functionIFvRNS1_7RequestEEEPbE3$_0E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %1, align 8, !tbaa !175
  store i32 %.val.i, ptr %0, align 8, !tbaa !175
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server15process_requestERNS1_6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSC_ibRbRKSt8functionIFvRNS1_7RequestEEEPbE3$_0E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6Server15process_requestERNS1_6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSC_ibRbRKSt8functionIFvRNS1_7RequestEEEPbE3$_0E10_M_managerERSt9_Any_dataRKSO_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbmmRN7httplib8DataSinkEEZNS0_6Server15process_requestERNS0_6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSE_ibRbRKSt8functionIFvRNS0_7RequestEEEPbE3$_1E9_M_invokeERKSt9_Any_dataOmST_S2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(472) %3) #7 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !71
  %.val4 = load ptr, ptr %.val, align 8, !tbaa !1821 ; 2 uses
  %.val5 = load i64, ptr %1, align 8, !tbaa !78
  %.val6 = load i64, ptr %2, align 8, !tbaa !78
  %i.c = getelementptr i8, ptr %.val4, i64 16
  %.val4.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val4, i64 24
  %.val4.val7 = load i8, ptr %i.d, align 8, !tbaa !387, !range !79, !noundef !80
  %i.e = trunc nuw i8 %.val4.val7 to i1
  %i.f = select i1 %i.e, ptr @.str.24, ptr %.val4.val
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.val5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !314
  store i64 %.val6, ptr %i.b, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %"_ZSt10__invoke_rIbRZN7httplib6Server15process_requestERNS0_6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSB_ibRbRKSt8functionIFvRNS0_7RequestEEEPbE3$_1JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESQ_E4typeEOSR_DpOSS_.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

"_ZSt10__invoke_rIbRZN7httplib6Server15process_requestERNS0_6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSB_ibRbRKSt8functionIFvRNS0_7RequestEEEPbE3$_1JmmRNS0_8DataSinkEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESQ_E4typeEOSR_DpOSS_.exit": ; preds = %bb.a
end_hunk_6
