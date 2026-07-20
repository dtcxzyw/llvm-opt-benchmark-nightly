inline.NumInlined: 2270
inline.NumDeleted: 1313
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11OpenImageIO4v3_111thread_pool4Impl6resizeEi:bb.a

_ZSt8_DestroyISt10unique_ptrISt6threadSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.v
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrISt6threadSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZSt8_DestroyIPSt10unique_ptrISt6threadSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrISt6threadSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !73
  br label %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE6resizeEm.exit

_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPSt10unique_ptrISt6threadSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80 ; 3 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !81 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 4                 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.t
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE6resizeEm.exit
  %i.aq = sub nuw nsw i64 %i.t, %i.ao
  call void @_ZNSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %i.aq)
  br label %_ZNSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE6resizeEm.exit

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE6resizeEm.exit
  %i.ar = icmp ugt i64 %i.ao, %i.t
  br i1 %i.ar, label %bb.o, label %_ZNSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE6resizeEm.exit

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.t ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.aj, %i.as
  br i1 %.not.i.i38, label %_ZNSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i39

.lr.ph.i.i.i.i39:                                 ; preds = %bb.o, %_ZSt8_DestroyISt10shared_ptrISt6atomicIbEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i40 = phi ptr [ %i.bk, %_ZSt8_DestroyISt10shared_ptrISt6atomicIbEEEvPT_.exit.i.i.i.i ], [ %i.as, %bb.o ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i40, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !82 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrISt6atomicIbEEEvPT_.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i39
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.av, align 8, !tbaa !85
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !87
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !88
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #30, !inline_history !90
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !88
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #30, !inline_history !90
  br label %_ZSt8_DestroyISt10shared_ptrISt6atomicIbEEEvPT_.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i.i.i.i.i.i41 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i41, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ay, %bb.s ], [ %i.bi, %bb.t ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.u, label %_ZSt8_DestroyISt10shared_ptrISt6atomicIbEEEvPT_.exit.i.i.i.i, !prof !92

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #30
  br label %_ZSt8_DestroyISt10shared_ptrISt6atomicIbEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrISt6atomicIbEEEvPT_.exit.i.i.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.q, %.lr.ph.i.i.i.i39
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i40, i64 16 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.bk, %i.aj
  br i1 %.not.i.i.i.i42, label %_ZSt8_DestroyIPSt10shared_ptrISt6atomicIbEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i39, !llvm.loop !93

_ZSt8_DestroyIPSt10shared_ptrISt6atomicIbEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrISt6atomicIbEEEvPT_.exit.i.i.i.i
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !80
  br label %_ZNSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE6resizeEm.exit

_ZNSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE6resizeEm.exit: ; preds = %bb.m, %bb.n, %bb.o, %_ZSt8_DestroyIPSt10shared_ptrISt6atomicIbEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bl = icmp slt i32 %i.s, %.0
  br i1 %i.bl, label %.lr.ph.preheader, label %.loopexit100

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE6resizeEm.exit
  %i.bm = sext i32 %i.s to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv = phi i64 [ %i.bm, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.bn = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !94 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 1, ptr %i.bo, align 8, !tbaa !85, !noalias !94
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 1, ptr %i.bp, align 4, !tbaa !87, !noalias !94
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bn, align 8, !tbaa !88, !noalias !94
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  store i8 0, ptr %i.bq, align 8, !tbaa !97, !noalias !94
  %i.br = load ptr, ptr %i.ah, align 8, !tbaa !81
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv ; 2 uses
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !98
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !82 ; 8 uses
  store ptr %i.bn, ptr %i.bt, align 8, !tbaa !82
  %.not.i.i.i.i43 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i43, label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bv, align 8, !tbaa !85
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !87
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !88
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #30, !inline_history !100
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #30, !inline_history !100
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.by, %bb.y ], [ %i.ci, %bb.z ]
  %i.cj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cj, label %bb.aa, label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #30
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w, %.lr.ph
  %i.ck = trunc nsw i64 %indvars.iv to i32
  call void @_ZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEi(ptr noundef nonnull align 8 dereferenceable(321) %0, i32 noundef %i.ck)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %.0, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit100, label %.lr.ph, !llvm.loop !101

bb.ab:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.cp = zext nneg i32 %i.s to i64
  %i.cq = zext nneg i32 %.0 to i64                ; 9 uses
  br label %bb.ae

bb.ac:                                            ; preds = %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.cs = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.cr) #30 ; 2 uses
  %.not.i.i.i45 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i45, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.cs) #32
          to label %.noexc unwind label %bb.at

.noexc:                                           ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ab, %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit
  %i.ct = phi ptr [ null, %bb.ab ], [ %i.ek, %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit ] ; 11 uses
  %i.cu = phi ptr [ null, %bb.ab ], [ %i.el, %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit ] ; 5 uses
  %i.cv = phi ptr [ null, %bb.ab ], [ %i.em, %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit ] ; 3 uses
  %indvars.iv108 = phi i64 [ %i.cp, %bb.ab ], [ %indvars.iv.next109, %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit ]
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, -1 ; 5 uses
  %i.cw = load ptr, ptr %i.cl, align 8, !tbaa !81
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv.next109
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !102
  store atomic i8 1, ptr %i.cy seq_cst, align 1
  %i.cz = load ptr, ptr %0, align 8, !tbaa !74
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next109 ; 4 uses
  %.not.i.i46 = icmp eq ptr %i.cv, %i.cu
  br i1 %.not.i.i46, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = load i64, ptr %i.da, align 8, !tbaa !75
  store i64 %i.db, ptr %i.cv, align 8, !tbaa !75
  store ptr null, ptr %i.da, align 8, !tbaa !75
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  store ptr %i.dc, ptr %i.cm, align 8, !tbaa !73
  br label %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dd = ptrtoint ptr %i.cu to i64               ; 3 uses
  %i.de = ptrtoint ptr %i.ct to i64               ; 3 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 4 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775800
  br i1 %i.dg, label %bb.ah, label %_ZNKSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
          to label %.noexc82 unwind label %.loopexit.split-lp

.noexc82:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ag
  %i.dh = ashr exact i64 %i.df, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = call i64 @llvm.umin.i64(i64 %i.di, i64 1152921504606846975)
  %i.dl = select i1 %i.dj, i64 1152921504606846975, i64 %i.dk ; 3 uses
  %.not.i.i79 = icmp ne i64 %i.dl, 0
  call void @llvm.assume(i1 %.not.i.i79)
  %i.dm = shl nuw nsw i64 %i.dl, 3
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #28
          to label %.noexc83 unwind label %.loopexit ; 11 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.df
  %i.dp = load i64, ptr %i.da, align 8, !tbaa !75
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !75
  store ptr null, ptr %i.da, align 8, !tbaa !75
  %.not10.i.i.i.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i80.preheader

.lr.ph.i.i.i.i80.preheader:                       ; preds = %.noexc83
  %i.dq = sub i64 %i.dd, %i.de
  %i.dr = add i64 %i.dq, -8                       ; 2 uses
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dr, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i80.preheader174, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i80.preheader
  %scevgep = getelementptr i8, ptr %i.dn, i64 8
  %i.du = add i64 %i.dd, -8
  %i.dv = sub i64 %i.du, %i.de
  %i.dw = and i64 %i.dv, -8                       ; 2 uses
  %scevgep168 = getelementptr i8, ptr %scevgep, i64 %i.dw
  %scevgep169 = getelementptr i8, ptr %i.ct, i64 8
  %scevgep170 = getelementptr i8, ptr %scevgep169, i64 %i.dw
  %bound0 = icmp ult ptr %i.dn, %scevgep170
  %bound1 = icmp ult ptr %i.ct, %scevgep168
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i80.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dt, 4611686018427387900     ; 3 uses
  %i.dx = shl i64 %n.vec, 3                       ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dn, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %i.ct, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dn, i64 %i.ea ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.ct, i64 %i.ea ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.eb = getelementptr i8, ptr %next.gep171, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep171, align 8, !tbaa !75, !alias.scope !109, !noalias !104
  %wide.load172 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !75, !alias.scope !109, !noalias !104
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !112, !noalias !109
  store <2 x i64> %wide.load172, ptr %i.ec, align 8, !tbaa !75, !alias.scope !112, !noalias !109
  %i.ed = getelementptr i8, ptr %next.gep171, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep171, align 8, !tbaa !75, !alias.scope !109, !noalias !104
  store <2 x ptr> splat (ptr null), ptr %i.ed, align 8, !tbaa !75, !alias.scope !109, !noalias !104
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i80.preheader174

.lr.ph.i.i.i.i80.preheader174:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i80.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dn, %vector.memcheck ], [ %i.dn, %.lr.ph.i.i.i.i80.preheader ], [ %i.dy, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph.i.i.i.i80.preheader ], [ %i.dz, %middle.block ]
  br label %.lr.ph.i.i.i.i80

.lr.ph.i.i.i.i80:                                 ; preds = %.lr.ph.i.i.i.i80.preheader174, %.lr.ph.i.i.i.i80
  %.012.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i80 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i80.preheader174 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i80 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i80.preheader174 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.ef = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !75, !alias.scope !107, !noalias !104
  store i64 %i.ef, ptr %.012.i.i.i.i, align 8, !tbaa !75, !alias.scope !104, !noalias !107
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !75, !alias.scope !107, !noalias !104
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.eg, %i.cu
  br i1 %.not.i.i.i.i81, label %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i80, !llvm.loop !117

_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i80, %middle.block, %.noexc83
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dn, %.noexc83 ], [ %i.dy, %middle.block ], [ %i.eh, %.lr.ph.i.i.i.i80 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ct, null
  br i1 %.not.i23.i, label %.noexc47, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.df) #29
  br label %.noexc47

.noexc47:                                         ; preds = %bb.ai, %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  store ptr %i.dn, ptr %8, align 8, !tbaa !74
  store ptr %i.ei, ptr %i.cm, align 8, !tbaa !73
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dl ; 2 uses
  store ptr %i.ej, ptr %i.cn, align 8, !tbaa !118
  br label %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit: ; preds = %.noexc47, %bb.af
  %i.ek = phi ptr [ %i.dn, %.noexc47 ], [ %i.ct, %bb.af ]
  %i.el = phi ptr [ %i.ej, %.noexc47 ], [ %i.cu, %bb.af ]
  %i.em = phi ptr [ %i.ei, %.noexc47 ], [ %i.dc, %bb.af ] ; 6 uses
  %i.en = load ptr, ptr %0, align 8, !tbaa !119
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next109 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 3 uses
  %i.eq = load ptr, ptr %i.co, align 8, !tbaa !119 ; 4 uses
  %.not.i.i48 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i.i48, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrISt6threadSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.ep to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 3                 ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrISt6threadSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.aj, %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i = phi i64 [ %i.fa, %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i ], [ %i.eu, %bb.aj ] ; 2 uses
  %.0812.i.i.i.i.i.i.i = phi ptr [ %i.ez, %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i ], [ %i.eo, %bb.aj ] ; 3 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ey, %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i ], [ %i.ep, %bb.aj ] ; 3 uses
  %i.ew = load ptr, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !75
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !75
  %i.ex = load ptr, ptr %.0812.i.i.i.i.i.i.i, align 8, !tbaa !75 ; 3 uses
  store ptr %i.ew, ptr %.0812.i.i.i.i.i.i.i, align 8, !tbaa !75
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ex, align 8, !tbaa !77
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt9terminatev() #31
  unreachable

_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 8) #29
  br label %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i.i.i, i64 8
  %i.fa = add nsw i64 %.013.i.i.i.i.i.i.i, -1
  %i.fb = icmp sgt i64 %.013.i.i.i.i.i.i.i, 1
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrISt6threadSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i, !llvm.loop !120

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrISt6threadSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EEaSEOS3_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.co, align 8, !tbaa !73
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrISt6threadSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrISt6threadSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrISt6threadSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i, %bb.aj, %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit
  %i.fc = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrISt6threadSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i.i ], [ %i.eq, %bb.aj ], [ %i.eq, %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit ]
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -8 ; 2 uses
  store ptr %i.fd, ptr %i.co, align 8, !tbaa !73
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !75 ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrISt6threadSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fe, align 8, !tbaa !77
  %.not.i.i.i.i.i50 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i50, label %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZSt9terminatev() #31
  unreachable

_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i: ; preds = %bb.am
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef 8) #29
  br label %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit

_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EE.exit: ; preds = %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrISt6threadSt14default_deleteIS3_EESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  %.not35.not = icmp sgt i64 %indvars.iv.next109, %i.cq
  br i1 %.not35.not, label %bb.ae, label %bb.ac, !llvm.loop !121

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit.split-lp:                               ; preds = %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.ac
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ff) #30
  %i.fg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cr) #30 ; 0 uses
  %i.fh = load ptr, ptr %8, align 8, !tbaa !119   ; 5 uses
  %.not98104 = icmp eq ptr %i.fh, %i.em
  br i1 %.not98104, label %._crit_edge, label %.lr.ph106

._crit_edge:                                      ; preds = %bb.aw, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.fi = load ptr, ptr %i.co, align 8, !tbaa !73 ; 3 uses
  %i.fj = load ptr, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = ashr exact i64 %i.fm, 3                 ; 3 uses
  %i.fo = icmp ult i64 %i.fn, %i.cq
  br i1 %i.fo, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge
  %i.fp = sub nuw nsw i64 %i.cq, %i.fn
  invoke void @_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.fp)
          to label %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE6resizeEm.exit63 unwind label %bb.bj

bb.ap:                                            ; preds = %._crit_edge
  %i.fq = icmp ugt i64 %i.fn, %i.cq
  br i1 %i.fq, label %bb.aq, label %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE6resizeEm.exit63
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_111thread_pool4pushIRSt8functionIFvillllEEJRlS7_S7_S7_EEESt6futureIDTclfp_Li0Espfp0_EEEOT_DpOT0_:bb.a

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.cg, align 8, !tbaa !85
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !87
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !88
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #30, !inline_history !242
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !88
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #30, !inline_history !242
  br label %_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i27 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i27, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i = phi i32 [ %i.cj, %bb.af ], [ %i.ct, %bb.ag ]
  %i.cu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cu, label %bb.ah, label %_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #30
  br label %_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ab, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  ret void

.body38:                                          ; preds = %bb.u, %_ZNSt14_Function_baseD2Ev.exit4.i, %bb.z, %bb.aa
  %.pn13 = phi { ptr, i32 } [ %i.cd, %bb.aa ], [ %i.cc, %bb.z ], [ %i.bq, %bb.u ], [ %i.bg, %_ZNSt14_Function_baseD2Ev.exit4.i ]
  call void @_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #30
  br label %bb.ai

bb.ai:                                            ; preds = %.body38, %_ZNSt5_BindIFSt8functionIFvillllEESt12_PlaceholderILi1EEllllEED2Ev.exit20
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %.body38 ], [ %eh.lpad-body, %_ZNSt5_BindIFSt8functionIFvillllEESt12_PlaceholderILi1EEllllEED2Ev.exit20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_123parallel_for_chunked_2DEllllllOSt8functionIFvllllEENS0_6paroptE(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nofree noundef readonly byval(%"class.OpenImageIO::v3_1::paropt") align 8 captures(none) %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::function.45", align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.a = ptrtoint ptr %6 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %8, align 8, !tbaa !346
  store ptr @"_ZNSt17_Function_handlerIFvillllEZN11OpenImageIO4v3_123parallel_for_chunked_2DEllllllOSt8functionIFvllllEENS2_6paroptEE3$_0E9_M_invokeERKSt9_Any_dataOiOlSE_SE_SE_", ptr %i.c, align 8, !tbaa !294
  store ptr @"_ZNSt17_Function_handlerIFvillllEZN11OpenImageIO4v3_123parallel_for_chunked_2DEllllllOSt8functionIFvllllEENS2_6paroptEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.b, align 8, !tbaa !142
  invoke void @_ZN11OpenImageIO4v3_126parallel_for_chunked_2D_idEllllllOSt8functionIFvillllEENS0_6paroptE(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %7)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %.not.i8 = icmp eq ptr %i.j, null
  br i1 %.not.i8, label %_ZNSt14_Function_baseD2Ev.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit9 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit9:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_115parallel_for_2DEllllOSt8functionIFvllEENS0_6paroptE(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nofree noundef readonly byval(%"class.OpenImageIO::v3_1::paropt") align 8 captures(none) %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::function.45", align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.a = ptrtoint ptr %4 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %6, align 8, !tbaa !246
  store ptr @"_ZNSt17_Function_handlerIFvillllEZN11OpenImageIO4v3_115parallel_for_2DEllllOSt8functionIFvllEENS2_6paroptEE3$_0E9_M_invokeERKSt9_Any_dataOiOlSE_SE_SE_", ptr %i.c, align 8, !tbaa !294
  store ptr @"_ZNSt17_Function_handlerIFvillllEZN11OpenImageIO4v3_115parallel_for_2DEllllOSt8functionIFvllEENS2_6paroptEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.b, align 8, !tbaa !142
  invoke void @_ZN11OpenImageIO4v3_126parallel_for_chunked_2D_idEllllllOSt8functionIFvillllEENS0_6paroptE(i64 noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef %2, i64 noundef %3, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %5)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !142  ; 2 uses
  %.not.i6 = icmp eq ptr %i.j, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #11 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl9robin_mapINSt6thread2idEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIS2_iEELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !349  ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a
  %1 = ptrtoint ptr %i.d to i64
  %2 = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %1, %2
  %i.f = add i64 %i.e, -24                        ; 2 uses
  %i.g = udiv i64 %i.f, 24
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 2305843009213693944      ; 3 uses
  %i.i = mul i64 %n.vec, 24
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue23, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue23 ] ; 2 uses
  %i.k = mul i64 %index, 24                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.k
  %i.l = getelementptr i8, ptr %i.b, i64 %i.k
  %i.m = getelementptr i8, ptr %i.b, i64 %i.k
  %i.n = getelementptr i8, ptr %i.b, i64 %i.k
  %i.o = getelementptr i8, ptr %i.b, i64 %i.k
  %i.p = getelementptr i8, ptr %i.b, i64 %i.k
  %i.q = getelementptr i8, ptr %i.b, i64 %i.k
  %i.r = getelementptr i8, ptr %i.b, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.t = getelementptr i8, ptr %i.l, i64 28       ; 2 uses
  %i.u = getelementptr i8, ptr %i.m, i64 52       ; 2 uses
  %i.v = getelementptr i8, ptr %i.n, i64 76       ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 100      ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 124      ; 2 uses
  %i.y = getelementptr i8, ptr %i.q, i64 148      ; 2 uses
  %i.z = getelementptr i8, ptr %i.r, i64 172      ; 2 uses
  %i.aa = load i16, ptr %i.s, align 4, !tbaa !57
  %i.ab = load i16, ptr %i.t, align 4, !tbaa !57
  %i.ac = load i16, ptr %i.u, align 4, !tbaa !57
  %i.ad = load i16, ptr %i.v, align 4, !tbaa !57
  %i.ae = load i16, ptr %i.w, align 4, !tbaa !57
  %i.af = load i16, ptr %i.x, align 4, !tbaa !57
  %i.ag = load i16, ptr %i.y, align 4, !tbaa !57
  %i.ah = load i16, ptr %i.z, align 4, !tbaa !57
  %i.ai = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %i.aj = insertelement <8 x i16> %i.ai, i16 %i.ab, i64 1
  %i.ak = insertelement <8 x i16> %i.aj, i16 %i.ac, i64 2
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ad, i64 3
  %i.am = insertelement <8 x i16> %i.al, i16 %i.ae, i64 4
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 5
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 6
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 7
  %i.aq = icmp ne <8 x i16> %i.ap, splat (i16 -1) ; 8 uses
  %i.ar = extractelement <8 x i1> %i.aq, i64 0
  br i1 %i.ar, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 -1, ptr %i.s, align 4, !tbaa !57
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.as = extractelement <8 x i1> %i.aq, i64 1
  br i1 %i.as, label %pred.store.if10, label %pred.store.continue11

pred.store.if10:                                  ; preds = %pred.store.continue
  store i16 -1, ptr %i.t, align 4, !tbaa !57
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue
  %i.at = extractelement <8 x i1> %i.aq, i64 2
  br i1 %i.at, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue11
  store i16 -1, ptr %i.u, align 4, !tbaa !57
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.au = extractelement <8 x i1> %i.aq, i64 3
  br i1 %i.au, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue13
  store i16 -1, ptr %i.v, align 4, !tbaa !57
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.av = extractelement <8 x i1> %i.aq, i64 4
  br i1 %i.av, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
  store i16 -1, ptr %i.w, align 4, !tbaa !57
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.aw = extractelement <8 x i1> %i.aq, i64 5
  br i1 %i.aw, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  store i16 -1, ptr %i.x, align 4, !tbaa !57
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.ax = extractelement <8 x i1> %i.aq, i64 6
  br i1 %i.ax, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  store i16 -1, ptr %i.y, align 4, !tbaa !57
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.ay = extractelement <8 x i1> %i.aq, i64 7
  br i1 %i.ay, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  store i16 -1, ptr %i.z, align 4, !tbaa !57
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !350

middle.block:                                     ; preds = %pred.store.continue23
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader24

.lr.ph.i.i.i.i.preheader24:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.ph = phi ptr [ %i.b, %.lr.ph.i.i.i.i.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader24, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bd, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader24 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !57
  %i.bc = icmp eq i16 %i.bb, -1
  br i1 %i.bc, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  store i16 -1, ptr %i.ba, align 4, !tbaa !57
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !351

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i, %middle.block, %bb.a
  %.not.i.i1.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !352
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.b to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.bi) #29
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEED2Ev(ptr noundef nonnull align 8 dead_on_return(81) dereferenceable(81) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !353    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt5queueIPSt8functionIFviEESt5dequeIS3_SaIS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !354  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !135
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #29
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, !llvm.loop !355

_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !353
  br label %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !356
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #29
  br label %_ZNSt5queueIPSt8functionIFviEESt5dequeIS3_SaIS3_EEED2Ev.exit

_ZNSt5queueIPSt8functionIFviEESt5dequeIS3_SaIS3_EEED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i
  ret void
}
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEi:bb.a
  %i.an = atomicrmw volatile add ptr %i.aj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiEUlvE_EEEEEC2IJRS7_EEEDpOT_.exit.i

_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiEUlvE_EEEEEC2IJRS7_EEEDpOT_.exit.i: ; preds = %bb.i, %bb.h, %.noexc
  store ptr %i.ad, ptr %2, align 8, !tbaa !375
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiEUlvE_EEEEEC2IJRS7_EEEDpOT_.exit.i
  %i.ao = load ptr, ptr %2, align 8, !tbaa !375   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %bb.l, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.j
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #30, !inline_history !377
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiEUlvE_EEEEEC2IJRS7_EEEDpOT_.exit.i
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !375   ; 3 uses
  %.not.i5.i = icmp eq ptr %i.at, null
  br i1 %.not.i5.i, label %.body, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i: ; preds = %bb.k
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !88
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #30, !inline_history !377
  br label %.body

bb.l:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ax = load ptr, ptr %i.ab, align 8, !tbaa !75 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !75
  %.not.i.i10 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i10, label %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EE5resetEPS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !77
  %.not.i.i.i.i11 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i11, label %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZSt9terminatev() #31
  unreachable

_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i: ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 8) #29
  br label %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EE5resetEPS0_.exit

_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EE5resetEPS0_.exit: ; preds = %bb.l, %_ZNKSt14default_deleteISt6threadEclEPS0_.exit.i.i
  %i.ay = load ptr, ptr %i.z, align 8, !tbaa !82  ; 8 uses
  %.not.i.i.i12 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i12, label %_ZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENUlvE_D2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EE5resetEPS0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.az, align 8, !tbaa !85
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !87
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !88
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #30, !inline_history !378
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !88
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #30, !inline_history !378
  br label %_ZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENUlvE_D2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i.i13 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i13, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.bc, %bb.r ], [ %i.bm, %bb.s ]
  %i.bn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bn, label %bb.t, label %_ZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENUlvE_D2Ev.exit, !prof !92

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #30
  br label %_ZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENUlvE_D2Ev.exit

_ZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENUlvE_D2Ev.exit: ; preds = %_ZNSt10unique_ptrISt6threadSt14default_deleteIS0_EE5resetEPS0_.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !82  ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENUlvE_D2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bp, align 8, !tbaa !85
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !87
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !88
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !379
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !88
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !379
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i.i15 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i15, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.bs, %bb.x ], [ %i.cc, %bb.y ]
  %i.cd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cd, label %bb.z, label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENUlvE_D2Ev.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.aa:                                            ; preds = %_ZNSt10shared_ptrISt6atomicIbEEC2ERKS2_.exit9
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.f
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i, %bb.ab
  %eh.lpad-body = phi { ptr, i32 } [ %i.cf, %bb.ab ], [ %i.as, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i ], [ %i.as, %bb.k ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 8) #29
  br label %bb.ac

bb.ac:                                            ; preds = %.body, %bb.aa
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ce, %bb.aa ]
  call void @_ZZN11OpenImageIO4v3_111thread_pool4Impl10set_threadEiENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #12

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #16

declare void @_ZN11OpenImageIO4v3_17Sysutil6getenvENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #16

declare noundef i32 @_ZN11OpenImageIO4v3_17Sysutil20hardware_concurrencyEv() local_unnamed_addr #16

declare noundef i32 @_ZN11OpenImageIO4v3_17Strutil4stoiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr noundef dead_on_return, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !74     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrISt6threadSt14default_deleteIS1_EEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10unique_ptrISt6threadSt14default_deleteIS1_EEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !380
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !73
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
  unreachable

_ZNKSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !380
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit
  %i.x = sub i64 %i.d, %i.e
  %i.y = add i64 %i.x, -8                         ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep40 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.u, %scevgep40
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ai ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.aj = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep41, align 8, !tbaa !75, !alias.scope !387, !noalias !382
  %wide.load42 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !75, !alias.scope !387, !noalias !382
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !390, !noalias !387
  store <2 x i64> %wide.load42, ptr %i.ak, align 8, !tbaa !75, !alias.scope !390, !noalias !387
  %i.al = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep41, align 8, !tbaa !75, !alias.scope !387, !noalias !382
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !75, !alias.scope !387, !noalias !382
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !392

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader44

.lr.ph.i.i.i.preheader44:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader44, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader44 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader44 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.an = load i64, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !385, !noalias !382
  store i64 %i.an, ptr %.012.i.i.i, align 8, !tbaa !75, !alias.scope !382, !noalias !385
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !385, !noalias !382
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !393

_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.aq = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aq) #29
  br label %_ZNSt12_Vector_baseISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit37

_ZNSt12_Vector_baseISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit37: ; preds = %_ZNSt6vectorISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !74
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.as, ptr %i.h, align 8, !tbaa !118
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10unique_ptrISt6threadSt14default_deleteIS1_EEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10unique_ptrISt6threadSt14default_deleteIS1_EESaIS4_EE13_M_deallocateEPS4_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !358
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrISt6atomicIbEEmS3_ET_S5_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10shared_ptrISt6atomicIbEEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !80
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #32
  unreachable

_ZNKSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !211, !alias.scope !397, !noalias !394
  store ptr null, ptr %i.x, align 8, !tbaa !82, !alias.scope !397, !noalias !394
  store <2 x ptr> %i.y, ptr %.012.i.i.i, align 8, !tbaa !211, !alias.scope !394, !noalias !397
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !102, !alias.scope !397, !noalias !394
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !399

_ZNSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10shared_ptrISt6atomicIbEESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ab = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #29
  br label %_ZNSt12_Vector_baseISt10shared_ptrISt6atomicIbEESaIS3_EE13_M_deallocateEPS3_m.exit37

_ZNSt12_Vector_baseISt10shared_ptrISt6atomicIbEESaIS3_EE13_M_deallocateEPS3_m.exit37: ; preds = %_ZNSt6vectorISt10shared_ptrISt6atomicIbEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !80
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !358
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrISt6atomicIbEEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10shared_ptrISt6atomicIbEESaIS3_EE13_M_deallocateEPS3_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 {
end_hunk_2
begin_hunk_3_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22rehash_on_extreme_loadEs:bb.a
  %i.o = add i64 %i.n, 2
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %i.o)
  store i8 0, ptr %i.a, align 8, !tbaa !63
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !64, !range !71, !noundef !72
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.p, align 1, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load float, ptr %i.s, align 8, !tbaa !367 ; 2 uses
  %i.u = fcmp une float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !364  ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = uitofp i64 %i.f to float                 ; 2 uses
  %i.z = uitofp i64 %i.w to float
  %i.aa = fdiv float %i.y, %i.z
  %.0.i = select i1 %i.x, float 0.000000e+00, float %i.aa
  %i.ab = fcmp olt float %.0.i, %i.t
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = add nuw i64 %i.f, 1
  %i.ad = uitofp i64 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load float, ptr %i.ae, align 4, !tbaa !368 ; 2 uses
  %i.ag = fdiv float %i.ad, %i.af
  %i.ah = tail call noundef float @llvm.ceil.f32(float %i.ag)
  %i.ai = fptoui float %i.ah to i64
  %i.aj = fdiv float %i.y, %i.af
  %i.ak = tail call noundef float @llvm.ceil.f32(float %i.aj)
  %i.al = fptoui float %i.ak to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.al)
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %.sroa.speculated.i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.j, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit
  %.0 = phi i1 [ true, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit ], [ true, %bb.j ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.g ]
  ret i1 %.0
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tsl::detail_robin_hash::robin_hash", align 8 ; 18 uses
  %3 = alloca %"class.std::allocator.54", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !367
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !368
  call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_EC2EmRKS8_RKSA_RKSB_ff(ptr noundef nonnull align 8 dereferenceable(74) %2, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, float noundef %i.b, float noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !366  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !366  ; 3 uses
  %.not19 = icmp eq ptr %i.g, %i.i
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8, !tbaa !364
  %.fr21 = freeze i64 %i.j
  %i.k = icmp ult i64 %.fr21, 4294967297
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.sroa.015.020.us = phi ptr [ %i.am, %bb.f ], [ %i.g, %.lr.ph ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us, i64 4
  %i.n = load i16, ptr %i.m, align 4, !tbaa !57
  %i.o = icmp eq i16 %i.n, -1
  br i1 %i.o, label %bb.f, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us: ; preds = %.lr.ph.split.us
  %i.p = load i32, ptr %.sroa.015.020.us, align 4, !tbaa !421 ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = load i64, ptr %2, align 8, !tbaa !360    ; 2 uses
  %i.s = and i64 %i.r, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us
  %i.w = phi i64 [ %i.r, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us ], [ %i.ai, %bb.e ]
  %.013.i.us = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us ], [ %i.aj, %bb.e ] ; 4 uses
  %.012.i.us = phi i32 [ %i.p, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us ], [ %.1.i.us, %bb.e ] ; 3 uses
  %.0.i.us = phi i64 [ %i.s, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us ], [ %i.al, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.0.i.us ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 3 uses
  %i.z = load i16, ptr %i.y, align 4, !tbaa !57   ; 3 uses
  %i.aa = icmp sgt i16 %.013.i.us, %i.z
  br i1 %i.aa, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i16 %i.z, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  br i1 %i.ab, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS5_.exit.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.us = load i64, ptr %i.t, align 8, !tbaa !77
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77
  store i64 %i.ad, ptr %i.t, align 8, !tbaa !77
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.us, ptr %i.ac, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.v, align 8, !tbaa !3
  %i.ag = load i32, ptr %i.ae, align 8, !tbaa !3
  store i32 %i.ag, ptr %i.v, align 8, !tbaa !3
  store i32 %i.af, ptr %i.ae, align 8, !tbaa !3
  store i16 %.013.i.us, ptr %i.y, align 4, !tbaa !422
  %i.ah = load i32, ptr %i.x, align 8, !tbaa !421
  store i32 %.012.i.us, ptr %i.x, align 8, !tbaa !421
  %.pre26 = load i64, ptr %2, align 8, !tbaa !360
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.ai = phi i64 [ %.pre26, %bb.d ], [ %i.w, %bb.b ] ; 2 uses
  %.114.i.us = phi i16 [ %i.z, %bb.d ], [ %.013.i.us, %bb.b ]
  %.1.i.us = phi i32 [ %i.ah, %bb.d ], [ %.012.i.us, %bb.b ]
  %i.aj = add i16 %.114.i.us, 1
  %i.ak = add i64 %.0.i.us, 1
  %i.al = and i64 %i.ai, %i.ak
  br label %bb.b, !llvm.loop !424

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS5_.exit.us: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  store i32 %.012.i.us, ptr %i.x, align 4, !tbaa !421
  store i16 %.013.i.us, ptr %i.y, align 4, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS5_.exit.us, %.lr.ph.split.us
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us, i64 24 ; 2 uses
  %.not.us = icmp eq ptr %i.am, %i.i
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.o, %bb.f, %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !77
  %i.an = load i64, ptr %0, align 8, !tbaa !77
  store i64 %i.an, ptr %2, align 8, !tbaa !77
  store i64 %.sroa.0.0.copyload.i.i, ptr %0, align 8, !tbaa !77
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !348 ; 16 uses
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !349 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.au = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !366
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !348
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !349
  store <2 x ptr> %i.au, ptr %i.f, align 8, !tbaa !366
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !366
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !352
  %i.ax = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !366
  store <2 x ptr> %i.av, ptr %i.aq, align 8, !tbaa !366
  store <2 x ptr> %i.ax, ptr %i.at, align 8, !tbaa !366
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = load i64, ptr %i.e, align 8, !tbaa !77
  %i.ba = load <2 x i64>, ptr %i.ay, align 8, !tbaa !77
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !77
  store <2 x i64> %i.ba, ptr %i.e, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !77
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !77
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !77
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !77
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.a, align 8, !tbaa !65
  %i.bh = load <2 x float>, ptr %i.bf, align 8, !tbaa !65
  store <2 x float> %i.bg, ptr %i.bf, align 8, !tbaa !65
  store <2 x float> %i.bh, ptr %i.a, align 8, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bk = load i8, ptr %i.bi, align 8, !tbaa !124, !range !71, !noundef !72
  %i.bl = load i8, ptr %i.bj, align 8, !tbaa !124, !range !71, !noundef !72
  store i8 %i.bl, ptr %i.bi, align 8, !tbaa !124
  store i8 %i.bk, ptr %i.bj, align 8, !tbaa !124
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 73 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !124, !range !71, !noundef !72
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !124, !range !71, !noundef !72
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !124
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !124
  %.not4.i.i.i.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %._crit_edge
  %4 = ptrtoint ptr %i.as to i64
  %5 = ptrtoint ptr %i.ar to i64
  %i.bq = sub i64 %4, %5
  %i.br = add i64 %i.bq, -24                      ; 2 uses
  %i.bs = udiv i64 %i.br, 24
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.br, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bt, 2305843009213693944     ; 3 uses
  %i.bu = mul i64 %n.vec, 24
  %i.bv = getelementptr i8, ptr %i.ar, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue63, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue63 ] ; 2 uses
  %i.bw = mul i64 %index, 24                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.bx = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.bz = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.ca = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.cb = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.cc = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.cd = getelementptr i8, ptr %i.ar, i64 %i.bw
  %i.ce = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bx, i64 28     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 52     ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bz, i64 76     ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ca, i64 100    ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cb, i64 124    ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cc, i64 148    ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cd, i64 172    ; 2 uses
  %i.cm = load i16, ptr %i.ce, align 4, !tbaa !57
  %i.cn = load i16, ptr %i.cf, align 4, !tbaa !57
  %i.co = load i16, ptr %i.cg, align 4, !tbaa !57
  %i.cp = load i16, ptr %i.ch, align 4, !tbaa !57
  %i.cq = load i16, ptr %i.ci, align 4, !tbaa !57
  %i.cr = load i16, ptr %i.cj, align 4, !tbaa !57
  %i.cs = load i16, ptr %i.ck, align 4, !tbaa !57
  %i.ct = load i16, ptr %i.cl, align 4, !tbaa !57
  %i.cu = insertelement <8 x i16> poison, i16 %i.cm, i64 0
  %i.cv = insertelement <8 x i16> %i.cu, i16 %i.cn, i64 1
  %i.cw = insertelement <8 x i16> %i.cv, i16 %i.co, i64 2
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.cp, i64 3
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.cq, i64 4
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cr, i64 5
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 6
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 7
  %i.dc = icmp ne <8 x i16> %i.db, splat (i16 -1) ; 8 uses
  %i.dd = extractelement <8 x i1> %i.dc, i64 0
  br i1 %i.dd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 -1, ptr %i.ce, align 4, !tbaa !57
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.de = extractelement <8 x i1> %i.dc, i64 1
  br i1 %i.de, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue
  store i16 -1, ptr %i.cf, align 4, !tbaa !57
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue
  %i.df = extractelement <8 x i1> %i.dc, i64 2
  br i1 %i.df, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  store i16 -1, ptr %i.cg, align 4, !tbaa !57
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.dg = extractelement <8 x i1> %i.dc, i64 3
  br i1 %i.dg, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  store i16 -1, ptr %i.ch, align 4, !tbaa !57
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.dh = extractelement <8 x i1> %i.dc, i64 4
  br i1 %i.dh, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  store i16 -1, ptr %i.ci, align 4, !tbaa !57
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.di = extractelement <8 x i1> %i.dc, i64 5
  br i1 %i.di, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  store i16 -1, ptr %i.cj, align 4, !tbaa !57
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.dj = extractelement <8 x i1> %i.dc, i64 6
  br i1 %i.dj, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  store i16 -1, ptr %i.ck, align 4, !tbaa !57
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.dk = extractelement <8 x i1> %i.dc, i64 7
  br i1 %i.dk, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  store i16 -1, ptr %i.cl, align 4, !tbaa !57
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !425

middle.block:                                     ; preds = %pred.store.continue63
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader64

.lr.ph.i.i.i.i.preheader64:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader64, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dp, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader64 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4 ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 4, !tbaa !57
  %i.do = icmp eq i16 %i.dn, -1
  br i1 %i.do, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  store i16 -1, ptr %i.dm, align 4, !tbaa !57
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dp, %i.as
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !426

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i, %middle.block, %._crit_edge
  %.not.i.i1.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.dq = ptrtoint ptr %i.aw to i64
  %i.dr = ptrtoint ptr %i.ar to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.ds) #29
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.sroa.015.020 = phi ptr [ %i.ev, %bb.o ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 4
  %i.du = load i16, ptr %i.dt, align 4, !tbaa !57
  %i.dv = icmp eq i16 %i.du, -1
  br i1 %i.dv, label %bb.o, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 8 ; 4 uses
  %i.dx = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit unwind label %bb.j ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #31
  unreachable

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit: ; preds = %bb.i
  %i.ea = load i64, ptr %2, align 8, !tbaa !360   ; 2 uses
  %i.eb = and i64 %i.ea, %i.dx
  %i.ec = trunc i64 %i.dx to i32
  %i.ed = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 16 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit
  %i.ef = phi i64 [ %i.ea, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit ], [ %i.er, %bb.n ]
  %.013.i = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit ], [ %i.es, %bb.n ] ; 4 uses
  %.012.i = phi i32 [ %i.ec, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit ], [ %.1.i, %bb.n ] ; 3 uses
  %.0.i = phi i64 [ %i.eb, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit ], [ %i.eu, %bb.n ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %.0.i ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 3 uses
  %i.ei = load i16, ptr %i.eh, align 4, !tbaa !57 ; 3 uses
  %i.ej = icmp sgt i16 %.013.i, %i.ei
  br i1 %i.ej, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ek = icmp eq i16 %i.ei, -1
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  br i1 %i.ek, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS5_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_3
begin_hunk_4_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm:bb.a
  %i.es = add i16 %.114.i, 1
  %i.et = add i64 %.0.i, 1
  %i.eu = and i64 %i.er, %i.et
  br label %bb.k, !llvm.loop !424

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS5_.exit: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false)
  store i32 %.012.i, ptr %i.eg, align 4, !tbaa !421
  store i16 %.013.i, ptr %i.eh, align 4, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS5_.exit, %.lr.ph.split
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ev, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #22

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt6futureIvESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !172    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #32
  unreachable

_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !211
  store ptr null, ptr %i.r, align 8, !tbaa !82
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !211
  store ptr null, ptr %2, align 8, !tbaa !182
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !211, !alias.scope !430, !noalias !427
  store ptr null, ptr %i.t, align 8, !tbaa !82, !alias.scope !430, !noalias !427
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !211, !alias.scope !427, !noalias !430
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !182, !alias.scope !430, !noalias !427
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !302

_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt6futureIvESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !211, !alias.scope !435, !noalias !432
  store ptr null, ptr %i.y, align 8, !tbaa !82, !alias.scope !435, !noalias !432
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !211, !alias.scope !432, !noalias !435
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !182, !alias.scope !435, !noalias !432
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !302

_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6futureIvESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !210
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #29
  br label %_ZNSt12_Vector_baseISt6futureIvESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt6futureIvESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt6futureIvESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !172
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !169
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !210
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !87
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !402
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !402
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !91
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_future_errori(i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #12

declare noundef zeroext i1 @_ZNSt28__atomic_futex_unsigned_base26_M_futex_wait_until_steadyEPjjbNSt6chrono8durationIlSt5ratioILl1ELl1EEEENS2_IlS3_ILl1ELl1000000000EEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i32 noundef, i1 noundef zeroext, i64, i64) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_111thread_pool4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(321) dereferenceable(321) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN11OpenImageIO4v3_111thread_pool4Impl4stopEb(ptr noundef nonnull align 8 dereferenceable(321) %0, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !348  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !349  ; 3 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %1 = ptrtoint ptr %i.d to i64
  %2 = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %1, %2
  %i.f = add i64 %i.e, -24                        ; 2 uses
  %i.g = udiv i64 %i.f, 24
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 2305843009213693944      ; 3 uses
  %i.i = mul i64 %n.vec, 24
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue46, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue46 ] ; 2 uses
  %i.k = mul i64 %index, 24                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.k
  %i.l = getelementptr i8, ptr %i.b, i64 %i.k
  %i.m = getelementptr i8, ptr %i.b, i64 %i.k
  %i.n = getelementptr i8, ptr %i.b, i64 %i.k
  %i.o = getelementptr i8, ptr %i.b, i64 %i.k
  %i.p = getelementptr i8, ptr %i.b, i64 %i.k
  %i.q = getelementptr i8, ptr %i.b, i64 %i.k
  %i.r = getelementptr i8, ptr %i.b, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.t = getelementptr i8, ptr %i.l, i64 28       ; 2 uses
  %i.u = getelementptr i8, ptr %i.m, i64 52       ; 2 uses
  %i.v = getelementptr i8, ptr %i.n, i64 76       ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 100      ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 124      ; 2 uses
  %i.y = getelementptr i8, ptr %i.q, i64 148      ; 2 uses
  %i.z = getelementptr i8, ptr %i.r, i64 172      ; 2 uses
  %i.aa = load i16, ptr %i.s, align 4, !tbaa !57
  %i.ab = load i16, ptr %i.t, align 4, !tbaa !57
  %i.ac = load i16, ptr %i.u, align 4, !tbaa !57
  %i.ad = load i16, ptr %i.v, align 4, !tbaa !57
  %i.ae = load i16, ptr %i.w, align 4, !tbaa !57
  %i.af = load i16, ptr %i.x, align 4, !tbaa !57
  %i.ag = load i16, ptr %i.y, align 4, !tbaa !57
  %i.ah = load i16, ptr %i.z, align 4, !tbaa !57
  %i.ai = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %i.aj = insertelement <8 x i16> %i.ai, i16 %i.ab, i64 1
  %i.ak = insertelement <8 x i16> %i.aj, i16 %i.ac, i64 2
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ad, i64 3
  %i.am = insertelement <8 x i16> %i.al, i16 %i.ae, i64 4
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 5
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 6
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 7
  %i.aq = icmp ne <8 x i16> %i.ap, splat (i16 -1) ; 8 uses
  %i.ar = extractelement <8 x i1> %i.aq, i64 0
  br i1 %i.ar, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 -1, ptr %i.s, align 4, !tbaa !57
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.as = extractelement <8 x i1> %i.aq, i64 1
  br i1 %i.as, label %pred.store.if33, label %pred.store.continue34

pred.store.if33:                                  ; preds = %pred.store.continue
  store i16 -1, ptr %i.t, align 4, !tbaa !57
  br label %pred.store.continue34

pred.store.continue34:                            ; preds = %pred.store.if33, %pred.store.continue
  %i.at = extractelement <8 x i1> %i.aq, i64 2
  br i1 %i.at, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue34
  store i16 -1, ptr %i.u, align 4, !tbaa !57
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue34
  %i.au = extractelement <8 x i1> %i.aq, i64 3
  br i1 %i.au, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  store i16 -1, ptr %i.v, align 4, !tbaa !57
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %i.av = extractelement <8 x i1> %i.aq, i64 4
  br i1 %i.av, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  store i16 -1, ptr %i.w, align 4, !tbaa !57
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.aw = extractelement <8 x i1> %i.aq, i64 5
  br i1 %i.aw, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  store i16 -1, ptr %i.x, align 4, !tbaa !57
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %i.ax = extractelement <8 x i1> %i.aq, i64 6
  br i1 %i.ax, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  store i16 -1, ptr %i.y, align 4, !tbaa !57
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.ay = extractelement <8 x i1> %i.aq, i64 7
  br i1 %i.ay, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  store i16 -1, ptr %i.z, align 4, !tbaa !57
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !437

middle.block:                                     ; preds = %pred.store.continue46
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader47

.lr.ph.i.i.i.i.i.preheader47:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.ph = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader47, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bd, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i.i ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader47 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 4 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !57
  %i.bc = icmp eq i16 %i.bb, -1
  br i1 %i.bc, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  store i16 -1, ptr %i.ba, align 4, !tbaa !57
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !438

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEEEvPT_.exit.i.i.i.i.i, %middle.block, %bb.b
  %.not.i.i1.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i.i.i, label %_ZN3tsl9robin_mapINSt6thread2idEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIS2_iEELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !352
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.b to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.bi) #29
  br label %_ZN3tsl9robin_mapINSt6thread2idEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIS2_iEELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit

_ZN3tsl9robin_mapINSt6thread2idEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIS2_iEELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt6thread2idEiELb1EEES7_EvT_S9_RSaIT0_E.exit.i.i.i, %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.bj) #30
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !353 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl9robin_mapINSt6thread2idEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIS2_iEELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !134 ; 2 uses
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !354 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = icmp ult ptr %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph.i.i.i.i.i1, label %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i

.lr.ph.i.i.i.i.i1:                                ; preds = %bb.e, %.lr.ph.i.i.i.i.i1
  %.06.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i1 ], [ %i.bo, %bb.e ] ; 3 uses
  %i.bs = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !135
  tail call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef 512) #29
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.bu = icmp ult ptr %.06.i.i.i.i.i, %i.bp
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i1, label %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i, !llvm.loop !355

_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i1
  %.pre.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !353
  br label %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i

_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i, %bb.e
  %i.bv = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i ], [ %i.bl, %bb.e ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !356
  %i.by = shl i64 %i.bx, 3
  tail call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #29
  br label %_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEED2Ev.exit

_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEED2Ev.exit: ; preds = %_ZN3tsl9robin_mapINSt6thread2idEiSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIS2_iEELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit, %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !81 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !80 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ca, %i.cc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrISt6atomicIbEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11OpenImageIO4v3_13pvt15ThreadsafeQueueIPSt8functionIFviEEED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrISt6atomicIbEEEvPT_.exit.i.i.i
end_hunk_4
