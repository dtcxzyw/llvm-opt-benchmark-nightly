inline.NumInlined: 4
begin_hunk_0_@expand1:bb.a

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %i.be = tail call i32 @most_frequent(ptr noundef nonnull %1, ptr noundef %3) ; 2 uses
  %i.bf = and i32 %i.be, 31
  %i.bg = shl nuw i32 1, %i.bf                    ; 2 uses
  %i.bh = ashr i32 %i.be, 5
  %i.bi = add nsw i32 %i.bh, 1
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = or i32 %i.bg, %i.bl
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !4
  %i.bn = xor i32 %i.bg, -1
  %i.bo = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bj ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = and i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !4
  tail call void @essen_parts(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  %i.br = load i32, ptr %i.ay, align 8, !tbaa !23
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph, label %.preheader

.lr.ph53:                                         ; preds = %.preheader, %.lr.ph53
  tail call void @mincov(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3)
  %i.bt = load i32, ptr %i.i, align 8, !tbaa !23
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph53, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph53, %.preheader
  %i.bv = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %2, ptr noundef %2, ptr noundef %3) #10 ; 0 uses
  ret void
}

declare ptr @set_diff(...) local_unnamed_addr #2

declare i32 @setp_empty(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @essen_parts(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !25
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !26
  %i.d = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.b, ptr noundef %i.c) #10 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %i.i = load i32, ptr %0, align 8, !tbaa !22
  %i.j = mul nsw i32 %i.i, %i.h                   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %.idx
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph116, label %._crit_edge117

.lr.ph116:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph116, %.thread
  %.0112 = phi ptr [ %i.f, %.lr.ph116 ], [ %i.dm, %.thread ] ; 8 uses
  %i.o = load i32, ptr %.0112, align 4, !tbaa !4
  %i.p = and i32 %i.o, 8192
  %.not84 = icmp eq i32 %i.p, 0
  br i1 %.not84, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !27 ; 4 uses
  %.not85 = icmp eq i32 %i.q, -1
  br i1 %.not85, label %.loopexit97, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %.0112, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = getelementptr inbounds [4 x i8], ptr %2, i64 %i.r
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = and i32 %i.v, %i.t                       ; 2 uses
  %i.x = lshr i32 %i.w, 1
  %i.y = or i32 %i.x, %i.w
  %i.z = xor i32 %i.y, -1
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 104), align 8, !tbaa !28
  %i.ab = and i32 %i.aa, %i.z                     ; 5 uses
  %.not86 = icmp eq i32 %i.ab, 0
  br i1 %.not86, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = and i32 %i.ab, 255
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = lshr i32 %i.ab, 8
  %i.ah = and i32 %i.ag, 255
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = add nsw i32 %i.ak, %i.af
  %i.am = lshr i32 %i.ab, 16
  %i.an = and i32 %i.am, 255
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = add nsw i32 %i.al, %i.aq
  %i.as = lshr i32 %i.ab, 24
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = add nsw i32 %i.ar, %i.av                ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.068 = phi i32 [ %i.aw, %bb.e ], [ 0, %bb.d ]  ; 2 uses
  %i.ay = icmp sgt i32 %i.q, 1
  br i1 %i.ay, label %.lr.ph.preheader, label %.loopexit97

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.1102 = phi i32 [ %.068, %.lr.ph.preheader ], [ %.3, %bb.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.0112, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = and i32 %i.bc, %i.ba                    ; 2 uses
  %i.be = lshr i32 %i.bd, 1
  %i.bf = or i32 %i.be, %i.bd
  %i.bg = and i32 %i.bf, 1431655765               ; 2 uses
  %i.bh = xor i32 %i.bg, 1431655765               ; 4 uses
  %.not87 = icmp eq i32 %i.bg, 1431655765
  br i1 %.not87, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.bi = icmp eq i32 %.1102, 1
  br i1 %i.bi, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = and i32 %i.bh, 85
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = lshr i32 %i.bh, 8
  %i.bo = and i32 %i.bn, 85
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = lshr i32 %i.bh, 16
  %i.bt = and i32 %i.bs, 85
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = lshr i32 %i.bh, 24
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = add i32 %i.bm, %.1102
  %i.cc = add i32 %i.cb, %i.br
  %i.cd = add i32 %i.cc, %i.bw
  %i.ce = add i32 %i.cd, %i.ca                    ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.3 = phi i32 [ %i.ce, %bb.h ], [ %.1102, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit97, label %.lr.ph

.loopexit97:                                      ; preds = %bb.i, %bb.f, %bb.c
  %.5 = phi i32 [ 0, %bb.c ], [ %.068, %bb.f ], [ %.3, %bb.i ] ; 2 uses
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29 ; 2 uses
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17 ; 2 uses
  %i.ci = icmp slt i32 %i.cg, %i.ch
  br i1 %i.ci, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %.loopexit97
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !15
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !30
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !31
  %i.cm = sext i32 %i.cg to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph109, %.loopexit
  %indvars.iv124 = phi i64 [ %i.cm, %.lr.ph109 ], [ %indvars.iv.next125, %.loopexit ] ; 4 uses
  %.6107 = phi i32 [ %.5, %.lr.ph109 ], [ %.7, %.loopexit ] ; 3 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv124
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !16
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv124
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4  ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %indvars.iv124
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4  ; 2 uses
  %.not88103 = icmp sgt i32 %i.cs, %i.cq
  br i1 %.not88103, label %._crit_edge, label %.lr.ph105.preheader

.lr.ph105.preheader:                              ; preds = %bb.j
  %i.ct = sext i32 %i.cs to i64
  %4 = sext i32 %i.cq to i64
  br label %.lr.ph105

bb.k:                                             ; preds = %.lr.ph105
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, 1 ; 2 uses
  %.not88 = icmp sgt i64 %indvars.iv.next121, %4
  br i1 %.not88, label %._crit_edge, label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105.preheader, %bb.k
  %indvars.iv120 = phi i64 [ %i.ct, %.lr.ph105.preheader ], [ %indvars.iv.next121, %bb.k ] ; 4 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %.0112, i64 %indvars.iv120
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv120
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = and i32 %i.cx, %i.cv
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv120
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = and i32 %i.cy, %i.da
  %.not89 = icmp eq i32 %i.db, 0
  br i1 %.not89, label %bb.k, label %.loopexit

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %i.dc = add nsw i32 %.6107, 1
  %i.dd = icmp sgt i32 %.6107, 0
  br i1 %i.dd, label %.thread, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph105, %._crit_edge
  %.7 = phi i32 [ %i.dc, %._crit_edge ], [ %.6107, %.lr.ph105 ] ; 2 uses
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1 ; 2 uses
  %lftr.wideiv127 = trunc i64 %indvars.iv.next125 to i32
  %exitcond128.not = icmp eq i32 %i.ch, %lftr.wideiv127
  br i1 %exitcond128.not, label %._crit_edge110, label %bb.j

._crit_edge110:                                   ; preds = %.loopexit, %.loopexit97
  %.6.lcssa = phi i32 [ %.5, %.loopexit97 ], [ %.7, %.loopexit ]
  %i.de = icmp eq i32 %.6.lcssa, 0
  br i1 %i.de, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge110
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.2) #10
  br label %.thread

bb.m:                                             ; preds = %._crit_edge110
  %i.df = tail call ptr (ptr, ptr, ptr, ...) @force_lower(ptr noundef %i.b, ptr noundef nonnull %.0112, ptr noundef %2) #10 ; 0 uses
  %i.dg = load i32, ptr %i.n, align 8, !tbaa !23
  %i.dh = add nsw i32 %i.dg, -1
  store i32 %i.dh, ptr %i.n, align 8, !tbaa !23
  %i.di = load i32, ptr %.0112, align 4, !tbaa !4
  %i.dj = and i32 %i.di, -8193
  store i32 %i.dj, ptr %.0112, align 4, !tbaa !4
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %._crit_edge, %bb.e, %bb.b, %bb.l, %bb.m
  %i.dk = load i32, ptr %0, align 8, !tbaa !22
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %.0112, i64 %i.dl ; 2 uses
  %i.dn = icmp ult ptr %i.dm, %i.l
  br i1 %i.dn, label %bb.b, label %._crit_edge117

._crit_edge117:                                   ; preds = %.thread, %bb.a
  %i.do = tail call i32 (ptr, ...) @setp_empty(ptr noundef %i.b) #10
  %.not = icmp eq i32 %i.do, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge117
  %i.dp = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %3, ptr noundef %3, ptr noundef %i.b) #10 ; 0 uses
  tail call void @elim_lowering(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge117
  %i.dq = load i32, ptr @debug, align 4, !tbaa !4
  %i.dr = and i32 %i.dq, 8
  %.not83 = icmp eq i32 %i.dr, 0
  br i1 %.not83, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = tail call ptr (ptr, ...) @pc1(ptr noundef %2) #10
  %i.dt = tail call ptr (ptr, ...) @pc2(ptr noundef %3) #10
  %i.du = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %i.ds, ptr noundef %i.dt) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void
}

declare void @fatal(...) local_unnamed_addr #2

declare ptr @force_lower(...) local_unnamed_addr #2

declare ptr @pc2(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @essen_raising(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !25
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 10 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !26
  %i.d = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.b, ptr noundef %i.c) #10 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %i.i = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.j = mul nsw i32 %i.i, %i.h                   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %.idx
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %scevgep35 = getelementptr i8, ptr %i.b, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %i.n = phi i32 [ %i.ap, %.loopexit ], [ %i.i, %.lr.ph.preheader ]
  %.03133 = phi ptr [ %i.ar, %.loopexit ], [ %i.f, %.lr.ph.preheader ] ; 6 uses
  %i.o = load i32, ptr %.03133, align 4, !tbaa !4
  %i.p = and i32 %i.o, 8192
  %.not32 = icmp eq i32 %i.p, 0
  br i1 %.not32, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = load i32, ptr %i.b, align 4, !tbaa !4
  %i.r = and i32 %i.q, 1023                       ; 3 uses
  %i.s = zext nneg i32 %i.r to i64                ; 6 uses
  %i.t = add nuw nsw i64 %i.s, 1
  %i.u = icmp ne i32 %i.r, 0
  %umin40.neg = sext i1 %i.u to i64
  %i.v = add nsw i64 %i.t, %umin40.neg            ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %.not49 = icmp eq i32 %i.r, 0
  %i.w = select i1 %.not49, i64 0, i64 4          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.w
  %i.x = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  %scevgep36 = getelementptr i8, ptr %scevgep35, i64 %i.x
  %scevgep37 = getelementptr i8, ptr %.03133, i64 %i.w
  %scevgep38 = getelementptr i8, ptr %.03133, i64 4
  %scevgep39 = getelementptr i8, ptr %scevgep38, i64 %i.x
  %bound0 = icmp ult ptr %scevgep, %scevgep39
  %bound1 = icmp ult ptr %scevgep37, %scevgep36
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  %i.y = sub nsw i64 %i.s, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = sub i64 %i.s, %index                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -12 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ab, align 4, !tbaa !4, !alias.scope !32, !noalias !35
  %wide.load41 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !4, !alias.scope !32, !noalias !35
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.03133, i64 %i.z ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -12
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -28
  %wide.load43 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !4, !alias.scope !35
  %wide.load44 = load <4 x i32>, ptr %i.af, align 4, !tbaa !4, !alias.scope !35
  %i.ag = or <4 x i32> %wide.load43, %wide.load
  %i.ah = or <4 x i32> %wide.load44, %wide.load41
  store <4 x i32> %i.ag, ptr %i.ab, align 4, !tbaa !4, !alias.scope !32, !noalias !35
  store <4 x i32> %i.ah, ptr %i.ac, align 4, !tbaa !4, !alias.scope !32, !noalias !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %indvars.iv.ph = phi i64 [ %i.s, %vector.memcheck ], [ %i.s, %bb.b ], [ %i.y, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.03133, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = or i32 %i.am, %i.ak
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ao = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ao, label %scalar.ph, label %.loopexit.loopexit, !llvm.loop !40

.loopexit.loopexit:                               ; preds = %scalar.ph, %middle.block
  %.pre = load i32, ptr %0, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph
  %i.ap = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.n, %.lr.ph ] ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.03133, i64 %i.aq ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.l
  br i1 %i.as, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.at = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.b, ptr noundef %2, ptr noundef %i.b) #10 ; 0 uses
  %i.au = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %1, ptr noundef %1, ptr noundef %i.b) #10 ; 0 uses
  %i.av = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %2, ptr noundef %2, ptr noundef %i.b) #10 ; 0 uses
  %i.aw = load i32, ptr @debug, align 4, !tbaa !4
  %i.ax = and i32 %i.aw, 8
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ay = tail call ptr (ptr, ...) @pc1(ptr noundef %1) #10
  %i.az = tail call ptr (ptr, ...) @pc2(ptr noundef %2) #10
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %i.ay, ptr noundef %i.az) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @elim_lowering(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !25
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.b, ptr noundef %2, ptr noundef %3) #10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  %i.h = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.i = mul nsw i32 %i.h, %i.g                   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.idx = shl nsw i64 %i.j, 2
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %.idx
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %bb.a
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph101, %.thread85
  %i.q = phi i32 [ %i.h, %.lr.ph101 ], [ %i.bl, %.thread85 ] ; 3 uses
  %.06397 = phi ptr [ %i.e, %.lr.ph101 ], [ %i.bn, %.thread85 ] ; 7 uses
  %i.r = load i32, ptr %.06397, align 4, !tbaa !4
  %i.s = and i32 %i.r, 8192
  %.not77 = icmp eq i32 %i.s, 0
  br i1 %.not77, label %.thread85, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !27 ; 4 uses
  %.not78 = icmp eq i32 %i.t, -1
  br i1 %.not78, label %.loopexit88, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %.06397, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.u
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = and i32 %i.y, %i.w                       ; 2 uses
  %i.aa = lshr i32 %i.z, 1
  %i.ab = or i32 %i.aa, %i.z
  %i.ac = xor i32 %i.ab, -1
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 104), align 8, !tbaa !28
  %i.ae = and i32 %i.ad, %i.ac
  %.not79 = icmp eq i32 %i.ae, 0
  br i1 %.not79, label %.preheader, label %.loopexit87

.preheader:                                       ; preds = %bb.d
  %i.af = icmp sgt i32 %i.t, 1
  br i1 %i.af, label %.lr.ph.preheader, label %.loopexit88

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.t to i64
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit88, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.06397, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = and i32 %i.aj, %i.ah                    ; 2 uses
  %i.al = lshr i32 %i.ak, 1
  %i.am = or i32 %i.al, %i.ak
  %i.an = and i32 %i.am, 1431655765
  %.not80 = icmp eq i32 %i.an, 1431655765
  br i1 %.not80, label %bb.e, label %.loopexit87

.loopexit88:                                      ; preds = %bb.e, %.preheader, %bb.c
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29 ; 2 uses
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph96.preheader, label %.thread85

.lr.ph96.preheader:                               ; preds = %.loopexit88
  %i.ar = sext i32 %i.ao to i64
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %bb.g
  %indvars.iv113 = phi i64 [ %i.ar, %.lr.ph96.preheader ], [ %indvars.iv.next114, %bb.g ] ; 4 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv113
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16
  %i.au = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv113
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv113
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4  ; 2 uses
  %.not8191 = icmp sgt i32 %i.ax, %i.av
  br i1 %.not8191, label %.loopexit87, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %.lr.ph96
  %i.ay = sext i32 %i.ax to i64
  %4 = sext i32 %i.av to i64
  br label %.lr.ph93

bb.f:                                             ; preds = %.lr.ph93
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, 1 ; 2 uses
  %.not81 = icmp sgt i64 %indvars.iv.next110, %4
  br i1 %.not81, label %.loopexit87, label %.lr.ph93

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %bb.f
  %indvars.iv109 = phi i64 [ %i.ay, %.lr.ph93.preheader ], [ %indvars.iv.next110, %bb.f ] ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %.06397, i64 %indvars.iv109
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv109
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = and i32 %i.bc, %i.ba
  %i.be = getelementptr inbounds [4 x i8], ptr %i.at, i64 %indvars.iv109
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = and i32 %i.bd, %i.bf
  %.not82 = icmp eq i32 %i.bg, 0
  br i1 %.not82, label %bb.f, label %bb.g

bb.g:                                             ; preds = %.lr.ph93
  %indvars.iv.next114 = add nsw i64 %indvars.iv113, 1 ; 2 uses
  %lftr.wideiv116 = trunc i64 %indvars.iv.next114 to i32
  %exitcond117.not = icmp eq i32 %i.ap, %lftr.wideiv116
  br i1 %exitcond117.not, label %.thread85, label %.lr.ph96

.loopexit87:                                      ; preds = %.lr.ph, %.lr.ph96, %bb.f, %bb.d
  %i.bh = load i32, ptr %i.p, align 8, !tbaa !23
  %i.bi = add nsw i32 %i.bh, -1
  store i32 %i.bi, ptr %i.p, align 8, !tbaa !23
  %i.bj = load i32, ptr %.06397, align 4, !tbaa !4
  %i.bk = and i32 %i.bj, -8193
  store i32 %i.bk, ptr %.06397, align 4, !tbaa !4
  %.pre = load i32, ptr %0, align 8, !tbaa !22
  br label %.thread85

.thread85:                                        ; preds = %bb.g, %.loopexit88, %bb.b, %.loopexit87
  %i.bl = phi i32 [ %.pre, %.loopexit87 ], [ %i.q, %.loopexit88 ], [ %i.q, %bb.b ], [ %i.q, %bb.g ] ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %.06397, i64 %i.bm ; 2 uses
  %i.bo = icmp ult ptr %i.bn, %i.k
  br i1 %i.bo, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.thread85, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !18 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !21
  %i.bt = load i32, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.bu = mul nsw i32 %i.bt, %i.bs                ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %.idx105 = shl nsw i64 %i.bv, 2
  %i.bw = getelementptr inbounds i8, ptr %i.bq, i64 %.idx105
  %i.bx = icmp sgt i32 %i.bu, 0
  br i1 %i.bx, label %.lr.ph104, label %.loopexit

.lr.ph104:                                        ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph104, %bb.o
  %i.bz = phi i32 [ %i.bt, %.lr.ph104 ], [ %i.cr, %bb.o ] ; 2 uses
  %.164102 = phi ptr [ %i.bq, %.lr.ph104 ], [ %i.ct, %bb.o ] ; 5 uses
  %i.ca = load i32, ptr %.164102, align 4, !tbaa !4 ; 2 uses
  %i.cb = and i32 %i.ca, 8192
  %.not74 = icmp eq i32 %i.cb, 0
  br i1 %.not74, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = and i32 %i.ca, 1023                     ; 2 uses
  %.not129 = icmp eq i32 %i.cc, 0
  %i.cd = sext i1 %.not129 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.0 = phi i32 [ %i.cc, %bb.j ], [ %i.cl, %bb.l ] ; 4 uses
  %i.ce = zext nneg i32 %.0 to i64                ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.164102, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ce
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = xor i32 %i.ci, -1
  %i.ck = and i32 %i.cg, %i.cj
  %.not75 = icmp eq i32 %i.ck, 0
  br i1 %.not75, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = add nsw i32 %.0, -1
  %i.cm = icmp sgt i32 %.0, 1
  br i1 %i.cm, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1 = phi i32 [ %.0, %bb.k ], [ %i.cd, %bb.l ]
  %.not76 = icmp eq i32 %.1, 0
  br i1 %.not76, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = load i32, ptr %i.by, align 8, !tbaa !23
  %i.co = add nsw i32 %i.cn, -1
  store i32 %i.co, ptr %i.by, align 8, !tbaa !23
  %i.cp = load i32, ptr %.164102, align 4, !tbaa !4
  %i.cq = and i32 %i.cp, -8193
  store i32 %i.cq, ptr %.164102, align 4, !tbaa !4
  %.pre118 = load i32, ptr %1, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.i, %bb.n
  %i.cr = phi i32 [ %i.bz, %bb.m ], [ %i.bz, %bb.i ], [ %.pre118, %bb.n ] ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %.164102, i64 %i.cs ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.bw
  br i1 %i.cu, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.h, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @most_frequent(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @cube, align 8, !tbaa !8
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #11 ; 5 uses
  %i.e = load i32, ptr @cube, align 8, !tbaa !8   ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = zext nneg i32 %i.e to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.d, i8 0, i64 %i.h, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %i.m = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.n = mul nsw i32 %i.m, %i.l                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.idx = shl nsw i64 %i.o, 2
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 %.idx
  %i.q = icmp sgt i32 %i.n, 0
  br i1 %i.q, label %.lr.ph47, label %.loopexit

.lr.ph47:                                         ; preds = %bb.b, %bb.d
  %i.r = phi i32 [ %i.u, %bb.d ], [ %i.m, %bb.b ]
  %.03145 = phi ptr [ %i.w, %bb.d ], [ %i.j, %bb.b ] ; 3 uses
  %i.s = load i32, ptr %.03145, align 4, !tbaa !4
  %i.t = and i32 %i.s, 8192
  %.not42 = icmp eq i32 %i.t, 0
  br i1 %.not42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph47
  tail call void (ptr, ptr, i32, ...) @set_adjcnt(ptr noundef nonnull %.03145, ptr noundef %i.d, i32 noundef 1) #10
  %.pre = load i32, ptr %0, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph47, %bb.c
  %i.u = phi i32 [ %i.r, %.lr.ph47 ], [ %.pre, %bb.c ] ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.03145, i64 %i.v ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.p
  br i1 %i.x, label %.lr.ph47, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.d
  %.pre56 = load i32, ptr @cube, align 8, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %._crit_edge
  %i.y = phi i32 [ %.pre56, %.loopexit.loopexit ], [ %i.e, %bb.b ], [ %i.e, %._crit_edge ] ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph52.preheader, label %._crit_edge53

.lr.ph52.preheader:                               ; preds = %.loopexit
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %.lr.ph52

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph52.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.03249 = phi i32 [ -1, %.lr.ph52.preheader ], [ %.133, %bb.f ] ; 3 uses
  %.03448 = phi i32 [ -1, %.lr.ph52.preheader ], [ %.135, %bb.f ] ; 2 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ab = lshr i64 %indvars.iv, 5
  %i.ac = and i64 %i.ab, 134217727
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = and i32 %i.aa, 31
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = and i32 %i.af, %i.ah
  %.not41 = icmp eq i32 %i.ai, 0
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph52
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@select_feasible:bb.a

bb.t:                                             ; preds = %bb.s
  tail call void @free(ptr noundef nonnull %i.z) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ab) #10
  ret void

._crit_edge147.split.us:                          ; preds = %bb.o, %.preheader
  %.1.lcssa = phi ptr [ %.097, %.preheader ], [ %.2.us, %bb.o ] ; 2 uses
  %i.ci = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %2, ptr noundef %2, ptr noundef %.1.lcssa) #10 ; 0 uses
  %i.cj = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %3, ptr noundef %3, ptr noundef %2) #10 ; 0 uses
  %i.ck = load i32, ptr @debug, align 4, !tbaa !4
  %i.cl = and i32 %i.ck, 8
  %.not114 = icmp eq i32 %i.cl, 0
  br i1 %.not114, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge147.split.us
  %i.cm = tail call ptr (ptr, ...) @pc1(ptr noundef %2) #10
  %i.cn = tail call ptr (ptr, ...) @pc2(ptr noundef %3) #10
  %i.co = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %i.cm, ptr noundef %i.cn) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge147.split.us
  tail call void @essen_parts(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %.preheader124
}

declare ptr @sf_new(...) local_unnamed_addr #2

declare i32 @setp_implies(...) local_unnamed_addr #2

declare void @sf_free(...) local_unnamed_addr #2

declare i32 @set_dist(...) local_unnamed_addr #2

declare i32 @setp_disjoint(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @feasibly_covered(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !25
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.b, ptr noundef %2, ptr noundef %1) #10 ; 4 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !26
  %i.e = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %3, ptr noundef %i.d) #10 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21
  %i.j = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.k = mul nsw i32 %i.j, %i.i                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.idx = shl nsw i64 %i.l, 2
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.a, %.thread
  %i.o = phi i32 [ %i.dh, %.thread ], [ %i.j, %bb.a ] ; 5 uses
  %.058103 = phi ptr [ %i.dj, %.thread ], [ %i.g, %bb.a ] ; 6 uses
  %i.p = load i32, ptr %.058103, align 4, !tbaa !4
  %i.q = and i32 %i.p, 8192
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph107
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !27 ; 4 uses
  %.not74 = icmp eq i32 %i.r, -1
  br i1 %.not74, label %.loopexit88, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %.058103, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.s
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = and i32 %i.w, %i.u                       ; 2 uses
  %i.y = lshr i32 %i.x, 1
  %i.z = or i32 %i.y, %i.x
  %i.aa = xor i32 %i.z, -1
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 104), align 8, !tbaa !28
  %i.ac = and i32 %i.ab, %i.aa                    ; 5 uses
  %.not75 = icmp eq i32 %i.ac, 0
  br i1 %.not75, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = and i32 %i.ac, 255
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = lshr i32 %i.ac, 8
  %i.ai = and i32 %i.ah, 255
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = add nsw i32 %i.al, %i.ag
  %i.an = lshr i32 %i.ac, 16
  %i.ao = and i32 %i.an, 255
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = add nsw i32 %i.am, %i.ar
  %i.at = lshr i32 %i.ac, 24
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = add nsw i32 %i.as, %i.aw                ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.062 = phi i32 [ %i.ax, %bb.d ], [ 0, %bb.c ]  ; 2 uses
  %i.az = icmp sgt i32 %i.r, 1
  br i1 %i.az, label %.lr.ph.preheader, label %.loopexit88

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.16393 = phi i32 [ %.062, %.lr.ph.preheader ], [ %.3, %bb.h ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.058103, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = and i32 %i.bd, %i.bb                    ; 2 uses
  %i.bf = lshr i32 %i.be, 1
  %i.bg = or i32 %i.bf, %i.be
  %i.bh = and i32 %i.bg, 1431655765               ; 2 uses
  %i.bi = xor i32 %i.bh, 1431655765               ; 4 uses
  %.not76 = icmp eq i32 %i.bh, 1431655765
  br i1 %.not76, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bj = icmp eq i32 %.16393, 1
  br i1 %i.bj, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = and i32 %i.bi, 85
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = lshr i32 %i.bi, 8
  %i.bp = and i32 %i.bo, 85
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = lshr i32 %i.bi, 16
  %i.bu = and i32 %i.bt, 85
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = lshr i32 %i.bi, 24
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @bit_count, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = add i32 %i.bn, %.16393
  %i.cd = add i32 %i.cc, %i.bs
  %i.ce = add i32 %i.cd, %i.bx
  %i.cf = add i32 %i.ce, %i.cb                    ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %.3 = phi i32 [ %i.cf, %bb.g ], [ %.16393, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit88, label %.lr.ph

.loopexit88:                                      ; preds = %bb.h, %bb.e, %bb.b
  %.5 = phi i32 [ 0, %bb.b ], [ %.062, %bb.e ], [ %.3, %bb.h ] ; 2 uses
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29 ; 2 uses
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17 ; 2 uses
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %.lr.ph100, label %._crit_edge101

.lr.ph100:                                        ; preds = %.loopexit88
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !15
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !30
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !31
  %i.cn = sext i32 %i.ch to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph100, %.loopexit
  %indvars.iv118 = phi i64 [ %i.cn, %.lr.ph100 ], [ %indvars.iv.next119, %.loopexit ] ; 4 uses
  %.697 = phi i32 [ %.5, %.lr.ph100 ], [ %.7, %.loopexit ] ; 3 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %indvars.iv118
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !16
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %indvars.iv118
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4  ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv118
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4  ; 2 uses
  %.not7794 = icmp sgt i32 %i.ct, %i.cr
  br i1 %.not7794, label %._crit_edge, label %.lr.ph96.preheader

.lr.ph96.preheader:                               ; preds = %bb.i
  %i.cu = sext i32 %i.ct to i64
  %4 = sext i32 %i.cr to i64
  br label %.lr.ph96

bb.j:                                             ; preds = %.lr.ph96
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %.not77 = icmp sgt i64 %indvars.iv.next115, %4
  br i1 %.not77, label %._crit_edge, label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %bb.j
  %indvars.iv114 = phi i64 [ %i.cu, %.lr.ph96.preheader ], [ %indvars.iv.next115, %bb.j ] ; 4 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %.058103, i64 %indvars.iv114
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv114
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = and i32 %i.cy, %i.cw
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv114
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4
  %i.dc = and i32 %i.cz, %i.db
  %.not78 = icmp eq i32 %i.dc, 0
  br i1 %.not78, label %bb.j, label %.loopexit

._crit_edge:                                      ; preds = %bb.j, %bb.i
  %i.dd = add nsw i32 %.697, 1
  %i.de = icmp sgt i32 %.697, 0
  br i1 %i.de, label %.thread, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph96, %._crit_edge
  %.7 = phi i32 [ %i.dd, %._crit_edge ], [ %.697, %.lr.ph96 ] ; 2 uses
  %indvars.iv.next119 = add nsw i64 %indvars.iv118, 1 ; 2 uses
  %lftr.wideiv121 = trunc i64 %indvars.iv.next119 to i32
  %exitcond122.not = icmp eq i32 %i.ci, %lftr.wideiv121
  br i1 %exitcond122.not, label %._crit_edge101, label %bb.i

._crit_edge101:                                   ; preds = %.loopexit, %.loopexit88
  %.6.lcssa = phi i32 [ %.5, %.loopexit88 ], [ %.7, %.loopexit ]
  %i.df = icmp eq i32 %.6.lcssa, 0
  br i1 %i.df, label %._crit_edge108, label %bb.k

bb.k:                                             ; preds = %._crit_edge101
  %i.dg = tail call ptr (ptr, ptr, ptr, ...) @force_lower(ptr noundef %3, ptr noundef nonnull %.058103, ptr noundef %i.c) #10 ; 0 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !22
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %._crit_edge, %bb.d, %.lr.ph107, %bb.k
  %i.dh = phi i32 [ %i.o, %._crit_edge ], [ %.pre, %bb.k ], [ %i.o, %bb.d ], [ %i.o, %.lr.ph107 ], [ %i.o, %bb.f ], [ %i.o, %bb.g ] ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %.058103, i64 %i.di ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %i.m
  br i1 %i.dk, label %.lr.ph107, label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge101, %.thread, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %.thread ], [ 0, %._crit_edge101 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @mincov(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !25
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23
  %i.e = load i32, ptr @cube, align 8, !tbaa !8
  %i.f = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.d, i32 noundef %i.e) #10 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21
  %i.k = load i32, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.l = mul nsw i32 %i.k, %i.j                   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %.idx = shl nsw i64 %i.m, 2
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %.idx
  %i.o = icmp sgt i32 %i.l, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.r = phi i32 [ %i.k, %.lr.ph ], [ %i.ae, %bb.d ]
  %.05789 = phi ptr [ %i.h, %.lr.ph ], [ %i.ag, %bb.d ] ; 3 uses
  %i.s = load i32, ptr %.05789, align 4, !tbaa !4
  %i.t = and i32 %i.s, 8192
  %.not66 = icmp eq i32 %i.t, 0
  br i1 %.not66, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.v = load i32, ptr %i.f, align 8, !tbaa !22
  %i.w = load i32, ptr %i.q, align 4, !tbaa !21   ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.q, align 4, !tbaa !21
  %i.y = mul nsw i32 %i.w, %i.v
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 96), align 8, !tbaa !26
  %i.ac = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.aa, ptr noundef %i.ab) #10
  %i.ad = tail call ptr (ptr, ptr, ptr, ...) @force_lower(ptr noundef %i.ac, ptr noundef nonnull %.05789, ptr noundef %1) #10 ; 0 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ae = phi i32 [ %i.r, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.05789, i64 %i.af ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %i.n
  br i1 %i.ah, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !21
  %i.am = load i32, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.al                ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %.idx100 = shl nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds i8, ptr %i.aj, i64 %.idx100 ; 6 uses
  %i.aq = icmp sgt i32 %i.an, 0
  %.pre106 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29 ; 7 uses
  br i1 %i.aq, label %.lr.ph98, label %._crit_edge99

.lr.ph98:                                         ; preds = %._crit_edge
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17 ; 2 uses
  %i.as = icmp slt i32 %.pre106, %i.ar
  br i1 %i.as, label %.lr.ph98.split, label %.lr.ph98.split.us.preheader

.lr.ph98.split.us.preheader:                      ; preds = %.lr.ph98
  %i.at = sext i32 %i.am to i64                   ; 5 uses
  br label %bb.e

.lr.ph98.split.us:                                ; preds = %bb.e
  %i.au = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.at ; 2 uses
  %i.av = icmp ult ptr %i.au, %i.ap
  br i1 %i.av, label %.lr.ph98.split.us.1, label %._crit_edge99

.lr.ph98.split.us.1:                              ; preds = %.lr.ph98.split.us
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.at ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %i.ap
  br i1 %i.ax, label %.lr.ph98.split.us.2, label %._crit_edge99

.lr.ph98.split.us.2:                              ; preds = %.lr.ph98.split.us.1
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.at ; 2 uses
  %i.az = icmp ult ptr %i.ay, %i.ap
  br i1 %i.az, label %.lr.ph98.split.us.3, label %._crit_edge99

.lr.ph98.split.us.3:                              ; preds = %.lr.ph98.split.us.2
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.at ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.ap
  br i1 %i.bb, label %.lr.ph98.split.us.4, label %._crit_edge99

.lr.ph98.split.us.4:                              ; preds = %.lr.ph98.split.us.3
  %i.bc = add nuw nsw i32 %.05995.us128, 5        ; 2 uses
  %exitcond.4 = icmp eq i32 %i.bc, 500
  br i1 %exitcond.4, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph98.split.us.4, %.lr.ph98.split.us.preheader
  %.05995.us128 = phi i32 [ 0, %.lr.ph98.split.us.preheader ], [ %i.bc, %.lr.ph98.split.us.4 ]
  %.15896.us127 = phi ptr [ %i.aj, %.lr.ph98.split.us.preheader ], [ %i.ba, %.lr.ph98.split.us.4 ]
  %i.bd = getelementptr inbounds [4 x i8], ptr %.15896.us127, i64 %i.at ; 2 uses
  %i.be = icmp ult ptr %i.bd, %i.ap
  br i1 %i.be, label %.lr.ph98.split.us, label %._crit_edge99

.lr.ph98.split:                                   ; preds = %.lr.ph98, %bb.h
  %i.bf = phi i32 [ %i.bt, %bb.h ], [ %i.ar, %.lr.ph98 ] ; 2 uses
  %.15896 = phi ptr [ %i.by, %bb.h ], [ %i.aj, %.lr.ph98 ] ; 2 uses
  %.05995 = phi i32 [ %i.bu, %bb.h ], [ 0, %.lr.ph98 ]
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.bf
  br i1 %i.bh, label %.lr.ph93.preheader, label %._crit_edge94

.lr.ph93.preheader:                               ; preds = %.lr.ph98.split
  %i.bi = sext i32 %i.bg to i64
  br label %.lr.ph93

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph93.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.091 = phi i32 [ 1, %.lr.ph93.preheader ], [ %.1, %bb.g ] ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !15
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.bm = tail call i32 (ptr, ptr, ...) @set_dist(ptr noundef %.15896, ptr noundef %i.bl) #10 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph93
  %i.bo = mul nsw i32 %i.bm, %.091                ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 500
  br i1 %i.bp, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph93, %bb.f
  %.1 = phi i32 [ %i.bo, %bb.f ], [ %.091, %.lr.ph93 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %.lr.ph93, label %._crit_edge94

._crit_edge94:                                    ; preds = %bb.g, %.lr.ph98.split
  %i.bt = phi i32 [ %i.bf, %.lr.ph98.split ], [ %i.bq, %bb.g ]
  %.0.lcssa = phi i32 [ 1, %.lr.ph98.split ], [ %.1, %bb.g ]
  %i.bu = add nuw nsw i32 %.0.lcssa, %.05995      ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 500
  br i1 %i.bv, label %.loopexit, label %bb.h
end_hunk_1
