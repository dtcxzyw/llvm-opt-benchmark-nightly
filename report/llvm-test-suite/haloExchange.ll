inline.NumInlined: 27
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@initAtomHaloExchange:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @unloadAtomsBuffer, ptr %i.aa, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @destroyAtomsExchange, ptr %i.ab, align 8, !tbaa !13
  %i.ac = tail call noalias noundef dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #12 ; 15 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !4   ; 2 uses
  %i.ae = shl i32 %i.ad, 1
  %i.af = add i32 %i.ae, 4
  %i.ag = load i32, ptr %i.q, align 8, !tbaa !4
  %i.ah = add nsw i32 %i.ag, 2                    ; 2 uses
  %i.ai = mul nsw i32 %i.af, %i.ah                ; 2 uses
  store i32 %i.ai, ptr %i.ac, align 8, !tbaa !4
  %i.aj = load i32, ptr %1, align 8, !tbaa !4
  %i.ak = shl i32 %i.aj, 1
  %i.al = add i32 %i.ak, 4                        ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.ah                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !4
  %i.ao = add nsw i32 %i.ad, 2
  %i.ap = mul nsw i32 %i.al, %i.ao                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %i.ai, ptr %i.ar, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 %i.am, ptr %i.as, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  store i32 %i.ap, ptr %i.at, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  br label %bb.b

.preheader:                                       ; preds = %mkAtomCellList.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %calloc = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  store ptr %calloc, ptr %i.av, align 8, !tbaa !14
  %calloc85 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store ptr %calloc85, ptr %i.aw, align 8, !tbaa !14
  %calloc86 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store ptr %calloc86, ptr %i.ax, align 8, !tbaa !14
  %calloc87 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store ptr %calloc87, ptr %i.ay, align 8, !tbaa !14
  %calloc88 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store ptr %calloc88, ptr %i.az, align 8, !tbaa !14
  %calloc89 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  store ptr %calloc89, ptr %i.ba, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.d, label %bb.e

bb.b:                                             ; preds = %bb.a, %mkAtomCellList.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mkAtomCellList.exit ] ; 9 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 2
  %i.bi = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934592, 8589934589) %i.bh) #12 ; 2 uses
  %i.bj = load i32, ptr %1, align 8, !tbaa !4
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = load i32, ptr %i.n, align 4, !tbaa !4
  %i.bm = add nsw i32 %i.bl, 1
  %i.bn = load i32, ptr %i.q, align 8, !tbaa !4
  %i.bo = add nsw i32 %i.bn, 1
  %i.bp = icmp eq i64 %indvars.iv, 0
  %spec.select.i = select i1 %i.bp, i32 1, i32 %i.bk ; 3 uses
  %i.bq = icmp eq i64 %indvars.iv, 1
  %i.br = add nsw i32 %spec.select.i, -2
  %.042.i = select i1 %i.bq, i32 %i.br, i32 -1    ; 2 uses
  %i.bs = icmp eq i64 %indvars.iv, 2
  %.039.i = select i1 %i.bs, i32 1, i32 %i.bm     ; 3 uses
  %i.bt = icmp eq i64 %indvars.iv, 3
  %i.bu = add nsw i32 %.039.i, -2
  %.040.i = select i1 %i.bt, i32 %i.bu, i32 -1    ; 2 uses
  %i.bv = icmp eq i64 %indvars.iv, 4
  %.037.i = select i1 %i.bv, i32 1, i32 %i.bo     ; 3 uses
  %i.bw = icmp eq i64 %indvars.iv, 5
  %i.bx = add nsw i32 %.037.i, -2
  %.038.i = select i1 %i.bw, i32 %i.bx, i32 -1    ; 2 uses
  %i.by = icmp slt i32 %.042.i, %spec.select.i
  %i.bz = icmp slt i32 %.040.i, %.039.i
  %or.cond.i = select i1 %i.by, i1 %i.bz, i1 false
  %i.ca = icmp slt i32 %.038.i, %.037.i
  %or.cond60.i = select i1 %or.cond.i, i1 %i.ca, i1 false
  br i1 %or.cond60.i, label %.preheader43.us.i, label %mkAtomCellList.exit

.preheader43.us.i:                                ; preds = %bb.b, %._crit_edge48.split.us.us.i
  %.03551.us.i = phi i32 [ %i.cf, %._crit_edge48.split.us.us.i ], [ %.042.i, %bb.b ] ; 2 uses
  %.03650.us.i = phi i64 [ %indvars.iv.next.i, %._crit_edge48.split.us.us.i ], [ 0, %bb.b ]
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge.us.us.i, %.preheader43.us.i
  %.03447.us.us.i = phi i32 [ %.040.i, %.preheader43.us.i ], [ %i.ce, %._crit_edge.us.us.i ] ; 2 uses
  %.146.us.us.i = phi i64 [ %.03650.us.i, %.preheader43.us.i ], [ %indvars.iv.next.i, %._crit_edge.us.us.i ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ %.146.us.us.i, %.preheader.us.us.i ] ; 2 uses
  %.045.us.us.i = phi i32 [ %i.cd, %bb.c ], [ %.038.i, %.preheader.us.us.i ] ; 2 uses
  %i.cb = tail call i32 @getBoxFromTuple(ptr noundef nonnull %1, i32 noundef %.03551.us.i, i32 noundef %.03447.us.us.i, i32 noundef %.045.us.us.i) #13
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !4
  %i.cd = add i32 %.045.us.us.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cd, %.037.i
  br i1 %exitcond.not.i, label %._crit_edge.us.us.i, label %bb.c

._crit_edge.us.us.i:                              ; preds = %bb.c
  %i.ce = add i32 %.03447.us.us.i, 1              ; 2 uses
  %exitcond57.not.i = icmp eq i32 %i.ce, %.039.i
  br i1 %exitcond57.not.i, label %._crit_edge48.split.us.us.i, label %.preheader.us.us.i

._crit_edge48.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %i.cf = add i32 %.03551.us.i, 1                 ; 2 uses
  %exitcond58.not.i = icmp eq i32 %i.cf, %spec.select.i
  br i1 %exitcond58.not.i, label %mkAtomCellList.exit, label %.preheader43.us.i

mkAtomCellList.exit:                              ; preds = %._crit_edge48.split.us.us.i, %bb.b
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store ptr %i.bi, ptr %i.cg, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.preheader, label %bb.b

bb.d:                                             ; preds = %.preheader
  store double 1.000000e+00, ptr %calloc, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader
  %i.ch = load i32, ptr %0, align 4, !tbaa !4
  %i.ci = add nsw i32 %i.ch, -1
  %i.cj = icmp eq i32 %i.bc, %i.ci
  br i1 %i.cj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double -1.000000e+00, ptr %calloc85, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4  ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %calloc86, i64 8
  store double 1.000000e+00, ptr %i.cn, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = add nsw i32 %i.cp, -1
  %i.cr = icmp eq i32 %i.cl, %i.cq
  br i1 %i.cr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw i8, ptr %calloc87, i64 8
  store double -1.000000e+00, ptr %i.cs, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4  ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %calloc88, i64 16
  store double 1.000000e+00, ptr %i.cw, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = add nsw i32 %i.cy, -1
  %i.da = icmp eq i32 %i.cu, %i.cz
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %calloc89, i64 16
  store double -1.000000e+00, ptr %i.db, align 8, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.ac, ptr %i.dc, align 8, !tbaa !20
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @loadAtomsBuffer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = sext i32 %2 to i64                       ; 3 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %4 = load <2 x double>, ptr %i.d, align 8, !tbaa !18
  %5 = load <2 x double>, ptr %i.g, align 8, !tbaa !18
  %6 = fmul <2 x double> %4, %5                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.k = load double, ptr %i.j, align 8, !tbaa !18
  %i.l = fmul double %i.i, %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.r = icmp sgt i32 %i.n, 0
  br i1 %i.r, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.trip.count = zext nneg i32 %i.n to i64
  %7 = extractelement <2 x double> %6, i64 0
  %8 = extractelement <2 x double> %6, i64 1
  br label %bb.b

._crit_edge68.loopexit:                           ; preds = %._crit_edge
  %i.x = mul i32 %.1.lcssa, 56
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge68.loopexit, %bb.a
  %.060.lcssa = phi i32 [ 0, %bb.a ], [ %i.x, %._crit_edge68.loopexit ]
  ret i32 %.060.lcssa

bb.b:                                             ; preds = %.lr.ph67, %._crit_edge
  %indvars.iv75 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next76, %._crit_edge ] ; 2 uses
  %.06065 = phi i32 [ 0, %.lr.ph67 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv75
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4    ; 2 uses
  %i.aa = shl i32 %i.z, 6                         ; 2 uses
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !32  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37
  %i.ao = sext i32 %i.aa to i64
  %i.ap = sext i32 %.06065 to i64
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.aq = trunc nsw i64 %indvars.iv.next71 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.1.lcssa = phi i32 [ %.06065, %bb.b ], [ %i.aq, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge68.loopexit, label %bb.b

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv70 = phi i64 [ %i.ap, %.lr.ph ], [ %indvars.iv.next71, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = getelementptr inbounds [56 x i8], ptr %3, i64 %indvars.iv70 ; 8 uses
  store i32 %i.as, ptr %i.at, align 8, !tbaa !38
  %i.au = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !40
  %i.ax = getelementptr inbounds [24 x i8], ptr %i.al, i64 %indvars.iv ; 3 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !18
  %i.az = fadd double %7, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store double %i.az, ptr %i.ba, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !18
  %i.bd = fadd double %8, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store double %i.bd, ptr %i.be, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !18
  %i.bh = fadd double %i.l, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store double %i.bh, ptr %i.bi, align 8, !tbaa !43
  %i.bj = getelementptr inbounds [24 x i8], ptr %i.an, i64 %indvars.iv ; 3 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store double %i.bk, ptr %i.bl, align 8, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store double %i.bn, ptr %i.bo, align 8, !tbaa !45
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store double %i.bq, ptr %i.br, align 8, !tbaa !46
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bs = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.bt = add nsw i32 %i.bs, %i.aa
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.c, label %._crit_edge.loopexit
}

; Function Attrs: nounwind uwtable
define internal void @unloadAtomsBuffer(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = udiv i64 %i.a, 56                        ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %4, i64 %indvars.iv ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.t = load double, ptr %i.s, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.v = load double, ptr %i.u, align 8, !tbaa !46
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !32
  tail call void @putAtomInBox(ptr noundef %i.w, ptr noundef %i.x, i32 noundef %i.h, i32 noundef %i.j, double noundef %i.l, double noundef %i.n, double noundef %i.p, double noundef %i.r, double noundef %i.t, double noundef %i.v) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @destroyAtomsExchange(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.c) #13
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.d) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.h) #13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.j) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.l) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.n) #13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.p) #13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.r) #13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.t) #13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.v) #13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.x) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @initForceHaloExchange(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #12 ; 12 uses
  %i.b = tail call i32 @processorNum(ptr noundef %0, i32 noundef -1, i32 noundef 0, i32 noundef 0) #13
  store i32 %i.b, ptr %i.a, align 8, !tbaa !4
  %i.c = tail call i32 @processorNum(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.c, ptr %i.d, align 4, !tbaa !4
  %i.e = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !4
  %i.g = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.g, ptr %i.h, align 4, !tbaa !4
  %i.i = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef -1) #13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.i, ptr %i.j, align 8, !tbaa !4
  %i.k = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 1) #13
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.k, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @loadForceBuffer, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @unloadForceBuffer, ptr %i.o, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @destroyForceExchange, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !4
  %i.u = load i32, ptr %1, align 8, !tbaa !4
  %i.v = add nsw i32 %i.u, 2                      ; 2 uses
  %i.w = mul nsw i32 %i.v, %i.t
  %i.x = add nsw i32 %i.r, 2
  %i.y = mul nsw i32 %i.v, %i.x
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %i.y)
  %i.aa = shl i32 %i.z, 9
  store i32 %i.aa, ptr %i.m, align 8, !tbaa !8
  %i.ab = tail call noalias noundef dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #12 ; 10 uses
  %i.ac = load i32, ptr %i.q, align 4, !tbaa !4   ; 2 uses
  %i.ad = load i32, ptr %i.s, align 8, !tbaa !4   ; 2 uses
  %i.ae = mul nsw i32 %i.ad, %i.ac                ; 2 uses
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !4
  %i.af = load i32, ptr %1, align 8, !tbaa !4
  %i.ag = add nsw i32 %i.af, 2                    ; 2 uses
  %i.ah = mul nsw i32 %i.ag, %i.ad                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !4
  %i.aj = add nsw i32 %i.ac, 2
  %i.ak = mul nsw i32 %i.ag, %i.aj                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.ae, ptr %i.am, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 %i.ah, ptr %i.an, align 4, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i32 %i.ak, ptr %i.ao, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  br label %bb.c

bb.b:                                             ; preds = %mkForceRecvCellList.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.ab, ptr %i.ar, align 8, !tbaa !20
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a, %mkForceRecvCellList.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %mkForceRecvCellList.exit ] ; 5 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 2                    ; 2 uses
  %i.aw = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934592, 8589934589) %i.av) #12 ; 2 uses
  %i.ax = load i32, ptr %1, align 8, !tbaa !4     ; 4 uses
  %i.ay = load i32, ptr %i.q, align 4, !tbaa !4   ; 6 uses
  %i.az = load i32, ptr %i.s, align 8, !tbaa !4   ; 6 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  switch i32 %i.ba, label %.preheader50.lr.ph.i [
    i32 5, label %bb.g
    i32 1, label %bb.d
    i32 2, label %bb.h
    i32 3, label %bb.e
    i32 4, label %bb.f
end_hunk_0
