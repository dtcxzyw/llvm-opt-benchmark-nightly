Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/collect?download=true
inline.NumInlined: 72
inline.NumDeleted: 40
begin_hunk_0_@kissat_update_last_irredundant:bb.a
  br i1 %or.cond.i, label %bb.d, label %update_last_irredundant.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 816
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !60
  %i.l = ptrtoint ptr %1 to i64
  %i.m = ptrtoint ptr %.val.i to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 3
  %i.p = trunc i64 %i.o to i32
  br label %update_last_irredundant.exit

update_last_irredundant.exit:                     ; preds = %bb.c, %bb.d
  %.sink.i = phi i32 [ -1, %bb.c ], [ %i.p, %bb.d ]
  store i32 %.sink.i, ptr %i.a, align 4, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %update_last_irredundant.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @kissat_sparse_collect(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @kissat_compact_literals(ptr noundef %0, ptr noundef nonnull %i.a) #7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !63
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi i32 [ %.pre, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  %.not13.i = icmp eq i32 %i.e, 0
  br i1 %.not13.i, label %flush_all_watched_clauses.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.014.i = phi i32 [ %i.h, %.lr.ph.i ], [ 0, %bb.d ] ; 2 uses
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
  %.0182228.i = phi ptr [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.n, %flush_all_watched_clauses.exit ] ; 6 uses
  %.0162.i = phi ptr [ %i.w, %bb.f ], [ null, %bb.e ], [ null, %flush_all_watched_clauses.exit ] ; 2 uses
  %.not191251.i = icmp eq ptr %.0182228.i, %i.p
  br i1 %.not191251.i, label %update_first_reducible.exit.i, label %.lr.ph258.i

.lr.ph258.i:                                      ; preds = %kissat_last_irredundant_clause.exit.i
  %i.x = icmp eq ptr %.0182228.i, %i.n
  %..0182.i = select i1 %i.x, ptr null, ptr %.0182228.i ; 3 uses
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
  %.1163.lcssa282.i = phi ptr [ %.7.i, %bb.g ], [ %.7.i, %._crit_edge.i ], [ %.0162.i, %kissat_last_irredundant_clause.exit.i ] ; 4 uses
  %.0172.lcssa281.i = phi ptr [ %.4176.i, %bb.g ], [ %.4176.i, %._crit_edge.i ], [ null, %kissat_last_irredundant_clause.exit.i ] ; 3 uses
  %.0177.lcssa280.i = phi ptr [ %.3180.i, %bb.g ], [ %.3180.i, %._crit_edge.i ], [ %.0182228.i, %kissat_last_irredundant_clause.exit.i ] ; 3 uses
  %.sink.i.i = phi i32 [ %i.ai, %bb.g ], [ -1, %._crit_edge.i ], [ -1, %kissat_last_irredundant_clause.exit.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  store i32 %.sink.i.i, ptr %i.aj, align 8, !tbaa !59
  %.not.i212.i = icmp ne ptr %.1163.lcssa282.i, null
  %.not8.i213.i = icmp ugt ptr %.0177.lcssa280.i, %.1163.lcssa282.i
  %or.cond.i214.i = and i1 %.not.i212.i, %.not8.i213.i
  br i1 %or.cond.i214.i, label %bb.h, label %update_last_irredundant.exit.i

bb.h:                                             ; preds = %update_first_reducible.exit.i
  %.val.i216.i = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.ak = ptrtoint ptr %.1163.lcssa282.i to i64
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
  %i.aq = icmp ne ptr %.0172.lcssa281.i, null
  %i.ar = icmp ult ptr %.0172.lcssa281.i, %.1163.lcssa282.i
  %or.cond207.i = and i1 %i.aq, %i.ar
  br i1 %or.cond207.i, label %bb.ai, label %bb.aj

bb.i:                                             ; preds = %bb.ah, %.lr.ph258.i
  %.1163257.i = phi ptr [ %.0162.i, %.lr.ph258.i ], [ %.7.i, %bb.ah ] ; 7 uses
  %.0166256.i = phi ptr [ null, %.lr.ph258.i ], [ %.5171.i, %bb.ah ] ; 6 uses
  %.0172255.i = phi ptr [ null, %.lr.ph258.i ], [ %.4176.i, %bb.ah ] ; 6 uses
  %.0177254.i = phi ptr [ %.0182228.i, %.lr.ph258.i ], [ %.3180.i, %bb.ah ] ; 20 uses
  %.0181253.i = phi ptr [ %.0182228.i, %.lr.ph258.i ], [ %.0161.i, %bb.ah ] ; 9 uses
  %i.as = load i32, ptr %.0181253.i, align 4      ; 3 uses
  %i.at = and i32 %i.as, 524288
  %.not192.i = icmp eq i32 %i.at, 0
  br i1 %.not192.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = call ptr @kissat_delete_clause(ptr noundef %0, ptr noundef nonnull %.0181253.i) #7
  %i.av = icmp eq ptr %.1163257.i, %.0181253.i
  %spec.select263.i = select i1 %i.av, ptr %..0182.i, ptr %.1163257.i
  br label %bb.ah

bb.k:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0181253.i, i64 12 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0181253.i, i64 8 ; 2 uses
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
  %i.bf = ptrtoint ptr %.0181253.i to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = and i64 %i.bg, 7
  %.not.i.i.i.i.i = icmp eq i64 %i.bh, 0
  %i.bi = or i64 %i.bg, 7
  %i.bj = add i64 %i.bi, 1
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 %i.bg, i64 %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %.0181253.i, i64 %.0.i.i.i.i.i ; 4 uses
  store i32 %i.as, ptr %.0177254.i, align 4, !tbaa !64
  %i.bl = getelementptr inbounds nuw i8, ptr %.0177254.i, i64 12 ; 4 uses
  %i.bm = load i32, ptr %i.ax, align 4, !tbaa !68 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %.idx.i = shl nuw nsw i64 %i.bn, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i
  %.not193235.i = icmp eq i32 %i.bm, 0
  br i1 %.not193235.i, label %.critedge.thread.i, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %kissat_next_clause.exit.i, %bb.r
  %.0137244.i = phi ptr [ %i.cz, %bb.r ], [ %i.aw, %kissat_next_clause.exit.i ] ; 2 uses
  %.0138243.i = phi i1 [ %3, %bb.r ], [ false, %kissat_next_clause.exit.i ]
  %.0139242.i = phi i32 [ %.3.i, %bb.r ], [ 0, %kissat_next_clause.exit.i ] ; 5 uses
  %.0142241.i = phi i32 [ %.3145.i, %bb.r ], [ -1, %kissat_next_clause.exit.i ] ; 4 uses
  %.0146240.i = phi i32 [ %.3149.i, %bb.r ], [ -1, %kissat_next_clause.exit.i ] ; 4 uses
  %.0150239.i = phi i32 [ %.3153.i, %bb.r ], [ -1, %kissat_next_clause.exit.i ] ; 5 uses
  %.0154238.i = phi i32 [ %.3157.i, %bb.r ], [ -1, %kissat_next_clause.exit.i ] ; 5 uses
  %.0158237.i = phi ptr [ %.2160.i, %bb.r ], [ %i.bl, %kissat_next_clause.exit.i ] ; 5 uses
  %i.bp = load i32, ptr %.0137244.i, align 4, !tbaa !64 ; 7 uses
  br i1 %.0138243.i, label %bb.r, label %bb.l

.critedge.i:                                      ; preds = %bb.r
  %i.bq = lshr i32 %.3149.i, 1
  %i.br = zext nneg i32 %i.bq to i64
  br i1 %3, label %bb.s, label %.critedge.thread.i

bb.l:                                             ; preds = %.lr.ph.i20
  %i.bs = zext i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !69  ; 5 uses
  %.not201.i = icmp eq i8 %i.bu, 0
  br i1 %.not201.i, label %.thread231.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = lshr i32 %i.bp, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !71
  %i.bz = icmp ne i32 %i.by, 0                    ; 2 uses
  %i.ca = icmp sgt i8 %i.bu, -1
  %or.cond.i = select i1 %i.ca, i1 true, i1 %i.bz
  br i1 %or.cond.i, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cb = icmp slt i8 %i.bu, 1
  %or.cond3.i = select i1 %i.cb, i1 true, i1 %i.bz
  br i1 %or.cond3.i, label %.thread231.i, label %bb.r

.thread231.i:                                     ; preds = %bb.n, %bb.l
  br i1 %1, label %bb.o, label %kissat_map_literal.exit.i

bb.o:                                             ; preds = %.thread231.i
  %.val.i217.i = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.cc = lshr i32 %i.bp, 1
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val.i217.i, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !64 ; 4 uses
  %i.cg = and i32 %i.bp, 1
  %.not9.i.i.i = icmp eq i32 %i.cg, 0
  %i.ch = sub nsw i32 0, %i.cf
  %spec.select.i.i.i = select i1 %.not9.i.i.i, i32 %i.cf, i32 %i.ch
  %.not17.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not17.i.i, label %kissat_map_literal.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = call i32 @llvm.abs.i32(i32 %i.cf, i1 true)
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.ck = zext nneg i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !75, !range !76, !noundef !77
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %kissat_map_literal.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = load i32, ptr %i.cl, align 4, !tbaa !78
  %i.cq = lshr i32 %spec.select.i.i.i, 31
  %spec.select.i.i = xor i32 %i.cp, %i.cq
  br label %kissat_map_literal.exit.i

kissat_map_literal.exit.i:                        ; preds = %bb.q, %bb.p, %bb.o, %.thread231.i
  %.2.i.i = phi i32 [ %i.bp, %.thread231.i ], [ -1, %bb.o ], [ %spec.select.i.i, %bb.q ], [ -1, %bb.p ] ; 3 uses
  %i.cr = icmp sgt i8 %i.bu, 0                    ; 2 uses
  %.not202.i = icmp eq i32 %.0139242.i, 0
  %i.cs = select i1 %.not202.i, i32 %i.bp, i32 -1
  %.1147.i = select i1 %i.cr, i32 %i.cs, i32 %.0146240.i
  %i.ct = icmp slt i8 %i.bu, 0
  %.1143.i = select i1 %i.ct, i32 %i.bp, i32 %.0142241.i
  %i.cu = zext i1 %i.cr to i32
  %.1140.i = add i32 %.0139242.i, %i.cu
  %i.cv = icmp eq i32 %.0154238.i, -1             ; 2 uses
  %i.cw = icmp ne i32 %.0150239.i, -1
  %.1155.i = select i1 %i.cv, i32 %.2.i.i, i32 %.0154238.i
  %i.cx = select i1 %i.cv, i1 true, i1 %i.cw
  %.1151.i = select i1 %i.cx, i32 %.0150239.i, i32 %.2.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.0158237.i, i64 4
  store i32 %.2.i.i, ptr %.0158237.i, align 4, !tbaa !64
  br label %bb.r

bb.r:                                             ; preds = %kissat_map_literal.exit.i, %bb.n, %bb.m, %.lr.ph.i20
  %.2160.i = phi ptr [ %.0158237.i, %.lr.ph.i20 ], [ %i.cy, %kissat_map_literal.exit.i ], [ %.0158237.i, %bb.n ], [ %.0158237.i, %bb.m ] ; 2 uses
  %.3157.i = phi i32 [ %.0154238.i, %.lr.ph.i20 ], [ %.1155.i, %kissat_map_literal.exit.i ], [ %.0154238.i, %bb.n ], [ %.0154238.i, %bb.m ] ; 2 uses
  %.3153.i = phi i32 [ %.0150239.i, %.lr.ph.i20 ], [ %.1151.i, %kissat_map_literal.exit.i ], [ %.0150239.i, %bb.n ], [ %.0150239.i, %bb.m ] ; 2 uses
  %.3149.i = phi i32 [ %.0146240.i, %.lr.ph.i20 ], [ %.1147.i, %kissat_map_literal.exit.i ], [ %.0146240.i, %bb.n ], [ %.0146240.i, %bb.m ] ; 2 uses
  %.3145.i = phi i32 [ %.0142241.i, %.lr.ph.i20 ], [ %.1143.i, %kissat_map_literal.exit.i ], [ %.0142241.i, %bb.n ], [ %.0142241.i, %bb.m ] ; 2 uses
  %.3.i = phi i32 [ %.0139242.i, %.lr.ph.i20 ], [ %.1140.i, %kissat_map_literal.exit.i ], [ %.0139242.i, %bb.n ], [ %.0139242.i, %bb.m ]
  %3 = phi i1 [ true, %.lr.ph.i20 ], [ false, %kissat_map_literal.exit.i ], [ true, %bb.n ], [ false, %bb.m ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0137244.i, i64 4 ; 2 uses
  %.not193.i = icmp eq ptr %i.cz, %i.bo
  br i1 %.not193.i, label %.critedge.i, label %.lr.ph.i20, !llvm.loop !84

bb.s:                                             ; preds = %.critedge.i
  %i.da = load i32, ptr %.0177254.i, align 4
  %i.db = and i32 %i.da, 4194304
  %.not200.i = icmp eq i32 %i.db, 0
  br i1 %.not200.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = load i64, ptr %i.ab, align 8, !tbaa !91
  %i.dd = add i64 %i.dc, -1
  store i64 %i.dd, ptr %i.ab, align 8, !tbaa !91
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.de = load i64, ptr %i.ac, align 8, !tbaa !92
  %i.df = add i64 %i.de, -1
  store i64 %i.df, ptr %i.ac, align 8, !tbaa !92
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dg = icmp eq ptr %.1163257.i, %.0181253.i
  %.2164.i = select i1 %i.dg, ptr %..0182.i, ptr %.1163257.i
  br label %bb.ah

.critedge.thread.i:                               ; preds = %.critedge.i, %kissat_next_clause.exit.i
  %.0142.lcssa293.i = phi i32 [ %.3145.i, %.critedge.i ], [ -1, %kissat_next_clause.exit.i ]
  %.0146.lcssa292.i = phi i64 [ %i.br, %.critedge.i ], [ 2147483647, %kissat_next_clause.exit.i ] ; 2 uses
  %.0150.lcssa291.i = phi i32 [ %.3153.i, %.critedge.i ], [ -1, %kissat_next_clause.exit.i ] ; 2 uses
  %.0154.lcssa290.i = phi i32 [ %.3157.i, %.critedge.i ], [ -1, %kissat_next_clause.exit.i ] ; 2 uses
  %.0158.lcssa289.i = phi ptr [ %.2160.i, %.critedge.i ], [ %i.bl, %kissat_next_clause.exit.i ]
  %i.dh = ptrtoint ptr %.0158.lcssa289.i to i64
  %i.di = ptrtoint ptr %i.bl to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = lshr exact i64 %i.dj, 2                 ; 2 uses
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 2
  br i1 %i.dm, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %.critedge.thread.i
  %i.dn = load i64, ptr %i.aa, align 8, !tbaa !93
  %i.do = add i64 %i.dn, 1
  store i64 %i.do, ptr %i.aa, align 8, !tbaa !93
  %i.dp = load i32, ptr %.0177254.i, align 4
  %i.dq = and i32 %i.dp, 4194304
  %.not198.i = icmp eq i32 %i.dq, 0
  br i1 %.not198.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = load i64, ptr %i.ab, align 8, !tbaa !91
  %i.ds = add i64 %i.dr, -1
  store i64 %i.ds, ptr %i.ab, align 8, !tbaa !91
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dt = load i64, ptr %i.ac, align 8, !tbaa !92
  %i.du = add i64 %i.dt, -1
  store i64 %i.du, ptr %i.ac, align 8, !tbaa !92
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dv = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.dw = zext i32 %.0154.lcssa290.i to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dw
  %i.dy = or i32 %.0150.lcssa291.i, -2147483648
  call fastcc void @kissat_push_vectors(ptr noundef nonnull %0, ptr noundef %i.dx, i32 noundef %i.dy)
  %i.dz = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.ea = zext i32 %.0150.lcssa291.i to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ea
  %i.ec = or i32 %.0154.lcssa290.i, -2147483648
  call fastcc void @kissat_push_vectors(ptr noundef nonnull %0, ptr noundef %i.eb, i32 noundef %i.ec)
  %i.ed = load i32, ptr %.0177254.i, align 4
  %i.ee = and i32 %i.ed, 2097152
  %.not199.i = icmp eq i32 %i.ee, 0
  br i1 %.not199.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.0146.lcssa292.i ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 4
  %i.ei = or i8 %i.eh, 2
  store i8 %i.ei, ptr %i.eg, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 %.0142.lcssa293.i, ptr %i.ej, align 4, !tbaa !94
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ek = icmp eq ptr %.1163257.i, %.0181253.i
  %.3165.i = select i1 %i.ek, ptr %..0182.i, ptr %.1163257.i
  br label %bb.ah

bb.ac:                                            ; preds = %.critedge.thread.i
  %i.el = getelementptr inbounds nuw i8, ptr %.0177254.i, i64 8
  store i32 %i.dl, ptr %i.el, align 4, !tbaa !68
  %i.em = load i32, ptr %.0177254.i, align 4      ; 2 uses
  %i.en = and i32 %i.em, -8388609                 ; 3 uses
  store i32 %i.en, ptr %.0177254.i, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.0177254.i, i64 4
  store i32 2, ptr %i.eo, align 4, !tbaa !95
  %i.ep = and i32 %i.em, 2097152
  %.not194.i = icmp eq i32 %i.ep, 0
  br i1 %.not194.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val210.i = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.eq = ptrtoint ptr %.0177254.i to i64
  %i.er = ptrtoint ptr %.val210.i to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = lshr exact i64 %i.es, 3
  %i.eu = trunc i64 %i.et to i32                  ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.0146.lcssa292.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !94
  %.not.i218.i = icmp eq i32 %i.ex, %i.eu
  br i1 %.not.i218.i, label %update_large_reason.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !94
  %.pre.i = load i32, ptr %.0177254.i, align 4
  br label %update_large_reason.exit.i

update_large_reason.exit.i:                       ; preds = %bb.ae, %bb.ad
  %i.ey = phi i32 [ %i.en, %bb.ad ], [ %.pre.i, %bb.ae ]
  %i.ez = and i32 %i.ey, -2097153                 ; 2 uses
  store i32 %i.ez, ptr %.0177254.i, align 4
  br label %bb.af

bb.af:                                            ; preds = %update_large_reason.exit.i, %bb.ac
  %i.fa = phi i32 [ %i.ez, %update_large_reason.exit.i ], [ %i.en, %bb.ac ] ; 2 uses
  %i.fb = and i64 %i.dk, 4294967295
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.fb ; 2 uses
  %i.fd = and i32 %i.fa, 8388608
  %.not.i.i219.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i219.i, label %kissat_next_clause.exit226.i, label %.preheader.i.i220.i

.preheader.i.i220.i:                              ; preds = %bb.af, %.preheader.i.i220.i
  %.0.i.i221.i = phi ptr [ %i.fe, %.preheader.i.i220.i ], [ %i.fc, %bb.af ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i221.i, i64 4 ; 2 uses
  %i.ff = load i32, ptr %.0.i.i221.i, align 4, !tbaa !64
  %.not6.i.i222.i = icmp eq i32 %i.ff, -1
  br i1 %.not6.i.i222.i, label %kissat_next_clause.exit226.i, label %.preheader.i.i220.i, !llvm.loop !0

kissat_next_clause.exit226.i:                     ; preds = %.preheader.i.i220.i, %bb.af
  %.1.i.i223.i = phi ptr [ %i.fc, %bb.af ], [ %i.fe, %.preheader.i.i220.i ]
  %i.fg = ptrtoint ptr %.1.i.i223.i to i64
  %i.fh = ptrtoint ptr %.0177254.i to i64
  %i.fi = sub i64 %i.fg, %i.fh                    ; 3 uses
  %i.fj = and i64 %i.fi, 7
  %.not.i.i.i.i224.i = icmp eq i64 %i.fj, 0
  %i.fk = or i64 %i.fi, 7
  %i.fl = add i64 %i.fk, 1
  %.0.i.i.i.i225.i = select i1 %.not.i.i.i.i224.i, i64 %i.fi, i64 %i.fl
  %i.fm = getelementptr inbounds nuw i8, ptr %.0177254.i, i64 %.0.i.i.i.i225.i ; 2 uses
  %i.fn = and i32 %i.fa, 4194304
  %.not195.i = icmp eq i32 %i.fn, 0
  br i1 %.not195.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %kissat_next_clause.exit226.i
  %.not196.i = icmp eq ptr %.0166256.i, null
  %spec.select206.i = select i1 %.not196.i, ptr %.0177254.i, ptr %.0166256.i
  %.not197.i = icmp eq ptr %.0172255.i, null
  %spec.select208.i = select i1 %.not197.i, ptr %.0177254.i, ptr %.0172255.i
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %kissat_next_clause.exit226.i, %bb.ab, %bb.v, %bb.j
  %.3180.i = phi ptr [ %.0177254.i, %bb.v ], [ %.0177254.i, %bb.j ], [ %.0177254.i, %bb.ab ], [ %i.fm, %kissat_next_clause.exit226.i ], [ %i.fm, %bb.ag ] ; 4 uses
  %.4176.i = phi ptr [ %.0172255.i, %bb.v ], [ %.0172255.i, %bb.j ], [ %.0172255.i, %bb.ab ], [ %.0172255.i, %kissat_next_clause.exit226.i ], [ %spec.select208.i, %bb.ag ] ; 3 uses
  %.5171.i = phi ptr [ %.0166256.i, %bb.v ], [ %.0166256.i, %bb.j ], [ %.0166256.i, %bb.ab ], [ %.0166256.i, %kissat_next_clause.exit226.i ], [ %spec.select206.i, %bb.ag ] ; 4 uses
  %.7.i = phi ptr [ %.2164.i, %bb.v ], [ %spec.select263.i, %bb.j ], [ %.3165.i, %bb.ab ], [ %.0177254.i, %kissat_next_clause.exit226.i ], [ %.1163257.i, %bb.ag ] ; 3 uses
  %.0161.i = phi ptr [ %i.bk, %bb.v ], [ %i.au, %bb.j ], [ %i.bk, %bb.ab ], [ %i.bk, %kissat_next_clause.exit226.i ], [ %i.bk, %bb.ag ] ; 2 uses
  %.not191.i = icmp eq ptr %.0161.i, %i.p
  br i1 %.not191.i, label %._crit_edge.i, label %bb.i, !llvm.loop !85

bb.ai:                                            ; preds = %update_last_irredundant.exit.i
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.fo = ptrtoint ptr %.0172.lcssa281.i to i64
  %i.fp = ptrtoint ptr %.val.i to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = lshr exact i64 %i.fq, 3
  %i.fs = trunc i64 %i.fr to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %update_last_irredundant.exit.i
  %.0.i = phi i32 [ %i.fs, %bb.ai ], [ -1, %update_last_irredundant.exit.i ] ; 3 uses
  %i.ft = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.fu = icmp eq ptr %.0177.lcssa280.i, %i.ft
  br i1 %i.fu, label %sparse_sweep_garbage_clauses.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr %.0177.lcssa280.i, ptr %i.o, align 8, !tbaa !61
  br label %sparse_sweep_garbage_clauses.exit

sparse_sweep_garbage_clauses.exit:                ; preds = %bb.aj, %bb.ak
  call void @kissat_shrink_arena(ptr noundef nonnull %0) #7
  br i1 %1, label %bb.al, label %bb.am

bb.al:                                            ; preds = %sparse_sweep_garbage_clauses.exit
  %i.fv = load i32, ptr %i.a, align 4, !tbaa !64
end_hunk_0
