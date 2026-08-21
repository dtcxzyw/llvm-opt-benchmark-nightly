inline.NumInlined: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@essen_raising:bb.a
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
  br i1 %i.l, label %.lr.ph100, label %._crit_edge

.lr.ph100:                                        ; preds = %bb.a
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph100, %.thread84
  %i.q = phi i32 [ %i.h, %.lr.ph100 ], [ %i.bm, %.thread84 ] ; 3 uses
  %.06896 = phi ptr [ %i.e, %.lr.ph100 ], [ %i.bo, %.thread84 ] ; 7 uses
  %i.r = load i32, ptr %.06896, align 4, !tbaa !4
  %i.s = and i32 %i.r, 8192
  %.not77 = icmp eq i32 %i.s, 0
  br i1 %.not77, label %.thread84, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !27 ; 4 uses
  %.not78 = icmp eq i32 %i.t, -1
  br i1 %.not78, label %.loopexit87, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %.06896, i64 %i.u
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
  br i1 %.not79, label %.preheader, label %.loopexit86

.preheader:                                       ; preds = %bb.d
  %i.af = icmp sgt i32 %i.t, 1
  br i1 %i.af, label %.lr.ph.preheader, label %.loopexit87

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.t to i64
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit87, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.06896, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = and i32 %i.aj, %i.ah                    ; 2 uses
  %i.al = lshr i32 %i.ak, 1
  %i.am = or i32 %i.al, %i.ak
  %i.an = and i32 %i.am, 1431655765
  %.not80 = icmp eq i32 %i.an, 1431655765
  br i1 %.not80, label %bb.e, label %.loopexit86

.loopexit87:                                      ; preds = %bb.e, %.preheader, %bb.c
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !29 ; 2 uses
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph95.preheader, label %.thread84

.lr.ph95.preheader:                               ; preds = %.loopexit87
  %i.ar = sext i32 %i.ao to i64
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %bb.g
  %indvars.iv112 = phi i64 [ %i.ar, %.lr.ph95.preheader ], [ %indvars.iv.next113, %bb.g ] ; 4 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16
  %i.au = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv112
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4  ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv112
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4  ; 2 uses
  %.not8190 = icmp sgt i32 %i.ax, %i.av
  br i1 %.not8190, label %.loopexit86, label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %.lr.ph95
  %i.ay = sext i32 %i.ax to i64
  %i.az = add i32 %i.av, 1
  br label %.lr.ph92

bb.f:                                             ; preds = %.lr.ph92
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next109 to i32
  %exitcond111.not = icmp eq i32 %i.az, %lftr.wideiv
  br i1 %exitcond111.not, label %.loopexit86, label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph92.preheader, %bb.f
  %indvars.iv108 = phi i64 [ %i.ay, %.lr.ph92.preheader ], [ %indvars.iv.next109, %bb.f ] ; 4 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %.06896, i64 %indvars.iv108
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv108
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = and i32 %i.bd, %i.bb
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.at, i64 %indvars.iv108
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = and i32 %i.be, %i.bg
  %.not82 = icmp eq i32 %i.bh, 0
  br i1 %.not82, label %bb.f, label %bb.g

bb.g:                                             ; preds = %.lr.ph92
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1 ; 2 uses
  %lftr.wideiv115 = trunc i64 %indvars.iv.next113 to i32
  %exitcond116.not = icmp eq i32 %i.ap, %lftr.wideiv115
  br i1 %exitcond116.not, label %.thread84, label %.lr.ph95

.loopexit86:                                      ; preds = %.lr.ph, %.lr.ph95, %bb.f, %bb.d
  %i.bi = load i32, ptr %i.p, align 8, !tbaa !23
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.p, align 8, !tbaa !23
  %i.bk = load i32, ptr %.06896, align 4, !tbaa !4
  %i.bl = and i32 %i.bk, -8193
  store i32 %i.bl, ptr %.06896, align 4, !tbaa !4
  %.pre = load i32, ptr %0, align 8, !tbaa !22
  br label %.thread84

.thread84:                                        ; preds = %bb.g, %.loopexit87, %bb.b, %.loopexit86
  %i.bm = phi i32 [ %.pre, %.loopexit86 ], [ %i.q, %.loopexit87 ], [ %i.q, %bb.b ], [ %i.q, %bb.g ] ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.06896, i64 %i.bn ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %i.k
  br i1 %i.bp, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.thread84, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !18 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !21
  %i.bu = load i32, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.bv = mul nsw i32 %i.bu, %i.bt                ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %.idx104 = shl nsw i64 %i.bw, 2
  %i.bx = getelementptr inbounds i8, ptr %i.br, i64 %.idx104
  %i.by = icmp sgt i32 %i.bv, 0
  br i1 %i.by, label %.lr.ph103, label %.loopexit

.lr.ph103:                                        ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph103, %bb.o
  %i.ca = phi i32 [ %i.bu, %.lr.ph103 ], [ %i.cq, %bb.o ] ; 2 uses
  %.169101 = phi ptr [ %i.br, %.lr.ph103 ], [ %i.cs, %bb.o ] ; 5 uses
  %i.cb = load i32, ptr %.169101, align 4, !tbaa !4 ; 3 uses
  %i.cc = and i32 %i.cb, 8192
  %.not74 = icmp eq i32 %i.cc, 0
  br i1 %.not74, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = and i32 %i.cb, 1023
  %i.cd = and i32 %i.cb, 1023
  %5 = zext nneg i32 %i.cd to i64
  %.not128 = icmp eq i32 %4, 0
  %i.ce = sext i1 %.not128 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %bb.l ], [ %5, %bb.j ] ; 5 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.169101, i64 %indvars.iv117
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv117
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = xor i32 %i.ci, -1
  %i.ck = and i32 %i.cg, %i.cj
  %.not75 = icmp eq i32 %i.ck, 0
  br i1 %.not75, label %bb.l, label %.split.loop.exit

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, -1
  %i.cl = icmp sgt i64 %indvars.iv117, 1
  br i1 %i.cl, label %bb.k, label %bb.m

.split.loop.exit:                                 ; preds = %bb.k
  %6 = trunc nuw nsw i64 %indvars.iv117 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split.loop.exit
  %.1 = phi i32 [ %6, %.split.loop.exit ], [ %i.ce, %bb.l ]
  %.not76 = icmp eq i32 %.1, 0
  br i1 %.not76, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = load i32, ptr %i.bz, align 8, !tbaa !23
  %i.cn = add nsw i32 %i.cm, -1
  store i32 %i.cn, ptr %i.bz, align 8, !tbaa !23
  %i.co = load i32, ptr %.169101, align 4, !tbaa !4
  %i.cp = and i32 %i.co, -8193
  store i32 %i.cp, ptr %.169101, align 4, !tbaa !4
  %.pre117 = load i32, ptr %1, align 8, !tbaa !22
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.i, %bb.n
  %i.cq = phi i32 [ %i.ca, %bb.m ], [ %i.ca, %bb.i ], [ %.pre117, %bb.n ] ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %.169101, i64 %i.cr ; 2 uses
  %i.ct = icmp ult ptr %i.cs, %i.bx
  br i1 %i.ct, label %bb.i, label %.loopexit

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
  %.045 = phi ptr [ %i.w, %bb.d ], [ %i.j, %bb.b ] ; 3 uses
  %i.s = load i32, ptr %.045, align 4, !tbaa !4
  %i.t = and i32 %i.s, 8192
  %.not42 = icmp eq i32 %i.t, 0
  br i1 %.not42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph47
  tail call void (ptr, ptr, i32, ...) @set_adjcnt(ptr noundef nonnull %.045, ptr noundef %i.d, i32 noundef 1) #10
  %.pre = load i32, ptr %0, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph47, %bb.c
  %i.u = phi i32 [ %i.r, %.lr.ph47 ], [ %.pre, %bb.c ] ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.045, i64 %i.v ; 2 uses
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
  %.03150 = phi i32 [ -1, %.lr.ph52.preheader ], [ %.1, %bb.f ] ; 3 uses
  %.03249 = phi i32 [ -1, %.lr.ph52.preheader ], [ %.133, %bb.f ] ; 2 uses
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
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 2 uses
  %i.al = icmp sgt i32 %i.ak, %.03150
  %spec.select = select i1 %i.al, i32 %i.aa, i32 %.03249
  %spec.select43 = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %.03150)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph52
  %.133 = phi i32 [ %.03249, %.lr.ph52 ], [ %spec.select, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.03150, %.lr.ph52 ], [ %spec.select43, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge53, label %.lr.ph52

._crit_edge53:                                    ; preds = %bb.f, %.loopexit
  %.032.lcssa = phi i32 [ -1, %.loopexit ], [ %.133, %bb.f ] ; 2 uses
  %.not39 = icmp eq ptr %i.d, null
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge53
  tail call void @free(ptr noundef nonnull %i.d) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge53
  %i.am = load i32, ptr @debug, align 4, !tbaa !4
  %i.an = and i32 %i.am, 8
  %.not40 = icmp eq i32 %i.an, 0
  br i1 %.not40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call ptr (ptr, ...) @pc2(ptr noundef %1) #10
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.032.lcssa, ptr noundef %i.ao) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret i32 %.032.lcssa
}

declare void @set_adjcnt(...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @setup_BB_CC(ptr nofree noundef captures(none) initializes((16, 20)) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.b, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !22
  %i.g = mul nsw i32 %i.f, %i.b                   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %.idx = shl nuw nsw i64 %i.h, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.030 = phi ptr [ %i.o, %.lr.ph ], [ %i.e, %bb.a ] ; 3 uses
  %i.k = load i32, ptr %.030, align 4, !tbaa !4
  %i.l = or i32 %i.k, 8192
  store i32 %i.l, ptr %.030, align 4, !tbaa !4
  %i.m = load i32, ptr %0, align 8, !tbaa !22
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %.030, i64 %i.n ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.i
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i32 %i.r, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18   ; 2 uses
  %i.v = load i32, ptr %1, align 8, !tbaa !22
  %i.w = mul nsw i32 %i.v, %i.r                   ; 2 uses
  %i.x = sext i32 %i.w to i64
  %.idx34 = shl nsw i64 %i.x, 2
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %.idx34
  %i.z = icmp sgt i32 %i.w, 0
  br i1 %i.z, label %.lr.ph33, label %.loopexit

.lr.ph33:                                         ; preds = %bb.b, %bb.e
  %.131 = phi ptr [ %i.aj, %bb.e ], [ %i.u, %bb.b ] ; 4 uses
  %i.aa = load i32, ptr %.131, align 4, !tbaa !4  ; 2 uses
  %i.ab = and i32 %i.aa, 34816
  %or.cond = icmp eq i32 %i.ab, 0
end_hunk_0
