Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/upolynomial?download=true
inline.NumInlined: 2516
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN11upolynomial7manager13compose_p_b_xEjP3mpzRK4mpbq:bb.a

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #24
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit:   ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.g:                                             ; preds = %_ZN13mpzzp_manager3setER3mpzi.exit, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit33
  %indvars.iv = phi i64 [ 0, %_ZN13mpzzp_manager3setER3mpzi.exit ], [ %indvars.iv.next, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit33 ] ; 2 uses
  %.02234 = phi i32 [ %i.m, %_ZN13mpzzp_manager3setER3mpzi.exit ], [ %i.s, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit33 ]
  %i.s = sub i32 %.02234, %i.c                    ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 6 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !35
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i32 noundef %i.s)
          to label %.noexc27 unwind label %bb.k

.noexc27:                                         ; preds = %bb.h
  %i.x = load i8, ptr %i.j, align 8, !tbaa !39, !range !40, !noundef !41
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN13mpzzp_manager5mul2kER3mpzj.exit, label %bb.i

bb.i:                                             ; preds = %.noexc27
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZN13mpzzp_manager5mul2kER3mpzj.exit unwind label %bb.k

_ZN13mpzzp_manager5mul2kER3mpzj.exit:             ; preds = %.noexc27, %bb.i
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %.noexc29 unwind label %bb.k

.noexc29:                                         ; preds = %_ZN13mpzzp_manager5mul2kER3mpzj.exit
  %i.aa = load i8, ptr %i.j, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, label %bb.j

bb.j:                                             ; preds = %.noexc29
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.l, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, %bb.j, %_ZN13mpzzp_manager5mul2kER3mpzj.exit, %bb.i, %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit:        ; preds = %.noexc29, %bb.j, %bb.g
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc31 unwind label %bb.k

.noexc31:                                         ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit
  %i.ae = load i8, ptr %i.j, align 8, !tbaa !39, !range !40, !noundef !41
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit33, label %bb.l

bb.l:                                             ; preds = %.noexc31
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit33 unwind label %bb.k

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit33:      ; preds = %.noexc31, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %bb.g, !llvm.loop !191

bb.m:                                             ; preds = %bb.a, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit
  ret void

bb.n:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.r, %bb.f ]
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15_scoped_numeralI12mpbq_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105, !nonnull !41, !align !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !107, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
          to label %_ZN12mpbq_manager3delER4mpbq.exit unwind label %bb.b

_ZN12mpbq_manager3delER4mpbq.exit:                ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager9p_minus_xEjP3mpz(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager3negER3mpz.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN13mpzzp_manager3negER3mpz.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN13mpzzp_manager3negER3mpz.exit ] ; 3 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35
  %i.e = icmp eq i32 %i.d, 0
  %i.f = and i64 %indvars.iv, 1
  %i.g = icmp eq i64 %i.f, 0
  %or.cond = or i1 %i.g, %i.e
  br i1 %or.cond, label %_ZN13mpzzp_manager3negER3mpz.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.i = load i8, ptr %i.b, align 8, !tbaa !39, !range !40, !noundef !41
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN13mpzzp_manager3negER3mpz.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  br label %_ZN13mpzzp_manager3negER3mpz.exit

_ZN13mpzzp_manager3negER3mpz.exit:                ; preds = %bb.d, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !11
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager9translateEjP3mpz(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %.loopexit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a
  %i.b = add i32 %1, -1                           ; 2 uses
  %i.c = add i32 %1, -2                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph25, %._crit_edge
  %indvars.iv = phi i32 [ %i.c, %.lr.ph25 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.01623 = phi i32 [ 1, %.lr.ph25 ], [ %i.q, %._crit_edge ] ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !41, !align !49
  %i.l = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k)
  br i1 %i.l, label %_ZN11upolynomial12core_manager10checkpointEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN11upolynomial21upolynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN11upolynomial21upolynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #23
  resume { ptr, i32 } %i.n

_ZN11upolynomial12core_manager10checkpointEv.exit: ; preds = %bb.b
  %i.o = sub nuw i32 %i.b, %.01623
  %.not1920 = icmp ugt i32 %i.o, %i.c
  br i1 %.not1920, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit
  %i.p = zext i32 %indvars.iv to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit, %_ZN11upolynomial12core_manager10checkpointEv.exit
  %i.q = add nuw i32 %.01623, 1                   ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond29.not = icmp eq i32 %i.q, %1
  br i1 %exitcond29.not, label %.loopexit, label %bb.b, !llvm.loop !192

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit ], [ %i.p, %.lr.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv26 ; 14 uses
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next27
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  %i.u = load i8, ptr %i.e, align 8, !tbaa !39, !range !40, !noundef !41
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49 ; 3 uses
  %i.y = load i8, ptr %i.h, align 4
  %i.z = and i8 %i.y, 1
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.g, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ac = load i8, ptr %i.ab, align 4             ; 2 uses
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.g
  %i.af = load i32, ptr %i.g, align 8, !tbaa !35
  %i.ag = load i32, ptr %i.r, align 8, !tbaa !35
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.g, %bb.f
  %i.ai = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  %i.aj = icmp slt i32 %i.ai, 0
  %.pre12.i = load ptr, ptr %i.d, align 8, !tbaa !57 ; 2 uses
  br i1 %i.aj, label %bb.h, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.pre10.i = load i8, ptr %.phi.trans.insert.i, align 4
  br label %bb.i

bb.h:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i, %.split.i
  %i.ak = phi ptr [ %i.x, %.split.i ], [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i ]
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

bb.i:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
  %i.al = phi i8 [ %.pre10.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.ac, %.split.i ]
  %i.am = phi ptr [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.x, %.split.i ] ; 2 uses
  %i.an = and i8 %i.al, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.j, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ap = load i8, ptr %i.j, align 4
  %i.aq = and i8 %i.ap, 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %.split9.i, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

.split9.i:                                        ; preds = %bb.j
  %i.as = load i32, ptr %i.r, align 8, !tbaa !35
  %i.at = load i32, ptr %i.i, align 8, !tbaa !35
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.k, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i:       ; preds = %bb.j, %bb.i
  %i.av = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i
  %.pre11.i = load ptr, ptr %i.d, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, %.split9.i
  %i.ax = phi ptr [ %.pre11.i, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i ], [ %i.am, %.split9.i ]
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit:        ; preds = %bb.k, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i, %.split9.i, %bb.h, %.lr.ph
  %lftr.wideiv = trunc i64 %indvars.iv.next27 to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !193

.loopexit:                                        ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager11translate_kEjP3mpzj(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class._scoped_numeral, align 8     ; 9 uses
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.v, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 16 uses
  store i32 0, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 6 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -4
  store i8 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !60
  %i.h = add i32 %1, -1                           ; 2 uses
  %i.i = add i32 %1, -2                           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  br label %bb.c

._crit_edge59:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr %4, align 8, !tbaa !81
  %i.p = load ptr, ptr %.pre, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge59
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #24
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit:   ; preds = %._crit_edge59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.v

bb.c:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvars.iv = phi i32 [ %i.i, %.lr.ph58 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.02156 = phi i32 [ 1, %.lr.ph58 ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.s = zext i32 %indvars.iv to i64
  %i.t = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !41, !align !49
  %i.u = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.c
  br i1 %i.u, label %_ZN11upolynomial12core_manager10checkpointEv.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.v = call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN11upolynomial21upolynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN11upolynomial21upolynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #26
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #23
  br label %.body

_ZN11upolynomial12core_manager10checkpointEv.exit: ; preds = %.noexc
  %i.x = sub nuw i32 %i.h, %.02156
  %.not2453 = icmp ugt i32 %i.x, %i.i
  br i1 %.not2453, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit, %_ZN11upolynomial12core_manager10checkpointEv.exit
  %i.y = add nuw i32 %.02156, 1                   ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond63.not = icmp eq i32 %i.y, %1
  br i1 %exitcond63.not, label %._crit_edge59, label %bb.c, !llvm.loop !194

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit ], [ %i.s, %_ZN11upolynomial12core_manager10checkpointEv.exit ] ; 3 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next61 ; 3 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !57, !nonnull !41, !align !49 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.af = load i32, ptr %i.z, align 8, !tbaa !35
  store i32 %i.af, ptr %i.c, align 8, !tbaa !35
  %i.ag = load i8, ptr %i.d, align 4
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.d, align 4
  br label %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit.i

bb.h:                                             ; preds = %.lr.ph
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit.i unwind label %bb.u

_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit.i:  ; preds = %bb.h, %bb.g
  %i.ai = trunc nuw i64 %indvars.iv60 to i32
  invoke void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.ai)
          to label %.noexc28 unwind label %bb.u

.noexc28:                                         ; preds = %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit.i
  %i.aj = load i8, ptr %i.j, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc28
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc32 unwind label %bb.u

.noexc32:                                         ; preds = %bb.i
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !57, !nonnull !41, !align !49 ; 3 uses
  %i.an = load i8, ptr %i.m, align 4
  %i.ao = and i8 %i.an, 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.j:                                             ; preds = %.noexc32
  %i.aq = load i8, ptr %i.d, align 4              ; 2 uses
  %i.ar = and i8 %i.aq, 1
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.j
  %i.at = load i32, ptr %i.l, align 8, !tbaa !35
  %i.au = load i32, ptr %i.c, align 8, !tbaa !35
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.k, label %bb.l

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.j, %.noexc32
  %i.aw = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc33 unwind label %bb.u

.noexc33:                                         ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %i.ax = icmp slt i32 %i.aw, 0
  %.pre12.i = load ptr, ptr %i.b, align 8, !tbaa !57 ; 2 uses
  br i1 %i.ax, label %bb.k, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %.noexc33
  %.pre10.i = load i8, ptr %i.d, align 4
  br label %bb.l

bb.k:                                             ; preds = %.noexc33, %.split.i
  %i.ay = phi ptr [ %i.am, %.split.i ], [ %.pre12.i, %.noexc33 ]
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit unwind label %bb.u

bb.l:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
  %i.az = phi i8 [ %.pre10.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.aq, %.split.i ]
  %i.ba = phi ptr [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.am, %.split.i ] ; 2 uses
  %i.bb = and i8 %i.az, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bd = load i8, ptr %i.o, align 4
  %i.be = and i8 %i.bd, 1
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %.split9.i, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

.split9.i:                                        ; preds = %bb.m
  %i.bg = load i32, ptr %i.c, align 8, !tbaa !35
  %i.bh = load i32, ptr %i.n, align 8, !tbaa !35
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.n, label %_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i:       ; preds = %bb.m, %bb.l
  %i.bj = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc35 unwind label %bb.u

.noexc35:                                         ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, label %_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i: ; preds = %.noexc35
  %.pre11.i = load ptr, ptr %i.b, align 8, !tbaa !57
  br label %bb.n

bb.n:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, %.split9.i
  %i.bl = phi ptr [ %.pre11.i, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i ], [ %i.ba, %.split9.i ]
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit unwind label %bb.u

_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit:        ; preds = %.noexc28, %.noexc35, %.split9.i, %bb.k, %bb.n
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv60 ; 14 uses
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %.noexc30 unwind label %bb.u

.noexc30:                                         ; preds = %_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit
  %i.bo = load i8, ptr %i.j, align 8, !tbaa !39, !range !40, !noundef !41
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit, label %bb.o

bb.o:                                             ; preds = %.noexc30
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %.noexc47 unwind label %bb.u

.noexc47:                                         ; preds = %bb.o
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !57, !nonnull !41, !align !49 ; 3 uses
  %i.bs = load i8, ptr %i.m, align 4
  %i.bt = and i8 %i.bs, 1
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.p, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i37

bb.p:                                             ; preds = %.noexc47
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bw = load i8, ptr %i.bv, align 4             ; 2 uses
  %i.bx = and i8 %i.bw, 1
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.split.i46, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i37

.split.i46:                                       ; preds = %bb.p
  %i.bz = load i32, ptr %i.l, align 8, !tbaa !35
  %i.ca = load i32, ptr %i.bm, align 8, !tbaa !35
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.q, label %bb.r

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i37:     ; preds = %bb.p, %.noexc47
  %i.cc = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %.noexc48 unwind label %bb.u

.noexc48:                                         ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i37
  %i.cd = icmp slt i32 %i.cc, 0
  %.pre12.i38 = load ptr, ptr %i.b, align 8, !tbaa !57 ; 2 uses
  br i1 %i.cd, label %bb.q, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i39

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i39: ; preds = %.noexc48
  %.phi.trans.insert.i40 = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %.pre10.i41 = load i8, ptr %.phi.trans.insert.i40, align 4
  br label %bb.r

bb.q:                                             ; preds = %.noexc48, %.split.i46
  %i.ce = phi ptr [ %i.br, %.split.i46 ], [ %.pre12.i38, %.noexc48 ]
  invoke void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit unwind label %bb.u

bb.r:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i39, %.split.i46
  %i.cf = phi i8 [ %.pre10.i41, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i39 ], [ %i.bw, %.split.i46 ]
  %i.cg = phi ptr [ %.pre12.i38, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i39 ], [ %i.br, %.split.i46 ] ; 2 uses
  %i.ch = and i8 %i.cf, 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.s, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i42

bb.s:                                             ; preds = %bb.r
  %i.cj = load i8, ptr %i.o, align 4
  %i.ck = and i8 %i.cj, 1
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.split9.i45, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i42

.split9.i45:                                      ; preds = %bb.s
  %i.cm = load i32, ptr %i.bm, align 8, !tbaa !35
  %i.cn = load i32, ptr %i.n, align 8, !tbaa !35
  %i.co = icmp slt i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.t, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i42:     ; preds = %bb.s, %bb.r
  %i.cp = invoke noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.noexc50 unwind label %bb.u

.noexc50:                                         ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i42
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i43, label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i43: ; preds = %.noexc50
  %.pre11.i44 = load ptr, ptr %i.b, align 8, !tbaa !57
  br label %bb.t

bb.t:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i43, %.split9.i45
  %i.cr = phi ptr [ %.pre11.i44, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i43 ], [ %i.cg, %.split9.i45 ]
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit unwind label %bb.u

_ZN13mpzzp_manager3addERK3mpzS2_RS0_.exit:        ; preds = %bb.t, %bb.q, %.split9.i45, %.noexc50, %.noexc30
  %lftr.wideiv = trunc i64 %indvars.iv.next61 to i32
  %exitcond.not = icmp eq i32 %i.h, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %bb.t, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i42, %bb.q, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i37, %bb.o, %bb.n, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i, %bb.k, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i, %bb.i, %_ZN13mpzzp_manager5mul2kERK3mpzjRS0_.exit, %_ZN11mpz_managerILb0EE5mul2kERK3mpzjRS1_.exit.i, %bb.h
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.f, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.u ], [ %i.w, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %bb.a, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager11translate_zEjP3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a
  %i.b = add i32 %1, -1                           ; 2 uses
  %i.c = add i32 %1, -2                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph26, %._crit_edge
  %indvars.iv = phi i32 [ %i.c, %.lr.ph26 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.01724 = phi i32 [ 1, %.lr.ph26 ], [ %i.q, %._crit_edge ] ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !41, !align !49
  %i.l = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k)
  br i1 %i.l, label %_ZN11upolynomial12core_manager10checkpointEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN11upolynomial21upolynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN11upolynomial21upolynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #23
  resume { ptr, i32 } %i.n

_ZN11upolynomial12core_manager10checkpointEv.exit: ; preds = %bb.b
  %i.o = sub nuw i32 %i.b, %.01724
  %.not2021 = icmp ugt i32 %i.o, %i.c
  br i1 %.not2021, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit
  %i.p = zext i32 %indvars.iv to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit, %_ZN11upolynomial12core_manager10checkpointEv.exit
  %i.q = add nuw i32 %.01724, 1                   ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond30.not = icmp eq i32 %i.q, %1
  br i1 %exitcond30.not, label %.loopexit, label %bb.b, !llvm.loop !195

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit ], [ %i.p, %.lr.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv27 ; 14 uses
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next28
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE6addmulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  %i.u = load i8, ptr %i.e, align 8, !tbaa !39, !range !40, !noundef !41
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49 ; 3 uses
  %i.y = load i8, ptr %i.h, align 4
  %i.z = and i8 %i.y, 1
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.g, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ac = load i8, ptr %i.ab, align 4             ; 2 uses
  %i.ad = and i8 %i.ac, 1
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.g
  %i.af = load i32, ptr %i.g, align 8, !tbaa !35
  %i.ag = load i32, ptr %i.r, align 8, !tbaa !35
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.g, %bb.f
  %i.ai = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  %i.aj = icmp slt i32 %i.ai, 0
  %.pre12.i = load ptr, ptr %i.d, align 8, !tbaa !57 ; 2 uses
  br i1 %i.aj, label %bb.h, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %.pre10.i = load i8, ptr %.phi.trans.insert.i, align 4
  br label %bb.i

bb.h:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i, %.split.i
  %i.ak = phi ptr [ %i.x, %.split.i ], [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i ]
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit

bb.i:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
  %i.al = phi i8 [ %.pre10.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.ac, %.split.i ]
  %i.am = phi ptr [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.x, %.split.i ] ; 2 uses
  %i.an = and i8 %i.al, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.j, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ap = load i8, ptr %i.j, align 4
  %i.aq = and i8 %i.ap, 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %.split9.i, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

.split9.i:                                        ; preds = %bb.j
  %i.as = load i32, ptr %i.r, align 8, !tbaa !35
  %i.at = load i32, ptr %i.i, align 8, !tbaa !35
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.k, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i:       ; preds = %bb.j, %bb.i
  %i.av = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i
  %.pre11.i = load ptr, ptr %i.d, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, %.split9.i
  %i.ax = phi ptr [ %.pre11.i, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i ], [ %i.am, %.split9.i ]
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit

_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit:  ; preds = %bb.k, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i, %.split9.i, %bb.h, %.lr.ph
  %lftr.wideiv = trunc i64 %indvars.iv.next28 to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !196

.loopexit:                                        ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager12translate_bqEjP3mpzRK4mpbq(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(20) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = mul i32 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %wide.trip.count.i = zext i32 %1 to i64         ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN13mpzzp_manager5mul2kER3mpzj.exit.i, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %_ZN13mpzzp_manager5mul2kER3mpzj.exit.i ] ; 2 uses
  %.01315.i = phi i32 [ %i.d, %bb.b ], [ %i.g, %_ZN13mpzzp_manager5mul2kER3mpzj.exit.i ]
  %i.g = sub i32 %.01315.i, %i.c                  ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN13mpzzp_manager5mul2kER3mpzj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i32 noundef %i.g)
  %i.l = load i8, ptr %i.f, align 8, !tbaa !39, !range !40, !noundef !41
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN13mpzzp_manager5mul2kER3mpzj.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  br label %_ZN13mpzzp_manager5mul2kER3mpzj.exit.i

_ZN13mpzzp_manager5mul2kER3mpzj.exit.i:           ; preds = %bb.e, %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph58, label %bb.c, !llvm.loop !12

.lr.ph58:                                         ; preds = %_ZN13mpzzp_manager5mul2kER3mpzj.exit.i
  %i.n = add i32 %1, -1                           ; 3 uses
  %i.o = add i32 %1, -2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.u = zext i32 %i.n to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.u ; 2 uses
  %i.w = zext i32 %i.o to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph58, %_ZN13mpzzp_manager5mul2kER3mpzj.exit
  %indvars.iv62 = phi i64 [ 1, %.lr.ph58 ], [ %indvars.iv.next63, %_ZN13mpzzp_manager5mul2kER3mpzj.exit ] ; 2 uses
  %indvars.iv = phi i32 [ %i.n, %.lr.ph58 ], [ %indvars.iv.next, %_ZN13mpzzp_manager5mul2kER3mpzj.exit ] ; 2 uses
  %i.x = zext i32 %indvars.iv to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !41, !align !49
  %i.z = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.y)
  br i1 %i.z, label %_ZN11upolynomial12core_manager10checkpointEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN11upolynomial21upolynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN11upolynomial21upolynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #26
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aa) #23
  resume { ptr, i32 } %i.ab

_ZN11upolynomial12core_manager10checkpointEv.exit: ; preds = %bb.f
  %i.ac = sub nuw nsw i64 %i.u, %indvars.iv62     ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE6addmulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  %i.ah = load i8, ptr %i.f, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  br label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit

_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit:  ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit, %bb.j
  %.not4054.not = icmp samesign ult i64 %i.ac, %i.w
  br i1 %.not4054.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit42, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !103
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i32 noundef %i.aj)
  %i.al = load i8, ptr %i.f, align 8, !tbaa !39, !range !40, !noundef !41
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN13mpzzp_manager5mul2kER3mpzj.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.v)
  br label %_ZN13mpzzp_manager5mul2kER3mpzj.exit

_ZN13mpzzp_manager5mul2kER3mpzj.exit:             ; preds = %._crit_edge, %bb.k
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count.i
  br i1 %exitcond66.not, label %.loopexit, label %bb.f, !llvm.loop !197

.lr.ph:                                           ; preds = %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit42
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit42 ], [ %i.x, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit ] ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv59 ; 27 uses
  %i.ao = load i32, ptr %i.b, align 8, !tbaa !103
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i32 noundef %i.ao)
  %i.aq = load i8, ptr %i.f, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN13mpzzp_manager5mul2kER3mpzj.exit41, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !57, !nonnull !41, !align !49 ; 3 uses
  %i.au = load i8, ptr %i.r, align 4
  %i.av = and i8 %i.au, 1
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ay = load i8, ptr %i.ax, align 4             ; 2 uses
  %i.az = and i8 %i.ay, 1
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.m
  %i.bb = load i32, ptr %i.q, align 8, !tbaa !35
  %i.bc = load i32, ptr %i.an, align 8, !tbaa !35
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.n, label %bb.o

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.m, %bb.l
  %i.be = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
  %i.bf = icmp slt i32 %i.be, 0
  %.pre12.i = load ptr, ptr %i.e, align 8, !tbaa !57 ; 2 uses
  br i1 %i.bf, label %bb.n, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.pre10.i = load i8, ptr %.phi.trans.insert.i, align 4
  br label %bb.o

bb.n:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i, %.split.i
  %i.bg = phi ptr [ %i.at, %.split.i ], [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i ]
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
  br label %_ZN13mpzzp_manager5mul2kER3mpzj.exit41

bb.o:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
  %i.bh = phi i8 [ %.pre10.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.ay, %.split.i ]
  %i.bi = phi ptr [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.at, %.split.i ] ; 2 uses
  %i.bj = and i8 %i.bh, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.p, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bl = load i8, ptr %i.t, align 4
  %i.bm = and i8 %i.bl, 1
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %.split9.i, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

.split9.i:                                        ; preds = %bb.p
  %i.bo = load i32, ptr %i.an, align 8, !tbaa !35
  %i.bp = load i32, ptr %i.s, align 8, !tbaa !35
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.q, label %_ZN13mpzzp_manager5mul2kER3mpzj.exit41

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i:       ; preds = %bb.p, %bb.o
  %i.br = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, label %_ZN13mpzzp_manager5mul2kER3mpzj.exit41

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i
  %.pre11.i = load ptr, ptr %i.e, align 8, !tbaa !57
  br label %bb.q

bb.q:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, %.split9.i
  %i.bt = phi ptr [ %.pre11.i, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i ], [ %i.bi, %.split9.i ]
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
  br label %_ZN13mpzzp_manager5mul2kER3mpzj.exit41

_ZN13mpzzp_manager5mul2kER3mpzj.exit41:           ; preds = %bb.q, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i, %.split9.i, %bb.n, %.lr.ph
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 3 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next60
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE6addmulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
  %i.bw = load i8, ptr %i.f, align 8, !tbaa !39, !range !40, !noundef !41
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit42, label %bb.r

bb.r:                                             ; preds = %_ZN13mpzzp_manager5mul2kER3mpzj.exit41
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !57, !nonnull !41, !align !49 ; 3 uses
  %i.ca = load i8, ptr %i.r, align 4
  %i.cb = and i8 %i.ca, 1
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %bb.s, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i43

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ce = load i8, ptr %i.cd, align 4             ; 2 uses
  %i.cf = and i8 %i.ce, 1
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %.split.i52, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i43

.split.i52:                                       ; preds = %bb.s
  %i.ch = load i32, ptr %i.q, align 8, !tbaa !35
  %i.ci = load i32, ptr %i.an, align 8, !tbaa !35
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.t, label %bb.u

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i43:     ; preds = %bb.s, %bb.r
  %i.ck = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
  %i.cl = icmp slt i32 %i.ck, 0
  %.pre12.i44 = load ptr, ptr %i.e, align 8, !tbaa !57 ; 2 uses
  br i1 %i.cl, label %bb.t, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i45

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i45: ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i43
  %.phi.trans.insert.i46 = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.pre10.i47 = load i8, ptr %.phi.trans.insert.i46, align 4
  br label %bb.u

bb.t:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i43, %.split.i52
  %i.cm = phi ptr [ %i.bz, %.split.i52 ], [ %.pre12.i44, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i43 ]
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
  br label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit42

bb.u:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i45, %.split.i52
  %i.cn = phi i8 [ %.pre10.i47, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i45 ], [ %i.ce, %.split.i52 ]
  %i.co = phi ptr [ %.pre12.i44, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i45 ], [ %i.bz, %.split.i52 ] ; 2 uses
  %i.cp = and i8 %i.cn, 1
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.v, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i48

bb.v:                                             ; preds = %bb.u
  %i.cr = load i8, ptr %i.t, align 4
  %i.cs = and i8 %i.cr, 1
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %.split9.i51, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i48

.split9.i51:                                      ; preds = %bb.v
  %i.cu = load i32, ptr %i.an, align 8, !tbaa !35
  %i.cv = load i32, ptr %i.s, align 8, !tbaa !35
  %i.cw = icmp slt i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.w, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit42

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i48:     ; preds = %bb.v, %bb.u
  %i.cx = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i49, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit42

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i49: ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i48
  %.pre11.i50 = load ptr, ptr %i.e, align 8, !tbaa !57
  br label %bb.w

bb.w:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i49, %.split9.i51
  %i.cz = phi ptr [ %.pre11.i50, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i49 ], [ %i.co, %.split9.i51 ]
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
  br label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit42

_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit42: ; preds = %bb.w, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i48, %.split9.i51, %bb.t, %_ZN13mpzzp_manager5mul2kER3mpzj.exit41
  %lftr.wideiv = trunc i64 %indvars.iv.next60 to i32
  %exitcond.not = icmp eq i32 %i.n, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !198

.loopexit:                                        ; preds = %_ZN13mpzzp_manager5mul2kER3mpzj.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager22compose_2kn_p_x_div_2kEjP3mpzj(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i32 %3, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN13mpzzp_manager5mul2kER3mpzj.exit
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %_ZN13mpzzp_manager5mul2kER3mpzj.exit ] ; 2 uses
  %.01315 = phi i32 [ %i.b, %bb.b ], [ %i.e, %_ZN13mpzzp_manager5mul2kER3mpzj.exit ]
  %i.e = sub i32 %.01315, %3                      ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN13mpzzp_manager5mul2kER3mpzj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i32 noundef %i.e)
  %i.j = load i8, ptr %i.d, align 8, !tbaa !39, !range !40, !noundef !41
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN13mpzzp_manager5mul2kER3mpzj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_ZN13mpzzp_manager5mul2kER3mpzj.exit

_ZN13mpzzp_manager5mul2kER3mpzj.exit:             ; preds = %bb.e, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !12

.loopexit:                                        ; preds = %_ZN13mpzzp_manager5mul2kER3mpzj.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager11translate_qEjP3mpzRK3mpq(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  tail call void @_ZN11upolynomial7manager20compose_an_p_x_div_aEjP3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.c = add i32 %1, -1                           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = add i32 %1, -2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.l = zext i32 %i.c to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l ; 3 uses
  %4 = zext i32 %i.f to i64
  %i.n = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph63, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit
  %indvars.iv67 = phi i64 [ 1, %.lr.ph63 ], [ %indvars.iv.next68, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ] ; 2 uses
  %indvars.iv = phi i32 [ %i.c, %.lr.ph63 ], [ %indvars.iv.next, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ] ; 2 uses
  %i.o = zext i32 %indvars.iv to i64
  %i.p = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !41, !align !49
  %i.q = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.p)
  br i1 %i.q, label %_ZN11upolynomial12core_manager10checkpointEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN11upolynomial21upolynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN11upolynomial21upolynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.r) #23
  resume { ptr, i32 } %i.s

_ZN11upolynomial12core_manager10checkpointEv.exit: ; preds = %bb.b
  %i.t = sub nuw nsw i64 %i.l, %indvars.iv67      ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE6addmulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
  %i.y = load i8, ptr %i.e, align 8, !tbaa !39, !range !40, !noundef !41
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
  br label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit

_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit:  ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit, %bb.f
  %.not4458.not = icmp samesign ult i64 %i.t, %4
  br i1 %.not4458.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
  %i.ab = load i8, ptr %i.e, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
  br label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit:        ; preds = %._crit_edge, %bb.g
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %i.n
  br i1 %exitcond71.not, label %.loopexit, label %bb.b, !llvm.loop !199

.lr.ph:                                           ; preds = %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46 ], [ %i.o, %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv64 ; 28 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  %i.af = load i8, ptr %i.e, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49 ; 3 uses
  %i.aj = load i8, ptr %i.i, align 4
  %i.ak = and i8 %i.aj, 1
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.an = load i8, ptr %i.am, align 4             ; 2 uses
  %i.ao = and i8 %i.an, 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.i
  %i.aq = load i32, ptr %i.h, align 8, !tbaa !35
  %i.ar = load i32, ptr %i.ad, align 8, !tbaa !35
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.i, %bb.h
  %i.at = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  %i.au = icmp slt i32 %i.at, 0
  %.pre12.i = load ptr, ptr %i.d, align 8, !tbaa !57 ; 2 uses
  br i1 %i.au, label %bb.j, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.pre10.i = load i8, ptr %.phi.trans.insert.i, align 4
  br label %bb.k

bb.j:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i, %.split.i
  %i.av = phi ptr [ %i.ai, %.split.i ], [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i ]
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  br label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45

bb.k:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
  %i.aw = phi i8 [ %.pre10.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.an, %.split.i ]
  %i.ax = phi ptr [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.ai, %.split.i ] ; 2 uses
  %i.ay = and i8 %i.aw, 1
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.l, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ba = load i8, ptr %i.k, align 4
  %i.bb = and i8 %i.ba, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %.split9.i, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

.split9.i:                                        ; preds = %bb.l
  %i.bd = load i32, ptr %i.ad, align 8, !tbaa !35
  %i.be = load i32, ptr %i.j, align 8, !tbaa !35
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.m, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i:       ; preds = %bb.l, %bb.k
  %i.bg = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i
  %.pre11.i = load ptr, ptr %i.d, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, %.split9.i
  %i.bi = phi ptr [ %.pre11.i, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i ], [ %i.ax, %.split9.i ]
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  br label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45:      ; preds = %bb.m, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i, %.split9.i, %bb.j, %.lr.ph
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next65
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE6addmulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  %i.bl = load i8, ptr %i.e, align 8, !tbaa !39, !range !40, !noundef !41
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46, label %bb.n

bb.n:                                             ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49 ; 3 uses
  %i.bp = load i8, ptr %i.i, align 4
  %i.bq = and i8 %i.bp, 1
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.o, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i47

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.bt = load i8, ptr %i.bs, align 4             ; 2 uses
  %i.bu = and i8 %i.bt, 1
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %.split.i56, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i47

.split.i56:                                       ; preds = %bb.o
  %i.bw = load i32, ptr %i.h, align 8, !tbaa !35
  %i.bx = load i32, ptr %i.ad, align 8, !tbaa !35
  %i.by = icmp slt i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.p, label %bb.q

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i47:     ; preds = %bb.o, %bb.n
  %i.bz = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  %i.ca = icmp slt i32 %i.bz, 0
  %.pre12.i48 = load ptr, ptr %i.d, align 8, !tbaa !57 ; 2 uses
  br i1 %i.ca, label %bb.p, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i49

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i49: ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i47
  %.phi.trans.insert.i50 = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.pre10.i51 = load i8, ptr %.phi.trans.insert.i50, align 4
  br label %bb.q

bb.p:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i47, %.split.i56
  %i.cb = phi ptr [ %i.bo, %.split.i56 ], [ %.pre12.i48, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i47 ]
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  br label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46

bb.q:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i49, %.split.i56
  %i.cc = phi i8 [ %.pre10.i51, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i49 ], [ %i.bt, %.split.i56 ]
  %i.cd = phi ptr [ %.pre12.i48, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i49 ], [ %i.bo, %.split.i56 ] ; 2 uses
  %i.ce = and i8 %i.cc, 1
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.r, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i52

bb.r:                                             ; preds = %bb.q
  %i.cg = load i8, ptr %i.k, align 4
  %i.ch = and i8 %i.cg, 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %.split9.i55, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i52

.split9.i55:                                      ; preds = %bb.r
  %i.cj = load i32, ptr %i.ad, align 8, !tbaa !35
  %i.ck = load i32, ptr %i.j, align 8, !tbaa !35
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.s, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i52:     ; preds = %bb.r, %bb.q
  %i.cm = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i53, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i53: ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i52
  %.pre11.i54 = load ptr, ptr %i.d, align 8, !tbaa !57
  br label %bb.s

bb.s:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i53, %.split9.i55
  %i.co = phi ptr [ %.pre11.i54, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i53 ], [ %i.cd, %.split9.i55 ]
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  br label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46

_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46: ; preds = %bb.s, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i52, %.split9.i55, %bb.p, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45
  %lftr.wideiv = trunc i64 %indvars.iv.next65 to i32
  %exitcond.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !200

.loopexit:                                        ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager20compose_an_p_x_div_aEjP3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class._scoped_numeral, align 8     ; 9 uses
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i32 0, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, -4                          ; 2 uses
  store i8 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %3, align 8, !tbaa !35
  store i32 %i.m, ptr %i.d, align 8, !tbaa !35
end_hunk_0
