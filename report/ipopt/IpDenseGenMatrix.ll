Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpDenseGenMatrix?download=true
inline.NumInlined: 625
inline.NumDeleted: 321
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK5Ipopt13CachedResultsIdE15GetCachedResultERdRKSt6vectorIPKNS_12TaggedObjectESaIS6_EERKS3_IdSaIdEE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !114, !range !76, !noundef !77
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %.sroa.06.011.i, align 8, !tbaa !99 ; 3 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !118
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !118
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.011.i) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.011.i, i64 noundef 24) #20
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(96) %i.f) #18, !inline_history !1
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.q = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %.lr.ph.i ] ; 3 uses
  %.not9.i = icmp eq ptr %i.j, %i.q
  br i1 %.not9.i, label %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit.loopexit, label %.lr.ph.i, !llvm.loop !2

_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit.loopexit: ; preds = %bb.d
  %.sroa.010.020.pre = load ptr, ptr %i.q, align 8, !tbaa !99
  br label %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit

_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit: ; preds = %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit.loopexit, %bb.b
  %.sroa.010.020.a = phi ptr [ %.sroa.010.020.pre, %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit.loopexit ], [ %i.c, %bb.b ] ; 3 uses
  %i.r = phi ptr [ %i.j, %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit.loopexit ], [ %i.b, %bb.b ] ; 3 uses
  %.not1521 = icmp eq ptr %.sroa.010.020.a, %i.r
  br i1 %.not1521, label %.loopexit17, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.u = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %.fr25 = freeze i64 %i.x
  %i.y = ashr i64 %.fr25, 3                       ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aa = trunc i64 %i.y to i32
  %i.ab = icmp sgt i32 %i.aa, 0
  %wide.trip.count.i = and i64 %i.y, 2147483647
  br i1 %i.ab, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit.us
  %.sroa.010.022.us = phi ptr [ %.sroa.010.0.us, %.loopexit.us ], [ %.sroa.010.020.a, %.lr.ph ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.022.us, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !101 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !119
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !120 ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  %.not.i6.us = icmp eq i64 %i.y, %i.al
  br i1 %.not.i6.us, label %bb.e, label %.loopexit.us

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !121
  %i.an = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = lshr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !121
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !65 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %.not23.i.us = icmp eq i64 %i.aq, %i.ay
  br i1 %.not23.i.us, label %.lr.ph.i7.us, label %.loopexit.us

.lr.ph.i7.us:                                     ; preds = %bb.e, %bb.h
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.us
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !63 ; 2 uses
  %.not24.i.us = icmp eq ptr %i.ba, null
  br i1 %.not24.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i7.us
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !56
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.us
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !54
  %.not25.i.us = icmp eq i32 %i.bc, %i.be
  br i1 %.not25.i.us, label %bb.h, label %.loopexit.us

bb.g:                                             ; preds = %.lr.ph.i7.us
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.us
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !54
  %.not27.i.us = icmp eq i32 %i.bg, 0
  br i1 %.not27.i.us, label %bb.h, label %.loopexit.us

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %.preheader.i.loopexit.us, label %.lr.ph.i7.us, !llvm.loop !186

.lr.ph34.preheader.i.us:                          ; preds = %.preheader.i.loopexit.us
  %wide.trip.count42.i.us = and i64 %i.ar, 2147483647
  br label %.lr.ph34.i.us

.lr.ph34.i.us:                                    ; preds = %bb.i, %.lr.ph34.preheader.i.us
  %indvars.iv39.i.us = phi i64 [ 0, %.lr.ph34.preheader.i.us ], [ %indvars.iv.next40.i.us, %bb.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv39.i.us
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv39.i.us
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !51
  %i.bl = fcmp oeq double %i.bi, %i.bk
  br i1 %i.bl, label %bb.i, label %.loopexit.us

bb.i:                                             ; preds = %.lr.ph34.i.us
  %indvars.iv.next40.i.us = add nuw nsw i64 %indvars.iv39.i.us, 1 ; 2 uses
  %exitcond43.not.i.us = icmp eq i64 %indvars.iv.next40.i.us, %wide.trip.count42.i.us
  br i1 %exitcond43.not.i.us, label %_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit.a, label %.lr.ph34.i.us, !llvm.loop !187

.loopexit.us:                                     ; preds = %bb.f, %bb.g, %.lr.ph34.i.us, %bb.e, %.lr.ph.split.us
  %.sroa.010.0.us = load ptr, ptr %.sroa.010.022.us, align 8, !tbaa !99 ; 2 uses
  %.not15.us = icmp eq ptr %.sroa.010.0.us, %i.r
  br i1 %.not15.us, label %.loopexit17, label %.lr.ph.split.us, !llvm.loop !188

.preheader.i.loopexit.us:                         ; preds = %bb.h
  %i.bm = trunc i64 %i.ar to i32
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph34.preheader.i.us, label %_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit.a

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit.a
  %.sroa.010.022 = phi ptr [ %.sroa.010.0, %.loopexit.a ], [ %.sroa.010.020.a, %.lr.ph ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.010.022, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !101 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !119
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !120
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2
  %.not.i6 = icmp eq i64 %i.y, %i.bx
  br i1 %.not.i6, label %bb.j, label %.loopexit.a

bb.j:                                             ; preds = %.lr.ph.split
  %i.by = load ptr, ptr %i.z, align 8, !tbaa !121
  %i.bz = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = lshr exact i64 %i.cc, 3                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !121
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !65 ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %.not23.i = icmp eq i64 %i.cc, %i.ck
  br i1 %.not23.i, label %.preheader30.i, label %.loopexit.a

.preheader30.i:                                   ; preds = %bb.j
  %i.cl = trunc i64 %i.cd to i32
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph34.preheader.i, label %_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit.a

.lr.ph34.preheader.i:                             ; preds = %.preheader30.i
  %wide.trip.count42.i = and i64 %i.cd, 2147483647
  br label %.lr.ph34.i

bb.k:                                             ; preds = %.lr.ph34.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next40.i, %wide.trip.count42.i
  br i1 %exitcond43.not.i, label %_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit.a, label %.lr.ph34.i, !llvm.loop !187

.lr.ph34.i:                                       ; preds = %bb.k, %.lr.ph34.preheader.i
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph34.preheader.i ], [ %indvars.iv.next40.i, %bb.k ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv39.i
  %i.co = load double, ptr %i.cn, align 8, !tbaa !51
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv39.i
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !51
  %i.cr = fcmp oeq double %i.co, %i.cq
  br i1 %i.cr, label %bb.k, label %.loopexit.a

_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit.a: ; preds = %.preheader30.i, %bb.k, %.preheader.i.loopexit.us, %bb.i
  %i.cs = phi ptr [ %i.ad, %bb.i ], [ %i.ad, %.preheader.i.loopexit.us ], [ %i.bp, %bb.k ], [ %i.bp, %.preheader30.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !51
  store double %i.cu, ptr %1, align 8, !tbaa !51
  br label %.loopexit17

.loopexit.a:                                      ; preds = %.lr.ph34.i, %.lr.ph.split, %bb.j
  %.sroa.010.0 = load ptr, ptr %.sroa.010.022, align 8, !tbaa !99 ; 2 uses
  %.not15 = icmp eq ptr %.sroa.010.0, %i.r
  br i1 %.not15, label %.loopexit17, label %.lr.ph.split, !llvm.loop !188

.loopexit17:                                      ; preds = %.loopexit.a, %.loopexit.us, %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit, %_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit.a, %bb.a
  %.05 = phi i1 [ false, %bb.a ], [ true, %_ZNK5Ipopt15DependentResultIdE19DependentsIdenticalERKSt6vectorIPKNS_12TaggedObjectESaIS5_EERKS2_IdSaIdEE.exit.a ], [ false, %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit ], [ false, %.loopexit.us ], [ false, %.loopexit.a ]
  ret i1 %.05
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt13CachedResultsIdE15AddCachedResultERKdRKSt6vectorIPKNS_12TaggedObjectESaIS7_EERKS4_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %.not910.i = icmp eq ptr %i.c, %i.b
  br i1 %.not910.i, label %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.d = phi ptr [ %i.q, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %.sroa.06.011.i = phi ptr [ %i.j, %bb.d ], [ %i.c, %bb.b ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !114, !range !76, !noundef !77
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %.sroa.06.011.i, align 8, !tbaa !99 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !118
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !118
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.011.i) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.011.i, i64 noundef 24) #20
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(96) %i.f) #18, !inline_history !1
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.q = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %.lr.ph.i ] ; 2 uses
  %.not9.i = icmp eq ptr %i.j, %i.q
  br i1 %.not9.i, label %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit, label %.lr.ph.i, !llvm.loop !2

_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit: ; preds = %bb.d, %bb.a, %bb.b
  %i.r = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #19 ; 3 uses
  invoke void @_ZN5Ipopt15DependentResultIdEC2ERKdRKSt6vectorIPKNS_12TaggedObjectESaIS7_EERKS4_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !96   ; 3 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !99
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !189
  store ptr %i.t, ptr %i.t, align 8, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 0, ptr %i.v, align 8, !tbaa !190
  store ptr %i.t, ptr %i.a, align 8, !tbaa !96
  br label %bb.h

bb.g:                                             ; preds = %_ZNK5Ipopt13CachedResultsIdE25CleanupInvalidatedResultsEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 96) #20
  resume { ptr, i32 } %i.w

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.x = phi ptr [ %i.t, %bb.f ], [ %.pre, %._crit_edge ]
  %i.y = phi ptr [ %i.t, %bb.f ], [ %i.s, %._crit_edge ]
  %i.z = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.r, ptr %i.aa, align 8, !tbaa !101
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %i.x) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !118
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !118
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !191 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !96  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !118 ; 2 uses
  %i.ak = zext nneg i32 %i.af to i64
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !189 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !101 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(96) %i.ap) #18
  %.pre5 = load ptr, ptr %i.a, align 8, !tbaa !96 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre5, i64 8
  %.pre6 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !189
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %.pre5, i64 16
  %.pre8 = load i64, ptr %.phi.trans.insert7, align 8, !tbaa !118
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = phi i64 [ %.pre8, %bb.k ], [ %i.aj, %bb.j ]
  %i.av = phi ptr [ %.pre6, %bb.k ], [ %i.an, %bb.j ] ; 2 uses
  %i.aw = phi ptr [ %.pre5, %bb.k ], [ %i.ah, %bb.j ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = add i64 %i.au, -1
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !118
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 24) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt15DependentResultIdEC2ERKdRKSt6vectorIPKNS_12TaggedObjectESaIS7_EERKS4_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt15DependentResultIdEE, i64 16), ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.b, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load double, ptr %1, align 8, !tbaa !51
  store double %i.d, ptr %i.c, align 8, !tbaa !193
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = ashr exact i64 %i.k, 1
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19
          to label %.noexc21 unwind label %bb.h   ; 4 uses

.noexc21:                                         ; preds = %bb.c
  store ptr %i.o, ptr %i.e, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.p, ptr %i.q, align 8, !tbaa !122
  store i32 0, ptr %i.o, align 4, !tbaa !54
  %4 = getelementptr i8, ptr %i.o, i64 4          ; 3 uses
  %5 = add nsw i64 %i.l, -1                       ; 2 uses
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc21
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %5, 2     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc21
  %.0.i.i.i.i.i = phi ptr [ %i.r, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %4, %.noexc21 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.i.i.i.i.i, ptr %i.s, align 8, !tbaa !119
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !121  ; 2 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not.i.i.i.i22 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i.i22, label %.noexc24, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
  %i.aa = icmp ugt i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !194

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc23 unwind label %bb.i

.noexc23:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #19
          to label %.noexc24 unwind label %bb.i

.noexc24:                                         ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
  %i.ac = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.ab, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ac, ptr %i.t, align 8, !tbaa !65
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !121
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !66
  %i.ag = load ptr, ptr %3, align 8, !tbaa !195   ; 3 uses
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !195
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.e, label %bb.f, !prof !93

bb.e:                                             ; preds = %.noexc24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ac, ptr align 8 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.f:                                             ; preds = %.noexc24
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.g, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = load double, ptr %i.ag, align 8, !tbaa !51
  store double %i.an, ptr %i.ac, align 8, !tbaa !51
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit:                ; preds = %bb.e, %bb.f, %bb.g
  %i.ao = getelementptr inbounds i8, ptr %i.ac, i64 %i.ak
  store ptr %i.ao, ptr %i.ad, align 8, !tbaa !121
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !61  ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 3
  %i.av = trunc i64 %i.au to i32
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
  ret void

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit, %bb.o
  %i.az = phi ptr [ %i.bt, %bb.o ], [ %i.aq, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit ] ; 2 uses
  %i.ba = phi ptr [ %i.bu, %bb.o ], [ %i.ap, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !63 ; 2 uses
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  invoke void @_ZN5Ipopt8Observer13RequestAttachENS0_10NotifyTypeEPKNS_7SubjectE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %i.bd)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !63
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !56
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !54
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !61
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %i.t, align 8, !tbaa !65  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !66
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.n:                                             ; preds = %.lr.ph
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  store i32 0, ptr %i.bs, align 4, !tbaa !54
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bt = phi ptr [ %i.be, %bb.k ], [ %i.az, %bb.n ] ; 2 uses
  %i.bu = phi ptr [ %.pre, %bb.k ], [ %i.ba, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = shl i64 %i.bx, 29
  %i.bz = ashr i64 %i.by, 32
  %i.ca = icmp slt i64 %indvars.iv.next, %i.bz
  br i1 %i.ca, label %.lr.ph, label %._crit_edge, !llvm.loop !192

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.m, %bb.l, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.i ], [ %i.bl, %bb.l ], [ %i.bl, %bb.m ] ; 2 uses
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cc = load ptr, ptr %7, align 8, !tbaa !122
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cf) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.p, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.h ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %.pn, %bb.p ]
  tail call void @_ZN5Ipopt8ObserverD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt8Observer13RequestAttachENS0_10NotifyTypeEPKNS_7SubjectE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %i.c, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !95
  br label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !124  ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPKN5Ipopt7SubjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #22
  unreachable

_ZNKSt6vectorIPKN5Ipopt7SubjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #19 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %2, ptr %i.s, align 8, !tbaa !92
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPKN5Ipopt7SubjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPKN5Ipopt7SubjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !123
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #20
  br label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !124
  store ptr %i.u, ptr %i.b, align 8, !tbaa !95
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.d, align 8, !tbaa !123
  br label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !125 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !86
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE9push_backERKS3_.exit
  store ptr %0, ptr %i.ab, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !125
  br label %_ZNK5Ipopt7Subject14AttachObserverENS_8Observer10NotifyTypeEPS1_.exit

bb.h:                                             ; preds = %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE9push_backERKS3_.exit
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !85  ; 4 uses
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 5 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.i, label %_ZNKSt6vectorIPN5Ipopt8ObserverESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #22
  unreachable

_ZNKSt6vectorIPN5Ipopt8ObserverESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #19 ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  store ptr %0, ptr %i.ar, align 8, !tbaa !88
  %i.as = icmp sgt i64 %i.ai, 0
  br i1 %i.as, label %bb.j, label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN5Ipopt8ObserverESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %i.af, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN5Ipopt8ObserverESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !86
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aw) #20
  br label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.aq, ptr %i.z, align 8, !tbaa !85
  store ptr %i.at, ptr %i.aa, align 8, !tbaa !125
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.ax, ptr %i.ac, align 8, !tbaa !86
  br label %_ZNK5Ipopt7Subject14AttachObserverENS_8Observer10NotifyTypeEPS1_.exit

_ZNK5Ipopt7Subject14AttachObserverENS_8Observer10NotifyTypeEPS1_.exit: ; preds = %bb.g, %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt15DependentResultIdED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt15DependentResultIdEE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !120  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt8ObserverE, i64 16), ptr %0, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95   ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !124  ; 2 uses
  %.not.i4 = icmp eq ptr %i.q, %i.r
  br i1 %.not.i4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.t, %i.s
  %i.v = ashr exact i64 %i.u, 3
  br label %bb.f

bb.d:                                             ; preds = %bb.f
end_hunk_0
