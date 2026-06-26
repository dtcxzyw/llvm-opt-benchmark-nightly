inline.NumInlined: 19
inline.NumDeleted: 1
begin_hunk_0_@LexScanVerbatim:bb.a
  %i.kr = sext i32 %i.ki to i64
  %i.ks = getelementptr inbounds i8, ptr %i.b, i64 %i.kr
  store i8 %i.kk, ptr %i.ks, align 1, !tbaa !8
  br label %.backedge

._crit_edge284.thread:                            ; preds = %.lr.ph283.split, %._crit_edge284
  %.22.lcssa416 = phi ptr [ %.22.lcssa, %._crit_edge284 ], [ %.0199313, %.lr.ph283.split ]
  %i.kt = load i8, ptr %.0186317, align 1, !tbaa !8
  %i.ku = zext i8 %i.kt to i32
  %i.kv = call i32 @putc(i32 noundef %i.ku, ptr noundef nonnull %0) ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge284.thread, %bb.db, %bb.dc, %bb.cz, %._crit_edge279, %bb.dd, %bb.dg, %bb.df, %._crit_edge.thread, %bb.aw, %bb.bu, %bb.bs, %bb.bt, %bb.bq, %bb.bj, %bb.ai, %bb.aj, %bb.q, %.loopexit, %bb.p, %bb.n, %bb.o, %bb.l, %bb.dh, %bb.ag
  %.0186317.be = phi ptr [ %i.j, %bb.dh ], [ %i.j, %bb.n ], [ %i.j, %bb.o ], [ %i.j, %bb.l ], [ %i.j, %bb.p ], [ %i.j, %bb.q ], [ %i.j, %.loopexit ], [ %i.cm, %bb.ag ], [ %i.j, %bb.ai ], [ %i.j, %bb.aj ], [ %i.j, %bb.aw ], [ %i.j, %._crit_edge.thread ], [ %i.j, %bb.bj ], [ %i.j, %bb.bs ], [ %i.j, %bb.bt ], [ %i.j, %bb.bq ], [ %i.j, %bb.bu ], [ %i.j, %bb.db ], [ %i.ip, %._crit_edge279 ], [ %i.j, %._crit_edge284.thread ], [ %i.j, %bb.df ], [ %i.j, %bb.dg ], [ %i.j, %bb.dd ], [ %i.j, %bb.cz ], [ %i.j, %bb.dc ]
  %.0187316.be = phi i32 [ %.0187316, %bb.dh ], [ %.0187316, %bb.n ], [ %.0187316, %bb.o ], [ %.0187316, %bb.l ], [ %.0187316, %bb.p ], [ %.0187316, %bb.q ], [ %.0187316, %.loopexit ], [ %.0187316, %bb.ag ], [ %.0187316, %bb.ai ], [ %.0187316, %bb.aj ], [ %i.dw, %bb.aw ], [ %.0187316, %._crit_edge.thread ], [ %i.fd, %bb.bj ], [ %.0187316, %bb.bs ], [ %.0187316, %bb.bt ], [ %.0187316, %bb.bq ], [ %.0187316, %bb.bu ], [ %.0187316, %bb.db ], [ %.0187316, %._crit_edge279 ], [ %.0187316, %._crit_edge284.thread ], [ %.0187316, %bb.df ], [ %.0187316, %bb.dg ], [ %.0187316, %bb.dd ], [ %.0187316, %bb.cz ], [ %.0187316, %bb.dc ]
  %.0191314.be = phi i32 [ %.0191314, %bb.dh ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.p ], [ 1, %bb.q ], [ 0, %.loopexit ], [ %spec.select, %bb.ag ], [ %.0191314, %bb.ai ], [ %.0191314, %bb.aj ], [ 0, %bb.aw ], [ 0, %._crit_edge.thread ], [ 0, %bb.bj ], [ 0, %bb.bs ], [ 0, %bb.bt ], [ 0, %bb.bq ], [ 0, %bb.bu ], [ 0, %bb.db ], [ 0, %._crit_edge279 ], [ 0, %._crit_edge284.thread ], [ 0, %bb.df ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.cz ], [ 0, %bb.dc ]
  %.0199313.be = phi ptr [ %.0199313, %bb.dh ], [ %i.am, %bb.n ], [ %.1200.lcssa, %bb.o ], [ %.1200.lcssa, %bb.l ], [ %.1200.lcssa, %bb.p ], [ %.0199313, %bb.q ], [ %.5, %.loopexit ], [ %.9, %bb.ag ], [ %.0199313, %bb.ai ], [ %.0199313, %bb.aj ], [ %.12, %bb.aw ], [ %.25.lcssa418, %._crit_edge.thread ], [ %.15, %bb.bj ], [ %i.gb, %bb.bs ], [ %.16.lcssa, %bb.bt ], [ %.16.lcssa, %bb.bq ], [ %.16.lcssa, %bb.bu ], [ %i.kp, %bb.db ], [ %.20.lcssa, %._crit_edge279 ], [ %.22.lcssa416, %._crit_edge284.thread ], [ %i.lh, %bb.df ], [ %.25.lcssa, %bb.dg ], [ %.25.lcssa, %bb.dd ], [ %.22.lcssa, %bb.cz ], [ %.22.lcssa, %bb.dc ]
  %.0202312.be = phi i32 [ %.0202312, %bb.dh ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.p ], [ %.0202312, %bb.q ], [ %i.bl, %.loopexit ], [ %.3205, %bb.ag ], [ %.0202312, %bb.ai ], [ %.0202312, %bb.aj ], [ 0, %bb.aw ], [ 0, %._crit_edge.thread ], [ 0, %bb.bj ], [ 0, %bb.bs ], [ 0, %bb.bt ], [ 0, %bb.bq ], [ 0, %bb.bu ], [ 0, %bb.db ], [ 0, %._crit_edge279 ], [ 0, %._crit_edge284.thread ], [ 0, %bb.df ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.cz ], [ 0, %bb.dc ]
  br label %bb.d, !llvm.loop !82

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !8
  %i.ky = zext i8 %i.kx to i32
  %i.kz = call i32 @putc(i32 noundef %i.ky, ptr noundef nonnull %0) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count325
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph.split, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.bz, %.preheader265
  %.25.lcssa = phi ptr [ %.0199313, %.preheader265 ], [ %.26.us, %bb.bz ] ; 4 uses
  br i1 %i.h, label %bb.dd, label %._crit_edge.thread

bb.dd:                                            ; preds = %._crit_edge
  %i.la = load i32, ptr %i.c, align 4, !tbaa !4   ; 3 uses
  %i.lb = icmp slt i32 %i.la, 512
  br i1 %i.lb, label %bb.de, label %.backedge

bb.de:                                            ; preds = %bb.dd
  %i.lc = load i8, ptr %.0186317, align 1, !tbaa !8 ; 2 uses
  %i.ld = zext i8 %i.lc to i64
  %i.le = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !8
  %i.lg = icmp eq i8 %i.lf, 8
  br i1 %i.lg, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.lh = call fastcc ptr @BuildLines(ptr noundef %.25.lcssa, ptr noundef %i.b, ptr noundef %i.c)
  br label %.backedge

bb.dg:                                            ; preds = %bb.de
  %i.li = add nsw i32 %i.la, 1
  store i32 %i.li, ptr %i.c, align 4, !tbaa !4
  %i.lj = sext i32 %i.la to i64
  %i.lk = getelementptr inbounds i8, ptr %i.b, i64 %i.lj
  store i8 %i.lc, ptr %i.lk, align 1, !tbaa !8
  br label %.backedge

._crit_edge.thread:                               ; preds = %.lr.ph.split, %._crit_edge
  %.25.lcssa418 = phi ptr [ %.25.lcssa, %._crit_edge ], [ %.0199313, %.lr.ph.split ]
  %i.ll = load i8, ptr %.0186317, align 1, !tbaa !8
  %i.lm = zext i8 %i.ll to i32
  %i.ln = call i32 @putc(i32 noundef %i.lm, ptr noundef nonnull %0) ; 0 uses
  br label %.backedge

bb.dh:                                            ; preds = %bb.d
  %i.lo = zext i8 %i.k to i32
  %i.lp = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 22, ptr noundef nonnull @.str.53, i32 noundef 0, ptr noundef nonnull @file_pos, i32 noundef %i.lo) #10 ; 0 uses
  %i.lq = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.lr = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef %i.lq, ptr noundef nonnull @.str.54) #10 ; 0 uses
  br label %.backedge

bb.di:                                            ; preds = %bb.ax, %bb.cb
  br i1 %i.h, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.ls = load i32, ptr %i.c, align 4, !tbaa !4
  %i.lt = icmp slt i32 %i.ls, 512
  %i.lu = load i8, ptr getelementptr inbounds nuw (i8, ptr @chtbl, i64 10), align 2
  %i.lv = icmp eq i8 %i.lu, 8
  %or.cond429 = select i1 %i.lt, i1 %i.lv, i1 false
  br i1 %or.cond429, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.lw = call fastcc ptr @BuildLines(ptr noundef %.0199313, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.dm

bb.dl:                                            ; preds = %bb.di
  %i.lx = call i32 @putc(i32 noundef 10, ptr noundef nonnull %0) ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dj, %bb.dk, %bb.dl
  %.28 = phi ptr [ %i.lw, %bb.dk ], [ %.0199313, %bb.dl ], [ %.0199313, %bb.dj ] ; 2 uses
  %i.ly = load ptr, ptr @startline, align 8, !tbaa !23
  %i.lz = ptrtoint ptr %.0186317 to i64
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = icmp sgt i64 %i.mb, 2047
  br i1 %i.mc, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.md = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.me = and i32 %i.md, 1048575
  %i.mf = or disjoint i32 %i.me, 1048576
  store i32 %i.mf, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.mg = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 21, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  store ptr %.0186317, ptr @chpt, align 8, !tbaa !23
  %i.mh = icmp eq ptr %.28, null
  %or.cond3 = select i1 %i.h, i1 %i.mh, i1 false
  br i1 %or.cond3, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.mi = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.36, ptr noundef nonnull @file_pos) #10
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.29 = phi ptr [ %i.mi, %bb.dp ], [ %.28, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %.29
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @BuildLines(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !4
  %i.b = add i32 %i.a, 68
  %i.c = ashr i32 %i.b, 3
  %i.d = add nsw i32 %i.c, 1                      ; 4 uses
  store i32 %i.d, ptr @zz_size, align 4, !tbaa !4
  %i.e = icmp ugt i32 %i.d, 264
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %.pre = load ptr, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @GetMemory(i32 noundef %i.d, ptr noundef nonnull @file_pos) #10 ; 2 uses
  store ptr %i.k, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.i, ptr @zz_hold, align 8, !tbaa !35
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !8
  store ptr %i.l, ptr %i.h, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.m = phi ptr [ %i.k, %bb.d ], [ %i.i, %bb.e ], [ %.pre, %bb.b ] ; 17 uses
  %i.n = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 33
  store i8 %i.o, ptr %i.p, align 1, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i8 11, ptr %i.q, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.m, ptr %i.s, align 8, !tbaa !8
  store ptr %i.m, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.m, ptr %i.t, align 8, !tbaa !8
  store ptr %i.m, ptr %i.m, align 8, !tbaa !8
  %i.u = load i16, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 2), align 2, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 34
  store i16 %i.u, ptr %i.v, align 2, !tbaa !8
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  store i32 %i.w, ptr %i.x, align 4
  %i.y = load i32, ptr %2, align 4, !tbaa !4
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ae = load i32, ptr %2, align 4, !tbaa !4
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.g, label %._crit_edge.loopexit, !llvm.loop !83

._crit_edge.loopexit:                             ; preds = %bb.g
  %3 = and i64 %indvars.iv.next, 4294967295
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.0.lcssa = phi i64 [ 0, %bb.f ], [ %3, %._crit_edge.loopexit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.0.lcssa
  store i8 0, ptr %i.ai, align 1, !tbaa !8
  store i32 0, ptr %2, align 4, !tbaa !4
  %i.aj = icmp eq ptr %0, null
  br i1 %i.aj, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !8
  %i.am = icmp eq i8 %i.al, 11
  br i1 %i.am, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.an = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 19), align 1, !tbaa !8 ; 2 uses
  %i.ao = zext i8 %i.an to i32                    ; 2 uses
  store i32 %i.ao, ptr @zz_size, align 4, !tbaa !4
  %i.ap = zext i8 %i.an to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !35 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.au = tail call ptr @GetMemory(i32 noundef %i.ao, ptr noundef %i.at) #10 ; 2 uses
  store ptr %i.au, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store ptr %i.ar, ptr @zz_hold, align 8, !tbaa !35
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !8
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !35
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.aw = phi ptr [ %i.au, %bb.j ], [ %i.ar, %bb.k ] ; 16 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i8 19, ptr %i.ax, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.aw, ptr %i.ba, align 8, !tbaa !8
  store ptr %i.aw, ptr %i.aw, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 34
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, 1048575                  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 36 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, -1048576
  %i.bk = or disjoint i32 %i.bj, %i.bg
  store i32 %i.bk, ptr %i.bh, align 4
  %i.bl = load i32, ptr %i.be, align 4
  %i.bm = and i32 %i.bl, -1048576
  %i.bn = or disjoint i32 %i.bm, %i.bg
  store i32 %i.bn, ptr %i.bh, align 4
  %i.bo = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  store i32 %i.bp, ptr @zz_size, align 4, !tbaa !4
  %i.bq = zext i8 %i.bo to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bq ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !35 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.bv = tail call ptr @GetMemory(i32 noundef %i.bp, ptr noundef %i.bu) #10
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store ptr %i.bs, ptr @zz_hold, align 8, !tbaa !35
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !8
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !35
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bx = phi ptr [ %i.bv, %bb.m ], [ %i.bs, %bb.n ] ; 12 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i8 0, ptr %i.by, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bx, ptr %i.cb, align 8, !tbaa !8
  store ptr %i.bx, ptr %i.bx, align 8, !tbaa !8
  store ptr %i.bx, ptr @xx_link, align 8, !tbaa !35
  store ptr %i.bx, ptr @zz_res, align 8, !tbaa !35
  store ptr %i.aw, ptr @zz_hold, align 8, !tbaa !35
  %i.cc = load ptr, ptr %i.aw, align 8, !tbaa !8
  store ptr %i.cc, ptr @zz_tmp, align 8, !tbaa !35
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !8
  store ptr %i.cd, ptr %i.aw, align 8, !tbaa !8
  %i.ce = load ptr, ptr @zz_hold, align 8, !tbaa !35
  %i.cf = load ptr, ptr @zz_res, align 8, !tbaa !35 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !8
  %i.ci = load ptr, ptr @zz_tmp, align 8, !tbaa !35 ; 2 uses
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !8
  %i.cj = load ptr, ptr @zz_res, align 8, !tbaa !35
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !8
  %i.cl = load ptr, ptr @xx_link, align 8, !tbaa !35 ; 4 uses
  store ptr %i.cl, ptr @zz_res, align 8, !tbaa !35
  store ptr %0, ptr @zz_hold, align 8, !tbaa !35
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !8  ; 3 uses
  store ptr %i.co, ptr @zz_tmp, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !8  ; 2 uses
  store ptr %i.cq, ptr %i.cn, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store ptr %0, ptr %i.cr, align 8, !tbaa !8
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store ptr %i.cl, ptr %i.cs, align 8, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.p
  %.052 = phi ptr [ %i.aw, %bb.o ], [ %i.aw, %bb.p ], [ %0, %bb.h ] ; 8 uses
  %i.ct = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 1), align 1, !tbaa !8 ; 2 uses
  %i.cu = zext i8 %i.ct to i32                    ; 2 uses
  store i32 %i.cu, ptr @zz_size, align 4, !tbaa !4
  %i.cv = zext i8 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cv ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !35 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cz = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.da = tail call ptr @GetMemory(i32 noundef %i.cu, ptr noundef %i.cz) #10 ; 2 uses
  store ptr %i.da, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store ptr %i.cx, ptr @zz_hold, align 8, !tbaa !35
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !8
  store ptr %i.db, ptr %i.cw, align 8, !tbaa !35
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.dc = phi ptr [ %i.da, %bb.r ], [ %i.cx, %bb.s ] ; 17 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store i8 1, ptr %i.dd, align 8, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr %i.dc, ptr %i.df, align 8, !tbaa !8
  store ptr %i.dc, ptr %i.de, align 8, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.dc, ptr %i.dg, align 8, !tbaa !8
  store ptr %i.dc, ptr %i.dc, align 8, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 44 ; 2 uses
  %i.di = load i16, ptr %i.dh, align 4
  %i.dj = and i16 %i.di, -769
  store i16 %i.dj, ptr %i.dh, align 4
  %i.dk = load i16, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 2), align 2, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 34
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !8
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 36
  store i32 %i.dm, ptr %i.dn, align 4
  %i.do = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull @.str.56, ptr noundef nonnull @file_pos) #10 ; 4 uses
  %i.dp = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.dq = zext i8 %i.dp to i32                    ; 2 uses
  store i32 %i.dq, ptr @zz_size, align 4, !tbaa !4
  %i.dr = zext i8 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.dr ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !35 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dv = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.dw = tail call ptr @GetMemory(i32 noundef %i.dq, ptr noundef %i.dv) #10
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store ptr %i.dt, ptr @zz_hold, align 8, !tbaa !35
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !8
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !35
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.dy = phi ptr [ %i.dw, %bb.u ], [ %i.dt, %bb.v ] ; 12 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store i8 0, ptr %i.dz, align 8, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
end_hunk_0
