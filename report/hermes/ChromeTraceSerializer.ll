inline.NumInlined: 1022
inline.NumDeleted: 476
begin_hunk_0_@_ZN6hermes2vm17ChromeTraceFormat6createEjRKN4llvh8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_12DenseMapInfoImEENS2_6detail12DenseMapPairImS9_EEEERKSt6vectorINS0_16SamplingProfiler10StackTraceESaISK_EE:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !7, !noalias !70 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 6 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !7, !noalias !70 ; 3 uses
  %.not18.i = icmp eq ptr %i.aw, %i.ay
  br i1 %.not18.i, label %_ZNSt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEEC2ERKS3_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.critedge.i
  %.sroa.013.019.i = phi ptr [ %i.bk, %.critedge.i ], [ %i.aw, %.lr.ph ] ; 4 uses
  %i.az = load ptr, ptr %.sroa.013.019.i, align 8, !tbaa !10, !noalias !70
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = call noundef zeroext i1 @_ZN6hermes2vmeqERKNS0_16SamplingProfiler10StackFrameES4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.at) #17, !noalias !70
  br i1 %i.bb, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.bc = load ptr, ptr %.sroa.013.019.i, align 8, !tbaa !10, !noalias !70 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !15, !noalias !70 ; 4 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i14, label %_ZN6hermes2vm20ChromeStackFrameNode17findOrAddNewChildERNS0_22ChromeFrameIdGeneratorERKNS0_16SamplingProfiler10StackFrameE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !70
  %.not.i.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !3, !noalias !70
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !3, !noalias !70
  br label %_ZN6hermes2vm20ChromeStackFrameNode17findOrAddNewChildERNS0_22ChromeFrameIdGeneratorERKNS0_16SamplingProfiler10StackFrameE.exit

bb.p:                                             ; preds = %bb.n
  %i.bj = atomicrmw volatile add ptr %i.bf, i32 1 acq_rel, align 4, !noalias !70 ; 0 uses
  br label %_ZN6hermes2vm20ChromeStackFrameNode17findOrAddNewChildERNS0_22ChromeFrameIdGeneratorERKNS0_16SamplingProfiler10StackFrameE.exit

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 16 ; 2 uses
  %.not.i12 = icmp eq ptr %i.bk, %i.ay
  br i1 %.not.i12, label %_ZNSt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEEC2ERKS3_.exit.loopexit.i, label %.lr.ph.i

_ZNSt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEEC2ERKS3_.exit.loopexit.i: ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.ax, align 8, !tbaa !18, !noalias !70
  br label %_ZNSt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEEC2ERKS3_.exit.i: ; preds = %_ZNSt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEEC2ERKS3_.exit.loopexit.i, %.lr.ph
  %i.bl = phi ptr [ %.pre.i, %_ZNSt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEEC2ERKS3_.exit.loopexit.i ], [ %i.ay, %.lr.ph ] ; 8 uses
  %i.bm = add i32 %.sroa.048.158, 1               ; 3 uses
  %i.bn = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #18, !noalias !73 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !73
  store i32 %.sroa.048.158, ptr %i.bn, align 8, !tbaa !25, !noalias !73
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !73
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bp, i8 0, i64 28, i1 false), !noalias !73
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 56 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !36, !noalias !70
  %.not.i.i13 = icmp eq ptr %i.bl, %i.br
  br i1 %.not.i.i13, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEEC2ERKS3_.exit.i
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !10, !noalias !70
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !15, !noalias !70
  %i.bt = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18, !noalias !70 ; 10 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 7 uses
  store i32 1, ptr %i.bu, align 8, !tbaa !63, !noalias !70
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 12 ; 2 uses
  store i32 1, ptr %i.bv, align 4, !tbaa !65, !noalias !70
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN6hermes2vm20ChromeStackFrameNodeESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bt, align 8, !tbaa !66, !noalias !70
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store ptr %i.bn, ptr %i.bw, align 8, !tbaa !76, !noalias !70
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !70
  %.not.i.i.i25 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i25, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread.i: ; preds = %bb.q
  store i32 2, ptr %i.bu, align 8, !tbaa !3, !noalias !70
  br label %bb.x

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i: ; preds = %bb.q
  %i.by = atomicrmw volatile add ptr %i.bu, i32 1 acq_rel, align 4, !noalias !70 ; 0 uses
  %.pr.pre.i.i = load ptr, ptr %i.bs, align 8, !tbaa !15, !noalias !70 ; 8 uses
  %.not8.i.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not8.i.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8, !noalias !70 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bz, align 8, !tbaa !63, !noalias !70
  %i.cd = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !65, !noalias !70
  %i.ce = load ptr, ptr %.pr.pre.i.i, align 8, !tbaa !66, !noalias !70
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !70
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i) #17, !noalias !70, !inline_history !78
  %i.ch = load ptr, ptr %.pr.pre.i.i, align 8, !tbaa !66, !noalias !70
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !70
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i) #17, !noalias !70, !inline_history !78
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !70
  %.not.i9.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i9.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3, !noalias !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26

bb.v:                                             ; preds = %bb.t
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4, !noalias !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i27 = phi i32 [ %i.cc, %bb.u ], [ %i.cm, %bb.v ]
  %i.cn = icmp eq i32 %.0.i.i.i.i27, 1
  br i1 %i.cn, label %bb.w, label %bb.x, !prof !69

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i) #17, !noalias !70
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i26, %bb.s, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread.i
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !15, !noalias !70
  %i.co = load atomic i64, ptr %i.bu acquire, align 8, !noalias !70 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 4294967297
  %i.cq = trunc i64 %i.co to i32                  ; 2 uses
  br i1 %i.cp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bu, align 8, !tbaa !63, !noalias !70
  store i32 0, ptr %i.bv, align 4, !tbaa !65, !noalias !70
  %i.cr = load ptr, ptr %i.bt, align 8, !tbaa !66, !noalias !70
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !70
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #17, !noalias !70, !inline_history !79
  %i.cu = load ptr, ptr %i.bt, align 8, !tbaa !66, !noalias !70
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !70
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #17, !noalias !70, !inline_history !79
  br label %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit

bb.z:                                             ; preds = %bb.x
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !70
  %.not.i.i6.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i6.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = add nsw i32 %i.cq, -1
  store i32 %i.cy, ptr %i.bu, align 8, !tbaa !3, !noalias !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7.i

bb.ab:                                            ; preds = %bb.z
  %i.cz = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4, !noalias !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i8.i = phi i32 [ %i.cq, %bb.aa ], [ %i.cz, %bb.ab ]
  %i.da = icmp eq i32 %.0.i.i.i8.i, 1
  br i1 %i.da, label %bb.ac, label %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit, !prof !69

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #17, !noalias !70
  br label %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit

_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7.i, %bb.ac
  %i.db = load ptr, ptr %i.ax, align 8, !tbaa !18, !noalias !70
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  store ptr %i.dc, ptr %i.ax, align 8, !tbaa !18, !noalias !70
  br label %_ZNSt10unique_ptrIN6hermes2vm20ChromeStackFrameNodeESt14default_deleteIS2_EED2Ev.exit.i

bb.ad:                                            ; preds = %_ZNSt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEEC2ERKS3_.exit.i
  %i.dd = load ptr, ptr %i.ax, align 8, !tbaa !18, !noalias !70 ; 3 uses
  %i.de = load ptr, ptr %i.av, align 8, !tbaa !80, !noalias !70 ; 5 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775792
  br i1 %i.di, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #19, !noalias !70
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dj = ashr exact i64 %i.dh, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 576460752303423487)
  %i.dn = select i1 %i.dl, i64 576460752303423487, i64 %i.dm ; 3 uses
  %i.do = ptrtoint ptr %i.bl to i64
  %i.dp = sub i64 %i.do, %i.dg
  %.not.i.i23 = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i23), !noalias !70
  %i.dq = shl nuw nsw i64 %i.dn, 4
  %i.dr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #18, !noalias !70 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dp ; 2 uses
  store ptr %i.bn, ptr %i.ds, align 8, !tbaa !10, !noalias !70
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  store ptr null, ptr %i.dt, align 8, !tbaa !15, !noalias !70
  %i.du = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18, !noalias !70 ; 10 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 7 uses
  store i32 1, ptr %i.dv, align 8, !tbaa !63, !noalias !70
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 2 uses
  store i32 1, ptr %i.dw, align 4, !tbaa !65, !noalias !70
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN6hermes2vm20ChromeStackFrameNodeESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.du, align 8, !tbaa !66, !noalias !70
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store ptr %i.bn, ptr %i.dx, align 8, !tbaa !76, !noalias !70
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !70
  %.not.i.i.i28 = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i.i28, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i33, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread.i29

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread.i29: ; preds = %bb.af
  store i32 2, ptr %i.dv, align 8, !tbaa !3, !noalias !70
  br label %bb.am

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i33: ; preds = %bb.af
  %i.dz = atomicrmw volatile add ptr %i.dv, i32 1 acq_rel, align 4, !noalias !70 ; 0 uses
  %.pr.pre.i.i34 = load ptr, ptr %i.dt, align 8, !tbaa !15, !noalias !70 ; 8 uses
  %.not8.i.i35 = icmp eq ptr %.pr.pre.i.i34, null
  br i1 %.not8.i.i35, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i33
  %i.ea = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i34, i64 8 ; 4 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8, !noalias !70 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 4294967297
  %i.ed = trunc i64 %i.eb to i32                  ; 2 uses
  br i1 %i.ec, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.ea, align 8, !tbaa !63, !noalias !70
  %i.ee = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i34, i64 12
  store i32 0, ptr %i.ee, align 4, !tbaa !65, !noalias !70
  %i.ef = load ptr, ptr %.pr.pre.i.i34, align 8, !tbaa !66, !noalias !70
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !70
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i34) #17, !noalias !70, !inline_history !78
  %i.ei = load ptr, ptr %.pr.pre.i.i34, align 8, !tbaa !66, !noalias !70
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !70
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i34) #17, !noalias !70, !inline_history !78
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !70
  %.not.i9.i.i36 = icmp eq i8 %i.el, 0
  br i1 %.not.i9.i.i36, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.em = add nsw i32 %i.ed, -1
  store i32 %i.em, ptr %i.ea, align 8, !tbaa !3, !noalias !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37

bb.ak:                                            ; preds = %bb.ai
  %i.en = atomicrmw volatile add ptr %i.ea, i32 -1 acq_rel, align 4, !noalias !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i38 = phi i32 [ %i.ed, %bb.aj ], [ %i.en, %bb.ak ]
  %i.eo = icmp eq i32 %.0.i.i.i.i38, 1
  br i1 %i.eo, label %bb.al, label %bb.am, !prof !69

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i34) #17, !noalias !70
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37, %bb.ah, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i33, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread.i29
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !15, !noalias !70
  %i.ep = load atomic i64, ptr %i.dv acquire, align 8, !noalias !70 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.dv, align 8, !tbaa !63, !noalias !70
  store i32 0, ptr %i.dw, align 4, !tbaa !65, !noalias !70
  %i.es = load ptr, ptr %i.du, align 8, !tbaa !66, !noalias !70
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !70
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #17, !noalias !70, !inline_history !79
  %i.ev = load ptr, ptr %i.du, align 8, !tbaa !66, !noalias !70
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !70
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #17, !noalias !70, !inline_history !79
  br label %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit39

bb.ao:                                            ; preds = %bb.am
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !70
  %.not.i.i6.i30 = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i6.i30, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ez = add nsw i32 %i.er, -1
  store i32 %i.ez, ptr %i.dv, align 8, !tbaa !3, !noalias !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7.i31

bb.aq:                                            ; preds = %bb.ao
  %i.fa = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4, !noalias !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7.i31

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7.i31: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i8.i32 = phi i32 [ %i.er, %bb.ap ], [ %i.fa, %bb.aq ]
  %i.fb = icmp eq i32 %.0.i.i.i8.i32, 1
  br i1 %i.fb, label %bb.ar, label %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit39, !prof !69

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7.i31
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #17, !noalias !70
  br label %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit39

_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit39: ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7.i31, %bb.ar
  %.not10.i.i.i.i = icmp eq ptr %i.de, %i.bl
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit39, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i ], [ %i.dr, %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit39 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i ], [ %i.de, %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit39 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !81), !noalias !70
  call void @llvm.experimental.noalias.scope.decl(metadata !84), !noalias !70
  %i.fc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.fd = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !16, !alias.scope !84, !noalias !86
  store ptr null, ptr %i.fc, align 8, !tbaa !15, !alias.scope !84, !noalias !86
  store <2 x ptr> %i.fd, ptr %.012.i.i.i.i, align 8, !tbaa !16, !alias.scope !81, !noalias !87
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !10, !alias.scope !84, !noalias !86
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.fe, %i.bl
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !88

_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit39
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dr, %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit39 ], [ %i.ff, %.lr.ph.i.i.i.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16.i = icmp eq ptr %i.bl, %i.dd
  br i1 %.not10.i.i.i16.i, label %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i17.i

.lr.ph.i.i.i17.i:                                 ; preds = %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, %.lr.ph.i.i.i17.i
  %.012.i.i.i18.i = phi ptr [ %i.fk, %.lr.ph.i.i.i17.i ], [ %i.fg, %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ] ; 2 uses
  %.0911.i.i.i19.i = phi ptr [ %i.fj, %.lr.ph.i.i.i17.i ], [ %i.bl, %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90), !noalias !70
  call void @llvm.experimental.noalias.scope.decl(metadata !93), !noalias !70
  %i.fh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 8
  %i.fi = load <2 x ptr>, ptr %.0911.i.i.i19.i, align 8, !tbaa !16, !alias.scope !93, !noalias !95
  store ptr null, ptr %i.fh, align 8, !tbaa !15, !alias.scope !93, !noalias !95
  store <2 x ptr> %i.fi, ptr %.012.i.i.i18.i, align 8, !tbaa !16, !alias.scope !90, !noalias !96
  store ptr null, ptr %.0911.i.i.i19.i, align 8, !tbaa !10, !alias.scope !93, !noalias !95
  %i.fj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 16 ; 2 uses
  %.not.i.i.i20.i = icmp eq ptr %i.fj, %i.dd
  br i1 %.not.i.i.i20.i, label %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i17.i, !llvm.loop !88

_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i17.i, %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %.0.lcssa.i.i.i21.i = phi ptr [ %i.fg, %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ], [ %i.fk, %.lr.ph.i.i.i17.i ] ; 2 uses
  %.not.i23.i = icmp eq ptr %i.de, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE17_M_realloc_insertIJSt10unique_ptrIS3_St14default_deleteIS3_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  %i.fl = load ptr, ptr %i.bq, align 8, !tbaa !36, !noalias !70
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fm, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.fn) #20, !noalias !70
  br label %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE17_M_realloc_insertIJSt10unique_ptrIS3_St14default_deleteIS3_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE17_M_realloc_insertIJSt10unique_ptrIS3_St14default_deleteIS3_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, %bb.as
  store ptr %i.dr, ptr %i.av, align 8, !tbaa !80, !noalias !70
  store ptr %.0.lcssa.i.i.i21.i, ptr %i.ax, align 8, !tbaa !18, !noalias !70
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dn
  store ptr %i.fo, ptr %i.bq, align 8, !tbaa !36, !noalias !70
  br label %_ZNSt10unique_ptrIN6hermes2vm20ChromeStackFrameNodeESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN6hermes2vm20ChromeStackFrameNodeESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit, %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE17_M_realloc_insertIJSt10unique_ptrIS3_St14default_deleteIS3_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit
  %i.fp = phi ptr [ %i.dc, %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E.exit ], [ %.0.lcssa.i.i.i21.i, %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE17_M_realloc_insertIJSt10unique_ptrIS3_St14default_deleteIS3_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !10, !noalias !70 ; 3 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fp, i64 -8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !15, !noalias !70 ; 4 uses
  %.not.i.i.i10.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i10.i, label %_ZN6hermes2vm20ChromeStackFrameNode17findOrAddNewChildERNS0_22ChromeFrameIdGeneratorERKNS0_16SamplingProfiler10StackFrameE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt10unique_ptrIN6hermes2vm20ChromeStackFrameNodeESt14default_deleteIS2_EED2Ev.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 3 uses
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17, !noalias !70
  %.not.i.i.i.i11.i = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i11.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fw = load i32, ptr %i.fu, align 4, !tbaa !3, !noalias !70
  %i.fx = add nsw i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fu, align 4, !tbaa !3, !noalias !70
  br label %_ZN6hermes2vm20ChromeStackFrameNode17findOrAddNewChildERNS0_22ChromeFrameIdGeneratorERKNS0_16SamplingProfiler10StackFrameE.exit

bb.av:                                            ; preds = %bb.at
  %i.fy = atomicrmw volatile add ptr %i.fu, i32 1 acq_rel, align 4, !noalias !70 ; 0 uses
  br label %_ZN6hermes2vm20ChromeStackFrameNode17findOrAddNewChildERNS0_22ChromeFrameIdGeneratorERKNS0_16SamplingProfiler10StackFrameE.exit

_ZN6hermes2vm20ChromeStackFrameNode17findOrAddNewChildERNS0_22ChromeFrameIdGeneratorERKNS0_16SamplingProfiler10StackFrameE.exit: ; preds = %bb.m, %bb.o, %bb.p, %_ZNSt10unique_ptrIN6hermes2vm20ChromeStackFrameNodeESt14default_deleteIS2_EED2Ev.exit.i, %bb.au, %bb.av
end_hunk_0
begin_hunk_1_@_ZNK6hermes2vm16SamplingProfiler21getNativeFunctionNameB5cxx11ERKNS1_10StackFrameE:bb.a
  store i8 0, ptr %i.w, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.h

.thread:                                          ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.y = load i64, ptr %2, align 8, !tbaa !17
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !333
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !337
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !352, !nonnull !183, !align !184
  tail call void @_ZN6hermes2vm8JSObject15getNameIfExistsB5cxx11ERNS0_11PointerBaseE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(20) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %i.ad) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes2vmL19getSuspendFrameNameB5cxx11ERKNS0_16SamplingProfiler16SuspendFrameInfoE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  switch i32 %.0.val, label %.fold.split [
    i32 0, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %.8.val, align 8, !tbaa !114
  br label %.fold.split

bb.c:                                             ; preds = %bb.a
  br label %.fold.split

.fold.split:                                      ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ @.str.44, %bb.a ], [ @.str.45, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !129
  store i8 91, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.c, align 8, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %i.d, align 1, !tbaa !17
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #17, !noalias !381 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 4611686018427387902
  br i1 %i.f, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %.fold.split
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #19, !noalias !381
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.fold.split
  %i.g = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %.0, i64 noundef %i.e) #17, !noalias !381 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !129, !alias.scope !381
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !114  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.thread, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !132  ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.q, align 8, !tbaa !132, !alias.scope !381
  store ptr %i.j, ptr %i.g, align 8, !tbaa !114
  store i64 0, ptr %i.p, align 8, !tbaa !132
  store i8 0, ptr %i.j, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.i, ptr %1, align 8, !tbaa !114, !alias.scope !381
  %i.r = load i64, ptr %i.j, align 8, !tbaa !17
  store i64 %i.r, ptr %i.h, align 8, !tbaa !17, !alias.scope !381
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !132 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.pre.i, ptr %i.t, align 8, !tbaa !132, !alias.scope !381
  store ptr %i.j, ptr %i.g, align 8, !tbaa !114
  store i64 0, ptr %i.s, align 8, !tbaa !132
  store i8 0, ptr %i.j, align 8, !tbaa !17
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.u = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.u, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #19, !noalias !384
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.thread, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.v = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, i64 noundef 1) #17, !noalias !384 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !129, !alias.scope !384
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !114  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !132 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6
  store ptr %i.x, ptr %0, align 8, !tbaa !114, !alias.scope !384
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !17
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !17, !alias.scope !384
  %.phi.trans.insert.i8 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i9 = load i64, ptr %.phi.trans.insert.i8, align 8, !tbaa !132
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit10

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit10: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !132, !alias.scope !384
  store ptr %i.y, ptr %i.v, align 8, !tbaa !114
  store i64 0, ptr %i.ag, align 8, !tbaa !132
  store i8 0, ptr %i.y, align 8, !tbaa !17
  %i.ai = load ptr, ptr %1, align 8, !tbaa !114   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.h
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit10
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !17
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.am = load ptr, ptr %2, align 8, !tbaa !114   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.b
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNK6hermes3hbc9DebugInfo21getLocationForAddressEjj(ptr dead_on_unwind writable sret(%"class.hermes::OptValue") align 4, ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZNK6hermes3hbc20BCProviderFromBuffer32getExceptionTableAndDebugOffsetsEj(ptr dead_on_unwind writable sret(%"struct.std::pair.115") align 8, ptr noundef nonnull align 8 dereferenceable(376), i32 noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes3hbc18getStringFromEntryERKNS_16StringTableEntryEN4llvh8ArrayRefIhEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(8), ptr, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZN6hermes2vm15getFunctionNameEPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEEPvRNS0_7RuntimeENS0_10NativeArgsEE(ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm8JSObject15getNameIfExistsB5cxx11ERNS0_11PointerBaseE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(20), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE17_M_realloc_insertIJSt10unique_ptrIS3_St14default_deleteIS3_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !80     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #19
  unreachable

_ZNKSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #18 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !16, !alias.scope !390, !noalias !387
  store ptr null, ptr %i.r, align 8, !tbaa !15, !alias.scope !390, !noalias !387
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !16, !alias.scope !387, !noalias !390
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !10, !alias.scope !390, !noalias !387
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !88

_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.z, %.lr.ph.i.i.i17 ], [ %i.v, %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.y, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !16, !alias.scope !395, !noalias !392
  store ptr null, ptr %i.w, align 8, !tbaa !15, !alias.scope !395, !noalias !392
  store <2 x ptr> %i.x, ptr %.012.i.i.i18, align 8, !tbaa !16, !alias.scope !392, !noalias !395
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !10, !alias.scope !395, !noalias !392
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !88

_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.v, %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.z, %.lr.ph.i.i.i17 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #20
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN6hermes2vm20ChromeStackFrameNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !80
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE17_M_realloc_insertIJRKmRKNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEERSt10shared_ptrINS1_20ChromeStackFrameNodeEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !109    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #19
  unreachable

_ZNKSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %5 = sdiv exact i64 %i.f, 40                    ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %5, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i, %5        ; 2 uses
  %7 = icmp ult i64 %6, %5
  %8 = tail call i64 @llvm.umin.i64(i64 %6, i64 230584300921369395)
  %9 = select i1 %7, i64 230584300921369395, i64 %8 ; 3 uses
  %10 = ptrtoint ptr %1 to i64
  %11 = sub i64 %10, %i.e
  %.not.i = icmp eq i64 %9, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6hermes2vm17ChromeSampleEventESaIS2_EE11_M_allocateEm.exit, label %12

12:                                               ; preds = %_ZNKSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE12_M_check_lenEmPKc.exit
  %13 = mul nuw nsw i64 %9, 40
  %14 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #18
  br label %_ZNSt12_Vector_baseIN6hermes2vm17ChromeSampleEventESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6hermes2vm17ChromeSampleEventESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE12_M_check_lenEmPKc.exit, %12
  %15 = phi ptr [ %14, %12 ], [ null, %_ZNKSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 %11 ; 12 uses
  %i.i = load i64, ptr %2, align 8, !tbaa !100    ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !100 ; 3 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !10     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15   ; 10 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  br i1 %.not.i.i.i, label %_ZN6hermes2vm17ChromeSampleEventC2EmNSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEESt10shared_ptrINS0_20ChromeStackFrameNodeEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN6hermes2vm17ChromeSampleEventESaIS2_EE11_M_allocateEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 10 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.t = load i32, ptr %i.n, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.n, align 4, !tbaa !3
  store i32 -1, ptr %i.h, align 8, !tbaa !102
  store i32 1, ptr %i.p, align 4, !tbaa !106
  store i64 %i.i, ptr %i.q, align 8, !tbaa !107
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 8, !tbaa !100
  store ptr %i.j, ptr %i.r, align 8, !tbaa !10
  store ptr %i.l, ptr %i.s, align 8, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %i.w = icmp eq i8 %.pre, 0
  store i32 -1, ptr %i.h, align 8, !tbaa !102
  store i32 1, ptr %i.p, align 4, !tbaa !106
  store i64 %i.i, ptr %i.q, align 8, !tbaa !107
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 8, !tbaa !100
  store ptr %i.j, ptr %i.r, align 8, !tbaa !10
  store ptr %i.l, ptr %i.s, align 8, !tbaa !15
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.x = load i32, ptr %i.n, align 4, !tbaa !3
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.n, align 4, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.z = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

_ZN6hermes2vm17ChromeSampleEventC2EmNSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEESt10shared_ptrINS0_20ChromeStackFrameNodeEE.exit: ; preds = %_ZNSt12_Vector_baseIN6hermes2vm17ChromeSampleEventESaIS2_EE11_M_allocateEm.exit
  store i32 -1, ptr %i.h, align 8, !tbaa !102
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 1, ptr %i.aa, align 4, !tbaa !106
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.i, ptr %i.ab, align 8, !tbaa !107
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.j, ptr %i.ac, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.ad, align 8, !tbaa !15
  br label %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ae = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.n, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !65
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #17, !inline_history !68
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #17, !inline_history !68
  br label %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i19 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aq = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.ag, %bb.j ], [ %i.aq, %bb.k ]
  %i.ar = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ar, label %bb.l, label %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #17
  br label %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6hermes2vm17ChromeSampleEventC2EmNSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEESt10shared_ptrINS0_20ChromeStackFrameNodeEE.exit, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %15, %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 24, i1 false), !alias.scope !402
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !16, !alias.scope !400, !noalias !397
  store ptr null, ptr %i.au, align 8, !tbaa !15, !alias.scope !400, !noalias !397
  store <2 x ptr> %i.av, ptr %i.as, align 8, !tbaa !16, !alias.scope !397, !noalias !400
  store ptr null, ptr %i.at, align 8, !tbaa !10, !alias.scope !400, !noalias !397
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !403

_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0.lcssa.i.i.i = phi ptr [ %15, %_ZNSt12__shared_ptrIN6hermes2vm20ChromeStackFrameNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.ax, %.lr.ph.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i21 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i21, label %_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27, label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i22
  %.012.i.i.i23 = phi ptr [ %i.be, %.lr.ph.i.i.i22 ], [ %i.ay, %_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 3 uses
  %.0911.i.i.i24 = phi ptr [ %i.bd, %.lr.ph.i.i.i22 ], [ %1, %_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i23, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i24, i64 24, i1 false), !alias.scope !409
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i23, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i24, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i24, i64 32
  %i.bc = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !16, !alias.scope !407, !noalias !404
  store ptr null, ptr %i.bb, align 8, !tbaa !15, !alias.scope !407, !noalias !404
  store <2 x ptr> %i.bc, ptr %i.az, align 8, !tbaa !16, !alias.scope !404, !noalias !407
  store ptr null, ptr %i.ba, align 8, !tbaa !10, !alias.scope !407, !noalias !404
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i24, i64 40 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i23, i64 40 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27, label %.lr.ph.i.i.i22, !llvm.loop !403

_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27: ; preds = %.lr.ph.i.i.i22, %_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.ay, %_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.be, %.lr.ph.i.i.i22 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseIN6hermes2vm17ChromeSampleEventESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !99
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #20
  br label %_ZNSt12_Vector_baseIN6hermes2vm17ChromeSampleEventESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6hermes2vm17ChromeSampleEventESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6hermes2vm17ChromeSampleEventESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27, %bb.m
  store ptr %15, ptr %0, align 8, !tbaa !109
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8, !tbaa !98
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %15, i64 %9
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !99
  ret void
}

declare void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #2

declare void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6hermes2vm20ChromeStackFrameNodeEPS3_EZNKS1_21ChromeTraceSerializer20serializeStackFramesERNS0_11JSONEmitterEE3$_0E9_M_invokeERKSt9_Any_dataS4_OS5_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.115", align 8    ; 4 uses
  %4 = alloca %"struct.std::pair.115", align 8    ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.llvh::raw_string_ostream", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.hermes::OptValue", align 4 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.hermes::OptValue", align 4 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %.val = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !410, !nonnull !183, !align !184
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.d = load i32, ptr %1, align 8, !tbaa !25     ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.e = icmp ult i32 %i.d, 10
  br i1 %i.e, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %bb.g
  %.02230.i.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.d, %bb.a ] ; 5 uses
  %.02329.i.i.i.i.i = phi i32 [ %i.m, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %i.f = icmp ult i32 %.02230.i.i.i.i.i, 100
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.g = add i32 %.02329.i.i.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.h = icmp ult i32 %.02230.i.i.i.i.i, 1000
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %.02329.i.i.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %.02230.i.i.i.i.i, 10000
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = add i32 %.02329.i.i.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.l = udiv i32 %.02230.i.i.i.i.i, 10000
  %i.m = add i32 %.02329.i.i.i.i.i, 4             ; 2 uses
  %i.n = icmp ult i32 %.02230.i.i.i.i.i, 100000
  br i1 %i.n, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !163

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.g, %bb.b ], [ %i.i, %bb.d ], [ 1, %bb.a ], [ %i.m, %bb.g ]
  %i.o = zext i32 %.0.i.i.i.i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !129, !alias.scope !412
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.o, i8 noundef signext 0) #17
  %i.q = load ptr, ptr %5, align 8, !tbaa !114, !alias.scope !412 ; 4 uses
  %i.r = icmp ugt i32 %i.d, 99
  br i1 %i.r, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !132, !alias.scope !412
  %i.u = trunc i64 %i.t to i32
  %i.v = add i32 %i.u, -1
  br label %.lr.ph.i2.i.i.i.i

.lr.ph.i2.i.i.i.i:                                ; preds = %.lr.ph.i2.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.020.i.i.i.i.i = phi i32 [ %i.y, %.lr.ph.i2.i.i.i.i ], [ %i.d, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.01819.i.i.i.i.i = phi i32 [ %i.aj, %.lr.ph.i2.i.i.i.i ], [ %i.v, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.w = urem i32 %.020.i.i.i.i.i, 100
  %i.x = shl nuw nsw i32 %i.w, 1
  %i.y = udiv i32 %.020.i.i.i.i.i, 100            ; 2 uses
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17, !noalias !412
  %i.ad = zext i32 %.01819.i.i.i.i.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ad
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !17
  %i.af = load i8, ptr %i.aa, align 2, !tbaa !17, !noalias !412
  %i.ag = add i32 %.01819.i.i.i.i.i, -1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ah
  store i8 %i.af, ptr %i.ai, align 1, !tbaa !17
  %i.aj = add i32 %.01819.i.i.i.i.i, -2
  %i.ak = icmp ugt i32 %.020.i.i.i.i.i, 9999
  br i1 %i.ak, label %.lr.ph.i2.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !164

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i2.i.i.i.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.d, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i ], [ %i.y, %.lr.ph.i2.i.i.i.i ] ; 3 uses
  %i.al = icmp samesign ugt i32 %.0.lcssa.i.i.i.i.i, 9
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.am = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17, !noalias !412
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !17
  %i.as = load i8, ptr %i.ao, align 2, !tbaa !17, !noalias !412
  br label %_ZNSt7__cxx119to_stringEj.exit.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.at = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i to i8
  %i.au = or disjoint i8 %i.at, 48
  br label %_ZNSt7__cxx119to_stringEj.exit.i.i.i

_ZNSt7__cxx119to_stringEj.exit.i.i.i:             ; preds = %bb.i, %bb.h
  %storemerge.i.i.i.i.i = phi i8 [ %i.au, %bb.i ], [ %i.as, %bb.h ]
  store i8 %storemerge.i.i.i.i.i, ptr %i.q, align 1, !tbaa !17
  %i.av = load ptr, ptr %5, align 8, !tbaa !114
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !132
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr %i.av, i64 %i.ax) #17
  %i.ay = load ptr, ptr %5, align 8, !tbaa !114   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.p
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx119to_stringEj.exit.i.i.i
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !17
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx119to_stringEj.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.not.i.i.i = icmp eq ptr %.val, null
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !410, !nonnull !183, !align !184
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bc) #17
  br i1 %.not.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !410, !nonnull !183, !align !184 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.bd, ptr nonnull @.str, i64 4) #17
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.bd, ptr nonnull @.str.24, i64 6) #17
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !410, !nonnull !183, !align !184 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr nonnull @.str.51, i64 8) #17
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr nonnull @.str.52, i64 4) #17
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !410, !nonnull !183, !align !184
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bf) #17
  br label %"_ZSt10__invoke_rIvRZNK6hermes2vm21ChromeTraceSerializer20serializeStackFramesERNS0_11JSONEmitterEE3$_0JRKNS1_20ChromeStackFrameNodeEPS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.bg, ptr %6, align 8, !tbaa !129
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 11 uses
  store i64 0, ptr %i.bh, align 8, !tbaa !132
  store i8 0, ptr %i.bg, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.bi, ptr %7, align 8, !tbaa !129
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !132
  store i8 0, ptr %i.bi, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !232
  switch i32 %i.bm, label %bb.dn [
    i32 0, label %bb.l
    i32 1, label %._crit_edge.i.i151.i.i.i
    i32 2, label %._crit_edge.i.i165.i.i.i
    i32 3, label %bb.dh
  ]

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !235 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 32
end_hunk_1
