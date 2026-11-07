Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/sfvscanf?download=true
inline.NumInlined: 11
inline.NumDeleted: 2
begin_hunk_0_@sfvscanf:bb.a
  br i1 %i.gb, label %.critedge29, label %bb.bd

bb.bd:                                            ; preds = %gv_isspace.exit775.thread
  %i.gc = load i8, ptr %i.fl, align 1, !tbaa !8   ; 3 uses
  %i.gd = icmp eq i8 %i.gc, 4
  br i1 %i.gd, label %bb.be, label %bb.by

bb.be:                                            ; preds = %bb.bd
  %spec.store.select85 = call i32 @llvm.smin.i32(i32 %.2601, i32 1283)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bu, %bb.be
  %.3633 = phi i32 [ %.2632, %bb.be ], [ %i.hf, %bb.bu ] ; 13 uses
  %.3602 = phi i32 [ %spec.store.select85, %bb.be ], [ %i.hd, %bb.bu ] ; 8 uses
  %.8565 = phi i32 [ %.7564, %bb.be ], [ %.11568, %bb.bu ] ; 9 uses
  %.0540 = phi ptr [ %i.a, %bb.be ], [ %.1541, %bb.bu ] ; 13 uses
  %.0538 = phi i32 [ 0, %bb.be ], [ %.1539, %bb.bu ] ; 5 uses
  %.0536 = phi i1 [ false, %bb.be ], [ %.1537, %bb.bu ] ; 4 uses
  %i.ge = add nsw i32 %.3633, -48
  %i.gf = icmp ult i32 %i.ge, 10
  br i1 %i.gf, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gg = trunc nuw nsw i32 %.3633 to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %.0540, i64 1
  store i8 %i.gg, ptr %.0540, align 1, !tbaa !8
  br label %bb.bt

bb.bh:                                            ; preds = %bb.bf
  %i.gi = icmp eq i32 %.3633, 46
  br i1 %i.gi, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  br i1 %.0536, label %.critedge, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gj = getelementptr inbounds nuw i8, ptr %.0540, i64 1
  store i8 46, ptr %.0540, align 1, !tbaa !8
  br label %bb.bt

bb.bk:                                            ; preds = %bb.bh
  %i.gk = and i32 %.3633, 2147483615
  %or.cond17 = icmp eq i32 %i.gk, 69
  br i1 %or.cond17, label %bb.bl, label %bb.br

bb.bl:                                            ; preds = %bb.bk
  %i.gl = add nsw i32 %.0538, 1
  %i.gm = icmp sgt i32 %.0538, 0
  br i1 %i.gm, label %.critedge, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gn = trunc nuw i32 %.3633 to i8
  %i.go = getelementptr inbounds nuw i8, ptr %.0540, i64 1 ; 4 uses
  store i8 %i.gn, ptr %.0540, align 1, !tbaa !8
  %i.gp = add nsw i32 %.3602, -1                  ; 4 uses
  %i.gq = icmp slt i32 %.3602, 2
  br i1 %i.gq, label %.critedge, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gr = call i32 @getc(ptr noundef %0)          ; 7 uses
  %i.gs = icmp slt i32 %i.gr, 0
  %i.gt = add nsw i32 %.8565, 1                   ; 2 uses
  br i1 %i.gs, label %.critedge, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  switch i32 %i.gr, label %bb.bp [
    i32 45, label %bb.bq
    i32 43, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.gu = add nsw i32 %i.gr, -48
  %i.gv = icmp ult i32 %i.gu, 10
  br i1 %i.gv, label %bb.bq, label %.critedge

bb.bq:                                            ; preds = %bb.bo, %bb.bo, %bb.bp
  %i.gw = trunc nuw nsw i32 %i.gr to i8
  %i.gx = getelementptr inbounds nuw i8, ptr %.0540, i64 2
  store i8 %i.gw, ptr %i.go, align 1, !tbaa !8
  br label %bb.bt

bb.br:                                            ; preds = %bb.bk
  %i.gy = icmp ne i32 %.3633, 45
  %i.gz = icmp ne i32 %.3633, 43
  %or.cond21.not754 = and i1 %i.gy, %i.gz
  %i.ha = icmp ugt ptr %.0540, %i.a
  %or.cond88 = select i1 %or.cond21.not754, i1 true, i1 %i.ha
  br i1 %or.cond88, label %.critedge, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hb = trunc nuw nsw i32 %.3633 to i8
  %i.hc = getelementptr inbounds nuw i8, ptr %.0540, i64 1
  store i8 %i.hb, ptr %.0540, align 1, !tbaa !8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bg, %bb.bq, %bb.bs, %bb.bj
  %.4634 = phi i32 [ %.3633, %bb.bg ], [ 46, %bb.bj ], [ %i.gr, %bb.bq ], [ %.3633, %bb.bs ]
  %.4603 = phi i32 [ %.3602, %bb.bg ], [ %.3602, %bb.bj ], [ %i.gp, %bb.bq ], [ %.3602, %bb.bs ] ; 2 uses
  %.10567 = phi i32 [ %.8565, %bb.bg ], [ %.8565, %bb.bj ], [ %i.gt, %bb.bq ], [ %.8565, %bb.bs ] ; 2 uses
  %.1541 = phi ptr [ %i.gh, %bb.bg ], [ %i.gj, %bb.bj ], [ %i.gx, %bb.bq ], [ %i.hc, %bb.bs ] ; 3 uses
  %.1539 = phi i32 [ %.0538, %bb.bg ], [ %.0538, %bb.bj ], [ %i.gl, %bb.bq ], [ %.0538, %bb.bs ]
  %.1537 = phi i1 [ %.0536, %bb.bg ], [ true, %bb.bj ], [ %.0536, %bb.bq ], [ %.0536, %bb.bs ]
  %i.hd = add nsw i32 %.4603, -1                  ; 3 uses
  %i.he = icmp sgt i32 %.4603, 1
  br i1 %i.he, label %bb.bu, label %.critedge

bb.bu:                                            ; preds = %bb.bt
  %i.hf = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.hg = icmp sgt i32 %i.hf, -1                  ; 2 uses
  %i.hh = zext i1 %i.hg to i32
  %.11568 = add nsw i32 %.10567, %i.hh            ; 2 uses
  br i1 %i.hg, label %bb.bf, label %.critedge, !llvm.loop !16

.critedge:                                        ; preds = %bb.bt, %bb.br, %bb.bm, %bb.bn, %bb.bp, %bb.bl, %bb.bi, %bb.bu
  %.5635 = phi i32 [ %i.hf, %bb.bu ], [ %.4634, %bb.bt ], [ 46, %bb.bi ], [ %.3633, %bb.bl ], [ %.3633, %bb.bm ], [ %i.gr, %bb.bn ], [ %i.gr, %bb.bp ], [ %.3633, %bb.br ] ; 3 uses
  %.5604 = phi i32 [ %i.hd, %bb.bu ], [ %i.hd, %bb.bt ], [ %.3602, %bb.bi ], [ %.3602, %bb.bl ], [ %i.gp, %bb.bm ], [ %i.gp, %bb.bn ], [ %i.gp, %bb.bp ], [ %.3602, %bb.br ] ; 3 uses
  %.12569 = phi i32 [ %.11568, %bb.bu ], [ %.10567, %bb.bt ], [ %.8565, %bb.bi ], [ %.8565, %bb.bl ], [ %.8565, %bb.bm ], [ %.8565, %bb.bn ], [ %i.gt, %bb.bp ], [ %.8565, %bb.br ] ; 3 uses
  %.2542 = phi ptr [ %.1541, %bb.bu ], [ %.1541, %bb.bt ], [ %.0540, %bb.bi ], [ %.0540, %bb.bl ], [ %i.go, %bb.bm ], [ %i.go, %bb.bn ], [ %i.go, %bb.bp ], [ %.0540, %bb.br ]
  %.not755 = icmp eq ptr %.0554.le, null
  br i1 %.not755, label %.thread845, label %bb.bv

bb.bv:                                            ; preds = %.critedge
  store i8 0, ptr %.2542, align 1, !tbaa !8
  %i.hi = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #8 ; 3 uses
  store double %i.hi, ptr %2, align 16, !tbaa !8
  %i.hj = add nsw i32 %.1577.ph875, 1             ; 2 uses
  switch i64 %i.ex, label %bb.bx [
    i64 8, label %bb.bw
    i64 64, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv
  store double %i.hi, ptr %i.ey, align 8, !tbaa !45
  br label %.thread845

bb.bx:                                            ; preds = %bb.bv
  %i.hk = fptrunc double %i.hi to float
  store float %i.hk, ptr %i.ey, align 4, !tbaa !47
  br label %.thread845

bb.by:                                            ; preds = %bb.bd
  %i.hl = icmp eq i8 %i.gc, 2
  %i.hm = icmp eq i32 %i.ew, 112                  ; 2 uses
  %or.cond25 = or i1 %i.hm, %i.hl
  br i1 %or.cond25, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  switch i32 %.2632, label %gv_isspace.exit777.thread [
    i32 45, label %bb.ca
    i32 43, label %bb.ce
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.hn = call i32 @ungetc(i32 noundef 45, ptr noundef %0) ; 0 uses
  br label %.critedge29

bb.cb:                                            ; preds = %bb.by
  %i.ho = icmp eq i8 %i.gc, 1
  br i1 %i.ho, label %bb.cc, label %bb.dy

bb.cc:                                            ; preds = %bb.cb
  switch i32 %.2632, label %gv_isspace.exit777.thread [
    i32 45, label %bb.cd
    i32 43, label %bb.ce
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.hp = or i32 %i.fp, 268435456
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bz, %bb.cc, %bb.cd
  %.4591 = phi i32 [ %i.hp, %bb.cd ], [ %i.fp, %bb.cc ], [ %i.fp, %bb.bz ] ; 3 uses
  %i.hq = add nsw i32 %.2601, -1                  ; 2 uses
  %i.hr = icmp sgt i32 %.2601, 1
  br i1 %i.hr, label %.lr.ph1012, label %gv_isspace.exit777.thread

.lr.ph1012:                                       ; preds = %bb.ce, %gv_isspace.exit777
  %i.hs = phi i32 [ %i.hw, %gv_isspace.exit777 ], [ %i.hq, %bb.ce ] ; 3 uses
  %.135701011 = phi i32 [ %.14571, %gv_isspace.exit777 ], [ %.7564, %bb.ce ]
  %i.ht = call i32 @getc(ptr noundef %0)          ; 5 uses
  %i.hu = icmp sgt i32 %i.ht, -1                  ; 2 uses
  %i.hv = zext i1 %i.hu to i32
  %.14571 = add nsw i32 %.135701011, %i.hv        ; 3 uses
  br i1 %i.hu, label %bb.cf, label %.critedge29

bb.cf:                                            ; preds = %.lr.ph1012
  switch i32 %i.ht, label %gv_isspace.exit777.thread [
    i32 9, label %gv_isspace.exit777
    i32 10, label %gv_isspace.exit777
    i32 11, label %gv_isspace.exit777
    i32 12, label %gv_isspace.exit777
    i32 13, label %gv_isspace.exit777
    i32 32, label %gv_isspace.exit777
  ]

gv_isspace.exit777:                               ; preds = %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cf
  %i.hw = add nsw i32 %i.hs, -1
  %i.hx = icmp sgt i32 %i.hs, 1
  br i1 %i.hx, label %.lr.ph1012, label %gv_isspace.exit777.thread, !llvm.loop !17

gv_isspace.exit777.thread:                        ; preds = %gv_isspace.exit777, %bb.cf, %bb.ce, %bb.cc, %bb.bz
  %.7637.ph = phi i32 [ %.2632, %bb.bz ], [ %.2632, %bb.cc ], [ %.2632, %bb.ce ], [ %i.ht, %bb.cf ], [ %i.ht, %gv_isspace.exit777 ] ; 15 uses
  %.7606.ph = phi i32 [ %.2601, %bb.bz ], [ %.2601, %bb.cc ], [ %i.hq, %bb.ce ], [ 0, %gv_isspace.exit777 ], [ %i.hs, %bb.cf ] ; 10 uses
  %.5592.ph = phi i32 [ %i.fp, %bb.bz ], [ %i.fp, %bb.cc ], [ %.4591, %bb.ce ], [ %.4591, %bb.cf ], [ %.4591, %gv_isspace.exit777 ] ; 2 uses
  %.15572.ph = phi i32 [ %.7564, %bb.bz ], [ %.7564, %bb.cc ], [ %.7564, %bb.ce ], [ %.14571, %bb.cf ], [ %.14571, %gv_isspace.exit777 ] ; 8 uses
  switch i32 %i.ew, label %bb.cg [
    i32 111, label %.thread827
    i32 120, label %.thread801
    i32 112, label %.thread801
  ]

bb.cg:                                            ; preds = %gv_isspace.exit777.thread
  %i.hy = icmp eq i32 %i.ew, 105                  ; 2 uses
  %i.hz = icmp eq i32 %.7637.ph, 48
  %or.cond33 = and i1 %i.hy, %i.hz
  br i1 %or.cond33, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.ia = icmp sgt i32 %.7606.ph, 1
  br i1 %i.ia, label %bb.ci, label %.thread827

bb.ci:                                            ; preds = %bb.ch
  %i.ib = call i32 @getc(ptr noundef %0)          ; 3 uses
  %i.ic = icmp sgt i32 %i.ib, -1
  br i1 %i.ic, label %bb.cj, label %.thread827

bb.cj:                                            ; preds = %bb.ci
  %i.id = and i32 %i.ib, 2147483615
  %or.cond35 = icmp eq i32 %i.id, 88
  %i.ie = call i32 @ungetc(i32 noundef %i.ib, ptr noundef %0) ; 0 uses
  br i1 %or.cond35, label %.thread801, label %.thread827

.thread827:                                       ; preds = %gv_isspace.exit777.thread, %bb.cj, %bb.ch, %bb.ci
  store i64 0, ptr %2, align 16, !tbaa !8
  br label %bb.dc

.thread801:                                       ; preds = %gv_isspace.exit777.thread, %gv_isspace.exit777.thread, %bb.cj
  store i64 0, ptr %2, align 16, !tbaa !8
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cg
  store i64 0, ptr %2, align 16, !tbaa !8
  switch i32 %i.fi, label %bb.da [
    i32 16, label %bb.cl
    i32 10, label %bb.ct
  ]

bb.cl:                                            ; preds = %.thread801, %bb.ck
  %i.if = zext nneg i32 %.7637.ph to i64
  %i.ig = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 408), i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !8
  %i.ii = icmp sgt i8 %i.ih, 15
  br i1 %i.ii, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ij = call i32 @ungetc(i32 noundef %.7637.ph, ptr noundef %0) ; 0 uses
  br label %.critedge29

bb.cn:                                            ; preds = %bb.cl
  %i.ik = icmp eq i32 %.7637.ph, 48
  br i1 %i.ik, label %bb.co, label %.thread808

bb.co:                                            ; preds = %bb.cn
  %i.il = add nsw i32 %.7606.ph, -1               ; 2 uses
  %i.im = icmp sgt i32 %.7606.ph, 1
  br i1 %i.im, label %bb.cp, label %.thread808

bb.cp:                                            ; preds = %bb.co
  %i.in = call i32 @getc(ptr noundef %0)          ; 4 uses
  %i.io = icmp slt i32 %i.in, 0
  %i.ip = add nsw i32 %.15572.ph, 1               ; 2 uses
  %.19 = select i1 %i.io, i32 %.15572.ph, i32 %i.ip ; 2 uses
  %i.iq = and i32 %i.in, -33
  %or.cond766 = icmp eq i32 %i.iq, 88
  br i1 %or.cond766, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %.not749 = icmp eq i32 %.7606.ph, 2
  br i1 %.not749, label %.thread808, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ir = add nsw i32 %.7606.ph, -2
  %i.is = call i32 @getc(ptr noundef %0)          ; 2 uses
  %i.it = icmp slt i32 %i.is, 0
  %i.iu = add nsw i32 %.15572.ph, 2
  %spec.select767 = select i1 %i.it, i32 %i.ip, i32 %i.iu
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cp
  %.9639 = phi i32 [ %i.is, %bb.cr ], [ %i.in, %bb.cp ] ; 3 uses
  %.8607 = phi i32 [ %i.ir, %bb.cr ], [ %i.il, %bb.cp ] ; 2 uses
  %.20 = phi i32 [ %spec.select767, %bb.cr ], [ %.19, %bb.cp ] ; 2 uses
  %i.iv = icmp sgt i32 %.9639, -1
  br i1 %i.iv, label %.thread808, label %.critedge49

.thread808:                                       ; preds = %bb.cn, %bb.cq, %bb.co, %bb.cs
  %.20814 = phi i32 [ %.20, %bb.cs ], [ %.15572.ph, %bb.cn ], [ %.19, %bb.cq ], [ %.15572.ph, %bb.co ] ; 2 uses
  %.8607813 = phi i32 [ %.8607, %bb.cs ], [ %.7606.ph, %bb.cn ], [ 0, %bb.cq ], [ %i.il, %bb.co ] ; 2 uses
  %.9639812 = phi i32 [ %.9639, %bb.cs ], [ %.7637.ph, %bb.cn ], [ %i.in, %bb.cq ], [ 48, %bb.co ] ; 3 uses
  %i.iw = zext nneg i32 %.9639812 to i64
  %i.ix = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 408), i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !8
  %i.iz = icmp slt i8 %i.iy, 16
  br i1 %i.iz, label %bb.dk, label %.critedge49

bb.ct:                                            ; preds = %bb.ck
  %i.ja = add nsw i32 %.7637.ph, -58
  %or.cond39 = icmp ult i32 %i.ja, -10
  br i1 %or.cond39, label %bb.cu, label %.preheader862.preheader

.preheader862.preheader:                          ; preds = %bb.ct
  %smin1164 = call i32 @llvm.smin.i32(i32 %.7606.ph, i32 1)
  %i.jb = add i32 %smin1164, -1                   ; 2 uses
  %i.jc = load i64, ptr %2, align 16, !tbaa !8
  %i.jd = mul i64 %i.jc, 10
  %i.je = add nsw i32 %.7637.ph, -48
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = add i64 %i.jd, %i.jf
  store i64 %i.jg, ptr %2, align 16, !tbaa !8
  %i.jh = icmp sgt i32 %.7606.ph, 1
  br i1 %i.jh, label %.lr.ph1441, label %.critedge49

bb.cu:                                            ; preds = %bb.ct
  %i.ji = call i32 @ungetc(i32 noundef %.7637.ph, ptr noundef %0) ; 0 uses
  br label %.critedge29

.preheader862:                                    ; preds = %.lr.ph1441
  %i.jj = load i64, ptr %2, align 16, !tbaa !8
  %i.jk = mul i64 %i.jj, 10
  %i.jl = add nsw i32 %i.jq, -48
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = add i64 %i.jk, %i.jm
  store i64 %i.jn, ptr %2, align 16, !tbaa !8
  %i.jo = icmp sgt i32 %.96081439, 2
  br i1 %i.jo, label %.lr.ph1441, label %.critedge49, !llvm.loop !18

.lr.ph1441:                                       ; preds = %.preheader862.preheader, %.preheader862
  %.211440 = phi i32 [ %.22, %.preheader862 ], [ %.15572.ph, %.preheader862.preheader ]
  %.96081439 = phi i32 [ %i.jp, %.preheader862 ], [ %.7606.ph, %.preheader862.preheader ] ; 4 uses
  %i.jp = add nsw i32 %.96081439, -1              ; 3 uses
  %i.jq = call i32 @getc(ptr noundef %0)          ; 6 uses
  %i.jr = icmp sgt i32 %i.jq, -1
  %i.js = zext i1 %i.jr to i32
  %.22 = add nsw i32 %.211440, %i.js              ; 6 uses
  %i.jt = add i32 %i.jq, -48
  %or.cond91 = icmp ult i32 %i.jt, 10
  br i1 %or.cond91, label %.preheader862, label %.critedge41, !llvm.loop !18

.critedge41:                                      ; preds = %.lr.ph1441
  %i.ju = icmp eq i32 %i.jq, 35
  %or.cond43 = and i1 %i.hy, %i.ju
  br i1 %or.cond43, label %bb.cv, label %.critedge49

bb.cv:                                            ; preds = %.critedge41
  %i.jv = and i32 %.5592.ph, 1024
  %.not748 = icmp eq i32 %i.jv, 0
  br i1 %.not748, label %bb.cw, label %.critedge49

bb.cw:                                            ; preds = %bb.cv
  %i.jw = load i64, ptr %2, align 16, !tbaa !8
  %i.jx = trunc i64 %i.jw to i32                  ; 4 uses
  %i.jy = add i32 %i.jx, -65
  %or.cond45 = icmp ult i32 %i.jy, -63
  br i1 %or.cond45, label %.critedge29, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i64 0, ptr %2, align 16, !tbaa !8
  %i.jz = icmp samesign ult i32 %i.jx, 37
  %i.ka = select i1 %i.jz, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 408), ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 664) ; 2 uses
  %i.kb = add nsw i32 %.96081439, -2              ; 3 uses
  %.not853 = icmp eq i32 %.96081439, 2
  br i1 %.not853, label %.critedge49, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kc = call i32 @getc(ptr noundef %0)          ; 5 uses
  %i.kd = icmp sgt i32 %i.kc, -1                  ; 2 uses
  %i.ke = zext i1 %i.kd to i32
  %.24 = add nsw i32 %.22, %i.ke                  ; 3 uses
  br i1 %i.kd, label %bb.cz, label %.critedge49

bb.cz:                                            ; preds = %bb.cy
  %i.kf = zext nneg i32 %i.kc to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !8   ; 2 uses
  %i.ki = sext i8 %i.kh to i32
  %i.kj = icmp slt i32 %i.ki, %i.jx
  br i1 %i.kj, label %bb.de, label %.critedge49

bb.da:                                            ; preds = %bb.ck
  %i.kk = add i32 %i.fi, -65
  %or.cond47 = icmp ult i32 %i.kk, -63
  br i1 %or.cond47, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.kl = icmp samesign ult i32 %i.fi, 37
  %spec.select852 = select i1 %i.kl, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 408), ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 664)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.thread827
  %.4626796824833 = phi i32 [ %i.fi, %bb.db ], [ 8, %.thread827 ] ; 2 uses
  %i.km = phi ptr [ %spec.select852, %bb.db ], [ getelementptr inbounds nuw (i8, ptr @_Sftable, i64 408), %.thread827 ] ; 2 uses
  %i.kn = zext nneg i32 %.7637.ph to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !8   ; 2 uses
  %i.kq = sext i8 %i.kp to i32
end_hunk_0
