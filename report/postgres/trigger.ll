Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/trigger?download=true
inline.NumInlined: 180
inline.NumDeleted: 51
begin_hunk_0_@CreateTriggerFiringOn:bb.a

.split624.us:                                     ; preds = %bb.aw, %bb.bh, %bb.bw, %bb.bs
  %i.il = load ptr, ptr %i.h, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 131
  %i.in = load i8, ptr %i.im, align 1, !range !13, !noundef !14
  %i.io = trunc nuw i8 %i.in to i1
  %i.ip = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.iq = tail call i32 @errcode(i32 noundef 1088) #14 ; 0 uses
  br i1 %i.io, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.split624.us
  %i.ir = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.21) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 466, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

bb.by:                                            ; preds = %.split624.us
  %i.is = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 470, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

bb.bz:                                            ; preds = %._crit_edge812, %bb.bv
  %i.it = phi i16 [ %.pre, %._crit_edge812 ], [ %i.dw, %bb.bv ]
  %.not521 = icmp eq i16 %i.it, 0
  br i1 %.not521, label %bb.ca, label %.split626.us

.split626.us:                                     ; preds = %bb.ax, %._crit_edge815, %bb.bz, %bb.bt
  %i.iu = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.iv = tail call i32 @errcode(i32 noundef 117833860) #14 ; 0 uses
  %i.iw = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.23) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 476, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

bb.ca:                                            ; preds = %bb.bz
  %i.ix = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.iy = tail call i32 @errcode(i32 noundef 1088) #14 ; 0 uses
  %i.iz = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.24) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 481, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.split628.us:                                     ; preds = %bb.bt
  %i.ja = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.jb = tail call i32 @errcode(i32 noundef 1088) #14 ; 0 uses
  %i.jc = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.25) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 498, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.split630.us:                                     ; preds = %.critedge932, %bb.ay
  %i.jd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.je = tail call i32 @errcode(i32 noundef 1088) #14 ; 0 uses
  %i.jf = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.26) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 509, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.split636.us:                                     ; preds = %bb.bm, %bb.bc
  %i.jg = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.jh = tail call i32 @errcode(i32 noundef 117833860) #14 ; 0 uses
  %i.ji = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.27) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 526, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.split638.us:                                     ; preds = %bb.bn
  %i.jj = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.jk = tail call i32 @errcode(i32 noundef 117833860) #14 ; 0 uses
  %i.jl = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.28) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 531, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.split632.us:                                     ; preds = %bb.bj, %bb.ba
  %i.jm = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.jn = tail call i32 @errcode(i32 noundef 117833860) #14 ; 0 uses
  %i.jo = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.29) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 541, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.split634.us:                                     ; preds = %bb.bk
  %i.jp = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.jq = tail call i32 @errcode(i32 noundef 117833860) #14 ; 0 uses
  %i.jr = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.30) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 546, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

bb.cb:                                            ; preds = %.critedge535
  %i.js = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1426.us.us.lcssa, ptr noundef nonnull dereferenceable(1) %.1429.us.us.lcssa) #16
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %bb.cc, label %.critedge535.thread

bb.cc:                                            ; preds = %bb.cb
  %i.ju = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.jv = tail call i32 @errcode(i32 noundef 117833860) #14 ; 0 uses
  %i.jw = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.31) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 556, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.critedge535.thread:                              ; preds = %.preheader576, %.critedge535, %bb.cb, %bb.at
  %.2430 = phi ptr [ null, %bb.at ], [ %.1429.us.us.lcssa, %bb.cb ], [ %.1429.us.us.lcssa, %.critedge535 ], [ null, %.preheader576 ] ; 2 uses
  %.2427 = phi ptr [ null, %bb.at ], [ %.1426.us.us.lcssa, %bb.cb ], [ %.1426.us.us.lcssa, %.critedge535 ], [ null, %.preheader576 ] ; 2 uses
  %.not490 = icmp eq ptr %8, null
  br i1 %.not490, label %bb.cd, label %.critedge545

bb.cd:                                            ; preds = %.critedge535.thread
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8
  %.not491 = icmp eq ptr %i.jy, null
  br i1 %.not491, label %bb.cn, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jz = tail call ptr @make_parsestate(ptr noundef null) #14 ; 16 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store ptr %1, ptr %i.ka, align 8
  %i.kb = tail call ptr @makeAlias(ptr noundef nonnull @.str.32, ptr noundef null) #14
  %i.kc = tail call ptr @addRangeTableEntryForRelation(ptr noundef %i.jz, ptr noundef nonnull %.0404, i32 noundef 1, ptr noundef %i.kb, i1 noundef zeroext false, i1 noundef zeroext false) #14
  tail call void @addNSItemToQuery(ptr noundef %i.jz, ptr noundef %i.kc, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #14
  %i.kd = tail call ptr @makeAlias(ptr noundef nonnull @.str.33, ptr noundef null) #14
  %i.ke = tail call ptr @addRangeTableEntryForRelation(ptr noundef %i.jz, ptr noundef nonnull %.0404, i32 noundef 1, ptr noundef %i.kd, i1 noundef zeroext false, i1 noundef zeroext false) #14
  tail call void @addNSItemToQuery(ptr noundef %i.jz, ptr noundef %i.ke, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #14
  %i.kf = load ptr, ptr %i.jx, align 8
  %i.kg = tail call ptr @copyObjectImpl(ptr noundef %i.kf) #14
  %i.kh = tail call ptr @transformWhereClause(ptr noundef %i.jz, ptr noundef %i.kg, i32 noundef 38, ptr noundef nonnull @.str.34) #14 ; 4 uses
  tail call void @assign_expr_collations(ptr noundef %i.jz, ptr noundef %i.kh) #14
  %i.ki = tail call ptr @pull_var_clause(ptr noundef %i.kh, i32 noundef 0) #14 ; 3 uses
  %.not492 = icmp eq ptr %i.ki, null
  br i1 %.not492, label %.critedge539, label %.lr.ph643

.lr.ph643:                                        ; preds = %bb.ce
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kk = load i32, ptr %i.kj, align 4            ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 16 ; 3 uses
  %i.km = and i16 %.fr747, 8
  %.not494 = icmp eq i16 %i.km, 0
  %i.kn = icmp eq i16 %i.eh, 2
  %i.ko = getelementptr inbounds nuw i8, ptr %.0404, i64 64 ; 3 uses
  %i.kp = and i16 %.fr747, 4
  %.not497 = icmp eq i16 %i.kp, 0                 ; 4 uses
  %i.kq = icmp sgt i32 %i.kk, 0                   ; 3 uses
  br i1 %.not483, label %.lr.ph643.split.us, label %.lr.ph643.split.split.split

.lr.ph643.split.us:                               ; preds = %.lr.ph643
  br i1 %.not497, label %.lr.ph643.split.us.split.us.split, label %.lr.ph643.split.us.split

.lr.ph643.split.us.split.us.split:                ; preds = %.lr.ph643.split.us
  br i1 %i.kq, label %.lr.ph720, label %.critedge539

.lr.ph720:                                        ; preds = %.lr.ph643.split.us.split.us.split
  %i.kr = load ptr, ptr %i.kl, align 8
  %i.ks = load ptr, ptr %i.kr, align 8            ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %i.ku = load i32, ptr %i.kt, align 4
  switch i32 %i.ku, label %.split646.us [
    i32 1, label %.split650.us
    i32 2, label %.split648.us
  ]

.lr.ph643.split.us.split:                         ; preds = %.lr.ph643.split.us
  br i1 %i.kq, label %bb.cf, label %.critedge539

bb.cf:                                            ; preds = %.lr.ph643.split.us.split
  %i.kv = load ptr, ptr %i.kl, align 8
  %i.kw = load ptr, ptr %i.kv, align 8            ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.ky = load i32, ptr %i.kx, align 4
  switch i32 %i.ky, label %.split646.us [
    i32 1, label %.split650.us
    i32 2, label %.split648.us
  ]

.lr.ph643.split.split.split:                      ; preds = %.lr.ph643
  br i1 %i.kq, label %.lr.ph677, label %.critedge539

.lr.ph677:                                        ; preds = %.lr.ph643.split.split.split
  %i.kz = load ptr, ptr %i.kl, align 8            ; 5 uses
  br i1 %.not494, label %.lr.ph677.split.us, label %.lr.ph677.split

.lr.ph677.split.us:                               ; preds = %.lr.ph677
  %wide.trip.count786 = zext nneg i32 %i.kk to i64 ; 3 uses
  br i1 %i.kn, label %.lr.ph677.split.us.split.us, label %.lr.ph677.split.us.split.split

.lr.ph677.split.us.split.us:                      ; preds = %.lr.ph677.split.us, %.critedge543.us681.us
  %indvars.iv783 = phi i64 [ %indvars.iv.next784, %.critedge543.us681.us ], [ 0, %.lr.ph677.split.us ] ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv783
  %i.lb = load ptr, ptr %i.la, align 8            ; 7 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ld = load i32, ptr %i.lc, align 4
  switch i32 %i.ld, label %.split646.us [
    i32 1, label %bb.cm
    i32 2, label %bb.cg
  ]

bb.cg:                                            ; preds = %.lr.ph677.split.us.split.us
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.lf = load i16, ptr %i.le, align 8            ; 3 uses
  %i.lg = icmp slt i16 %i.lf, 0
  br i1 %i.lg, label %.split665.us, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lh = icmp eq i16 %i.lf, 0
  br i1 %i.lh, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.li = zext nneg i16 %i.lf to i64
  %i.lj = load ptr, ptr %i.ko, align 8            ; 2 uses
  %15 = add nuw nsw i64 %i.li, 4294967295
  %i.lk = load i32, ptr %i.lj, align 8
  %i.ll = sext i32 %i.lk to i64
  %i.lm = shl nsw i64 %i.ll, 3
  %i.ln = getelementptr i8, ptr %i.lj, i64 %i.lm
  %16 = and i64 %15, 4294967295
  %i.lo = getelementptr [100 x i8], ptr %i.ln, i64 %16
  %i.lp = getelementptr i8, ptr %i.lo, i64 122
  %i.lq = load i8, ptr %i.lp, align 2
  %.not496.us679.us = icmp eq i8 %i.lq, 0
  br i1 %.not496.us679.us, label %.critedge543.us681.us, label %.split668.us

bb.cj:                                            ; preds = %bb.ch
  %i.lr = load ptr, ptr %i.ko, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8            ; 3 uses
  %.not495.us680.us = icmp eq ptr %i.lt, null
  br i1 %.not495.us680.us, label %.critedge543.us681.us, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 29
  %i.lv = load i8, ptr %i.lu, align 1, !range !13, !noundef !14
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %.split672.us, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 30
  %i.ly = load i8, ptr %i.lx, align 2, !range !13, !noundef !14
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %.split672.us, label %.critedge543.us681.us

bb.cm:                                            ; preds = %.lr.ph677.split.us.split.us
  br i1 %.not497, label %.critedge543.us681.us, label %.split653

.critedge543.us681.us:                            ; preds = %bb.cm, %bb.cl, %bb.cj, %bb.ci
  %indvars.iv.next784 = add nuw nsw i64 %indvars.iv783, 1 ; 2 uses
  %exitcond787.not = icmp eq i64 %indvars.iv.next784, %wide.trip.count786
  br i1 %exitcond787.not, label %.critedge539, label %.lr.ph677.split.us.split.us

.lr.ph677.split.us.split.split:                   ; preds = %.lr.ph677.split.us
  br i1 %.not497, label %.lr.ph677.split.us.split.split.split.us, label %.lr.ph677.split.us.split.split.split

.lr.ph677.split.us.split.split.split.us:          ; preds = %.lr.ph677.split.us.split.split, %.critedge543.us681.us707
  %indvars.iv778 = phi i64 [ %indvars.iv.next779, %.critedge543.us681.us707 ], [ 0, %.lr.ph677.split.us.split.split ] ; 2 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv778
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = load i32, ptr %i.mc, align 4
  %.off = add i32 %i.md, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.critedge543.us681.us707, label %.split646.us

.critedge543.us681.us707:                         ; preds = %.lr.ph677.split.us.split.split.split.us
  %indvars.iv.next779 = add nuw nsw i64 %indvars.iv778, 1 ; 2 uses
  %exitcond782.not = icmp eq i64 %indvars.iv.next779, %wide.trip.count786
  br i1 %exitcond782.not, label %.critedge539, label %.lr.ph677.split.us.split.split.split.us

.lr.ph677.split.us.split.split.split:             ; preds = %.lr.ph677.split.us.split.split, %.critedge543.us681
  %indvars.iv773 = phi i64 [ %indvars.iv.next774, %.critedge543.us681 ], [ 0, %.lr.ph677.split.us.split.split ] ; 2 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv773
  %i.mf = load ptr, ptr %i.me, align 8            ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %i.mh = load i32, ptr %i.mg, align 4
  switch i32 %i.mh, label %.split646.us [
    i32 1, label %.split653
    i32 2, label %.critedge543.us681
  ]

.critedge543.us681:                               ; preds = %.lr.ph677.split.us.split.split.split
  %indvars.iv.next774 = add nuw nsw i64 %indvars.iv773, 1 ; 2 uses
  %exitcond777.not = icmp eq i64 %indvars.iv.next774, %wide.trip.count786
  br i1 %exitcond777.not, label %.critedge539, label %.lr.ph677.split.us.split.split.split

.lr.ph677.split:                                  ; preds = %.lr.ph677
  br i1 %.not497, label %.lr.ph677.split.split.us.preheader, label %.lr.ph677.split.split

.lr.ph677.split.split.us.preheader:               ; preds = %.lr.ph677.split
  %wide.trip.count = zext nneg i32 %i.kk to i64
  br label %.lr.ph677.split.split.us

.lr.ph677.split.split.us:                         ; preds = %.lr.ph677.split.split.us.preheader, %.critedge543.us697
  %indvars.iv770 = phi i64 [ 0, %.lr.ph677.split.split.us.preheader ], [ %indvars.iv.next771, %.critedge543.us697 ] ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv770
  %i.mj = load ptr, ptr %i.mi, align 8            ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  %i.ml = load i32, ptr %i.mk, align 4
  switch i32 %i.ml, label %.split646.us [
    i32 1, label %.critedge543.us697
    i32 2, label %.split663.us
  ]

.critedge543.us697:                               ; preds = %.lr.ph677.split.split.us
  %indvars.iv.next771 = add nuw nsw i64 %indvars.iv770, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next771, %wide.trip.count
  br i1 %exitcond.not, label %.critedge539, label %.lr.ph677.split.split.us

.lr.ph677.split.split:                            ; preds = %.lr.ph677.split
  %i.mm = load ptr, ptr %i.kz, align 8            ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.mo = load i32, ptr %i.mn, align 4
  switch i32 %i.mo, label %.split646.us [
    i32 1, label %.split653
    i32 2, label %.split663.us
  ]

.critedge539:                                     ; preds = %.critedge543.us697, %.critedge543.us681, %.critedge543.us681.us707, %.critedge543.us681.us, %.lr.ph643.split.us.split, %.lr.ph643.split.us.split.us.split, %.lr.ph643.split.split.split, %bb.ce
  %i.mp = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8
  %i.mr = tail call ptr @nodeToString(ptr noundef %i.kh) #14
  tail call void @free_parsestate(ptr noundef %i.jz) #14
  br label %bb.cn

.split650.us:                                     ; preds = %.lr.ph720, %bb.cf
  %.us-phi715 = phi ptr [ %i.kw, %bb.cf ], [ %i.ks, %.lr.ph720 ]
  %i.ms = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.mt = tail call i32 @errcode(i32 noundef 117833860) #14 ; 0 uses
  %i.mu = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.35) #14 ; 0 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.us-phi715, i64 48
  %i.mw = load i32, ptr %i.mv, align 8
  %i.mx = tail call i32 @parser_errposition(ptr noundef nonnull %i.jz, i32 noundef %i.mw) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 621, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.split653:                                        ; preds = %.lr.ph677.split.us.split.split.split, %bb.cm, %.lr.ph677.split.split
  %.us-phi675 = phi ptr [ %i.lb, %bb.cm ], [ %i.mm, %.lr.ph677.split.split ], [ %i.mf, %.lr.ph677.split.us.split.split.split ]
  %i.my = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.mz = tail call i32 @errcode(i32 noundef 117833860) #14 ; 0 uses
  %i.na = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.36) #14 ; 0 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.us-phi675, i64 48
  %i.nc = load i32, ptr %i.nb, align 8
  %i.nd = tail call i32 @parser_errposition(ptr noundef %i.jz, i32 noundef %i.nc) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 626, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.split648.us:                                     ; preds = %bb.cf, %.lr.ph720
  %.lcssa583.us = phi ptr [ %i.ks, %.lr.ph720 ], [ %i.kw, %bb.cf ]
  %i.ne = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.nf = tail call i32 @errcode(i32 noundef 117833860) #14 ; 0 uses
  %i.ng = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.35) #14 ; 0 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.lcssa583.us, i64 48
  %i.ni = load i32, ptr %i.nh, align 8
  %i.nj = tail call i32 @parser_errposition(ptr noundef nonnull %i.jz, i32 noundef %i.ni) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 634, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.split663.us:                                     ; preds = %.lr.ph677.split.split.us, %.lr.ph677.split.split
  %.us-phi = phi ptr [ %i.mm, %.lr.ph677.split.split ], [ %i.mj, %.lr.ph677.split.split.us ]
  %i.nk = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.nl = tail call i32 @errcode(i32 noundef 117833860) #14 ; 0 uses
  %i.nm = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.37) #14 ; 0 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.us-phi, i64 48
  %i.no = load i32, ptr %i.nn, align 8
  %i.np = tail call i32 @parser_errposition(ptr noundef %i.jz, i32 noundef %i.no) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 639, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.split665.us:                                     ; preds = %bb.cg
  %i.nq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.nr = tail call i32 @errcode(i32 noundef 1088) #14 ; 0 uses
  %i.ns = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.38) #14 ; 0 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.nu = load i32, ptr %i.nt, align 8
  %i.nv = tail call i32 @parser_errposition(ptr noundef %i.jz, i32 noundef %i.nu) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 644, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.split672.us:                                     ; preds = %bb.ck, %bb.cl
  %i.nw = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.nx = tail call i32 @errcode(i32 noundef 117833860) #14 ; 0 uses
  %i.ny = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.39) #14 ; 0 uses
  %i.nz = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.40) #14 ; 0 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.ob = load i32, ptr %i.oa, align 8
  %i.oc = tail call i32 @parser_errposition(ptr noundef %i.jz, i32 noundef %i.ob) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 654, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.split668.us:                                     ; preds = %bb.ci
  %i.od = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.oe = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.of = tail call i32 @errcode(i32 noundef 117833860) #14 ; 0 uses
  %i.og = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.39) #14 ; 0 uses
  %i.oh = load ptr, ptr %i.ko, align 8            ; 2 uses
  %i.oi = load i16, ptr %i.od, align 8
  %i.oj = sext i16 %i.oi to i64
  %i.ok = load i32, ptr %i.oh, align 8
  %i.ol = sext i32 %i.ok to i64
  %i.om = shl nsw i64 %i.ol, 3
  %i.on = getelementptr i8, ptr %i.oh, i64 %i.om
  %i.oo = getelementptr [100 x i8], ptr %i.on, i64 %i.oj
  %i.op = getelementptr i8, ptr %i.oo, i64 -64
  %i.oq = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.41, ptr noundef nonnull %i.op) #14 ; 0 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.os = load i32, ptr %i.or, align 8
  %i.ot = tail call i32 @parser_errposition(ptr noundef %i.jz, i32 noundef %i.os) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 663, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.split646.us:                                     ; preds = %.lr.ph677.split.split.us, %.lr.ph677.split.us.split.split.split, %.lr.ph677.split.us.split.split.split.us, %.lr.ph677.split.us.split.us, %.lr.ph677.split.split, %.lr.ph720, %bb.cf
  %i.ou = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #15 ; 0 uses
  %i.ov = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.42) #14 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 667, ptr noundef nonnull @__func__.CreateTriggerFiringOn) #14
  unreachable

.critedge545:                                     ; preds = %.critedge535.thread
  %i.ow = tail call ptr @nodeToString(ptr noundef nonnull %8) #14
  br label %bb.cn

end_hunk_0
