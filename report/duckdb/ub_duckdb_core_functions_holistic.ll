inline.NumInlined: 37317
inline.NumDeleted: 10738
begin_hunk_0_@_ZN6duckdb17AggregateExecutor12UnaryScatterINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvRNS_6VectorESA_RNS_18AggregateInputDataEm:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.fu = add nsw i32 %i.fl, -1
  store i32 %i.fu, ptr %i.fi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ai:                                            ; preds = %bb.ag
  %i.fv = atomicrmw volatile add ptr %i.fi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.fl, %bb.ah ], [ %i.fv, %bb.ai ]
  %i.fw = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fw, label %bb.aj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !54

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i.i81 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i81, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i85, label %bb.ak

bb.ak:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 4294967297
  %i.gc = trunc i64 %i.ga to i32                  ; 2 uses
  br i1 %i.gb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.fz, align 8, !tbaa !48
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !50
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !51
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #30, !inline_history !53
  %i.gh = load ptr, ptr %i.fy, align 8, !tbaa !51
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #30, !inline_history !53
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i85

bb.am:                                            ; preds = %bb.ak
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i82 = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i.i.i.i82, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gl = add nsw i32 %i.gc, -1
  store i32 %i.gl, ptr %i.fz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i83

bb.ao:                                            ; preds = %bb.am
  %i.gm = atomicrmw volatile add ptr %i.fz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i83

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i83: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i.i84 = phi i32 [ %i.gc, %bb.an ], [ %i.gm, %bb.ao ]
  %i.gn = icmp eq i32 %.0.i.i.i.i.i.i.i84, 1
  br i1 %i.gn, label %bb.ap, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i85, !prof !54

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i83
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i85

_ZN6duckdb15SelectionVectorD2Ev.exit.i85:         ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i83, %bb.al, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i1.i86 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i1.i86, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit90, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i85
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.gq, align 8, !tbaa !48
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !50
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !51
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #30, !inline_history !55
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !51
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #30, !inline_history !55
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit90

bb.as:                                            ; preds = %bb.aq
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i87 = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i.i2.i87, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i88

bb.au:                                            ; preds = %bb.as
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i88

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i88: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i.i4.i89 = phi i32 [ %i.gt, %bb.at ], [ %i.hd, %bb.au ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i.i4.i89, 1
  br i1 %i.he, label %bb.av, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit90, !prof !54

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i88
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit90

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit90:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i85, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i88, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZN6duckdb17QuantileOperation17ConstantOperationINS_8string_tENS_13QuantileStateIS2_NS_18QuantileStringTypeEEENS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.aw:                                            ; preds = %.loopexit.split-lp, %bb.n
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.bl, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn

_ZN6duckdb17QuantileOperation17ConstantOperationINS_8string_tENS_13QuantileStateIS2_NS_18QuantileStringTypeEEENS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit: ; preds = %bb.d, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %bb.f, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit90, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor13UnaryFlatLoopINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvPKT0_RNS_18AggregateInputDataEPPT_RNS_12ValidityMaskEm(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not83 = icmp eq i64 %4, 0
  br i1 %.not83, label %.loopexit, label %.lr.ph81

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %4, 63
  %i.c = lshr i64 %i.b, 6                         ; 2 uses
  %.not82 = icmp eq i64 %i.c, 0
  br i1 %.not82, label %.loopexit, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph79, %.loopexit67
  %.077 = phi i64 [ 0, %.lr.ph79 ], [ %i.bm, %.loopexit67 ] ; 2 uses
  %.sroa.6.076 = phi i64 [ 0, %.lr.ph79 ], [ %.sroa.6.3, %.loopexit67 ] ; 9 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !58     ; 2 uses
  %.not.i42 = icmp eq ptr %i.e, null
  br i1 %.not.i42, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.077
  %i.g = load i64, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %i.h = add i64 %.sroa.6.076, 64
  %i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %4) ; 5 uses
  switch i64 %i.g, label %.preheader68 [
    i64 -1, label %.preheader66
    i64 0, label %.loopexit67
  ]

.preheader68:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.j = icmp ult i64 %.sroa.6.076, %i.i
  br i1 %i.j, label %.lr.ph, label %.loopexit67

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.k = add i64 %.sroa.6.076, 64
  %i.l = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %4)
  br label %.preheader66

.preheader66:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.ph = phi i64 [ %i.l, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.m = icmp ult i64 %.sroa.6.076, %.ph
  br i1 %i.m, label %.lr.ph74, label %.loopexit67

.lr.ph74:                                         ; preds = %.preheader66, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit
  %.sroa.6.173 = phi i64 [ %i.be, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit ], [ %.sroa.6.076, %.preheader66 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.6.173
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8856 ; 4 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.6.173 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.p, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14 ; 2 uses
  %.sroa.010.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.q = icmp ult i32 %.sroa.010.sroa.0.0.extract.trunc.i.i, 13
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph74
  %.sroa.0.sroa.3.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i, 15
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i

bb.e:                                             ; preds = %.lr.ph74
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !679, !nonnull !235, !align !683 ; 2 uses
  %i.s = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !684  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !686  ; 2 uses
  %i.x = add i64 %i.w, %i.s                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !698
  %i.aa = icmp ugt i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_ZN6duckdb8string_tC2EPKcj.exit.i.i

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 noundef %i.s)
  %.pre.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !684 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %.pre4.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !686 ; 2 uses
  %.pre5.i.i.i = add i64 %.pre4.i.i.i, %i.s
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i.i

_ZN6duckdb8string_tC2EPKcj.exit.i.i:              ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i = phi i64 [ %.pre5.i.i.i, %bb.g ], [ %i.x, %bb.f ]
  %i.ab = phi i64 [ %.pre4.i.i.i, %bb.g ], [ %i.w, %bb.f ]
  %i.ac = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !699
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab ; 3 uses
  store i64 %.pre-phi.i.i.i, ptr %i.af, align 8, !tbaa !686
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.sroa.2.0.copyload.i, i64 %i.s, i1 false)
  %i.ah = load i32, ptr %i.ag, align 1
  %5 = zext i32 %i.ah to i64
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i.i, %bb.d
  %.sroa.0.sroa.0.0.insert.ext.pre-phi.i.i = phi i64 [ %i.s, %_ZN6duckdb8string_tC2EPKcj.exit.i.i ], [ %.pre.i.i, %bb.d ]
  %.sroa.0.sroa.3.0.i.i = phi i64 [ %5, %_ZN6duckdb8string_tC2EPKcj.exit.i.i ], [ %.sroa.0.sroa.3.0.extract.shift.i.i, %bb.d ]
  %.sroa.0.sroa.4.0.i.i = phi ptr [ %i.ag, %_ZN6duckdb8string_tC2EPKcj.exit.i.i ], [ %.sroa.2.0.copyload.i, %bb.d ] ; 2 uses
  %.sroa.0.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.0.sroa.3.0.i.i, 32
  %.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i.i, %.sroa.0.sroa.0.0.insert.ext.pre-phi.i.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8893 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8895
  %.not.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %i.aj, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.0.sroa.4.0.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !8893
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !8893
  br label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit

bb.i:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !8896 ; 4 uses
  %i.ap = ptrtoint ptr %i.aj to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775792
  br i1 %i.as, label %bb.j, label %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.at = ashr exact i64 %i.ar, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 576460752303423487)
  %i.ax = select i1 %i.av, i64 576460752303423487, i64 %i.aw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 4
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #31 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 3 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %i.ba, align 8
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.sroa.0.sroa.4.0.i.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !14
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.not.i17.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #34
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.az, ptr %i.o, align 8, !tbaa !8896
  store ptr %i.bc, ptr %i.ai, align 8, !tbaa !8893
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.ak, align 8, !tbaa !8895
  br label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit

_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.be = add i64 %.sroa.6.173, 1                 ; 2 uses
  %exitcond87.not = icmp eq i64 %i.be, %.ph
  br i1 %exitcond87.not, label %.loopexit67, label %.lr.ph74, !llvm.loop !8897

.lr.ph:                                           ; preds = %.preheader68, %bb.n
  %.sroa.6.272 = phi i64 [ %i.bl, %bb.n ], [ %.sroa.6.076, %.preheader68 ] ; 4 uses
  %i.bf = sub nuw i64 %.sroa.6.272, %.sroa.6.076
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %i.g
  %.not = icmp eq i64 %i.bh, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.6.272
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8856
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.6.272 ; 2 uses
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.bk, align 8
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.2.0.copyload.i45 = load ptr, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !14
  tail call void @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 %.sroa.0.0.copyload.i43, ptr %.sroa.2.0.copyload.i45, ptr noundef nonnull align 8 dereferenceable(17) %1)
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %i.bl = add i64 %.sroa.6.272, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.i
  br i1 %exitcond.not, label %.loopexit67, label %.lr.ph, !llvm.loop !8898

.loopexit67:                                      ; preds = %bb.n, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit, %.preheader68, %.preheader66, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.sroa.6.3 = phi i64 [ %i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %.ph, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit ], [ %.sroa.6.076, %.preheader66 ], [ %.sroa.6.076, %.preheader68 ], [ %i.i, %bb.n ]
  %i.bm = add nuw nsw i64 %.077, 1                ; 2 uses
  %exitcond88.not = icmp eq i64 %i.bm, %i.c
  br i1 %exitcond88.not, label %.loopexit, label %bb.c, !llvm.loop !8899

.lr.ph81:                                         ; preds = %.preheader, %.lr.ph81
  %storemerge80 = phi i64 [ %i.bq, %.lr.ph81 ], [ 0, %.preheader ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %storemerge80
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !8856
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %storemerge80 ; 2 uses
  %.sroa.0.0.copyload.i46 = load i64, ptr %i.bp, align 8
  %.sroa.2.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.2.0.copyload.i48 = load ptr, ptr %.sroa.2.0..sroa_idx.i47, align 8, !tbaa !14
  tail call void @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, i64 %.sroa.0.0.copyload.i46, ptr %.sroa.2.0.copyload.i48, ptr noundef nonnull align 8 dereferenceable(17) %1)
  %i.bq = add nuw i64 %storemerge80, 1            ; 2 uses
  %exitcond89.not = icmp eq i64 %i.bq, %4
  br i1 %exitcond89.not, label %.loopexit, label %.lr.ph81, !llvm.loop !8900

.loopexit:                                        ; preds = %.loopexit67, %.lr.ph81, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !63
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 8, ptr %i.a, align 1, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.g = load i8, ptr %i.c, align 1, !tbaa !63
  store i8 %i.g, ptr %i.b, align 1, !tbaa !45
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.j = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(17) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.010.sroa.0.0.extract.trunc.i = trunc i64 %1 to i32
  %i.a = icmp ult i32 %.sroa.010.sroa.0.0.extract.trunc.i, 13
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.3.0.extract.shift.i = lshr i64 %1, 32
  %.pre.i = and i64 %1, 15
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !679, !nonnull !235, !align !683 ; 2 uses
  %i.d = and i64 %1, 4294967295                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !684  ; 4 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !686  ; 2 uses
  %i.i = add i64 %i.h, %i.d                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !698
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %_ZN6duckdb8string_tC2EPKcj.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef %i.d)
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !684 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 24
  %.pre4.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !686 ; 2 uses
  %.pre5.i.i = add i64 %.pre4.i.i, %i.d
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i

_ZN6duckdb8string_tC2EPKcj.exit.i:                ; preds = %bb.e, %bb.d
  %.pre-phi.i.i = phi i64 [ %.pre5.i.i, %bb.e ], [ %i.i, %bb.d ]
  %i.m = phi i64 [ %.pre4.i.i, %bb.e ], [ %i.h, %bb.d ]
  %i.n = phi ptr [ %.pre.i.i, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !699
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 3 uses
  store i64 %.pre-phi.i.i, ptr %i.q, align 8, !tbaa !686
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %2, i64 %i.d, i1 false)
  %i.s = load i32, ptr %i.r, align 1
  %4 = zext i32 %i.s to i64
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit

_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit: ; preds = %bb.b, %_ZN6duckdb8string_tC2EPKcj.exit.i
  %.sroa.0.sroa.0.0.insert.ext.pre-phi.i = phi i64 [ %i.d, %_ZN6duckdb8string_tC2EPKcj.exit.i ], [ %.pre.i, %bb.b ]
  %.sroa.0.sroa.3.0.i = phi i64 [ %4, %_ZN6duckdb8string_tC2EPKcj.exit.i ], [ %.sroa.0.sroa.3.0.extract.shift.i, %bb.b ]
  %.sroa.0.sroa.4.0.i = phi ptr [ %i.r, %_ZN6duckdb8string_tC2EPKcj.exit.i ], [ %2, %bb.b ] ; 2 uses
  %.sroa.0.sroa.3.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.3.0.i, 32
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.pre-phi.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8893 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8895
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.0.sroa.4.0.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !8893
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.y, ptr %i.t, align 8, !tbaa !8893
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit

bb.g:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !8896   ; 4 uses
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 5 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775792
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 576460752303423487)
  %i.ai = select i1 %i.ag, i64 576460752303423487, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #31 ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ac ; 3 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.al, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.sroa.0.sroa.4.0.i, ptr %.sroa.5.0..sroa_idx5, align 8, !tbaa !14
  %i.am = icmp sgt i64 %i.ac, 0
  br i1 %i.am, label %bb.i, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.z, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.not.i17.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #34
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ak, ptr %0, align 8, !tbaa !8896
  store ptr %i.an, ptr %i.t, align 8, !tbaa !8893
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !8895
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE12emplace_backIJS1_EEEvDpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPKNS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !63
  %i.e = icmp eq i8 %i.d, 8
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 8, ptr %i.a, align 1, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.g = load i8, ptr %i.c, align 1, !tbaa !63
  store i8 %i.g, ptr %i.b, align 1, !tbaa !45
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.j = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb8string_tESaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb8string_tESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8895
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8893 ; 8 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN6duckdb8string_tESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 16                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !233

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPN6duckdb8string_tES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 16
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPN6duckdb8string_tES2_SaIS1_EET0_T_S5_S4_RT1_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !7606
  br label %_ZSt22__uninitialized_move_aIPN6duckdb8string_tES2_SaIS1_EET0_T_S5_S4_RT1_.exit

_ZSt22__uninitialized_move_aIPN6duckdb8string_tES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !8893
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.c
  store ptr %i.v, ptr %i.g, align 8, !tbaa !8893
  %i.w = sub i64 %i.r, %i.l                       ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvRNS_6VectorERNS_18AggregateInputDataEPhm:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  br label %_ZN6duckdb17QuantileOperation17ConstantOperationINS_8string_tENS_13QuantileStateIS2_NS_18QuantileStringTypeEEENS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load ptr, ptr %4, align 8, !tbaa !56
  invoke void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.r, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !50
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #30, !inline_history !53
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #30, !inline_history !53
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.l ], [ %i.ae, %bb.m ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !54

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ai, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !50
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #30, !inline_history !55
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #30, !inline_history !55
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.al, %bb.r ], [ %i.av, %bb.s ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.aw, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !54

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZN6duckdb17QuantileOperation17ConstantOperationINS_8string_tENS_13QuantileStateIS2_NS_18QuantileStringTypeEEENS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.u:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.ax

_ZN6duckdb17QuantileOperation17ConstantOperationINS_8string_tENS_13QuantileStateIS2_NS_18QuantileStringTypeEEENS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit: ; preds = %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 63
  %i.b = lshr i64 %i.a, 6                         ; 2 uses
  %.not82 = icmp eq i64 %i.b, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph81, %.loopexit
  %.079 = phi i64 [ 0, %.lr.ph81 ], [ %i.cs, %.loopexit ] ; 2 uses
  %.sroa.6.078 = phi i64 [ 0, %.lr.ph81 ], [ %.sroa.6.3, %.loopexit ] ; 9 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !58     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.g = add i64 %.sroa.6.078, 64
  %i.h = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.079
  %i.j = load i64, ptr %i.i, align 8, !tbaa !59   ; 2 uses
  %i.k = add i64 %.sroa.6.078, 64
  %i.l = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %3) ; 5 uses
  switch i64 %i.j, label %.preheader [
    i64 -1, label %bb.d
    i64 0, label %.loopexit
  ]

.preheader:                                       ; preds = %bb.c
  %i.m = icmp ult i64 %.sroa.6.078, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %bb.c, %.thread
  %i.n = phi i64 [ %i.h, %.thread ], [ %i.l, %bb.c ] ; 3 uses
  %i.o = icmp ult i64 %.sroa.6.078, %i.n
  br i1 %i.o, label %.lr.ph76, label %.loopexit

.lr.ph76:                                         ; preds = %bb.d, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit
  %.sroa.6.175 = phi i64 [ %i.bb, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit ], [ %.sroa.6.078, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.6.175 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.p, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14 ; 2 uses
  %.sroa.010.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.q = icmp ult i32 %.sroa.010.sroa.0.0.extract.trunc.i.i, 13
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph76
  %.sroa.0.sroa.3.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i, 15
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i

bb.f:                                             ; preds = %.lr.ph76
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !679, !nonnull !235, !align !683 ; 2 uses
  %i.s = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !684  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !686  ; 2 uses
  %i.x = add i64 %i.w, %i.s                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !698
  %i.aa = icmp ugt i64 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %_ZN6duckdb8string_tC2EPKcj.exit.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 noundef %i.s)
  %.pre.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !684 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %.pre4.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !686 ; 2 uses
  %.pre5.i.i.i = add i64 %.pre4.i.i.i, %i.s
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i.i

_ZN6duckdb8string_tC2EPKcj.exit.i.i:              ; preds = %bb.h, %bb.g
  %.pre-phi.i.i.i = phi i64 [ %.pre5.i.i.i, %bb.h ], [ %i.x, %bb.g ]
  %i.ab = phi i64 [ %.pre4.i.i.i, %bb.h ], [ %i.w, %bb.g ]
  %i.ac = phi ptr [ %.pre.i.i.i, %bb.h ], [ %i.u, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !699
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab ; 3 uses
  store i64 %.pre-phi.i.i.i, ptr %i.af, align 8, !tbaa !686
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.sroa.2.0.copyload.i, i64 %i.s, i1 false)
  %i.ah = load i32, ptr %i.ag, align 1
  %5 = zext i32 %i.ah to i64
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i.i, %bb.e
  %.sroa.0.sroa.0.0.insert.ext.pre-phi.i.i = phi i64 [ %i.s, %_ZN6duckdb8string_tC2EPKcj.exit.i.i ], [ %.pre.i.i, %bb.e ]
  %.sroa.0.sroa.3.0.i.i = phi i64 [ %5, %_ZN6duckdb8string_tC2EPKcj.exit.i.i ], [ %.sroa.0.sroa.3.0.extract.shift.i.i, %bb.e ]
  %.sroa.0.sroa.4.0.i.i = phi ptr [ %i.ag, %_ZN6duckdb8string_tC2EPKcj.exit.i.i ], [ %.sroa.2.0.copyload.i, %bb.e ] ; 2 uses
  %.sroa.0.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.0.sroa.3.0.i.i, 32
  %.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i.i, %.sroa.0.sroa.0.0.insert.ext.pre-phi.i.i ; 2 uses
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !8893 ; 5 uses
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !8895
  %.not.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %i.ai, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.0.sroa.4.0.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !8893
  br label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit

bb.j:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i
  %i.al = load ptr, ptr %2, align 8, !tbaa !8896  ; 4 uses
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775792
  br i1 %i.ap, label %bb.k, label %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.aq = ashr exact i64 %i.ao, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 576460752303423487)
  %i.au = select i1 %i.as, i64 576460752303423487, i64 %i.at ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #31 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 3 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %i.ax, align 8
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.0.sroa.4.0.i.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !14
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.l, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.not.i17.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #34
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.aw, ptr %2, align 8, !tbaa !8896
  store ptr %i.az, ptr %i.d, align 8, !tbaa !8893
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !8895
  br label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit

_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.bb = add i64 %.sroa.6.175, 1                 ; 2 uses
  %exitcond85.not = icmp eq i64 %i.bb, %i.n
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph76, !llvm.loop !8915

.lr.ph:                                           ; preds = %.preheader, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58
  %.sroa.6.274 = phi i64 [ %i.cr, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58 ], [ %.sroa.6.078, %.preheader ] ; 3 uses
  %i.bc = sub nuw i64 %.sroa.6.274, %.sroa.6.078
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.j
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.6.274 ; 2 uses
  %.sroa.0.0.copyload.i28 = load i64, ptr %i.bf, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.2.0.copyload.i30 = load ptr, ptr %.sroa.2.0..sroa_idx.i29, align 8, !tbaa !14 ; 2 uses
  %.sroa.010.sroa.0.0.extract.trunc.i.i31 = trunc i64 %.sroa.0.0.copyload.i28 to i32
  %i.bg = icmp ult i32 %.sroa.010.sroa.0.0.extract.trunc.i.i31, 13
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.0.sroa.3.0.extract.shift.i.i55 = lshr i64 %.sroa.0.0.copyload.i28, 32
  %.pre.i.i57 = and i64 %.sroa.0.0.copyload.i28, 15
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i35

bb.p:                                             ; preds = %bb.n
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !679, !nonnull !235, !align !683 ; 2 uses
  %i.bi = and i64 %.sroa.0.0.copyload.i28, 4294967295 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !684 ; 4 uses
  %.not.i.i.i32 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i32, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !686 ; 2 uses
  %i.bn = add i64 %i.bm, %i.bi                    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !698
  %i.bq = icmp ugt i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.r, label %_ZN6duckdb8string_tC2EPKcj.exit.i.i33

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i64 noundef %i.bi)
  %.pre.i.i.i51 = load ptr, ptr %i.bj, align 8, !tbaa !684 ; 2 uses
  %.phi.trans.insert.i.i.i52 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i51, i64 24
  %.pre4.i.i.i53 = load i64, ptr %.phi.trans.insert.i.i.i52, align 8, !tbaa !686 ; 2 uses
  %.pre5.i.i.i54 = add i64 %.pre4.i.i.i53, %i.bi
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i.i33

_ZN6duckdb8string_tC2EPKcj.exit.i.i33:            ; preds = %bb.r, %bb.q
  %.pre-phi.i.i.i34 = phi i64 [ %.pre5.i.i.i54, %bb.r ], [ %i.bn, %bb.q ]
  %i.br = phi i64 [ %.pre4.i.i.i53, %bb.r ], [ %i.bm, %bb.q ]
  %i.bs = phi ptr [ %.pre.i.i.i51, %bb.r ], [ %i.bk, %bb.q ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !699
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.br ; 3 uses
  store i64 %.pre-phi.i.i.i34, ptr %i.bv, align 8, !tbaa !686
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %.sroa.2.0.copyload.i30, i64 %i.bi, i1 false)
  %i.bx = load i32, ptr %i.bw, align 1
  %6 = zext i32 %i.bx to i64
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i35

_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i35: ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i.i33, %bb.o
  %.sroa.0.sroa.0.0.insert.ext.pre-phi.i.i36 = phi i64 [ %i.bi, %_ZN6duckdb8string_tC2EPKcj.exit.i.i33 ], [ %.pre.i.i57, %bb.o ]
  %.sroa.0.sroa.3.0.i.i37 = phi i64 [ %6, %_ZN6duckdb8string_tC2EPKcj.exit.i.i33 ], [ %.sroa.0.sroa.3.0.extract.shift.i.i55, %bb.o ]
  %.sroa.0.sroa.4.0.i.i38 = phi ptr [ %i.bw, %_ZN6duckdb8string_tC2EPKcj.exit.i.i33 ], [ %.sroa.2.0.copyload.i30, %bb.o ] ; 2 uses
  %.sroa.0.sroa.3.0.insert.shift.i.i40 = shl nuw i64 %.sroa.0.sroa.3.0.i.i37, 32
  %.sroa.0.sroa.0.0.insert.insert.i.i41 = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i.i40, %.sroa.0.sroa.0.0.insert.ext.pre-phi.i.i36 ; 2 uses
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !8893 ; 5 uses
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !8895
  %.not.i.i42 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i42, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i35
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i41, ptr %i.by, align 8
  %.sroa.5.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %.sroa.0.sroa.4.0.i.i38, ptr %.sroa.5.0..sroa_idx.i43, align 8, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.ca, ptr %i.d, align 8, !tbaa !8893
  br label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58

bb.t:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i35
  %i.cb = load ptr, ptr %2, align 8, !tbaa !8896  ; 4 uses
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 5 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775792
  br i1 %i.cf, label %bb.u, label %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i44

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i44: ; preds = %bb.t
  %i.cg = ashr exact i64 %i.ce, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i45 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i45, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 576460752303423487)
  %i.ck = select i1 %i.ci, i64 576460752303423487, i64 %i.cj ; 3 uses
  %.not.i.i.i.i46 = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i46)
  %i.cl = shl nuw nsw i64 %i.ck, 4
  %i.cm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #31 ; 4 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 3 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i41, ptr %i.cn, align 8
  %.sroa.5.0..sroa_idx5.i47 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %.sroa.0.sroa.4.0.i.i38, ptr %.sroa.5.0..sroa_idx5.i47, align 8, !tbaa !14
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.v, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i48

bb.v:                                             ; preds = %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr align 8 %i.cb, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i48

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i48: ; preds = %bb.v, %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i44
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.not.i17.i.i.i49 = icmp eq ptr %i.cb, null
  br i1 %.not.i17.i.i.i49, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i48
  tail call void @_ZdlPv(ptr noundef nonnull %i.cb) #34
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50: ; preds = %bb.w, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i48
  store ptr %i.cm, ptr %2, align 8, !tbaa !8896
  store ptr %i.cp, ptr %i.d, align 8, !tbaa !8893
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.ck
  store ptr %i.cq, ptr %i.e, align 8, !tbaa !8895
  br label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58

_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58: ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50, %bb.s, %.lr.ph
  %i.cr = add i64 %.sroa.6.274, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %i.l
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !8916

.loopexit:                                        ; preds = %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit, %.preheader, %bb.d, %bb.c
  %.sroa.6.3 = phi i64 [ %i.l, %bb.c ], [ %i.n, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit ], [ %.sroa.6.078, %bb.d ], [ %.sroa.6.078, %.preheader ], [ %i.l, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58 ]
  %i.cs = add nuw nsw i64 %.079, 1                ; 2 uses
  %exitcond86.not = icmp eq i64 %i.cs, %i.b
  br i1 %exitcond86.not, label %._crit_edge, label %bb.b, !llvm.loop !8917
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noalias noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.a, null
  %.not33 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader27

.preheader27:                                     ; preds = %bb.a
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader27
  %i.b = load ptr, ptr %5, align 8, !tbaa !57     ; 2 uses
  %.not.i18 = icmp eq ptr %i.b, null
  br i1 %.not.i18, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.b
  %.01729.us = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph ] ; 4 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !58     ; 2 uses
  %.not.i19.us = icmp eq ptr %i.c, null
  br i1 %.not.i19.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.d = lshr i64 %.01729.us, 6
  %i.e = and i64 %.01729.us, 63
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.g = load i64, ptr %i.f, align 8, !tbaa !59
  %i.h = shl nuw i64 1, %i.e
  %i.i = and i64 %i.g, %i.h
  %.not.us = icmp eq i64 %i.i, 0
  br i1 %.not.us, label %bb.b, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.01729.us ; 2 uses
  %.sroa.0.0.copyload.i.us = load i64, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.us = load ptr, ptr %.sroa.2.0..sroa_idx.i.us, align 8, !tbaa !14
  tail call void @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 %.sroa.0.0.copyload.i.us, ptr %.sroa.2.0.copyload.i.us, ptr noundef nonnull align 8 dereferenceable(17) %1)
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.k = add nuw i64 %.01729.us, 1                ; 2 uses
  %exitcond37.not = icmp eq i64 %i.k, %3
  br i1 %exitcond37.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !8918

.preheader:                                       ; preds = %bb.a
  br i1 %.not33, label %.loopexit, label %.lr.ph31

.lr.ph31:                                         ; preds = %.preheader
  %i.l = load ptr, ptr %5, align 8, !tbaa !57     ; 2 uses
  %.not.i20 = icmp eq ptr %i.l, null
  br i1 %.not.i20, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us: ; preds = %.lr.ph31, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us
  %.030.us = phi i64 [ %i.n, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ], [ 0, %.lr.ph31 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.030.us ; 2 uses
  %.sroa.0.0.copyload.i22.us = load i64, ptr %i.m, align 8
  %.sroa.2.0..sroa_idx.i23.us = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.2.0.copyload.i24.us = load ptr, ptr %.sroa.2.0..sroa_idx.i23.us, align 8, !tbaa !14
  tail call void @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 %.sroa.0.0.copyload.i22.us, ptr %.sroa.2.0.copyload.i24.us, ptr noundef nonnull align 8 dereferenceable(17) %1)
  %i.n = add nuw i64 %.030.us, 1                  ; 2 uses
  %exitcond39.not = icmp eq i64 %i.n, %3
  br i1 %exitcond39.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, !llvm.loop !8919

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph, %bb.c
  %.01729 = phi i64 [ %i.z, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01729
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = zext i32 %i.p to i64                     ; 3 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !58     ; 2 uses
  %.not.i19 = icmp eq ptr %i.r, null
  br i1 %.not.i19, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.s = lshr i64 %i.q, 6
  %i.t = and i64 %i.q, 63
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.v = load i64, ptr %i.u, align 8, !tbaa !59
  %i.w = shl nuw i64 1, %i.t
  %i.x = and i64 %i.v, %i.w
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14
  tail call void @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(17) %1)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.z = add nuw i64 %.01729, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %3
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !8918

_ZNK6duckdb15SelectionVector9get_indexEm.exit21:  ; preds = %.lr.ph31, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21
  %.030 = phi i64 [ %i.ae, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ], [ 0, %.lr.ph31 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.030
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ac ; 2 uses
  %.sroa.0.0.copyload.i22 = load i64, ptr %i.ad, align 8
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i24 = load ptr, ptr %.sroa.2.0..sroa_idx.i23, align 8, !tbaa !14
  tail call void @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 %.sroa.0.0.copyload.i22, ptr %.sroa.2.0.copyload.i24, ptr noundef nonnull align 8 dereferenceable(17) %1)
  %i.ae = add nuw i64 %.030, 1                    ; 2 uses
  %exitcond38.not = icmp eq i64 %i.ae, %3
  br i1 %exitcond38.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, !llvm.loop !8919

.loopexit:                                        ; preds = %bb.c, %bb.b, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, %.preheader27, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEENS_23QuantileScalarOperationILb1ENS_20QuantileStandardTypeEEEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, %bb.a
end_hunk_1
begin_hunk_2_@_ZN6duckdb17AggregateExecutor12UnaryScatterINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_21QuantileListOperationIS3_Lb1EEEEEvRNS_6VectorES9_RNS_18AggregateInputDataEm:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.fu = add nsw i32 %i.fl, -1
  store i32 %i.fu, ptr %i.fi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.ai:                                            ; preds = %bb.ag
  %i.fv = atomicrmw volatile add ptr %i.fi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.fl, %bb.ah ], [ %i.fv, %bb.ai ]
  %i.fw = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fw, label %bb.aj, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !54

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i.i81 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i81, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i85, label %bb.ak

bb.ak:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 4294967297
  %i.gc = trunc i64 %i.ga to i32                  ; 2 uses
  br i1 %i.gb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.fz, align 8, !tbaa !48
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !50
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !51
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #30, !inline_history !53
  %i.gh = load ptr, ptr %i.fy, align 8, !tbaa !51
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #30, !inline_history !53
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i85

bb.am:                                            ; preds = %bb.ak
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i82 = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i.i.i.i82, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gl = add nsw i32 %i.gc, -1
  store i32 %i.gl, ptr %i.fz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i83

bb.ao:                                            ; preds = %bb.am
  %i.gm = atomicrmw volatile add ptr %i.fz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i83

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i83: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i.i84 = phi i32 [ %i.gc, %bb.an ], [ %i.gm, %bb.ao ]
  %i.gn = icmp eq i32 %.0.i.i.i.i.i.i.i84, 1
  br i1 %i.gn, label %bb.ap, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i85, !prof !54

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i83
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i85

_ZN6duckdb15SelectionVectorD2Ev.exit.i85:         ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i83, %bb.al, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i1.i86 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i1.i86, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit90, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i85
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.gq, align 8, !tbaa !48
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !50
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !51
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #30, !inline_history !55
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !51
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #30, !inline_history !55
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit90

bb.as:                                            ; preds = %bb.aq
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i87 = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i.i2.i87, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i88

bb.au:                                            ; preds = %bb.as
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i88

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i88: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i.i4.i89 = phi i32 [ %i.gt, %bb.at ], [ %i.hd, %bb.au ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i.i4.i89, 1
  br i1 %i.he, label %bb.av, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit90, !prof !54

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i88
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit90

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit90:       ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i85, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i88, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZN6duckdb17QuantileOperation17ConstantOperationINS_8string_tENS_13QuantileStateIS2_NS_18QuantileStringTypeEEENS_21QuantileListOperationIS2_Lb1EEEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.aw:                                            ; preds = %.loopexit.split-lp, %bb.n
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.bl, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn

_ZN6duckdb17QuantileOperation17ConstantOperationINS_8string_tENS_13QuantileStateIS2_NS_18QuantileStringTypeEEENS_21QuantileListOperationIS2_Lb1EEEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit: ; preds = %bb.d, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %bb.f, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit90, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor13UnaryFlatLoopINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_21QuantileListOperationIS3_Lb1EEEEEvPKT0_RNS_18AggregateInputDataEPPT_RNS_12ValidityMaskEm(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not83 = icmp eq i64 %4, 0
  br i1 %.not83, label %.loopexit, label %.lr.ph81

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %4, 63
  %i.c = lshr i64 %i.b, 6                         ; 2 uses
  %.not82 = icmp eq i64 %i.c, 0
  br i1 %.not82, label %.loopexit, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph79, %.loopexit67
  %.077 = phi i64 [ 0, %.lr.ph79 ], [ %i.bm, %.loopexit67 ] ; 2 uses
  %.sroa.6.076 = phi i64 [ 0, %.lr.ph79 ], [ %.sroa.6.3, %.loopexit67 ] ; 9 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !58     ; 2 uses
  %.not.i42 = icmp eq ptr %i.e, null
  br i1 %.not.i42, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.077
  %i.g = load i64, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %i.h = add i64 %.sroa.6.076, 64
  %i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %4) ; 5 uses
  switch i64 %i.g, label %.preheader68 [
    i64 -1, label %.preheader66
    i64 0, label %.loopexit67
  ]

.preheader68:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.j = icmp ult i64 %.sroa.6.076, %i.i
  br i1 %i.j, label %.lr.ph, label %.loopexit67

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.c
  %i.k = add i64 %.sroa.6.076, 64
  %i.l = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %4)
  br label %.preheader66

.preheader66:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.ph = phi i64 [ %i.l, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.m = icmp ult i64 %.sroa.6.076, %.ph
  br i1 %i.m, label %.lr.ph74, label %.loopexit67

.lr.ph74:                                         ; preds = %.preheader66, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit
  %.sroa.6.173 = phi i64 [ %i.be, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit ], [ %.sroa.6.076, %.preheader66 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.6.173
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8856 ; 4 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.6.173 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.p, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14 ; 2 uses
  %.sroa.010.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.q = icmp ult i32 %.sroa.010.sroa.0.0.extract.trunc.i.i, 13
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph74
  %.sroa.0.sroa.3.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i, 15
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i

bb.e:                                             ; preds = %.lr.ph74
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !679, !nonnull !235, !align !683 ; 2 uses
  %i.s = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !684  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !686  ; 2 uses
  %i.x = add i64 %i.w, %i.s                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !698
  %i.aa = icmp ugt i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_ZN6duckdb8string_tC2EPKcj.exit.i.i

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 noundef %i.s)
  %.pre.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !684 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %.pre4.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !686 ; 2 uses
  %.pre5.i.i.i = add i64 %.pre4.i.i.i, %i.s
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i.i

_ZN6duckdb8string_tC2EPKcj.exit.i.i:              ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i = phi i64 [ %.pre5.i.i.i, %bb.g ], [ %i.x, %bb.f ]
  %i.ab = phi i64 [ %.pre4.i.i.i, %bb.g ], [ %i.w, %bb.f ]
  %i.ac = phi ptr [ %.pre.i.i.i, %bb.g ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !699
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab ; 3 uses
  store i64 %.pre-phi.i.i.i, ptr %i.af, align 8, !tbaa !686
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.sroa.2.0.copyload.i, i64 %i.s, i1 false)
  %i.ah = load i32, ptr %i.ag, align 1
  %5 = zext i32 %i.ah to i64
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i.i, %bb.d
  %.sroa.0.sroa.0.0.insert.ext.pre-phi.i.i = phi i64 [ %i.s, %_ZN6duckdb8string_tC2EPKcj.exit.i.i ], [ %.pre.i.i, %bb.d ]
  %.sroa.0.sroa.3.0.i.i = phi i64 [ %5, %_ZN6duckdb8string_tC2EPKcj.exit.i.i ], [ %.sroa.0.sroa.3.0.extract.shift.i.i, %bb.d ]
  %.sroa.0.sroa.4.0.i.i = phi ptr [ %i.ag, %_ZN6duckdb8string_tC2EPKcj.exit.i.i ], [ %.sroa.2.0.copyload.i, %bb.d ] ; 2 uses
  %.sroa.0.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.0.sroa.3.0.i.i, 32
  %.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i.i, %.sroa.0.sroa.0.0.insert.ext.pre-phi.i.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8893 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8895
  %.not.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %i.aj, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.0.sroa.4.0.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !8893
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !8893
  br label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit

bb.i:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !8896 ; 4 uses
  %i.ap = ptrtoint ptr %i.aj to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775792
  br i1 %i.as, label %bb.j, label %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.at = ashr exact i64 %i.ar, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 576460752303423487)
  %i.ax = select i1 %i.av, i64 576460752303423487, i64 %i.aw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 4
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #31 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 3 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %i.ba, align 8
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.sroa.0.sroa.4.0.i.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !14
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.not.i17.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ao) #34
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.az, ptr %i.o, align 8, !tbaa !8896
  store ptr %i.bc, ptr %i.ai, align 8, !tbaa !8893
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.ak, align 8, !tbaa !8895
  br label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit

_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.be = add i64 %.sroa.6.173, 1                 ; 2 uses
  %exitcond87.not = icmp eq i64 %i.be, %.ph
  br i1 %exitcond87.not, label %.loopexit67, label %.lr.ph74, !llvm.loop !9285

.lr.ph:                                           ; preds = %.preheader68, %bb.n
  %.sroa.6.272 = phi i64 [ %i.bl, %bb.n ], [ %.sroa.6.076, %.preheader68 ] ; 4 uses
  %i.bf = sub nuw i64 %.sroa.6.272, %.sroa.6.076
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = and i64 %i.bg, %i.g
  %.not = icmp eq i64 %i.bh, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.6.272
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8856
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.6.272 ; 2 uses
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.bk, align 8
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.2.0.copyload.i45 = load ptr, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !14
  tail call void @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 %.sroa.0.0.copyload.i43, ptr %.sroa.2.0.copyload.i45, ptr noundef nonnull align 8 dereferenceable(17) %1)
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %i.bl = add i64 %.sroa.6.272, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %i.i
  br i1 %exitcond.not, label %.loopexit67, label %.lr.ph, !llvm.loop !9286

.loopexit67:                                      ; preds = %bb.n, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit, %.preheader68, %.preheader66, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.sroa.6.3 = phi i64 [ %i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %.ph, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit ], [ %.sroa.6.076, %.preheader66 ], [ %.sroa.6.076, %.preheader68 ], [ %i.i, %bb.n ]
  %i.bm = add nuw nsw i64 %.077, 1                ; 2 uses
  %exitcond88.not = icmp eq i64 %i.bm, %i.c
  br i1 %exitcond88.not, label %.loopexit, label %bb.c, !llvm.loop !9287

.lr.ph81:                                         ; preds = %.preheader, %.lr.ph81
  %storemerge80 = phi i64 [ %i.bq, %.lr.ph81 ], [ 0, %.preheader ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %storemerge80
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !8856
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %storemerge80 ; 2 uses
  %.sroa.0.0.copyload.i46 = load i64, ptr %i.bp, align 8
  %.sroa.2.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.2.0.copyload.i48 = load ptr, ptr %.sroa.2.0..sroa_idx.i47, align 8, !tbaa !14
  tail call void @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, i64 %.sroa.0.0.copyload.i46, ptr %.sroa.2.0.copyload.i48, ptr noundef nonnull align 8 dereferenceable(17) %1)
  %i.bq = add nuw i64 %storemerge80, 1            ; 2 uses
  %exitcond89.not = icmp eq i64 %i.bq, %4
  br i1 %exitcond89.not, label %.loopexit, label %.lr.ph81, !llvm.loop !9288

.loopexit:                                        ; preds = %.loopexit67, %.lr.ph81, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor8FinalizeINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEENS_12list_entry_tENS_21QuantileListOperationIS3_Lb1EEEEEvRNS_6VectorERNS_18AggregateInputDataESA_mm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.duckdb::AggregateFinalizeData", align 8 ; 6 uses
  %6 = alloca %"struct.duckdb::AggregateFinalizeData", align 8 ; 6 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !711
  %i.b = icmp eq i8 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !70
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %2, ptr %5, align 8, !tbaa !922
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !924
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !926
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !8856
  call void @_ZN6duckdb21QuantileListOperationINS_8string_tELb1EE8FinalizeINS_12list_entry_tENS_13QuantileStateIS1_NS_18QuantileStringTypeEEEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !70
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %2, ptr %6, align 8, !tbaa !922
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.l, align 8, !tbaa !924
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.020 = phi i64 [ %i.r, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.n = add i64 %.020, %4                        ; 2 uses
  store i64 %i.n, ptr %i.m, align 8, !tbaa !926
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.020
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8856
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.n
  call void @_ZN6duckdb21QuantileListOperationINS_8string_tELb1EE8FinalizeINS_12list_entry_tENS_13QuantileStateIS1_NS_18QuantileStringTypeEEEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.r = add nuw i64 %.020, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9289

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21QuantileListOperationINS_8string_tELb1EE8FinalizeINS_12list_entry_tENS_13QuantileStateIS1_NS_18QuantileStringTypeEEEEEvRT0_RT_RNS_21AggregateFinalizeDataE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::QuantileInterpolator.1890", align 8 ; 8 uses
  %4 = alloca %"struct.duckdb::QuantileDirect.2042", align 1 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !8858
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8858
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21AggregateFinalizeData10ReturnNullEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !928, !nonnull !235, !align !683 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !242  ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb17AggregateExecutor11UnaryUpdateINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_21QuantileListOperationIS3_Lb1EEEEEvRNS_6VectorERNS_18AggregateInputDataEPhm:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_21QuantileListOperationIS3_Lb1EEEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  br label %_ZN6duckdb17QuantileOperation17ConstantOperationINS_8string_tENS_13QuantileStateIS2_NS_18QuantileStringTypeEEENS_21QuantileListOperationIS2_Lb1EEEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load ptr, ptr %4, align 8, !tbaa !56
  invoke void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_21QuantileListOperationIS3_Lb1EEEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.r, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !50
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #30, !inline_history !53
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #30, !inline_history !53
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.l ], [ %i.ae, %bb.m ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !54

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ai, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !50
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #30, !inline_history !55
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #30, !inline_history !55
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.s:                                             ; preds = %bb.q
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.al, %bb.r ], [ %i.av, %bb.s ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.aw, label %bb.t, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !54

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZN6duckdb17QuantileOperation17ConstantOperationINS_8string_tENS_13QuantileStateIS2_NS_18QuantileStringTypeEEENS_21QuantileListOperationIS2_Lb1EEEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit

bb.u:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.ax

_ZN6duckdb17QuantileOperation17ConstantOperationINS_8string_tENS_13QuantileStateIS2_NS_18QuantileStringTypeEEENS_21QuantileListOperationIS2_Lb1EEEEEvRT0_RKT_RNS_19AggregateUnaryInputEm.exit: ; preds = %bb.c, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor19UnaryFlatUpdateLoopINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_21QuantileListOperationIS3_Lb1EEEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = add i64 %3, 63
  %i.b = lshr i64 %i.a, 6                         ; 2 uses
  %.not82 = icmp eq i64 %i.b, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph81, %.loopexit
  %.079 = phi i64 [ 0, %.lr.ph81 ], [ %i.cs, %.loopexit ] ; 2 uses
  %.sroa.6.078 = phi i64 [ 0, %.lr.ph81 ], [ %.sroa.6.3, %.loopexit ] ; 9 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !58     ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.g = add i64 %.sroa.6.078, 64
  %i.h = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.079
  %i.j = load i64, ptr %i.i, align 8, !tbaa !59   ; 2 uses
  %i.k = add i64 %.sroa.6.078, 64
  %i.l = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %3) ; 5 uses
  switch i64 %i.j, label %.preheader [
    i64 -1, label %bb.d
    i64 0, label %.loopexit
  ]

.preheader:                                       ; preds = %bb.c
  %i.m = icmp ult i64 %.sroa.6.078, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %bb.c, %.thread
  %i.n = phi i64 [ %i.h, %.thread ], [ %i.l, %bb.c ] ; 3 uses
  %i.o = icmp ult i64 %.sroa.6.078, %i.n
  br i1 %i.o, label %.lr.ph76, label %.loopexit

.lr.ph76:                                         ; preds = %bb.d, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit
  %.sroa.6.175 = phi i64 [ %i.bb, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit ], [ %.sroa.6.078, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.6.175 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.p, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14 ; 2 uses
  %.sroa.010.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.q = icmp ult i32 %.sroa.010.sroa.0.0.extract.trunc.i.i, 13
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph76
  %.sroa.0.sroa.3.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.pre.i.i = and i64 %.sroa.0.0.copyload.i, 15
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i

bb.f:                                             ; preds = %.lr.ph76
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !679, !nonnull !235, !align !683 ; 2 uses
  %i.s = and i64 %.sroa.0.0.copyload.i, 4294967295 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !684  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !686  ; 2 uses
  %i.x = add i64 %i.w, %i.s                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !698
  %i.aa = icmp ugt i64 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %_ZN6duckdb8string_tC2EPKcj.exit.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 noundef %i.s)
  %.pre.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !684 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %.pre4.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !686 ; 2 uses
  %.pre5.i.i.i = add i64 %.pre4.i.i.i, %i.s
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i.i

_ZN6duckdb8string_tC2EPKcj.exit.i.i:              ; preds = %bb.h, %bb.g
  %.pre-phi.i.i.i = phi i64 [ %.pre5.i.i.i, %bb.h ], [ %i.x, %bb.g ]
  %i.ab = phi i64 [ %.pre4.i.i.i, %bb.h ], [ %i.w, %bb.g ]
  %i.ac = phi ptr [ %.pre.i.i.i, %bb.h ], [ %i.u, %bb.g ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !699
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab ; 3 uses
  store i64 %.pre-phi.i.i.i, ptr %i.af, align 8, !tbaa !686
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.sroa.2.0.copyload.i, i64 %i.s, i1 false)
  %i.ah = load i32, ptr %i.ag, align 1
  %5 = zext i32 %i.ah to i64
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i

_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i: ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i.i, %bb.e
  %.sroa.0.sroa.0.0.insert.ext.pre-phi.i.i = phi i64 [ %i.s, %_ZN6duckdb8string_tC2EPKcj.exit.i.i ], [ %.pre.i.i, %bb.e ]
  %.sroa.0.sroa.3.0.i.i = phi i64 [ %5, %_ZN6duckdb8string_tC2EPKcj.exit.i.i ], [ %.sroa.0.sroa.3.0.extract.shift.i.i, %bb.e ]
  %.sroa.0.sroa.4.0.i.i = phi ptr [ %i.ag, %_ZN6duckdb8string_tC2EPKcj.exit.i.i ], [ %.sroa.2.0.copyload.i, %bb.e ] ; 2 uses
  %.sroa.0.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.0.sroa.3.0.i.i, 32
  %.sroa.0.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i.i, %.sroa.0.sroa.0.0.insert.ext.pre-phi.i.i ; 2 uses
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !8893 ; 5 uses
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !8895
  %.not.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %i.ai, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.0.sroa.4.0.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !8893
  br label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit

bb.j:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i
  %i.al = load ptr, ptr %2, align 8, !tbaa !8896  ; 4 uses
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775792
  br i1 %i.ap, label %bb.k, label %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.aq = ashr exact i64 %i.ao, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 576460752303423487)
  %i.au = select i1 %i.as, i64 576460752303423487, i64 %i.at ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #31 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 3 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %i.ax, align 8
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.0.sroa.4.0.i.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !14
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.l, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.not.i17.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #34
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.aw, ptr %2, align 8, !tbaa !8896
  store ptr %i.az, ptr %i.d, align 8, !tbaa !8893
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.e, align 8, !tbaa !8895
  br label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit

_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.bb = add i64 %.sroa.6.175, 1                 ; 2 uses
  %exitcond85.not = icmp eq i64 %i.bb, %i.n
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph76, !llvm.loop !9290

.lr.ph:                                           ; preds = %.preheader, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58
  %.sroa.6.274 = phi i64 [ %i.cr, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58 ], [ %.sroa.6.078, %.preheader ] ; 3 uses
  %i.bc = sub nuw i64 %.sroa.6.274, %.sroa.6.078
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.j
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.6.274 ; 2 uses
  %.sroa.0.0.copyload.i28 = load i64, ptr %i.bf, align 8 ; 4 uses
  %.sroa.2.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.2.0.copyload.i30 = load ptr, ptr %.sroa.2.0..sroa_idx.i29, align 8, !tbaa !14 ; 2 uses
  %.sroa.010.sroa.0.0.extract.trunc.i.i31 = trunc i64 %.sroa.0.0.copyload.i28 to i32
  %i.bg = icmp ult i32 %.sroa.010.sroa.0.0.extract.trunc.i.i31, 13
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.0.sroa.3.0.extract.shift.i.i55 = lshr i64 %.sroa.0.0.copyload.i28, 32
  %.pre.i.i57 = and i64 %.sroa.0.0.copyload.i28, 15
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i35

bb.p:                                             ; preds = %bb.n
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !679, !nonnull !235, !align !683 ; 2 uses
  %i.bi = and i64 %.sroa.0.0.copyload.i28, 4294967295 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !684 ; 4 uses
  %.not.i.i.i32 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i32, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !686 ; 2 uses
  %i.bn = add i64 %i.bm, %i.bi                    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !698
  %i.bq = icmp ugt i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.r, label %_ZN6duckdb8string_tC2EPKcj.exit.i.i33

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i64 noundef %i.bi)
  %.pre.i.i.i51 = load ptr, ptr %i.bj, align 8, !tbaa !684 ; 2 uses
  %.phi.trans.insert.i.i.i52 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i51, i64 24
  %.pre4.i.i.i53 = load i64, ptr %.phi.trans.insert.i.i.i52, align 8, !tbaa !686 ; 2 uses
  %.pre5.i.i.i54 = add i64 %.pre4.i.i.i53, %i.bi
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i.i33

_ZN6duckdb8string_tC2EPKcj.exit.i.i33:            ; preds = %bb.r, %bb.q
  %.pre-phi.i.i.i34 = phi i64 [ %.pre5.i.i.i54, %bb.r ], [ %i.bn, %bb.q ]
  %i.br = phi i64 [ %.pre4.i.i.i53, %bb.r ], [ %i.bm, %bb.q ]
  %i.bs = phi ptr [ %.pre.i.i.i51, %bb.r ], [ %i.bk, %bb.q ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !699
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.br ; 3 uses
  store i64 %.pre-phi.i.i.i34, ptr %i.bv, align 8, !tbaa !686
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %.sroa.2.0.copyload.i30, i64 %i.bi, i1 false)
  %i.bx = load i32, ptr %i.bw, align 1
  %6 = zext i32 %i.bx to i64
  br label %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i35

_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i35: ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i.i33, %bb.o
  %.sroa.0.sroa.0.0.insert.ext.pre-phi.i.i36 = phi i64 [ %i.bi, %_ZN6duckdb8string_tC2EPKcj.exit.i.i33 ], [ %.pre.i.i57, %bb.o ]
  %.sroa.0.sroa.3.0.i.i37 = phi i64 [ %6, %_ZN6duckdb8string_tC2EPKcj.exit.i.i33 ], [ %.sroa.0.sroa.3.0.extract.shift.i.i55, %bb.o ]
  %.sroa.0.sroa.4.0.i.i38 = phi ptr [ %i.bw, %_ZN6duckdb8string_tC2EPKcj.exit.i.i33 ], [ %.sroa.2.0.copyload.i30, %bb.o ] ; 2 uses
  %.sroa.0.sroa.3.0.insert.shift.i.i40 = shl nuw i64 %.sroa.0.sroa.3.0.i.i37, 32
  %.sroa.0.sroa.0.0.insert.insert.i.i41 = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i.i40, %.sroa.0.sroa.0.0.insert.ext.pre-phi.i.i36 ; 2 uses
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !8893 ; 5 uses
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !8895
  %.not.i.i42 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i.i42, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i35
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i41, ptr %i.by, align 8
  %.sroa.5.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %.sroa.0.sroa.4.0.i.i38, ptr %.sroa.5.0..sroa_idx.i43, align 8, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.ca, ptr %i.d, align 8, !tbaa !8893
  br label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58

bb.t:                                             ; preds = %_ZN6duckdb18QuantileStringType9OperationINS_8string_tEEET_S3_RNS_18AggregateInputDataE.exit.i35
  %i.cb = load ptr, ptr %2, align 8, !tbaa !8896  ; 4 uses
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 5 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775792
  br i1 %i.cf, label %bb.u, label %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i44

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i44: ; preds = %bb.t
  %i.cg = ashr exact i64 %i.ce, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i45 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i45, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 576460752303423487)
  %i.ck = select i1 %i.ci, i64 576460752303423487, i64 %i.cj ; 3 uses
  %.not.i.i.i.i46 = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i46)
  %i.cl = shl nuw nsw i64 %i.ck, 4
  %i.cm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #31 ; 4 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ce ; 3 uses
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i41, ptr %i.cn, align 8
  %.sroa.5.0..sroa_idx5.i47 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %.sroa.0.sroa.4.0.i.i38, ptr %.sroa.5.0..sroa_idx5.i47, align 8, !tbaa !14
  %i.co = icmp sgt i64 %i.ce, 0
  br i1 %i.co, label %bb.v, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i48

bb.v:                                             ; preds = %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr align 8 %i.cb, i64 %i.ce, i1 false)
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i48

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i48: ; preds = %bb.v, %_ZNKSt6vectorIN6duckdb8string_tESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i44
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.not.i17.i.i.i49 = icmp eq ptr %i.cb, null
  br i1 %.not.i17.i.i.i49, label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i48
  tail call void @_ZdlPv(ptr noundef nonnull %i.cb) #34
  br label %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50

_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50: ; preds = %bb.w, %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i48
  store ptr %i.cm, ptr %2, align 8, !tbaa !8896
  store ptr %i.cp, ptr %i.d, align 8, !tbaa !8893
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.ck
  store ptr %i.cq, ptr %i.e, align 8, !tbaa !8895
  br label %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58

_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58: ; preds = %_ZNSt6vectorIN6duckdb8string_tESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i50, %bb.s, %.lr.ph
  %i.cr = add i64 %.sroa.6.274, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cr, %i.l
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !9291

.loopexit:                                        ; preds = %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit, %.preheader, %bb.d, %bb.c
  %.sroa.6.3 = phi i64 [ %i.l, %bb.c ], [ %i.n, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit ], [ %.sroa.6.078, %bb.d ], [ %.sroa.6.078, %.preheader ], [ %i.l, %_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE.exit58 ]
  %i.cs = add nuw nsw i64 %.079, 1                ; 2 uses
  %exitcond86.not = icmp eq i64 %i.cs, %i.b
  br i1 %exitcond86.not, label %._crit_edge, label %bb.b, !llvm.loop !9292
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor15UnaryUpdateLoopINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEES3_NS_21QuantileListOperationIS3_Lb1EEEEEvPKT0_RNS_18AggregateInputDataEPT_mRNS_12ValidityMaskERKNS_15SelectionVectorE(ptr noalias noundef %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noalias noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noalias noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.a, null
  %.not33 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader27

.preheader27:                                     ; preds = %bb.a
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader27
  %i.b = load ptr, ptr %5, align 8, !tbaa !57     ; 2 uses
  %.not.i18 = icmp eq ptr %i.b, null
  br i1 %.not.i18, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph, %bb.b
  %.01729.us = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph ] ; 4 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !58     ; 2 uses
  %.not.i19.us = icmp eq ptr %i.c, null
  br i1 %.not.i19.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.d = lshr i64 %.01729.us, 6
  %i.e = and i64 %.01729.us, 63
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.g = load i64, ptr %i.f, align 8, !tbaa !59
  %i.h = shl nuw i64 1, %i.e
  %i.i = and i64 %i.g, %i.h
  %.not.us = icmp eq i64 %i.i, 0
  br i1 %.not.us, label %bb.b, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.01729.us ; 2 uses
  %.sroa.0.0.copyload.i.us = load i64, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.us = load ptr, ptr %.sroa.2.0..sroa_idx.i.us, align 8, !tbaa !14
  tail call void @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 %.sroa.0.0.copyload.i.us, ptr %.sroa.2.0.copyload.i.us, ptr noundef nonnull align 8 dereferenceable(17) %1)
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %i.k = add nuw i64 %.01729.us, 1                ; 2 uses
  %exitcond37.not = icmp eq i64 %i.k, %3
  br i1 %exitcond37.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !9293

.preheader:                                       ; preds = %bb.a
  br i1 %.not33, label %.loopexit, label %.lr.ph31

.lr.ph31:                                         ; preds = %.preheader
  %i.l = load ptr, ptr %5, align 8, !tbaa !57     ; 2 uses
  %.not.i20 = icmp eq ptr %i.l, null
  br i1 %.not.i20, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21

_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us: ; preds = %.lr.ph31, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us
  %.030.us = phi i64 [ %i.n, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us ], [ 0, %.lr.ph31 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.030.us ; 2 uses
  %.sroa.0.0.copyload.i22.us = load i64, ptr %i.m, align 8
  %.sroa.2.0..sroa_idx.i23.us = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.2.0.copyload.i24.us = load ptr, ptr %.sroa.2.0..sroa_idx.i23.us, align 8, !tbaa !14
  tail call void @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 %.sroa.0.0.copyload.i22.us, ptr %.sroa.2.0.copyload.i24.us, ptr noundef nonnull align 8 dereferenceable(17) %1)
  %i.n = add nuw i64 %.030.us, 1                  ; 2 uses
  %exitcond39.not = icmp eq i64 %i.n, %3
  br i1 %exitcond39.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, !llvm.loop !9294

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph, %bb.c
  %.01729 = phi i64 [ %i.z, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01729
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = zext i32 %i.p to i64                     ; 3 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !58     ; 2 uses
  %.not.i19 = icmp eq ptr %i.r, null
  br i1 %.not.i19, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.s = lshr i64 %i.q, 6
  %i.t = and i64 %i.q, 63
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.v = load i64, ptr %i.u, align 8, !tbaa !59
  %i.w = shl nuw i64 1, %i.t
  %i.x = and i64 %i.v, %i.w
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14
  tail call void @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(17) %1)
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.z = add nuw i64 %.01729, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %3
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !9293

_ZNK6duckdb15SelectionVector9get_indexEm.exit21:  ; preds = %.lr.ph31, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21
  %.030 = phi i64 [ %i.ae, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21 ], [ 0, %.lr.ph31 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.030
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ac ; 2 uses
  %.sroa.0.0.copyload.i22 = load i64, ptr %i.ad, align 8
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i24 = load ptr, ptr %.sroa.2.0..sroa_idx.i23, align 8, !tbaa !14
  tail call void @_ZN6duckdb13QuantileStateINS_8string_tENS_18QuantileStringTypeEE10AddElementES1_RNS_18AggregateInputDataE(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 %.sroa.0.0.copyload.i22, ptr %.sroa.2.0.copyload.i24, ptr noundef nonnull align 8 dereferenceable(17) %1)
  %i.ae = add nuw i64 %.030, 1                    ; 2 uses
  %exitcond38.not = icmp eq i64 %i.ae, %3
  br i1 %exitcond38.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, !llvm.loop !9294

.loopexit:                                        ; preds = %bb.c, %bb.b, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21, %_ZNK6duckdb15SelectionVector9get_indexEm.exit21.us, %.preheader27, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17AggregateExecutor7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEENS_21QuantileListOperationIS3_Lb1EEEEEvRNS_6VectorERNS_18AggregateInputDataEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIPNS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6duckdb17QuantileOperation7DestroyINS_13QuantileStateINS_8string_tENS_18QuantileStringTypeEEEEEvRT_RNS_18AggregateInputDataE.exit, %bb.a
end_hunk_3
