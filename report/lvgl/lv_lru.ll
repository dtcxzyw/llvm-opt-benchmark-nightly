inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lv_lru_set:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.03645.i, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33
  %i.af = mul i32 %i.ae, 1540483477               ; 2 uses
  %i.ag = lshr i32 %i.af, 24
  %i.ah = xor i32 %i.ag, %i.af
  %i.ai = mul i32 %i.ah, 1540483477
  %i.aj = mul i32 %i.ac, 1540483477
  %i.ak = xor i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.03645.i, i64 8 ; 2 uses
  %i.am = add i32 %.046.i, -8                     ; 3 uses
  %i.an = icmp ugt i32 %i.am, 3
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.e
  %.037.lcssa.i = phi i32 [ %i.i, %bb.e ], [ %.lcssa113.unr.a, %.lr.ph.i.prol.loopexit ], [ %i.ak, %.lr.ph.i ] ; 4 uses
  %.036.lcssa.i = phi ptr [ %1, %bb.e ], [ %.lcssa112.unr.a, %.lr.ph.i.prol.loopexit ], [ %i.al, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.f, %bb.e ], [ %.lcssa111.unr, %.lr.ph.i.prol.loopexit ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %i.ao = icmp eq i32 %.0.lcssa.i, 3
  br i1 %i.ao, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %._crit_edge.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !35
  %i.ar = sext i8 %i.aq to i32
  %i.as = shl nsw i32 %i.ar, 16
  %i.at = xor i32 %i.as, %.037.lcssa.i
  br label %.thread40.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.au = icmp samesign ugt i32 %.0.lcssa.i, 1
  br i1 %i.au, label %.thread40.i, label %bb.g

.thread40.i:                                      ; preds = %bb.f, %.thread.i
  %.139.i = phi i32 [ %i.at, %.thread.i ], [ %.037.lcssa.i, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !35
  %i.ax = sext i8 %i.aw to i32
  %i.ay = shl nsw i32 %i.ax, 8
  %i.az = xor i32 %i.ay, %.139.i
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i, label %lv_lru_hash.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread40.i
  %.243.i = phi i32 [ %i.az, %.thread40.i ], [ %.037.lcssa.i, %bb.g ]
  %i.ba = load i8, ptr %.036.lcssa.i, align 1, !tbaa !35
  %i.bb = sext i8 %i.ba to i32
  %i.bc = xor i32 %.243.i, %i.bb
  %i.bd = mul i32 %i.bc, 1540483477
  br label %lv_lru_hash.exit

lv_lru_hash.exit:                                 ; preds = %bb.g, %bb.h
  %.3.i = phi i32 [ %i.bd, %bb.h ], [ %.037.lcssa.i, %bb.g ] ; 2 uses
  %i.be = lshr i32 %.3.i, 13
  %i.bf = xor i32 %i.be, %.3.i
  %i.bg = mul i32 %i.bf, 1540483477               ; 2 uses
  %i.bh = lshr i32 %i.bg, 15
  %i.bi = xor i32 %i.bh, %i.bg
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !8
  %i.bm = urem i64 %i.bj, %i.bl                   ; 2 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm
  %.05680 = load ptr, ptr %i.bo, align 8, !tbaa !22 ; 2 uses
  %.not6481 = icmp eq ptr %.05680, null
  br i1 %.not6481, label %.critedge67, label %.lr.ph

.lr.ph:                                           ; preds = %lv_lru_hash.exit
  %i.bp = and i64 %2, 4294967295                  ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %lv_lru_cmp_keys.exit.thread
  %.05682 = phi ptr [ %.05680, %.lr.ph ], [ %.056, %lv_lru_cmp_keys.exit.thread ] ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05682, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !36
  %.not.i68 = icmp eq i64 %i.br, %i.bp
  br i1 %.not.i68, label %lv_lru_cmp_keys.exit, label %lv_lru_cmp_keys.exit.thread

lv_lru_cmp_keys.exit:                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.05682, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !26
  %i.bu = tail call i32 @lv_memcmp(ptr noundef nonnull %1, ptr noundef %i.bt, i64 noundef %i.bp) #2
  %.not65 = icmp eq i32 %i.bu, 0
  br i1 %.not65, label %.critedge, label %lv_lru_cmp_keys.exit.thread

lv_lru_cmp_keys.exit.thread:                      ; preds = %bb.i, %lv_lru_cmp_keys.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %.05682, i64 40
  %.056 = load ptr, ptr %i.bv, align 8, !tbaa !22 ; 2 uses
  %.not64 = icmp eq ptr %.056, null
  br i1 %.not64, label %.critedge67, label %bb.i, !llvm.loop !37

.critedge:                                        ; preds = %lv_lru_cmp_keys.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.05682, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !27
  %i.by = sub i64 %4, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19
  %i.cb = load ptr, ptr %.05682, align 8, !tbaa !25
  tail call void %i.ca(ptr noundef %i.cb) #2
  store ptr %3, ptr %.05682, align 8, !tbaa !25
  store i64 %4, ptr %i.bw, align 8, !tbaa !27
  br label %bb.n

.critedge67:                                      ; preds = %lv_lru_cmp_keys.exit.thread, %lv_lru_hash.exit
  %.0.lcssa = phi ptr [ null, %lv_lru_hash.exit ], [ %.05682, %lv_lru_cmp_keys.exit.thread ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !31 ; 4 uses
  %.not.i69 = icmp eq ptr %i.cd, null
  br i1 %.not.i69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge67
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !23
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !31
  tail call void @lv_memset(ptr noundef nonnull %i.cd, i8 noundef zeroext 0, i64 noundef 48) #2
  br label %lv_lru_pop_or_create_item.exit

bb.k:                                             ; preds = %.critedge67
  %i.cg = tail call ptr @lv_malloc_zeroed(i64 noundef 48) #2
  br label %lv_lru_pop_or_create_item.exit

lv_lru_pop_or_create_item.exit:                   ; preds = %bb.j, %bb.k
  %.0.i70 = phi ptr [ %i.cd, %bb.j ], [ %i.cg, %bb.k ] ; 8 uses
  store ptr %3, ptr %.0.i70, align 8, !tbaa !25
  %i.ch = tail call ptr @lv_malloc(i64 noundef %2) #2 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i70, i64 8
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !26
  %i.cj = tail call ptr @lv_memcpy(ptr noundef %i.ch, ptr noundef nonnull %1, i64 noundef %2) #2 ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i70, i64 16
  store i64 %4, ptr %i.ck, align 8, !tbaa !27
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i70, i64 24
  store i64 %2, ptr %i.cl, align 8, !tbaa !36
  %.not66 = icmp eq ptr %.0.lcssa, null
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %lv_lru_pop_or_create_item.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 40
  store ptr %.0.i70, ptr %i.cm, align 8, !tbaa !23
  br label %bb.n

bb.m:                                             ; preds = %lv_lru_pop_or_create_item.exit
  %i.cn = load ptr, ptr %0, align 8, !tbaa !21
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.bm
  store ptr %.0.i70, ptr %i.co, align 8, !tbaa !22
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %.critedge
  %.057.in = phi i64 [ %i.by, %.critedge ], [ %4, %bb.l ], [ %4, %bb.m ] ; 3 uses
  %.1 = phi ptr [ %.05682, %.critedge ], [ %.0.i70, %bb.l ], [ %.0.i70, %bb.m ]
  %.057 = trunc i64 %.057.in to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !38
  %i.cr = add i64 %i.cq, 1                        ; 2 uses
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !38
  %i.cs = getelementptr inbounds nuw i8, ptr %.1, i64 32
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !39
  %i.ct = icmp sgt i32 %.057, 0
  br i1 %i.ct, label %bb.o, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.n
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre87 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cu = and i64 %.057.in, 2147483647            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !16 ; 3 uses
  %i.cx = icmp ugt i64 %i.cu, %i.cw
  br i1 %i.cx, label %.lr.ph83, label %.loopexit

.lr.ph83:                                         ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.db = load i64, ptr %i.bk, align 8, !tbaa !8  ; 2 uses
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %lv_lru_remove_lru_item.exit.us, label %.lr.ph83.split

lv_lru_remove_lru_item.exit.us:                   ; preds = %.lr.ph83, %lv_lru_remove_lru_item.exit.us
  br label %lv_lru_remove_lru_item.exit.us

.lr.ph83.splitthread-pre-split:                   ; preds = %lv_lru_remove_lru_item.exit
  %.pr = load i64, ptr %i.bk, align 8, !tbaa !8
  br label %.lr.ph83.split

.lr.ph83.split:                                   ; preds = %.lr.ph83, %.lr.ph83.splitthread-pre-split
  %i.dd = phi i64 [ %.pr, %.lr.ph83.splitthread-pre-split ], [ %i.db, %.lr.ph83 ] ; 2 uses
  %i.de = phi i64 [ %i.eb, %.lr.ph83.splitthread-pre-split ], [ %i.cw, %.lr.ph83 ] ; 3 uses
  %.not56.i = icmp eq i64 %i.dd, 0
  br i1 %.not56.i, label %lv_lru_remove_lru_item.exit, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %.lr.ph83.split
  %i.df = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i72, %.lr.ph51.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph51.i ], [ %6, %._crit_edge.i72 ]
  %.049.i = phi i64 [ -1, %.lr.ph51.i ], [ %.1.lcssa.i, %._crit_edge.i72 ] ; 2 uses
  %.02048.i = phi i32 [ -1, %.lr.ph51.i ], [ %.121.lcssa.i, %._crit_edge.i72 ] ; 2 uses
  %.02048.i.a = phi i32 [ 0, %.lr.ph51.i ], [ %5, %._crit_edge.i72 ] ; 2 uses
  %.02646.i = phi ptr [ null, %.lr.ph51.i ], [ %.127.lcssa.i, %._crit_edge.i72 ] ; 2 uses
  %.02945.i = phi ptr [ null, %.lr.ph51.i ], [ %.130.lcssa.i, %._crit_edge.i72 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.i
  %.02534.i = load ptr, ptr %i.dg, align 8, !tbaa !22 ; 2 uses
  %.not3335.i = icmp eq ptr %.02534.i, null
  br i1 %.not3335.i, label %._crit_edge.i72, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %bb.p, %bb.r
  %.02541.i = phi ptr [ %.025.i, %bb.r ], [ %.02534.i, %bb.p ] ; 4 uses
  %.140.i = phi i64 [ %.2.i, %bb.r ], [ %.049.i, %bb.p ] ; 3 uses
  %.12139.i = phi i32 [ %.222.i, %bb.r ], [ %.02048.i, %bb.p ]
  %.02438.i = phi ptr [ %.02541.i, %bb.r ], [ null, %bb.p ]
  %.12737.i = phi ptr [ %.228.i, %bb.r ], [ %.02646.i, %bb.p ]
  %.13036.i = phi ptr [ %.231.i, %bb.r ], [ %.02945.i, %bb.p ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.02541.i, i64 32
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !39 ; 2 uses
  %i.dj = icmp ult i64 %i.di, %.140.i
  %i.dk = icmp eq i64 %.140.i, -1
  %or.cond.i = or i1 %i.dk, %i.dj
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i71
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i71
  %.231.i = phi ptr [ %.02541.i, %bb.q ], [ %.13036.i, %.lr.ph.i71 ] ; 2 uses
  %.228.i = phi ptr [ %.02438.i, %bb.q ], [ %.12737.i, %.lr.ph.i71 ] ; 2 uses
  %.222.i = phi i32 [ %.02048.i.a, %bb.q ], [ %.12139.i, %.lr.ph.i71 ] ; 2 uses
  %.2.i = phi i64 [ %i.di, %bb.q ], [ %.140.i, %.lr.ph.i71 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.02541.i, i64 40
  %.025.i = load ptr, ptr %i.dl, align 8, !tbaa !22 ; 2 uses
  %.not33.i = icmp eq ptr %.025.i, null
  br i1 %.not33.i, label %._crit_edge.i72, label %.lr.ph.i71, !llvm.loop !40

._crit_edge.i72:                                  ; preds = %bb.r, %bb.p
  %.130.lcssa.i = phi ptr [ %.02945.i, %bb.p ], [ %.231.i, %bb.r ] ; 8 uses
  %.127.lcssa.i = phi ptr [ %.02646.i, %bb.p ], [ %.228.i, %bb.r ] ; 3 uses
  %.121.lcssa.i = phi i32 [ %.02048.i, %bb.p ], [ %.222.i, %bb.r ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %.049.i, %bb.p ], [ %.2.i, %bb.r ]
  %5 = add i32 %.02048.i.a, 1                     ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.dm = icmp ugt i64 %i.dd, %6
  br i1 %i.dm, label %bb.p, label %._crit_edge52.i, !llvm.loop !41

._crit_edge52.i:                                  ; preds = %._crit_edge.i72
  %i.dn = zext i32 %.121.lcssa.i to i64
  %.not.i73 = icmp eq ptr %.130.lcssa.i, null
  br i1 %.not.i73, label %lv_lru_remove_lru_item.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge52.i
  %.not.i.i = icmp eq ptr %.127.lcssa.i, null
  %i.do = getelementptr inbounds nuw i8, ptr %.130.lcssa.i, i64 40 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !23 ; 2 uses
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %.127.lcssa.i, i64 40
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !23
  br label %lv_lru_remove_item.exit.i

bb.u:                                             ; preds = %bb.s
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dn
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !22
  br label %lv_lru_remove_item.exit.i

lv_lru_remove_item.exit.i:                        ; preds = %bb.u, %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %.130.lcssa.i, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !27
  %i.du = add i64 %i.dt, %i.de
  store i64 %i.du, ptr %i.cv, align 8, !tbaa !16
  %i.dv = load ptr, ptr %i.cy, align 8, !tbaa !19
  %i.dw = load ptr, ptr %.130.lcssa.i, align 8, !tbaa !25
  tail call void %i.dv(ptr noundef %i.dw) #2, !inline_history !42
  %i.dx = load ptr, ptr %i.cz, align 8, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %.130.lcssa.i, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !26
  tail call void %i.dx(ptr noundef %i.dz) #2, !inline_history !42
  tail call void @lv_memset(ptr noundef nonnull %.130.lcssa.i, i8 noundef zeroext 0, i64 noundef 48) #2
  %i.ea = load ptr, ptr %i.da, align 8, !tbaa !31
  store ptr %i.ea, ptr %i.do, align 8, !tbaa !23
  store ptr %.130.lcssa.i, ptr %i.da, align 8, !tbaa !31
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !16
  br label %lv_lru_remove_lru_item.exit

lv_lru_remove_lru_item.exit:                      ; preds = %.lr.ph83.split, %._crit_edge52.i, %lv_lru_remove_item.exit.i
  %i.eb = phi i64 [ %i.de, %.lr.ph83.split ], [ %i.de, %._crit_edge52.i ], [ %.pre, %lv_lru_remove_item.exit.i ] ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.cu
  br i1 %i.ec, label %.lr.ph83.splitthread-pre-split, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %lv_lru_remove_lru_item.exit, %..loopexit_crit_edge, %bb.o
  %i.ed = phi i64 [ %.pre87, %..loopexit_crit_edge ], [ %i.cw, %bb.o ], [ %i.eb, %lv_lru_remove_lru_item.exit ]
  %sext = shl i64 %.057.in, 32
  %i.ee = ashr exact i64 %sext, 32
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eg = sub i64 %i.ed, %i.ee
  store i64 %i.eg, ptr %i.ef, align 8, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %.loopexit
  %.058 = phi i32 [ 2, %bb.b ], [ 3, %bb.c ], [ 0, %.loopexit ], [ 1, %bb.a ], [ 5, %bb.d ]
  ret i32 %.058
}

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #1

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @lv_lru_remove_lru_item(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not56 = icmp eq i64 %i.b, 0
  br i1 %.not56, label %._crit_edge52.thread, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph51, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph51 ], [ %2, %._crit_edge ]
  %.049 = phi i64 [ -1, %.lr.ph51 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.02048 = phi i32 [ -1, %.lr.ph51 ], [ %.121.lcssa, %._crit_edge ] ; 2 uses
  %.02048.a = phi i32 [ 0, %.lr.ph51 ], [ %1, %._crit_edge ] ; 2 uses
  %.02646 = phi ptr [ null, %.lr.ph51 ], [ %.127.lcssa, %._crit_edge ] ; 2 uses
  %.02945 = phi ptr [ null, %.lr.ph51 ], [ %.130.lcssa, %._crit_edge ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %.02534 = load ptr, ptr %i.d, align 8, !tbaa !22 ; 2 uses
  %.not3335 = icmp eq ptr %.02534, null
  br i1 %.not3335, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.02541 = phi ptr [ %.025, %bb.d ], [ %.02534, %bb.b ] ; 4 uses
  %.140 = phi i64 [ %.2, %bb.d ], [ %.049, %bb.b ] ; 3 uses
  %.12139 = phi i32 [ %.222, %bb.d ], [ %.02048, %bb.b ]
  %.02438 = phi ptr [ %.02541, %bb.d ], [ null, %bb.b ]
  %.12737 = phi ptr [ %.228, %bb.d ], [ %.02646, %bb.b ]
  %.13036 = phi ptr [ %.231, %bb.d ], [ %.02945, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.02541, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.g = icmp ult i64 %i.f, %.140
  %i.h = icmp eq i64 %.140, -1
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.231 = phi ptr [ %.02541, %bb.c ], [ %.13036, %.lr.ph ] ; 2 uses
  %.228 = phi ptr [ %.02438, %bb.c ], [ %.12737, %.lr.ph ] ; 2 uses
  %.222 = phi i32 [ %.02048.a, %bb.c ], [ %.12139, %.lr.ph ] ; 2 uses
  %.2 = phi i64 [ %i.f, %bb.c ], [ %.140, %.lr.ph ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02541, i64 40
  %.025 = load ptr, ptr %i.i, align 8, !tbaa !22  ; 2 uses
  %.not33 = icmp eq ptr %.025, null
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.130.lcssa = phi ptr [ %.02945, %bb.b ], [ %.231, %bb.d ] ; 8 uses
  %.127.lcssa = phi ptr [ %.02646, %bb.b ], [ %.228, %bb.d ] ; 3 uses
  %.121.lcssa = phi i32 [ %.02048, %bb.b ], [ %.222, %bb.d ] ; 2 uses
  %.1.lcssa = phi i64 [ %.049, %bb.b ], [ %.2, %bb.d ]
  %1 = add i32 %.02048.a, 1                       ; 2 uses
  %2 = zext i32 %1 to i64                         ; 2 uses
  %i.j = icmp ugt i64 %i.b, %2
  br i1 %i.j, label %bb.b, label %._crit_edge52, !llvm.loop !41

._crit_edge52:                                    ; preds = %._crit_edge
  %i.k = zext i32 %.121.lcssa to i64
  %.not = icmp eq ptr %.130.lcssa, null
  br i1 %.not, label %._crit_edge52.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge52
  %.not.i = icmp eq ptr %.127.lcssa, null
  %i.l = getelementptr inbounds nuw i8, ptr %.130.lcssa, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.127.lcssa, i64 40
  store ptr %i.m, ptr %i.n, align 8, !tbaa !23
  br label %lv_lru_remove_item.exit

bb.g:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.k
  store ptr %i.m, ptr %i.p, align 8, !tbaa !22
  br label %lv_lru_remove_item.exit

lv_lru_remove_item.exit:                          ; preds = %bb.f, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.130.lcssa, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16
  %i.u = add i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.x = load ptr, ptr %.130.lcssa, align 8, !tbaa !25
  tail call void %i.w(ptr noundef %i.x) #2, !inline_history !45
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %.130.lcssa, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !26
  tail call void %i.z(ptr noundef %i.ab) #2, !inline_history !45
  tail call void @lv_memset(ptr noundef nonnull %.130.lcssa, i8 noundef zeroext 0, i64 noundef 48) #2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !23
  store ptr %.130.lcssa, ptr %i.ac, align 8, !tbaa !31
  br label %._crit_edge52.thread

._crit_edge52.thread:                             ; preds = %bb.a, %lv_lru_remove_item.exit, %._crit_edge52
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @lv_lru_get(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not21 = icmp eq ptr %1, null
  br i1 %.not21, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = trunc i64 %2 to i32                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !18
  %i.d = xor i32 %i.c, %i.a                       ; 3 uses
  %i.e = icmp ugt i32 %i.a, 3
  br i1 %i.e, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.f = add i32 %i.a, -4                         ; 2 uses
  %i.g = and i32 %i.f, 4
  %lcmp.mod.not.not = icmp eq i32 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.h = load i32, ptr %1, align 4, !tbaa !33
  %i.i = mul i32 %i.h, 1540483477                 ; 2 uses
  %i.j = lshr i32 %i.i, 24
  %i.k = xor i32 %i.j, %i.i
  %i.l = mul i32 %i.k, 1540483477
  %i.m = mul i32 %i.d, 1540483477
  %i.n = xor i32 %i.l, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.p = add i32 %i.a, -4                         ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.046.i.unr = phi i32 [ %i.a, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %.03645.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.03744.i.unr = phi i32 [ %i.d, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.lcssa50.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.lcssa49.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %i.q = icmp ult i32 %i.f, 4
  br i1 %i.q, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.046.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %.046.i.unr, %.lr.ph.i.prol.loopexit ]
  %.03645.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.03645.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03744.i = phi i32 [ %i.af, %.lr.ph.i ], [ %.03744.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.r = load i32, ptr %.03645.i, align 4, !tbaa !33
  %i.s = mul i32 %i.r, 1540483477                 ; 2 uses
  %i.t = lshr i32 %i.s, 24
  %i.u = xor i32 %i.t, %i.s
  %i.v = mul i32 %i.u, 1540483477
  %i.w = mul i32 %.03744.i, 1540483477
  %i.x = xor i32 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.03645.i, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !33
  %i.aa = mul i32 %i.z, 1540483477                ; 2 uses
  %i.ab = lshr i32 %i.aa, 24
  %i.ac = xor i32 %i.ab, %i.aa
  %i.ad = mul i32 %i.ac, 1540483477
  %i.ae = mul i32 %i.x, 1540483477
  %i.af = xor i32 %i.ad, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.03645.i, i64 8 ; 2 uses
  %i.ah = add i32 %.046.i, -8                     ; 3 uses
  %i.ai = icmp ugt i32 %i.ah, 3
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.c
  %.037.lcssa.i = phi i32 [ %i.d, %bb.c ], [ %.lcssa50.unr, %.lr.ph.i.prol.loopexit ], [ %i.af, %.lr.ph.i ] ; 4 uses
  %.036.lcssa.i = phi ptr [ %1, %bb.c ], [ %.lcssa49.unr, %.lr.ph.i.prol.loopexit ], [ %i.ag, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.a, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ah, %.lr.ph.i ] ; 3 uses
  %i.aj = icmp eq i32 %.0.lcssa.i, 3
  br i1 %i.aj, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %._crit_edge.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = sext i8 %i.al to i32
  %i.an = shl nsw i32 %i.am, 16
  %i.ao = xor i32 %i.an, %.037.lcssa.i
  br label %.thread40.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.ap = icmp samesign ugt i32 %.0.lcssa.i, 1
  br i1 %i.ap, label %.thread40.i, label %bb.e

.thread40.i:                                      ; preds = %bb.d, %.thread.i
  %.139.i = phi i32 [ %i.ao, %.thread.i ], [ %.037.lcssa.i, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.036.lcssa.i, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35
  %i.as = sext i8 %i.ar to i32
  %i.at = shl nsw i32 %i.as, 8
  %i.au = xor i32 %i.at, %.139.i
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not.i, label %lv_lru_hash.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread40.i
  %.243.i = phi i32 [ %i.au, %.thread40.i ], [ %.037.lcssa.i, %bb.e ]
  %i.av = load i8, ptr %.036.lcssa.i, align 1, !tbaa !35
  %i.aw = sext i8 %i.av to i32
  %i.ax = xor i32 %.243.i, %i.aw
  %i.ay = mul i32 %i.ax, 1540483477
  br label %lv_lru_hash.exit

lv_lru_hash.exit:                                 ; preds = %bb.e, %bb.f
  %.3.i = phi i32 [ %i.ay, %bb.f ], [ %.037.lcssa.i, %bb.e ] ; 2 uses
  %i.az = lshr i32 %.3.i, 13
  %i.ba = xor i32 %i.az, %.3.i
  %i.bb = mul i32 %i.ba, 1540483477               ; 2 uses
  %i.bc = lshr i32 %i.bb, 15
  %i.bd = xor i32 %i.bc, %i.bb
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !8
  %i.bh = urem i64 %i.be, %i.bg
  %i.bi = load ptr, ptr %0, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %.031 = load ptr, ptr %i.bj, align 8, !tbaa !22 ; 2 uses
  %.not2232 = icmp eq ptr %.031, null
  br i1 %.not2232, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %lv_lru_hash.exit
  %i.bk = and i64 %2, 4294967295                  ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %lv_lru_cmp_keys.exit.thread
  %.033 = phi ptr [ %.031, %.lr.ph ], [ %.0, %lv_lru_cmp_keys.exit.thread ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.033, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !36
  %.not.i25 = icmp eq i64 %i.bm, %i.bk
  br i1 %.not.i25, label %lv_lru_cmp_keys.exit, label %lv_lru_cmp_keys.exit.thread

lv_lru_cmp_keys.exit:                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.033, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !26
  %i.bp = tail call i32 @lv_memcmp(ptr noundef nonnull %1, ptr noundef %i.bo, i64 noundef %i.bk) #2
  %.not23 = icmp eq i32 %i.bp, 0
  br i1 %.not23, label %.critedge, label %lv_lru_cmp_keys.exit.thread

lv_lru_cmp_keys.exit.thread:                      ; preds = %bb.g, %lv_lru_cmp_keys.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.033, i64 40
  %.0 = load ptr, ptr %i.bq, align 8, !tbaa !22   ; 2 uses
end_hunk_0
