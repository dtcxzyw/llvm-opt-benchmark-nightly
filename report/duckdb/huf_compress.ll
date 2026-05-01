inline.NumInlined: 440
inline.NumDeleted: 31
begin_hunk_0_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.d ; 84 uses
  %.not.i29 = icmp slt i32 %i.a, 1
  br i1 %.not.i29, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = add nsw i32 %2, 1
  %i.g = sub i32 %i.f, %1                         ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 4, !tbaa !3 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.j = load i32, ptr %i.e, align 4, !tbaa !40
  %i.k = icmp ult i32 %i.j, %.sroa.0.0.copyload.i
  br i1 %i.k, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.preheader
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.preheader
  %.0.in.i.lcssa = phi i64 [ 8, %.lr.ph.preheader ], [ 0, %bb.c ]
  %3 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa ; 2 uses
  store i32 %.sroa.0.0.copyload.i, ptr %3, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.i, ptr %.sroa.5.0..sroa_idx7.i, align 4
  %exitcond.not = icmp eq i32 %i.g, 2
  br i1 %exitcond.not, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.critedge.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.0.0.copyload.i.1 = load i32, ptr %i.n, align 4, !tbaa !3 ; 3 uses
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.o = load i32, ptr %.sroa.5.0..sroa_idx.i.1, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40
  %i.r = icmp ult i32 %i.q, %.sroa.0.0.copyload.i.1
  br i1 %i.r, label %bb.d, label %.critedge.i.1

bb.d:                                             ; preds = %.lr.ph.1
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  %i.t = load i64, ptr %i.p, align 4
  store i64 %i.t, ptr %i.s, align 4
  %i.u = load i32, ptr %i.e, align 4, !tbaa !40
  %i.v = icmp ult i32 %i.u, %.sroa.0.0.copyload.i.1
  br i1 %i.v, label %bb.e, label %.critedge.i.1

bb.e:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a

.critedge.i.1:                                    ; preds = %bb.e, %bb.d, %.lr.ph.1
  %.0.in.i.lcssa.1 = phi i64 [ 16, %.lr.ph.1 ], [ 0, %bb.e ], [ 8, %bb.d ]
  %4 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.1 ; 2 uses
  store i32 %.sroa.0.0.copyload.i.1, ptr %4, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx7.i.1 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.o, ptr %.sroa.5.0..sroa_idx7.i.1, align 4
  %exitcond.not.1 = icmp eq i32 %i.g, 3
  br i1 %exitcond.not.1, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.critedge.i.1
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.0.0.copyload.i.2 = load i32, ptr %i.y, align 4, !tbaa !3 ; 4 uses
  %.sroa.5.0..sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.z = load i32, ptr %.sroa.5.0..sroa_idx.i.2, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  %i.ac = icmp ult i32 %i.ab, %.sroa.0.0.copyload.i.2
  br i1 %i.ac, label %bb.f, label %.critedge.i.2

bb.f:                                             ; preds = %.lr.ph.2
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.ae, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !40
  %i.ah = icmp ult i32 %i.ag, %.sroa.0.0.copyload.i.2
  br i1 %i.ah, label %bb.g, label %.critedge.i.2

bb.g:                                             ; preds = %bb.f
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  %i.aj = load i64, ptr %i.af, align 4
  store i64 %i.aj, ptr %i.ai, align 4
  %i.ak = load i32, ptr %i.e, align 4, !tbaa !40
  %i.al = icmp ult i32 %i.ak, %.sroa.0.0.copyload.i.2
  br i1 %i.al, label %bb.h, label %.critedge.i.2

bb.h:                                             ; preds = %bb.g
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a

.critedge.i.2:                                    ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.2
  %.0.in.i.lcssa.2 = phi i64 [ 24, %.lr.ph.2 ], [ 8, %bb.g ], [ 16, %bb.f ], [ 0, %bb.h ]
  %5 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.2 ; 2 uses
  store i32 %.sroa.0.0.copyload.i.2, ptr %5, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx7.i.2 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.z, ptr %.sroa.5.0..sroa_idx7.i.2, align 4
  %exitcond.not.2 = icmp eq i32 %i.g, 4
  br i1 %exitcond.not.2, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.critedge.i.2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.0.0.copyload.i.3 = load i32, ptr %i.ao, align 4, !tbaa !3 ; 5 uses
  %.sroa.5.0..sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.ap = load i32, ptr %.sroa.5.0..sroa_idx.i.3, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !40
  %i.as = icmp ult i32 %i.ar, %.sroa.0.0.copyload.i.3
  br i1 %i.as, label %bb.i, label %.critedge.i.3

bb.i:                                             ; preds = %.lr.ph.3
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.au, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !40
  %i.ax = icmp ult i32 %i.aw, %.sroa.0.0.copyload.i.3
  br i1 %i.ax, label %bb.j, label %.critedge.i.3

bb.j:                                             ; preds = %bb.i
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.az, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !40
  %i.bc = icmp ult i32 %i.bb, %.sroa.0.0.copyload.i.3
  br i1 %i.bc, label %bb.k, label %.critedge.i.3

bb.k:                                             ; preds = %bb.j
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  %i.be = load i64, ptr %i.ba, align 4
  store i64 %i.be, ptr %i.bd, align 4
  %i.bf = load i32, ptr %i.e, align 4, !tbaa !40
  %i.bg = icmp ult i32 %i.bf, %.sroa.0.0.copyload.i.3
  br i1 %i.bg, label %bb.l, label %.critedge.i.3

bb.l:                                             ; preds = %bb.k
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a

.critedge.i.3:                                    ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %.lr.ph.3
  %.0.in.i.lcssa.3 = phi i64 [ 32, %.lr.ph.3 ], [ 0, %bb.l ], [ 24, %bb.i ], [ 8, %bb.k ], [ 16, %bb.j ]
  %6 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.3 ; 2 uses
  store i32 %.sroa.0.0.copyload.i.3, ptr %6, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx7.i.3 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.ap, ptr %.sroa.5.0..sroa_idx7.i.3, align 4
  %exitcond.not.3 = icmp eq i32 %i.g, 5
  br i1 %exitcond.not.3, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.critedge.i.3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.0.0.copyload.i.4 = load i32, ptr %i.bj, align 4, !tbaa !3 ; 6 uses
  %.sroa.5.0..sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.bk = load i32, ptr %.sroa.5.0..sroa_idx.i.4, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !40
  %i.bn = icmp ult i32 %i.bm, %.sroa.0.0.copyload.i.4
  br i1 %i.bn, label %bb.m, label %.critedge.i.4

bb.m:                                             ; preds = %.lr.ph.4
end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.bp, ptr %i.bo, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !40
  %i.bs = icmp ult i32 %i.br, %.sroa.0.0.copyload.i.4
  br i1 %i.bs, label %bb.n, label %.critedge.i.4

bb.n:                                             ; preds = %bb.m
end_hunk_11
begin_hunk_12_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.bu, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !40
  %i.bx = icmp ult i32 %i.bw, %.sroa.0.0.copyload.i.4
  br i1 %i.bx, label %bb.o, label %.critedge.i.4

bb.o:                                             ; preds = %bb.n
end_hunk_12
begin_hunk_13_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.bz, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !40
  %i.cc = icmp ult i32 %i.cb, %.sroa.0.0.copyload.i.4
  br i1 %i.cc, label %bb.p, label %.critedge.i.4

bb.p:                                             ; preds = %bb.o
end_hunk_13
begin_hunk_14_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  %i.ce = load i64, ptr %i.ca, align 4
  store i64 %i.ce, ptr %i.cd, align 4
  %i.cf = load i32, ptr %i.e, align 4, !tbaa !40
  %i.cg = icmp ult i32 %i.cf, %.sroa.0.0.copyload.i.4
  br i1 %i.cg, label %bb.q, label %.critedge.i.4

bb.q:                                             ; preds = %bb.p
end_hunk_14
begin_hunk_15_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a

.critedge.i.4:                                    ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.lr.ph.4
  %.0.in.i.lcssa.4 = phi i64 [ 40, %.lr.ph.4 ], [ 16, %bb.o ], [ 32, %bb.m ], [ 0, %bb.q ], [ 24, %bb.n ], [ 8, %bb.p ]
  %7 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.4 ; 2 uses
  store i32 %.sroa.0.0.copyload.i.4, ptr %7, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx7.i.4 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.bk, ptr %.sroa.5.0..sroa_idx7.i.4, align 4
  %exitcond.not.4 = icmp eq i32 %i.g, 6
  br i1 %exitcond.not.4, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.critedge.i.4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.0.0.copyload.i.5 = load i32, ptr %i.cj, align 4, !tbaa !3 ; 7 uses
  %.sroa.5.0..sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.ck = load i32, ptr %.sroa.5.0..sroa_idx.i.5, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !40
  %i.cn = icmp ult i32 %i.cm, %.sroa.0.0.copyload.i.5
  br i1 %i.cn, label %bb.r, label %.critedge.i.5

bb.r:                                             ; preds = %.lr.ph.5
end_hunk_15
begin_hunk_16_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.cp, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !40
  %i.cs = icmp ult i32 %i.cr, %.sroa.0.0.copyload.i.5
  br i1 %i.cs, label %bb.s, label %.critedge.i.5

bb.s:                                             ; preds = %bb.r
end_hunk_16
begin_hunk_17_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.cu, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !40
  %i.cx = icmp ult i32 %i.cw, %.sroa.0.0.copyload.i.5
  br i1 %i.cx, label %bb.t, label %.critedge.i.5

bb.t:                                             ; preds = %bb.s
end_hunk_17
begin_hunk_18_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.cz, ptr %i.cy, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !40
  %i.dc = icmp ult i32 %i.db, %.sroa.0.0.copyload.i.5
  br i1 %i.dc, label %bb.u, label %.critedge.i.5

bb.u:                                             ; preds = %bb.t
end_hunk_18
begin_hunk_19_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.de, ptr %i.dd, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !40
  %i.dh = icmp ult i32 %i.dg, %.sroa.0.0.copyload.i.5
  br i1 %i.dh, label %bb.v, label %.critedge.i.5

bb.v:                                             ; preds = %bb.u
end_hunk_19
begin_hunk_20_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  %i.dj = load i64, ptr %i.df, align 4
  store i64 %i.dj, ptr %i.di, align 4
  %i.dk = load i32, ptr %i.e, align 4, !tbaa !40
  %i.dl = icmp ult i32 %i.dk, %.sroa.0.0.copyload.i.5
  br i1 %i.dl, label %bb.w, label %.critedge.i.5

bb.w:                                             ; preds = %bb.v
end_hunk_20
begin_hunk_21_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a

.critedge.i.5:                                    ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %.lr.ph.5
  %.0.in.i.lcssa.5 = phi i64 [ 48, %.lr.ph.5 ], [ 8, %bb.v ], [ 40, %bb.r ], [ 16, %bb.u ], [ 32, %bb.s ], [ 0, %bb.w ], [ 24, %bb.t ]
  %8 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.5 ; 2 uses
  store i32 %.sroa.0.0.copyload.i.5, ptr %8, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx7.i.5 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.ck, ptr %.sroa.5.0..sroa_idx7.i.5, align 4
  %exitcond.not.5 = icmp eq i32 %i.g, 7
  br i1 %exitcond.not.5, label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.critedge.i.5
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.0.0.copyload.i.6 = load i32, ptr %i.do, align 4, !tbaa !3 ; 8 uses
  %.sroa.5.0..sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.dp = load i32, ptr %.sroa.5.0..sroa_idx.i.6, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !40
  %i.ds = icmp ult i32 %i.dr, %.sroa.0.0.copyload.i.6
  br i1 %i.ds, label %bb.x, label %.critedge.i.6

bb.x:                                             ; preds = %.lr.ph.6
end_hunk_21
begin_hunk_22_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.du, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !40
  %i.dx = icmp ult i32 %i.dw, %.sroa.0.0.copyload.i.6
  br i1 %i.dx, label %bb.y, label %.critedge.i.6

bb.y:                                             ; preds = %bb.x
end_hunk_22
begin_hunk_23_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.dz, ptr %i.dy, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !40
  %i.ec = icmp ult i32 %i.eb, %.sroa.0.0.copyload.i.6
  br i1 %i.ec, label %bb.z, label %.critedge.i.6

bb.z:                                             ; preds = %bb.y
end_hunk_23
begin_hunk_24_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.ee, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !40
  %i.eh = icmp ult i32 %i.eg, %.sroa.0.0.copyload.i.6
  br i1 %i.eh, label %bb.aa, label %.critedge.i.6

bb.aa:                                            ; preds = %bb.z
end_hunk_24
begin_hunk_25_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.ej, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !40
  %i.em = icmp ult i32 %i.el, %.sroa.0.0.copyload.i.6
  br i1 %i.em, label %bb.ab, label %.critedge.i.6

bb.ab:                                            ; preds = %bb.aa
end_hunk_25
begin_hunk_26_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  store i64 %i.eo, ptr %i.en, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !40
  %i.er = icmp ult i32 %i.eq, %.sroa.0.0.copyload.i.6
  br i1 %i.er, label %bb.ac, label %.critedge.i.6

bb.ac:                                            ; preds = %bb.ab
end_hunk_26
begin_hunk_27_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a
  %i.et = load i64, ptr %i.ep, align 4
  store i64 %i.et, ptr %i.es, align 4
  %i.eu = load i32, ptr %i.e, align 4, !tbaa !40
  %i.ev = icmp ult i32 %i.eu, %.sroa.0.0.copyload.i.6
  br i1 %i.ev, label %bb.ad, label %.critedge.i.6

bb.ad:                                            ; preds = %bb.ac
end_hunk_27
begin_hunk_28_@_ZN11duckdb_zstdL19HUF_simpleQuickSortEPNS_9nodeElt_sEii:bb.a

.critedge.i.6:                                    ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %.lr.ph.6
  %.0.in.i.lcssa.6 = phi i64 [ 56, %.lr.ph.6 ], [ 0, %bb.ad ], [ 48, %bb.x ], [ 8, %bb.ac ], [ 40, %bb.y ], [ 24, %bb.aa ], [ 32, %bb.z ], [ 16, %bb.ab ]
  %9 = getelementptr inbounds i8, ptr %i.e, i64 %.0.in.i.lcssa.6 ; 2 uses
  store i32 %.sroa.0.0.copyload.i.6, ptr %9, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx7.i.6 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.dp, ptr %.sroa.5.0..sroa_idx7.i.6, align 4
  br label %_ZN11duckdb_zstdL17HUF_insertionSortEPNS_9nodeElt_sEii.exit

.lr.ph.preheader.i:                               ; preds = %.preheader, %bb.ak
end_hunk_28
