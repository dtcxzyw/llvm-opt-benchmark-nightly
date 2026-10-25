Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_libvscanf?download=true
inline.NumInlined: 1
begin_hunk_0_@vscanf_internal:bb.a
  %i.ee = icmp ult i32 %i.ed, 41
  br i1 %i.ee, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ef = load ptr, ptr %i.k, align 8
  %i.eg = zext nneg i32 %i.ed to i64
  %i.eh = getelementptr i8, ptr %i.ef, i64 %i.eg
  %i.ei = add nuw nsw i32 %i.ed, 8
  store i32 %i.ei, ptr %4, align 8
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.ej = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  store ptr %i.ek, ptr %i.j, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.el = phi ptr [ %i.eh, %bb.bm ], [ %i.ej, %bb.bn ]
  %i.em = load ptr, ptr %i.el, align 8
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bk
  %i.en = load ptr, ptr %4, align 8               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store ptr %i.eo, ptr %4, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ep = phi ptr [ %i.em, %bb.bo ], [ %i.en, %bb.bp ] ; 2 uses
  store i32 0, ptr %i.ep, align 4
  br label %bb.cf

bb.br:                                            ; preds = %bb.av
  br i1 %3, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br
  %i.eq = load i32, ptr %4, align 8               ; 3 uses
  %i.er = icmp ult i32 %i.eq, 41
  br i1 %i.er, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.es = load ptr, ptr %i.k, align 8
  %i.et = zext nneg i32 %i.eq to i64
  %i.eu = getelementptr i8, ptr %i.es, i64 %i.et
  %i.ev = add nuw nsw i32 %i.eq, 8
  store i32 %i.ev, ptr %4, align 8
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.ew = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 8
  store ptr %i.ex, ptr %i.j, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ey = phi ptr [ %i.eu, %bb.bt ], [ %i.ew, %bb.bu ]
  %i.ez = load ptr, ptr %i.ey, align 8
  br label %bb.bx

bb.bw:                                            ; preds = %bb.br
  %i.fa = load ptr, ptr %4, align 8               ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %i.fb, ptr %4, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.fc = phi ptr [ %i.ez, %bb.bv ], [ %i.fa, %bb.bw ] ; 2 uses
  store i64 0, ptr %i.fc, align 8
  br label %bb.cf

bb.by:                                            ; preds = %bb.av
  br i1 %3, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.fd = load i32, ptr %4, align 8               ; 3 uses
  %i.fe = icmp ult i32 %i.fd, 41
  br i1 %i.fe, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ff = load ptr, ptr %i.k, align 8
  %i.fg = zext nneg i32 %i.fd to i64
  %i.fh = getelementptr i8, ptr %i.ff, i64 %i.fg
  %i.fi = add nuw nsw i32 %i.fd, 8
  store i32 %i.fi, ptr %4, align 8
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.fj = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  store ptr %i.fk, ptr %i.j, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.fl = phi ptr [ %i.fh, %bb.ca ], [ %i.fj, %bb.cb ]
  %i.fm = load ptr, ptr %i.fl, align 8
  br label %bb.ce

bb.cd:                                            ; preds = %bb.by
  %i.fn = load ptr, ptr %4, align 8               ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.fo, ptr %4, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.fp = phi ptr [ %i.fm, %bb.cc ], [ %i.fn, %bb.cd ] ; 2 uses
  store i64 0, ptr %i.fp, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %bb.bc, %bb.bj, %bb.bq, %bb.bx, %bb.ce, %bb.au
  %.1387 = phi ptr [ %.0386793, %bb.au ], [ %.0386793, %bb.bx ], [ %.0386793, %bb.bc ], [ %.0386793, %bb.bj ], [ %.0386793, %bb.bq ], [ %i.fp, %bb.ce ] ; 3 uses
  %.1381 = phi ptr [ %.0380795, %bb.au ], [ %i.fc, %bb.bx ], [ %.0380795, %bb.bc ], [ %.0380795, %bb.bj ], [ %.0380795, %bb.bq ], [ %.0380795, %bb.ce ] ; 3 uses
  %.1375 = phi ptr [ %.0374797, %bb.au ], [ %.0374797, %bb.bx ], [ %.0374797, %bb.bc ], [ %.0374797, %bb.bj ], [ %i.ep, %bb.bq ], [ %.0374797, %bb.ce ] ; 3 uses
  %.1369 = phi ptr [ %.0368799, %bb.au ], [ %.0368799, %bb.bx ], [ %.0368799, %bb.bc ], [ %i.ec, %bb.bj ], [ %.0368799, %bb.bq ], [ %.0368799, %bb.ce ] ; 3 uses
  %.1363 = phi ptr [ %.0362801, %bb.au ], [ %.0362801, %bb.bx ], [ %i.dp, %bb.bc ], [ %.0362801, %bb.bj ], [ %.0362801, %bb.bq ], [ %.0362801, %bb.ce ] ; 3 uses
  %i.fq = call i32 @isspace(i32 noundef %.2611) #16
  %.not504730 = icmp eq i32 %i.fq, 0
  br i1 %.not504730, label %._crit_edge733, label %.lr.ph732

.lr.ph732:                                        ; preds = %bb.cf, %.lr.ph732
  %i.fr = load ptr, ptr %i.f, align 8
  %i.fs = call i32 %i.fr(ptr noundef nonnull %0) #15 ; 2 uses
  %i.ft = call i32 @isspace(i32 noundef %i.fs) #16
  %.not504 = icmp eq i32 %i.ft, 0
  br i1 %.not504, label %._crit_edge733, label %.lr.ph732, !llvm.loop !14

._crit_edge733:                                   ; preds = %.lr.ph732, %bb.cf
  %.6615.lcssa = phi i32 [ %.2611, %bb.cf ], [ %i.fs, %.lr.ph732 ] ; 12 uses
  %i.fu = icmp sgt i32 %.6615.lcssa, 0
  br i1 %i.fu, label %bb.cg, label %.thread652

bb.cg:                                            ; preds = %._crit_edge733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.fv = add i32 %.1406692, -128
  %or.cond9 = icmp ult i32 %i.fv, -127
  %spec.store.select90 = select i1 %or.cond9, i32 127, i32 %.1406692 ; 10 uses
  %i.fw = load i8, ptr %.2457690, align 1
  switch i8 %i.fw, label %bb.ch [
    i8 105, label %.preheader677
    i8 117, label %bb.ci
    i8 112, label %bb.cl
    i8 120, label %bb.cl
    i8 88, label %bb.cl
    i8 111, label %.preheader680
    i8 98, label %.preheader682
  ]

.preheader682:                                    ; preds = %bb.cg
  %i.fx = icmp slt i32 %spec.store.select90, 1
  br i1 %i.fx, label %.loopexit, label %.lr.ph738

.preheader680:                                    ; preds = %bb.cg
  %i.fy = icmp slt i32 %spec.store.select90, 1
  br i1 %i.fy, label %.loopexit, label %.lr.ph744

.preheader677:                                    ; preds = %bb.cg
  %i.fz = icmp slt i32 %spec.store.select90, 1
  br i1 %i.fz, label %.loopexit, label %.lr.ph760

bb.ch:                                            ; preds = %bb.cg
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.0356 = phi i1 [ true, %bb.ch ], [ false, %bb.cg ] ; 4 uses
  %i.ga = icmp slt i32 %spec.store.select90, 1
  br i1 %i.ga, label %.loopexit, label %.lr.ph768

.lr.ph768:                                        ; preds = %bb.ci, %bb.ck
  %.2397765 = phi i32 [ %i.gd, %bb.ck ], [ 0, %bb.ci ] ; 5 uses
  %.7616764 = phi i32 [ %i.gh, %bb.ck ], [ %.6615.lcssa, %bb.ci ] ; 5 uses
  switch i32 %.7616764, label %.split [
    i32 45, label %bb.cj
    i32 43, label %bb.cj
  ]

.split:                                           ; preds = %.lr.ph768
  %i.gb = add i32 %.7616764, -58
  %or.cond15 = icmp ult i32 %i.gb, -10
  br i1 %or.cond15, label %.loopexit, label %bb.ck

bb.cj:                                            ; preds = %.lr.ph768, %.lr.ph768
  %.not519.not = icmp eq i32 %.2397765, 0
  br i1 %.not519.not, label %bb.ck, label %.loopexit

bb.ck:                                            ; preds = %bb.cj, %.split
  %i.gc = trunc nuw nsw i32 %.7616764 to i8
  %i.gd = add nuw nsw i32 %.2397765, 1            ; 3 uses
  %i.ge = zext nneg i32 %.2397765 to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ge
  store i8 %i.gc, ptr %i.gf, align 1
  %i.gg = load ptr, ptr %i.f, align 8
  %i.gh = call i32 %i.gg(ptr noundef nonnull %0) #15 ; 2 uses
  %.not974 = icmp slt i32 %i.gd, %spec.store.select90
  br i1 %.not974, label %.lr.ph768, label %.loopexit, !llvm.loop !15

bb.cl:                                            ; preds = %bb.cg, %bb.cg, %bb.cg
  %i.gi = icmp slt i32 %spec.store.select90, 1
  br i1 %i.gi, label %.loopexit, label %.lr.ph752

.lr.ph752:                                        ; preds = %bb.cl, %.thread634
  %.0352749 = phi i32 [ %.1353630, %.thread634 ], [ 0, %bb.cl ] ; 3 uses
  %.4399748 = phi i32 [ %i.gm, %.thread634 ], [ 0, %bb.cl ] ; 6 uses
  %.9618747 = phi i32 [ %i.gq, %.thread634 ], [ %.6615.lcssa, %bb.cl ] ; 8 uses
  switch i32 %.9618747, label %bb.cn [
    i32 45, label %bb.cp
    i32 43, label %bb.cp
    i32 48, label %bb.cm
  ]

bb.cm:                                            ; preds = %.lr.ph752
  %spec.store.select19 = call i32 @llvm.umax.i32(i32 %.0352749, i32 1)
  br label %.thread634

bb.cn:                                            ; preds = %.lr.ph752
  %i.gj = and i32 %.9618747, -33
  %or.cond22 = icmp eq i32 %i.gj, 88
  br i1 %or.cond22, label %.split878, label %bb.co

.split878:                                        ; preds = %bb.cn
  %.not970 = icmp eq i32 %.0352749, 1
  br i1 %.not970, label %.thread634, label %.loopexit

bb.co:                                            ; preds = %bb.cn
  %i.gk = add i32 %.9618747, -48
  %or.cond25 = icmp ult i32 %i.gk, 10
  br i1 %or.cond25, label %.thread634, label %switch.early.test

switch.early.test:                                ; preds = %bb.co
  switch i32 %.9618747, label %.loopexit [
    i32 102, label %.thread634
    i32 101, label %.thread634
    i32 100, label %.thread634
    i32 99, label %.thread634
    i32 98, label %.thread634
    i32 97, label %.thread634
    i32 70, label %.thread634
    i32 69, label %.thread634
    i32 68, label %.thread634
    i32 67, label %.thread634
    i32 66, label %.thread634
    i32 65, label %.thread634
  ]

bb.cp:                                            ; preds = %.lr.ph752, %.lr.ph752
  %.not513.not = icmp eq i32 %.4399748, 0
  br i1 %.not513.not, label %.thread634, label %.loopexit

.thread634:                                       ; preds = %bb.cp, %bb.cm, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.co, %.split878
  %.1353630 = phi i32 [ %.0352749, %bb.cp ], [ %spec.store.select19, %bb.cm ], [ 2, %switch.early.test ], [ 2, %switch.early.test ], [ 2, %switch.early.test ], [ 2, %switch.early.test ], [ 2, %switch.early.test ], [ 2, %switch.early.test ], [ 2, %switch.early.test ], [ 2, %switch.early.test ], [ 2, %switch.early.test ], [ 2, %switch.early.test ], [ 2, %switch.early.test ], [ 2, %switch.early.test ], [ 2, %bb.co ], [ 2, %.split878 ]
  %i.gl = trunc nuw nsw i32 %.9618747 to i8
  %i.gm = add nuw nsw i32 %.4399748, 1            ; 3 uses
  %i.gn = zext nneg i32 %.4399748 to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gn
  store i8 %i.gl, ptr %i.go, align 1
  %i.gp = load ptr, ptr %i.f, align 8
  %i.gq = call i32 %i.gp(ptr noundef nonnull %0) #15 ; 2 uses
  %.not971 = icmp slt i32 %i.gm, %spec.store.select90
  br i1 %.not971, label %.lr.ph752, label %.loopexit, !llvm.loop !16

.lr.ph744:                                        ; preds = %.preheader680, %bb.cr
  %.6401742 = phi i32 [ %i.gt, %bb.cr ], [ 0, %.preheader680 ] ; 5 uses
  %.11620741 = phi i32 [ %i.gx, %bb.cr ], [ %.6615.lcssa, %.preheader680 ] ; 5 uses
  switch i32 %.11620741, label %.split886 [
    i32 45, label %bb.cq
    i32 43, label %bb.cq
  ]

.split886:                                        ; preds = %.lr.ph744
  %i.gr = and i32 %.11620741, -8
  %or.cond37.not = icmp eq i32 %i.gr, 48
  br i1 %or.cond37.not, label %bb.cr, label %.loopexit

bb.cq:                                            ; preds = %.lr.ph744, %.lr.ph744
  %.not510.not = icmp eq i32 %.6401742, 0
  br i1 %.not510.not, label %bb.cr, label %.loopexit

bb.cr:                                            ; preds = %bb.cq, %.split886
  %i.gs = trunc nuw nsw i32 %.11620741 to i8
  %i.gt = add nuw nsw i32 %.6401742, 1            ; 3 uses
  %i.gu = zext nneg i32 %.6401742 to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gu
  store i8 %i.gs, ptr %i.gv, align 1
  %i.gw = load ptr, ptr %i.f, align 8
  %i.gx = call i32 %i.gw(ptr noundef nonnull %0) #15 ; 2 uses
  %.not969 = icmp slt i32 %i.gt, %spec.store.select90
  br i1 %.not969, label %.lr.ph744, label %.loopexit, !llvm.loop !17

.lr.ph738:                                        ; preds = %.preheader682, %bb.ct
  %.8403736 = phi i32 [ %i.ha, %bb.ct ], [ 0, %.preheader682 ] ; 5 uses
  %.13622735 = phi i32 [ %i.he, %bb.ct ], [ %.6615.lcssa, %.preheader682 ] ; 5 uses
  switch i32 %.13622735, label %.split897 [
    i32 45, label %bb.cs
    i32 43, label %bb.cs
  ]

.split897:                                        ; preds = %.lr.ph738
  %i.gy = and i32 %.13622735, -2
  %or.cond43.not = icmp eq i32 %i.gy, 48
  br i1 %or.cond43.not, label %bb.ct, label %.loopexit

bb.cs:                                            ; preds = %.lr.ph738, %.lr.ph738
  %.not507.not = icmp eq i32 %.8403736, 0
  br i1 %.not507.not, label %bb.ct, label %.loopexit

bb.ct:                                            ; preds = %bb.cs, %.split897
  %i.gz = trunc nuw nsw i32 %.13622735 to i8
  %i.ha = add nuw nsw i32 %.8403736, 1            ; 3 uses
  %i.hb = zext nneg i32 %.8403736 to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hb
  store i8 %i.gz, ptr %i.hc, align 1
  %i.hd = load ptr, ptr %i.f, align 8
  %i.he = call i32 %i.hd(ptr noundef nonnull %0) #15 ; 2 uses
  %.not968.a = icmp slt i32 %i.ha, %spec.store.select90
  br i1 %.not968.a, label %.lr.ph738, label %.loopexit, !llvm.loop !18

.lr.ph760:                                        ; preds = %.preheader677, %.thread648
  %.2354758 = phi i32 [ %.3355644, %.thread648 ], [ 0, %.preheader677 ] ; 4 uses
  %.0392757 = phi i32 [ %.1393642, %.thread648 ], [ 10, %.preheader677 ] ; 9 uses
  %.10756 = phi i32 [ %i.ho, %.thread648 ], [ 0, %.preheader677 ] ; 6 uses
  %.15755 = phi i32 [ %i.hs, %.thread648 ], [ %.6615.lcssa, %.preheader677 ] ; 10 uses
  switch i32 %.15755, label %bb.cv [
    i32 45, label %bb.da
    i32 43, label %bb.da
    i32 48, label %bb.cu
  ]

bb.cu:                                            ; preds = %.lr.ph760
  %i.hf = icmp eq i32 %.2354758, 0
  %spec.select540 = select i1 %i.hf, i32 8, i32 %.0392757
  %spec.select541 = call i32 @llvm.umax.i32(i32 %.2354758, i32 1)
  br label %.thread648

bb.cv:                                            ; preds = %.lr.ph760
  %i.hg = and i32 %.15755, -33
  %or.cond49 = icmp eq i32 %i.hg, 88
  br i1 %or.cond49, label %.split908, label %bb.cw

.split908:                                        ; preds = %bb.cv
  %.not972 = icmp eq i32 %.2354758, 1
  br i1 %.not972, label %.thread648, label %.loopexit

bb.cw:                                            ; preds = %bb.cv
  %i.hh = and i32 %.15755, -8
  %or.cond52 = icmp eq i32 %i.hh, 48
  br i1 %or.cond52, label %.thread648, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.hi = and i32 %.15755, -2
  %or.cond58 = icmp eq i32 %i.hi, 56
  %i.hj = icmp sgt i32 %.0392757, 9
  %or.cond61 = select i1 %or.cond58, i1 %i.hj, i1 false
  br i1 %or.cond61, label %.thread648, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.hk = add i32 %.15755, -97
  %or.cond64 = icmp ult i32 %i.hk, 6
  %i.hl = icmp eq i32 %.0392757, 16               ; 2 uses
  %or.cond67 = select i1 %or.cond64, i1 %i.hl, i1 false
  br i1 %or.cond67, label %.thread648, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hm = add i32 %.15755, -65
  %or.cond70 = icmp ult i32 %i.hm, 6
  %or.cond73 = select i1 %or.cond70, i1 %i.hl, i1 false
  br i1 %or.cond73, label %.thread648, label %.loopexit

bb.da:                                            ; preds = %.lr.ph760, %.lr.ph760
  %.not516.not = icmp eq i32 %.10756, 0
  br i1 %.not516.not, label %.thread648, label %.loopexit

.thread648:                                       ; preds = %bb.da, %bb.cu, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %.split908
  %.3355644 = phi i32 [ %.2354758, %bb.da ], [ %spec.select541, %bb.cu ], [ 2, %bb.cz ], [ 2, %bb.cy ], [ 2, %bb.cx ], [ 2, %bb.cw ], [ 2, %.split908 ]
  %.1393642 = phi i32 [ %.0392757, %bb.da ], [ %spec.select540, %bb.cu ], [ 16, %bb.cz ], [ 16, %bb.cy ], [ %.0392757, %bb.cx ], [ %.0392757, %bb.cw ], [ 16, %.split908 ] ; 2 uses
  %i.hn = trunc nuw nsw i32 %.15755 to i8
  %i.ho = add nuw nsw i32 %.10756, 1              ; 3 uses
  %i.hp = zext nneg i32 %.10756 to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hp
  store i8 %i.hn, ptr %i.hq, align 1
  %i.hr = load ptr, ptr %i.f, align 8
  %i.hs = call i32 %i.hr(ptr noundef nonnull %0) #15 ; 2 uses
  %.not973 = icmp slt i32 %i.ho, %spec.store.select90
  br i1 %.not973, label %.lr.ph760, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %.split897, %bb.cs, %bb.ct, %.split886, %bb.cq, %bb.cr, %.split878, %switch.early.test, %bb.cp, %.thread634, %.split908, %bb.cz, %bb.da, %.thread648, %.split, %bb.cj, %bb.ck, %.preheader682, %.preheader680, %bb.cl, %.preheader677, %bb.ci
  %.17 = phi i32 [ %.15755, %bb.da ], [ %.11620741, %.split886 ], [ %i.gh, %bb.ck ], [ %.9618747, %switch.early.test ], [ %.6615.lcssa, %bb.ci ], [ %.6615.lcssa, %.preheader677 ], [ %.6615.lcssa, %bb.cl ], [ %.6615.lcssa, %.preheader680 ], [ %.6615.lcssa, %.preheader682 ], [ %.7616764, %bb.cj ], [ %.7616764, %.split ], [ %.15755, %.split908 ], [ %.15755, %bb.cz ], [ %i.hs, %.thread648 ], [ %.9618747, %bb.cp ], [ %.9618747, %.split878 ], [ %i.gq, %.thread634 ], [ %i.gx, %bb.cr ], [ %.11620741, %bb.cq ], [ %.13622735, %.split897 ], [ %i.he, %bb.ct ], [ %.13622735, %bb.cs ] ; 2 uses
  %.12 = phi i32 [ %.10756, %bb.da ], [ %.6401742, %.split886 ], [ %i.gd, %bb.ck ], [ %.4399748, %switch.early.test ], [ 0, %bb.ci ], [ 0, %.preheader677 ], [ 0, %bb.cl ], [ 0, %.preheader680 ], [ 0, %.preheader682 ], [ %.2397765, %bb.cj ], [ %.2397765, %.split ], [ %.10756, %.split908 ], [ %.10756, %bb.cz ], [ %i.ho, %.thread648 ], [ %.4399748, %bb.cp ], [ %.4399748, %.split878 ], [ %i.gm, %.thread634 ], [ %i.gt, %bb.cr ], [ %.6401742, %bb.cq ], [ %.8403736, %.split897 ], [ %i.ha, %bb.ct ], [ %.8403736, %bb.cs ]
  %.2394 = phi i32 [ %.0392757, %bb.da ], [ 8, %.split886 ], [ 10, %.split ], [ 16, %.split878 ], [ 10, %bb.ci ], [ 10, %.preheader677 ], [ 16, %bb.cl ], [ 8, %.preheader680 ], [ 2, %.preheader682 ], [ 10, %bb.ck ], [ 10, %bb.cj ], [ %.0392757, %.split908 ], [ %.0392757, %bb.cz ], [ %.1393642, %.thread648 ], [ 16, %.thread634 ], [ 16, %bb.cp ], [ 16, %switch.early.test ], [ 8, %bb.cr ], [ 8, %bb.cq ], [ 2, %bb.ct ], [ 2, %bb.cs ], [ 2, %.split897 ] ; 4 uses
  %.1357 = phi i1 [ true, %.split908 ], [ false, %.split886 ], [ %.0356, %.split ], [ false, %.split878 ], [ %.0356, %bb.ci ], [ true, %.preheader677 ], [ false, %bb.cl ], [ false, %.preheader680 ], [ false, %.preheader682 ], [ %.0356, %bb.ck ], [ %.0356, %bb.cj ], [ true, %.thread648 ], [ true, %bb.da ], [ true, %bb.cz ], [ false, %.thread634 ], [ false, %bb.cp ], [ false, %switch.early.test ], [ false, %bb.cr ], [ false, %bb.cq ], [ false, %bb.ct ], [ false, %bb.cs ], [ false, %.split897 ] ; 2 uses
  %i.ht = sext i32 %.12 to i64
  %i.hu = getelementptr inbounds i8, ptr %i.a, i64 %i.ht
  store i8 0, ptr %i.hu, align 1
  %i.hv = call ptr @__errno() #15
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #13, !srcloc !24
  %i.hy = trunc i8 %i.hx to i1
  br i1 %i.hy, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.loopexit
  %i.hz = call ptr @__errno() #15
  store i32 0, ptr %i.hz, align 4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.loopexit
  %cond91 = icmp eq i32 %.1440696, 2
  br i1 %cond91, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  br i1 %.1357, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ia = call i64 @strtol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.2394) #14
  br label %bb.dj

bb.df:                                            ; preds = %bb.dd
  %i.ib = call i64 @strtoul(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.2394) #14
  br label %bb.dj

bb.dg:                                            ; preds = %bb.dc
  br i1 %.1357, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ic = call i64 @strtoll(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.2394) #14
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.id = call i64 @strtoull(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.2394) #14
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di, %bb.de, %bb.df
  %.0349 = phi i64 [ 0, %bb.dh ], [ 0, %bb.di ], [ %i.ia, %bb.de ], [ %i.ib, %bb.df ] ; 4 uses
  %.0348 = phi i64 [ %i.ic, %bb.dh ], [ %i.id, %bb.di ], [ 0, %bb.de ], [ 0, %bb.df ]
  %i.ie = load ptr, ptr %i.b, align 8
  %i.if = icmp eq ptr %i.a, %i.ie
  br i1 %i.if, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ig = call ptr @__errno() #15
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = icmp eq i32 %i.ih, 34
  br i1 %i.ii, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  br i1 %i.e, label %.thread659, label %.else580

.else580:                                         ; preds = %bb.dl
  store i32 %.17, ptr %1, align 4
  br label %.thread659

bb.dm:                                            ; preds = %bb.dk
  %i.ij = call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #13, !srcloc !24
  %i.ik = trunc i8 %i.ij to i1
  br i1 %i.ik, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.il = call ptr @__errno() #15
  store i32 %i.hw, ptr %i.il, align 4
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  br i1 %i.dc, label %bb.dw, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  switch i32 %.1440696, label %bb.dt [
    i32 -2, label %bb.dq
    i32 -1, label %bb.dr
    i32 0, label %bb.ds
    i32 2, label %bb.du
  ]

bb.dq:                                            ; preds = %bb.dp
  %i.im = trunc i64 %.0349 to i8
  store i8 %i.im, ptr %.1363, align 1
  br label %bb.dv

bb.dr:                                            ; preds = %bb.dp
  %i.in = trunc i64 %.0349 to i16
  store i16 %i.in, ptr %.1369, align 2
  br label %bb.dv

bb.ds:                                            ; preds = %bb.dp
  %i.io = trunc i64 %.0349 to i32
  store i32 %i.io, ptr %.1375, align 4
  br label %bb.dv

bb.dt:                                            ; preds = %bb.dp
  store i64 %.0349, ptr %.1381, align 8
  br label %bb.dv

bb.du:                                            ; preds = %bb.dp
  store i64 %.0348, ptr %.1387, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq
  %i.ip = add nsw i32 %.0418791, 1
  br label %bb.dw

.thread659:                                       ; preds = %bb.dl, %.else580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.cont581

bb.dw:                                            ; preds = %bb.do, %bb.dv
  %.3421 = phi i32 [ %.0418791, %bb.do ], [ %i.ip, %bb.dv ]
  %i.iq = add nsw i32 %.0409792, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.thread652

bb.dx:                                            ; preds = %.thread
  %i.ir = load i8, ptr %.2457690, align 1
  %i.is = sext i8 %i.ir to i32
  %i.it = call ptr @strchr(ptr noundef nonnull @.str.2, i32 noundef range(i32 -128, 128) %i.is) #14
  %.not499 = icmp eq ptr %i.it, null
  br i1 %.not499, label %bb.fi, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.iu = trunc nuw i8 %.1436694 to i1            ; 2 uses
  br i1 %i.iu, label %bb.eo, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.iv = icmp sgt i32 %.1440696, 0
  br i1 %i.iv, label %bb.ea, label %bb.eh

bb.ea:                                            ; preds = %bb.dz
  br i1 %3, label %bb.eb, label %bb.ef

bb.eb:                                            ; preds = %bb.ea
  %i.iw = load i32, ptr %4, align 8               ; 3 uses
  %i.ix = icmp ult i32 %i.iw, 41
  br i1 %i.ix, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.iy = load ptr, ptr %i.k, align 8
  %i.iz = zext nneg i32 %i.iw to i64
  %i.ja = getelementptr i8, ptr %i.iy, i64 %i.iz
  %i.jb = add nuw nsw i32 %i.iw, 8
  store i32 %i.jb, ptr %4, align 8
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.jc = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 8
  store ptr %i.jd, ptr %i.j, align 8
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.je = phi ptr [ %i.ja, %bb.ec ], [ %i.jc, %bb.ed ]
  %i.jf = load ptr, ptr %i.je, align 8
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ea
  %i.jg = load ptr, ptr %4, align 8               ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %i.jh, ptr %4, align 8
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.ji = phi ptr [ %i.jf, %bb.ee ], [ %i.jg, %bb.ef ] ; 2 uses
  store double 0.000000e+00, ptr %i.ji, align 8
  br label %bb.eo

bb.eh:                                            ; preds = %bb.dz
  br i1 %3, label %bb.ei, label %bb.em

bb.ei:                                            ; preds = %bb.eh
  %i.jj = load i32, ptr %4, align 8               ; 3 uses
  %i.jk = icmp ult i32 %i.jj, 41
  br i1 %i.jk, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.jl = load ptr, ptr %i.k, align 8
  %i.jm = zext nneg i32 %i.jj to i64
  %i.jn = getelementptr i8, ptr %i.jl, i64 %i.jm
  %i.jo = add nuw nsw i32 %i.jj, 8
  store i32 %i.jo, ptr %4, align 8
  br label %bb.el

bb.ek:                                            ; preds = %bb.ei
  %i.jp = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 8
  store ptr %i.jq, ptr %i.j, align 8
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.jr = phi ptr [ %i.jn, %bb.ej ], [ %i.jp, %bb.ek ]
  %i.js = load ptr, ptr %i.jr, align 8
  br label %bb.en

bb.em:                                            ; preds = %bb.eh
  %i.jt = load ptr, ptr %4, align 8               ; 2 uses
end_hunk_0
