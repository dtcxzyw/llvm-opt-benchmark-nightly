begin_hunk_0
  br i1 %.not48, label %select.unfold, label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.az
  %.not52 = icmp eq i32 %1, 1
  %i.if = select i1 %.not52, ptr @.str.490, ptr @.str.491 ; 2 uses
  %.not53 = icmp eq ptr %3, null
  br i1 %.not53, label %bb.bc, label %bb.bb

end_hunk_0
begin_hunk_1
  %.0.i = phi ptr [ %i.n, %bb.e ], [ %i.b, %bb.a ] ; 14 uses
  %.not = icmp samesign ult i32 %2, 4             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !778  ; 11 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !778
  %.not188 = icmp eq ptr %3, null
end_hunk_1
begin_hunk_2
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !257
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.q, label %.thread271

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !306
  %i.bj = and i32 %i.bi, 4160
  %or.cond.i = icmp eq i32 %i.bj, 4096
  br i1 %or.cond.i, label %bb.r, label %.thread271

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_2
begin_hunk_3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !2190
  %.not24.i = icmp eq ptr %i.bn, null
  br i1 %.not24.i, label %bb.s, label %.thread271

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !326
  %i.bq = and i32 %i.bp, 9
  %.not25.i = icmp eq i32 %i.bq, 0
  br i1 %.not25.i, label %bb.t, label %.thread271

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !2197
  %.not26.i = icmp eq ptr %i.bs, null
  br i1 %.not26.i, label %bb.u, label %.thread271

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2193
  %.not27.i = icmp eq ptr %i.bu, null
  br i1 %.not27.i, label %bb.v, label %.thread271

bb.v:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !2192 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !5
  %.not28.i = icmp eq i32 %i.bx, 1
  br i1 %.not28.i, label %bb.w, label %.thread271

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 33
  %i.bz = load i16, ptr %i.by, align 1
  %i.ca = and i16 %i.bz, 4
  %.not29.i = icmp eq i16 %i.ca, 0
  br i1 %.not29.i, label %bb.x, label %.thread271

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
end_hunk_3
begin_hunk_4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 63
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !750
  %i.cf = icmp eq i8 %i.ce, 1
  br i1 %i.cf, label %.thread271, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
end_hunk_4
begin_hunk_5
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !730
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !2177
  %.not30.i = icmp eq i8 %i.cn, -88
  br i1 %.not30.i, label %bb.z, label %.thread271

isCandidateForInOpt.exit:                         ; preds = %bb.z
  %.not191 = icmp eq ptr %i.bl, null
  br i1 %.not191, label %.thread271, label %isCandidateForInOpt.exit.thread260

isCandidateForInOpt.exit.thread260:               ; preds = %bb.y, %isCandidateForInOpt.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
end_hunk_5
begin_hunk_6
  br i1 %i.gk, label %bb.aj, label %._crit_edge, !llvm.loop !2981

._crit_edge:                                      ; preds = %sqlite3CompareAffinity.exit
  br i1 %narrow, label %.critedge, label %.thread271

.critedge:                                        ; preds = %bb.ai, %._crit_edge
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.0171321 = load ptr, ptr %i.gl, align 8, !tbaa !763 ; 2 uses
  %.not329 = icmp eq ptr %.0171321, null
  br i1 %.not329, label %.thread271, label %.lr.ph324

.lr.ph324:                                        ; preds = %.critedge
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_6
begin_hunk_7
  %i.lw = getelementptr inbounds nuw i8, ptr %.0171322, i64 40
  %.0171 = load ptr, ptr %i.lw, align 8, !tbaa !763 ; 2 uses
  %.not419 = icmp eq ptr %.0171, null
  br i1 %.not419, label %.thread271, label %bb.au, !llvm.loop !2984

._crit_edge325:                                   ; preds = %bb.ci, %bb.ch
  %.0.i.i.i246 = phi ptr [ %i.lv, %bb.ci ], [ @sqlite3VdbeGetOp.dummy, %bb.ch ]
end_hunk_7
begin_hunk_8
  store i32 %i.lp, ptr %i.lx, align 8, !tbaa !471
  br label %bb.cy

.thread271:                                       ; preds = %.lr.ph.i, %bb.cj, %.critedge, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.x, %bb.q, %._crit_edge, %isCandidateForInOpt.exit, %bb.p
  %7 = icmp eq i32 %2, 4
  br i1 %7, label %.thread271.a, label %bb.ck

.thread271.a:                                     ; preds = %.thread271
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %9 = load i16, ptr %8, align 4, !tbaa !893
  store i16 0, ptr %8, align 4, !tbaa !893
  br label %bb.ct

bb.ck:                                            ; preds = %.thread271
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !306
  %i.ma = and i32 %i.lz, 4096
end_hunk_8
begin_hunk_9
  store i32 %i.mn, ptr %i.o, align 8, !tbaa !778
  br label %bb.cy

bb.co:                                            ; preds = %bb.cm, %bb.ck
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.mp = load i16, ptr %i.mo, align 4, !tbaa !893 ; 5 uses
  %i.mq = and i32 %2, 2                           ; 2 uses
  %.not202 = icmp eq i32 %i.mq, 0                 ; 3 uses
  %.lobit = lshr exact i32 %i.mq, 1               ; 4 uses
  br i1 %.not, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i16 0, ptr %i.mo, align 4, !tbaa !893
  br i1 %.not202, label %bb.ct, label %.thread404

bb.cq:                                            ; preds = %bb.co
  %.not203 = icmp eq ptr %.1, null
end_hunk_9
begin_hunk_10
bb.cr:                                            ; preds = %bb.cq
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !777
  %i.mt = add nsw i32 %i.ms, 1                    ; 4 uses
  store i32 %i.mt, ptr %i.mr, align 4, !tbaa !777
  store i32 %i.mt, ptr %.1, align 4, !tbaa !5
  br i1 %.not202, label %bb.ct, label %bb.cv

bb.cs:                                            ; preds = %bb.cq
  br i1 %.not202, label %bb.ct, label %.thread404

bb.ct:                                            ; preds = %.thread271.a, %bb.cr, %bb.cp, %bb.cs
  %.0165402 = phi i32 [ 0, %bb.cp ], [ 0, %bb.cs ], [ %i.mt, %bb.cr ], [ 0, %.thread271.a ] ; 2 uses
  %10 = phi ptr [ %i.mo, %bb.cp ], [ %i.mo, %bb.cs ], [ %i.mo, %bb.cr ], [ %8, %.thread271.a ] ; 2 uses
  %11 = phi i16 [ %i.mp, %bb.cp ], [ %i.mp, %bb.cs ], [ %i.mp, %bb.cr ], [ %9, %.thread271.a ] ; 2 uses
  %.lobit398400 = phi i32 [ %.lobit, %bb.cp ], [ %.lobit, %bb.cs ], [ 0, %bb.cr ], [ 0, %.thread271.a ]
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !306
  %i.mw = and i32 %i.mv, 4096
end_hunk_10
begin_hunk_11
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !326
  %i.nb = and i32 %i.na, 32
  %.not205 = icmp eq i32 %i.nb, 0
  %spec.select207 = select i1 %.not205, i32 %.lobit398400, i32 1
  br label %bb.cv

.thread404:                                       ; preds = %bb.cs, %bb.cp
  call fastcc void @sqlite3CodeRhsOfIN(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.p, i32 noundef %.lobit)
  br label %bb.cx

bb.cv:                                            ; preds = %bb.cr, %bb.cu, %bb.ct
  %.0165401 = phi i32 [ %i.mt, %bb.cr ], [ %.0165402, %bb.ct ], [ %.0165402, %bb.cu ] ; 2 uses
  %12 = phi ptr [ %i.mo, %bb.cr ], [ %10, %bb.ct ], [ %10, %bb.cu ] ; 2 uses
  %13 = phi i16 [ %i.mp, %bb.cr ], [ %11, %bb.ct ], [ %11, %bb.cu ] ; 2 uses
  %.0164 = phi i32 [ %.lobit, %bb.cr ], [ 0, %bb.ct ], [ %spec.select207, %bb.cu ]
  call fastcc void @sqlite3CodeRhsOfIN(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.p, i32 noundef %.0164)
  %.not206 = icmp eq i32 %.0165401, 0
  br i1 %.not206, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call fastcc void @sqlite3SetHasNullFlag(ptr noundef %.0.i, i32 noundef %i.p, i32 noundef %.0165401)
  br label %bb.cx

bb.cx:                                            ; preds = %.thread404, %bb.cw, %bb.cv
  %14 = phi i16 [ %i.mp, %.thread404 ], [ %13, %bb.cw ], [ %13, %bb.cv ]
  %15 = phi ptr [ %i.mo, %.thread404 ], [ %12, %bb.cw ], [ %12, %bb.cv ]
  store i16 %14, ptr %15, align 4, !tbaa !893
  br label %bb.cy

bb.cy:                                            ; preds = %._crit_edge325, %bb.cn, %.thread273, %bb.cx
end_hunk_11
begin_hunk_12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !2497
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !2497
  %i.cg = icmp eq i32 %2, 1
  br i1 %i.cg, label %jsonCacheSearch.exit.thread, label %jsonParseFree.exit

jsonCacheSearch.exit.thread:                      ; preds = %bb.o, %bb.t, %sqlite3_value_bytes.exit.i, %bb.f, %.thread.i, %sqlite3_value_text.exit.i, %bb.b, %sqlite3_get_auxdata.exit.i, %bb.w, %jsonCacheSearch.exit
  %.0.i132 = phi ptr [ null, %jsonCacheSearch.exit ], [ %i.cc, %bb.w ], [ null, %sqlite3_get_auxdata.exit.i ], [ null, %bb.b ], [ null, %sqlite3_value_text.exit.i ], [ null, %.thread.i ], [ null, %bb.f ], [ null, %sqlite3_value_bytes.exit.i ], [ null, %bb.t ], [ null, %bb.o ]
end_hunk_12
begin_hunk_13
  %.not96 = icmp samesign ult i32 %2, 2           ; 3 uses
  %i.cp = select i1 %.not96, ptr %0, ptr null
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.not100 = icmp eq i32 %2, 1                    ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.bg, %jsonCacheSearch.exit.thread
end_hunk_13
begin_hunk_14
  br i1 %.not94, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not100, label %bb.aj, label %jsonParseFree.exit

bb.aj:                                            ; preds = %bb.ai
  %i.do = tail call fastcc i32 @jsonBlobMakeEditable(ptr noundef nonnull %.0.i.i, i32 noundef 0)
end_hunk_14
begin_hunk_15
  br i1 %i.fx, label %jsonParseFree.exit124.thread165, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %.not100, label %bb.x, label %jsonParseFree.exit

.thread:                                          ; preds = %bb.av, %sqlite3_value_bytes.exit.thread
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36 ; 2 uses
end_hunk_15
begin_hunk_16
  tail call fastcc void @fts5SegIterSeekInit(ptr noundef nonnull %0, ptr noundef %.sroa.0.1.ph.i, i32 noundef %.sroa.16.0.ph.i, i32 noundef 264, ptr noundef %i.dy, ptr noundef %.1124.i388)
  %i.tg = load ptr, ptr %.1124.i388, align 8, !tbaa !5075
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 32
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !4958 ; 4 uses
  %i.tj = icmp sgt i32 %i.ti, 0
  br i1 %i.tj, label %bb.ep, label %fts5SegIterAllocTombstone.exit.i

bb.ep:                                            ; preds = %bb.eo
  %narrow.i.i = add nuw i32 %i.ti, 1
  %i.tk = zext i32 %narrow.i.i to i64
  %i.tl = shl nuw nsw i64 %i.tk, 3
  %i.tm = add nuw nsw i64 %i.tl, 8                ; 5 uses
  %i.tn = load i32, ptr %i.f, align 4, !tbaa !5
  %i.to = icmp eq i32 %i.tn, 0
end_hunk_16
begin_hunk_17
bb.eq:                                            ; preds = %bb.ep
  %i.tp = tail call i32 @sqlite3_initialize()
  %.not.i.i.i168.i = icmp ne i32 %i.tp, 0
  %8 = icmp samesign ugt i32 %i.ti, 268435421
  %or.cond293.i = or i1 %8, %.not.i.i.i168.i
  br i1 %or.cond293.i, label %sqlite3_malloc64.exit.thread.i.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
end_hunk_17
