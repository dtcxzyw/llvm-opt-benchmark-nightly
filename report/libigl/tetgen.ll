Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6988
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 118
loop-unroll.NumUnrolled: 560
begin_hunk_0_@_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE:bb.a
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.an
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !33
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !33
  %i.ck = ashr i32 %i.cj, 1
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %i.cl ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !306
  %.not22 = icmp eq ptr %i.co, null
  br i1 %.not22, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !306
  %i.cq = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 7
  %i.ct = and i64 %i.cq, -8
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  %i.cv = and i64 %i.cq, 7
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !33
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !306
  %.not23 = icmp ne ptr %i.da, %i.j
  %i.db = zext i1 %.not23 to i32
  %spec.select50 = xor i32 %i.cs, %i.db
  br label %bb.d, !llvm.loop !1249

bb.h:                                             ; preds = %_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit
  %i.dc = fcmp olt double %i.ce, %.0
  %.1 = select i1 %i.dc, double %i.ce, double %.0 ; 2 uses
  %i.dd = lshr i32 %.sroa.1040.0, 1
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.sroa.035.0, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !306
  %i.dh = ptrtoint ptr %i.dg to i64               ; 3 uses
  %i.di = and i64 %i.dh, -8                       ; 3 uses
  %i.dj = icmp eq i64 %i.di, %i.p
  %i.dk = icmp eq i64 %i.di, 0
  %or.cond = or i1 %i.dj, %i.dk
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dl = inttoptr i64 %i.di to ptr               ; 2 uses
  %i.dm = trunc i64 %i.dh to i32
  %i.dn = and i32 %i.dm, 7
  %i.do = and i64 %i.dh, 7
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !33
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !306
  %.not24 = icmp ne ptr %i.dt, %i.j
  %i.du = zext i1 %.not24 to i32
  %spec.select51 = xor i32 %i.dn, %i.du
  br label %bb.c, !llvm.loop !1250

bb.j:                                             ; preds = %bb.h
  %i.dv = fdiv double %.1, %i.a
  %i.dw = fmul double %i.dv, 1.800000e+02
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.019 = phi double [ %i.dw, %bb.j ], [ 3.600000e+02, %bb.a ]
  ret double %.019
}

; Function Attrs: mustprogress uwtable
define void @_ZN10tetgenmesh24create_segment_info_listEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(69984) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.tetgenmesh::face", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !292
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.d = load i32, ptr %i.c, align 4, !tbaa !258
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.143) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68560 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1251 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #42
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !352  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !288
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.au, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68544
  %i.n = load i32, ptr %i.m, align 8, !tbaa !936
  %i.o = shl i32 %i.n, 2
  %i.p = add i32 %i.o, 4                          ; 4 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i32 %i.p, 0
  %i.s = shl nsw i64 %i.q, 3
  %i.t = select i1 %i.r, i64 -1, i64 %i.s
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #41 ; 3 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !1251
  %i.v = icmp sgt i32 %i.p, 0
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.w = zext nneg i32 %i.p to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.x, i1 false), !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  store ptr null, ptr %1, align 8, !tbaa !316
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !317
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !281  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !289
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !276
  %i.af = sext i32 %i.ae to i64                   ; 6 uses
  %i.ag = add i64 %i.af, %i.ac
  %i.ah = urem i64 %i.ac, %i.af
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !290
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %i.am = load i32, ptr %i.al, align 4, !tbaa !280 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 84 ; 3 uses
  store i32 %i.am, ptr %i.an, align 4, !tbaa !291
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !283 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 52 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %._crit_edge
  %i.ar = phi ptr [ %i.bd, %bb.j ], [ %i.z, %._crit_edge ] ; 2 uses
  %i.as = phi i32 [ %i.bl, %bb.j ], [ %i.am, %._crit_edge ] ; 2 uses
  %i.at = phi ptr [ %i.bk, %bb.j ], [ %i.aj, %._crit_edge ] ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ap
  br i1 %i.au, label %._crit_edge68, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = icmp eq i32 %i.as, 0
  br i1 %i.av, label %bb.i, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !125 ; 3 uses
  store ptr %i.aw, ptr %i.aa, align 8, !tbaa !289
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.az = add i64 %i.ay, %i.af
  %i.ba = urem i64 %i.ay, %i.af
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = inttoptr i64 %i.bb to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i

_ZN10tetgenmesh10memorypool8traverseEv.exit.i:    ; preds = %bb.i, %bb.h
  %i.bd = phi ptr [ %i.aw, %bb.i ], [ %i.ar, %bb.h ] ; 2 uses
  %i.be = phi i32 [ %i.am, %bb.i ], [ %i.as, %bb.h ]
  %i.bf = phi ptr [ %i.bc, %bb.i ], [ %i.at, %bb.h ] ; 5 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = load i32, ptr %i.aq, align 4, !tbaa !279
  %i.bi = sext i32 %i.bh to i64
  %i.bj = add i64 %i.bi, %i.bg
  %i.bk = inttoptr i64 %i.bj to ptr               ; 3 uses
  store ptr %i.bk, ptr %i.ak, align 8, !tbaa !290
  %i.bl = add nsw i32 %i.be, -1                   ; 3 uses
  store i32 %i.bl, ptr %i.an, align 4, !tbaa !291
  %i.bm = icmp eq ptr %i.bf, null
  br i1 %i.bm, label %._crit_edge68, label %bb.j

bb.j:                                             ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !306
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.g, label %.lr.ph67, !llvm.loop !311

.lr.ph67:                                         ; preds = %bb.j
  store ptr %i.bf, ptr %1, align 8, !tbaa !316
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 68688
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !338
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 68552
  %i.bu = load double, ptr @_ZN10tetgenmesh2PIE, align 8 ; 3 uses
  %i.bv = fmul double %i.bu, 2.000000e+00         ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48, %.lr.ph67
  %i.bw = phi ptr [ %i.bd, %.lr.ph67 ], [ %i.db, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ]
  %i.bx = phi i32 [ %i.bl, %.lr.ph67 ], [ %i.dj, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ]
  %.promoted.i45 = phi ptr [ %i.bk, %.lr.ph67 ], [ %i.di, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ]
  %.03366 = phi double [ 3.600000e+02, %.lr.ph67 ], [ %.2.1, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ] ; 4 uses
  %.03465 = phi double [ 3.600000e+02, %.lr.ph67 ], [ %.135, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ] ; 3 uses
  %.03664 = phi ptr [ undef, %.lr.ph67 ], [ %.238.1, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ] ; 3 uses
  %storemerge63 = phi ptr [ %i.bf, %.lr.ph67 ], [ %i.dd, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ] ; 8 uses
  %i.by = phi i32 [ 0, %.lr.ph67 ], [ %i.ne, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ]
  %.sroa.0.062 = phi ptr [ null, %.lr.ph67 ], [ %.sroa.0.1, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ] ; 2 uses
  %.sroa.6.061 = phi i32 [ 0, %.lr.ph67 ], [ %.sroa.6.1, %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48 ] ; 2 uses
  %i.bz = getelementptr [4 x i8], ptr %storemerge63, i64 %i.bs
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !33 ; 2 uses
  %i.cc = shl nsw i32 %i.cb, 2
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.cd ; 4 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !30
  %i.cg = fcmp oeq double %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ch = call noundef double @_ZN10tetgenmesh23get_min_diahedral_angleEPNS_4faceE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %1) ; 3 uses
  store double %i.ch, ptr %i.ce, align 8, !tbaa !30
  %i.ci = fcmp olt double %i.ch, %.03465
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.sroa.6.1 = phi i32 [ %i.by, %bb.m ], [ %.sroa.6.061, %bb.l ], [ %.sroa.6.061, %bb.k ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %storemerge63, %bb.m ], [ %.sroa.0.062, %bb.l ], [ %.sroa.0.062, %bb.k ] ; 2 uses
  %.135 = phi double [ %i.ch, %bb.m ], [ %.03465, %bb.l ], [ %.03465, %bb.k ] ; 2 uses
  %i.cj = load ptr, ptr %i.bt, align 8, !tbaa !582
  %i.ck = shl nsw i32 %i.cb, 1
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !30
  %i.cp = fcmp oeq double %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.s, label %bb.ae

bb.o:                                             ; preds = %bb.r, %bb.ar
  %i.cq = phi ptr [ %i.db, %bb.r ], [ %i.bw, %bb.ar ] ; 2 uses
  %i.cr = phi i32 [ %i.dj, %bb.r ], [ %i.bx, %bb.ar ] ; 2 uses
  %.promoted.i4576 = phi ptr [ %i.di, %bb.r ], [ %.promoted.i45, %bb.ar ] ; 2 uses
  %i.cs = icmp eq ptr %.promoted.i4576, %i.ap
  br i1 %i.cs, label %._crit_edge68.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = icmp eq i32 %i.cr, 0
  br i1 %i.ct, label %bb.q, label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i46

bb.q:                                             ; preds = %bb.p
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !125 ; 3 uses
  store ptr %i.cu, ptr %i.aa, align 8, !tbaa !289
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cx = add i64 %i.cw, %i.af
  %i.cy = urem i64 %i.cw, %i.af
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = inttoptr i64 %i.cz to ptr
  br label %_ZN10tetgenmesh10memorypool8traverseEv.exit.i46

_ZN10tetgenmesh10memorypool8traverseEv.exit.i46:  ; preds = %bb.q, %bb.p
  %i.db = phi ptr [ %i.cu, %bb.q ], [ %i.cq, %bb.p ] ; 2 uses
  %i.dc = phi i32 [ %i.am, %bb.q ], [ %i.cr, %bb.p ]
  %i.dd = phi ptr [ %i.da, %bb.q ], [ %.promoted.i4576, %bb.p ] ; 5 uses
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = load i32, ptr %i.aq, align 4, !tbaa !279
  %i.dg = sext i32 %i.df to i64
  %i.dh = add i64 %i.dg, %i.de
  %i.di = inttoptr i64 %i.dh to ptr               ; 3 uses
  store ptr %i.di, ptr %i.ak, align 8, !tbaa !290
  %i.dj = add nsw i32 %i.dc, -1                   ; 3 uses
  store i32 %i.dj, ptr %i.an, align 4, !tbaa !291
  %i.dk = icmp eq ptr %i.dd, null
  br i1 %i.dk, label %._crit_edge68.loopexit, label %bb.r

bb.r:                                             ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i46
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !306
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.o, label %_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48, !llvm.loop !311

_ZN10tetgenmesh17shellfacetraverseEPNS_10memorypoolE.exit48: ; preds = %bb.r
  store ptr %i.dd, ptr %1, align 8, !tbaa !316
  br label %bb.k, !llvm.loop !1252

bb.s:                                             ; preds = %bb.n
  %2 = load i32, ptr @_ZN10tetgenmesh9sorgpivotE, align 16, !tbaa !33
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [8 x i8], ptr %storemerge63, i64 %3
  %i.do = load ptr, ptr %4, align 8, !tbaa !306
  %i.dp = load ptr, ptr %i.cm, align 8, !tbaa !131 ; 6 uses
  %.not44 = icmp ne ptr %i.do, %i.dp
  %i.dq = zext i1 %.not44 to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !33
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %storemerge63, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !306 ; 4 uses
  %i.dw = icmp eq ptr %i.dv, %i.dp
  br i1 %i.dw, label %bb.t, label %bb.ae

bb.t:                                             ; preds = %bb.s
  %i.dx = load ptr, ptr %storemerge63, align 8, !tbaa !306
  %i.dy = ptrtoint ptr %i.dx to i64               ; 3 uses
  %i.dz = and i64 %i.dy, -8                       ; 3 uses
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = inttoptr i64 %i.dz to ptr               ; 2 uses
  %i.ec = trunc i64 %i.dy to i32
  %i.ed = and i32 %i.ec, 7
  %i.ee = and i64 %i.dy, 7
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !33
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !306
  %.not.i = icmp ne ptr %i.ej, %i.dp
  %i.ek = zext i1 %.not.i to i32
  %spec.select.i = xor i32 %i.ed, %i.ek
  %i.el = load double, ptr %i.dv, align 8, !tbaa !30
  %i.em = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.en = load double, ptr %i.em, align 8, !tbaa !30
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !30
  %i.eq = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = insertelement <2 x double> poison, double %i.el, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = insertelement <2 x double> poison, double %i.en, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.ab, %bb.u
  %.sroa.1040.0.i = phi i32 [ %spec.select.i, %bb.u ], [ %spec.select51.i, %bb.ab ] ; 2 uses
  %.sroa.035.0.i = phi ptr [ %i.eb, %bb.u ], [ %i.hu, %bb.ab ] ; 2 uses
  %.0.i49 = phi double [ %i.bv, %bb.u ], [ %.1.i, %bb.ab ] ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %bb.v
  %.sroa.10.0.i = phi i32 [ %.sroa.1040.0.i, %bb.v ], [ %spec.select50.i, %bb.z ]
  %.sroa.0.0.i = phi ptr [ %.sroa.035.0.i, %bb.v ], [ %i.hd, %bb.z ] ; 3 uses
  %.018.i = phi double [ 0.000000e+00, %bb.v ], [ %i.gn, %bb.z ]
  %i.ew = zext nneg i32 %.sroa.10.0.i to i64      ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !33
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !306 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.ew
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !33
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !306 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !30
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !30
  %i.fl = load <2 x double>, ptr %i.fb, align 8, !tbaa !30 ; 2 uses
  %i.fm = load <2 x double>, ptr %i.fg, align 8, !tbaa !30 ; 2 uses
  %i.fn = shufflevector <2 x double> %i.fl, <2 x double> %i.fm, <2 x i32> <i32 0, i32 2>
  %i.fo = fsub <2 x double> %i.fn, %i.et          ; 4 uses
  %i.fp = shufflevector <2 x double> %i.fl, <2 x double> %i.fm, <2 x i32> <i32 1, i32 3>
  %i.fq = fsub <2 x double> %i.fp, %i.ev          ; 4 uses
  %i.fr = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fs = insertelement <2 x double> %i.fr, double %i.fk, i64 1
  %i.ft = fsub <2 x double> %i.fs, %i.er          ; 4 uses
  %i.fu = fmul <2 x double> %i.fq, %i.fq
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fo, <2 x double> %i.fu)
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> %i.ft, <2 x double> %i.fv)
  %i.fx = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.fw) ; 2 uses
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> %i.fq, <2 x i32> <i32 0, i32 2>
  %i.fz = shufflevector <2 x double> %i.fx, <2 x double> %i.fq, <2 x i32> <i32 1, i32 3>
  %i.ga = fmul <2 x double> %i.fy, %i.fz          ; 2 uses
  %i.gb = extractelement <2 x double> %i.fo, i64 0
  %i.gc = extractelement <2 x double> %i.fo, i64 1
  %i.gd = extractelement <2 x double> %i.ga, i64 1
  %i.ge = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.gc, double %i.gd)
  %i.gf = extractelement <2 x double> %i.ft, i64 0
  %i.gg = extractelement <2 x double> %i.ft, i64 1
  %i.gh = tail call noundef double @llvm.fmuladd.f64(double %i.gf, double %i.gg, double %i.ge)
  %i.gi = extractelement <2 x double> %i.ga, i64 0
  %i.gj = fdiv double %i.gh, %i.gi                ; 3 uses
  %i.gk = fcmp ogt double %i.gj, 1.000000e+00
  br i1 %i.gk, label %_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gl = fcmp olt double %i.gj, -1.000000e+00
  br i1 %i.gl, label %bb.y, label %_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit.i

bb.y:                                             ; preds = %bb.x
  br label %_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit.i

_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %.0.i.i = phi double [ %i.gj, %bb.x ], [ -1.000000e+00, %bb.y ], [ 1.000000e+00, %bb.w ]
  %i.gm = tail call double @acos(double noundef %.0.i.i) #40
  %i.gn = fadd double %.018.i, %i.gm              ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.ew
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !33
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !33
  %i.gt = ashr i32 %i.gs, 1
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr [8 x i8], ptr %.sroa.0.0.i, i64 %i.gu ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 48
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !306
  %.not22.i = icmp eq ptr %i.gx, null
  br i1 %.not22.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit.i
  %i.gy = load ptr, ptr %i.gv, align 8, !tbaa !306
  %i.gz = ptrtoint ptr %i.gy to i64               ; 3 uses
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = and i32 %i.ha, 7
  %i.hc = and i64 %i.gz, -8
  %i.hd = inttoptr i64 %i.hc to ptr               ; 2 uses
  %i.he = and i64 %i.gz, 7
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !33
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.hh
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !306
  %.not23.i = icmp ne ptr %i.hj, %i.dp
  %i.hk = zext i1 %.not23.i to i32
  %spec.select50.i = xor i32 %i.hb, %i.hk
  br label %bb.w, !llvm.loop !1249

bb.aa:                                            ; preds = %_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit.i
  %i.hl = fcmp olt double %i.gn, %.0.i49
  %.1.i = select i1 %i.hl, double %i.gn, double %.0.i49 ; 2 uses
  %i.hm = lshr i32 %.sroa.1040.0.i, 1
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.sroa.035.0.i, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !306
  %i.hq = ptrtoint ptr %i.hp to i64               ; 3 uses
  %i.hr = and i64 %i.hq, -8                       ; 3 uses
  %i.hs = icmp eq i64 %i.hr, %i.dz
  %i.ht = icmp eq i64 %i.hr, 0
  %or.cond.i = or i1 %i.hs, %i.ht
  br i1 %or.cond.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hu = inttoptr i64 %i.hr to ptr               ; 2 uses
  %i.hv = trunc i64 %i.hq to i32
  %i.hw = and i32 %i.hv, 7
  %i.hx = and i64 %i.hq, 7
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !33
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.ia
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !306
  %.not24.i = icmp ne ptr %i.ic, %i.dp
  %i.id = zext i1 %.not24.i to i32
  %spec.select51.i = xor i32 %i.hw, %i.id
  br label %bb.v, !llvm.loop !1250

bb.ac:                                            ; preds = %bb.aa
  %i.ie = fdiv double %.1.i, %i.bu
  %i.if = fmul double %i.ie, 1.800000e+02
  br label %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit

_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit: ; preds = %bb.t, %bb.ac
  %.019.i = phi double [ %i.if, %bb.ac ], [ 3.600000e+02, %bb.t ] ; 3 uses
  store double %.019.i, ptr %i.cn, align 8, !tbaa !30
  %i.ig = fcmp olt double %.019.i, %.03366
  br i1 %i.ig, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit
  br label %bb.ae

bb.ae:                                            ; preds = %bb.n, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit, %bb.ad, %bb.s
  %.238 = phi ptr [ %i.dp, %bb.ad ], [ %.03664, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit ], [ %.03664, %bb.s ], [ %.03664, %bb.n ] ; 3 uses
  %.2 = phi double [ %.019.i, %bb.ad ], [ %.03366, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit ], [ %.03366, %bb.s ], [ %.03366, %bb.n ] ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !30
  %i.ij = fcmp oeq double %i.ii, 0.000000e+00
  br i1 %i.ij, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  %5 = load i32, ptr @_ZN10tetgenmesh9sorgpivotE, align 16, !tbaa !33
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [8 x i8], ptr %storemerge63, i64 %6
  %i.ik = load ptr, ptr %7, align 8, !tbaa !306
  %i.il = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !131 ; 6 uses
  %.not44.1 = icmp ne ptr %i.ik, %i.im            ; 4 uses
  %i.in = zext i1 %.not44.1 to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !33
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %storemerge63, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !306 ; 4 uses
  %i.it = icmp eq ptr %i.is, %i.im
  br i1 %i.it, label %bb.ag, label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %i.iu = load ptr, ptr %storemerge63, align 8, !tbaa !306
  %i.iv = ptrtoint ptr %i.iu to i64               ; 3 uses
  %i.iw = and i64 %i.iv, -8                       ; 3 uses
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iy = inttoptr i64 %i.iw to ptr               ; 2 uses
  %i.iz = trunc i64 %i.iv to i32
  %i.ja = and i32 %i.iz, 7
  %i.jb = and i64 %i.iv, 7
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !33
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.je
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !306
  %.not.i.1 = icmp ne ptr %i.jg, %i.im
  %i.jh = zext i1 %.not.i.1 to i32
  %spec.select.i.1 = xor i32 %i.ja, %i.jh
  %i.ji = load double, ptr %i.is, align 8, !tbaa !30
  %i.jj = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !30
  %i.jl = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !30
  %i.jn = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = insertelement <2 x double> poison, double %i.ji, i64 0
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jr = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.js = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ai

bb.ai:                                            ; preds = %bb.an, %bb.ah
  %.sroa.1040.0.i.1 = phi i32 [ %spec.select.i.1, %bb.ah ], [ %spec.select51.i.1, %bb.an ] ; 2 uses
  %.sroa.035.0.i.1 = phi ptr [ %i.iy, %bb.ah ], [ %i.me, %bb.an ] ; 2 uses
  %.0.i49.1 = phi double [ %i.bv, %bb.ah ], [ %.1.i.1, %bb.an ] ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ap, %bb.ai
  %.sroa.10.0.i.1 = phi i32 [ %.sroa.1040.0.i.1, %bb.ai ], [ %spec.select50.i.1, %bb.ap ]
  %.sroa.0.0.i.1 = phi ptr [ %.sroa.035.0.i.1, %bb.ai ], [ %i.mv, %bb.ap ] ; 3 uses
  %.018.i.1 = phi double [ 0.000000e+00, %bb.ai ], [ %i.lk, %bb.ap ]
  %i.jt = zext nneg i32 %.sroa.10.0.i.1 to i64    ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sdestpivotE, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !33
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i.1, i64 %i.jw
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !306 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10sapexpivotE, i64 %i.jt
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !33
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i.1, i64 %i.kb
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !306 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !30
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !30
  %i.ki = load <2 x double>, ptr %i.jy, align 8, !tbaa !30 ; 2 uses
  %i.kj = load <2 x double>, ptr %i.kd, align 8, !tbaa !30 ; 2 uses
  %i.kk = shufflevector <2 x double> %i.ki, <2 x double> %i.kj, <2 x i32> <i32 0, i32 2>
  %i.kl = fsub <2 x double> %i.kk, %i.jq          ; 4 uses
  %i.km = shufflevector <2 x double> %i.ki, <2 x double> %i.kj, <2 x i32> <i32 1, i32 3>
  %i.kn = fsub <2 x double> %i.km, %i.js          ; 4 uses
  %i.ko = insertelement <2 x double> poison, double %i.kf, i64 0
  %i.kp = insertelement <2 x double> %i.ko, double %i.kh, i64 1
  %i.kq = fsub <2 x double> %i.kp, %i.jo          ; 4 uses
  %i.kr = fmul <2 x double> %i.kn, %i.kn
  %i.ks = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> %i.kl, <2 x double> %i.kr)
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> %i.kq, <2 x double> %i.ks)
  %i.ku = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.kt) ; 2 uses
  %i.kv = shufflevector <2 x double> %i.ku, <2 x double> %i.kn, <2 x i32> <i32 0, i32 2>
  %i.kw = shufflevector <2 x double> %i.ku, <2 x double> %i.kn, <2 x i32> <i32 1, i32 3>
  %i.kx = fmul <2 x double> %i.kv, %i.kw          ; 2 uses
  %i.ky = extractelement <2 x double> %i.kl, i64 0
  %i.kz = extractelement <2 x double> %i.kl, i64 1
  %i.la = extractelement <2 x double> %i.kx, i64 1
  %i.lb = tail call double @llvm.fmuladd.f64(double %i.ky, double %i.kz, double %i.la)
  %i.lc = extractelement <2 x double> %i.kq, i64 0
  %i.ld = extractelement <2 x double> %i.kq, i64 1
  %i.le = tail call noundef double @llvm.fmuladd.f64(double %i.lc, double %i.ld, double %i.lb)
  %i.lf = extractelement <2 x double> %i.kx, i64 0
  %i.lg = fdiv double %i.le, %i.lf                ; 3 uses
  %i.lh = fcmp ogt double %i.lg, 1.000000e+00
  br i1 %i.lh, label %_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit.i.1, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.li = fcmp olt double %i.lg, -1.000000e+00
  br i1 %i.li, label %bb.al, label %_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit.i.1

bb.al:                                            ; preds = %bb.ak
  br label %_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit.i.1

_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit.i.1: ; preds = %bb.al, %bb.ak, %bb.aj
  %.0.i.i.1 = phi double [ %i.lg, %bb.ak ], [ -1.000000e+00, %bb.al ], [ 1.000000e+00, %bb.aj ]
  %i.lj = tail call double @acos(double noundef %.0.i.i.1) #40
  %i.lk = fadd double %.018.i.1, %i.lj            ; 3 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.jt
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !33
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10snextpivotE, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !33
  %i.lq = ashr i32 %i.lp, 1
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr [8 x i8], ptr %.sroa.0.0.i.1, i64 %i.lr ; 2 uses
  %i.lt = getelementptr i8, ptr %i.ls, i64 48
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !306
  %.not22.i.1 = icmp eq ptr %i.lu, null
  br i1 %.not22.i.1, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit.i.1
  %i.lv = fcmp olt double %i.lk, %.0.i49.1
  %.1.i.1 = select i1 %i.lv, double %i.lk, double %.0.i49.1 ; 2 uses
  %i.lw = lshr i32 %.sroa.1040.0.i.1, 1
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.sroa.035.0.i.1, i64 %i.lx
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !306
  %i.ma = ptrtoint ptr %i.lz to i64               ; 3 uses
  %i.mb = and i64 %i.ma, -8                       ; 3 uses
  %i.mc = icmp eq i64 %i.mb, %i.iw
  %i.md = icmp eq i64 %i.mb, 0
  %or.cond.i.1 = or i1 %i.mc, %i.md
  br i1 %or.cond.i.1, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.me = inttoptr i64 %i.mb to ptr               ; 2 uses
  %i.mf = trunc i64 %i.ma to i32
  %i.mg = and i32 %i.mf, 7
  %i.mh = and i64 %i.ma, 7
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !33
  %i.mk = sext i32 %i.mj to i64
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.mk
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !306
  %.not24.i.1 = icmp ne ptr %i.mm, %i.im
  %i.mn = zext i1 %.not24.i.1 to i32
  %spec.select51.i.1 = xor i32 %i.mg, %i.mn
  br label %bb.ai, !llvm.loop !1250

bb.ao:                                            ; preds = %bb.am
  %i.mo = fdiv double %.1.i.1, %i.bu
  %i.mp = fmul double %i.mo, 1.800000e+02
  br label %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1

bb.ap:                                            ; preds = %_ZN10tetgenmesh13interiorangleEPdS0_S0_S0_.exit.i.1
  %i.mq = load ptr, ptr %i.ls, align 8, !tbaa !306
  %i.mr = ptrtoint ptr %i.mq to i64               ; 3 uses
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = and i32 %i.ms, 7
  %i.mu = and i64 %i.mr, -8
  %i.mv = inttoptr i64 %i.mu to ptr               ; 2 uses
  %i.mw = and i64 %i.mr, 7
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9sorgpivotE, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !33
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [8 x i8], ptr %i.mv, i64 %i.mz
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !306
  %.not23.i.1 = icmp ne ptr %i.nb, %i.im
  %i.nc = zext i1 %.not23.i.1 to i32
  %spec.select50.i.1 = xor i32 %i.mt, %i.nc
  br label %bb.aj, !llvm.loop !1249

_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1: ; preds = %bb.ao, %bb.ag
  %.019.i.1 = phi double [ %i.mp, %bb.ao ], [ 3.600000e+02, %bb.ag ] ; 3 uses
  store double %.019.i.1, ptr %i.ih, align 8, !tbaa !30
  %i.nd = fcmp olt double %.019.i.1, %.2
  br i1 %i.nd, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1, %bb.af, %bb.ae
  %.shrunk.1 = phi i1 [ %.not44.1, %bb.aq ], [ %.not44.1, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1 ], [ %.not44.1, %bb.af ], [ false, %bb.ae ]
  %.238.1 = phi ptr [ %i.im, %bb.aq ], [ %.238, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1 ], [ %.238, %bb.af ], [ %.238, %bb.ae ] ; 2 uses
  %.2.1 = phi double [ %.019.i.1, %bb.aq ], [ %.2, %_ZN10tetgenmesh29get_min_angle_at_ridge_vertexEPNS_4faceE.exit.1 ], [ %.2, %bb.af ], [ %.2, %bb.ae ] ; 2 uses
  %i.ne = zext i1 %.shrunk.1 to i32               ; 2 uses
  store i32 %i.ne, ptr %i.y, align 8, !tbaa !317
  br label %bb.o

._crit_edge68.loopexit:                           ; preds = %_ZN10tetgenmesh10memorypool8traverseEv.exit.i46, %bb.o
  %i.nf = zext nneg i32 %.sroa.6.1 to i64
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %bb.g, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i, %._crit_edge68.loopexit
  %.sroa.6.0.lcssa = phi i64 [ %i.nf, %._crit_edge68.loopexit ], [ 0, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i ], [ 0, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %.sroa.0.1, %._crit_edge68.loopexit ], [ null, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i ], [ null, %bb.g ] ; 2 uses
  %.036.lcssa = phi ptr [ %.238.1, %._crit_edge68.loopexit ], [ undef, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i ], [ undef, %bb.g ]
  %.034.lcssa = phi double [ %.135, %._crit_edge68.loopexit ], [ 3.600000e+02, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i ], [ 3.600000e+02, %bb.g ]
  %.033.lcssa = phi double [ %.2.1, %._crit_edge68.loopexit ], [ 3.600000e+02, %_ZN10tetgenmesh10memorypool8traverseEv.exit.i ], [ 3.600000e+02, %bb.g ]
end_hunk_0
