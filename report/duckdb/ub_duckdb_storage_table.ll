inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 650
loop-unroll.NumUnrolled: 660
begin_hunk_0_@_ZN6duckdb13ColumnSegment15FilterSelectionERNS_15SelectionVectorERNS_6VectorERNS_19UnifiedVectorFormatERKNS_11TableFilterERNS_16TableFilterStateEmRm:bb.a

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %_ZN6duckdbL22TemplatedNullSelectionILb1EEEmRNS_19UnifiedVectorFormatERNS_15SelectionVectorERm.exit

bb.t:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.u:                                             ; preds = %.lr.ph482, %_ZN6duckdb15SelectionVectorD2Ev.exit306
  %.0223481 = phi i64 [ 0, %.lr.ph482 ], [ %.1224.lcssa, %_ZN6duckdb15SelectionVectorD2Ev.exit306 ] ; 5 uses
  %.0255480 = phi i64 [ 0, %.lr.ph482 ], [ %i.ek, %_ZN6duckdb15SelectionVectorD2Ev.exit306 ] ; 3 uses
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_11TableFilterESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %.0255480)
          to label %bb.v unwind label %bb.ar

bb.v:                                             ; preds = %bb.u
  %i.bq = invoke noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.w unwind label %bb.ar

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.br = load ptr, ptr %i.t, align 8, !tbaa !1184 ; 2 uses
  %i.bs = load ptr, ptr %i.u, align 8, !tbaa !93  ; 4 uses
  %.not.i.i.i.i.i.i294 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i294, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i296.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i.i.i295 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i295, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i296, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i296.thread

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i296.thread: ; preds = %bb.y, %bb.w
  store ptr %i.br, ptr %i.s, align 8, !tbaa !1185
  store ptr %i.bs, ptr %i.v, align 8, !tbaa !93
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit301

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i296: ; preds = %bb.x
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !93  ; 8 uses
  store ptr %i.br, ptr %i.s, align 8, !tbaa !1185
  store ptr %i.bs, ptr %i.v, align 8, !tbaa !93
  %.not.i.i.i.i.i297 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i.i297, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit301, label %bb.z

bb.z:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i296
  %i.by = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.by, align 8, !tbaa !94
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !96
  %i.cd = load ptr, ptr %.pre, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #37, !inline_history !1183
  %i.cg = load ptr, ptr %.pre, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #37, !inline_history !1183
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit301

bb.ab:                                            ; preds = %bb.z
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i5.i.i298 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i.i5.i.i298, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i299

bb.ad:                                            ; preds = %bb.ab
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i299

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i299: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i300 = phi i32 [ %i.cb, %bb.ac ], [ %i.cl, %bb.ad ]
  %i.cm = icmp eq i32 %.0.i.i.i.i.i.i.i300, 1
  br i1 %i.cm, label %bb.ae, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit301, !prof !99

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i299
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #37
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit301

_ZN6duckdb15SelectionVector10InitializeERKS0_.exit301: ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i296.thread, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i296, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i299, %bb.ae
  %i.cn = load ptr, ptr %0, align 8, !tbaa !152
  store ptr %i.cn, ptr %10, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.co = load i64, ptr %6, align 8, !tbaa !24
  store i64 %i.co, ptr %i.a, align 8, !tbaa !24
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16TableFilterStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 noundef %.0255480)
          to label %bb.af unwind label %bb.as

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit301
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16TableFilterStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %bb.ag unwind label %bb.as

bb.ag:                                            ; preds = %bb.af
  %i.cr = invoke noundef i64 @_ZN6duckdb13ColumnSegment15FilterSelectionERNS_15SelectionVectorERNS_6VectorERNS_19UnifiedVectorFormatERKNS_11TableFilterERNS_16TableFilterStateEmRm(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(73) %2, ptr noundef nonnull align 8 dereferenceable(9) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.cq, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.preheader unwind label %bb.as ; 7 uses

.preheader:                                       ; preds = %bb.ag
  %.not488 = icmp eq i64 %i.cr, 0
  br i1 %.not488, label %._crit_edge468, label %.lr.ph467

.lr.ph467:                                        ; preds = %.preheader
  %i.cs = load ptr, ptr %10, align 8, !tbaa !152  ; 5 uses
  %.not.i = icmp eq ptr %i.cs, null               ; 4 uses
  %i.ct = load ptr, ptr %9, align 8
  %.fr = freeze ptr %i.ct                         ; 5 uses
  %.not.i307 = icmp eq ptr %.fr, null
  br i1 %.not.i307, label %.lr.ph467.split.us.preheader, label %.lr.ph467.split

.lr.ph467.split.us.preheader:                     ; preds = %.lr.ph467
  %xtraiter737 = and i64 %i.cr, 1
  %i.cu = icmp eq i64 %i.cr, 1
  br i1 %i.cu, label %.lr.ph467.split.us.epil.preheader, label %.lr.ph467.split.us.preheader.new

.lr.ph467.split.us.preheader.new:                 ; preds = %.lr.ph467.split.us.preheader
  %unroll_iter741 = and i64 %i.cr, -2
  br label %.lr.ph467.split.us

.lr.ph467.split.us:                               ; preds = %.loopexit.split.us.us.1, %.lr.ph467.split.us.preheader.new
  %.1224465.us = phi i64 [ %.0223481, %.lr.ph467.split.us.preheader.new ], [ %.2.us.1, %.loopexit.split.us.us.1 ] ; 5 uses
  %.0257464.us = phi i64 [ 0, %.lr.ph467.split.us.preheader.new ], [ %i.dk, %.loopexit.split.us.us.1 ] ; 4 uses
  %niter742 = phi i64 [ 0, %.lr.ph467.split.us.preheader.new ], [ %niter742.next.1, %.loopexit.split.us.us.1 ]
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph467.split.us
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.0257464.us
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.ah, %.lr.ph467.split.us
  %i.cy = phi i64 [ %i.cx, %bb.ah ], [ %.0257464.us, %.lr.ph467.split.us ]
  %.not282461.us.not = icmp eq i64 %.1224465.us, 0
  %i.cz = add i64 %.1224465.us, -1
  %.not586 = icmp ugt i64 %i.cy, %i.cz
  %or.cond = select i1 %.not282461.us.not, i1 true, i1 %.not586
  br i1 %or.cond, label %.critedge.us, label %.loopexit.split.us.us

.critedge.us:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.da = add i64 %.1224465.us, 1
  %i.db = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.1224465.us
  store i32 poison, ptr %i.db, align 4, !tbaa !3
  br label %.loopexit.split.us.us

.loopexit.split.us.us:                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, %.critedge.us
  %.2.us = phi i64 [ %i.da, %.critedge.us ], [ %.1224465.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 5 uses
  %i.dc = or disjoint i64 %.0257464.us, 1         ; 2 uses
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1, label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split.us.us
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = zext i32 %i.de to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.ai, %.loopexit.split.us.us
  %i.dg = phi i64 [ %i.df, %bb.ai ], [ %i.dc, %.loopexit.split.us.us ]
  %.not282461.us.not.1 = icmp eq i64 %.2.us, 0
  %i.dh = add i64 %.2.us, -1
  %.not586.1 = icmp ugt i64 %i.dg, %i.dh
  %or.cond.1 = select i1 %.not282461.us.not.1, i1 true, i1 %.not586.1
  br i1 %or.cond.1, label %.critedge.us.1, label %.loopexit.split.us.us.1

.critedge.us.1:                                   ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.di = add i64 %.2.us, 1
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.2.us
  store i32 poison, ptr %i.dj, align 4, !tbaa !3
  br label %.loopexit.split.us.us.1

.loopexit.split.us.us.1:                          ; preds = %.critedge.us.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %.2.us.1 = phi i64 [ %i.di, %.critedge.us.1 ], [ %.2.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.dk = add nuw i64 %.0257464.us, 2             ; 2 uses
  %niter742.next.1 = add nuw i64 %niter742, 2     ; 2 uses
  %niter742.ncmp.1 = icmp eq i64 %niter742.next.1, %unroll_iter741
  br i1 %niter742.ncmp.1, label %._crit_edge468.loopexit.unr-lcssa, label %.lr.ph467.split.us, !llvm.loop !1186

.lr.ph467.split:                                  ; preds = %.lr.ph467
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us473, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us473: ; preds = %.lr.ph467.split, %.loopexit.split.us
  %.1224465.us471 = phi i64 [ %.2.us476, %.loopexit.split.us ], [ %.0223481, %.lr.ph467.split ] ; 5 uses
  %.0257464.us472 = phi i64 [ %i.dm, %.loopexit.split.us ], [ 0, %.lr.ph467.split ] ; 3 uses
  %.not282461.us474.not = icmp eq i64 %.1224465.us471, 0
  br i1 %.not282461.us474.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit308.us, label %.critedge.us475.a

bb.aj:                                            ; preds = %.critedge.us475.a
  %i.dl = add nuw i64 %.0259462.us, 1             ; 2 uses
  %exitcond510.not = icmp eq i64 %i.dl, %.1224465.us471
  br i1 %exitcond510.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit308.us, label %.critedge.us475.a, !llvm.loop !1187

.critedge.us475.a:                                ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us473, %bb.aj
  %.0259462.us = phi i64 [ %i.dl, %bb.aj ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us473 ] ; 2 uses
  %23 = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %.0259462.us
  %24 = load i32, ptr %23, align 4, !tbaa !3
  %25 = zext i32 %24 to i64
  %26 = icmp eq i64 %.0257464.us472, %25
  br i1 %26, label %.loopexit.split.us, label %bb.aj

_ZNK6duckdb15SelectionVector9get_indexEm.exit308.us: ; preds = %bb.aj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us473
  %27 = add i64 %.1224465.us471, 1
  %28 = trunc i64 %.0257464.us472 to i32
  %29 = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %.1224465.us471
  store i32 %28, ptr %29, align 4, !tbaa !3
  br label %.loopexit.split.us

.loopexit.split.us:                               ; preds = %.critedge.us475.a, %_ZNK6duckdb15SelectionVector9get_indexEm.exit308.us
  %.2.us476 = phi i64 [ %27, %_ZNK6duckdb15SelectionVector9get_indexEm.exit308.us ], [ %.1224465.us471, %.critedge.us475.a ] ; 2 uses
  %i.dm = add nuw i64 %.0257464.us472, 1          ; 2 uses
  %exitcond511.not = icmp eq i64 %i.dm, %i.cr
  br i1 %exitcond511.not, label %._crit_edge468, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us473, !llvm.loop !1186

._crit_edge468.loopexit.unr-lcssa:                ; preds = %.loopexit.split.us.us.1
  %lcmp.mod738.not = icmp eq i64 %xtraiter737, 0
  br i1 %lcmp.mod738.not, label %._crit_edge468, label %.lr.ph467.split.us.epil.preheader

.lr.ph467.split.us.epil.preheader:                ; preds = %._crit_edge468.loopexit.unr-lcssa, %.lr.ph467.split.us.preheader
  %.1224465.us.epil.init = phi i64 [ %.0223481, %.lr.ph467.split.us.preheader ], [ %.2.us.1, %._crit_edge468.loopexit.unr-lcssa ] ; 5 uses
  %.0257464.us.epil.init = phi i64 [ 0, %.lr.ph467.split.us.preheader ], [ %i.dk, %._crit_edge468.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod740 = trunc i64 %i.cr to i1
  call void @llvm.assume(i1 %lcmp.mod740)
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph467.split.us.epil.preheader
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.0257464.us.epil.init
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = zext i32 %i.do to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil: ; preds = %bb.ak, %.lr.ph467.split.us.epil.preheader
  %i.dq = phi i64 [ %i.dp, %bb.ak ], [ %.0257464.us.epil.init, %.lr.ph467.split.us.epil.preheader ]
  %.not282461.us.not.epil = icmp eq i64 %.1224465.us.epil.init, 0
  %i.dr = add i64 %.1224465.us.epil.init, -1
  %.not586.epil = icmp ugt i64 %i.dq, %i.dr
  %or.cond.epil = select i1 %.not282461.us.not.epil, i1 true, i1 %.not586.epil
  br i1 %or.cond.epil, label %.critedge.us.epil, label %._crit_edge468

.critedge.us.epil:                                ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil
  %i.ds = add i64 %.1224465.us.epil.init, 1
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.1224465.us.epil.init
  store i32 poison, ptr %i.dt, align 4, !tbaa !3
  br label %._crit_edge468

._crit_edge468:                                   ; preds = %.loopexit.split, %.loopexit.split.us, %._crit_edge468.loopexit.unr-lcssa, %.critedge.us.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil, %.preheader
  %.1224.lcssa = phi i64 [ %.0223481, %.preheader ], [ %.1224465.us.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil ], [ %.2.us476, %.loopexit.split.us ], [ %.2.us.1, %._crit_edge468.loopexit.unr-lcssa ], [ %i.ds, %.critedge.us.epil ], [ %.2, %.loopexit.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.du = load ptr, ptr %i.v, align 8, !tbaa !93  ; 8 uses
  %.not.i.i.i.i302 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i302, label %_ZN6duckdb15SelectionVectorD2Ev.exit306, label %bb.al

bb.al:                                            ; preds = %._crit_edge468
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.dv, align 8, !tbaa !94
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !96
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #37, !inline_history !308
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #37, !inline_history !308
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit306

bb.an:                                            ; preds = %bb.al
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i303 = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i.i.i303, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i304

bb.ap:                                            ; preds = %bb.an
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i304

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i304: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i305 = phi i32 [ %i.dy, %bb.ao ], [ %i.ei, %bb.ap ]
  %i.ej = icmp eq i32 %.0.i.i.i.i.i.i305, 1
  br i1 %i.ej, label %bb.aq, label %_ZN6duckdb15SelectionVectorD2Ev.exit306, !prof !99

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i304
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #37
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit306

_ZN6duckdb15SelectionVectorD2Ev.exit306:          ; preds = %._crit_edge468, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i304, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.ek = add nuw i64 %.0255480, 1                ; 2 uses
  %i.el = load ptr, ptr %i.p, align 8, !tbaa !1179
  %i.em = load ptr, ptr %i.o, align 8, !tbaa !1182
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 3
  %i.er = icmp ult i64 %i.ek, %i.eq
  br i1 %i.er, label %bb.u, label %._crit_edge483, !llvm.loop !1188

bb.ar:                                            ; preds = %bb.v, %bb.u
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.as:                                            ; preds = %bb.ag, %bb.af, %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit301
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.au

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph467.split, %.loopexit.split
  %.1224465 = phi i64 [ %.2, %.loopexit.split ], [ %.0223481, %.lr.ph467.split ] ; 5 uses
  %.0257464 = phi i64 [ %i.fc, %.loopexit.split ], [ 0, %.lr.ph467.split ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.0257464
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3  ; 2 uses
  %.not282461.not = icmp eq i64 %.1224465, 0
  br i1 %.not282461.not, label %.critedge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit308

bb.at:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit308
  %i.ew = add nuw i64 %.0259462, 1                ; 2 uses
  %exitcond508.not = icmp eq i64 %i.ew, %.1224465
  br i1 %exitcond508.not, label %.critedge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit308, !llvm.loop !1187

_ZNK6duckdb15SelectionVector9get_indexEm.exit308: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %bb.at
  %.0259462 = phi i64 [ %i.ew, %bb.at ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %.0259462
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = icmp eq i32 %i.ey, %i.ev
  br i1 %i.ez, label %.loopexit.split, label %bb.at

.critedge:                                        ; preds = %bb.at, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.fa = add i64 %.1224465, 1
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %.1224465
  store i32 %i.ev, ptr %i.fb, align 4, !tbaa !3
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit308, %.critedge
  %.2 = phi i64 [ %i.fa, %.critedge ], [ %.1224465, %_ZNK6duckdb15SelectionVector9get_indexEm.exit308 ] ; 2 uses
  %i.fc = add nuw i64 %.0257464, 1                ; 2 uses
  %exitcond509.not = icmp eq i64 %i.fc, %i.cr
  br i1 %exitcond509.not, label %._crit_edge468, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1186

bb.au:                                            ; preds = %bb.ar, %bb.as, %bb.t
  %.pn283.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.t ], [ %i.et, %bb.as ], [ %i.es, %bb.ar ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %common.resume

bb.av:                                            ; preds = %bb.a
  %i.fd = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6duckdb11TableFilter4CastINS_20ConjunctionAndFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %3) ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 24 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !1179
  %i.fh = load ptr, ptr %i.fe, align 8, !tbaa !1182
  %.not486 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not486, label %._crit_edge460, label %.lr.ph459

.lr.ph459:                                        ; preds = %bb.av
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.aw

._crit_edge460:                                   ; preds = %bb.aw, %bb.av
  %i.fj = load i64, ptr %6, align 8, !tbaa !24
  br label %_ZN6duckdbL22TemplatedNullSelectionILb1EEEmRNS_19UnifiedVectorFormatERNS_15SelectionVectorERm.exit

bb.aw:                                            ; preds = %.lr.ph459, %bb.aw
  %.0262457 = phi i64 [ 0, %.lr.ph459 ], [ %i.fp, %bb.aw ] ; 3 uses
  %i.fk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_11TableFilterESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 noundef %.0262457)
  %i.fl = tail call noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
  %i.fm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16TableFilterStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i64 noundef %.0262457)
  %i.fn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16TableFilterStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fm)
  %i.fo = tail call noundef i64 @_ZN6duckdb13ColumnSegment15FilterSelectionERNS_15SelectionVectorERNS_6VectorERNS_19UnifiedVectorFormatERKNS_11TableFilterERNS_16TableFilterStateEmRm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(73) %2, ptr noundef nonnull align 8 dereferenceable(9) %i.fl, ptr noundef nonnull align 8 dereferenceable(8) %i.fn, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 0 uses
  %i.fp = add nuw i64 %.0262457, 1                ; 2 uses
  %i.fq = load ptr, ptr %i.ff, align 8, !tbaa !1179
  %i.fr = load ptr, ptr %i.fe, align 8, !tbaa !1182
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 3
  %i.fw = icmp ult i64 %i.fp, %i.fv
  br i1 %i.fw, label %bb.aw, label %._crit_edge460, !llvm.loop !1189

bb.ax:                                            ; preds = %bb.a
  %i.fx = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb11TableFilter4CastINS_14ConstantFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %3) ; 28 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !438
  switch i8 %i.ga, label %bb.bp [
    i8 2, label %bb.ay
    i8 4, label %bb.az
    i8 6, label %bb.ba
    i8 8, label %bb.bb
    i8 3, label %bb.bc
    i8 5, label %bb.bd
    i8 7, label %bb.be
    i8 9, label %bb.bf
    i8 -52, label %bb.bg
    i8 -53, label %bb.bh
    i8 11, label %bb.bi
end_hunk_0
begin_hunk_1_@_ZN6duckdb14ListColumnData6AppendERNS_14BaseStatisticsERNS_17ColumnAppendStateERNS_6VectorEm:bb.a
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.as)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.p
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !91
  br label %bb.q

bb.q:                                             ; preds = %.noexc, %bb.o
  %i.at = phi ptr [ %.pre.i, %.noexc ], [ %i.ar, %bb.o ]
  %i.au = lshr i64 %.080134, 6
  %i.av = and i64 %.080134, 63
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = xor i64 %i.aw, -1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !24
  %i.ba = and i64 %i.az, %i.ax
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !24
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrIA_mSt14default_deleteIS1_ELb1EEixEm(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %.080134)
          to label %bb.r unwind label %bb.l

bb.r:                                             ; preds = %bb.q
  %i.bc = add i64 %.075136, %i.i
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %.279 = phi i1 [ %spec.select, %bb.m ], [ %.077135, %bb.r ] ; 2 uses
  %.176 = phi i64 [ %i.ap, %bb.m ], [ %.075136, %bb.r ] ; 2 uses
  %i.bd = add nuw i64 %.080134, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2119

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZN6duckdb6VectorC1ERS0_(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %i.o)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  br i1 %.077.lcssa, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %.075.lcssa)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.w

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %bb.v
  br i1 %.not158, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %.lr.ph144

.lr.ph144:                                        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.bf = load ptr, ptr %5, align 8, !tbaa !1193
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !152 ; 3 uses
  %.not.i101 = icmp eq ptr %i.bg, null            ; 2 uses
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !91  ; 3 uses
  %.not.i103 = icmp eq ptr %i.bh, null
  %i.bi = load ptr, ptr %9, align 8               ; 8 uses
  br i1 %.not.i103, label %.lr.ph144.split.us, label %.lr.ph144.split

.lr.ph144.split.us:                               ; preds = %.lr.ph144
  br i1 %.not.i101, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us.us: ; preds = %.lr.ph144.split.us, %.loopexit.us.us
  %.071143.us.us = phi i64 [ %i.br, %.loopexit.us.us ], [ 0, %.lr.ph144.split.us ] ; 2 uses
  %.072142.us.us = phi i64 [ %.173.lcssa.us.us, %.loopexit.us.us ], [ 0, %.lr.ph144.split.us ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.071143.us.us ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !2117 ; 5 uses
  %.not163 = icmp eq i64 %i.bl, 0
  br i1 %.not163, label %.loopexit.us.us, label %.lr.ph140.us.us

scalar.ph250:                                     ; preds = %scalar.ph250.preheader, %scalar.ph250
  %.0139.us.us = phi i64 [ %i.bq, %scalar.ph250 ], [ %.0139.us.us.ph, %scalar.ph250.preheader ] ; 2 uses
  %.173138.us.us = phi i64 [ %i.bp, %scalar.ph250 ], [ %.173138.us.us.ph, %scalar.ph250.preheader ] ; 2 uses
  %i.bm = add i64 %i.bs, %.0139.us.us
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.173138.us.us
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !3
  %i.bp = add i64 %.173138.us.us, 1               ; 2 uses
  %i.bq = add nuw i64 %.0139.us.us, 1             ; 2 uses
  %exitcond176.not = icmp eq i64 %i.bq, %i.bl
  br i1 %exitcond176.not, label %.loopexit.us.us, label %scalar.ph250, !llvm.loop !2120

.loopexit.us.us:                                  ; preds = %scalar.ph250, %middle.block263, %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us.us
  %.173.lcssa.us.us = phi i64 [ %.072142.us.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us.us ], [ %i.bt, %middle.block263 ], [ %i.bp, %scalar.ph250 ]
  %i.br = add nuw i64 %.071143.us.us, 1           ; 2 uses
  %exitcond177.not = icmp eq i64 %i.br, %4
  br i1 %exitcond177.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us.us, !llvm.loop !2121

.lr.ph140.us.us:                                  ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us.us
  %i.bs = load i64, ptr %i.bj, align 8, !tbaa !2115 ; 2 uses
  %min.iters.check251 = icmp ult i64 %i.bl, 8
  br i1 %min.iters.check251, label %scalar.ph250.preheader, label %vector.ph252

vector.ph252:                                     ; preds = %.lr.ph140.us.us
  %n.vec254 = and i64 %i.bl, -8                   ; 4 uses
  %i.bt = add i64 %.072142.us.us, %n.vec254       ; 2 uses
  %broadcast.splatinsert255 = insertelement <4 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat256 = shufflevector <4 x i64> %broadcast.splatinsert255, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op280 = add <4 x i64> splat (i64 4), %broadcast.splat256
  %i.bu = getelementptr [4 x i8], ptr %i.bi, i64 %.072142.us.us
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph252
  %index258 = phi i64 [ 0, %vector.ph252 ], [ %index.next261, %vector.body257 ] ; 2 uses
  %vec.ind259 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph252 ], [ %vec.ind.next262, %vector.body257 ] ; 3 uses
  %i.bv = add <4 x i64> %broadcast.splat256, %vec.ind259
  %.reass281 = add <4 x i64> %vec.ind259, %invariant.op280
  %i.bw = trunc <4 x i64> %i.bv to <4 x i32>
  %i.bx = trunc <4 x i64> %.reass281 to <4 x i32>
  %i.by = getelementptr [4 x i8], ptr %i.bu, i64 %index258 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <4 x i32> %i.bw, ptr %i.by, align 4, !tbaa !3
  store <4 x i32> %i.bx, ptr %i.bz, align 4, !tbaa !3
  %index.next261 = add nuw i64 %index258, 8       ; 2 uses
  %vec.ind.next262 = add nuw <4 x i64> %vec.ind259, splat (i64 8)
  %i.ca = icmp eq i64 %index.next261, %n.vec254
  br i1 %i.ca, label %middle.block263, label %vector.body257, !llvm.loop !2122

middle.block263:                                  ; preds = %vector.body257
  %cmp.n264 = icmp eq i64 %i.bl, %n.vec254
  br i1 %cmp.n264, label %.loopexit.us.us, label %scalar.ph250.preheader

scalar.ph250.preheader:                           ; preds = %.lr.ph140.us.us, %middle.block263
  %.0139.us.us.ph = phi i64 [ 0, %.lr.ph140.us.us ], [ %n.vec254, %middle.block263 ]
  %.173138.us.us.ph = phi i64 [ %.072142.us.us, %.lr.ph140.us.us ], [ %i.bt, %middle.block263 ]
  br label %scalar.ph250

_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us: ; preds = %.lr.ph144.split.us, %.loopexit.us
  %.071143.us = phi i64 [ %i.cm, %.loopexit.us ], [ 0, %.lr.ph144.split.us ] ; 2 uses
  %.072142.us = phi i64 [ %.173.lcssa.us, %.loopexit.us ], [ 0, %.lr.ph144.split.us ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.071143.us
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !2117 ; 5 uses
  %.not162 = icmp eq i64 %i.cg, 0
  br i1 %.not162, label %.loopexit.us, label %.lr.ph140.us

scalar.ph233:                                     ; preds = %scalar.ph233.preheader, %scalar.ph233
  %.0139.us = phi i64 [ %i.cl, %scalar.ph233 ], [ %.0139.us.ph, %scalar.ph233.preheader ] ; 2 uses
  %.173138.us = phi i64 [ %i.ck, %scalar.ph233 ], [ %.173138.us.ph, %scalar.ph233.preheader ] ; 2 uses
  %i.ch = add i64 %i.cn, %.0139.us
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.173138.us
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !3
  %i.ck = add i64 %.173138.us, 1                  ; 2 uses
  %i.cl = add nuw i64 %.0139.us, 1                ; 2 uses
  %exitcond174.not = icmp eq i64 %i.cl, %i.cg
  br i1 %exitcond174.not, label %.loopexit.us, label %scalar.ph233, !llvm.loop !2123

.loopexit.us:                                     ; preds = %scalar.ph233, %middle.block246, %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us
  %.173.lcssa.us = phi i64 [ %.072142.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us ], [ %i.co, %middle.block246 ], [ %i.ck, %scalar.ph233 ]
  %i.cm = add nuw i64 %.071143.us, 1              ; 2 uses
  %exitcond175.not = icmp eq i64 %i.cm, %4
  br i1 %exitcond175.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us, !llvm.loop !2121

.lr.ph140.us:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us
  %i.cn = load i64, ptr %i.ce, align 8, !tbaa !2115 ; 2 uses
  %min.iters.check234 = icmp ult i64 %i.cg, 8
  br i1 %min.iters.check234, label %scalar.ph233.preheader, label %vector.ph235

vector.ph235:                                     ; preds = %.lr.ph140.us
  %n.vec237 = and i64 %i.cg, -8                   ; 4 uses
  %i.co = add i64 %.072142.us, %n.vec237          ; 2 uses
  %broadcast.splatinsert238 = insertelement <4 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat239 = shufflevector <4 x i64> %broadcast.splatinsert238, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op278 = add <4 x i64> splat (i64 4), %broadcast.splat239
  %i.cp = getelementptr [4 x i8], ptr %i.bi, i64 %.072142.us
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph235
  %index241 = phi i64 [ 0, %vector.ph235 ], [ %index.next244, %vector.body240 ] ; 2 uses
  %vec.ind242 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph235 ], [ %vec.ind.next245, %vector.body240 ] ; 3 uses
  %i.cq = add <4 x i64> %broadcast.splat239, %vec.ind242
  %.reass279 = add <4 x i64> %vec.ind242, %invariant.op278
  %i.cr = trunc <4 x i64> %i.cq to <4 x i32>
  %i.cs = trunc <4 x i64> %.reass279 to <4 x i32>
  %i.ct = getelementptr [4 x i8], ptr %i.cp, i64 %index241 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x i32> %i.cr, ptr %i.ct, align 4, !tbaa !3
  store <4 x i32> %i.cs, ptr %i.cu, align 4, !tbaa !3
  %index.next244 = add nuw i64 %index241, 8       ; 2 uses
  %vec.ind.next245 = add nuw <4 x i64> %vec.ind242, splat (i64 8)
  %i.cv = icmp eq i64 %index.next244, %n.vec237
  br i1 %i.cv, label %middle.block246, label %vector.body240, !llvm.loop !2124

middle.block246:                                  ; preds = %vector.body240
  %cmp.n247 = icmp eq i64 %i.cg, %n.vec237
  br i1 %cmp.n247, label %.loopexit.us, label %scalar.ph233.preheader

scalar.ph233.preheader:                           ; preds = %.lr.ph140.us, %middle.block246
  %.0139.us.ph = phi i64 [ 0, %.lr.ph140.us ], [ %n.vec237, %middle.block246 ]
  %.173138.us.ph = phi i64 [ %.072142.us, %.lr.ph140.us ], [ %i.co, %middle.block246 ]
  br label %scalar.ph233

.lr.ph144.split:                                  ; preds = %.lr.ph144
  br i1 %.not.i101, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us147, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit102

_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us147: ; preds = %.lr.ph144.split, %_ZN6duckdb15SelectionVectorC2Em.exit.us151
  %.071143.us145 = phi i64 [ %11, %_ZN6duckdb15SelectionVectorC2Em.exit.us151 ], [ 0, %.lr.ph144.split ] ; 4 uses
  %.072142.us146 = phi i64 [ %.274.us152, %_ZN6duckdb15SelectionVectorC2Em.exit.us151 ], [ 0, %.lr.ph144.split ] ; 5 uses
  %i.cw = lshr i64 %.071143.us145, 6
  %i.cx = and i64 %.071143.us145, 63
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !24
  %i.da = shl nuw i64 1, %i.cx
  %i.db = and i64 %i.cz, %i.da
  %.not128.us = icmp eq i64 %i.db, 0
  br i1 %.not128.us, label %_ZN6duckdb15SelectionVectorC2Em.exit.us151, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit105.thread.us148

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit105.thread.us148: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us147
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.071143.us145 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !2117 ; 5 uses
  %.not161 = icmp eq i64 %i.de, 0
  br i1 %.not161, label %_ZN6duckdb15SelectionVectorC2Em.exit.us151, label %.lr.ph140.us155

scalar.ph216:                                     ; preds = %scalar.ph216.preheader, %scalar.ph216
  %.0139.us151 = phi i64 [ %i.dj, %scalar.ph216 ], [ %.0139.us151.ph, %scalar.ph216.preheader ] ; 2 uses
  %.173138.us152 = phi i64 [ %i.di, %scalar.ph216 ], [ %.173138.us152.ph, %scalar.ph216.preheader ] ; 2 uses
  %i.df = add i64 %i.dk, %.0139.us151
  %i.dg = trunc i64 %i.df to i32
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.173138.us152
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !3
  %i.di = add i64 %.173138.us152, 1               ; 2 uses
  %i.dj = add nuw i64 %.0139.us151, 1             ; 2 uses
  %exitcond172.not = icmp eq i64 %i.dj, %i.de
  br i1 %exitcond172.not, label %_ZN6duckdb15SelectionVectorC2Em.exit.us151, label %scalar.ph216, !llvm.loop !2125

_ZN6duckdb15SelectionVectorC2Em.exit.us151:       ; preds = %scalar.ph216, %middle.block229, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit105.thread.us148, %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us147
  %.274.us152 = phi i64 [ %.072142.us146, %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us147 ], [ %.072142.us146, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit105.thread.us148 ], [ %i.dl, %middle.block229 ], [ %i.di, %scalar.ph216 ]
  %11 = add nuw i64 %.071143.us145, 1             ; 2 uses
  %exitcond173.not = icmp eq i64 %11, %4
  br i1 %exitcond173.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit102.us147, !llvm.loop !2121

.lr.ph140.us155:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit105.thread.us148
  %i.dk = load i64, ptr %i.dc, align 8, !tbaa !2115 ; 2 uses
  %min.iters.check217 = icmp ult i64 %i.de, 8
  br i1 %min.iters.check217, label %scalar.ph216.preheader, label %vector.ph218

vector.ph218:                                     ; preds = %.lr.ph140.us155
  %n.vec220 = and i64 %i.de, -8                   ; 4 uses
  %i.dl = add i64 %.072142.us146, %n.vec220       ; 2 uses
  %broadcast.splatinsert221 = insertelement <4 x i64> poison, i64 %i.dk, i64 0
  %broadcast.splat222 = shufflevector <4 x i64> %broadcast.splatinsert221, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op276 = add <4 x i64> splat (i64 4), %broadcast.splat222
  %i.dm = getelementptr [4 x i8], ptr %i.bi, i64 %.072142.us146
  br label %vector.body223

vector.body223:                                   ; preds = %vector.body223, %vector.ph218
  %index224 = phi i64 [ 0, %vector.ph218 ], [ %index.next227, %vector.body223 ] ; 2 uses
  %vec.ind225 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph218 ], [ %vec.ind.next228, %vector.body223 ] ; 3 uses
  %i.dn = add <4 x i64> %broadcast.splat222, %vec.ind225
  %.reass277 = add <4 x i64> %vec.ind225, %invariant.op276
  %i.do = trunc <4 x i64> %i.dn to <4 x i32>
  %i.dp = trunc <4 x i64> %.reass277 to <4 x i32>
  %i.dq = getelementptr [4 x i8], ptr %i.dm, i64 %index224 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <4 x i32> %i.do, ptr %i.dq, align 4, !tbaa !3
  store <4 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !3
  %index.next227 = add nuw i64 %index224, 8       ; 2 uses
  %vec.ind.next228 = add nuw <4 x i64> %vec.ind225, splat (i64 8)
  %i.ds = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.ds, label %middle.block229, label %vector.body223, !llvm.loop !2126

middle.block229:                                  ; preds = %vector.body223
  %cmp.n230 = icmp eq i64 %i.de, %n.vec220
  br i1 %cmp.n230, label %_ZN6duckdb15SelectionVectorC2Em.exit.us151, label %scalar.ph216.preheader

scalar.ph216.preheader:                           ; preds = %.lr.ph140.us155, %middle.block229
  %.0139.us151.ph = phi i64 [ 0, %.lr.ph140.us155 ], [ %n.vec220, %middle.block229 ]
  %.173138.us152.ph = phi i64 [ %.072142.us146, %.lr.ph140.us155 ], [ %i.dl, %middle.block229 ]
  br label %scalar.ph216

bb.w:                                             ; preds = %bb.v
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.be) #37
  br label %.body

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge:  ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit, %_ZN6duckdb15SelectionVectorC2Em.exit.us151, %.loopexit.us, %.loopexit.us.us, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  invoke void @_ZN6duckdb6Vector5SliceERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %.075.lcssa)
          to label %bb.z unwind label %bb.ag

bb.x:                                             ; preds = %._crit_edge
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.y:                                             ; preds = %bb.t
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

_ZNK6duckdb15SelectionVector9get_indexEm.exit102: ; preds = %.lr.ph144.split, %_ZN6duckdb15SelectionVectorC2Em.exit
  %.071143 = phi i64 [ %i.ew, %_ZN6duckdb15SelectionVectorC2Em.exit ], [ 0, %.lr.ph144.split ] ; 2 uses
  %.072142 = phi i64 [ %.274, %_ZN6duckdb15SelectionVectorC2Em.exit ], [ 0, %.lr.ph144.split ] ; 5 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.071143
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = zext i32 %i.dx to i64                   ; 3 uses
  %i.dz = lshr i64 %i.dy, 6
  %i.ea = and i64 %i.dy, 63
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.dz
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !24
  %i.ed = shl nuw i64 1, %i.ea
  %i.ee = and i64 %i.ec, %i.ed
  %.not128 = icmp eq i64 %i.ee, 0
  br i1 %.not128, label %_ZN6duckdb15SelectionVectorC2Em.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit105.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit105.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit102
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.dy ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !2117 ; 5 uses
  %.not160 = icmp eq i64 %i.eh, 0
  br i1 %.not160, label %_ZN6duckdb15SelectionVectorC2Em.exit, label %.lr.ph140

.lr.ph140:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit105.thread
  %i.ei = load i64, ptr %i.ef, align 8, !tbaa !2115 ; 2 uses
  %min.iters.check = icmp ult i64 %i.eh, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph140
  %n.vec = and i64 %i.eh, -8                      ; 4 uses
  %i.ej = add i64 %.072142, %n.vec                ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.ei, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i64> splat (i64 4), %broadcast.splat
  %i.ek = getelementptr [4 x i8], ptr %i.bi, i64 %.072142
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.el = add <4 x i64> %broadcast.splat, %vec.ind
  %.reass = add <4 x i64> %vec.ind, %invariant.op
  %i.em = trunc <4 x i64> %i.el to <4 x i32>
  %i.en = trunc <4 x i64> %.reass to <4 x i32>
  %i.eo = getelementptr [4 x i8], ptr %i.ek, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <4 x i32> %i.em, ptr %i.eo, align 4, !tbaa !3
  store <4 x i32> %i.en, ptr %i.ep, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !2127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eh, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb15SelectionVectorC2Em.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph140, %middle.block
  %.0139.ph = phi i64 [ 0, %.lr.ph140 ], [ %n.vec, %middle.block ]
  %.173138.ph = phi i64 [ %.072142, %.lr.ph140 ], [ %i.ej, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0139 = phi i64 [ %i.ev, %scalar.ph ], [ %.0139.ph, %scalar.ph.preheader ] ; 2 uses
  %.173138 = phi i64 [ %i.eu, %scalar.ph ], [ %.173138.ph, %scalar.ph.preheader ] ; 2 uses
  %i.er = add i64 %i.ei, %.0139
  %i.es = trunc i64 %i.er to i32
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.173138
  store i32 %i.es, ptr %i.et, align 4, !tbaa !3
  %i.eu = add i64 %.173138, 1                     ; 2 uses
  %i.ev = add nuw i64 %.0139, 1                   ; 2 uses
  %exitcond170.not = icmp eq i64 %i.ev, %i.eh
  br i1 %exitcond170.not, label %_ZN6duckdb15SelectionVectorC2Em.exit, label %scalar.ph, !llvm.loop !2128

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %scalar.ph, %middle.block, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit105.thread, %_ZNK6duckdb15SelectionVector9get_indexEm.exit102
  %.274 = phi i64 [ %.072142, %_ZNK6duckdb15SelectionVector9get_indexEm.exit102 ], [ %.072142, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit105.thread ], [ %i.ej, %middle.block ], [ %i.eu, %scalar.ph ]
  %i.ew = add nuw i64 %.071143, 1                 ; 2 uses
  %exitcond171.not = icmp eq i64 %i.ew, %4
  br i1 %exitcond171.not, label %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit102, !llvm.loop !2121

bb.z:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !93 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 4 uses
  %i.fa = load atomic i64, ptr %i.ez acquire, align 8 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 4294967297
  %i.fc = trunc i64 %i.fa to i32                  ; 2 uses
  br i1 %i.fb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ez, align 8, !tbaa !94
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 0, ptr %i.fd, align 4, !tbaa !96
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !12
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #37, !inline_history !308
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #37, !inline_history !308
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fl = add nsw i32 %i.fc, -1
  store i32 %i.fl, ptr %i.ez, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.fm = atomicrmw volatile add ptr %i.ez, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i = phi i32 [ %i.fc, %bb.ad ], [ %i.fm, %bb.ae ]
  %i.fn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fn, label %bb.af, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !99

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #37
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #37
  br label %.body

.body:                                            ; preds = %bb.w, %bb.ag
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fo, %bb.ag ], [ %i.dt, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.cj

bb.ah:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.fp = invoke noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.fp, ptr %10, align 8, !tbaa !1193
  %i.fq = load ptr, ptr %7, align 8, !tbaa !312
  %i.fr = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !1756
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i8 8, ptr %i.fs, align 8, !tbaa !2129
  %.not = icmp eq i64 %.075.lcssa, 0
  br i1 %.not, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ft = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.al unwind label %bb.ap     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.fu = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb9ListStats13GetChildStatsERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fw = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorINS_17ColumnAppendStateELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, i64 noundef 1)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 144
  %i.fz = load ptr, ptr %i.fy, align 8
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(296) %i.ft, ptr noundef nonnull align 8 dereferenceable(128) %i.fu, ptr noundef nonnull align 8 dereferenceable(48) %i.fw, ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef %.075.lcssa)
          to label %bb.aq unwind label %bb.ap

bb.ao:                                            ; preds = %bb.ah
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci
end_hunk_1
