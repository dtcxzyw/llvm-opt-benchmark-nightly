inline.NumInlined: 633
inline.NumDeleted: 377
begin_hunk_0_@_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS0_12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS1_IFNS_6StatusEvEEEEUlvE_E6invokeEv:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 56) #25
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i.i, %bb.e
  %i.ag = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.x

bb.m:                                             ; preds = %bb.z, %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.n:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.ab

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !93, !noalias !181
  %i.al = inttoptr i64 %i.ak to ptr               ; 6 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !93, !noalias !181
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15, !noalias !181
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !181
  invoke void %i.ao(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.p unwind label %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplESt14default_deleteIS6_EED2Ev.exit4.i.i

_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplESt14default_deleteIS6_EED2Ev.exit4.i.i: ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #22, !inline_history !184
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ab

bb.p:                                             ; preds = %bb.o
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #22, !inline_history !184
  %i.aw = load ptr, ptr %2, align 8, !tbaa !17    ; 5 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit16.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13 ; 8 uses
  %.not.i.i.i.i.i6.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i6.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i10.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ba, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !36
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #22, !inline_history !180
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #22, !inline_history !180
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i10.i

bb.t:                                             ; preds = %bb.r
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i7.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i7.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i8.i

bb.v:                                             ; preds = %bb.t
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i8.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i8.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i9.i = phi i32 [ %i.bd, %bb.u ], [ %i.bn, %bb.v ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i9.i, 1
  br i1 %i.bo, label %bb.w, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i10.i, !prof !44

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i8.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #22
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i10.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i10.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i8.i, %bb.s, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !83 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZN5arrow6Status5StateD2Ev.exit.i.i12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i11.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i10.i
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !14
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #25
  br label %_ZN5arrow6Status5StateD2Ev.exit.i.i12.i

_ZN5arrow6Status5StateD2Ev.exit.i.i12.i:          ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i11.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 56) #25
  br label %_ZN5arrow6StatusD2Ev.exit16.i

_ZN5arrow6StatusD2Ev.exit16.i:                    ; preds = %_ZN5arrow6Status5StateD2Ev.exit.i.i12.i, %bb.p
  %i.bv = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  store ptr %i.bv, ptr %2, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.x

bb.x:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16.i, %_ZN5arrow6StatusD2Ev.exit.i
  %i.bw = phi ptr [ %i.bv, %_ZN5arrow6StatusD2Ev.exit16.i ], [ %i.ag, %_ZN5arrow6StatusD2Ev.exit.i ]
  %.val4.i = load ptr, ptr %i.b, align 8, !tbaa !154 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN5arrow6StatusD2Ev.exit18.i, label %bb.y, !prof !87

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %.val4.i, i64 56 ; 2 uses
  %i.bz = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.by) #22 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bz) #23
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.z
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i:      ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %.val4.i, i64 52
  store atomic i8 0, ptr %i.ca release, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.val4.i, i64 144 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !17
  %i.cd = icmp ne ptr %i.cc, null
  %i.ce = load ptr, ptr %2, align 8               ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  %or.cond.i.i.i = select i1 %i.cd, i1 true, i1 %i.cf
  br i1 %or.cond.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup12UpdateStatusEONS_6StatusE.exit.i, label %_ZN5arrow6Status8MoveFromERS0_.exit.i.i.i

_ZN5arrow6Status8MoveFromERS0_.exit.i.i.i:        ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !17
  store ptr null, ptr %2, align 8, !tbaa !17
  br label %_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup12UpdateStatusEONS_6StatusE.exit.i

_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup12UpdateStatusEONS_6StatusE.exit.i: ; preds = %_ZN5arrow6Status8MoveFromERS0_.exit.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  %i.cg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.by) #22 ; 0 uses
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !17
  %i.ch = icmp eq ptr %.pre.i, null
  br i1 %i.ch, label %_ZN5arrow6StatusD2Ev.exit18.i, label %bb.aa, !prof !138

bb.aa:                                            ; preds = %_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup12UpdateStatusEONS_6StatusE.exit.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN5arrow6StatusD2Ev.exit18.i

_ZN5arrow6StatusD2Ev.exit18.i:                    ; preds = %bb.aa, %_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup12UpdateStatusEONS_6StatusE.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplESt14default_deleteIS6_EED2Ev.exit4.i.i, %bb.n, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %i.ai, %bb.n ], [ %i.ap, %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFNS0_6StatusEvEE4ImplESt14default_deleteIS6_EED2Ev.exit4.i.i ]
  %i.ci = load ptr, ptr %2, align 8, !tbaa !17
  %.not.i19.i = icmp eq ptr %i.ci, null
  br i1 %.not.i19.i, label %_ZN5arrow6StatusD2Ev.exit20.i, label %bb.ac, !prof !87

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN5arrow6StatusD2Ev.exit20.i

common.resume.i:                                  ; preds = %bb.at, %bb.as, %bb.ao, %_ZN5arrow6StatusD2Ev.exit20.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i, %_ZN5arrow6StatusD2Ev.exit20.i ], [ %i.ee, %bb.ao ], [ %i.eh, %bb.at ], [ %i.eh, %bb.as ]
  resume { ptr, i32 } %common.resume.op.i

_ZN5arrow6StatusD2Ev.exit20.i:                    ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume.i

bb.ad:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit18.i, %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !154 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.ck = atomicrmw sub ptr %i.cj, i32 1 release, align 4
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %bb.ae, label %_ZZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEEENUlvE_clEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i, i64 56 ; 4 uses
  %i.cn = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.cm) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt20__throw_system_errori(i32 noundef %i.cn) #23
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i:     ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i, i64 96
  call void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48) %i.co) #22
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i, i64 152 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i, i64 168
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !64, !range !70, !noundef !71
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.ag, label %_ZN5arrow6StatusD2Ev.exit.i.i

bb.ag:                                            ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !106
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load atomic i8, ptr %i.cu seq_cst, align 1
  %.not.i21.i = icmp eq i8 %i.cv, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i, i64 144
  br i1 %.not.i21.i, label %bb.ah, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit16.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i, i64 53 ; 2 uses
  %i.cy = load atomic i8, ptr %i.cx seq_cst, align 1, !range !70, !noundef !71
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNSt11unique_lockISt5mutexE6unlockEv.exit16.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store atomic i8 1, ptr %i.cx seq_cst, align 1
  %i.da = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cm) #22 ; 0 uses
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !17 ; 6 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.ap, label %.noexc10.i.i

.noexc10.i.i:                                     ; preds = %bb.ai
  %i.dd = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 9 uses
  %i.de = load i8, ptr %i.db, align 8, !tbaa !72
  store i8 %i.de, ptr %i.dd, align 8, !tbaa !72
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 3 uses
  store ptr %i.dh, ptr %i.df, align 8, !tbaa !82
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !83 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !84 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.dk, ptr %i.a, align 8, !tbaa !85
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %.noexc10.i.i
  %i.dm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i unwind label %bb.ao ; 2 uses

.noexc.i.i.i:                                     ; preds = %.noexc.i.i.i.i.i
  store ptr %i.dm, ptr %i.df, align 8, !tbaa !83
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !85
  store i64 %i.dn, ptr %i.dh, align 8, !tbaa !14
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i, %.noexc10.i.i
  %i.do = phi ptr [ %i.dm, %.noexc.i.i.i ], [ %i.dh, %.noexc10.i.i ] ; 2 uses
  switch i64 %i.dk, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dp = load i8, ptr %i.di, align 1, !tbaa !14
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.di, i64 %i.dk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i: ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i.i.i.i
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !85  ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !84
  %i.ds = load ptr, ptr %i.df, align 8, !tbaa !83
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dq
  store i8 0, ptr %i.dt, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.du = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !13 ; 2 uses
  %i.dy = load <2 x ptr>, ptr %i.dv, align 8, !tbaa !86
  store <2 x ptr> %i.dy, ptr %i.du, align 8, !tbaa !86
  %.not.i.i.i.i.i.i22.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i.i22.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 3 uses
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !3
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.ed = atomicrmw volatile add ptr %i.dz, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %.noexc.i.i.i.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 56) #25
  br label %common.resume.i

bb.ap:                                            ; preds = %bb.an, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i, %bb.ai
  %i.ef = phi ptr [ null, %bb.ai ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i ], [ %i.dd, %bb.am ], [ %i.dd, %bb.an ]
  store ptr %i.ef, ptr %1, align 8, !tbaa !17
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull %1)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.eg = load ptr, ptr %1, align 8, !tbaa !17
  %.not.i11.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i11.i.i, label %_ZZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEEENUlvE_clEv.exit, label %bb.ar, !prof !87

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEEENUlvE_clEv.exit

bb.as:                                            ; preds = %bb.ap
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %1, align 8, !tbaa !17
  %.not.i12.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i12.i.i, label %common.resume.i, label %bb.at, !prof !87

bb.at:                                            ; preds = %bb.as
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %common.resume.i

_ZNSt11unique_lockISt5mutexE6unlockEv.exit16.i.i: ; preds = %bb.ah, %bb.ag
  %5 = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cm) #22 ; 0 uses
  br label %_ZZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEEENUlvE_clEv.exit

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i
  %i.ej = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cm) #22 ; 0 uses
  br label %_ZZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEEENUlvE_clEv.exit

_ZZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEEENUlvE_clEv.exit: ; preds = %bb.ad, %bb.aq, %bb.ar, %_ZNSt11unique_lockISt5mutexE6unlockEv.exit16.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Result", align 8     ; 7 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !17
  store ptr null, ptr %1, align 8, !tbaa !17
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !87

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !17, !alias.scope !185
  br label %_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_8internal5EmptyEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  br label %_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit

_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE14DoMarkFinishedENS_6ResultIS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit
  %i.c = load ptr, ptr %2, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, label %bb.e, !prof !87

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %2)
  br label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit:   ; preds = %bb.d, %bb.e
  %i.d = load ptr, ptr %3, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f, !prof !87

bb.f:                                             ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, %bb.f
  ret void

bb.g:                                             ; preds = %_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %2, align 8, !tbaa !17
  %.not.i.i2 = icmp eq ptr %i.f, null
  br i1 %.not.i.i2, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit3, label %bb.h, !prof !87

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %2)
  br label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit3

_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit3:  ; preds = %bb.g, %bb.h
  %i.g = load ptr, ptr %3, align 8, !tbaa !17
  %.not.i4 = icmp eq ptr %i.g, null
  br i1 %.not.i4, label %_ZN5arrow6StatusD2Ev.exit5, label %bb.i, !prof !87

bb.i:                                             ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit3
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN5arrow6StatusD2Ev.exit5

_ZN5arrow6StatusD2Ev.exit5:                       ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit3, %bb.i
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6FutureINS_8internal5EmptyEE14DoMarkFinishedENS_6ResultIS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Result", align 8     ; 8 uses
  store ptr null, ptr %2, align 8, !tbaa !17
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit, label %bb.b, !prof !87

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit: ; preds = %bb.a, %bb.b
  %i.e = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %.noexc unwind label %bb.k     ; 3 uses

.noexc:                                           ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit
  store ptr null, ptr %i.e, align 8, !tbaa !17
  %i.f = load ptr, ptr %2, align 8, !tbaa !17
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit.i, label %bb.d, !prof !87

bb.d:                                             ; preds = %.noexc
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %i.e, ptr noundef nonnull align 8 dereferenceable(9) %2)
          to label %_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit.i: ; preds = %bb.d, %.noexc
  %i.j = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86   ; 2 uses
  store ptr %i.e, ptr %i.l, align 8, !tbaa !86
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit.i
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !86
  invoke void %i.n(ptr noundef nonnull %i.m)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #24
  unreachable

bb.h:                                             ; preds = %bb.f, %_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit.i
  store ptr @_ZZN5arrow6FutureINS_8internal5EmptyEE9SetResultENS_6ResultIS2_EEENUlPvE_8__invokeES6_, ptr %i.k, align 8, !tbaa !86
  %i.q = load ptr, ptr %2, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, label %bb.i, !prof !87

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %2)
  br label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit:   ; preds = %bb.h, %bb.i
  %i.r = load ptr, ptr %0, align 8, !tbaa !106    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.j, label %bb.m, !prof !87

bb.j:                                             ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit
  call void @_ZN5arrow10FutureImpl12MarkFinishedEv(ptr noundef nonnull align 8 dereferenceable(72) %i.r)
  br label %bb.n

bb.k:                                             ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %2, align 8, !tbaa !17
  %.not.i.i2 = icmp eq ptr %i.x, null
  br i1 %.not.i.i2, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit3, label %bb.l, !prof !87

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %2)
  br label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit3

_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit3:  ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %i.w

bb.m:                                             ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit
  call void @_ZN5arrow10FutureImpl10MarkFailedEv(ptr noundef nonnull align 8 dereferenceable(72) %i.r)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  ret void
}

declare void @_ZN5arrow10FutureImpl12MarkFinishedEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #9

declare void @_ZN5arrow10FutureImpl10MarkFailedEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #9

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN5arrow8internal12_GLOBAL__N_115SerialTaskGroupELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt15_Sp_counted_ptrIPN5arrow8internal12_GLOBAL__N_115SerialTaskGroupELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
