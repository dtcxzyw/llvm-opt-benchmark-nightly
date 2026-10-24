Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Waiver?download=true
inline.NumInlined: 483
inline.NumDeleted: 242
begin_hunk_0_@_ZN8V3Waiver8addEntryE11V3ErrorCodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16   ; 2 uses
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit78_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit78_crit_edge: ; preds = %bb.d
  %.pre255 = load ptr, ptr %4, align 8, !tbaa !17
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit78

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %i.r, 0
  %.pre256 = load ptr, ptr %4, align 8, !tbaa !17 ; 3 uses
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit78, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %1, align 8, !tbaa !17
  %bcmp.i77 = call i32 @bcmp(ptr %i.w, ptr %.pre256, i64 %i.r)
  %i.x = icmp eq i32 %bcmp.i77, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit78

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit78: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit78_crit_edge, %bb.e, %bb.f
  %i.y = phi ptr [ %.pre255, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit78_crit_edge ], [ %.pre256, %bb.f ], [ %.pre256, %bb.e ] ; 2 uses
  %i.z = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit78_crit_edge ], [ %i.x, %bb.f ], [ true, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit78
  %i.ac = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.ac)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit78
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ae) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.z, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.af = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !21, !range !22, !noundef !23
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i:    ; preds = %bb.g
  %i.ah = call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN8V3Waiver7s_mutexE) #21
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, label %.preheader.i.i, !prof !24

.preheader.i.i:                                   ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, %bb.h
  %.037.i.i = phi i32 [ %i.al, %bb.h ], [ 0, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i ]
  %i.ai = load i8, ptr @_ZZN13V3MutexConfig1sEvE1s, align 1, !tbaa !21, !range !22, !noundef !23
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i:   ; preds = %.preheader.i.i
  %i.ak = call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN8V3Waiver7s_mutexE) #21
  %.not.i.i4.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i4.i.i, label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit, label %bb.h, !prof !25

bb.h:                                             ; preds = %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !26
  %i.al = add nuw nsw i32 %.037.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.al, 50000
  br i1 %exitcond.not.i.i, label %bb.i, label %.preheader.i.i, !llvm.loop !0

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt5mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(40) @_ZN8V3Waiver7s_mutexE)
  br label %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit

_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit: ; preds = %.preheader.i.i, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit5.i.i, %bb.g, %_ZN10V3MutexImpISt5mutexE8try_lockEv.exit.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.am, ptr %5, align 8, !tbaa !28
  %i.an = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !83
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !17
  %i.as = load i64, ptr %i.b, align 8, !tbaa !83
  store i64 %i.as, ptr %i.am, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit
  %i.at = phi ptr [ %i.ar, %.noexc ], [ %i.am, %_ZN14V3LockGuardImpI10V3MutexImpISt5mutexEEC2ERS2_.exit ] ; 2 uses
  switch i64 %i.ap, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.au = load i8, ptr %i.an, align 1, !tbaa !18
  store i8 %i.au, ptr %i.at, align 1, !tbaa !18
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.an, i64 %i.ap, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.av = load i64, ptr %i.b, align 8, !tbaa !83  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !16
  %i.ax = load ptr, ptr %5, align 8, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1043), align 1, !tbaa !116, !range !22, !noundef !23
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext 10, i64 noundef 0) #21 ; 2 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bb, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.m
  %.not = icmp eq i64 %i.bb, -1
  br i1 %.not, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !16 ; 4 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.am
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.n
  %i.bg = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.bh = load i64, ptr %i.am, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bi = phi i64 [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bj = icmp ugt i64 %i.bd, %i.bi
  br i1 %i.bj, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bc, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc83 unwind label %bb.q

.noexc83:                                         ; preds = %bb.o
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc83
  %i.bk = phi ptr [ %.pre.i.i, %.noexc83 ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  store i8 42, ptr %i.bl, align 1, !tbaa !18
  store i64 %i.bd, ptr %i.aw, align 8, !tbaa !16
  %i.bm = load ptr, ptr %5, align 8, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bd
  store i8 0, ptr %i.bn, align 1, !tbaa !18
  br label %bb.r

bb.p:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.q:                                             ; preds = %bb.x, %bb.o, %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.bq, ptr %6, align 8, !tbaa !28
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 0, ptr %i.br, align 8, !tbaa !16
  store i8 0, ptr %i.bq, align 8, !tbaa !18
  %i.bs = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !18
  %.not58231 = icmp eq i8 %i.bt, 0
  br i1 %.not58231, label %._crit_edge233, label %.critedge

._crit_edge233:                                   ; preds = %._crit_edge, %bb.r
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit.split-lp204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %bb.r, %.critedge.backedge
  %.1 = phi ptr [ %.1.be, %.critedge.backedge ], [ %i.bs, %bb.r ] ; 3 uses
  %i.bu = load i8, ptr %.1, align 1, !tbaa !18    ; 3 uses
  %i.bv = icmp eq i8 %i.bu, 32
  %13 = sext i8 %i.bu to i32
  %isdigittmp = add nsw i32 %13, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %or.cond = select i1 %i.bv, i1 true, i1 %isdigit
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br i1 %or.cond, label %.critedge.backedge, label %bb.s

.critedge.backedge:                               ; preds = %.critedge, %._crit_edge
  %.1.be = phi ptr [ %i.bw, %.critedge ], [ %i.df, %._crit_edge ]
  br label %.critedge, !llvm.loop !72

bb.s:                                             ; preds = %.critedge
  %i.bx = icmp eq i8 %i.bu, 124
  %spec.select.idx = zext i1 %i.bx to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.1, i64 %spec.select.idx
  br label %bb.t

bb.t:                                             ; preds = %.critedge2, %bb.s
  %.3 = phi ptr [ %spec.select, %bb.s ], [ %i.bz, %.critedge2 ] ; 4 uses
  %i.by = load i8, ptr %.3, align 1, !tbaa !18    ; 2 uses
  switch i8 %i.by, label %.preheader.preheader [
    i8 32, label %.critedge2
    i8 94, label %.critedge2
    i8 126, label %.lr.ph
  ]

.critedge2:                                       ; preds = %bb.t, %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %.3, i64 1
  br label %bb.t, !llvm.loop !73

.lr.ph:                                           ; preds = %bb.t, %.lr.ph
  %.4226 = phi ptr [ %i.ca, %.lr.ph ], [ %.3, %bb.t ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.4226, i64 1 ; 3 uses
  %.pr = load i8, ptr %i.ca, align 1, !tbaa !18   ; 2 uses
  %i.cb = icmp eq i8 %.pr, 126
  br i1 %i.cb, label %.lr.ph, label %.preheader.preheader, !llvm.loop !74

.preheader.preheader:                             ; preds = %bb.t, %.lr.ph
  %.ph = phi i8 [ %.pr, %.lr.ph ], [ %i.by, %bb.t ]
  %.5.ph = phi ptr [ %i.ca, %.lr.ph ], [ %.3, %bb.t ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit90
  %i.cc = phi i8 [ %.pre257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit90 ], [ %.ph, %.preheader.preheader ] ; 3 uses
  %.5 = phi ptr [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit90 ], [ %.5.ph, %.preheader.preheader ] ; 3 uses
  switch i8 %i.cc, label %bb.u [
    i8 10, label %.lr.ph228
    i8 0, label %._crit_edge
  ]

bb.u:                                             ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.ce = load i64, ptr %i.br, align 8, !tbaa !16 ; 4 uses
  %i.cf = add i64 %i.ce, 1                        ; 3 uses
  %i.cg = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bq
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i88: ; preds = %bb.u
  %i.ci = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.ci)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %bb.u
  %i.cj = load i64, ptr %i.bq, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i86: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i88
  %i.ck = phi i64 [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i88 ]
  %i.cl = icmp ugt i64 %i.cf, %i.ck
  br i1 %i.cl, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit90

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i86
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ce, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc89 unwind label %.loopexit.split-lp204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc89:                                         ; preds = %bb.v
  %.pre.i.i87 = load ptr, ptr %6, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit90: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i86, %.noexc89
  %i.cm = phi ptr [ %.pre.i.i87, %.noexc89 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i86 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  store i8 %i.cc, ptr %i.cn, align 1, !tbaa !18
  store i64 %i.cf, ptr %i.br, align 8, !tbaa !16
  %i.co = load ptr, ptr %6, align 8, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cf
  store i8 0, ptr %i.cp, align 1, !tbaa !18
  %.pre257 = load i8, ptr %i.cd, align 1, !tbaa !18
  br label %.preheader

.lr.ph228:                                        ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit96
  %.6227 = phi ptr [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit96 ], [ %.5, %.preheader ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.6227, i64 1 ; 3 uses
  %i.cr = load i64, ptr %i.br, align 8, !tbaa !16 ; 4 uses
  %i.cs = add i64 %i.cr, 1                        ; 3 uses
  %i.ct = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bq
  br i1 %i.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i94: ; preds = %.lr.ph228
  %i.cv = icmp ult i64 %i.cr, 16
  call void @llvm.assume(i1 %i.cv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91: ; preds = %.lr.ph228
  %i.cw = load i64, ptr %i.bq, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i94
  %i.cx = phi i64 [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i94 ]
  %i.cy = icmp ugt i64 %i.cs, %i.cx
  br i1 %i.cy, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit96

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.cr, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc95 unwind label %.loopexit.split-lp204.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95:                                         ; preds = %bb.w
  %.pre.i.i93 = load ptr, ptr %6, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit96: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92, %.noexc95
  %i.cz = phi ptr [ %.pre.i.i93, %.noexc95 ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i92 ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cr
  store i8 10, ptr %i.da, align 1, !tbaa !18
  store i64 %i.cs, ptr %i.br, align 8, !tbaa !16
  %i.db = load ptr, ptr %6, align 8, !tbaa !17
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cs
  store i8 0, ptr %i.dc, align 1, !tbaa !18
  %i.dd = load i8, ptr %i.cq, align 1, !tbaa !18  ; 2 uses
  %i.de = icmp eq i8 %i.dd, 10
  br i1 %i.de, label %.lr.ph228, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit96
  %.6.lcssa = phi ptr [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit96 ], [ %.5, %.preheader ]
  %.lcssa223 = phi i8 [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit96 ], [ %i.cc, %.preheader ]
  %.not72 = icmp ne i8 %.lcssa223, 0
  %.idx = zext i1 %.not72 to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 %.idx ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !18
  %.not58 = icmp eq i8 %i.dg, 0
  br i1 %.not58, label %._crit_edge233, label %.critedge.backedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %._crit_edge233
  %i.dh = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bq
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.dj = load i64, ptr %i.bq, align 8, !tbaa !18
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.dl = load i64, ptr %i.aw, align 8, !tbaa !16 ; 4 uses
  %i.dm = add i64 %i.dl, 1                        ; 3 uses
  %i.dn = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.am
  br i1 %i.do, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.dp = icmp ult i64 %i.dl, 16
  call void @llvm.assume(i1 %i.dp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.dq = load i64, ptr %i.am, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103
  %i.dr = phi i64 [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i103 ]
  %i.ds = icmp ugt i64 %i.dm, %i.dr
  br i1 %i.ds, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.dl, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc104 unwind label %bb.q

.noexc104:                                        ; preds = %bb.x
  %.pre.i.i102 = load ptr, ptr %5, align 8, !tbaa !17
  br label %bb.y

bb.y:                                             ; preds = %.noexc104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101
  %i.dt = phi ptr [ %.pre.i.i102, %.noexc104 ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i101 ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dl
  store i8 42, ptr %i.du, align 1, !tbaa !18
  store i64 %i.dm, ptr %i.aw, align 8, !tbaa !16
  %i.dv = load ptr, ptr %5, align 8, !tbaa !17
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dm
  store i8 0, ptr %i.dw, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.dx, ptr %7, align 8, !tbaa !28
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.dy, align 8, !tbaa !16
  store i8 0, ptr %i.dx, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.dz, ptr %8, align 8, !tbaa !28
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 0, ptr %i.ea, align 8, !tbaa !16
end_hunk_0
