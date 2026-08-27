Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_gf2m?download=true
inline.NumInlined: 14
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@BN_GF2m_mod_arr:bb.a
  %.1100.ph.lcssa = phi i32 [ %i.ao, %..preheader_crit_edge ], [ %i.cr, %.preheader.loopexit174 ], [ %i.cq, %.preheader.loopexit ]
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.pre-phi ; 7 uses
  %i.ct = icmp eq i32 %.1100.ph.lcssa, %i.am
  br i1 %i.ct, label %.lr.ph165, label %._crit_edge166

.lr.ph165:                                        ; preds = %.preheader
  %i.cu = zext nneg i32 %i.an to i64              ; 3 uses
  %.not113 = icmp eq i32 %i.an, 0                 ; 2 uses
  %i.cv = sub nsw i32 64, %i.an
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = lshr i64 -1, %i.cw                      ; 2 uses
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !13 ; 3 uses
  %i.cz = lshr i64 %i.cy, %i.cu                   ; 4 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %._crit_edge166, label %.lr.ph168

.lr.ph168:                                        ; preds = %.lr.ph165
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !25 ; 2 uses
  %.not114161.us = icmp eq i32 %i.dc, 0
  br i1 %.not114161.us, label %.lr.ph168.split.us, label %.lr.ph164.us

.lr.ph168.split.us:                               ; preds = %.lr.ph168
  br i1 %.not113, label %.loopexit.us.us.us, label %.loopexit.us.us, !prof !29

.loopexit.us.us.us:                               ; preds = %.lr.ph168.split.us, %.loopexit.us.us.us
  %i.dd = phi i64 [ %i.dg, %.loopexit.us.us.us ], [ %i.cz, %.lr.ph168.split.us ]
  store i64 0, ptr %i.cs, align 8, !tbaa !13
  %i.de = load i64, ptr %i.al, align 8, !tbaa !13
  %i.df = xor i64 %i.de, %i.dd
  store i64 %i.df, ptr %i.al, align 8, !tbaa !13
  %i.dg = load i64, ptr %i.cs, align 8, !tbaa !13 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %._crit_edge166, label %.loopexit.us.us.us

.loopexit.us.us:                                  ; preds = %.lr.ph168.split.us, %.loopexit.us.us
  %i.di = phi i64 [ %i.do, %.loopexit.us.us ], [ %i.cz, %.lr.ph168.split.us ]
  %i.dj = phi i64 [ %i.dn, %.loopexit.us.us ], [ %i.cy, %.lr.ph168.split.us ]
  %i.dk = and i64 %i.dj, %i.cx
  store i64 %i.dk, ptr %i.cs, align 8, !tbaa !13
  %i.dl = load i64, ptr %i.al, align 8, !tbaa !13
  %i.dm = xor i64 %i.dl, %i.di
  store i64 %i.dm, ptr %i.al, align 8, !tbaa !13
  %i.dn = load i64, ptr %i.cs, align 8, !tbaa !13 ; 2 uses
  %i.do = lshr i64 %i.dn, %i.cu                   ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %._crit_edge166, label %.loopexit.us.us

.lr.ph164.us:                                     ; preds = %.lr.ph168, %..loopexit_crit_edge.us
  %i.dq = phi i64 [ %i.en, %..loopexit_crit_edge.us ], [ %i.cz, %.lr.ph168 ] ; 3 uses
  %i.dr = phi i64 [ %i.em, %..loopexit_crit_edge.us ], [ %i.cy, %.lr.ph168 ]
  %i.ds = and i64 %i.dr, %i.cx
  %storemerge.us = select i1 %.not113, i64 0, i64 %i.ds, !prof !29
  store i64 %storemerge.us, ptr %i.cs, align 8, !tbaa !13
  %i.dt = load i64, ptr %i.al, align 8, !tbaa !13
  %i.du = xor i64 %i.dt, %i.dq
  store i64 %i.du, ptr %i.al, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph164.us, %bb.l
  %indvars.iv189 = phi i64 [ 1, %.lr.ph164.us ], [ %indvars.iv.next190, %bb.l ]
  %i.dv = phi i32 [ %i.dc, %.lr.ph164.us ], [ %i.el, %bb.l ] ; 2 uses
  %i.dw = sdiv i32 %i.dv, 64
  %i.dx = srem i32 %i.dv, 64                      ; 3 uses
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl i64 %i.dq, %i.dy
  %i.ea = sext i32 %i.dw to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ea ; 3 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !13
  %i.ed = xor i64 %i.ec, %i.dz
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !13
  %.not115.us = icmp eq i32 %i.dx, 0
  br i1 %.not115.us, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ee = sub nsw i32 64, %i.dx
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = lshr i64 %i.dq, %i.ef                   ; 2 uses
  %.not116.us = icmp eq i64 %i.eg, 0
  br i1 %.not116.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eh = getelementptr i8, ptr %i.eb, i64 8      ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !13
  %i.ej = xor i64 %i.ei, %i.eg
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next190
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !25 ; 2 uses
  %.not114.us = icmp eq i32 %i.el, 0
  br i1 %.not114.us, label %..loopexit_crit_edge.us, label %bb.i, !llvm.loop !32

..loopexit_crit_edge.us:                          ; preds = %bb.l
  %i.em = load i64, ptr %i.cs, align 8, !tbaa !13 ; 2 uses
  %i.en = lshr i64 %i.em, %i.cu                   ; 2 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %._crit_edge166, label %.lr.ph164.us

.split:                                           ; preds = %._crit_edge126, %.lr.ph127
  %indvars.iv.next181 = add nsw i64 %indvars.iv180, -1 ; 3 uses
  %i.ep = icmp sgt i64 %indvars.iv.next181, %i.ax
  br i1 %i.ep, label %.lr.ph127, label %.preheader.loopexit174, !llvm.loop !30

.lr.ph224:                                        ; preds = %.lr.ph224.preheader, %._crit_edge126
  %i.eq = phi i64 [ %i.fp, %._crit_edge126 ], [ %i.cn, %.lr.ph224.preheader ] ; 4 uses
  store i64 0, ptr %i.ci, align 8, !tbaa !13
  br i1 %.not117122, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph224, %bb.n
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %bb.n ], [ 1, %.lr.ph224 ]
  %i.er = phi i32 [ %i.fi, %bb.n ], [ %i.cp, %.lr.ph224 ]
  %i.es = sub nsw i32 %.fr169, %i.er              ; 2 uses
  %i.et = srem i32 %i.es, 64                      ; 3 uses
  %.neg = sdiv i32 %i.es, -64
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = lshr i64 %i.eq, %i.eu
  %i.ew = add i32 %.neg, %i.cm
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ex ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !13
  %i.fa = xor i64 %i.ez, %i.ev
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !13
  %.not119 = icmp eq i32 %i.et, 0
  br i1 %.not119, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph125
  %i.fb = sub nsw i32 64, %i.et
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = shl i64 %i.eq, %i.fc
  %i.fe = getelementptr i8, ptr %i.ey, i64 -8     ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !13
  %i.fg = xor i64 %i.ff, %i.fd
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph125, %bb.m
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next178
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !25 ; 2 uses
  %.not117 = icmp eq i32 %i.fi, 0
  br i1 %.not117, label %._crit_edge126, label %.lr.ph125, !llvm.loop !31

._crit_edge126:                                   ; preds = %bb.n, %.lr.ph224
  %i.fj = lshr i64 %i.eq, %i.as
  %i.fk = load i64, ptr %i.ck, align 8, !tbaa !13
  %i.fl = xor i64 %i.fk, %i.fj
  store i64 %i.fl, ptr %i.ck, align 8, !tbaa !13
  %i.fm = shl i64 %i.eq, %i.au
  %i.fn = load i64, ptr %i.cl, align 8, !tbaa !13
  %i.fo = xor i64 %i.fn, %i.fm
  store i64 %i.fo, ptr %i.cl, align 8, !tbaa !13
  %i.fp = load i64, ptr %i.ci, align 8, !tbaa !13 ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %.split, label %.lr.ph224

._crit_edge166:                                   ; preds = %..loopexit_crit_edge.us, %.loopexit.us.us, %.loopexit.us.us.us, %.lr.ph165, %.preheader
  tail call void @bn_correct_top(ptr noundef nonnull %0) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %._crit_edge166, %bb.b
  %.0101 = phi i32 [ 1, %bb.b ], [ 1, %._crit_edge166 ], [ 0, %bb.d ]
  ret i32 %.0101
}

declare void @BN_zero_ex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_GF2m_mod(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = tail call i32 @BN_is_odd(ptr noundef %2) #5
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %BN_GF2m_poly2arr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %BN_GF2m_poly2arr.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !12
  %i.g = zext nneg i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.g, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %.02637.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %.not30.i = icmp eq i64 %i.i, 0
  br i1 %.not30.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %indvars.iv.next.tr.i = trunc i64 %indvars.iv.next.i to i32
  %i.j = shl nsw i32 %indvars.iv.next.tr.i, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.preheader.i
  %.035.i = phi i64 [ -9223372036854775808, %.preheader.i ], [ %i.q, %bb.h ] ; 2 uses
  %.134.i = phi i32 [ %.02637.i, %.preheader.i ], [ %.2.i, %bb.h ] ; 4 uses
  %.02732.i = phi i32 [ 63, %.preheader.i ], [ %i.r, %bb.h ] ; 3 uses
  %i.k = and i64 %.035.i, %i.i
  %.not31.i = icmp eq i64 %i.k, 0
  br i1 %.not31.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp slt i32 %.134.i, 6
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i32 %.02732.i, %i.j
  %i.n = sext i32 %.134.i to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.n
  store i32 %i.m, ptr %i.o, align 4, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = add nsw i32 %.134.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.2.i = phi i32 [ %i.p, %bb.g ], [ %.134.i, %bb.d ] ; 2 uses
  %i.q = lshr i64 %.035.i, 1
  %i.r = add nsw i32 %.02732.i, -1
  %.not41.i = icmp eq i32 %.02732.i, 0
  br i1 %.not41.i, label %.loopexit.i, label %bb.d, !llvm.loop !33

.loopexit.i:                                      ; preds = %bb.h, %bb.c
  %.3.i = phi i32 [ %.02637.i, %bb.c ], [ %.2.i, %bb.h ] ; 5 uses
  %i.s = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.s, label %bb.c, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.t = icmp sgt i32 %.3.i, 0
  br i1 %i.t, label %bb.i, label %BN_GF2m_poly2arr.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.u = load i32, ptr %i.a, align 16, !tbaa !25
  %i.v = icmp slt i32 %i.u, 662
  %i.w = icmp samesign ult i32 %.3.i, 6
  %or.cond17 = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond17, label %BN_GF2m_poly2arr.exit, label %BN_GF2m_poly2arr.exit.thread

BN_GF2m_poly2arr.exit:                            ; preds = %bb.i, %._crit_edge.i, %bb.b
  %.026.lcssa43.i9 = phi i32 [ %.3.i, %bb.i ], [ 0, %bb.b ], [ %.3.i, %._crit_edge.i ] ; 2 uses
  %i.x = sext i32 %.026.lcssa43.i9 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.x
  store i32 -1, ptr %i.y, align 4, !tbaa !25
  %i.z = icmp eq i32 %.026.lcssa43.i9, -1
  br i1 %i.z, label %BN_GF2m_poly2arr.exit.thread, label %bb.j

BN_GF2m_poly2arr.exit.thread:                     ; preds = %bb.i, %bb.a, %BN_GF2m_poly2arr.exit
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 389, ptr noundef nonnull @__func__.BN_GF2m_mod) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, ptr noundef null) #5
  br label %bb.k

bb.j:                                             ; preds = %BN_GF2m_poly2arr.exit
  %i.aa = call i32 @BN_GF2m_mod_arr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %BN_GF2m_poly2arr.exit.thread
  %.0 = phi i32 [ 0, %BN_GF2m_poly2arr.exit.thread ], [ %i.aa, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @BN_GF2m_poly2arr(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_is_odd(ptr noundef %0) #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !12
  %i.f = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.02637 = phi i32 [ 0, %.lr.ph ], [ %.3, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %.not30 = icmp eq i64 %i.h, 0
  br i1 %.not30, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %indvars.iv.next.tr = trunc i64 %indvars.iv.next to i32
  %i.i = shl nsw i32 %indvars.iv.next.tr, 6
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.h
  %.035 = phi i64 [ -9223372036854775808, %.preheader ], [ %i.p, %bb.h ] ; 2 uses
  %.134 = phi i32 [ %.02637, %.preheader ], [ %.2, %bb.h ] ; 4 uses
  %.02732 = phi i32 [ 63, %.preheader ], [ %i.q, %bb.h ] ; 3 uses
  %i.j = and i64 %.035, %i.h
  %.not31 = icmp eq i64 %i.j, 0
  br i1 %.not31, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp slt i32 %.134, %2
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw nsw i32 %.02732, %i.i
  %i.m = sext i32 %.134 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %1, i64 %i.m
  store i32 %i.l, ptr %i.n, align 4, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = add nsw i32 %.134, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.2 = phi i32 [ %i.o, %bb.g ], [ %.134, %bb.d ] ; 2 uses
  %i.p = lshr i64 %.035, 1
  %i.q = add nsw i32 %.02732, -1
  %.not41 = icmp eq i32 %.02732, 0
  br i1 %.not41, label %.loopexit, label %bb.d, !llvm.loop !33

.loopexit:                                        ; preds = %bb.h, %bb.c
  %.3 = phi i32 [ %.02637, %bb.c ], [ %.2, %bb.h ] ; 4 uses
  %i.r = icmp sgt i64 %indvars.iv, 1
  br i1 %i.r, label %bb.c, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.loopexit
  %i.s = icmp sgt i32 %.3, 0
  br i1 %i.s, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  %i.t = load i32, ptr %1, align 4, !tbaa !25
  %i.u = icmp sgt i32 %i.t, 661
  br i1 %i.u, label %bb.l, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b, %bb.i, %._crit_edge
  %.026.lcssa43 = phi i32 [ %.3, %._crit_edge ], [ %.3, %bb.i ], [ 0, %bb.b ] ; 3 uses
  %i.v = icmp slt i32 %.026.lcssa43, %2
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.thread
  %i.w = sext i32 %.026.lcssa43 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %1, i64 %i.w
  store i32 -1, ptr %i.x, align 4, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.thread
  %i.y = add nsw i32 %.026.lcssa43, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.a, %bb.k
  %.029 = phi i32 [ 0, %bb.a ], [ %i.y, %bb.k ], [ 0, %bb.i ]
  ret i32 %.029
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_GF2m_mod_mul_arr(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @BN_GF2m_mod_sqr_arr(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  tail call void @BN_CTX_start(ptr noundef %4) #5
  %i.d = tail call ptr @BN_CTX_get(ptr noundef %4) #5 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !8
  %i.j = add i32 %i.g, 4
  %i.k = add i32 %i.j, %i.i                       ; 4 uses
  %i.l = tail call ptr @bn_wexpand(ptr noundef nonnull %i.d, i32 noundef %i.k) #5
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.k, ptr %i.m, align 8, !tbaa !8
  %i.n = icmp sgt i32 %i.k, 0
  br i1 %i.n, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.p = zext nneg i32 %i.k to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.q, i1 false), !tbaa !13
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.e
  %i.r = load i32, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph72.preheader, label %._crit_edge73

.lr.ph72.preheader:                               ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %._crit_edge
  %i.w = phi i32 [ %i.r, %.lr.ph72.preheader ], [ %i.bq, %._crit_edge ] ; 2 uses
  %indvars.iv77 = phi i64 [ 0, %.lr.ph72.preheader ], [ %indvars.iv.next78, %._crit_edge ] ; 4 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv77
  %i.z = load i64, ptr %i.y, align 8, !tbaa !13
  %i.aa = or disjoint i64 %indvars.iv77, 1        ; 2 uses
  %i.ab = zext i32 %i.w to i64
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph72
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph72, %bb.f
  %i.af = phi i64 [ %i.ae, %bb.f ], [ 0, %.lr.ph72 ]
  %i.ag = load i32, ptr %i.f, align 8, !tbaa !8   ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph70, label %._crit_edge

.lr.ph70:                                         ; preds = %bb.g, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.g ] ; 4 uses
  %i.ai = phi i32 [ %i.bn, %bb.i ], [ %i.ag, %bb.g ]
  %i.aj = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.am = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.an = zext i32 %i.ai to i64
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph70
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.am
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph70, %bb.h
  %i.ar = phi i64 [ %i.aq, %bb.h ], [ 0, %.lr.ph70 ]
  call void @bn_GF2m_mul_2x2(ptr noundef nonnull %i.a, i64 noundef %i.ar, i64 noundef %i.al, i64 noundef %i.af, i64 noundef %i.z) #5
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !12  ; 4 uses
  %i.at = add nuw nsw i64 %indvars.iv, %indvars.iv77 ; 4 uses
  %i.au = load i64, ptr %i.a, align 16, !tbaa !13
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !13
  %i.ax = xor i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !13
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !13
  %i.bc = xor i64 %i.bb, %i.ay
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !13
  %i.bd = load i64, ptr %i.u, align 16, !tbaa !13
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !13
  %i.bh = xor i64 %i.bg, %i.bd
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !13
  %i.bi = load i64, ptr %i.v, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.bm = xor i64 %i.bl, %i.bi
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bn = load i32, ptr %i.f, align 8, !tbaa !8   ; 2 uses
  %i.bo = trunc nuw i64 %indvars.iv.next to i32
  %i.bp = icmp sgt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.lr.ph70, label %._crit_edge.loopexit, !llvm.loop !35

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre = load i32, ptr %i.h, align 8, !tbaa !8
  br label %._crit_edge
end_hunk_0
begin_hunk_1_@BN_GF2m_mod_sqr_arr:bb.a
  %i.km = and i64 %i.kf, 1
  %i.kn = or disjoint i64 %i.kj, %i.km
  %i.ko = or disjoint i64 %i.kn, %i.kh
  %i.kp = or disjoint i64 %i.ko, %i.kl
  %i.kq = shl nuw nsw i64 %i.kp, 16
  %i.kr = or disjoint i64 %i.ke, %i.kq
  %i.ks = lshr i64 %i.hs, 36                      ; 4 uses
  %i.kt = shl nuw nsw i64 %i.ks, 3
  %i.ku = and i64 %i.kt, 64
  %i.kv = shl nuw nsw i64 %i.ks, 2
  %i.kw = and i64 %i.kv, 16
  %i.kx = shl nuw nsw i64 %i.ks, 1
  %i.ky = and i64 %i.kx, 4
  %i.kz = and i64 %i.ks, 1
  %i.la = or disjoint i64 %i.kw, %i.kz
  %i.lb = or disjoint i64 %i.la, %i.ku
  %i.lc = or disjoint i64 %i.lb, %i.ky
  %i.ld = shl nuw nsw i64 %i.lc, 8
  %i.le = or disjoint i64 %i.kr, %i.ld
  %i.lf = lshr i64 %i.hs, 32                      ; 4 uses
  %i.lg = shl nuw nsw i64 %i.lf, 3
  %i.lh = and i64 %i.lg, 64
  %i.li = shl nuw nsw i64 %i.lf, 2
  %i.lj = and i64 %i.li, 16
  %i.lk = shl nuw nsw i64 %i.lf, 1
  %i.ll = and i64 %i.lk, 4
  %i.lm = and i64 %i.lf, 1
  %i.ln = or disjoint i64 %i.lj, %i.lm
  %i.lo = or disjoint i64 %i.ln, %i.lh
  %i.lp = or disjoint i64 %i.lo, %i.ll
  %i.lq = or i64 %i.lp, %i.le
  %.idx = shl nuw nsw i64 %indvars.iv.next, 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store i64 %i.lq, ptr %i.ls, align 8, !tbaa !13
  %i.lt = load i64, ptr %i.hr, align 8, !tbaa !13 ; 11 uses
  %i.lu = lshr i64 %i.lt, 28                      ; 4 uses
  %i.lv = shl nuw nsw i64 %i.lu, 3
  %i.lw = and i64 %i.lv, 64
  %i.lx = shl nuw nsw i64 %i.lu, 2
  %i.ly = and i64 %i.lx, 16
  %i.lz = shl nuw nsw i64 %i.lu, 1
  %i.ma = and i64 %i.lz, 4
  %i.mb = and i64 %i.lu, 1
  %i.mc = or disjoint i64 %i.ly, %i.mb
  %i.md = or disjoint i64 %i.mc, %i.lw
  %i.me = or disjoint i64 %i.md, %i.ma
  %i.mf = shl nuw nsw i64 %i.me, 56
  %i.mg = lshr i64 %i.lt, 24                      ; 4 uses
  %i.mh = shl nuw nsw i64 %i.mg, 3
  %i.mi = and i64 %i.mh, 64
  %i.mj = shl nuw nsw i64 %i.mg, 2
  %i.mk = and i64 %i.mj, 16
  %i.ml = shl nuw nsw i64 %i.mg, 1
  %i.mm = and i64 %i.ml, 4
  %i.mn = and i64 %i.mg, 1
  %i.mo = or disjoint i64 %i.mk, %i.mn
  %i.mp = or disjoint i64 %i.mo, %i.mi
  %i.mq = or disjoint i64 %i.mp, %i.mm
  %i.mr = shl nuw nsw i64 %i.mq, 48
  %i.ms = or disjoint i64 %i.mf, %i.mr
  %i.mt = lshr i64 %i.lt, 20                      ; 4 uses
  %i.mu = shl nuw nsw i64 %i.mt, 3
  %i.mv = and i64 %i.mu, 64
  %i.mw = shl nuw nsw i64 %i.mt, 2
  %i.mx = and i64 %i.mw, 16
  %i.my = shl nuw nsw i64 %i.mt, 1
  %i.mz = and i64 %i.my, 4
  %i.na = and i64 %i.mt, 1
  %i.nb = or disjoint i64 %i.mx, %i.na
  %i.nc = or disjoint i64 %i.nb, %i.mv
  %i.nd = or disjoint i64 %i.nc, %i.mz
  %i.ne = shl nuw nsw i64 %i.nd, 40
  %i.nf = or disjoint i64 %i.ms, %i.ne
  %i.ng = lshr i64 %i.lt, 16                      ; 4 uses
  %i.nh = shl nuw nsw i64 %i.ng, 3
  %i.ni = and i64 %i.nh, 64
  %i.nj = shl nuw nsw i64 %i.ng, 2
  %i.nk = and i64 %i.nj, 16
  %i.nl = shl nuw nsw i64 %i.ng, 1
  %i.nm = and i64 %i.nl, 4
  %i.nn = and i64 %i.ng, 1
  %i.no = or disjoint i64 %i.nk, %i.nn
  %i.np = or disjoint i64 %i.no, %i.ni
  %i.nq = or disjoint i64 %i.np, %i.nm
  %i.nr = shl nuw nsw i64 %i.nq, 32
  %i.ns = or disjoint i64 %i.nf, %i.nr
  %i.nt = lshr i64 %i.lt, 12                      ; 4 uses
  %i.nu = shl nuw nsw i64 %i.nt, 3
  %i.nv = and i64 %i.nu, 64
  %i.nw = shl nuw nsw i64 %i.nt, 2
  %i.nx = and i64 %i.nw, 16
  %i.ny = shl nuw nsw i64 %i.nt, 1
  %i.nz = and i64 %i.ny, 4
  %i.oa = and i64 %i.nt, 1
  %i.ob = or disjoint i64 %i.nx, %i.oa
  %i.oc = or disjoint i64 %i.ob, %i.nv
  %i.od = or disjoint i64 %i.oc, %i.nz
  %i.oe = shl nuw nsw i64 %i.od, 24
  %i.of = or disjoint i64 %i.ns, %i.oe
  %i.og = lshr i64 %i.lt, 8                       ; 4 uses
  %i.oh = shl nuw nsw i64 %i.og, 3
  %i.oi = and i64 %i.oh, 64
  %i.oj = shl nuw nsw i64 %i.og, 2
  %i.ok = and i64 %i.oj, 16
  %i.ol = shl nuw nsw i64 %i.og, 1
  %i.om = and i64 %i.ol, 4
  %i.on = and i64 %i.og, 1
  %i.oo = or disjoint i64 %i.ok, %i.on
  %i.op = or disjoint i64 %i.oo, %i.oi
  %i.oq = or disjoint i64 %i.op, %i.om
  %i.or = shl nuw nsw i64 %i.oq, 16
  %i.os = or disjoint i64 %i.of, %i.or
  %i.ot = lshr i64 %i.lt, 4                       ; 4 uses
  %i.ou = shl nuw nsw i64 %i.ot, 3
  %i.ov = and i64 %i.ou, 64
  %i.ow = shl nuw nsw i64 %i.ot, 2
  %i.ox = and i64 %i.ow, 16
  %i.oy = shl nuw nsw i64 %i.ot, 1
  %i.oz = and i64 %i.oy, 4
  %i.pa = and i64 %i.ot, 1
  %i.pb = or disjoint i64 %i.ox, %i.pa
  %i.pc = or disjoint i64 %i.pb, %i.ov
  %i.pd = or disjoint i64 %i.pc, %i.oz
  %i.pe = shl nuw nsw i64 %i.pd, 8
  %i.pf = or disjoint i64 %i.os, %i.pe
  %i.pg = shl i64 %i.lt, 3
  %i.ph = and i64 %i.pg, 64
  %i.pi = shl i64 %i.lt, 2
  %i.pj = and i64 %i.pi, 16
  %i.pk = shl i64 %i.lt, 1
  %i.pl = and i64 %i.pk, 4
  %i.pm = and i64 %i.lt, 1
  %i.pn = or disjoint i64 %i.pj, %i.pm
  %i.po = or disjoint i64 %i.pn, %i.ph
  %i.pp = or disjoint i64 %i.po, %i.pl
  %i.pq = or i64 %i.pp, %i.pf
  store i64 %i.pq, ptr %i.lr, align 8, !tbaa !13
  %i.pr = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.pr, label %scalar.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.c
  %i.ps = shl nsw i32 %i.g, 1
  %i.pt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.ps, ptr %i.pt, align 8, !tbaa !8
  tail call void @bn_correct_top(ptr noundef nonnull %i.a) #5
  %i.pu = tail call i32 @BN_GF2m_mod_arr(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.pu, %._crit_edge ]
  tail call void @BN_CTX_end(ptr noundef %3) #5
  ret i32 %.0
}

declare void @BN_CTX_start(ptr noundef) local_unnamed_addr #2

declare ptr @BN_CTX_get(ptr noundef) local_unnamed_addr #2

declare void @bn_GF2m_mul_2x2(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @BN_CTX_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2147483646, -2147483648) i32 @BN_GF2m_mod_mul(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_num_bits(ptr noundef %3) #5 ; 3 uses
  %i.b = add nsw i32 %i.a, 1
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.c, i64 noundef 4, ptr noundef nonnull @.str, i32 noundef 467) #5 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @BN_is_odd(ptr noundef %3) #5
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %BN_GF2m_poly2arr.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = load ptr, ptr %3, align 8, !tbaa !12
  %i.k = zext nneg i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.k, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %.02637.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 2 uses
  %.not30.i = icmp eq i64 %i.m, 0
  br i1 %.not30.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %indvars.iv.next.tr.i = trunc i64 %indvars.iv.next.i to i32
  %i.n = shl nsw i32 %indvars.iv.next.tr.i, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.preheader.i
  %.035.i = phi i64 [ -9223372036854775808, %.preheader.i ], [ %i.t, %bb.i ] ; 2 uses
  %.134.i = phi i32 [ %.02637.i, %.preheader.i ], [ %.2.i, %bb.i ] ; 4 uses
  %.02732.i = phi i32 [ 63, %.preheader.i ], [ %i.u, %bb.i ] ; 3 uses
  %i.o = and i64 %.035.i, %i.m
  %.not31.i = icmp eq i64 %i.o, 0
  br i1 %.not31.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not23 = icmp sgt i32 %.134.i, %i.a
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add nuw nsw i32 %.02732.i, %i.n
  %i.q = sext i32 %.134.i to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.q
  store i32 %i.p, ptr %i.r, align 4, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = add nsw i32 %.134.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.2.i = phi i32 [ %i.s, %bb.h ], [ %.134.i, %bb.e ] ; 2 uses
  %i.t = lshr i64 %.035.i, 1
  %i.u = add nsw i32 %.02732.i, -1
  %.not41.i = icmp eq i32 %.02732.i, 0
  br i1 %.not41.i, label %.loopexit.i, label %bb.e, !llvm.loop !33

.loopexit.i:                                      ; preds = %bb.i, %bb.d
  %.3.i = phi i32 [ %.02637.i, %bb.d ], [ %.2.i, %bb.i ] ; 4 uses
  %i.v = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.v, label %bb.d, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.w = icmp sgt i32 %.3.i, 0
  br i1 %i.w, label %bb.j, label %._crit_edge.thread.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.x = load i32, ptr %i.d, align 4, !tbaa !25
  %i.y = icmp sgt i32 %i.x, 661
  br i1 %i.y, label %BN_GF2m_poly2arr.exit.thread, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.j, %._crit_edge.i, %bb.c
  %.026.lcssa43.i = phi i32 [ %.3.i, %._crit_edge.i ], [ %.3.i, %bb.j ], [ 0, %bb.c ] ; 4 uses
  %.not24 = icmp sgt i32 %.026.lcssa43.i, %i.a
  br i1 %.not24, label %BN_GF2m_poly2arr.exit.thread28, label %BN_GF2m_poly2arr.exit

BN_GF2m_poly2arr.exit.thread28:                   ; preds = %._crit_edge.thread.i
  %i.z = add nsw i32 %.026.lcssa43.i, 1
  br label %BN_GF2m_poly2arr.exit.thread

BN_GF2m_poly2arr.exit:                            ; preds = %._crit_edge.thread.i
  %i.aa = sext i32 %.026.lcssa43.i to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aa
  store i32 -1, ptr %i.ab, align 4, !tbaa !25
  %i.ac = add nsw i32 %.026.lcssa43.i, 1          ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %BN_GF2m_poly2arr.exit.thread, label %bb.k

BN_GF2m_poly2arr.exit.thread:                     ; preds = %BN_GF2m_poly2arr.exit.thread28, %bb.j, %bb.b, %BN_GF2m_poly2arr.exit
  %.029.i22 = phi i32 [ %i.ac, %BN_GF2m_poly2arr.exit ], [ 0, %bb.b ], [ 0, %bb.j ], [ %i.z, %BN_GF2m_poly2arr.exit.thread28 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 472, ptr noundef nonnull @__func__.BN_GF2m_mod_mul) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, ptr noundef null) #5
  br label %bb.l

bb.k:                                             ; preds = %BN_GF2m_poly2arr.exit
  %i.ad = tail call i32 @BN_GF2m_mod_mul_arr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %BN_GF2m_poly2arr.exit.thread
  %.0 = phi i32 [ %.029.i22, %BN_GF2m_poly2arr.exit.thread ], [ %i.ad, %bb.k ]
  tail call void @CRYPTO_free(ptr noundef nonnull %i.d, ptr noundef nonnull @.str, i32 noundef 478) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.016 = phi i32 [ %.0, %bb.l ], [ 0, %bb.a ]
  ret i32 %.016
}

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc_array(i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2147483646, -2147483648) i32 @BN_GF2m_mod_sqr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_num_bits(ptr noundef %2) #5 ; 3 uses
  %i.b = add nsw i32 %i.a, 1
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.c, i64 noundef 4, ptr noundef nonnull @.str, i32 noundef 527) #5 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @BN_is_odd(ptr noundef %2) #5
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %BN_GF2m_poly2arr.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = load ptr, ptr %2, align 8, !tbaa !12
  %i.k = zext nneg i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.k, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %.02637.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 2 uses
  %.not30.i = icmp eq i64 %i.m, 0
  br i1 %.not30.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %indvars.iv.next.tr.i = trunc i64 %indvars.iv.next.i to i32
  %i.n = shl nsw i32 %indvars.iv.next.tr.i, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.preheader.i
  %.035.i = phi i64 [ -9223372036854775808, %.preheader.i ], [ %i.t, %bb.i ] ; 2 uses
  %.134.i = phi i32 [ %.02637.i, %.preheader.i ], [ %.2.i, %bb.i ] ; 4 uses
  %.02732.i = phi i32 [ 63, %.preheader.i ], [ %i.u, %bb.i ] ; 3 uses
  %i.o = and i64 %.035.i, %i.m
  %.not31.i = icmp eq i64 %i.o, 0
  br i1 %.not31.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not22 = icmp sgt i32 %.134.i, %i.a
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add nuw nsw i32 %.02732.i, %i.n
  %i.q = sext i32 %.134.i to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.q
  store i32 %i.p, ptr %i.r, align 4, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = add nsw i32 %.134.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.2.i = phi i32 [ %i.s, %bb.h ], [ %.134.i, %bb.e ] ; 2 uses
  %i.t = lshr i64 %.035.i, 1
  %i.u = add nsw i32 %.02732.i, -1
  %.not41.i = icmp eq i32 %.02732.i, 0
  br i1 %.not41.i, label %.loopexit.i, label %bb.e, !llvm.loop !33

.loopexit.i:                                      ; preds = %bb.i, %bb.d
  %.3.i = phi i32 [ %.02637.i, %bb.d ], [ %.2.i, %bb.i ] ; 4 uses
  %i.v = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.v, label %bb.d, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.w = icmp sgt i32 %.3.i, 0
  br i1 %i.w, label %bb.j, label %._crit_edge.thread.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.x = load i32, ptr %i.d, align 4, !tbaa !25
  %i.y = icmp sgt i32 %i.x, 661
  br i1 %i.y, label %BN_GF2m_poly2arr.exit.thread, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.j, %._crit_edge.i, %bb.c
  %.026.lcssa43.i = phi i32 [ %.3.i, %._crit_edge.i ], [ %.3.i, %bb.j ], [ 0, %bb.c ] ; 4 uses
  %.not23 = icmp sgt i32 %.026.lcssa43.i, %i.a
  br i1 %.not23, label %BN_GF2m_poly2arr.exit.thread27, label %BN_GF2m_poly2arr.exit

BN_GF2m_poly2arr.exit.thread27:                   ; preds = %._crit_edge.thread.i
  %i.z = add nsw i32 %.026.lcssa43.i, 1
  br label %BN_GF2m_poly2arr.exit.thread

BN_GF2m_poly2arr.exit:                            ; preds = %._crit_edge.thread.i
  %i.aa = sext i32 %.026.lcssa43.i to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aa
  store i32 -1, ptr %i.ab, align 4, !tbaa !25
  %i.ac = add nsw i32 %.026.lcssa43.i, 1          ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %BN_GF2m_poly2arr.exit.thread, label %bb.k

BN_GF2m_poly2arr.exit.thread:                     ; preds = %BN_GF2m_poly2arr.exit.thread27, %bb.j, %bb.b, %BN_GF2m_poly2arr.exit
  %.029.i21 = phi i32 [ %i.ac, %BN_GF2m_poly2arr.exit ], [ 0, %bb.b ], [ 0, %bb.j ], [ %i.z, %BN_GF2m_poly2arr.exit.thread27 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 532, ptr noundef nonnull @__func__.BN_GF2m_mod_sqr) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, ptr noundef null) #5
  br label %bb.l

bb.k:                                             ; preds = %BN_GF2m_poly2arr.exit
  %i.ad = tail call i32 @BN_GF2m_mod_sqr_arr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef %3)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %BN_GF2m_poly2arr.exit.thread
  %.0 = phi i32 [ %.029.i21, %BN_GF2m_poly2arr.exit.thread ], [ %i.ad, %bb.k ]
  tail call void @CRYPTO_free(ptr noundef nonnull %i.d, ptr noundef nonnull @.str, i32 noundef 538) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.015 = phi i32 [ %.0, %bb.l ], [ 0, %bb.a ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_GF2m_mod_inv(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @BN_CTX_start(ptr noundef %3) #5
  %i.a = tail call ptr @BN_CTX_get(ptr noundef %3) #5 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @BN_num_bits(ptr noundef %2) #5 ; 2 uses
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = add nsw i32 %i.c, -1
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %i.f = tail call i32 @BN_priv_rand_ex(ptr noundef nonnull %i.a, i32 noundef %i.e, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef %3) #5
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @BN_is_zero(ptr noundef nonnull %i.a) #5
  %.not24 = icmp eq i32 %i.g, 0
  br i1 %.not24, label %bb.e, label %bb.c, !llvm.loop !44

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @BN_GF2m_mod_mul(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef %3)
  %.not25 = icmp eq i32 %i.h, 0
  br i1 %.not25, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @BN_CTX_start(ptr noundef %3) #5
  %i.i = tail call ptr @BN_CTX_get(ptr noundef %3) #5 ; 4 uses
  %i.j = tail call ptr @BN_CTX_get(ptr noundef %3) #5 ; 4 uses
  %i.k = tail call ptr @BN_CTX_get(ptr noundef %3) #5 ; 7 uses
  %i.l = tail call ptr @BN_CTX_get(ptr noundef %3) #5 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %BN_GF2m_mod_inv_vartime.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @BN_GF2m_mod(ptr noundef %i.k, ptr noundef readonly %0, ptr noundef %2)
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %BN_GF2m_mod_inv_vartime.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @BN_is_zero(ptr noundef %i.k) #5
  %.not159.i = icmp eq i32 %i.o, 0
  br i1 %.not159.i, label %bb.i, label %BN_GF2m_mod_inv_vartime.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @BN_copy(ptr noundef nonnull %i.l, ptr noundef %2) #5
  %.not160.i = icmp eq ptr %i.p, null
  br i1 %.not160.i, label %BN_GF2m_mod_inv_vartime.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i32 @BN_num_bits(ptr noundef %i.k) #5
  %i.r = tail call i32 @BN_num_bits(ptr noundef nonnull %i.l) #5
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !8    ; 15 uses
  %i.u = tail call ptr @bn_wexpand(ptr noundef %i.k, i32 noundef %i.t) #5
  %.not161.i = icmp eq ptr %i.u, null
  br i1 %.not161.i, label %BN_GF2m_mod_inv_vartime.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !12   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !8    ; 3 uses
  %i.y = icmp slt i32 %i.x, %i.t
  br i1 %i.y, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.z = sext i32 %i.x to i64
  %i.aa = shl nsw i64 %i.z, 3
  %scevgep.i = getelementptr i8, ptr %i.v, i64 %i.aa
  %i.ab = xor i32 %i.x, -1
  %i.ac = add i32 %i.t, %i.ab
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.af, i1 false), !tbaa !13
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.k
  store i32 %i.t, ptr %i.w, align 8, !tbaa !8
  %i.ag = tail call ptr @bn_wexpand(ptr noundef %i.i, i32 noundef %i.t) #5
  %.not162.i = icmp eq ptr %i.ag, null
  br i1 %.not162.i, label %BN_GF2m_mod_inv_vartime.exit.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !12  ; 3 uses
  store i64 1, ptr %i.ah, align 8, !tbaa !13
  %i.ai = icmp sgt i32 %i.t, 1                    ; 2 uses
  br i1 %i.ai, label %.lr.ph177.preheader.i, label %._crit_edge178.i

.lr.ph177.preheader.i:                            ; preds = %bb.l
  %scevgep209.i = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = add nsw i32 %i.t, -1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep209.i, i8 0, i64 %i.al, i1 false), !tbaa !13
  br label %._crit_edge178.i

._crit_edge178.i:                                 ; preds = %.lr.ph177.preheader.i, %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.t, ptr %i.am, align 8, !tbaa !8
  %i.an = tail call ptr @bn_wexpand(ptr noundef %i.j, i32 noundef %i.t) #5
  %.not163.i = icmp eq ptr %i.an, null
  br i1 %.not163.i, label %BN_GF2m_mod_inv_vartime.exit.thread, label %bb.m

bb.m:                                             ; preds = %._crit_edge178.i
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !12  ; 2 uses
  %i.ap = icmp sgt i32 %i.t, 0                    ; 2 uses
  %i.aq = zext i32 %i.t to i64                    ; 7 uses
  br i1 %i.ap, label %.lr.ph181.preheader.i, label %._crit_edge182.i
end_hunk_1
begin_hunk_2_@BN_GF2m_mod_div:bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @BN_GF2m_mod_inv(ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @BN_GF2m_mod_mul(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef %4)
  %.not14 = icmp ne i32 %i.d, 0
  %spec.select = zext i1 %.not14 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %spec.select, %bb.c ]
  tail call void @BN_CTX_end(ptr noundef %4) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_GF2m_mod_div_arr(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @BN_CTX_start(ptr noundef %4) #5
  %i.a = tail call ptr @BN_CTX_get(ptr noundef %4) #5 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %BN_GF2m_arr2poly.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @BN_zero_ex(ptr noundef nonnull %i.a) #5
  %i.c = load i32, ptr %3, align 4, !tbaa !25     ; 2 uses
  %.not9.i = icmp eq i32 %i.c, -1
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %.not.i = icmp eq i32 %i.e, -1
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !70

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ]
  %i.f = phi i32 [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  %i.g = tail call i32 @BN_set_bit(ptr noundef nonnull %i.a, i32 noundef %i.f) #5
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %BN_GF2m_arr2poly.exit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.b
  tail call void @BN_CTX_start(ptr noundef %4) #5
  %i.i = tail call ptr @BN_CTX_get(ptr noundef %4) #5 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %BN_GF2m_mod_div.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.k = tail call i32 @BN_GF2m_mod_inv(ptr noundef nonnull %i.i, ptr noundef readonly %2, ptr noundef nonnull %i.a, ptr noundef %4)
  %.not.i11 = icmp eq i32 %i.k, 0
  br i1 %.not.i11, label %BN_GF2m_mod_div.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @BN_GF2m_mod_mul(ptr noundef %0, ptr noundef readonly %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef %4)
  %.not14.i = icmp ne i32 %i.l, 0
  %spec.select.i = zext i1 %.not14.i to i32
  br label %BN_GF2m_mod_div.exit

BN_GF2m_mod_div.exit:                             ; preds = %.loopexit, %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %.loopexit ], [ 0, %bb.d ], [ %spec.select.i, %bb.e ]
  tail call void @BN_CTX_end(ptr noundef %4) #5
  br label %BN_GF2m_arr2poly.exit

BN_GF2m_arr2poly.exit:                            ; preds = %.lr.ph.i, %bb.a, %BN_GF2m_mod_div.exit
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.i, %BN_GF2m_mod_div.exit ], [ 0, %.lr.ph.i ]
  tail call void @BN_CTX_end(ptr noundef %4) #5
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @BN_GF2m_mod_exp_arr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_is_zero(ptr noundef %2) #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #5
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @BN_abs_is_word(ptr noundef %2, i64 noundef 1) #5
  %.not32 = icmp eq i32 %i.c, 0
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @BN_copy(ptr noundef %0, ptr noundef %1) #5
  %i.e = icmp ne ptr %i.d, null
  %i.f = zext i1 %i.e to i32
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  tail call void @BN_CTX_start(ptr noundef %4) #5
  %i.g = tail call ptr @BN_CTX_get(ptr noundef %4) #5 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @BN_GF2m_mod_arr(ptr noundef nonnull %i.g, ptr noundef %1, ptr noundef %3)
  %.not33 = icmp eq i32 %i.i, 0
  br i1 %.not33, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i32 @BN_num_bits(ptr noundef %2) #5 ; 2 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.l = add nsw i32 %i.j, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.038 = phi i32 [ %i.p, %bb.j ], [ %i.l, %.lr.ph.preheader ] ; 3 uses
  %i.m = tail call i32 @BN_GF2m_mod_sqr_arr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef %3, ptr noundef %4)
  %.not35 = icmp eq i32 %i.m, 0
  br i1 %.not35, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.n = tail call i32 @BN_is_bit_set(ptr noundef %2, i32 noundef %.038) #5
  %.not36 = icmp eq i32 %i.n, 0
  br i1 %.not36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i32 @BN_GF2m_mod_mul_arr(ptr noundef nonnull %i.g, ptr noundef nonnull %i.g, ptr noundef %1, ptr noundef %3, ptr noundef %4)
  %.not37 = icmp eq i32 %i.o, 0
  br i1 %.not37, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.p = add nsw i32 %.038, -1
  %i.q = icmp sgt i32 %.038, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %bb.j, %bb.g
  %i.r = tail call ptr @BN_copy(ptr noundef %0, ptr noundef nonnull %i.g) #5
  %.not34 = icmp ne ptr %i.r, null
  %spec.select = zext i1 %.not34 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.lr.ph, %._crit_edge, %bb.f, %bb.e
  %.029 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ %spec.select, %._crit_edge ], [ 0, %.lr.ph ], [ 0, %bb.i ]
  tail call void @BN_CTX_end(ptr noundef %4) #5
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.d, %bb.b
  %.030 = phi i32 [ %i.b, %bb.b ], [ %i.f, %bb.d ], [ %.029, %.loopexit ]
  ret i32 %.030
}

declare i32 @BN_set_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_abs_is_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BN_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_is_bit_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @BN_GF2m_mod_exp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_num_bits(ptr noundef %3) #5 ; 3 uses
  %i.b = add nsw i32 %i.a, 1
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.c, i64 noundef 4, ptr noundef nonnull @.str, i32 noundef 910) #5 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @BN_is_odd(ptr noundef %3) #5
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %BN_GF2m_poly2arr.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = load ptr, ptr %3, align 8, !tbaa !12
  %i.k = zext nneg i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.k, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %.02637.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 2 uses
  %.not30.i = icmp eq i64 %i.m, 0
  br i1 %.not30.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %indvars.iv.next.tr.i = trunc i64 %indvars.iv.next.i to i32
  %i.n = shl nsw i32 %indvars.iv.next.tr.i, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.preheader.i
  %.035.i = phi i64 [ -9223372036854775808, %.preheader.i ], [ %i.t, %bb.i ] ; 2 uses
  %.134.i = phi i32 [ %.02637.i, %.preheader.i ], [ %.2.i, %bb.i ] ; 4 uses
  %.02732.i = phi i32 [ 63, %.preheader.i ], [ %i.u, %bb.i ] ; 3 uses
  %i.o = and i64 %.035.i, %i.m
  %.not31.i = icmp eq i64 %i.o, 0
  br i1 %.not31.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not23 = icmp sgt i32 %.134.i, %i.a
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add nuw nsw i32 %.02732.i, %i.n
  %i.q = sext i32 %.134.i to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.q
  store i32 %i.p, ptr %i.r, align 4, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = add nsw i32 %.134.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.2.i = phi i32 [ %i.s, %bb.h ], [ %.134.i, %bb.e ] ; 2 uses
  %i.t = lshr i64 %.035.i, 1
  %i.u = add nsw i32 %.02732.i, -1
  %.not41.i = icmp eq i32 %.02732.i, 0
  br i1 %.not41.i, label %.loopexit.i, label %bb.e, !llvm.loop !33

.loopexit.i:                                      ; preds = %bb.i, %bb.d
  %.3.i = phi i32 [ %.02637.i, %bb.d ], [ %.2.i, %bb.i ] ; 4 uses
  %i.v = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.v, label %bb.d, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.w = icmp sgt i32 %.3.i, 0
  br i1 %i.w, label %bb.j, label %._crit_edge.thread.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.x = load i32, ptr %i.d, align 4, !tbaa !25
  %i.y = icmp sgt i32 %i.x, 661
  br i1 %i.y, label %BN_GF2m_poly2arr.exit.thread, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.j, %._crit_edge.i, %bb.c
  %.026.lcssa43.i = phi i32 [ %.3.i, %._crit_edge.i ], [ %.3.i, %bb.j ], [ 0, %bb.c ] ; 4 uses
  %.not24 = icmp sgt i32 %.026.lcssa43.i, %i.a
  br i1 %.not24, label %BN_GF2m_poly2arr.exit.thread28, label %BN_GF2m_poly2arr.exit

BN_GF2m_poly2arr.exit.thread28:                   ; preds = %._crit_edge.thread.i
  %i.z = add nsw i32 %.026.lcssa43.i, 1
  br label %BN_GF2m_poly2arr.exit.thread

BN_GF2m_poly2arr.exit:                            ; preds = %._crit_edge.thread.i
  %i.aa = sext i32 %.026.lcssa43.i to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aa
  store i32 -1, ptr %i.ab, align 4, !tbaa !25
  %i.ac = add nsw i32 %.026.lcssa43.i, 1          ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %BN_GF2m_poly2arr.exit.thread, label %bb.k

BN_GF2m_poly2arr.exit.thread:                     ; preds = %BN_GF2m_poly2arr.exit.thread28, %bb.j, %bb.b, %BN_GF2m_poly2arr.exit
  %.029.i22 = phi i32 [ %i.ac, %BN_GF2m_poly2arr.exit ], [ 0, %bb.b ], [ 0, %bb.j ], [ %i.z, %BN_GF2m_poly2arr.exit.thread28 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 915, ptr noundef nonnull @__func__.BN_GF2m_mod_exp) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, ptr noundef null) #5
  br label %bb.l

bb.k:                                             ; preds = %BN_GF2m_poly2arr.exit
  %i.ad = tail call i32 @BN_GF2m_mod_exp_arr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %BN_GF2m_poly2arr.exit.thread
  %.0 = phi i32 [ %.029.i22, %BN_GF2m_poly2arr.exit.thread ], [ %i.ad, %bb.k ]
  tail call void @CRYPTO_free(ptr noundef nonnull %i.d, ptr noundef nonnull @.str, i32 noundef 921) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.016 = phi i32 [ %.0, %bb.l ], [ 0, %bb.a ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define i32 @BN_GF2m_mod_sqrt_arr(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !25
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @BN_zero_ex(ptr noundef %0) #5
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @BN_CTX_start(ptr noundef %3) #5
  %i.c = tail call ptr @BN_CTX_get(ptr noundef %3) #5 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %2, align 4, !tbaa !25
  %i.f = add nsw i32 %i.e, -1
  %i.g = tail call i32 @BN_set_bit(ptr noundef nonnull %i.c, i32 noundef %i.f) #5
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @BN_GF2m_mod_exp_arr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %2, ptr noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i32 [ 0, %bb.c ], [ %i.h, %bb.e ], [ 0, %bb.d ]
  tail call void @BN_CTX_end(ptr noundef %3) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.013 = phi i32 [ 1, %bb.b ], [ %.0, %bb.f ]
  ret i32 %.013
}

declare i32 @BN_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @BN_GF2m_mod_sqrt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_num_bits(ptr noundef %2) #5 ; 3 uses
  %i.b = add nsw i32 %i.a, 1
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.c, i64 noundef 4, ptr noundef nonnull @.str, i32 noundef 972) #5 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @BN_is_odd(ptr noundef %2) #5
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %BN_GF2m_poly2arr.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = load ptr, ptr %2, align 8, !tbaa !12
  %i.k = zext nneg i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.k, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %.02637.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 2 uses
  %.not30.i = icmp eq i64 %i.m, 0
  br i1 %.not30.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %indvars.iv.next.tr.i = trunc i64 %indvars.iv.next.i to i32
  %i.n = shl nsw i32 %indvars.iv.next.tr.i, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.preheader.i
  %.035.i = phi i64 [ -9223372036854775808, %.preheader.i ], [ %i.t, %bb.i ] ; 2 uses
  %.134.i = phi i32 [ %.02637.i, %.preheader.i ], [ %.2.i, %bb.i ] ; 4 uses
  %.02732.i = phi i32 [ 63, %.preheader.i ], [ %i.u, %bb.i ] ; 3 uses
  %i.o = and i64 %.035.i, %i.m
  %.not31.i = icmp eq i64 %i.o, 0
  br i1 %.not31.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not23 = icmp sgt i32 %.134.i, %i.a
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add nuw nsw i32 %.02732.i, %i.n
  %i.q = sext i32 %.134.i to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.q
  store i32 %i.p, ptr %i.r, align 4, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = add nsw i32 %.134.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.2.i = phi i32 [ %i.s, %bb.h ], [ %.134.i, %bb.e ] ; 2 uses
  %i.t = lshr i64 %.035.i, 1
  %i.u = add nsw i32 %.02732.i, -1
  %.not41.i = icmp eq i32 %.02732.i, 0
  br i1 %.not41.i, label %.loopexit.i, label %bb.e, !llvm.loop !33

.loopexit.i:                                      ; preds = %bb.i, %bb.d
  %.3.i = phi i32 [ %.02637.i, %bb.d ], [ %.2.i, %bb.i ] ; 4 uses
  %i.v = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.v, label %bb.d, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.w = icmp sgt i32 %.3.i, 0
  br i1 %i.w, label %bb.j, label %._crit_edge.thread.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.x = load i32, ptr %i.d, align 4, !tbaa !25
  %i.y = icmp sgt i32 %i.x, 661
  br i1 %i.y, label %BN_GF2m_poly2arr.exit.thread, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.j, %._crit_edge.i, %bb.c
  %.026.lcssa43.i = phi i32 [ %.3.i, %._crit_edge.i ], [ %.3.i, %bb.j ], [ 0, %bb.c ] ; 4 uses
  %.not24 = icmp sgt i32 %.026.lcssa43.i, %i.a
  br i1 %.not24, label %BN_GF2m_poly2arr.exit.thread30, label %BN_GF2m_poly2arr.exit

BN_GF2m_poly2arr.exit.thread30:                   ; preds = %._crit_edge.thread.i
  %i.z = add nsw i32 %.026.lcssa43.i, 1
  br label %BN_GF2m_poly2arr.exit.thread

BN_GF2m_poly2arr.exit:                            ; preds = %._crit_edge.thread.i
  %i.aa = sext i32 %.026.lcssa43.i to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aa
  store i32 -1, ptr %i.ab, align 4, !tbaa !25
  %i.ac = add nsw i32 %.026.lcssa43.i, 1          ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %BN_GF2m_poly2arr.exit.thread, label %bb.k

BN_GF2m_poly2arr.exit.thread:                     ; preds = %BN_GF2m_poly2arr.exit.thread30, %bb.j, %bb.b, %BN_GF2m_poly2arr.exit
  %.029.i22 = phi i32 [ %i.ac, %BN_GF2m_poly2arr.exit ], [ 0, %bb.b ], [ 0, %bb.j ], [ %i.z, %BN_GF2m_poly2arr.exit.thread30 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 977, ptr noundef nonnull @__func__.BN_GF2m_mod_sqrt) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, ptr noundef null) #5
  br label %BN_GF2m_mod_sqrt_arr.exit

bb.k:                                             ; preds = %BN_GF2m_poly2arr.exit
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !25  ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @BN_zero_ex(ptr noundef %0) #5
  br label %BN_GF2m_mod_sqrt_arr.exit

bb.m:                                             ; preds = %bb.k
  tail call void @BN_CTX_start(ptr noundef %3) #5
  %i.af = tail call ptr @BN_CTX_get(ptr noundef %3) #5 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = add nsw i32 %i.ad, -1
  %i.ai = tail call i32 @BN_set_bit(ptr noundef nonnull %i.af, i32 noundef %i.ah) #5
  %.not.i18 = icmp eq i32 %i.ai, 0
  br i1 %.not.i18, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call i32 @BN_GF2m_mod_exp_arr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.af, ptr noundef nonnull readonly %i.d, ptr noundef %3)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.0.i = phi i32 [ 0, %bb.m ], [ %i.aj, %bb.o ], [ 0, %bb.n ]
  tail call void @BN_CTX_end(ptr noundef %3) #5
  br label %BN_GF2m_mod_sqrt_arr.exit

BN_GF2m_mod_sqrt_arr.exit:                        ; preds = %bb.p, %bb.l, %BN_GF2m_poly2arr.exit.thread
  %.0 = phi i32 [ %.029.i22, %BN_GF2m_poly2arr.exit.thread ], [ 1, %bb.l ], [ %.0.i, %bb.p ]
  tail call void @CRYPTO_free(ptr noundef nonnull %i.d, ptr noundef nonnull @.str, i32 noundef 983) #5
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %BN_GF2m_mod_sqrt_arr.exit
  %.015 = phi i32 [ %.0, %BN_GF2m_mod_sqrt_arr.exit ], [ 0, %bb.a ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_GF2m_mod_solve_quad_arr(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !25
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @BN_zero_ex(ptr noundef %0) #5
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  tail call void @BN_CTX_start(ptr noundef %3) #5
  %i.c = tail call ptr @BN_CTX_get(ptr noundef %3) #5 ; 8 uses
  %i.d = tail call ptr @BN_CTX_get(ptr noundef %3) #5 ; 25 uses
  %i.e = tail call ptr @BN_CTX_get(ptr noundef %3) #5 ; 14 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %BN_GF2m_add.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @BN_GF2m_mod_arr(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %2)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %BN_GF2m_add.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @BN_is_zero(ptr noundef %i.c) #5
  %.not86 = icmp eq i32 %i.h, 0
  br i1 %.not86, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @BN_zero_ex(ptr noundef %0) #5
  br label %BN_GF2m_add.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.i = load i32, ptr %2, align 4, !tbaa !25
  %i.j = and i32 %i.i, 1
  %.not87 = icmp eq i32 %i.j, 0
  br i1 %.not87, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call ptr @BN_copy(ptr noundef %i.d, ptr noundef %i.c) #5
  %.not98 = icmp eq ptr %i.k, null
  br i1 %.not98, label %BN_GF2m_add.exit.thread, label %.preheader153

.preheader153:                                    ; preds = %bb.h
  %i.l = load i32, ptr %2, align 4, !tbaa !25
  %.not99156 = icmp slt i32 %i.l, 3
  br i1 %.not99156, label %.loopexit154, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader153
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.loopexit152
  %.0157 = phi i32 [ 1, %.lr.ph ], [ %i.df, %.loopexit152 ] ; 2 uses
  %i.o = tail call i32 @BN_GF2m_mod_sqr_arr(ptr noundef %i.d, ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef %3)
  %.not104 = icmp eq i32 %i.o, 0
  br i1 %.not104, label %BN_GF2m_add.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call i32 @BN_GF2m_mod_sqr_arr(ptr noundef %i.d, ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef %3)
  %.not105 = icmp eq i32 %i.p, 0
  br i1 %.not105, label %BN_GF2m_add.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load i32, ptr %i.m, align 8, !tbaa !8
  %i.r = load i32, ptr %i.n, align 8, !tbaa !8
  %i.s = icmp slt i32 %i.q, %i.r                  ; 2 uses
  %..i = select i1 %i.s, ptr %i.c, ptr %i.d       ; 3 uses
  %.31.i = select i1 %i.s, ptr %i.d, ptr %i.c     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %..i, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !8
  %i.v = tail call ptr @bn_wexpand(ptr noundef %i.d, i32 noundef %i.u) #5
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %BN_GF2m_add.exit.thread, label %.preheader32.i

.preheader32.i:                                   ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.31.i, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !8    ; 6 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.preheader32.i
  %i.aa = load ptr, ptr %..i, align 8, !tbaa !12  ; 7 uses
  %i.ab = load ptr, ptr %.31.i, align 8, !tbaa !12 ; 7 uses
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !12  ; 7 uses
  %wide.trip.count.i = zext nneg i32 %i.y to i64  ; 5 uses
  %min.iters.check183 = icmp ult i32 %i.y, 6
  br i1 %min.iters.check183, label %scalar.ph182.preheader, label %vector.memcheck179
end_hunk_2
begin_hunk_3_@BN_GF2m_mod_solve_quad_arr:bb.a
  store <2 x i64> %wide.load204, ptr %i.jl, align 8, !tbaa !13
  store <2 x i64> %wide.load205, ptr %i.jm, align 8, !tbaa !13
  %index.next206 = add nuw i64 %index203, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next206, %n.vec201
  br i1 %i.jn, label %middle.block207, label %vector.body202, !llvm.loop !87

middle.block207:                                  ; preds = %vector.body202
  %cmp.n208 = icmp eq i64 %i.jd, %n.vec201
  br i1 %cmp.n208, label %.loopexit, label %scalar.ph198.preheader

scalar.ph198.preheader:                           ; preds = %.lr.ph35.i132, %middle.block207
  %indvars.iv39.i134.ph = phi i64 [ %i.jc, %.lr.ph35.i132 ], [ %i.jh, %middle.block207 ] ; 4 uses
  %i.jo = sub nsw i64 %wide.trip.count42.i133, %indvars.iv39.i134.ph
  %xtraiter282 = and i64 %i.jo, 3                 ; 2 uses
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod283.not, label %scalar.ph198.prol.loopexit, label %scalar.ph198.prol

scalar.ph198.prol:                                ; preds = %scalar.ph198.preheader, %scalar.ph198.prol
  %indvars.iv39.i134.prol = phi i64 [ %indvars.iv.next40.i135.prol, %scalar.ph198.prol ], [ %indvars.iv39.i134.ph, %scalar.ph198.preheader ] ; 3 uses
  %prol.iter284 = phi i64 [ %prol.iter284.next, %scalar.ph198.prol ], [ 0, %scalar.ph198.preheader ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv39.i134.prol
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !13
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv39.i134.prol
  store i64 %i.jq, ptr %i.jr, align 8, !tbaa !13
  %indvars.iv.next40.i135.prol = add nuw nsw i64 %indvars.iv39.i134.prol, 1 ; 2 uses
  %prol.iter284.next = add i64 %prol.iter284, 1   ; 2 uses
  %prol.iter284.cmp.not = icmp eq i64 %prol.iter284.next, %xtraiter282
  br i1 %prol.iter284.cmp.not, label %scalar.ph198.prol.loopexit, label %scalar.ph198.prol, !llvm.loop !88

scalar.ph198.prol.loopexit:                       ; preds = %scalar.ph198.prol, %scalar.ph198.preheader
  %indvars.iv39.i134.unr = phi i64 [ %indvars.iv39.i134.ph, %scalar.ph198.preheader ], [ %indvars.iv.next40.i135.prol, %scalar.ph198.prol ]
  %i.js = sub nsw i64 %indvars.iv39.i134.ph, %wide.trip.count42.i133
  %i.jt = icmp ugt i64 %i.js, -4
  br i1 %i.jt, label %.loopexit, label %scalar.ph198

scalar.ph214:                                     ; preds = %scalar.ph214.prol.loopexit, %scalar.ph214
  %indvars.iv.i139 = phi i64 [ %indvars.iv.next.i140.3, %scalar.ph214 ], [ %indvars.iv.i139.unr, %scalar.ph214.prol.loopexit ] ; 7 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv.i139
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !13
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i139
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !13
  %i.jy = xor i64 %i.jx, %i.jv
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.i139
  store i64 %i.jy, ptr %i.jz, align 8, !tbaa !13
  %indvars.iv.next.i140 = add nuw nsw i64 %indvars.iv.i139, 1 ; 3 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv.next.i140
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !13
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i140
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !13
  %i.ke = xor i64 %i.kd, %i.kb
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.next.i140
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !13
  %indvars.iv.next.i140.1 = add nuw nsw i64 %indvars.iv.i139, 2 ; 3 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv.next.i140.1
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !13
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i140.1
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !13
  %i.kk = xor i64 %i.kj, %i.kh
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.next.i140.1
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !13
  %indvars.iv.next.i140.2 = add nuw nsw i64 %indvars.iv.i139, 3 ; 3 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv.next.i140.2
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !13
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i140.2
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !13
  %i.kq = xor i64 %i.kp, %i.kn
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.next.i140.2
  store i64 %i.kq, ptr %i.kr, align 8, !tbaa !13
  %indvars.iv.next.i140.3 = add nuw nsw i64 %indvars.iv.i139, 4 ; 2 uses
  %exitcond.not.i141.3 = icmp eq i64 %indvars.iv.next.i140.3, %wide.trip.count.i138
  br i1 %exitcond.not.i141.3, label %.preheader.i128, label %scalar.ph214, !llvm.loop !89

scalar.ph198:                                     ; preds = %scalar.ph198.prol.loopexit, %scalar.ph198
  %indvars.iv39.i134 = phi i64 [ %indvars.iv.next40.i135.3, %scalar.ph198 ], [ %indvars.iv39.i134.unr, %scalar.ph198.prol.loopexit ] ; 6 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv39.i134
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !13
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv39.i134
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !13
  %indvars.iv.next40.i135 = add nuw nsw i64 %indvars.iv39.i134, 1 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next40.i135
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !13
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.next40.i135
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !13
  %indvars.iv.next40.i135.1 = add nuw nsw i64 %indvars.iv39.i134, 2 ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next40.i135.1
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !13
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.next40.i135.1
  store i64 %i.kz, ptr %i.la, align 8, !tbaa !13
  %indvars.iv.next40.i135.2 = add nuw nsw i64 %indvars.iv39.i134, 3 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.next40.i135.2
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !13
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.next40.i135.2
  store i64 %i.lc, ptr %i.ld, align 8, !tbaa !13
  %indvars.iv.next40.i135.3 = add nuw nsw i64 %indvars.iv39.i134, 4 ; 2 uses
  %exitcond43.not.i136.3 = icmp eq i64 %indvars.iv.next40.i135.3, %wide.trip.count42.i133
  br i1 %exitcond43.not.i136.3, label %.loopexit, label %scalar.ph198, !llvm.loop !90

.loopexit:                                        ; preds = %scalar.ph198.prol.loopexit, %scalar.ph198, %middle.block207, %.preheader.i128
  store i32 %i.iy, ptr %i.dr, align 8, !tbaa !8
  tail call void @bn_correct_top(ptr noundef nonnull %i.e) #5
  %i.le = add nuw nsw i32 %.1159, 1               ; 2 uses
  %i.lf = load i32, ptr %2, align 4, !tbaa !25
  %.not91.not = icmp slt i32 %i.le, %i.lf
  br i1 %.not91.not, label %.lr.ph160, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.lg = add nuw nsw i32 %.081, 1
  %i.lh = tail call i32 @BN_is_zero(ptr noundef nonnull %i.e) #5
  %i.li = icmp ne i32 %i.lh, 0
  %i.lj = icmp samesign ult i32 %.081, 49
  %i.lk = select i1 %i.li, i1 %i.lj, i1 false
  br i1 %i.lk, label %bb.m, label %bb.s, !llvm.loop !92

bb.s:                                             ; preds = %._crit_edge
  %i.ll = tail call i32 @BN_is_zero(ptr noundef nonnull %i.e) #5
  %.not92 = icmp eq i32 %i.ll, 0
  br i1 %.not92, label %.loopexit154, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1065, ptr noundef nonnull @__func__.BN_GF2m_mod_solve_quad_arr) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 113, ptr noundef null) #5
  br label %BN_GF2m_add.exit.thread

.loopexit154:                                     ; preds = %.loopexit152, %.preheader153, %bb.s
  %i.lm = tail call i32 @BN_GF2m_mod_sqr_arr(ptr noundef nonnull %i.e, ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef %3)
  %.not100 = icmp eq i32 %i.lm, 0
  br i1 %.not100, label %BN_GF2m_add.exit.thread, label %bb.u

bb.u:                                             ; preds = %.loopexit154
  %i.ln = tail call i32 @BN_GF2m_add(ptr noundef nonnull %i.e, ptr noundef %i.d, ptr noundef nonnull %i.e)
  %.not101 = icmp eq i32 %i.ln, 0
  br i1 %.not101, label %BN_GF2m_add.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.lo = tail call i32 @BN_ucmp(ptr noundef nonnull %i.e, ptr noundef %i.c) #5
  %.not102 = icmp eq i32 %i.lo, 0
  br i1 %.not102, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1075, ptr noundef nonnull @__func__.BN_GF2m_mod_solve_quad_arr) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 116, ptr noundef null) #5
  br label %BN_GF2m_add.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.lp = tail call ptr @BN_copy(ptr noundef %0, ptr noundef %i.d) #5
  %.not103 = icmp ne ptr %i.lp, null
  %spec.select = zext i1 %.not103 to i32
  br label %BN_GF2m_add.exit.thread

BN_GF2m_add.exit.thread:                          ; preds = %bb.k, %bb.j, %bb.i, %bb.o, %bb.n, %bb.m, %.loopexit149, %bb.r, %bb.q, %bb.p, %.lr.ph160, %bb.x, %bb.u, %.loopexit154, %bb.l, %bb.h, %bb.d, %bb.c, %bb.w, %bb.t, %bb.f
  %.082 = phi i32 [ 0, %bb.c ], [ 1, %bb.f ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %.loopexit149 ], [ 0, %bb.w ], [ 0, %bb.d ], [ %spec.select, %bb.x ], [ 0, %bb.u ], [ 0, %.loopexit154 ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %.lr.ph160 ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ]
  tail call void @BN_CTX_end(ptr noundef %3) #5
  br label %bb.y

bb.y:                                             ; preds = %BN_GF2m_add.exit.thread, %bb.b
  %.083 = phi i32 [ 1, %bb.b ], [ %.082, %BN_GF2m_add.exit.thread ]
  ret i32 %.083
}

declare i32 @BN_ucmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -2147483646, -2147483648) i32 @BN_GF2m_mod_solve_quad(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_num_bits(ptr noundef %2) #5 ; 3 uses
  %i.b = add nsw i32 %i.a, 1
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.c, i64 noundef 4, ptr noundef nonnull @.str, i32 noundef 1106) #5 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @BN_is_odd(ptr noundef %2) #5
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %BN_GF2m_poly2arr.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = load ptr, ptr %2, align 8, !tbaa !12
  %i.k = zext nneg i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.k, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 2 uses
  %.02637.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 2 uses
  %.not30.i = icmp eq i64 %i.m, 0
  br i1 %.not30.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %indvars.iv.next.tr.i = trunc i64 %indvars.iv.next.i to i32
  %i.n = shl nsw i32 %indvars.iv.next.tr.i, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.preheader.i
  %.035.i = phi i64 [ -9223372036854775808, %.preheader.i ], [ %i.t, %bb.i ] ; 2 uses
  %.134.i = phi i32 [ %.02637.i, %.preheader.i ], [ %.2.i, %bb.i ] ; 4 uses
  %.02732.i = phi i32 [ 63, %.preheader.i ], [ %i.u, %bb.i ] ; 3 uses
  %i.o = and i64 %.035.i, %i.m
  %.not31.i = icmp eq i64 %i.o, 0
  br i1 %.not31.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not20 = icmp sgt i32 %.134.i, %i.a
  br i1 %.not20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add nuw nsw i32 %.02732.i, %i.n
  %i.q = sext i32 %.134.i to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.q
  store i32 %i.p, ptr %i.r, align 4, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = add nsw i32 %.134.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.2.i = phi i32 [ %i.s, %bb.h ], [ %.134.i, %bb.e ] ; 2 uses
  %i.t = lshr i64 %.035.i, 1
  %i.u = add nsw i32 %.02732.i, -1
  %.not41.i = icmp eq i32 %.02732.i, 0
  br i1 %.not41.i, label %.loopexit.i, label %bb.e, !llvm.loop !33

.loopexit.i:                                      ; preds = %bb.i, %bb.d
  %.3.i = phi i32 [ %.02637.i, %bb.d ], [ %.2.i, %bb.i ] ; 4 uses
  %i.v = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.v, label %bb.d, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.w = icmp sgt i32 %.3.i, 0
  br i1 %i.w, label %bb.j, label %._crit_edge.thread.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.x = load i32, ptr %i.d, align 4, !tbaa !25
  %i.y = icmp sgt i32 %i.x, 661
  br i1 %i.y, label %BN_GF2m_poly2arr.exit.thread, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.j, %._crit_edge.i, %bb.c
  %.026.lcssa43.i = phi i32 [ %.3.i, %._crit_edge.i ], [ %.3.i, %bb.j ], [ 0, %bb.c ] ; 4 uses
  %.not21 = icmp sgt i32 %.026.lcssa43.i, %i.a
  br i1 %.not21, label %BN_GF2m_poly2arr.exit.thread25, label %BN_GF2m_poly2arr.exit

BN_GF2m_poly2arr.exit.thread25:                   ; preds = %._crit_edge.thread.i
  %i.z = add nsw i32 %.026.lcssa43.i, 1
  br label %BN_GF2m_poly2arr.exit.thread

BN_GF2m_poly2arr.exit:                            ; preds = %._crit_edge.thread.i
  %i.aa = sext i32 %.026.lcssa43.i to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aa
  store i32 -1, ptr %i.ab, align 4, !tbaa !25
  %i.ac = add nsw i32 %.026.lcssa43.i, 1          ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %BN_GF2m_poly2arr.exit.thread, label %bb.k

BN_GF2m_poly2arr.exit.thread:                     ; preds = %BN_GF2m_poly2arr.exit.thread25, %bb.j, %bb.b, %BN_GF2m_poly2arr.exit
  %.029.i19 = phi i32 [ %i.ac, %BN_GF2m_poly2arr.exit ], [ 0, %bb.b ], [ 0, %bb.j ], [ %i.z, %BN_GF2m_poly2arr.exit.thread25 ]
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1111, ptr noundef nonnull @__func__.BN_GF2m_mod_solve_quad) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, ptr noundef null) #5
  br label %bb.l

bb.k:                                             ; preds = %BN_GF2m_poly2arr.exit
  %i.ad = tail call i32 @BN_GF2m_mod_solve_quad_arr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.d, ptr noundef %3)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %BN_GF2m_poly2arr.exit.thread
  %.0 = phi i32 [ 0, %bb.a ], [ %.029.i19, %BN_GF2m_poly2arr.exit.thread ], [ %i.ad, %bb.k ]
  tail call void @CRYPTO_free(ptr noundef %i.d, ptr noundef nonnull @.str, i32 noundef 1117) #5
  ret i32 %.0
}

declare i32 @BN_is_odd(ptr noundef) local_unnamed_addr #2

declare i32 @BN_num_bits_word(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"bignum_st", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!10 = !{!"p1 long", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = distinct !{!15, !16, !17, !18}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !16, !17, !18}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !16, !17}
!24 = distinct !{!24, !16, !17}
!25 = !{!5, !5, i64 0}
!26 = distinct !{!26, !16, !17, !18}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !16, !17}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !16, !17, !18}
!43 = distinct !{!43, !16, !17}
!44 = distinct !{!44, !16}
!45 = !{!46}
!46 = distinct !{!46, !47}
!47 = distinct !{!47, !"LVerDomain"}
!48 = !{!49, !50}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = !{!49}
!52 = !{!50}
!53 = distinct !{!53, !16, !17, !18}
!54 = distinct !{!54, !16, !17}
!55 = distinct !{!55, !16}
!56 = !{!57}
!57 = distinct !{!57, !58}
!58 = distinct !{!58, !"LVerDomain"}
!59 = !{!60}
!60 = distinct !{!60, !58}
!61 = !{!62, !57, !63}
!62 = distinct !{!62, !58}
!63 = distinct !{!63, !58}
!64 = !{!63}
!65 = !{!62}
!66 = !{!57, !63}
!67 = distinct !{!67, !16, !17, !18}
!68 = distinct !{!68, !16, !17}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
!71 = distinct !{!71, !16}
!72 = distinct !{!72, !16, !17, !18}
!73 = distinct !{!73, !20}
!74 = distinct !{!74, !16, !17, !18}
!75 = distinct !{!75, !20}
!76 = distinct !{!76, !16, !17}
!77 = distinct !{!77, !16, !17}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16, !17, !18}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !16, !17, !18}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !16, !17}
!84 = distinct !{!84, !16, !17}
!85 = distinct !{!85, !16, !17, !18}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !16, !17, !18}
!88 = distinct !{!88, !20}
!89 = distinct !{!89, !16, !17}
!90 = distinct !{!90, !16, !17}
!91 = distinct !{!91, !16}
!92 = distinct !{!92, !16}
end_hunk_3
