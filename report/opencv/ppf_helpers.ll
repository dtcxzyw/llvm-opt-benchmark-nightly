inline.NumInlined: 5008
inline.NumDeleted: 1814
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN7cvflann11KMeansIndexINS_2L2IfEEE17computeClusteringEPNS3_10KMeansNodeEPiiii:bb.a
  %8 = alloca %"class.cv::AutoBuffer", align 8    ; 17 uses
  %9 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %3, ptr %i.b, align 4, !tbaa !768
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %5, ptr %i.c, align 8, !tbaa !769
  %i.d = icmp slt i32 %3, %4
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %2, ptr %i.e, align 8, !tbaa !770
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %_ZSt4sortIPiEvT_S1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %3 to i64                       ; 2 uses
  %.idx146 = shl nsw i64 %i.f, 2
  %i.g = getelementptr inbounds i8, ptr %2, i64 %.idx146 ; 2 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %2, ptr noundef nonnull %i.g, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %2, ptr noundef nonnull %i.g)
  br label %_ZSt4sortIPiEvT_S1_.exit

_ZSt4sortIPiEvT_S1_.exit:                         ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !766
  br label %bb.ag

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.l = sext i32 %4 to i64                       ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !771
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not.i.i98 = icmp ugt i32 %4, 264              ; 2 uses
  store i64 %i.l, ptr %i.n, align 8, !tbaa !773
  br i1 %.not.i.i98, label %bb.e, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.e:                                             ; preds = %bb.d
  %i.o = icmp slt i32 %4, 0
  %i.p = shl nuw nsw i64 %i.l, 2
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #37 ; 2 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !771
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %bb.d, %bb.e
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.r, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.unpack = load i64, ptr %i.t, align 8, !tbaa !458 ; 3 uses
  %.elt90 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.unpack91 = load i64, ptr %.elt90, align 8, !tbaa !458
  %i.u = getelementptr inbounds i8, ptr %0, i64 %.unpack91 ; 2 uses
  %i.v = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.x = getelementptr i8, ptr %i.w, i64 %.unpack
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load ptr, ptr %i.y, align 8, !nosanitize !343
  br label %bb.h

bb.g:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.aa = inttoptr i64 %.unpack to ptr
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = phi ptr [ %i.z, %bb.f ], [ %i.aa, %bb.g ]
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(212) %i.u, i32 noundef %4, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !111
  %i.ad = icmp slt i32 %i.ac, %4
  br i1 %i.ad, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %2, ptr %i.ae, align 8, !tbaa !770
  %i.af = sext i32 %3 to i64                      ; 2 uses
  %.idx = shl nsw i64 %i.af, 2
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %.idx ; 2 uses
  %.not.i.i99 = icmp eq i32 %3, 0
  br i1 %.not.i.i99, label %_ZSt4sortIPiEvT_S1_.exit101, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = xor i64 %i.ai, 126
  invoke void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %2, ptr noundef nonnull %i.ag, i64 noundef %i.aj)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  invoke void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %2, ptr noundef nonnull %i.ag)
          to label %_ZSt4sortIPiEvT_S1_.exit101 unwind label %bb.l

_ZSt4sortIPiEvT_S1_.exit101:                      ; preds = %bb.j, %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !766
  br label %bb.ae

bb.l:                                             ; preds = %.noexc, %bb.k, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.am = icmp slt i32 %4, 0
  br i1 %i.am, label %bb.n, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #35
          to label %.noexc102 unwind label %bb.s

.noexc102:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.an, align 8
  %.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %.not.i.i.i.i, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192, label %bb.o

_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ao, ptr %8, align 8, !tbaa !771
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.ap, align 8, !tbaa !773
  br label %._crit_edge

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.aq = shl nuw nsw i64 %i.l, 2                 ; 2 uses
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #37
          to label %.noexc103 unwind label %bb.s  ; 6 uses

.noexc103:                                        ; preds = %bb.o
  store ptr %i.ar, ptr %7, align 8, !tbaa !544
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.l
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !546
  store float 0.000000e+00, ptr %i.ar, align 4, !tbaa !86
  %i.au = getelementptr i8, ptr %i.ar, i64 4      ; 3 uses
  %i.av = add nsw i64 %i.l, -1                    ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106, label %bb.p

bb.p:                                             ; preds = %.noexc103
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.av, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.au, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !86
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !547
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.az, ptr %8, align 8, !tbaa !771
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.ba, align 8, !tbaa !773
  br i1 %.not.i.i98, label %bb.q, label %.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.bb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #37
          to label %.noexc105 unwind label %bb.t  ; 2 uses

.noexc105:                                        ; preds = %bb.q
  store ptr %i.bb, ptr %8, align 8, !tbaa !771
  br label %.lr.ph

_ZN2cv10AutoBufferIiLm264EEC2Em.exit106:          ; preds = %.noexc103
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.au, ptr %i.bc, align 8, !tbaa !547
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.bd, ptr %8, align 8, !tbaa !771
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.be, align 8, !tbaa !773
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.noexc105, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106
  %i.bf = phi ptr [ %i.bd, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106 ], [ %i.az, %.noexc105 ], [ %i.az, %bb.p ]
  %i.bg = phi ptr [ %i.bd, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106 ], [ %i.bb, %.noexc105 ], [ %i.az, %bb.p ] ; 2 uses
  %i.bh = zext nneg i32 %4 to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2                ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ar, i8 0, i64 %i.bi, i1 false), !tbaa !86
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bi, i1 false), !tbaa !111
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192, %.lr.ph
  %i.bj = phi ptr [ %i.bf, %.lr.ph ], [ %i.ao, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192 ] ; 2 uses
  %i.bk = phi ptr [ %i.bg, %.lr.ph ], [ %i.ao, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192 ] ; 3 uses
  %i.bl = phi ptr [ %i.ar, %.lr.ph ], [ null, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit106.thread192 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %10 = sext i32 %3 to i64                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.bm, ptr %9, align 8, !tbaa !771
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i.i107 = icmp ugt i32 %3, 264
  store i64 %10, ptr %i.bn, align 8, !tbaa !773
  br i1 %.not.i.i107, label %bb.r, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109

bb.r:                                             ; preds = %._crit_edge
  %i.bo = shl nuw nsw i64 %10, 2
  %i.bp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bo) #37
          to label %.noexc108 unwind label %bb.u  ; 2 uses

.noexc108:                                        ; preds = %bb.r
  store ptr %i.bp, ptr %9, align 8, !tbaa !771
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109

bb.s:                                             ; preds = %bb.o, %bb.n
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit141

bb.t:                                             ; preds = %bb.q
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139

_ZN2cv10AutoBufferIiLm264EEC2Em.exit109:          ; preds = %.noexc108, %._crit_edge
  %i.bs = phi ptr [ %i.bp, %.noexc108 ], [ %i.bm, %._crit_edge ] ; 4 uses
  %i.bt = icmp sgt i32 %3, 0
  br i1 %i.bt, label %.lr.ph160, label %._crit_edge161

.lr.ph160:                                        ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !149 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !150 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !753 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.bz, 2
  %i.ca = icmp ugt i64 %i.bz, 3                   ; 2 uses
  %i.cb = icmp samesign ugt i32 %4, 1
  %wide.trip.count176 = zext nneg i32 %3 to i64
  %.pre = load i32, ptr %i.s, align 4, !tbaa !111
  %i.cc = sext i32 %.pre to i64
  %i.cd = mul i64 %i.bx, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cd ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.v

._crit_edge161:                                   ; preds = %bb.z, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit109
  %i.cf = shl nuw nsw i64 %i.l, 3
  %i.cg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cf) #37
          to label %bb.aa unwind label %bb.ah     ; 3 uses

bb.u:                                             ; preds = %bb.r
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit136

bb.v:                                             ; preds = %.lr.ph160, %bb.z
  %indvars.iv173 = phi i64 [ 0, %.lr.ph160 ], [ %indvars.iv.next174, %bb.z ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv173
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !111
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul i64 %i.bx, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cl ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i ; 5 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -12 ; 2 uses
  br i1 %i.ca, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.i
  %.036.us51.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %i.cm, %bb.v ] ; 5 uses
  %.037.us50.i = phi ptr [ %i.dn, %.lr.ph.i ], [ %i.ce, %bb.v ] ; 5 uses
  %.039.us49.i = phi float [ %i.dl, %.lr.ph.i ], [ 0.000000e+00, %bb.v ]
  %i.cp = load float, ptr %.036.us51.i, align 4, !tbaa !86
  %i.cq = load float, ptr %.037.us50.i, align 4, !tbaa !86
  %i.cr = fsub float %i.cp, %i.cq                 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.036.us51.i, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !86
  %i.cu = getelementptr inbounds nuw i8, ptr %.037.us50.i, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !86
  %i.cw = fsub float %i.ct, %i.cv                 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.036.us51.i, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !86
  %i.cz = getelementptr inbounds nuw i8, ptr %.037.us50.i, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !86
  %i.db = fsub float %i.cy, %i.da                 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.036.us51.i, i64 12
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !86
  %i.de = getelementptr inbounds nuw i8, ptr %.037.us50.i, i64 12
  %i.df = load float, ptr %i.de, align 4, !tbaa !86
  %i.dg = fsub float %i.dd, %i.df                 ; 2 uses
  %i.dh = fmul float %i.cw, %i.cw
  %i.di = call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.dh)
  %i.dj = call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.di)
  %i.dk = call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.dj)
  %i.dl = fadd float %.039.us49.i, %i.dk          ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.036.us51.i, i64 16 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.037.us50.i, i64 16 ; 2 uses
  %i.do = icmp ult ptr %i.dm, %i.co
  br i1 %i.do, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.v
  %.us-phi.i = phi float [ 0.000000e+00, %bb.v ], [ %i.dl, %.lr.ph.i ] ; 2 uses
  %.us-phi47.i = phi ptr [ %i.ce, %bb.v ], [ %i.dn, %.lr.ph.i ]
  %.us-phi48.i = phi ptr [ %i.cm, %bb.v ], [ %i.dm, %.lr.ph.i ] ; 2 uses
  %i.dp = icmp ult ptr %.us-phi48.i, %i.cn
  br i1 %i.dp, label %.lr.ph57.i, label %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit

.lr.ph57.i:                                       ; preds = %.preheader.i, %.lr.ph57.i
  %.156.i = phi ptr [ %i.dq, %.lr.ph57.i ], [ %.us-phi48.i, %.preheader.i ] ; 2 uses
  %.13855.i = phi ptr [ %i.ds, %.lr.ph57.i ], [ %.us-phi47.i, %.preheader.i ] ; 2 uses
  %.14054.i = phi float [ %i.dv, %.lr.ph57.i ], [ %.us-phi.i, %.preheader.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.156.i, i64 4 ; 2 uses
  %i.dr = load float, ptr %.156.i, align 4, !tbaa !86
  %i.ds = getelementptr inbounds nuw i8, ptr %.13855.i, i64 4
  %i.dt = load float, ptr %.13855.i, align 4, !tbaa !86
  %i.du = fsub float %i.dr, %i.dt                 ; 2 uses
  %i.dv = call float @llvm.fmuladd.f32(float %i.du, float %i.du, float %.14054.i) ; 2 uses
  %i.dw = icmp ult ptr %i.dq, %i.cn
  br i1 %i.dw, label %.lr.ph57.i, label %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit, !llvm.loop !733

_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit:        ; preds = %.lr.ph57.i, %.preheader.i
  %.0.i = phi float [ %.us-phi.i, %.preheader.i ], [ %i.dv, %.lr.ph57.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv173 ; 2 uses
  store i32 0, ptr %i.dx, align 4, !tbaa !111
  br i1 %i.cb, label %.lr.ph157, label %._crit_edge158

._crit_edge158.loopexit:                          ; preds = %bb.x
  %i.dy = sext i32 %i.ft to i64
  br label %._crit_edge158

._crit_edge158:                                   ; preds = %._crit_edge158.loopexit, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit
  %i.dz = phi i64 [ 0, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit ], [ %i.dy, %._crit_edge158.loopexit ] ; 2 uses
  %.082.lcssa = phi float [ %.0.i, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit ], [ %.183, %._crit_edge158.loopexit ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.dz ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !86
  %i.ec = fcmp ogt float %.082.lcssa, %i.eb
  br i1 %i.ec, label %bb.y, label %bb.z

.lr.ph157:                                        ; preds = %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit, %bb.x
  %i.ed = phi i32 [ %i.ft, %bb.x ], [ 0, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 1, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit ] ; 3 uses
  %.082155 = phi float [ %.183, %bb.x ], [ %.0.i, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !111
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul i64 %i.bx, %i.eg
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.eh ; 2 uses
  br i1 %i.ca, label %.lr.ph.i120, label %.preheader.i111

.lr.ph.i120:                                      ; preds = %.lr.ph157, %.lr.ph.i120
  %.036.us51.i121 = phi ptr [ %i.fg, %.lr.ph.i120 ], [ %i.cm, %.lr.ph157 ] ; 5 uses
  %.037.us50.i122 = phi ptr [ %i.fh, %.lr.ph.i120 ], [ %i.ei, %.lr.ph157 ] ; 5 uses
  %.039.us49.i123 = phi float [ %i.ff, %.lr.ph.i120 ], [ 0.000000e+00, %.lr.ph157 ]
  %i.ej = load float, ptr %.036.us51.i121, align 4, !tbaa !86
  %i.ek = load float, ptr %.037.us50.i122, align 4, !tbaa !86
  %i.el = fsub float %i.ej, %i.ek                 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.036.us51.i121, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !86
  %i.eo = getelementptr inbounds nuw i8, ptr %.037.us50.i122, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !86
  %i.eq = fsub float %i.en, %i.ep                 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.036.us51.i121, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !86
  %i.et = getelementptr inbounds nuw i8, ptr %.037.us50.i122, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !86
  %i.ev = fsub float %i.es, %i.eu                 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.036.us51.i121, i64 12
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !86
  %i.ey = getelementptr inbounds nuw i8, ptr %.037.us50.i122, i64 12
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !86
  %i.fa = fsub float %i.ex, %i.ez                 ; 2 uses
  %i.fb = fmul float %i.eq, %i.eq
  %i.fc = call float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.fb)
  %i.fd = call float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.fc)
  %i.fe = call float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.fd)
  %i.ff = fadd float %.039.us49.i123, %i.fe       ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.036.us51.i121, i64 16 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.037.us50.i122, i64 16 ; 2 uses
  %i.fi = icmp ult ptr %i.fg, %i.co
  br i1 %i.fi, label %.lr.ph.i120, label %.preheader.i111

.preheader.i111:                                  ; preds = %.lr.ph.i120, %.lr.ph157
  %.us-phi.i112 = phi float [ 0.000000e+00, %.lr.ph157 ], [ %i.ff, %.lr.ph.i120 ] ; 2 uses
  %.us-phi47.i113 = phi ptr [ %i.ei, %.lr.ph157 ], [ %i.fh, %.lr.ph.i120 ]
  %.us-phi48.i114 = phi ptr [ %i.cm, %.lr.ph157 ], [ %i.fg, %.lr.ph.i120 ] ; 2 uses
  %i.fj = icmp ult ptr %.us-phi48.i114, %i.cn
  br i1 %i.fj, label %.lr.ph57.i116, label %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit124

.lr.ph57.i116:                                    ; preds = %.preheader.i111, %.lr.ph57.i116
  %.156.i117 = phi ptr [ %i.fk, %.lr.ph57.i116 ], [ %.us-phi48.i114, %.preheader.i111 ] ; 2 uses
  %.13855.i118 = phi ptr [ %i.fm, %.lr.ph57.i116 ], [ %.us-phi47.i113, %.preheader.i111 ] ; 2 uses
  %.14054.i119 = phi float [ %i.fp, %.lr.ph57.i116 ], [ %.us-phi.i112, %.preheader.i111 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.156.i117, i64 4 ; 2 uses
  %i.fl = load float, ptr %.156.i117, align 4, !tbaa !86
  %i.fm = getelementptr inbounds nuw i8, ptr %.13855.i118, i64 4
  %i.fn = load float, ptr %.13855.i118, align 4, !tbaa !86
  %i.fo = fsub float %i.fl, %i.fn                 ; 2 uses
  %i.fp = call float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %.14054.i119) ; 2 uses
  %i.fq = icmp ult ptr %i.fk, %i.cn
  br i1 %i.fq, label %.lr.ph57.i116, label %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit124, !llvm.loop !733

_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit124:     ; preds = %.lr.ph57.i116, %.preheader.i111
  %.0.i115 = phi float [ %.us-phi.i112, %.preheader.i111 ], [ %i.fp, %.lr.ph57.i116 ] ; 2 uses
  %i.fr = fcmp ogt float %.082155, %.0.i115
  br i1 %i.fr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit124
  %i.fs = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.fs, ptr %i.dx, align 4, !tbaa !111
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit124
  %i.ft = phi i32 [ %i.fs, %bb.w ], [ %i.ed, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit124 ] ; 2 uses
  %.183 = phi float [ %.0.i115, %bb.w ], [ %.082155, %_ZNK7cvflann2L2IfEclIPfS3_EEfT_T0_mf.exit124 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge158.loopexit, label %.lr.ph157, !llvm.loop !774

bb.y:                                             ; preds = %._crit_edge158
  store float %.082.lcssa, ptr %i.ea, align 4, !tbaa !86
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge158
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.dz ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !111
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !111
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %._crit_edge161, label %bb.v, !llvm.loop !775

bb.aa:                                            ; preds = %._crit_edge161
  invoke void @_ZN7cvflann11KMeansIndexINS_2L2IfEEE16refineClusteringEPiiiPPfRSt6vectorIfSaIfEES4_S4_(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bk)
          to label %.noexc125 unwind label %bb.ai, !inline_history !776

.noexc125:                                        ; preds = %bb.aa
  invoke void @_ZN7cvflann11KMeansIndexINS_2L2IfEEE20computeSubClusteringEPNS3_10KMeansNodeEPiiiiPPfRSt6vectorIfSaIfEES6_S6_(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bk)
          to label %_ZN7cvflann11KMeansIndexINS_2L2IfEEE24refineAndSplitClusteringIS2_EEvPNS3_10KMeansNodeEPiiiiPPfRSt6vectorIfSaIfEES7_S7_PKT_.exit unwind label %bb.ai, !inline_history !776

_ZN7cvflann11KMeansIndexINS_2L2IfEEE24refineAndSplitClusteringIS2_EEvPNS3_10KMeansNodeEPiiiiPPfRSt6vectorIfSaIfEES7_S7_PKT_.exit: ; preds = %.noexc125
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #36
  %i.fx = load ptr, ptr %9, align 8, !tbaa !771   ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.fx, %i.bm
  %i.fy = icmp eq ptr %i.fx, null
  %or.cond.i = or i1 %.not.i.i127, %i.fy
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN7cvflann11KMeansIndexINS_2L2IfEEE24refineAndSplitClusteringIS2_EEvPNS3_10KMeansNodeEPiiiiPPfRSt6vectorIfSaIfEES7_S7_PKT_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.fx) #36
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %_ZN7cvflann11KMeansIndexINS_2L2IfEEE24refineAndSplitClusteringIS2_EEvPNS3_10KMeansNodeEPiiiiPPfRSt6vectorIfSaIfEES7_S7_PKT_.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.fz = load ptr, ptr %8, align 8, !tbaa !771   ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.fz, %i.bj
  %i.ga = icmp eq ptr %i.fz, null
  %or.cond.i129 = or i1 %.not.i.i128, %i.ga
  br i1 %or.cond.i129, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit130, label %bb.ac

bb.ac:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.fz) #36
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit130

_ZN2cv10AutoBufferIiLm264EED2Ev.exit130:          ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.gb = load ptr, ptr %7, align 8, !tbaa !544   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit130
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !546
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gb to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gg) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit130, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZSt4sortIPiEvT_S1_.exit101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.gh = load ptr, ptr %6, align 8, !tbaa !771   ; 3 uses
  %.not.i.i131 = icmp eq ptr %i.gh, %i.m
  %i.gi = icmp eq ptr %i.gh, null
  %or.cond.i132 = or i1 %.not.i.i131, %i.gi
  br i1 %or.cond.i132, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit133, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.gh) #36
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit133

_ZN2cv10AutoBufferIiLm264EED2Ev.exit133:          ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit133, %_ZSt4sortIPiEvT_S1_.exit
  ret void

bb.ah:                                            ; preds = %._crit_edge161
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %.noexc125, %bb.aa
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %.pre178 = load ptr, ptr %9, align 8, !tbaa !771
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gl = phi ptr [ %.pre178, %bb.ai ], [ %i.bs, %bb.ah ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.gk, %bb.ai ], [ %i.gj, %bb.ah ] ; 2 uses
  %.not.i.i134 = icmp eq ptr %i.gl, %i.bm
  %i.gm = icmp eq ptr %i.gl, null
  %or.cond.i135 = or i1 %.not.i.i134, %i.gm
  br i1 %or.cond.i135, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit136, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.gl) #36
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit136

_ZN2cv10AutoBufferIiLm264EED2Ev.exit136:          ; preds = %bb.ak, %bb.aj, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.u ], [ %.pn, %bb.aj ], [ %.pn, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.gn = load ptr, ptr %8, align 8, !tbaa !771   ; 3 uses
  %.not.i.i137 = icmp eq ptr %i.gn, %i.bj
  %i.go = icmp eq ptr %i.gn, null
  %or.cond.i138 = or i1 %.not.i.i137, %i.go
  br i1 %or.cond.i138, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139, label %bb.al

bb.al:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit136
  call void @_ZdaPv(ptr noundef nonnull %i.gn) #36
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139

_ZN2cv10AutoBufferIiLm264EED2Ev.exit139:          ; preds = %bb.al, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit136, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.br, %bb.t ], [ %.pn.pn, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit136 ], [ %.pn.pn, %bb.al ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.gp = load ptr, ptr %7, align 8, !tbaa !544   ; 3 uses
  %.not.i.i.i140 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorIfSaIfEED2Ev.exit141, label %bb.am

bb.am:                                            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !546
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gu) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit141

_ZNSt6vectorIfSaIfEED2Ev.exit141:                 ; preds = %bb.am, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.s ], [ %.pn.pn.pn, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit139 ], [ %.pn.pn.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit141, %bb.l
  %.pn96 = phi { ptr, i32 } [ %i.al, %bb.l ], [ %.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.gv = load ptr, ptr %6, align 8, !tbaa !771   ; 3 uses
  %.not.i.i142 = icmp eq ptr %i.gv, %i.m
  %i.gw = icmp eq ptr %i.gv, null
  %or.cond.i143 = or i1 %.not.i.i142, %i.gw
  br i1 %or.cond.i143, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit144, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZdaPv(ptr noundef nonnull %i.gv) #36
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit144

_ZN2cv10AutoBufferIiLm264EED2Ev.exit144:          ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  resume { ptr, i32 } %.pn96
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7cvflann11KMeansIndexINS_2L2IfEEE21computeNodeStatisticsEPNS3_10KMeansNodeEPij(ptr noundef nonnull align 8 dereferenceable(212) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8, !tbaa !753  ; 17 uses
  %i.c = icmp ugt i64 %i.b, 4611686018427387903
  %i.d = shl i64 %i.b, 2                          ; 9 uses
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #37 ; 19 uses
  %.tr = trunc i64 %i.b to i32
  %i.g = shl i32 %.tr, 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !448
  %i.j = add nsw i32 %i.i, %i.g
  store i32 %i.j, ptr %i.h, align 8, !tbaa !448
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.d, i1 false)
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  br i1 %.not, label %.preheader, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !149  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !150  ; 2 uses
  %.not104 = icmp eq i64 %i.b, 0
  %i.o = icmp ugt i64 %i.b, 3
  %wide.trip.count = zext i32 %3 to i64
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.d
  %scevgep166 = getelementptr i8, ptr %i.l, i64 %i.d
  %i.p = shl i64 %i.n, 2
  %min.iters.check = icmp ult i64 %i.b, 8
  %n.vec = and i64 %i.b, -8                       ; 3 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.b

.preheader:                                       ; preds = %_ZNK7cvflann2L2IfEclIPfNS_12ZeroIteratorIfEEEEfT_T0_mf.exit, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.bq, %_ZNK7cvflann2L2IfEclIPfNS_12ZeroIteratorIfEEEEfT_T0_mf.exit ]
  %.not105 = icmp eq i64 %i.b, 0
  br i1 %.not105, label %._crit_edge83.thread, label %.lr.ph82

._crit_edge83.thread:                             ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -12
  br label %.preheader.i51

.lr.ph82:                                         ; preds = %.preheader
  %i.s = uitofp i32 %3 to double                  ; 2 uses
  %min.iters.check172 = icmp ult i64 %i.b, 4
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph82
end_hunk_0
