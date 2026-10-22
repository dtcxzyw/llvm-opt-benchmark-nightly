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

bb.q:                                             ; preds = %.outer, %bb.bh
  %.0132 = phi ptr [ %i.bb, %bb.bh ], [ %.0132.ph, %.outer ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0132, i64 2 ; 6 uses
  %i.bc = load i16, ptr %.0132, align 2, !tbaa !27 ; 2 uses
  switch i16 %i.bc, label %bb.bj [
    i16 0, label %bb.bk
    i16 91, label %bb.r
    i16 63, label %bb.bf
    i16 42, label %bb.bg
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
  %.2134 = phi ptr [ %i.bi, %bb.y ], [ %i.go, %thread-pre-split ] ; 4 uses
  %.2130 = phi ptr [ %.1129, %bb.y ], [ %.5, %thread-pre-split ] ; 3 uses
  %.073.in = phi i16 [ %i.bo, %bb.y ], [ %i.gn, %thread-pre-split ] ; 2 uses
  %i.bp = icmp eq i16 %.073.in, 91
  br i1 %i.bp, label %bb.aa, label %.critedge.thread163

bb.aa:                                            ; preds = %bb.z
  %i.bq = load i16, ptr %.2134, align 2, !tbaa !27
  %i.br = icmp eq i16 %i.bq, 58
  br i1 %i.br, label %.preheader169, label %.critedge.thread163

.preheader169:                                    ; preds = %bb.aa, %bb.bc
  %.3135 = phi ptr [ %i.fx, %bb.bc ], [ %.2134, %bb.aa ] ; 7 uses
  %.3131 = phi ptr [ %i.fu, %bb.bc ], [ %.2130, %bb.aa ] ; 6 uses
  %.ptr357 = getelementptr inbounds nuw i8, ptr %.3135, i64 2 ; 12 uses
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
  %gepdiff = add nsw i64 %.04.i.i.idx, -2         ; 12 uses
  %i.bw = ashr exact i64 %gepdiff, 1              ; 24 uses
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
  %.07.i.i282 = phi ptr [ %i.bz, %bb.ad ], [ %.ptr357, %.preheader.i104 ] ; 2 uses
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
  %4 = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.bw
  %5 = load i8, ptr %4, align 1, !tbaa !25
  %i.ce = icmp eq i8 %5, 0
  br i1 %i.ce, label %bb.bb, label %g_strncmp.exit.i

g_strncmp.exit.i:                                 ; preds = %.lr.ph284, %g_strncmp.exit.thread.i
  %.not.i26.1.i286 = icmp samesign eq i64 %.04.i.i.idx, 2
  br i1 %.not.i26.1.i286, label %g_strncmp.exit.thread.1.i.a, label %.lr.ph289

bb.af:                                            ; preds = %bb.ag
  %i.cf = add i64 %.in358, -1                     ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.06.i.1.i288, i64 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.07.i.1.i287, i64 2
  %.not.i26.1.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i26.1.i, label %g_strncmp.exit.thread.1.i.a, label %.lr.ph289, !llvm.loop !55

.lr.ph289:                                        ; preds = %g_strncmp.exit.i, %bb.af
  %.in358 = phi i64 [ %i.cf, %bb.af ], [ %i.bw, %g_strncmp.exit.i ]
  %.06.i.1.i288 = phi ptr [ %i.cg, %bb.af ], [ @.str.2, %g_strncmp.exit.i ] ; 2 uses
  %.07.i.1.i287 = phi ptr [ %i.ch, %bb.af ], [ %.ptr357, %g_strncmp.exit.i ] ; 2 uses
  %i.ci = load i16, ptr %.07.i.1.i287, align 2, !tbaa !27 ; 2 uses
  %i.cj = load i8, ptr %.06.i.1.i288, align 1, !tbaa !25
  %i.ck = zext i8 %i.cj to i16
  %.not10.i.1.i = icmp eq i16 %i.ci, %i.ck
  br i1 %.not10.i.1.i, label %bb.ag, label %g_strncmp.exit.1.i

bb.ag:                                            ; preds = %.lr.ph289
  %i.cl = icmp eq i16 %i.ci, 0
  br i1 %i.cl, label %.g_strncmp.exit.thread.1.i_crit_edge, label %bb.af, !llvm.loop !55

.g_strncmp.exit.thread.1.i_crit_edge:             ; preds = %bb.ag
  br label %g_strncmp.exit.thread.1.i.a, !llvm.loop !55

g_strncmp.exit.thread.1.i.a:                      ; preds = %bb.af, %.g_strncmp.exit.thread.1.i_crit_edge, %g_strncmp.exit.i
  %6 = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.bw
  %7 = load i8, ptr %6, align 1, !tbaa !25
  %i.cm = icmp eq i8 %7, 0
  br i1 %i.cm, label %bb.bb, label %g_strncmp.exit.1.i

g_strncmp.exit.1.i:                               ; preds = %.lr.ph289, %g_strncmp.exit.thread.1.i.a
  %.not.i26.2.i291 = icmp eq i64 %gepdiff, 0
  br i1 %.not.i26.2.i291, label %g_strncmp.exit.thread.2.i.a, label %.lr.ph294

bb.ah:                                            ; preds = %bb.ai
  %i.cn = add i64 %.in359, -1                     ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.2.i293, i64 1
  %i.cp = getelementptr inbounds nuw i8, ptr %.07.i.2.i292, i64 2
  %.not.i26.2.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i26.2.i, label %g_strncmp.exit.thread.2.i.a, label %.lr.ph294, !llvm.loop !55

.lr.ph294:                                        ; preds = %g_strncmp.exit.1.i, %bb.ah
  %.in359 = phi i64 [ %i.cn, %bb.ah ], [ %i.bw, %g_strncmp.exit.1.i ]
  %.06.i.2.i293 = phi ptr [ %i.co, %bb.ah ], [ @.str.3, %g_strncmp.exit.1.i ] ; 2 uses
  %.07.i.2.i292 = phi ptr [ %i.cp, %bb.ah ], [ %.ptr357, %g_strncmp.exit.1.i ] ; 2 uses
  %i.cq = load i16, ptr %.07.i.2.i292, align 2, !tbaa !27 ; 2 uses
  %i.cr = load i8, ptr %.06.i.2.i293, align 1, !tbaa !25
  %i.cs = zext i8 %i.cr to i16
  %.not10.i.2.i = icmp eq i16 %i.cq, %i.cs
  br i1 %.not10.i.2.i, label %bb.ai, label %g_strncmp.exit.2.i

bb.ai:                                            ; preds = %.lr.ph294
  %i.ct = icmp eq i16 %i.cq, 0
  br i1 %i.ct, label %.g_strncmp.exit.thread.2.i_crit_edge, label %bb.ah, !llvm.loop !55

.g_strncmp.exit.thread.2.i_crit_edge:             ; preds = %bb.ai
  br label %g_strncmp.exit.thread.2.i.a, !llvm.loop !55

g_strncmp.exit.thread.2.i.a:                      ; preds = %bb.ah, %.g_strncmp.exit.thread.2.i_crit_edge, %g_strncmp.exit.1.i
  %8 = getelementptr inbounds nuw i8, ptr @.str.3, i64 %i.bw
  %9 = load i8, ptr %8, align 1, !tbaa !25
  %i.cu = icmp eq i8 %9, 0
  br i1 %i.cu, label %bb.bb, label %g_strncmp.exit.2.i

g_strncmp.exit.2.i:                               ; preds = %.lr.ph294, %g_strncmp.exit.thread.2.i.a
  %.not.i26.3.i296 = icmp eq i64 %gepdiff, 0
  br i1 %.not.i26.3.i296, label %g_strncmp.exit.thread.3.i.a, label %.lr.ph299

bb.aj:                                            ; preds = %bb.ak
  %i.cv = add i64 %.in360, -1                     ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.06.i.3.i298, i64 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.07.i.3.i297, i64 2
  %.not.i26.3.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i26.3.i, label %g_strncmp.exit.thread.3.i.a, label %.lr.ph299, !llvm.loop !55

.lr.ph299:                                        ; preds = %g_strncmp.exit.2.i, %bb.aj
  %.in360 = phi i64 [ %i.cv, %bb.aj ], [ %i.bw, %g_strncmp.exit.2.i ]
  %.06.i.3.i298 = phi ptr [ %i.cw, %bb.aj ], [ @.str.4, %g_strncmp.exit.2.i ] ; 2 uses
  %.07.i.3.i297 = phi ptr [ %i.cx, %bb.aj ], [ %.ptr357, %g_strncmp.exit.2.i ] ; 2 uses
  %i.cy = load i16, ptr %.07.i.3.i297, align 2, !tbaa !27 ; 2 uses
  %i.cz = load i8, ptr %.06.i.3.i298, align 1, !tbaa !25
  %i.da = zext i8 %i.cz to i16
  %.not10.i.3.i = icmp eq i16 %i.cy, %i.da
  br i1 %.not10.i.3.i, label %bb.ak, label %g_strncmp.exit.3.i

bb.ak:                                            ; preds = %.lr.ph299
  %i.db = icmp eq i16 %i.cy, 0
  br i1 %i.db, label %.g_strncmp.exit.thread.3.i_crit_edge, label %bb.aj, !llvm.loop !55

.g_strncmp.exit.thread.3.i_crit_edge:             ; preds = %bb.ak
  br label %g_strncmp.exit.thread.3.i.a, !llvm.loop !55

g_strncmp.exit.thread.3.i.a:                      ; preds = %bb.aj, %.g_strncmp.exit.thread.3.i_crit_edge, %g_strncmp.exit.2.i
  %10 = getelementptr inbounds nuw i8, ptr @.str.4, i64 %i.bw
  %11 = load i8, ptr %10, align 1, !tbaa !25
  %i.dc = icmp eq i8 %11, 0
  br i1 %i.dc, label %bb.bb, label %g_strncmp.exit.3.i

g_strncmp.exit.3.i:                               ; preds = %.lr.ph299, %g_strncmp.exit.thread.3.i.a
  %.not.i26.4.i301 = icmp eq i64 %gepdiff, 0
  br i1 %.not.i26.4.i301, label %g_strncmp.exit.thread.4.i.a, label %.lr.ph304

bb.al:                                            ; preds = %bb.am
  %i.dd = add i64 %.in361, -1                     ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.06.i.4.i303, i64 1
  %i.df = getelementptr inbounds nuw i8, ptr %.07.i.4.i302, i64 2
  %.not.i26.4.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i26.4.i, label %g_strncmp.exit.thread.4.i.a, label %.lr.ph304, !llvm.loop !55

.lr.ph304:                                        ; preds = %g_strncmp.exit.3.i, %bb.al
  %.in361 = phi i64 [ %i.dd, %bb.al ], [ %i.bw, %g_strncmp.exit.3.i ]
  %.06.i.4.i303 = phi ptr [ %i.de, %bb.al ], [ @.str.5, %g_strncmp.exit.3.i ] ; 2 uses
  %.07.i.4.i302 = phi ptr [ %i.df, %bb.al ], [ %.ptr357, %g_strncmp.exit.3.i ] ; 2 uses
  %i.dg = load i16, ptr %.07.i.4.i302, align 2, !tbaa !27 ; 2 uses
  %i.dh = load i8, ptr %.06.i.4.i303, align 1, !tbaa !25
  %i.di = zext i8 %i.dh to i16
  %.not10.i.4.i = icmp eq i16 %i.dg, %i.di
  br i1 %.not10.i.4.i, label %bb.am, label %g_strncmp.exit.4.i

bb.am:                                            ; preds = %.lr.ph304
  %i.dj = icmp eq i16 %i.dg, 0
  br i1 %i.dj, label %.g_strncmp.exit.thread.4.i_crit_edge, label %bb.al, !llvm.loop !55

.g_strncmp.exit.thread.4.i_crit_edge:             ; preds = %bb.am
  br label %g_strncmp.exit.thread.4.i.a, !llvm.loop !55

g_strncmp.exit.thread.4.i.a:                      ; preds = %bb.al, %.g_strncmp.exit.thread.4.i_crit_edge, %g_strncmp.exit.3.i
  %12 = getelementptr inbounds nuw i8, ptr @.str.5, i64 %i.bw
  %13 = load i8, ptr %12, align 1, !tbaa !25
  %i.dk = icmp eq i8 %13, 0
  br i1 %i.dk, label %bb.bb, label %g_strncmp.exit.4.i

g_strncmp.exit.4.i:                               ; preds = %.lr.ph304, %g_strncmp.exit.thread.4.i.a
  %.not.i26.5.i306 = icmp eq i64 %gepdiff, 0
  br i1 %.not.i26.5.i306, label %g_strncmp.exit.thread.5.i.a, label %.lr.ph309

bb.an:                                            ; preds = %bb.ao
  %i.dl = add i64 %.in362, -1                     ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i.5.i308, i64 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.07.i.5.i307, i64 2
  %.not.i26.5.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i26.5.i, label %g_strncmp.exit.thread.5.i.a, label %.lr.ph309, !llvm.loop !55

.lr.ph309:                                        ; preds = %g_strncmp.exit.4.i, %bb.an
  %.in362 = phi i64 [ %i.dl, %bb.an ], [ %i.bw, %g_strncmp.exit.4.i ]
  %.06.i.5.i308 = phi ptr [ %i.dm, %bb.an ], [ @.str.6, %g_strncmp.exit.4.i ] ; 2 uses
  %.07.i.5.i307 = phi ptr [ %i.dn, %bb.an ], [ %.ptr357, %g_strncmp.exit.4.i ] ; 2 uses
  %i.do = load i16, ptr %.07.i.5.i307, align 2, !tbaa !27 ; 2 uses
  %i.dp = load i8, ptr %.06.i.5.i308, align 1, !tbaa !25
  %i.dq = zext i8 %i.dp to i16
  %.not10.i.5.i = icmp eq i16 %i.do, %i.dq
  br i1 %.not10.i.5.i, label %bb.ao, label %g_strncmp.exit.5.i

bb.ao:                                            ; preds = %.lr.ph309
  %i.dr = icmp eq i16 %i.do, 0
  br i1 %i.dr, label %.g_strncmp.exit.thread.5.i_crit_edge, label %bb.an, !llvm.loop !55

.g_strncmp.exit.thread.5.i_crit_edge:             ; preds = %bb.ao
  br label %g_strncmp.exit.thread.5.i.a, !llvm.loop !55

g_strncmp.exit.thread.5.i.a:                      ; preds = %bb.an, %.g_strncmp.exit.thread.5.i_crit_edge, %g_strncmp.exit.4.i
  %14 = getelementptr inbounds nuw i8, ptr @.str.6, i64 %i.bw
  %15 = load i8, ptr %14, align 1, !tbaa !25
  %i.ds = icmp eq i8 %15, 0
  br i1 %i.ds, label %bb.bb, label %g_strncmp.exit.5.i

g_strncmp.exit.5.i:                               ; preds = %.lr.ph309, %g_strncmp.exit.thread.5.i.a
  %.not.i26.6.i311 = icmp eq i64 %gepdiff, 0
  br i1 %.not.i26.6.i311, label %g_strncmp.exit.thread.6.i.a, label %.lr.ph314

bb.ap:                                            ; preds = %bb.aq
  %i.dt = add i64 %.in363, -1                     ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.06.i.6.i313, i64 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.07.i.6.i312, i64 2
  %.not.i26.6.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i26.6.i, label %g_strncmp.exit.thread.6.i.a, label %.lr.ph314, !llvm.loop !55

.lr.ph314:                                        ; preds = %g_strncmp.exit.5.i, %bb.ap
  %.in363 = phi i64 [ %i.dt, %bb.ap ], [ %i.bw, %g_strncmp.exit.5.i ]
  %.06.i.6.i313 = phi ptr [ %i.du, %bb.ap ], [ @.str.7, %g_strncmp.exit.5.i ] ; 2 uses
  %.07.i.6.i312 = phi ptr [ %i.dv, %bb.ap ], [ %.ptr357, %g_strncmp.exit.5.i ] ; 2 uses
  %i.dw = load i16, ptr %.07.i.6.i312, align 2, !tbaa !27 ; 2 uses
  %i.dx = load i8, ptr %.06.i.6.i313, align 1, !tbaa !25
  %i.dy = zext i8 %i.dx to i16
  %.not10.i.6.i = icmp eq i16 %i.dw, %i.dy
  br i1 %.not10.i.6.i, label %bb.aq, label %g_strncmp.exit.6.i

bb.aq:                                            ; preds = %.lr.ph314
  %i.dz = icmp eq i16 %i.dw, 0
  br i1 %i.dz, label %.g_strncmp.exit.thread.6.i_crit_edge, label %bb.ap, !llvm.loop !55

.g_strncmp.exit.thread.6.i_crit_edge:             ; preds = %bb.aq
  br label %g_strncmp.exit.thread.6.i.a, !llvm.loop !55

g_strncmp.exit.thread.6.i.a:                      ; preds = %bb.ap, %.g_strncmp.exit.thread.6.i_crit_edge, %g_strncmp.exit.5.i
  %16 = getelementptr inbounds nuw i8, ptr @.str.7, i64 %i.bw
  %17 = load i8, ptr %16, align 1, !tbaa !25
  %i.ea = icmp eq i8 %17, 0
  br i1 %i.ea, label %bb.bb, label %g_strncmp.exit.6.i

g_strncmp.exit.6.i:                               ; preds = %.lr.ph314, %g_strncmp.exit.thread.6.i.a
  %.not.i26.7.i316 = icmp eq i64 %gepdiff, 0
  br i1 %.not.i26.7.i316, label %g_strncmp.exit.thread.7.i.a, label %.lr.ph319

bb.ar:                                            ; preds = %bb.as
  %i.eb = add i64 %.in364, -1                     ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.06.i.7.i318, i64 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.07.i.7.i317, i64 2
  %.not.i26.7.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i26.7.i, label %g_strncmp.exit.thread.7.i.a, label %.lr.ph319, !llvm.loop !55

.lr.ph319:                                        ; preds = %g_strncmp.exit.6.i, %bb.ar
  %.in364 = phi i64 [ %i.eb, %bb.ar ], [ %i.bw, %g_strncmp.exit.6.i ]
  %.06.i.7.i318 = phi ptr [ %i.ec, %bb.ar ], [ @.str.8, %g_strncmp.exit.6.i ] ; 2 uses
  %.07.i.7.i317 = phi ptr [ %i.ed, %bb.ar ], [ %.ptr357, %g_strncmp.exit.6.i ] ; 2 uses
  %i.ee = load i16, ptr %.07.i.7.i317, align 2, !tbaa !27 ; 2 uses
  %i.ef = load i8, ptr %.06.i.7.i318, align 1, !tbaa !25
  %i.eg = zext i8 %i.ef to i16
  %.not10.i.7.i = icmp eq i16 %i.ee, %i.eg
  br i1 %.not10.i.7.i, label %bb.as, label %g_strncmp.exit.7.i

bb.as:                                            ; preds = %.lr.ph319
  %i.eh = icmp eq i16 %i.ee, 0
  br i1 %i.eh, label %.g_strncmp.exit.thread.7.i_crit_edge, label %bb.ar, !llvm.loop !55

.g_strncmp.exit.thread.7.i_crit_edge:             ; preds = %bb.as
  br label %g_strncmp.exit.thread.7.i.a, !llvm.loop !55

g_strncmp.exit.thread.7.i.a:                      ; preds = %bb.ar, %.g_strncmp.exit.thread.7.i_crit_edge, %g_strncmp.exit.6.i
  %18 = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.bw
  %19 = load i8, ptr %18, align 1, !tbaa !25
  %i.ei = icmp eq i8 %19, 0
  br i1 %i.ei, label %bb.bb, label %g_strncmp.exit.7.i

g_strncmp.exit.7.i:                               ; preds = %.lr.ph319, %g_strncmp.exit.thread.7.i.a
  %.not.i26.8.i321 = icmp eq i64 %gepdiff, 0
  br i1 %.not.i26.8.i321, label %g_strncmp.exit.thread.8.i.a, label %.lr.ph324

bb.at:                                            ; preds = %bb.au
  %i.ej = add i64 %.in365, -1                     ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.06.i.8.i323, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %.07.i.8.i322, i64 2
  %.not.i26.8.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i26.8.i, label %g_strncmp.exit.thread.8.i.a, label %.lr.ph324, !llvm.loop !55

.lr.ph324:                                        ; preds = %g_strncmp.exit.7.i, %bb.at
  %.in365 = phi i64 [ %i.ej, %bb.at ], [ %i.bw, %g_strncmp.exit.7.i ]
  %.06.i.8.i323 = phi ptr [ %i.ek, %bb.at ], [ @.str.9, %g_strncmp.exit.7.i ] ; 2 uses
  %.07.i.8.i322 = phi ptr [ %i.el, %bb.at ], [ %.ptr357, %g_strncmp.exit.7.i ] ; 2 uses
  %i.em = load i16, ptr %.07.i.8.i322, align 2, !tbaa !27 ; 2 uses
  %i.en = load i8, ptr %.06.i.8.i323, align 1, !tbaa !25
  %i.eo = zext i8 %i.en to i16
  %.not10.i.8.i = icmp eq i16 %i.em, %i.eo
  br i1 %.not10.i.8.i, label %bb.au, label %g_strncmp.exit.8.i

bb.au:                                            ; preds = %.lr.ph324
  %i.ep = icmp eq i16 %i.em, 0
  br i1 %i.ep, label %.g_strncmp.exit.thread.8.i_crit_edge, label %bb.at, !llvm.loop !55

.g_strncmp.exit.thread.8.i_crit_edge:             ; preds = %bb.au
  br label %g_strncmp.exit.thread.8.i.a, !llvm.loop !55

g_strncmp.exit.thread.8.i.a:                      ; preds = %bb.at, %.g_strncmp.exit.thread.8.i_crit_edge, %g_strncmp.exit.7.i
  %20 = getelementptr inbounds nuw i8, ptr @.str.9, i64 %i.bw
  %21 = load i8, ptr %20, align 1, !tbaa !25
  %i.eq = icmp eq i8 %21, 0
  br i1 %i.eq, label %bb.bb, label %g_strncmp.exit.8.i

g_strncmp.exit.8.i:                               ; preds = %.lr.ph324, %g_strncmp.exit.thread.8.i.a
  %.not.i26.9.i326 = icmp eq i64 %gepdiff, 0
  br i1 %.not.i26.9.i326, label %g_strncmp.exit.thread.9.i.a, label %.lr.ph329

bb.av:                                            ; preds = %bb.aw
  %i.er = add i64 %.in366, -1                     ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.06.i.9.i328, i64 1
  %i.et = getelementptr inbounds nuw i8, ptr %.07.i.9.i327, i64 2
  %.not.i26.9.i = icmp eq i64 %i.er, 0
  br i1 %.not.i26.9.i, label %g_strncmp.exit.thread.9.i.a, label %.lr.ph329, !llvm.loop !55

.lr.ph329:                                        ; preds = %g_strncmp.exit.8.i, %bb.av
  %.in366 = phi i64 [ %i.er, %bb.av ], [ %i.bw, %g_strncmp.exit.8.i ]
  %.06.i.9.i328 = phi ptr [ %i.es, %bb.av ], [ @.str.10, %g_strncmp.exit.8.i ] ; 2 uses
  %.07.i.9.i327 = phi ptr [ %i.et, %bb.av ], [ %.ptr357, %g_strncmp.exit.8.i ] ; 2 uses
  %i.eu = load i16, ptr %.07.i.9.i327, align 2, !tbaa !27 ; 2 uses
  %i.ev = load i8, ptr %.06.i.9.i328, align 1, !tbaa !25
  %i.ew = zext i8 %i.ev to i16
  %.not10.i.9.i = icmp eq i16 %i.eu, %i.ew
  br i1 %.not10.i.9.i, label %bb.aw, label %g_strncmp.exit.9.i

bb.aw:                                            ; preds = %.lr.ph329
  %i.ex = icmp eq i16 %i.eu, 0
  br i1 %i.ex, label %.g_strncmp.exit.thread.9.i_crit_edge, label %bb.av, !llvm.loop !55

.g_strncmp.exit.thread.9.i_crit_edge:             ; preds = %bb.aw
  br label %g_strncmp.exit.thread.9.i.a, !llvm.loop !55

g_strncmp.exit.thread.9.i.a:                      ; preds = %bb.av, %.g_strncmp.exit.thread.9.i_crit_edge, %g_strncmp.exit.8.i
  %22 = getelementptr inbounds nuw i8, ptr @.str.10, i64 %i.bw
  %23 = load i8, ptr %22, align 1, !tbaa !25
  %i.ey = icmp eq i8 %23, 0
  br i1 %i.ey, label %bb.bb, label %g_strncmp.exit.9.i

g_strncmp.exit.9.i:                               ; preds = %.lr.ph329, %g_strncmp.exit.thread.9.i.a
  %.not.i26.10.i331 = icmp eq i64 %gepdiff, 0
  br i1 %.not.i26.10.i331, label %g_strncmp.exit.thread.10.i.a, label %.lr.ph334

bb.ax:                                            ; preds = %bb.ay
  %i.ez = add i64 %.in367, -1                     ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.06.i.10.i333, i64 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.07.i.10.i332, i64 2
  %.not.i26.10.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i26.10.i, label %g_strncmp.exit.thread.10.i.a, label %.lr.ph334, !llvm.loop !55

.lr.ph334:                                        ; preds = %g_strncmp.exit.9.i, %bb.ax
  %.in367 = phi i64 [ %i.ez, %bb.ax ], [ %i.bw, %g_strncmp.exit.9.i ]
  %.06.i.10.i333 = phi ptr [ %i.fa, %bb.ax ], [ @.str.11, %g_strncmp.exit.9.i ] ; 2 uses
  %.07.i.10.i332 = phi ptr [ %i.fb, %bb.ax ], [ %.ptr357, %g_strncmp.exit.9.i ] ; 2 uses
  %i.fc = load i16, ptr %.07.i.10.i332, align 2, !tbaa !27 ; 2 uses
  %i.fd = load i8, ptr %.06.i.10.i333, align 1, !tbaa !25
  %i.fe = zext i8 %i.fd to i16
  %.not10.i.10.i = icmp eq i16 %i.fc, %i.fe
  br i1 %.not10.i.10.i, label %bb.ay, label %g_strncmp.exit.10.i

bb.ay:                                            ; preds = %.lr.ph334
  %i.ff = icmp eq i16 %i.fc, 0
  br i1 %i.ff, label %.g_strncmp.exit.thread.10.i_crit_edge, label %bb.ax, !llvm.loop !55

.g_strncmp.exit.thread.10.i_crit_edge:            ; preds = %bb.ay
  br label %g_strncmp.exit.thread.10.i.a, !llvm.loop !55

g_strncmp.exit.thread.10.i.a:                     ; preds = %bb.ax, %.g_strncmp.exit.thread.10.i_crit_edge, %g_strncmp.exit.9.i
  %24 = getelementptr inbounds nuw i8, ptr @.str.11, i64 %i.bw
  %25 = load i8, ptr %24, align 1, !tbaa !25
  %i.fg = icmp eq i8 %25, 0
  br i1 %i.fg, label %bb.bb, label %g_strncmp.exit.10.i

g_strncmp.exit.10.i:                              ; preds = %.lr.ph334, %g_strncmp.exit.thread.10.i.a
  %.not.i26.11.i336 = icmp eq i64 %gepdiff, 0
  br i1 %.not.i26.11.i336, label %g_strncmp.exit.thread.11.i, label %.lr.ph339

bb.az:                                            ; preds = %bb.ba
  %i.fh = add i64 %.in368, -1                     ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.06.i.11.i338, i64 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.07.i.11.i337, i64 2
  %.not.i26.11.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i26.11.i, label %g_strncmp.exit.thread.11.i, label %.lr.ph339, !llvm.loop !55

.lr.ph339:                                        ; preds = %g_strncmp.exit.10.i, %bb.az
  %.in368 = phi i64 [ %i.fh, %bb.az ], [ %i.bw, %g_strncmp.exit.10.i ]
  %.06.i.11.i338 = phi ptr [ %i.fi, %bb.az ], [ @.str.12, %g_strncmp.exit.10.i ] ; 2 uses
  %.07.i.11.i337 = phi ptr [ %i.fj, %bb.az ], [ %.ptr357, %g_strncmp.exit.10.i ] ; 2 uses
  %i.fk = load i16, ptr %.07.i.11.i337, align 2, !tbaa !27 ; 2 uses
  %i.fl = load i8, ptr %.06.i.11.i338, align 1, !tbaa !25
  %i.fm = zext i8 %i.fl to i16
  %.not10.i.11.i = icmp eq i16 %i.fk, %i.fm
  br i1 %.not10.i.11.i, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %.lr.ph339
  %i.fn = icmp eq i16 %i.fk, 0
  br i1 %i.fn, label %.g_strncmp.exit.thread.11.i_crit_edge, label %bb.az, !llvm.loop !55

.g_strncmp.exit.thread.11.i_crit_edge:            ; preds = %bb.ba
  br label %g_strncmp.exit.thread.11.i, !llvm.loop !55

g_strncmp.exit.thread.11.i:                       ; preds = %bb.az, %.g_strncmp.exit.thread.11.i_crit_edge, %g_strncmp.exit.10.i
  %26 = getelementptr inbounds nuw i8, ptr @.str.12, i64 %i.bw
  %27 = load i8, ptr %26, align 1, !tbaa !25
  %i.fo = icmp eq i8 %27, 0
  br i1 %i.fo, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %g_strncmp.exit.thread.11.i, %g_strncmp.exit.thread.10.i.a, %g_strncmp.exit.thread.9.i.a, %g_strncmp.exit.thread.8.i.a, %g_strncmp.exit.thread.7.i.a, %g_strncmp.exit.thread.6.i.a, %g_strncmp.exit.thread.5.i.a, %g_strncmp.exit.thread.4.i.a, %g_strncmp.exit.thread.3.i.a, %g_strncmp.exit.thread.2.i.a, %g_strncmp.exit.thread.1.i.a, %g_strncmp.exit.thread.i
  %.033.lcssa.i = phi ptr [ @cclasses, %g_strncmp.exit.thread.i ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 16), %g_strncmp.exit.thread.1.i.a ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 32), %g_strncmp.exit.thread.2.i.a ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 48), %g_strncmp.exit.thread.3.i.a ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 64), %g_strncmp.exit.thread.4.i.a ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 80), %g_strncmp.exit.thread.5.i.a ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 96), %g_strncmp.exit.thread.6.i.a ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 112), %g_strncmp.exit.thread.7.i.a ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 128), %g_strncmp.exit.thread.8.i.a ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 144), %g_strncmp.exit.thread.9.i.a ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 160), %g_strncmp.exit.thread.10.i.a ], [ getelementptr inbounds nuw (i8, ptr @cclasses, i64 176), %g_strncmp.exit.thread.11.i ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.3131, i64 2
  store i16 -32710, ptr %.3131, align 2, !tbaa !27
  %i.fq = ptrtoint ptr %.033.lcssa.i to i64
  %i.fr = sub i64 %i.fq, ptrtoint (ptr @cclasses to i64)
  %i.fs = lshr exact i64 %i.fr, 4
  %i.ft = trunc i64 %i.fs to i16
  %i.fu = getelementptr inbounds nuw i8, ptr %.3131, i64 4 ; 4 uses
  store i16 %i.ft, ptr %i.fp, align 2, !tbaa !27
  %i.fv = getelementptr i8, ptr %.3135, i64 %gepdiff ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 6
  %i.fx = getelementptr i8, ptr %i.fv, i64 8      ; 5 uses
  %i.fy = load i16, ptr %i.fw, align 2, !tbaa !27 ; 2 uses
  switch i16 %i.fy, label %.critedge.thread163 [
    i16 91, label %bb.bc
    i16 93, label %.loopexit172
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.fz = load i16, ptr %i.fx, align 2, !tbaa !27
  %i.ga = icmp eq i16 %i.fz, 58
  br i1 %i.ga, label %.preheader169, label %.critedge.thread163, !llvm.loop !56

.loopexit:                                        ; preds = %g_strncmp.exit.thread.11.i, %.lr.ph339
  %i.gb = load i32, ptr %i.ay, align 8, !tbaa !22
  %i.gc = and i32 %i.gb, 16
  %.not97 = icmp eq i32 %i.gc, 0
  br i1 %.not97, label %.critedge101, label %.critedge.thread163

.critedge.thread163:                              ; preds = %bb.bb, %g_strchr.exit.i, %bb.bc, %bb.ac, %.loopexit, %bb.aa, %bb.z
  %.5137 = phi ptr [ %.3135, %.loopexit ], [ %.2134, %bb.aa ], [ %.2134, %bb.z ], [ %.3135, %bb.ac ], [ %.3135, %g_strchr.exit.i ], [ %i.fx, %bb.bc ], [ %i.fx, %bb.bb ] ; 5 uses
  %.4 = phi ptr [ %.3131, %.loopexit ], [ %.2130, %bb.aa ], [ %.2130, %bb.z ], [ %.3131, %bb.ac ], [ %.3131, %g_strchr.exit.i ], [ %i.fu, %bb.bc ], [ %i.fu, %bb.bb ] ; 4 uses
  %.3.shrunk = phi i16 [ 91, %.loopexit ], [ 91, %bb.aa ], [ %.073.in, %bb.z ], [ 91, %bb.ac ], [ 91, %g_strchr.exit.i ], [ 91, %bb.bc ], [ %i.fy, %bb.bb ]
  %i.gd = and i16 %.3.shrunk, 255
  %i.ge = getelementptr inbounds nuw i8, ptr %.4, i64 2 ; 3 uses
  store i16 %i.gd, ptr %.4, align 2, !tbaa !27
  %i.gf = load i16, ptr %.5137, align 2, !tbaa !27 ; 2 uses
  %i.gg = icmp eq i16 %i.gf, 45
  br i1 %i.gg, label %bb.bd, label %thread-pre-split

bb.bd:                                            ; preds = %.critedge.thread163
  %i.gh = getelementptr inbounds nuw i8, ptr %.5137, i64 2
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !27 ; 2 uses
  %.not98 = icmp eq i16 %i.gi, 93
  br i1 %.not98, label %thread-pre-split, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gj = getelementptr inbounds nuw i8, ptr %.4, i64 4
  store i16 -32723, ptr %i.ge, align 2, !tbaa !27
  %i.gk = and i16 %i.gi, 255
  %i.gl = getelementptr inbounds nuw i8, ptr %.4, i64 6
  store i16 %i.gk, ptr %i.gj, align 2, !tbaa !27
  %i.gm = getelementptr inbounds nuw i8, ptr %.5137, i64 4 ; 2 uses
  %.pr165.pre = load i16, ptr %i.gm, align 2, !tbaa !27
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.bd, %bb.be, %.critedge.thread163
  %i.gn = phi i16 [ %i.gf, %.critedge.thread163 ], [ %.pr165.pre, %bb.be ], [ 45, %bb.bd ] ; 2 uses
  %.6138 = phi ptr [ %.5137, %.critedge.thread163 ], [ %i.gm, %bb.be ], [ %.5137, %bb.bd ]
  %.5 = phi ptr [ %i.ge, %.critedge.thread163 ], [ %i.gl, %bb.be ], [ %i.ge, %bb.bd ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.6138, i64 2 ; 2 uses
  %.not99 = icmp eq i16 %i.gn, 93
  br i1 %.not99, label %.loopexit172, label %bb.z, !llvm.loop !57

.loopexit172:                                     ; preds = %thread-pre-split, %bb.bb
  %.7139 = phi ptr [ %i.fx, %bb.bb ], [ %i.go, %thread-pre-split ]
  %.6 = phi ptr [ %i.fu, %bb.bb ], [ %.5, %thread-pre-split ] ; 2 uses
  %i.gp = load i32, ptr %i.ay, align 8, !tbaa !22
  %i.gq = or i32 %i.gp, 256
  store i32 %i.gq, ptr %i.ay, align 8, !tbaa !22
  store i16 -32675, ptr %.6, align 2, !tbaa !27
  br label %.outer.backedge

bb.bf:                                            ; preds = %bb.q
  %i.gr = load i32, ptr %i.ay, align 8, !tbaa !22
  %i.gs = or i32 %i.gr, 256
  store i32 %i.gs, ptr %i.ay, align 8, !tbaa !22
  store i16 -32705, ptr %.0128.ph, align 2, !tbaa !27
  br label %.outer.backedge

bb.bg:                                            ; preds = %bb.q
  %i.gt = load i32, ptr %i.ay, align 8, !tbaa !22
  %i.gu = or i32 %i.gt, 256
  store i32 %i.gu, ptr %i.ay, align 8, !tbaa !22
  br i1 %i.az, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gv = load i16, ptr %i.ba, align 2, !tbaa !27
  %.not95 = icmp eq i16 %i.gv, -32726
  br i1 %.not95, label %bb.q, label %bb.bi, !llvm.loop !58

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store i16 -32726, ptr %.0128.ph, align 2, !tbaa !27
  br label %.outer.backedge

bb.bj:                                            ; preds = %bb.q
  %i.gw = and i16 %i.bc, 255
  store i16 %i.gw, ptr %.0128.ph, align 2, !tbaa !27
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.bj, %g_strchr.exit.thread, %.loopexit172, %bb.bf, %bb.bi
  %.0132.ph.be = phi ptr [ %i.bb, %bb.bi ], [ %i.bb, %bb.bf ], [ %.7139, %.loopexit172 ], [ %spec.select.idx.sroa.sel.idx.sroa.sel, %g_strchr.exit.thread ], [ %i.bb, %bb.bj ]
  %.0128.ph.pn = phi ptr [ %.0128.ph, %bb.bi ], [ %.0128.ph, %bb.bf ], [ %.6, %.loopexit172 ], [ %.0128.ph, %g_strchr.exit.thread ], [ %.0128.ph, %bb.bj ]
  %.0128.ph.be = getelementptr inbounds nuw i8, ptr %.0128.ph.pn, i64 2
  br label %.outer, !llvm.loop !58

bb.bk:                                            ; preds = %bb.q
  store i16 0, ptr %.0128.ph, align 2, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.gx = load i16, ptr %i.d, align 16, !tbaa !27
  %i.gy = icmp eq i16 %i.gx, 0
  br i1 %i.gy, label %.thread, label %glob1.exit

.thread:                                          ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bm

glob1.exit:                                       ; preds = %bb.bk
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 8190
  %i.ha = call fastcc i32 @glob2(ptr noundef %i.a, ptr noundef %i.a, ptr noundef %i.gz, ptr noundef nonnull readonly %i.d, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not88 = icmp eq i32 %i.ha, 0
  br i1 %.not88, label %bb.bl, label %.critedge101

bb.bl:                                            ; preds = %glob1.exit
  %.pre = load i64, ptr %1, align 8, !tbaa !20    ; 8 uses
  %i.hb = icmp eq i64 %.pre, %i.ax
  br i1 %i.hb, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %.thread, %bb.bl
  %i.hc = load i32, ptr %i.ay, align 8, !tbaa !22 ; 2 uses
  %i.hd = and i32 %i.hc, 16
  %.not92 = icmp ne i32 %i.hd, 0
  %i.he = and i32 %i.hc, 768
  %or.cond = icmp eq i32 %i.he, 512
  %or.cond168 = or i1 %.not92, %or.cond
  br i1 %or.cond168, label %bb.bn, label %.critedge101

bb.bn:                                            ; preds = %bb.bm
  %i.hf = call fastcc i32 @globextend(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null)
  br label %.critedge101

bb.bo:                                            ; preds = %bb.bl
  %i.hg = load i32, ptr %i.ay, align 8, !tbaa !22 ; 2 uses
  %i.hh = and i32 %i.hg, 32
  %.not89 = icmp eq i32 %i.hh, 0
  br i1 %.not89, label %bb.bp, label %.critedge101

bb.bp:                                            ; preds = %bb.bo
  %i.hi = and i32 %i.hg, 16384
  %.not90 = icmp eq i32 %i.hi, 0
  br i1 %.not90, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hj = sub i64 %.pre, %i.ax                    ; 9 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !21 ; 2 uses
  %i.hm = add i64 %i.hl, %i.ax                    ; 8 uses
  %i.hn = call noalias ptr @calloc(i64 noundef %i.hj, i64 noundef 16) #21 ; 15 uses
  %.not91 = icmp eq ptr %i.hn, null
  br i1 %.not91, label %.critedge101, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bq
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !32 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !33 ; 3 uses
  %.neg = add i64 %i.ax, 1
  %xtraiter = and i64 %i.hj, 1
  %i.hs = icmp eq i64 %.pre, %.neg
  br i1 %i.hs, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.hj, -2
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.lr.ph.new
  %.0189 = phi i64 [ 0, %.lr.ph.new ], [ %i.ii, %bb.br ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.br ]
  %i.ht = add i64 %.0189, %i.hm                   ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !34
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %.0189 ; 2 uses
  store ptr %i.hv, ptr %i.hw, align 8, !tbaa !37
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ht
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !38
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !71
  %i.ia = or disjoint i64 %.0189, 1               ; 2 uses
  %i.ib = add i64 %i.ia, %i.hm                    ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ib
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !34
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %i.ia ; 2 uses
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !37
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ib
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !38
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !71
  %i.ii = add nuw i64 %.0189, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph192.unr-lcssa, label %bb.br, !llvm.loop !59

.lr.ph192.unr-lcssa:                              ; preds = %bb.br
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph192, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph192.unr-lcssa, %.lr.ph
  %.0189.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ii, %.lr.ph192.unr-lcssa ] ; 2 uses
  %lcmp.mod402 = trunc i64 %i.hj to i1
  call void @llvm.assume(i1 %lcmp.mod402)
  %i.ij = add i64 %.0189.epil.init, %i.hm         ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !34
  %i.im = getelementptr inbounds nuw [16 x i8], ptr %i.hn, i64 %.0189.epil.init ; 2 uses
  store ptr %i.il, ptr %i.im, align 8, !tbaa !37
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ij
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !38
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !71
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.unr-lcssa, %.epil.preheader
  call void @qsort(ptr noundef nonnull %i.hn, i64 noundef %i.hj, i64 noundef 16, ptr noundef nonnull @compare_gps) #19
end_hunk_0
