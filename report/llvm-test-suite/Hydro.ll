inline.NumInlined: 461
inline.NumDeleted: 172
begin_hunk_0_@_ZN5Hydro9sumEnergyEPKdS1_S1_S1_S1_PK7double2S4_RdS5_iiii:bb.a
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv48
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = sext i32 %i.bh to i64                   ; 3 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !50
  %i.bl = sext i32 %i.bf to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [16 x i8], ptr %6, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !112
  %i.bo = fmul double %i.bk, %i.bn
  %i.bp = fmul double %i.bo, 5.000000e-01
  %i.bq = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv48
  %i.br = load double, ptr %i.bq, align 8, !tbaa !50
  %i.bs = sext i32 %i.bd to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !50
  %i.bv = fadd double %i.br, %i.bu
  %i.bw = fmul double %i.bp, %i.bv
  %i.bx = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bi
  %i.by = load double, ptr %i.bx, align 8, !tbaa !50
  %i.bz = fmul double %i.by, %i.bw
  %i.ca = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bi
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !50
  %i.cc = fdiv double %i.bz, %i.cb
  %i.cd = fmul double %i.cc, 5.000000e-01
  %i.ce = getelementptr inbounds [16 x i8], ptr %7, i64 %i.bl ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !112 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !114 ; 2 uses
  %i.ci = fmul double %i.ch, %i.ch
  %i.cj = tail call noundef double @llvm.fmuladd.f64(double %i.cf, double %i.cf, double %i.ci)
  %i.ck = fmul double %i.cd, %i.cj
  %i.cl = fadd double %.03641, %i.ck              ; 2 uses
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, 1 ; 2 uses
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count51
  br i1 %exitcond52.not, label %._crit_edge44.loopexit, label %bb.b, !llvm.loop !294
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN5Hydro13calcDtCourantEPKdRdPcii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp slt i32 %4, %5
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load double, ptr %i.f, align 8, !tbaa !35
  %i.h = sext i32 %4 to i64
  %wide.trip.count = sext i32 %5 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.023.lcssa = phi i32 [ -1, %bb.a ], [ %i.y, %bb.b ]
  %.0.lcssa = phi double [ f0x547D42AEA2879F2E, %bb.a ], [ %i.z, %bb.b ] ; 2 uses
  %i.i = load double, ptr %2, align 8, !tbaa !50
  %i.j = fcmp olt double %.0.lcssa, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.030 = phi double [ f0x547D42AEA2879F2E, %.lr.ph ], [ %i.z, %bb.b ] ; 2 uses
  %.02329 = phi i32 [ -1, %.lr.ph ], [ %i.y, %bb.b ]
  %i.k = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.l = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.m = load double, ptr %i.l, align 8, !tbaa !50 ; 2 uses
  %i.n = fcmp olt double %i.m, 1.000000e-99
  %i.o = load double, ptr %i.k, align 8, !tbaa !50 ; 2 uses
  %i.p = select i1 %i.n, double 1.000000e-99, double %i.m ; 2 uses
  %i.q = fcmp olt double %i.o, %i.p
  %i.r = select i1 %i.q, double %i.p, double %i.o
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.t = load double, ptr %i.s, align 8, !tbaa !50
  %i.u = fmul double %i.t, %i.g
  %i.v = fdiv double %i.u, %i.r                   ; 2 uses
  %i.w = fcmp olt double %i.v, %.030              ; 2 uses
  %i.x = trunc nsw i64 %indvars.iv to i32
  %i.y = select i1 %i.w, i32 %i.x, i32 %.02329    ; 2 uses
  %i.z = select i1 %i.w, double %i.v, double %.030 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !290

bb.c:                                             ; preds = %._crit_edge
  store double %.0.lcssa, ptr %2, align 8, !tbaa !50
  %i.aa = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %3, i64 noundef 80, ptr noundef nonnull @.str.9, i32 noundef %.023.lcssa) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN5Hydro12calcDtVolumeEPKdS1_dRdPcii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp slt i32 %6, %7
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sext i32 %6 to i64                       ; 4 uses
  %wide.trip.count = sext i32 %7 to i64           ; 2 uses
  %i.c = sub nsw i64 %wide.trip.count, %i.b       ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.d = add nsw i64 %wide.trip.count, -1
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.031.epil.init = phi double [ 1.000000e-99, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.02630.epil.init = phi i32 [ -1, %.lr.ph.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod42 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.f = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.g = load double, ptr %i.f, align 8, !tbaa !50
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.i = load double, ptr %i.h, align 8, !tbaa !50 ; 2 uses
  %i.j = fsub double %i.g, %i.i
  %i.k = fdiv double %i.j, %i.i
  %i.l = tail call noundef double @llvm.fabs.f64(double %i.k) ; 2 uses
  %i.m = fcmp ogt double %i.l, %.031.epil.init    ; 2 uses
  %i.n = trunc nsw i64 %indvars.iv.epil.init to i32
  %i.o = select i1 %i.m, i32 %i.n, i32 %.02630.epil.init
  %i.p = select i1 %i.m, double %i.l, double %.031.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.026.lcssa = phi i32 [ -1, %bb.a ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.o, %.lr.ph.epil.preheader ]
  %.0.lcssa = phi double [ 1.000000e-99, %bb.a ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %.lr.ph.epil.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load double, ptr %i.q, align 8, !tbaa !37
  %i.s = fmul double %3, %i.r
  %i.t = fdiv double %i.s, %.0.lcssa              ; 2 uses
  %i.u = load double, ptr %4, align 8, !tbaa !50
  %i.v = fcmp olt double %i.t, %i.u
  br i1 %i.v, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.031 = phi double [ 1.000000e-99, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 2 uses
  %.02630 = phi i32 [ -1, %.lr.ph.preheader.new ], [ %i.aq, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.w = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.x = load double, ptr %i.w, align 8, !tbaa !50
  %i.y = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.z = load double, ptr %i.y, align 8, !tbaa !50 ; 2 uses
  %i.aa = fsub double %i.x, %i.z
  %i.ab = fdiv double %i.aa, %i.z
  %i.ac = tail call noundef double @llvm.fabs.f64(double %i.ab) ; 2 uses
  %i.ad = fcmp ogt double %i.ac, %.031            ; 2 uses
  %i.ae = trunc nsw i64 %indvars.iv to i32
  %i.af = select i1 %i.ad, i32 %i.ae, i32 %.02630
  %i.ag = select i1 %i.ad, double %i.ac, double %.031 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !50
  %i.aj = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !50 ; 2 uses
  %i.al = fsub double %i.ai, %i.ak
  %i.am = fdiv double %i.al, %i.ak
  %i.an = tail call noundef double @llvm.fabs.f64(double %i.am) ; 2 uses
  %i.ao = fcmp ogt double %i.an, %i.ag            ; 2 uses
  %i.ap = trunc nsw i64 %indvars.iv.next to i32
  %i.aq = select i1 %i.ao, i32 %i.ap, i32 %i.af   ; 3 uses
  %i.ar = select i1 %i.ao, double %i.an, double %i.ag ; 3 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !291

bb.b:                                             ; preds = %._crit_edge
  store double %i.t, ptr %4, align 8, !tbaa !50
  %i.as = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %5, i64 noundef 80, ptr noundef nonnull @.str.10, i32 noundef %.026.lcssa) #21 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Hydro10getDtHydroERdRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load double, ptr %i.b, align 8, !tbaa !118 ; 2 uses
  %i.d = load double, ptr %1, align 8, !tbaa !50
  %i.e = fcmp olt double %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  store double %i.c, ptr %1, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !28
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.h, ptr %i.a, align 8, !tbaa !295
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !36
  %i.k = load i64, ptr %i.a, align 8, !tbaa !295
  store i64 %i.k, ptr %i.g, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 8, !tbaa !34
  store i8 %i.m, ptr %i.l, align 1, !tbaa !34
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 8 %i.f, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !295  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !31
  %i.p = load ptr, ptr %3, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.r = load ptr, ptr %2, align 8, !tbaa !36     ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  %i.u = load ptr, ptr %3, align 8, !tbaa !36     ; 6 uses
  %i.v = icmp eq ptr %i.u, %i.g                   ; 2 uses
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.v, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.v, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.w = load i64, ptr %i.o, align 8, !tbaa !31   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %.not21.i = icmp eq ptr %3, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %4, !prof !296

4:                                                ; preds = %bb.f
  switch i64 %i.w, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %4
  %i.y = load i8, ptr %i.u, align 1, !tbaa !34
  store i8 %i.y, ptr %i.r, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %4
  %i.z = load i64, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !31
  %i.ab = load ptr, ptr %2, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !34
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.u, ptr %2, align 8, !tbaa !36
  %i.ae = load <2 x i64>, ptr %i.o, align 8, !tbaa !34
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !tbaa !34
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.af = load i64, ptr %i.s, align 8, !tbaa !34
  store ptr %i.u, ptr %2, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load <2 x i64>, ptr %i.o, align 8, !tbaa !34
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !34
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.r, ptr %3, align 8, !tbaa !36
  store i64 %i.af, ptr %i.g, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %3, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %5 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.r, %bb.i ], [ %i.g, %bb.j ], [ %i.u, %bb.f ]
  store i64 0, ptr %i.o, align 8, !tbaa !31
  store i8 0, ptr %5, align 1, !tbaa !34
  %i.ai = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.g
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !34
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Hydro16writeEnergyCheckEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca double, align 8                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !50
  %i.c = load ptr, ptr %0, align 8, !tbaa !8      ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.e = load i32, ptr %i.d, align 8, !tbaa !124  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88   ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !128
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !140  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5Hydro9sumEnergyEPKdS1_S1_S1_S1_PK7double2S4_RdS5_iiii.exit, %bb.a
  call void @_ZN8Parallel9globalSumERd(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZN8Parallel9globalSumERd(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.af = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZN5Hydro9sumEnergyEPKdS1_S1_S1_S1_PK7double2S4_RdS5_iiii.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Hydro9sumEnergyEPKdS1_S1_S1_S1_PK7double2S4_RdS5_iiii.exit ] ; 5 uses
  %i.ah = phi double [ 0.000000e+00, %.lr.ph ], [ %i.dx, %_ZN5Hydro9sumEnergyEPKdS1_S1_S1_S1_PK7double2S4_RdS5_iiii.exit ]
  %i.ai = phi double [ 0.000000e+00, %.lr.ph ], [ %i.dy, %_ZN5Hydro9sumEnergyEPKdS1_S1_S1_S1_PK7double2S4_RdS5_iiii.exit ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4  ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4  ; 2 uses
  %i.ar = icmp slt i32 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.as = sext i32 %i.ao to i64                   ; 4 uses
  %wide.trip.count.i = sext i32 %i.aq to i64      ; 3 uses
  %i.at = sub nsw i64 %wide.trip.count.i, %i.as
  %xtraiter = and i64 %i.at, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.as, %.lr.ph.preheader.i ] ; 2 uses
  %.039.i.prol = phi double [ %i.aw, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.au = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.i.prol
  %i.av = load double, ptr %i.au, align 8, !tbaa !50
  %i.aw = fadd double %.039.i.prol, %i.av         ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !297

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.lcssa.unr = phi double [ poison, %.lr.ph.preheader.i ], [ %i.aw, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.as, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.039.i.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.aw, %.lr.ph.i.prol ]
  %i.ax = sub nsw i64 %i.as, %wide.trip.count.i
  %i.ay = icmp ugt i64 %i.ax, -8
  br i1 %i.ay, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ck, %.lr.ph.i ]
  %i.az = fmul double %.lcssa, 2.000000e+00
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double f0x400921FB54442D18, double 0.000000e+00)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.b
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.b ], [ %i.ba, %._crit_edge.loopexit.i ]
  %i.bb = icmp slt i32 %i.ak, %i.am
  br i1 %i.bb, label %.lr.ph43.i, label %_ZN5Hydro9sumEnergyEPKdS1_S1_S1_S1_PK7double2S4_RdS5_iiii.exit

.lr.ph43.i:                                       ; preds = %._crit_edge.i
  %i.bc = load ptr, ptr %i.ac, align 8, !tbaa !160
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !206
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !161
  %i.bf = sext i32 %i.ak to i64
  %wide.trip.count51.i = sext i32 %i.am to i64
  br label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.039.i = phi double [ %i.ck, %.lr.ph.i ], [ %.039.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !50
  %i.bi = fadd double %.039.i, %i.bh
  %i.bj = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !50
  %i.bm = fadd double %i.bi, %i.bl
  %i.bn = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !50
  %i.bq = fadd double %i.bm, %i.bp
  %i.br = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bs = getelementptr i8, ptr %i.br, i64 24
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !50
  %i.bu = fadd double %i.bq, %i.bt
  %i.bv = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !50
  %i.by = fadd double %i.bu, %i.bx
  %i.bz = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 40
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !50
  %i.cc = fadd double %i.by, %i.cb
  %i.cd = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 48
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !50
  %i.cg = fadd double %i.cc, %i.cf
  %i.ch = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 56
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !50
  %i.ck = fadd double %i.cg, %i.cj                ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !293

._crit_edge44.loopexit.i:                         ; preds = %bb.c
  %i.cl = fmul double %i.dw, 2.000000e+00
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double f0x400921FB54442D18, double 0.000000e+00)
  br label %_ZN5Hydro9sumEnergyEPKdS1_S1_S1_S1_PK7double2S4_RdS5_iiii.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph43.i
  %indvars.iv48.i = phi i64 [ %i.bf, %.lr.ph43.i ], [ %indvars.iv.next49.i, %bb.c ] ; 5 uses
  %.03641.i = phi double [ 0.000000e+00, %.lr.ph43.i ], [ %i.dw, %bb.c ]
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %indvars.iv48.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv48.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv48.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = sext i32 %i.cs to i64                   ; 3 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !50
  %i.cw = sext i32 %i.cq to i64                   ; 2 uses
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !112
  %i.cz = fmul double %i.cv, %i.cy
  %i.da = fmul double %i.cz, 5.000000e-01
  %i.db = getelementptr inbounds [8 x i8], ptr %i.x, i64 %indvars.iv48.i
  %i.dc = load double, ptr %i.db, align 8, !tbaa !50
  %i.dd = sext i32 %i.co to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !50
  %i.dg = fadd double %i.dc, %i.df
  %i.dh = fmul double %i.da, %i.dg
  %i.di = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ct
  %i.dj = load double, ptr %i.di, align 8, !tbaa !50
  %i.dk = fmul double %i.dj, %i.dh
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ct
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !50
  %i.dn = fdiv double %i.dk, %i.dm
  %i.do = fmul double %i.dn, 5.000000e-01
  %i.dp = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.cw ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !112 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !114 ; 2 uses
  %i.dt = fmul double %i.ds, %i.ds
  %i.du = tail call noundef double @llvm.fmuladd.f64(double %i.dq, double %i.dq, double %i.dt)
  %i.dv = fmul double %i.do, %i.du
  %i.dw = fadd double %.03641.i, %i.dv            ; 2 uses
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %._crit_edge44.loopexit.i, label %bb.c, !llvm.loop !294

_ZN5Hydro9sumEnergyEPKdS1_S1_S1_S1_PK7double2S4_RdS5_iiii.exit: ; preds = %._crit_edge.i, %._crit_edge44.loopexit.i
  %.036.lcssa.i = phi double [ 0.000000e+00, %._crit_edge.i ], [ %i.cm, %._crit_edge44.loopexit.i ]
  %i.dx = fadd double %.0.lcssa.i, %i.ah          ; 2 uses
  store double %i.dx, ptr %i.a, align 8, !tbaa !50
  %i.dy = fadd double %.036.lcssa.i, %i.ai        ; 2 uses
  store double %i.dy, ptr %i.b, align 8, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !298

bb.d:                                             ; preds = %._crit_edge
  %i.dz = load ptr, ptr @_ZSt4cout, align 8, !tbaa !299
  %i.ea = getelementptr i8, ptr %i.dz, i64 -24    ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !301
  %i.ef = and i32 %i.ee, -261
  %i.eg = or disjoint i32 %i.ef, 256
  store i32 %i.eg, ptr %i.ed, align 8, !tbaa !310
  %i.eh = load i64, ptr %i.ea, align 8
  %i.ei = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 6, ptr %i.ej, align 8, !tbaa !311
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.12, i64 noundef 15) ; 0 uses
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 16) ; 0 uses
  %i.em = load ptr, ptr @_ZSt4cout, align 8, !tbaa !299
  %i.en = getelementptr i8, ptr %i.em, i64 -24
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 14, ptr %i.eq, align 8, !tbaa !312
  %i.er = load double, ptr %i.a, align 8, !tbaa !50
  %i.es = load double, ptr %i.b, align 8, !tbaa !50
  %i.et = fadd double %i.er, %i.es
  %i.eu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.et) ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !299
  %i.ew = getelementptr i8, ptr %i.ev, i64 -24
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds i8, ptr %i.eu, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 240
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !313 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !320
  %.not.i1.i.i = icmp eq i8 %i.fc, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 67
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fa)
  %i.ff = load ptr, ptr %i.fa, align 8, !tbaa !299
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call noundef signext i8 %i.fh(ptr noundef nonnull align 8 dereferenceable(570) %i.fa, i8 noundef signext 10), !inline_history !325
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.fe, %bb.f ], [ %i.fi, %bb.g ]
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, i8 noundef signext %.0.i.i.i)
  %i.fk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fj) ; 0 uses
  %i.fl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 12) ; 0 uses
  %i.fm = load ptr, ptr @_ZSt4cout, align 8, !tbaa !299
  %i.fn = getelementptr i8, ptr %i.fm, i64 -24
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i64 14, ptr %i.fq, align 8, !tbaa !312
  %i.fr = load double, ptr %i.a, align 8, !tbaa !50
  %i.fs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.fr) ; 4 uses
  %i.ft = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull @.str.15, i64 noundef 12) ; 0 uses
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !299
  %i.fv = getelementptr i8, ptr %i.fu, i64 -24
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds i8, ptr %i.fs, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 14, ptr %i.fy, align 8, !tbaa !312
  %i.fz = load double, ptr %i.b, align 8, !tbaa !50
  %i.ga = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, double noundef %i.fz) ; 4 uses
  %i.gb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull @.str.16, i64 noundef 1) ; 0 uses
  %i.gc = load ptr, ptr %i.ga, align 8, !tbaa !299
  %i.gd = getelementptr i8, ptr %i.gc, i64 -24
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds i8, ptr %i.ga, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 240
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !313 ; 6 uses
  %.not.i.i.i13 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i13, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i14

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i14: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !320
  %.not.i1.i.i15 = icmp eq i8 %i.gj, 0
  br i1 %.not.i1.i.i15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i14
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 67
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit17

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i14
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gh)
  %i.gm = load ptr, ptr %i.gh, align 8, !tbaa !299
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = call noundef signext i8 %i.go(ptr noundef nonnull align 8 dereferenceable(570) %i.gh, i8 noundef signext 10), !inline_history !325
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit17

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit17: ; preds = %bb.i, %bb.j
  %.0.i.i.i16 = phi i8 [ %i.gl, %bb.i ], [ %i.gp, %bb.j ]
  %i.gq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, i8 noundef signext %.0.i.i.i16)
  %i.gr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gq) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit17, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare void @_ZN8Parallel9globalSumERd(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #18

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn }
attributes #25 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS5Hydro", !10, i64 0, !12, i64 8, !13, i64 16, !14, i64 24, !15, i64 32, !21, i64 56, !21, i64 64, !21, i64 72, !21, i64 80, !21, i64 88, !21, i64 96, !21, i64 104, !22, i64 112, !22, i64 136, !21, i64 160, !6, i64 168, !27, i64 248, !27, i64 256, !27, i64 264, !27, i64 272, !26, i64 280, !26, i64 288, !26, i64 296, !26, i64 304, !26, i64 312, !26, i64 320, !26, i64 328, !26, i64 336, !26, i64 344, !26, i64 352, !26, i64 360, !26, i64 368, !27, i64 376, !27, i64 384, !27, i64 392, !27, i64 400}
!10 = !{!"p1 _ZTS4Mesh", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS7PolyGas", !11, i64 0}
!13 = !{!"p1 _ZTS3TTS", !11, i64 0}
!14 = !{!"p1 _ZTS3QCS", !11, i64 0}
!15 = !{!"_ZTSSt6vectorIP7HydroBCSaIS1_EE", !16, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseIP7HydroBCSaIS1_EE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIP7HydroBCSaIS1_EE12_Vector_implE", !18, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIP7HydroBCSaIS1_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p2 _ZTS7HydroBC", !20, i64 0}
!20 = !{!"any p2 pointer", !11, i64 0}
!21 = !{!"double", !6, i64 0}
!22 = !{!"_ZTSSt6vectorIdSaIdEE", !23, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 double", !11, i64 0}
!27 = !{!"p1 _ZTS7double2", !11, i64 0}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!30 = !{!"p1 omnipotent char", !11, i64 0}
!31 = !{!32, !33, i64 8}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !33, i64 8, !6, i64 16}
!33 = !{!"long", !6, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!9, !21, i64 56}
!36 = !{!32, !30, i64 0}
!37 = !{!9, !21, i64 64}
!38 = !{!9, !21, i64 72}
!39 = !{!9, !21, i64 80}
!40 = !{!9, !21, i64 88}
!41 = !{!9, !21, i64 96}
!42 = !{!9, !21, i64 104}
!43 = !{!25, !26, i64 0}
!44 = !{!25, !26, i64 16}
!45 = !{!26, !26, i64 0}
!46 = !{!9, !12, i64 8}
!47 = !{!9, !13, i64 16}
!48 = !{!9, !14, i64 24}
!49 = !{!25, !26, i64 8}
!50 = !{!21, !21, i64 0}
!51 = !{!18, !19, i64 8}
!52 = !{!18, !19, i64 16}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTS7HydroBC", !11, i64 0}
!55 = !{!18, !19, i64 0}
!56 = !{!57, !58, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p1 int", !11, i64 0}
!59 = !{!57, !58, i64 16}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = distinct !{!62, !61}
!63 = !{!64, !5, i64 504}
!64 = !{!"_ZTS4Mesh", !65, i64 0, !66, i64 8, !67, i64 16, !5, i64 24, !22, i64 32, !68, i64 56, !68, i64 57, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !58, i64 88, !58, i64 96, !58, i64 104, !58, i64 112, !58, i64 120, !58, i64 128, !58, i64 136, !58, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !58, i64 168, !58, i64 176, !58, i64 184, !58, i64 192, !58, i64 200, !58, i64 208, !58, i64 216, !58, i64 224, !58, i64 232, !27, i64 240, !27, i64 248, !27, i64 256, !27, i64 264, !27, i64 272, !27, i64 280, !27, i64 288, !26, i64 296, !26, i64 304, !26, i64 312, !26, i64 320, !26, i64 328, !26, i64 336, !26, i64 344, !26, i64 352, !26, i64 360, !27, i64 368, !26, i64 376, !26, i64 384, !26, i64 392, !5, i64 400, !69, i64 408, !69, i64 432, !69, i64 456, !69, i64 480, !5, i64 504, !69, i64 512, !69, i64 536, !5, i64 560, !69, i64 568, !69, i64 592}
!65 = !{!"p1 _ZTS7GenMesh", !11, i64 0}
!66 = !{!"p1 _ZTS7WriteXY", !11, i64 0}
!67 = !{!"p1 _ZTS10ExportGold", !11, i64 0}
!68 = !{!"bool", !6, i64 0}
!69 = !{!"_ZTSSt6vectorIiSaIiEE", !70, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !71, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !57, i64 0}
!72 = !{!64, !5, i64 560}
!73 = !{!64, !5, i64 60}
!74 = !{!64, !5, i64 68}
!75 = !{!64, !5, i64 72}
!76 = !{!64, !27, i64 256}
!77 = !{!64, !26, i64 320}
!78 = !{!9, !27, i64 248}
!79 = !{!9, !27, i64 256}
!80 = !{!9, !27, i64 264}
!81 = !{!9, !27, i64 272}
!82 = !{!9, !26, i64 280}
!83 = !{!9, !26, i64 288}
!84 = !{!9, !26, i64 296}
!85 = !{!9, !26, i64 304}
!86 = !{!9, !26, i64 312}
!87 = !{!9, !26, i64 320}
!88 = !{!9, !26, i64 328}
!89 = !{!9, !26, i64 336}
!90 = !{!9, !26, i64 344}
!91 = !{!9, !26, i64 352}
!92 = !{!9, !26, i64 360}
!93 = !{!9, !26, i64 368}
!94 = !{!9, !27, i64 376}
!95 = !{!9, !27, i64 384}
!96 = !{!9, !27, i64 392}
!97 = !{!9, !27, i64 400}
!98 = distinct !{!98, !61, !99, !100}
!99 = !{!"llvm.loop.isvectorized", i32 1}
!100 = !{!"llvm.loop.unroll.runtime.disable"}
!101 = distinct !{!101, !61, !100, !99}
!102 = distinct !{!102, !61, !99, !100}
!103 = distinct !{!103, !61, !100, !99}
!104 = distinct !{!104, !61, !99, !100}
!105 = distinct !{!105, !61}
!106 = distinct !{!106, !61, !99}
!107 = distinct !{!107, !61}
!108 = distinct !{!108, !61, !99, !100}
!109 = distinct !{!109, !61, !100, !99}
!110 = distinct !{!110, !61, !99, !100}
!111 = distinct !{!111, !61, !100, !99}
!112 = !{!113, !21, i64 0}
!113 = !{!"_ZTS7double2", !21, i64 0, !21, i64 8}
!114 = !{!113, !21, i64 8}
!115 = distinct !{!115, !61}
!116 = distinct !{!116, !61, !99, !100}
!117 = distinct !{!117, !61, !99}
!118 = !{!9, !21, i64 160}
!119 = !{!64, !27, i64 240}
!120 = distinct !{!120, !61}
!121 = distinct !{!121, !61, !122}
!122 = !{!"llvm.loop.unswitch.partial.disable"}
!123 = distinct !{!123, !61}
!124 = !{!64, !5, i64 400}
!125 = !{!64, !27, i64 248}
!126 = !{!64, !26, i64 296}
!127 = !{!64, !26, i64 304}
!128 = !{!64, !26, i64 312}
!129 = !{!64, !26, i64 328}
!130 = !{!64, !26, i64 336}
!131 = !{!64, !26, i64 344}
!132 = !{!64, !26, i64 352}
!133 = !{!64, !26, i64 360}
!134 = !{!64, !27, i64 368}
!135 = !{!64, !26, i64 376}
!136 = !{!64, !27, i64 288}
!137 = !{!64, !27, i64 264}
!138 = !{!64, !27, i64 272}
!139 = !{!64, !27, i64 280}
!140 = !{!64, !26, i64 384}
!141 = !{!64, !26, i64 392}
!142 = distinct !{!142, !61, !99, !100}
!143 = distinct !{!143, !61, !99}
!144 = distinct !{!144, !61, !99, !100}
!145 = distinct !{!145, !61, !99}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZmlRK7double2RKd: argument 0"}
!148 = distinct !{!148, !"_ZmlRK7double2RKd"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZplRK7double2S1_: argument 0"}
!151 = distinct !{!151, !"_ZplRK7double2S1_"}
!152 = distinct !{!152, !61, !99, !100}
!153 = distinct !{!153, !61, !99}
!154 = distinct !{!154, !61}
!155 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!156 = distinct !{!156, !61, !99, !100}
!157 = distinct !{!157, !158}
!158 = !{!"llvm.loop.unroll.disable"}
!159 = distinct !{!159, !61, !99}
!160 = !{!64, !58, i64 120}
!161 = !{!64, !58, i64 104}
!162 = distinct !{!162, !61}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZplRK7double2S1_: argument 0"}
!165 = distinct !{!165, !"_ZplRK7double2S1_"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZplRK7double2S1_: argument 0"}
!168 = distinct !{!168, !"_ZplRK7double2S1_"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZplRK7double2S1_: argument 0"}
!171 = distinct !{!171, !"_ZplRK7double2S1_"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZplRK7double2S1_: argument 0"}
!174 = distinct !{!174, !"_ZplRK7double2S1_"}
!175 = distinct !{!175, !61}
!176 = distinct !{!176, !61}
!177 = !{!178}
!178 = distinct !{!178, !179}
!179 = distinct !{!179, !"LVerDomain"}
!180 = !{!181}
!181 = distinct !{!181, !179}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZdvRK7double2RKd: argument 0"}
!184 = distinct !{!184, !"_ZdvRK7double2RKd"}
!185 = !{!186}
!186 = distinct !{!186, !179}
!187 = !{!178, !181}
!188 = distinct !{!188, !61, !99, !100}
!189 = distinct !{!189, !61, !99}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZmlRK7double2RKd: argument 0"}
!192 = distinct !{!192, !"_ZmlRK7double2RKd"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZplRK7double2S1_: argument 0"}
!195 = distinct !{!195, !"_ZplRK7double2S1_"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZplRK7double2S1_: argument 0"}
!198 = distinct !{!198, !"_ZplRK7double2S1_"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZplRK7double2S1_: argument 0"}
!201 = distinct !{!201, !"_ZplRK7double2S1_"}
!202 = distinct !{!202, !61, !99, !100}
!203 = distinct !{!203, !61, !99}
!204 = distinct !{!204, !61}
!205 = distinct !{!205, !61}
!206 = !{!64, !58, i64 88}
!207 = !{!64, !58, i64 96}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZplRK7double2S1_: argument 0"}
!210 = distinct !{!210, !"_ZplRK7double2S1_"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZplRK7double2S1_: argument 0"}
!213 = distinct !{!213, !"_ZplRK7double2S1_"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZplRK7double2S1_: argument 0"}
!216 = distinct !{!216, !"_ZplRK7double2S1_"}
!217 = distinct !{!217, !61}
!218 = distinct !{!218, !61}
!219 = distinct !{!219, !61, !99, !100}
!220 = distinct !{!220, !61, !99}
!221 = distinct !{!221, !61, !99, !100}
!222 = distinct !{!222, !61, !99}
!223 = distinct !{!223, !61, !99, !100}
!224 = distinct !{!224, !158}
!225 = distinct !{!225, !61, !99}
!226 = distinct !{!226, !61}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZmlRK7double2RKd: argument 0"}
!229 = distinct !{!229, !"_ZmlRK7double2RKd"}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZplRK7double2S1_: argument 0"}
!232 = distinct !{!232, !"_ZplRK7double2S1_"}
!233 = distinct !{!233, !61, !99, !100}
!234 = distinct !{!234, !61, !99}
!235 = distinct !{!235, !61, !99, !100}
!236 = distinct !{!236, !158}
!237 = distinct !{!237, !61, !99}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZplRK7double2S1_: argument 0"}
!240 = distinct !{!240, !"_ZplRK7double2S1_"}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_ZplRK7double2S1_: argument 0"}
!243 = distinct !{!243, !"_ZplRK7double2S1_"}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZplRK7double2S1_: argument 0"}
!246 = distinct !{!246, !"_ZplRK7double2S1_"}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_ZplRK7double2S1_: argument 0"}
!249 = distinct !{!249, !"_ZplRK7double2S1_"}
!250 = !{!251}
!251 = distinct !{!251, !252}
!252 = distinct !{!252, !"LVerDomain"}
!253 = !{!254}
!254 = distinct !{!254, !252}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZdvRK7double2RKd: argument 0"}
!257 = distinct !{!257, !"_ZdvRK7double2RKd"}
!258 = !{!259}
!259 = distinct !{!259, !252}
!260 = !{!251, !254}
!261 = distinct !{!261, !61, !99, !100}
!262 = distinct !{!262, !61, !99}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZmlRK7double2RKd: argument 0"}
!265 = distinct !{!265, !"_ZmlRK7double2RKd"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_ZplRK7double2S1_: argument 0"}
!268 = distinct !{!268, !"_ZplRK7double2S1_"}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZplRK7double2S1_: argument 0"}
!271 = distinct !{!271, !"_ZplRK7double2S1_"}
!272 = !{!273}
!273 = distinct !{!273, !274, !"_ZplRK7double2S1_: argument 0"}
!274 = distinct !{!274, !"_ZplRK7double2S1_"}
!275 = distinct !{!275, !61, !99, !100}
!276 = distinct !{!276, !61, !99}
!277 = !{!278}
!278 = distinct !{!278, !279, !"_ZplRK7double2S1_: argument 0"}
!279 = distinct !{!279, !"_ZplRK7double2S1_"}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZplRK7double2S1_: argument 0"}
!282 = distinct !{!282, !"_ZplRK7double2S1_"}
!283 = !{!284}
!284 = distinct !{!284, !285, !"_ZplRK7double2S1_: argument 0"}
!285 = distinct !{!285, !"_ZplRK7double2S1_"}
!286 = distinct !{!286, !61, !99, !100}
!287 = distinct !{!287, !61, !99}
!288 = distinct !{!288, !61, !99, !100}
!289 = distinct !{!289, !61, !99}
!290 = distinct !{!290, !61}
!291 = distinct !{!291, !61}
!292 = distinct !{!292, !158}
!293 = distinct !{!293, !61}
!294 = distinct !{!294, !61}
!295 = !{!33, !33, i64 0}
!296 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!297 = distinct !{!297, !158}
!298 = distinct !{!298, !61}
!299 = !{!300, !300, i64 0}
!300 = !{!"vtable pointer", !7, i64 0}
!301 = !{!302, !303, i64 24}
!302 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !303, i64 24, !304, i64 28, !304, i64 32, !305, i64 40, !306, i64 48, !6, i64 64, !5, i64 192, !307, i64 200, !308, i64 208}
!303 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!304 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!305 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!306 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !33, i64 8}
!307 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!308 = !{!"_ZTSSt6locale", !309, i64 0}
!309 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!310 = !{!303, !303, i64 0}
!311 = !{!302, !33, i64 8}
!312 = !{!302, !33, i64 16}
!313 = !{!314, !317, i64 240}
!314 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !302, i64 0, !315, i64 216, !6, i64 224, !68, i64 225, !316, i64 232, !317, i64 240, !318, i64 248, !319, i64 256}
!315 = !{!"p1 _ZTSSo", !11, i64 0}
!316 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!317 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!318 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!319 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!320 = !{!321, !6, i64 56}
!321 = !{!"_ZTSSt5ctypeIcE", !322, i64 0, !323, i64 16, !68, i64 24, !58, i64 32, !58, i64 40, !324, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!322 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!323 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!324 = !{!"p1 short", !11, i64 0}
!325 = distinct !{null, null, null, null}
end_hunk_0
