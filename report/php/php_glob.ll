Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/php_glob?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@glob0:bb.a
bb.k:                                             ; preds = %.critedge.i
  %i.ae = call i32 @getpwnam_r(ptr noundef nonnull %i.d, ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef 4096, ptr noundef nonnull %i.b) #19 ; 0 uses
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !68  ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %globtilde.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k, %bb.j
  %.sink63.i = phi ptr [ %i.ac, %bb.j ], [ %i.af, %bb.k ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink63.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !70
  br label %.preheader

.preheader:                                       ; preds = %.sink.split.i, %bb.i
  %.23853.i.ph = phi ptr [ %i.y, %bb.i ], [ %i.ai, %.sink.split.i ]
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %.preheader
  %.0.idx54.i = phi i64 [ 0, %.preheader ], [ %.0.add.i.2, %bb.o ] ; 6 uses
  %.23853.i = phi ptr [ %.23853.i.ph, %.preheader ], [ %i.aq, %bb.o ] ; 4 uses
  %i.aj = load i8, ptr %.23853.i, align 1, !tbaa !25 ; 2 uses
  %.not47.i = icmp eq i8 %i.aj, 0
  br i1 %.not47.i, label %.critedge2.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0.ptr.ptr55.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx54.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.23853.i, i64 1
  %i.al = sext i8 %i.aj to i16
  %.0.add.i = add nuw nsw i64 %.0.idx54.i, 2      ; 2 uses
  store i16 %i.al, ptr %.0.ptr.ptr55.i, align 2, !tbaa !27
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !25  ; 2 uses
  %.not47.i.1 = icmp eq i8 %i.am, 0
  br i1 %.not47.i.1, label %.critedge2.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.0.ptr.ptr55.i.1 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.add.i
  %i.an = getelementptr inbounds nuw i8, ptr %.23853.i, i64 2
  %i.ao = sext i8 %i.am to i16
  %.0.add.i.1 = add nuw nsw i64 %.0.idx54.i, 4    ; 2 uses
  store i16 %i.ao, ptr %.0.ptr.ptr55.i.1, align 2, !tbaa !27
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !25  ; 2 uses
  %.not47.i.2 = icmp eq i8 %i.ap, 0
  br i1 %.not47.i.2, label %.critedge2.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.0.ptr.ptr55.i.2 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.add.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %.23853.i, i64 3
  %i.ar = sext i8 %i.ap to i16
  %.0.add.i.2 = add nuw nsw i64 %.0.idx54.i, 6
  store i16 %i.ar, ptr %.0.ptr.ptr55.i.2, align 2, !tbaa !27
  %i.as = icmp samesign ult i64 %.0.idx54.i, 8184
  br i1 %i.as, label %bb.l, label %.critedge2.i, !llvm.loop !53

.critedge2.i:                                     ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.0.idx.lcssa.i = phi i64 [ 8190, %bb.o ], [ %.0.idx54.i, %bb.l ], [ %.0.add.i, %bb.m ], [ %.0.add.i.1, %bb.n ] ; 3 uses
  %.1.ptr.i276 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx.lcssa.i ; 2 uses
  %i.at = icmp samesign ult i64 %.0.idx.lcssa.i, 8190
  br i1 %i.at, label %.lr.ph280, label %.critedge4.i

bb.p:                                             ; preds = %.lr.ph280
  %i.au = getelementptr inbounds nuw i8, ptr %.135.i277, i64 2
  %.1.ptr.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.add.i ; 2 uses
  %i.av = icmp samesign ult i64 %.1.idx.i278, 8188
  br i1 %i.av, label %.lr.ph280, label %.critedge4.i, !llvm.loop !54

.lr.ph280:                                        ; preds = %.critedge2.i, %bb.p
  %.1.ptr.i279 = phi ptr [ %.1.ptr.i, %bb.p ], [ %.1.ptr.i276, %.critedge2.i ]
  %.1.idx.i278 = phi i64 [ %.1.add.i, %bb.p ], [ %.0.idx.lcssa.i, %.critedge2.i ] ; 2 uses
  %.135.i277 = phi ptr [ %i.au, %bb.p ], [ %.034.lcssa.i, %.critedge2.i ] ; 2 uses
  %i.aw = load i16, ptr %.135.i277, align 2, !tbaa !27 ; 2 uses
  %.1.add.i = add nuw nsw i64 %.1.idx.i278, 2     ; 3 uses
  store i16 %i.aw, ptr %.1.ptr.i279, align 2, !tbaa !27
  %.not48.i = icmp eq i16 %i.aw, 0
  br i1 %.not48.i, label %.critedge4.split.loop.exit56.i, label %bb.p, !llvm.loop !54

.critedge4.split.loop.exit56.i:                   ; preds = %.lr.ph280
  %.ptr.le.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1.add.i
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %bb.p, %.critedge2.i, %.critedge4.split.loop.exit56.i
  %.2.i = phi ptr [ %.ptr.le.i, %.critedge4.split.loop.exit56.i ], [ %.1.ptr.i276, %.critedge2.i ], [ %.1.ptr.i, %bb.p ]
  store i16 0, ptr %.2.i, align 2, !tbaa !27
  br label %globtilde.exit

globtilde.exit:                                   ; preds = %bb.a, %bb.b, %bb.j, %bb.k, %.critedge4.i
  %.039.i = phi ptr [ %0, %bb.j ], [ %0, %bb.a ], [ %i.d, %.critedge4.i ], [ %0, %bb.b ], [ %0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ax = load i64, ptr %1, align 8, !tbaa !20    ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %globtilde.exit
  %.0132.ph = phi ptr [ %.039.i, %globtilde.exit ], [ %.0132.ph.be, %.outer.backedge ]
  %.0128.ph = phi ptr [ %i.d, %globtilde.exit ], [ %.0128.ph.be, %.outer.backedge ] ; 14 uses
  %i.az = icmp eq ptr %.0128.ph, %i.d
  %i.ba = getelementptr inbounds i8, ptr %.0128.ph, i64 -2
  br label %bb.q

bb.q:                                             ; preds = %.outer, %bb.bg
  %.0132 = phi ptr [ %i.bb, %bb.bg ], [ %.0132.ph, %.outer ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0132, i64 2 ; 6 uses
  %i.bc = load i16, ptr %.0132, align 2, !tbaa !27 ; 2 uses
  switch i16 %i.bc, label %bb.bi [
    i16 0, label %bb.bj
    i16 91, label %bb.r
    i16 63, label %bb.be
    i16 42, label %bb.bf
  ]

bb.r:                                             ; preds = %bb.q
  %i.bd = load i16, ptr %i.bb, align 2, !tbaa !27 ; 2 uses
  %i.be = icmp eq i16 %i.bd, 33                   ; 3 uses
  br i1 %i.be, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %.0132, i64 4 ; 2 uses
  %.pr = load i16, ptr %i.bf, align 2, !tbaa !27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bg = phi i16 [ %.pr, %bb.s ], [ %i.bd, %bb.r ]
  %.1133 = phi ptr [ %i.bf, %bb.s ], [ %i.bb, %bb.r ] ; 3 uses
  %i.bh = icmp eq i16 %i.bg, 0
  br i1 %i.bh, label %g_strchr.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %.1133, i64 2 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.04.i = phi ptr [ %i.bi, %bb.u ], [ %i.bl, %bb.w ] ; 2 uses
  %i.bj = load i16, ptr %.04.i, align 2, !tbaa !27 ; 2 uses
  %i.bk = icmp eq i16 %i.bj, 93
  br i1 %i.bk, label %g_strchr.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %.04.i, i64 2
  %.not.i102 = icmp eq i16 %i.bj, 0
  br i1 %.not.i102, label %g_strchr.exit.thread, label %bb.v, !llvm.loop !0

g_strchr.exit.thread:                             ; preds = %bb.w, %bb.t
  store i16 91, ptr %.0128.ph, align 2, !tbaa !27
  %spec.select.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.be, i64 -2, i64 0
  %spec.select.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds i8, ptr %.1133, i64 %spec.select.idx.sroa.sel.idx.sroa.sel.idx
  br label %.outer.backedge

g_strchr.exit:                                    ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %.0128.ph, i64 2 ; 2 uses
  store i16 -32677, ptr %.0128.ph, align 2, !tbaa !27
  br i1 %i.be, label %bb.x, label %bb.y

bb.x:                                             ; preds = %g_strchr.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.0128.ph, i64 4
  store i16 -32735, ptr %i.bm, align 2, !tbaa !27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %g_strchr.exit
  %.1129 = phi ptr [ %i.bn, %bb.x ], [ %i.bm, %g_strchr.exit ]
  %i.bo = load i16, ptr %.1133, align 2, !tbaa !27
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split, %bb.y
  %.2134 = phi ptr [ %i.bi, %bb.y ], [ %i.ge, %thread-pre-split ] ; 4 uses
  %.2130 = phi ptr [ %.1129, %bb.y ], [ %.5, %thread-pre-split ] ; 3 uses
  %.073.in = phi i16 [ %i.bo, %bb.y ], [ %i.gd, %thread-pre-split ] ; 2 uses
  %i.bp = icmp eq i16 %.073.in, 91
  br i1 %i.bp, label %bb.aa, label %.critedge.thread163

bb.aa:                                            ; preds = %bb.z
  %i.bq = load i16, ptr %.2134, align 2, !tbaa !27
  %i.br = icmp eq i16 %i.bq, 58
  br i1 %i.br, label %.preheader169, label %.critedge.thread163

.preheader169:                                    ; preds = %bb.aa, %bb.bb
  %.3135 = phi ptr [ %i.fn, %bb.bb ], [ %.2134, %bb.aa ] ; 7 uses
  %.3131 = phi ptr [ %i.fk, %bb.bb ], [ %.2130, %bb.aa ] ; 6 uses
  %.ptr354 = getelementptr inbounds nuw i8, ptr %.3135, i64 2 ; 12 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.preheader169
  %.04.i.i.idx = phi i64 [ 2, %.preheader169 ], [ %.04.i.i.add, %bb.ac ] ; 6 uses
  %.04.i.i.ptr = getelementptr inbounds nuw i8, ptr %.3135, i64 %.04.i.i.idx
  %i.bs = load i16, ptr %.04.i.i.ptr, align 2, !tbaa !27 ; 2 uses
  %i.bt = icmp eq i16 %i.bs, 58
  br i1 %i.bt, label %g_strchr.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.04.i.i.add = add nuw nsw i64 %.04.i.i.idx, 2
  %.not.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not.i.i, label %.critedge.thread163, label %bb.ab, !llvm.loop !0

g_strchr.exit.i:                                  ; preds = %bb.ab
  %.04.i.i.ptr.le = getelementptr inbounds nuw i8, ptr %.3135, i64 %.04.i.i.idx
  %i.bu = getelementptr inbounds nuw i8, ptr %.04.i.i.ptr.le, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !27
  %.not.i103 = icmp eq i16 %i.bv, 93
  br i1 %.not.i103, label %.preheader.i104, label %.critedge.thread163

.preheader.i104:                                  ; preds = %g_strchr.exit.i
  %gepdiff = add nsw i64 %.04.i.i.idx, -2         ; 24 uses
  %i.bw = ashr exact i64 %gepdiff, 1              ; 12 uses
  %.not.i26.i281 = icmp eq i64 %.04.i.i.idx, 2
  br i1 %.not.i26.i281, label %g_strncmp.exit.thread.i, label %.lr.ph284

bb.ad:                                            ; preds = %bb.ae
  %i.bx = add i64 %.in, -1                        ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i.i283, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.07.i.i282, i64 2
  %.not.i26.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i26.i, label %g_strncmp.exit.thread.i, label %.lr.ph284, !llvm.loop !55

.lr.ph284:                                        ; preds = %.preheader.i104, %bb.ad
  %.in = phi i64 [ %i.bx, %bb.ad ], [ %i.bw, %.preheader.i104 ]
  %.06.i.i283 = phi ptr [ %i.by, %bb.ad ], [ @.str.1, %.preheader.i104 ] ; 2 uses
  %.07.i.i282 = phi ptr [ %i.bz, %bb.ad ], [ %.ptr354, %.preheader.i104 ] ; 2 uses
  %i.ca = load i16, ptr %.07.i.i282, align 2, !tbaa !27 ; 2 uses
  %i.cb = load i8, ptr %.06.i.i283, align 1, !tbaa !25
  %i.cc = zext i8 %i.cb to i16
  %.not10.i.i = icmp eq i16 %i.ca, %i.cc
  br i1 %.not10.i.i, label %bb.ae, label %g_strncmp.exit.i

bb.ae:                                            ; preds = %.lr.ph284
  %i.cd = icmp eq i16 %i.ca, 0
  br i1 %i.cd, label %.g_strncmp.exit.thread.i_crit_edge, label %bb.ad, !llvm.loop !55

.g_strncmp.exit.thread.i_crit_edge:               ; preds = %bb.ae
  br label %g_strncmp.exit.thread.i, !llvm.loop !55

g_strncmp.exit.thread.i:                          ; preds = %bb.ad, %.g_strncmp.exit.thread.i_crit_edge, %.preheader.i104
  %i.ce = icmp eq i64 %gepdiff, 10
  br i1 %i.ce, label %.fold.split, label %g_strncmp.exit.i

g_strncmp.exit.i:                                 ; preds = %.lr.ph284, %g_strncmp.exit.thread.i
  %.not.i26.1.i286 = icmp samesign eq i64 %.04.i.i.idx, 2
  br i1 %.not.i26.1.i286, label %g_strncmp.exit.thread.1.i, label %.lr.ph289

bb.af:                                            ; preds = %bb.ag
  %i.cf = add i64 %.in355, -1                     ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.06.i.1.i288, i64 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.07.i.1.i287, i64 2
  %.not.i26.1.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i26.1.i, label %g_strncmp.exit.thread.1.i, label %.lr.ph289, !llvm.loop !55

.lr.ph289:                                        ; preds = %g_strncmp.exit.i, %bb.af
  %.in355 = phi i64 [ %i.cf, %bb.af ], [ %i.bw, %g_strncmp.exit.i ]
  %.06.i.1.i288 = phi ptr [ %i.cg, %bb.af ], [ @.str.2, %g_strncmp.exit.i ] ; 2 uses
  %.07.i.1.i287 = phi ptr [ %i.ch, %bb.af ], [ %.ptr354, %g_strncmp.exit.i ] ; 2 uses
  %i.ci = load i16, ptr %.07.i.1.i287, align 2, !tbaa !27 ; 2 uses
  %i.cj = load i8, ptr %.06.i.1.i288, align 1, !tbaa !25
  %i.ck = zext i8 %i.cj to i16
  %.not10.i.1.i = icmp eq i16 %i.ci, %i.ck
  br i1 %.not10.i.1.i, label %bb.ag, label %g_strncmp.exit.1.i

bb.ag:                                            ; preds = %.lr.ph289
  %i.cl = icmp eq i16 %i.ci, 0
  br i1 %i.cl, label %.g_strncmp.exit.thread.1.i_crit_edge, label %bb.af, !llvm.loop !55

.g_strncmp.exit.thread.1.i_crit_edge:             ; preds = %bb.ag
  br label %g_strncmp.exit.thread.1.i, !llvm.loop !55

g_strncmp.exit.thread.1.i:                        ; preds = %bb.af, %.g_strncmp.exit.thread.1.i_crit_edge, %g_strncmp.exit.i
  switch i64 %gepdiff, label %.lr.ph294.preheader [
    i64 10, label %.fold.split
    i64 0, label %.loopexit
  ]

g_strncmp.exit.1.i:                               ; preds = %.lr.ph289
  %cond = icmp eq i64 %gepdiff, 0
  br i1 %cond, label %.loopexit, label %.lr.ph294.preheader

.lr.ph294.preheader:                              ; preds = %g_strncmp.exit.thread.1.i, %g_strncmp.exit.1.i
  br label %.lr.ph294

bb.ah:                                            ; preds = %bb.ai
  %i.cm = add i64 %.in356, -1                     ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i.2.i293, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %.07.i.2.i292, i64 2
  %.not.i26.2.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i26.2.i, label %g_strncmp.exit.thread.2.i, label %.lr.ph294, !llvm.loop !55

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %bb.ah
  %.in356 = phi i64 [ %i.cm, %bb.ah ], [ %i.bw, %.lr.ph294.preheader ]
  %.06.i.2.i293 = phi ptr [ %i.cn, %bb.ah ], [ @.str.3, %.lr.ph294.preheader ] ; 2 uses
  %.07.i.2.i292 = phi ptr [ %i.co, %bb.ah ], [ %.ptr354, %.lr.ph294.preheader ] ; 2 uses
  %i.cp = load i16, ptr %.07.i.2.i292, align 2, !tbaa !27 ; 2 uses
  %i.cq = load i8, ptr %.06.i.2.i293, align 1, !tbaa !25
  %i.cr = zext i8 %i.cq to i16
  %.not10.i.2.i = icmp eq i16 %i.cp, %i.cr
  br i1 %.not10.i.2.i, label %bb.ai, label %g_strncmp.exit.2.i

bb.ai:                                            ; preds = %.lr.ph294
  %i.cs = icmp eq i16 %i.cp, 0
  br i1 %i.cs, label %.g_strncmp.exit.thread.2.i_crit_edge, label %bb.ah, !llvm.loop !55

.g_strncmp.exit.thread.2.i_crit_edge:             ; preds = %bb.ai
  br label %g_strncmp.exit.thread.2.i, !llvm.loop !55

g_strncmp.exit.thread.2.i:                        ; preds = %bb.ah, %.g_strncmp.exit.thread.2.i_crit_edge
  switch i64 %gepdiff, label %.lr.ph299.preheader [
    i64 10, label %.fold.split
    i64 0, label %.loopexit
  ]

g_strncmp.exit.2.i:                               ; preds = %.lr.ph294
  %cond375 = icmp eq i64 %gepdiff, 0
  br i1 %cond375, label %.loopexit, label %.lr.ph299.preheader

.lr.ph299.preheader:                              ; preds = %g_strncmp.exit.thread.2.i, %g_strncmp.exit.2.i
  br label %.lr.ph299

bb.aj:                                            ; preds = %bb.ak
  %i.ct = add i64 %.in357, -1                     ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.06.i.3.i298, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.07.i.3.i297, i64 2
  %.not.i26.3.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i26.3.i, label %g_strncmp.exit.thread.3.i, label %.lr.ph299, !llvm.loop !55

.lr.ph299:                                        ; preds = %.lr.ph299.preheader, %bb.aj
  %.in357 = phi i64 [ %i.ct, %bb.aj ], [ %i.bw, %.lr.ph299.preheader ]
  %.06.i.3.i298 = phi ptr [ %i.cu, %bb.aj ], [ @.str.4, %.lr.ph299.preheader ] ; 2 uses
  %.07.i.3.i297 = phi ptr [ %i.cv, %bb.aj ], [ %.ptr354, %.lr.ph299.preheader ] ; 2 uses
  %i.cw = load i16, ptr %.07.i.3.i297, align 2, !tbaa !27 ; 2 uses
  %i.cx = load i8, ptr %.06.i.3.i298, align 1, !tbaa !25
  %i.cy = zext i8 %i.cx to i16
  %.not10.i.3.i = icmp eq i16 %i.cw, %i.cy
  br i1 %.not10.i.3.i, label %bb.ak, label %g_strncmp.exit.3.i

bb.ak:                                            ; preds = %.lr.ph299
  %i.cz = icmp eq i16 %i.cw, 0
  br i1 %i.cz, label %.g_strncmp.exit.thread.3.i_crit_edge, label %bb.aj, !llvm.loop !55

.g_strncmp.exit.thread.3.i_crit_edge:             ; preds = %bb.ak
  br label %g_strncmp.exit.thread.3.i, !llvm.loop !55

g_strncmp.exit.thread.3.i:                        ; preds = %bb.aj, %.g_strncmp.exit.thread.3.i_crit_edge
  switch i64 %gepdiff, label %.lr.ph304.preheader [
    i64 10, label %.fold.split
    i64 0, label %.loopexit
  ]

g_strncmp.exit.3.i:                               ; preds = %.lr.ph299
  %cond376 = icmp eq i64 %gepdiff, 0
  br i1 %cond376, label %.loopexit, label %.lr.ph304.preheader

.lr.ph304.preheader:                              ; preds = %g_strncmp.exit.thread.3.i, %g_strncmp.exit.3.i
  br label %.lr.ph304

bb.al:                                            ; preds = %bb.am
  %i.da = add i64 %.in358, -1                     ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.06.i.4.i303, i64 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.07.i.4.i302, i64 2
  %.not.i26.4.i = icmp eq i64 %i.da, 0
  br i1 %.not.i26.4.i, label %g_strncmp.exit.thread.4.i, label %.lr.ph304, !llvm.loop !55

.lr.ph304:                                        ; preds = %.lr.ph304.preheader, %bb.al
  %.in358 = phi i64 [ %i.da, %bb.al ], [ %i.bw, %.lr.ph304.preheader ]
  %.06.i.4.i303 = phi ptr [ %i.db, %bb.al ], [ @.str.5, %.lr.ph304.preheader ] ; 2 uses
  %.07.i.4.i302 = phi ptr [ %i.dc, %bb.al ], [ %.ptr354, %.lr.ph304.preheader ] ; 2 uses
  %i.dd = load i16, ptr %.07.i.4.i302, align 2, !tbaa !27 ; 2 uses
  %i.de = load i8, ptr %.06.i.4.i303, align 1, !tbaa !25
  %i.df = zext i8 %i.de to i16
  %.not10.i.4.i = icmp eq i16 %i.dd, %i.df
  br i1 %.not10.i.4.i, label %bb.am, label %g_strncmp.exit.4.i

bb.am:                                            ; preds = %.lr.ph304
  %i.dg = icmp eq i16 %i.dd, 0
  br i1 %i.dg, label %.g_strncmp.exit.thread.4.i_crit_edge, label %bb.al, !llvm.loop !55

.g_strncmp.exit.thread.4.i_crit_edge:             ; preds = %bb.am
  br label %g_strncmp.exit.thread.4.i, !llvm.loop !55

g_strncmp.exit.thread.4.i:                        ; preds = %bb.al, %.g_strncmp.exit.thread.4.i_crit_edge
  switch i64 %gepdiff, label %.lr.ph309.preheader [
    i64 10, label %.fold.split
    i64 0, label %.loopexit
  ]

g_strncmp.exit.4.i:                               ; preds = %.lr.ph304
  %cond377 = icmp eq i64 %gepdiff, 0
  br i1 %cond377, label %.loopexit, label %.lr.ph309.preheader

.lr.ph309.preheader:                              ; preds = %g_strncmp.exit.thread.4.i, %g_strncmp.exit.4.i
  br label %.lr.ph309

bb.an:                                            ; preds = %bb.ao
  %i.dh = add i64 %.in359, -1                     ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.06.i.5.i308, i64 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.07.i.5.i307, i64 2
  %.not.i26.5.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i26.5.i, label %g_strncmp.exit.thread.5.i, label %.lr.ph309, !llvm.loop !55

.lr.ph309:                                        ; preds = %.lr.ph309.preheader, %bb.an
  %.in359 = phi i64 [ %i.dh, %bb.an ], [ %i.bw, %.lr.ph309.preheader ]
  %.06.i.5.i308 = phi ptr [ %i.di, %bb.an ], [ @.str.6, %.lr.ph309.preheader ] ; 2 uses
  %.07.i.5.i307 = phi ptr [ %i.dj, %bb.an ], [ %.ptr354, %.lr.ph309.preheader ] ; 2 uses
  %i.dk = load i16, ptr %.07.i.5.i307, align 2, !tbaa !27 ; 2 uses
  %i.dl = load i8, ptr %.06.i.5.i308, align 1, !tbaa !25
  %i.dm = zext i8 %i.dl to i16
  %.not10.i.5.i = icmp eq i16 %i.dk, %i.dm
  br i1 %.not10.i.5.i, label %bb.ao, label %g_strncmp.exit.5.i

bb.ao:                                            ; preds = %.lr.ph309
  %i.dn = icmp eq i16 %i.dk, 0
  br i1 %i.dn, label %.g_strncmp.exit.thread.5.i_crit_edge, label %bb.an, !llvm.loop !55

.g_strncmp.exit.thread.5.i_crit_edge:             ; preds = %bb.ao
  br label %g_strncmp.exit.thread.5.i, !llvm.loop !55

g_strncmp.exit.thread.5.i:                        ; preds = %bb.an, %.g_strncmp.exit.thread.5.i_crit_edge
  switch i64 %gepdiff, label %.lr.ph314.preheader [
    i64 10, label %.fold.split
    i64 0, label %.loopexit
  ]

g_strncmp.exit.5.i:                               ; preds = %.lr.ph309
  %cond378 = icmp eq i64 %gepdiff, 0
  br i1 %cond378, label %.loopexit, label %.lr.ph314.preheader

.lr.ph314.preheader:                              ; preds = %g_strncmp.exit.thread.5.i, %g_strncmp.exit.5.i
  br label %.lr.ph314

bb.ap:                                            ; preds = %bb.aq
  %i.do = add i64 %.in360, -1                     ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.06.i.6.i313, i64 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.07.i.6.i312, i64 2
  %.not.i26.6.i = icmp eq i64 %i.do, 0
  br i1 %.not.i26.6.i, label %g_strncmp.exit.thread.6.i, label %.lr.ph314, !llvm.loop !55

.lr.ph314:                                        ; preds = %.lr.ph314.preheader, %bb.ap
  %.in360 = phi i64 [ %i.do, %bb.ap ], [ %i.bw, %.lr.ph314.preheader ]
  %.06.i.6.i313 = phi ptr [ %i.dp, %bb.ap ], [ @.str.7, %.lr.ph314.preheader ] ; 2 uses
  %.07.i.6.i312 = phi ptr [ %i.dq, %bb.ap ], [ %.ptr354, %.lr.ph314.preheader ] ; 2 uses
  %i.dr = load i16, ptr %.07.i.6.i312, align 2, !tbaa !27 ; 2 uses
  %i.ds = load i8, ptr %.06.i.6.i313, align 1, !tbaa !25
  %i.dt = zext i8 %i.ds to i16
  %.not10.i.6.i = icmp eq i16 %i.dr, %i.dt
  br i1 %.not10.i.6.i, label %bb.aq, label %g_strncmp.exit.6.i

bb.aq:                                            ; preds = %.lr.ph314
  %i.du = icmp eq i16 %i.dr, 0
  br i1 %i.du, label %.g_strncmp.exit.thread.6.i_crit_edge, label %bb.ap, !llvm.loop !55

.g_strncmp.exit.thread.6.i_crit_edge:             ; preds = %bb.aq
  br label %g_strncmp.exit.thread.6.i, !llvm.loop !55

g_strncmp.exit.thread.6.i:                        ; preds = %bb.ap, %.g_strncmp.exit.thread.6.i_crit_edge
  switch i64 %gepdiff, label %.lr.ph319.preheader [
    i64 10, label %.fold.split
    i64 0, label %.loopexit
  ]

g_strncmp.exit.6.i:                               ; preds = %.lr.ph314
  %cond379 = icmp eq i64 %gepdiff, 0
  br i1 %cond379, label %.loopexit, label %.lr.ph319.preheader

.lr.ph319.preheader:                              ; preds = %g_strncmp.exit.thread.6.i, %g_strncmp.exit.6.i
  br label %.lr.ph319

bb.ar:                                            ; preds = %bb.as
  %i.dv = add i64 %.in361, -1                     ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.06.i.7.i318, i64 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.07.i.7.i317, i64 2
  %.not.i26.7.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i26.7.i, label %g_strncmp.exit.thread.7.i, label %.lr.ph319, !llvm.loop !55

.lr.ph319:                                        ; preds = %.lr.ph319.preheader, %bb.ar
  %.in361 = phi i64 [ %i.dv, %bb.ar ], [ %i.bw, %.lr.ph319.preheader ]
  %.06.i.7.i318 = phi ptr [ %i.dw, %bb.ar ], [ @.str.8, %.lr.ph319.preheader ] ; 2 uses
  %.07.i.7.i317 = phi ptr [ %i.dx, %bb.ar ], [ %.ptr354, %.lr.ph319.preheader ] ; 2 uses
  %i.dy = load i16, ptr %.07.i.7.i317, align 2, !tbaa !27 ; 2 uses
  %i.dz = load i8, ptr %.06.i.7.i318, align 1, !tbaa !25
  %i.ea = zext i8 %i.dz to i16
  %.not10.i.7.i = icmp eq i16 %i.dy, %i.ea
  br i1 %.not10.i.7.i, label %bb.as, label %g_strncmp.exit.7.i

bb.as:                                            ; preds = %.lr.ph319
  %i.eb = icmp eq i16 %i.dy, 0
  br i1 %i.eb, label %.g_strncmp.exit.thread.7.i_crit_edge, label %bb.ar, !llvm.loop !55

.g_strncmp.exit.thread.7.i_crit_edge:             ; preds = %bb.as
  br label %g_strncmp.exit.thread.7.i, !llvm.loop !55

g_strncmp.exit.thread.7.i:                        ; preds = %bb.ar, %.g_strncmp.exit.thread.7.i_crit_edge
  switch i64 %gepdiff, label %.lr.ph324.preheader [
    i64 10, label %.fold.split
    i64 0, label %.loopexit
  ]

g_strncmp.exit.7.i:                               ; preds = %.lr.ph319
  %cond380 = icmp eq i64 %gepdiff, 0
  br i1 %cond380, label %.loopexit, label %.lr.ph324.preheader

.lr.ph324.preheader:                              ; preds = %g_strncmp.exit.thread.7.i, %g_strncmp.exit.7.i
  br label %.lr.ph324

bb.at:                                            ; preds = %bb.au
  %i.ec = add i64 %.in362, -1                     ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.06.i.8.i323, i64 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.07.i.8.i322, i64 2
  %.not.i26.8.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i26.8.i, label %g_strncmp.exit.thread.8.i, label %.lr.ph324, !llvm.loop !55

.lr.ph324:                                        ; preds = %.lr.ph324.preheader, %bb.at
  %.in362 = phi i64 [ %i.ec, %bb.at ], [ %i.bw, %.lr.ph324.preheader ]
  %.06.i.8.i323 = phi ptr [ %i.ed, %bb.at ], [ @.str.9, %.lr.ph324.preheader ] ; 2 uses
  %.07.i.8.i322 = phi ptr [ %i.ee, %bb.at ], [ %.ptr354, %.lr.ph324.preheader ] ; 2 uses
  %i.ef = load i16, ptr %.07.i.8.i322, align 2, !tbaa !27 ; 2 uses
  %i.eg = load i8, ptr %.06.i.8.i323, align 1, !tbaa !25
  %i.eh = zext i8 %i.eg to i16
  %.not10.i.8.i = icmp eq i16 %i.ef, %i.eh
  br i1 %.not10.i.8.i, label %bb.au, label %g_strncmp.exit.8.i

bb.au:                                            ; preds = %.lr.ph324
  %i.ei = icmp eq i16 %i.ef, 0
  br i1 %i.ei, label %.g_strncmp.exit.thread.8.i_crit_edge, label %bb.at, !llvm.loop !55

.g_strncmp.exit.thread.8.i_crit_edge:             ; preds = %bb.au
  br label %g_strncmp.exit.thread.8.i, !llvm.loop !55

g_strncmp.exit.thread.8.i:                        ; preds = %bb.at, %.g_strncmp.exit.thread.8.i_crit_edge
  switch i64 %gepdiff, label %.lr.ph329.preheader [
    i64 10, label %.fold.split
    i64 0, label %.loopexit
  ]

g_strncmp.exit.8.i:                               ; preds = %.lr.ph324
  %cond381 = icmp eq i64 %gepdiff, 0
  br i1 %cond381, label %.loopexit, label %.lr.ph329.preheader

.lr.ph329.preheader:                              ; preds = %g_strncmp.exit.thread.8.i, %g_strncmp.exit.8.i
  br label %.lr.ph329

bb.av:                                            ; preds = %bb.aw
  %i.ej = add i64 %.in363, -1                     ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.06.i.9.i328, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %.07.i.9.i327, i64 2
  %.not.i26.9.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i26.9.i, label %g_strncmp.exit.thread.9.i, label %.lr.ph329, !llvm.loop !55

.lr.ph329:                                        ; preds = %.lr.ph329.preheader, %bb.av
  %.in363 = phi i64 [ %i.ej, %bb.av ], [ %i.bw, %.lr.ph329.preheader ]
  %.06.i.9.i328 = phi ptr [ %i.ek, %bb.av ], [ @.str.10, %.lr.ph329.preheader ] ; 2 uses
  %.07.i.9.i327 = phi ptr [ %i.el, %bb.av ], [ %.ptr354, %.lr.ph329.preheader ] ; 2 uses
  %i.em = load i16, ptr %.07.i.9.i327, align 2, !tbaa !27 ; 2 uses
  %i.en = load i8, ptr %.06.i.9.i328, align 1, !tbaa !25
  %i.eo = zext i8 %i.en to i16
  %.not10.i.9.i = icmp eq i16 %i.em, %i.eo
  br i1 %.not10.i.9.i, label %bb.aw, label %g_strncmp.exit.9.i

bb.aw:                                            ; preds = %.lr.ph329
  %i.ep = icmp eq i16 %i.em, 0
  br i1 %i.ep, label %.g_strncmp.exit.thread.9.i_crit_edge, label %bb.av, !llvm.loop !55

.g_strncmp.exit.thread.9.i_crit_edge:             ; preds = %bb.aw
  br label %g_strncmp.exit.thread.9.i, !llvm.loop !55

g_strncmp.exit.thread.9.i:                        ; preds = %bb.av, %.g_strncmp.exit.thread.9.i_crit_edge
  switch i64 %gepdiff, label %.lr.ph334.preheader [
    i64 10, label %.fold.split
    i64 0, label %.loopexit
  ]

g_strncmp.exit.9.i:                               ; preds = %.lr.ph329
  %cond382 = icmp eq i64 %gepdiff, 0
  br i1 %cond382, label %.loopexit, label %.lr.ph334.preheader

.lr.ph334.preheader:                              ; preds = %g_strncmp.exit.thread.9.i, %g_strncmp.exit.9.i
  br label %.lr.ph334

bb.ax:                                            ; preds = %bb.ay
  %i.eq = add i64 %.in364, -1                     ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.06.i.10.i333, i64 1
  %i.es = getelementptr inbounds nuw i8, ptr %.07.i.10.i332, i64 2
  %.not.i26.10.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i26.10.i, label %g_strncmp.exit.thread.10.i, label %.lr.ph334, !llvm.loop !55

.lr.ph334:                                        ; preds = %.lr.ph334.preheader, %bb.ax
  %.in364 = phi i64 [ %i.eq, %bb.ax ], [ %i.bw, %.lr.ph334.preheader ]
  %.06.i.10.i333 = phi ptr [ %i.er, %bb.ax ], [ @.str.11, %.lr.ph334.preheader ] ; 2 uses
  %.07.i.10.i332 = phi ptr [ %i.es, %bb.ax ], [ %.ptr354, %.lr.ph334.preheader ] ; 2 uses
  %i.et = load i16, ptr %.07.i.10.i332, align 2, !tbaa !27 ; 2 uses
  %i.eu = load i8, ptr %.06.i.10.i333, align 1, !tbaa !25
  %i.ev = zext i8 %i.eu to i16
  %.not10.i.10.i = icmp eq i16 %i.et, %i.ev
  br i1 %.not10.i.10.i, label %bb.ay, label %g_strncmp.exit.10.i

bb.ay:                                            ; preds = %.lr.ph334
  %i.ew = icmp eq i16 %i.et, 0
  br i1 %i.ew, label %.g_strncmp.exit.thread.10.i_crit_edge, label %bb.ax, !llvm.loop !55

.g_strncmp.exit.thread.10.i_crit_edge:            ; preds = %bb.ay
  br label %g_strncmp.exit.thread.10.i, !llvm.loop !55

g_strncmp.exit.thread.10.i:                       ; preds = %bb.ax, %.g_strncmp.exit.thread.10.i_crit_edge
  switch i64 %gepdiff, label %.lr.ph339.preheader [
    i64 10, label %.fold.split
    i64 0, label %.loopexit
  ]

g_strncmp.exit.10.i:                              ; preds = %.lr.ph334
  %cond383 = icmp eq i64 %gepdiff, 0
  br i1 %cond383, label %.loopexit, label %.lr.ph339.preheader

.lr.ph339.preheader:                              ; preds = %g_strncmp.exit.thread.10.i, %g_strncmp.exit.10.i
  br label %.lr.ph339

bb.az:                                            ; preds = %bb.ba
  %i.ex = add i64 %.in365, -1                     ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.06.i.11.i338, i64 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.07.i.11.i337, i64 2
  %.not.i26.11.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i26.11.i, label %g_strncmp.exit.thread.11.i, label %.lr.ph339, !llvm.loop !55

.lr.ph339:                                        ; preds = %.lr.ph339.preheader, %bb.az
  %.in365 = phi i64 [ %i.ex, %bb.az ], [ %i.bw, %.lr.ph339.preheader ]
  %.06.i.11.i338 = phi ptr [ %i.ey, %bb.az ], [ @.str.12, %.lr.ph339.preheader ] ; 2 uses
  %.07.i.11.i337 = phi ptr [ %i.ez, %bb.az ], [ %.ptr354, %.lr.ph339.preheader ] ; 2 uses
  %i.fa = load i16, ptr %.07.i.11.i337, align 2, !tbaa !27 ; 2 uses
  %i.fb = load i8, ptr %.06.i.11.i338, align 1, !tbaa !25
  %i.fc = zext i8 %i.fb to i16
  %.not10.i.11.i = icmp eq i16 %i.fa, %i.fc
  br i1 %.not10.i.11.i, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %.lr.ph339
  %i.fd = icmp eq i16 %i.fa, 0
  br i1 %i.fd, label %.g_strncmp.exit.thread.11.i_crit_edge, label %bb.az, !llvm.loop !55

.g_strncmp.exit.thread.11.i_crit_edge:            ; preds = %bb.ba
  br label %g_strncmp.exit.thread.11.i, !llvm.loop !55

g_strncmp.exit.thread.11.i:                       ; preds = %bb.az, %.g_strncmp.exit.thread.11.i_crit_edge
  %i.fe = icmp eq i64 %gepdiff, 12
  br i1 %i.fe, label %.fold.split, label %.loopexit

.fold.split:                                      ; preds = %g_strncmp.exit.thread.11.i, %g_strncmp.exit.thread.10.i, %g_strncmp.exit.thread.9.i, %g_strncmp.exit.thread.8.i, %g_strncmp.exit.thread.7.i, %g_strncmp.exit.thread.6.i, %g_strncmp.exit.thread.5.i, %g_strncmp.exit.thread.4.i, %g_strncmp.exit.thread.3.i, %g_strncmp.exit.thread.2.i, %g_strncmp.exit.thread.1.i, %g_strncmp.exit.thread.i
  %.033.lcssa.i = phi ptr [ @cclasses, %g_strncmp.exit.thread.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 16), %g_strncmp.exit.thread.1.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 144), %g_strncmp.exit.thread.9.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 160), %g_strncmp.exit.thread.10.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 32), %g_strncmp.exit.thread.2.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 48), %g_strncmp.exit.thread.3.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 64), %g_strncmp.exit.thread.4.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 80), %g_strncmp.exit.thread.5.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 96), %g_strncmp.exit.thread.6.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 112), %g_strncmp.exit.thread.7.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 128), %g_strncmp.exit.thread.8.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 176), %g_strncmp.exit.thread.11.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.3131, i64 2
  store i16 -32710, ptr %.3131, align 2, !tbaa !27
  %i.fg = ptrtoint ptr %.033.lcssa.i to i64
  %i.fh = sub i64 %i.fg, ptrtoint (ptr @cclasses to i64)
  %i.fi = lshr exact i64 %i.fh, 4
  %i.fj = trunc i64 %i.fi to i16
  %i.fk = getelementptr inbounds nuw i8, ptr %.3131, i64 4 ; 4 uses
  store i16 %i.fj, ptr %i.ff, align 2, !tbaa !27
  %i.fl = getelementptr i8, ptr %.3135, i64 %gepdiff ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 6
  %i.fn = getelementptr i8, ptr %i.fl, i64 8      ; 5 uses
  %i.fo = load i16, ptr %i.fm, align 2, !tbaa !27 ; 2 uses
  switch i16 %i.fo, label %.critedge.thread163 [
    i16 91, label %bb.bb
    i16 93, label %.loopexit172
  ]

bb.bb:                                            ; preds = %.fold.split
  %i.fp = load i16, ptr %i.fn, align 2, !tbaa !27
  %i.fq = icmp eq i16 %i.fp, 58
  br i1 %i.fq, label %.preheader169, label %.critedge.thread163, !llvm.loop !56

.loopexit:                                        ; preds = %g_strncmp.exit.10.i, %g_strncmp.exit.9.i, %g_strncmp.exit.8.i, %g_strncmp.exit.7.i, %g_strncmp.exit.6.i, %g_strncmp.exit.5.i, %g_strncmp.exit.4.i, %g_strncmp.exit.3.i, %g_strncmp.exit.2.i, %g_strncmp.exit.1.i, %g_strncmp.exit.thread.11.i, %g_strncmp.exit.thread.10.i, %g_strncmp.exit.thread.9.i, %g_strncmp.exit.thread.8.i, %g_strncmp.exit.thread.7.i, %g_strncmp.exit.thread.6.i, %g_strncmp.exit.thread.5.i, %g_strncmp.exit.thread.4.i, %g_strncmp.exit.thread.3.i, %g_strncmp.exit.thread.2.i, %g_strncmp.exit.thread.1.i, %.lr.ph339
  %i.fr = load i32, ptr %i.ay, align 8, !tbaa !22
  %i.fs = and i32 %i.fr, 16
  %.not97 = icmp eq i32 %i.fs, 0
  br i1 %.not97, label %.critedge101, label %.critedge.thread163

.critedge.thread163:                              ; preds = %.fold.split, %g_strchr.exit.i, %bb.bb, %bb.ac, %.loopexit, %bb.aa, %bb.z
  %.5137 = phi ptr [ %.3135, %.loopexit ], [ %.2134, %bb.aa ], [ %.2134, %bb.z ], [ %.3135, %bb.ac ], [ %.3135, %g_strchr.exit.i ], [ %i.fn, %bb.bb ], [ %i.fn, %.fold.split ] ; 5 uses
  %.4 = phi ptr [ %.3131, %.loopexit ], [ %.2130, %bb.aa ], [ %.2130, %bb.z ], [ %.3131, %bb.ac ], [ %.3131, %g_strchr.exit.i ], [ %i.fk, %bb.bb ], [ %i.fk, %.fold.split ] ; 4 uses
  %.3.shrunk = phi i16 [ 91, %.loopexit ], [ 91, %bb.aa ], [ %.073.in, %bb.z ], [ 91, %bb.ac ], [ 91, %g_strchr.exit.i ], [ 91, %bb.bb ], [ %i.fo, %.fold.split ]
  %i.ft = and i16 %.3.shrunk, 255
  %i.fu = getelementptr inbounds nuw i8, ptr %.4, i64 2 ; 3 uses
  store i16 %i.ft, ptr %.4, align 2, !tbaa !27
  %i.fv = load i16, ptr %.5137, align 2, !tbaa !27 ; 2 uses
  %i.fw = icmp eq i16 %i.fv, 45
  br i1 %i.fw, label %bb.bc, label %thread-pre-split

bb.bc:                                            ; preds = %.critedge.thread163
  %i.fx = getelementptr inbounds nuw i8, ptr %.5137, i64 2
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !27 ; 2 uses
  %.not98 = icmp eq i16 %i.fy, 93
  br i1 %.not98, label %thread-pre-split, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fz = getelementptr inbounds nuw i8, ptr %.4, i64 4
  store i16 -32723, ptr %i.fu, align 2, !tbaa !27
  %i.ga = and i16 %i.fy, 255
  %i.gb = getelementptr inbounds nuw i8, ptr %.4, i64 6
  store i16 %i.ga, ptr %i.fz, align 2, !tbaa !27
  %i.gc = getelementptr inbounds nuw i8, ptr %.5137, i64 4 ; 2 uses
  %.pr165.pre = load i16, ptr %i.gc, align 2, !tbaa !27
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bc, %bb.bd, %.critedge.thread163
  %i.gd = phi i16 [ %i.fv, %.critedge.thread163 ], [ %.pr165.pre, %bb.bd ], [ 45, %bb.bc ] ; 2 uses
  %.6138 = phi ptr [ %.5137, %.critedge.thread163 ], [ %i.gc, %bb.bd ], [ %.5137, %bb.bc ]
  %.5 = phi ptr [ %i.fu, %.critedge.thread163 ], [ %i.gb, %bb.bd ], [ %i.fu, %bb.bc ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.6138, i64 2 ; 2 uses
  %.not99 = icmp eq i16 %i.gd, 93
  br i1 %.not99, label %.loopexit172, label %bb.z, !llvm.loop !57

.loopexit172:                                     ; preds = %thread-pre-split, %.fold.split
  %.7139 = phi ptr [ %i.fn, %.fold.split ], [ %i.ge, %thread-pre-split ]
  %.6 = phi ptr [ %i.fk, %.fold.split ], [ %.5, %thread-pre-split ] ; 2 uses
  %i.gf = load i32, ptr %i.ay, align 8, !tbaa !22
  %i.gg = or i32 %i.gf, 256
  store i32 %i.gg, ptr %i.ay, align 8, !tbaa !22
  store i16 -32675, ptr %.6, align 2, !tbaa !27
  br label %.outer.backedge

bb.be:                                            ; preds = %bb.q
  %i.gh = load i32, ptr %i.ay, align 8, !tbaa !22
  %i.gi = or i32 %i.gh, 256
  store i32 %i.gi, ptr %i.ay, align 8, !tbaa !22
  store i16 -32705, ptr %.0128.ph, align 2, !tbaa !27
  br label %.outer.backedge

bb.bf:                                            ; preds = %bb.q
  %i.gj = load i32, ptr %i.ay, align 8, !tbaa !22
  %i.gk = or i32 %i.gj, 256
  store i32 %i.gk, ptr %i.ay, align 8, !tbaa !22
  br i1 %i.az, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gl = load i16, ptr %i.ba, align 2, !tbaa !27
  %.not95 = icmp eq i16 %i.gl, -32726
  br i1 %.not95, label %bb.q, label %bb.bh, !llvm.loop !58

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  store i16 -32726, ptr %.0128.ph, align 2, !tbaa !27
  br label %.outer.backedge

bb.bi:                                            ; preds = %bb.q
  %i.gm = and i16 %i.bc, 255
  store i16 %i.gm, ptr %.0128.ph, align 2, !tbaa !27
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.bi, %g_strchr.exit.thread, %.loopexit172, %bb.be, %bb.bh
  %.0132.ph.be = phi ptr [ %i.bb, %bb.bh ], [ %i.bb, %bb.be ], [ %.7139, %.loopexit172 ], [ %spec.select.idx.sroa.sel.idx.sroa.sel, %g_strchr.exit.thread ], [ %i.bb, %bb.bi ]
  %.0128.ph.pn = phi ptr [ %.0128.ph, %bb.bh ], [ %.0128.ph, %bb.be ], [ %.6, %.loopexit172 ], [ %.0128.ph, %g_strchr.exit.thread ], [ %.0128.ph, %bb.bi ]
  %.0128.ph.be = getelementptr inbounds nuw i8, ptr %.0128.ph.pn, i64 2
  br label %.outer, !llvm.loop !58

bb.bj:                                            ; preds = %bb.q
  store i16 0, ptr %.0128.ph, align 2, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.gn = load i16, ptr %i.d, align 16, !tbaa !27
  %i.go = icmp eq i16 %i.gn, 0
  br i1 %i.go, label %.thread, label %glob1.exit

.thread:                                          ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bl

glob1.exit:                                       ; preds = %bb.bj
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 8190
  %i.gq = call fastcc i32 @glob2(ptr noundef %i.a, ptr noundef %i.a, ptr noundef %i.gp, ptr noundef nonnull readonly %i.d, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not88 = icmp eq i32 %i.gq, 0
  br i1 %.not88, label %bb.bk, label %.critedge101

bb.bk:                                            ; preds = %glob1.exit
  %.pre = load i64, ptr %1, align 8, !tbaa !20    ; 8 uses
  %i.gr = icmp eq i64 %.pre, %i.ax
  br i1 %i.gr, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %.thread, %bb.bk
  %i.gs = load i32, ptr %i.ay, align 8, !tbaa !22 ; 2 uses
  %i.gt = and i32 %i.gs, 16
  %.not92 = icmp ne i32 %i.gt, 0
  %i.gu = and i32 %i.gs, 768
  %or.cond = icmp eq i32 %i.gu, 512
  %or.cond168 = or i1 %.not92, %or.cond
  br i1 %or.cond168, label %bb.bm, label %.critedge101

bb.bm:                                            ; preds = %bb.bl
  %i.gv = call fastcc i32 @globextend(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null)
  br label %.critedge101

bb.bn:                                            ; preds = %bb.bk
  %i.gw = load i32, ptr %i.ay, align 8, !tbaa !22 ; 2 uses
  %i.gx = and i32 %i.gw, 32
  %.not89 = icmp eq i32 %i.gx, 0
  br i1 %.not89, label %bb.bo, label %.critedge101

bb.bo:                                            ; preds = %bb.bn
  %i.gy = and i32 %i.gw, 16384
  %.not90 = icmp eq i32 %i.gy, 0
  br i1 %.not90, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gz = sub i64 %.pre, %i.ax                    ; 9 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !21 ; 2 uses
  %i.hc = add i64 %i.hb, %i.ax                    ; 8 uses
  %i.hd = call noalias ptr @calloc(i64 noundef %i.gz, i64 noundef 16) #21 ; 15 uses
  %.not91 = icmp eq ptr %i.hd, null
  br i1 %.not91, label %.critedge101, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bp
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !32 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !33 ; 3 uses
  %.neg = add i64 %i.ax, 1
  %xtraiter = and i64 %i.gz, 1
  %i.hi = icmp eq i64 %.pre, %.neg
  br i1 %i.hi, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.gz, -2
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.lr.ph.new
  %.0189 = phi i64 [ 0, %.lr.ph.new ], [ %i.hy, %bb.bq ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bq ]
  %i.hj = add i64 %.0189, %i.hc                   ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hj
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !34
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %.0189 ; 2 uses
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !37
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hj
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !38
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !71
  %i.hq = or disjoint i64 %.0189, 1               ; 2 uses
  %i.hr = add i64 %i.hq, %i.hc                    ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hr
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !34
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hq ; 2 uses
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !37
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hr
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !38
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !71
  %i.hy = add nuw i64 %.0189, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph192.unr-lcssa, label %bb.bq, !llvm.loop !59

.lr.ph192.unr-lcssa:                              ; preds = %bb.bq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph192, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph192.unr-lcssa, %.lr.ph
  %.0189.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.hy, %.lr.ph192.unr-lcssa ] ; 2 uses
  %lcmp.mod417 = trunc i64 %i.gz to i1
  call void @llvm.assume(i1 %lcmp.mod417)
  %i.hz = add i64 %.0189.epil.init, %i.hc         ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !34
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %.0189.epil.init ; 2 uses
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !37
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hz
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !38
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !71
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.unr-lcssa, %.epil.preheader
  call void @qsort(ptr noundef nonnull %i.hd, i64 noundef %i.gz, i64 noundef 16, ptr noundef nonnull @compare_gps) #19
end_hunk_0
