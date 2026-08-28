Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpStdAugSystemSolver?download=true
inline.NumInlined: 776
inline.NumDeleted: 262
begin_hunk_0_@_ZN5Ipopt18StdAugSystemSolver10MultiSolveEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dPKNS_6MatrixES6_dS9_S6_dRSt6vectorINS_8SmartPtrIS5_EESaISC_EESF_SF_SF_RSA_INSB_IS4_EESaISG_EESJ_SJ_SJ_bi:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %23 = alloca %"class.std::vector.30", align 8   ; 12 uses
  %i.c = alloca [16 x i8], align 16               ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::vector.49", align 8   ; 14 uses
  %i.d = alloca [16 x i8], align 16               ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1008
  %i.h = load i8, ptr %i.g, align 8, !tbaa !88, !range !79, !noundef !80
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN5Ipopt9TimedTask5StartEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 960
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1010
  store i8 0, ptr %i.k, align 2, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1009
  store i8 1, ptr %i.l, align 1, !tbaa !91
  %i.m = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  store double %i.m, ptr %i.j, align 8, !tbaa !92
  %i.n = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 976
  store double %i.n, ptr %i.o, align 8, !tbaa !93
  %i.p = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 992
  store double %i.p, ptr %i.q, align 8, !tbaa !94
  br label %_ZN5Ipopt9TimedTask5StartEv.exit

_ZN5Ipopt9TimedTask5StartEv.exit:                 ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !95
  %i.t = load ptr, ptr %13, align 8, !tbaa !98    ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = lshr i64 %i.w, 3                         ; 4 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.ac = load ptr, ptr %14, align 8, !tbaa !98
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !99
  %i.ae = load ptr, ptr %15, align 8, !tbaa !98
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ag = load ptr, ptr %16, align 8, !tbaa !98
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !99
  tail call void @_ZN5Ipopt18StdAugSystemSolver20CreateAugmentedSpaceERKNS_9SymMatrixERKNS_6MatrixES6_RKNS_6VectorES9_S9_S9_(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef nonnull align 8 dereferenceable(69) %10, ptr noundef nonnull align 8 dereferenceable(205) %i.ab, ptr noundef nonnull align 8 dereferenceable(205) %i.ad, ptr noundef nonnull align 8 dereferenceable(205) %i.af, ptr noundef nonnull align 8 dereferenceable(205) %i.ah)
  %i.ai = load ptr, ptr %13, align 8, !tbaa !98
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !99
  %i.ak = load ptr, ptr %14, align 8, !tbaa !98
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !99
  %i.am = load ptr, ptr %15, align 8, !tbaa !98
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !99
  %i.ao = load ptr, ptr %16, align 8, !tbaa !98
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !99
  tail call void @_ZN5Ipopt18StdAugSystemSolver21CreateAugmentedSystemEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull %1, double noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5, double noundef %6, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef %8, double noundef %9, ptr noundef nonnull align 8 dereferenceable(69) %10, ptr noundef %11, double noundef %12, ptr noundef nonnull align 8 dereferenceable(205) %i.aj, ptr noundef nonnull align 8 dereferenceable(205) %i.al, ptr noundef nonnull align 8 dereferenceable(205) %i.an, ptr noundef nonnull align 8 dereferenceable(205) %i.ap)
  br label %bb.d

bb.c:                                             ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !102
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.at = load i32, ptr %i.as, align 8, !tbaa !111
  %.not29.i = icmp eq i32 %i.ar, %i.at
  br i1 %.not29.i, label %bb.e, label %bb.t

.critedge.i:                                      ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.av = load i32, ptr %i.au, align 8, !tbaa !111
  %.not30.i = icmp eq i32 %i.av, 0
  br i1 %.not30.i, label %bb.e, label %bb.t

bb.e:                                             ; preds = %.critedge.i, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !112
  %i.ay = fcmp une double %2, %i.ax
  br i1 %i.ay, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not31.i = icmp eq ptr %3, null
  br i1 %.not31.i, label %.critedge46.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !102
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !16
  %.not32.i = icmp eq i32 %i.ba, %i.bc
  br i1 %.not32.i, label %bb.h, label %bb.t

.critedge46.i:                                    ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !16
  %.not33.i = icmp eq i32 %i.be, 0
  br i1 %.not33.i, label %bb.h, label %bb.t

bb.h:                                             ; preds = %.critedge46.i, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !44
  %i.bh = fcmp une double %4, %i.bg
  br i1 %i.bh, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not34.i = icmp eq ptr %5, null
  br i1 %.not34.i, label %.critedge48.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !102
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !45
  %.not35.i = icmp eq i32 %i.bj, %i.bl
  br i1 %.not35.i, label %bb.k, label %bb.t

.critedge48.i:                                    ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !45
  %.not36.i = icmp eq i32 %i.bn, 0
  br i1 %.not36.i, label %bb.k, label %bb.t

bb.k:                                             ; preds = %.critedge48.i, %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !113
  %i.bq = fcmp une double %6, %i.bp
  br i1 %i.bq, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !102
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !114
  %.not37.i = icmp eq i32 %i.bs, %i.bu
  br i1 %.not37.i, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %.not38.i = icmp eq ptr %8, null
  br i1 %.not38.i, label %.critedge50.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !102
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !115
  %.not39.i = icmp eq i32 %i.bw, %i.by
  br i1 %.not39.i, label %bb.o, label %bb.t

.critedge50.i:                                    ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !115
  %.not40.i = icmp eq i32 %i.ca, 0
  br i1 %.not40.i, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.critedge50.i, %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !116
  %i.cd = fcmp une double %9, %i.cc
  br i1 %i.cd, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !102
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !117
  %.not41.i = icmp eq i32 %i.cf, %i.ch
  br i1 %.not41.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not42.i = icmp eq ptr %11, null
  br i1 %.not42.i, label %.critedge52.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !102
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !118
  %.not43.i = icmp eq i32 %i.cj, %i.cl
  br i1 %.not43.i, label %bb.s, label %bb.t

.critedge52.i:                                    ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !118
  %.not44.i = icmp eq i32 %i.cn, 0
  br i1 %.not44.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.critedge52.i, %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cp = load double, ptr %i.co, align 8, !tbaa !119
  %i.cq = fcmp une double %12, %i.cp
  br i1 %i.cq, label %bb.t, label %_ZN5Ipopt18StdAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit

bb.t:                                             ; preds = %bb.s, %.critedge52.i, %bb.r, %bb.p, %bb.o, %.critedge50.i, %bb.n, %bb.l, %bb.k, %.critedge48.i, %bb.j, %bb.h, %.critedge46.i, %bb.g, %bb.e, %.critedge.i, %bb.d
  %i.cr = load ptr, ptr %13, align 8, !tbaa !98
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !99
  %i.ct = load ptr, ptr %14, align 8, !tbaa !98
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !99
  %i.cv = load ptr, ptr %15, align 8, !tbaa !98
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !99
  %i.cx = load ptr, ptr %16, align 8, !tbaa !98
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !99
  tail call void @_ZN5Ipopt18StdAugSystemSolver21CreateAugmentedSystemEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef %1, double noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5, double noundef %6, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef %8, double noundef %9, ptr noundef nonnull align 8 dereferenceable(69) %10, ptr noundef %11, double noundef %12, ptr noundef nonnull align 8 dereferenceable(205) %i.cs, ptr noundef nonnull align 8 dereferenceable(205) %i.cu, ptr noundef nonnull align 8 dereferenceable(205) %i.cw, ptr noundef nonnull align 8 dereferenceable(205) %i.cy)
  br label %_ZN5Ipopt18StdAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit

_ZN5Ipopt18StdAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  %sext = shl i64 %i.w, 29                        ; 4 uses
  %i.cz = ashr exact i64 %sext, 32                ; 3 uses
  %i.da = icmp ugt i64 %i.cz, 1152921504606846975
  br i1 %i.da, label %.noexc, label %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

.noexc:                                           ; preds = %_ZN5Ipopt18StdAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #16
  unreachable

_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %_ZN5Ipopt18StdAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit
  store i64 0, ptr %23, align 8
  %.not.i.i.i.i = icmp eq i64 %sext, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EEC2EmRKS5_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.db = ashr exact i64 %sext, 29                ; 3 uses
  %i.dc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #17 ; 4 uses
  store ptr %i.dc, ptr %23, align 8, !tbaa !98
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.cz
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dc, i8 0, i64 %i.db, i1 false), !tbaa !99
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.dc, i64 %i.db
  br label %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EEC2EmRKS5_.exit.thread.i

_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EEC2EmRKS5_.exit.thread.i: ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %.sink.i = phi ptr [ %i.dd, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.df, align 8, !tbaa !120
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.de, align 8, !tbaa !95
  %i.dg = icmp sgt i32 %i.y, 0                    ; 3 uses
  br i1 %i.dg, label %.lr.ph, label %._crit_edge.i.i151

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EEC2EmRKS5_.exit.thread.i
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %25, i64 8
  %wide.trip.count = and i64 %i.x, 2147483647
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit ] ; 7 uses
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !50 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = invoke noundef ptr %i.dq(ptr noundef nonnull align 8 dereferenceable(48) %i.dn, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.aj      ; 14 uses

bb.v:                                             ; preds = %bb.u
  %.not.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !8
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !8
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit: ; preds = %bb.w, %bb.v
  %i.dv = load ptr, ptr %13, align 8, !tbaa !98
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !99
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.dr, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %i.dx)
          to label %bb.x unwind label %bb.ak

bb.x:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit
  %i.dy = load ptr, ptr %14, align 8, !tbaa !98
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !99
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.dr, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(205) %i.ea)
          to label %bb.y unwind label %bb.ak

bb.y:                                             ; preds = %bb.x
  %i.eb = load ptr, ptr %15, align 8, !tbaa !98
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !99
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.dr, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(205) %i.ed)
          to label %bb.z unwind label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.ee = load ptr, ptr %16, align 8, !tbaa !98
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !99
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.dr, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(205) %i.eg)
          to label %bb.aa unwind label %bb.ak

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.eh = trunc nuw nsw i64 %indvars.iv to i32
  %i.ei = invoke noundef i32 (ptr, i64, ptr, ...) @_ZN5Ipopt8SnprintfEPclPKcz(ptr noundef nonnull %i.c, i64 noundef 15, ptr noundef nonnull @.str.5, i32 noundef %i.eh)
          to label %bb.ab unwind label %bb.al     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ej = load ptr, ptr %i.di, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  store ptr %i.dj, ptr %24, align 8, !tbaa !69
  %i.ek = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 %i.ek, ptr %i.b, align 8, !tbaa !72
  %i.el = icmp ugt i64 %i.ek, 15
  br i1 %i.el, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ab
  %i.em = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc133 unwind label %bb.am ; 2 uses

.noexc133:                                        ; preds = %.noexc.i
  store ptr %i.em, ptr %24, align 8, !tbaa !74
  %i.en = load i64, ptr %i.b, align 8, !tbaa !72
  store i64 %i.en, ptr %i.dj, align 8, !tbaa !76
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc133, %bb.ab
  %i.eo = phi ptr [ %i.em, %.noexc133 ], [ %i.dj, %bb.ab ] ; 2 uses
  switch i64 %i.ek, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %._crit_edge.i.i134
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.ep = load i8, ptr %i.c, align 16, !tbaa !76
  store i8 %i.ep, ptr %i.eo, align 1, !tbaa !76
  br label %._crit_edge.i.i134

bb.ad:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr nonnull align 16 %i.c, i64 %i.ek, i1 false)
  br label %._crit_edge.i.i134

._crit_edge.i.i134:                               ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i
  %i.eq = load i64, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  store i64 %i.eq, ptr %i.dk, align 8, !tbaa !77
  %i.er = load ptr, ptr %24, align 8, !tbaa !74
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  store i8 0, ptr %i.es, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  store ptr %i.dl, ptr %25, align 8, !tbaa !69
  store i64 0, ptr %i.dm, align 8, !tbaa !77
  store i8 0, ptr %i.dl, align 8, !tbaa !76
  invoke void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205) %i.dr, ptr noundef nonnull align 8 dereferenceable(40) %i.ej, i32 noundef 9, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.ae unwind label %bb.an

bb.ae:                                            ; preds = %._crit_edge.i.i134
  %i.et = load ptr, ptr %25, align 8, !tbaa !74   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.dl
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.ev = load i64, ptr %i.dl, align 8, !tbaa !76
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #14
  %i.ex = load ptr, ptr %24, align 8, !tbaa !74   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.dj
  br i1 %i.ey, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ez = load i64, ptr %i.dj, align 8, !tbaa !76
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #14
  %i.fb = load ptr, ptr %23, align 8, !tbaa !98
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !8
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 8, !tbaa !8
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !99 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i139
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !8
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  store i32 %i.fj, ptr %i.fh, align 8, !tbaa !8
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !10
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(205) %i.fg) #14, !inline_history !121
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i139, %bb.af, %bb.ag
  store ptr %i.dr, ptr %i.fc, align 8, !tbaa !99
end_hunk_0
begin_hunk_1_@_ZN5Ipopt18StdAugSystemSolver21CreateAugmentedSystemEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_:bb.a
  %.pn95.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ug, %bb.ee ], [ %i.ot, %bb.cz ], [ %i.sp, %bb.dv ], [ %i.so, %bb.dt ], [ %i.sp, %bb.du ], [ %i.uf, %bb.ec ], [ %i.ug, %bb.ed ], [ %i.ux, %bb.eh ], [ %i.vx, %bb.eq ], [ %.pn95.pn.pn, %.body208 ], [ %.pn95.pn.pn, %bb.gh ] ; 2 uses
  %i.ady = load i32, ptr %i.oc, align 8, !tbaa !8
  %i.adz = add nsw i32 %i.ady, -1                 ; 2 uses
  store i32 %i.adz, ptr %i.oc, align 8, !tbaa !8
  %i.aea = icmp eq i32 %i.adz, 0
  br i1 %i.aea, label %bb.gi, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit154

bb.gi:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit189
  %i.aeb = load ptr, ptr %i.oa, align 8, !tbaa !10
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aed = load ptr, ptr %i.aec, align 8
  tail call void %i.aed(ptr noundef nonnull align 8 dereferenceable(88) %i.oa) #14, !inline_history !218
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit154

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit154:      ; preds = %bb.bk, %bb.cg, %bb.cf, %bb.ce, %bb.cp, %bb.co, %bb.cn, %bb.gi, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit189, %bb.cy, %bb.cs
  %.pn95.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nk, %bb.cp ], [ %i.hz, %bb.bk ], [ %i.lu, %bb.cg ], [ %i.lt, %bb.ce ], [ %i.lu, %bb.cf ], [ %i.nj, %bb.cn ], [ %i.nk, %bb.co ], [ %i.ob, %bb.cs ], [ %i.os, %bb.cy ], [ %.pn95.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit189 ], [ %.pn95.pn.pn.pn.pn, %bb.gi ] ; 2 uses
  %i.aee = load i32, ptr %i.hi, align 8, !tbaa !8
  %i.aef = add nsw i32 %i.aee, -1                 ; 2 uses
  store i32 %i.aef, ptr %i.hi, align 8, !tbaa !8
  %i.aeg = icmp eq i32 %i.aef, 0
  br i1 %i.aeg, label %bb.gj, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit121

bb.gj:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit154
  %i.aeh = load ptr, ptr %i.hg, align 8, !tbaa !10
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  %i.aej = load ptr, ptr %i.aei, align 8
  tail call void %i.aej(ptr noundef nonnull align 8 dereferenceable(88) %i.hg) #14, !inline_history !218
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit121

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit121:      ; preds = %bb.v, %bb.ar, %bb.aq, %bb.ap, %bb.ba, %bb.az, %bb.ay, %bb.gj, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit154, %bb.bj, %bb.bd
  %.pn95.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gu, %bb.ba ], [ %i.bj, %bb.v ], [ %i.fe, %bb.ar ], [ %i.fd, %bb.ap ], [ %i.fe, %bb.aq ], [ %i.gt, %bb.ay ], [ %i.gu, %bb.az ], [ %i.hh, %bb.bd ], [ %i.hy, %bb.bj ], [ %.pn95.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit154 ], [ %.pn95.pn.pn.pn.pn.pn.pn, %bb.gj ] ; 2 uses
  %i.aek = load i32, ptr %i.as, align 8, !tbaa !8
  %i.ael = add nsw i32 %i.aek, -1                 ; 2 uses
  store i32 %i.ael, ptr %i.as, align 8, !tbaa !8
  %i.aem = icmp eq i32 %i.ael, 0
  br i1 %i.aem, label %bb.gk, label %.body

bb.gk:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit121
  %i.aen = load ptr, ptr %i.aq, align 8, !tbaa !10
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 8
  %i.aep = load ptr, ptr %i.aeo, align 8
  tail call void %i.aep(ptr noundef nonnull align 8 dereferenceable(88) %i.aq) #14, !inline_history !218
  br label %.body

.body:                                            ; preds = %bb.l, %bb.gk, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit121, %bb.u, %bb.o
  %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ar, %bb.o ], [ %i.bi, %bb.u ], [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit121 ], [ %.pn95.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gk ]
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.aer = load i32, ptr %i.aeq, align 8, !tbaa !8
  %i.aes = add nsw i32 %i.aer, -1                 ; 2 uses
  store i32 %i.aes, ptr %i.aeq, align 8, !tbaa !8
  %i.aet = icmp eq i32 %i.aes, 0
  br i1 %i.aet, label %bb.gl, label %_ZN5Ipopt8SmartPtrINS_12SumSymMatrixEED2Ev.exit262

bb.gl:                                            ; preds = %.body
  %i.aeu = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %i.aew = load ptr, ptr %i.aev, align 8
  tail call void %i.aew(ptr noundef nonnull align 8 dereferenceable(136) %i.r) #14, !inline_history !220
  br label %_ZN5Ipopt8SmartPtrINS_12SumSymMatrixEED2Ev.exit262

_ZN5Ipopt8SmartPtrINS_12SumSymMatrixEED2Ev.exit262: ; preds = %.body, %bb.gl
  resume { ptr, i32 } %.pn95.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5Ipopt18StdAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(233) %0, ptr nofree noundef readonly captures(address_is_null) %1, double noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, double noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, double noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %7, ptr nofree noundef readonly captures(address_is_null) %8, double noundef %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %10, ptr nofree noundef readonly captures(address_is_null) %11, double noundef %12) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %.not29 = icmp eq i32 %i.b, %i.d
  br i1 %.not29, label %bb.c, label %bb.r

.critedge:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !111
  %.not30 = icmp eq i32 %i.f, 0
  br i1 %.not30, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b, %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load double, ptr %i.g, align 8, !tbaa !112
  %i.i = fcmp une double %2, %i.h
  br i1 %i.i, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %.critedge46, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !16
  %.not32 = icmp eq i32 %i.k, %i.m
  br i1 %.not32, label %bb.f, label %bb.r

.critedge46:                                      ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load i32, ptr %i.n, align 8, !tbaa !16
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e, %.critedge46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = load double, ptr %i.p, align 8, !tbaa !44
  %i.r = fcmp une double %4, %i.q
  br i1 %i.r, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not34 = icmp eq ptr %5, null
  br i1 %.not34, label %.critedge48, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !102
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.v = load i32, ptr %i.u, align 8, !tbaa !45
  %.not35 = icmp eq i32 %i.t, %i.v
  br i1 %.not35, label %bb.i, label %bb.r

.critedge48:                                      ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = load i32, ptr %i.w, align 8, !tbaa !45
  %.not36 = icmp eq i32 %i.x, 0
  br i1 %.not36, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h, %.critedge48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.z = load double, ptr %i.y, align 8, !tbaa !113
  %i.aa = fcmp une double %6, %i.z
  br i1 %i.aa, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !114
  %.not37 = icmp eq i32 %i.ac, %i.ae
  br i1 %.not37, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %.not38 = icmp eq ptr %8, null
  br i1 %.not38, label %.critedge50, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !102
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !115
  %.not39 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not39, label %bb.m, label %bb.r

.critedge50:                                      ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !115
  %.not40 = icmp eq i32 %i.ak, 0
  br i1 %.not40, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l, %.critedge50
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.am = load double, ptr %i.al, align 8, !tbaa !116
  %i.an = fcmp une double %9, %i.am
  br i1 %i.an, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !102
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !117
  %.not41 = icmp eq i32 %i.ap, %i.ar
  br i1 %.not41, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not42 = icmp eq ptr %11, null
  br i1 %.not42, label %.critedge52, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !102
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.av = load i32, ptr %i.au, align 4, !tbaa !118
  %.not43 = icmp eq i32 %i.at, %i.av
  br i1 %.not43, label %bb.q, label %bb.r

.critedge52:                                      ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !118
  %.not44 = icmp eq i32 %i.ax, 0
  br i1 %.not44, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.critedge52
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.az = load double, ptr %i.ay, align 8, !tbaa !119
  %i.ba = fcmp une double %12, %i.az
  br i1 %i.ba, label %bb.r, label %13

13:                                               ; preds = %bb.q
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %.critedge, %bb.c, %bb.e, %.critedge46, %bb.f, %bb.h, %.critedge48, %bb.i, %bb.j, %bb.l, %.critedge50, %bb.m, %bb.n, %bb.p, %.critedge52, %bb.q, %13
  %.0 = phi i1 [ false, %13 ], [ true, %bb.q ], [ true, %.critedge52 ], [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.m ], [ true, %.critedge50 ], [ true, %bb.l ], [ true, %bb.j ], [ true, %bb.i ], [ true, %.critedge48 ], [ true, %bb.h ], [ true, %bb.f ], [ true, %.critedge46 ], [ true, %bb.e ], [ true, %bb.c ], [ true, %.critedge ], [ true, %bb.b ]
  ret i1 %.0
}

declare void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265), i32 noundef, ptr noundef nonnull align 8 dereferenceable(205)) local_unnamed_addr #7

declare noundef i32 @_ZN5Ipopt8SnprintfEPclPKcz(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

declare void @_ZNK5Ipopt6Vector5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr noundef nonnull align 8 dereferenceable(205), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265), i32 noundef, ptr noundef nonnull align 8 dereferenceable(205)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !125    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6VectorEEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6VectorEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6VectorEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !128 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6VectorEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !8
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6VectorEEEEvPT_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(205) %i.d) #14, !inline_history !221
  br label %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6VectorEEEEvPT_.exit.i.i

_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6VectorEEEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6VectorEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !139

_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6VectorEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5Ipopt8SmartPtrINS0_6VectorEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !125
  br label %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6VectorEEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6VectorEEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6VectorEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.m = phi ptr [ %.pr, %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6VectorEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6VectorEEES3_EvT_S5_RSaIT0_E.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !130
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #15
  br label %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrINS0_6VectorEEES3_EvT_S5_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6VectorEEES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6VectorEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6VectorEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !99 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6VectorEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !8
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6VectorEEEEvPT_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(205) %i.d) #14, !inline_history !222
  br label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6VectorEEEEvPT_.exit.i.i

_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6VectorEEEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6VectorEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !141

_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6VectorEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6VectorEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !98
  br label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6VectorEEES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6VectorEEES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6VectorEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.m = phi ptr [ %.pr, %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6VectorEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6VectorEEES4_EvT_S6_RSaIT0_E.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !120
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #15
  br label %_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6VectorEEES4_EvT_S6_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @_ZN5Ipopt22CompoundSymMatrixSpaceC1Eii(ptr noundef nonnull align 8 dereferenceable(97), i32 noundef, i32 noundef) unnamed_addr #7

declare void @_ZN5Ipopt22CompoundSymMatrixSpace11SetBlockDimEii(ptr noundef nonnull align 8 dereferenceable(97), i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN5Ipopt17SumSymMatrixSpace12SetTermSpaceEiRKNS_14SymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #7

declare void @_ZN5Ipopt22CompoundSymMatrixSpace12SetCompSpaceEiiRKNS_11MatrixSpaceEb(ptr noundef nonnull align 8 dereferenceable(97), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) local_unnamed_addr #7

declare void @_ZN5Ipopt19CompoundVectorSpaceC1Eii(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) unnamed_addr #7

declare noundef ptr @_ZNK5Ipopt22CompoundSymMatrixSpace24MakeNewCompoundSymMatrixEv(ptr noundef nonnull align 8 dereferenceable(97)) local_unnamed_addr #7

declare noundef ptr @_ZNK5Ipopt17SumSymMatrixSpace19MakeNewSumSymMatrixEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #7

declare void @_ZN5Ipopt12SumSymMatrix7SetTermEidRKNS_9SymMatrixE(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #7

declare void @_ZN5Ipopt17CompoundSymMatrix7SetCompEiiRKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(137), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(69)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK5Ipopt18StdAugSystemSolver16NumberOfNegEValsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(233) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  ret i32 %i.f
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5Ipopt18StdAugSystemSolver15ProvidesInertiaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(233) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt18StdAugSystemSolver15IncreaseQualityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(233) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(49) %i.b)
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5Ipopt15AugSystemSolver5SolveEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dPKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_RS4_SB_SB_SB_bi(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, double noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5, double noundef %6, ptr noundef %7, ptr noundef %8, double noundef %9, ptr noundef %10, ptr noundef %11, double noundef %12, ptr noundef nonnull align 8 dereferenceable(205) %13, ptr noundef nonnull align 8 dereferenceable(205) %14, ptr noundef nonnull align 8 dereferenceable(205) %15, ptr noundef nonnull align 8 dereferenceable(205) %16, ptr noundef nonnull align 8 dereferenceable(205) %17, ptr noundef nonnull align 8 dereferenceable(205) %18, ptr noundef nonnull align 8 dereferenceable(205) %19, ptr noundef nonnull align 8 dereferenceable(205) %20, i1 noundef zeroext %21, i32 noundef %22) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %23 = alloca %"class.std::vector.30", align 8   ; 10 uses
  %24 = alloca %"class.std::vector.30", align 8   ; 10 uses
  %25 = alloca %"class.std::vector.30", align 8   ; 10 uses
  %26 = alloca %"class.std::vector.30", align 8   ; 10 uses
  %27 = alloca %"class.std::vector.49", align 8   ; 10 uses
  %28 = alloca %"class.std::vector.49", align 8   ; 10 uses
  %29 = alloca %"class.std::vector.49", align 8   ; 10 uses
  %30 = alloca %"class.std::vector.49", align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #17 ; 3 uses
  store ptr %i.a, ptr %23, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !120
end_hunk_1
