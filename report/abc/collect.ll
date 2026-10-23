Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/collect?download=true
inline.NumInlined: 72
inline.NumDeleted: 40
begin_hunk_0_@kissat_sparse_collect:bb.a
  %i.f = shl i32 %.014.i, 1                       ; 2 uses
  call fastcc void @flush_watched_clauses_by_literal(ptr noundef nonnull %0, i32 noundef %i.f, i1 noundef zeroext %1, i32 noundef %2)
  %i.g = or disjoint i32 %i.f, 1
  call fastcc void @flush_watched_clauses_by_literal(ptr noundef nonnull %0, i32 noundef %i.g, i1 noundef zeroext %1, i32 noundef %2)
  %i.h = add nuw i32 %.014.i, 1                   ; 2 uses
  %.not.i = icmp eq i32 %i.h, %i.e
  br i1 %.not.i, label %flush_all_watched_clauses.exit, label %.lr.ph.i, !llvm.loop !83

flush_all_watched_clauses.exit:                   ; preds = %.lr.ph.i, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 12 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61   ; 2 uses
  %.not.i19 = icmp eq i32 %2, 0
  br i1 %.not.i19, label %kissat_last_irredundant_clause.exit.i, label %bb.e

bb.e:                                             ; preds = %flush_all_watched_clauses.exit
  %i.q = zext i32 %2 to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.t = load i32, ptr %i.s, align 4, !tbaa !62   ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %kissat_last_irredundant_clause.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.v
  br label %kissat_last_irredundant_clause.exit.i

kissat_last_irredundant_clause.exit.i:            ; preds = %bb.f, %bb.e, %flush_all_watched_clauses.exit
  %.0182230.i = phi ptr [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.n, %flush_all_watched_clauses.exit ] ; 6 uses
  %.0162.i = phi ptr [ %i.w, %bb.f ], [ null, %bb.e ], [ null, %flush_all_watched_clauses.exit ] ; 2 uses
  %.not191253.i = icmp eq ptr %.0182230.i, %i.p
  br i1 %.not191253.i, label %update_first_reducible.exit.i, label %.lr.ph260.i

.lr.ph260.i:                                      ; preds = %kissat_last_irredundant_clause.exit.i
  %i.x = icmp eq ptr %.0182230.i, %i.n
  %..0182.i = select i1 %i.x, ptr null, ptr %.0182230.i ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3840 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3872 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  br label %bb.i

._crit_edge.i:                                    ; preds = %bb.ah
  %.not.i.i = icmp uge ptr %.5171.i, %.3180.i
  %.not8.i.i = icmp eq ptr %.5171.i, null
  %or.cond.i.i = or i1 %.not.i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %update_first_reducible.exit.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %.val.i211.i = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.ae = ptrtoint ptr %.5171.i to i64
  %i.af = ptrtoint ptr %.val.i211.i to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = trunc i64 %i.ah to i32
  br label %update_first_reducible.exit.i

update_first_reducible.exit.i:                    ; preds = %bb.g, %._crit_edge.i, %kissat_last_irredundant_clause.exit.i
  %.1163.lcssa284.i = phi ptr [ %.7.i, %bb.g ], [ %.7.i, %._crit_edge.i ], [ %.0162.i, %kissat_last_irredundant_clause.exit.i ] ; 4 uses
  %.0172.lcssa283.i = phi ptr [ %.4176.i, %bb.g ], [ %.4176.i, %._crit_edge.i ], [ null, %kissat_last_irredundant_clause.exit.i ] ; 3 uses
  %.0177.lcssa282.i = phi ptr [ %.3180.i, %bb.g ], [ %.3180.i, %._crit_edge.i ], [ %.0182230.i, %kissat_last_irredundant_clause.exit.i ] ; 3 uses
  %.sink.i.i = phi i32 [ %i.ai, %bb.g ], [ -1, %._crit_edge.i ], [ -1, %kissat_last_irredundant_clause.exit.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  store i32 %.sink.i.i, ptr %i.aj, align 8, !tbaa !59
  %.not.i212.i = icmp ne ptr %.1163.lcssa284.i, null
  %.not8.i213.i = icmp ugt ptr %.0177.lcssa282.i, %.1163.lcssa284.i
  %or.cond.i214.i = and i1 %.not.i212.i, %.not8.i213.i
  br i1 %or.cond.i214.i, label %bb.h, label %update_last_irredundant.exit.i

bb.h:                                             ; preds = %update_first_reducible.exit.i
  %.val.i216.i = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.ak = ptrtoint ptr %.1163.lcssa284.i to i64
  %i.al = ptrtoint ptr %.val.i216.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = lshr exact i64 %i.am, 3
  %i.ao = trunc i64 %i.an to i32
  br label %update_last_irredundant.exit.i

update_last_irredundant.exit.i:                   ; preds = %bb.h, %update_first_reducible.exit.i
  %.sink.i215.i = phi i32 [ -1, %update_first_reducible.exit.i ], [ %i.ao, %bb.h ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 876 ; 3 uses
  store i32 %.sink.i215.i, ptr %i.ap, align 4, !tbaa !62
  call void @kissat_reset_last_learned(ptr noundef nonnull %0) #7
  %i.aq = icmp ne ptr %.0172.lcssa283.i, null
  %i.ar = icmp ult ptr %.0172.lcssa283.i, %.1163.lcssa284.i
  %or.cond207.i = and i1 %i.aq, %i.ar
  br i1 %or.cond207.i, label %bb.ai, label %bb.aj

bb.i:                                             ; preds = %bb.ah, %.lr.ph260.i
  %.1163259.i = phi ptr [ %.0162.i, %.lr.ph260.i ], [ %.7.i, %bb.ah ] ; 7 uses
  %.0166258.i = phi ptr [ null, %.lr.ph260.i ], [ %.5171.i, %bb.ah ] ; 6 uses
  %.0172257.i = phi ptr [ null, %.lr.ph260.i ], [ %.4176.i, %bb.ah ] ; 6 uses
  %.0177256.i = phi ptr [ %.0182230.i, %.lr.ph260.i ], [ %.3180.i, %bb.ah ] ; 20 uses
  %.0181255.i = phi ptr [ %.0182230.i, %.lr.ph260.i ], [ %.0161.i, %bb.ah ] ; 9 uses
  %i.as = load i32, ptr %.0181255.i, align 4      ; 3 uses
  %i.at = and i32 %i.as, 524288
  %.not192.i = icmp eq i32 %i.at, 0
  br i1 %.not192.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = call ptr @kissat_delete_clause(ptr noundef %0, ptr noundef nonnull %.0181255.i) #7
  %i.av = icmp eq ptr %.1163259.i, %.0181255.i
  %spec.select265.i = select i1 %i.av, ptr %..0182.i, ptr %.1163259.i
  br label %bb.ah

bb.k:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0181255.i, i64 12 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0181255.i, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !68
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.az ; 2 uses
  %i.bb = and i32 %i.as, 8388608
  %.not.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i, label %kissat_next_clause.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.k, %.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.bc, %.preheader.i.i.i ], [ %i.ba, %bb.k ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.bd = load i32, ptr %.0.i.i.i, align 4, !tbaa !64
  %.not6.i.i.i = icmp eq i32 %i.bd, -1
  br i1 %.not6.i.i.i, label %kissat_next_clause.exit.i, label %.preheader.i.i.i, !llvm.loop !0

kissat_next_clause.exit.i:                        ; preds = %.preheader.i.i.i, %bb.k
  %.1.i.i.i = phi ptr [ %i.ba, %bb.k ], [ %i.bc, %.preheader.i.i.i ]
  %i.be = ptrtoint ptr %.1.i.i.i to i64
  %i.bf = ptrtoint ptr %.0181255.i to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = and i64 %i.bg, 7
  %.not.i.i.i.i.i = icmp eq i64 %i.bh, 0
  %i.bi = or i64 %i.bg, 7
  %i.bj = add i64 %i.bi, 1
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %i.bg, i64 %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %.0181255.i, i64 %.0.i.i.i.i.i ; 4 uses
  store i32 %i.as, ptr %.0177256.i, align 4, !tbaa !64
  %i.bl = getelementptr inbounds nuw i8, ptr %.0177256.i, i64 12 ; 4 uses
  %i.bm = load i32, ptr %i.ax, align 4, !tbaa !68 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %.idx.i = shl nuw nsw i64 %i.bn, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i
  %.not193237.i = icmp eq i32 %i.bm, 0
  br i1 %.not193237.i, label %.critedge.thread.i, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %kissat_next_clause.exit.i, %bb.r
  %.0137246.i = phi ptr [ %i.db, %bb.r ], [ %i.aw, %kissat_next_clause.exit.i ] ; 2 uses
  %.0138245.i = phi i8 [ %.2.i, %bb.r ], [ 0, %kissat_next_clause.exit.i ]
  %.0139244.i = phi i32 [ %.3.i, %bb.r ], [ 0, %kissat_next_clause.exit.i ] ; 5 uses
  %.0142243.i = phi i32 [ %.3145.i, %bb.r ], [ -1, %kissat_next_clause.exit.i ] ; 4 uses
  %.0146242.i = phi i32 [ %.3149.i, %bb.r ], [ -1, %kissat_next_clause.exit.i ] ; 4 uses
  %.0150241.i = phi i32 [ %.3153.i, %bb.r ], [ -1, %kissat_next_clause.exit.i ] ; 5 uses
  %.0154240.i = phi i32 [ %.3157.i, %bb.r ], [ -1, %kissat_next_clause.exit.i ] ; 5 uses
  %.0158239.i = phi ptr [ %.2160.i, %bb.r ], [ %i.bl, %kissat_next_clause.exit.i ] ; 5 uses
  %i.bp = load i32, ptr %.0137246.i, align 4, !tbaa !64 ; 7 uses
  %i.bq = trunc nuw i8 %.0138245.i to i1
  br i1 %i.bq, label %bb.r, label %bb.l

.critedge.i:                                      ; preds = %bb.r
  %i.br = trunc nuw i8 %.2.i to i1
  %i.bs = lshr i32 %.3149.i, 1
  %i.bt = zext nneg i32 %i.bs to i64
  br i1 %i.br, label %bb.s, label %.critedge.thread.i

bb.l:                                             ; preds = %.lr.ph.i20
  %i.bu = zext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !69  ; 5 uses
  %.not201.i = icmp eq i8 %i.bw, 0
  br i1 %.not201.i, label %.thread233.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = lshr i32 %i.bp, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !71
  %i.cb = icmp ne i32 %i.ca, 0                    ; 2 uses
  %i.cc = icmp sgt i8 %i.bw, -1
  %or.cond.i = select i1 %i.cc, i1 true, i1 %i.cb
  br i1 %or.cond.i, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cd = icmp slt i8 %i.bw, 1
  %or.cond3.i = select i1 %i.cd, i1 true, i1 %i.cb
  br i1 %or.cond3.i, label %.thread233.i, label %bb.r

.thread233.i:                                     ; preds = %bb.n, %bb.l
  br i1 %1, label %bb.o, label %kissat_map_literal.exit.i

bb.o:                                             ; preds = %.thread233.i
  %.val.i217.i = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.ce = lshr i32 %i.bp, 1
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.val.i217.i, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !64 ; 4 uses
  %i.ci = and i32 %i.bp, 1
  %.not9.i.i.i = icmp eq i32 %i.ci, 0
  %i.cj = sub nsw i32 0, %i.ch
  %spec.select.i.i.i = select i1 %.not9.i.i.i, i32 %i.ch, i32 %i.cj
  %.not17.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not17.i.i, label %kissat_map_literal.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = call i32 @llvm.abs.i32(i32 %i.ch, i1 true)
  %i.cl = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !75, !range !76, !noundef !77
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %kissat_map_literal.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = load i32, ptr %i.cn, align 4, !tbaa !78
  %i.cs = lshr i32 %spec.select.i.i.i, 31
  %spec.select.i.i = xor i32 %i.cr, %i.cs
  br label %kissat_map_literal.exit.i

kissat_map_literal.exit.i:                        ; preds = %bb.q, %bb.p, %bb.o, %.thread233.i
  %.2.i.i = phi i32 [ %i.bp, %.thread233.i ], [ -1, %bb.o ], [ %spec.select.i.i, %bb.q ], [ -1, %bb.p ] ; 3 uses
  %i.ct = icmp sgt i8 %i.bw, 0                    ; 2 uses
  %.not202.i = icmp eq i32 %.0139244.i, 0
  %i.cu = select i1 %.not202.i, i32 %i.bp, i32 -1
  %.1147.i = select i1 %i.ct, i32 %i.cu, i32 %.0146242.i
  %i.cv = icmp slt i8 %i.bw, 0
  %.1143.i = select i1 %i.cv, i32 %i.bp, i32 %.0142243.i
  %i.cw = zext i1 %i.ct to i32
  %.1140.i = add i32 %.0139244.i, %i.cw
  %i.cx = icmp eq i32 %.0154240.i, -1             ; 2 uses
  %i.cy = icmp ne i32 %.0150241.i, -1
  %.1155.i = select i1 %i.cx, i32 %.2.i.i, i32 %.0154240.i
  %i.cz = select i1 %i.cx, i1 true, i1 %i.cy
  %.1151.i = select i1 %i.cz, i32 %.0150241.i, i32 %.2.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.0158239.i, i64 4
  store i32 %.2.i.i, ptr %.0158239.i, align 4, !tbaa !64
  br label %bb.r

bb.r:                                             ; preds = %kissat_map_literal.exit.i, %bb.n, %bb.m, %.lr.ph.i20
  %.2160.i = phi ptr [ %.0158239.i, %.lr.ph.i20 ], [ %i.da, %kissat_map_literal.exit.i ], [ %.0158239.i, %bb.n ], [ %.0158239.i, %bb.m ] ; 2 uses
  %.3157.i = phi i32 [ %.0154240.i, %.lr.ph.i20 ], [ %.1155.i, %kissat_map_literal.exit.i ], [ %.0154240.i, %bb.n ], [ %.0154240.i, %bb.m ] ; 2 uses
  %.3153.i = phi i32 [ %.0150241.i, %.lr.ph.i20 ], [ %.1151.i, %kissat_map_literal.exit.i ], [ %.0150241.i, %bb.n ], [ %.0150241.i, %bb.m ] ; 2 uses
  %.3149.i = phi i32 [ %.0146242.i, %.lr.ph.i20 ], [ %.1147.i, %kissat_map_literal.exit.i ], [ %.0146242.i, %bb.n ], [ %.0146242.i, %bb.m ] ; 2 uses
  %.3145.i = phi i32 [ %.0142243.i, %.lr.ph.i20 ], [ %.1143.i, %kissat_map_literal.exit.i ], [ %.0142243.i, %bb.n ], [ %.0142243.i, %bb.m ] ; 2 uses
  %.3.i = phi i32 [ %.0139244.i, %.lr.ph.i20 ], [ %.1140.i, %kissat_map_literal.exit.i ], [ %.0139244.i, %bb.n ], [ %.0139244.i, %bb.m ]
  %.2.i = phi i8 [ 1, %.lr.ph.i20 ], [ 0, %kissat_map_literal.exit.i ], [ 1, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0137246.i, i64 4 ; 2 uses
  %.not193.i = icmp eq ptr %i.db, %i.bo
  br i1 %.not193.i, label %.critedge.i, label %.lr.ph.i20, !llvm.loop !84

bb.s:                                             ; preds = %.critedge.i
  %i.dc = load i32, ptr %.0177256.i, align 4
  %i.dd = and i32 %i.dc, 4194304
  %.not200.i = icmp eq i32 %i.dd, 0
  br i1 %.not200.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = load i64, ptr %i.ab, align 8, !tbaa !91
  %i.df = add i64 %i.de, -1
  store i64 %i.df, ptr %i.ab, align 8, !tbaa !91
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dg = load i64, ptr %i.ac, align 8, !tbaa !92
  %i.dh = add i64 %i.dg, -1
  store i64 %i.dh, ptr %i.ac, align 8, !tbaa !92
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.di = icmp eq ptr %.1163259.i, %.0181255.i
  %.2164.i = select i1 %i.di, ptr %..0182.i, ptr %.1163259.i
  br label %bb.ah

.critedge.thread.i:                               ; preds = %.critedge.i, %kissat_next_clause.exit.i
  %.0142.lcssa295.i = phi i32 [ %.3145.i, %.critedge.i ], [ -1, %kissat_next_clause.exit.i ]
  %.0146.lcssa294.i = phi i64 [ %i.bt, %.critedge.i ], [ 2147483647, %kissat_next_clause.exit.i ] ; 2 uses
  %.0150.lcssa293.i = phi i32 [ %.3153.i, %.critedge.i ], [ -1, %kissat_next_clause.exit.i ] ; 2 uses
  %.0154.lcssa292.i = phi i32 [ %.3157.i, %.critedge.i ], [ -1, %kissat_next_clause.exit.i ] ; 2 uses
  %.0158.lcssa291.i = phi ptr [ %.2160.i, %.critedge.i ], [ %i.bl, %kissat_next_clause.exit.i ]
  %i.dj = ptrtoint ptr %.0158.lcssa291.i to i64
  %i.dk = ptrtoint ptr %i.bl to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = lshr exact i64 %i.dl, 2                 ; 2 uses
  %i.dn = trunc i64 %i.dm to i32                  ; 2 uses
  %i.do = icmp eq i32 %i.dn, 2
  br i1 %i.do, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %.critedge.thread.i
  %i.dp = load i64, ptr %i.aa, align 8, !tbaa !93
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.aa, align 8, !tbaa !93
  %i.dr = load i32, ptr %.0177256.i, align 4
  %i.ds = and i32 %i.dr, 4194304
  %.not198.i = icmp eq i32 %i.ds, 0
  br i1 %.not198.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = load i64, ptr %i.ab, align 8, !tbaa !91
  %i.du = add i64 %i.dt, -1
  store i64 %i.du, ptr %i.ab, align 8, !tbaa !91
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dv = load i64, ptr %i.ac, align 8, !tbaa !92
  %i.dw = add i64 %i.dv, -1
  store i64 %i.dw, ptr %i.ac, align 8, !tbaa !92
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dx = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.dy = zext i32 %.0154.lcssa292.i to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = or i32 %.0150.lcssa293.i, -2147483648
  call fastcc void @kissat_push_vectors(ptr noundef nonnull %0, ptr noundef %i.dz, i32 noundef %i.ea)
  %i.eb = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.ec = zext i32 %.0150.lcssa293.i to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = or i32 %.0154.lcssa292.i, -2147483648
  call fastcc void @kissat_push_vectors(ptr noundef nonnull %0, ptr noundef %i.ed, i32 noundef %i.ee)
  %i.ef = load i32, ptr %.0177256.i, align 4
  %i.eg = and i32 %i.ef, 2097152
  %.not199.i = icmp eq i32 %i.eg, 0
  br i1 %.not199.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.0146.lcssa294.i ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 4
  %i.ek = or i8 %i.ej, 2
  store i8 %i.ek, ptr %i.ei, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 %.0142.lcssa295.i, ptr %i.el, align 4, !tbaa !94
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.em = icmp eq ptr %.1163259.i, %.0181255.i
  %.3165.i = select i1 %i.em, ptr %..0182.i, ptr %.1163259.i
  br label %bb.ah

bb.ac:                                            ; preds = %.critedge.thread.i
  %i.en = getelementptr inbounds nuw i8, ptr %.0177256.i, i64 8
  store i32 %i.dn, ptr %i.en, align 4, !tbaa !68
  %i.eo = load i32, ptr %.0177256.i, align 4      ; 2 uses
  %i.ep = and i32 %i.eo, -8388609                 ; 3 uses
  store i32 %i.ep, ptr %.0177256.i, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %.0177256.i, i64 4
  store i32 2, ptr %i.eq, align 4, !tbaa !95
  %i.er = and i32 %i.eo, 2097152
  %.not194.i = icmp eq i32 %i.er, 0
  br i1 %.not194.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val210.i = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.es = ptrtoint ptr %.0177256.i to i64
  %i.et = ptrtoint ptr %.val210.i to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = lshr exact i64 %i.eu, 3
  %i.ew = trunc i64 %i.ev to i32                  ; 2 uses
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.0146.lcssa294.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !94
  %.not.i220.i = icmp eq i32 %i.ez, %i.ew
  br i1 %.not.i220.i, label %update_large_reason.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.ew, ptr %i.ey, align 4, !tbaa !94
  %.pre.i = load i32, ptr %.0177256.i, align 4
  br label %update_large_reason.exit.i

update_large_reason.exit.i:                       ; preds = %bb.ae, %bb.ad
  %i.fa = phi i32 [ %i.ep, %bb.ad ], [ %.pre.i, %bb.ae ]
  %i.fb = and i32 %i.fa, -2097153                 ; 2 uses
  store i32 %i.fb, ptr %.0177256.i, align 4
  br label %bb.af

bb.af:                                            ; preds = %update_large_reason.exit.i, %bb.ac
  %i.fc = phi i32 [ %i.fb, %update_large_reason.exit.i ], [ %i.ep, %bb.ac ] ; 2 uses
  %i.fd = and i64 %i.dm, 4294967295
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.fd ; 2 uses
  %i.ff = and i32 %i.fc, 8388608
  %.not.i.i221.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i.i221.i, label %kissat_next_clause.exit228.i, label %.preheader.i.i222.i

.preheader.i.i222.i:                              ; preds = %bb.af, %.preheader.i.i222.i
  %.0.i.i223.i = phi ptr [ %i.fg, %.preheader.i.i222.i ], [ %i.fe, %bb.af ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i223.i, i64 4 ; 2 uses
  %i.fh = load i32, ptr %.0.i.i223.i, align 4, !tbaa !64
  %.not6.i.i224.i = icmp eq i32 %i.fh, -1
  br i1 %.not6.i.i224.i, label %kissat_next_clause.exit228.i, label %.preheader.i.i222.i, !llvm.loop !0

kissat_next_clause.exit228.i:                     ; preds = %.preheader.i.i222.i, %bb.af
  %.1.i.i225.i = phi ptr [ %i.fe, %bb.af ], [ %i.fg, %.preheader.i.i222.i ]
  %i.fi = ptrtoint ptr %.1.i.i225.i to i64
  %i.fj = ptrtoint ptr %.0177256.i to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 3 uses
  %i.fl = and i64 %i.fk, 7
  %.not.i.i.i.i226.i = icmp eq i64 %i.fl, 0
  %i.fm = or i64 %i.fk, 7
  %i.fn = add i64 %i.fm, 1
  %.0.i.i.i.i227.i = select i1 %.not.i.i.i.i226.i, i64 %i.fk, i64 %i.fn
  %i.fo = getelementptr inbounds nuw i8, ptr %.0177256.i, i64 %.0.i.i.i.i227.i ; 2 uses
  %i.fp = and i32 %i.fc, 4194304
end_hunk_0
begin_hunk_1_@kissat_compacting:bb.a
  %i.e = sub i32 %i.b, %i.d
  %i.f = uitofp i32 %i.b to double
  %i.g = fmul nnan double %i.f, 1.000000e-01
  %i.h = fptoui double %i.g to i32
  %i.i = icmp ugt i32 %i.e, %i.h
  ret i1 %i.i
}

; Function Attrs: nounwind uwtable
define void @kissat_initial_sparse_collect(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4312
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @kissat_sparse_collect(ptr noundef nonnull %0, i1 noundef zeroext true, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @kissat_dense_collect(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %.not61.i = icmp eq ptr %i.b, %i.d
  br i1 %.not61.i, label %update_first_reducible.exit.thread.i, label %.lr.ph.i

update_first_reducible.exit.thread.i:             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i32 -1, ptr %i.e, align 8, !tbaa !59
  br label %update_last_irredundant.exit.i

._crit_edge.i:                                    ; preds = %bb.f
  %.not.i.i = icmp uge ptr %.244.i, %.1.i
  %.not8.i.i = icmp eq ptr %.244.i, null
  %or.cond.i.i = or i1 %.not8.i.i, %.not.i.i
  br i1 %or.cond.i.i, label %update_first_reducible.exit.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.f = ptrtoint ptr %.244.i to i64
  %i.g = ptrtoint ptr %.val.i.i to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32
  br label %update_first_reducible.exit.i

update_first_reducible.exit.i:                    ; preds = %bb.b, %._crit_edge.i
  %.sink.i.i = phi i32 [ %i.j, %bb.b ], [ -1, %._crit_edge.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i32 %.sink.i.i, ptr %i.k, align 8, !tbaa !59
  %.not.i48.i = icmp ne ptr %.2.i, null
  %.not8.i49.i = icmp ugt ptr %.1.i, %.2.i
  %or.cond.i50.i = and i1 %.not.i48.i, %.not8.i49.i
  br i1 %or.cond.i50.i, label %bb.c, label %update_last_irredundant.exit.i

bb.c:                                             ; preds = %update_first_reducible.exit.i
  %.val.i52.i = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.l = ptrtoint ptr %.2.i to i64
  %i.m = ptrtoint ptr %.val.i52.i to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3
  %i.p = trunc i64 %i.o to i32
  br label %update_last_irredundant.exit.i

update_last_irredundant.exit.i:                   ; preds = %bb.c, %update_first_reducible.exit.i, %update_first_reducible.exit.thread.i
  %.038.lcssa7885.i = phi ptr [ %.1.i, %update_first_reducible.exit.i ], [ %.1.i, %bb.c ], [ %i.b, %update_first_reducible.exit.thread.i ] ; 2 uses
  %.sink.i51.i = phi i32 [ -1, %update_first_reducible.exit.i ], [ %i.p, %bb.c ], [ -1, %update_first_reducible.exit.thread.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 876
  store i32 %.sink.i51.i, ptr %i.q, align 4, !tbaa !62
  tail call void @kissat_reset_last_learned(ptr noundef nonnull %0) #7
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.s = icmp eq ptr %.038.lcssa7885.i, %i.r
  br i1 %i.s, label %dense_sweep_garbage_clauses.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a, %bb.f
  %.03865.i = phi ptr [ %.1.i, %bb.f ], [ %i.b, %bb.a ] ; 8 uses
  %.03964.i = phi ptr [ %.0.i, %bb.f ], [ %i.b, %bb.a ] ; 7 uses
  %.04063.i = phi ptr [ %.2.i, %bb.f ], [ null, %bb.a ] ; 2 uses
  %.04262.i = phi ptr [ %.244.i, %bb.f ], [ null, %bb.a ] ; 3 uses
  %i.t = load i32, ptr %.03964.i, align 4         ; 5 uses
  %i.u = and i32 %i.t, 524288
  %.not45.i = icmp eq i32 %i.u, 0
  br i1 %.not45.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.v = tail call ptr @kissat_delete_clause(ptr noundef %0, ptr noundef nonnull %.03964.i) #7
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.03964.i, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.03964.i, i64 8 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !68
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = and i32 %i.t, 8388608
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i, label %kissat_next_clause.exit60.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.0.i.i.i = phi ptr [ %i.ac, %.preheader.i.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ad = load i32, ptr %.0.i.i.i, align 4, !tbaa !64
  %.not6.i.i.i = icmp eq i32 %i.ad, -1
  br i1 %.not6.i.i.i, label %kissat_next_clause.exit60.i, label %.preheader.i.i.i, !llvm.loop !0

kissat_next_clause.exit60.i:                      ; preds = %.preheader.i.i.i, %bb.e
  %.1.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.ac, %.preheader.i.i.i ]
  %i.ae = ptrtoint ptr %.1.i.i.i to i64
  %i.af = ptrtoint ptr %.03964.i to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = and i64 %i.ag, 7
  %.not.i.i.i.i.i = icmp eq i64 %i.ah, 0
  %i.ai = or i64 %i.ag, 7
  %i.aj = add i64 %i.ai, 1
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %i.ag, i64 %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %.03964.i, i64 %.0.i.i.i.i.i
  store i32 %i.t, ptr %.03865.i, align 4, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %.03964.i, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %.03865.i, i64 4
  %i.an = load i32, ptr %i.x, align 4, !tbaa !68
  %i.ao = load <2 x i32>, ptr %i.al, align 4, !tbaa !64
  store <2 x i32> %i.ao, ptr %i.am, align 4, !tbaa !64
  %i.ap = and i32 %i.t, -8912897
  store i32 %i.ap, ptr %.03865.i, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.03865.i, i64 12
  %i.ar = load i32, ptr %i.x, align 4, !tbaa !68
  %i.as = zext i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr nonnull align 4 %i.w, i64 %i.at, i1 false)
  %i.au = and i32 %i.t, 4194304
  %.not46.i = icmp eq i32 %i.au, 0                ; 2 uses
  %.not47.i = icmp ne ptr %.04262.i, null
  %i.av = select i1 %.not46.i, i1 true, i1 %.not47.i
  %.143.i = select i1 %i.av, ptr %.04262.i, ptr %.03865.i
  %.141.i = select i1 %.not46.i, ptr %.03865.i, ptr %.04063.i
  %i.aw = zext i32 %i.an to i64
  %.idx.i = shl nuw nsw i64 %i.aw, 2
  %i.ax = add nuw nsw i64 %.idx.i, 12             ; 3 uses
  %i.ay = and i64 %i.ax, 4
  %.not.i.i.i.i58.i = icmp eq i64 %i.ay, 0
  %i.az = or i64 %i.ax, 7
  %i.ba = add nuw nsw i64 %i.az, 1
  %.0.i.i.i.i59.i = select i1 %.not.i.i.i.i58.i, i64 %i.ax, i64 %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %.03865.i, i64 %.0.i.i.i.i59.i
  br label %bb.f

bb.f:                                             ; preds = %kissat_next_clause.exit60.i, %bb.d
  %.244.i = phi ptr [ %.04262.i, %bb.d ], [ %.143.i, %kissat_next_clause.exit60.i ] ; 4 uses
  %.2.i = phi ptr [ %.04063.i, %bb.d ], [ %.141.i, %kissat_next_clause.exit60.i ] ; 4 uses
  %.1.i = phi ptr [ %.03865.i, %bb.d ], [ %i.bb, %kissat_next_clause.exit60.i ] ; 5 uses
  %.0.i = phi ptr [ %i.v, %bb.d ], [ %i.ak, %kissat_next_clause.exit60.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %i.d
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !98

bb.g:                                             ; preds = %update_last_irredundant.exit.i
  store ptr %.038.lcssa7885.i, ptr %i.c, align 8, !tbaa !61
  br label %dense_sweep_garbage_clauses.exit

dense_sweep_garbage_clauses.exit:                 ; preds = %update_last_irredundant.exit.i, %bb.g
  tail call void @kissat_shrink_arena(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_watched_clauses_by_literal(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 4 uses
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !69    ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  %.pre = lshr i32 %1, 1
  %.pre152.a = zext nneg i32 %.pre to i64         ; 2 uses
  br i1 %.not, label %._crit_edge151, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre152.a
  %i.i = load i32, ptr %i.h, align 4, !tbaa !71
  %.not81 = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not81, i8 %i.g, i8 0
  %i.j = freeze i8 %spec.select
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %bb.a, %bb.b
  %.fr146 = phi i8 [ %i.j, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.pre152.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !64   ; 4 uses
  %i.n = and i32 %1, 1
  %.not9.i.i = icmp eq i32 %i.n, 0
  %i.o = sub nsw i32 0, %i.m
  %spec.select.i.i = select i1 %.not9.i.i, i32 %i.m, i32 %i.o
  %.not17.i = icmp eq i32 %i.m, 0
  br i1 %.not17.i, label %kissat_map_literal.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge151
  %i.p = tail call i32 @llvm.abs.i32(i32 %i.m, i1 true)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = zext nneg i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %i.v = load i8, ptr %i.u, align 2, !tbaa !75, !range !76, !noundef !77
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %kissat_map_literal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.t, align 4, !tbaa !78
  %i.y = lshr i32 %spec.select.i.i, 31
  %spec.select.i = xor i32 %i.x, %i.y
  br label %kissat_map_literal.exit

kissat_map_literal.exit:                          ; preds = %._crit_edge151, %bb.c, %bb.d
  %.2.i = phi i32 [ -1, %bb.c ], [ -1, %._crit_edge151 ], [ %spec.select.i, %bb.d ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.e ; 6 uses
  %i.ac = getelementptr i8, ptr %0, i64 840       ; 2 uses
  %.val94 = load ptr, ptr %i.ac, align 8, !tbaa !100
  %.val95 = load i32, ptr %i.ab, align 4, !tbaa !81
  %i.ad = zext i32 %.val95 to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val94, i64 %i.ad ; 8 uses
  %i.af = getelementptr i8, ptr %i.ab, i64 4
  %.val98 = load i32, ptr %i.af, align 4, !tbaa !82 ; 2 uses
  %i.ag = zext i32 %.val98 to i64
  %.idx = shl nuw nsw i64 %i.ag, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx ; 3 uses
  %.not82112 = icmp eq i32 %.val98, 0
  br i1 %.not82112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %kissat_map_literal.exit
  %.not84 = icmp eq i8 %.fr146, 0                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = icmp sgt i8 %.fr146, 0                  ; 4 uses
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.l
  %.0114.us = phi ptr [ %.1.us, %bb.l ], [ %i.ae, %.lr.ph ] ; 3 uses
  %.073113.us = phi ptr [ %.4.us, %bb.l ], [ %i.ae, %.lr.ph ] ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0114.us, i64 4 ; 4 uses
  %.sroa.018.0.copyload.us = load i32, ptr %.0114.us, align 4, !tbaa !69 ; 4 uses
  %i.al = icmp slt i32 %.sroa.018.0.copyload.us, 0
  br i1 %i.al, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.am = getelementptr inbounds nuw i8, ptr %.0114.us, i64 8 ; 2 uses
  %.sroa.0.0.copyload.us = load i32, ptr %i.ak, align 4, !tbaa !69 ; 2 uses
  %i.an = and i32 %.sroa.0.0.copyload.us, 2147483647
  %i.ao = icmp ult i32 %i.an, %3
  %or.cond90.us = select i1 %.not84, i1 %i.ao, i1 false
  br i1 %or.cond90.us, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.073113.us, i64 4
  store i32 %.sroa.018.0.copyload.us, ptr %.073113.us, align 4, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %.073113.us, i64 8
  store i32 %.sroa.0.0.copyload.us, ptr %i.ap, align 4, !tbaa !69
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.ar = and i32 %.sroa.018.0.copyload.us, 2147483647 ; 4 uses
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !69  ; 2 uses
  %.not85.us = icmp eq i8 %i.au, 0
  %.pre154.a = lshr i32 %i.ar, 1
  %.pre156 = zext nneg i32 %.pre154.a to i64      ; 2 uses
  br i1 %.not85.us, label %._crit_edge150, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre156
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !71
  %.not86.us = icmp eq i32 %i.aw, 0
  %i.ax = icmp sgt i8 %i.au, 0
  %spec.select87.us = and i1 %i.ax, %.not86.us
  %i.ay = or i1 %i.aj, %spec.select87.us
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %bb.g, %bb.h
  %or.cond.us = phi i1 [ %i.ay, %bb.h ], [ %i.aj, %bb.g ]
  %.val.i100.us = load ptr, ptr %i.k, align 8, !tbaa !72
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val.i100.us, i64 %.pre156
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !64 ; 4 uses
  %i.bb = and i32 %.sroa.018.0.copyload.us, 1
  %.not9.i.i102.us = icmp eq i32 %i.bb, 0
  %i.bc = sub nsw i32 0, %i.ba
  %spec.select.i.i103.us = select i1 %.not9.i.i102.us, i32 %i.ba, i32 %i.bc
  %.not17.i104.us = icmp eq i32 %i.ba, 0
  br i1 %.not17.i104.us, label %kissat_map_literal.exit107.thread.us, label %bb.i

bb.i:                                             ; preds = %._crit_edge150
  %i.bd = tail call i32 @llvm.abs.i32(i32 %i.ba, i1 true)
  %i.be = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !75, !range !76, !noundef !77
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %kissat_map_literal.exit107.thread.us, label %kissat_map_literal.exit107.us

kissat_map_literal.exit107.us:                    ; preds = %bb.i
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !78
  %i.bl = lshr i32 %spec.select.i.i103.us, 31
  %spec.select.i106.us = xor i32 %i.bk, %i.bl     ; 2 uses
  %i.bm = icmp eq i32 %spec.select.i106.us, -1
  %or.cond4.us = select i1 %or.cond.us, i1 true, i1 %i.bm
  br i1 %or.cond4.us, label %kissat_map_literal.exit107.thread.us, label %bb.j

bb.j:                                             ; preds = %kissat_map_literal.exit107.us
  %i.bn = or i32 %spec.select.i106.us, -2147483648
  %i.bo = getelementptr inbounds nuw i8, ptr %.073113.us, i64 4
  store i32 %i.bn, ptr %.073113.us, align 4, !tbaa !69
  br label %bb.l

kissat_map_literal.exit107.thread.us:             ; preds = %kissat_map_literal.exit107.us, %bb.i, %._crit_edge150
  %i.bp = icmp ult i32 %1, %i.ar
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %kissat_map_literal.exit107.thread.us
  tail call void @kissat_delete_binary(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.ar) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %kissat_map_literal.exit107.thread.us, %bb.j, %bb.f, %bb.e
  %.4.us = phi ptr [ %i.bo, %bb.j ], [ %.073113.us, %bb.k ], [ %.073113.us, %kissat_map_literal.exit107.thread.us ], [ %.073113.us, %bb.e ], [ %i.aq, %bb.f ] ; 2 uses
  %.1.us = phi ptr [ %i.ak, %bb.j ], [ %i.ak, %bb.k ], [ %i.ak, %kissat_map_literal.exit107.thread.us ], [ %i.am, %bb.e ], [ %i.am, %bb.f ] ; 2 uses
  %.not82.us = icmp eq ptr %.1.us, %i.ah
  br i1 %.not82.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !99

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not84, label %.lr.ph.split.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.q
  %.0114.us115 = phi ptr [ %.1.us127, %bb.q ], [ %i.ae, %.lr.ph.split ] ; 3 uses
  %.073113.us116 = phi ptr [ %.4.us126, %bb.q ], [ %i.ae, %.lr.ph.split ] ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0114.us115, i64 4 ; 3 uses
  %.sroa.018.0.copyload.us117 = load i32, ptr %.0114.us115, align 4, !tbaa !69 ; 3 uses
  %i.br = icmp slt i32 %.sroa.018.0.copyload.us117, 0
  br i1 %i.br, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.split.us
  %i.bs = getelementptr inbounds nuw i8, ptr %.0114.us115, i64 8
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph.split.split.us
  %i.bt = and i32 %.sroa.018.0.copyload.us117, 2147483647 ; 4 uses
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !69  ; 2 uses
  %.not85.us120 = icmp eq i8 %i.bw, 0
  br i1 %.not85.us120, label %kissat_map_literal.exit107.us123, label %.split

.split:                                           ; preds = %bb.n
  %i.bx = lshr i32 %i.bt, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !71
  %.not86.us121 = icmp eq i32 %i.ca, 0
  %i.cb = icmp sgt i8 %i.bw, 0
  %spec.select87.us122 = and i1 %i.cb, %.not86.us121
  %i.cc = or i1 %i.aj, %spec.select87.us122
  br i1 %i.cc, label %kissat_map_literal.exit107.thread.us125, label %bb.o

kissat_map_literal.exit107.us123:                 ; preds = %bb.n
  br i1 %i.aj, label %kissat_map_literal.exit107.thread.us125, label %bb.o

bb.o:                                             ; preds = %.split, %kissat_map_literal.exit107.us123
  %i.cd = getelementptr inbounds nuw i8, ptr %.073113.us116, i64 4
  store i32 %.sroa.018.0.copyload.us117, ptr %.073113.us116, align 4, !tbaa !69
  br label %bb.q

kissat_map_literal.exit107.thread.us125:          ; preds = %.split, %kissat_map_literal.exit107.us123
  %i.ce = icmp ult i32 %1, %i.bt
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %kissat_map_literal.exit107.thread.us125
  tail call void @kissat_delete_binary(ptr noundef %0, i32 noundef %1, i32 noundef %i.bt) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %kissat_map_literal.exit107.thread.us125, %bb.o
  %.4.us126 = phi ptr [ %i.cd, %bb.o ], [ %.073113.us116, %bb.p ], [ %.073113.us116, %kissat_map_literal.exit107.thread.us125 ], [ %.073113.us116, %bb.m ] ; 2 uses
  %.1.us127 = phi ptr [ %i.bq, %bb.o ], [ %i.bq, %bb.p ], [ %i.bq, %kissat_map_literal.exit107.thread.us125 ], [ %i.bs, %bb.m ] ; 2 uses
  %.not82.us128 = icmp eq ptr %.1.us127, %i.ah
  br i1 %.not82.us128, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !99

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split, %bb.v
  %.0114 = phi ptr [ %.1, %bb.v ], [ %i.ae, %.lr.ph.split ] ; 3 uses
  %.073113 = phi ptr [ %.4, %bb.v ], [ %i.ae, %.lr.ph.split ] ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0114, i64 4 ; 4 uses
  %.sroa.018.0.copyload = load i32, ptr %.0114, align 4, !tbaa !69 ; 4 uses
  %i.cg = icmp slt i32 %.sroa.018.0.copyload, 0
  br i1 %i.cg, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.lr.ph.split.split.split
  %i.ch = and i32 %.sroa.018.0.copyload, 2147483647 ; 4 uses
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !69  ; 2 uses
  %.not85 = icmp eq i8 %i.ck, 0
  br i1 %.not85, label %.critedge, label %kissat_map_literal.exit107

kissat_map_literal.exit107:                       ; preds = %bb.r
  %i.cl = lshr i32 %i.ch, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !71
  %.not86 = icmp eq i32 %i.co, 0
  %i.cp = icmp sgt i8 %i.ck, 0
  %spec.select87 = and i1 %i.cp, %.not86
  br i1 %spec.select87, label %kissat_map_literal.exit107.thread, label %.critedge

kissat_map_literal.exit107.thread:                ; preds = %kissat_map_literal.exit107
  %i.cq = icmp ult i32 %1, %i.ch
  br i1 %i.cq, label %bb.s, label %bb.v

bb.s:                                             ; preds = %kissat_map_literal.exit107.thread
  tail call void @kissat_delete_binary(ptr noundef %0, i32 noundef %1, i32 noundef %i.ch) #7
  br label %bb.v

.critedge:                                        ; preds = %bb.r, %kissat_map_literal.exit107
  %i.cr = getelementptr inbounds nuw i8, ptr %.073113, i64 4
  store i32 %.sroa.018.0.copyload, ptr %.073113, align 4, !tbaa !69
  br label %bb.v

bb.t:                                             ; preds = %.lr.ph.split.split.split
  %i.cs = getelementptr inbounds nuw i8, ptr %.0114, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.cf, align 4, !tbaa !69 ; 2 uses
  %i.ct = and i32 %.sroa.0.0.copyload, 2147483647
  %i.cu = icmp ult i32 %i.ct, %3
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %.073113, i64 4
  store i32 %.sroa.018.0.copyload, ptr %.073113, align 4, !tbaa !69
  %i.cw = getelementptr inbounds nuw i8, ptr %.073113, i64 8
  store i32 %.sroa.0.0.copyload, ptr %i.cv, align 4, !tbaa !69
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %.critedge, %bb.s, %kissat_map_literal.exit107.thread
  %.4 = phi ptr [ %i.cr, %.critedge ], [ %.073113, %bb.s ], [ %.073113, %kissat_map_literal.exit107.thread ], [ %.073113, %bb.t ], [ %i.cw, %bb.u ] ; 2 uses
  %.1 = phi ptr [ %i.cf, %.critedge ], [ %i.cf, %bb.s ], [ %i.cf, %kissat_map_literal.exit107.thread ], [ %i.cs, %bb.t ], [ %i.cs, %bb.u ] ; 2 uses
  %.not82 = icmp eq ptr %.1, %i.ah
  br i1 %.not82, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.q, %bb.v, %bb.l, %kissat_map_literal.exit
  %.073.lcssa = phi ptr [ %i.ae, %kissat_map_literal.exit ], [ %.4.us, %bb.l ], [ %.4, %bb.v ], [ %.4.us126, %bb.q ]
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !100
  %.val93 = load i32, ptr %i.ab, align 4, !tbaa !81
  %i.cx = zext i32 %.val93 to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.cx
  %i.cz = ptrtoint ptr %.073.lcssa to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 2
  tail call void @kissat_resize_vector(ptr noundef %0, ptr noundef nonnull %i.ab, i64 noundef %i.dc) #7
  %i.dd = icmp ne i32 %.2.i, -1
  %or.cond92.not = select i1 %2, i1 %i.dd, i1 false
  br i1 %or.cond92.not, label %bb.w, label %bb.y

bb.w:                                             ; preds = %._crit_edge
  %.not83 = icmp eq i8 %.fr146, 0
  %i.de = icmp ult i32 %.2.i, %1
  %or.cond88 = select i1 %.not83, i1 %i.de, i1 false
  br i1 %or.cond88, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.df = load ptr, ptr %i.z, align 8, !tbaa !79
  %i.dg = zext i32 %.2.i to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i64, ptr %i.ab, align 4, !tbaa !64
  store i64 %i.di, ptr %i.dh, align 4, !tbaa !64
  store i64 0, ptr %i.ab, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @kissat_delete_binary(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @kissat_resize_vector(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @kissat_delete_clause(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @kissat_reset_last_learned(ptr noundef) local_unnamed_addr #3

declare void @kissat_shrink_arena(ptr noundef) local_unnamed_addr #3
end_hunk_1
