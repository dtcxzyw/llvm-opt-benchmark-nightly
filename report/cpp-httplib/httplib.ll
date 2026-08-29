Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21623
inline.NumDeleted: 6597
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN7httplib6detail6divideEPKcmcSt8functionIFvS2_mS2_mEE:bb.a
  %i.l = icmp eq i8 %i.k, %2
  br i1 %i.l, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !65
  %i.o = icmp eq i8 %i.n, %2
  br i1 %i.o, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !65
  %i.r = icmp eq i8 %i.q, %2
  br i1 %i.r, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit36, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !65
  %i.u = icmp eq i8 %i.t, %2
  br i1 %i.u, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit38, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.w = add nsw i64 %.047.i.i.i, -1
  %i.x = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.x, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !372

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre54.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi.i.i.i = phi i64 [ %.pre54.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %0, %bb.a ] ; 5 uses
  %i.y = sub i64 %i.f, %.pre-phi.i.i.i
  switch i64 %i.y, label %bb.j [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !65
  %i.aa = icmp eq i8 %i.z, %2
  br i1 %i.aa, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.h
  %.1.i.i.i = phi ptr [ %i.ab, %bb.h ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ac = load i8, ptr %.1.i.i.i, align 1, !tbaa !65
  %i.ad = icmp eq i8 %i.ac, %2
  br i1 %i.ad, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.i
  %.2.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.af = load i8, ptr %.2.i.i.i, align 1, !tbaa !65
  %i.ag = icmp eq i8 %i.af, %2
  br i1 %i.ag, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

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
  %.pre-phi = phi i64 [ %.pre, %.lr.ph76._crit_edge ], [ %i.w, %bb.d ] ; 3 uses
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
  %.pre82 = add i64 %.03467, 1
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
  %5 = icmp ult ptr %i.ak, %1
  br i1 %5, label %.lr.ph.i, label %.critedge.i, !llvm.loop !364

.critedge.i:                                      ; preds = %bb.g, %.lr.ph.i, %bb.f
  %.012.lcssa.i = phi i64 [ %.03269, %bb.f ], [ %i.g, %bb.g ], [ %.01213.i, %.lr.ph.i ] ; 2 uses
  %.not16.i = icmp eq i64 %.03467, 0
  br i1 %.not16.i, label %_ZN7httplib6detail4trimEPKcS2_mm.exit, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.critedge.i, %bb.h
  %.017.i = phi i64 [ %i.ao, %bb.h ], [ %.03467, %.critedge.i ] ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 %.017.i
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !65
  switch i8 %i.an, label %_ZN7httplib6detail4trimEPKcS2_mm.exit [
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %.lr.ph18.i, %.lr.ph18.i
  %i.ao = add i64 %.017.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %_ZN7httplib6detail4trimEPKcS2_mm.exit, label %.lr.ph18.i, !llvm.loop !365

_ZN7httplib6detail4trimEPKcS2_mm.exit:            ; preds = %.lr.ph18.i, %bb.h, %.critedge.i
  %.0.lcssa.i = phi i64 [ 0, %.critedge.i ], [ 0, %bb.h ], [ %.017.i, %.lr.ph18.i ] ; 2 uses
  %i.ap = icmp ult i64 %.012.lcssa.i, %.0.lcssa.i
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %.012.lcssa.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !314
  store ptr %i.ar, ptr %i.d, align 8, !tbaa !314
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !159
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %.split64.us, label %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit

.split64.us:                                      ; preds = %bb.i, %bb.c
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit:         ; preds = %bb.i
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !341
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit, %_ZN7httplib6detail4trimEPKcS2_mm.exit
  %i.au = add i64 %.03467, 1                      ; 2 uses
  %i.av = add i64 %.070, 1
  br label %.split

.split:                                           ; preds = %.lr.ph..split_crit_edge, %bb.j
  %.pre-phi83 = phi i64 [ %.pre82, %.lr.ph..split_crit_edge ], [ %i.au, %bb.j ] ; 2 uses
  %.133 = phi i64 [ %.03269, %.lr.ph..split_crit_edge ], [ %i.au, %bb.j ] ; 2 uses
  %.1 = phi i64 [ %.070, %.lr.ph..split_crit_edge ], [ %i.av, %bb.j ]
  %exitcond.not.a = icmp eq i64 %.pre-phi83, %i.g
  br i1 %exitcond.not.a, label %.split61.us, label %.lr.ph, !llvm.loop !377

.split61.us:                                      ; preds = %.split, %bb.e
  %.us-phi = phi i64 [ %.pre-phi, %bb.e ], [ %i.g, %.split ] ; 2 uses
  %.us-phi62 = phi i64 [ %.133.us, %bb.e ], [ %.133, %.split ] ; 3 uses
  %.not40 = icmp eq i64 %.us-phi, 0
  br i1 %.not40, label %.split61.us.thread, label %bb.k

bb.k:                                             ; preds = %.split61.us
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.us-phi62 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %1
  br i1 %i.ax, label %.lr.ph.i51, label %.critedge.i41

.lr.ph.i51:                                       ; preds = %bb.k, %bb.l
  %i.ay = phi ptr [ %i.bb, %bb.l ], [ %i.aw, %bb.k ]
  %.01213.i52 = phi i64 [ %i.ba, %bb.l ], [ %.us-phi62, %bb.k ] ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !65
  switch i8 %i.az, label %.critedge.i41 [
    i8 32, label %bb.l
    i8 9, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph.i51, %.lr.ph.i51
  %i.ba = add i64 %.01213.i52, 1                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %1
  br i1 %i.bc, label %.lr.ph.i51, label %.critedge.i41, !llvm.loop !364

.critedge.i41:                                    ; preds = %bb.l, %.lr.ph.i51, %bb.k
  %.012.lcssa.i42 = phi i64 [ %.us-phi62, %bb.k ], [ %i.g, %bb.l ], [ %.01213.i52, %.lr.ph.i51 ] ; 2 uses
  br label %.lr.ph18.i44

.lr.ph18.i44:                                     ; preds = %.critedge.i41, %bb.m
  %.017.i45 = phi i64 [ %i.bg, %bb.m ], [ %.us-phi, %.critedge.i41 ] ; 3 uses
  %i.bd = getelementptr i8, ptr %0, i64 %.017.i45
  %i.be = getelementptr i8, ptr %i.bd, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !65
  switch i8 %i.bf, label %_ZN7httplib6detail4trimEPKcS2_mm.exit53 [
    i8 32, label %bb.m
    i8 9, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph18.i44, %.lr.ph18.i44
  %i.bg = add i64 %.017.i45, -1                   ; 2 uses
  %.not.i46 = icmp eq i64 %i.bg, 0
  br i1 %.not.i46, label %_ZN7httplib6detail4trimEPKcS2_mm.exit53, label %.lr.ph18.i44, !llvm.loop !365

_ZN7httplib6detail4trimEPKcS2_mm.exit53:          ; preds = %.lr.ph18.i44, %bb.m
  %.0.lcssa.i47 = phi i64 [ 0, %bb.m ], [ %.017.i45, %.lr.ph18.i44 ] ; 2 uses
  %i.bh = icmp ult i64 %.012.lcssa.i42, %.0.lcssa.i47
  br i1 %i.bh, label %bb.n, label %.split61.us.thread

bb.n:                                             ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit53
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.012.lcssa.i42
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !314
  store ptr %i.bj, ptr %i.b, align 8, !tbaa !314
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !159
  %.not.i.i54 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i54, label %bb.o, label %_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit55

bb.o:                                             ; preds = %bb.n
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFvPKcS1_EEclES1_S1_.exit55:       ; preds = %bb.n
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !341
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !376
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
  %.pre-phi = phi i64 [ %.pre, %.lr.ph100._crit_edge ], [ %i.x, %bb.d ] ; 3 uses
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
  %.pre107 = add i64 %.04891, 1
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
  %5 = icmp ult ptr %i.al, %1
  br i1 %5, label %.lr.ph.i, label %.critedge.i, !llvm.loop !364

.critedge.i:                                      ; preds = %bb.g, %.lr.ph.i, %bb.f
  %.012.lcssa.i = phi i64 [ %.04593, %bb.f ], [ %i.g, %bb.g ], [ %.01213.i, %.lr.ph.i ] ; 2 uses
  %.not16.i = icmp eq i64 %.04891, 0
  br i1 %.not16.i, label %_ZN7httplib6detail4trimEPKcS2_mm.exit, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.critedge.i, %bb.h
  %.017.i = phi i64 [ %i.ap, %bb.h ], [ %.04891, %.critedge.i ] ; 3 uses
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
  br i1 %.not.i.i, label %.split86.us, label %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit

.split86.us:                                      ; preds = %bb.i, %bb.c
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit:         ; preds = %bb.i
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !378
  %i.av = call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.av, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit, %_ZN7httplib6detail4trimEPKcS2_mm.exit
  %i.aw = add i64 %.04891, 1                      ; 2 uses
  %i.ax = add i64 %.04294, 1
  br label %.split

.split:                                           ; preds = %.lr.ph..split_crit_edge, %bb.j
  %.pre-phi108 = phi i64 [ %.pre107, %.lr.ph..split_crit_edge ], [ %i.aw, %bb.j ] ; 2 uses
  %.247 = phi i64 [ %.04593, %.lr.ph..split_crit_edge ], [ %i.aw, %bb.j ] ; 2 uses
  %.244 = phi i64 [ %.04294, %.lr.ph..split_crit_edge ], [ %i.ax, %bb.j ]
  %exitcond.not.a = icmp eq i64 %.pre-phi108, %i.g
  br i1 %exitcond.not.a, label %.split83.us, label %.lr.ph, !llvm.loop !381

.split83.us:                                      ; preds = %.split, %bb.e
  %.us-phi = phi i64 [ %.pre-phi, %bb.e ], [ %i.g, %.split ] ; 2 uses
  %.us-phi84 = phi i64 [ %.247.us, %bb.e ], [ %.247, %.split ] ; 3 uses
  %.not58 = icmp eq i64 %.us-phi, 0
  br i1 %.not58, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.split83.us
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.us-phi84 ; 2 uses
  %i.az = icmp ult ptr %i.ay, %1
  br i1 %i.az, label %.lr.ph.i71, label %.critedge.i61

.lr.ph.i71:                                       ; preds = %bb.k, %bb.l
  %i.ba = phi ptr [ %i.bd, %bb.l ], [ %i.ay, %bb.k ]
  %.01213.i72 = phi i64 [ %i.bc, %bb.l ], [ %.us-phi84, %bb.k ] ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !65
  switch i8 %i.bb, label %.critedge.i61 [
    i8 32, label %bb.l
    i8 9, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph.i71, %.lr.ph.i71
  %i.bc = add i64 %.01213.i72, 1                  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc ; 2 uses
  %i.be = icmp ult ptr %i.bd, %1
  br i1 %i.be, label %.lr.ph.i71, label %.critedge.i61, !llvm.loop !364

.critedge.i61:                                    ; preds = %bb.l, %.lr.ph.i71, %bb.k
  %.012.lcssa.i62 = phi i64 [ %.us-phi84, %bb.k ], [ %i.g, %bb.l ], [ %.01213.i72, %.lr.ph.i71 ] ; 2 uses
  br label %.lr.ph18.i64

.lr.ph18.i64:                                     ; preds = %.critedge.i61, %bb.m
  %.017.i65 = phi i64 [ %i.bi, %bb.m ], [ %.us-phi, %.critedge.i61 ] ; 3 uses
  %i.bf = getelementptr i8, ptr %0, i64 %.017.i65
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !65
  switch i8 %i.bh, label %_ZN7httplib6detail4trimEPKcS2_mm.exit73 [
    i8 32, label %bb.m
    i8 9, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph18.i64, %.lr.ph18.i64
  %i.bi = add i64 %.017.i65, -1                   ; 2 uses
  %.not.i66 = icmp eq i64 %i.bi, 0
  br i1 %.not.i66, label %_ZN7httplib6detail4trimEPKcS2_mm.exit73, label %.lr.ph18.i64, !llvm.loop !365

_ZN7httplib6detail4trimEPKcS2_mm.exit73:          ; preds = %.lr.ph18.i64, %bb.m
  %.0.lcssa.i67 = phi i64 [ 0, %bb.m ], [ %.017.i65, %.lr.ph18.i64 ] ; 2 uses
  %i.bj = icmp ult i64 %.012.lcssa.i62, %.0.lcssa.i67
  br i1 %i.bj, label %bb.n, label %.critedge60

bb.n:                                             ; preds = %_ZN7httplib6detail4trimEPKcS2_mm.exit73
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %.012.lcssa.i62
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !314
  store ptr %i.bl, ptr %i.b, align 8, !tbaa !314
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !159
  %.not.i.i74 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i74, label %bb.o, label %_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit75

bb.o:                                             ; preds = %bb.n
  call void @_ZSt25__throw_bad_function_callv() #47
  unreachable

_ZNKSt8functionIFbPKcS1_EEclES1_S1_.exit75:       ; preds = %bb.n
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !378
  %i.bo = call noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.bo, label %.critedge, label %.critedge60

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
end_hunk_0
