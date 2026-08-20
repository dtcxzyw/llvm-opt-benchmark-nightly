inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@parse_line:bb.a
  %.pn = phi i64 [ %i.dj, %bb.y ], [ %i.dj, %bb.z ], [ %i.cv, %bb.aa ]
  %i.ed = getelementptr i8, ptr %0, i64 %.pn
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = icmp eq i8 %i.ee, 44
  br i1 %i.ef, label %.preheader474.preheader, label %sub_0

.preheader474.preheader:                          ; preds = %bb.ab
  %i.eg = sext i32 %.lcssa504735741 to i64
  %i.eh = sext i32 %1 to i64
  %i.ei = add nsw i32 %.lcssa504735741, 1
  %smax656 = call i32 @llvm.smax.i32(i32 %1, i32 %i.ei)
  %i.ej = add nsw i32 %smax656, -1
  br label %.preheader474

.preheader474:                                    ; preds = %.preheader474.preheader, %bb.ag
  %indvars.iv654 = phi i64 [ 0, %.preheader474.preheader ], [ %indvars.iv.next655, %bb.ag ] ; 6 uses
  %indvars.iv652 = phi i64 [ %i.eg, %.preheader474.preheader ], [ %indvars.iv.next653, %bb.ag ] ; 3 uses
  %i.ek = getelementptr i8, ptr %0, i64 %indvars.iv652
  %i.el = load i8, ptr %i.ek, align 1             ; 4 uses
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr [2 x i8], ptr %i.d, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = and i16 %i.eo, 8                        ; 2 uses
  %.not394 = icmp eq i16 %i.ep, 0
  br i1 %.not394, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader474
  %i.eq = icmp eq i8 %i.el, 44
  %i.er = icmp samesign ult i64 %indvars.iv654, 257
  %or.cond7 = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond7, label %bb.ae, label %.critedge9.split.loop.exit

bb.ad:                                            ; preds = %.preheader474
  %.old6 = icmp samesign ult i64 %indvars.iv654, 257
  br i1 %.old6, label %bb.ae, label %.critedge19

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %indvars.iv.next653 = add nsw i64 %indvars.iv652, 1 ; 2 uses
  %i.es = icmp slt i64 %indvars.iv.next653, %i.eh
  br i1 %i.es, label %bb.af, label %.critedge9

bb.af:                                            ; preds = %bb.ae
  %.not396 = icmp ne i16 %i.ep, 0
  %.not397 = icmp eq i8 %i.el, 44
  %or.cond431 = or i1 %.not397, %.not396
  br i1 %or.cond431, label %bb.ag, label %.critedge19

bb.ag:                                            ; preds = %bb.af
  %i.et = getelementptr i8, ptr %17, i64 %indvars.iv654
  store i8 %i.el, ptr %i.et, align 1
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1
  br label %.preheader474, !llvm.loop !17

.critedge9.split.loop.exit:                       ; preds = %bb.ac
  %i.eu = trunc nsw i64 %indvars.iv652 to i32
  br label %.critedge9

.critedge9:                                       ; preds = %bb.ae, %.critedge9.split.loop.exit
  %.4.lcssa618 = phi i32 [ %i.eu, %.critedge9.split.loop.exit ], [ %i.ej, %bb.ae ] ; 2 uses
  %i.ev = icmp samesign ult i64 %indvars.iv654, 257
  %i.ew = add nsw i32 %.4.lcssa618, 1
  %.not395 = icmp slt i32 %i.ew, %1
  %or.cond432 = and i1 %i.ev, %.not395
  br i1 %or.cond432, label %bb.ah, label %.critedge19

bb.ah:                                            ; preds = %.critedge9
  %i.ex = getelementptr i8, ptr %17, i64 %indvars.iv654
  store i8 0, ptr %i.ex, align 1
  br label %sub_0

sub_0:                                            ; preds = %bb.k, %bb.ah, %bb.ab
  %.5 = phi i32 [ %.0358523, %bb.k ], [ %.4.lcssa618, %bb.ah ], [ %.3.lcssa733743, %bb.ab ] ; 4 uses
  %i.ey = load i8, ptr %15, align 1               ; 2 uses
  %.not = icmp eq i8 %i.ey, 105
  br i1 %.not, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 1
  %i.fa = load i8, ptr %i.ez, align 1
  %.not588 = icmp eq i8 %i.fa, 112
  br i1 %.not588, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.fb = getelementptr inbounds nuw i8, ptr %15, i64 2
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %.thread.sink.split, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.fe = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(5) @.str.5) #19
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %.thread.sink.split, label %bb.ai

bb.ai:                                            ; preds = %.tail.thread
  %i.fg = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(4) @.str.6) #19
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %.thread.sink.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fi = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(6) @.str.7) #19
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %.thread.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fk = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(5) @.str.8) #19
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %.thread.sink.split, label %sub_0458

sub_0458:                                         ; preds = %bb.ak
  %.not589 = icmp eq i8 %i.ey, 102
  br i1 %.not589, label %sub_1459, label %.tail457.thread

sub_1459:                                         ; preds = %sub_0458
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 1
  %i.fn = load i8, ptr %i.fm, align 1
  %.not590 = icmp eq i8 %i.fn, 112
  br i1 %.not590, label %.tail457, label %.tail457.thread

.tail457:                                         ; preds = %sub_1459
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 2
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.al, label %.tail457.thread

.tail457.thread:                                  ; preds = %sub_1459, %sub_0458, %.tail457
  %i.fr = call i32 @strncmp(ptr noundef %15, ptr noundef nonnull dereferenceable(5) @.str.10, i64 noundef 4) #19
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.tail457.thread, %.tail457
  %i.ft = load i32, ptr %i.b, align 4             ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 256
  %i.fv = and i32 %i.ft, 255
  %i.fw = icmp eq i32 %i.fv, 3
  %or.cond434 = and i1 %i.fu, %i.fw
  br i1 %or.cond434, label %.thread.sink.split, label %bb.ay

bb.am:                                            ; preds = %.tail457.thread
  %i.fx = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(9) @.str.11) #19
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.ay, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fz = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(4) @.str.12) #19
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %.thread.sink.split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gb = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(8) @.str.13) #19
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %.thread.sink.split, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gd = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(8) @.str.14) #19
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %.thread.sink.split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gf = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(9) @.str.15) #19
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %.thread.sink.split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gh = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(14) @.str.16) #19
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %.thread.sink.split, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gj = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(14) @.str.17) #19
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %.thread.sink.split, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gl = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(10) @.str.18) #19
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %.thread.sink.split, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gn = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(9) @.str.19) #19
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %.thread.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gp = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(5) @.str.20) #19
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %.thread.sink.split, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gr = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(8) @.str.21) #19
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %.thread.sink.split, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gt = call i32 @strncmp(ptr noundef %15, ptr noundef nonnull dereferenceable(13) @.str.22, i64 noundef 12) #19
  %i.gu = icmp eq i32 %i.gt, 0
  %spec.select807 = select i1 %i.gu, i32 103, i32 0
  br label %.thread.sink.split

bb.ay:                                            ; preds = %bb.am, %bb.al
  store i32 14, ptr %9, align 4
  %18 = sext i32 %.5 to i64
  %i.gv = add i32 %.5, 1
  %i.gw = sext i32 %i.gv to i64
  %i.gx = xor i32 %.5, -1
  %i.gy = add i32 %1, %i.gx
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.az
  %indvars.iv669 = phi i32 [ %i.gy, %bb.ay ], [ %indvars.iv.next670, %bb.az ] ; 2 uses
  %indvars.iv662 = phi i64 [ %i.gw, %bb.ay ], [ %indvars.iv.next663, %bb.az ] ; 2 uses
  %indvars.iv660 = phi i64 [ %18, %bb.ay ], [ %indvars.iv.next661, %bb.az ] ; 3 uses
  %i.gz = getelementptr i8, ptr %0, i64 %indvars.iv660
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = icmp ne i8 %i.ha, 36
  %indvars.iv.next661 = add nsw i64 %indvars.iv660, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next661 to i32
  %19 = icmp sgt i32 %1, %indvars                 ; 2 uses
  %i.hc = and i1 %i.hb, %19
  %indvars.iv.next663 = add nsw i64 %indvars.iv662, 1
  %indvars.iv.next670 = add i32 %indvars.iv669, -1
  br i1 %i.hc, label %bb.az, label %bb.ba, !llvm.loop !18

bb.ba:                                            ; preds = %bb.az
  %20 = trunc nsw i64 %indvars.iv660 to i32
  %i.hd = add i32 %20, 2
  %.not402 = icmp slt i32 %i.hd, %1
  %or.cond587 = and i1 %.not402, %19
  br i1 %or.cond587, label %.lr.ph557, label %.critedge19

.lr.ph557:                                        ; preds = %bb.ba
  %wide.trip.count671 = zext i32 %indvars.iv669 to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph557, %bb.bf
  %indvars.iv664 = phi i64 [ %indvars.iv662, %.lr.ph557 ], [ %indvars.iv.next665, %bb.bf ] ; 3 uses
  %indvars.iv660.a = phi i64 [ 0, %.lr.ph557 ], [ %indvars.iv.next661.a, %bb.bf ] ; 4 uses
  %i.he = getelementptr i8, ptr %0, i64 %indvars.iv664 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1             ; 3 uses
  %i.hg = icmp sgt i8 %i.hf, 47
  br i1 %i.hg, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.hh = icmp samesign ult i8 %i.hf, 64
  %i.hi = icmp samesign ult i64 %indvars.iv660.a, 12
  %or.cond30 = select i1 %i.hh, i1 %i.hi, i1 false
  br i1 %or.cond30, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.hj = getelementptr i8, ptr %12, i64 %indvars.iv660.a ; 2 uses
  store i8 %i.hf, ptr %i.hj, align 1
  %i.hk = load i8, ptr %i.he, align 1             ; 2 uses
  %i.hl = zext i8 %i.hk to i64
  %i.hm = getelementptr [2 x i8], ptr %i.d, i64 %i.hl
  %i.hn = load i16, ptr %i.hm, align 2
  %i.ho = and i16 %i.hn, 8
  %.not405 = icmp eq i16 %i.ho, 0
  br i1 %.not405, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hp = add i8 %i.hk, 39
  store i8 %i.hp, ptr %i.hj, align 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %indvars.iv.next665 = add nsw i64 %indvars.iv664, 1
  %indvars.iv.next661.a = add nuw nsw i64 %indvars.iv660.a, 1 ; 2 uses
  %exitcond672.not = icmp eq i64 %indvars.iv.next661.a, %wide.trip.count671
  br i1 %exitcond672.not, label %.critedge19, label %bb.bb, !llvm.loop !19

bb.bg:                                            ; preds = %bb.bb, %bb.bc
  %i.hq = trunc nsw i64 %indvars.iv664 to i32
  %.not403 = icmp eq i64 %indvars.iv660.a, 12
  br i1 %.not403, label %.thread, label %.critedge19

.thread.sink.split:                               ; preds = %bb.ax, %bb.av, %bb.aw, %bb.au, %bb.at, %bb.ar, %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.al, %.tail, %.tail.thread, %bb.ai, %bb.aj, %bb.ak
  %.sink = phi i32 [ 103, %bb.av ], [ 102, %bb.au ], [ 26, %bb.at ], [ 101, %bb.ar ], [ 1, %bb.aq ], [ 17, %bb.ap ], [ 17, %bb.ao ], [ 4, %bb.an ], [ 0, %bb.al ], [ 7, %.tail ], [ 7, %bb.ak ], [ 7, %bb.aj ], [ 7, %bb.ai ], [ 7, %.tail.thread ], [ 101, %bb.as ], [ %spec.select807, %bb.ax ], [ 103, %bb.aw ]
  %.0351449.ph = phi i1 [ false, %bb.av ], [ false, %bb.au ], [ false, %bb.at ], [ false, %bb.ar ], [ false, %bb.aq ], [ false, %bb.ap ], [ true, %bb.ao ], [ false, %bb.an ], [ false, %bb.al ], [ false, %.tail ], [ false, %bb.ak ], [ false, %bb.aj ], [ false, %bb.ai ], [ false, %.tail.thread ], [ false, %bb.as ], [ false, %bb.ax ], [ false, %bb.aw ]
  store i32 %.sink, ptr %9, align 4
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.bg
  %.0351449 = phi i1 [ false, %bb.bg ], [ %.0351449.ph, %.thread.sink.split ]
  %.9 = phi i32 [ %i.hq, %bb.bg ], [ %.5, %.thread.sink.split ] ; 3 uses
  %i.hr = add i32 %.9, 1                          ; 2 uses
  %i.hs = sext i32 %i.hr to i64                   ; 2 uses
  %i.ht = getelementptr i8, ptr %0, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = zext i8 %i.hu to i64
  %i.hw = getelementptr [2 x i8], ptr %i.d, i64 %i.hv
  %i.hx = load i16, ptr %i.hw, align 2
  %i.hy = and i16 %i.hx, 8
  %.not406 = icmp eq i16 %i.hy, 0
  br i1 %.not406, label %.critedge13, label %.preheader471.preheader

.preheader471.preheader:                          ; preds = %.thread
  %i.hz = add i32 %.9, 2
  %smax673 = call i32 @llvm.smax.i32(i32 %1, i32 %i.hz)
  %i.ia = add nsw i32 %smax673, -1
  %i.ib = add i32 %.9, 2                          ; 2 uses
  %i.ic = icmp slt i32 %i.ib, %1
  br i1 %i.ic, label %.lr.ph846, label %.preheader471..critedge13.loopexit_crit_edge

.preheader471:                                    ; preds = %.lr.ph846
  %i.id = add i32 %i.if, 1                        ; 2 uses
  %i.ie = icmp slt i32 %i.id, %1
  br i1 %i.ie, label %.lr.ph846, label %.preheader471..critedge13.loopexit_crit_edge, !llvm.loop !20

.preheader471..critedge13.loopexit_crit_edge:     ; preds = %.preheader471, %.preheader471.preheader
  %.pre703 = sext i32 %i.ia to i64
  br label %.critedge13

.lr.ph846:                                        ; preds = %.preheader471.preheader, %.preheader471
  %i.if = phi i32 [ %i.id, %.preheader471 ], [ %i.ib, %.preheader471.preheader ] ; 2 uses
  %.10845 = phi i32 [ %i.if, %.preheader471 ], [ %i.hr, %.preheader471.preheader ]
  %i.ig = sext i32 %.10845 to i64                 ; 2 uses
  %i.ih = getelementptr i8, ptr %0, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1
  %.not407 = icmp eq i8 %i.ii, 47
  br i1 %.not407, label %.critedge13, label %.preheader471, !llvm.loop !20

.critedge13:                                      ; preds = %.lr.ph846, %.preheader471..critedge13.loopexit_crit_edge, %.thread
  %.pre-phi = phi i64 [ %i.hs, %.thread ], [ %.pre703, %.preheader471..critedge13.loopexit_crit_edge ], [ %i.ig, %.lr.ph846 ] ; 3 uses
  %indvars.iv.next679856 = add nsw i64 %.pre-phi, 1 ; 2 uses
  %indvars680857 = trunc i64 %indvars.iv.next679856 to i32 ; 2 uses
  %21 = icmp sgt i32 %1, %indvars680857
  br i1 %21, label %.lr.ph849, label %.critedge436.loopexit

bb.bh:                                            ; preds = %.lr.ph849
  %indvars.iv.next679 = add nsw i64 %indvars.iv.next679859, 1 ; 2 uses
  %indvars680 = trunc i64 %indvars.iv.next679 to i32 ; 2 uses
  %22 = icmp sgt i32 %1, %indvars680
  br i1 %22, label %.lr.ph849, label %.critedge436.loopexit, !llvm.loop !21

.lr.ph849:                                        ; preds = %.critedge13, %bb.bh
  %i.ij = phi i32 [ %indvars680, %bb.bh ], [ %indvars680857, %.critedge13 ]
  %indvars.iv.next679859 = phi i64 [ %indvars.iv.next679, %bb.bh ], [ %indvars.iv.next679856, %.critedge13 ] ; 3 uses
  %indvars.iv678858 = phi i64 [ %indvars.iv.next679859, %bb.bh ], [ %.pre-phi, %.critedge13 ] ; 2 uses
  %i.ik = getelementptr i8, ptr %0, i64 %indvars.iv678858
  %i.il = load i8, ptr %i.ik, align 1             ; 2 uses
  %i.im = icmp eq i8 %i.il, 47
  br i1 %i.im, label %bb.bh, label %.critedge15, !llvm.loop !21

.critedge15:                                      ; preds = %.lr.ph849
  %23 = trunc nsw i64 %indvars.iv678858 to i32
  %i.in = icmp eq i8 %i.il, 32
  %spec.select = select i1 %i.in, i32 %i.ij, i32 %23
  br label %.critedge436

.critedge436.loopexit:                            ; preds = %bb.bh, %.critedge13
  %indvars.iv678.lcssa = phi i64 [ %.pre-phi, %.critedge13 ], [ %indvars.iv.next679859, %bb.bh ]
  %24 = trunc nsw i64 %indvars.iv678.lcssa to i32
  br label %.critedge436

.critedge436:                                     ; preds = %.critedge436.loopexit, %.critedge15
  %.13 = phi i32 [ %spec.select, %.critedge15 ], [ %24, %.critedge436.loopexit ] ; 3 uses
  %i.io = load i8, ptr %10, align 1, !range !8, !noundef !9
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %.critedge436
  %i.iq = sext i32 %.13 to i64
  %i.ir = getelementptr i8, ptr %0, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1
  switch i8 %i.is, label %.critedge19 [
    i8 115, label %bb.bk
    i8 114, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %storemerge = phi i32 [ 1, %bb.bj ], [ 0, %bb.bi ]
  store i32 %storemerge, ptr %8, align 4
  %i.it = add i32 %.13, 1
  br label %.preheader858

bb.bl:                                            ; preds = %.critedge436
  store i32 0, ptr %8, align 4
  br label %.preheader858

.preheader858:                                    ; preds = %bb.bl, %bb.bk
  %.15.ph = phi i32 [ %i.it, %bb.bk ], [ %.13, %bb.bl ] ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %.preheader858, %.backedge
  %indvars.iv675 = phi i32 [ %indvars.iv.next676, %.backedge ], [ %.15.ph, %.preheader858 ] ; 2 uses
  %.15 = phi i32 [ %i.ix, %.backedge ], [ %.15.ph, %.preheader858 ] ; 3 uses
  %i.iu = sext i32 %.15 to i64
  %i.iv = getelementptr i8, ptr %0, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1
  %.not408 = icmp eq i8 %i.iw, 116
  %i.ix = add i32 %.15, 1                         ; 4 uses
  br i1 %.not408, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr i8, ptr %0, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1
  %.not409 = icmp ne i8 %i.ja, 109
  %i.jb = icmp slt i32 %i.ix, %1
  %or.cond442 = and i1 %i.jb, %.not409
  br i1 %or.cond442, label %.backedge, label %.critedge17

bb.bo:                                            ; preds = %bb.bm
  %.old441 = icmp slt i32 %i.ix, %1
  br i1 %.old441, label %.backedge, label %.critedge17

.backedge:                                        ; preds = %bb.bo, %bb.bn
  %indvars.iv.next676 = add i32 %indvars.iv675, 1
  br label %bb.bm, !llvm.loop !22

.critedge17:                                      ; preds = %bb.bn, %bb.bo
  %.not410 = icmp slt i32 %.15, %1
  br i1 %.not410, label %.preheader469.preheader, label %.critedge19

.preheader469.preheader:                          ; preds = %.critedge17
  %i.jc = sext i32 %indvars.iv675 to i64
  br label %.preheader469

.preheader469:                                    ; preds = %.preheader469.preheader, %bb.bp
  %indvars.iv677 = phi i64 [ %i.jc, %.preheader469.preheader ], [ %indvars.iv.next678, %bb.bp ] ; 7 uses
  %i.jd = getelementptr i8, ptr %0, i64 %indvars.iv677
  %i.je = load i8, ptr %i.jd, align 1
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr [2 x i8], ptr %i.d, i64 %i.jf
  %i.jh = load i16, ptr %i.jg, align 2
  %i.ji = and i16 %i.jh, 8
  %.not411 = icmp eq i16 %i.ji, 0
  br i1 %.not411, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.preheader469
  %indvars.iv.next678 = add nsw i64 %indvars.iv677, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next678 to i32
  %exitcond680.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond680.not, label %.critedge19, label %.preheader469, !llvm.loop !23

bb.bq:                                            ; preds = %.preheader469
  %i.jj = getelementptr i8, ptr %0, i64 %indvars.iv677
  %i.jk = trunc nsw i64 %indvars.iv677 to i32     ; 2 uses
  store i64 %indvars.iv677, ptr %4, align 8
  %i.jl = load i8, ptr %i.jj, align 1             ; 2 uses
  %i.jm = icmp ne i8 %i.jl, 46
  %i.jn = icmp sgt i32 %1, %i.jk                  ; 2 uses
  %i.jo = and i1 %i.jn, %i.jm
  br i1 %i.jo, label %.lr.ph563.preheader, label %._crit_edge564.thread

.lr.ph563.preheader:                              ; preds = %bb.bq
  %i.jp = sext i32 %1 to i64
  br label %.lr.ph563

.lr.ph563:                                        ; preds = %.lr.ph563.preheader, %bb.br
  %indvars.iv684 = phi i64 [ %indvars.iv677, %.lr.ph563.preheader ], [ %indvars.iv.next685, %bb.br ]
  %indvars.iv681 = phi i64 [ 0, %.lr.ph563.preheader ], [ %indvars.iv.next682, %bb.br ] ; 5 uses
  %i.jq = phi i8 [ %i.jl, %.lr.ph563.preheader ], [ %i.jx, %bb.br ] ; 2 uses
  %i.jr = zext i8 %i.jq to i64
  %i.js = getelementptr [2 x i8], ptr %i.d, i64 %i.jr
  %i.jt = load i16, ptr %i.js, align 2
  %i.ju = and i16 %i.jt, 8
  %.not423 = icmp eq i16 %i.ju, 0
  br i1 %.not423, label %.critedge19, label %bb.br

bb.br:                                            ; preds = %.lr.ph563
  %i.jv = getelementptr i8, ptr %i.c, i64 %indvars.iv681
  store i8 %i.jq, ptr %i.jv, align 1
  %indvars.iv.next685 = add nsw i64 %indvars.iv684, 1 ; 6 uses
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1 ; 6 uses
  %i.jw = getelementptr i8, ptr %0, i64 %indvars.iv.next685
  %i.jx = load i8, ptr %i.jw, align 1             ; 2 uses
  %i.jy = icmp ne i8 %i.jx, 46
  %i.jz = icmp samesign ult i64 %indvars.iv681, 16
  %or.cond22 = select i1 %i.jy, i1 %i.jz, i1 false
  %i.ka = icmp slt i64 %indvars.iv.next685, %i.jp ; 2 uses
  %i.kb = and i1 %i.ka, %or.cond22
  br i1 %i.kb, label %.lr.ph563, label %._crit_edge564, !llvm.loop !24

._crit_edge564:                                   ; preds = %bb.br
  %i.kc = trunc nsw i64 %indvars.iv.next685 to i32 ; 2 uses
  %i.kd = icmp samesign ult i64 %indvars.iv681, 16
  %or.cond437 = and i1 %i.ka, %i.kd
  br i1 %or.cond437, label %.lr.ph572, label %.critedge19

._crit_edge564.thread:                            ; preds = %bb.bq
  br i1 %i.jn, label %.thread752, label %.critedge19

.lr.ph572:                                        ; preds = %._crit_edge564
  %i.ke = getelementptr i8, ptr %i.c, i64 %indvars.iv.next682
  store i8 0, ptr %i.ke, align 1
  %xtraiter = and i64 %indvars.iv.next682, 3      ; 3 uses
  %i.kf = icmp samesign ult i64 %indvars.iv681, 3
  br i1 %i.kf, label %.epil.preheader, label %.lr.ph572.new

.lr.ph572.new:                                    ; preds = %.lr.ph572
  %unroll_iter = and i64 %indvars.iv.next682, 28
  br label %bb.bt

.thread752.loopexit.unr-lcssa:                    ; preds = %bb.bt
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread752, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread752.loopexit.unr-lcssa, %.lr.ph572
  %indvars.iv686.epil.init = phi i64 [ %indvars.iv.next682, %.lr.ph572 ], [ %indvars.iv.next687.3, %.thread752.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph572 ], [ %i.mf, %.thread752.loopexit.unr-lcssa ]
  %.0347569.epil.init = phi i32 [ 1, %.lr.ph572 ], [ %i.mg, %.thread752.loopexit.unr-lcssa ]
  %lcmp.mod891 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod891)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader
  %indvars.iv686.epil = phi i64 [ %indvars.iv686.epil.init, %.epil.preheader ], [ %indvars.iv.next687.epil, %bb.bs ]
  %i.kg = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.km, %bb.bs ]
  %.0347569.epil = phi i32 [ %.0347569.epil.init, %.epil.preheader ], [ %i.kn, %bb.bs ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bs ]
  %indvars.iv.next687.epil = add nsw i64 %indvars.iv686.epil, -1 ; 2 uses
  %i.kh = getelementptr i8, ptr %i.c, i64 %indvars.iv.next687.epil
  %i.ki = load i8, ptr %i.kh, align 1
  %i.kj = sext i8 %i.ki to i32
  %i.kk = add nsw i32 %i.kj, -48
  %i.kl = mul i32 %i.kk, %.0347569.epil
  %i.km = add i32 %i.kl, %i.kg                    ; 2 uses
  %i.kn = mul i32 %.0347569.epil, 10
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread752, label %bb.bs, !llvm.loop !25

.thread752:                                       ; preds = %.thread752.loopexit.unr-lcssa, %bb.bs, %._crit_edge564.thread
  %.sink806 = phi i32 [ 0, %._crit_edge564.thread ], [ %i.mf, %.thread752.loopexit.unr-lcssa ], [ %i.km, %bb.bs ]
  %.17.lcssa750755 = phi i32 [ %i.jk, %._crit_edge564.thread ], [ %i.kc, %bb.bs ], [ %i.kc, %.thread752.loopexit.unr-lcssa ]
  %indvars.iv677.pn = phi i64 [ %indvars.iv677, %._crit_edge564.thread ], [ %indvars.iv.next685, %bb.bs ], [ %indvars.iv.next685, %.thread752.loopexit.unr-lcssa ]
  %i.ko = getelementptr i8, ptr %0, i64 %indvars.iv677.pn
  store i32 %.sink806, ptr %2, align 4
  %i.kp = load i8, ptr %i.ko, align 1
  %.not414 = icmp eq i8 %i.kp, 46
  br i1 %.not414, label %.preheader467, label %.critedge19

.preheader467:                                    ; preds = %.thread752
  %.18576 = add nsw i32 %.17.lcssa750755, 1       ; 2 uses
  %i.kq = sext i32 %.18576 to i64                 ; 7 uses
  %i.kr = getelementptr i8, ptr %0, i64 %i.kq
  %i.ks = load i8, ptr %i.kr, align 1             ; 3 uses
  %i.kt = icmp ne i8 %i.ks, 32
  %i.ku = icmp slt i32 %.18576, %1
  %i.kv = and i1 %i.ku, %i.kt
  br i1 %i.kv, label %.lr.ph579.preheader, label %.critedge19

.lr.ph579.preheader:                              ; preds = %.preheader467
  %i.kw = sext i32 %1 to i64                      ; 4 uses
  %i.kx = zext i8 %i.ks to i64
  %i.ky = getelementptr [2 x i8], ptr %i.d, i64 %i.kx
  %i.kz = load i16, ptr %i.ky, align 2
  %i.la = and i16 %i.kz, 8
  %.not422 = icmp eq i16 %i.la, 0
  br i1 %.not422, label %.critedge19, label %bb.bu

bb.bt:                                            ; preds = %bb.bt, %.lr.ph572.new
end_hunk_0
