Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mesh?download=true
inline.NumInlined: 2154
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Mesh36compare_mpot_cpu_local_to_cpu_globalEjPiS0_S0_S0_i:bb.a

.noexc:                                           ; preds = %bb.a
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = shl nuw nsw i64 %i.a, 2
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #33 ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !17
  %i.d = add nsw i64 %i.a, -1                     ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %i.f = getelementptr i8, ptr %i.c, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.d, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !17
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 620
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e
  %.idx = shl nuw nsw i64 %i.a, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %.idx) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %._crit_edge
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17   ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17   ; 2 uses
  %.not = icmp eq i32 %i.i, %i.k
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.g, align 4, !tbaa !85
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = trunc nuw i64 %indvars.iv to i32
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef 0, i32 noundef %6, i32 noundef %i.n, i32 noundef %i.i, i32 noundef %i.k) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !144
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4MeshC2Eiiiiddiii(ptr noundef nonnull align 8 dereferenceable(2288) initializes((16, 20), (24, 32)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, double noundef %6, i32 noundef %7, i32 noundef %8, i32 %9) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.preheader217:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = alloca [4 x i32], align 16               ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.e, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.f, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.g, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.h, ptr %i.j, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.h, ptr %i.k, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.l, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.m, ptr %i.o, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.m, ptr %i.p, align 8, !tbaa !64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.q, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.r, ptr %i.t, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.r, ptr %i.u, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2024
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %i.v, i8 0, i64 424, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.w, i8 0, i64 96, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.aa, i8 0, i64 264, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.am, i8 0, i64 144, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(720) %i.as, i8 0, i64 720, i1 false)
  store i32 %4, ptr %0, align 8, !tbaa !68
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 5 uses
  store i32 %3, ptr %i.bz, align 8, !tbaa !89
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 664
  store double 0.000000e+00, ptr %i.ca, align 8, !tbaa !90
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i32 1, ptr %i.cb, align 8, !tbaa !91
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 620
  store i32 0, ptr %i.cc, align 4, !tbaa !85
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i32 1, ptr %i.cd, align 8, !tbaa !92
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i64 0, ptr %i.ce, align 8, !tbaa !57
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i64 0, ptr %i.cf, align 8, !tbaa !84
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i32 %8, ptr %i.cg, align 4, !tbaa !93
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i32 0, ptr %i.ch, align 4, !tbaa !86
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 0, ptr %i.cj, align 8, !tbaa !150
  store float 1.000000e+00, ptr %i.ci, align 8, !tbaa !151
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  store double %5, ptr %i.ck, align 8, !tbaa !152
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  store double %6, ptr %i.cl, align 8, !tbaa !153
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1124
  store i32 %7, ptr %i.cm, align 4, !tbaa !79
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1132 ; 3 uses
  store i32 0, ptr %i.cn, align 4, !tbaa !154
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 3 uses
  store i32 0, ptr %i.co, align 4, !tbaa !155
  %i.cp = add nsw i32 %1, 1                       ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 4 uses
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !94
  %i.cr = add nsw i32 %2, 1                       ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 4 uses
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !95
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.preheader217
  %10 = add nsw i32 %1, 2
  %11 = add nsw i32 %2, 2
  store i32 0, ptr %i.cn, align 4, !tbaa !154
  store i32 0, ptr %i.co, align 4, !tbaa !155
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !94
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !95
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader217
  %.067 = phi i32 [ %10, %bb.a ], [ %1, %.preheader217 ]
  %.066 = phi i32 [ %11, %bb.a ], [ %2, %.preheader217 ]
  %12 = fmul double %5, -5.000000e-01
  %13 = sitofp i32 %.067 to double                ; 2 uses
  %14 = fmul double %12, %13
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store double %14, ptr %15, align 8, !tbaa !53
  %16 = fmul double %6, -5.000000e-01
  %17 = sitofp i32 %.066 to double                ; 2 uses
  %18 = fmul double %16, %17
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store double %18, ptr %19, align 8, !tbaa !54
  %20 = fmul double %5, 5.000000e-01
  %21 = fmul double %20, %13
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store double %21, ptr %i.ct, align 8, !tbaa !55
  %22 = fmul double %6, 5.000000e-01
  %23 = fmul double %22, %17
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store double %23, ptr %24, align 8, !tbaa !56
  %i.cu = add nsw i32 %3, 1                       ; 2 uses
  %i.cv = sext i32 %i.cu to i64                   ; 29 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !69 ; 2 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ashr exact i64 %i.cy, 2                 ; 3 uses
  %i.da = icmp ult i64 %i.cz, %i.cv
  br i1 %i.da, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.db = sub nuw nsw i64 %i.cv, %i.cz
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %i.db)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit unwind label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.dc = icmp ugt i64 %i.cz, %i.cv
  br i1 %i.dc, label %bb.e, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr null, i64 %i.cv ; 2 uses
  %.not.i.i = icmp eq ptr %i.cx, %i.dd
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.dd, ptr %i.cw, align 8, !tbaa !69
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.e, %bb.d, %bb.c
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !69 ; 2 uses
  %i.dg = load ptr, ptr %i.ab, align 8, !tbaa !70 ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 2                 ; 3 uses
  %i.dl = icmp ult i64 %i.dk, %i.cv
  br i1 %i.dl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.dm = sub nuw nsw i64 %i.cv, %i.dk
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.dm)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit77 unwind label %bb.x

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.dn = icmp ugt i64 %i.dk, %i.cv
  br i1 %i.dn, label %bb.h, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit77

bb.h:                                             ; preds = %bb.g
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.cv ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.df, %i.do
  br i1 %.not.i.i74, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit77, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i75

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i75:      ; preds = %bb.h
  store ptr %i.do, ptr %i.de, align 8, !tbaa !69
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit77

_ZNSt6vectorIiSaIiEE6resizeEm.exit77:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i75, %bb.h, %bb.g, %bb.f
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !69 ; 2 uses
  %i.dr = load ptr, ptr %i.ad, align 8, !tbaa !70 ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2                 ; 3 uses
  %i.dw = icmp ult i64 %i.dv, %i.cv
  br i1 %i.dw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit77
  %i.dx = sub nuw nsw i64 %i.cv, %i.dv
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 noundef %i.dx)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit81 unwind label %bb.x

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit77
  %i.dy = icmp ugt i64 %i.dv, %i.cv
  br i1 %i.dy, label %bb.k, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit81

bb.k:                                             ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.cv ; 2 uses
  %.not.i.i78 = icmp eq ptr %i.dq, %i.dz
  br i1 %.not.i.i78, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit81, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79:      ; preds = %bb.k
  store ptr %i.dz, ptr %i.dp, align 8, !tbaa !69
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit81

_ZNSt6vectorIiSaIiEE6resizeEm.exit81:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i79, %bb.k, %bb.j, %bb.i
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !69 ; 2 uses
  %i.ec = load ptr, ptr %i.ac, align 8, !tbaa !70 ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, %i.cv
  br i1 %i.eh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit81
  %i.ei = sub nuw nsw i64 %i.cv, %i.eg
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.ei)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit85 unwind label %bb.x

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit81
  %i.ej = icmp ugt i64 %i.eg, %i.cv
  br i1 %i.ej, label %bb.n, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit85

bb.n:                                             ; preds = %bb.m
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.cv ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.eb, %i.ek
  br i1 %.not.i.i82, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit85, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i83

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i83:      ; preds = %bb.n
  store ptr %i.ek, ptr %i.ea, align 8, !tbaa !69
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit85

_ZNSt6vectorIiSaIiEE6resizeEm.exit85:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i83, %bb.n, %bb.m, %bb.l
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !69 ; 2 uses
  %i.en = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 2                 ; 3 uses
  %i.es = icmp ult i64 %i.er, %i.cv
  br i1 %i.es, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit85
  %i.et = sub nuw nsw i64 %i.cv, %i.er
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.et)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit89 unwind label %bb.x

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit85
  %i.eu = icmp ugt i64 %i.er, %i.cv
  br i1 %i.eu, label %bb.q, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit89

bb.q:                                             ; preds = %bb.p
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.cv ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.em, %i.ev
  br i1 %.not.i.i86, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit89, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i87

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i87:      ; preds = %bb.q
  store ptr %i.ev, ptr %i.el, align 8, !tbaa !69
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit89

_ZNSt6vectorIiSaIiEE6resizeEm.exit89:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i87, %bb.q, %bb.p, %bb.o
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !76 ; 2 uses
  %i.ey = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 3                 ; 3 uses
  %i.fd = icmp ult i64 %i.fc, %i.cv
  br i1 %i.fd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit89
  %i.fe = sub nuw nsw i64 %i.cv, %i.fc
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.fe)
          to label %_ZNSt6vectorIdSaIdEE6resizeEm.exit unwind label %bb.x

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit89
  %i.ff = icmp ugt i64 %i.fc, %i.cv
  br i1 %i.ff, label %bb.t, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.cv ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.ex, %i.fg
  br i1 %.not.i.i90, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.t
  store ptr %i.fg, ptr %i.ew, align 8, !tbaa !76
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %bb.t, %bb.s, %bb.r
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !76 ; 2 uses
  %i.fj = load ptr, ptr %i.aj, align 8, !tbaa !58 ; 5 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = ashr exact i64 %i.fm, 3                 ; 3 uses
  %i.fo = icmp ult i64 %i.fn, %i.cv
  br i1 %i.fo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.fp = sub nuw nsw i64 %i.cv, %i.fn
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef %i.fp)
          to label %._ZNSt6vectorIdSaIdEE6resizeEm.exit95_crit_edge unwind label %bb.x

._ZNSt6vectorIdSaIdEE6resizeEm.exit95_crit_edge:  ; preds = %bb.u
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !58
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit95

bb.v:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.fq = icmp ugt i64 %i.fn, %i.cv
  br i1 %i.fq, label %bb.w, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit95

bb.w:                                             ; preds = %bb.v
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.cv ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.fi, %i.fr
  br i1 %.not.i.i92, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit95, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i93
end_hunk_0
