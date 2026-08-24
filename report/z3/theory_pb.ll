Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_pb?download=true
inline.NumInlined: 3714
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZplRK15_scoped_numeralI11mpz_managerILb0EEERK3mpz:bb.a
  %i.w = load i32, ptr %i.b, align 8, !tbaa !17
  store i32 %i.w, ptr %i.o, align 8, !tbaa !17
  store i8 %i.r, ptr %i.p, align 4
  br label %_ZN15_scoped_numeralI11mpz_managerILb0EEEC2ERKS2_.exit3

bb.e:                                             ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEEpLERK3mpz.exit
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %._ZN15_scoped_numeralI11mpz_managerILb0EEEC2ERKS2_.exit3_crit_edge unwind label %bb.g

._ZN15_scoped_numeralI11mpz_managerILb0EEEC2ERKS2_.exit3_crit_edge: ; preds = %bb.e
  %.pre4 = load ptr, ptr %3, align 8, !tbaa !656
  br label %_ZN15_scoped_numeralI11mpz_managerILb0EEEC2ERKS2_.exit3

_ZN15_scoped_numeralI11mpz_managerILb0EEEC2ERKS2_.exit3: ; preds = %._ZN15_scoped_numeralI11mpz_managerILb0EEEC2ERKS2_.exit3_crit_edge, %bb.d
  %i.x = phi ptr [ %.pre4, %._ZN15_scoped_numeralI11mpz_managerILb0EEEC2ERKS2_.exit3_crit_edge ], [ %i.n, %bb.d ]
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEEC2ERKS2_.exit3
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #27
  unreachable

_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev.exit: ; preds = %_ZN15_scoped_numeralI11mpz_managerILb0EEEC2ERKS2_.exit3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.g:                                             ; preds = %bb.e, %_ZN15_scoped_numeralI11mpz_managerILb0EEEC2ERKS2_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15_scoped_numeralI11mpz_managerILb0EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define hidden i32 @_ZN3smt9theory_pb9assert_geERNS_7contextEjjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(10728) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.symbol, align 8              ; 4 uses
  %5 = alloca %struct.theory_pb_params, align 4   ; 6 uses
  %6 = alloca %class.params_ref, align 8          ; 7 uses
  %7 = alloca %"class.smt::theory_pb", align 8    ; 7 uses
  %8 = alloca %"struct.smt::theory_pb::psort_expr", align 8 ; 15 uses
  %9 = alloca %class.psort_nw, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr null, ptr %6, align 8, !tbaa !865
  store i32 1000, ptr %5, align 4, !tbaa !746
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 1, ptr %i.a, align 4, !tbaa !744
  invoke void @_ZN16theory_pb_params11updt_paramsERK10params_ref(ptr noundef nonnull align 4 dereferenceable(5) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN16theory_pb_paramsC2ERK10params_ref.exit unwind label %bb.d

_ZN16theory_pb_paramsC2ERK10params_ref.exit:      ; preds = %bb.a
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN3smt9theory_pbC2ERNS_7contextE(ptr noundef nonnull align 8 dereferenceable(968) %7, ptr noundef nonnull align 8 dereferenceable(10728) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %0, ptr %8, align 8, !tbaa !866
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119, !nonnull !115, !align !116 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %7, ptr %i.e, align 8, !tbaa !867
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.13)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZN16theory_pb_paramsC2ERK10params_ref.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  %i.i = invoke noundef i32 @_ZN14family_manager12mk_family_idERK6symbol(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  store i32 %i.i, ptr %i.g, align 8, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 60 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, -4
  store i8 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 64
  store ptr null, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 1, ptr %i.o, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 76 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, -4
  store i8 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 80
  store ptr null, ptr %i.s, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 0, ptr %9, align 8, !tbaa !868
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %8, ptr %i.t, align 8, !tbaa !871
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, i8 0, i64 12, i1 false)
  %i.v = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE2geEbjjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %9, i1 noundef zeroext false, i32 noundef %1, i32 noundef %2, ptr noundef %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZN7pb_utilD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN3smt9theory_pbD2Ev(ptr noundef nonnull align 8 dead_on_return(968) dereferenceable(968) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret i32 %i.v

bb.d:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.h

bb.e:                                             ; preds = %.noexc, %_ZN16theory_pb_paramsC2ERK10params_ref.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZN7pb_utilD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.x, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN3smt9theory_pbD2Ev(ptr noundef nonnull align 8 dead_on_return(968) dereferenceable(968) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE2geEbjjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.svector.202, align 8         ; 8 uses
  %6 = alloca %class.svector.202, align 8         ; 8 uses
  %i.a = icmp ugt i32 %2, %3
  br i1 %i.a, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %5, align 8, !tbaa !681
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr null, ptr %6, align 8, !tbaa !681
  %i.c = icmp eq i32 %2, 1
  br i1 %i.c, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mk_orEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %3, ptr noundef %4)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.d, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.k, %bb.n, %bb.o, %bb.l, %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %lpad.phi

bb.f:                                             ; preds = %bb.c
  %i.e = shl i32 %2, 1
  %.not.i = icmp ugt i32 %i.e, %3
  br i1 %.not.i, label %.lr.ph.preheader.i, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit.thread32

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.f = sub nuw i32 %3, %2
  %wide.trip.count.i = zext i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i, %.lr.ph.preheader.i
  %i.g = phi ptr [ null, %.lr.ph.preheader.i ], [ %i.p, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.0.0.copyload.i, label %bb.h [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.i = xor i32 %.sroa.0.0.copyload.i, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i: ; preds = %bb.h, %bb.g, %.lr.ph.i
  %.sroa.06.0.i.i = phi i32 [ %i.i, %bb.h ], [ 0, %bb.g ], [ 1, %.lr.ph.i ]
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12   ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !12
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.j, label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i

bb.j:                                             ; preds = %bb.i, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.j
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i

_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i: ; preds = %.noexc, %bb.i
  %i.p = phi ptr [ %.pre.i.i, %.noexc ], [ %i.g, %bb.i ] ; 4 uses
  %i.q = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.l, %bb.i ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.s
  store i32 %.sroa.06.0.i.i, ptr %i.t, align 4, !tbaa !12
  %i.u = add i32 %i.q, 1                          ; 2 uses
  store i32 %i.u, ptr %i.r, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %.lr.ph.i, !llvm.loop !873

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i
  %i.v = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE2leEbjjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i32 noundef %i.f, i32 noundef %i.u, ptr noundef nonnull %i.p)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit unwind label %.loopexit.split-lp

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit.thread32: ; preds = %bb.f
  %i.w = load i32, ptr %0, align 8, !tbaa !874
  switch i32 %i.w, label %bb.n [
    i32 0, label %bb.k
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 1, label %bb.k
    i32 4, label %bb.l
    i32 5, label %bb.m
  ]

bb.k:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit.thread32, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit.thread32, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit.thread32, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit.thread32
  %i.x = select i1 %1, i32 3, i32 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.x, ptr %i.y, align 8, !tbaa !878
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE4cardEjjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit.thread unwind label %.loopexit.split-lp

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit.thread: ; preds = %bb.k
  %i.z = add i32 %2, -1
  %i.aa = load ptr, ptr %6, align 8, !tbaa !681   ; 2 uses
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  %.sroa.0.0.copyload = load i32, ptr %i.ac, align 4, !tbaa !12
  br label %bb.q

bb.l:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit.thread32
  %i.ad = select i1 %1, i32 3, i32 1
  %i.ae = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9unate_cmpENS3_5cmp_tEjjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ad, i32 noundef %2, i32 noundef %3, ptr noundef %4)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit.thread32
  %i.af = select i1 %1, i32 3, i32 1
  %i.ag = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11circuit_cmpENS3_5cmp_tEjjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.af, i32 noundef %2, i32 noundef %3, ptr noundef %4)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit.thread32
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.62, i32 noundef 262, ptr noundef nonnull @.str.22)
          to label %bb.o unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.p unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload18 = load i32, ptr %4, align 4, !tbaa !12
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit: ; preds = %bb.m, %bb.l, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.d, %bb.p
  %.sroa.0.0.ph = phi i32 [ %i.ag, %bb.m ], [ %i.v, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ %.sroa.0.0.copyload18, %bb.p ], [ %i.d, %bb.d ], [ %i.ae, %bb.l ] ; 2 uses
  %.pr = load ptr, ptr %6, align 8, !tbaa !681    ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit.thread, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit
  %.sroa.0.037 = phi i32 [ %.sroa.0.0.copyload, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit.thread ], [ %.sroa.0.0.ph, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit ]
  %i.ah = phi ptr [ %i.aa, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit.thread ], [ %.pr, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ai)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit, %bb.q
  %.sroa.0.038 = phi i32 [ %.sroa.0.0.ph, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8unate_geEbjjPKN3sat7literalE.exit ], [ %.sroa.0.037, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.al = load ptr, ptr %5, align 8, !tbaa !681   ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.al, null
  br i1 %.not.i.i22, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit23, label %bb.s

bb.s:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.am)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit23 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit23:       ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %bb.a, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit23
  %.sroa.0.1 = phi i32 [ %.sroa.0.038, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit23 ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i32 %.sroa.0.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN3smt9theory_pb16inc_propagationsERNS0_4ineqE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(968) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(212) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !661
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !661
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN3smt9theory_pb10restart_ehEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3smt9theory_pb2gcEv(ptr noundef nonnull align 8 dereferenceable(968) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !675  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN8uint_set5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !12
  br label %_ZN8uint_set5resetEv.exit

_ZN8uint_set5resetEv.exit:                        ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !675  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph:            ; preds = %_ZN8uint_set5resetEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph, %bb.n
  %i.i = phi ptr [ %i.e, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph ], [ %i.dh, %bb.n ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %.040 = phi i32 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph ], [ %.4, %bb.n ] ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN6vectorIP5trailLb0EjE13expand_vectorEv:bb.a
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !80
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @__cxa_free_exception(ptr %i.o) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !857
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mk_orEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.svector.202, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !681
  %.not.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext i32 %1 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i, %.lr.ph.preheader.i.i
  %i.a = phi ptr [ null, %.lr.ph.preheader.i.i ], [ %.pr, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i: ; preds = %bb.c, %bb.b
  %.pr = phi ptr [ %.pre.i.i.i, %bb.c ], [ %i.a, %bb.b ] ; 15 uses
  %i.i = phi i32 [ %.pre2.i.i.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.pr, i64 -4
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.pr, i64 %i.k
  %i.m = load i32, ptr %i.b, align 4, !tbaa !12
  store i32 %i.m, ptr %i.l, align 4, !tbaa !12
  %i.n = add i32 %i.i, 1                          ; 3 uses
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit, label %.lr.ph.i.i, !llvm.loop !1052

_ZN6vectorIN3sat7literalELb0EjE3endEv.exit:       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %.pr, i64 %i.p
  %.not25 = icmp eq i32 %i.n, 0
  br i1 %.not25, label %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit.thread38, label %.lr.ph

_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit.thread38: ; preds = %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit
  %i.r = getelementptr inbounds i8, ptr %.pr, i64 -4
  store i32 0, ptr %i.r, align 4, !tbaa !12
  br label %.loopexit.thread

.lr.ph:                                           ; preds = %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit, %bb.e
  %.027 = phi i32 [ %.1, %bb.e ], [ 0, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit ] ; 3 uses
  %.02126 = phi ptr [ %i.v, %bb.e ], [ %.pr, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit ] ; 2 uses
  %.sroa.015.0.copyload = load i32, ptr %.02126, align 4, !tbaa !12 ; 3 uses
  switch i32 %.sroa.015.0.copyload, label %bb.d [
    i32 0, label %.loopexit
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.s = add i32 %.027, 1
  %i.t = zext i32 %.027 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.pr, i64 %i.t
  store i32 %.sroa.015.0.copyload, ptr %i.u, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.1 = phi i32 [ %.027, %.lr.ph ], [ %i.s, %bb.d ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.02126, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.q
  br i1 %.not, label %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit, label %.lr.ph

_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit:    ; preds = %bb.e
  %i.w = getelementptr inbounds i8, ptr %.pr, i64 -4
  store i32 %.1, ptr %i.w, align 4, !tbaa !12
  switch i32 %.1, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit [
    i32 0, label %.loopexit.thread
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit
  %.sroa.015.0.copyload17 = load i32, ptr %.pr, align 4, !tbaa !12
  br label %.loopexit.thread

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1053, !nonnull !115, !align !116
  %i.aa = getelementptr inbounds i8, ptr %.pr, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.ac = invoke i32 @_ZN3smt9theory_pb10psort_expr6mk_maxEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(88) %i.z, i32 noundef %i.ab, ptr noundef nonnull %.pr)
          to label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit..loopexit_crit_edge unwind label %bb.f

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit..loopexit_crit_edge: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !681
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit..loopexit_crit_edge
  %i.ad = phi ptr [ %.pre, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit..loopexit_crit_edge ], [ %.pr, %.lr.ph ] ; 2 uses
  %.sroa.015.2 = phi i32 [ %i.ac, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit..loopexit_crit_edge ], [ %.sroa.015.0.copyload, %.lr.ph ] ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i22, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit.thread38, %bb.g, %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit, %.loopexit
  %.sroa.015.242 = phi i32 [ %.sroa.015.2, %.loopexit ], [ 1, %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit.thread38 ], [ %.sroa.015.0.copyload17, %bb.g ], [ 1, %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit ]
  %i.ae = phi ptr [ %i.ad, %.loopexit ], [ %.pr, %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit.thread38 ], [ %.pr, %bb.g ], [ %.pr, %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.af)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %.loopexit.thread
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %bb.a, %.loopexit, %.loopexit.thread
  %.sroa.015.243 = phi i32 [ %.sroa.015.2, %.loopexit ], [ %.sroa.015.242, %.loopexit.thread ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i32 %.sroa.015.243
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE2leEbjjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.svector.202, align 8         ; 8 uses
  %6 = alloca %class.svector.202, align 8         ; 8 uses
  %7 = alloca %class.svector.202, align 8         ; 8 uses
  %.not = icmp ult i32 %2, %3
  br i1 %.not, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %5, align 8, !tbaa !681
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr null, ptr %6, align 8, !tbaa !681
  %i.a = shl i32 %2, 1
  %.not.i = icmp ugt i32 %i.a, %3
  br i1 %.not.i, label %.lr.ph.preheader.i, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.b = sub nuw i32 %3, %2
  %wide.trip.count.i = zext i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i, %.lr.ph.preheader.i
  %i.c = phi ptr [ null, %.lr.ph.preheader.i ], [ %i.l, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.d, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.0.0.copyload.i, label %bb.d [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.e = xor i32 %.sroa.0.0.copyload.i, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i: ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.sroa.06.0.i.i = phi i32 [ %i.e, %bb.d ], [ 0, %bb.c ], [ 1, %.lr.ph.i ]
  %i.f = icmp eq ptr %i.c, null
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !12
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.f, label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i

bb.f:                                             ; preds = %bb.e, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i

_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i: ; preds = %.noexc, %bb.e
  %i.l = phi ptr [ %.pre.i.i, %.noexc ], [ %i.c, %bb.e ] ; 4 uses
  %i.m = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.h, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.o
  store i32 %.sroa.06.0.i.i, ptr %i.p, align 4, !tbaa !12
  %i.q = add i32 %i.m, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit, label %.lr.ph.i, !llvm.loop !873

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit: ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i
  %i.r = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE2geEbjjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i32 noundef %i.b, i32 noundef %3, ptr noundef nonnull %i.l)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit, %bb.r, %bb.x, %bb.y, %bb.v, %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit.thread: ; preds = %bb.b
  %i.s = icmp eq i32 %2, 1
  br i1 %i.s, label %bb.g, label %bb.q

bb.g:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr null, ptr %7, align 8, !tbaa !681
  %i.t = load i32, ptr %0, align 8, !tbaa !874
  switch i32 %i.t, label %bb.l [
    i32 1, label %bb.h
    i32 0, label %bb.h
    i32 4, label %bb.h
    i32 5, label %bb.h
    i32 2, label %bb.j
    i32 3, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %i.u = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12mk_at_most_1EbjPKN3sat7literalER7svectorIS5_jEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext false)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE19mk_ordered_atmost_1EbjPKN3sat7literalE.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.m, %bb.l, %bb.j, %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ad

bb.j:                                             ; preds = %bb.g
  %i.w = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE21mk_at_most_1_bimanderEbjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE19mk_ordered_atmost_1EbjPKN3sat7literalE.exit unwind label %bb.i

bb.k:                                             ; preds = %bb.g
  %i.x = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12mk_ordered_1EbbjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i1 noundef zeroext false, i32 noundef %3, ptr noundef %4)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE19mk_ordered_atmost_1EbjPKN3sat7literalE.exit unwind label %bb.i

bb.l:                                             ; preds = %bb.g
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.62, i32 noundef 292, ptr noundef nonnull @.str.22)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  %.sroa.027.0.copyload = load i32, ptr %4, align 4, !tbaa !12
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE19mk_ordered_atmost_1EbjPKN3sat7literalE.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE19mk_ordered_atmost_1EbjPKN3sat7literalE.exit: ; preds = %bb.k, %bb.j, %bb.h, %bb.n
  %.sroa.027.0 = phi i32 [ %.sroa.027.0.copyload, %bb.n ], [ %i.w, %bb.j ], [ %i.u, %bb.h ], [ %i.x, %bb.k ]
  %i.y = load ptr, ptr %7, align 8, !tbaa !681    ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE19mk_ordered_atmost_1EbjPKN3sat7literalE.exit
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.z)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE19mk_ordered_atmost_1EbjPKN3sat7literalE.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

bb.q:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit.thread
  %i.ac = load i32, ptr %0, align 8, !tbaa !874
  switch i32 %i.ac, label %bb.x [
    i32 0, label %bb.r
    i32 2, label %bb.r
    i32 3, label %bb.r
    i32 1, label %bb.r
    i32 4, label %bb.v
    i32 5, label %bb.w
  ]

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.ad = select i1 %1, i32 4, i32 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !878
  %i.af = add nuw i32 %2, 1
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE4cardEjjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.af, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.s unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.ag = load ptr, ptr %6, align 8, !tbaa !681   ; 3 uses
  %i.ah = zext i32 %2 to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %.sroa.0.0.copyload = load i32, ptr %i.ai, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.0.0.copyload, label %bb.u [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread
    i32 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.aj = xor i32 %.sroa.0.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

bb.v:                                             ; preds = %bb.q
  %i.ak = select i1 %1, i32 4, i32 0
  %i.al = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9unate_cmpENS3_5cmp_tEjjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ak, i32 noundef %2, i32 noundef %3, ptr noundef %4)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.q
  %i.am = select i1 %1, i32 4, i32 0
  %i.an = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11circuit_cmpENS3_5cmp_tEjjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.am, i32 noundef %2, i32 noundef %3, ptr noundef %4)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit unwind label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.q
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.62, i32 noundef 312, ptr noundef nonnull @.str.22)
          to label %bb.y unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.z unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %.sroa.027.0.copyload28 = load i32, ptr %4, align 4, !tbaa !12
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit: ; preds = %bb.w, %bb.v, %bb.u, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit, %bb.z, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  %.sroa.027.1.ph = phi i32 [ %i.an, %bb.w ], [ %i.aj, %bb.u ], [ %i.al, %bb.v ], [ %i.r, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dualizeERjjPKN3sat7literalER7svectorIS6_jE.exit ], [ %.sroa.027.0.copyload28, %bb.z ], [ %.sroa.027.0, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit ] ; 2 uses
  %.pr = load ptr, ptr %6, align 8, !tbaa !681    ; 2 uses
  %.not.i.i36 = icmp eq ptr %.pr, null
  br i1 %.not.i.i36, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit37, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread: ; preds = %bb.s, %bb.t, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  %.sroa.027.149 = phi i32 [ %.sroa.027.1.ph, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit ], [ 0, %bb.t ], [ 1, %bb.s ]
  %i.ao = phi ptr [ %.pr, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit ], [ %i.ag, %bb.t ], [ %i.ag, %bb.s ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ap)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit37 unwind label %bb.aa

bb.aa:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit37:       ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread
  %.sroa.027.150 = phi i32 [ %.sroa.027.1.ph, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit ], [ %.sroa.027.149, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.as = load ptr, ptr %5, align 8, !tbaa !681   ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.as, null
  br i1 %.not.i.i38, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit39, label %bb.ab

bb.ab:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit37
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.at)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit39 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit39:       ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit37, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ae

bb.ad:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn

bb.ae:                                            ; preds = %bb.a, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit39
  %.sroa.027.2 = phi i32 [ %.sroa.027.150, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit39 ], [ 0, %bb.a ]
  ret i32 %.sroa.027.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE4cardEjjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.svector.202, align 8         ; 8 uses
  %6 = alloca %class.svector.202, align 8         ; 8 uses
  %.not = icmp ugt i32 %2, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7sortingEjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %2, 10
  br i1 %i.a, label %bb.d, label %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread_crit_edge

._ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread_crit_edge: ; preds = %bb.c
  %.pre = lshr i32 %2, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !878
  %.pre.i.i = add nsw i32 %2, -1
  %.pre23.i.i = shl nuw nsw i32 1, %.pre.i.i      ; 3 uses
  switch i32 %i.c, label %.thread.fold.split.i.i [
    i32 1, label %.thread.i.i
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit
  ]

.thread.fold.split.i.i:                           ; preds = %bb.d
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.fold.split.i.i, %bb.d
  %.sroa.6.022.i.i = phi i32 [ 0, %bb.d ], [ %.pre23.i.i, %.thread.fold.split.i.i ]
  %i.d = add nuw nsw i32 %.sroa.6.022.i.i, %.pre23.i.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit: ; preds = %bb.d, %.thread.i.i
  %.sroa.6.1.i.i = phi i32 [ %.pre23.i.i, %bb.d ], [ %i.d, %.thread.i.i ]
  %i.e = lshr i32 %2, 1                           ; 4 uses
  %i.f = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.e) #31, !inline_history !1054 ; 2 uses
  %.sroa.416.0.extract.shift.i = lshr i64 %i.f, 32
  %.sroa.416.0.extract.trunc.i = trunc nuw i64 %.sroa.416.0.extract.shift.i to i32
  %i.g = sub nuw nsw i32 %2, %i.e                 ; 2 uses
  %i.h = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.g) #31, !inline_history !1054 ; 2 uses
  %.sroa.414.0.extract.shift.i = lshr i64 %i.h, 32
  %.sroa.414.0.extract.trunc.i = trunc nuw i64 %.sroa.414.0.extract.shift.i to i32
  %i.i = add i64 %i.h, %i.f
  %i.j = add i32 %.sroa.414.0.extract.trunc.i, %.sroa.416.0.extract.trunc.i
  %i.k = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.e, i32 noundef %i.g), !inline_history !1054 ; 2 uses
  %.sroa.412.0.extract.shift.i = lshr i64 %i.k, 32
  %.sroa.412.0.extract.trunc.i = trunc nuw i64 %.sroa.412.0.extract.shift.i to i32
  %i.l = add i64 %i.i, %i.k
  %i.m = add i32 %i.j, %.sroa.412.0.extract.trunc.i
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.l to i32
  %i.n = mul i32 %1, 5
  %i.o = add i32 %.sroa.6.1.i.i, %i.n
  %i.p = mul i32 %.sroa.0.0.extract.trunc.i, 5
  %i.q = add i32 %i.m, %i.p
  %i.r = icmp ult i32 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread

bb.e:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit
  tail call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8dsortingEjjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.p

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread: ; preds = %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread_crit_edge, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit
  %.pre-phi = phi i32 [ %.pre, %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread_crit_edge ], [ %i.e, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %5, align 8, !tbaa !681
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr null, ptr %6, align 8, !tbaa !681
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE4cardEjjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %.pre-phi, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread
  %i.s = sub nuw i32 %2, %.pre-phi
  %i.t = zext nneg i32 %.pre-phi to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE4cardEjjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.s, ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %5, align 8, !tbaa !681    ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.y, %bb.h ], [ 0, %bb.g ]
  %i.z = load ptr, ptr %6, align 8, !tbaa !681    ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit26, label %bb.i

bb.i:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit26

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit26:   ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.i
  %.0.i25 = phi i32 [ %i.ac, %bb.i ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ]
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6smergeEjjPKN3sat7literalEjS7_R7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %.0.i, ptr noundef %i.v, i32 noundef %.0.i25, ptr noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit26
  %i.ad = load ptr, ptr %6, align 8, !tbaa !681   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ae)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ah = load ptr, ptr %5, align 8, !tbaa !681   ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i27, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit28, label %bb.m

bb.m:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ai)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit28 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit28:       ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.p

bb.o:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit26, %bb.f, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.al

bb.p:                                             ; preds = %bb.e, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit28, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i32 @_ZN3smt9theory_pb10psort_expr6mk_maxEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector, align 8          ; 7 uses
  %4 = alloca %class.obj_ref, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1055, !nonnull !115, !align !116 ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64
  store i64 %i.c, ptr %3, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store ptr null, ptr %i.d, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !91
  %.not16 = icmp eq i32 %1, 0
  br i1 %.not16, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.g
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1055
  %i.f = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = zext i32 %i.g to i64
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.j = phi ptr [ %i.z, %bb.b ], [ null, %bb.a ]
  %.0.i.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.k = invoke noundef ptr @_ZN11ast_manager6mk_appEiiSt4spanIKP4exprLm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(952) %i.i, i32 noundef 0, i32 noundef 6, ptr %i.j, i64 %.0.i.i.i)
          to label %_ZN11ast_manager5mk_orERK10ref_vectorI4exprS_E.exit unwind label %bb.x ; 6 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !1057, !nonnull !115, !align !116
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %.sroa.0.0.copyload = load i32, ptr %i.m, align 4, !tbaa !12
  invoke void @_ZNK3smt7context12literal2exprEN3sat7literalER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(10728) %i.l, i32 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %4, align 8, !tbaa !87     ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !102
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !102
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.d, %bb.c
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !98   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !12
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !98 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.e
  %i.y = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i.i, %.noexc ], [ %i.r, %bb.e ] ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr %i.n, ptr %i.ac, align 8, !tbaa !104
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %.lr.ph, !llvm.loop !1058

bb.h:                                             ; preds = %bb.f, %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZN11ast_manager5mk_orERK10ref_vectorI4exprS_E.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager5mk_orERK10ref_vectorI4exprS_E.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !102
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !102
  br label %bb.i

bb.i:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN11ast_manager5mk_orERK10ref_vectorI4exprS_E.exit
  %i.ai = load ptr, ptr %4, align 8, !tbaa !87    ; 3 uses
  %.not.i4.i = icmp eq ptr %i.ai, null
  br i1 %.not.i4.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !118, !nonnull !115, !align !116
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11circuit_cmpENS3_5cmp_tEjjPKN3sat7literalE:bb.a
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %bb.af, %bb.ag, %bb.ao, %bb.an
  %.pn.pn = phi { ptr, i32 } [ %i.co, %bb.an ], [ %i.cp, %bb.ao ], [ %i.bw, %bb.ag ], [ %i.bv, %bb.af ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.ax

bb.aq:                                            ; preds = %bb.g
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.62, i32 noundef 588, ptr noundef nonnull @.str.22)
          to label %bb.ar unwind label %bb.h

bb.ar:                                            ; preds = %bb.aq
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %bb.as unwind label %bb.h

bb.as:                                            ; preds = %bb.ar
  %.sroa.042.0.copyload = load i32, ptr %4, align 4, !tbaa !12
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit: ; preds = %bb.m, %bb.l, %bb.k, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mk_orEN3sat7literalES5_.exit60, %bb.as, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  %.sroa.042.0 = phi i32 [ %.sroa.042.0.copyload, %bb.as ], [ %i.cj, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit ], [ %i.ae, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mk_orEN3sat7literalES5_.exit60 ], [ %i.ab, %bb.m ], [ 0, %bb.l ], [ 1, %bb.k ]
  %i.cq = load ptr, ptr %10, align 8, !tbaa !681  ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i86, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit87, label %bb.at

bb.at:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cr)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit87 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit87:       ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.cu = load ptr, ptr %9, align 8, !tbaa !681   ; 2 uses
  %.not.i.i88 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i88, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit89, label %bb.av

bb.av:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit87
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cv)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit89 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit89:       ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit87, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret i32 %.sroa.042.0

bb.ax:                                            ; preds = %bb.h, %bb.ap, %bb.f
  %.pn56 = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.x, %bb.h ], [ %.pn.pn, %bb.ap ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  resume { ptr, i32 } %.pn56
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11circuit_addEjjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [3 x %"class.sat::literal"], align 4 ; 6 uses
  %6 = alloca %class.svector.202, align 8         ; 8 uses
  %7 = alloca %class.svector.202, align 8         ; 8 uses
  switch i32 %2, label %bb.h [
    i32 0, label %.preheader
    i32 1, label %bb.d
  ]

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE15mk_unit_circuitEjN3sat7literalER7svectorIS5_jE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load ptr, ptr %4, align 8, !tbaa !681
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit
  %i.a = phi ptr [ %i.h, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit ], [ %.pre, %.lr.ph.preheader ] ; 4 uses
  %.035 = phi i32 [ %i.n, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit ], [ 0, %.lr.ph.preheader ]
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.b, %.lr.ph
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit: ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %.pre.i, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %i.i = phi i32 [ %.pre2.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.k
  store i32 1, ptr %i.l, align 4, !tbaa !12
  %i.m = add i32 %i.i, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !12
  %i.n = add nuw i32 %.035, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %1
  br i1 %exitcond.not, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE15mk_unit_circuitEjN3sat7literalER7svectorIS5_jE.exit, label %.lr.ph, !llvm.loop !1087

bb.d:                                             ; preds = %bb.a
  %.sroa.09.0.copyload = load i32, ptr %3, align 4, !tbaa !12
  %i.o = load ptr, ptr %4, align 8, !tbaa !681    ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12   ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i: ; preds = %bb.f, %bb.e
  %i.v = phi i32 [ %.pre2.i.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.w = phi ptr [ %.pre.i.i, %bb.f ], [ %i.o, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.y = zext i32 %i.v to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.y
  store i32 %.sroa.09.0.copyload, ptr %i.z, align 4, !tbaa !12
  %i.aa = add i32 %i.v, 1                         ; 2 uses
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !12
  %i.ab = icmp ugt i32 %1, 1
  br i1 %i.ab, label %.lr.ph.preheader.i, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE15mk_unit_circuitEjN3sat7literalER7svectorIS5_jE.exit

.lr.ph.preheader.i:                               ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i
  %i.ac = phi i32 [ %i.am, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i ], [ %i.aa, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ] ; 2 uses
  %i.ad = phi ptr [ %i.ah, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i ], [ %i.w, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ] ; 2 uses
  %.09.i = phi i32 [ %i.an, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i ], [ 1, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ]
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = icmp eq i32 %i.ac, %i.af
  br i1 %i.ag, label %bb.g, label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i

bb.g:                                             ; preds = %.lr.ph.preheader.i
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre.i5.i = load ptr, ptr %4, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i6.i = getelementptr inbounds i8, ptr %.pre.i5.i, i64 -4
  %.pre2.i7.i = load i32, ptr %.phi.trans.insert.i6.i, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i

_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i: ; preds = %bb.g, %.lr.ph.preheader.i
  %i.ah = phi ptr [ %.pre.i5.i, %bb.g ], [ %i.ad, %.lr.ph.preheader.i ] ; 3 uses
  %i.ai = phi i32 [ %.pre2.i7.i, %bb.g ], [ %i.ac, %.lr.ph.preheader.i ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ak
  store i32 1, ptr %i.al, align 4, !tbaa !12
  %i.am = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !12
  %i.an = add nuw i32 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.an, %1
  br i1 %exitcond.not.i, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE15mk_unit_circuitEjN3sat7literalER7svectorIS5_jE.exit, label %.lr.ph.preheader.i, !llvm.loop !1088

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr null, ptr %6, align 8, !tbaa !681
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr null, ptr %7, align 8, !tbaa !681
  %i.ao = lshr i32 %2, 1                          ; 3 uses
  %i.ap = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11circuit_addEjjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.ao, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.aq = sub nuw i32 %2, %i.ao
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ar
  %i.at = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11circuit_addEjjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.aq, ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.au = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE14mk_add_circuitERK7svectorIN3sat7literalEjES9_RS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 %i.ap, ptr %5, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.at, ptr %i.av, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !12
  %i.ax = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mk_orEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, ptr noundef nonnull %5)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ay = load ptr, ptr %7, align 8, !tbaa !681   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.az)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bc = load ptr, ptr %6, align 8, !tbaa !681   ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i32, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit33, label %bb.o

bb.o:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bd)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit33 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit33:       ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE15mk_unit_circuitEjN3sat7literalER7svectorIS5_jE.exit

bb.q:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.k, %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %i.bi, %bb.s ], [ %i.bh, %bb.r ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn.pn

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE15mk_unit_circuitEjN3sat7literalER7svectorIS5_jE.exit: ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit, %.preheader, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit33
  %.sroa.026.0 = phi i32 [ %i.ax, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit33 ], [ 1, %.preheader ], [ 1, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i ], [ 1, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit ], [ 1, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit.i ]
  ret i32 %.sroa.026.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mk_geERK7svectorIN3sat7literalEjES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %4 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %5 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !681    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %._crit_edge, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12   ; 2 uses
  %.not32 = icmp eq i32 %i.d, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = zext i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit31, %bb.a, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %.sroa.027.0.lcssa = phi i32 [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ], [ 0, %bb.a ], [ %i.y, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit31 ]
  ret i32 %.sroa.027.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit31
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %i.i, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit31 ]
  %.sroa.027.035 = phi i32 [ 0, %.lr.ph ], [ %i.y, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit31 ] ; 2 uses
  %.sroa.020.034 = phi i32 [ 1, %.lr.ph ], [ %i.q, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit31 ]
  %i.i = add nsw i64 %indvars.iv, -1              ; 6 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !681
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i
  %.sroa.010.0.copyload = load i32, ptr %i.k, align 4, !tbaa !12
  %i.l = load ptr, ptr %2, align 8, !tbaa !681
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i
  %.sroa.08.0.copyload = load i32, ptr %i.m, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.08.0.copyload, label %bb.d [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = xor i32 %.sroa.08.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.06.0.i = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ], [ 1, %bb.b ]
  %i.o = call i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_andEN3sat7literalES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %.sroa.010.0.copyload, i32 %.sroa.06.0.i)
  %i.p = call i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_andEN3sat7literalES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %.sroa.027.035, i32 %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 %.sroa.020.034, ptr %5, align 4, !tbaa !12
  store i32 %i.p, ptr %i.e, align 4, !tbaa !12
  %i.q = call i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mk_orEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.r = load ptr, ptr %1, align 8, !tbaa !681
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.i
  %.sroa.02.0.copyload = load i32, ptr %i.s, align 4, !tbaa !12
  %i.t = load ptr, ptr %2, align 8, !tbaa !681
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.i
  %.sroa.0.0.copyload = load i32, ptr %i.u, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.0.0.copyload, label %bb.f [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit31
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit31

bb.f:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  %i.v = xor i32 %.sroa.0.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit31

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit31: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit, %bb.e, %bb.f
  %.sroa.06.0.i30 = phi i32 [ %i.v, %bb.f ], [ 0, %bb.e ], [ 1, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 %.sroa.02.0.copyload, ptr %4, align 4, !tbaa !12
  store i32 %.sroa.06.0.i30, ptr %i.f, align 4, !tbaa !12
  %i.w = call i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mk_orEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.x = call i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_andEN3sat7literalES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %.sroa.027.035, i32 %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %i.q, ptr %3, align 4, !tbaa !12
  store i32 %i.x, ptr %i.g, align 4, !tbaa !12
  %i.y = call i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mk_orEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.wide = icmp eq i64 %i.i, 0
  br i1 %.not.wide, label %._crit_edge, label %bb.b, !llvm.loop !1089
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE14mk_add_circuitERK7svectorIN3sat7literalEjES9_RS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.svector.202, align 8         ; 21 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !681    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.critedge, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.a, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit ], [ 0, %bb.a ] ; 14 uses
  %i.c = phi ptr [ %i.dp, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.057.0113 = phi i32 [ %i.dk, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit ], [ 1, %bb.a ] ; 9 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %i.f = zext i32 %i.e to i64
  %i.g = icmp samesign ult i64 %indvars.iv, %i.f
  br i1 %i.g, label %bb.b, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, %bb.a
end_hunk_2
begin_hunk_3_@_ZN8psort_nwIN3smt9theory_pb10psort_exprEE14mk_add_circuitERK7svectorIN3sat7literalEjES9_RS7_:bb.a
bb.au:                                            ; preds = %bb.ai
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.av:                                            ; preds = %bb.aj
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ak
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %.pn.pn = phi { ptr, i32 } [ %i.dr, %bb.ao ], [ %i.du, %bb.ar ], [ %i.dt, %bb.aq ], [ %i.ds, %bb.ap ], [ %i.dz, %bb.aw ], [ %i.dy, %bb.av ], [ %i.dx, %bb.au ], [ %i.dw, %bb.at ], [ %i.dv, %bb.as ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_andEN3sat7literalES5_S5_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.svector.202, align 8         ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !681
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !681 ; 4 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4 ; 2 uses
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !12 ; 2 uses
  %i.a = zext i32 %.pre2.i to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.a
  store i32 %1, ptr %i.b, align 4, !tbaa !12
  %i.c = add i32 %.pre2.i, 1                      ; 3 uses
  store i32 %i.c, ptr %.phi.trans.insert.i, align 4, !tbaa !12
  %i.d = getelementptr inbounds i8, ptr %.pre.i, i64 -8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc5 unwind label %bb.j

.noexc5:                                          ; preds = %bb.c
  %.pre.i2 = load ptr, ptr %4, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i3 = getelementptr inbounds i8, ptr %.pre.i2, i64 -4
  %.pre2.i4 = load i32, ptr %.phi.trans.insert.i3, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.noexc5
  %i.g = phi i32 [ %.pre2.i4, %.noexc5 ], [ %i.c, %bb.b ] ; 2 uses
  %i.h = phi ptr [ %.pre.i2, %.noexc5 ], [ %.pre.i, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.j = zext i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  store i32 %2, ptr %i.k, align 4, !tbaa !12
  %i.l = add i32 %i.g, 1                          ; 3 uses
  store i32 %i.l, ptr %i.i, align 4, !tbaa !12
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !12
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc10 unwind label %bb.j

.noexc10:                                         ; preds = %bb.e
  %.pre.i7 = load ptr, ptr %4, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i8 = getelementptr inbounds i8, ptr %.pre.i7, i64 -4
  %.pre2.i9 = load i32, ptr %.phi.trans.insert.i8, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %.noexc10, %bb.d
  %i.p = phi i32 [ %.pre2.i9, %.noexc10 ], [ %i.l, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %.pre.i7, %.noexc10 ], [ %i.h, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  store i32 %3, ptr %i.t, align 4, !tbaa !12
  %i.u = add i32 %i.p, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !12
  %i.v = invoke i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_andERK7svectorIN3sat7literalEjE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %4, align 8, !tbaa !681    ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.x)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i32 %i.v

bb.j:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7sortingEjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.svector.202, align 8         ; 8 uses
  %5 = alloca %class.svector.202, align 8         ; 8 uses
  switch i32 %1, label %bb.f [
    i32 0, label %bb.s
    i32 1, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !681    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi i32 [ %.pre2.i, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %bb.d ], [ %i.a, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = load i32, ptr %2, align 4, !tbaa !12
  store i32 %i.m, ptr %i.l, align 4, !tbaa !12
  %i.n = add i32 %i.h, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  tail call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mergeEjPKN3sat7literalEjS7_R7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, ptr noundef %2, i32 noundef 1, ptr noundef nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.p = icmp ult i32 %1, 10
  br i1 %i.p, label %bb.g, label %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread_crit_edge

._ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread_crit_edge: ; preds = %bb.f
  %.pre = lshr i32 %1, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !878
  %.pre.i.i = add nsw i32 %1, -1
  %.pre23.i.i = shl nuw nsw i32 1, %.pre.i.i      ; 3 uses
  switch i32 %i.r, label %.thread.fold.split.i.i [
    i32 1, label %.thread.i.i
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit
  ]

.thread.fold.split.i.i:                           ; preds = %bb.g
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.fold.split.i.i, %bb.g
  %.sroa.6.022.i.i = phi i32 [ 0, %bb.g ], [ %.pre23.i.i, %.thread.fold.split.i.i ]
  %i.s = add nuw nsw i32 %.sroa.6.022.i.i, %.pre23.i.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit: ; preds = %bb.g, %.thread.i.i
  %.sroa.6.1.i.i = phi i32 [ %.pre23.i.i, %bb.g ], [ %i.s, %.thread.i.i ]
  %i.t = lshr i32 %1, 1                           ; 4 uses
  %i.u = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.t), !inline_history !1091 ; 2 uses
  %.sroa.415.0.extract.shift.i = lshr i64 %i.u, 32
  %.sroa.415.0.extract.trunc.i = trunc nuw i64 %.sroa.415.0.extract.shift.i to i32
  %i.v = sub nuw nsw i32 %1, %i.t                 ; 2 uses
  %i.w = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.v), !inline_history !1091 ; 2 uses
  %.sroa.413.0.extract.shift.i = lshr i64 %i.w, 32
  %.sroa.413.0.extract.trunc.i = trunc nuw i64 %.sroa.413.0.extract.shift.i to i32
  %i.x = add i64 %i.w, %i.u
  %i.y = add i32 %.sroa.413.0.extract.trunc.i, %.sroa.415.0.extract.trunc.i
  %i.z = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.t, i32 noundef %i.v), !inline_history !1091 ; 2 uses
  %.sroa.411.0.extract.shift.i = lshr i64 %i.z, 32
  %.sroa.411.0.extract.trunc.i = trunc nuw i64 %.sroa.411.0.extract.shift.i to i32
  %i.aa = add i64 %i.x, %i.z
  %i.ab = add i32 %i.y, %.sroa.411.0.extract.trunc.i
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.aa to i32
  %i.ac = mul nuw nsw i32 %1, 5
  %i.ad = add nuw nsw i32 %.sroa.6.1.i.i, %i.ac
  %i.ae = mul i32 %.sroa.0.0.extract.trunc.i, 5
  %i.af = add i32 %i.ab, %i.ae
  %i.ag = icmp ult i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread

bb.h:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit
  tail call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8dsortingEjjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.s

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread: ; preds = %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread_crit_edge, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit
  %.pre-phi = phi i32 [ %.pre, %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread_crit_edge ], [ %i.t, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !681
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %5, align 8, !tbaa !681
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7sortingEjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.pre-phi, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread
  %i.ah = sub nuw i32 %1, %.pre-phi
  %i.ai = zext nneg i32 %.pre-phi to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ai
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7sortingEjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ah, ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %4, align 8, !tbaa !681   ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !12
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ %i.an, %bb.k ], [ 0, %bb.j ]
  %i.ao = load ptr, ptr %5, align 8, !tbaa !681   ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit22, label %bb.l

bb.l:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit22

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit22:   ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.l
  %.0.i21 = phi i32 [ %i.ar, %bb.l ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit ]
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mergeEjPKN3sat7literalEjS7_R7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0.i, ptr noundef %i.ak, i32 noundef %.0.i21, ptr noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit22
  %i.as = load ptr, ptr %5, align 8, !tbaa !681   ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.at)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.aw = load ptr, ptr %4, align 8, !tbaa !681   ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i23, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit24, label %bb.p

bb.p:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ax)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit24 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit24:       ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.s

bb.r:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit22, %bb.i, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.ba

bb.s:                                             ; preds = %bb.h, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit24, %bb.e, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %2, 10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !878
  %.pre.i = add nsw i32 %2, -1
  %.pre23.i = shl nuw nsw i32 1, %.pre.i          ; 3 uses
  switch i32 %i.c, label %.thread.fold.split.i [
    i32 1, label %.thread.i
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit
  ]

.thread.fold.split.i:                             ; preds = %bb.b
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.fold.split.i, %bb.b
  %.sroa.6.022.i = phi i32 [ 0, %bb.b ], [ %.pre23.i, %.thread.fold.split.i ]
  %i.d = add nuw i32 %.sroa.6.022.i, %.pre23.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit: ; preds = %bb.b, %.thread.i
  %.sroa.6.1.i = phi i32 [ %.pre23.i, %bb.b ], [ %i.d, %.thread.i ]
  %i.e = lshr i32 %2, 1                           ; 3 uses
  %i.f = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.e), !inline_history !1092 ; 2 uses
  %.sroa.416.0.extract.shift = lshr i64 %i.f, 32
  %.sroa.416.0.extract.trunc = trunc nuw i64 %.sroa.416.0.extract.shift to i32
  %i.g = sub nuw nsw i32 %2, %i.e                 ; 2 uses
  %i.h = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.g), !inline_history !1092 ; 2 uses
  %.sroa.414.0.extract.shift = lshr i64 %i.h, 32
  %.sroa.414.0.extract.trunc = trunc nuw i64 %.sroa.414.0.extract.shift to i32
  %i.i = add i64 %i.h, %i.f
  %i.j = add i32 %.sroa.414.0.extract.trunc, %.sroa.416.0.extract.trunc
  %i.k = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.e, i32 noundef %i.g), !inline_history !1092 ; 2 uses
  %.sroa.412.0.extract.shift = lshr i64 %i.k, 32
  %.sroa.412.0.extract.trunc = trunc nuw i64 %.sroa.412.0.extract.shift to i32
  %i.l = add i64 %i.i, %i.k
  %i.m = add i32 %i.j, %.sroa.412.0.extract.trunc
  %.sroa.0.0.extract.trunc = trunc i64 %i.l to i32
  %i.n = mul i32 %1, 5
  %i.o = add i32 %.sroa.6.1.i, %i.n
  %i.p = mul i32 %.sroa.0.0.extract.trunc, 5
  %i.q = add i32 %i.m, %i.p
  %i.r = icmp ult i32 %i.o, %i.q
  br label %bb.c

bb.c:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit, %bb.a
  %i.s = phi i1 [ false, %bb.a ], [ %i.r, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit ]
  ret i1 %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8dsortingEjjPKN3sat7literalER7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.svector.202, align 8         ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %5, align 8, !tbaa !681
  %.not52 = icmp eq i32 %1, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !878
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %.lr.ph51, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %._crit_edge
  %.pre = load ptr, ptr %5, align 8, !tbaa !681
  br label %.lr.ph48

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.02745 = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.e ]
  %i.e = load i32, ptr %i.a, align 4, !tbaa !1059
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !1059
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !1053, !nonnull !115, !align !116
  %i.h = invoke i32 @_ZN3smt9theory_pb10psort_expr5freshEPKc(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull @.str.72)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5freshEPKc.exit unwind label %bb.f

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5freshEPKc.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %4, align 8, !tbaa !681    ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5freshEPKc.exit
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12   ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !12
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5freshEPKc.exit
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.p = phi i32 [ %.pre2.i, %.noexc ], [ %i.l, %bb.c ] ; 2 uses
  %i.q = phi ptr [ %.pre.i, %.noexc ], [ %i.i, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  store i32 %i.h, ptr %i.t, align 4, !tbaa !12
  %i.u = add i32 %i.p, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !12
  %i.v = add nuw i32 %.02745, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1093

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %bb.j
  %i.x = phi ptr [ %i.ap, %bb.j ], [ %.pre, %.lr.ph48.preheader ] ; 4 uses
  %.02347 = phi i32 [ %i.at, %bb.j ], [ 1, %.lr.ph48.preheader ] ; 3 uses
  %i.y = add i32 %.02347, -1
  %i.z = load ptr, ptr %4, align 8, !tbaa !681
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = icmp eq ptr %i.x, null
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph48
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !12
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.lr.ph48
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc38 unwind label %bb.k

.noexc38:                                         ; preds = %bb.h
  %.pre.i35 = load ptr, ptr %5, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i36 = getelementptr inbounds i8, ptr %.pre.i35, i64 -4
  %.pre2.i37 = load i32, ptr %.phi.trans.insert.i36, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %.noexc38, %bb.g
  %i.ai = phi i32 [ %.pre2.i37, %.noexc38 ], [ %i.ae, %bb.g ] ; 2 uses
  %i.aj = phi ptr [ %.pre.i35, %.noexc38 ], [ %i.x, %bb.g ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.al = zext i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !12
  store i32 %i.an, ptr %i.am, align 4, !tbaa !12
  %i.ao = add i32 %i.ai, 1
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !12
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_subsetEbjjR7svectorIN3sat7literalEjEjPKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true, i32 noundef %.02347, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %2, ptr noundef %3)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %5, align 8, !tbaa !681   ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !12
  %i.at = add i32 %.02347, 1                      ; 2 uses
  %.not29 = icmp ugt i32 %i.at, %1
  br i1 %.not29, label %thread-pre-split, label %.lr.ph48, !llvm.loop !1094

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

thread-pre-split:                                 ; preds = %bb.j
  %.pr.pre = load i32, ptr %i.c, align 8, !tbaa !878
  %i.av = icmp eq i32 %.pr.pre, 0
  br i1 %i.av, label %.loopexit, label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge, %thread-pre-split
  %i.aw = add i32 %2, 1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph51, %.critedge
  %.050 = phi i32 [ 1, %.lr.ph51 ], [ %i.bu, %.critedge ] ; 3 uses
  %i.ax = add i32 %.050, -1
  %i.ay = load ptr, ptr %4, align 8, !tbaa !681
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.az
  %.sroa.0.0.copyload = load i32, ptr %i.ba, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.0.0.copyload, label %bb.n [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

bb.n:                                             ; preds = %bb.l
  %i.bb = xor i32 %.sroa.0.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.06.0.i = phi i32 [ %i.bb, %bb.n ], [ 0, %bb.m ], [ 1, %bb.l ]
  %i.bc = load ptr, ptr %5, align 8, !tbaa !681   ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !12 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc42 unwind label %bb.r

.noexc42:                                         ; preds = %bb.p
end_hunk_3
begin_hunk_4_@_ZN8psort_nwIN3smt9theory_pb10psort_exprEE5mergeEjPKN3sat7literalEjS7_R7svectorIS5_jE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  resume { ptr, i32 } %lpad.phi

_ZN6vectorIN3sat7literalELb0EjE6appendEjPKS1_.exit: ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i64, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i, %bb.i, %bb.p, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit117, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i32 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_maxEN3sat7literalES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1059
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !1059
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %1, ptr %3, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %2, ptr %i.e, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1053, !nonnull !115, !align !116
  %i.h = call i32 @_ZN3smt9theory_pb10psort_expr6mk_maxEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(88) %i.g, i32 noundef 2, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %i.h, %bb.b ], [ %1, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE3cmpEN3sat7literalES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca [3 x %"class.sat::literal"], align 4 ; 6 uses
  %6 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %7 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %8 = alloca [3 x %"class.sat::literal"], align 4 ; 6 uses
  %9 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %10 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !878
  switch i32 %i.b, label %bb.i [
    i32 0, label %bb.b
    i32 4, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.c
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  tail call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6cmp_leEN3sat7literalES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, i32 %2, i32 %3, i32 %4)
  br label %bb.i

bb.c:                                             ; preds = %bb.a, %bb.a
  switch i32 %4, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i
    i32 1, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread22.i
  ]

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread22.i: ; preds = %bb.c
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i: ; preds = %bb.c
  %i.c = xor i32 %4, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread22.i, %bb.c
  %.sink.i = phi i32 [ %i.c, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i ], [ 0, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread22.i ], [ 1, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i32 %.sink.i, ptr %10, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %1, ptr %i.d, align 4, !tbaa !12
  call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store i32 %.sink.i, ptr %9, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %2, ptr %i.e, align 4, !tbaa !12
  call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  switch i32 %3, label %bb.e [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6cmp_geEN3sat7literalES5_S5_S5_.exit
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6cmp_geEN3sat7literalES5_S5_S5_.exit

bb.e:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i
  %i.f = xor i32 %3, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6cmp_geEN3sat7literalES5_S5_S5_.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6cmp_geEN3sat7literalES5_S5_S5_.exit: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i, %bb.d, %bb.e
  %.sroa.06.0.i19.i = phi i32 [ %i.f, %bb.e ], [ 0, %bb.d ], [ 1, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 %.sroa.06.0.i19.i, ptr %8, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %1, ptr %i.g, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %2, ptr %i.h, align 4, !tbaa !12
  call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, ptr noundef nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  switch i32 %4, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i.i [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i.i
    i32 1, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread22.i.i
  ]

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread22.i.i: ; preds = %bb.f
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i.i

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i.i: ; preds = %bb.f
  %i.i = xor i32 %4, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i.i

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i.i: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i.i, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread22.i.i, %bb.f
  %.sink.i.i = phi i32 [ %i.i, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.i.i ], [ 0, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.thread22.i.i ], [ 1, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 %.sink.i.i, ptr %7, align 4, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %1, ptr %i.j, align 4, !tbaa !12
  call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 %.sink.i.i, ptr %6, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %2, ptr %i.k, align 4, !tbaa !12
  call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  switch i32 %3, label %bb.h [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6cmp_eqEN3sat7literalES5_S5_S5_.exit
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6cmp_eqEN3sat7literalES5_S5_S5_.exit

bb.h:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i.i
  %i.l = xor i32 %3, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6cmp_eqEN3sat7literalES5_S5_S5_.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6cmp_eqEN3sat7literalES5_S5_S5_.exit: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i.i, %bb.g, %bb.h
  %.sroa.06.0.i19.i.i = phi i32 [ %i.l, %bb.h ], [ 0, %bb.g ], [ 1, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit18.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 %.sroa.06.0.i19.i.i, ptr %5, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %1, ptr %i.m, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %2, ptr %i.n, align 4, !tbaa !12
  call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6cmp_leEN3sat7literalES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, i32 %2, i32 %3, i32 %4)
  br label %bb.i

bb.i:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6cmp_eqEN3sat7literalES5_S5_S5_.exit, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6cmp_geEN3sat7literalES5_S5_S5_.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 10
  %i.b = icmp ult i32 %2, 10
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i32 %2, %1                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !878  ; 2 uses
  %.not.i = icmp eq i32 %i.e, 1
  %.pre54.i = mul nuw nsw i32 %2, %1
  %.pre55.i = lshr i32 %.pre54.i, 1               ; 2 uses
  br i1 %.not.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw nsw i32 %.pre55.i, %i.c          ; 2 uses
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.b, %bb.c
  %.sroa.6.052.i = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ]
  %i.g = add nuw nsw i32 %.sroa.6.052.i, %.pre55.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit: ; preds = %bb.c, %.thread.i
  %.sroa.6.1.i = phi i32 [ %i.f, %bb.c ], [ %i.g, %.thread.i ]
  %i.h = lshr i32 %1, 1                           ; 3 uses
  %i.i = sub nuw nsw i32 %1, %i.h                 ; 2 uses
  %i.j = lshr i32 %2, 1                           ; 3 uses
  %i.k = sub nuw nsw i32 %2, %i.j                 ; 2 uses
  %i.l = trunc i32 %3 to i1
  %i.m = lshr i32 %3, 1                           ; 2 uses
  %i.n = add nuw i32 %i.m, 1
  %i.o = add i32 %3, 1
  %i.p = lshr i32 %i.o, 1
  %i.q = select i1 %i.l, i32 %i.p, i32 %i.n
  %i.r = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.q) #31, !inline_history !1099 ; 2 uses
  %.sroa.439.0.extract.shift.i = lshr i64 %i.r, 32
  %.sroa.439.0.extract.trunc.i = trunc nuw i64 %.sroa.439.0.extract.shift.i to i32
  %i.s = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.m) #31, !inline_history !1099 ; 2 uses
  %.sroa.437.0.extract.shift.i = lshr i64 %i.s, 32
  %.sroa.437.0.extract.trunc.i = trunc nuw i64 %.sroa.437.0.extract.shift.i to i32
  %i.t = add i32 %.sroa.437.0.extract.trunc.i, %.sroa.439.0.extract.trunc.i
  %i.u = add nuw nsw i32 %i.j, %i.h
  %i.v = load i32, ptr %i.d, align 8, !tbaa !878  ; 3 uses
  %i.w = icmp eq i32 %i.v, 2
  %.sroa.4.0.extract.trunc.i.i = select i1 %i.w, i32 6, i32 3
  %i.x = add nsw i32 %i.i, -1
  %i.y = add nsw i32 %i.x, %i.k
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.y) ; 2 uses
  %i.z = mul nuw nsw i32 %.sroa.4.0.extract.trunc.i.i, %.sroa.speculated.i.i
  %i.aa = add i32 %i.t, %i.z                      ; 2 uses
  %.not.i12 = icmp eq i32 %i.v, 1
  %i.ab = add i32 %i.aa, 2
  %.not14.i = icmp ne i32 %i.v, 0
  %spec.select.i = zext i1 %.not14.i to i32
  %i.ac = select i1 %.not.i12, i32 %i.aa, i32 %i.ab
  %i.ad = shl nuw nsw i32 %.sroa.speculated.i.i, 1
  %i.ae = add i64 %i.s, %i.r
  %.sroa.040.0.extract.trunc.i = trunc i64 %i.ae to i32
  %i.af = or disjoint i32 %i.ad, 1
  %i.ag = add i32 %i.af, %.sroa.040.0.extract.trunc.i
  %i.ah = mul nuw nsw i32 %i.c, 5
  %i.ai = add nuw nsw i32 %.sroa.6.1.i, %i.ah
  %i.aj = mul i32 %i.ag, 5
  %i.ak = add i32 %i.aj, %spec.select.i
  %i.al = add i32 %i.ak, %i.ac
  %i.am = icmp ult i32 %i.ai, %i.al
  br label %bb.d

bb.d:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit, %bb.a
  %i.an = phi i1 [ %i.am, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit ], [ false, %bb.a ]
  ret i1 %i.an
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dsmergeEjjPKN3sat7literalEjS7_R7svectorIS5_jE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::allocator.303", align 1 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator.303", align 1 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::allocator.303", align 1 ; 4 uses
  %13 = alloca %class.svector.202, align 8        ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::allocator.303", align 1 ; 4 uses
  %16 = alloca %class.svector.202, align 8        ; 10 uses
  %17 = alloca %class.svector.202, align 8        ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::allocator.303", align 1 ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.std::allocator.303", align 1 ; 4 uses
  %22 = alloca %class.svector.202, align 8        ; 7 uses
  %23 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %24 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %25 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %26 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %27 = alloca %class.svector.202, align 8        ; 14 uses
  %.not310 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not310, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !878
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %.thread, label %.preheader277

.preheader277:                                    ; preds = %._crit_edge
  %.not311 = icmp eq i32 %2, 0                    ; 2 uses
  br i1 %.not311, label %.preheader276.thread, label %.lr.ph294

.lr.ph294:                                        ; preds = %.preheader277
  %i.e = getelementptr inbounds nuw i8, ptr %26, i64 4
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit
  %.079292 = phi i32 [ 0, %.lr.ph ], [ %i.w, %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit ]
  %i.f = load i32, ptr %i.a, align 4, !tbaa !1059
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.a, align 4, !tbaa !1059
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !1053, !nonnull !115, !align !116
  %i.i = tail call i32 @_ZN3smt9theory_pb10psort_expr5freshEPKc(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull @.str.71)
  %i.j = load ptr, ptr %6, align 8, !tbaa !681    ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12   ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !12
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.q = phi i32 [ %.pre2.i, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.r = phi ptr [ %.pre.i, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t
  store i32 %i.i, ptr %i.u, align 4, !tbaa !12
  %i.v = add i32 %i.q, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !12
  %i.w = add nuw i32 %.079292, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1100

.preheader276:                                    ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  %.not312 = icmp eq i32 %4, 0
  br i1 %.not312, label %._crit_edge303, label %.lr.ph296

.preheader276.thread:                             ; preds = %.preheader277
  %.not312500 = icmp eq i32 %4, 0
  br i1 %.not312500, label %._crit_edge303, label %.lr.ph296

.lr.ph296:                                        ; preds = %.preheader276.thread, %.preheader276
  %i.x = getelementptr inbounds nuw i8, ptr %25, i64 4
  %wide.trip.count324 = zext i32 %4 to i64
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph294, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph294 ], [ %indvars.iv.next, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %.sroa.047.0.copyload = load i32, ptr %i.y, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.047.0.copyload, label %bb.g [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

bb.g:                                             ; preds = %bb.e
  %i.z = xor i32 %.sroa.047.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.06.0.i = phi i32 [ %i.z, %bb.g ], [ 0, %bb.f ], [ 1, %bb.e ]
  %i.aa = load ptr, ptr %6, align 8, !tbaa !681
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %.sroa.046.0.copyload = load i32, ptr %i.ab, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  store i32 %.sroa.06.0.i, ptr %26, align 4, !tbaa !12
  store i32 %.sroa.046.0.copyload, ptr %i.e, align 4, !tbaa !12
  call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond320.not, label %.preheader276, label %bb.e, !llvm.loop !1101

.preheader275:                                    ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit99
  br i1 %.not311, label %._crit_edge303, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader275
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.preheader

bb.h:                                             ; preds = %.lr.ph296, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit99
  %indvars.iv321 = phi i64 [ 0, %.lr.ph296 ], [ %indvars.iv.next322, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit99 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv321
  %.sroa.040.0.copyload = load i32, ptr %i.ae, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.040.0.copyload, label %bb.j [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit99
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit99

bb.j:                                             ; preds = %bb.h
  %i.af = xor i32 %.sroa.040.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit99

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit99: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.06.0.i98 = phi i32 [ %i.af, %bb.j ], [ 0, %bb.i ], [ 1, %bb.h ]
end_hunk_4
begin_hunk_5_@_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7dsmergeEjjPKN3sat7literalEjS7_R7svectorIS5_jE:bb.a

bb.ab:                                            ; preds = %split359
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @__cxa_free_exception(ptr %i.da) #26
  br label %.body180

bb.ac:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i229
  unreachable

bb.ad:                                            ; preds = %bb.x
  store i32 2, ptr %i.cz, align 4, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 0, ptr %i.du, align 4, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  store ptr %i.dv, ptr %16, align 8, !tbaa !681
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dx = load i32, ptr %i.cs, align 4, !tbaa !12
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !12
  store i32 1, ptr %i.dw, align 4, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.dz = load i32, ptr %i.cz, align 4, !tbaa !12
  %i.ea = icmp eq i32 %i.dz, 1
  br i1 %i.ea, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load i32, ptr %i.cz, align 4, !tbaa !12 ; 3 uses
  %i.ec = mul i32 %i.eb, 3
  %i.ed = add i32 %i.ec, 1
  %i.ee = lshr i32 %i.ed, 1                       ; 3 uses
  %i.ef = shl i32 %i.ee, 2
  %i.eg = add i32 %i.ef, 8                        ; 2 uses
  %.not.i224.1 = icmp ugt i32 %i.ee, %i.eb
  br i1 %.not.i224.1, label %bb.af, label %split359

bb.af:                                            ; preds = %bb.ae
  %i.eh = shl i32 %i.eb, 2
  %i.ei = add i32 %i.eh, 8
  %.not27.i233.1 = icmp ugt i32 %i.eg, %i.ei
  br i1 %.not27.i233.1, label %bb.ag, label %split359

bb.ag:                                            ; preds = %bb.af
  %i.ej = zext i32 %i.eg to i64
  %i.ek = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.cz, i64 noundef %i.ej)
          to label %.noexc179.1 unwind label %bb.at ; 3 uses

.noexc179.1:                                      ; preds = %bb.ag
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  store ptr %i.el, ptr %16, align 8, !tbaa !681
  store i32 %i.ee, ptr %i.ek, align 4, !tbaa !12
  %.phi.trans.insert.i.i.i.i177.1 = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %.pre2.i.i.i.i178.1 = load i32, ptr %.phi.trans.insert.i.i.i.i177.1, align 4, !tbaa !12
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %.noexc179.1
  %i.em = phi ptr [ %i.el, %.noexc179.1 ], [ %i.dv, %bb.ad ] ; 5 uses
  %i.en = phi i32 [ %.pre2.i.i.i.i178.1, %.noexc179.1 ], [ 1, %bb.ad ] ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 -4
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ep
  %i.er = load i32, ptr %i.dy, align 4, !tbaa !12
  store i32 %i.er, ptr %i.eq, align 4, !tbaa !12
  %i.es = add i32 %i.en, 1                        ; 3 uses
  store i32 %i.es, ptr %i.eo, align 4, !tbaa !12
  %i.et = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.eu = getelementptr inbounds i8, ptr %i.em, i64 -8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !12
  %i.ew = icmp eq i32 %i.es, %i.ev
  br i1 %i.ew, label %bb.ai, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i171.2

bb.ai:                                            ; preds = %bb.ah
  %i.ex = getelementptr inbounds i8, ptr %i.em, i64 -8 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !12 ; 3 uses
  %i.ez = mul i32 %i.ey, 3
  %i.fa = add i32 %i.ez, 1
  %i.fb = lshr i32 %i.fa, 1                       ; 3 uses
  %i.fc = shl i32 %i.fb, 2
  %i.fd = add i32 %i.fc, 8                        ; 2 uses
  %.not.i224.2 = icmp ugt i32 %i.fb, %i.ey
  br i1 %.not.i224.2, label %bb.aj, label %split359

bb.aj:                                            ; preds = %bb.ai
  %i.fe = shl i32 %i.ey, 2
  %i.ff = add i32 %i.fe, 8
  %.not27.i233.2 = icmp ugt i32 %i.fd, %i.ff
  br i1 %.not27.i233.2, label %bb.ak, label %split359

bb.ak:                                            ; preds = %bb.aj
  %i.fg = zext i32 %i.fd to i64
  %i.fh = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fg)
          to label %.noexc179.2 unwind label %bb.at ; 3 uses

.noexc179.2:                                      ; preds = %bb.ak
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  store ptr %i.fi, ptr %16, align 8, !tbaa !681
  store i32 %i.fb, ptr %i.fh, align 4, !tbaa !12
  %.phi.trans.insert.i.i.i.i177.2 = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %.pre2.i.i.i.i178.2 = load i32, ptr %.phi.trans.insert.i.i.i.i177.2, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i171.2

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i171.2: ; preds = %.noexc179.2, %bb.ah
  %i.fj = phi ptr [ %i.fi, %.noexc179.2 ], [ %i.em, %bb.ah ] ; 3 uses
  %i.fk = phi i32 [ %.pre2.i.i.i.i178.2, %.noexc179.2 ], [ %i.es, %bb.ah ] ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 -4
  %i.fm = zext i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fm
  %i.fo = load i32, ptr %i.et, align 4, !tbaa !12
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !12
  %i.fp = add i32 %i.fk, 1
  store i32 %i.fp, ptr %i.fl, align 4, !tbaa !12
  %i.fq = load ptr, ptr %i.cy, align 8, !tbaa !1057, !nonnull !115, !align !116
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !1063, !nonnull !115, !align !116
  %i.ft = invoke noundef ptr @_ZN3smt9theory_pb7justifyERK7svectorIN3sat7literalEjE(ptr noundef nonnull align 8 dereferenceable(968) %i.fs, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i171.2
  %i.fu = invoke noundef ptr @_ZN3smt7context9mk_clauseEjPN3sat7literalEPNS_13justificationENS_11clause_kindEPNS_13clause_del_ehE(ptr noundef nonnull align 8 dereferenceable(10728) %i.fq, i32 noundef 3, ptr noundef nonnull %i.fj, ptr noundef %i.ft, i32 noundef 0, ptr noundef null)
          to label %bb.am unwind label %bb.ap     ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.fv = load ptr, ptr %16, align 8, !tbaa !681  ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i5.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fw)
          to label %bb.aq unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #27
  unreachable

bb.ap:                                            ; preds = %bb.al, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i.i171.2
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %.body180

bb.aq:                                            ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.ga = load ptr, ptr %22, align 8, !tbaa !681  ; 2 uses
  %.not.i.i13.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i13.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gb)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i:       ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE.exit

bb.at:                                            ; preds = %bb.ak, %bb.ag, %bb.x
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body180

.body180:                                         ; preds = %bb.at, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i231, %bb.ap
  %eh.lpad-body181 = phi { ptr, i32 } [ %i.fz, %bb.ap ], [ %i.ge, %bb.at ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i231 ], [ %i.dt, %bb.ab ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %common.resume

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE.exit: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit103, %.lr.ph.i.2, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit103.thread, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit.i
  %i.gf = add i32 %.085298, 1                     ; 2 uses
  %.not96 = icmp ugt i32 %i.gf, %4
  br i1 %.not96, label %.critedge, label %bb.k, !llvm.loop !1104

._crit_edge303:                                   ; preds = %.critedge, %.preheader276, %.preheader276.thread, %.preheader275
  %.pr = load i32, ptr %i.c, align 8, !tbaa !878
  %.not92 = icmp eq i32 %.pr, 0
  br i1 %.not92, label %bb.dq, label %.thread

.thread:                                          ; preds = %._crit_edge, %._crit_edge303
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store ptr null, ptr %27, align 8, !tbaa !681
  br i1 %.not310, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %.lr.ph308

.lr.ph308:                                        ; preds = %.thread
  %i.gg = getelementptr inbounds nuw i8, ptr %24, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gl = zext i32 %4 to i64                      ; 2 uses
  %i.gm = zext i32 %2 to i64                      ; 2 uses
  %wide.trip.count336 = zext i32 %1 to i64
  %.not314 = icmp eq i32 %2, 0
  br label %bb.aw

.loopexit274:                                     ; preds = %bb.dp, %bb.bm
  %indvars.iv.next330 = add i32 %indvars.iv329, 1
  %exitcond337.not = icmp eq i64 %indvars.iv.next334, %wide.trip.count336
  br i1 %exitcond337.not, label %._crit_edge309, label %bb.aw, !llvm.loop !1105

._crit_edge309:                                   ; preds = %.loopexit274
  %.pre390 = load ptr, ptr %27, align 8, !tbaa !681 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre390, null
  br i1 %.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %._crit_edge309
  %i.gn = getelementptr inbounds i8, ptr %.pre390, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gn)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #27
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %.thread, %._crit_edge309, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %bb.dq

bb.aw:                                            ; preds = %.lr.ph308, %.loopexit274
  %indvars.iv333 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next334, %.loopexit274 ] ; 9 uses
  %indvars.iv329 = phi i32 [ 1, %.lr.ph308 ], [ %indvars.iv.next330, %.loopexit274 ] ; 2 uses
  %umin = call i32 @llvm.umin.i32(i32 %2, i32 %indvars.iv329)
  %i.gq = load ptr, ptr %27, align 8, !tbaa !681  ; 5 uses
  %.not.i = icmp eq ptr %i.gq, null               ; 2 uses
  br i1 %.not.i, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 -4
  store i32 0, ptr %i.gr, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %bb.aw, %bb.ax
  %i.gs = load ptr, ptr %6, align 8, !tbaa !681
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv333
  %.sroa.012.0.copyload = load i32, ptr %i.gt, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.012.0.copyload, label %bb.az [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit105
    i32 1, label %bb.ay
  ]

bb.ay:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit105

bb.az:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.gu = xor i32 %.sroa.012.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit105

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit105: ; preds = %bb.az, %bb.ay, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %.sroa.06.0.i104 = phi i32 [ %i.gu, %bb.az ], [ 0, %bb.ay ], [ 1, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit ]
  br i1 %.not.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit105
  %i.gv = getelementptr inbounds i8, ptr %i.gq, i64 -4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !12 ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gq, i64 -8
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !12
  %i.gz = icmp eq i32 %i.gw, %i.gy
  br i1 %i.gz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit105
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %.noexc unwind label %bb.bg

.noexc:                                           ; preds = %bb.bb
  %.pre.i106 = load ptr, ptr %27, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i107 = getelementptr inbounds i8, ptr %.pre.i106, i64 -4
  %.pre2.i108 = load i32, ptr %.phi.trans.insert.i107, align 4, !tbaa !12
  br label %bb.bc

bb.bc:                                            ; preds = %.noexc, %bb.ba
  %i.ha = phi i32 [ %.pre2.i108, %.noexc ], [ %i.gw, %bb.ba ] ; 2 uses
  %i.hb = phi ptr [ %.pre.i106, %.noexc ], [ %i.gq, %bb.ba ] ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 -4
  %i.hd = zext i32 %i.ha to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.hd
  store i32 %.sroa.06.0.i104, ptr %i.he, align 4, !tbaa !12
  %i.hf = add i32 %i.ha, 1
  store i32 %i.hf, ptr %i.hc, align 4, !tbaa !12
  %.not93 = icmp samesign ult i64 %indvars.iv333, %i.gm
  br i1 %.not93, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hg = load ptr, ptr %6, align 8, !tbaa !681
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv333
  %.sroa.09.0.copyload = load i32, ptr %i.hh, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.09.0.copyload, label %bb.bf [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111
    i32 1, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111

bb.bf:                                            ; preds = %bb.bd
  %i.hi = xor i32 %.sroa.09.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111: ; preds = %bb.bf, %bb.be, %bb.bd
  %.sroa.06.0.i110 = phi i32 [ %i.hi, %bb.bf ], [ 0, %bb.be ], [ 1, %bb.bd ]
  %28 = sub nuw nsw i64 %indvars.iv333, %i.gm
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %28
  %.sroa.08.0.copyload = load i32, ptr %i.hj, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  store i32 %.sroa.06.0.i110, ptr %24, align 4, !tbaa !12
  store i32 %.sroa.08.0.copyload, ptr %i.gg, align 4, !tbaa !12
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %24)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_.exit unwind label %bb.bh

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_.exit: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bb
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bh:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit114, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit111
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bi:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_.exit, %bb.bc
  %.not94 = icmp samesign ult i64 %indvars.iv333, %i.gl
  br i1 %.not94, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hm = load ptr, ptr %6, align 8, !tbaa !681
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv333
  %.sroa.06.0.copyload = load i32, ptr %i.hn, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.06.0.copyload, label %bb.bl [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit114
    i32 1, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit114

bb.bl:                                            ; preds = %bb.bj
  %i.ho = xor i32 %.sroa.06.0.copyload, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit114

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit114: ; preds = %bb.bl, %bb.bk, %bb.bj
  %.sroa.06.0.i113 = phi i32 [ %i.ho, %bb.bl ], [ 0, %bb.bk ], [ 1, %bb.bj ]
  %29 = sub nuw nsw i64 %indvars.iv333, %i.gl
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %29
  %.sroa.0.0.copyload = load i32, ptr %i.hp, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  store i32 %.sroa.06.0.i113, ptr %23, align 4, !tbaa !12
  store i32 %.sroa.0.0.copyload, ptr %i.gh, align 4, !tbaa !12
  invoke void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %23)
          to label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_.exit116 unwind label %bb.bh

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_.exit116: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit114
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEN3sat7literalES5_.exit116, %bb.bi
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 2 uses
  br i1 %.not314, label %.loopexit274, label %.lr.ph306.preheader

.lr.ph306.preheader:                              ; preds = %bb.bm
  %wide.trip.count331 = zext i32 %umin to i64
  %i.hq = trunc nuw i64 %indvars.iv333 to i32
  br label %.lr.ph306

.lr.ph306:                                        ; preds = %.lr.ph306.preheader, %bb.dp
  %indvars.iv326 = phi i64 [ 0, %.lr.ph306.preheader ], [ %indvars.iv.next327, %bb.dp ] ; 3 uses
  %i.hr = trunc nuw i64 %indvars.iv326 to i32
  %i.hs = sub i32 %i.hq, %i.hr                    ; 2 uses
  %i.ht = icmp ult i32 %i.hs, %4
  br i1 %i.ht, label %bb.bn, label %bb.dp

bb.bn:                                            ; preds = %.lr.ph306
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv326
  %i.hv = load ptr, ptr %27, align 8, !tbaa !681  ; 4 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hx = getelementptr inbounds i8, ptr %i.hv, i64 -4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !12 ; 5 uses
  %i.hz = getelementptr inbounds i8, ptr %i.hv, i64 -8 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !12
  %i.ib = icmp eq i32 %i.hy, %i.ia
  br i1 %i.ib, label %bb.bq, label %bb.bz

bb.bp:                                            ; preds = %bb.bn
  %i.ic = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc130 unwind label %.loopexit.split-lp ; 3 uses

.noexc130:                                        ; preds = %bb.bp
  store i32 2, ptr %i.ic, align 4, !tbaa !12
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  store i32 0, ptr %i.id, align 4, !tbaa !12
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  store ptr %i.ie, ptr %27, align 8, !tbaa !681
  br label %.noexc120

bb.bq:                                            ; preds = %bb.bo
  %i.if = mul i32 %i.hy, 3
  %i.ig = add i32 %i.if, 1
  %i.ih = lshr i32 %i.ig, 1                       ; 3 uses
  %i.ii = shl i32 %i.ih, 2
  %i.ij = add i32 %i.ii, 8                        ; 2 uses
  %.not.i127 = icmp ugt i32 %i.ih, %i.hy
  br i1 %.not.i127, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ik = shl i32 %i.hy, 2
  %i.il = add i32 %i.ik, 8
  %.not27.i = icmp ugt i32 %i.ij, %i.il
  br i1 %.not27.i, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.im = call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.im, align 8, !tbaa !677
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 24 ; 3 uses
  store ptr %i.io, ptr %i.in, align 8, !tbaa !679
  %i.ip = load ptr, ptr %20, align 8, !tbaa !74   ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %bb.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.is = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !79 ; 3 uses
  %i.iu = icmp ult i64 %i.it, 16
  call void @llvm.assume(i1 %i.iu)
  %i.iv = add nuw nsw i64 %i.it, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.io, ptr noundef nonnull align 8 dereferenceable(1) %i.iq, i64 %i.iv, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bt
  store ptr %i.ip, ptr %i.in, align 8, !tbaa !74
  %i.iw = load i64, ptr %i.iq, align 8, !tbaa !80
  store i64 %i.iw, ptr %i.io, align 8, !tbaa !80
  %.phi.trans.insert.i128 = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.pre.i129 = load i64, ptr %.phi.trans.insert.i128, align 8, !tbaa !79
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bu
  %i.ix = phi i64 [ %i.it, %bb.bu ], [ %.pre.i129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.iy = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store i64 %i.ix, ptr %i.iz, align 8, !tbaa !79
  store ptr %i.iq, ptr %20, align 8, !tbaa !74
  store i64 0, ptr %i.iy, align 8, !tbaa !79
  store i8 0, ptr %i.iq, align 8, !tbaa !80
  invoke void @__cxa_throw(ptr nonnull %i.im, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.by unwind label %bb.bv

bb.bv:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ja = landingpad { ptr, i32 }
          cleanup
  %i.jb = load ptr, ptr %20, align 8, !tbaa !74   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.iq
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.bv
  %i.jd = load i64, ptr %i.iq, align 8, !tbaa !80
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %.body

bb.bw:                                            ; preds = %bb.bs
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @__cxa_free_exception(ptr %i.im) #26
  br label %.body

bb.bx:                                            ; preds = %bb.br
  %i.jg = zext i32 %i.ij to i64
  %i.jh = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.hz, i64 noundef %i.jg)
          to label %.noexc131 unwind label %.loopexit.split-lp ; 2 uses

.noexc131:                                        ; preds = %bb.bx
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 2 uses
  store ptr %i.ji, ptr %27, align 8, !tbaa !681
  store i32 %i.ih, ptr %i.jh, align 4, !tbaa !12
  br label %.noexc120

bb.by:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc120:                                        ; preds = %.noexc131, %.noexc130
  %.pre.i117 = phi ptr [ %i.ji, %.noexc131 ], [ %i.ie, %.noexc130 ] ; 2 uses
  %.phi.trans.insert.i118 = getelementptr inbounds i8, ptr %.pre.i117, i64 -4
  %.pre2.i119 = load i32, ptr %.phi.trans.insert.i118, align 4, !tbaa !12
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bo, %.noexc120
  %i.jj = phi i32 [ %.pre2.i119, %.noexc120 ], [ %i.hy, %bb.bo ] ; 2 uses
  %i.jk = phi ptr [ %.pre.i117, %.noexc120 ], [ %i.hv, %bb.bo ] ; 4 uses
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -4
  %i.jm = zext i32 %i.jj to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jm
  %i.jo = load i32, ptr %i.hu, align 4, !tbaa !12
  store i32 %i.jo, ptr %i.jn, align 4, !tbaa !12
  %i.jp = add i32 %i.jj, 1                        ; 6 uses
  store i32 %i.jp, ptr %i.jl, align 4, !tbaa !12
  %i.jq = zext i32 %i.hs to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.jq
  %i.js = getelementptr inbounds i8, ptr %i.jk, i64 -8 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !12
  %i.ju = icmp eq i32 %i.jp, %i.jt
  br i1 %i.ju, label %bb.ca, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.jv = mul i32 %i.jp, 3
  %i.jw = add i32 %i.jv, 1
  %i.jx = lshr i32 %i.jw, 1                       ; 3 uses
  %i.jy = shl i32 %i.jx, 2
  %i.jz = add i32 %i.jy, 8                        ; 2 uses
  %.not.i132 = icmp ugt i32 %i.jx, %i.jp
  br i1 %.not.i132, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ka = shl i32 %i.jp, 2
  %i.kb = add i32 %i.ka, 8
  %.not27.i141 = icmp ugt i32 %i.jz, %i.kb
  br i1 %.not27.i141, label %bb.ch, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.kc = call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.kc, align 8, !tbaa !677
end_hunk_5
begin_hunk_6_@_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10interleaveERK7svectorIN3sat7literalEjES9_RS7_:bb.a
  %i.bu = zext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bu
  store i32 %.sroa.0.0.i106, ptr %i.bv, align 4, !tbaa !12
  %i.bw = add i32 %i.br, 1                        ; 3 uses
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !12
  %i.bx = getelementptr inbounds i8, ptr %i.bs, i64 -8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.bz = icmp eq i32 %i.bw, %i.by
  br i1 %i.bz, label %bb.k, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit53

bb.k:                                             ; preds = %bb.j
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre.i50 = load ptr, ptr %3, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i51 = getelementptr inbounds i8, ptr %.pre.i50, i64 -4
  %.pre2.i52 = load i32, ptr %.phi.trans.insert.i51, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit53

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit53: ; preds = %bb.j, %bb.k
  %i.ca = phi i32 [ %.pre2.i52, %bb.k ], [ %i.bw, %bb.j ] ; 2 uses
  %i.cb = phi ptr [ %.pre.i50, %bb.k ], [ %i.bs, %bb.j ] ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4
  %i.cd = zext i32 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cd
  store i32 %.sroa.0.0.i45, ptr %i.ce, align 4, !tbaa !12
  %i.cf = add i32 %i.ca, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !12
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !1107

bb.l:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit44
  %i.cg = zext i32 %.0.i39102 to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !12
  %i.ck = icmp eq i32 %i.al, %i.cj
  br i1 %i.ck, label %bb.m, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit57

bb.m:                                             ; preds = %bb.l
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre.i54 = load ptr, ptr %3, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i55 = getelementptr inbounds i8, ptr %.pre.i54, i64 -4
  %.pre2.i56 = load i32, ptr %.phi.trans.insert.i55, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit57

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit57: ; preds = %bb.l, %bb.m
  %i.cl = phi i32 [ %.pre2.i56, %bb.m ], [ %i.al, %bb.l ] ; 2 uses
  %i.cm = phi ptr [ %.pre.i54, %bb.m ], [ %i.am, %bb.l ] ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.co = zext i32 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.co
  %i.cq = load i32, ptr %i.ch, align 4, !tbaa !12
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !12
  %i.cr = add i32 %i.cl, 1
  store i32 %i.cr, ptr %i.cn, align 4, !tbaa !12
  br label %bb.s

bb.n:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit44
  br i1 %i.ao, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit59, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !12
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit59

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit59:   ; preds = %bb.n, %bb.o
  %.0.i58 = phi i32 [ %i.ct, %bb.o ], [ 0, %bb.n ]
  br i1 %i.as, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit61, label %bb.p

bb.p:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit59
  %i.cu = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !12
  %i.cw = add i32 %i.cv, 2
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit61

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit61:   ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit59, %bb.p
  %.0.i60 = phi i32 [ %i.cw, %bb.p ], [ 2, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit59 ]
  %i.cx = icmp eq i32 %.0.i58, %.0.i60
  br i1 %i.cx, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit61
  %i.cy = add i32 %.0.i39102, 1
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cz
  %i.db = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !12
  %i.dd = icmp eq i32 %i.al, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit65

bb.r:                                             ; preds = %bb.q
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre.i62 = load ptr, ptr %3, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i63 = getelementptr inbounds i8, ptr %.pre.i62, i64 -4
  %.pre2.i64 = load i32, ptr %.phi.trans.insert.i63, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit65

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit65: ; preds = %bb.q, %bb.r
  %i.de = phi i32 [ %.pre2.i64, %bb.r ], [ %i.al, %bb.q ] ; 2 uses
  %i.df = phi ptr [ %.pre.i62, %bb.r ], [ %i.am, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dh = zext i32 %i.de to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dh
  %i.dj = load i32, ptr %i.da, align 4, !tbaa !12
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !12
  %i.dk = add i32 %i.de, 1
  store i32 %i.dk, ptr %i.dg, align 4, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit61, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit65, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit57
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6cmp_leEN3sat7literalES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca [3 x %"class.sat::literal"], align 4 ; 6 uses
  %6 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  %7 = alloca [2 x %"class.sat::literal"], align 4 ; 5 uses
  switch i32 %1, label %bb.c [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

bb.c:                                             ; preds = %bb.a
  %i.a = xor i32 %1, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.06.0.i = phi i32 [ %i.a, %bb.c ], [ 0, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 %.sroa.06.0.i, ptr %7, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %3, ptr %i.b, align 4, !tbaa !12
  call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  switch i32 %2, label %bb.e [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit19
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit19

bb.e:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  %i.c = xor i32 %2, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit19

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit19: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit, %bb.d, %bb.e
  %.sroa.06.0.i18 = phi i32 [ %i.c, %bb.e ], [ 0, %bb.d ], [ 1, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i32 %.sroa.06.0.i18, ptr %6, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %3, ptr %i.d, align 4, !tbaa !12
  call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  switch i32 %1, label %bb.g [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit21
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit19
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit21

bb.g:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit19
  %i.e = xor i32 %1, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit21

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit21: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit19, %bb.f, %bb.g
  %.sroa.06.0.i20 = phi i32 [ %i.e, %bb.g ], [ 0, %bb.f ], [ 1, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit19 ]
  switch i32 %2, label %bb.i [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit23
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit21
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit23

bb.i:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit21
  %i.f = xor i32 %2, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit23

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit23: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit21, %bb.h, %bb.i
  %.sroa.06.0.i22 = phi i32 [ %i.f, %bb.i ], [ 0, %bb.h ], [ 1, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit21 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 %.sroa.06.0.i20, ptr %5, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.sroa.06.0.i22, ptr %i.g, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %4, ptr %i.h, align 4, !tbaa !12
  call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE13vc_smerge_recEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
.thread:
  %i.a = lshr i32 %1, 1                           ; 3 uses
  %i.b = sub nuw i32 %1, %i.a                     ; 2 uses
  %i.c = lshr i32 %2, 1                           ; 3 uses
  %i.d = sub nuw i32 %2, %i.c                     ; 2 uses
  %i.e = trunc i32 %3 to i1
  %i.f = lshr i32 %3, 1                           ; 2 uses
  %i.g = add nuw i32 %i.f, 1
  %i.h = add i32 %3, 1
  %i.i = lshr i32 %i.h, 1
  %i.j = select i1 %i.e, i32 %i.i, i32 %i.g
  %i.k = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.j) ; 2 uses
  %.sroa.439.0.extract.shift = lshr i64 %i.k, 32
  %.sroa.439.0.extract.trunc = trunc nuw i64 %.sroa.439.0.extract.shift to i32
  %i.l = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.f) ; 2 uses
  %.sroa.437.0.extract.shift = lshr i64 %i.l, 32
  %.sroa.437.0.extract.trunc = trunc nuw i64 %.sroa.437.0.extract.shift to i32
  %i.m = add i32 %.sroa.437.0.extract.trunc, %.sroa.439.0.extract.trunc
  %i.n = add nuw i32 %i.c, %i.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !878  ; 3 uses
  %i.q = icmp eq i32 %i.p, 2
  %.sroa.4.0.extract.trunc.i = select i1 %i.q, i32 6, i32 3
  %i.r = add i32 %i.b, -1
  %i.s = add i32 %i.r, %i.d
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.s) ; 2 uses
  %i.t = mul i32 %.sroa.4.0.extract.trunc.i, %.sroa.speculated.i
  %i.u = add i32 %i.m, %i.t                       ; 2 uses
  %.not = icmp eq i32 %i.p, 1
  %i.v = add i32 %i.u, 2
  %.not14 = icmp ne i32 %i.p, 0
  %spec.select = zext i1 %.not14 to i32
  %i.w = select i1 %.not, i32 %i.u, i32 %i.v
  %i.x = shl i32 %.sroa.speculated.i, 1
  %i.y = add i64 %i.l, %i.k
  %.sroa.040.0.extract.trunc = trunc i64 %i.y to i32
  %i.z = or disjoint i32 %i.x, 1
  %i.aa = add i32 %i.z, %.sroa.040.0.extract.trunc
  %i.ab = add i32 %i.w, %spec.select
  %.sroa.2.0.insert.ext.i27 = zext i32 %i.ab to i64
  %.sroa.2.0.insert.shift.i28 = shl nuw i64 %.sroa.2.0.insert.ext.i27, 32
  %.sroa.0.0.insert.ext.i29 = zext i32 %i.aa to i64
  %.sroa.0.0.insert.insert.i30 = or disjoint i64 %.sroa.2.0.insert.shift.i28, %.sroa.0.0.insert.ext.i29
  ret i64 %.sroa.0.0.insert.insert.i30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = icmp eq i32 %2, 1
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp eq i32 %3, 1
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !878
  switch i32 %i.e, label %.thread.fold.split [
    i32 1, label %.thread
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit
  ]

.thread.fold.split:                               ; preds = %bb.b
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit

.thread:                                          ; preds = %bb.b
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %1, 0
  %i.g = icmp eq i32 %2, 0
  %or.cond5 = or i1 %i.f, %i.g
  br i1 %or.cond5, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %1, %3
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %3, i32 noundef %2, i32 noundef %3) ; 2 uses
  %.sroa.045.0.extract.trunc = trunc i64 %i.i to i32
  %.sroa.12.0.extract.shift = lshr i64 %i.i, 32
  %.sroa.12.0.extract.trunc = trunc nuw i64 %.sroa.12.0.extract.shift to i32
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp ugt i32 %2, %3
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %3, i32 noundef %3) ; 2 uses
  %.sroa.045.0.extract.trunc47 = trunc i64 %i.k to i32
  %.sroa.12.0.extract.shift54 = lshr i64 %i.k, 32
  %.sroa.12.0.extract.trunc55 = trunc nuw i64 %.sroa.12.0.extract.shift54 to i32
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit

bb.h:                                             ; preds = %bb.f
  %i.l = add i32 %2, %1                           ; 4 uses
  %.not = icmp ugt i32 %i.l, %3
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) ; 2 uses
  %.sroa.045.0.extract.trunc48 = trunc i64 %i.m to i32
  %.sroa.12.0.extract.shift56 = lshr i64 %i.m, 32
  %.sroa.12.0.extract.trunc57 = trunc nuw i64 %.sroa.12.0.extract.shift56 to i32
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit

bb.j:                                             ; preds = %bb.h
  %i.n = icmp ult i32 %1, 10
  %i.o = icmp ult i32 %2, 10
  %or.cond.i = and i1 %i.n, %i.o
  br i1 %or.cond.i, label %bb.k, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !878  ; 2 uses
  %.not.i.i = icmp eq i32 %i.q, 1
  %.pre54.i.i = mul nuw nsw i32 %2, %1
  %.pre55.i.i = lshr i32 %.pre54.i.i, 1           ; 4 uses
  br i1 %.not.i.i, label %.thread.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = add nuw nsw i32 %.pre55.i.i, %i.l        ; 2 uses
  %.not2.i.i = icmp eq i32 %i.q, 0
  br i1 %.not2.i.i, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k, %bb.l
  %.sroa.6.052.i.i = phi i32 [ %i.r, %bb.l ], [ 0, %bb.k ]
  %i.s = add nsw i32 %.sroa.6.052.i.i, %.pre55.i.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit: ; preds = %bb.l, %.thread.i.i
  %.sroa.6.1.i.i = phi i32 [ %i.r, %bb.l ], [ %i.s, %.thread.i.i ]
  %i.t = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE13vc_smerge_recEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3), !inline_history !1108 ; 2 uses
  %.sroa.067.0.extract.trunc = trunc i64 %i.t to i32
  %.sroa.468.0.extract.shift = lshr i64 %i.t, 32
  %.sroa.468.0.extract.trunc = trunc nuw i64 %.sroa.468.0.extract.shift to i32
  %i.u = mul nuw nsw i32 %i.l, 5
  %i.v = add i32 %.sroa.6.1.i.i, %i.u
  %i.w = mul i32 %.sroa.067.0.extract.trunc, 5
  %i.x = add i32 %i.w, %.sroa.468.0.extract.trunc
  %i.y = icmp ult i32 %i.v, %i.x
  br i1 %i.y, label %bb.m, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread

bb.m:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit
  %i.z = load i32, ptr %i.p, align 8, !tbaa !878  ; 2 uses
  %.not.i = icmp eq i32 %i.z, 1
  br i1 %.not.i, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = add nuw nsw i32 %.pre55.i.i, %i.l       ; 2 uses
  %.not2.i = icmp eq i32 %i.z, 0
  br i1 %.not2.i, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.n
  %.sroa.6.052.i = phi i32 [ %i.aa, %bb.n ], [ 0, %bb.m ]
  %i.ab = add nsw i32 %.sroa.6.052.i, %.pre55.i.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread: ; preds = %bb.j, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit
  %i.ac = lshr i32 %1, 1                          ; 3 uses
  %i.ad = sub nuw i32 %1, %i.ac                   ; 2 uses
  %i.ae = lshr i32 %2, 1                          ; 3 uses
  %i.af = sub nuw i32 %2, %i.ae                   ; 2 uses
  %i.ag = trunc i32 %3 to i1
  %i.ah = lshr i32 %3, 1                          ; 2 uses
  %i.ai = add nuw i32 %i.ah, 1
  %i.aj = add nuw i32 %3, 1
  %i.ak = lshr i32 %i.aj, 1
  %i.al = select i1 %i.ag, i32 %i.ak, i32 %i.ai
  %i.am = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %i.al), !inline_history !1099 ; 2 uses
  %.sroa.439.0.extract.shift.i = lshr i64 %i.am, 32
  %.sroa.439.0.extract.trunc.i = trunc nuw i64 %.sroa.439.0.extract.shift.i to i32
  %i.an = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.ah), !inline_history !1099 ; 2 uses
  %.sroa.437.0.extract.shift.i = lshr i64 %i.an, 32
  %.sroa.437.0.extract.trunc.i = trunc nuw i64 %.sroa.437.0.extract.shift.i to i32
  %i.ao = add i32 %.sroa.437.0.extract.trunc.i, %.sroa.439.0.extract.trunc.i
  %i.ap = add nuw i32 %i.ae, %i.ac
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !878 ; 3 uses
  %i.as = icmp eq i32 %i.ar, 2
  %.sroa.4.0.extract.trunc.i.i = select i1 %i.as, i32 6, i32 3
  %i.at = add i32 %i.ad, -1
  %i.au = add i32 %i.at, %i.af
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.au) ; 2 uses
  %i.av = mul i32 %.sroa.4.0.extract.trunc.i.i, %.sroa.speculated.i.i
  %i.aw = add i32 %i.ao, %i.av                    ; 2 uses
  %.not.i82 = icmp eq i32 %i.ar, 1
  %i.ax = add i32 %i.aw, 2
  %.not14.i = icmp ne i32 %i.ar, 0
  %spec.select.i = zext i1 %.not14.i to i32
  %i.ay = select i1 %.not.i82, i32 %i.aw, i32 %i.ax
  %i.az = shl i32 %.sroa.speculated.i.i, 1
  %i.ba = add i64 %i.an, %i.am
  %.sroa.040.0.extract.trunc.i = trunc i64 %i.ba to i32
  %i.bb = or disjoint i32 %i.az, 1
  %i.bc = add i32 %i.bb, %.sroa.040.0.extract.trunc.i
  %i.bd = add i32 %i.ay, %spec.select.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit: ; preds = %.thread.i, %bb.n, %.thread.fold.split, %bb.b, %bb.c, %.thread, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread, %bb.i, %bb.g, %bb.e
  %.sroa.12.1 = phi i32 [ 2, %bb.b ], [ 0, %bb.c ], [ %.sroa.12.0.extract.trunc57, %bb.i ], [ %.sroa.12.0.extract.trunc, %bb.e ], [ %.sroa.12.0.extract.trunc55, %bb.g ], [ 1, %.thread ], [ %i.bd, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread ], [ 3, %.thread.fold.split ], [ %i.aa, %bb.n ], [ %i.ab, %.thread.i ]
  %.sroa.045.1 = phi i32 [ 1, %bb.b ], [ 0, %bb.c ], [ %.sroa.045.0.extract.trunc48, %bb.i ], [ %.sroa.045.0.extract.trunc, %bb.e ], [ %.sroa.045.0.extract.trunc47, %bb.g ], [ 1, %.thread ], [ %i.bc, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread ], [ 1, %.thread.fold.split ], [ %3, %bb.n ], [ %3, %.thread.i ]
  %.sroa.12.0.insert.ext = zext i32 %.sroa.12.1 to i64
  %.sroa.12.0.insert.shift = shl nuw i64 %.sroa.12.0.insert.ext, 32
  %.sroa.045.0.insert.ext = zext i32 %.sroa.045.1 to i64
  %.sroa.045.0.insert.insert = or disjoint i64 %.sroa.12.0.insert.shift, %.sroa.045.0.insert.ext
  ret i64 %.sroa.045.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = icmp eq i32 %2, 1
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !878
  %i.e = icmp eq i32 %i.d, 2
  %.sroa.5.0.extract.trunc = select i1 %i.e, i32 6, i32 3
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %1, 0
  %i.g = icmp eq i32 %2, 0
  %or.cond3 = or i1 %i.f, %i.g
  br i1 %or.cond3, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i32 %2, %1                           ; 10 uses
  %i.i = icmp ult i32 %1, 10
  %i.j = icmp ult i32 %2, 10
  %or.cond.i = and i1 %i.i, %i.j
  br i1 %or.cond.i, label %bb.e, label %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread_crit_edge

._ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread_crit_edge: ; preds = %bb.d
  %.pre = lshr i32 %1, 1                          ; 3 uses
  %.pre34 = sub nuw i32 %1, %.pre                 ; 2 uses
  %.pre36 = lshr i32 %2, 1                        ; 3 uses
  %.pre38 = sub nuw i32 %2, %.pre36               ; 2 uses
  %.pre40 = add nuw i32 %.pre36, %.pre
  %.pre42 = add i32 %.pre34, -1
  %.pre44 = add i32 %.pre42, %.pre38
  %.pre46 = tail call i32 @llvm.umin.i32(i32 %.pre40, i32 %.pre44) ; 2 uses
  %.pre47 = shl i32 %.pre46, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !878  ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 1
  %.pre54.i.i = mul nuw nsw i32 %2, %1
  %.pre55.i.i = lshr i32 %.pre54.i.i, 1           ; 2 uses
  br i1 %.not.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i32 %.pre55.i.i, %i.h        ; 2 uses
  %.not2.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.f
  %.sroa.6.052.i.i = phi i32 [ %i.m, %bb.f ], [ 0, %bb.e ]
  %i.n = add nsw i32 %.sroa.6.052.i.i, %.pre55.i.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit: ; preds = %bb.f, %.thread.i.i
  %.sroa.6.1.i.i = phi i32 [ %i.m, %bb.f ], [ %i.n, %.thread.i.i ]
  %i.o = lshr i32 %1, 1                           ; 4 uses
  %i.p = sub nuw nsw i32 %1, %i.o                 ; 3 uses
  %i.q = lshr i32 %2, 1                           ; 4 uses
  %i.r = sub nuw nsw i32 %2, %i.q                 ; 3 uses
  %i.s = trunc i32 %i.h to i1
  %i.t = lshr i32 %i.h, 1                         ; 2 uses
  %i.u = add nuw nsw i32 %i.t, 1
  %i.v = add nuw nsw i32 %i.h, 1
  %i.w = lshr i32 %i.v, 1
  %i.x = select i1 %i.s, i32 %i.w, i32 %i.u
  %i.y = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.x), !inline_history !1109 ; 2 uses
  %.sroa.439.0.extract.shift.i = lshr i64 %i.y, 32
  %.sroa.439.0.extract.trunc.i = trunc nuw i64 %.sroa.439.0.extract.shift.i to i32
  %i.z = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.t), !inline_history !1109 ; 2 uses
  %.sroa.437.0.extract.shift.i = lshr i64 %i.z, 32
  %.sroa.437.0.extract.trunc.i = trunc nuw i64 %.sroa.437.0.extract.shift.i to i32
  %i.aa = add i32 %.sroa.437.0.extract.trunc.i, %.sroa.439.0.extract.trunc.i
  %i.ab = add nuw nsw i32 %i.q, %i.o
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !878 ; 4 uses
  %i.ad = icmp eq i32 %i.ac, 2
  %.sroa.4.0.extract.trunc.i.i = select i1 %i.ad, i32 6, i32 3
  %i.ae = add nsw i32 %i.p, -1
  %i.af = add nsw i32 %i.ae, %i.r
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.af) ; 3 uses
  %i.ag = mul nuw nsw i32 %.sroa.4.0.extract.trunc.i.i, %.sroa.speculated.i.i
  %i.ah = add i32 %i.aa, %i.ag                    ; 2 uses
  %.not.i31 = icmp eq i32 %i.ac, 1                ; 2 uses
  %i.ai = add i32 %i.ah, 2
  %.not14.i = icmp ne i32 %i.ac, 0
  %spec.select.i = zext i1 %.not14.i to i32
  %i.aj = select i1 %.not.i31, i32 %i.ah, i32 %i.ai
  %i.ak = shl nuw nsw i32 %.sroa.speculated.i.i, 1 ; 2 uses
  %i.al = add i64 %i.z, %i.y
  %.sroa.040.0.extract.trunc.i = trunc i64 %i.al to i32
  %i.am = or disjoint i32 %i.ak, 1
  %i.an = add i32 %i.am, %.sroa.040.0.extract.trunc.i
  %i.ao = mul nuw nsw i32 %i.h, 5
  %i.ap = add i32 %.sroa.6.1.i.i, %i.ao
  %i.aq = mul i32 %i.an, 5
  %i.ar = add i32 %i.aq, %spec.select.i
  %i.as = add i32 %i.ar, %i.aj
  %i.at = icmp ult i32 %i.ap, %i.as
  br i1 %i.at, label %bb.g, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread

bb.g:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit
  %.pre.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %1)
  %.pre53.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %2)
  %.pre54.i = mul nuw nsw i32 %.pre.i, %.pre53.i
  %.pre55.i = lshr i32 %.pre54.i, 1               ; 2 uses
  br i1 %.not.i31, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = add nuw nsw i32 %.pre55.i, %i.h         ; 2 uses
  %.not2.i = icmp eq i32 %i.ac, 0
  br i1 %.not2.i, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.h
  %.sroa.6.052.i = phi i32 [ %i.au, %bb.h ], [ 0, %bb.g ]
  %i.av = add nsw i32 %.sroa.6.052.i, %.pre55.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread: ; preds = %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread_crit_edge, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit
  %.pre-phi48 = phi i32 [ %.pre47, %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread_crit_edge ], [ %i.ak, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit ]
  %.sroa.speculated.i.i33.pre-phi = phi i32 [ %.pre46, %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread_crit_edge ], [ %.sroa.speculated.i.i, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit ]
  %.pre-phi39 = phi i32 [ %.pre38, %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread_crit_edge ], [ %i.r, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit ]
  %.pre-phi37 = phi i32 [ %.pre36, %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread_crit_edge ], [ %i.q, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit ]
  %.pre-phi35 = phi i32 [ %.pre34, %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread_crit_edge ], [ %i.p, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit ]
  %.pre-phi = phi i32 [ %.pre, %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread_crit_edge ], [ %i.o, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit ]
  %i.aw = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.pre-phi35, i32 noundef %.pre-phi39), !inline_history !1110 ; 2 uses
  %.sroa.421.0.extract.shift.i = lshr i64 %i.aw, 32
  %.sroa.421.0.extract.trunc.i = trunc nuw i64 %.sroa.421.0.extract.shift.i to i32
  %i.ax = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.pre-phi, i32 noundef %.pre-phi37), !inline_history !1110 ; 2 uses
  %.sroa.419.0.extract.shift.i = lshr i64 %i.ax, 32
  %.sroa.419.0.extract.trunc.i = trunc nuw i64 %.sroa.419.0.extract.shift.i to i32
  %i.ay = add i64 %i.ax, %i.aw
  %.sroa.022.0.extract.trunc.i = trunc i64 %i.ay to i32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !878
  %i.bb = icmp eq i32 %i.ba, 2
  %.sroa.4.0.extract.trunc.i.i32 = select i1 %i.bb, i32 6, i32 3
  %i.bc = mul i32 %.sroa.4.0.extract.trunc.i.i32, %.sroa.speculated.i.i33.pre-phi
  %i.bd = add i32 %.pre-phi48, %.sroa.022.0.extract.trunc.i
  %i.be = add i32 %.sroa.421.0.extract.trunc.i, -2
  %i.bf = add i32 %i.be, %.sroa.419.0.extract.trunc.i
  %i.bg = add i32 %i.bf, %i.bc
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_dsmergeEjjj.exit: ; preds = %.thread.i, %bb.h, %bb.c, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread, %bb.b
  %.sroa.5.0 = phi i32 [ %.sroa.5.0.extract.trunc, %bb.b ], [ %i.bg, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread ], [ 0, %bb.c ], [ %i.au, %bb.h ], [ %i.av, %.thread.i ]
  %.sroa.0.0 = phi i32 [ 2, %bb.b ], [ %i.bd, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj.exit.thread ], [ 0, %bb.c ], [ %i.h, %bb.h ], [ %i.h, %.thread.i ]
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.0 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit
    i32 1, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !878
  %i.c = icmp eq i32 %i.b, 2
  %.sroa.5.0.extract.trunc.i = select i1 %i.c, i32 6, i32 3
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 10
  br i1 %i.d, label %bb.d, label %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread_crit_edge

._ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread_crit_edge: ; preds = %bb.c
  %.pre = lshr i32 %1, 1                          ; 2 uses
  %.pre18 = sub nuw i32 %1, %.pre
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !878
  %.pre.i.i = add nsw i32 %1, -1
  %.pre23.i.i = shl nuw nsw i32 1, %.pre.i.i      ; 6 uses
  switch i32 %i.f, label %.thread.fold.split.i.i [
    i32 1, label %.thread.i.i
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit
  ]

.thread.fold.split.i.i:                           ; preds = %bb.d
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.fold.split.i.i, %bb.d
  %.sroa.6.022.i.i = phi i32 [ 0, %bb.d ], [ %.pre23.i.i, %.thread.fold.split.i.i ]
  %i.g = add nuw nsw i32 %.sroa.6.022.i.i, %.pre23.i.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit: ; preds = %bb.d, %.thread.i.i
  %.sroa.6.1.i.i = phi i32 [ %.pre23.i.i, %bb.d ], [ %i.g, %.thread.i.i ]
  %i.h = lshr i32 %1, 1                           ; 4 uses
  %i.i = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.h), !inline_history !1091 ; 2 uses
  %.sroa.415.0.extract.shift.i = lshr i64 %i.i, 32
  %.sroa.415.0.extract.trunc.i = trunc nuw i64 %.sroa.415.0.extract.shift.i to i32
  %i.j = sub nuw nsw i32 %1, %i.h                 ; 3 uses
  %i.k = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.j), !inline_history !1091 ; 2 uses
  %.sroa.413.0.extract.shift.i = lshr i64 %i.k, 32
  %.sroa.413.0.extract.trunc.i = trunc nuw i64 %.sroa.413.0.extract.shift.i to i32
  %i.l = add i64 %i.k, %i.i
  %i.m = add i32 %.sroa.413.0.extract.trunc.i, %.sroa.415.0.extract.trunc.i
  %i.n = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.h, i32 noundef %i.j), !inline_history !1091 ; 2 uses
  %.sroa.411.0.extract.shift.i = lshr i64 %i.n, 32
  %.sroa.411.0.extract.trunc.i = trunc nuw i64 %.sroa.411.0.extract.shift.i to i32
  %i.o = add i64 %i.l, %i.n
  %i.p = add i32 %i.m, %.sroa.411.0.extract.trunc.i
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.o to i32
  %i.q = mul nuw nsw i32 %1, 5
  %i.r = add nuw nsw i32 %.sroa.6.1.i.i, %i.q
  %i.s = mul i32 %.sroa.0.0.extract.trunc.i, 5
  %i.t = add i32 %i.p, %i.s
  %i.u = icmp ult i32 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread

bb.e:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit
  %i.v = load i32, ptr %i.e, align 8, !tbaa !878
  switch i32 %i.v, label %.thread.fold.split.i [
    i32 1, label %.thread.i
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit
  ]

.thread.fold.split.i:                             ; preds = %bb.e
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.fold.split.i, %bb.e
  %.sroa.6.022.i = phi i32 [ 0, %bb.e ], [ %.pre23.i.i, %.thread.fold.split.i ]
  %i.w = add nuw nsw i32 %.sroa.6.022.i, %.pre23.i.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread: ; preds = %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread_crit_edge, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit
  %.pre-phi19 = phi i32 [ %.pre18, %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread_crit_edge ], [ %i.j, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre, %._ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread_crit_edge ], [ %i.h, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit ] ; 2 uses
  %i.x = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.pre-phi), !inline_history !1111 ; 2 uses
  %.sroa.415.0.extract.shift = lshr i64 %i.x, 32
  %.sroa.415.0.extract.trunc = trunc nuw i64 %.sroa.415.0.extract.shift to i32
  %i.y = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.pre-phi19), !inline_history !1111 ; 2 uses
  %.sroa.413.0.extract.shift = lshr i64 %i.y, 32
  %.sroa.413.0.extract.trunc = trunc nuw i64 %.sroa.413.0.extract.shift to i32
  %i.z = add i64 %i.y, %i.x
  %i.aa = add i32 %.sroa.413.0.extract.trunc, %.sroa.415.0.extract.trunc
  %i.ab = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.pre-phi, i32 noundef %.pre-phi19), !inline_history !1111 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.ab, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.ac = add i64 %i.z, %i.ab
  %i.ad = add i32 %i.aa, %.sroa.4.0.extract.trunc
  %.sroa.0.0.extract.trunc6 = trunc i64 %i.ac to i32
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit: ; preds = %.thread.i, %bb.e, %bb.a, %bb.a, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread, %bb.b
  %.sroa.6.0 = phi i32 [ 0, %bb.a ], [ %i.ad, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread ], [ %.sroa.5.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ], [ %.pre23.i.i, %bb.e ], [ %i.w, %.thread.i ]
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %.sroa.0.0.extract.trunc6, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE12use_dsortingEj.exit.thread ], [ 2, %bb.b ], [ 0, %bb.a ], [ %1, %bb.e ], [ %1, %.thread.i ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0 to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_card_recEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = lshr i32 %2, 1                           ; 7 uses
  %.not.i = icmp ugt i32 %i.a, %1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.a), !inline_history !1112
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.a), !inline_history !1112
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !878
  %.pre.i = add nsw i32 %i.a, -1
  %.pre23.i = shl nuw i32 1, %.pre.i              ; 3 uses
  switch i32 %i.e, label %.thread.fold.split.i [
    i32 1, label %.thread.i
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit
  ]

.thread.fold.split.i:                             ; preds = %bb.d
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.fold.split.i, %bb.d
  %.sroa.6.022.i = phi i32 [ 0, %bb.d ], [ %.pre23.i, %.thread.fold.split.i ]
  %i.f = add i32 %.sroa.6.022.i, %.pre23.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit: ; preds = %bb.d, %.thread.i
  %.sroa.6.1.i = phi i32 [ %.pre23.i, %bb.d ], [ %i.f, %.thread.i ]
  %.sroa.6.0.insert.ext.i = zext i32 %.sroa.6.1.i to i64
  %.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.6.0.insert.ext.i, 32
  %.sroa.011.0.insert.ext.i = zext nneg i32 %1 to i64
  %.sroa.011.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.011.0.insert.ext.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_card_recEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.a), !inline_history !1112
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj.exit: ; preds = %bb.b, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.b, %bb.b ], [ %.sroa.011.0.insert.insert.i, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit ], [ %i.g, %bb.e ] ; 2 uses
  %i.h = sub nuw i32 %2, %i.a                     ; 6 uses
  %.not.i10 = icmp ugt i32 %i.h, %1
  br i1 %.not.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj.exit
  %i.i = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.h), !inline_history !1112
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj.exit12

bb.g:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj.exit
  %i.j = tail call noundef zeroext i1 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.h), !inline_history !1112
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !878
  %.pre.i17 = add i32 %i.h, -1
  %.pre23.i18 = shl nuw i32 1, %.pre.i17          ; 3 uses
  switch i32 %i.l, label %.thread.fold.split.i26 [
    i32 1, label %.thread.i24
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit27
  ]

.thread.fold.split.i26:                           ; preds = %bb.h
  br label %.thread.i24

.thread.i24:                                      ; preds = %.thread.fold.split.i26, %bb.h
  %.sroa.6.022.i25 = phi i32 [ 0, %bb.h ], [ %.pre23.i18, %.thread.fold.split.i26 ]
  %i.m = add i32 %.sroa.6.022.i25, %.pre23.i18
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit27

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit27: ; preds = %bb.h, %.thread.i24
  %.sroa.6.1.i19 = phi i32 [ %.pre23.i18, %bb.h ], [ %i.m, %.thread.i24 ]
  %.sroa.6.0.insert.ext.i20 = zext i32 %.sroa.6.1.i19 to i64
  %.sroa.6.0.insert.shift.i21 = shl nuw i64 %.sroa.6.0.insert.ext.i20, 32
  %.sroa.011.0.insert.ext.i22 = zext i32 %1 to i64
  %.sroa.011.0.insert.insert.i23 = or disjoint i64 %.sroa.6.0.insert.shift.i21, %.sroa.011.0.insert.ext.i22
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj.exit12

bb.i:                                             ; preds = %bb.g
  %i.n = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_card_recEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.h), !inline_history !1112
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj.exit12

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj.exit12: ; preds = %bb.f, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit27, %bb.i
  %.sroa.0.0.i11 = phi i64 [ %i.i, %bb.f ], [ %.sroa.011.0.insert.insert.i23, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit27 ], [ %i.n, %bb.i ] ; 2 uses
  %.sroa.431.0.extract.shift = and i64 %.sroa.0.0.i, -4294967296
  %i.o = add i64 %.sroa.0.0.i11, %.sroa.0.0.i
  %i.p = add i64 %.sroa.0.0.i11, %.sroa.431.0.extract.shift
  %i.q = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.a, i32 noundef %i.h) ; 2 uses
  %.sroa.4.0.extract.shift = and i64 %i.q, -4294967296
  %i.r = add i64 %i.o, %i.q
  %i.s = add i64 %i.p, %.sroa.4.0.extract.shift
  %.sroa.2.0.insert.ext.i13 = and i64 %i.s, -4294967296
  %.sroa.0.0.insert.ext.i15 = and i64 %i.r, 4294967295
  %.sroa.0.0.insert.insert.i16 = or disjoint i64 %.sroa.2.0.insert.ext.i13, %.sroa.0.0.insert.ext.i15
  ret i64 %.sroa.0.0.insert.insert.i16
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp ugt i32 %2, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %2, 10
  br i1 %i.b, label %bb.d, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !878
  %.pre.i.i = add nsw i32 %2, -1
  %.pre23.i.i = shl nuw nsw i32 1, %.pre.i.i      ; 6 uses
  switch i32 %i.d, label %.thread.fold.split.i.i [
    i32 1, label %.thread.i.i
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit
  ]

.thread.fold.split.i.i:                           ; preds = %bb.d
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.fold.split.i.i, %bb.d
  %.sroa.6.022.i.i = phi i32 [ 0, %bb.d ], [ %.pre23.i.i, %.thread.fold.split.i.i ]
  %i.e = add nuw nsw i32 %.sroa.6.022.i.i, %.pre23.i.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit: ; preds = %bb.d, %.thread.i.i
  %.sroa.6.1.i.i = phi i32 [ %.pre23.i.i, %bb.d ], [ %i.e, %.thread.i.i ]
  %i.f = lshr i32 %2, 1                           ; 3 uses
  %i.g = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.f), !inline_history !1054 ; 2 uses
  %.sroa.416.0.extract.shift.i = lshr i64 %i.g, 32
  %.sroa.416.0.extract.trunc.i = trunc nuw i64 %.sroa.416.0.extract.shift.i to i32
  %i.h = sub nuw nsw i32 %2, %i.f                 ; 2 uses
  %i.i = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.h), !inline_history !1054 ; 2 uses
  %.sroa.414.0.extract.shift.i = lshr i64 %i.i, 32
  %.sroa.414.0.extract.trunc.i = trunc nuw i64 %.sroa.414.0.extract.shift.i to i32
  %i.j = add i64 %i.i, %i.g
  %i.k = add i32 %.sroa.414.0.extract.trunc.i, %.sroa.416.0.extract.trunc.i
  %i.l = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.f, i32 noundef %i.h), !inline_history !1054 ; 2 uses
  %.sroa.412.0.extract.shift.i = lshr i64 %i.l, 32
  %.sroa.412.0.extract.trunc.i = trunc nuw i64 %.sroa.412.0.extract.shift.i to i32
  %i.m = add i64 %i.j, %i.l
  %i.n = add i32 %i.k, %.sroa.412.0.extract.trunc.i
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.m to i32
  %i.o = mul i32 %1, 5
  %i.p = add i32 %.sroa.6.1.i.i, %i.o
  %i.q = mul i32 %.sroa.0.0.extract.trunc.i, 5
  %i.r = add i32 %i.n, %i.q
  %i.s = icmp ult i32 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread

bb.e:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit
  %i.t = load i32, ptr %i.c, align 8, !tbaa !878
  switch i32 %i.t, label %.thread.fold.split.i [
    i32 1, label %.thread.i
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit
  ]

.thread.fold.split.i:                             ; preds = %bb.e
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.fold.split.i, %bb.e
  %.sroa.6.022.i = phi i32 [ 0, %bb.e ], [ %.pre23.i.i, %.thread.fold.split.i ]
  %i.u = add nuw nsw i32 %.sroa.6.022.i, %.pre23.i.i
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit: ; preds = %bb.e, %.thread.i
  %.sroa.6.1.i = phi i32 [ %.pre23.i.i, %bb.e ], [ %i.u, %.thread.i ]
  %.sroa.6.0.insert.ext.i = zext nneg i32 %.sroa.6.1.i to i64
  %.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i, 32
  %.sroa.011.0.insert.ext.i = zext i32 %1 to i64
  %.sroa.011.0.insert.insert.i = or disjoint i64 %.sroa.6.0.insert.shift.i, %.sroa.011.0.insert.ext.i
  br label %bb.f

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread: ; preds = %bb.c, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit
  %i.v = tail call i64 @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_card_recEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit, %bb.b
  %.sroa.0.0 = phi i64 [ %i.a, %bb.b ], [ %.sroa.011.0.insert.insert.i, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_dsortingEjj.exit ], [ %i.v, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE9use_dcardEjj.exit.thread ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_subsetEbjjR7svectorIN3sat7literalEjEjPKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %reass.sub = sub i32 %5, %2
  %i.b = add i32 %reass.sub, 1                    ; 3 uses
  %i.c = icmp ult i32 %3, %i.b
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = add i32 %2, -1                           ; 2 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  br i1 %1, label %.lr.ph.split.us, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.preheader

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.preheader: ; preds = %.lr.ph
  %.pre = load ptr, ptr %4, align 8, !tbaa !681
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.us
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.us ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv24
  %.sroa.0.0.copyload.us = load i32, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  switch i32 %.sroa.0.0.copyload.us, label %bb.c [
    i32 0, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.us
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.split.us
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.g = xor i32 %.sroa.0.0.copyload.us, 1
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.us

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.us: ; preds = %bb.c, %bb.b, %.lr.ph.split.us
  %storemerge.us = phi i32 [ 1, %.lr.ph.split.us ], [ %i.g, %bb.c ], [ 0, %bb.b ]
  %i.h = load ptr, ptr %4, align 8, !tbaa !681    ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.us
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.us

bb.e:                                             ; preds = %bb.d, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.us
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre.i.us = load ptr, ptr %4, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i.us = getelementptr inbounds i8, ptr %.pre.i.us, i64 -4
  %.pre2.i.us = load i32, ptr %.phi.trans.insert.i.us, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.us

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.us: ; preds = %bb.e, %bb.d
  %i.o = phi i32 [ %.pre2.i.us, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = phi ptr [ %.pre.i.us, %bb.e ], [ %i.h, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  store i32 %storemerge.us, ptr %i.s, align 4, !tbaa !12
  %i.t = add i32 %i.o, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !12
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %i.u = trunc i64 %indvars.iv.next25 to i32      ; 2 uses
  tail call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_subsetEbjjR7svectorIN3sat7literalEjEjPKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true, i32 noundef %i.d, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5, ptr noundef nonnull %6)
  %i.v = load ptr, ptr %4, align 8, !tbaa !681
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !12
  %exitcond28.not = icmp eq i32 %i.b, %i.u
  br i1 %exitcond28.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !1113

bb.f:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %4, align 8, !tbaa !681    ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseERK7svectorIN3sat7literalEjE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  br label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseERK7svectorIN3sat7literalEjE.exit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseERK7svectorIN3sat7literalEjE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.ac, %bb.g ], [ 0, %bb.f ]
  tail call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0.i.i, ptr noundef %i.z)
  br label %.loopexit

_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit: ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.preheader, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit
  %i.ad = phi ptr [ %.pre, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.preheader ], [ %i.at, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit ] ; 4 uses
  %indvars.iv = phi i64 [ %i.e, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit.preheader ], [ %indvars.iv.next, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = icmp eq ptr %i.ad, null
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.h, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !681 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit: ; preds = %bb.h, %bb.i
  %i.am = phi i32 [ %.pre2.i, %bb.i ], [ %i.ai, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre.i, %bb.i ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.ap = zext i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ap
  store i32 %i.af, ptr %i.aq, align 4, !tbaa !12
  %i.ar = add i32 %i.am, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = trunc i64 %indvars.iv.next to i32       ; 2 uses
  tail call void @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_subsetEbjjR7svectorIN3sat7literalEjEjPKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext false, i32 noundef %i.d, i32 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5, ptr noundef nonnull %6)
  %i.at = load ptr, ptr %4, align 8, !tbaa !681   ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !12
  %i.aw = add i32 %i.av, -1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !12
  %exitcond.not = icmp eq i32 %i.b, %i.as
  br i1 %exitcond.not, label %.loopexit, label %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE6mk_notEN3sat7literalE.exit, !llvm.loop !1113

.loopexit:                                        ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.us, %.preheader, %_ZN8psort_nwIN3smt9theory_pb10psort_exprEE10add_clauseERK7svectorIN3sat7literalEjE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorI9parameterLb1EjE9copy_coreERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !651    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK6vectorI9parameterLb1EjE8capacityEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.d = load <2 x i32>, ptr %i.c, align 4, !tbaa !12
end_hunk_6
