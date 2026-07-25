inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@decompress_data:bb.a
  %i.bz = load i32, ptr %i.bc, align 4, !tbaa !115 ; 2 uses
  %i.ca = add i32 %i.bz, %.06379
  %i.cb = add i32 %.06677, 1                      ; 2 uses
  %i.cc = load ptr, ptr %i.ac, align 8, !tbaa !101 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 72
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv91
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %.not74 = icmp ugt i32 %i.cb, %i.cf
  br i1 %.not74, label %._crit_edge, label %.lr.ph, !llvm.loop !116

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph83.split.._crit_edge_crit_edge
  %i.cg = phi i32 [ %.pre, %.lr.ph83.split.._crit_edge_crit_edge ], [ %i.bz, %.lr.ph ]
  %i.ch = phi ptr [ %i.bn, %.lr.ph83.split.._crit_edge_crit_edge ], [ %i.cc, %.lr.ph ]
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %.06481, i64 %i.ci
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph83.split, !llvm.loop !117

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph83, %bb.i, %bb.e
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.06285, i64 96
  %i.cl = load i32, ptr %i.u, align 8, !tbaa !49
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next92, %i.cm
  br i1 %i.cn, label %bb.e, label %._crit_edge88, !llvm.loop !119

._crit_edge88:                                    ; preds = %.loopexit, %.critedge2
  %i.co = load i32, ptr %i.i, align 8, !tbaa !83
  %i.cp = add i32 %i.co, 1                        ; 2 uses
  store i32 %i.cp, ptr %i.i, align 8, !tbaa !83
  %i.cq = load i32, ptr %i.c, align 8, !tbaa !71
  %i.cr = icmp ult i32 %i.cp, %i.cq
  %. = select i1 %i.cr, i32 3, i32 4
  br label %.loopexit75

.loopexit75:                                      ; preds = %.critedge, %._crit_edge88
  %.0 = phi i32 [ %., %._crit_edge88 ], [ 0, %.critedge ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dummy_consume_data(ptr nofree readnone captures(none) %0) #5 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 5) i32 @decompress_onepass(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.d = load i32, ptr %i.c, align 8, !tbaa !89
  %i.e = add i32 %i.d, -1                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !71   ; 2 uses
  %i.h = add i32 %i.g, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !75   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !70   ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.pre = load i32, ptr %i.n, align 8, !tbaa !74
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph119, %._crit_edge
  %i.w = phi i32 [ %i.l, %.lr.ph119 ], [ %i.cw, %._crit_edge ]
  %i.x = phi i32 [ %.pre, %.lr.ph119 ], [ 0, %._crit_edge ] ; 2 uses
  %.086117 = phi i32 [ %i.j, %.lr.ph119 ], [ %i.cx, %._crit_edge ] ; 4 uses
  %.not113 = icmp ugt i32 %i.x, %i.e
  br i1 %.not113, label %._crit_edge, label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.b, %.loopexit96
  %.081114 = phi i32 [ %i.cv, %.loopexit96 ], [ %i.x, %bb.b ] ; 6 uses
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.z = load i32, ptr %i.p, align 8, !tbaa !120
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 7
  tail call void @jzero_far(ptr noundef %i.y, i64 noundef %i.ab) #7
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !98  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !99
  %.not90 = icmp eq i32 %i.ae, 0
  br i1 %.not90, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph116
  %i.af = load i32, ptr %i.r, align 8, !tbaa !68
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !101
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 116
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph116
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !104
  %i.ak = tail call i32 %i.aj(ptr noundef nonnull %0, ptr noundef nonnull %i.o) #7
  %.not91 = icmp eq i32 %i.ak, 0
  br i1 %.not91, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %.086117, ptr %i.i, align 4, !tbaa !75
  store i32 %.081114, ptr %i.n, align 8, !tbaa !74
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !101 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !121
  %.not92 = icmp ult i32 %.081114, %i.an
  br i1 %.not92, label %.loopexit96, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !122
  %.not93 = icmp ugt i32 %.081114, %i.ap
  br i1 %.not93, label %.loopexit96, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.aq = load i32, ptr %i.t, align 8, !tbaa !69  ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %.loopexit96

.lr.ph:                                           ; preds = %.preheader
  %i.as = icmp ult i32 %.081114, %i.e
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.loopexit95
  %i.at = phi i32 [ %i.aq, %.lr.ph ], [ %i.cs, %.loopexit95 ] ; 3 uses
  %indvars.iv130 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next131, %.loopexit95 ] ; 2 uses
  %.083112 = phi i32 [ 0, %.lr.ph ], [ %.2, %.loopexit95 ] ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv130
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !72 ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 52
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !113
  %.not94 = icmp eq i32 %i.ax, 0
  br i1 %.not94, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !123
  %i.ba = add nsw i32 %i.az, %.083112
  br label %.loopexit95

bb.j:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.v, align 8, !tbaa !114
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !85
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 56 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %.in = select i1 %i.as, ptr %i.bi, ptr %i.bj
  %i.bk = load i32, ptr %.in, align 8, !tbaa !3
  %.fr121 = freeze i32 %i.bk                      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 36 ; 2 uses
  %i.bm = load ptr, ptr %i.s, align 8, !tbaa !101
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !121
  %i.bp = sub i32 %.081114, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 68
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !124
  %i.bs = mul i32 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 60 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !91 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph104, label %.loopexit95

.lr.ph104:                                        ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 76
  %i.bx = icmp sgt i32 %.fr121, 0
  br i1 %i.bx, label %.lr.ph104.split.us.preheader, label %.lr.ph104.split

.lr.ph104.split.us.preheader:                     ; preds = %.lr.ph104
  %i.by = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bf
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !86
  %i.ca = load i32, ptr %i.bl, align 4, !tbaa !115 ; 2 uses
  %i.cb = mul nsw i32 %i.ca, %.086117
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cc
  %wide.trip.count = zext nneg i32 %.fr121 to i64
  br label %.lr.ph104.split.us

.lr.ph104.split.us:                               ; preds = %.lr.ph104.split.us.preheader, %..loopexit_crit_edge.us.a
  %i.ce = phi i32 [ %2, %..loopexit_crit_edge.us.a ], [ %i.bu, %.lr.ph104.split.us.preheader ]
  %i.cf = phi i32 [ %i.cm, %..loopexit_crit_edge.us.a ], [ %i.ca, %.lr.ph104.split.us.preheader ]
  %.1103.us = phi i32 [ %4, %..loopexit_crit_edge.us.a ], [ %.083112, %.lr.ph104.split.us.preheader ] ; 2 uses
  %.084102.us = phi ptr [ %6, %..loopexit_crit_edge.us.a ], [ %i.cd, %.lr.ph104.split.us.preheader ] ; 2 uses
  %.087101.us = phi i32 [ %i.cn, %..loopexit_crit_edge.us.a ], [ 0, %.lr.ph104.split.us.preheader ] ; 2 uses
  %i.cg = load i32, ptr %i.r, align 8, !tbaa !68
  %i.ch = icmp ult i32 %i.cg, %i.h
  br i1 %i.ch, label %.lr.ph.us, label %bb.k

bb.k:                                             ; preds = %.lr.ph104.split.us
  %i.ci = add nsw i32 %.087101.us, %.086117
  %i.cj = load i32, ptr %i.bw, align 4, !tbaa !73
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph.us, label %..loopexit_crit_edge.us.a

.lr.ph.us:                                        ; preds = %bb.k, %.lr.ph104.split.us
  %i.cl = sext i32 %.1103.us to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.o, i64 %i.cl
  br label %bb.l

..loopexit_crit_edge.us.loopexit:                 ; preds = %bb.l
  %.pre133 = load i32, ptr %i.bt, align 4, !tbaa !91
  br label %..loopexit_crit_edge.us.a

..loopexit_crit_edge.us.a:                        ; preds = %..loopexit_crit_edge.us.loopexit, %bb.k
  %2 = phi i32 [ %.pre133, %..loopexit_crit_edge.us.loopexit ], [ %i.ce, %bb.k ] ; 2 uses
  %i.cm = phi i32 [ %9, %..loopexit_crit_edge.us.loopexit ], [ %i.cf, %bb.k ] ; 2 uses
  %3 = load i32, ptr %i.bi, align 8, !tbaa !90
  %4 = add nsw i32 %3, %.1103.us                  ; 2 uses
  %5 = sext i32 %i.cm to i64
  %6 = getelementptr inbounds [8 x i8], ptr %.084102.us, i64 %5
  %i.cn = add nuw nsw i32 %.087101.us, 1          ; 2 uses
  %7 = icmp slt i32 %i.cn, %2
  br i1 %7, label %.lr.ph104.split.us, label %.loopexit95.loopexit, !llvm.loop !125

bb.l:                                             ; preds = %.lr.ph.us, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.082100.us = phi i32 [ %i.bs, %.lr.ph.us ], [ %i.co, %bb.l ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %8 = load ptr, ptr %gep, align 8, !tbaa !65
  tail call void %i.bh(ptr noundef nonnull %0, ptr noundef nonnull %i.av, ptr noundef %8, ptr noundef %.084102.us, i32 noundef %.082100.us) #7
  %9 = load i32, ptr %i.bl, align 4, !tbaa !115   ; 2 uses
  %i.co = add i32 %9, %.082100.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us.loopexit, label %bb.l, !llvm.loop !126

.lr.ph104.split:                                  ; preds = %.lr.ph104
  %i.cp = load i32, ptr %i.bi, align 8, !tbaa !90
  %i.cq = mul i32 %i.cp, %i.bu
  %i.cr = add i32 %.083112, %i.cq
  br label %.loopexit95

.loopexit95.loopexit:                             ; preds = %..loopexit_crit_edge.us.a
  %.pre134 = load i32, ptr %i.t, align 8, !tbaa !69
  br label %.loopexit95

.loopexit95:                                      ; preds = %.lr.ph104.split, %.loopexit95.loopexit, %bb.j, %bb.i
  %i.cs = phi i32 [ %i.at, %bb.i ], [ %i.at, %bb.j ], [ %i.at, %.lr.ph104.split ], [ %.pre134, %.loopexit95.loopexit ] ; 2 uses
  %.2 = phi i32 [ %i.ba, %bb.i ], [ %.083112, %bb.j ], [ %i.cr, %.lr.ph104.split ], [ %4, %.loopexit95.loopexit ]
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next131, %i.ct
  br i1 %i.cu, label %bb.h, label %.loopexit96, !llvm.loop !127

.loopexit96:                                      ; preds = %.loopexit95, %.preheader, %bb.f, %bb.g
  %i.cv = add i32 %.081114, 1                     ; 2 uses
  %.not = icmp ugt i32 %i.cv, %i.e
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph116, !llvm.loop !128

._crit_edge.loopexit:                             ; preds = %.loopexit96
  %.pre135 = load i32, ptr %i.k, align 8, !tbaa !70
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.cw = phi i32 [ %.pre135, %._crit_edge.loopexit ], [ %i.w, %bb.b ] ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !74
  %i.cx = add nsw i32 %.086117, 1                 ; 2 uses
  %i.cy = icmp slt i32 %i.cx, %i.cw
  br i1 %i.cy, label %bb.b, label %._crit_edge120.loopexit, !llvm.loop !129

._crit_edge120.loopexit:                          ; preds = %._crit_edge
  %.pre136 = load i32, ptr %i.f, align 8, !tbaa !71
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %bb.a
  %i.cz = phi i32 [ %.pre136, %._crit_edge120.loopexit ], [ %i.g, %bb.a ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !83
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 8, !tbaa !83
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !68
  %i.df = add i32 %i.de, 1                        ; 3 uses
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !68
  %i.dg = icmp ult i32 %i.df, %i.cz
  br i1 %i.dg, label %bb.m, label %bb.r

bb.m:                                             ; preds = %._crit_edge120
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !41  ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !69
  %i.dk = icmp sgt i32 %i.dj, 1
  br i1 %i.dk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  store i32 1, ptr %i.dl, align 8, !tbaa !70
  br label %start_iMCU_row.exit

bb.o:                                             ; preds = %bb.m
  %i.dm = add i32 %i.cz, -1
  %i.dn = icmp ult i32 %i.df, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !72 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 80 ; 2 uses
  br i1 %i.dn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !51
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !70
  br label %start_iMCU_row.exit

bb.q:                                             ; preds = %bb.o
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 76
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !73
  store i32 %i.du, ptr %i.dq, align 8, !tbaa !70
  br label %start_iMCU_row.exit

start_iMCU_row.exit:                              ; preds = %bb.n, %bb.p, %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  store i32 0, ptr %i.dv, align 8, !tbaa !74
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 76
  store i32 0, ptr %i.dw, align 4, !tbaa !75
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge120
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !107
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !108
  tail call void %i.ea(ptr noundef nonnull %0) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %start_iMCU_row.exit, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 3, %start_iMCU_row.exit ], [ 4, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 5) i32 @decompress_smooth_data(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67   ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.n = load i32, ptr %i.h, align 4, !tbaa !81   ; 2 uses
  %i.o = load i32, ptr %i.i, align 4, !tbaa !110  ; 2 uses
  %.not = icmp sgt i32 %i.n, %i.o
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !107  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !130
  %.not701 = icmp eq i32 %i.r, 0
  br i1 %.not701, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i32 %i.n, %i.o
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.k, align 4, !tbaa !131
  %i.u = icmp eq i32 %i.t, 0
  %i.v = select i1 %i.u, i32 2, i32 0
  %i.w = load i32, ptr %i.l, align 8, !tbaa !68
  %i.x = load i32, ptr %i.m, align 8, !tbaa !83
  %i.y = add i32 %i.x, %i.v
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %0) #7
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.loopexit943, label %bb.b, !llvm.loop !132

.critedge:                                        ; preds = %bb.e, %bb.b, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !49
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph996, label %._crit_edge997

.lr.ph996:                                        ; preds = %.critedge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 18 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 6 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 34 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph996, %.loopexit
  %indvars.iv1000 = phi i64 [ 0, %.lr.ph996 ], [ %indvars.iv.next1001, %.loopexit ] ; 12 uses
  %.0598995 = phi i64 [ 0, %.lr.ph996 ], [ %.2600, %.loopexit ] ; 2 uses
  %.0601994 = phi i64 [ 0, %.lr.ph996 ], [ %.2603, %.loopexit ] ; 2 uses
  %.0605993 = phi i64 [ 0, %.lr.ph996 ], [ %.2607, %.loopexit ] ; 2 uses
  %.0610991 = phi i64 [ 0, %.lr.ph996 ], [ %.2612, %.loopexit ] ; 2 uses
  %.0625989 = phi ptr [ %i.ah, %.lr.ph996 ], [ %i.va, %.loopexit ] ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0625989, i64 52
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !113
  %.not702 = icmp eq i32 %i.ax, 0
  br i1 %.not702, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = load i32, ptr %i.m, align 8, !tbaa !83  ; 5 uses
  %i.az = add i32 %i.ay, 1
  %i.ba = icmp ult i32 %i.az, %i.e
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.0625989, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !51 ; 3 uses
  %i.bd = mul nsw i32 %i.bc, 3
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.be = icmp ult i32 %i.ay, %i.e
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.0625989, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !51 ; 3 uses
  %i.bh = shl nsw i32 %i.bg, 1
  br label %bb.m

end_hunk_0
