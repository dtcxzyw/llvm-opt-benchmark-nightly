inline.NumInlined: 7796
inline.NumDeleted: 1797
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEEPKcEEvRKT_T0_SD_:bb.a
  %.not.i.i74 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i74, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit75, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.ao = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit75

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit75:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, %bb.d, %bb.e
  %i.ap = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit77, !prof !37

bb.f:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit75
  %i.ar = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i76 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i76, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit77, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.as = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit77

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit77:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit75, %bb.f, %bb.g
  %i.at = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.h, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit79, !prof !37

bb.h:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit77
  %i.av = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i78 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i78, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit79, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.aw = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit79

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit79:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit77, %bb.h, %bb.i
  %i.ax = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit81, !prof !37

bb.j:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit79
  %i.az = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i80 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i80, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit81, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.ba = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit81

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit81:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit79, %bb.j, %bb.k
  %i.bb = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit83, !prof !37

bb.l:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit81
  %i.bd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i82 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i82, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit83, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.be = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit83

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit83:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit81, %bb.l, %bb.m
  %i.bf = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit85, !prof !37

bb.n:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit83
  %i.bh = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i84 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i84, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit85, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.bi = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit85

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit85:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit83, %bb.n, %bb.o
  %i.bj = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.p, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit87, !prof !37

bb.p:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit85
  %i.bl = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i86 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i86, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.bm = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit87

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit87:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit85, %bb.p, %bb.q
  %i.bn = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit89, !prof !37

bb.r:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit87
  %i.bp = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i88 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i88, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit89, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.bq = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit89

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit89:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit87, %bb.r, %bb.s
  %i.br = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.t, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit91, !prof !37

bb.t:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit89
  %i.bt = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i90 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i90, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit91, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.bu = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit91

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit91:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit89, %bb.t, %bb.u
  %.066 = getelementptr inbounds nuw i8, ptr %.06697, i64 1 ; 2 uses
  %.not72 = icmp eq ptr %.066, %2
  br i1 %.not72, label %.loopexit, label %.lr.ph98, !llvm.loop !1430

.loopexit:                                        ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit91, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !63     ; 5 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 2 uses
  %.not58 = icmp eq i64 %i.h, 0
  %i.i = trunc i64 %i.f to i8
  br i1 %.not58, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i8, ptr %0, align 8, !tbaa !35
  %.pre65 = load i64, ptr %0, align 8
  %.pre66 = load ptr, ptr %1, align 8, !tbaa !63
  %.pre67 = lshr i64 %.pre65, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre67, %._crit_edge.loopexit ], [ %i.g, %bb.a ]
  %i.j = phi ptr [ %.pre66, %._crit_edge.loopexit ], [ %i.a, %bb.a ]
  %i.k = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.i, %bb.a ] ; 2 uses
  %i.l = trunc i8 %i.k to i1
  %i.m = lshr i8 %i.k, 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = select i1 %i.l, i64 %i.n, i64 %.pre-phi
  %i.p = load ptr, ptr %2, align 8, !tbaa !63
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp eq i64 %i.o, %i.s
  %i.u = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.534, ptr noundef nonnull @.str.514, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext %i.t) ; 0 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !63     ; 2 uses
  %.not56 = icmp eq ptr %i.v, %i.w
  %.sroa.020.061 = getelementptr inbounds i8, ptr %i.v, i64 -1 ; 2 uses
  %.not5762 = icmp eq ptr %.sroa.020.061, %i.w
  %or.cond = select i1 %.not56, i1 true, i1 %.not5762
  br i1 %or.cond, label %.loopexit, label %.lr.ph64

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.060 = phi i64 [ %i.bh, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %.sroa.046.059 = phi ptr [ %i.ah, %.lr.ph ], [ %i.a, %bb.a ] ; 5 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !63
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %.sroa.046.059 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp eq i64 %.060, %i.aa
  %i.ac = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.525, ptr noundef nonnull @.str.514, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ab) ; 0 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !63
  %i.ae = xor i64 %.060, -1                       ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = getelementptr inbounds i8, ptr %.sroa.046.059, i64 -1 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35
  %i.aj = icmp eq i8 %i.ag, %i.ai
  %i.ak = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.526, ptr noundef nonnull @.str.514, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext %i.aj) ; 0 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !63
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ae
  %i.an = icmp eq ptr %i.am, %i.ah
  %i.ao = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.527, ptr noundef nonnull @.str.514, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext %i.an) ; 0 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !63
  %3 = sub nsw i64 0, %.060                       ; 3 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  %i.ar = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.528, ptr noundef nonnull @.str.514, i32 noundef 271, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext %i.aq) ; 0 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !63
  %4 = getelementptr inbounds i8, ptr %i.as, i64 %3
  %i.at = icmp eq ptr %4, %.sroa.046.059
  %i.au = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.529, ptr noundef nonnull @.str.514, i32 noundef 272, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext %i.at) ; 0 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !63
  %5 = getelementptr inbounds i8, ptr %i.av, i64 %3
  %i.aw = icmp eq ptr %5, %.sroa.046.059
  %i.ax = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.530, ptr noundef nonnull @.str.514, i32 noundef 273, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext %i.aw) ; 0 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !63
  %i.az = icmp eq ptr %i.ay, %i.a
  %i.ba = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.531, ptr noundef nonnull @.str.514, i32 noundef 274, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext %i.az) ; 0 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !63
  %6 = getelementptr inbounds i8, ptr %i.bb, i64 %3
  %i.bc = icmp eq ptr %6, %.sroa.046.059
  %i.bd = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.532, ptr noundef nonnull @.str.514, i32 noundef 276, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext %i.bc) ; 0 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !63
  %i.bf = icmp eq ptr %i.be, %i.a
  %i.bg = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.533, ptr noundef nonnull @.str.514, i32 noundef 278, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext %i.bf) ; 0 uses
  %i.bh = add nuw nsw i64 %.060, 1                ; 2 uses
  %.not = icmp eq i64 %i.bh, %i.h
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1431

.lr.ph64:                                         ; preds = %._crit_edge, %.lr.ph64
  %.sroa.020.063 = phi ptr [ %.sroa.020.0, %.lr.ph64 ], [ %.sroa.020.061, %._crit_edge ]
  %i.bi = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.535, ptr noundef nonnull @.str.514, i32 noundef 286, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bj = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.536, ptr noundef nonnull @.str.514, i32 noundef 287, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bk = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.537, ptr noundef nonnull @.str.514, i32 noundef 288, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bl = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.538, ptr noundef nonnull @.str.514, i32 noundef 289, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bm = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.539, ptr noundef nonnull @.str.514, i32 noundef 290, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bn = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.540, ptr noundef nonnull @.str.514, i32 noundef 291, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bo = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.541, ptr noundef nonnull @.str.514, i32 noundef 292, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bp = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.542, ptr noundef nonnull @.str.514, i32 noundef 293, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bq = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.543, ptr noundef nonnull @.str.514, i32 noundef 294, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.br = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.544, ptr noundef nonnull @.str.514, i32 noundef 295, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %.sroa.020.0 = getelementptr inbounds i8, ptr %.sroa.020.063, i64 -1 ; 2 uses
  %i.bs = load ptr, ptr %2, align 8, !tbaa !63
  %.not57 = icmp eq ptr %.sroa.020.0, %i.bs
  br i1 %.not57, label %.loopexit, label %.lr.ph64, !llvm.loop !1432

.loopexit:                                        ; preds = %.lr.ph64, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !674    ; 5 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 2 uses
  %.not58 = icmp eq i64 %i.h, 0
  %i.i = trunc i64 %i.f to i8
  br i1 %.not58, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i8, ptr %0, align 8, !tbaa !35
  %.pre65 = load i64, ptr %0, align 8
  %.pre66 = load ptr, ptr %1, align 8, !tbaa !674
  %.pre67 = lshr i64 %.pre65, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre67, %._crit_edge.loopexit ], [ %i.g, %bb.a ]
  %i.j = phi ptr [ %.pre66, %._crit_edge.loopexit ], [ %i.a, %bb.a ]
  %i.k = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.i, %bb.a ] ; 2 uses
  %i.l = trunc i8 %i.k to i1
  %i.m = lshr i8 %i.k, 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = select i1 %i.l, i64 %i.n, i64 %.pre-phi
  %i.p = load ptr, ptr %2, align 8, !tbaa !674
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp eq i64 %i.o, %i.s
  %i.u = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.534, ptr noundef nonnull @.str.514, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext %i.t) ; 0 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !674    ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !674    ; 2 uses
  %.not56 = icmp eq ptr %i.v, %i.w
  %.sroa.020.061 = getelementptr inbounds i8, ptr %i.v, i64 -1 ; 2 uses
  %.not5762 = icmp eq ptr %.sroa.020.061, %i.w
  %or.cond = select i1 %.not56, i1 true, i1 %.not5762
  br i1 %or.cond, label %.loopexit, label %.lr.ph64

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.060 = phi i64 [ %i.bh, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %.sroa.046.059 = phi ptr [ %i.ah, %.lr.ph ], [ %i.a, %bb.a ] ; 5 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !674
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %.sroa.046.059 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp eq i64 %.060, %i.aa
  %i.ac = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.525, ptr noundef nonnull @.str.514, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext %i.ab) ; 0 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !674
  %i.ae = xor i64 %.060, -1                       ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = getelementptr inbounds i8, ptr %.sroa.046.059, i64 -1 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35
  %i.aj = icmp eq i8 %i.ag, %i.ai
  %i.ak = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.526, ptr noundef nonnull @.str.514, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext %i.aj) ; 0 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !674
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ae
  %i.an = icmp eq ptr %i.am, %i.ah
  %i.ao = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.527, ptr noundef nonnull @.str.514, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext %i.an) ; 0 uses
  %i.ap = load ptr, ptr %1, align 8, !tbaa !674
  %3 = sub nsw i64 0, %.060                       ; 3 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  %i.ar = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.528, ptr noundef nonnull @.str.514, i32 noundef 271, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext %i.aq) ; 0 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !674
  %4 = getelementptr inbounds i8, ptr %i.as, i64 %3
  %i.at = icmp eq ptr %4, %.sroa.046.059
  %i.au = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.529, ptr noundef nonnull @.str.514, i32 noundef 272, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext %i.at) ; 0 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !674
  %5 = getelementptr inbounds i8, ptr %i.av, i64 %3
  %i.aw = icmp eq ptr %5, %.sroa.046.059
  %i.ax = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.530, ptr noundef nonnull @.str.514, i32 noundef 273, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext %i.aw) ; 0 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !674
  %i.az = icmp eq ptr %i.ay, %i.a
  %i.ba = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.531, ptr noundef nonnull @.str.514, i32 noundef 274, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext %i.az) ; 0 uses
  %i.bb = load ptr, ptr %1, align 8, !tbaa !674
  %6 = getelementptr inbounds i8, ptr %i.bb, i64 %3
  %i.bc = icmp eq ptr %6, %.sroa.046.059
  %i.bd = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.532, ptr noundef nonnull @.str.514, i32 noundef 276, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext %i.bc) ; 0 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !674
  %i.bf = icmp eq ptr %i.be, %i.a
  %i.bg = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.533, ptr noundef nonnull @.str.514, i32 noundef 278, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext %i.bf) ; 0 uses
  %i.bh = add nuw nsw i64 %.060, 1                ; 2 uses
  %.not = icmp eq i64 %i.bh, %i.h
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1433

.lr.ph64:                                         ; preds = %._crit_edge, %.lr.ph64
  %.sroa.020.063 = phi ptr [ %.sroa.020.0, %.lr.ph64 ], [ %.sroa.020.061, %._crit_edge ]
  %i.bi = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.535, ptr noundef nonnull @.str.514, i32 noundef 286, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bj = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.536, ptr noundef nonnull @.str.514, i32 noundef 287, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bk = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.537, ptr noundef nonnull @.str.514, i32 noundef 288, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bl = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.538, ptr noundef nonnull @.str.514, i32 noundef 289, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bm = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.539, ptr noundef nonnull @.str.514, i32 noundef 290, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bn = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.540, ptr noundef nonnull @.str.514, i32 noundef 291, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bo = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.541, ptr noundef nonnull @.str.514, i32 noundef 292, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bp = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.542, ptr noundef nonnull @.str.514, i32 noundef 293, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bq = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.543, ptr noundef nonnull @.str.514, i32 noundef 294, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.br = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.544, ptr noundef nonnull @.str.514, i32 noundef 295, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPKcEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %.sroa.020.0 = getelementptr inbounds i8, ptr %.sroa.020.063, i64 -1 ; 2 uses
  %i.bs = load ptr, ptr %2, align 8, !tbaa !674
  %.not57 = icmp eq ptr %.sroa.020.0, %i.bs
  br i1 %.not57, label %.loopexit, label %.lr.ph64, !llvm.loop !1434

.loopexit:                                        ; preds = %.lr.ph64, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEEPcEEvRKT_T0_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not19 = icmp eq i64 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18, %bb.a
  %.pre-phi = phi i64 [ %i.f, %bb.a ], [ %i.ag, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ]
  %.in = phi i64 [ %i.e, %bb.a ], [ %i.af, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ] ; 2 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aa, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ]
  %i.h = trunc i64 %.in to i1
  %i.i = lshr i64 %.in, 1
  %i.j = and i64 %i.i, 127
  %i.k = select i1 %i.h, i64 %i.j, i64 %.pre-phi
  %i.l = icmp eq i64 %.0.lcssa, %i.k
  %i.m = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.519, ptr noundef nonnull @.str.514, i32 noundef 245, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEEPcEEvRKT_T0_SC_, i1 noundef zeroext %i.l) ; 0 uses
  %i.n = icmp eq ptr %.016.lcssa, %1
  %i.o = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.524, ptr noundef nonnull @.str.514, i32 noundef 246, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEEPcEEvRKT_T0_SC_, i1 noundef zeroext %i.n) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18
  %.022 = phi i64 [ %i.aa, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ], [ 0, %bb.a ]
  %.01521 = phi ptr [ %i.p, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ], [ %2, %bb.a ]
  %i.p = getelementptr i8, ptr %.01521, i64 -1    ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.521, ptr noundef nonnull @.str.514, i32 noundef 238, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEEPcEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.r = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !37

bb.b:                                             ; preds = %.lr.ph
  %i.t = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.u = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %.lr.ph, %bb.b, %bb.c
  %i.v = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.518, ptr noundef nonnull @.str.514, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEEPcEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.w = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.d, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18, !prof !37

bb.d:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.y = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i17 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i17, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.z = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, %bb.d, %bb.e
  %i.aa = add i64 %.022, 1                        ; 3 uses
  %i.ab = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.ac = trunc i8 %i.ab to i1
  %i.ad = lshr i8 %i.ab, 1
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = load i64, ptr %0, align 8               ; 2 uses
  %i.ag = lshr i64 %i.af, 1                       ; 2 uses
  %i.ah = select i1 %i.ac, i64 %i.ae, i64 %i.ag
  %.not = icmp eq i64 %i.aa, %i.ah
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1435
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEEPKcEEvRKT_T0_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not19 = icmp eq i64 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18, %bb.a
  %.pre-phi = phi i64 [ %i.f, %bb.a ], [ %i.ag, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ]
  %.in = phi i64 [ %i.e, %bb.a ], [ %i.af, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ] ; 2 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aa, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ]
  %i.h = trunc i64 %.in to i1
  %i.i = lshr i64 %.in, 1
  %i.j = and i64 %i.i, 127
  %i.k = select i1 %i.h, i64 %i.j, i64 %.pre-phi
  %i.l = icmp eq i64 %.0.lcssa, %i.k
  %i.m = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.519, ptr noundef nonnull @.str.514, i32 noundef 245, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEEPKcEEvRKT_T0_SD_, i1 noundef zeroext %i.l) ; 0 uses
  %i.n = icmp eq ptr %.016.lcssa, %1
  %i.o = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.524, ptr noundef nonnull @.str.514, i32 noundef 246, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEEPKcEEvRKT_T0_SD_, i1 noundef zeroext %i.n) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18
  %.022 = phi i64 [ %i.aa, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ], [ 0, %bb.a ]
  %.01521 = phi ptr [ %i.p, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ], [ %2, %bb.a ]
  %i.p = getelementptr i8, ptr %.01521, i64 -1    ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.521, ptr noundef nonnull @.str.514, i32 noundef 238, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEEPKcEEvRKT_T0_SD_, i1 noundef zeroext true) ; 0 uses
  %i.r = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !37

bb.b:                                             ; preds = %.lr.ph
  %i.t = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.u = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %.lr.ph, %bb.b, %bb.c
  %i.v = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.518, ptr noundef nonnull @.str.514, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEEPKcEEvRKT_T0_SD_, i1 noundef zeroext true) ; 0 uses
  %i.w = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.d, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18, !prof !37

bb.d:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.y = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i17 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i17, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.z = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, %bb.d, %bb.e
  %i.aa = add i64 %.022, 1                        ; 3 uses
  %i.ab = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.ac = trunc i8 %i.ab to i1
  %i.ad = lshr i8 %i.ab, 1
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = load i64, ptr %0, align 8               ; 2 uses
  %i.ag = lshr i64 %i.af, 1                       ; 2 uses
  %i.ah = select i1 %i.ac, i64 %i.ae, i64 %i.ag
  %.not = icmp eq i64 %i.aa, %i.ah
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1436
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIcSt11char_traitsIcEvvEENS_7movelib16reverse_iteratorIPcEEEEvRKT_T0_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !63     ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
end_hunk_0
begin_hunk_1_@_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEEPKwEEvRKT_T0_SD_:bb.a
  br i1 %.not.i.i74, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit75, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.at = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit75

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit75:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, %bb.e, %bb.f
  %i.au = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.g, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit77, !prof !37

bb.g:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit75
  %i.aw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i76 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i76, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit77, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.ax = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit77

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit77:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit75, %bb.g, %bb.h
  %i.ay = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit79, !prof !37

bb.i:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit77
  %i.ba = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i78 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i78, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit79, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.bb = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit79

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit79:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit77, %bb.i, %bb.j
  %i.bc = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.k, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit81, !prof !37

bb.k:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit79
  %i.be = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i80 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i80, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit81, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.bf = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit81

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit81:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit79, %bb.k, %bb.l
  %i.bg = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.m, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit83, !prof !37

bb.m:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit81
  %i.bi = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i82 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i82, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit83, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.bj = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit83

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit83:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit81, %bb.m, %bb.n
  %i.bk = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit85, !prof !37

bb.o:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit83
  %i.bm = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i84 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i84, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit85, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.bn = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit85

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit85:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit83, %bb.o, %bb.p
  %i.bo = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.q, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit87, !prof !37

bb.q:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit85
  %i.bq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i86 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i86, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit87, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.br = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit87

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit87:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit85, %bb.q, %bb.r
  %i.bs = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.s, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit89, !prof !37

bb.s:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit87
  %i.bu = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i88 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i88, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit89, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.bv = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit89

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit89:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit87, %bb.s, %bb.t
  %i.bw = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.u, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit91, !prof !37

bb.u:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit89
  %i.by = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i90 = icmp eq i32 %i.by, 0
  br i1 %.not.i.i90, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit91, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.bz = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit91

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit91:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit89, %bb.u, %bb.v
  %.066 = getelementptr inbounds nuw i8, ptr %.06697, i64 4 ; 2 uses
  %.not72 = icmp eq ptr %.066, %2
  br i1 %.not72, label %.loopexit, label %.lr.ph98, !llvm.loop !1492

.loopexit:                                        ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit91, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !682    ; 5 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 2 uses
  %.not58 = icmp eq i64 %i.h, 0
  %i.i = trunc i64 %i.f to i8
  br i1 %.not58, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i8, ptr %0, align 8, !tbaa !35
  %.pre65 = load i64, ptr %0, align 8
  %.pre66 = load ptr, ptr %1, align 8, !tbaa !682
  %.pre67 = lshr i64 %.pre65, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre67, %._crit_edge.loopexit ], [ %i.g, %bb.a ]
  %i.j = phi ptr [ %.pre66, %._crit_edge.loopexit ], [ %i.a, %bb.a ]
  %i.k = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.i, %bb.a ] ; 2 uses
  %i.l = trunc i8 %i.k to i1
  %i.m = lshr i8 %i.k, 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = select i1 %i.l, i64 %i.n, i64 %.pre-phi
  %i.p = load ptr, ptr %2, align 8, !tbaa !682
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = icmp eq i64 %i.o, %i.t
  %i.v = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.534, ptr noundef nonnull @.str.514, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext %i.u) ; 0 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !682    ; 2 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !682    ; 2 uses
  %.not56 = icmp eq ptr %i.w, %i.x
  %.sroa.020.061 = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 2 uses
  %.not5762 = icmp eq ptr %.sroa.020.061, %i.x
  %or.cond = select i1 %.not56, i1 true, i1 %.not5762
  br i1 %or.cond, label %.loopexit, label %.lr.ph64

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.060 = phi i64 [ %i.bj, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %.sroa.046.059 = phi ptr [ %i.aj, %.lr.ph ], [ %i.a, %bb.a ] ; 5 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !682
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %.sroa.046.059 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = icmp eq i64 %.060, %i.ac
  %i.ae = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.525, ptr noundef nonnull @.str.514, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ad) ; 0 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !682
  %i.ag = xor i64 %.060, -1                       ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !322
  %i.aj = getelementptr inbounds i8, ptr %.sroa.046.059, i64 -4 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !322
  %i.al = icmp eq i32 %i.ai, %i.ak
  %i.am = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.526, ptr noundef nonnull @.str.514, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext %i.al) ; 0 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !682
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ag
  %i.ap = icmp eq ptr %i.ao, %i.aj
  %i.aq = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.527, ptr noundef nonnull @.str.514, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ap) ; 0 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !682
  %3 = sub nsw i64 0, %.060                       ; 3 uses
  %i.as = icmp eq ptr %i.ar, %i.a
  %i.at = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.528, ptr noundef nonnull @.str.514, i32 noundef 271, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext %i.as) ; 0 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !682
  %4 = getelementptr inbounds [4 x i8], ptr %i.au, i64 %3
  %i.av = icmp eq ptr %4, %.sroa.046.059
  %i.aw = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.529, ptr noundef nonnull @.str.514, i32 noundef 272, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext %i.av) ; 0 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !682
  %5 = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %3
  %i.ay = icmp eq ptr %5, %.sroa.046.059
  %i.az = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.530, ptr noundef nonnull @.str.514, i32 noundef 273, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ay) ; 0 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !682
  %i.bb = icmp eq ptr %i.ba, %i.a
  %i.bc = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.531, ptr noundef nonnull @.str.514, i32 noundef 274, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext %i.bb) ; 0 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !682
  %6 = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %3
  %i.be = icmp eq ptr %6, %.sroa.046.059
  %i.bf = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.532, ptr noundef nonnull @.str.514, i32 noundef 276, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext %i.be) ; 0 uses
  %i.bg = load ptr, ptr %1, align 8, !tbaa !682
  %i.bh = icmp eq ptr %i.bg, %i.a
  %i.bi = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.533, ptr noundef nonnull @.str.514, i32 noundef 278, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext %i.bh) ; 0 uses
  %i.bj = add nuw nsw i64 %.060, 1                ; 2 uses
  %.not = icmp eq i64 %i.bj, %i.h
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1493

.lr.ph64:                                         ; preds = %._crit_edge, %.lr.ph64
  %.sroa.020.063 = phi ptr [ %.sroa.020.0, %.lr.ph64 ], [ %.sroa.020.061, %._crit_edge ]
  %i.bk = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.535, ptr noundef nonnull @.str.514, i32 noundef 286, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bl = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.536, ptr noundef nonnull @.str.514, i32 noundef 287, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bm = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.537, ptr noundef nonnull @.str.514, i32 noundef 288, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bn = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.538, ptr noundef nonnull @.str.514, i32 noundef 289, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bo = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.539, ptr noundef nonnull @.str.514, i32 noundef 290, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bp = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.540, ptr noundef nonnull @.str.514, i32 noundef 291, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bq = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.541, ptr noundef nonnull @.str.514, i32 noundef 292, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.br = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.542, ptr noundef nonnull @.str.514, i32 noundef 293, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bs = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.543, ptr noundef nonnull @.str.514, i32 noundef 294, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bt = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.544, ptr noundef nonnull @.str.514, i32 noundef 295, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %.sroa.020.0 = getelementptr inbounds i8, ptr %.sroa.020.063, i64 -4 ; 2 uses
  %i.bu = load ptr, ptr %2, align 8, !tbaa !682
  %.not57 = icmp eq ptr %.sroa.020.0, %i.bu
  br i1 %.not57, label %.loopexit, label %.lr.ph64, !llvm.loop !1494

.loopexit:                                        ; preds = %.lr.ph64, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !690    ; 5 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 2 uses
  %.not58 = icmp eq i64 %i.h, 0
  %i.i = trunc i64 %i.f to i8
  br i1 %.not58, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i8, ptr %0, align 8, !tbaa !35
  %.pre65 = load i64, ptr %0, align 8
  %.pre66 = load ptr, ptr %1, align 8, !tbaa !690
  %.pre67 = lshr i64 %.pre65, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre67, %._crit_edge.loopexit ], [ %i.g, %bb.a ]
  %i.j = phi ptr [ %.pre66, %._crit_edge.loopexit ], [ %i.a, %bb.a ]
  %i.k = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.i, %bb.a ] ; 2 uses
  %i.l = trunc i8 %i.k to i1
  %i.m = lshr i8 %i.k, 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = select i1 %i.l, i64 %i.n, i64 %.pre-phi
  %i.p = load ptr, ptr %2, align 8, !tbaa !690
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = icmp eq i64 %i.o, %i.t
  %i.v = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.534, ptr noundef nonnull @.str.514, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext %i.u) ; 0 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !690    ; 2 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !690    ; 2 uses
  %.not56 = icmp eq ptr %i.w, %i.x
  %.sroa.020.061 = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 2 uses
  %.not5762 = icmp eq ptr %.sroa.020.061, %i.x
  %or.cond = select i1 %.not56, i1 true, i1 %.not5762
  br i1 %or.cond, label %.loopexit, label %.lr.ph64

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.060 = phi i64 [ %i.bj, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %.sroa.046.059 = phi ptr [ %i.aj, %.lr.ph ], [ %i.a, %bb.a ] ; 5 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !690
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %.sroa.046.059 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = icmp eq i64 %.060, %i.ac
  %i.ae = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.525, ptr noundef nonnull @.str.514, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext %i.ad) ; 0 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !690
  %i.ag = xor i64 %.060, -1                       ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !322
  %i.aj = getelementptr inbounds i8, ptr %.sroa.046.059, i64 -4 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !322
  %i.al = icmp eq i32 %i.ai, %i.ak
  %i.am = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.526, ptr noundef nonnull @.str.514, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext %i.al) ; 0 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !690
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ag
  %i.ap = icmp eq ptr %i.ao, %i.aj
  %i.aq = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.527, ptr noundef nonnull @.str.514, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext %i.ap) ; 0 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !690
  %3 = sub nsw i64 0, %.060                       ; 3 uses
  %i.as = icmp eq ptr %i.ar, %i.a
  %i.at = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.528, ptr noundef nonnull @.str.514, i32 noundef 271, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext %i.as) ; 0 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !690
  %4 = getelementptr inbounds [4 x i8], ptr %i.au, i64 %3
  %i.av = icmp eq ptr %4, %.sroa.046.059
  %i.aw = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.529, ptr noundef nonnull @.str.514, i32 noundef 272, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext %i.av) ; 0 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !690
  %5 = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %3
  %i.ay = icmp eq ptr %5, %.sroa.046.059
  %i.az = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.530, ptr noundef nonnull @.str.514, i32 noundef 273, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext %i.ay) ; 0 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !690
  %i.bb = icmp eq ptr %i.ba, %i.a
  %i.bc = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.531, ptr noundef nonnull @.str.514, i32 noundef 274, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext %i.bb) ; 0 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !690
  %6 = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %3
  %i.be = icmp eq ptr %6, %.sroa.046.059
  %i.bf = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.532, ptr noundef nonnull @.str.514, i32 noundef 276, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext %i.be) ; 0 uses
  %i.bg = load ptr, ptr %1, align 8, !tbaa !690
  %i.bh = icmp eq ptr %i.bg, %i.a
  %i.bi = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.533, ptr noundef nonnull @.str.514, i32 noundef 278, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext %i.bh) ; 0 uses
  %i.bj = add nuw nsw i64 %.060, 1                ; 2 uses
  %.not = icmp eq i64 %i.bj, %i.h
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1495

.lr.ph64:                                         ; preds = %._crit_edge, %.lr.ph64
  %.sroa.020.063 = phi ptr [ %.sroa.020.0, %.lr.ph64 ], [ %.sroa.020.061, %._crit_edge ]
  %i.bk = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.535, ptr noundef nonnull @.str.514, i32 noundef 286, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bl = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.536, ptr noundef nonnull @.str.514, i32 noundef 287, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bm = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.537, ptr noundef nonnull @.str.514, i32 noundef 288, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bn = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.538, ptr noundef nonnull @.str.514, i32 noundef 289, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bo = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.539, ptr noundef nonnull @.str.514, i32 noundef 290, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bp = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.540, ptr noundef nonnull @.str.514, i32 noundef 291, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bq = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.541, ptr noundef nonnull @.str.514, i32 noundef 292, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.br = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.542, ptr noundef nonnull @.str.514, i32 noundef 293, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bs = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.543, ptr noundef nonnull @.str.514, i32 noundef 294, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %i.bt = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.544, ptr noundef nonnull @.str.514, i32 noundef 295, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPKwEEEEvRKT_T0_SG_, i1 noundef zeroext true) ; 0 uses
  %.sroa.020.0 = getelementptr inbounds i8, ptr %.sroa.020.063, i64 -4 ; 2 uses
  %i.bu = load ptr, ptr %2, align 8, !tbaa !690
  %.not57 = icmp eq ptr %.sroa.020.0, %i.bu
  br i1 %.not57, label %.loopexit, label %.lr.ph64, !llvm.loop !1496

.loopexit:                                        ; preds = %.lr.ph64, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEEPwEEvRKT_T0_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not19 = icmp eq i64 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18, %bb.a
  %.pre-phi = phi i64 [ %i.f, %bb.a ], [ %i.ag, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ]
  %.in = phi i64 [ %i.e, %bb.a ], [ %i.af, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ] ; 2 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aa, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ]
  %i.h = trunc i64 %.in to i1
  %i.i = lshr i64 %.in, 1
  %i.j = and i64 %i.i, 127
  %i.k = select i1 %i.h, i64 %i.j, i64 %.pre-phi
  %i.l = icmp eq i64 %.0.lcssa, %i.k
  %i.m = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.519, ptr noundef nonnull @.str.514, i32 noundef 245, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEEPwEEvRKT_T0_SC_, i1 noundef zeroext %i.l) ; 0 uses
  %i.n = icmp eq ptr %.016.lcssa, %1
  %i.o = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.524, ptr noundef nonnull @.str.514, i32 noundef 246, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEEPwEEvRKT_T0_SC_, i1 noundef zeroext %i.n) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18
  %.022 = phi i64 [ %i.aa, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ], [ 0, %bb.a ]
  %.01521 = phi ptr [ %i.p, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ], [ %2, %bb.a ]
  %i.p = getelementptr i8, ptr %.01521, i64 -4    ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.521, ptr noundef nonnull @.str.514, i32 noundef 238, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEEPwEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.r = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !37

bb.b:                                             ; preds = %.lr.ph
  %i.t = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.u = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %.lr.ph, %bb.b, %bb.c
  %i.v = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.518, ptr noundef nonnull @.str.514, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEEPwEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.w = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.d, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18, !prof !37

bb.d:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.y = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i17 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i17, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.z = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, %bb.d, %bb.e
  %i.aa = add i64 %.022, 1                        ; 3 uses
  %i.ab = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.ac = trunc i8 %i.ab to i1
  %i.ad = lshr i8 %i.ab, 1
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = load i64, ptr %0, align 8               ; 2 uses
  %i.ag = lshr i64 %i.af, 1                       ; 2 uses
  %i.ah = select i1 %i.ac, i64 %i.ae, i64 %i.ag
  %.not = icmp eq i64 %i.aa, %i.ah
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1497
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEEPKwEEvRKT_T0_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not19 = icmp eq i64 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18, %bb.a
  %.pre-phi = phi i64 [ %i.f, %bb.a ], [ %i.ag, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ]
  %.in = phi i64 [ %i.e, %bb.a ], [ %i.af, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ] ; 2 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aa, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ]
  %i.h = trunc i64 %.in to i1
  %i.i = lshr i64 %.in, 1
  %i.j = and i64 %i.i, 127
  %i.k = select i1 %i.h, i64 %i.j, i64 %.pre-phi
  %i.l = icmp eq i64 %.0.lcssa, %i.k
  %i.m = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.519, ptr noundef nonnull @.str.514, i32 noundef 245, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEEPKwEEvRKT_T0_SD_, i1 noundef zeroext %i.l) ; 0 uses
  %i.n = icmp eq ptr %.016.lcssa, %1
  %i.o = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.524, ptr noundef nonnull @.str.514, i32 noundef 246, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEEPKwEEvRKT_T0_SD_, i1 noundef zeroext %i.n) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18
  %.022 = phi i64 [ %i.aa, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ], [ 0, %bb.a ]
  %.01521 = phi ptr [ %i.p, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18 ], [ %2, %bb.a ]
  %i.p = getelementptr i8, ptr %.01521, i64 -4    ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.521, ptr noundef nonnull @.str.514, i32 noundef 238, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEEPKwEEvRKT_T0_SD_, i1 noundef zeroext true) ; 0 uses
  %i.r = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !37

bb.b:                                             ; preds = %.lr.ph
  %i.t = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.u = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %.lr.ph, %bb.b, %bb.c
  %i.v = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.518, ptr noundef nonnull @.str.514, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEEPKwEEvRKT_T0_SD_, i1 noundef zeroext true) ; 0 uses
  %i.w = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.d, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18, !prof !37

bb.d:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.y = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  %.not.i.i17 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i17, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !40
  %i.z = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #27
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit18:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, %bb.d, %bb.e
  %i.aa = add i64 %.022, 1                        ; 3 uses
  %i.ab = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.ac = trunc i8 %i.ab to i1
  %i.ad = lshr i8 %i.ab, 1
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = load i64, ptr %0, align 8               ; 2 uses
  %i.ag = lshr i64 %i.af, 1                       ; 2 uses
  %i.ah = select i1 %i.ac, i64 %i.ae, i64 %i.ag
  %.not = icmp eq i64 %i.aa, %i.ah
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1498
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container12basic_stringIwSt11char_traitsIwEvvEENS_7movelib16reverse_iteratorIPwEEEEvRKT_T0_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !682    ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
end_hunk_1
