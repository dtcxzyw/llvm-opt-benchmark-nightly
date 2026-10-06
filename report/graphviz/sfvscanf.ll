Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/sfvscanf?download=true
inline.NumInlined: 11
inline.NumDeleted: 2
begin_hunk_0_@sfvscanf:bb.a
  br i1 %i.ht, label %bb.cf, label %.critedge29

bb.cf:                                            ; preds = %.lr.ph1012
  switch i32 %i.hs, label %gv_isspace.exit777.thread [
    i32 9, label %gv_isspace.exit777
    i32 10, label %gv_isspace.exit777
    i32 11, label %gv_isspace.exit777
    i32 12, label %gv_isspace.exit777
    i32 13, label %gv_isspace.exit777
    i32 32, label %gv_isspace.exit777
  ]

gv_isspace.exit777:                               ; preds = %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cf
  %i.hv = add nsw i32 %i.hr, -1
  %i.hw = icmp sgt i32 %i.hr, 1
  br i1 %i.hw, label %.lr.ph1012, label %gv_isspace.exit777.thread, !llvm.loop !17

gv_isspace.exit777.thread:                        ; preds = %gv_isspace.exit777, %bb.cf, %bb.ce, %bb.bz, %bb.cc
  %.7637.ph = phi i32 [ %.2632, %bb.cc ], [ %.2632, %bb.bz ], [ %.2632, %bb.ce ], [ %i.hs, %bb.cf ], [ %i.hs, %gv_isspace.exit777 ] ; 15 uses
  %.7606.ph = phi i32 [ %.2601, %bb.cc ], [ %.2601, %bb.bz ], [ %i.hp, %bb.ce ], [ 0, %gv_isspace.exit777 ], [ %i.hr, %bb.cf ] ; 10 uses
  %.5592.ph = phi i32 [ %i.fo, %bb.cc ], [ %i.fo, %bb.bz ], [ %.4591, %bb.ce ], [ %.4591, %bb.cf ], [ %.4591, %gv_isspace.exit777 ] ; 2 uses
  %.15572.ph = phi i32 [ %.7564, %bb.cc ], [ %.7564, %bb.bz ], [ %.7564, %bb.ce ], [ %.14571, %bb.cf ], [ %.14571, %gv_isspace.exit777 ] ; 8 uses
  switch i32 %i.ev, label %bb.cg [
    i32 111, label %.thread827
    i32 120, label %.thread801
    i32 112, label %.thread801
  ]

bb.cg:                                            ; preds = %gv_isspace.exit777.thread
  %i.hx = icmp eq i32 %i.ev, 105                  ; 2 uses
  %i.hy = icmp eq i32 %.7637.ph, 48
  %or.cond33 = and i1 %i.hx, %i.hy
  br i1 %or.cond33, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.hz = icmp sgt i32 %.7606.ph, 1
  br i1 %i.hz, label %bb.ci, label %.thread827

bb.ci:                                            ; preds = %bb.ch
  %i.ia = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.ib = icmp sgt i32 %i.ia, -1
  br i1 %i.ib, label %bb.cj, label %.thread827

bb.cj:                                            ; preds = %bb.ci
  %i.ic = and i32 %i.ia, 2147483615
  %or.cond35 = icmp eq i32 %i.ic, 88
  %i.id = call i32 @ungetc(i32 noundef %i.ia, ptr noundef %0) ; 0 uses
  br i1 %or.cond35, label %.thread801, label %.thread827

.thread827:                                       ; preds = %gv_isspace.exit777.thread, %bb.cj, %bb.ch, %bb.ci
  store i64 0, ptr %2, align 16, !tbaa !8
  br label %bb.dc

.thread801:                                       ; preds = %gv_isspace.exit777.thread, %gv_isspace.exit777.thread, %bb.cj
  store i64 0, ptr %2, align 16, !tbaa !8
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cg
  store i64 0, ptr %2, align 16, !tbaa !8
  switch i32 %i.fh, label %bb.da [
    i32 16, label %bb.cl
    i32 10, label %bb.ct
  ]

bb.cl:                                            ; preds = %.thread801, %bb.ck
  %i.ie = zext nneg i32 %.7637.ph to i64
  %i.if = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 408), i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !8
  %i.ih = icmp sgt i8 %i.ig, 15
  br i1 %i.ih, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ii = call i32 @ungetc(i32 noundef %.7637.ph, ptr noundef %0) ; 0 uses
  br label %.critedge29

bb.cn:                                            ; preds = %bb.cl
  %i.ij = icmp eq i32 %.7637.ph, 48
  br i1 %i.ij, label %bb.co, label %.thread808

bb.co:                                            ; preds = %bb.cn
  %i.ik = add nsw i32 %.7606.ph, -1               ; 2 uses
  %i.il = icmp sgt i32 %.7606.ph, 1
  br i1 %i.il, label %bb.cp, label %.thread808

bb.cp:                                            ; preds = %bb.co
  %i.im = call i32 @getc(ptr noundef %0)          ; 4 uses
  %i.in = icmp slt i32 %i.im, 0
  %i.io = add nsw i32 %.15572.ph, 1               ; 2 uses
  %.19 = select i1 %i.in, i32 %.15572.ph, i32 %i.io ; 2 uses
  %i.ip = and i32 %i.im, -33
  %or.cond766 = icmp eq i32 %i.ip, 88
  br i1 %or.cond766, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %.not749 = icmp eq i32 %.7606.ph, 2
  br i1 %.not749, label %.thread808, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.iq = add nsw i32 %.7606.ph, -2
  %i.ir = call i32 @getc(ptr noundef %0)          ; 2 uses
  %i.is = icmp slt i32 %i.ir, 0
  %i.it = add nsw i32 %.15572.ph, 2
  %spec.select767 = select i1 %i.is, i32 %i.io, i32 %i.it
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cp
  %.9639 = phi i32 [ %i.ir, %bb.cr ], [ %i.im, %bb.cp ] ; 3 uses
  %.8607 = phi i32 [ %i.iq, %bb.cr ], [ %i.ik, %bb.cp ] ; 2 uses
  %.20 = phi i32 [ %spec.select767, %bb.cr ], [ %.19, %bb.cp ] ; 2 uses
  %i.iu = icmp sgt i32 %.9639, -1
  br i1 %i.iu, label %.thread808, label %.critedge49

.thread808:                                       ; preds = %bb.cn, %bb.cq, %bb.co, %bb.cs
  %.20814 = phi i32 [ %.20, %bb.cs ], [ %.15572.ph, %bb.cn ], [ %.19, %bb.cq ], [ %.15572.ph, %bb.co ] ; 2 uses
  %.8607813 = phi i32 [ %.8607, %bb.cs ], [ %.7606.ph, %bb.cn ], [ 0, %bb.cq ], [ %i.ik, %bb.co ] ; 2 uses
  %.9639812 = phi i32 [ %.9639, %bb.cs ], [ %.7637.ph, %bb.cn ], [ %i.im, %bb.cq ], [ 48, %bb.co ] ; 3 uses
  %i.iv = zext nneg i32 %.9639812 to i64
  %i.iw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 408), i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !8
  %i.iy = icmp slt i8 %i.ix, 16
  br i1 %i.iy, label %bb.dk, label %.critedge49

bb.ct:                                            ; preds = %bb.ck
  %i.iz = add nsw i32 %.7637.ph, -58
  %or.cond39 = icmp ult i32 %i.iz, -10
  br i1 %or.cond39, label %bb.cu, label %.preheader862.preheader

.preheader862.preheader:                          ; preds = %bb.ct
  %smin1164 = call i32 @llvm.smin.i32(i32 %.7606.ph, i32 1)
  %i.ja = add i32 %smin1164, -1                   ; 2 uses
  %i.jb = load i64, ptr %2, align 16, !tbaa !8
  %i.jc = mul i64 %i.jb, 10
  %i.jd = add nsw i32 %.7637.ph, -48
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = add i64 %i.jc, %i.je
  store i64 %i.jf, ptr %2, align 16, !tbaa !8
  %i.jg = icmp sgt i32 %.7606.ph, 1
  br i1 %i.jg, label %.lr.ph1441, label %.critedge49

bb.cu:                                            ; preds = %bb.ct
  %i.jh = call i32 @ungetc(i32 noundef %.7637.ph, ptr noundef %0) ; 0 uses
  br label %.critedge29

.preheader862:                                    ; preds = %.lr.ph1441
  %i.ji = load i64, ptr %2, align 16, !tbaa !8
  %i.jj = mul i64 %i.ji, 10
  %i.jk = add nsw i32 %i.jp, -48
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = add i64 %i.jj, %i.jl
  store i64 %i.jm, ptr %2, align 16, !tbaa !8
  %i.jn = icmp sgt i32 %.96081439, 2
  br i1 %i.jn, label %.lr.ph1441, label %.critedge49, !llvm.loop !18

.lr.ph1441:                                       ; preds = %.preheader862.preheader, %.preheader862
  %.211440 = phi i32 [ %.22, %.preheader862 ], [ %.15572.ph, %.preheader862.preheader ]
  %.96081439 = phi i32 [ %i.jo, %.preheader862 ], [ %.7606.ph, %.preheader862.preheader ] ; 4 uses
  %i.jo = add nsw i32 %.96081439, -1              ; 3 uses
  %i.jp = call i32 @getc(ptr noundef %0)          ; 6 uses
  %i.jq = icmp sgt i32 %i.jp, -1
  %i.jr = zext i1 %i.jq to i32
  %.22 = add nsw i32 %.211440, %i.jr              ; 6 uses
  %i.js = add i32 %i.jp, -48
  %or.cond91 = icmp ult i32 %i.js, 10
  br i1 %or.cond91, label %.preheader862, label %.critedge41, !llvm.loop !18

.critedge41:                                      ; preds = %.lr.ph1441
  %i.jt = icmp eq i32 %i.jp, 35
  %or.cond43 = and i1 %i.hx, %i.jt
  br i1 %or.cond43, label %bb.cv, label %.critedge49

bb.cv:                                            ; preds = %.critedge41
  %i.ju = and i32 %.5592.ph, 1024
  %.not748 = icmp eq i32 %i.ju, 0
  br i1 %.not748, label %bb.cw, label %.critedge49

bb.cw:                                            ; preds = %bb.cv
  %i.jv = load i64, ptr %2, align 16, !tbaa !8
  %i.jw = trunc i64 %i.jv to i32                  ; 4 uses
  %i.jx = add i32 %i.jw, -65
  %or.cond45 = icmp ult i32 %i.jx, -63
  br i1 %or.cond45, label %.critedge29, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i64 0, ptr %2, align 16, !tbaa !8
  %i.jy = icmp samesign ult i32 %i.jw, 37
  %i.jz = select i1 %i.jy, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 408), ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 664) ; 2 uses
  %i.ka = add nsw i32 %.96081439, -2              ; 3 uses
  %.not853 = icmp eq i32 %.96081439, 2
  br i1 %.not853, label %.critedge49, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kb = call i32 @getc(ptr noundef %0)          ; 5 uses
  %i.kc = icmp sgt i32 %i.kb, -1                  ; 2 uses
  %i.kd = zext i1 %i.kc to i32
  %.24 = add nsw i32 %.22, %i.kd                  ; 3 uses
  br i1 %i.kc, label %bb.cz, label %.critedge49

bb.cz:                                            ; preds = %bb.cy
  %i.ke = zext nneg i32 %i.kb to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !8
  %i.kh = sext i8 %i.kg to i32
  %i.ki = icmp slt i32 %i.kh, %i.jw
  br i1 %i.ki, label %bb.de, label %.critedge49

bb.da:                                            ; preds = %bb.ck
  %i.kj = add i32 %i.fh, -65
  %or.cond47 = icmp ult i32 %i.kj, -63
  br i1 %or.cond47, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.kk = icmp samesign ult i32 %i.fh, 37
  %spec.select852 = select i1 %i.kk, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 408), ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 664)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.thread827
  %.4626796824833 = phi i32 [ %i.fh, %bb.db ], [ 8, %.thread827 ] ; 2 uses
  %i.kl = phi ptr [ %spec.select852, %bb.db ], [ getelementptr inbounds nuw (i8, ptr @_Sftable, i64 408), %.thread827 ] ; 2 uses
  %i.km = zext nneg i32 %.7637.ph to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.km
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !8
  %i.kp = sext i8 %i.ko to i32
  %.not747 = icmp sgt i32 %.4626796824833, %i.kp
  br i1 %.not747, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.da, %bb.dc
  %i.kq = call i32 @ungetc(i32 noundef %.7637.ph, ptr noundef %0) ; 0 uses
  br label %.critedge29

bb.de:                                            ; preds = %bb.dc, %bb.cz
  %.12642 = phi i32 [ %i.kb, %bb.cz ], [ %.7637.ph, %bb.dc ] ; 5 uses
  %.5627 = phi i32 [ %i.jw, %bb.cz ], [ %.4626796824833, %bb.dc ] ; 11 uses
  %.10609 = phi i32 [ %i.ka, %bb.cz ], [ %.7606.ph, %bb.dc ] ; 6 uses
  %.25 = phi i32 [ %.24, %bb.cz ], [ %.15572.ph, %bb.dc ] ; 5 uses
  %.0555 = phi ptr [ %i.jz, %bb.cz ], [ %i.kl, %bb.dc ] ; 5 uses
  %i.kr = call range(i32 0, 8) i32 @llvm.ctpop.i32(i32 %.5627)
  %i.ks = icmp samesign ult i32 %i.kr, 2
  br i1 %i.ks, label %bb.df, label %.preheader858

.preheader858:                                    ; preds = %bb.de
  %i.kt = zext nneg i32 %.5627 to i64             ; 2 uses
  %smin1165 = call i32 @llvm.smin.i32(i32 %.10609, i32 1)
  %i.ku = add i32 %smin1165, -1                   ; 2 uses
  %.phi.trans.insert = zext nneg i32 %.12642 to i64
  %.phi.trans.insert1167 = getelementptr inbounds nuw i8, ptr %.0555, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert1167, align 1, !tbaa !8
  %i.kv = load i64, ptr %2, align 16, !tbaa !8
  %i.kw = mul i64 %i.kv, %i.kt
  %i.kx = sext i8 %.pre to i64
  %i.ky = add i64 %i.kw, %i.kx
  store i64 %i.ky, ptr %2, align 16, !tbaa !8
  %i.kz = icmp sgt i32 %.10609, 1
  br i1 %i.kz, label %.lr.ph1444, label %.critedge49

bb.df:                                            ; preds = %bb.de
  %i.la = icmp samesign ult i32 %.5627, 8
  br i1 %i.la, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.lb = icmp samesign ult i32 %.5627, 4
  %i.lc = select i1 %i.lb, i64 1, i64 2
  br label %bb.dk

bb.dh:                                            ; preds = %bb.df
  %i.ld = icmp samesign ult i32 %.5627, 32
  br i1 %i.ld, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.le = icmp samesign ult i32 %.5627, 16
  %i.lf = select i1 %i.le, i64 3, i64 4
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dh
  %i.lg = icmp samesign ult i32 %.5627, 64
  %i.lh = select i1 %i.lg, i64 5, i64 6
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dg, %bb.dj, %bb.di, %.thread808
  %.13643 = phi i32 [ %.9639812, %.thread808 ], [ %.12642, %bb.dg ], [ %.12642, %bb.di ], [ %.12642, %bb.dj ] ; 2 uses
  %.0629 = phi i64 [ 4, %.thread808 ], [ %i.lc, %bb.dg ], [ %i.lf, %bb.di ], [ %i.lh, %bb.dj ] ; 2 uses
  %.6628 = phi i32 [ 16, %.thread808 ], [ %.5627, %bb.dg ], [ %.5627, %bb.di ], [ %.5627, %bb.dj ]
  %.11610 = phi i32 [ %.8607813, %.thread808 ], [ %.10609, %bb.dg ], [ %.10609, %bb.di ], [ %.10609, %bb.dj ] ; 3 uses
  %.26 = phi i32 [ %.20814, %.thread808 ], [ %.25, %bb.dg ], [ %.25, %bb.di ], [ %.25, %bb.dj ] ; 2 uses
  %.1556 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_Sftable, i64 408), %.thread808 ], [ %.0555, %bb.dg ], [ %.0555, %bb.di ], [ %.0555, %bb.dj ] ; 2 uses
  %smin1166 = call i32 @llvm.smin.i32(i32 %.11610, i32 1)
  %i.li = add i32 %smin1166, -1                   ; 2 uses
  %.phi.trans.insert1168 = zext nneg i32 %.13643 to i64
  %.phi.trans.insert1169 = getelementptr inbounds nuw i8, ptr %.1556, i64 %.phi.trans.insert1168
  %.pre1170 = load i8, ptr %.phi.trans.insert1169, align 1, !tbaa !8
  %i.lj = load i64, ptr %2, align 16, !tbaa !8
  %i.lk = shl i64 %i.lj, %.0629
  %i.ll = sext i8 %.pre1170 to i64
  %i.lm = add i64 %i.lk, %i.ll
  store i64 %i.lm, ptr %2, align 16, !tbaa !8
  %i.ln = icmp sgt i32 %.11610, 1
  br i1 %i.ln, label %.lr.ph1457, label %.critedge49

bb.dl:                                            ; preds = %bb.dm
  %i.lo = load i64, ptr %2, align 16, !tbaa !8
  %i.lp = shl i64 %i.lo, %.0629
  %i.lq = sext i8 %i.lz to i64
  %i.lr = add i64 %i.lp, %i.lq
  store i64 %i.lr, ptr %2, align 16, !tbaa !8
  %i.ls = icmp sgt i32 %.in1469, 2
  br i1 %i.ls, label %.lr.ph1457, label %.critedge49, !llvm.loop !19

.lr.ph1457:                                       ; preds = %bb.dk, %bb.dl
  %.in1469 = phi i32 [ %i.lt, %bb.dl ], [ %.11610, %bb.dk ] ; 2 uses
  %.271456 = phi i32 [ %.28, %bb.dl ], [ %.26, %bb.dk ]
  %i.lt = add nsw i32 %.in1469, -1                ; 3 uses
  %i.lu = call i32 @getc(ptr noundef %0)          ; 5 uses
  %i.lv = icmp sgt i32 %i.lu, -1                  ; 2 uses
  %i.lw = zext i1 %i.lv to i32
  %.28 = add nsw i32 %.271456, %i.lw              ; 4 uses
  br i1 %i.lv, label %bb.dm, label %.critedge49

bb.dm:                                            ; preds = %.lr.ph1457
  %i.lx = zext nneg i32 %i.lu to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %.1556, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !8   ; 2 uses
  %i.ma = sext i8 %i.lz to i32
  %i.mb = icmp sgt i32 %.6628, %i.ma
  br i1 %i.mb, label %bb.dl, label %..critedge49.loopexit_crit_edge, !llvm.loop !19

bb.dn:                                            ; preds = %bb.do
  %i.mc = load i64, ptr %2, align 16, !tbaa !8
  %i.md = mul i64 %i.mc, %i.kt
  %i.me = sext i8 %i.mn to i64
  %i.mf = add i64 %i.md, %i.me
  store i64 %i.mf, ptr %2, align 16, !tbaa !8
  %i.mg = icmp sgt i32 %.in, 2
  br i1 %i.mg, label %.lr.ph1444, label %.critedge49, !llvm.loop !20

.lr.ph1444:                                       ; preds = %.preheader858, %bb.dn
  %.in = phi i32 [ %i.mh, %bb.dn ], [ %.10609, %.preheader858 ] ; 2 uses
  %.291443 = phi i32 [ %.30, %bb.dn ], [ %.25, %.preheader858 ]
  %i.mh = add nsw i32 %.in, -1                    ; 3 uses
  %i.mi = call i32 @getc(ptr noundef %0)          ; 5 uses
  %i.mj = icmp sgt i32 %i.mi, -1                  ; 2 uses
  %i.mk = zext i1 %i.mj to i32
  %.30 = add nsw i32 %.291443, %i.mk              ; 4 uses
  br i1 %i.mj, label %bb.do, label %.critedge49

bb.do:                                            ; preds = %.lr.ph1444
  %i.ml = zext nneg i32 %i.mi to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %.0555, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !8   ; 2 uses
  %i.mo = sext i8 %i.mn to i32
  %i.mp = icmp sgt i32 %.5627, %i.mo
  br i1 %i.mp, label %bb.dn, label %..critedge49.loopexit1323_crit_edge, !llvm.loop !20

..critedge49.loopexit_crit_edge:                  ; preds = %bb.dm
  br label %.critedge49, !llvm.loop !19

..critedge49.loopexit1323_crit_edge:              ; preds = %bb.do
  br label %.critedge49, !llvm.loop !20

.critedge49:                                      ; preds = %.preheader862, %bb.dn, %.lr.ph1444, %bb.dl, %.lr.ph1457, %.preheader862.preheader, %.preheader858, %..critedge49.loopexit1323_crit_edge, %bb.dk, %..critedge49.loopexit_crit_edge, %bb.cx, %bb.cy, %bb.cz, %bb.cv, %.critedge41, %bb.cs, %.thread808
  %.16646 = phi i32 [ 35, %bb.cx ], [ %i.jp, %.critedge41 ], [ %i.mi, %bb.dn ], [ %.9639812, %.thread808 ], [ %.9639, %bb.cs ], [ 35, %bb.cv ], [ %i.kb, %bb.cz ], [ %i.kb, %bb.cy ], [ %.7637.ph, %.preheader862.preheader ], [ %i.lu, %..critedge49.loopexit_crit_edge ], [ %.13643, %bb.dk ], [ %i.lu, %bb.dl ], [ %i.mi, %..critedge49.loopexit1323_crit_edge ], [ %.12642, %.preheader858 ], [ %i.lu, %.lr.ph1457 ], [ %i.mi, %.lr.ph1444 ], [ %i.jp, %.preheader862 ] ; 6 uses
  %.14613 = phi i32 [ 0, %bb.cx ], [ %i.jo, %.critedge41 ], [ %i.mh, %.lr.ph1444 ], [ %.8607813, %.thread808 ], [ %.8607, %bb.cs ], [ %i.jo, %bb.cv ], [ %i.ka, %bb.cz ], [ %i.ka, %bb.cy ], [ %i.ja, %.preheader862.preheader ], [ %i.lt, %..critedge49.loopexit_crit_edge ], [ %i.li, %bb.dk ], [ %i.lt, %.lr.ph1457 ], [ %i.mh, %..critedge49.loopexit1323_crit_edge ], [ %i.ku, %.preheader858 ], [ %i.li, %bb.dl ], [ %i.ku, %bb.dn ], [ %i.ja, %.preheader862 ] ; 6 uses
  %.31 = phi i32 [ %.22, %bb.cx ], [ %.22, %.critedge41 ], [ %.30, %bb.dn ], [ %.20814, %.thread808 ], [ %.20, %bb.cs ], [ %.22, %bb.cv ], [ %.24, %bb.cz ], [ %.24, %bb.cy ], [ %.15572.ph, %.preheader862.preheader ], [ %.28, %..critedge49.loopexit_crit_edge ], [ %.26, %bb.dk ], [ %.28, %bb.dl ], [ %.30, %..critedge49.loopexit1323_crit_edge ], [ %.25, %.preheader858 ], [ %.28, %.lr.ph1457 ], [ %.30, %.lr.ph1444 ], [ %.22, %.preheader862 ] ; 6 uses
  %i.mq = and i32 %.5592.ph, 268435456
  %.not750 = icmp eq i32 %i.mq, 0
  br i1 %.not750, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %.critedge49
  %i.mr = load i64, ptr %2, align 16, !tbaa !8
  %i.ms = sub nsw i64 0, %i.mr
  store i64 %i.ms, ptr %2, align 16, !tbaa !8
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.critedge49
  %.not751 = icmp eq ptr %.0554.le, null
  br i1 %.not751, label %.thread845, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.mt = add nsw i32 %.1577.ph875, 1             ; 5 uses
  %i.mu = load i64, ptr %2, align 16, !tbaa !8    ; 5 uses
  br i1 %i.hl, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.mv = inttoptr i64 %i.mu to ptr
  store ptr %i.mv, ptr %i.ex, align 8, !tbaa !48
  br label %.thread845

bb.dt:                                            ; preds = %bb.dr
  switch i64 %i.ew, label %bb.dx [
    i64 64, label %bb.du
    i64 8, label %bb.du
    i64 0, label %bb.du
    i64 2, label %bb.dv
    i64 1, label %bb.dw
  ]

bb.du:                                            ; preds = %bb.dt, %bb.dt, %bb.dt
  store i64 %i.mu, ptr %i.ex, align 8, !tbaa !40
  br label %.thread845

bb.dv:                                            ; preds = %bb.dt
  %i.mw = trunc i64 %i.mu to i16
  store i16 %i.mw, ptr %i.ex, align 2, !tbaa !42
  br label %.thread845

bb.dw:                                            ; preds = %bb.dt
  %i.mx = trunc i64 %i.mu to i8
  store i8 %i.mx, ptr %i.ex, align 1, !tbaa !8
  br label %.thread845

bb.dx:                                            ; preds = %bb.dt
  %i.my = trunc i64 %i.mu to i32
  store i32 %i.my, ptr %i.ex, align 4, !tbaa !43
  br label %.thread845

bb.dy:                                            ; preds = %bb.cb
  switch i32 %i.ev, label %.thread845 [
    i32 115, label %bb.dz
    i32 99, label %bb.dz
    i32 91, label %bb.dz
  ]

bb.dz:                                            ; preds = %bb.dy, %bb.dy, %bb.dy
  %.not740 = icmp ne ptr %.0554.le, null          ; 2 uses
  br i1 %.not740, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.mz = icmp slt i64 %i.ew, 0
  %spec.store.select70 = select i1 %i.mz, i64 2147483647, i64 %i.ew
  store ptr %.0554.le, ptr %2, align 16, !tbaa !8
  %i.na = sext i1 %i.fr to i64
  %spec.select769 = add nsw i64 %spec.store.select70, %i.na
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.4598 = phi i64 [ 0, %bb.dz ], [ %spec.select769, %bb.ea ] ; 4 uses
  switch i32 %i.ev, label %bb.ei [
    i32 115, label %.preheader864.preheader
    i32 99, label %.preheader865.preheader
  ]

.preheader865.preheader:                          ; preds = %bb.eb
  %smin = call i32 @llvm.smin.i32(i32 %.2601, i32 1) ; 2 uses
  %i.nb = add i32 %smin, -1
  %i.nc = sub i32 %.2601, %smin
  %wide.trip.count = zext i32 %i.nc to i64
  br label %.preheader865

end_hunk_0
