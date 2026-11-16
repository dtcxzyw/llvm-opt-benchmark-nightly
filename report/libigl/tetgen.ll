Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 445
loop-unroll.NumRuntimeUnrolled: 112
loop-unroll.NumUnrolled: 560
begin_hunk_0_@_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd:bb.a

.lr.ph89.preheader:                               ; preds = %._crit_edge83
  %i.u = zext nneg i32 %.0 to i64
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %bb.g
  %indvars.iv103 = phi i64 [ %i.u, %.lr.ph89.preheader ], [ %indvars.iv.next104, %bb.g ] ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv103
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !108
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.j
  %i.y = load double, ptr %i.x, align 8, !tbaa !54
  %i.z = fcmp olt double %i.y, %.066
  br i1 %i.z, label %._crit_edge90.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph89
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, -1
  %i.aa = icmp sgt i64 %indvars.iv103, 0
  br i1 %i.aa, label %.lr.ph89, label %._crit_edge90, !llvm.loop !724

._crit_edge90.loopexit.split.loop.exit:           ; preds = %.lr.ph89
  %i.ab = trunc nuw nsw i64 %indvars.iv103 to i32
  br label %._crit_edge90

._crit_edge90:                                    ; preds = %bb.g, %._crit_edge90.loopexit.split.loop.exit, %._crit_edge83
  %.1.lcssa = phi i32 [ %.0, %._crit_edge83 ], [ %i.ab, %._crit_edge90.loopexit.split.loop.exit ], [ -1, %bb.g ] ; 3 uses
  %i.ac = add nsw i32 %.1.lcssa, 1
  %i.ad = icmp eq i32 %.163.lcssa, %i.ac
  br i1 %i.ad, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge90
  %i.ae = sext i32 %.163.lcssa to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108
  %i.ah = sext i32 %.1.lcssa to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !108
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !108
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !108
  br label %.preheader, !llvm.loop !725

.preheader68:                                     ; preds = %bb.e, %bb.k
  %.264 = phi i32 [ %.365.lcssa, %bb.k ], [ 0, %bb.e ] ; 3 uses
  %.2 = phi i32 [ %.3.lcssa, %bb.k ], [ %i.i, %bb.e ] ; 3 uses
  %i.ak = icmp slt i32 %.264, %2
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader68
  %i.al = sext i32 %.264 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ %i.al, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !108
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.j
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !54
  %i.aq = fcmp ugt double %i.ap, %.066
  br i1 %i.aq, label %bb.i, label %._crit_edge.loopexit.split.loop.exit

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !726

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.ar = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.loopexit.split.loop.exit, %.preheader68
  %.365.lcssa = phi i32 [ %.264, %.preheader68 ], [ %i.ar, %._crit_edge.loopexit.split.loop.exit ], [ %2, %bb.i ] ; 4 uses
  %i.as = icmp sgt i32 %.2, -1
  br i1 %i.as, label %.lr.ph75.preheader, label %._crit_edge76

.lr.ph75.preheader:                               ; preds = %._crit_edge
  %i.at = zext nneg i32 %.2 to i64
  br label %.lr.ph75

.lr.ph75:                                         ; preds = %.lr.ph75.preheader, %bb.j
  %indvars.iv96 = phi i64 [ %i.at, %.lr.ph75.preheader ], [ %indvars.iv.next97, %bb.j ] ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !108
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.j
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !54
  %i.ay = fcmp ogt double %i.ax, %.066
  br i1 %i.ay, label %._crit_edge76.loopexit.split.loop.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph75
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, -1
  %i.az = icmp sgt i64 %indvars.iv96, 0
  br i1 %i.az, label %.lr.ph75, label %._crit_edge76, !llvm.loop !727

._crit_edge76.loopexit.split.loop.exit:           ; preds = %.lr.ph75
  %i.ba = trunc nuw nsw i64 %indvars.iv96 to i32
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %bb.j, %._crit_edge76.loopexit.split.loop.exit, %._crit_edge
  %.3.lcssa = phi i32 [ %.2, %._crit_edge ], [ %i.ba, %._crit_edge76.loopexit.split.loop.exit ], [ -1, %bb.j ] ; 3 uses
  %i.bb = add nsw i32 %.3.lcssa, 1
  %i.bc = icmp eq i32 %.365.lcssa, %i.bb
  br i1 %i.bc, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %._crit_edge76
  %i.bd = sext i32 %.365.lcssa to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !108
  %i.bg = sext i32 %.3.lcssa to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !108
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !108
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !108
  br label %.preheader68, !llvm.loop !728

.loopexit:                                        ; preds = %._crit_edge76, %._crit_edge90
  %.4 = phi i32 [ %.163.lcssa, %._crit_edge90 ], [ %.365.lcssa, %._crit_edge76 ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10tetgenmesh13hilbert_sort3EPPdiiiddddddi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10, i32 noundef %11) local_unnamed_addr #32 align 2 {
bb.a:
  %i.a = alloca [9 x i32], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %2, ptr %i.b, align 16, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 69184
  %i.d = sext i32 %3 to i64
  %i.e = getelementptr inbounds [96 x i8], ptr %i.c, i64 %i.d
  %i.f = sext i32 %4 to i64
  %i.g = getelementptr inbounds [32 x i8], ptr %i.e, i64 %i.f ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !55
  %i.l = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %2, i32 noundef %i.i, i32 noundef %i.k, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10) ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.l, ptr %i.m, align 16, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !55
  %i.r = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %i.l, i32 noundef %i.o, i32 noundef %i.q, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.r, ptr %i.s, align 8, !tbaa !55
  %i.t = load i32, ptr %i.g, align 8, !tbaa !55
  %i.u = load i32, ptr %i.n, align 4, !tbaa !55
  %i.v = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %1, i32 noundef %i.r, i32 noundef %i.t, i32 noundef %i.u, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10) ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !55
  %i.x = sext i32 %i.r to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %1, i64 %i.x
  %i.z = sub nsw i32 %i.l, %i.r
  %i.aa = load i32, ptr %i.p, align 8, !tbaa !55
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !55
  %i.ac = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %i.y, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.ab, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10)
  %i.ad = add nsw i32 %i.ac, %i.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !55
  %i.af = sext i32 %i.l to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %1, i64 %i.af ; 2 uses
  %i.ah = sub nsw i32 %2, %i.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !55
  %i.am = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.aj, i32 noundef %i.al, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10) ; 2 uses
  %i.an = add nsw i32 %i.am, %i.l                 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !55
  %i.ap = load i32, ptr %i.j, align 8, !tbaa !55
  %i.aq = load i32, ptr %i.ai, align 4, !tbaa !55
  %i.ar = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %i.ag, i32 noundef %i.am, i32 noundef %i.ap, i32 noundef %i.aq, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10)
  %i.as = add nsw i32 %i.ar, %i.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.as, ptr %i.at, align 4, !tbaa !55
  %i.au = sext i32 %i.an to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %1, i64 %i.au
  %i.aw = sub nsw i32 %2, %i.an
  %i.ax = load i32, ptr %i.ak, align 8, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !55
  %i.ba = tail call noundef i32 @_ZN10tetgenmesh13hilbert_splitEPPdiiidddddd(ptr nonnull align 8 poison, ptr noundef %i.av, i32 noundef %i.aw, i32 noundef %i.ax, i32 noundef %i.az, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10)
  %i.bb = add nsw i32 %i.ba, %i.an
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !214 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 244
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !136 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  %i.bi = add nsw i32 %11, 1                      ; 3 uses
  %i.bj = icmp eq i32 %i.bi, %i.bg
  %or.cond = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.bk = add i32 %4, 1                           ; 3 uses
  %i.bl = sub i32 2, %4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 69952
  %i.bn = fadd double %5, %6
  %i.bo = fadd double %7, %8
  %12 = fmul double %i.bn, 5.000000e-01           ; 3 uses
  %13 = fmul double %i.bo, 5.000000e-01           ; 3 uses
  %i.bp = fadd double %9, %10
  %i.bq = fmul double %i.bp, 5.000000e-01         ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 248
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !135
  %i.bt = icmp sgt i32 %i.v, %i.bs
  br i1 %i.bt, label %bb.b, label %.peel.next.preheader

bb.b:                                             ; preds = %.preheader
  %i.bu = srem i32 %i.bk, 3
  %i.bv = load i32, ptr %i.g, align 8, !tbaa !55  ; 3 uses
  %i.bw = and i32 %i.bv, 1
  %.not.peel = icmp eq i32 %i.bw, 0               ; 2 uses
  %.0151.peel = select i1 %.not.peel, double %5, double %12
  %.0150.peel = select i1 %.not.peel, double %12, double %6
  %i.bx = and i32 %i.bv, 2
  %.not153.peel = icmp eq i32 %i.bx, 0            ; 2 uses
  %.0149.peel = select i1 %.not153.peel, double %7, double %13
  %.0148.peel = select i1 %.not153.peel, double %13, double %8
  %i.by = and i32 %i.bv, 4
  %.not154.peel = icmp eq i32 %i.by, 0            ; 2 uses
  %.0147.peel = select i1 %.not154.peel, double %9, double %i.bq
  %.0146.peel = select i1 %.not154.peel, double %i.bq, double %10
  tail call void @_ZN10tetgenmesh13hilbert_sort3EPPdiiiddddddi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %1, i32 noundef %i.v, i32 noundef %3, i32 noundef %i.bu, double noundef %.0151.peel, double noundef %.0150.peel, double noundef %.0149.peel, double noundef %.0148.peel, double noundef %.0147.peel, double noundef %.0146.peel, i32 noundef %i.bi)
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %.preheader, %bb.b
  %14 = insertelement <4 x double> poison, double %5, i64 0
  %15 = insertelement <4 x double> %14, double %12, i64 1
  %16 = insertelement <4 x double> %15, double %7, i64 2
  %17 = insertelement <4 x double> %16, double %13, i64 3 ; 2 uses
  %i.bz = shufflevector <4 x double> %17, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ca = insertelement <4 x double> %i.bz, double %6, i64 1
  %i.cb = insertelement <4 x double> %i.ca, double %8, i64 3
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.d
  %i.cc = phi i32 [ %i.ce, %bb.d ], [ %i.v, %.peel.next.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 1, %.peel.next.preheader ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !55 ; 2 uses
  %i.cf = sub nsw i32 %i.ce, %i.cc                ; 2 uses
  %i.cg = load ptr, ptr %i.bd, align 8, !tbaa !214
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 248
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !135
  %i.cj = icmp sgt i32 %i.cf, %i.ci
  br i1 %i.cj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.peel.next
  %i.ck = trunc i64 %indvars.iv to i32
  %i.cl = add i32 %i.ck, 255
  %i.cm = lshr i32 %i.cl, 1
  %.zext = and i32 %i.cm, 127                     ; 2 uses
  %i.cn = shl nuw nsw i32 %.zext, 1
  %i.co = xor i32 %i.cn, %.zext                   ; 2 uses
  %i.cp = shl i32 %i.co, %i.bk
  %i.cq = lshr i32 %i.co, %i.bl
  %i.cr = or i32 %i.cp, %i.cq
  %i.cs = and i32 %i.cr, 7
  %i.ct = xor i32 %i.cs, %3
  %i.cu = and i64 %indvars.iv, 1
  %i.cv = icmp eq i64 %i.cu, 0
  %i.cw = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.cx = getelementptr i8, ptr %i.cw, i64 69948
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  %.in = select i1 %i.cv, ptr %i.cx, ptr %i.cy
  %i.cz = load i32, ptr %.in, align 4, !tbaa !55
  %i.da = add i32 %i.bk, %i.cz
  %i.db = srem i32 %i.da, 3
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !55 ; 2 uses
  %i.de = insertelement <2 x i32> poison, i32 %i.dd, i64 0
  %i.df = shufflevector <2 x i32> %i.de, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dg = and <2 x i32> %i.df, <i32 1, i32 2>
  %i.dh = icmp eq <2 x i32> %i.dg, zeroinitializer
  %i.di = shufflevector <2 x i1> %i.dh, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dj = select <4 x i1> %i.di, <4 x double> %17, <4 x double> %i.cb ; 4 uses
  %i.dk = and i32 %i.dd, 4
  %.not154 = icmp eq i32 %i.dk, 0                 ; 2 uses
  %.0147 = select i1 %.not154, double %9, double %i.bq
  %.0146 = select i1 %.not154, double %i.bq, double %10
  %i.dl = sext i32 %i.cc to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dl
  %i.dn = extractelement <4 x double> %i.dj, i64 0
  %i.do = extractelement <4 x double> %i.dj, i64 1
  %i.dp = extractelement <4 x double> %i.dj, i64 2
  %i.dq = extractelement <4 x double> %i.dj, i64 3
  tail call void @_ZN10tetgenmesh13hilbert_sort3EPPdiiiddddddi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.dm, i32 noundef %i.cf, i32 noundef %i.ct, i32 noundef %i.db, double noundef %i.dn, double noundef %i.do, double noundef %i.dp, double noundef %i.dq, double noundef %.0147, double noundef %.0146, i32 noundef %i.bi)
  br label %bb.d

bb.d:                                             ; preds = %.peel.next, %bb.c
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !729

.loopexit:                                        ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10tetgenmesh20brio_multiscale_sortEPPdiidPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, double noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #32 align 2 {
bb.a:
  %.not = icmp slt i32 %2, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %5, align 4, !tbaa !55
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr %5, align 4, !tbaa !55
  %i.c = sitofp i32 %2 to double
  %i.d = fmul double %4, %i.c
  %i.e = fptosi double %i.d to i32                ; 2 uses
  tail call void @_ZN10tetgenmesh20brio_multiscale_sortEPPdiidPi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %1, i32 noundef %i.e, i32 noundef %3, double noundef %4, ptr noundef nonnull %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.f = sext i32 %.0 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f
  %i.h = sub nsw i32 %2, %.0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68856
  %i.j = load double, ptr %i.i, align 8, !tbaa !355
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68848
  %i.l = load double, ptr %i.k, align 8, !tbaa !354
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68872
  %i.n = load double, ptr %i.m, align 8, !tbaa !357
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68864
  %i.p = load double, ptr %i.o, align 8, !tbaa !356
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 68888
  %i.r = load double, ptr %i.q, align 8, !tbaa !359
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 68880
  %i.t = load double, ptr %i.s, align 8, !tbaa !358
  tail call void @_ZN10tetgenmesh13hilbert_sort3EPPdiiiddddddi(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef %i.g, i32 noundef %i.h, i32 noundef 0, i32 noundef 0, double noundef %i.j, double noundef %i.l, double noundef %i.n, double noundef %i.p, double noundef %i.r, double noundef %i.t, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 1, 6) i32 @_ZN10tetgenmesh9locate_dtEPdPNS_7trifaceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69984) %0, ptr noundef %1, ptr nofree noundef captures(none) initializes((8, 12)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !227    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68592
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !348  ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !227
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !216
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68584 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !246
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !216
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, -16
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %2, align 8, !tbaa !227
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 22 uses
  store i32 0, ptr %i.p, align 8, !tbaa !232
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.g
  %storemerge73 = phi i32 [ 0, %bb.e ], [ %i.aj, %bb.g ]
  %i.q = load ptr, ptr %2, align 8, !tbaa !227    ; 3 uses
  %i.r = sext i32 %storemerge73 to i64            ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !55
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !216
  %i.x = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.r
  %i.y = load i32, ptr %i.x, align 4, !tbaa !55
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !216
  %i.ac = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.r
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !55
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !216
  %i.ah = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %i.w, ptr noundef %i.ab, ptr noundef %i.ag, ptr noundef %1)
  %i.ai = fcmp olt double %i.ah, 0.000000e+00
  %.pr = load i32, ptr %i.p, align 8, !tbaa !232  ; 3 uses
  br i1 %i.ai, label %.loopexit65, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %.pr, 1                     ; 3 uses
  store i32 %i.aj, ptr %i.p, align 8, !tbaa !232
  %i.ak = icmp slt i32 %.pr, 3
  br i1 %i.ak, label %bb.f, label %.loopexit65, !llvm.loop !730

.loopexit65:                                      ; preds = %bb.g, %bb.f
  %i.al = phi i32 [ %.pr, %bb.f ], [ %i.aj, %bb.g ] ; 2 uses
  %i.am = icmp eq i32 %i.al, 4
  br i1 %i.am, label %bb.h, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit65
  %.pre = load ptr, ptr %2, align 8, !tbaa !227
  br label %.preheader

bb.h:                                             ; preds = %.loopexit65
  %i.an = tail call ptr @__cxa_allocate_exception(i64 4) #41 ; 2 uses
  store i32 2, ptr %i.an, align 16, !tbaa !55
  tail call void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIi, ptr null) #44
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %bb.w
  %i.ao = phi i32 [ %i.al, %.preheader.preheader ], [ %i.eu, %bb.w ]
  %i.ap = phi ptr [ %.pre, %.preheader.preheader ], [ %i.ew, %bb.w ]
  %i.aq = sext i32 %i.ao to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !55
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !216 ; 4 uses
  %i.aw = icmp eq ptr %i.av, %1
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader
  %i.ax = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.aq
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !55 ; 2 uses
  store i32 %i.ay, ptr %i.p, align 8, !tbaa !232
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !55
  store i32 %i.bb, ptr %i.p, align 8, !tbaa !232
  br label %.loopexit

bb.j:                                             ; preds = %.preheader
  %i.bc = tail call i32 @rand() #41
  %i.bd = srem i32 %i.bc, 3                       ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 0
  %.pre82 = load i32, ptr %i.p, align 8, !tbaa !232 ; 2 uses
  br i1 %i.be, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.bf = sext i32 %.pre82 to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !55 ; 3 uses
  store i32 %i.bh, ptr %i.p, align 8, !tbaa !232
  %exitcond.not = icmp eq i32 %i.bd, 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !55 ; 3 uses
  store i32 %i.bk, ptr %i.p, align 8, !tbaa !232
  %exitcond.not.1 = icmp eq i32 %i.bd, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !55 ; 2 uses
  store i32 %i.bn, ptr %i.p, align 8, !tbaa !232
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %bb.j
  %i.bo = phi i32 [ %.pre82, %bb.j ], [ %i.bh, %.lr.ph ], [ %i.bk, %.lr.ph.1 ], [ %i.bn, %.lr.ph.2 ]
  %i.bp = load ptr, ptr %2, align 8, !tbaa !227   ; 2 uses
  %i.bq = sext i32 %i.bo to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !55
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bt
end_hunk_0
