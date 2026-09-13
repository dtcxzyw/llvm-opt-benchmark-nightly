Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_progress_bar?download=true
inline.NumInlined: 1084
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6duckdb26TerminalProgressBarDisplay21PrintProgressInternalEidb:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i24, %bb.o
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.r
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bk
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.dl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.x
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.x ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.dk, %bb.y ]
  %i.dn = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.z
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  call void @_ZdlPv(ptr noundef %i.dn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ad

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i37, %bb.t
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.dr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.z
  %.pn13 = phi { ptr, i32 } [ %i.dp, %bb.z ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.dq, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48, %bb.v
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %8, align 8, !tbaa !18    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.dw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.ab
  %.pn15 = phi { ptr, i32 } [ %i.du, %bb.ab ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.dv, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.c
  %.pn17 = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  %i.dz = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.a
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.dz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn17
}

declare void @_ZN6duckdb7Printer8RawPrintENS_12OutputStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb26TerminalProgressBarDisplay6UpdateEd(ptr noundef nonnull align 8 dereferenceable(272) %0, double noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::TerminalProgressBarDisplayedProgressInfo", align 8 ; 6 uses
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.b, align 8, !tbaa !35
  %i.c = sub nsw i64 %i.a, %.sroa.0.0.copyload.i2.i.i
  %i.d = sitofp i64 %i.c to double
  %i.e = insertelement <2 x double> poison, double %i.d, i64 0
  %i.f = insertelement <2 x double> %i.e, double %1, i64 1
  %i.g = fdiv <2 x double> %i.f, <double 1.000000e+09, double 1.000000e+02> ; 2 uses
  %i.h = extractelement <2 x double> %i.g, i64 0  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !81
  %i.l = extractelement <2 x double> %i.g, i64 1  ; 2 uses
  %i.m = fmul double %i.l, %i.k                   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !82, !range !61, !noundef !62
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = fcmp oeq double %i.m, 0.000000e+00
  %i.r = fcmp oeq double %i.h, 0.000000e+00
  %or.cond.i.i = or i1 %i.q, %i.r
  br i1 %or.cond.i.i, label %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = fdiv double 1.000000e-01, %i.m           ; 2 uses
  %i.t = fcmp ogt double %i.s, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.t, double %i.s, double 1.000000e+00 ; 2 uses
  store double %.sroa.speculated.i.i, ptr %i.j, align 8, !tbaa !81
  %i.u = fmul double %i.m, %.sroa.speculated.i.i  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef 0)
  store double %i.u, ptr %i.w, align 8, !tbaa !83
  %i.x = fdiv double %i.u, %i.h
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef 1)
  store double %i.x, ptr %i.y, align 8, !tbaa !83
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double %i.h, ptr %i.z, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  store double %i.u, ptr %i.aa, align 8, !tbaa !85
  store i8 1, ptr %i.n, align 8, !tbaa !82
  br label %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21UnscentedKalmanFilter7PredictEd(ptr noundef nonnull align 8 dereferenceable(184) %i.i, double noundef %i.h)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !85
  %i.ad = fcmp une double %i.ac, %i.m
  br i1 %i.ad, label %bb.e, label %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6duckdb21UnscentedKalmanFilter14UpdateInternalEd(ptr noundef nonnull align 8 dereferenceable(184) %i.i, double noundef %i.m)
  store double %i.m, ptr %i.ab, align 8, !tbaa !85
  br label %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit

_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.ae = fcmp ogt double %i.l, f0x3FEFAE147AE147AE
  br i1 %i.ae, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit
  %i.af = load i8, ptr %i.n, align 8, !tbaa !82, !range !61, !noundef !62
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.g, label %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef 1)
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !83
  %i.ak = fcmp ugt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.h, label %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit

bb.h:                                             ; preds = %bb.g
  %i.al = load double, ptr %i.j, align 8, !tbaa !81
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef 0)
  %i.an = load double, ptr %i.am, align 8, !tbaa !83
  %i.ao = fsub double %i.al, %i.an
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef 1)
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !83
  %i.ar = fdiv double %i.ao, %i.aq                ; 2 uses
  %i.as = fcmp olt double %i.ar, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.as, double 0.000000e+00, double %i.ar
  br label %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit

_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi double [ f0x41DFFFFFFFC00000, %bb.f ], [ %.sroa.speculated.i, %bb.h ], [ +inf, %bb.g ] ; 2 uses
  %i.at = fcmp ogt double %.0.i, f0x41DFFFFFFFC00000
  %.sroa.speculated = select i1 %i.at, double f0x41DFFFFFFFC00000, double %.0.i
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit, %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit
  %.0 = phi double [ %.sroa.speculated, %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit ], [ 5.000000e-01, %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit ] ; 2 uses
  %i.au = fcmp ogt double %1, 1.000000e+02
  %.inv.i = fcmp ole double %1, 0.000000e+00
  %spec.select4.i = select i1 %.inv.i, double 0.000000e+00, double %1
  %spec.select.i = fptosi double %spec.select4.i to i32
  %.0.i9 = select i1 %i.au, i32 100, i32 %spec.select.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %3 = sext i32 %.0.i9 to i64
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aw = fptoui double %.0 to i64
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i64 noundef %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !87
  %i.az = load i64, ptr %2, align 8, !tbaa !87
  %i.ba = icmp ne i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.av, align 8
  %i.be = icmp ne i64 %i.bc, %i.bd
  %.not3.i = select i1 %i.ba, i1 true, i1 %i.be
  br i1 %.not3.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %0, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %.0.i9, double noundef %.0, i1 noundef zeroext false)
  call void @_ZN6duckdb7Printer5FlushENS_12OutputStreamE(i8 noundef zeroext 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !177
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1, double noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !81
  %i.c = fmul double %1, %i.b                     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !82, !range !61, !noundef !62
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp oeq double %i.c, 0.000000e+00
  %i.h = fcmp oeq double %2, 0.000000e+00
  %or.cond.i = or i1 %i.h, %i.g
  br i1 %or.cond.i, label %_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fdiv double 1.000000e-01, %i.c           ; 2 uses
  %i.j = fcmp ogt double %i.i, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.j, double %i.i, double 1.000000e+00 ; 2 uses
  store double %.sroa.speculated.i, ptr %i.a, align 8, !tbaa !81
  %i.k = fmul double %i.c, %.sroa.speculated.i    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
  store double %i.k, ptr %i.m, align 8, !tbaa !83
  %i.n = fdiv double %i.k, %2
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 1)
  store double %i.n, ptr %i.o, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %2, ptr %i.p, align 8, !tbaa !84
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.k, ptr %i.q, align 8, !tbaa !85
  store i8 1, ptr %i.d, align 8, !tbaa !82
  br label %_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21UnscentedKalmanFilter7PredictEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !85
  %i.t = fcmp une double %i.s, %i.c
  br i1 %i.t, label %bb.e, label %_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6duckdb21UnscentedKalmanFilter14UpdateInternalEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %i.c)
  store double %i.c, ptr %i.r, align 8, !tbaa !85
  br label %_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit

_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit: ; preds = %bb.c, %bb.b, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !82, !range !61, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
  %i.f = load double, ptr %i.e, align 8, !tbaa !83
  %i.g = fcmp ugt double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load double, ptr %i.h, align 8, !tbaa !81
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
  %i.k = load double, ptr %i.j, align 8, !tbaa !83
  %i.l = fsub double %i.i, %i.k
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
  %i.n = load double, ptr %i.m, align 8, !tbaa !83
  %i.o = fdiv double %i.l, %i.n                   ; 2 uses
  %i.p = fcmp olt double %i.o, 0.000000e+00
  %.sroa.speculated = select i1 %i.p, double 0.000000e+00, double %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi double [ f0x41DFFFFFFFC00000, %bb.a ], [ %.sroa.speculated, %bb.c ], [ +inf, %bb.b ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  store i64 %1, ptr %0, align 8, !tbaa !87
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb7Printer5FlushENS_12OutputStreamE(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb26TerminalProgressBarDisplay6FinishEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.b, align 8, !tbaa !35
  %i.c = sub nsw i64 %i.a, %.sroa.0.0.copyload.i2.i.i
  %i.d = sitofp i64 %i.c to double
  %i.e = fdiv double %i.d, 1.000000e+09
  %i.f = load ptr, ptr %0, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef 100, double noundef %i.e, i1 noundef zeroext true)
end_hunk_0
