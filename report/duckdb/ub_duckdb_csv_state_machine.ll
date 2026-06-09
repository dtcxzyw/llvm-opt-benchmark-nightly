inline.NumInlined: 1475
inline.NumDeleted: 789
begin_hunk_0_@_ZN6duckdb20CSVStateMachineCache6InsertERKNS_22CSVStateMachineOptionsE:bb.a
bb.b:                                             ; preds = %_ZN6duckdb25InitializeTransitionArrayERNS_12StateMachineENS_8CSVStateES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !19
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.k, ptr %i.a, align 8, !tbaa !22
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !20
  %i.n = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.n, ptr %i.h, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !23
  store i8 %i.p, ptr %i.o, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.q = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !21
  %i.s = load ptr, ptr %2, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.u = load i64, ptr %i.r, align 8, !tbaa !21   ; 4 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.a, %_ZN6duckdb25InitializeTransitionArrayERNS_12StateMachineENS_8CSVStateES2_.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN6duckdb25InitializeTransitionArrayERNS_12StateMachineENS_8CSVStateES2_.exit ] ; 4 uses
  %i.w = trunc i64 %indvars.iv to i8
  switch i8 %i.w, label %bb.j [
    i8 18, label %bb.f
    i8 7, label %bb.f
    i8 12, label %bb.f
    i8 9, label %bb.f
    i8 8, label %bb.h
    i8 14, label %.preheader453.a
    i8 6, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.3, %bb.g ] ; 5 uses
  %gep.i = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i8 7, ptr %gep.i, align 1, !tbaa !93
  %i.x = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.x, i64 19
  store i8 7, ptr %gep.i.1, align 1, !tbaa !93
  %i.y = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %i.y, i64 38
  store i8 7, ptr %gep.i.2, align 1, !tbaa !93
  %i.z = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %i.z, i64 57
  store i8 7, ptr %gep.i.3, align 1, !tbaa !93
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %_ZN6duckdb25InitializeTransitionArrayERNS_12StateMachineENS_8CSVStateES2_.exit, label %bb.g, !llvm.loop !95

bb.h:                                             ; preds = %bb.e
  br i1 %i.f, label %.preheader, label %.preheader451.a

.preheader:                                       ; preds = %bb.h, %.preheader
  %indvars.iv.i335 = phi i64 [ %indvars.iv.next.i337.3, %.preheader ], [ 0, %bb.h ] ; 5 uses
  %gep.i336 = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i340, i64 %indvars.iv.i335
  store i8 10, ptr %gep.i336, align 4, !tbaa !93
  %i.aa = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i340, i64 %indvars.iv.i335
  %gep.i336.1 = getelementptr inbounds nuw i8, ptr %i.aa, i64 19
  store i8 10, ptr %gep.i336.1, align 1, !tbaa !93
  %i.ab = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i340, i64 %indvars.iv.i335
  %gep.i336.2 = getelementptr inbounds nuw i8, ptr %i.ab, i64 38
  store i8 10, ptr %gep.i336.2, align 2, !tbaa !93
  %i.ac = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i340, i64 %indvars.iv.i335
  %gep.i336.3 = getelementptr inbounds nuw i8, ptr %i.ac, i64 57
  store i8 10, ptr %gep.i336.3, align 1, !tbaa !93
  %indvars.iv.next.i337.3 = add nuw nsw i64 %indvars.iv.i335, 4 ; 2 uses
  %exitcond.not.i338.3 = icmp eq i64 %indvars.iv.next.i337.3, 256
  br i1 %exitcond.not.i338.3, label %_ZN6duckdb25InitializeTransitionArrayERNS_12StateMachineENS_8CSVStateES2_.exit, label %.preheader, !llvm.loop !95

.preheader451.a:                                  ; preds = %bb.h, %.preheader451.a
  %indvars.iv.i341 = phi i64 [ %indvars.iv.next.i343.3, %.preheader451.a ], [ 0, %bb.h ] ; 5 uses
  %gep.i342 = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i340, i64 %indvars.iv.i341
  store i8 8, ptr %gep.i342, align 4, !tbaa !93
  %i.ad = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i340, i64 %indvars.iv.i341
  %gep.i342.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 19
  store i8 8, ptr %gep.i342.1, align 1, !tbaa !93
  %i.ae = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i340, i64 %indvars.iv.i341
  %gep.i342.2 = getelementptr inbounds nuw i8, ptr %i.ae, i64 38
  store i8 8, ptr %gep.i342.2, align 2, !tbaa !93
  %i.af = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i340, i64 %indvars.iv.i341
  %gep.i342.3 = getelementptr inbounds nuw i8, ptr %i.af, i64 57
  store i8 8, ptr %gep.i342.3, align 1, !tbaa !93
  %indvars.iv.next.i343.3 = add nuw nsw i64 %indvars.iv.i341, 4 ; 2 uses
  %exitcond.not.i344.3 = icmp eq i64 %indvars.iv.next.i343.3, 256
  br i1 %exitcond.not.i344.3, label %_ZN6duckdb25InitializeTransitionArrayERNS_12StateMachineENS_8CSVStateES2_.exit, label %.preheader451.a, !llvm.loop !95

.preheader453.a:                                  ; preds = %bb.e, %.preheader453.a
  %indvars.iv.i347 = phi i64 [ %indvars.iv.next.i349.3, %.preheader453.a ], [ 0, %bb.e ] ; 5 uses
  %gep.i348 = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i346, i64 %indvars.iv.i347
  store i8 14, ptr %gep.i348, align 2, !tbaa !93
  %i.ag = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i346, i64 %indvars.iv.i347
  %gep.i348.1 = getelementptr inbounds nuw i8, ptr %i.ag, i64 19
  store i8 14, ptr %gep.i348.1, align 1, !tbaa !93
  %i.ah = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i346, i64 %indvars.iv.i347
  %gep.i348.2 = getelementptr inbounds nuw i8, ptr %i.ah, i64 38
  store i8 14, ptr %gep.i348.2, align 4, !tbaa !93
  %i.ai = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i346, i64 %indvars.iv.i347
  %gep.i348.3 = getelementptr inbounds nuw i8, ptr %i.ai, i64 57
  store i8 14, ptr %gep.i348.3, align 1, !tbaa !93
  %indvars.iv.next.i349.3 = add nuw nsw i64 %indvars.iv.i347, 4 ; 2 uses
  %exitcond.not.i350.3 = icmp eq i64 %indvars.iv.next.i349.3, 256
  br i1 %exitcond.not.i350.3, label %_ZN6duckdb25InitializeTransitionArrayERNS_12StateMachineENS_8CSVStateES2_.exit, label %.preheader453.a, !llvm.loop !95

bb.i:                                             ; preds = %bb.e
  br i1 %i.f, label %.preheader455.a, label %.preheader457

.preheader455.a:                                  ; preds = %bb.i, %.preheader455.a
  %indvars.iv.i353 = phi i64 [ %indvars.iv.next.i355.3, %.preheader455.a ], [ 0, %bb.i ] ; 5 uses
  %gep.i354 = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i358, i64 %indvars.iv.i353
  store i8 10, ptr %gep.i354, align 2, !tbaa !93
  %i.aj = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i358, i64 %indvars.iv.i353
  %gep.i354.1 = getelementptr inbounds nuw i8, ptr %i.aj, i64 19
  store i8 10, ptr %gep.i354.1, align 1, !tbaa !93
  %i.ak = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i358, i64 %indvars.iv.i353
  %gep.i354.2 = getelementptr inbounds nuw i8, ptr %i.ak, i64 38
  store i8 10, ptr %gep.i354.2, align 4, !tbaa !93
  %i.al = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i358, i64 %indvars.iv.i353
  %gep.i354.3 = getelementptr inbounds nuw i8, ptr %i.al, i64 57
  store i8 10, ptr %gep.i354.3, align 1, !tbaa !93
  %indvars.iv.next.i355.3 = add nuw nsw i64 %indvars.iv.i353, 4 ; 2 uses
  %exitcond.not.i356.3 = icmp eq i64 %indvars.iv.next.i355.3, 256
  br i1 %exitcond.not.i356.3, label %_ZN6duckdb25InitializeTransitionArrayERNS_12StateMachineENS_8CSVStateES2_.exit, label %.preheader455.a, !llvm.loop !95

.preheader457:                                    ; preds = %bb.i, %.preheader457
  %indvars.iv.i359 = phi i64 [ %indvars.iv.next.i361.3, %.preheader457 ], [ 0, %bb.i ] ; 5 uses
  %gep.i360 = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i358, i64 %indvars.iv.i359
  store i8 0, ptr %gep.i360, align 2, !tbaa !93
  %i.am = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i358, i64 %indvars.iv.i359
  %gep.i360.1 = getelementptr inbounds nuw i8, ptr %i.am, i64 19
  store i8 0, ptr %gep.i360.1, align 1, !tbaa !93
  %i.an = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i358, i64 %indvars.iv.i359
  %gep.i360.2 = getelementptr inbounds nuw i8, ptr %i.an, i64 38
  store i8 0, ptr %gep.i360.2, align 4, !tbaa !93
  %i.ao = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i358, i64 %indvars.iv.i359
  %gep.i360.3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 57
  store i8 0, ptr %gep.i360.3, align 1, !tbaa !93
  %indvars.iv.next.i361.3 = add nuw nsw i64 %indvars.iv.i359, 4 ; 2 uses
  %exitcond.not.i362.3 = icmp eq i64 %indvars.iv.next.i361.3, 256
  br i1 %exitcond.not.i362.3, label %_ZN6duckdb25InitializeTransitionArrayERNS_12StateMachineENS_8CSVStateES2_.exit, label %.preheader457, !llvm.loop !95

bb.j:                                             ; preds = %bb.e
  %invariant.gep.i364 = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.i365 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i367.3, %bb.k ] ; 5 uses
  %gep.i366 = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i364, i64 %indvars.iv.i365
  store i8 0, ptr %gep.i366, align 1, !tbaa !93
  %i.ap = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i364, i64 %indvars.iv.i365
  %gep.i366.1 = getelementptr inbounds nuw i8, ptr %i.ap, i64 19
  store i8 0, ptr %gep.i366.1, align 1, !tbaa !93
  %i.aq = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i364, i64 %indvars.iv.i365
  %gep.i366.2 = getelementptr inbounds nuw i8, ptr %i.aq, i64 38
  store i8 0, ptr %gep.i366.2, align 1, !tbaa !93
  %i.ar = getelementptr inbounds nuw [19 x i8], ptr %invariant.gep.i364, i64 %indvars.iv.i365
  %gep.i366.3 = getelementptr inbounds nuw i8, ptr %i.ar, i64 57
  store i8 0, ptr %gep.i366.3, align 1, !tbaa !93
  %indvars.iv.next.i367.3 = add nuw nsw i64 %indvars.iv.i365, 4 ; 2 uses
  %exitcond.not.i368.3 = icmp eq i64 %indvars.iv.next.i367.3, 256
  br i1 %exitcond.not.i368.3, label %_ZN6duckdb25InitializeTransitionArrayERNS_12StateMachineENS_8CSVStateES2_.exit, label %bb.k, !llvm.loop !95

_ZN6duckdb25InitializeTransitionArrayERNS_12StateMachineENS_8CSVStateES2_.exit: ; preds = %.preheader457, %.preheader455.a, %.preheader453.a, %.preheader451.a, %.preheader, %bb.g, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 19
  br i1 %exitcond.not, label %bb.b, label %bb.e, !llvm.loop !96

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.as = load ptr, ptr %2, align 8, !tbaa !20
  %i.at = load i8, ptr %i.as, align 1, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.l
  %.0323 = phi i8 [ %i.at, %bb.l ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 41
  %i.av = load i8, ptr %i.au, align 1, !tbaa !23  ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 43 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !23  ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 45
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !23  ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !97  ; 6 uses
  %i.bc = icmp ugt i64 %i.u, 1                    ; 9 uses
  %i.bd = load i8, ptr %i.d, align 1, !tbaa !98, !range !17, !noundef !18 ; 2 uses
  %i.be = icmp eq i8 %i.bd, 0
  %i.bf = icmp ne i8 %i.av, %i.ax
  %i.bg = icmp ne i8 %i.ax, 0
  %i.bh = and i1 %i.bf, %i.bg
  %spec.select = select i1 %i.be, i1 %i.bh, i1 false ; 9 uses
  %.not333 = icmp eq i8 %i.az, 0                  ; 13 uses
  %i.bi = zext i8 %.0323 to i64                   ; 3 uses
  %i.bj = getelementptr inbounds nuw [19 x i8], ptr %i.c, i64 %i.bi ; 18 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 247 ; 5 uses
  %i.bl = trunc nuw i8 %i.bd to i1                ; 10 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 190 ; 6 uses
  %i.bn = zext i8 %i.az to i64                    ; 2 uses
  %i.bo = getelementptr inbounds nuw [19 x i8], ptr %i.c, i64 %i.bn ; 10 uses
  %i.bp = zext i8 %i.ax to i64                    ; 4 uses
  %i.bq = getelementptr inbounds nuw [19 x i8], ptr %i.c, i64 %i.bp ; 11 uses
  %storemerge = select i1 %i.bc, i8 2, i8 1
  store i8 %storemerge, ptr %i.bj, align 1, !tbaa !93
  switch i8 %i.bb, label %bb.w [
    i8 2, label %bb.n
    i8 1, label %bb.q
    i8 4, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  store i8 6, ptr %i.bk, align 1, !tbaa !93
  br i1 %i.bl, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 5, ptr %i.bm, align 2, !tbaa !93
  br label %bb.x

bb.p:                                             ; preds = %bb.n
  store i8 10, ptr %i.bm, align 2, !tbaa !93
  br label %bb.x

bb.q:                                             ; preds = %bb.m
  store i8 5, ptr %i.bm, align 2, !tbaa !93
  br i1 %i.bl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 5, ptr %i.bk, align 1, !tbaa !93
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  store i8 10, ptr %i.bk, align 1, !tbaa !93
  br label %bb.x

bb.t:                                             ; preds = %bb.m
  store i8 5, ptr %i.bk, align 1, !tbaa !93
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 5, ptr %i.bm, align 2, !tbaa !93
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  store i8 10, ptr %i.bm, align 2, !tbaa !93
  br label %bb.x

bb.w:                                             ; preds = %bb.m
  store i8 5, ptr %i.bk, align 1, !tbaa !93
  store i8 5, ptr %i.bm, align 2, !tbaa !93
  br label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.r, %bb.u, %bb.v, %bb.w, %bb.p, %bb.o
  br i1 %.not333, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 14, ptr %i.bo, align 1, !tbaa !93
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %spec.select, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i8 16, ptr %i.bq, align 1, !tbaa !93
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  %. = select i1 %i.bc, i8 2, i8 1
  store i8 %., ptr %i.br, align 1, !tbaa !93
  switch i8 %i.bb, label %bb.al [
    i8 2, label %bb.ai
    i8 1, label %bb.af
    i8 4, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 257
  store i8 5, ptr %i.bs, align 1, !tbaa !93
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 2 uses
  br i1 %i.bl, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 5, ptr %i.bt, align 8, !tbaa !93
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac
  store i8 10, ptr %i.bt, align 8, !tbaa !93
  br label %bb.am

bb.af:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store i8 5, ptr %i.bu, align 8, !tbaa !93
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 257 ; 2 uses
  br i1 %i.bl, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 5, ptr %i.bv, align 1, !tbaa !93
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  store i8 10, ptr %i.bv, align 1, !tbaa !93
  br label %bb.am

bb.ai:                                            ; preds = %bb.ab
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 257
  store i8 6, ptr %i.bw, align 1, !tbaa !93
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 2 uses
  br i1 %i.bl, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i8 5, ptr %i.bx, align 8, !tbaa !93
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  store i8 10, ptr %i.bx, align 8, !tbaa !93
  br label %bb.am

bb.al:                                            ; preds = %bb.ab
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 257
  store i8 5, ptr %i.by, align 1, !tbaa !93
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store i8 5, ptr %i.bz, align 8, !tbaa !93
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.ae, %bb.ad
  br i1 %.not333, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  store i8 14, ptr %i.ca, align 1, !tbaa !93
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  br i1 %spec.select, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 10
  store i8 16, ptr %i.cb, align 1, !tbaa !93
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 15
  %.500.a = select i1 %i.bc, i8 2, i8 1
  store i8 %.500.a, ptr %i.cc, align 1, !tbaa !93
  switch i8 %i.bb, label %bb.ay [
    i8 2, label %bb.ax
    i8 1, label %bb.au
    i8 4, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 262
  store i8 5, ptr %i.cd, align 2, !tbaa !93
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 205 ; 2 uses
  br i1 %i.bl, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i8 5, ptr %i.ce, align 1, !tbaa !93
  br label %bb.az

bb.at:                                            ; preds = %bb.ar
  store i8 10, ptr %i.ce, align 1, !tbaa !93
  br label %bb.az

bb.au:                                            ; preds = %bb.aq
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 205
  store i8 5, ptr %i.cf, align 1, !tbaa !93
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 262 ; 2 uses
  br i1 %i.bl, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 5, ptr %i.cg, align 2, !tbaa !93
end_hunk_0
begin_hunk_1_@_ZN6duckdb20CSVStateMachineCache6InsertERKNS_22CSVStateMachineOptionsE:bb.a
  store i64 940422246894996749, ptr %i.ir, align 8, !tbaa !22
  %i.iu = insertelement <2 x i64> poison, i64 %i.gf, i64 0
  %i.iv = insertelement <2 x i64> %i.iu, i64 %i.bp, i64 1 ; 2 uses
  %i.iw = shl nuw nsw <2 x i64> %i.iv, splat (i64 8)
  %i.ix = or disjoint <2 x i64> %i.iw, %i.iv      ; 2 uses
  %i.iy = shl nuw nsw <2 x i64> %i.ix, splat (i64 16)
  %i.iz = or disjoint <2 x i64> %i.iy, %i.ix      ; 2 uses
  %i.ja = shl nuw <2 x i64> %i.iz, splat (i64 32)
  %i.jb = or disjoint <2 x i64> %i.ja, %i.iz
  store <2 x i64> %i.jb, ptr %i.is, align 8, !tbaa !22
  %i.jc = getelementptr inbounds nuw i8, ptr %i.c, i64 5672 ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !22 ; 2 uses
  %i.je = shl i64 %i.jd, 8
  %i.jf = or i64 %i.je, %i.jd                     ; 2 uses
  %i.jg = shl i64 %i.jf, 16
  %i.jh = or i64 %i.jg, %i.jf                     ; 2 uses
  %i.ji = shl i64 %i.jh, 32
  %i.jj = or i64 %i.ji, %i.jh
  store i64 %i.jj, ptr %i.jc, align 8, !tbaa !22
  %i.jk = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.h
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit378
  call void @_ZdlPv(ptr noundef %i.jk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit378, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20CSVStateMachineCacheC2Ev(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.duckdb::vector.81", align 8 ; 8 uses
  %5 = alloca %"class.duckdb::vector", align 8    ; 13 uses
  %6 = alloca %"class.duckdb::vector.87", align 8 ; 9 uses
  %7 = alloca %"struct.duckdb::CSVStateMachineOptions", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"struct.duckdb::CSVStateMachineOptions", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"struct.duckdb::CSVStateMachineOptions", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb20CSVStateMachineCacheE, i64 16), ptr %0, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 1, ptr %i.i, align 8, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN6duckdb17DialectCandidates32GetDefaultQuoteEscapeCombinationEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.81") align 8 %4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN6duckdb17DialectCandidates19GetDefaultDelimiterB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %5)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN6duckdb17DialectCandidates17GetDefaultCommentEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.87") align 8 %6)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %4, align 8, !tbaa !109    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109  ; 2 uses
  %.not151266 = icmp eq ptr %i.m, %i.o
  br i1 %.not151266, label %._crit_edge270, label %.lr.ph269

.lr.ph269:                                        ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 49
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 49
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 49
  %i.av = load ptr, ptr %5, align 8, !tbaa !111
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %._crit_edge270, label %.lr.ph269.split

._crit_edge270:                                   ; preds = %._crit_edge265, %.lr.ph269, %bb.d
  %i.ay = load ptr, ptr %6, align 8, !tbaa !112   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge270
  call void @_ZdlPv(ptr noundef nonnull %i.ay) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge270, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.az = load ptr, ptr %5, align 8, !tbaa !75    ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !76 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.az, %i.bb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bf, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.az, %_ZNSt6vectorIcSaIcEED2Ev.exit ] ; 3 uses
  %i.bc = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.bc) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.bf, %i.bb
  br i1 %.not.i.i.i50, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !75
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.bg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.az, %_ZNSt6vectorIcSaIcEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.bh = load ptr, ptr %4, align 8, !tbaa !114   ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #23
  br label %_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.h:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EED2Ev.exit137

bb.i:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit135

bb.j:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit123

.lr.ph269.split:                                  ; preds = %.lr.ph269, %._crit_edge265
  %.sroa.0148.0267 = phi ptr [ %i.bx, %._crit_edge265 ], [ %i.m, %.lr.ph269 ] ; 2 uses
  %i.bl = load <2 x i8>, ptr %.sroa.0148.0267, align 1, !tbaa !23 ; 3 uses
  %i.bm = load ptr, ptr %5, align 8, !tbaa !111   ; 2 uses
  %i.bn = load ptr, ptr %i.p, align 8, !tbaa !111 ; 2 uses
  %.not152261 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not152261, label %._crit_edge265, label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph269.split
  %i.bo = load ptr, ptr %6, align 8, !tbaa !116
  %i.bp = load ptr, ptr %i.q, align 8, !tbaa !116
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %._crit_edge265, label %.lr.ph264.split.preheader

.lr.ph264.split.preheader:                        ; preds = %.lr.ph264
  %i.br = shufflevector <2 x i8> %i.bl, <2 x i8> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bs = shufflevector <8 x i8> <i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 2>, <8 x i8> %i.br, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 poison, i32 6, i32 7>
  %i.bt = shufflevector <2 x i8> %i.bl, <2 x i8> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bu = shufflevector <8 x i8> <i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 4>, <8 x i8> %i.bt, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 poison, i32 6, i32 7>
  %i.bv = shufflevector <2 x i8> %i.bl, <2 x i8> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bw = shufflevector <8 x i8> <i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 poison, i8 0, i8 1>, <8 x i8> %i.bv, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 poison, i32 6, i32 7>
  br label %.lr.ph264.split

._crit_edge265:                                   ; preds = %._crit_edge, %.lr.ph264, %.lr.ph269.split
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0148.0267, i64 2 ; 2 uses
  %.not151 = icmp eq ptr %i.bx, %i.o
  br i1 %.not151, label %._crit_edge270, label %.lr.ph269.split, !llvm.loop !117

.lr.ph264.split:                                  ; preds = %.lr.ph264.split.preheader, %._crit_edge
  %.sroa.0144.0262 = phi ptr [ %i.cb, %._crit_edge ], [ %i.bm, %.lr.ph264.split.preheader ] ; 5 uses
  %i.by = load ptr, ptr %6, align 8, !tbaa !116   ; 2 uses
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !116 ; 2 uses
  %.not153259 = icmp eq ptr %i.by, %i.bz
  br i1 %.not153259, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph264.split
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0144.0262, i64 8 ; 3 uses
  br label %bb.k

._crit_edge:                                      ; preds = %bb.l, %.lr.ph264.split
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0144.0262, i64 32 ; 2 uses
  %.not152 = icmp eq ptr %i.cb, %i.bn
  br i1 %.not152, label %._crit_edge265, label %.lr.ph264.split, !llvm.loop !119

bb.k:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.0140.0260 = phi ptr [ %i.by, %.lr.ph ], [ %i.cc, %bb.l ] ; 4 uses
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0140.0260, i64 1 ; 2 uses
  %.not153 = icmp eq ptr %i.cc, %i.bz
  br i1 %.not153, label %._crit_edge, label %bb.k

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %.not = phi i1 [ false, %bb.k ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ]
  %.037.idx258.sroa.phi.sroa.speculated = phi i8 [ 1, %bb.k ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.r, ptr %8, align 8, !tbaa !19
  %i.cd = load ptr, ptr %.sroa.0144.0262, align 8, !tbaa !20 ; 2 uses
  %i.ce = load i64, ptr %i.ca, align 8, !tbaa !21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i64 %i.ce, ptr %i.f, align 8, !tbaa !22
  %i.cf = icmp ugt i64 %i.ce, 15
  br i1 %i.cf, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.m
  %i.cg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc unwind label %bb.ao    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.cg, ptr %8, align 8, !tbaa !20
  %i.ch = load i64, ptr %i.f, align 8, !tbaa !22
  store i64 %i.ch, ptr %i.r, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.m
  %i.ci = phi ptr [ %i.cg, %.noexc ], [ %i.r, %bb.m ] ; 2 uses
  switch i64 %i.ce, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.cj = load i8, ptr %i.cd, align 1, !tbaa !23
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !23
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.cd, i64 %i.ce, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i
  %i.ck = load i64, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  store i64 %i.ck, ptr %i.s, align 8, !tbaa !21
  %i.cl = load ptr, ptr %8, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 0, ptr %i.cm, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.cn = load i8, ptr %.sroa.0140.0260, align 1, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.t, ptr %3, align 8, !tbaa !19
  %i.co = load ptr, ptr %8, align 8, !tbaa !20    ; 3 uses
  %i.cp = icmp eq ptr %i.co, %i.r
  br i1 %i.cp, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.cq = load i64, ptr %i.s, align 8, !tbaa !21  ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cr)
  %i.cs = add nuw nsw i64 %i.cq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.cs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  store ptr %i.co, ptr %3, align 8, !tbaa !20
  %i.ct = load i64, ptr %i.r, align 8, !tbaa !23
  store i64 %i.ct, ptr %i.t, align 8, !tbaa !23
  %.pre.i = load i64, ptr %i.s, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %i.cu = phi ptr [ %i.t, %bb.q ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.cv = phi i64 [ %i.cq, %bb.q ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 5 uses
  store i64 %i.cv, ptr %i.u, align 8, !tbaa !21
  store ptr %i.r, ptr %8, align 8, !tbaa !20
  store i64 0, ptr %i.s, align 8, !tbaa !21
  store i8 0, ptr %i.r, align 8, !tbaa !23
  store i8 0, ptr %7, align 8, !tbaa !10
  store ptr %i.w, ptr %i.v, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i64 %i.cv, ptr %i.e, align 8, !tbaa !22
  %i.cw = icmp ugt i64 %i.cv, 15
  br i1 %i.cw, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.cx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i52 unwind label %bb.u ; 2 uses

.noexc.i52:                                       ; preds = %.noexc.i.i.i
  store ptr %i.cx, ptr %i.v, align 8, !tbaa !20
  %i.cy = load i64, ptr %i.e, align 8, !tbaa !22
  store i64 %i.cy, ptr %i.w, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.cz = phi ptr [ %i.cx, %.noexc.i52 ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ] ; 2 uses
  switch i64 %i.cv, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i
  %i.da = load i8, ptr %i.cu, align 1, !tbaa !23
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !23
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cu, i64 %i.cv, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i.i
  %i.db = load i64, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  store i64 %i.db, ptr %i.x, align 8, !tbaa !21
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  store i8 0, ptr %i.dd, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.de = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.t
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.de) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.u:                                             ; preds = %.noexc.i.i.i
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.t
  br i1 %i.di, label %.body, label %.body.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dj = insertelement <8 x i8> %i.bw, i8 %i.cn, i64 5
  store <8 x i8> %i.dj, ptr %i.y, align 8, !tbaa !23
  store i8 0, ptr %i.z, align 8, !tbaa !32
  store i8 %.037.idx258.sroa.phi.sroa.speculated, ptr %i.aa, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN6duckdb20CSVStateMachineCache6InsertERKNS_22CSVStateMachineOptionsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(50) %7)
          to label %bb.v unwind label %bb.ap

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.dk = load ptr, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.w
  br i1 %i.dl, label %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.dk) #23
  br label %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit

_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit:      ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dm = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.r
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.dm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb22CSVStateMachineOptionsD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.ab, ptr %10, align 8, !tbaa !19
  %i.do = load ptr, ptr %.sroa.0144.0262, align 8, !tbaa !20 ; 2 uses
  %i.dp = load i64, ptr %i.ca, align 8, !tbaa !21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 %i.dp, ptr %i.d, align 8, !tbaa !22
  %i.dq = icmp ugt i64 %i.dp, 15
  br i1 %i.dq, label %.noexc.i55, label %._crit_edge.i.i54

.noexc.i55:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc56 unwind label %bb.aq  ; 2 uses

.noexc56:                                         ; preds = %.noexc.i55
  store ptr %i.dr, ptr %10, align 8, !tbaa !20
  %i.ds = load i64, ptr %i.d, align 8, !tbaa !22
  store i64 %i.ds, ptr %i.ab, align 8, !tbaa !23
  br label %._crit_edge.i.i54

._crit_edge.i.i54:                                ; preds = %.noexc56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dt = phi ptr [ %i.dr, %.noexc56 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.dp, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i54
  %i.du = load i8, ptr %i.do, align 1, !tbaa !23
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !23
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i54
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dt, ptr align 1 %i.do, i64 %i.dp, i1 false)
  br label %bb.y

end_hunk_1
begin_hunk_2_@_ZN6duckdb11ObjectCache11GetOrCreateINS_20CSVStateMachineCacheEJEEENS_10shared_ptrIT_Lb1EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT0_:bb.a
          to label %_ZN6duckdb9make_uniqINS_25TempBufferPoolReservationEJNS_9MemoryTagERNS_10BufferPoolEmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.cq, !noalias !191

bb.cq:                                            ; preds = %.noexc.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb21BufferPoolReservationD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ih) #22, !noalias !191
  br label %.body.i

bb.cr:                                            ; preds = %.noexc88
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.cr, %bb.cq
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ij, %bb.cr ], [ %i.ii, %bb.cq ]
  call void @_ZdlPv(ptr noundef nonnull %i.ih) #23, !noalias !191
  br label %.body89

_ZN6duckdb9make_uniqINS_25TempBufferPoolReservationEJNS_9MemoryTagERNS_10BufferPoolEmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc.i
  %i.ik = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.ik, ptr %9, align 8, !tbaa !19
  %i.il = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.in, ptr %i.a, align 8, !tbaa !22
  %i.io = icmp ugt i64 %i.in, 15
  br i1 %i.io, label %.noexc.i91, label %._crit_edge.i.i

.noexc.i91:                                       ; preds = %_ZN6duckdb9make_uniqINS_25TempBufferPoolReservationEJNS_9MemoryTagERNS_10BufferPoolEmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ip = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc92 unwind label %_ZNKSt14default_deleteIN6duckdb25TempBufferPoolReservationEEclEPS1_.exit.i113 ; 2 uses

.noexc92:                                         ; preds = %.noexc.i91
  store ptr %i.ip, ptr %9, align 8, !tbaa !20
  %i.iq = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.iq, ptr %i.ik, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc92, %_ZN6duckdb9make_uniqINS_25TempBufferPoolReservationEJNS_9MemoryTagERNS_10BufferPoolEmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ir = phi ptr [ %i.ip, %.noexc92 ], [ %i.ik, %_ZN6duckdb9make_uniqINS_25TempBufferPoolReservationEJNS_9MemoryTagERNS_10BufferPoolEmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit ] ; 2 uses
  switch i64 %i.in, label %bb.ct [
    i64 1, label %bb.cs
    i64 0, label %bb.cu
  ]

bb.cs:                                            ; preds = %._crit_edge.i.i
  %i.is = load i8, ptr %i.il, align 1, !tbaa !23
  store i8 %i.is, ptr %i.ir, align 1, !tbaa !23
  br label %bb.cu

bb.ct:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ir, ptr align 1 %i.il, i64 %i.in, i1 false)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %._crit_edge.i.i
  %i.it = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !21
  %i.iv = load ptr, ptr %9, align 8, !tbaa !20
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.it
  store i8 0, ptr %i.iw, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ix = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.iy = load ptr, ptr %i.gg, align 8, !tbaa !126 ; 2 uses
  %i.iz = load <2 x ptr>, ptr %0, align 8, !tbaa !175
  store <2 x ptr> %i.iz, ptr %10, align 16, !tbaa !175
  %.not.i.i.i.i93 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i93, label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EEC2INS_20CSVStateMachineCacheETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 3 uses
  %i.jb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i94 = icmp eq i8 %i.jb, 0
  br i1 %.not.i.i.i.i.i94, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !3
  %i.jd = add nsw i32 %i.jc, 1
  store i32 %i.jd, ptr %i.ja, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EEC2INS_20CSVStateMachineCacheETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit

bb.cx:                                            ; preds = %bb.cv
  %i.je = atomicrmw volatile add ptr %i.ja, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EEC2INS_20CSVStateMachineCacheETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit

_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EEC2INS_20CSVStateMachineCacheETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit: ; preds = %bb.cu, %bb.cw, %bb.cx
  %i.jf = ptrtoint ptr %i.ih to i64
  store i64 %i.jf, ptr %11, align 8, !tbaa !194
  invoke void @_ZN6duckdb14SharedLruCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16ObjectCacheEntryENS_17BufferPoolPayloadESt4hashIS6_ESt8equal_toIS6_EE3PutIJNS_10unique_ptrINS_25TempBufferPoolReservationESt14default_deleteISG_ELb1EEEEEEvS6_NS_10shared_ptrIS7_Lb1EEEDpT_(ptr noundef nonnull align 8 dereferenceable(96) %i.cg, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11)
          to label %bb.cy unwind label %bb.dg

bb.cy:                                            ; preds = %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EEC2INS_20CSVStateMachineCacheETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit
  %i.jg = load ptr, ptr %11, align 8, !tbaa !194  ; 3 uses
  %.not.i = icmp eq ptr %i.jg, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb25TempBufferPoolReservationESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb25TempBufferPoolReservationEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb25TempBufferPoolReservationEEclEPS1_.exit.i: ; preds = %bb.cy
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !72
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(32) %i.jg) #22, !inline_history !196
  br label %_ZNSt10unique_ptrIN6duckdb25TempBufferPoolReservationESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25TempBufferPoolReservationESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cy, %_ZNKSt14default_deleteIN6duckdb25TempBufferPoolReservationEEclEPS1_.exit.i
  %i.jk = load ptr, ptr %i.ix, align 8, !tbaa !126 ; 8 uses
  %.not.i.i.i95 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i95, label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit99, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb25TempBufferPoolReservationESt14default_deleteIS1_EED2Ev.exit
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 4 uses
  %i.jm = load atomic i64, ptr %i.jl acquire, align 8 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 4294967297
  %i.jo = trunc i64 %i.jm to i32                  ; 2 uses
  br i1 %i.jn, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  store i32 0, ptr %i.jl, align 8, !tbaa !129
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  store i32 0, ptr %i.jp, align 4, !tbaa !131
  %i.jq = load ptr, ptr %i.jk, align 8, !tbaa !72
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #22, !inline_history !150
  %i.jt = load ptr, ptr %i.jk, align 8, !tbaa !72
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #22, !inline_history !150
  br label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit99

bb.db:                                            ; preds = %bb.cz
  %i.jw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i96 = icmp eq i8 %i.jw, 0
  br i1 %.not.i.i.i.i96, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.jx = add nsw i32 %i.jo, -1
  store i32 %i.jx, ptr %i.jl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i97

bb.dd:                                            ; preds = %bb.db
  %i.jy = atomicrmw volatile add ptr %i.jl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i97

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i97: ; preds = %bb.dd, %bb.dc
  %.0.i.i.i.i.i98 = phi i32 [ %i.jo, %bb.dc ], [ %i.jy, %bb.dd ]
  %i.jz = icmp eq i32 %.0.i.i.i.i.i98, 1
  br i1 %i.jz, label %bb.de, label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit99, !prof !133

bb.de:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i97
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #22
  br label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit99

_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit99: ; preds = %_ZNSt10unique_ptrIN6duckdb25TempBufferPoolReservationESt14default_deleteIS1_EED2Ev.exit, %bb.da, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i97, %bb.de
  %i.ka = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.ik
  br i1 %i.kb, label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EEaSINS_20CSVStateMachineCacheETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS0_IS6_Lb1EEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit99
  call void @_ZdlPv(ptr noundef %i.ka) #23
  br label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EEaSINS_20CSVStateMachineCacheETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS0_IS6_Lb1EEE.exit

bb.df:                                            ; preds = %bb.cp, %bb.co
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.body89

bb.dg:                                            ; preds = %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EEC2INS_20CSVStateMachineCacheETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ke = load ptr, ptr %11, align 8, !tbaa !194  ; 3 uses
  %.not.i106 = icmp eq ptr %i.ke, null
  br i1 %.not.i106, label %_ZNSt10unique_ptrIN6duckdb25TempBufferPoolReservationESt14default_deleteIS1_EED2Ev.exit108, label %_ZNKSt14default_deleteIN6duckdb25TempBufferPoolReservationEEclEPS1_.exit.i107

_ZNKSt14default_deleteIN6duckdb25TempBufferPoolReservationEEclEPS1_.exit.i107: ; preds = %bb.dg
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !72
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(32) %i.ke) #22, !inline_history !196
  br label %_ZNSt10unique_ptrIN6duckdb25TempBufferPoolReservationESt14default_deleteIS1_EED2Ev.exit108

_ZNSt10unique_ptrIN6duckdb25TempBufferPoolReservationESt14default_deleteIS1_EED2Ev.exit108: ; preds = %bb.dg, %_ZNKSt14default_deleteIN6duckdb25TempBufferPoolReservationEEclEPS1_.exit.i107
  call void @_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #22
  %i.ki = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.ik
  br i1 %i.kj, label %.body89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt10unique_ptrIN6duckdb25TempBufferPoolReservationESt14default_deleteIS1_EED2Ev.exit108
  call void @_ZdlPv(ptr noundef %i.ki) #23
  br label %.body89

_ZNKSt14default_deleteIN6duckdb25TempBufferPoolReservationEEclEPS1_.exit.i113: ; preds = %.noexc.i91
  %i.kk = landingpad { ptr, i32 }
          cleanup
  %i.kl = load ptr, ptr %i.ih, align 8, !tbaa !72
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(32) %i.ih) #22, !inline_history !196
  br label %.body89

_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EEaSINS_20CSVStateMachineCacheETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS0_IS6_Lb1EEE.exit: ; preds = %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ch, %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EEC2INS_20CSVStateMachineCacheETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit77

.body89:                                          ; preds = %_ZNSt10unique_ptrIN6duckdb25TempBufferPoolReservationESt14default_deleteIS1_EED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %.body.i, %bb.df, %_ZNKSt14default_deleteIN6duckdb25TempBufferPoolReservationEEclEPS1_.exit.i113, %bb.cn, %bb.cm
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ic, %bb.cm ], [ %i.id, %bb.cn ], [ %eh.lpad-body.i, %.body.i ], [ %i.kc, %bb.df ], [ %i.kk, %_ZNKSt14default_deleteIN6duckdb25TempBufferPoolReservationEEclEPS1_.exit.i113 ], [ %i.kd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %i.kd, %_ZNSt10unique_ptrIN6duckdb25TempBufferPoolReservationESt14default_deleteIS1_EED2Ev.exit108 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6duckdb10shared_ptrINS_20CSVStateMachineCacheELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  br label %.body

_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit77: ; preds = %_ZN6duckdb15shared_ptr_castINS_16ObjectCacheEntryENS_20CSVStateMachineCacheEEENS_10shared_ptrIT0_Lb1EEENS3_IT_Lb1EEE.exit72, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i75, %bb.bm, %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EEaSINS_20CSVStateMachineCacheETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS0_IS6_Lb1EEE.exit, %bb.as
  %i.ko = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !126 ; 8 uses
  %.not.i.i.i115 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i115, label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit119, label %bb.dh

bb.dh:                                            ; preds = %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit77
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 4 uses
  %i.kr = load atomic i64, ptr %i.kq acquire, align 8 ; 2 uses
  %i.ks = icmp eq i64 %i.kr, 4294967297
  %i.kt = trunc i64 %i.kr to i32                  ; 2 uses
  br i1 %i.ks, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.kq, align 8, !tbaa !129
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  store i32 0, ptr %i.ku, align 4, !tbaa !131
  %i.kv = load ptr, ptr %i.kp, align 8, !tbaa !72
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(16) %i.kp) #22, !inline_history !150
  %i.ky = load ptr, ptr %i.kp, align 8, !tbaa !72
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(16) %i.kp) #22, !inline_history !150
  br label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit119

bb.dj:                                            ; preds = %bb.dh
  %i.lb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i116 = icmp eq i8 %i.lb, 0
  br i1 %.not.i.i.i.i116, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lc = add nsw i32 %i.kt, -1
  store i32 %i.lc, ptr %i.kq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117

bb.dl:                                            ; preds = %bb.dj
  %i.ld = atomicrmw volatile add ptr %i.kq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i.i118 = phi i32 [ %i.kt, %bb.dk ], [ %i.ld, %bb.dl ]
  %i.le = icmp eq i32 %.0.i.i.i.i.i118, 1
  br i1 %i.le, label %bb.dm, label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit119, !prof !133

bb.dm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kp) #22
  br label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit119

_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit119: ; preds = %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit77, %bb.di, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit

.body:                                            ; preds = %bb.aw, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb20CSVStateMachineCacheESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i, %.body89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %.pn27 = phi { ptr, i32 } [ %i.gf, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb20CSVStateMachineCacheESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i.i ], [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %.pn.pn.pn.pn, %.body89 ], [ %i.eg, %bb.aw ]
  call void @_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #22
  br label %bb.dn

bb.dn:                                            ; preds = %.body, %bb.at
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %.body ], [ %i.ea, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.do

_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit: ; preds = %_ZN6duckdb15shared_ptr_castINS_16ObjectCacheEntryENS_20CSVStateMachineCacheEEENS_10shared_ptrIT0_Lb1EEENS3_IT_Lb1EEE.exit, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44, %bb.ab, %bb.i, %_ZN6duckdb10shared_ptrINS_16ObjectCacheEntryELb1EED2Ev.exit119
  %i.lf = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #22 ; 0 uses
  ret void

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.dn, %bb.j
  %.pn32.pn = phi { ptr, i32 } [ %i.af, %bb.j ], [ %.pn27.pn, %bb.dn ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  %i.lg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #22 ; 0 uses
  resume { ptr, i32 } %.pn32.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10shared_ptrINS_20CSVStateMachineCacheELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !146    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_20CSVStateMachineCacheELb1EE13AssertNotNullEb.exit, !prof !133

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_20CSVStateMachineCacheELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_20CSVStateMachineCacheELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb20CSVStateMachineCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !129
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !131
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !197
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !197
  br label %_ZNSt12__shared_ptrIN6duckdb20CSVStateMachineCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb20CSVStateMachineCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !133

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
end_hunk_2
begin_hunk_3_@_ZN6duckdb20CSVStateMachineCacheD2Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb22CSVStateMachineOptionsESt4pairIKS1_NS0_12StateMachineEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_25HashCSVStateMachineConfigENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb22CSVStateMachineOptionsENS3_12StateMachineEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb22CSVStateMachineOptionsENS3_12StateMachineEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !121 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb22CSVStateMachineOptionsENS3_12StateMachineEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.f) #23
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb22CSVStateMachineOptionsENS3_12StateMachineEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb22CSVStateMachineOptionsENS3_12StateMachineEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #23
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb22CSVStateMachineOptionsESt4pairIKS1_NS0_12StateMachineEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_25HashCSVStateMachineConfigENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !122

_ZNSt10_HashtableIN6duckdb22CSVStateMachineOptionsESt4pairIKS1_NS0_12StateMachineEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_25HashCSVStateMachineConfigENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb22CSVStateMachineOptionsENS3_12StateMachineEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !107
  %i.l = shl i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt13unordered_mapIN6duckdb22CSVStateMachineOptionsENS0_12StateMachineENS0_25HashCSVStateMachineConfigESt8equal_toIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN6duckdb22CSVStateMachineOptionsESt4pairIKS1_NS0_12StateMachineEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_25HashCSVStateMachineConfigENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.m) #23
  br label %_ZNSt13unordered_mapIN6duckdb22CSVStateMachineOptionsENS0_12StateMachineENS0_25HashCSVStateMachineConfigESt8equal_toIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit

_ZNSt13unordered_mapIN6duckdb22CSVStateMachineOptionsENS0_12StateMachineENS0_25HashCSVStateMachineConfigESt8equal_toIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb22CSVStateMachineOptionsESt4pairIKS1_NS0_12StateMachineEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_25HashCSVStateMachineConfigENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb20CSVStateMachineCacheD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb20CSVStateMachineCacheE, i64 16), ptr %0, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb22CSVStateMachineOptionsESt4pairIKS1_NS0_12StateMachineEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_25HashCSVStateMachineConfigENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb22CSVStateMachineOptionsENS3_12StateMachineEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb22CSVStateMachineOptionsENS3_12StateMachineEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.d = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !121 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb22CSVStateMachineOptionsENS3_12StateMachineEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.f) #23, !inline_history !198
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb22CSVStateMachineOptionsENS3_12StateMachineEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb22CSVStateMachineOptionsENS3_12StateMachineEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #23, !inline_history !198
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb22CSVStateMachineOptionsESt4pairIKS1_NS0_12StateMachineEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_25HashCSVStateMachineConfigENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !122

_ZNSt10_HashtableIN6duckdb22CSVStateMachineOptionsESt4pairIKS1_NS0_12StateMachineEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_25HashCSVStateMachineConfigENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb22CSVStateMachineOptionsENS3_12StateMachineEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !107
  %i.l = shl i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN6duckdb20CSVStateMachineCacheD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN6duckdb22CSVStateMachineOptionsESt4pairIKS1_NS0_12StateMachineEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_25HashCSVStateMachineConfigENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.m) #23, !inline_history !198
  br label %_ZN6duckdb20CSVStateMachineCacheD2Ev.exit

_ZN6duckdb20CSVStateMachineCacheD2Ev.exit:        ; preds = %_ZNSt10_HashtableIN6duckdb22CSVStateMachineOptionsESt4pairIKS1_NS0_12StateMachineEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_25HashCSVStateMachineConfigENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20CSVStateMachineCache13GetObjectTypeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !19, !alias.scope !199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !199
  store i64 23, ptr %i.a, align 8, !tbaa !22, !noalias !199
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !20, !alias.scope !199
  %i.d = load i64, ptr %i.a, align 8, !tbaa !22, !noalias !199 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !23, !alias.scope !199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.3, i64 23, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !21, !alias.scope !199
  %i.f = load ptr, ptr %0, align 8, !tbaa !20, !alias.scope !199
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !199
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK6duckdb20CSVStateMachineCache23GetEstimatedCacheMemoryEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 -1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEEC2ESt16initializer_listIS9_ERKS6_RKSA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<duckdb::LogicalTypeId, std::pair<const duckdb::LogicalTypeId, duckdb::CSVOption<duckdb::StrpTimeFormat>>, std::_Select1st<std::pair<const duckdb::LogicalTypeId, duckdb::CSVOption<duckdb::StrpTimeFormat>>>, std::less<duckdb::LogicalTypeId>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !85
  %.idx = mul nuw nsw i64 %2, 136
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %0, ptr %5, align 8, !tbaa !86
  %.not6.i = icmp eq i64 %2, 0
  br i1 %.not6.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i
  %.07.i = phi ptr [ %i.x, %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 5 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !85
  %.not.i7 = icmp eq i64 %i.g, 0
  br i1 %.not.i7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !90   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i8, ptr %i.i, align 1, !tbaa !202
  %i.k = load i8, ptr %.07.i, align 1, !tbaa !202
  %i.l = icmp ult i8 %i.j, %i.k
  br i1 %i.l, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !90 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.m = load i8, ptr %.07.i, align 1, !tbaa !202 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.o = load i8, ptr %i.n, align 1, !tbaa !202   ; 2 uses
  %i.p = icmp ult i8 %i.m, %i.o                   ; 2 uses
  %.in.v.i.i = select i1 %i.p, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !90 ; 2 uses
  %.not.i.i8 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i8, label %._crit_edge.i.i, label %bb.d, !llvm.loop !203

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.p, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.r = icmp eq ptr %.019.lcssa29.i.i, %i.q
  br i1 %i.r, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.s = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #27
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81.i = load i8, ptr %.phi.trans.insert80.i, align 1, !tbaa !202
  %.pre82.i = load i8, ptr %.07.i, align 1, !tbaa !202
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.t = phi i8 [ %.pre82.i, %bb.e ], [ %i.m, %._crit_edge.i.i ]
  %i.u = phi i8 [ %.pre81.i, %bb.e ], [ %i.o, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.v = icmp ult i8 %i.u, %i.t
  br i1 %i.v, label %select.unfold, label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.h, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ]
  %i.w = invoke ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE10_M_insert_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSL_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef null, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(136) %.07.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i unwind label %bb.g ; 0 uses

_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i: ; preds = %bb.f, %select.unfold
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 136 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !204

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.g:                                             ; preds = %select.unfold
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #22
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

declare void @_ZN6duckdb14StrpTimeFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13StrTimeFormatC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb13StrTimeFormatE, i64 16), ptr %0, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !19
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.g, ptr %i.a, align 8, !tbaa !22
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !20
  %i.j = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.j, ptr %i.d, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !23
  store i8 %i.l, ptr %i.k, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !21
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !205  ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !79   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i, label %.noexc11, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb16StrTimeSpecifierEE8allocateEmPKv.exit.i.i.i.i.i, !prof !133

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN6duckdb16StrTimeSpecifierEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #26
          to label %.noexc11 unwind label %bb.r

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb16StrTimeSpecifierEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.z, %_ZNSt15__new_allocatorIN6duckdb16StrTimeSpecifierEE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !205
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !206
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !175 ; 3 uses
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !175
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !207

bb.e:                                             ; preds = %.noexc11
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ae, i64 %i.ai, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %.noexc11
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !208
  store i8 %i.al, ptr %i.aa, align 1, !tbaa !208
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.am = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !205
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !76 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !75 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i12 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i.i.i.i12, label %.noexc15, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = icmp ugt i64 %i.au, 9223372036854775776
  br i1 %i.av, label %.noexc.i.i.i13, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !133

.noexc.i.i.i13:                                   ; preds = %bb.i
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc14 unwind label %bb.s

.noexc14:                                         ; preds = %.noexc.i.i.i13
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #26
          to label %.noexc15 unwind label %bb.s

.noexc15:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.h
  %i.ax = phi ptr [ null, %bb.h ], [ %i.aw, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !75
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !210
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !111
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !111
  %i.bd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.bb, ptr %i.bc, ptr noundef %i.ax)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %.noexc15
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPv(ptr noundef nonnull %i.bf) #23
  br label %.body

bb.l:                                             ; preds = %.noexc15
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !76
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !211
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !211
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !212 ; 2 uses
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !74 ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i16 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i.i.i.i16, label %.noexc19, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = icmp ugt i64 %i.bq, 9223372036854775804
  br i1 %i.br, label %.noexc.i.i.i17, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !133

.noexc.i.i.i17:                                   ; preds = %bb.m
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc18 unwind label %bb.t

.noexc18:                                         ; preds = %.noexc.i.i.i17
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #26
          to label %.noexc19 unwind label %bb.t

.noexc19:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.l
  %i.bt = phi ptr [ null, %bb.l ], [ %i.bs, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.bt, ptr %i.bj, align 8, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !212
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !213
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !214 ; 3 uses
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !214
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp sgt i64 %i.cb, 4
  br i1 %i.cc, label %bb.n, label %bb.o, !prof !207

bb.n:                                             ; preds = %.noexc19
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bt, ptr align 4 %i.bx, i64 %i.cb, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %.noexc19
  %i.cd = icmp eq i64 %i.cb, 4
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ce = load i32, ptr %i.bx, align 4, !tbaa !3
  store i32 %i.ce, ptr %i.bt, align 4, !tbaa !3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.cf = getelementptr inbounds i8, ptr %i.bt, i64 %i.cb
  store ptr %i.cf, ptr %i.bu, align 8, !tbaa !212
  ret void

bb.r:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb16StrTimeSpecifierEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit

bb.s:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i13
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i17
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #22
  br label %.body

.body:                                            ; preds = %bb.s, %bb.k, %bb.j, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.t ], [ %i.ch, %bb.s ], [ %i.be, %bb.k ], [ %i.be, %bb.j ] ; 2 uses
  %i.cj = load ptr, ptr %i.q, align 8, !tbaa !79  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.cj) #23
  br label %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit: ; preds = %bb.u, %.body, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.r ], [ %.pn, %.body ], [ %.pn, %bb.u ]
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.d
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ck) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb16StrTimeSpecifierESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 9 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !19
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.e, ptr %i.a, align 8, !tbaa !22
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !20
  %i.h = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.h, ptr %i.b, align 8, !tbaa !23
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !23
  store i8 %i.j, ptr %i.i, align 1, !tbaa !23
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !21
  %i.m = load ptr, ptr %.014, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !215

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #22 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.014
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.w, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %2, %bb.e ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i, align 8, !tbaa !20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  call void @_ZdlPv(ptr noundef %i.t) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %.014
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, %bb.e
  invoke void @__cxa_rethrow() #24
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.x

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #25
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  invoke void @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE10_M_insert_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSL_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp ne ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp eq ptr %2, %i.a
  %or.cond = select i1 %.not, i1 true, i1 %i.b
  br i1 %or.cond, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i8, ptr %3, align 8, !tbaa !69
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i8, ptr %3, align 8, !tbaa !202     ; 2 uses
  %i.e = load i8, ptr %i.c, align 1, !tbaa !202
  %i.f = icmp ult i8 %i.d, %i.e
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.g = phi i8 [ %i.d, %bb.b ], [ %.pre, %._crit_edge ]
  %i.h = phi i1 [ %i.f, %bb.b ], [ true, %._crit_edge ]
  %i.i = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #26 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 %i.g, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !48, !range !17, !noundef !18
  store i8 %i.m, ptr %i.k, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @_ZN6duckdb13StrTimeFormatC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.n, ptr noundef nonnull align 8 dereferenceable(120) %i.o)
          to label %_ZNKSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE11_Alloc_nodeclIRKS7_EEPSt13_Rb_tree_nodeIS7_EOT_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #22 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.s

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #25
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNKSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE11_Alloc_nodeclIRKS7_EEPSt13_Rb_tree_nodeIS7_EOT_.exit: ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14StrpTimeFormatE, i64 16), ptr %i.n, align 8, !tbaa !72
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.h, ptr noundef nonnull %i.i, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !85
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !85
  ret ptr %i.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

end_hunk_3
