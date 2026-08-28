Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/proj_strtod?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z11proj_strtodPKcPPc:bb.a
  %i.w = phi i1 [ %i.q, %bb.s ], [ false, %switch.early.test ], [ false, %switch.early.test ], [ false, %bb.p ] ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %.critedge, %.thread
  %i.x = phi i8 [ %i.v, %.thread ], [ %.pre, %.critedge ] ; 5 uses
  %.2169 = phi ptr [ %.1168245, %.thread ], [ %i.y, %.critedge ] ; 4 uses
  switch i8 %i.x, label %bb.w [
    i8 48, label %.critedge
    i8 95, label %.critedge
    i8 0, label %.loopexit251
  ]

.critedge:                                        ; preds = %bb.v, %bb.v
  %i.y = getelementptr inbounds nuw i8, ptr %.2169, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.y, align 1, !tbaa !15
  br label %bb.v, !llvm.loop !20

bb.w:                                             ; preds = %bb.v
  %i.z = sext i8 %i.x to i32                      ; 2 uses
  %memchr209 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.3, i32 %i.z, i64 14)
  %i.aa = icmp eq ptr %memchr209, null
  br i1 %i.aa, label %.loopexit251, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.ac = sext i8 %i.x to i64
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !16
  %i.af = and i16 %i.ae, 8192
  %.not210 = icmp eq i16 %i.af, 0
  br i1 %.not210, label %.preheader249, label %.loopexit251

.preheader249:                                    ; preds = %bb.x
  %isdigittmp211271283 = add nsw i32 %i.z, -48    ; 2 uses
  %isdigit212272284 = icmp ult i32 %isdigittmp211271283, 10
  %i.ag = icmp eq i8 %i.x, 95                     ; 2 uses
  %or.cond238273285 = or i1 %i.ag, %isdigit212272284
  br i1 %or.cond238273285, label %.critedge2.lr.ph, label %.outer250._crit_edge

.loopexit251:                                     ; preds = %bb.v, %bb.x, %bb.w
  %.not229 = icmp eq ptr %1, null
  br i1 %.not229, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit251
  store ptr %.2169, ptr %1, align 8, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.loopexit251
  %. = select i1 %i.w, double -0.000000e+00, double 0.000000e+00
  br label %bb.bc

.critedge2:                                       ; preds = %.lr.ph548
  br i1 %i.ak, label %.lr.ph548, label %.outer250, !llvm.loop !21

.lr.ph548:                                        ; preds = %.critedge2.lr.ph, %.critedge2
  %.3274547 = phi ptr [ %i.ah, %.critedge2 ], [ %.3.ph287, %.critedge2.lr.ph ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.3274547, i64 1 ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15  ; 3 uses
  %i.aj = sext i8 %i.ai to i32
  %isdigittmp211 = add nsw i32 %i.aj, -48         ; 2 uses
  %isdigit212 = icmp ult i32 %isdigittmp211, 10
  %i.ak = icmp eq i8 %i.ai, 95                    ; 2 uses
  %or.cond238 = or i1 %i.ak, %isdigit212
  br i1 %or.cond238, label %.critedge2, label %.outer250._crit_edge, !llvm.loop !21

.outer250:                                        ; preds = %.critedge2, %.critedge2.lr.ph
  %isdigittmp211275.lcssa = phi i32 [ %isdigittmp211271289, %.critedge2.lr.ph ], [ %isdigittmp211, %.critedge2 ]
  %.3274.lcssa = phi ptr [ %.3.ph287, %.critedge2.lr.ph ], [ %i.ah, %.critedge2 ]
  %i.al = sitofp i32 %isdigittmp211275.lcssa to double
  %i.am = tail call double @llvm.fmuladd.f64(double %.0176.ph286, double 1.000000e+01, double %i.al) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3274.lcssa, i64 1 ; 3 uses
  %i.ao = add nuw nsw i32 %.0162.ph288, 1         ; 2 uses
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !15  ; 3 uses
  %i.aq = sext i8 %i.ap to i32
  %isdigittmp211271 = add nsw i32 %i.aq, -48      ; 2 uses
  %isdigit212272 = icmp ult i32 %isdigittmp211271, 10
  %i.ar = icmp eq i8 %i.ap, 95                    ; 2 uses
  %or.cond238273 = or i1 %i.ar, %isdigit212272
  br i1 %or.cond238273, label %.critedge2.lr.ph, label %.outer250._crit_edge, !llvm.loop !21

.critedge2.lr.ph:                                 ; preds = %.preheader249, %.outer250
  %i.as = phi i1 [ %i.ar, %.outer250 ], [ %i.ag, %.preheader249 ]
  %isdigittmp211271289 = phi i32 [ %isdigittmp211271, %.outer250 ], [ %isdigittmp211271283, %.preheader249 ]
  %.0162.ph288 = phi i32 [ %i.ao, %.outer250 ], [ 0, %.preheader249 ] ; 2 uses
  %.3.ph287 = phi ptr [ %i.an, %.outer250 ], [ %.2169, %.preheader249 ] ; 2 uses
  %.0176.ph286 = phi double [ %i.am, %.outer250 ], [ 0.000000e+00, %.preheader249 ] ; 2 uses
  br i1 %i.as, label %.lr.ph548, label %.outer250

.outer250._crit_edge:                             ; preds = %.outer250, %.lr.ph548, %.preheader249
  %.0176.ph.lcssa = phi double [ %.0176.ph286, %.lr.ph548 ], [ 0.000000e+00, %.preheader249 ], [ %i.am, %.outer250 ] ; 10 uses
  %.0162.ph.lcssa = phi i32 [ %.0162.ph288, %.lr.ph548 ], [ 0, %.preheader249 ], [ %i.ao, %.outer250 ]
  %.3.lcssa = phi ptr [ %i.ah, %.lr.ph548 ], [ %.2169, %.preheader249 ], [ %i.an, %.outer250 ] ; 3 uses
  %.lcssa262 = phi i8 [ %i.ai, %.lr.ph548 ], [ %i.x, %.preheader249 ], [ %i.ap, %.outer250 ] ; 2 uses
  %.0162.ph.lcssa.fr = freeze i32 %.0162.ph.lcssa ; 5 uses
  switch i8 %.lcssa262, label %.outer247._crit_edge.thread [
    i8 0, label %bb.aa
    i8 46, label %bb.ae
  ]

bb.aa:                                            ; preds = %.outer250._crit_edge
  %.not228 = icmp eq ptr %1, null
  br i1 %.not228, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %.3.lcssa, ptr %1, align 8, !tbaa !13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %i.w, label %bb.ad, label %bb.bc

bb.ad:                                            ; preds = %bb.ac
  %i.at = fneg double %.0176.ph.lcssa
  br label %bb.bc

bb.ae:                                            ; preds = %.outer250._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 1 ; 3 uses
  %i.av = fcmp oeq double %.0176.ph.lcssa, 0.000000e+00
  br i1 %i.av, label %.preheader248, label %thread-pre-split

.preheader248:                                    ; preds = %bb.ae, %.critedge4
  %.4 = phi ptr [ %i.az, %.critedge4 ], [ %i.au, %bb.ae ] ; 3 uses
  %.0160 = phi i32 [ %spec.select, %.critedge4 ], [ 0, %bb.ae ] ; 2 uses
  %i.aw = load i8, ptr %.4, align 1, !tbaa !15    ; 3 uses
  switch i8 %i.aw, label %.loopexit [
    i8 48, label %.critedge4
    i8 95, label %.critedge4
  ]

.critedge4:                                       ; preds = %.preheader248, %.preheader248
  %i.ax = icmp eq i8 %i.aw, 48
  %i.ay = zext i1 %i.ax to i32
  %spec.select = add nuw nsw i32 %.0160, %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %.4, i64 1
  br label %.preheader248, !llvm.loop !22

thread-pre-split:                                 ; preds = %bb.ae
  %.pr = load i8, ptr %i.au, align 1, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader248, %thread-pre-split
  %i.ba = phi i8 [ %.pr, %thread-pre-split ], [ %i.aw, %.preheader248 ] ; 5 uses
  %.5 = phi ptr [ %i.au, %thread-pre-split ], [ %.4, %.preheader248 ] ; 4 uses
  %.2 = phi i32 [ 0, %thread-pre-split ], [ %.0160, %.preheader248 ]
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.loopexit
  %i.bc = sext i8 %i.ba to i32                    ; 2 uses
  %memchr213 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.4, i32 %i.bc, i64 16)
  %i.bd = icmp eq ptr %memchr213, null
  br i1 %i.bd, label %bb.ag, label %.preheader246

.preheader246:                                    ; preds = %bb.af
  %isdigittmp214294337 = add nsw i32 %i.bc, -48   ; 2 uses
  %isdigit215295338 = icmp ult i32 %isdigittmp214294337, 10
  %i.be = icmp eq i8 %i.ba, 95                    ; 2 uses
  %or.cond239296339 = or i1 %i.be, %isdigit215295338
  br i1 %or.cond239296339, label %.critedge6.lr.ph.preheader, label %.outer247._crit_edge.thread

.critedge6.lr.ph.preheader:                       ; preds = %.preheader246
  %smax = tail call i32 @llvm.smax.i32(i32 %.0162.ph.lcssa.fr, i32 18) ; 2 uses
  %i.bf = sub i32 %smax, %.0162.ph.lcssa.fr       ; 3 uses
  %exitcond550 = icmp eq i32 %i.bf, 0
  br i1 %exitcond550, label %.critedge6.lr.ph.split.us, label %.critedge6.lr.ph.split

bb.ag:                                            ; preds = %bb.af, %.loopexit
  %.not227 = icmp eq ptr %1, null
  br i1 %.not227, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %.5, ptr %1, align 8, !tbaa !13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %i.w, label %bb.aj, label %bb.bc

bb.aj:                                            ; preds = %bb.ai
  %i.bg = fneg double %.0176.ph.lcssa
  br label %bb.bc

.critedge6:                                       ; preds = %.lr.ph
  br i1 %i.bk, label %.lr.ph, label %.outer247, !llvm.loop !23

.lr.ph:                                           ; preds = %.critedge6.lr.ph.split, %.critedge6
  %.6297333 = phi ptr [ %i.bh, %.critedge6 ], [ %.6.ph342554, %.critedge6.lr.ph.split ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.6297333, i64 1 ; 4 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !15  ; 4 uses
  %i.bj = sext i8 %i.bi to i32
  %isdigittmp214 = add nsw i32 %i.bj, -48         ; 2 uses
  %isdigit215 = icmp ult i32 %isdigittmp214, 10
  %i.bk = icmp eq i8 %i.bi, 95                    ; 2 uses
  %or.cond239 = or i1 %i.bk, %isdigit215
  br i1 %or.cond239, label %.critedge6, label %.outer247._crit_edge, !llvm.loop !23

.outer247:                                        ; preds = %.critedge6, %.critedge6.lr.ph.split
  %.6.lcssa259 = phi ptr [ %.6.ph342554, %.critedge6.lr.ph.split ], [ %i.bh, %.critedge6 ]
  %.lcssa258 = phi i8 [ %i.bx, %.critedge6.lr.ph.split ], [ %i.bi, %.critedge6 ]
  %isdigittmp214.lcssa256 = phi i32 [ %isdigittmp214294345551, %.critedge6.lr.ph.split ], [ %isdigittmp214, %.critedge6 ]
  %i.bl = sitofp i32 %isdigittmp214.lcssa256 to double
  %i.bm = tail call double @llvm.fmuladd.f64(double %.1177.ph340556, double 1.000000e+01, double %i.bl) ; 3 uses
  %.not226 = icmp ne i8 %.lcssa258, 48
  %spec.select240 = select i1 %.not226, i1 true, i1 %.0172.ph341554 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.6.lcssa259, i64 1 ; 4 uses
  %i.bo = add i32 %.1163.ph343553, 1              ; 2 uses
  %i.bp = add nuw i32 %.0161.ph344552, 1          ; 3 uses
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !15  ; 4 uses
  %i.br = sext i8 %i.bq to i32
  %isdigittmp214294 = add nsw i32 %i.br, -48      ; 2 uses
  %isdigit215295 = icmp ult i32 %isdigittmp214294, 10
  %i.bs = icmp eq i8 %i.bq, 95                    ; 2 uses
  %or.cond239296 = or i1 %i.bs, %isdigit215295
  br i1 %or.cond239296, label %.critedge6.lr.ph, label %.outer247._crit_edge, !llvm.loop !23

.critedge6.lr.ph:                                 ; preds = %.outer247
  %exitcond = icmp eq i32 %i.bp, %i.bf
  br i1 %exitcond, label %.critedge6.lr.ph.split.us, label %.critedge6.lr.ph.split, !llvm.loop !23

.critedge6.lr.ph.split.us:                        ; preds = %.critedge6.lr.ph, %.critedge6.lr.ph.preheader
  %.6.ph342.lcssa = phi ptr [ %.5, %.critedge6.lr.ph.preheader ], [ %i.bn, %.critedge6.lr.ph ]
  %.0172.ph341.lcssa = phi i1 [ false, %.critedge6.lr.ph.preheader ], [ %spec.select240, %.critedge6.lr.ph ]
  %.1177.ph340.lcssa = phi double [ %.0176.ph.lcssa, %.critedge6.lr.ph.preheader ], [ %i.bm, %.critedge6.lr.ph ]
  br label %.critedge6.us

.critedge6.us:                                    ; preds = %.critedge6.us, %.critedge6.lr.ph.split.us
  %.6297.us = phi ptr [ %.6.ph342.lcssa, %.critedge6.lr.ph.split.us ], [ %i.bt, %.critedge6.us ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.6297.us, i64 1 ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !15  ; 3 uses
  %i.bv = sext i8 %i.bu to i32
  %isdigittmp214.us = add nsw i32 %i.bv, -48
  %isdigit215.us = icmp ult i32 %isdigittmp214.us, 10
  %i.bw = icmp eq i8 %i.bu, 95
  %or.cond239.us = or i1 %i.bw, %isdigit215.us
  br i1 %or.cond239.us, label %.critedge6.us, label %.outer247._crit_edge, !llvm.loop !23

.critedge6.lr.ph.split:                           ; preds = %.critedge6.lr.ph.preheader, %.critedge6.lr.ph
  %.1177.ph340556 = phi double [ %i.bm, %.critedge6.lr.ph ], [ %.0176.ph.lcssa, %.critedge6.lr.ph.preheader ] ; 2 uses
  %.0172.ph341554 = phi i1 [ %spec.select240, %.critedge6.lr.ph ], [ false, %.critedge6.lr.ph.preheader ] ; 2 uses
  %.6.ph342554 = phi ptr [ %i.bn, %.critedge6.lr.ph ], [ %.5, %.critedge6.lr.ph.preheader ] ; 2 uses
  %.1163.ph343553 = phi i32 [ %i.bo, %.critedge6.lr.ph ], [ %.0162.ph.lcssa.fr, %.critedge6.lr.ph.preheader ] ; 2 uses
  %.0161.ph344552 = phi i32 [ %i.bp, %.critedge6.lr.ph ], [ 0, %.critedge6.lr.ph.preheader ] ; 2 uses
  %i.bx = phi i8 [ %i.bq, %.critedge6.lr.ph ], [ %i.ba, %.critedge6.lr.ph.preheader ]
  %isdigittmp214294345551 = phi i32 [ %isdigittmp214294, %.critedge6.lr.ph ], [ %isdigittmp214294337, %.critedge6.lr.ph.preheader ]
  %i.by = phi i1 [ %i.bs, %.critedge6.lr.ph ], [ %i.be, %.critedge6.lr.ph.preheader ]
  br i1 %i.by, label %.lr.ph, label %.outer247

.outer247._crit_edge:                             ; preds = %.outer247, %.lr.ph, %.critedge6.us
  %i.bz = phi i8 [ %i.bi, %.lr.ph ], [ %i.bu, %.critedge6.us ], [ %i.bq, %.outer247 ] ; 2 uses
  %.1177.ph.lcssa = phi double [ %.1177.ph340556, %.lr.ph ], [ %.1177.ph340.lcssa, %.critedge6.us ], [ %i.bm, %.outer247 ]
  %.0172.ph.lcssa = phi i1 [ %.0172.ph341554, %.lr.ph ], [ %.0172.ph341.lcssa, %.critedge6.us ], [ %spec.select240, %.outer247 ]
  %.1163.ph.lcssa = phi i32 [ %.1163.ph343553, %.lr.ph ], [ %smax, %.critedge6.us ], [ %i.bo, %.outer247 ] ; 2 uses
  %.0161.ph.lcssa = phi i32 [ %.0161.ph344552, %.lr.ph ], [ %i.bf, %.critedge6.us ], [ %i.bp, %.outer247 ]
  %.6.lcssa = phi ptr [ %i.bh, %.lr.ph ], [ %i.bt, %.critedge6.us ], [ %i.bn, %.outer247 ] ; 2 uses
  br i1 %.0172.ph.lcssa, label %bb.ak, label %.outer247._crit_edge.thread

bb.ak:                                            ; preds = %.outer247._crit_edge
  %i.ca = add nsw i32 %.2, %.0161.ph.lcssa
  %i.cb = sub nsw i32 0, %i.ca
  br label %.outer247._crit_edge.thread

.outer247._crit_edge.thread:                      ; preds = %.preheader246, %.outer247._crit_edge, %.outer250._crit_edge, %bb.ak
  %i.cc = phi i8 [ %i.bz, %bb.ak ], [ %.lcssa262, %.outer250._crit_edge ], [ %i.bz, %.outer247._crit_edge ], [ %i.ba, %.preheader246 ]
  %.2178 = phi double [ %.1177.ph.lcssa, %bb.ak ], [ %.0176.ph.lcssa, %.outer250._crit_edge ], [ %.0176.ph.lcssa, %.outer247._crit_edge ], [ %.0176.ph.lcssa, %.preheader246 ] ; 2 uses
  %.0174 = phi i32 [ %i.cb, %bb.ak ], [ 0, %.outer250._crit_edge ], [ 0, %.outer247._crit_edge ], [ 0, %.preheader246 ] ; 4 uses
  %.7 = phi ptr [ %.6.lcssa, %bb.ak ], [ %.3.lcssa, %.outer250._crit_edge ], [ %.6.lcssa, %.outer247._crit_edge ], [ %.5, %.preheader246 ] ; 5 uses
  %.2164 = phi i32 [ %.1163.ph.lcssa, %bb.ak ], [ %.0162.ph.lcssa.fr, %.outer250._crit_edge ], [ %.1163.ph.lcssa, %.outer247._crit_edge ], [ %.0162.ph.lcssa.fr, %.preheader246 ]
  %i.cd = icmp eq i32 %.2164, 0
  br i1 %i.cd, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.outer247._crit_edge.thread
  %i.ce = tail call ptr @__errno_location() #7
  store i32 22, ptr %i.ce, align 4, !tbaa !12
  %.not225 = icmp eq ptr %1, null
  br i1 %.not225, label %bb.bc, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %.7, ptr %1, align 8, !tbaa !13
  br label %bb.bc

bb.an:                                            ; preds = %.outer247._crit_edge.thread
  %i.cf = fneg double %.2178
  %.3179 = select i1 %i.w, double %i.cf, double %.2178 ; 4 uses
  switch i8 %i.cc, label %bb.au [
    i8 101, label %.critedge9
    i8 69, label %.critedge9
  ]

.critedge9:                                       ; preds = %bb.an, %bb.an
  %i.cg = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !15  ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %.critedge9
  %i.cj = sext i8 %i.ch to i32
  %memchr217 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.5, i32 %i.cj, i64 14)
  %i.ck = icmp eq ptr %memchr217, null
  br i1 %i.ck, label %bb.au, label %.preheader

.preheader:                                       ; preds = %bb.ao, %.preheader
  %.8 = phi ptr [ %i.cn, %.preheader ], [ %i.cg, %bb.ao ] ; 4 uses
  %i.cl = load i8, ptr %.8, align 1, !tbaa !15    ; 4 uses
  %i.cm = icmp eq i8 %i.cl, 95
  %i.cn = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 3 uses
  br i1 %i.cm, label %.preheader, label %bb.ap, !llvm.loop !24

bb.ap:                                            ; preds = %.preheader
  %i.co = icmp eq i8 %i.cl, 45
  switch i8 %i.cl, label %bb.aq [
    i8 45, label %bb.at
    i8 43, label %bb.at
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.cp = sext i8 %i.cl to i32
  %isdigittmp218 = add nsw i32 %i.cp, -48
  %isdigit219 = icmp ult i32 %isdigittmp218, 10
  br i1 %isdigit219, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not220 = icmp eq ptr %1, null
  br i1 %.not220, label %bb.bc, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store ptr %.8, ptr %1, align 8, !tbaa !13
  br label %bb.bc

bb.at:                                            ; preds = %bb.ap, %bb.ap, %bb.aq
  %.9 = phi ptr [ %.8, %bb.aq ], [ %i.cn, %bb.ap ], [ %i.cn, %bb.ap ] ; 3 uses
  %i.cq = load i8, ptr %.9, align 1, !tbaa !15    ; 2 uses
  %i.cr = sext i8 %i.cq to i32
  %isdigittmp221352362 = add nsw i32 %i.cr, -48   ; 2 uses
  %isdigit222353363 = icmp ult i32 %isdigittmp221352362, 10
  %i.cs = icmp eq i8 %i.cq, 95                    ; 2 uses
  %or.cond241354364 = or i1 %i.cs, %isdigit222353363
  br i1 %or.cond241354364, label %.critedge11.lr.ph, label %.outer._crit_edge

.critedge11.lr.ph:                                ; preds = %bb.at, %.outer
  %i.ct = phi i1 [ %i.dd, %.outer ], [ %i.cs, %bb.at ]
  %isdigittmp221352367 = phi i32 [ %isdigittmp221352, %.outer ], [ %isdigittmp221352362, %bb.at ]
  %.0165.ph366 = phi i32 [ %i.cz, %.outer ], [ 0, %bb.at ] ; 2 uses
  %.10.ph365 = phi ptr [ %i.da, %.outer ], [ %.9, %bb.at ] ; 2 uses
  br i1 %i.ct, label %.lr.ph561, label %.outer

.critedge11:                                      ; preds = %.lr.ph561
  br i1 %i.cx, label %.lr.ph561, label %.outer, !llvm.loop !25

.lr.ph561:                                        ; preds = %.critedge11.lr.ph, %.critedge11
  %.10355560 = phi ptr [ %i.cu, %.critedge11 ], [ %.10.ph365, %.critedge11.lr.ph ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.10355560, i64 1 ; 4 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !15  ; 2 uses
  %i.cw = sext i8 %i.cv to i32
  %isdigittmp221 = add nsw i32 %i.cw, -48         ; 2 uses
  %isdigit222 = icmp ult i32 %isdigittmp221, 10
  %i.cx = icmp eq i8 %i.cv, 95                    ; 2 uses
  %or.cond241 = or i1 %i.cx, %isdigit222
  br i1 %or.cond241, label %.critedge11, label %.outer._crit_edge, !llvm.loop !25

.outer:                                           ; preds = %.critedge11, %.critedge11.lr.ph
  %isdigittmp221356.lcssa = phi i32 [ %isdigittmp221352367, %.critedge11.lr.ph ], [ %isdigittmp221, %.critedge11 ]
  %.10355.lcssa = phi ptr [ %.10.ph365, %.critedge11.lr.ph ], [ %i.cu, %.critedge11 ]
  %i.cy = mul nsw i32 %.0165.ph366, 10
  %i.cz = add nsw i32 %isdigittmp221356.lcssa, %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.10355.lcssa, i64 1 ; 3 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !15  ; 2 uses
  %i.dc = sext i8 %i.db to i32
  %isdigittmp221352 = add nsw i32 %i.dc, -48      ; 2 uses
  %isdigit222353 = icmp ult i32 %isdigittmp221352, 10
  %i.dd = icmp eq i8 %i.db, 95                    ; 2 uses
  %or.cond241354 = or i1 %i.dd, %isdigit222353
  br i1 %or.cond241354, label %.critedge11.lr.ph, label %.outer._crit_edge, !llvm.loop !25

.outer._crit_edge:                                ; preds = %.outer, %.lr.ph561, %bb.at
  %.0165.ph.lcssa = phi i32 [ %.0165.ph366, %.lr.ph561 ], [ 0, %bb.at ], [ %i.cz, %.outer ] ; 2 uses
  %.10.lcssa = phi ptr [ %i.cu, %.lr.ph561 ], [ %.9, %bb.at ], [ %i.da, %.outer ]
  %i.de = sub nsw i32 0, %.0165.ph.lcssa
  %spec.select242 = select i1 %i.co, i32 %i.de, i32 %.0165.ph.lcssa
  %i.df = add nsw i32 %spec.select242, %.0174
  br label %bb.au

bb.au:                                            ; preds = %.critedge9, %bb.ao, %bb.an, %.outer._crit_edge
  %.1175 = phi i32 [ %.0174, %bb.an ], [ %i.df, %.outer._crit_edge ], [ %.0174, %bb.ao ], [ %.0174, %.critedge9 ] ; 6 uses
  %.11 = phi ptr [ %.7, %bb.an ], [ %.10.lcssa, %.outer._crit_edge ], [ %.7, %bb.ao ], [ %.7, %.critedge9 ]
  %.not223 = icmp eq ptr %1, null
  br i1 %.not223, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store ptr %.11, ptr %1, align 8, !tbaa !13
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.dg = add i32 %.1175, -1025
  %or.cond13 = icmp ult i32 %i.dg, -2046
  br i1 %or.cond13, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dh = tail call ptr @__errno_location() #7
  store i32 34, ptr %i.dh, align 4, !tbaa !12
  br label %bb.bc

bb.ay:                                            ; preds = %bb.aw
  %i.di = icmp eq i32 %.1175, 0
  br i1 %i.di, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dj = add nsw i32 %.1175, 19
  %i.dk = icmp ult i32 %i.dj, 39
  br i1 %i.dk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dl = tail call i32 @llvm.abs.i32(i32 %.1175, i1 false) ; 4 uses
  %xtraiter = and i32 %i.dl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ba, %.prol.preheader
  %.0371.prol = phi i32 [ %i.dm, %.prol.preheader ], [ %i.dl, %bb.ba ]
  %.0159370.prol = phi double [ %i.dn, %.prol.preheader ], [ 1.000000e+00, %bb.ba ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ba ]
  %i.dm = add nsw i32 %.0371.prol, -1             ; 2 uses
  %i.dn = fmul double %.0159370.prol, 1.000000e+01 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !26

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ba
  %.lcssa.unr = phi double [ poison, %bb.ba ], [ %i.dn, %.prol.preheader ]
  %.0371.unr = phi i32 [ %i.dl, %bb.ba ], [ %i.dm, %.prol.preheader ]
  %.0159370.unr = phi double [ 1.000000e+00, %bb.ba ], [ %i.dn, %.prol.preheader ]
  %i.do = icmp ult i32 %i.dl, 8
  br i1 %i.do, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.0371 = phi i32 [ %i.dw, %.new ], [ %.0371.unr, %.prol.loopexit ]
  %.0159370 = phi double [ %i.dx, %.new ], [ %.0159370.unr, %.prol.loopexit ]
  %i.dp = fmul double %.0159370, 1.000000e+01
  %i.dq = fmul double %i.dp, 1.000000e+01
  %i.dr = fmul double %i.dq, 1.000000e+01
  %i.ds = fmul double %i.dr, 1.000000e+01
  %i.dt = fmul double %i.ds, 1.000000e+01
  %i.du = fmul double %i.dt, 1.000000e+01
  %i.dv = fmul double %i.du, 1.000000e+01
  %i.dw = add nsw i32 %.0371, -8                  ; 2 uses
  %i.dx = fmul double %i.dv, 1.000000e+01         ; 2 uses
  %.not224.7 = icmp eq i32 %i.dw, 0
  br i1 %.not224.7, label %.unr-lcssa, label %.new, !llvm.loop !28

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.dx, %.new ] ; 2 uses
  %i.dy = icmp slt i32 %.1175, 0
  %i.dz = fdiv double %.3179, %.lcssa
  %i.ea = fmul double %.3179, %.lcssa
  %i.eb = select i1 %i.dy, double %i.dz, double %i.ea
  br label %bb.bc
end_hunk_0
