Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLowRankSSAugSystemSolver?download=true
inline.NumInlined: 748
inline.NumDeleted: 378
begin_hunk_0_@_ZN5Ipopt24LowRankSSAugSystemSolver5SolveEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dPKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_RS4_SB_SB_SB_bi:bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 88) #17
  br label %.body

_ZNK5Ipopt15DiagMatrixSpace17MakeNewDiagMatrixEv.exit: ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !8
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !8
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !50   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNK5Ipopt15DiagMatrixSpace17MakeNewDiagMatrixEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(88) %i.r) #16, !inline_history !62
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5Ipopt15DiagMatrixSpace17MakeNewDiagMatrixEv.exit, %bb.d, %bb.e
  store ptr %i.l, ptr %i.n, align 8, !tbaa !50
  %i.z = load i32, ptr %i.i, align 8, !tbaa !8
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.i, align 8, !tbaa !8
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(20) %i.h) #16, !inline_history !82
  br label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit

bb.h:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.m, %bb.c ] ; 2 uses
  %i.ag = load i32, ptr %i.i, align 8, !tbaa !8
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !8
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101.sink.split, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101

_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit: ; preds = %bb.g, %bb.f, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(49) %i.ak)
  %spec.select = and i1 %21, %i.ao
  %i.ap = load i8, ptr %i.a, align 8, !tbaa !61, !range !72, !noundef !73
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.au = load i32, ptr %i.at, align 4, !tbaa !92
  %.not29.i = icmp eq i32 %i.as, %i.au
  br i1 %.not29.i, label %bb.k, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge.i:                                      ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !92
  %.not30.i = icmp eq i32 %i.aw, 0
  br i1 %.not30.i, label %bb.k, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.k:                                             ; preds = %.critedge.i, %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !93
  %i.az = fcmp une double %2, %i.ay
  br i1 %i.az, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not31.i = icmp eq ptr %3, null
  br i1 %.not31.i, label %.critedge46.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !94
  %.not32.i = icmp eq i32 %i.bb, %i.bd
  br i1 %.not32.i, label %bb.n, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge46.i:                                    ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !94
  %.not33.i = icmp eq i32 %i.bf, 0
  br i1 %.not33.i, label %bb.n, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.n:                                             ; preds = %.critedge46.i, %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !40
  %i.bi = fcmp une double %4, %i.bh
  br i1 %i.bi, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not34.i = icmp eq ptr %5, null
  br i1 %.not34.i, label %.critedge48.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !83
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !41
  %.not35.i = icmp eq i32 %i.bk, %i.bm
  br i1 %.not35.i, label %bb.q, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge48.i:                                    ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !41
  %.not36.i = icmp eq i32 %i.bo, 0
  br i1 %.not36.i, label %bb.q, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.q:                                             ; preds = %.critedge48.i, %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !95
  %i.br = fcmp une double %6, %i.bq
  br i1 %i.br, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !83
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !96
  %.not37.i = icmp eq i32 %i.bt, %i.bv
  br i1 %.not37.i, label %bb.s, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.s:                                             ; preds = %bb.r
  %.not38.i = icmp eq ptr %8, null
  br i1 %.not38.i, label %.critedge50.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !83
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !97
  %.not39.i = icmp eq i32 %i.bx, %i.bz
  br i1 %.not39.i, label %bb.u, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge50.i:                                    ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !97
  %.not40.i = icmp eq i32 %i.cb, 0
  br i1 %.not40.i, label %bb.u, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.u:                                             ; preds = %.critedge50.i, %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !98
  %i.ce = fcmp une double %9, %i.cd
  br i1 %i.ce, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !83
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !99
  %.not41.i = icmp eq i32 %i.cg, %i.ci
  br i1 %.not41.i, label %bb.w, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.w:                                             ; preds = %bb.v
  %.not42.i = icmp eq ptr %11, null
  br i1 %.not42.i, label %.critedge52.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !83
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !100
  %.not43.i = icmp eq i32 %i.ck, %i.cm
  br i1 %.not43.i, label %bb.y, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge52.i:                                    ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !100
  %.not44.i = icmp eq i32 %i.co, 0
  br i1 %.not44.i, label %bb.y, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.y:                                             ; preds = %bb.x, %.critedge52.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !101
  %i.cr = fcmp une double %12, %i.cq
  br i1 %i.cr, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit

_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread: ; preds = %.critedge.i, %bb.k, %bb.m, %.critedge46.i, %bb.n, %bb.p, %.critedge48.i, %bb.q, %bb.r, %bb.t, %.critedge50.i, %bb.u, %bb.v, %bb.x, %.critedge52.i, %bb.j, %bb.y, %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit
  %i.cs = tail call noundef i32 @_ZN5Ipopt24LowRankSSAugSystemSolver18UpdateExtendedDataEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, double noundef %2, ptr poison, double poison, ptr poison, double poison, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef %8, double poison, ptr nonnull align 8 poison, ptr poison, double poison, ptr noundef nonnull align 8 dereferenceable(205) %13, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(205) %15, ptr nonnull align 8 poison) ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !83
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !92
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %2, ptr %i.cw, align 8, !tbaa !93
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !83
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, %bb.z
  %.sink = phi i32 [ %i.cy, %bb.z ], [ 0, %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sink, ptr %i.cz, align 8, !tbaa !94
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %4, ptr %i.da, align 8, !tbaa !40
  %.not90 = icmp eq ptr %5, null
  br i1 %.not90, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !83
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.sink134 = phi i32 [ %i.dc, %bb.ab ], [ 0, %bb.aa ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sink134, ptr %i.dd, align 8, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %6, ptr %i.de, align 8, !tbaa !95
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !83
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !96
  %.not91 = icmp eq ptr %8, null
  br i1 %.not91, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !83
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.sink135 = phi i32 [ %i.dj, %bb.ad ], [ 0, %bb.ac ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %.sink135, ptr %i.dk, align 4, !tbaa !97
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %9, ptr %i.dl, align 8, !tbaa !98
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !83
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.dn, ptr %i.do, align 8, !tbaa !99
  %.not92 = icmp eq ptr %11, null
  br i1 %.not92, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !83
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.sink136 = phi i32 [ %i.dq, %bb.af ], [ 0, %bb.ae ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %.sink136, ptr %i.dr, align 4, !tbaa !100
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %12, ptr %i.ds, align 8, !tbaa !101
  store i8 0, ptr %i.a, align 8, !tbaa !61
  br label %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit

_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit: ; preds = %bb.ag, %bb.y
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !42 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !10
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = tail call noundef ptr %i.dx(ptr noundef nonnull align 8 dereferenceable(48) %i.du, i1 noundef zeroext true) ; 11 uses
  %.not.i.i102 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i102, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !8
  %i.eb = add nsw i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !8
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit: ; preds = %_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit, %bb.ah
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.dy, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %15)
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(265) %i.dy)
          to label %.noexc104 unwind label %bb.at

.noexc104:                                        ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 208
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !102, !noalias !105
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !108, !noalias !105 ; 11 uses
  %.not.i.i.i103 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i103, label %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit, label %bb.aj

bb.aj:                                            ; preds = %.noexc104
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !8, !noalias !105
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !8, !noalias !105
  br label %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit

_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit: ; preds = %bb.aj, %.noexc104
  %i.ej = load ptr, ptr %i.ef, align 8, !tbaa !10
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 72
  %i.el = load ptr, ptr %i.ek, align 8
  invoke void %i.el(ptr noundef nonnull align 8 dereferenceable(205) %i.ef, double noundef 0.000000e+00)
          to label %.noexc105 unwind label %bb.au, !inline_history !111

.noexc105:                                        ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.ef)
          to label %_ZN5Ipopt6Vector3SetEd.exit unwind label %bb.au

_ZN5Ipopt6Vector3SetEd.exit:                      ; preds = %.noexc105
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !8
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %i.em, align 8, !tbaa !8
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ak, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.ak:                                            ; preds = %_ZN5Ipopt6Vector3SetEd.exit
  %i.eq = load ptr, ptr %i.ef, align 8, !tbaa !10
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  tail call void %i.es(ptr noundef nonnull align 8 dereferenceable(205) %i.ef) #16, !inline_history !112
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit:         ; preds = %_ZN5Ipopt6Vector3SetEd.exit, %bb.ak
  %i.et = load ptr, ptr %i.dt, align 8, !tbaa !42 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !10
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = invoke noundef ptr %i.ew(ptr noundef nonnull align 8 dereferenceable(48) %i.et, i1 noundef zeroext true)
          to label %bb.al unwind label %bb.aw     ; 10 uses

bb.al:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %.not.i.i108 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i108, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit109, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !8
  %i.fa = add nsw i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ey, align 8, !tbaa !8
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit109

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit109: ; preds = %bb.al, %bb.am
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ex, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %19)
          to label %bb.an unwind label %bb.ax

bb.an:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit109
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !113
  %i.fd = add nsw i32 %i.fc, %22
  %i.fe = load ptr, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !50
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !46
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !44
  %i.fl = load ptr, ptr %i.fe, align 8, !tbaa !10
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = invoke noundef i32 %i.fn(ptr noundef nonnull align 8 dereferenceable(49) %i.fe, ptr noundef %i.fg, double noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5, double noundef %6, ptr noundef %i.fi, ptr noundef %i.fk, double noundef %9, ptr noundef nonnull %10, ptr noundef %11, double noundef %12, ptr noundef nonnull align 8 dereferenceable(205) %13, ptr noundef nonnull align 8 dereferenceable(205) %14, ptr noundef nonnull align 8 dereferenceable(205) %i.dy, ptr noundef nonnull align 8 dereferenceable(205) %16, ptr noundef nonnull align 8 dereferenceable(205) %17, ptr noundef nonnull align 8 dereferenceable(205) %18, ptr noundef nonnull align 8 dereferenceable(205) %i.ex, ptr noundef nonnull align 8 dereferenceable(205) %20, i1 noundef zeroext %spec.select, i32 noundef %i.fd)
          to label %bb.ao unwind label %bb.ax     ; 3 uses

bb.ao:                                            ; preds = %bb.an
  %i.fp = load ptr, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !10
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = invoke noundef zeroext i1 %i.fs(ptr noundef nonnull align 8 dereferenceable(49) %i.fp)
          to label %bb.ap unwind label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.ft, label %bb.aq, label %bb.az

bb.aq:                                            ; preds = %bb.ap
  %i.fu = load ptr, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !10
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = invoke noundef i32 %i.fx(ptr noundef nonnull align 8 dereferenceable(49) %i.fu)
          to label %bb.ar unwind label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.fz = load i32, ptr %i.fb, align 8, !tbaa !113
  %i.ga = sub nsw i32 %i.fy, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !114
  br label %bb.az

bb.as:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.at:                                            ; preds = %bb.ai
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.au:                                            ; preds = %_ZN5Ipopt14CompoundVector15GetCompNonConstEi.exit, %.noexc105
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !8
  %i.gh = add nsw i32 %i.gg, -1                   ; 2 uses
  store i32 %i.gh, ptr %i.gf, align 8, !tbaa !8
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.av, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.av:                                            ; preds = %bb.au
  %i.gj = load ptr, ptr %i.ef, align 8, !tbaa !10
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8
  tail call void %i.gl(ptr noundef nonnull align 8 dereferenceable(205) %i.ef) #16, !inline_history !112
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.aw:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.ax:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit109, %bb.an, %bb.ao, %bb.aq, %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !8
  %i.gq = add nsw i32 %i.gp, -1                   ; 2 uses
  store i32 %i.gq, ptr %i.go, align 8, !tbaa !8
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.ay, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.ay:                                            ; preds = %bb.ax
  %i.gs = load ptr, ptr %i.ex, align 8, !tbaa !10
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  tail call void %i.gu(ptr noundef nonnull align 8 dereferenceable(265) %i.ex) #16, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111

bb.az:                                            ; preds = %bb.ar, %bb.ap
  %.not95 = icmp eq i32 %i.fo, 0
  br i1 %.not95, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !59 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !10
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.gz(ptr noundef nonnull align 8 dereferenceable(40) %i.gw, i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef %i.fo)
          to label %bb.bb unwind label %bb.ax

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !8
  %i.hc = add nsw i32 %i.hb, -1                   ; 2 uses
  store i32 %i.hc, ptr %i.ha, align 8, !tbaa !8
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %bb.bc, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit114

bb.bc:                                            ; preds = %bb.bb
  %i.he = load ptr, ptr %i.ex, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8
  tail call void %i.hg(ptr noundef nonnull align 8 dereferenceable(265) %i.ex) #16, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit114

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit114: ; preds = %bb.bc, %bb.bb
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !8
  %i.hj = add nsw i32 %i.hi, -1                   ; 2 uses
  store i32 %i.hj, ptr %i.hh, align 8, !tbaa !8
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.bd, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit116

bb.bd:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit114
  %i.hl = load ptr, ptr %i.dy, align 8, !tbaa !10
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  tail call void %i.hn(ptr noundef nonnull align 8 dereferenceable(265) %i.dy) #16, !inline_history !45
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit116

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit116: ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit114, %bb.bd
  ret i32 %i.fo

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111:      ; preds = %bb.as, %bb.av, %bb.au, %bb.at, %bb.ay, %bb.ax, %bb.aw
  %.pn96.pn = phi { ptr, i32 } [ %i.ge, %bb.av ], [ %i.gc, %bb.as ], [ %i.gd, %bb.at ], [ %i.ge, %bb.au ], [ %i.gm, %bb.aw ], [ %i.gn, %bb.ax ], [ %i.gn, %bb.ay ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !8
  %i.hq = add nsw i32 %i.hp, -1                   ; 2 uses
  store i32 %i.hq, ptr %i.ho, align 8, !tbaa !8
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101.sink.split, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101

_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101.sink.split: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111, %.body
  %.sink153 = phi ptr [ %i.h, %.body ], [ %i.dy, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111 ] ; 2 uses
  %.pn96.pn.pn.ph = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn96.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111 ]
  %i.hs = load ptr, ptr %.sink153, align 8, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  tail call void %i.hu(ptr noundef nonnull align 8 dereferenceable(20) %.sink153) #16
  br label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101

_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101: ; preds = %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101.sink.split, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111, %.body
  %.pn96.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn96.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit111 ], [ %.pn96.pn.pn.ph, %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit101.sink.split ]
  resume { ptr, i32 } %.pn96.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5Ipopt24LowRankSSAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(address_is_null) %1, double noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, double noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, double noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %7, ptr nofree noundef readonly captures(address_is_null) %8, double noundef %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %10, ptr nofree noundef readonly captures(address_is_null) %11, double noundef %12) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load i32, ptr %i.c, align 4, !tbaa !92
  %.not29 = icmp eq i32 %i.b, %i.d
  br i1 %.not29, label %bb.c, label %bb.r

.critedge:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !92
  %.not30 = icmp eq i32 %i.f, 0
  br i1 %.not30, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b, %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load double, ptr %i.g, align 8, !tbaa !93
  %i.i = fcmp une double %2, %i.h
  br i1 %i.i, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %.critedge46, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i32, ptr %i.l, align 8, !tbaa !94
  %.not32 = icmp eq i32 %i.k, %i.m
  br i1 %.not32, label %bb.f, label %bb.r

.critedge46:                                      ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !94
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e, %.critedge46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load double, ptr %i.p, align 8, !tbaa !40
  %i.r = fcmp une double %4, %i.q
  br i1 %i.r, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not34 = icmp eq ptr %5, null
  br i1 %.not34, label %.critedge48, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !41
  %.not35 = icmp eq i32 %i.t, %i.v
  br i1 %.not35, label %bb.i, label %bb.r

.critedge48:                                      ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %.not36 = icmp eq i32 %i.x, 0
  br i1 %.not36, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h, %.critedge48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load double, ptr %i.y, align 8, !tbaa !95
  %i.aa = fcmp une double %6, %i.z
  br i1 %i.aa, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !96
  %.not37 = icmp eq i32 %i.ac, %i.ae
  br i1 %.not37, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %.not38 = icmp eq ptr %8, null
  br i1 %.not38, label %.critedge50, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !83
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !97
  %.not39 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not39, label %bb.m, label %bb.r

.critedge50:                                      ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !97
  %.not40 = icmp eq i32 %i.ak, 0
  br i1 %.not40, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l, %.critedge50
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load double, ptr %i.al, align 8, !tbaa !98
  %i.an = fcmp une double %9, %i.am
  br i1 %i.an, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !99
  %.not41 = icmp eq i32 %i.ap, %i.ar
  br i1 %.not41, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not42 = icmp eq ptr %11, null
  br i1 %.not42, label %.critedge52, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.av = load i32, ptr %i.au, align 4, !tbaa !100
  %.not43 = icmp eq i32 %i.at, %i.av
  br i1 %.not43, label %bb.q, label %bb.r

.critedge52:                                      ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !100
  %.not44 = icmp eq i32 %i.ax, 0
  br i1 %.not44, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.critedge52
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = load double, ptr %i.ay, align 8, !tbaa !101
  %i.ba = fcmp une double %12, %i.az
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b, %.critedge, %bb.c, %bb.e, %.critedge46, %bb.f, %bb.h, %.critedge48, %bb.i, %bb.j, %bb.l, %.critedge50, %bb.m, %bb.n, %bb.p, %.critedge52
  %.0 = phi i1 [ true, %bb.b ], [ %i.ba, %bb.q ], [ true, %.critedge52 ], [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.m ], [ true, %.critedge50 ], [ true, %bb.l ], [ true, %bb.j ], [ true, %bb.i ], [ true, %.critedge48 ], [ true, %bb.h ], [ true, %bb.f ], [ true, %.critedge46 ], [ true, %bb.e ], [ true, %bb.c ], [ true, %.critedge ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5Ipopt24LowRankSSAugSystemSolver18UpdateExtendedDataEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, ptr nofree readnone captures(none) %3, double %4, ptr nofree readnone captures(none) %5, double %6, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef %8, double %9, ptr nofree nonnull readnone align 8 captures(none) %10, ptr nofree readnone captures(none) %11, double %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %13, ptr nofree nonnull readnone align 8 captures(none) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %15, ptr nofree nonnull readnone align 8 captures(none) %16) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %17 = alloca %"class.Ipopt::SmartPtr.66", align 8 ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::allocator.28", align 1 ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::allocator.28", align 1 ; 5 uses
  %22 = alloca %"class.Ipopt::SmartPtr.52", align 8 ; 4 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::allocator.28", align 1 ; 4 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::allocator.28", align 1 ; 5 uses
  %27 = alloca %"class.Ipopt::SmartPtr.52", align 8 ; 4 uses
  %28 = alloca %"class.Ipopt::SmartPtr.52", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115, !noalias !118 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121, !noalias !124 ; 18 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null        ; 9 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK5Ipopt22LowRankUpdateSymMatrix9P_LowRankEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !8, !noalias !124
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !8, !noalias !124
  br label %_ZNK5Ipopt22LowRankUpdateSymMatrix9P_LowRankEv.exit

_ZNK5Ipopt22LowRankUpdateSymMatrix9P_LowRankEv.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74, !noalias !127 ; 10 uses
  %.not.i.i.i.i.i151 = icmp eq ptr %i.i, null     ; 3 uses
  br i1 %.not.i.i.i.i.i151, label %_ZNK5Ipopt22LowRankUpdateSymMatrix18LowRankVectorSpaceEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5Ipopt22LowRankUpdateSymMatrix9P_LowRankEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !8, !noalias !127
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !8, !noalias !127
  br label %_ZNK5Ipopt22LowRankUpdateSymMatrix18LowRankVectorSpaceEv.exit

_ZNK5Ipopt22LowRankUpdateSymMatrix18LowRankVectorSpaceEv.exit: ; preds = %bb.c, %_ZNK5Ipopt22LowRankUpdateSymMatrix9P_LowRankEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit172

bb.d:                                             ; preds = %_ZNK5Ipopt22LowRankUpdateSymMatrix18LowRankVectorSpaceEv.exit
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEEaSEPS2_.exit

_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEEaSEPS2_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !8
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEEaSEPS2_.exit, %bb.d
  %i.s = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
          to label %bb.f unwind label %bb.az      ; 9 uses

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !16
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !8
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.d, ptr %17, align 8, !tbaa !132
  invoke void @_ZN5Ipopt30ExpandedMultiVectorMatrixSpaceC1EiRKNS_11VectorSpaceENS_8SmartPtrIKNS_15ExpansionMatrixEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 %17)
          to label %bb.i unwind label %bb.ba

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 6 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !8
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !8
  %i.ab = load ptr, ptr %17, align 8, !tbaa !132  ; 4 uses
  %.not.i.i154 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i154, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !8
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !8
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.k, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(80) %i.ab) #16, !inline_history !135
  br label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.aj = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #18
          to label %.noexc unwind label %bb.bd    ; 4 uses

.noexc:                                           ; preds = %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit
  invoke void @_ZN5Ipopt25ExpandedMultiVectorMatrixC1EPKNS_30ExpandedMultiVectorMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_ZNK5Ipopt30ExpandedMultiVectorMatrixSpace32MakeNewExpandedMultiVectorMatrixEv.exit unwind label %bb.l

bb.l:                                             ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 104) #17
  br label %.body

_ZNK5Ipopt30ExpandedMultiVectorMatrixSpace32MakeNewExpandedMultiVectorMatrixEv.exit: ; preds = %.noexc
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !8
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !8
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !48  ; 4 uses
  %.not.i.i.i156 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i156, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNK5Ipopt30ExpandedMultiVectorMatrixSpace32MakeNewExpandedMultiVectorMatrixEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !8
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !8
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(104) %i.ao) #16, !inline_history !63
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZNK5Ipopt30ExpandedMultiVectorMatrixSpace32MakeNewExpandedMultiVectorMatrixEv.exit
  store ptr %i.aj, ptr %i.m, align 8, !tbaa !48
  %i.aw = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #18
          to label %bb.p unwind label %bb.be      ; 13 uses

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !74
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !77
  %i.bb = load i32, ptr %i.t, align 8, !tbaa !16
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !74
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !77
  %i.bg = add nsw i32 %i.bb, %i.ba
  invoke void @_ZN5Ipopt19CompoundMatrixSpaceC1Eiiii(ptr noundef nonnull align 8 dereferenceable(129) %i.aw, i32 noundef 2, i32 noundef 1, i32 noundef %i.bg, i32 noundef %i.bf)
          to label %bb.q unwind label %bb.bf

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 6 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !8
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !8
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !74
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !77
  invoke void @_ZN5Ipopt19CompoundMatrixSpace12SetBlockRowsEii(ptr noundef nonnull align 8 dereferenceable(129) %i.aw, i32 noundef 0, i32 noundef %i.bm)
          to label %bb.r unwind label %bb.bg

bb.r:                                             ; preds = %bb.q
  %i.bn = load i32, ptr %i.t, align 8, !tbaa !16
  invoke void @_ZN5Ipopt19CompoundMatrixSpace12SetBlockRowsEii(ptr noundef nonnull align 8 dereferenceable(129) %i.aw, i32 noundef 1, i32 noundef %i.bn)
          to label %bb.s unwind label %bb.bg

bb.s:                                             ; preds = %bb.r
  %i.bo = load ptr, ptr %i.bc, align 8, !tbaa !74
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !77
  invoke void @_ZN5Ipopt19CompoundMatrixSpace12SetBlockColsEii(ptr noundef nonnull align 8 dereferenceable(129) %i.aw, i32 noundef 0, i32 noundef %i.bq)
          to label %bb.t unwind label %bb.bg

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !136, !noalias !139 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt6Matrix10OwnerSpaceEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !8, !noalias !139
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !8, !noalias !139
  br label %_ZNK5Ipopt6Matrix10OwnerSpaceEv.exit

_ZNK5Ipopt6Matrix10OwnerSpaceEv.exit:             ; preds = %bb.u, %bb.t
end_hunk_0
