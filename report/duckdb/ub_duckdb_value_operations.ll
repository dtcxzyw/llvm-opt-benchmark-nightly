inline.NumInlined: 306
inline.NumDeleted: 152
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_:bb.a
  %i.hs = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10ArrayValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %.tr206) ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !42
  %i.hv = load ptr, ptr %i.hr, align 8, !tbaa !44
  %.not263 = icmp eq ptr %i.hu, %i.hv
  br i1 %.not263, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.cc, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread
  %.096264 = phi i64 [ %i.io, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread ], [ 0, %bb.cc ] ; 5 uses
  %i.hw = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 noundef %.096264) ; 2 uses
  %i.hx = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i64 noundef %.096264) ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !7, !range !24, !noundef !25
  %i.ia = trunc nuw i8 %i.hz to i1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.ic = load i8, ptr %i.ib, align 8, !tbaa !7, !range !24, !noundef !25
  %i.id = trunc nuw i8 %i.ic to i1                ; 2 uses
  br i1 %i.ia, label %bb.cd, label %.thread192

bb.cd:                                            ; preds = %.lr.ph266
  br i1 %i.id, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155.thread, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit

.thread192:                                       ; preds = %.lr.ph266
  br i1 %i.id, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155.thread, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155: ; preds = %.thread192
  %i.ie = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %i.hw, ptr noundef nonnull align 8 dereferenceable(64) %i.hx), !inline_history !50
  br i1 %i.ie, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155.thread

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155.thread: ; preds = %.thread192, %bb.cd, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155
  %i.if = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i64 noundef %.096264) ; 2 uses
  %i.ig = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i64 noundef %.096264) ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ii = load i8, ptr %i.ih, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.il = load i8, ptr %i.ik, align 8, !range !24 ; 2 uses
  %i.im = trunc nuw i8 %i.il to i1
  %or.cond.i.i144 = select i1 %i.ij, i1 %i.im, i1 false
  br i1 %or.cond.i.i144, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread, label %bb.ce

bb.ce:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155.thread
  %.not.i.i145 = icmp eq i8 %i.ii, %i.il
  br i1 %.not.i.i145, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147: ; preds = %bb.ce
  %i.in = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %i.if, ptr noundef nonnull align 8 dereferenceable(64) %i.ig), !inline_history !51
  br i1 %i.in, label %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit

_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread: ; preds = %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155.thread, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147
  %i.io = add nuw i64 %.096264, 1                 ; 2 uses
  %i.ip = load ptr, ptr %i.ht, align 8, !tbaa !42
  %i.iq = load ptr, ptr %i.hr, align 8, !tbaa !44
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = ashr exact i64 %i.it, 6
  %.not.not = icmp ult i64 %i.io, %i.iu
  br i1 %.not.not, label %.lr.ph266, label %_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit, !llvm.loop !54

bb.cf:                                            ; preds = %bb.o
  %i.iv = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.cg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.iv, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  invoke void @__cxa_throw(ptr nonnull %i.iv, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.cl unwind label %bb.ci

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.cf
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.0 = phi i1 [ false, %bb.ch ], [ true, %bb.cg ] ; 2 uses
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.iy = load ptr, ptr %20, align 8, !tbaa !26   ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ci
  call void @_ZdlPv(ptr noundef %i.iy) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br i1 %.0, label %bb.cj, label %bb.ck

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br i1 %.0, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn133202 = phi { ptr, i32 } [ %i.iw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.iv) #17
  br label %bb.ck

_ZN6duckdb11GreaterThan9OperationINS_10interval_tEEEbRKT_S5_.exit: ; preds = %.thread182, %bb.bw, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit149, %bb.bv, %bb.ce, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread, %bb.cd, %bb.cb, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit153, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143, %bb.ca, %bb.bx, %bb.cc, %bb.af, %bb.ae, %bb.ad, %bb.ac, %._crit_edge277, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit, %bb.aw, %_ZN6duckdb11GreaterThan9OperationINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SA_.exit, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.l
  %.6 = phi i1 [ %.097, %bb.l ], [ %i.p, %bb.p ], [ %i.s, %bb.q ], [ %i.v, %bb.r ], [ %i.y, %bb.s ], [ %i.ab, %bb.t ], [ %i.ae, %bb.u ], [ %i.ah, %bb.v ], [ %i.ak, %bb.w ], [ %i.an, %bb.x ], [ %i.aw, %bb.y ], [ %i.bf, %bb.z ], [ %i.bi, %bb.aa ], [ %i.bl, %bb.ab ], [ true, %bb.cd ], [ %i.cy, %_ZN6duckdb11GreaterThan9OperationINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SA_.exit ], [ %i.dh, %bb.aw ], [ true, %bb.cc ], [ true, %bb.ae ], [ %.0.i, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit ], [ true, %bb.bv ], [ %not., %bb.bx ], [ %i.gq, %._crit_edge277 ], [ true, %bb.ca ], [ %spec.select.i.i.i, %bb.af ], [ true, %bb.ac ], [ false, %bb.ad ], [ true, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit153 ], [ false, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit143 ], [ false, %bb.cb ], [ true, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147.thread ], [ false, %bb.ce ], [ true, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit155 ], [ false, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit147 ], [ true, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator5FinalINS_11GreaterThanEEEbRKNS_5ValueES6_.exit149 ], [ false, %bb.bw ], [ false, %_ZN6duckdb12_GLOBAL__N_123ValuePositionComparator8PossibleINS_11GreaterThanEEEbRKNS_5ValueES6_.exit ], [ false, %.thread182 ]
  ret i1 %.6

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cj, %bb.bu, %bb.bq, %bb.n
  %.pn135.pn.pn = phi { ptr, i32 } [ %.pn135.pn, %bb.n ], [ %.pn133202, %bb.cj ], [ %i.ix, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bq ], [ %i.eh, %bb.bu ], [ %i.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn135.pn.pn

bb.cl:                                            ; preds = %bb.ch
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations17GreaterThanEqualsERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb15ValueOperations11GreaterThanERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations8LessThanERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb15ValueOperations11GreaterThanERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %0)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations14LessThanEqualsERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb15ValueOperations11GreaterThanERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.b = xor i1 %i.a, true
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !24   ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.b, %i.e
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.g, %bb.c ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations12DistinctFromERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !24   ; 2 uses
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i8 %i.b, %i.e
  br i1 %.not.i, label %bb.c, label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_6EqualsEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !51
  %i.h = xor i1 %i.g, true
  br label %_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit

_ZN6duckdb15ValueOperations15NotDistinctFromERKNS_5ValueES3_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i1 [ %i.h, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %or.cond.not = icmp eq i8 %i.e, 0
  br label %bb.d

.thread:                                          ; preds = %bb.a
  %2 = trunc nuw i8 %i.e to i1
  br i1 %2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.f = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.thread, %bb.c
  %.0 = phi i1 [ %i.f, %bb.c ], [ %or.cond.not, %bb.b ], [ false, %.thread ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations25DistinctGreaterThanEqualsERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  br i1 %i.c, label %2, label %.thread.i

2:                                                ; preds = %bb.a
  %or.cond.not.i = icmp eq i8 %i.e, 0
  br label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit

.thread.i:                                        ; preds = %bb.a
  %3 = trunc nuw i8 %i.e to i1
  br i1 %3, label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit, label %bb.b

bb.b:                                             ; preds = %.thread.i
  %i.f = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %0), !inline_history !55
  br label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit

_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit: ; preds = %2, %.thread.i, %bb.b
  %.0.i = phi i1 [ %i.f, %bb.b ], [ %or.cond.not.i, %2 ], [ false, %.thread.i ]
  %4 = xor i1 %.0.i, true
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations16DistinctLessThanERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  br i1 %i.c, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %or.cond.not.i = icmp eq i8 %i.e, 0
  br label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit

.thread.i:                                        ; preds = %bb.a
  %2 = trunc nuw i8 %i.e to i1
  br i1 %2, label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit, label %bb.c

bb.c:                                             ; preds = %.thread.i
  %i.f = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %0), !inline_history !55
  br label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit

_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit: ; preds = %bb.b, %.thread.i, %bb.c
  %.0.i = phi i1 [ %i.f, %bb.c ], [ %or.cond.not.i, %bb.b ], [ false, %.thread.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ValueOperations22DistinctLessThanEqualsERKNS_5ValueES3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !7, !range !24, !noundef !25 ; 2 uses
  br i1 %i.c, label %2, label %.thread.i

2:                                                ; preds = %bb.a
  %or.cond.not.i = icmp eq i8 %i.e, 0
  br label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit

.thread.i:                                        ; preds = %bb.a
  %3 = trunc nuw i8 %i.e to i1
  br i1 %3, label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit, label %bb.b

bb.b:                                             ; preds = %.thread.i
  %i.f = tail call fastcc noundef zeroext i1 @_ZN6duckdb12_GLOBAL__N_125TemplatedBooleanOperationINS_11GreaterThanEEEbRKNS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1), !inline_history !55
  br label %_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit

_ZN6duckdb15ValueOperations19DistinctGreaterThanERKNS_5ValueES3_.exit: ; preds = %2, %.thread.i, %bb.b
  %.0.i = phi i1 [ %i.f, %bb.b ], [ %or.cond.not.i, %2 ], [ false, %.thread.i ]
  %4 = xor i1 %.0.i, true
  ret i1 %4
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZN6duckdb11LogicalType19ForceMaxLogicalTypeERKS0_S2_(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb5Value16DefaultTryCastAsERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK6duckdb5Value14GetValueUnsafeIbEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef signext i8 @_ZNK6duckdb5Value14GetValueUnsafeIaEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef signext i16 @_ZNK6duckdb5Value14GetValueUnsafeIsEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIiEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeIlEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef zeroext i8 @_ZNK6duckdb5Value14GetValueUnsafeIhEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef zeroext i16 @_ZNK6duckdb5Value14GetValueUnsafeItEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef i32 @_ZNK6duckdb5Value14GetValueUnsafeIjEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef i64 @_ZNK6duckdb5Value14GetValueUnsafeImEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare { i64, i64 } @_ZNK6duckdb5Value14GetValueUnsafeINS_10uhugeint_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare { i64, i64 } @_ZNK6duckdb5Value14GetValueUnsafeINS_9hugeint_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb6Equals9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef float @_ZNK6duckdb5Value14GetValueUnsafeIfEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6duckdb6Equals9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef double @_ZNK6duckdb5Value14GetValueUnsafeIdEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare { i64, i64 } @_ZNK6duckdb5Value14GetValueUnsafeINS_10interval_tEEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb11StringValue3GetB5cxx11ERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef) unnamed_addr #2

declare void @_ZN6duckdb6Vector9ReferenceERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN6duckdb6Vector24RecursiveToUnifiedFormatERS0_mRNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare void @_ZN6duckdb24UnifiedVariantVectorDataC1ERKNS_28RecursiveUnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

declare void @_ZN6duckdb12VariantUtils21ConvertVariantToValueERKNS_24UnifiedVariantVectorDataEmj(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, ptr noundef nonnull align 8 dereferenceable(160), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %.not.i1 = icmp eq ptr %i.c, %i.e
  br i1 %.not.i1, label %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i2 = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  tail call void @_ZN6duckdb28RecursiveUnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.0.i2) #17, !inline_history !60
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i2, i64 128 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i, label %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i.loopexit, label %.lr.ph, !llvm.loop !61

_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i

_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i.loopexit, %bb.a
  %i.g = phi ptr [ %.pre, %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb28RecursiveUnifiedVectorFormatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #19, !inline_history !62
  br label %_ZNSt6vectorIN6duckdb28RecursiveUnifiedVectorFormatESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb28RecursiveUnifiedVectorFormatESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb28RecursiveUnifiedVectorFormatEEvT_S3_.exit.i, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb28RecursiveUnifiedVectorFormatESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !66
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #17, !inline_history !69
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #17, !inline_history !69
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !71

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #17
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %_ZNSt6vectorIN6duckdb28RecursiveUnifiedVectorFormatESaIS1_EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63   ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aa, align 8, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !66
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #17, !inline_history !72
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #17, !inline_history !72
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.m:                                             ; preds = %bb.k
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ad, %bb.l ], [ %i.an, %bb.m ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ao, label %bb.n, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !71

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #17
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.n
  ret void
end_hunk_0
