Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLowRankAugSystemSolver?download=true
inline.NumInlined: 930
inline.NumDeleted: 365
begin_hunk_0_@_ZN5Ipopt22LowRankAugSystemSolver5SolveEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dPKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_RS4_SB_SB_SB_bi:bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 88) #15
  br label %.body

_ZNK5Ipopt15DiagMatrixSpace17MakeNewDiagMatrixEv.exit: ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !16
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !16
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !64   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNK5Ipopt15DiagMatrixSpace17MakeNewDiagMatrixEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !16
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !16
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(88) %i.r) #14, !inline_history !82
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5Ipopt15DiagMatrixSpace17MakeNewDiagMatrixEv.exit, %bb.d, %bb.e
  store ptr %i.l, ptr %i.n, align 8, !tbaa !64
  %i.z = load i32, ptr %i.i, align 8, !tbaa !16
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.i, align 8, !tbaa !16
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(20) %i.h) #14, !inline_history !99
  br label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit

bb.h:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.m, %bb.c ] ; 2 uses
  %i.ag = load i32, ptr %i.i, align 8, !tbaa !16
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !16
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127.sink.split, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127

_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit: ; preds = %bb.g, %bb.f, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(49) %i.ak)
  %spec.select = and i1 %21, %i.ao                ; 2 uses
  %i.ap = load i8, ptr %i.a, align 8, !tbaa !79, !range !89, !noundef !90
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load i32, ptr %i.at, align 8, !tbaa !36
  %.not29.i = icmp eq i32 %i.as, %i.au
  br i1 %.not29.i, label %bb.k, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge.i:                                      ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !36
  %.not30.i = icmp eq i32 %i.aw, 0
  br i1 %.not30.i, label %bb.k, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.k:                                             ; preds = %.critedge.i, %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !58
  %i.az = fcmp une double %2, %i.ay
  br i1 %i.az, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not31.i = icmp eq ptr %3, null
  br i1 %.not31.i, label %.critedge46.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !100
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !59
  %.not32.i = icmp eq i32 %i.bb, %i.bd
  br i1 %.not32.i, label %bb.n, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge46.i:                                    ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !59
  %.not33.i = icmp eq i32 %i.bf, 0
  br i1 %.not33.i, label %bb.n, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.n:                                             ; preds = %.critedge46.i, %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !60
  %i.bi = fcmp une double %4, %i.bh
  br i1 %i.bi, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not34.i = icmp eq ptr %5, null
  br i1 %.not34.i, label %.critedge48.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !100
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !61
  %.not35.i = icmp eq i32 %i.bk, %i.bm
  br i1 %.not35.i, label %bb.q, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge48.i:                                    ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !61
  %.not36.i = icmp eq i32 %i.bo, 0
  br i1 %.not36.i, label %bb.q, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.q:                                             ; preds = %.critedge48.i, %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !109
  %i.br = fcmp une double %6, %i.bq
  br i1 %i.br, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !100
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !110
  %.not37.i = icmp eq i32 %i.bt, %i.bv
  br i1 %.not37.i, label %bb.s, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.s:                                             ; preds = %bb.r
  %.not38.i = icmp eq ptr %8, null
  br i1 %.not38.i, label %.critedge50.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !100
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !111
  %.not39.i = icmp eq i32 %i.bx, %i.bz
  br i1 %.not39.i, label %bb.u, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge50.i:                                    ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !111
  %.not40.i = icmp eq i32 %i.cb, 0
  br i1 %.not40.i, label %bb.u, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.u:                                             ; preds = %.critedge50.i, %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !112
  %i.ce = fcmp une double %9, %i.cd
  br i1 %i.ce, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !100
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !113
  %.not41.i = icmp eq i32 %i.cg, %i.ci
  br i1 %.not41.i, label %bb.w, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.w:                                             ; preds = %bb.v
  %.not42.i = icmp eq ptr %11, null
  br i1 %.not42.i, label %.critedge52.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !100
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !114
  %.not43.i = icmp eq i32 %i.ck, %i.cm
  br i1 %.not43.i, label %bb.y, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

.critedge52.i:                                    ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !114
  %.not44.i = icmp eq i32 %i.co, 0
  br i1 %.not44.i, label %bb.y, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread

bb.y:                                             ; preds = %.critedge52.i, %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !115
  %i.cr = fcmp une double %12, %i.cq
  br i1 %i.cr, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit

_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread: ; preds = %bb.j, %.critedge.i, %bb.k, %bb.m, %.critedge46.i, %bb.n, %bb.p, %.critedge48.i, %bb.q, %bb.r, %bb.t, %.critedge50.i, %bb.u, %bb.v, %bb.x, %.critedge52.i, %bb.y, %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit
  %i.cs = tail call noundef i32 @_ZN5Ipopt22LowRankAugSystemSolver19UpdateFactorizationEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_bi(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef %1, double noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5, double noundef %6, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef %8, double noundef %9, ptr noundef nonnull align 8 dereferenceable(69) %10, ptr noundef %11, double noundef %12, ptr noundef nonnull align 8 dereferenceable(205) %13, ptr noundef nonnull align 8 dereferenceable(205) %14, ptr noundef nonnull align 8 dereferenceable(205) %15, ptr noundef nonnull align 8 dereferenceable(205) %16, i1 noundef zeroext %spec.select, i32 noundef %22) ; 2 uses
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %bb.z, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit164

bb.z:                                             ; preds = %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !100
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %2, ptr %i.cw, align 8, !tbaa !58
  %.not109 = icmp eq ptr %3, null
  br i1 %.not109, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !100
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sink = phi i32 [ %i.cy, %bb.aa ], [ 0, %bb.z ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sink, ptr %i.cz, align 8, !tbaa !59
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %4, ptr %i.da, align 8, !tbaa !60
  %.not110 = icmp eq ptr %5, null
  br i1 %.not110, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !100
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.sink214 = phi i32 [ %i.dc, %bb.ac ], [ 0, %bb.ab ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sink214, ptr %i.dd, align 8, !tbaa !61
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %6, ptr %i.de, align 8, !tbaa !109
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !100
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !110
  %.not111 = icmp eq ptr %8, null
  br i1 %.not111, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !100
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.sink215 = phi i32 [ %i.dj, %bb.ae ], [ 0, %bb.ad ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %.sink215, ptr %i.dk, align 4, !tbaa !111
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %9, ptr %i.dl, align 8, !tbaa !112
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !100
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.dn, ptr %i.do, align 8, !tbaa !113
  %.not112 = icmp eq ptr %11, null
  br i1 %.not112, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !100
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sink216 = phi i32 [ %i.dq, %bb.ag ], [ 0, %bb.af ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %.sink216, ptr %i.dr, align 4, !tbaa !114
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %12, ptr %i.ds, align 8, !tbaa !115
  store i8 0, ptr %i.a, align 8, !tbaa !79
  br label %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit

_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit: ; preds = %bb.y, %bb.ah
  %i.dt = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !64
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(49) %i.dt, ptr noundef %i.dv, double noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5, double noundef %6, ptr noundef nonnull %7, ptr noundef %8, double noundef %9, ptr noundef nonnull %10, ptr noundef %11, double noundef %12, ptr noundef nonnull align 8 dereferenceable(205) %13, ptr noundef nonnull align 8 dereferenceable(205) %14, ptr noundef nonnull align 8 dereferenceable(205) %15, ptr noundef nonnull align 8 dereferenceable(205) %16, ptr noundef nonnull align 8 dereferenceable(205) %17, ptr noundef nonnull align 8 dereferenceable(205) %18, ptr noundef nonnull align 8 dereferenceable(205) %19, ptr noundef nonnull align 8 dereferenceable(205) %20, i1 noundef zeroext %spec.select, i32 noundef %22) ; 3 uses
  %i.ea = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = tail call noundef zeroext i1 %i.ed(ptr noundef nonnull align 8 dereferenceable(49) %i.ea)
  br i1 %i.ee, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit
  %i.ef = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = tail call noundef i32 %i.ei(ptr noundef nonnull align 8 dereferenceable(49) %i.ef)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.ej, ptr %i.ek, align 8, !tbaa !116
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit
  %.not113 = icmp eq i32 %i.dz, 0
  br i1 %.not113, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !77 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.ep(ptr noundef nonnull align 8 dereferenceable(40) %i.em, i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef %i.dz)
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit164

bb.al:                                            ; preds = %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !66
  %.not210 = icmp eq ptr %i.er, null
  br i1 %.not210, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !66
  %.not211 = icmp eq ptr %i.et, null
  br i1 %.not211, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit164, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !62 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call noundef ptr %i.ey(ptr noundef nonnull align 8 dereferenceable(48) %i.ev, i1 noundef zeroext false) ; 13 uses
  %.not.i.i128 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i128, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !16
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 8, !tbaa !16
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit: ; preds = %bb.an, %bb.ao
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ez, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %13)
          to label %bb.ap unwind label %bb.bg

bb.ap:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ez, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(205) %14)
          to label %bb.aq unwind label %bb.bg

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ez, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(205) %15)
          to label %bb.ar unwind label %bb.bg

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ez, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(205) %16)
          to label %bb.as unwind label %bb.bg

bb.as:                                            ; preds = %bb.ar
  %i.fd = load ptr, ptr %i.eu, align 8, !tbaa !62 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = invoke noundef ptr %i.fg(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, i1 noundef zeroext false)
          to label %bb.at unwind label %bb.bh     ; 14 uses

bb.at:                                            ; preds = %bb.as
  %.not.i.i129 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i129, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit130, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !16
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !16
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit130

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit130: ; preds = %bb.au, %bb.at
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.fh, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %17)
          to label %bb.av unwind label %bb.bi

bb.av:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit130
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.fh, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(205) %18)
          to label %bb.aw unwind label %bb.bi

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.fh, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(205) %19)
          to label %bb.ax unwind label %bb.bi

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.fh, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(205) %20)
          to label %bb.ay unwind label %bb.bi

bb.ay:                                            ; preds = %bb.ax
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !66 ; 2 uses
  %.not212 = icmp eq ptr %i.fm, null
  br i1 %.not212, label %bb.bo, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !117
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !98
  %i.fr = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #16
          to label %bb.ba unwind label %bb.bj     ; 23 uses

bb.ba:                                            ; preds = %bb.az
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 %i.fq, ptr %i.ft, align 4, !tbaa !94
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt16DenseVectorSpaceE, i64 16), ptr %i.fr, align 8, !tbaa !18
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 24 ; 3 uses
  store i32 0, ptr %i.fu, align 8, !tbaa !120
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  store ptr null, ptr %i.fv, align 8, !tbaa !126
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  store ptr %i.fu, ptr %i.fw, align 8, !tbaa !127
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  store ptr %i.fu, ptr %i.fx, align 8, !tbaa !128
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  store i64 0, ptr %i.fy, align 8, !tbaa !129
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 72 ; 3 uses
  store i32 0, ptr %i.fz, align 8, !tbaa !120
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 80
  store ptr null, ptr %i.ga, align 8, !tbaa !126
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fr, i64 88
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !127
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fr, i64 96
  store ptr %i.fz, ptr %i.gc, align 8, !tbaa !128
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 104
  store i64 0, ptr %i.gd, align 8, !tbaa !129
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 120 ; 3 uses
  store i32 0, ptr %i.ge, align 8, !tbaa !120
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 128
  store ptr null, ptr %i.gf, align 8, !tbaa !126
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fr, i64 136
  store ptr %i.ge, ptr %i.gg, align 8, !tbaa !127
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fr, i64 144
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !128
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fr, i64 152
  store i64 0, ptr %i.gi, align 8, !tbaa !129
  store i32 1, ptr %i.fs, align 8, !tbaa !16
  %i.gj = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #16
          to label %.noexc132 unwind label %bb.bk ; 10 uses

.noexc132:                                        ; preds = %bb.ba
  invoke void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248) %i.gj, ptr noundef nonnull align 8 dereferenceable(160) %i.fr)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %.noexc132
  %i.gk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef 248) #15
  br label %.body133

bb.bc:                                            ; preds = %.noexc132
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 6 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !16
  %i.gn = add nsw i32 %i.gm, 1
  store i32 %i.gn, ptr %i.gl, align 8, !tbaa !16
  %i.go = load ptr, ptr %i.fl, align 8, !tbaa !66 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !18
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8
  invoke void %i.gr(ptr noundef nonnull align 8 dereferenceable(69) %i.go, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.ez, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.gj)
          to label %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit unwind label %bb.bl, !inline_history !130

_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit: ; preds = %bb.bc
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !68
  invoke void @_ZNK5Ipopt14DenseGenMatrix19CholeskySolveVectorERNS_11DenseVectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.gt, ptr noundef nonnull align 8 dereferenceable(248) %i.gj)
          to label %bb.bd unwind label %bb.bl

bb.bd:                                            ; preds = %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit
  %i.gu = load ptr, ptr %i.fl, align 8, !tbaa !66 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Ipopt22LowRankAugSystemSolver5SolveEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dPKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_RS4_SB_SB_SB_bi:bb.a
  %i.ky = add nsw i32 %i.kx, -1                   ; 2 uses
  store i32 %i.ky, ptr %i.kw, align 8, !tbaa !16
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.cc, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit164

bb.cc:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit
  %i.la = load ptr, ptr %i.ez, align 8, !tbaa !18
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8
  tail call void %i.lc(ptr noundef nonnull align 8 dereferenceable(265) %i.ez) #14, !inline_history !134
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit164

_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit143.thread: ; preds = %bb.bi, %bb.bn, %.body133, %bb.bj, %bb.ca, %.body146, %bb.bw
  %.pn118.pn.pn.pn205 = phi { ptr, i32 } [ %i.hm, %bb.bi ], [ %.pn118, %bb.ca ], [ %.pn118, %.body146 ], [ %i.ka, %bb.bw ], [ %.pn114, %.body133 ], [ %i.hn, %bb.bj ], [ %.pn114, %bb.bn ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !16
  %i.lf = add nsw i32 %i.le, -1                   ; 2 uses
  store i32 %i.lf, ptr %i.ld, align 8, !tbaa !16
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.cd, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread

bb.cd:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit143.thread
  %i.lh = load ptr, ptr %i.fh, align 8, !tbaa !18
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8
  tail call void %i.lj(ptr noundef nonnull align 8 dereferenceable(265) %i.fh) #14, !inline_history !134
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread: ; preds = %bb.bg, %bb.cd, %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit143.thread, %bb.bh
  %.pn118.pn.pn.pn.pn.pn208 = phi { ptr, i32 } [ %i.hk, %bb.bg ], [ %.pn118.pn.pn.pn205, %bb.cd ], [ %.pn118.pn.pn.pn205, %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit143.thread ], [ %i.hl, %bb.bh ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !16
  %i.lm = add nsw i32 %i.ll, -1                   ; 2 uses
  store i32 %i.lm, ptr %i.lk, align 8, !tbaa !16
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127.sink.split, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit164: ; preds = %bb.cc, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit, %bb.am, %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, %bb.ak
  %.099 = phi i32 [ %i.cs, %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread ], [ %i.dz, %bb.ak ], [ 0, %bb.am ], [ 0, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit ], [ 0, %bb.cc ]
  ret i32 %.099

_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127.sink.split: ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread, %.body
  %.sink235 = phi ptr [ %i.h, %.body ], [ %i.ez, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread ] ; 2 uses
  %.pn118.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn118.pn.pn.pn.pn.pn208, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread ]
  %i.lo = load ptr, ptr %.sink235, align 8, !tbaa !18
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8
  tail call void %i.lq(ptr noundef nonnull align 8 dereferenceable(20) %.sink235) #14
  br label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127

_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127: ; preds = %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127.sink.split, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread, %.body
  %.pn118.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn118.pn.pn.pn.pn.pn208, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread ], [ %.pn118.pn.pn.pn.pn.pn.pn.ph, %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127.sink.split ]
  resume { ptr, i32 } %.pn118.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(204) %0, ptr nofree noundef readonly captures(address_is_null) %1, double noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, double noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, double noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %7, ptr nofree noundef readonly captures(address_is_null) %8, double noundef %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %10, ptr nofree noundef readonly captures(address_is_null) %11, double noundef %12) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %.not29 = icmp eq i32 %i.b, %i.d
  br i1 %.not29, label %bb.c, label %bb.r

.critedge:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36
  %.not30 = icmp eq i32 %i.f, 0
  br i1 %.not30, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b, %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load double, ptr %i.g, align 8, !tbaa !58
  %i.i = fcmp une double %2, %i.h
  br i1 %i.i, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %.critedge46, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i32, ptr %i.l, align 8, !tbaa !59
  %.not32 = icmp eq i32 %i.k, %i.m
  br i1 %.not32, label %bb.f, label %bb.r

.critedge46:                                      ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !59
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e, %.critedge46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load double, ptr %i.p, align 8, !tbaa !60
  %i.r = fcmp une double %4, %i.q
  br i1 %i.r, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not34 = icmp eq ptr %5, null
  br i1 %.not34, label %.critedge48, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !61
  %.not35 = icmp eq i32 %i.t, %i.v
  br i1 %.not35, label %bb.i, label %bb.r

.critedge48:                                      ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !61
  %.not36 = icmp eq i32 %i.x, 0
  br i1 %.not36, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h, %.critedge48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load double, ptr %i.y, align 8, !tbaa !109
  %i.aa = fcmp une double %6, %i.z
  br i1 %i.aa, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !110
  %.not37 = icmp eq i32 %i.ac, %i.ae
  br i1 %.not37, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %.not38 = icmp eq ptr %8, null
  br i1 %.not38, label %.critedge50, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !100
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !111
  %.not39 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not39, label %bb.m, label %bb.r

.critedge50:                                      ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !111
  %.not40 = icmp eq i32 %i.ak, 0
  br i1 %.not40, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l, %.critedge50
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load double, ptr %i.al, align 8, !tbaa !112
  %i.an = fcmp une double %9, %i.am
  br i1 %i.an, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !100
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !113
  %.not41 = icmp eq i32 %i.ap, %i.ar
  br i1 %.not41, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not42 = icmp eq ptr %11, null
  br i1 %.not42, label %.critedge52, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !100
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.av = load i32, ptr %i.au, align 4, !tbaa !114
  %.not43 = icmp eq i32 %i.at, %i.av
  br i1 %.not43, label %bb.q, label %bb.r

.critedge52:                                      ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !114
  %.not44 = icmp eq i32 %i.ax, 0
  br i1 %.not44, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.critedge52
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = load double, ptr %i.ay, align 8, !tbaa !115
  %i.ba = fcmp une double %12, %i.az
  br i1 %i.ba, label %bb.r, label %13

13:                                               ; preds = %bb.q
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %.critedge, %bb.c, %bb.e, %.critedge46, %bb.f, %bb.h, %.critedge48, %bb.i, %bb.j, %bb.l, %.critedge50, %bb.m, %bb.n, %bb.p, %.critedge52, %bb.q, %13
  %.0 = phi i1 [ false, %13 ], [ true, %bb.q ], [ true, %.critedge52 ], [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.m ], [ true, %.critedge50 ], [ true, %bb.l ], [ true, %bb.j ], [ true, %bb.i ], [ true, %.critedge48 ], [ true, %bb.h ], [ true, %bb.f ], [ true, %.critedge46 ], [ true, %bb.e ], [ true, %bb.c ], [ true, %.critedge ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5Ipopt22LowRankAugSystemSolver19UpdateFactorizationEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_bi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(204) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5, double noundef %6, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef %8, double noundef %9, ptr noundef nonnull align 8 dereferenceable(69) %10, ptr noundef %11, double noundef %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %16, i1 noundef zeroext %17, i32 noundef %18) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %19 = alloca %"class.Ipopt::SmartPtr.72", align 8 ; 6 uses
  %20 = alloca %"class.Ipopt::SmartPtr.16", align 8 ; 9 uses
  %21 = alloca %"class.Ipopt::SmartPtr.16", align 8 ; 10 uses
  %22 = alloca %"class.Ipopt::SmartPtr.16", align 8 ; 9 uses
  %23 = alloca %"class.Ipopt::SmartPtr.16", align 8 ; 9 uses
  %24 = alloca %"class.Ipopt::SmartPtr.16", align 8 ; 9 uses
  %i.a = fcmp oeq double %2, 1.000000e+00
  br i1 %i.a, label %bb.b, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135, !noalias !137 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16, !noalias !137
  %i.f = add nsw i32 %i.e, 1                      ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !16
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(128) %i.c) #14, !inline_history !140
  br label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !135, !noalias !141 ; 7 uses
  %.not.i.i.i.i167 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i167, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit172, label %bb.e

bb.e:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16, !noalias !141
  %i.o = add nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !16
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit172

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(128) %i.l) #14, !inline_history !140
  br label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit172

_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit172: ; preds = %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit, %bb.e, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28, !noalias !144 ; 6 uses
  %.not.i.i.i.i173 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i173, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit172
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !16, !noalias !144
  %i.x = add nsw i32 %i.w, 1                      ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !16
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(205) %i.u) #14, !inline_history !147
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit172, %bb.h, %bb.g, %bb.a
  %.sroa.0413.0 = phi ptr [ null, %bb.a ], [ %i.u, %bb.h ], [ %i.u, %bb.g ], [ null, %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit172 ] ; 2 uses
  %.sroa.0407.0 = phi ptr [ null, %bb.a ], [ %i.c, %bb.h ], [ %i.c, %bb.g ], [ %i.c, %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit172 ] ; 10 uses
  %.sroa.0401.0 = phi ptr [ null, %bb.a ], [ %i.l, %bb.h ], [ %i.l, %bb.g ], [ %i.l, %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit172 ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !151, !noalias !148 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !157, !noalias !160 ; 11 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null       ; 5 uses
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !16, !noalias !160
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !16, !noalias !160
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  store ptr %i.af, ptr %19, align 8, !tbaa !157, !alias.scope !160
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !91, !noalias !161 ; 9 uses
  %.not.i.i.i.i.i183 = icmp eq ptr %i.ak, null    ; 3 uses
  br i1 %.not.i.i.i.i.i183, label %_ZNK5Ipopt22LowRankUpdateSymMatrix18LowRankVectorSpaceEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !16, !noalias !161
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !16, !noalias !161
  br label %_ZNK5Ipopt22LowRankUpdateSymMatrix18LowRankVectorSpaceEv.exit

_ZNK5Ipopt22LowRankUpdateSymMatrix18LowRankVectorSpaceEv.exit: ; preds = %bb.k, %bb.j
  %i.ao = icmp eq ptr %.sroa.0413.0, null
  br i1 %i.ao, label %bb.l, label %bb.t

bb.l:                                             ; preds = %_ZNK5Ipopt22LowRankUpdateSymMatrix18LowRankVectorSpaceEv.exit
  br i1 %.not.i.i.i.i.i, label %bb.m, label %.invoke

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !91
  br label %.invoke

.invoke:                                          ; preds = %bb.l, %bb.m
  %.sink = phi ptr [ %i.aq, %bb.m ], [ %i.ak, %bb.l ] ; 2 uses
  %i.ar = load ptr, ptr %.sink, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(16) %.sink)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit unwind label %bb.q, !inline_history !166 ; 13 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit:                 ; preds = %.invoke
  %.not.i.i184 = icmp eq ptr %i.au, null
  br i1 %.not.i.i184, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !16
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !16
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit:      ; preds = %bb.n, %_ZNK5Ipopt6Vector7MakeNewEv.exit
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(205) %i.au, double noundef 0.000000e+00)
          to label %.noexc unwind label %bb.r, !inline_history !167

.noexc:                                           ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.au)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %.noexc
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !16
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(205) %i.au) #14, !inline_history !168
  br label %bb.t

bb.q:                                             ; preds = %.invoke
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit190

bb.r:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit, %.noexc
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !16
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !16
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.s, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit190

bb.s:                                             ; preds = %bb.r
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(205) %i.au) #14, !inline_history !168
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit190

bb.t:                                             ; preds = %_ZNK5Ipopt22LowRankUpdateSymMatrix18LowRankVectorSpaceEv.exit, %bb.o, %bb.p
  %.sroa.0413.1 = phi ptr [ %.sroa.0413.0, %_ZNK5Ipopt22LowRankUpdateSymMatrix18LowRankVectorSpaceEv.exit ], [ %i.au, %bb.o ], [ %i.au, %bb.p ] ; 10 uses
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = load ptr, ptr %i.ac, align 8, !tbaa !151
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !169, !range !89, !noundef !90
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.v, label %bb.ae
end_hunk_1
