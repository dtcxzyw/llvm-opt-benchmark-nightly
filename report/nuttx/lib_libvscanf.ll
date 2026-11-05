Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_libvscanf?download=true
inline.NumInlined: 1
begin_hunk_0_@vscanf_internal:bb.a
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
  %.not968 = icmp slt i32 %i.ha, %spec.store.select90
  br i1 %.not968, label %.lr.ph738, label %.loopexit, !llvm.loop !18

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
  %5 = sext i32 %.12 to i64
  %i.ht = getelementptr inbounds i8, ptr %i.a, i64 %5
  store i8 0, ptr %i.ht, align 1
  %i.hu = call ptr @__errno() #15
  %i.hv = load i32, ptr %i.hu, align 4
  %i.hw = call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #13, !srcloc !24
  %i.hx = trunc i8 %i.hw to i1
  br i1 %i.hx, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.loopexit
  %i.hy = call ptr @__errno() #15
  store i32 0, ptr %i.hy, align 4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.loopexit
  %cond91 = icmp eq i32 %.1440696, 2
  br i1 %cond91, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  br i1 %.1357, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.hz = call i64 @strtol(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.2394) #14
  br label %bb.dj

bb.df:                                            ; preds = %bb.dd
  %i.ia = call i64 @strtoul(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.2394) #14
  br label %bb.dj

bb.dg:                                            ; preds = %bb.dc
  br i1 %.1357, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ib = call i64 @strtoll(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.2394) #14
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.ic = call i64 @strtoull(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.2394) #14
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di, %bb.de, %bb.df
  %.0349 = phi i64 [ 0, %bb.dh ], [ 0, %bb.di ], [ %i.hz, %bb.de ], [ %i.ia, %bb.df ] ; 4 uses
  %.0348 = phi i64 [ %i.ib, %bb.dh ], [ %i.ic, %bb.di ], [ 0, %bb.de ], [ 0, %bb.df ]
  %i.id = load ptr, ptr %i.b, align 8
  %i.ie = icmp eq ptr %i.a, %i.id
  br i1 %i.ie, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.if = call ptr @__errno() #15
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = icmp eq i32 %i.ig, 34
  br i1 %i.ih, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  br i1 %i.e, label %.thread659, label %.else580

.else580:                                         ; preds = %bb.dl
  store i32 %.17, ptr %1, align 4
  br label %.thread659

bb.dm:                                            ; preds = %bb.dk
  %i.ii = call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #13, !srcloc !24
  %i.ij = trunc i8 %i.ii to i1
  br i1 %i.ij, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ik = call ptr @__errno() #15
  store i32 %i.hv, ptr %i.ik, align 4
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
  %i.il = trunc i64 %.0349 to i8
  store i8 %i.il, ptr %.1363, align 1
  br label %bb.dv

bb.dr:                                            ; preds = %bb.dp
  %i.im = trunc i64 %.0349 to i16
  store i16 %i.im, ptr %.1369, align 2
  br label %bb.dv

bb.ds:                                            ; preds = %bb.dp
  %i.in = trunc i64 %.0349 to i32
  store i32 %i.in, ptr %.1375, align 4
  br label %bb.dv

bb.dt:                                            ; preds = %bb.dp
  store i64 %.0349, ptr %.1381, align 8
  br label %bb.dv

bb.du:                                            ; preds = %bb.dp
  store i64 %.0348, ptr %.1387, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq
  %i.io = add nsw i32 %.0418791, 1
  br label %bb.dw

.thread659:                                       ; preds = %bb.dl, %.else580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.cont581

bb.dw:                                            ; preds = %bb.do, %bb.dv
  %.3421 = phi i32 [ %.0418791, %bb.do ], [ %i.io, %bb.dv ]
  %i.ip = add nsw i32 %.0409792, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.thread652

bb.dx:                                            ; preds = %.thread
  %i.iq = load i8, ptr %.2457690, align 1
  %i.ir = sext i8 %i.iq to i32
  %i.is = call ptr @strchr(ptr noundef nonnull @.str.2, i32 noundef range(i32 -128, 128) %i.ir) #14
  %.not499 = icmp eq ptr %i.is, null
  br i1 %.not499, label %bb.fi, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.it = trunc nuw i8 %.1436694 to i1            ; 2 uses
  br i1 %i.it, label %bb.eo, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.iu = icmp sgt i32 %.1440696, 0
  br i1 %i.iu, label %bb.ea, label %bb.eh

bb.ea:                                            ; preds = %bb.dz
  br i1 %3, label %bb.eb, label %bb.ef

bb.eb:                                            ; preds = %bb.ea
  %i.iv = load i32, ptr %4, align 8               ; 3 uses
  %i.iw = icmp ult i32 %i.iv, 41
  br i1 %i.iw, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ix = load ptr, ptr %i.k, align 8
  %i.iy = zext nneg i32 %i.iv to i64
  %i.iz = getelementptr i8, ptr %i.ix, i64 %i.iy
  %i.ja = add nuw nsw i32 %i.iv, 8
  store i32 %i.ja, ptr %4, align 8
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.jb = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 8
  store ptr %i.jc, ptr %i.j, align 8
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.jd = phi ptr [ %i.iz, %bb.ec ], [ %i.jb, %bb.ed ]
  %i.je = load ptr, ptr %i.jd, align 8
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ea
  %i.jf = load ptr, ptr %4, align 8               ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store ptr %i.jg, ptr %4, align 8
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.jh = phi ptr [ %i.je, %bb.ee ], [ %i.jf, %bb.ef ] ; 2 uses
  store double 0.000000e+00, ptr %i.jh, align 8
  br label %bb.eo

bb.eh:                                            ; preds = %bb.dz
  br i1 %3, label %bb.ei, label %bb.em

bb.ei:                                            ; preds = %bb.eh
  %i.ji = load i32, ptr %4, align 8               ; 3 uses
  %i.jj = icmp ult i32 %i.ji, 41
  br i1 %i.jj, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.jk = load ptr, ptr %i.k, align 8
  %i.jl = zext nneg i32 %i.ji to i64
  %i.jm = getelementptr i8, ptr %i.jk, i64 %i.jl
  %i.jn = add nuw nsw i32 %i.ji, 8
  store i32 %i.jn, ptr %4, align 8
  br label %bb.el

bb.ek:                                            ; preds = %bb.ei
  %i.jo = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 8
  store ptr %i.jp, ptr %i.j, align 8
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.jq = phi ptr [ %i.jm, %bb.ej ], [ %i.jo, %bb.ek ]
  %i.jr = load ptr, ptr %i.jq, align 8
  br label %bb.en

bb.em:                                            ; preds = %bb.eh
  %i.js = load ptr, ptr %4, align 8               ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  store ptr %i.jt, ptr %4, align 8
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.ju = phi ptr [ %i.jr, %bb.el ], [ %i.js, %bb.em ] ; 2 uses
  store float 0.000000e+00, ptr %i.ju, align 4
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eg, %bb.en, %bb.dy
  %.0347 = phi ptr [ null, %bb.dy ], [ %i.jh, %bb.eg ], [ null, %bb.en ]
  %.0346 = phi ptr [ null, %bb.dy ], [ null, %bb.eg ], [ %i.ju, %bb.en ]
  %i.jv = call i32 @isspace(i32 noundef %.2611) #16
  %.not501771 = icmp eq i32 %i.jv, 0
  br i1 %.not501771, label %._crit_edge774, label %.lr.ph773

.lr.ph773:                                        ; preds = %bb.eo, %.lr.ph773
  %i.jw = load ptr, ptr %i.f, align 8
  %i.jx = call i32 %i.jw(ptr noundef nonnull %0) #15 ; 2 uses
  %i.jy = call i32 @isspace(i32 noundef %i.jx) #16
  %.not501 = icmp eq i32 %i.jy, 0
  br i1 %.not501, label %._crit_edge774, label %.lr.ph773, !llvm.loop !20

._crit_edge774:                                   ; preds = %.lr.ph773, %bb.eo
  %.20.lcssa = phi i32 [ %.2611, %bb.eo ], [ %i.jx, %.lr.ph773 ] ; 4 uses
  %i.jz = icmp sgt i32 %.20.lcssa, 0
  br i1 %i.jz, label %bb.ep, label %.thread652

bb.ep:                                            ; preds = %._crit_edge774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ka = add i32 %.1406692, -128
  %or.cond77 = icmp ult i32 %i.ka, -127
  %spec.store.select92 = select i1 %or.cond77, i32 127, i32 %.1406692 ; 2 uses
  %i.kb = icmp slt i32 %spec.store.select92, 1
  br i1 %i.kb, label %._crit_edge784, label %.lr.ph783

.lr.ph783:                                        ; preds = %bb.ep, %bb.es
  %.0340780 = phi i1 [ %.1341923, %bb.es ], [ false, %bb.ep ] ; 2 uses
  %.0342779 = phi i1 [ %.1343921, %bb.es ], [ false, %bb.ep ] ; 4 uses
  %.0344778 = phi i1 [ %.1345919, %bb.es ], [ false, %bb.ep ] ; 4 uses
  %.13777 = phi i32 [ %i.kf, %bb.es ], [ 0, %bb.ep ] ; 6 uses
  %.21776 = phi i32 [ %i.kj, %bb.es ], [ %.20.lcssa, %bb.ep ] ; 7 uses
  switch i32 %.21776, label %bb.eq [
    i32 45, label %bb.er
    i32 43, label %bb.er
    i32 46, label %.split927
  ]

.split927:                                        ; preds = %.lr.ph783
  br i1 %.0342779, label %._crit_edge784.loopexit, label %bb.es

bb.eq:                                            ; preds = %.lr.ph783
  %i.kc = and i32 %.21776, -33
  %or.cond83 = icmp eq i32 %i.kc, 69
  br i1 %or.cond83, label %.split928, label %.split918

.split928:                                        ; preds = %bb.eq
  br i1 %.0344778, label %._crit_edge784.loopexit, label %bb.es

.split918:                                        ; preds = %bb.eq
  %i.kd = add i32 %.21776, -48
  %or.cond86 = icmp ult i32 %i.kd, 10             ; 2 uses
  %..0340 = select i1 %or.cond86, i1 true, i1 %.0340780
  br i1 %or.cond86, label %bb.es, label %._crit_edge784.loopexit

bb.er:                                            ; preds = %.lr.ph783, %.lr.ph783
  br i1 %.0340780, label %._crit_edge784.loopexit, label %bb.es

bb.es:                                            ; preds = %bb.er, %.split918, %.split927, %.split928
  %.1341923 = phi i1 [ %..0340, %.split918 ], [ true, %bb.er ], [ true, %.split927 ], [ false, %.split928 ]
  %.1343921 = phi i1 [ %.0342779, %.split918 ], [ %.0342779, %bb.er ], [ true, %.split927 ], [ %.0342779, %.split928 ]
  %.1345919 = phi i1 [ %.0344778, %.split918 ], [ %.0344778, %bb.er ], [ %.0344778, %.split927 ], [ true, %.split928 ]
  %i.ke = trunc i32 %.21776 to i8
  %i.kf = add nuw nsw i32 %.13777, 1              ; 3 uses
  %i.kg = zext nneg i32 %.13777 to i64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.kg
  store i8 %i.ke, ptr %i.kh, align 1
  %i.ki = load ptr, ptr %i.f, align 8
  %i.kj = call i32 %i.ki(ptr noundef nonnull %0) #15 ; 2 uses
  %.not975 = icmp slt i32 %i.kf, %spec.store.select92
  br i1 %.not975, label %.lr.ph783, label %._crit_edge784.loopexit, !llvm.loop !21

._crit_edge784.loopexit:                          ; preds = %.split928, %.split927, %.split918, %bb.er, %bb.es
  %.14939 = phi i32 [ %i.kf, %bb.es ], [ %.13777, %bb.er ], [ %.13777, %.split918 ], [ %.13777, %.split927 ], [ %.13777, %.split928 ]
  %.22938 = phi i32 [ %i.kj, %bb.es ], [ %.21776, %bb.er ], [ %.21776, %.split918 ], [ 46, %.split927 ], [ %.21776, %.split928 ]
  %6 = sext i32 %.14939 to i64
  br label %._crit_edge784

._crit_edge784:                                   ; preds = %._crit_edge784.loopexit, %bb.ep
  %.21.lcssa = phi i32 [ %.20.lcssa, %bb.ep ], [ %.22938, %._crit_edge784.loopexit ] ; 2 uses
  %.13.lcssa = phi i64 [ 0, %bb.ep ], [ %6, %._crit_edge784.loopexit ]
  %i.kk = getelementptr inbounds i8, ptr %i.a, i64 %.13.lcssa
  store i8 0, ptr %i.kk, align 1
  %i.kl = call ptr @__errno() #15
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #13, !srcloc !24
  %i.ko = trunc i8 %i.kn to i1
  br i1 %i.ko, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %._crit_edge784
  %i.kp = call ptr @__errno() #15
  store i32 0, ptr %i.kp, align 4
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %._crit_edge784
  %i.kq = icmp sgt i32 %.1440696, 0               ; 2 uses
  br i1 %i.kq, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.kr = call double @strtod(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #14
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.ks = call float @strtof(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #14
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.0338 = phi double [ %i.kr, %bb.ev ], [ undef, %bb.ew ]
  %.0337 = phi float [ undef, %bb.ev ], [ %i.ks, %bb.ew ]
  %i.kt = load ptr, ptr %i.c, align 8
  %i.ku = icmp eq ptr %i.a, %i.kt
  br i1 %i.ku, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.kv = call ptr @__errno() #15
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = icmp eq i32 %i.kw, 34
  br i1 %i.kx, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  br i1 %i.e, label %.thread671, label %.else577

.else577:                                         ; preds = %bb.ez
  store i32 %.21.lcssa, ptr %1, align 4
  br label %.thread671

bb.fa:                                            ; preds = %bb.ey
  %i.ky = call i8 asm sideeffect "movb %gs:(${1:c}), $0", "=qr,i,~{dirflag},~{fpsr},~{flags}"(i64 6) #13, !srcloc !24
  %i.kz = trunc i8 %i.ky to i1
  br i1 %i.kz, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.la = call ptr @__errno() #15
  store i32 %i.km, ptr %i.la, align 4
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  br i1 %i.it, label %bb.fh, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  br i1 %i.kq, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store double %.0338, ptr %.0347, align 8
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  store float %.0337, ptr %.0346, align 4
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.lb = add nsw i32 %.0418791, 1
  br label %bb.fh

.thread671:                                       ; preds = %bb.ez, %.else577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.cont581

bb.fh:                                            ; preds = %bb.fc, %bb.fg
  %.7425 = phi i32 [ %.0418791, %bb.fc ], [ %i.lb, %bb.fg ]
  %i.lc = add nsw i32 %.0409792, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.thread652

bb.fi:                                            ; preds = %bb.dx
  %i.ld = load i8, ptr %.2457690, align 1
  switch i8 %i.ld, label %.thread652 [
    i8 110, label %bb.fj
    i8 37, label %bb.gv
  ]

bb.fj:                                            ; preds = %bb.fi
  %i.le = trunc nuw i8 %.1436694 to i1
  br i1 %i.le, label %bb.gu, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.lf = load i32, ptr %0, align 8
  %i.lg = sub nsw i32 %i.lf, %i.d
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp sgt i32 %.2611, 0
  %i.lj = sext i1 %i.li to i64
  %spec.select546 = add nsw i64 %i.lh, %i.lj      ; 5 uses
  switch i32 %.1440696, label %bb.gg [
    i32 -2, label %bb.fl
    i32 -1, label %bb.fs
    i32 0, label %bb.fz
    i32 2, label %bb.gn
  ]

bb.fl:                                            ; preds = %bb.fk
  br i1 %3, label %bb.fm, label %bb.fq

bb.fm:                                            ; preds = %bb.fl
  %i.lk = load i32, ptr %4, align 8               ; 3 uses
  %i.ll = icmp ult i32 %i.lk, 41
  br i1 %i.ll, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.lm = load ptr, ptr %i.k, align 8
  %i.ln = zext nneg i32 %i.lk to i64
  %i.lo = getelementptr i8, ptr %i.lm, i64 %i.ln
  %i.lp = add nuw nsw i32 %i.lk, 8
  store i32 %i.lp, ptr %4, align 8
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.lq = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.lr = getelementptr i8, ptr %i.lq, i64 8
  store ptr %i.lr, ptr %i.j, align 8
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.ls = phi ptr [ %i.lo, %bb.fn ], [ %i.lq, %bb.fo ]
  %i.lt = load ptr, ptr %i.ls, align 8
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fl
  %i.lu = load ptr, ptr %4, align 8               ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 1
  store ptr %i.lv, ptr %4, align 8
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.lw = phi ptr [ %i.lt, %bb.fp ], [ %i.lu, %bb.fq ] ; 2 uses
  %i.lx = trunc i64 %spec.select546 to i8
  store i8 %i.lx, ptr %i.lw, align 1
  br label %bb.gu

bb.fs:                                            ; preds = %bb.fk
  br i1 %3, label %bb.ft, label %bb.fx

bb.ft:                                            ; preds = %bb.fs
  %i.ly = load i32, ptr %4, align 8               ; 3 uses
  %i.lz = icmp ult i32 %i.ly, 41
  br i1 %i.lz, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.ma = load ptr, ptr %i.k, align 8
  %i.mb = zext nneg i32 %i.ly to i64
  %i.mc = getelementptr i8, ptr %i.ma, i64 %i.mb
  %i.md = add nuw nsw i32 %i.ly, 8
  store i32 %i.md, ptr %4, align 8
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  %i.me = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 8
  store ptr %i.mf, ptr %i.j, align 8
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.mg = phi ptr [ %i.mc, %bb.fu ], [ %i.me, %bb.fv ]
  %i.mh = load ptr, ptr %i.mg, align 8
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fs
  %i.mi = load ptr, ptr %4, align 8               ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  store ptr %i.mj, ptr %4, align 8
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.mk = phi ptr [ %i.mh, %bb.fw ], [ %i.mi, %bb.fx ] ; 2 uses
  %i.ml = trunc i64 %spec.select546 to i16
  store i16 %i.ml, ptr %i.mk, align 2
  br label %bb.gu

bb.fz:                                            ; preds = %bb.fk
  br i1 %3, label %bb.ga, label %bb.ge

bb.ga:                                            ; preds = %bb.fz
  %i.mm = load i32, ptr %4, align 8               ; 3 uses
  %i.mn = icmp ult i32 %i.mm, 41
  br i1 %i.mn, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.mo = load ptr, ptr %i.k, align 8
  %i.mp = zext nneg i32 %i.mm to i64
  %i.mq = getelementptr i8, ptr %i.mo, i64 %i.mp
  %i.mr = add nuw nsw i32 %i.mm, 8
  store i32 %i.mr, ptr %4, align 8
  br label %bb.gd
end_hunk_0
