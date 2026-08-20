inline.NumInlined: 471
inline.NumDeleted: 186
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK6casadi7Project8eval_genIdEEiPPKT_PPS2_PxS6_:bb.a
  br i1 %exitcond54.not.i.3, label %.preheader.i, label %.lr.ph47.i, !llvm.loop !64

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i
  %.248.i = phi i64 [ %i.dp, %.lr.ph49.i ], [ %.248.i.unr, %.lr.ph49.i.prol.loopexit ] ; 6 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.248.i
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !53
  %i.cu = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !57
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.248.i
  store double %i.cv, ptr %i.cw, align 8, !tbaa !57
  %i.cx = add nsw i64 %.248.i, 1                  ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !53
  %i.da = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !57
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.cx
  store double %i.db, ptr %i.dc, align 8, !tbaa !57
  %i.dd = add nsw i64 %.248.i, 2                  ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !53
  %i.dg = getelementptr inbounds [8 x i8], ptr %4, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !57
  %i.di = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dd
  store double %i.dh, ptr %i.di, align 8, !tbaa !57
  %i.dj = add nsw i64 %.248.i, 3                  ; 2 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !53
  %i.dm = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !57
  %i.do = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.dj
  store double %i.dn, ptr %i.do, align 8, !tbaa !57
  %i.dp = add nsw i64 %.248.i, 4                  ; 2 uses
  %exitcond55.not.i.3 = icmp eq i64 %i.dp, %i.y
  br i1 %exitcond55.not.i.3, label %.loopexit.i, label %.lr.ph49.i, !llvm.loop !65

_ZN6casadi14casadi_projectIdEEvPKT_PKxPS1_S5_S6_.exit: ; preds = %.loopexit.i, %_ZNK6casadi6MXNode3depEx.exit
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi7Project7eval_sxEPPKNS_6SXElemEPPS1_PxS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6casadi7Project8eval_genINS_6SXElemEEEiPPKT_PPS3_PxS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi7Project8eval_genINS_6SXElemEEEiPPKT_PPS3_PxS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 0) #20
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = tail call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = icmp sgt i64 %i.l, 0
  br i1 %i.u, label %.lr.ph55.preheader.i, label %_ZN6casadi14casadi_projectINS_6SXElemEEEvPKT_PKxPS2_S6_S7_.exit

.lr.ph55.preheader.i:                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %.pre.i = load i64, ptr %i.r, align 8, !tbaa !53
  br label %.lr.ph55.i

.loopexit.i:                                      ; preds = %.lr.ph52.i, %._crit_edge49.i
  %i.v = phi i64 [ %i.ax, %._crit_edge49.i ], [ %i.bg, %.lr.ph52.i ]
  %exitcond.not.i = icmp eq i64 %i.y, %i.l
  br i1 %exitcond.not.i, label %_ZN6casadi14casadi_projectINS_6SXElemEEEvPKT_PKxPS2_S6_S7_.exit, label %.lr.ph55.i, !llvm.loop !68

.lr.ph55.i:                                       ; preds = %.loopexit.i, %.lr.ph55.preheader.i
  %i.w = phi i64 [ %i.v, %.loopexit.i ], [ %.pre.i, %.lr.ph55.preheader.i ] ; 2 uses
  %.04153.i = phi i64 [ %i.y, %.loopexit.i ], [ 0, %.lr.ph55.preheader.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.04153.i
  %i.y = add nuw nsw i64 %.04153.i, 1             ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.y ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !53  ; 2 uses
  %i.ab = icmp slt i64 %i.w, %i.aa
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph55.i, %.lr.ph.i
  %.044.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %i.w, %.lr.ph55.i ] ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.044.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !53
  %i.ae = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ad
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSEd(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, double noundef 0.000000e+00) ; 0 uses
  %i.ag = add nsw i64 %.044.i, 1                  ; 2 uses
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !53  ; 2 uses
  %i.ai = icmp slt i64 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !69

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph55.i
  %i.aj = phi i64 [ %i.aa, %.lr.ph55.i ], [ %i.ah, %.lr.ph.i ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.04153.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !53 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !53
  %i.ao = icmp slt i64 %i.al, %i.an
  br i1 %i.ao, label %.lr.ph48.i, label %._crit_edge49.i

.lr.ph48.i:                                       ; preds = %._crit_edge.i, %.lr.ph48.i
  %.146.i = phi i64 [ %i.au, %.lr.ph48.i ], [ %i.al, %._crit_edge.i ] ; 3 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.146.i
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.146.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !53
  %i.as = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ar
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.ap) ; 0 uses
  %i.au = add nsw i64 %.146.i, 1                  ; 2 uses
  %i.av = load i64, ptr %i.am, align 8, !tbaa !53
  %i.aw = icmp slt i64 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph48.i, label %._crit_edge49.loopexit.i, !llvm.loop !70

._crit_edge49.loopexit.i:                         ; preds = %.lr.ph48.i
  %.pre57.i = load i64, ptr %i.z, align 8, !tbaa !53
  br label %._crit_edge49.i

._crit_edge49.i:                                  ; preds = %._crit_edge49.loopexit.i, %._crit_edge.i
  %i.ax = phi i64 [ %.pre57.i, %._crit_edge49.loopexit.i ], [ %i.aj, %._crit_edge.i ] ; 2 uses
  %i.ay = load i64, ptr %i.x, align 8, !tbaa !53  ; 2 uses
  %i.az = icmp slt i64 %i.ay, %i.ax
  br i1 %i.az, label %.lr.ph52.i, label %.loopexit.i

.lr.ph52.i:                                       ; preds = %._crit_edge49.i, %.lr.ph52.i
  %.250.i = phi i64 [ %i.bf, %.lr.ph52.i ], [ %i.ay, %._crit_edge49.i ] ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.250.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !53
  %i.bc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.250.i
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.bc) ; 0 uses
  %i.bf = add nsw i64 %.250.i, 1                  ; 2 uses
  %i.bg = load i64, ptr %i.z, align 8, !tbaa !53  ; 2 uses
  %i.bh = icmp slt i64 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph52.i, label %.loopexit.i, !llvm.loop !71

_ZN6casadi14casadi_projectINS_6SXElemEEEvPKT_PKxPS2_S6_S7_.exit: ; preds = %.loopexit.i, %_ZNK6casadi6MXNode3depEx.exit
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi7Project7eval_mxERKSt6vectorINS_2MXESaIS2_EERS4_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = load ptr, ptr %1, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext false)
  %i.c = load ptr, ptr %2, align 8, !tbaa !52
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.b ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %bb.a
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.e
}

; Function Attrs: nounwind
declare void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi7Project10ad_forwardERKSt6vectorIS1_INS_2MXESaIS2_EESaIS4_EERS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.c = load ptr, ptr %2, align 8, !tbaa !75
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = udiv i64 %i.f, 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %5 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %.01114 = phi i64 [ 0, %.lr.ph ], [ %i.x, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.l = load ptr, ptr %1, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.01114
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 0) #20
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  call void @_ZNK6casadi8SparsitymlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  invoke void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext true)
          to label %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit unwind label %bb.e

_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit: ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.01114
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.f ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN6casadi2MXaSERKS0_.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #19
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZN6casadi2MXaSERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.x = add nuw nsw i64 %.01114, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !76

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.y, %bb.e ]
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit13 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #19
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit13: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn
}

declare void @_ZNK6casadi8SparsitymlERKS0_(ptr dead_on_unwind writable sret(%"class.casadi::Sparsity") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi7Project10ad_reverseERKSt6vectorIS1_INS_2MXESaIS2_EESaIS4_EERS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %4 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %5 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.c = load ptr, ptr %1, align 8, !tbaa !75
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = udiv i64 %i.f, 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %6 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %.01114 = phi i64 [ 0, %.lr.ph ], [ %i.y, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.l = load ptr, ptr %1, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.01114
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.not, label %bb.c, label %_ZNK6casadi6MXNode3depEx.exit

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 0) #20
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.b
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  call void @_ZNK6casadi8SparsitymlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  invoke void @_ZN6casadi2MX7projectERKS0_RKNS_8SparsityEb(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext true)
          to label %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit unwind label %bb.g

_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit: ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.01114
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.body

bb.e:                                             ; preds = %.noexc
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #19
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.y = add nuw nsw i64 %.01114, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %6
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !77

bb.g:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZN6casadi7projectERKNS_2MXERKNS_8SparsityEb.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.v, %bb.d ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.z, %bb.g ]
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit13 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #19
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit13: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi7Project10sp_forwardEPPKyPPyPxS4_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i.not = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.not, label %bb.b, label %_ZNK6casadi6MXNode3depEx.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 0) #20
  unreachable

_ZNK6casadi6MXNode3depEx.exit:                    ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !78
  %i.f = load ptr, ptr %2, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  tail call void @_ZNK6casadi8Sparsity3setIyEEvPT_PKS2_RKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.f, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi8Sparsity3setIyEEvPT_PKS2_RKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::vector.5", align 8    ; 5 uses
  %i.a = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 12 uses
  %i.b = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 6 uses
  %i.c = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 5 uses
  %i.d = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %3) ; 6 uses
  %i.e = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) ; 4 uses
  %i.f = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  %i.g = mul nsw i64 %i.f, %i.e
  %i.h = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i64 %i.a, 1
  br i1 %i.i, label %bb.c, label %bb.d, !prof !80

bb.c:                                             ; preds = %bb.b
  %.idx216 = shl nsw i64 %i.a, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %.idx216, i1 false)
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %i.a, 1
  br i1 %i.j, label %bb.e, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %2, align 8, !tbaa !53
  store i64 %i.k, ptr %1, align 8, !tbaa !53
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext false)
  br i1 %i.l, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_emptyEb(ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext false)
  br i1 %i.m, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp eq i64 %i.g, 1
  br i1 %i.n, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.idx = shl i64 %i.a, 3                         ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.idx
  %i.p = icmp eq i64 %i.d, 0
  br i1 %i.p, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load i64, ptr %2, align 8, !tbaa !53
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = phi i64 [ %i.q, %bb.j ], [ 0, %bb.i ]    ; 2 uses
  %.not5.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not5.i.i.i, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k
  %i.s = add i64 %.idx, -8                        ; 2 uses
  %i.t = lshr exact i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader300, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.u, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.x  ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !53
  store <2 x i64> %broadcast.splat, ptr %i.y, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.preheader300

.lr.ph.i.i.i.preheader300:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.06.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader300, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader300 ] ; 2 uses
  store i64 %i.r, ptr %.06.i.i.i, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.o
  br i1 %.not.i.i.i, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %.lr.ph.i.i.i, !llvm.loop !84

bb.l:                                             ; preds = %bb.h
  %i.ab = icmp eq i64 %i.c, %i.f
  %i.ac = icmp eq i64 %i.b, %i.e
  %or.cond170 = and i1 %i.ac, %i.ab
  br i1 %or.cond170, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ae = tail call noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %i.af = tail call noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  %i.ag = tail call noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8) %3) ; 2 uses
  %i.ah = icmp sgt i64 %i.c, 0
  br i1 %i.ah, label %.lr.ph240, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

.loopexit:                                        ; preds = %bb.u, %bb.o
  %exitcond246.not = icmp eq i64 %i.ak, %i.c
  br i1 %exitcond246.not, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %.lr.ph240, !llvm.loop !85

.lr.ph240:                                        ; preds = %bb.m, %.loopexit
  %.0148238 = phi i64 [ %i.ak, %.loopexit ], [ 0, %bb.m ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.0148238
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !53 ; 3 uses
  %i.ak = add nuw nsw i64 %.0148238, 1            ; 4 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !53 ; 3 uses
  %i.an = icmp slt i64 %i.aj, %i.am
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph240
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.aj
end_hunk_0
begin_hunk_1_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !21
  %i.q = load i64, ptr %i.k, align 8, !tbaa !31
  store i64 %i.q, ptr %i.i, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !26
  store ptr %i.k, ptr %i.h, align 8, !tbaa !21
  store i64 0, ptr %i.s, align 8, !tbaa !26
  store i8 0, ptr %i.k, align 8, !tbaa !31
  ret void
}

declare void @_ZN6casadi19DeserializingStream6unpackERc(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi14casadi_densifyINS_6SXElemES1_EEvPKT_PKxPT0_x(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %5 = alloca %"class.casadi::SXElem", align 8    ; 7 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %1, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = mul nsw i64 %i.c, %i.a                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZN6casadi12casadi_clearINS_6SXElemEEEvPT_x.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i64 [ %i.k, %.lr.ph.i ], [ 0, %bb.b ]
  %.046.i = phi ptr [ %i.i, %.lr.ph.i ], [ %2, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSEd(ptr noundef nonnull align 8 dereferenceable(8) %.046.i, double noundef 0.000000e+00) ; 0 uses
  %i.k = add nuw nsw i64 %.07.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %i.g
  br i1 %exitcond.not.i, label %_ZN6casadi12casadi_clearINS_6SXElemEEEvPT_x.exit, label %.lr.ph.i, !llvm.loop !189

_ZN6casadi12casadi_clearINS_6SXElemEEEvPT_x.exit: ; preds = %.lr.ph.i, %bb.b
  %.not52 = icmp eq ptr %0, null
  br i1 %.not52, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN6casadi12casadi_clearINS_6SXElemEEEvPT_x.exit
  %.not53 = icmp eq i64 %3, 0
  %i.l = icmp sgt i64 %i.c, 0                     ; 2 uses
  br i1 %.not53, label %.preheader, label %.preheader58

.preheader58:                                     ; preds = %bb.c
  br i1 %i.l, label %.lr.ph71.preheader, label %.loopexit

.lr.ph71.preheader:                               ; preds = %.preheader58
  %.pre = load i64, ptr %i.d, align 8, !tbaa !53
  br label %.lr.ph71

.preheader:                                       ; preds = %bb.c
  br i1 %i.l, label %.lr.ph81.preheader, label %.loopexit

.lr.ph81.preheader:                               ; preds = %.preheader
  %.pre85 = load i64, ptr %i.d, align 8, !tbaa !53
  br label %.lr.ph81

.loopexit57:                                      ; preds = %bb.e, %.lr.ph71
  %i.m = phi i64 [ %i.n, %.lr.ph71 ], [ %i.y, %bb.e ]
  %.147.lcssa = phi ptr [ %.04669, %.lr.ph71 ], [ %i.x, %bb.e ]
  %exitcond.not = icmp eq i64 %i.o, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph71, !llvm.loop !190

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %.loopexit57
  %i.n = phi i64 [ %i.m, %.loopexit57 ], [ %.pre, %.lr.ph71.preheader ] ; 3 uses
  %.04470 = phi i64 [ %i.o, %.loopexit57 ], [ 0, %.lr.ph71.preheader ] ; 2 uses
  %.04669 = phi ptr [ %.147.lcssa, %.loopexit57 ], [ %0, %.lr.ph71.preheader ] ; 2 uses
  %i.o = add nuw nsw i64 %.04470, 1               ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !53
  %.not5565 = icmp eq i64 %i.n, %i.q
  br i1 %.not5565, label %.loopexit57, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph71
  %i.r = getelementptr [8 x i8], ptr %2, i64 %.04470
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.04367 = phi i64 [ %i.n, %.lr.ph ], [ %i.y, %bb.e ] ; 2 uses
  %.14766 = phi ptr [ %.04669, %.lr.ph ], [ %i.x, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN6casadi6SXElemC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %.14766)
  %i.s = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.04367
  %i.t = load i64, ptr %i.s, align 8, !tbaa !53
  %i.u = mul nsw i64 %i.t, %i.c
  %i.v = getelementptr [8 x i8], ptr %i.r, i64 %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.14766, i64 8 ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.y = add nsw i64 %.04367, 1                   ; 3 uses
  %i.z = load i64, ptr %i.p, align 8, !tbaa !53
  %.not55 = icmp eq i64 %i.y, %i.z
  br i1 %.not55, label %.loopexit57, label %bb.d, !llvm.loop !191

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.i

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %._crit_edge
  %i.ab = phi i64 [ %i.an, %._crit_edge ], [ %.pre85, %.lr.ph81.preheader ] ; 3 uses
  %.14580 = phi i64 [ %i.ac, %._crit_edge ], [ 0, %.lr.ph81.preheader ]
  %.279 = phi ptr [ %.3.lcssa, %._crit_edge ], [ %0, %.lr.ph81.preheader ] ; 2 uses
  %.04878 = phi ptr [ %i.ao, %._crit_edge ], [ %2, %.lr.ph81.preheader ] ; 2 uses
  %i.ac = add nuw nsw i64 %.14580, 1              ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !53
  %.not5472 = icmp eq i64 %i.ab, %i.ae
  br i1 %.not5472, label %._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %.lr.ph81, %bb.g
  %.174 = phi i64 [ %i.ak, %bb.g ], [ %i.ab, %.lr.ph81 ] ; 2 uses
  %.373 = phi ptr [ %i.aj, %bb.g ], [ %.279, %.lr.ph81 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN6casadi6SXElemC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %.373)
  %i.af = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.174
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !53
  %i.ah = getelementptr inbounds [8 x i8], ptr %.04878, i64 %i.ag
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %.lr.ph75
  %i.aj = getelementptr inbounds nuw i8, ptr %.373, i64 8 ; 2 uses
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ak = add nsw i64 %.174, 1                    ; 3 uses
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !53
  %.not54 = icmp eq i64 %i.ak, %i.al
  br i1 %.not54, label %._crit_edge, label %.lr.ph75, !llvm.loop !192

bb.h:                                             ; preds = %.lr.ph75
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.i

._crit_edge:                                      ; preds = %bb.g, %.lr.ph81
  %i.an = phi i64 [ %i.ab, %.lr.ph81 ], [ %i.ak, %bb.g ]
  %.3.lcssa = phi ptr [ %.279, %.lr.ph81 ], [ %i.aj, %bb.g ]
  %i.ao = getelementptr inbounds [8 x i8], ptr %.04878, i64 %i.a
  %exitcond84.not = icmp eq i64 %i.ac, %i.c
  br i1 %exitcond84.not, label %.loopexit, label %.lr.ph81, !llvm.loop !193

.loopexit:                                        ; preds = %.loopexit57, %._crit_edge, %.preheader58, %.preheader, %_ZN6casadi12casadi_clearINS_6SXElemEEEvPT_x.exit, %bb.a
  ret void

bb.i:                                             ; preds = %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.am, %bb.h ]
  resume { ptr, i32 } %.pn
}

declare void @_ZN6casadi6SXElemC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEE", !12, i64 0}
!12 = !{!"p1 _ZTSN6casadi20SharedObjectInternalE", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !16, i64 8}
!15 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!16 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!17 = !{!15, !16, i64 0}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!20 = distinct !{!20, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!21 = !{!22, !24, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !25, i64 8, !6, i64 16}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!24 = !{!"p1 omnipotent char", !13, i64 0}
!25 = !{!"long", !6, i64 0}
!26 = !{!22, !25, i64 8}
!27 = !{!23, !24, i64 0}
!28 = !{!29, !19}
!29 = distinct !{!29, !30, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!30 = distinct !{!30, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!31 = !{!6, !6, i64 0}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!34 = distinct !{!34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!37 = distinct !{!37, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!38 = !{!39, !36}
!39 = distinct !{!39, !40, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!40 = distinct !{!40, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!43 = distinct !{!43, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!46 = distinct !{!46, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 double", !13, i64 0}
!49 = !{!50, !51, i64 8}
!50 = !{!"_ZTSNSt12_Vector_baseIN6casadi2MXESaIS1_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"p1 _ZTSN6casadi2MXE", !13, i64 0}
!52 = !{!50, !51, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"long long", !6, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!58, !58, i64 0}
!58 = !{!"double", !6, i64 0}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !56}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !60}
!64 = distinct !{!64, !56}
!65 = distinct !{!65, !56}
!66 = !{!67, !67, i64 0}
!67 = !{!"p1 _ZTSN6casadi6SXElemE", !13, i64 0}
!68 = distinct !{!68, !56}
!69 = distinct !{!69, !56}
!70 = distinct !{!70, !56}
!71 = distinct !{!71, !56}
!72 = !{!73, !74, i64 8}
!73 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!74 = !{!"p1 _ZTSSt6vectorIN6casadi2MXESaIS1_EE", !13, i64 0}
!75 = !{!73, !74, i64 0}
!76 = distinct !{!76, !56}
!77 = distinct !{!77, !56}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 long long", !13, i64 0}
!80 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!81 = distinct !{!81, !56, !82, !83}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = distinct !{!84, !56, !83, !82}
!85 = distinct !{!85, !56}
!86 = distinct !{!86, !56}
!87 = distinct !{!87, !56}
!88 = distinct !{!88, !56}
!89 = distinct !{!89, !56}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!92 = distinct !{!92, !"_ZN6casadi6strvecB5cxx11Ev"}
!93 = distinct !{null}
!94 = !{!95}
!95 = distinct !{!95, !96}
!96 = distinct !{!96, !"LVerDomain"}
!97 = !{!98}
!98 = distinct !{!98, !96}
!99 = distinct !{!99, !56, !82, !83}
!100 = distinct !{!100, !60}
!101 = distinct !{!101, !56, !82}
!102 = !{!103}
!103 = distinct !{!103, !104}
!104 = distinct !{!104, !"LVerDomain"}
!105 = !{!106}
!106 = distinct !{!106, !104}
!107 = distinct !{!107, !56, !82, !83}
!108 = distinct !{!108, !60}
!109 = distinct !{!109, !56, !82}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!112 = distinct !{!112, !"_ZN6casadi6strvecB5cxx11Ev"}
!113 = distinct !{!113, !56}
!114 = distinct !{!114, !56}
!115 = distinct !{!115, !56}
!116 = !{!117, !118, i64 0}
!117 = !{!"_ZTSSt18_Bit_iterator_base", !118, i64 0, !5, i64 8}
!118 = !{!"p1 long", !13, i64 0}
!119 = !{!25, !25, i64 0}
!120 = !{!121, !123, i64 32}
!121 = !{!"_ZTSSt8ios_base", !25, i64 8, !25, i64 16, !122, i64 24, !123, i64 28, !123, i64 32, !124, i64 40, !125, i64 48, !6, i64 64, !5, i64 192, !126, i64 200, !127, i64 208}
!122 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!123 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!124 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!125 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !25, i64 8}
!126 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!127 = !{!"_ZTSSt6locale", !128, i64 0}
!128 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!131 = distinct !{!131, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!134 = distinct !{!134, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!135 = !{!133, !130}
!136 = !{!137, !24, i64 40}
!137 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !24, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !127, i64 56}
!138 = !{!137, !24, i64 32}
!139 = !{!140, !25, i64 8}
!140 = !{!"_ZTSSi", !25, i64 8}
!141 = !{!142, !153, i64 72}
!142 = !{!"_ZTSN6casadi17SerializingStreamE", !143, i64 0, !151, i64 56, !152, i64 64, !153, i64 72}
!143 = !{!"_ZTSSt13unordered_mapIPvxSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_xEEE", !144, i64 0}
!144 = !{!"_ZTSSt10_HashtableIPvSt4pairIKS0_xESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE", !145, i64 0, !25, i64 8, !147, i64 16, !25, i64 24, !149, i64 32, !148, i64 48}
!145 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !146, i64 0}
!146 = !{!"any p2 pointer", !13, i64 0}
!147 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !148, i64 0}
!148 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!149 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !150, i64 0, !25, i64 8}
!150 = !{!"float", !6, i64 0}
!151 = !{!"p1 _ZTSSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE", !13, i64 0}
!152 = !{!"p1 _ZTSSo", !13, i64 0}
!153 = !{!"bool", !6, i64 0}
!154 = !{i8 0, i8 2}
!155 = !{}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!158 = distinct !{!158, !"_ZN6casadi6strvecB5cxx11Ev"}
!159 = !{!160, !153, i64 40}
!160 = !{!"_ZTSN6casadi19DeserializingStreamE", !161, i64 0, !166, i64 24, !167, i64 32, !153, i64 40, !153, i64 41}
!161 = !{!"_ZTSSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE", !162, i64 0}
!162 = !{!"_ZTSSt12_Vector_baseIN6casadi18UniversalNodeOwnerESaIS1_EE", !163, i64 0}
!163 = !{!"_ZTSNSt12_Vector_baseIN6casadi18UniversalNodeOwnerESaIS1_EE12_Vector_implE", !164, i64 0}
!164 = !{!"_ZTSNSt12_Vector_baseIN6casadi18UniversalNodeOwnerESaIS1_EE17_Vector_impl_dataE", !165, i64 0, !165, i64 8, !165, i64 16}
!165 = !{!"p1 _ZTSN6casadi18UniversalNodeOwnerE", !13, i64 0}
!166 = !{!"p1 _ZTSSt13unordered_mapIPvxSt4hashIS0_ESt8equal_toIS0_ESaISt4pairIKS0_xEEE", !13, i64 0}
!167 = !{!"p1 _ZTSSi", !13, i64 0}
!168 = !{!169}
end_hunk_1
