Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/emapCore?download=true
inline.NumInlined: 489
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 44
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@Emap_ManMapAigStructural:bb.a
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.om = load i32, ptr %i.ex, align 8, !tbaa !43 ; 2 uses
  %i.on = sext i32 %i.om to i64
  %i.oo = icmp slt i64 %indvars.iv.next.i, %i.on
  br i1 %i.oo, label %bb.w, label %._crit_edge.loopexit.i, !llvm.loop !74

._crit_edge.loopexit.i:                           ; preds = %Emap_CutMergeLeaves.exit.i
  %.pre187.i = load i32, ptr %i.eu, align 8, !tbaa !43
  br label %._crit_edge.i516

._crit_edge.i516:                                 ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.op = phi i32 [ %.pre187.i, %._crit_edge.loopexit.i ], [ %i.ge, %.preheader.i ] ; 2 uses
  %i.oq = phi i32 [ %i.om, %._crit_edge.loopexit.i ], [ %i.gf, %.preheader.i ]
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1 ; 2 uses
  %i.or = sext i32 %i.op to i64
  %i.os = icmp slt i64 %indvars.iv.next166.i, %i.or
  br i1 %i.os, label %.preheader.i, label %Emap_NodeMergeCuts.exit, !llvm.loop !75

Emap_NodeMergeCuts.exit:                          ; preds = %._crit_edge.i516, %Emap_NodeAddUnitCut.exit.i, %.preheader.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.val482 = load i32, ptr %i.ep, align 8, !tbaa !40
  %i.ot = zext i32 %.val482 to i64
  %i.ou = getelementptr inbounds nuw [5320 x i8], ptr %i.al, i64 %i.ot
  call fastcc void @Emap_NodeMatch(ptr noundef nonnull %i.al, ptr noundef %i.ou, ptr noundef %8, ptr noundef %i.em, ptr noundef null, ptr noundef null)
  %.val481 = load i32, ptr %i.ep, align 8, !tbaa !40
  %i.ov = zext i32 %.val481 to i64
  %i.ow = getelementptr inbounds nuw [5320 x i8], ptr %i.al, i64 %i.ov
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 5128
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !77
  %.not468 = icmp eq ptr %i.oy, null
  %i.oz = zext i1 %.not468 to i32
  %spec.select1222 = add nsw i32 %.0384947, %i.oz
  br label %.critedge

.critedge:                                        ; preds = %Emap_NodeMergeCuts.exit, %bb.s, %bb.r
  %.1385 = phi i32 [ %.0384947, %bb.r ], [ %.0384947, %bb.s ], [ %spec.select1222, %Emap_NodeMergeCuts.exit ] ; 3 uses
  %indvars.iv.next998 = add nuw nsw i64 %indvars.iv997, 1 ; 2 uses
  %.val469 = load i32, ptr %i.cs, align 4, !tbaa !37
  %i.pa = sext i32 %.val469 to i64
  %i.pb = icmp slt i64 %indvars.iv.next998, %i.pa
  br i1 %i.pb, label %bb.r, label %.critedge2, !llvm.loop !78

.critedge2:                                       ; preds = %.critedge
  %.not424 = icmp eq i32 %.1385, 0
  br i1 %.not424, label %.critedge2.thread, label %bb.bk

bb.bk:                                            ; preds = %.critedge2
  %i.pc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.1385) ; 0 uses
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge.preheader, %bb.bk, %.critedge2
  %.not425 = icmp eq i32 %2, 0                    ; 6 uses
  br i1 %.not425, label %Emap_ManComputeMogTuples.exit, label %bb.bl

bb.bl:                                            ; preds = %.critedge2.thread
  %i.pd = tail call ptr @getenv(ptr noundef nonnull @.str.21) #19
  %.not.i549 = icmp eq ptr %i.pd, null            ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %9, i8 0, i64 112, i1 false)
  %i.pe = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !79 ; 4 uses
  %i.pg = icmp eq i32 %i.pf, 0
  br i1 %i.pg, label %Emap_ManComputeMogTuples.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val231.i = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  %i.ph = getelementptr i8, ptr %.val231.i, i64 4 ; 3 uses
  %.val231.val.i = load i32, ptr %i.ph, align 4, !tbaa !37 ; 3 uses
  %i.pi = sext i32 %.val231.val.i to i64          ; 2 uses
  %i.pj = shl nsw i64 %i.pi, 2                    ; 3 uses
  %i.pk = tail call noalias ptr @malloc(i64 noundef %i.pj) #21 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.pk, ptr %i.pl, align 8, !tbaa !80
  %i.pm = tail call noalias ptr @malloc(i64 noundef %i.pj) #21 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr %i.pm, ptr %i.pn, align 8, !tbaa !83
  %i.po = icmp sgt i32 %.val231.val.i, 0
  br i1 %i.po, label %.lr.ph.i569, label %._crit_edge.i550

.lr.ph.i569:                                      ; preds = %bb.bm, %.lr.ph.i569
  %indvars.iv.i570 = phi i64 [ %indvars.iv.next.i571, %.lr.ph.i569 ], [ 0, %bb.bm ] ; 3 uses
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv.i570
  store i32 -1, ptr %i.pp, align 4, !tbaa !58
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv.i570
  store i32 -1, ptr %i.pq, align 4, !tbaa !58
  %indvars.iv.next.i571 = add nuw nsw i64 %indvars.iv.i570, 1 ; 2 uses
  %.val229.val.i = load i32, ptr %i.ph, align 4, !tbaa !37 ; 2 uses
  %i.pr = sext i32 %.val229.val.i to i64          ; 3 uses
  %i.ps = icmp slt i64 %indvars.iv.next.i571, %i.pr
  br i1 %i.ps, label %.lr.ph.i569, label %._crit_edge.loopexit.i572, !llvm.loop !84

._crit_edge.loopexit.i572:                        ; preds = %.lr.ph.i569
  %.pre374.i = shl nsw i64 %i.pr, 2
  br label %._crit_edge.i550

._crit_edge.i550:                                 ; preds = %._crit_edge.loopexit.i572, %bb.bm
  %.pre-phi375.i = phi i64 [ %.pre374.i, %._crit_edge.loopexit.i572 ], [ %i.pj, %bb.bm ]
  %.pre-phi.i = phi i64 [ %i.pr, %._crit_edge.loopexit.i572 ], [ %i.pi, %bb.bm ] ; 2 uses
  %.val290.i = phi i32 [ %.val229.val.i, %._crit_edge.loopexit.i572 ], [ %.val231.val.i, %bb.bm ] ; 4 uses
  %i.pt = shl nsw i32 %.val290.i, 8
  %i.pu = sext i32 %i.pt to i64
  %i.pv = mul nsw i64 %i.pu, 48
  %i.pw = tail call noalias ptr @malloc(i64 noundef %i.pv) #21 ; 10 uses
  %i.px = tail call noalias ptr @malloc(i64 noundef %.pre-phi375.i) #21 ; 5 uses
  %i.py = icmp sgt i32 %.val290.i, 0              ; 2 uses
  br i1 %i.py, label %.lr.ph275.preheader.i, label %._crit_edge276.i

.lr.ph275.preheader.i:                            ; preds = %._crit_edge.i550
  %i.pz = zext nneg i32 %.val290.i to i64
  %i.qa = shl nuw nsw i64 %i.pz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.px, i8 -1, i64 %i.qa, i1 false), !tbaa !58
  br label %._crit_edge276.i

._crit_edge276.i:                                 ; preds = %.lr.ph275.preheader.i, %._crit_edge.i550
  br i1 %.not.i549, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge276.i
  %i.qb = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  store i32 0, ptr %i.qc, align 4, !tbaa !85
  store i32 100, ptr %i.qb, align 8, !tbaa !86
  %i.qd = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  store ptr %i.qd, ptr %i.qe, align 8, !tbaa !87
  %i.qf = tail call noalias ptr @calloc(i64 noundef %.pre-phi.i, i64 noundef 4) #20
  %i.qg = tail call noalias ptr @calloc(i64 noundef %.pre-phi.i, i64 noundef 1) #20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge276.i
  %.0196.i = phi ptr [ %i.qb, %bb.bn ], [ null, %._crit_edge276.i ] ; 6 uses
  %.0195.i = phi ptr [ %i.qf, %bb.bn ], [ null, %._crit_edge276.i ] ; 5 uses
  %.0194.i = phi ptr [ %i.qg, %bb.bn ], [ null, %._crit_edge276.i ] ; 13 uses
  br i1 %i.py, label %.lr.ph294.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.bo
  tail call void @qsort(ptr noundef %i.pw, i64 noundef 0, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  br label %._crit_edge323.i

.lr.ph294.i:                                      ; preds = %bb.bo
  %i.qh = getelementptr i8, ptr %.val231.i, i64 8
  %.val234.val.i = load ptr, ptr %i.qh, align 8, !tbaa !56
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit267.i, %.lr.ph294.i
  %.val370.i = phi i32 [ %.val290.i, %.lr.ph294.i ], [ %.val.i, %.loopexit267.i ] ; 2 uses
  %indvars.iv351.i = phi i64 [ 0, %.lr.ph294.i ], [ %indvars.iv.next352.i, %.loopexit267.i ] ; 2 uses
  %.0182292.i = phi i32 [ 0, %.lr.ph294.i ], [ %.4186.i, %.loopexit267.i ] ; 4 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %.val234.val.i, i64 %indvars.iv351.i
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !57 ; 3 uses
  %i.qk = icmp eq ptr %i.qj, null
  br i1 %i.qk, label %.loopexit267.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ql = getelementptr i8, ptr %i.qj, i64 28
  %.val235.i = load i32, ptr %i.ql, align 4, !tbaa !60
  %.not262.i = icmp eq i32 %.val235.i, 2
  br i1 %.not262.i, label %.preheader266.i, label %.loopexit267.i

.preheader266.i:                                  ; preds = %bb.bq
  %i.qm = getelementptr i8, ptr %i.qj, i64 16     ; 4 uses
  %.val233.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %i.qn = zext i32 %.val233.i to i64
  %i.qo = getelementptr inbounds nuw [5320 x i8], ptr %i.al, i64 %i.qn ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !43 ; 2 uses
  %i.qq = icmp sgt i32 %i.qp, 0
  br i1 %i.qq, label %.lr.ph284.split.us.preheader.i, label %._crit_edge285.1.i

.lr.ph284.split.us.preheader.i:                   ; preds = %.preheader266.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %wide.trip.count349.i = zext nneg i32 %i.qp to i64
  br label %.lr.ph284.split.us.i

.lr.ph284.split.us.i:                             ; preds = %bb.br, %.lr.ph284.split.us.preheader.i
  %indvars.iv346.i = phi i64 [ 0, %.lr.ph284.split.us.preheader.i ], [ %indvars.iv.next347.i, %bb.br ] ; 3 uses
  %.2184281.us.i = phi i32 [ %.0182292.i, %.lr.ph284.split.us.preheader.i ], [ %.3185.us.i, %bb.br ] ; 3 uses
  %i.qs = getelementptr inbounds nuw [40 x i8], ptr %i.qr, i64 %indvars.iv346.i ; 3 uses
  %i.qt = load i32, ptr %i.qs, align 8, !tbaa !45 ; 3 uses
  %i.qu = add i32 %i.qt, -4
  %or.cond.us.i = icmp ult i32 %i.qu, -2
  br i1 %or.cond.us.i, label %bb.br, label %._crit_edge280.us.i

._crit_edge280.us.i:                              ; preds = %.lr.ph284.split.us.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 32
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !48
  %.val232.us.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %i.qx = sext i32 %.2184281.us.i to i64
  %i.qy = getelementptr inbounds [48 x i8], ptr %i.pw, i64 %i.qx ; 6 uses
  store i32 %.val232.us.i, ptr %i.qy, align 8, !tbaa !88
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  store i32 0, ptr %i.qz, align 4, !tbaa !90
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rb = trunc nuw nsw i64 %indvars.iv346.i to i32
  store i32 %i.rb, ptr %i.ra, align 8, !tbaa !91
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 12
  store i32 %i.qt, ptr %i.rc, align 4, !tbaa !92
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qy, i64 40
  store i64 %i.qw, ptr %i.rd, align 8, !tbaa !93
  %i.re = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.rg = shl nuw nsw i32 %i.qt, 2
  %i.rh = zext nneg i32 %i.rg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.rf, ptr nonnull readonly align 4 %i.re, i64 %i.rh, i1 false), !tbaa !58
  %i.ri = add nsw i32 %.2184281.us.i, 1
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge280.us.i, %.lr.ph284.split.us.i
  %.3185.us.i = phi i32 [ %i.ri, %._crit_edge280.us.i ], [ %.2184281.us.i, %.lr.ph284.split.us.i ] ; 3 uses
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count349.i
  br i1 %exitcond350.not.i, label %._crit_edge285.i, label %.lr.ph284.split.us.i, !llvm.loop !94

._crit_edge285.i:                                 ; preds = %bb.br
  %.val233.1.pre.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %.phi.trans.insert.i567 = zext i32 %.val233.1.pre.i to i64
  %.phi.trans.insert369.i = getelementptr inbounds nuw [5320 x i8], ptr %i.al, i64 %.phi.trans.insert.i567 ; 2 uses
  %.pre.i568 = load i32, ptr %.phi.trans.insert369.i, align 8, !tbaa !43 ; 2 uses
  %i.rj = icmp sgt i32 %.pre.i568, 0
  br i1 %i.rj, label %.lr.ph284.split.preheader.1.i, label %._crit_edge285.1.i

.lr.ph284.split.preheader.1.i:                    ; preds = %._crit_edge285.i
  %i.rk = getelementptr inbounds nuw i8, ptr %.phi.trans.insert369.i, i64 8
  %wide.trip.count.1.i = zext nneg i32 %.pre.i568 to i64
  br label %.lr.ph284.split.1.i

.lr.ph284.split.1.i:                              ; preds = %bb.bs, %.lr.ph284.split.preheader.1.i
  %indvars.iv340.1.i = phi i64 [ 0, %.lr.ph284.split.preheader.1.i ], [ %indvars.iv.next341.1.i, %bb.bs ] ; 3 uses
  %.2184281.1.i = phi i32 [ %.3185.us.i, %.lr.ph284.split.preheader.1.i ], [ %.3185.1.i, %bb.bs ] ; 3 uses
  %i.rl = getelementptr inbounds nuw [40 x i8], ptr %i.rk, i64 %indvars.iv340.1.i ; 3 uses
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !45 ; 4 uses
  %i.rn = add i32 %i.rm, -4
  %or.cond.1.i = icmp ult i32 %i.rn, -2
  br i1 %or.cond.1.i, label %bb.bs, label %._crit_edge280.1.i

._crit_edge280.1.i:                               ; preds = %.lr.ph284.split.1.i
  %i.ro = shl nuw nsw i32 1, %i.rm
  %i.rp = zext nneg i32 %i.ro to i64
  %notmask.i.1.i = shl nsw i64 -1, %i.rp
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !48
  %i.rs = xor i64 %notmask.i.1.i, %i.rr
  %i.rt = xor i64 %i.rs, -1
  %.val232.1.i = load i32, ptr %i.qm, align 8, !tbaa !40
  %i.ru = sext i32 %.2184281.1.i to i64
  %i.rv = getelementptr inbounds [48 x i8], ptr %i.pw, i64 %i.ru ; 6 uses
  store i32 %.val232.1.i, ptr %i.rv, align 8, !tbaa !88
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  store i32 1, ptr %i.rw, align 4, !tbaa !90
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.ry = trunc nuw nsw i64 %indvars.iv340.1.i to i32
  store i32 %i.ry, ptr %i.rx, align 8, !tbaa !91
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  store i32 %i.rm, ptr %i.rz, align 4, !tbaa !92
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rv, i64 40
  store i64 %i.rt, ptr %i.sa, align 8, !tbaa !93
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  %i.sd = shl nuw nsw i32 %i.rm, 2
  %i.se = zext nneg i32 %i.sd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sc, ptr nonnull readonly align 4 %i.sb, i64 %i.se, i1 false), !tbaa !58
  %i.sf = add nsw i32 %.2184281.1.i, 1
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge280.1.i, %.lr.ph284.split.1.i
  %.3185.1.i = phi i32 [ %i.sf, %._crit_edge280.1.i ], [ %.2184281.1.i, %.lr.ph284.split.1.i ] ; 2 uses
  %indvars.iv.next341.1.i = add nuw nsw i64 %indvars.iv340.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next341.1.i, %wide.trip.count.1.i
  br i1 %exitcond.1.not.i, label %._crit_edge285.1.i, label %.lr.ph284.split.1.i, !llvm.loop !94

._crit_edge285.1.i:                               ; preds = %bb.bs, %._crit_edge285.i, %.preheader266.i
  %.2184.lcssa.1.i = phi i32 [ %.3185.us.i, %._crit_edge285.i ], [ %.0182292.i, %.preheader266.i ], [ %.3185.1.i, %bb.bs ]
  %.val.pre.i = load i32, ptr %i.ph, align 4, !tbaa !37
  br label %.loopexit267.i

.loopexit267.i:                                   ; preds = %._crit_edge285.1.i, %bb.bq, %bb.bp
  %.val.i = phi i32 [ %.val370.i, %bb.bp ], [ %.val370.i, %bb.bq ], [ %.val.pre.i, %._crit_edge285.1.i ] ; 2 uses
  %.4186.i = phi i32 [ %.0182292.i, %bb.bp ], [ %.0182292.i, %bb.bq ], [ %.2184.lcssa.1.i, %._crit_edge285.1.i ] ; 8 uses
  %indvars.iv.next352.i = add nuw nsw i64 %indvars.iv351.i, 1 ; 2 uses
  %i.sg = sext i32 %.val.i to i64
  %i.sh = icmp slt i64 %indvars.iv.next352.i, %i.sg
  br i1 %i.sh, label %bb.bp, label %.critedge.i, !llvm.loop !95

.critedge.i:                                      ; preds = %.loopexit267.i
  %i.si = sext i32 %.4186.i to i64
  tail call void @qsort(ptr noundef %i.pw, i64 noundef %i.si, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  %i.sj = icmp sgt i32 %.4186.i, 0
  br i1 %i.sj, label %.lr.ph322.i, label %._crit_edge323.i

.lr.ph322.i:                                      ; preds = %.critedge.i
  %i.sk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.sl = getelementptr i8, ptr %.0196.i, i64 4   ; 3 uses
  %i.sm = getelementptr i8, ptr %.0196.i, i64 8
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.st = icmp sgt i32 %i.pf, 0
  br i1 %i.st, label %.lr.ph322.split.preheader.i, label %._crit_edge323.i

.lr.ph322.split.preheader.i:                      ; preds = %.lr.ph322.i
  %i.su = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.3193319.i = add nsw i32 %.4186.i, -1
  %i.sv = zext nneg i32 %.3193319.i to i64
  %i.sw = load ptr, ptr %i.su, align 8
  br label %.lr.ph322.split.i

.loopexit265.i:                                   ; preds = %.loopexit.i, %.lr.ph322.split.i
  %i.sx = phi i32 [ %i.ta, %.lr.ph322.split.i ], [ %i.adv, %.loopexit.i ]
  %i.sy = phi i32 [ %i.tb, %.lr.ph322.split.i ], [ %i.adv, %.loopexit.i ]
  %.1181.lcssa.i = phi i32 [ %.0180320.i, %.lr.ph322.split.i ], [ %.8.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next366.i = add nsw i64 %indvars.iv365.i, -1
  %i.sz = icmp sgt i64 %indvars.iv365.i, 0
  br i1 %i.sz, label %.lr.ph322.split.i, label %._crit_edge323.i, !llvm.loop !96

.lr.ph322.split.i:                                ; preds = %.loopexit265.i, %.lr.ph322.split.preheader.i
  %i.ta = phi i32 [ %i.pf, %.lr.ph322.split.preheader.i ], [ %i.sx, %.loopexit265.i ] ; 2 uses
  %i.tb = phi i32 [ %i.pf, %.lr.ph322.split.preheader.i ], [ %i.sy, %.loopexit265.i ] ; 2 uses
  %indvars.iv365.i = phi i64 [ %i.sv, %.lr.ph322.split.preheader.i ], [ %indvars.iv.next366.i, %.loopexit265.i ] ; 3 uses
  %.0180320.i = phi i32 [ 0, %.lr.ph322.split.preheader.i ], [ %.1181.lcssa.i, %.loopexit265.i ] ; 2 uses
  %i.tc = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %indvars.iv365.i ; 6 uses
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !88
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr inbounds [5320 x i8], ptr %i.al, i64 %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !91
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [40 x i8], ptr %i.tg, i64 %i.tj ; 5 uses
  %i.tl = icmp sgt i32 %i.tb, 0
  br i1 %i.tl, label %.lr.ph317.i, label %.loopexit265.i

.lr.ph317.i:                                      ; preds = %.lr.ph322.split.i
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tc, i64 40
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 4 ; 13 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tc, i64 4
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.i, %.lr.ph317.i
  %i.tp = phi i32 [ %i.ta, %.lr.ph317.i ], [ %i.adv, %.loopexit.i ]
  %indvars.iv362.i = phi i64 [ 0, %.lr.ph317.i ], [ %indvars.iv.next363.i, %.loopexit.i ] ; 3 uses
  %.1181315.i = phi i32 [ %.0180320.i, %.lr.ph317.i ], [ %.8.i, %.loopexit.i ] ; 2 uses
  %i.tq = getelementptr inbounds nuw [144 x i8], ptr %i.sw, i64 %indvars.iv362.i ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !97
  %i.tt = load i32, ptr %i.tk, align 8, !tbaa !45
  %.not211.i = icmp eq i32 %i.ts, %i.tt
  br i1 %.not211.i, label %.preheader264.i, label %.loopexit.i

.preheader264.i:                                  ; preds = %bb.bt
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 80 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 72 ; 2 uses
  %i.tw = trunc nuw nsw i64 %indvars.iv362.i to i32
  br label %bb.bu

bb.bu:                                            ; preds = %.critedge2.i, %.preheader264.i
  %.not212.i = phi i1 [ true, %.preheader264.i ], [ false, %.critedge2.i ] ; 3 uses
  %.0177312.i = phi i32 [ 0, %.preheader264.i ], [ 1, %.critedge2.i ]
  %.2311.i = phi i32 [ %.1181315.i, %.preheader264.i ], [ %.7.i, %.critedge2.i ] ; 4 uses
  %.in.i = select i1 %.not212.i, ptr %i.tv, ptr %i.tu
  %i.tx = load i64, ptr %.in.i, align 8, !tbaa !99
  %.in213.i = select i1 %.not212.i, ptr %i.tu, ptr %i.tv
  %i.ty = load i64, ptr %.in213.i, align 8, !tbaa !99 ; 4 uses
  %i.tz = load i64, ptr %i.tm, align 8, !tbaa !93
  %.not214.i = icmp eq i64 %i.tx, %i.tz
  br i1 %.not214.i, label %bb.bv, label %.critedge2.i

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.ua = load i32, ptr %i.tk, align 8, !tbaa !45 ; 5 uses
  %i.ub = icmp slt i32 %i.ua, 1                   ; 3 uses
  %.pre1061 = zext nneg i32 %i.ua to i64          ; 3 uses
  br i1 %i.ub, label %.lr.ph50.i.i.preheader, label %.lr.ph.i.i551

.lr.ph.i.i551:                                    ; preds = %bb.bv
  %i.uc = shl nuw nsw i64 %.pre1061, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sk, ptr nonnull readonly align 4 %i.tn, i64 %i.uc, i1 false), !tbaa !58
  br label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %bb.bv, %.lr.ph.i.i551
  br label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph50.i.i.preheader, %Emap_PackEntryCompare.exit.i.i
  %.02249.i.i = phi i32 [ %.1.i.i, %Emap_PackEntryCompare.exit.i.i ], [ %.4186.i, %.lr.ph50.i.i.preheader ] ; 2 uses
  %.02348.i.i = phi i32 [ %.124.i.i, %Emap_PackEntryCompare.exit.i.i ], [ 0, %.lr.ph50.i.i.preheader ] ; 2 uses
  %i.ud = add nuw nsw i32 %.02348.i.i, %.02249.i.i
  %i.ue = lshr i32 %i.ud, 1                       ; 3 uses
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %i.uf ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 12
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !92 ; 2 uses
  %.not.i.i.i553 = icmp eq i32 %i.ui, %i.ua
  br i1 %.not.i.i.i553, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph50.i.i
  %i.uj = sub nsw i32 %i.ui, %i.ua
  br label %Emap_PackEntryCompare.exit.i.i

bb.bx:                                            ; preds = %.lr.ph50.i.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ug, i64 40
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !93 ; 2 uses
  %i.um = icmp ult i64 %i.ul, %i.ty
  br i1 %i.um, label %Emap_PackEntryCompare.exit.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.un = icmp ugt i64 %i.ul, %i.ty               ; 2 uses
  %brmerge.i.i = or i1 %i.ub, %i.un
  %.mux.i.i = zext i1 %i.un to i32
  br i1 %brmerge.i.i, label %Emap_PackEntryCompare.exit.i.i, label %.lr.ph.i.i.i563

.lr.ph.i.i.i563:                                  ; preds = %bb.by
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ca
  %indvars.iv.next.i.i.i565 = add nuw nsw i64 %indvars.iv.i.i.i564, 1 ; 2 uses
  %exitcond.not.i.i.i566 = icmp eq i64 %indvars.iv.next.i.i.i565, %.pre1061
  br i1 %exitcond.not.i.i.i566, label %Emap_PackEntryCompare.exit.i.i, label %bb.ca, !llvm.loop !100

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.i.i.i563
  %indvars.iv.i.i.i564 = phi i64 [ 0, %.lr.ph.i.i.i563 ], [ %indvars.iv.next.i.i.i565, %bb.bz ] ; 3 uses
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %indvars.iv.i.i.i564
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !58 ; 2 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %indvars.iv.i.i.i564
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !58 ; 2 uses
  %.not28.i.i.i = icmp eq i32 %i.uq, %i.us
  br i1 %.not28.i.i.i, label %bb.bz, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ut = sub nsw i32 %i.uq, %i.us
  br label %Emap_PackEntryCompare.exit.i.i

Emap_PackEntryCompare.exit.i.i:                   ; preds = %bb.bz, %bb.cb, %bb.by, %bb.bx, %bb.bw
  %.021.i.i.i = phi i32 [ %i.uj, %bb.bw ], [ %.mux.i.i, %bb.by ], [ -1, %bb.bx ], [ %i.ut, %bb.cb ], [ 0, %bb.bz ]
  %i.uu = icmp slt i32 %.021.i.i.i, 0             ; 2 uses
  %i.uv = add nuw nsw i32 %i.ue, 1
  %.124.i.i = select i1 %i.uu, i32 %i.uv, i32 %.02348.i.i ; 6 uses
  %.1.i.i = select i1 %i.uu, i32 %.02249.i.i, i32 %i.ue ; 2 uses
  %i.uw = icmp slt i32 %.124.i.i, %.1.i.i
  br i1 %i.uw, label %.lr.ph50.i.i, label %._crit_edge.i.i554, !llvm.loop !101

._crit_edge.i.i554:                               ; preds = %Emap_PackEntryCompare.exit.i.i
  %i.ux = icmp eq i32 %.124.i.i, %.4186.i
  br i1 %i.ux, label %Emap_PackEntryFindFirst.exit.thread.i, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.i.i554
  %i.uy = zext nneg i32 %.124.i.i to i64
  %i.uz = getelementptr inbounds nuw [48 x i8], ptr %i.pw, i64 %i.uy ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 12
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !92
  %.not.i26.i.i = icmp eq i32 %i.vb, %i.ua
  br i1 %.not.i26.i.i, label %bb.cd, label %Emap_PackEntryFindFirst.exit.thread.i

bb.cd:                                            ; preds = %bb.cc
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 40
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !93
  %or.cond.not.i.i = icmp ne i64 %i.vd, %i.ty     ; 2 uses
  %brmerge66.i.i = or i1 %i.ub, %or.cond.not.i.i
end_hunk_0
begin_hunk_1_@Emap_ManTryExactRecoveries:bb.a
  %i.api = getelementptr inbounds nuw i8, ptr %7, i64 %.idx.i82 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aph, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.api, i64 96, i1 false), !tbaa.struct !135
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apg, i64 5224
  %i.apk = getelementptr inbounds nuw i8, ptr %i.api, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.apj, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.apk, i64 96, i1 false), !tbaa.struct !135
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %.val.i84 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.apl = getelementptr i8, ptr %.val.i84, i64 4
  %.val.val.i85 = load i32, ptr %i.apl, align 4, !tbaa !37
  %i.apm = sext i32 %.val.val.i85 to i64
  %i.apn = icmp slt i64 %indvars.iv.next.i83, %i.apm
  br i1 %i.apn, label %.lr.ph.i80, label %Emap_ManRestoreBests.exit86, !llvm.loop !139

Emap_ManRestoreBests.exit86:                      ; preds = %.lr.ph.i80, %bb.en
  %i.apo = tail call fastcc ptr @Emap_ManBuildMappedNtk(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) ; 4 uses
  %i.app = icmp eq ptr %i.apo, null
  br i1 %i.app, label %Emap_ManComputeActualMappedStats.exit88, label %bb.eo

bb.eo:                                            ; preds = %Emap_ManRestoreBests.exit86
  %i.apq = tail call float @Abc_NtkDelayTrace(ptr noundef nonnull %i.apo, ptr noundef null, ptr noundef null, i32 noundef 0) #19
  %i.apr = fpext float %i.apq to double
  %i.aps = tail call double @Abc_NtkGetMappedArea(ptr noundef nonnull %i.apo) #19
  %i.apt = fptrunc double %i.aps to float
  tail call void @Abc_NtkDelete(ptr noundef nonnull %i.apo) #19
  br label %Emap_ManComputeActualMappedStats.exit88

Emap_ManComputeActualMappedStats.exit88:          ; preds = %Emap_ManRestoreBests.exit86, %bb.eo
  %.0105 = phi double [ %i.apr, %bb.eo ], [ 1.000000e+20, %Emap_ManRestoreBests.exit86 ] ; 2 uses
  %.0.i87 = phi float [ %i.apt, %bb.eo ], [ 1.000000e+20, %Emap_ManRestoreBests.exit86 ] ; 2 uses
  %.val10.i89 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.apu = getelementptr i8, ptr %.val10.i89, i64 4
  %.val.val11.i90 = load i32, ptr %i.apu, align 4, !tbaa !37
  %i.apv = icmp sgt i32 %.val.val11.i90, 0
  br i1 %i.apv, label %.lr.ph.i91, label %Emap_ManRestoreBests.exit77

.lr.ph.i91:                                       ; preds = %Emap_ManComputeActualMappedStats.exit88, %.lr.ph.i91
  %indvars.iv.i92 = phi i64 [ %indvars.iv.next.i94, %.lr.ph.i91 ], [ 0, %Emap_ManComputeActualMappedStats.exit88 ] ; 3 uses
  %.idx.i93 = mul nuw nsw i64 %indvars.iv.i92, 192
  %i.apw = getelementptr inbounds nuw i8, ptr %8, i64 %.idx.i93 ; 2 uses
  %i.apx = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %indvars.iv.i92 ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 5128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.apw, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.apy, i64 96, i1 false), !tbaa.struct !135
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apw, i64 96
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apx, i64 5224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.apz, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.aqa, i64 96, i1 false), !tbaa.struct !135
  %indvars.iv.next.i94 = add nuw nsw i64 %indvars.iv.i92, 1 ; 2 uses
  %.val.i95 = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aqb = getelementptr i8, ptr %.val.i95, i64 4
  %.val.val.i96 = load i32, ptr %i.aqb, align 4, !tbaa !37
  %i.aqc = sext i32 %.val.val.i96 to i64
  %i.aqd = icmp slt i64 %indvars.iv.next.i94, %i.aqc
  br i1 %i.aqd, label %.lr.ph.i91, label %Emap_ManRestoreBests.exit77, !llvm.loop !138

Emap_ManRestoreBests.exit77:                      ; preds = %.lr.ph.i71, %.lr.ph.i91, %Emap_ManComputeActualMappedStats.exit88, %bb.em
  %storemerge107 = phi float [ %.0.i87, %.lr.ph.i91 ], [ %.156, %bb.em ], [ %.0.i87, %Emap_ManComputeActualMappedStats.exit88 ], [ %.156, %.lr.ph.i71 ]
  %storemerge = phi double [ %.0105, %.lr.ph.i91 ], [ %.154, %bb.em ], [ %.0105, %Emap_ManComputeActualMappedStats.exit88 ], [ %.154, %.lr.ph.i71 ]
  %.057 = phi i32 [ 0, %.lr.ph.i91 ], [ %.1, %bb.em ], [ 0, %Emap_ManComputeActualMappedStats.exit88 ], [ %.1, %.lr.ph.i71 ]
  store float %storemerge107, ptr %9, align 4, !tbaa !137
  store double %storemerge, ptr %10, align 8, !tbaa !126
  ret i32 %.057
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Emap_ManRecoverMogsTimed(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr nofree noundef captures(none) %4, double noundef %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.Emap_PackEntry_t_, align 8  ; 5 uses
  %8 = alloca %struct.Emap_Best_t_, align 8       ; 5 uses
  %9 = alloca %struct.Emap_Best_t_, align 8       ; 5 uses
  %i.a = load float, ptr %6, align 4, !tbaa !137  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !79
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.f, align 4, !tbaa !37
  %i.g = sext i32 %.val.val.i to i64
  %i.h = shl nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.h, i1 false)
  %i.i = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %.val141.i = load ptr, ptr %i.i, align 8, !tbaa !128 ; 2 uses
  %i.j = getelementptr i8, ptr %.val141.i, i64 4
  %.val14.val2.i = load i32, ptr %i.j, align 4, !tbaa !37
  %i.k = icmp sgt i32 %.val14.val2.i, 0
  br i1 %i.k, label %.lr.ph.i, label %Emap_ManComputeRefs.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %.val144.i = phi ptr [ %.val14.i, %.lr.ph.i ], [ %.val141.i, %bb.b ]
  %i.l = getelementptr i8, ptr %.val144.i, i64 8
  %.val15.val.i = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %.val12.i = load ptr, ptr %i.o, align 8, !tbaa !61
  %.val12.val.i = load i32, ptr %.val12.i, align 4, !tbaa !58
  %i.p = getelementptr i8, ptr %i.n, i64 20
  %.val13.i = load i32, ptr %i.p, align 4
  %i.q = lshr i32 %.val13.i, 10
  %i.r = and i32 %i.q, 1
  tail call fastcc void @Emap_RefPhase_rec(ptr noundef nonnull %0, ptr noundef readonly %1, ptr noundef %4, i32 noundef %.val12.val.i, i32 noundef %i.r)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val14.i = load ptr, ptr %i.i, align 8, !tbaa !128 ; 2 uses
  %i.s = getelementptr i8, ptr %.val14.i, i64 4
  %.val14.val.i = load i32, ptr %i.s, align 4, !tbaa !37
  %i.t = sext i32 %.val14.val.i to i64
  %i.u = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.u, label %.lr.ph.i, label %Emap_ManComputeRefs.exit, !llvm.loop !140

Emap_ManComputeRefs.exit:                         ; preds = %.lr.ph.i, %bb.b
  %.val210 = load ptr, ptr %i.e, align 8, !tbaa !21 ; 2 uses
  %i.v = getelementptr i8, ptr %.val210, i64 4    ; 2 uses
  %.val210.val = load i32, ptr %i.v, align 4, !tbaa !37 ; 3 uses
  %i.w = shl nsw i32 %.val210.val, 8
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.x, 48
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.y) #21 ; 10 uses
  %i.aa = icmp sgt i32 %.val210.val, 0
  br i1 %i.aa, label %.lr.ph281, label %.critedge.thread

.critedge.thread:                                 ; preds = %Emap_ManComputeRefs.exit
  tail call void @qsort(ptr noundef %i.z, i64 noundef 0, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  br label %._crit_edge308

.lr.ph281:                                        ; preds = %Emap_ManComputeRefs.exit
  %i.ab = getelementptr i8, ptr %.val210, i64 8
  %.val214.val = load ptr, ptr %i.ab, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph281, %.loopexit265
  %.val344 = phi i32 [ %.val210.val, %.lr.ph281 ], [ %.val, %.loopexit265 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph281 ], [ %indvars.iv.next, %.loopexit265 ] ; 2 uses
  %.0171280 = phi i32 [ 0, %.lr.ph281 ], [ %.5176, %.loopexit265 ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val214.val, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !57 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.loopexit265, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr i8, ptr %i.ad, i64 28
  %.val215 = load i32, ptr %i.af, align 4, !tbaa !60
  %.not259 = icmp eq i32 %.val215, 2
  br i1 %.not259, label %.preheader264, label %.loopexit265

.preheader264:                                    ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.ad, i64 16     ; 4 uses
  %.val213 = load i32, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %i.ah = zext i32 %.val213 to i64                ; 3 uses
  %i.ai = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %i.ah ; 2 uses
  %i.aj = shl i32 %.val213, 1                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !58
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.loopexit, label %.preheader263

.preheader263:                                    ; preds = %.preheader264
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !43 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.split.us.preheader, label %.loopexit

.lr.ph.split.us.preheader:                        ; preds = %.preheader263
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %wide.trip.count326 = zext nneg i32 %i.ao to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.f
  %indvars.iv323 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next324, %bb.f ] ; 3 uses
  %.2173272.us = phi i32 [ %.0171280, %.lr.ph.split.us.preheader ], [ %.3174.us, %bb.f ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %indvars.iv323 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !45 ; 3 uses
  %i.at = icmp slt i32 %i.as, 2
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !48
  %.val211.us = load i32, ptr %i.ag, align 8, !tbaa !40
  %i.aw = sext i32 %.2173272.us to i64
  %i.ax = getelementptr inbounds [48 x i8], ptr %i.z, i64 %i.aw ; 6 uses
  store i32 %.val211.us, ptr %i.ax, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 0, ptr %i.ay, align 4, !tbaa !90
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = trunc nuw nsw i64 %indvars.iv323 to i32
  store i32 %i.ba, ptr %i.az, align 8, !tbaa !91
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 %i.as, ptr %i.bb, align 4, !tbaa !92
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i64 %i.av, ptr %i.bc, align 8, !tbaa !93
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bf = zext nneg i32 %i.as to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.be, ptr nonnull align 4 %i.bd, i64 %i.bg, i1 false), !tbaa !58
  %i.bh = add nsw i32 %.2173272.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us
  %.3174.us = phi i32 [ %i.bh, %bb.e ], [ %.2173272.us, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %exitcond327.not = icmp eq i64 %indvars.iv.next324, %wide.trip.count326
  br i1 %exitcond327.not, label %.loopexit.loopexit, label %.lr.ph.split.us, !llvm.loop !216

.loopexit.loopexit:                               ; preds = %bb.f
  %.val213.1.pre = load i32, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %.pre351 = zext i32 %.val213.1.pre to i64
  %.pre352 = shl i32 %.val213.1.pre, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader263, %.preheader264
  %.pre-phi353 = phi i32 [ %i.aj, %.preheader264 ], [ %.pre352, %.loopexit.loopexit ], [ %i.aj, %.preheader263 ]
  %.pre-phi = phi i64 [ %i.ah, %.preheader264 ], [ %.pre351, %.loopexit.loopexit ], [ %i.ah, %.preheader263 ]
  %.4175 = phi i32 [ %.0171280, %.preheader264 ], [ %.3174.us, %.loopexit.loopexit ], [ %.0171280, %.preheader263 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.bj = or disjoint i32 %.pre-phi353, 1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !58
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.loopexit.1, label %.preheader263.1

.preheader263.1:                                  ; preds = %.loopexit
  %i.bo = load i32, ptr %i.bi, align 8, !tbaa !43 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.split.preheader.1, label %.loopexit.1

.lr.ph.split.preheader.1:                         ; preds = %.preheader263.1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %wide.trip.count.1 = zext nneg i32 %i.bo to i64
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.h, %.lr.ph.split.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.split.preheader.1 ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %.2173272.1 = phi i32 [ %.4175, %.lr.ph.split.preheader.1 ], [ %.3174.1, %bb.h ] ; 3 uses
  %i.br = getelementptr inbounds nuw [40 x i8], ptr %i.bq, i64 %indvars.iv.1 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !45 ; 5 uses
  %i.bt = icmp slt i32 %i.bs, 2
  br i1 %i.bt, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.1
  %i.bu = icmp eq i32 %i.bs, 6
  %i.bv = shl nuw i32 1, %i.bs
  %i.bw = zext nneg i32 %i.bv to i64
  %notmask.i.1 = shl nsw i64 -1, %i.bw
  %i.bx = xor i64 %notmask.i.1, -1
  %i.by = select i1 %i.bu, i64 -1, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !48
  %i.cb = xor i64 %i.by, %i.ca
  %.val211.1 = load i32, ptr %i.ag, align 8, !tbaa !40
  %i.cc = sext i32 %.2173272.1 to i64
  %i.cd = getelementptr inbounds [48 x i8], ptr %i.z, i64 %i.cc ; 6 uses
  store i32 %.val211.1, ptr %i.cd, align 8, !tbaa !88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 1, ptr %i.ce, align 4, !tbaa !90
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = trunc nuw nsw i64 %indvars.iv.1 to i32
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !91
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 %i.bs, ptr %i.ch, align 4, !tbaa !92
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store i64 %i.cb, ptr %i.ci, align 8, !tbaa !93
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cl = zext nneg i32 %i.bs to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr nonnull align 4 %i.cj, i64 %i.cm, i1 false), !tbaa !58
  %i.cn = add nsw i32 %.2173272.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.1
  %.3174.1 = phi i32 [ %i.cn, %bb.g ], [ %.2173272.1, %.lr.ph.split.1 ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.split.1, !llvm.loop !216

.loopexit.1:                                      ; preds = %bb.h, %.preheader263.1, %.loopexit
  %.4175.1 = phi i32 [ %.4175, %.loopexit ], [ %.4175, %.preheader263.1 ], [ %.3174.1, %bb.h ]
  %.val.pre = load i32, ptr %i.v, align 4, !tbaa !37
  br label %.loopexit265

.loopexit265:                                     ; preds = %.loopexit.1, %bb.d, %bb.c
  %.val = phi i32 [ %.val344, %bb.c ], [ %.val344, %bb.d ], [ %.val.pre, %.loopexit.1 ] ; 2 uses
  %.5176 = phi i32 [ %.0171280, %bb.c ], [ %.0171280, %bb.d ], [ %.4175.1, %.loopexit.1 ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = sext i32 %.val to i64
  %i.cp = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %i.cp, label %bb.c, label %.critedge, !llvm.loop !217

.critedge:                                        ; preds = %.loopexit265
  %i.cq = sext i32 %.5176 to i64
  tail call void @qsort(ptr noundef %i.z, i64 noundef %i.cq, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  %i.cr = icmp sgt i32 %.5176, 0
  br i1 %i.cr, label %.lr.ph307, label %._crit_edge308

.lr.ph307:                                        ; preds = %.critedge
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.cu = fadd double %5, 1.000000e-01
  %wide.trip.count341 = zext nneg i32 %.5176 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph307, %.thread256
  %indvars.iv338 = phi i64 [ 0, %.lr.ph307 ], [ %indvars.iv.next339, %.thread256 ] ; 2 uses
  %.0168306 = phi i32 [ 0, %.lr.ph307 ], [ %.10, %.thread256 ] ; 4 uses
  %.0182304 = phi float [ %i.a, %.lr.ph307 ], [ %.10192, %.thread256 ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %indvars.iv338 ; 6 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !88 ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 5128
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !90 ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [96 x i8], ptr %i.cz, i64 %i.dc ; 3 uses
  %i.de = shl nsw i32 %i.cw, 1
  %i.df = add nsw i32 %i.de, %i.db
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !58
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %.thread256, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 64 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !154
  %i.dm = icmp sgt i32 %i.dl, -1
  br i1 %i.dm, label %.thread256, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !91
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [40 x i8], ptr %i.dn, i64 %i.dq ; 4 uses
  %i.ds = load i32, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph298, label %.thread256

.lr.ph298:                                        ; preds = %bb.k
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph298, %bb.as
  %i.dw = phi i32 [ %i.ds, %.lr.ph298 ], [ %i.jt, %bb.as ]
  %indvars.iv335 = phi i64 [ 0, %.lr.ph298 ], [ %indvars.iv.next336, %bb.as ] ; 2 uses
  %.1169296 = phi i32 [ %.0168306, %.lr.ph298 ], [ %.8.ph, %bb.as ] ; 2 uses
  %.1183294 = phi float [ %.0182304, %.lr.ph298 ], [ %.8190.ph, %bb.as ] ; 2 uses
  %i.dx = load ptr, ptr %i.cs, align 8, !tbaa !148
  %i.dy = getelementptr inbounds nuw [144 x i8], ptr %i.dx, i64 %indvars.iv335 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !97
  %i.eb = load i32, ptr %i.dr, align 8, !tbaa !45
  %.not199 = icmp eq i32 %i.ea, %i.eb
  br i1 %.not199, label %.preheader261, label %bb.as

.preheader261:                                    ; preds = %bb.l
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 80 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 72 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.preheader261, %bb.ar
  %.not200 = phi i1 [ true, %.preheader261 ], [ false, %bb.ar ] ; 3 uses
  %.0164293 = phi i32 [ 0, %.preheader261 ], [ 1, %bb.ar ]
  %.2170292 = phi i32 [ %.1169296, %.preheader261 ], [ %.6.ph, %bb.ar ] ; 9 uses
  %.2184291 = phi float [ %.1183294, %.preheader261 ], [ %.6188.ph, %bb.ar ] ; 9 uses
  %.in = select i1 %.not200, ptr %i.ed, ptr %i.ec
  %i.ee = load i64, ptr %.in, align 8, !tbaa !99
  %.in201 = select i1 %.not200, ptr %i.ec, ptr %i.ed
  %i.ef = load i64, ptr %.in201, align 8, !tbaa !99 ; 4 uses
  %i.eg = load i64, ptr %i.du, align 8, !tbaa !93
  %.not202 = icmp eq i64 %i.ee, %i.eg
  br i1 %.not202, label %bb.n, label %bb.ar

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  %i.eh = load i32, ptr %i.dr, align 8, !tbaa !45 ; 5 uses
  %i.ei = icmp slt i32 %i.eh, 1                   ; 3 uses
  %.pre354 = zext nneg i32 %i.eh to i64           ; 3 uses
  br i1 %i.ei, label %.preheader.i.preheader, label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %bb.n
  %i.ej = shl nuw nsw i64 %.pre354, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ct, ptr nonnull readonly align 4 %i.dv, i64 %i.ej, i1 false), !tbaa !58
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.n, %.lr.ph.i217
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %Emap_PackEntryCompare.exit.i
  %.02249.i = phi i32 [ %.1.i, %Emap_PackEntryCompare.exit.i ], [ %.5176, %.preheader.i.preheader ] ; 2 uses
  %.02348.i = phi i32 [ %.124.i, %Emap_PackEntryCompare.exit.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ek = add nuw nsw i32 %.02348.i, %.02249.i
  %i.el = lshr i32 %i.ek, 1                       ; 3 uses
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.em ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !92 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ep, %i.eh
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader.i
  %i.eq = sub nsw i32 %i.ep, %i.eh
  br label %Emap_PackEntryCompare.exit.i

bb.p:                                             ; preds = %.preheader.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.es = load i64, ptr %i.er, align 8, !tbaa !93 ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.ef
  br i1 %i.et, label %Emap_PackEntryCompare.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = icmp ugt i64 %i.es, %i.ef               ; 2 uses
  %brmerge.i = or i1 %i.ei, %i.eu
  %.mux.i = zext i1 %i.eu to i32
  br i1 %brmerge.i, label %Emap_PackEntryCompare.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.ev = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %.pre354
  br i1 %exitcond.not.i.i, label %Emap_PackEntryCompare.exit.i, label %bb.s, !llvm.loop !100

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.r ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.i.i
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !58 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !58 ; 2 uses
  %.not28.i.i = icmp eq i32 %i.ex, %i.ez
  br i1 %.not28.i.i, label %bb.r, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fa = sub nsw i32 %i.ex, %i.ez
  br label %Emap_PackEntryCompare.exit.i

Emap_PackEntryCompare.exit.i:                     ; preds = %bb.r, %bb.t, %bb.q, %bb.p, %bb.o
  %.021.i.i = phi i32 [ %i.eq, %bb.o ], [ %.mux.i, %bb.q ], [ -1, %bb.p ], [ %i.fa, %bb.t ], [ 0, %bb.r ]
  %i.fb = icmp slt i32 %.021.i.i, 0               ; 2 uses
  %i.fc = add nuw nsw i32 %i.el, 1
  %.124.i = select i1 %i.fb, i32 %i.fc, i32 %.02348.i ; 6 uses
  %.1.i = select i1 %i.fb, i32 %.02249.i, i32 %i.el ; 2 uses
  %i.fd = icmp slt i32 %.124.i, %.1.i
  br i1 %i.fd, label %.preheader.i, label %._crit_edge.i.loopexit, !llvm.loop !101

._crit_edge.i.loopexit:                           ; preds = %Emap_PackEntryCompare.exit.i
  %i.fe = icmp eq i32 %.124.i, %.5176
  br i1 %i.fe, label %Emap_PackEntryFindFirst.exit.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.loopexit
  %i.ff = zext nneg i32 %.124.i to i64
  %i.fg = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %i.ff ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !92
  %.not.i26.i = icmp eq i32 %i.fi, %i.eh
  br i1 %.not.i26.i, label %bb.v, label %Emap_PackEntryFindFirst.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !93
  %or.cond.not.i = icmp ne i64 %i.fk, %i.ef       ; 2 uses
  %brmerge66.i = or i1 %i.ei, %or.cond.not.i
end_hunk_1
begin_hunk_2_@Emap_ManRecoverMogsTimed:bb.a
  br i1 %i.jq, label %bb.y, label %.critedge2, !llvm.loop !220

.critedge2:                                       ; preds = %bb.z, %Emap_ObjPairHasDirectDanglingRelation.exit.thread, %bb.y, %.preheader, %Emap_ManComputeRefs.exit233
  %.5187 = phi float [ %.4186, %Emap_ManComputeRefs.exit233 ], [ %.2184291, %.preheader ], [ %.2184291, %bb.y ], [ %.2184291, %Emap_ObjPairHasDirectDanglingRelation.exit.thread ], [ %.2184291, %bb.z ] ; 2 uses
  %.5 = phi i32 [ %.4, %Emap_ManComputeRefs.exit233 ], [ %.2170292, %.preheader ], [ %.2170292, %bb.y ], [ %.2170292, %Emap_ObjPairHasDirectDanglingRelation.exit.thread ], [ %.2170292, %bb.z ] ; 2 uses
  %i.jr = load i32, ptr %i.dk, align 8, !tbaa !154
  %i.js = icmp sgt i32 %i.jr, -1
  br i1 %i.js, label %.thread256, label %bb.ar

bb.ar:                                            ; preds = %Emap_PackEntryFindFirst.exit, %bb.m, %.critedge2, %Emap_PackEntryFindFirst.exit.thread
  %.6188.ph = phi float [ %.2184291, %Emap_PackEntryFindFirst.exit.thread ], [ %.5187, %.critedge2 ], [ %.2184291, %bb.m ], [ %.2184291, %Emap_PackEntryFindFirst.exit ] ; 2 uses
  %.6.ph = phi i32 [ %.2170292, %Emap_PackEntryFindFirst.exit.thread ], [ %.5, %.critedge2 ], [ %.2170292, %bb.m ], [ %.2170292, %Emap_PackEntryFindFirst.exit ] ; 2 uses
  br i1 %.not200, label %bb.m, label %._crit_edge350, !llvm.loop !221

._crit_edge350:                                   ; preds = %bb.ar
  %.pre = load i32, ptr %i.b, align 8, !tbaa !79
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge350, %bb.l
  %i.jt = phi i32 [ %.pre, %._crit_edge350 ], [ %i.dw, %bb.l ] ; 2 uses
  %.8190.ph = phi float [ %.6188.ph, %._crit_edge350 ], [ %.1183294, %bb.l ] ; 2 uses
  %.8.ph = phi i32 [ %.6.ph, %._crit_edge350 ], [ %.1169296, %bb.l ] ; 2 uses
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1 ; 2 uses
  %i.ju = sext i32 %i.jt to i64
  %i.jv = icmp slt i64 %indvars.iv.next336, %i.ju
  br i1 %i.jv, label %bb.l, label %.thread256, !llvm.loop !222

.thread256:                                       ; preds = %bb.as, %.critedge2, %bb.k, %bb.i, %bb.j
  %.10192 = phi float [ %.0182304, %bb.i ], [ %.0182304, %bb.j ], [ %.0182304, %bb.k ], [ %.5187, %.critedge2 ], [ %.8190.ph, %bb.as ] ; 2 uses
  %.10 = phi i32 [ %.0168306, %bb.i ], [ %.0168306, %bb.j ], [ %.0168306, %bb.k ], [ %.5, %.critedge2 ], [ %.8.ph, %bb.as ] ; 2 uses
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %exitcond342.not = icmp eq i64 %indvars.iv.next339, %wide.trip.count341
  br i1 %exitcond342.not, label %._crit_edge308, label %bb.i, !llvm.loop !223

._crit_edge308:                                   ; preds = %.thread256, %.critedge.thread, %.critedge
  %.0182.lcssa = phi float [ %i.a, %.critedge ], [ %i.a, %.critedge.thread ], [ %.10192, %.thread256 ]
  %.0168.lcssa = phi i32 [ 0, %.critedge ], [ 0, %.critedge.thread ], [ %.10, %.thread256 ] ; 2 uses
  store float %.0182.lcssa, ptr %6, align 4, !tbaa !137
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge308
  tail call void @free(ptr noundef nonnull %i.z) #19
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge308, %bb.a
  %.0193 = phi i32 [ 0, %bb.a ], [ %.0168.lcssa, %._crit_edge308 ], [ %.0168.lcssa, %bb.at ]
  ret i32 %.0193
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Emap_ManRecoverMogsExact(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.Emap_PackEntry_t_, align 8  ; 5 uses
  %6 = alloca %struct.Emap_Best_t_, align 8       ; 5 uses
  %7 = alloca %struct.Emap_Best_t_, align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !79
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.bi, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.e, align 4, !tbaa !37
  %i.f = sext i32 %.val.val.i to i64
  %i.g = shl nsw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.g, i1 false)
  %i.h = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val141.i = load ptr, ptr %i.h, align 8, !tbaa !128 ; 2 uses
  %i.i = getelementptr i8, ptr %.val141.i, i64 4
  %.val14.val2.i = load i32, ptr %i.i, align 4, !tbaa !37
  %i.j = icmp sgt i32 %.val14.val2.i, 0
  br i1 %i.j, label %.lr.ph.i, label %Emap_ManComputeRefs.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %.val144.i = phi ptr [ %.val14.i, %.lr.ph.i ], [ %.val141.i, %bb.b ]
  %i.k = getelementptr i8, ptr %.val144.i, i64 8
  %.val15.val.i = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %.val12.i = load ptr, ptr %i.n, align 8, !tbaa !61
  %.val12.val.i = load i32, ptr %.val12.i, align 4, !tbaa !58
  %i.o = getelementptr i8, ptr %i.m, i64 20
  %.val13.i = load i32, ptr %i.o, align 4
  %i.p = lshr i32 %.val13.i, 10
  %i.q = and i32 %i.p, 1
  tail call fastcc void @Emap_RefPhase_rec(ptr noundef nonnull %0, ptr noundef readonly %1, ptr noundef %4, i32 noundef %.val12.val.i, i32 noundef %i.q)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val14.i = load ptr, ptr %i.h, align 8, !tbaa !128 ; 2 uses
  %i.r = getelementptr i8, ptr %.val14.i, i64 4
  %.val14.val.i = load i32, ptr %i.r, align 4, !tbaa !37
  %i.s = sext i32 %.val14.val.i to i64
  %i.t = icmp slt i64 %indvars.iv.next.i, %i.s
  br i1 %i.t, label %.lr.ph.i, label %Emap_ManComputeRefs.exit, !llvm.loop !140

Emap_ManComputeRefs.exit:                         ; preds = %.lr.ph.i, %bb.b
  %.val270 = load ptr, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  %i.u = getelementptr i8, ptr %.val270, i64 4    ; 2 uses
  %.val270.val = load i32, ptr %i.u, align 4, !tbaa !37 ; 3 uses
  %i.v = shl nsw i32 %.val270.val, 8
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 48
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #21 ; 10 uses
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 3 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !85
  store i32 1000, ptr %i.z, align 8, !tbaa !86
  %i.ab = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !87
  %i.ad = icmp sgt i32 %.val270.val, 0
  br i1 %i.ad, label %.lr.ph358, label %.critedge.thread

.critedge.thread:                                 ; preds = %Emap_ManComputeRefs.exit
  tail call void @qsort(ptr noundef %i.y, i64 noundef 0, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  br label %._crit_edge384

.lr.ph358:                                        ; preds = %Emap_ManComputeRefs.exit
  %i.ae = getelementptr i8, ptr %.val270, i64 8
  %.val274.val = load ptr, ptr %i.ae, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph358, %.loopexit335
  %.val432 = phi i32 [ %.val270.val, %.lr.ph358 ], [ %.val, %.loopexit335 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph358 ], [ %indvars.iv.next, %.loopexit335 ] ; 2 uses
  %.0242357 = phi i32 [ 0, %.lr.ph358 ], [ %.5247, %.loopexit335 ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val274.val, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.loopexit335, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr i8, ptr %i.ag, i64 28
  %.val275 = load i32, ptr %i.ai, align 4, !tbaa !60
  %.not329 = icmp eq i32 %.val275, 2
  br i1 %.not329, label %.preheader334, label %.loopexit335

.preheader334:                                    ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %i.ag, i64 16     ; 4 uses
  %.val273 = load i32, ptr %i.aj, align 8, !tbaa !40 ; 2 uses
  %i.ak = zext i32 %.val273 to i64                ; 4 uses
  %i.al = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %i.ak ; 3 uses
  %i.am = shl i32 %.val273, 1
  %i.an = zext i32 %i.am to i64                   ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !58
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.loopexit333, label %bb.e

bb.e:                                             ; preds = %.preheader334
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 5192
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !154
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %.loopexit333, label %.preheader332

.preheader332:                                    ; preds = %bb.e
  %i.au = load i32, ptr %i.al, align 8, !tbaa !43 ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.split.us.preheader, label %.loopexit333

.lr.ph.split.us.preheader:                        ; preds = %.preheader332
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %wide.trip.count408 = zext nneg i32 %i.au to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.g
  %indvars.iv405 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next406, %bb.g ] ; 3 uses
  %.2244349.us = phi i32 [ %.0242357, %.lr.ph.split.us.preheader ], [ %.3245.us, %bb.g ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %indvars.iv405 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !45 ; 3 uses
  %i.az = icmp slt i32 %i.ay, 2
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !48
  %.val271.us = load i32, ptr %i.aj, align 8, !tbaa !40
  %i.bc = sext i32 %.2244349.us to i64
  %i.bd = getelementptr inbounds [48 x i8], ptr %i.y, i64 %i.bc ; 6 uses
  store i32 %.val271.us, ptr %i.bd, align 8, !tbaa !88
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 0, ptr %i.be, align 4, !tbaa !90
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = trunc nuw nsw i64 %indvars.iv405 to i32
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !91
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 %i.ay, ptr %i.bh, align 4, !tbaa !92
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i64 %i.bb, ptr %i.bi, align 8, !tbaa !93
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bl = zext nneg i32 %i.ay to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr nonnull align 4 %i.bj, i64 %i.bm, i1 false), !tbaa !58
  %i.bn = add nsw i32 %.2244349.us, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us
  %.3245.us = phi i32 [ %i.bn, %bb.f ], [ %.2244349.us, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %exitcond409.not = icmp eq i64 %indvars.iv.next406, %wide.trip.count408
  br i1 %exitcond409.not, label %.loopexit333.loopexit, label %.lr.ph.split.us, !llvm.loop !224

.loopexit333.loopexit:                            ; preds = %bb.g
  %.val273.1.pre = load i32, ptr %i.aj, align 8, !tbaa !40 ; 2 uses
  %.pre439 = zext i32 %.val273.1.pre to i64
  %.pre440 = shl i32 %.val273.1.pre, 1
  %.pre442 = zext i32 %.pre440 to i64
  br label %.loopexit333

.loopexit333:                                     ; preds = %.loopexit333.loopexit, %.preheader332, %.preheader334, %bb.e
  %.pre-phi443 = phi i64 [ %i.an, %bb.e ], [ %.pre442, %.loopexit333.loopexit ], [ %i.an, %.preheader332 ], [ %i.an, %.preheader334 ]
  %.pre-phi = phi i64 [ %i.ak, %bb.e ], [ %.pre439, %.loopexit333.loopexit ], [ %i.ak, %.preheader332 ], [ %i.ak, %.preheader334 ]
  %.4246 = phi i32 [ %.0242357, %bb.e ], [ %.3245.us, %.loopexit333.loopexit ], [ %.0242357, %.preheader332 ], [ %.0242357, %.preheader334 ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %.pre-phi ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.pre-phi443
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !58
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.loopexit333.1, label %bb.h

bb.h:                                             ; preds = %.loopexit333
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 5288
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !154
  %i.bv = icmp sgt i32 %i.bu, -1
  br i1 %i.bv, label %.loopexit333.1, label %.preheader332.1

.preheader332.1:                                  ; preds = %bb.h
  %i.bw = load i32, ptr %i.bo, align 8, !tbaa !43 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.split.preheader.1, label %.loopexit333.1

.lr.ph.split.preheader.1:                         ; preds = %.preheader332.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %wide.trip.count.1 = zext nneg i32 %i.bw to i64
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.j, %.lr.ph.split.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.split.preheader.1 ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %.2244349.1 = phi i32 [ %.4246, %.lr.ph.split.preheader.1 ], [ %.3245.1, %bb.j ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.by, i64 %indvars.iv.1 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !45 ; 5 uses
  %i.cb = icmp slt i32 %i.ca, 2
  br i1 %i.cb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.1
  %i.cc = icmp eq i32 %i.ca, 6
  %i.cd = shl nuw i32 1, %i.ca
  %i.ce = zext nneg i32 %i.cd to i64
  %notmask.i.1 = shl nsw i64 -1, %i.ce
  %i.cf = xor i64 %notmask.i.1, -1
  %i.cg = select i1 %i.cc, i64 -1, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !48
  %i.cj = xor i64 %i.cg, %i.ci
  %.val271.1 = load i32, ptr %i.aj, align 8, !tbaa !40
  %i.ck = sext i32 %.2244349.1 to i64
  %i.cl = getelementptr inbounds [48 x i8], ptr %i.y, i64 %i.ck ; 6 uses
  store i32 %.val271.1, ptr %i.cl, align 8, !tbaa !88
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 1, ptr %i.cm, align 4, !tbaa !90
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = trunc nuw nsw i64 %indvars.iv.1 to i32
  store i32 %i.co, ptr %i.cn, align 8, !tbaa !91
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 %i.ca, ptr %i.cp, align 4, !tbaa !92
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store i64 %i.cj, ptr %i.cq, align 8, !tbaa !93
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.ct = zext nneg i32 %i.ca to i64
  %i.cu = shl nuw nsw i64 %i.ct, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr nonnull align 4 %i.cr, i64 %i.cu, i1 false), !tbaa !58
  %i.cv = add nsw i32 %.2244349.1, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.1
  %.3245.1 = phi i32 [ %i.cv, %bb.i ], [ %.2244349.1, %.lr.ph.split.1 ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %.loopexit333.1, label %.lr.ph.split.1, !llvm.loop !224

.loopexit333.1:                                   ; preds = %bb.j, %.preheader332.1, %bb.h, %.loopexit333
  %.4246.1 = phi i32 [ %.4246, %.loopexit333 ], [ %.4246, %bb.h ], [ %.4246, %.preheader332.1 ], [ %.3245.1, %bb.j ]
  %.val.pre = load i32, ptr %i.u, align 4, !tbaa !37
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit333.1, %bb.d, %bb.c
  %.val = phi i32 [ %.val432, %bb.c ], [ %.val432, %bb.d ], [ %.val.pre, %.loopexit333.1 ] ; 2 uses
  %.5247 = phi i32 [ %.0242357, %bb.c ], [ %.0242357, %bb.d ], [ %.4246.1, %.loopexit333.1 ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cw = sext i32 %.val to i64
  %i.cx = icmp slt i64 %indvars.iv.next, %i.cw
  br i1 %i.cx, label %bb.c, label %.critedge, !llvm.loop !225

.critedge:                                        ; preds = %.loopexit335
  %i.cy = sext i32 %.5247 to i64
  tail call void @qsort(ptr noundef %i.y, i64 noundef %i.cy, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  %i.cz = icmp sgt i32 %.5247, 0
  br i1 %i.cz, label %.lr.ph383, label %._crit_edge384

.lr.ph383:                                        ; preds = %.critedge
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %wide.trip.count429 = zext nneg i32 %.5247 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph383, %.thread327
  %indvars.iv426 = phi i64 [ 0, %.lr.ph383 ], [ %indvars.iv.next427, %.thread327 ] ; 2 uses
  %.0239382 = phi i32 [ 0, %.lr.ph383 ], [ %.10, %.thread327 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv426 ; 11 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !88 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 5128
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 6 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !90 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [96 x i8], ptr %i.dh, i64 %i.dk ; 3 uses
  %i.dm = shl nsw i32 %i.de, 1
  %i.dn = add nsw i32 %i.dm, %i.dj
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !58
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %.thread327, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 64 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !154
  %i.du = icmp sgt i32 %i.dt, -1
  br i1 %i.du, label %.thread327, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !91
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [40 x i8], ptr %i.dv, i64 %i.dy ; 4 uses
  %i.ea = load i32, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph377, label %.thread327

.lr.ph377:                                        ; preds = %bb.m
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph377, %bb.bf
  %i.ee = phi i32 [ %i.ea, %.lr.ph377 ], [ %i.qy, %bb.bf ]
  %indvars.iv423 = phi i64 [ 0, %.lr.ph377 ], [ %indvars.iv.next424, %bb.bf ] ; 2 uses
  %.1240375 = phi i32 [ %.0239382, %.lr.ph377 ], [ %.8.ph, %bb.bf ] ; 2 uses
  %i.ef = load ptr, ptr %i.da, align 8, !tbaa !148
  %i.eg = getelementptr inbounds nuw [144 x i8], ptr %i.ef, i64 %indvars.iv423 ; 9 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !97
  %i.ej = load i32, ptr %i.dz, align 8, !tbaa !45
  %.not259 = icmp eq i32 %i.ei, %i.ej
  br i1 %.not259, label %.preheader330, label %bb.bf

.preheader330:                                    ; preds = %bb.n
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 80 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 72 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 20 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 44 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 88
  br label %bb.o

bb.o:                                             ; preds = %.preheader330, %bb.be
  %.not260 = phi i1 [ true, %.preheader330 ], [ false, %bb.be ] ; 4 uses
  %.not.i287 = phi i64 [ 116, %.preheader330 ], [ 92, %bb.be ]
  %.0235371 = phi i32 [ 0, %.preheader330 ], [ 1, %bb.be ]
  %.2241370 = phi i32 [ %.1240375, %.preheader330 ], [ %.6.ph, %bb.be ] ; 10 uses
  %.in = select i1 %.not260, ptr %i.el, ptr %i.ek
  %i.ep = load i64, ptr %.in, align 8, !tbaa !99
  %.in261 = select i1 %.not260, ptr %i.ek, ptr %i.el
  %i.eq = load i64, ptr %.in261, align 8, !tbaa !99 ; 4 uses
  %i.er = load i64, ptr %i.ec, align 8, !tbaa !93
  %.not262 = icmp eq i64 %i.ep, %i.er
  br i1 %.not262, label %bb.p, label %bb.be

bb.p:                                             ; preds = %bb.o
  %i.es = load i32, ptr %i.eh, align 8, !tbaa !97 ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph.i279, label %Emap_MogArrival.exit

.lr.ph.i279:                                      ; preds = %bb.p
  %..i = select i1 %.not260, i64 92, i64 116
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 %..i
  %wide.trip.count.i = zext nneg i32 %i.es to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i279
  %indvars.iv.i280 = phi i64 [ 0, %.lr.ph.i279 ], [ %indvars.iv.next.i281, %bb.q ] ; 4 uses
  %.01617.i = phi double [ 0.000000e+00, %.lr.ph.i279 ], [ %i.fm, %bb.q ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv.i280
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !58
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !58
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.i280
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !58
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr [96 x i8], ptr %i.fb, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 5208
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !51
  %.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i280
  %i.fi = load float, ptr %.in.i, align 4, !tbaa !137
  %i.fj = fpext float %i.fi to double
  %i.fk = fadd double %i.fh, %i.fj                ; 2 uses
  %i.fl = fcmp ogt double %.01617.i, %i.fk
  %i.fm = select i1 %i.fl, double %.01617.i, double %i.fk ; 2 uses
  %indvars.iv.next.i281 = add nuw nsw i64 %indvars.iv.i280, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i281, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Emap_MogArrival.exit, label %bb.q, !llvm.loop !156

Emap_MogArrival.exit:                             ; preds = %bb.q, %bb.p
  %.016.lcssa.i = phi double [ 0.000000e+00, %bb.p ], [ %i.fm, %bb.q ]
  %i.fn = load i32, ptr %i.dd, align 8, !tbaa !88
  %i.fo = shl nsw i32 %i.fn, 1
  %i.fp = load i32, ptr %i.di, align 4, !tbaa !90
  %i.fq = add nsw i32 %i.fo, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %3, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !126
  %i.fu = fadd double %i.ft, 1.000000e-03
  %i.fv = fcmp ogt double %.016.lcssa.i, %i.fu
  br i1 %i.fv, label %bb.be, label %bb.r

bb.r:                                             ; preds = %Emap_MogArrival.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.fw = load i32, ptr %i.dz, align 8, !tbaa !45 ; 5 uses
  %i.fx = icmp slt i32 %i.fw, 1                   ; 3 uses
  %.pre444 = zext nneg i32 %i.fw to i64           ; 3 uses
  br i1 %i.fx, label %.preheader.i.preheader, label %.lr.ph.i282

.lr.ph.i282:                                      ; preds = %bb.r
  %i.fy = shl nuw nsw i64 %.pre444, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.db, ptr nonnull readonly align 4 %i.ed, i64 %i.fy, i1 false), !tbaa !58
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.r, %.lr.ph.i282
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %Emap_PackEntryCompare.exit.i
  %.02249.i = phi i32 [ %.1.i, %Emap_PackEntryCompare.exit.i ], [ %.5247, %.preheader.i.preheader ] ; 2 uses
  %.02348.i = phi i32 [ %.124.i, %Emap_PackEntryCompare.exit.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.fz = add nuw nsw i32 %.02348.i, %.02249.i
  %i.ga = lshr i32 %i.fz, 1                       ; 3 uses
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.gb ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !92 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ge, %i.fw
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader.i
  %i.gf = sub nsw i32 %i.ge, %i.fw
  br label %Emap_PackEntryCompare.exit.i

bb.t:                                             ; preds = %.preheader.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !93 ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.eq
  br i1 %i.gi, label %Emap_PackEntryCompare.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gj = icmp ugt i64 %i.gh, %i.eq               ; 2 uses
  %brmerge.i = or i1 %i.fx, %i.gj
end_hunk_2
begin_hunk_3_@Emap_ManRecoverMogsExact:bb.a
  %i.qz = sext i32 %i.qy to i64
  %i.ra = icmp slt i64 %indvars.iv.next424, %i.qz
  br i1 %i.ra, label %bb.n, label %.thread327, !llvm.loop !233

.thread327:                                       ; preds = %bb.bf, %.critedge2, %bb.m, %bb.k, %bb.l
  %.10 = phi i32 [ %.0239382, %bb.k ], [ %.0239382, %bb.l ], [ %.0239382, %bb.m ], [ %.5, %.critedge2 ], [ %.8.ph, %bb.bf ] ; 2 uses
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %wide.trip.count429
  br i1 %exitcond430.not, label %._crit_edge384, label %bb.k, !llvm.loop !234

._crit_edge384:                                   ; preds = %.thread327, %.critedge.thread, %.critedge
  %.0239.lcssa = phi i32 [ 0, %.critedge ], [ 0, %.critedge.thread ], [ %.10, %.thread327 ] ; 2 uses
  %i.rb = load ptr, ptr %i.ac, align 8, !tbaa !87 ; 2 uses
  %.not.i309 = icmp eq ptr %i.rb, null
  br i1 %.not.i309, label %Vec_IntFree.exit, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge384
  tail call void @free(ptr noundef nonnull %i.rb) #19
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge384, %bb.bg
  tail call void @free(ptr noundef nonnull %i.z) #19
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.y) #19
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %Vec_IntFree.exit, %bb.a
  %.0253 = phi i32 [ 0, %bb.a ], [ %.0239.lcssa, %Vec_IntFree.exit ], [ %.0239.lcssa, %bb.bh ]
  ret i32 %.0253
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Emap_ManRecoverMogsExactMffc(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, double noundef %6, ptr nofree noundef nonnull captures(none) %7, ptr nofree noundef nonnull captures(none) %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.Emap_PackEntry_t_, align 8  ; 5 uses
  %10 = alloca %struct.Emap_Best_t_, align 8      ; 5 uses
  %11 = alloca %struct.Emap_Best_t_, align 8      ; 5 uses
  %12 = alloca %struct.Emap_Best_t_, align 8      ; 5 uses
  %13 = alloca %struct.Emap_Best_t_, align 8      ; 5 uses
  %i.a = load float, ptr %7, align 4, !tbaa !137  ; 3 uses
  %i.b = load double, ptr %8, align 8, !tbaa !126 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !79
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.bm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.g, align 4, !tbaa !37
  %i.h = sext i32 %.val.val.i to i64
  %i.i = shl nsw i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 %i.i, i1 false)
  %i.j = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %.val141.i = load ptr, ptr %i.j, align 8, !tbaa !128 ; 2 uses
  %i.k = getelementptr i8, ptr %.val141.i, i64 4
  %.val14.val2.i = load i32, ptr %i.k, align 4, !tbaa !37
  %i.l = icmp sgt i32 %.val14.val2.i, 0
  br i1 %i.l, label %.lr.ph.i, label %Emap_ManComputeRefs.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %.val144.i = phi ptr [ %.val14.i, %.lr.ph.i ], [ %.val141.i, %bb.b ]
  %i.m = getelementptr i8, ptr %.val144.i, i64 8
  %.val15.val.i = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i, i64 %indvars.iv.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57   ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 32
  %.val12.i = load ptr, ptr %i.p, align 8, !tbaa !61
  %.val12.val.i = load i32, ptr %.val12.i, align 4, !tbaa !58
  %i.q = getelementptr i8, ptr %i.o, i64 20
  %.val13.i = load i32, ptr %i.q, align 4
  %i.r = lshr i32 %.val13.i, 10
  %i.s = and i32 %i.r, 1
  tail call fastcc void @Emap_RefPhase_rec(ptr noundef nonnull %0, ptr noundef readonly %1, ptr noundef %5, i32 noundef %.val12.val.i, i32 noundef %i.s)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val14.i = load ptr, ptr %i.j, align 8, !tbaa !128 ; 2 uses
  %i.t = getelementptr i8, ptr %.val14.i, i64 4
  %.val14.val.i = load i32, ptr %i.t, align 4, !tbaa !37
  %i.u = sext i32 %.val14.val.i to i64
  %i.v = icmp slt i64 %indvars.iv.next.i, %i.u
  br i1 %i.v, label %.lr.ph.i, label %Emap_ManComputeRefs.exit, !llvm.loop !140

Emap_ManComputeRefs.exit:                         ; preds = %.lr.ph.i, %bb.b
  %.val296 = load ptr, ptr %i.f, align 8, !tbaa !21 ; 2 uses
  %i.w = getelementptr i8, ptr %.val296, i64 4    ; 2 uses
  %.val296.val = load i32, ptr %i.w, align 4, !tbaa !37 ; 4 uses
  %i.x = shl nsw i32 %.val296.val, 8
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.y, 48
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #21 ; 10 uses
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 3 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !85
  store i32 100, ptr %i.ab, align 8, !tbaa !86
  %i.ad = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !87
  %i.af = sext i32 %.val296.val to i64            ; 2 uses
  %i.ag = tail call noalias ptr @calloc(i64 noundef %i.af, i64 noundef 4) #20 ; 9 uses
  %i.ah = tail call noalias ptr @calloc(i64 noundef %i.af, i64 noundef 1) #20 ; 13 uses
  %i.ai = icmp sgt i32 %.val296.val, 0
  br i1 %i.ai, label %.lr.ph430, label %.critedge.thread

.critedge.thread:                                 ; preds = %Emap_ManComputeRefs.exit
  tail call void @qsort(ptr noundef %i.aa, i64 noundef 0, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  br label %._crit_edge479

.lr.ph430:                                        ; preds = %Emap_ManComputeRefs.exit
  %i.aj = getelementptr i8, ptr %.val296, i64 8
  %.val301.val = load ptr, ptr %i.aj, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph430, %.loopexit406
  %.val526 = phi i32 [ %.val296.val, %.lr.ph430 ], [ %.val, %.loopexit406 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph430 ], [ %indvars.iv.next, %.loopexit406 ] ; 2 uses
  %.0237429 = phi i32 [ 0, %.lr.ph430 ], [ %.5242, %.loopexit406 ] ; 7 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val301.val, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.loopexit406, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr i8, ptr %i.al, i64 28
  %.val302 = load i32, ptr %i.an, align 4, !tbaa !60
  %.not400 = icmp eq i32 %.val302, 2
  br i1 %.not400, label %.preheader405, label %.loopexit406

.preheader405:                                    ; preds = %bb.d
  %i.ao = getelementptr i8, ptr %i.al, i64 16     ; 4 uses
  %.val300 = load i32, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %i.ap = zext i32 %.val300 to i64                ; 5 uses
  %i.aq = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %i.ap ; 4 uses
  %i.ar = shl i32 %.val300, 1                     ; 2 uses
  %i.as = zext i32 %i.ar to i64                   ; 5 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !58
  %i.av = or disjoint i32 %i.ar, 1
  %i.aw = zext i32 %i.av to i64                   ; 5 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !58
  %i.az = sub i32 0, %i.ay
  %i.ba = icmp eq i32 %i.au, %i.az
  br i1 %i.ba, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader405
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 5192
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !154
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 5288
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !154
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %.loopexit, label %.preheader404

.preheader404:                                    ; preds = %bb.f
  %i.bh = load i32, ptr %i.aq, align 8, !tbaa !43 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph422.split.us.preheader, label %.loopexit

.lr.ph422.split.us.preheader:                     ; preds = %.preheader404
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %wide.trip.count505 = zext nneg i32 %i.bh to i64
  br label %.lr.ph422.split.us

.lr.ph422.split.us:                               ; preds = %.lr.ph422.split.us.preheader, %bb.g
  %indvars.iv502 = phi i64 [ 0, %.lr.ph422.split.us.preheader ], [ %indvars.iv.next503, %bb.g ] ; 3 uses
  %.2239420.us = phi i32 [ %.0237429, %.lr.ph422.split.us.preheader ], [ %.3240.us, %bb.g ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bj, i64 %indvars.iv502 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !45 ; 3 uses
  %i.bm = add i32 %i.bl, -4
  %or.cond.us = icmp ult i32 %i.bm, -2
  br i1 %or.cond.us, label %bb.g, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph422.split.us
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !48
  %.val297.us = load i32, ptr %i.ao, align 8, !tbaa !40
  %i.bp = sext i32 %.2239420.us to i64
  %i.bq = getelementptr inbounds [48 x i8], ptr %i.aa, i64 %i.bp ; 6 uses
  store i32 %.val297.us, ptr %i.bq, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 0, ptr %i.br, align 4, !tbaa !90
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = trunc nuw nsw i64 %indvars.iv502 to i32
  store i32 %i.bt, ptr %i.bs, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 %i.bl, ptr %i.bu, align 4, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i64 %i.bo, ptr %i.bv, align 8, !tbaa !93
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.by = shl nuw nsw i32 %i.bl, 2
  %i.bz = zext nneg i32 %i.by to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr nonnull align 4 %i.bw, i64 %i.bz, i1 false), !tbaa !58
  %i.ca = add nsw i32 %.2239420.us, 1
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.us, %.lr.ph422.split.us
  %.3240.us = phi i32 [ %i.ca, %._crit_edge.us ], [ %.2239420.us, %.lr.ph422.split.us ] ; 2 uses
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1 ; 2 uses
  %exitcond506.not = icmp eq i64 %indvars.iv.next503, %wide.trip.count505
  br i1 %exitcond506.not, label %.loopexit.loopexit, label %.lr.ph422.split.us, !llvm.loop !235

.loopexit.loopexit:                               ; preds = %bb.g
  %.val300.1.pre = load i32, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %.pre536 = zext i32 %.val300.1.pre to i64
  %.pre537 = shl i32 %.val300.1.pre, 1            ; 2 uses
  %.pre539 = zext i32 %.pre537 to i64
  %.pre541 = or disjoint i32 %.pre537, 1
  %.pre543 = zext i32 %.pre541 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader404, %.preheader405, %bb.e, %bb.f
  %.pre-phi544 = phi i64 [ %i.aw, %bb.f ], [ %.pre543, %.loopexit.loopexit ], [ %i.aw, %.preheader404 ], [ %i.aw, %.preheader405 ], [ %i.aw, %bb.e ]
  %.pre-phi540 = phi i64 [ %i.as, %bb.f ], [ %.pre539, %.loopexit.loopexit ], [ %i.as, %.preheader404 ], [ %i.as, %.preheader405 ], [ %i.as, %bb.e ]
  %.pre-phi = phi i64 [ %i.ap, %bb.f ], [ %.pre536, %.loopexit.loopexit ], [ %i.ap, %.preheader404 ], [ %i.ap, %.preheader405 ], [ %i.ap, %bb.e ]
  %.4241 = phi i32 [ %.0237429, %bb.f ], [ %.3240.us, %.loopexit.loopexit ], [ %.0237429, %.preheader404 ], [ %.0237429, %.preheader405 ], [ %.0237429, %bb.e ] ; 5 uses
  %i.cb = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %.pre-phi ; 4 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.pre-phi540
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !58
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.pre-phi544
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !58
  %i.cg = sub i32 0, %i.cf
  %i.ch = icmp eq i32 %i.cd, %i.cg
  br i1 %i.ch, label %.loopexit.1, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 5192
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !154
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %.loopexit.1, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 5288
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !154
  %i.cn = icmp sgt i32 %i.cm, -1
  br i1 %i.cn, label %.loopexit.1, label %.preheader404.1

.preheader404.1:                                  ; preds = %bb.i
  %i.co = load i32, ptr %i.cb, align 8, !tbaa !43 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph422.split.preheader.1, label %.loopexit.1

.lr.ph422.split.preheader.1:                      ; preds = %.preheader404.1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %wide.trip.count.1 = zext nneg i32 %i.co to i64
  br label %.lr.ph422.split.1

.lr.ph422.split.1:                                ; preds = %bb.j, %.lr.ph422.split.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph422.split.preheader.1 ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %.2239420.1 = phi i32 [ %.4241, %.lr.ph422.split.preheader.1 ], [ %.3240.1, %bb.j ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [40 x i8], ptr %i.cq, i64 %indvars.iv.1 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !45 ; 4 uses
  %i.ct = add i32 %i.cs, -4
  %or.cond.1 = icmp ult i32 %i.ct, -2
  br i1 %or.cond.1, label %bb.j, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %.lr.ph422.split.1
  %i.cu = shl nuw nsw i32 1, %i.cs
  %i.cv = zext nneg i32 %i.cu to i64
  %notmask.i.1 = shl nsw i64 -1, %i.cv
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !48
  %i.cy = xor i64 %notmask.i.1, %i.cx
  %i.cz = xor i64 %i.cy, -1
  %.val297.1 = load i32, ptr %i.ao, align 8, !tbaa !40
  %i.da = sext i32 %.2239420.1 to i64
  %i.db = getelementptr inbounds [48 x i8], ptr %i.aa, i64 %i.da ; 6 uses
  store i32 %.val297.1, ptr %i.db, align 8, !tbaa !88
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 1, ptr %i.dc, align 4, !tbaa !90
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = trunc nuw nsw i64 %indvars.iv.1 to i32
  store i32 %i.de, ptr %i.dd, align 8, !tbaa !91
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 %i.cs, ptr %i.df, align 4, !tbaa !92
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store i64 %i.cz, ptr %i.dg, align 8, !tbaa !93
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dj = shl nuw nsw i32 %i.cs, 2
  %i.dk = zext nneg i32 %i.dj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.di, ptr nonnull align 4 %i.dh, i64 %i.dk, i1 false), !tbaa !58
  %i.dl = add nsw i32 %.2239420.1, 1
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.1, %.lr.ph422.split.1
  %.3240.1 = phi i32 [ %i.dl, %._crit_edge.1 ], [ %.2239420.1, %.lr.ph422.split.1 ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph422.split.1, !llvm.loop !235

.loopexit.1:                                      ; preds = %bb.j, %.preheader404.1, %bb.i, %bb.h, %.loopexit
  %.4241.1 = phi i32 [ %.4241, %.loopexit ], [ %.4241, %bb.i ], [ %.4241, %bb.h ], [ %.4241, %.preheader404.1 ], [ %.3240.1, %bb.j ]
  %.val.pre = load i32, ptr %i.w, align 4, !tbaa !37
  br label %.loopexit406

.loopexit406:                                     ; preds = %.loopexit.1, %bb.d, %bb.c
  %.val = phi i32 [ %.val526, %bb.c ], [ %.val526, %bb.d ], [ %.val.pre, %.loopexit.1 ] ; 2 uses
  %.5242 = phi i32 [ %.0237429, %bb.c ], [ %.0237429, %bb.d ], [ %.4241.1, %.loopexit.1 ] ; 10 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dm = sext i32 %.val to i64
  %i.dn = icmp slt i64 %indvars.iv.next, %i.dm
  br i1 %i.dn, label %bb.c, label %.critedge, !llvm.loop !236

.critedge:                                        ; preds = %.loopexit406
  %i.do = sext i32 %.5242 to i64
  tail call void @qsort(ptr noundef %i.aa, i64 noundef %i.do, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  %i.dp = icmp sgt i32 %.5242, 0
  br i1 %i.dp, label %.lr.ph478, label %._crit_edge479

.lr.ph478:                                        ; preds = %.critedge
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.du = fadd double %6, 1.000000e-01
  %wide.trip.count523 = zext nneg i32 %.5242 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph478, %.thread374
  %indvars.iv520 = phi i64 [ 0, %.lr.ph478 ], [ %indvars.iv.next521, %.thread374 ] ; 2 uses
  %.0223477 = phi i32 [ 0, %.lr.ph478 ], [ %.10, %.thread374 ] ; 5 uses
  %.0226476 = phi i32 [ 0, %.lr.ph478 ], [ %.10236, %.thread374 ] ; 5 uses
  %.0248474 = phi double [ %i.b, %.lr.ph478 ], [ %.10258, %.thread374 ] ; 5 uses
  %.0259473 = phi float [ %i.a, %.lr.ph478 ], [ %.10269, %.thread374 ] ; 5 uses
  %i.dv = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %indvars.iv520 ; 8 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !88 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.dx ; 5 uses
  %i.dz = shl nsw i32 %i.dw, 1
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !58
  %i.ed = getelementptr i8, ptr %i.eb, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !58
  %i.ef = sub i32 0, %i.ee
  %i.eg = icmp eq i32 %i.ec, %i.ef
  br i1 %i.eg, label %.thread374, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 5128 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 5192 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !154
  %i.ek = icmp sgt i32 %i.ej, -1
  br i1 %i.ek, label %.thread374, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 5224 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dy, i64 5288 ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !154
  %i.eo = icmp sgt i32 %i.en, -1
  br i1 %i.eo, label %.thread374, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !91
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [40 x i8], ptr %i.ep, i64 %i.es ; 5 uses
  %i.eu = load i32, ptr %i.c, align 8, !tbaa !79  ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph459, label %.thread374

.lr.ph459:                                        ; preds = %bb.n
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 14 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph459, %bb.bd
  %i.ez = phi i32 [ %i.eu, %.lr.ph459 ], [ %i.sc, %bb.bd ]
  %indvars.iv517 = phi i64 [ 0, %.lr.ph459 ], [ %indvars.iv.next518, %bb.bd ] ; 2 uses
  %.1224457 = phi i32 [ %.0223477, %.lr.ph459 ], [ %.8, %bb.bd ] ; 2 uses
  %.1227456 = phi i32 [ %.0226476, %.lr.ph459 ], [ %.8234, %bb.bd ] ; 2 uses
  %.1249454 = phi double [ %.0248474, %.lr.ph459 ], [ %.8256, %bb.bd ] ; 2 uses
  %.1260453 = phi float [ %.0259473, %.lr.ph459 ], [ %.8267, %bb.bd ] ; 2 uses
  %i.fa = load ptr, ptr %i.dq, align 8, !tbaa !148
  %i.fb = getelementptr inbounds nuw [144 x i8], ptr %i.fa, i64 %indvars.iv517 ; 9 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !97
  %i.fe = load i32, ptr %i.et, align 8, !tbaa !45
  %.not283 = icmp eq i32 %i.fd, %i.fe
  br i1 %.not283, label %.preheader402, label %bb.bd

.preheader402:                                    ; preds = %bb.o
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 80 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 72 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 20 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 44 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 88 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader402, %bb.bc
  %.not284 = phi i1 [ true, %.preheader402 ], [ false, %bb.bc ] ; 4 uses
  %.not.i317 = phi i64 [ 116, %.preheader402 ], [ 92, %bb.bc ]
  %.0219450 = phi i32 [ 0, %.preheader402 ], [ 1, %bb.bc ]
  %.2225449 = phi i32 [ %.1224457, %.preheader402 ], [ %.6.ph, %bb.bc ] ; 6 uses
  %.2228448 = phi i32 [ %.1227456, %.preheader402 ], [ %.6232.ph, %bb.bc ] ; 10 uses
  %.2250447 = phi double [ %.1249454, %.preheader402 ], [ %.6254.ph, %bb.bc ] ; 9 uses
  %.2261446 = phi float [ %.1260453, %.preheader402 ], [ %.6265.ph, %bb.bc ] ; 10 uses
  %.in = select i1 %.not284, ptr %i.fg, ptr %i.ff
  %i.fk = load i64, ptr %.in, align 8, !tbaa !99
  %.in285 = select i1 %.not284, ptr %i.ff, ptr %i.fg
  %i.fl = load i64, ptr %.in285, align 8, !tbaa !99 ; 4 uses
  %i.fm = load i64, ptr %i.ew, align 8, !tbaa !93
  %.not286 = icmp eq i64 %i.fk, %i.fm
  br i1 %.not286, label %bb.q, label %bb.bc

bb.q:                                             ; preds = %bb.p
  %i.fn = load i32, ptr %i.fc, align 8, !tbaa !97 ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i304, label %Emap_MogArrival.exit

.lr.ph.i304:                                      ; preds = %bb.q
  %..i = select i1 %.not284, i64 92, i64 116
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 %..i
  %wide.trip.count.i = zext nneg i32 %i.fn to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i304
  %indvars.iv.i305 = phi i64 [ 0, %.lr.ph.i304 ], [ %indvars.iv.next.i306, %bb.r ] ; 4 uses
  %.01617.i = phi double [ 0.000000e+00, %.lr.ph.i304 ], [ %i.gh, %bb.r ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i305
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !58
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !58
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i305
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !58
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr [96 x i8], ptr %i.fw, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 5208
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !51
  %.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i305
  %i.gd = load float, ptr %.in.i, align 4, !tbaa !137
  %i.ge = fpext float %i.gd to double
  %i.gf = fadd double %i.gc, %i.ge                ; 2 uses
  %i.gg = fcmp ogt double %.01617.i, %i.gf
  %i.gh = select i1 %i.gg, double %.01617.i, double %i.gf ; 2 uses
  %indvars.iv.next.i306 = add nuw nsw i64 %indvars.iv.i305, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i306, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Emap_MogArrival.exit, label %bb.r, !llvm.loop !156

Emap_MogArrival.exit:                             ; preds = %bb.r, %bb.q
  %.016.lcssa.i = phi double [ 0.000000e+00, %bb.q ], [ %i.gh, %bb.r ]
  %i.gi = load i32, ptr %i.dv, align 8, !tbaa !88
  %i.gj = shl nsw i32 %i.gi, 1
  %i.gk = load i32, ptr %i.ey, align 4, !tbaa !90
  %i.gl = add nsw i32 %i.gj, %i.gk
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gm
  %i.go = load double, ptr %i.gn, align 8, !tbaa !126
  %i.gp = fadd double %i.go, 1.000000e-03
  %i.gq = fcmp ogt double %.016.lcssa.i, %i.gp
  br i1 %i.gq, label %bb.bc, label %bb.s

bb.s:                                             ; preds = %Emap_MogArrival.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  %i.gr = load i32, ptr %i.et, align 8, !tbaa !45 ; 5 uses
  %i.gs = icmp slt i32 %i.gr, 1                   ; 3 uses
  %.pre545 = zext nneg i32 %i.gr to i64           ; 3 uses
  br i1 %i.gs, label %.preheader.i.preheader, label %.lr.ph.i307

.lr.ph.i307:                                      ; preds = %bb.s
  %i.gt = shl nuw nsw i64 %.pre545, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr nonnull readonly align 4 %i.ex, i64 %i.gt, i1 false), !tbaa !58
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.s, %.lr.ph.i307
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %Emap_PackEntryCompare.exit.i
  %.02249.i = phi i32 [ %.1.i, %Emap_PackEntryCompare.exit.i ], [ %.5242, %.preheader.i.preheader ] ; 2 uses
  %.02348.i = phi i32 [ %.124.i, %Emap_PackEntryCompare.exit.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.gu = add nuw nsw i32 %.02348.i, %.02249.i
  %i.gv = lshr i32 %i.gu, 1                       ; 3 uses
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.gw ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
end_hunk_3
begin_hunk_4_@Emap_ManRecoverMogsExactMffc:bb.a
  %.10236 = phi i32 [ %.0226476, %bb.k ], [ %.0226476, %bb.m ], [ %.0226476, %bb.l ], [ %.0226476, %bb.n ], [ %.5231, %bb.bb ], [ %.5231, %.critedge2 ], [ %.8234, %bb.bd ] ; 2 uses
  %.10 = phi i32 [ %.0223477, %bb.k ], [ %.0223477, %bb.m ], [ %.0223477, %bb.l ], [ %.0223477, %bb.n ], [ %.5, %bb.bb ], [ %.5, %.critedge2 ], [ %.8, %bb.bd ] ; 2 uses
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; 2 uses
  %exitcond524.not = icmp eq i64 %indvars.iv.next521, %wide.trip.count523
  br i1 %exitcond524.not, label %._crit_edge479, label %bb.k, !llvm.loop !245

._crit_edge479:                                   ; preds = %.thread374, %.critedge.thread, %.critedge
  %.0237.lcssa574 = phi i32 [ %.5242, %.critedge ], [ 0, %.critedge.thread ], [ %.5242, %.thread374 ]
  %.0259.lcssa = phi float [ %i.a, %.critedge ], [ %i.a, %.critedge.thread ], [ %.10269, %.thread374 ] ; 2 uses
  %.0248.lcssa = phi double [ %i.b, %.critedge ], [ %i.b, %.critedge.thread ], [ %.10258, %.thread374 ] ; 2 uses
  %.0226.lcssa = phi i32 [ 0, %.critedge ], [ 0, %.critedge.thread ], [ %.10236, %.thread374 ] ; 3 uses
  %.0223.lcssa = phi i32 [ 0, %.critedge ], [ 0, %.critedge.thread ], [ %.10, %.thread374 ]
  %i.sf = tail call ptr @getenv(ptr noundef nonnull @.str.2) #19
  %.not = icmp eq ptr %i.sf, null
  br i1 %.not, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %._crit_edge479
  %i.sg = fpext float %.0259.lcssa to double
  %i.sh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %.0237.lcssa574, i32 noundef %.0223.lcssa, i32 noundef %.0226.lcssa, double noundef %i.sg, double noundef %.0248.lcssa) ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge479
  store float %.0259.lcssa, ptr %7, align 4, !tbaa !137
  store double %.0248.lcssa, ptr %8, align 8, !tbaa !126
  %.not280 = icmp eq ptr %i.ah, null
  br i1 %.not280, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @free(ptr noundef nonnull %i.ah) #19
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.not281 = icmp eq ptr %i.ag, null
  br i1 %.not281, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @free(ptr noundef nonnull %i.ag) #19
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.si = load ptr, ptr %i.ae, align 8, !tbaa !87 ; 2 uses
  %.not.i344 = icmp eq ptr %i.si, null
  br i1 %.not.i344, label %Vec_IntFree.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @free(ptr noundef nonnull %i.si) #19
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.bj, %bb.bk
  tail call void @free(ptr noundef nonnull %i.ab) #19
  %.not282 = icmp eq ptr %i.aa, null
  br i1 %.not282, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.aa) #19
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %Vec_IntFree.exit, %bb.a
  %.0270 = phi i32 [ 0, %bb.a ], [ %.0226.lcssa, %Vec_IntFree.exit ], [ %.0226.lcssa, %bb.bl ]
  ret i32 %.0270
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Emap_ManPackMogs(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.Emap_PackEntry_t_, align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !79
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.e, align 4, !tbaa !37
  %i.f = sext i32 %.val.val.i to i64
  %i.g = shl nsw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.g, i1 false)
  %i.h = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val141.i = load ptr, ptr %i.h, align 8, !tbaa !128 ; 2 uses
  %i.i = getelementptr i8, ptr %.val141.i, i64 4
  %.val14.val2.i = load i32, ptr %i.i, align 4, !tbaa !37
  %i.j = icmp sgt i32 %.val14.val2.i, 0
  br i1 %i.j, label %.lr.ph.i, label %Emap_ManComputeRefs.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %.val144.i = phi ptr [ %.val14.i, %.lr.ph.i ], [ %.val141.i, %bb.b ]
  %i.k = getelementptr i8, ptr %.val144.i, i64 8
  %.val15.val.i = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %.val12.i = load ptr, ptr %i.n, align 8, !tbaa !61
  %.val12.val.i = load i32, ptr %.val12.i, align 4, !tbaa !58
  %i.o = getelementptr i8, ptr %i.m, i64 20
  %.val13.i = load i32, ptr %i.o, align 4
  %i.p = lshr i32 %.val13.i, 10
  %i.q = and i32 %i.p, 1
  tail call fastcc void @Emap_RefPhase_rec(ptr noundef nonnull %0, ptr noundef readonly %1, ptr noundef %4, i32 noundef %.val12.val.i, i32 noundef %i.q)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val14.i = load ptr, ptr %i.h, align 8, !tbaa !128 ; 2 uses
  %i.r = getelementptr i8, ptr %.val14.i, i64 4
  %.val14.val.i = load i32, ptr %i.r, align 4, !tbaa !37
  %i.s = sext i32 %.val14.val.i to i64
  %i.t = icmp slt i64 %indvars.iv.next.i, %i.s
  br i1 %i.t, label %.lr.ph.i, label %Emap_ManComputeRefs.exit, !llvm.loop !140

Emap_ManComputeRefs.exit:                         ; preds = %.lr.ph.i, %bb.b
  %.val191 = load ptr, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  %i.u = getelementptr i8, ptr %.val191, i64 4    ; 2 uses
  %.val191.val = load i32, ptr %i.u, align 4, !tbaa !37 ; 3 uses
  %i.v = shl nsw i32 %.val191.val, 8
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 48
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #21 ; 10 uses
  %i.z = icmp sgt i32 %.val191.val, 0
  br i1 %i.z, label %.lr.ph258, label %.critedge.thread

.critedge.thread:                                 ; preds = %Emap_ManComputeRefs.exit
  tail call void @qsort(ptr noundef %i.y, i64 noundef 0, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  br label %._crit_edge283

.lr.ph258:                                        ; preds = %Emap_ManComputeRefs.exit
  %i.aa = getelementptr i8, ptr %.val191, i64 8
  %.val196.val = load ptr, ptr %i.aa, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph258, %.loopexit240
  %.val323 = phi i32 [ %.val191.val, %.lr.ph258 ], [ %.val, %.loopexit240 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph258 ], [ %indvars.iv.next, %.loopexit240 ] ; 2 uses
  %.0164257 = phi i32 [ 0, %.lr.ph258 ], [ %.5169, %.loopexit240 ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val196.val, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !57 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.loopexit240, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %i.ac, i64 28
  %.val197 = load i32, ptr %i.ae, align 4, !tbaa !60
  %.not235 = icmp eq i32 %.val197, 2
  br i1 %.not235, label %.preheader239, label %.loopexit240

.preheader239:                                    ; preds = %bb.d
  %i.af = getelementptr i8, ptr %i.ac, i64 16     ; 4 uses
  %.val195 = load i32, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.ag = zext i32 %.val195 to i64                ; 4 uses
  %i.ah = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %i.ag ; 3 uses
  %i.ai = shl i32 %.val195, 1
  %i.aj = zext i32 %i.ai to i64                   ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !58
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader239
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 5192
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !154
  %i.ap = icmp sgt i32 %i.ao, -1
  br i1 %i.ap, label %.loopexit, label %.preheader238

.preheader238:                                    ; preds = %bb.e
  %i.aq = load i32, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.split.us.preheader, label %.loopexit

.lr.ph.split.us.preheader:                        ; preds = %.preheader238
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %wide.trip.count302 = zext nneg i32 %i.aq to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.g
  %indvars.iv299 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next300, %bb.g ] ; 3 uses
  %.2166249.us = phi i32 [ %.0164257, %.lr.ph.split.us.preheader ], [ %.3167.us, %bb.g ] ; 3 uses
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %indvars.iv299 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !45 ; 3 uses
  %i.av = icmp slt i32 %i.au, 2
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !48
  %.val192.us = load i32, ptr %i.af, align 8, !tbaa !40
  %i.ay = sext i32 %.2166249.us to i64
  %i.az = getelementptr inbounds [48 x i8], ptr %i.y, i64 %i.ay ; 6 uses
  store i32 %.val192.us, ptr %i.az, align 8, !tbaa !88
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 0, ptr %i.ba, align 4, !tbaa !90
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = trunc nuw nsw i64 %indvars.iv299 to i32
  store i32 %i.bc, ptr %i.bb, align 8, !tbaa !91
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 %i.au, ptr %i.bd, align 4, !tbaa !92
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store i64 %i.ax, ptr %i.be, align 8, !tbaa !93
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = zext nneg i32 %i.au to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bg, ptr nonnull align 4 %i.bf, i64 %i.bi, i1 false), !tbaa !58
  %i.bj = add nsw i32 %.2166249.us, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us
  %.3167.us = phi i32 [ %i.bj, %bb.f ], [ %.2166249.us, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next300, %wide.trip.count302
  br i1 %exitcond303.not, label %.loopexit.loopexit, label %.lr.ph.split.us, !llvm.loop !246

.loopexit.loopexit:                               ; preds = %bb.g
  %.val195.1.pre = load i32, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %.pre332 = zext i32 %.val195.1.pre to i64
  %.pre333 = shl i32 %.val195.1.pre, 1
  %.pre335 = zext i32 %.pre333 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader238, %.preheader239, %bb.e
  %.pre-phi336 = phi i64 [ %i.aj, %bb.e ], [ %.pre335, %.loopexit.loopexit ], [ %i.aj, %.preheader238 ], [ %i.aj, %.preheader239 ]
  %.pre-phi = phi i64 [ %i.ag, %bb.e ], [ %.pre332, %.loopexit.loopexit ], [ %i.ag, %.preheader238 ], [ %i.ag, %.preheader239 ]
  %.4168 = phi i32 [ %.0164257, %bb.e ], [ %.3167.us, %.loopexit.loopexit ], [ %.0164257, %.preheader238 ], [ %.0164257, %.preheader239 ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [5320 x i8], ptr %1, i64 %.pre-phi ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.pre-phi336
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !58
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.loopexit.1, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 5288
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !154
  %i.br = icmp sgt i32 %i.bq, -1
  br i1 %i.br, label %.loopexit.1, label %.preheader238.1

.preheader238.1:                                  ; preds = %bb.h
  %i.bs = load i32, ptr %i.bk, align 8, !tbaa !43 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.split.preheader.1, label %.loopexit.1

.lr.ph.split.preheader.1:                         ; preds = %.preheader238.1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %wide.trip.count.1 = zext nneg i32 %i.bs to i64
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %bb.j, %.lr.ph.split.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.split.preheader.1 ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %.2166249.1 = phi i32 [ %.4168, %.lr.ph.split.preheader.1 ], [ %.3167.1, %bb.j ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.bu, i64 %indvars.iv.1 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !45 ; 5 uses
  %i.bx = icmp slt i32 %i.bw, 2
  br i1 %i.bx, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.1
  %i.by = icmp eq i32 %i.bw, 6
  %i.bz = shl nuw i32 1, %i.bw
  %i.ca = zext nneg i32 %i.bz to i64
  %notmask.i.1 = shl nsw i64 -1, %i.ca
  %i.cb = xor i64 %notmask.i.1, -1
  %i.cc = select i1 %i.by, i64 -1, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !48
  %i.cf = xor i64 %i.cc, %i.ce
  %.val192.1 = load i32, ptr %i.af, align 8, !tbaa !40
  %i.cg = sext i32 %.2166249.1 to i64
  %i.ch = getelementptr inbounds [48 x i8], ptr %i.y, i64 %i.cg ; 6 uses
  store i32 %.val192.1, ptr %i.ch, align 8, !tbaa !88
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 1, ptr %i.ci, align 4, !tbaa !90
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = trunc nuw nsw i64 %indvars.iv.1 to i32
  store i32 %i.ck, ptr %i.cj, align 8, !tbaa !91
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 %i.bw, ptr %i.cl, align 4, !tbaa !92
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store i64 %i.cf, ptr %i.cm, align 8, !tbaa !93
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cp = zext nneg i32 %i.bw to i64
  %i.cq = shl nuw nsw i64 %i.cp, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.co, ptr nonnull align 4 %i.cn, i64 %i.cq, i1 false), !tbaa !58
  %i.cr = add nsw i32 %.2166249.1, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.1
  %.3167.1 = phi i32 [ %i.cr, %bb.i ], [ %.2166249.1, %.lr.ph.split.1 ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.split.1, !llvm.loop !246

.loopexit.1:                                      ; preds = %bb.j, %.preheader238.1, %bb.h, %.loopexit
  %.4168.1 = phi i32 [ %.4168, %.loopexit ], [ %.4168, %bb.h ], [ %.4168, %.preheader238.1 ], [ %.3167.1, %bb.j ]
  %.val.pre = load i32, ptr %i.u, align 4, !tbaa !37
  br label %.loopexit240

.loopexit240:                                     ; preds = %.loopexit.1, %bb.d, %bb.c
  %.val = phi i32 [ %.val323, %bb.c ], [ %.val323, %bb.d ], [ %.val.pre, %.loopexit.1 ] ; 2 uses
  %.5169 = phi i32 [ %.0164257, %bb.c ], [ %.0164257, %bb.d ], [ %.4168.1, %.loopexit.1 ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cs = sext i32 %.val to i64
  %i.ct = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %bb.c, label %.critedge, !llvm.loop !247

.critedge:                                        ; preds = %.loopexit240
  %i.cu = sext i32 %.5169 to i64
  tail call void @qsort(ptr noundef %i.y, i64 noundef %i.cu, i64 noundef 48, ptr noundef nonnull @Emap_PackEntryCompare) #19
  %i.cv = icmp sgt i32 %.5169, 0
  br i1 %i.cv, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %.critedge
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %wide.trip.count320 = zext nneg i32 %.5169 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph282, %.thread233
  %indvars.iv317 = phi i64 [ 0, %.lr.ph282 ], [ %indvars.iv.next318, %.thread233 ] ; 2 uses
  %.0161281 = phi i32 [ 0, %.lr.ph282 ], [ %.10, %.thread233 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv317 ; 5 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !88 ; 5 uses
  %i.da = sext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !90 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr [96 x i8], ptr %i.db, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 5192   ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !154 ; 3 uses
  %i.di = icmp sgt i32 %i.dh, -1
  br i1 %i.di, label %.thread233, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !91
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [40 x i8], ptr %i.dj, i64 %i.dm ; 3 uses
  %i.do = load i32, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph276, label %.thread233

.lr.ph276:                                        ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 4 uses
  %i.ds = shl nsw i32 %i.cz, 1
  %i.dt = add nsw i32 %i.ds, %i.dd
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %3, i64 %i.du
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph276, %bb.at
  %i.dw = phi i32 [ %i.do, %.lr.ph276 ], [ %i.kr, %bb.at ]
  %.pr329 = phi i32 [ %i.dh, %.lr.ph276 ], [ %.pr325, %bb.at ] ; 2 uses
  %i.dx = phi i32 [ %i.dh, %.lr.ph276 ], [ %i.ks, %bb.at ] ; 2 uses
  %indvars.iv314 = phi i64 [ 0, %.lr.ph276 ], [ %indvars.iv.next315, %bb.at ] ; 2 uses
  %.1162274 = phi i32 [ %.0161281, %.lr.ph276 ], [ %.8.ph, %bb.at ] ; 2 uses
  %i.dy = load ptr, ptr %i.cw, align 8, !tbaa !148
  %i.dz = getelementptr inbounds nuw [144 x i8], ptr %i.dy, i64 %indvars.iv314 ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !97
  %i.ec = load i32, ptr %i.dn, align 8, !tbaa !45
  %.not181 = icmp eq i32 %i.eb, %i.ec
  br i1 %.not181, label %.preheader236, label %bb.at

.preheader236:                                    ; preds = %bb.m
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 80 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 72 ; 2 uses
  %i.ef = load i64, ptr %i.dq, align 8, !tbaa !93
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 20 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 44 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader236, %bb.ar
  %.pr328 = phi i32 [ %.pr329, %.preheader236 ], [ %.pr, %bb.ar ] ; 9 uses
  %i.ei = phi i32 [ %i.dx, %.preheader236 ], [ %i.kp, %bb.ar ] ; 9 uses
  %.not182 = phi i1 [ true, %.preheader236 ], [ false, %bb.ar ] ; 4 uses
  %.not.i207 = phi i64 [ 116, %.preheader236 ], [ 92, %bb.ar ]
  %.0157270 = phi i32 [ 0, %.preheader236 ], [ 1, %bb.ar ]
  %.2163269 = phi i32 [ %.1162274, %.preheader236 ], [ %.6.ph, %bb.ar ] ; 10 uses
  %.in = select i1 %.not182, ptr %i.ee, ptr %i.ed
  %i.ej = load i64, ptr %.in, align 8, !tbaa !99
  %.in183 = select i1 %.not182, ptr %i.ed, ptr %i.ee
  %i.ek = load i64, ptr %.in183, align 8, !tbaa !99 ; 4 uses
  %.not184 = icmp eq i64 %i.ej, %i.ef
  br i1 %.not184, label %bb.o, label %bb.ar

bb.o:                                             ; preds = %bb.n
  %i.el = load i32, ptr %i.ea, align 8, !tbaa !97 ; 3 uses
  %i.em = icmp sgt i32 %i.el, 0                   ; 2 uses
  br i1 %i.em, label %.lr.ph.i199, label %Emap_MogArrival.exit

.lr.ph.i199:                                      ; preds = %bb.o
  %..i = select i1 %.not182, i64 92, i64 116
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 %..i
  %wide.trip.count.i = zext nneg i32 %i.el to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i199
  %indvars.iv.i200 = phi i64 [ 0, %.lr.ph.i199 ], [ %indvars.iv.next.i201, %bb.p ] ; 4 uses
  %.01617.i = phi double [ 0.000000e+00, %.lr.ph.i199 ], [ %i.ff, %bb.p ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i200
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !58
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !58
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [5320 x i8], ptr %1, i64 %i.et
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i200
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !58
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr [96 x i8], ptr %i.eu, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 5208
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !51
  %.in.i = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.i200
  %i.fb = load float, ptr %.in.i, align 4, !tbaa !137
  %i.fc = fpext float %i.fb to double
  %i.fd = fadd double %i.fa, %i.fc                ; 2 uses
  %i.fe = fcmp ogt double %.01617.i, %i.fd
  %i.ff = select i1 %i.fe, double %.01617.i, double %i.fd ; 2 uses
  %indvars.iv.next.i201 = add nuw nsw i64 %indvars.iv.i200, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i201, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Emap_MogArrival.exit, label %bb.p, !llvm.loop !156

Emap_MogArrival.exit:                             ; preds = %bb.p, %bb.o
  %.016.lcssa.i = phi double [ 0.000000e+00, %bb.o ], [ %i.ff, %bb.p ]
  %i.fg = load double, ptr %i.dv, align 8, !tbaa !126
  %i.fh = fadd double %i.fg, 1.000000e-03
  %i.fi = fcmp ogt double %.016.lcssa.i, %i.fh
  br i1 %i.fi, label %bb.ar, label %bb.q

bb.q:                                             ; preds = %Emap_MogArrival.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %i.fj = load i32, ptr %i.dn, align 8, !tbaa !45 ; 8 uses
  %i.fk = icmp slt i32 %i.fj, 1                   ; 3 uses
  %.pre337 = zext i32 %i.fj to i64                ; 6 uses
  br i1 %i.fk, label %.preheader.i.preheader, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %bb.q
  %i.fl = shl nuw nsw i64 %.pre337, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr nonnull readonly align 4 %i.dr, i64 %i.fl, i1 false), !tbaa !58
  br label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.q, %.lr.ph.i202
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %Emap_PackEntryCompare.exit.i
  %.02249.i = phi i32 [ %.1.i, %Emap_PackEntryCompare.exit.i ], [ %.5169, %.preheader.i.preheader ] ; 2 uses
  %.02348.i = phi i32 [ %.124.i, %Emap_PackEntryCompare.exit.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.fm = add nuw nsw i32 %.02348.i, %.02249.i
  %i.fn = lshr i32 %i.fm, 1                       ; 3 uses
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.fo ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !92 ; 2 uses
  %.not.i.i = icmp eq i32 %i.fr, %i.fj
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader.i
  %i.fs = sub nsw i32 %i.fr, %i.fj
  br label %Emap_PackEntryCompare.exit.i

bb.s:                                             ; preds = %.preheader.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !93 ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.ek
  br i1 %i.fv, label %Emap_PackEntryCompare.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fw = icmp ugt i64 %i.fu, %i.ek               ; 2 uses
  %brmerge.i = or i1 %i.fk, %i.fw
  %.mux.i = zext i1 %i.fw to i32
  br i1 %brmerge.i, label %Emap_PackEntryCompare.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %.pre337
end_hunk_4
