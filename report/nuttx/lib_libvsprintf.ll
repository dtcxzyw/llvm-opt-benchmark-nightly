Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_libvsprintf?download=true
inline.NumInlined: 1
begin_hunk_0_@vsprintf_internal:bb.a
  %i.ew = icmp eq i32 %i.ev, 0
  %i.ex = icmp ne i32 %i.eu, 0
  %or.cond36 = select i1 %i.ew, i1 %i.ex, i1 false
  br i1 %or.cond36, label %.preheader58, label %.loopexit59

.preheader58:                                     ; preds = %bb.bh, %.preheader58
  %.5460 = phi i32 [ %i.ez, %.preheader58 ], [ %i.et, %bb.bh ]
  %i.ey = load ptr, ptr %i.a, align 8
  call void %i.ey(ptr noundef %0, i32 noundef 32) #11
  %i.ez = add nsw i32 %.5460, -1                  ; 2 uses
  %.old35.not = icmp eq i32 %i.ez, 0
  br i1 %.old35.not, label %.loopexit59.loopexit, label %.preheader58

.loopexit59.loopexit:                             ; preds = %.preheader58
  %i.fa = sub i32 %.1436, %.2427
  %i.fb = add i32 %i.fa, %.0455
  br label %.loopexit59

.loopexit59:                                      ; preds = %.loopexit59.loopexit, %bb.bh
  %.6461 = phi i32 [ %i.eu, %bb.bh ], [ 0, %.loopexit59.loopexit ] ; 4 uses
  %.7 = phi i32 [ %.1436, %bb.bh ], [ %i.fb, %.loopexit59.loopexit ] ; 2 uses
  br i1 %.not572, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.loopexit59
  %i.fc = add nsw i32 %.7, 1
  %i.fd = load ptr, ptr %i.a, align 8
  call void %i.fd(ptr noundef %0, i32 noundef %.0424) #11
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.loopexit59
  %.8 = phi i32 [ %i.fc, %bb.bi ], [ %.7, %.loopexit59 ] ; 2 uses
  %i.fe = and i32 %i.el, 8
  %i.ff = icmp eq i32 %i.fe, 0
  %i.fg = icmp ne i32 %.6461, 0
  %or.cond39 = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %or.cond39, label %.preheader56, label %.loopexit57

.preheader56:                                     ; preds = %bb.bj, %.preheader56
  %.7462 = phi i32 [ %i.fi, %.preheader56 ], [ %.6461, %bb.bj ]
  %i.fh = load ptr, ptr %i.a, align 8
  call void %i.fh(ptr noundef %0, i32 noundef 48) #11
  %i.fi = add nsw i32 %.7462, -1                  ; 2 uses
  %.old38.not = icmp eq i32 %i.fi, 0
  br i1 %.old38.not, label %.loopexit57.loopexit, label %.preheader56

.loopexit57.loopexit:                             ; preds = %.preheader56
  %i.fj = add i32 %.6461, %.8
  br label %.loopexit57

.loopexit57:                                      ; preds = %.loopexit57.loopexit, %bb.bj
  %.8463 = phi i32 [ %.6461, %bb.bj ], [ 0, %.loopexit57.loopexit ] ; 4 uses
  %.10 = phi i32 [ %.8, %bb.bj ], [ %i.fj, %.loopexit57.loopexit ] ; 4 uses
  br i1 %.not571, label %bb.bx, label %.preheader55

.preheader55:                                     ; preds = %.loopexit57
  %i.fk = zext i8 %.3 to i32
  %i.fl = sub nsw i32 0, %.4451.fr
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader55, %bb.bp
  %.11 = phi i32 [ %i.fw, %bb.bp ], [ %.10, %.preheader55 ] ; 2 uses
  %.3428 = phi i32 [ %i.fv, %bb.bp ], [ %i.em, %.preheader55 ] ; 5 uses
  %i.fm = icmp eq i32 %.3428, -1
  br i1 %i.fm, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fn = add nsw i32 %.11, 1
  %i.fo = load ptr, ptr %i.a, align 8
  call void %i.fo(ptr noundef %0, i32 noundef 46) #11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.12 = phi i32 [ %i.fn, %bb.bl ], [ %.11, %bb.bk ] ; 3 uses
  %i.fp = sub nsw i32 %i.cs, %.3428               ; 3 uses
  %i.fq = icmp sgt i32 %i.fp, -1
  %i.fr = icmp slt i32 %i.fp, %i.fk
  %or.cond598 = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %or.cond598, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fs = zext nneg i32 %i.fp to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.0417 = phi i8 [ %i.fu, %bb.bn ], [ 48, %bb.bm ] ; 4 uses
  %i.fv = add nsw i32 %.3428, -1                  ; 2 uses
  %.not581 = icmp sgt i32 %.3428, %i.fl
  br i1 %.not581, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.fw = add nsw i32 %.12, 1
  %i.fx = load ptr, ptr %i.a, align 8
  %i.fy = sext i8 %.0417 to i32
  call void %i.fx(ptr noundef %0, i32 noundef %i.fy) #11
  br label %bb.bk

bb.bq:                                            ; preds = %bb.bo
  %i.fz = icmp eq i32 %i.fv, %i.cs
  br i1 %i.fz, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.ga = load i8, ptr %i.h, align 1              ; 2 uses
  %i.gb = icmp sgt i8 %i.ga, 53
  br i1 %i.gb, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gc = icmp eq i8 %i.ga, 53
  br i1 %i.gc, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.gd = load i8, ptr %i.g, align 4
  %i.ge = and i8 %i.gd, 16
  %.not582 = icmp eq i8 %i.ge, 0
  br i1 %.not582, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.br
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq
  %.1418 = phi i8 [ 49, %bb.bu ], [ %.0417, %bb.bt ], [ %.0417, %bb.bs ], [ %.0417, %bb.bq ]
  %i.gf = add nsw i32 %.12, 1
  %i.gg = load ptr, ptr %i.a, align 8
  %i.gh = sext i8 %.1418 to i32
  call void %i.gg(ptr noundef %0, i32 noundef %i.gh) #11
  %i.gi = and i32 %i.el, 16
  %i.gj = icmp ne i32 %i.gi, 0
  %i.gk = icmp eq i32 %.3428, 0
  %or.cond18 = and i1 %i.gj, %i.gk
  br i1 %or.cond18, label %bb.bw, label %.loopexit51

bb.bw:                                            ; preds = %bb.bv
  %i.gl = add nsw i32 %.12, 2
  %i.gm = load ptr, ptr %i.a, align 8
  call void %i.gm(ptr noundef nonnull %0, i32 noundef 46) #11
  br label %.loopexit51

bb.bx:                                            ; preds = %.loopexit57
  %i.gn = load i8, ptr %i.h, align 1              ; 2 uses
  %.not575 = icmp eq i8 %i.gn, 49
  br i1 %.not575, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.go = load i8, ptr %i.g, align 4
  %i.gp = and i8 %i.go, -17
  store i8 %i.gp, ptr %i.g, align 4
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.gq = load ptr, ptr %i.a, align 8
  %i.gr = sext i8 %i.gn to i32
  call void %i.gq(ptr noundef %0, i32 noundef %i.gr) #11
  %i.gs = icmp sgt i32 %.4451.fr, 0
  br i1 %i.gs, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.gt = add nsw i32 %.10, 2
  %i.gu = load ptr, ptr %i.a, align 8
  call void %i.gu(ptr noundef nonnull %0, i32 noundef 46) #11
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.cd
  %.0416104 = phi i8 [ 1, %bb.ca ], [ %i.hd, %bb.cd ] ; 3 uses
  %.14103 = phi i32 [ %i.gt, %bb.ca ], [ %i.gv, %bb.cd ]
  %i.gv = add nsw i32 %.14103, 1                  ; 2 uses
  %i.gw = load ptr, ptr %i.a, align 8
  %i.gx = icmp ult i8 %.0416104, %.3
  br i1 %i.gx, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.gy = zext i8 %.0416104 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = sext i8 %i.ha to i32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.hc = phi i32 [ %i.hb, %bb.cc ], [ 48, %bb.cb ]
  call void %i.gw(ptr noundef nonnull %0, i32 noundef %i.hc) #11
  %i.hd = add i8 %.0416104, 1                     ; 2 uses
  %i.he = zext i8 %i.hd to i32
  %.not577 = icmp samesign ult i32 %.4451.fr, %i.he
  br i1 %.not577, label %.loopexit54, label %bb.cb, !llvm.loop !11

bb.ce:                                            ; preds = %bb.bz
  %i.hf = add nsw i32 %.10, 1
  %i.hg = and i32 %i.el, 16
  %.not576 = icmp eq i32 %i.hg, 0
  br i1 %.not576, label %.loopexit54, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hh = add nsw i32 %.10, 2
  %i.hi = load ptr, ptr %i.a, align 8
  call void %i.hi(ptr noundef nonnull %0, i32 noundef 46) #11
  br label %.loopexit54

.loopexit54:                                      ; preds = %bb.cd, %bb.ce, %bb.cf
  %.15 = phi i32 [ %i.hf, %bb.ce ], [ %i.hh, %bb.cf ], [ %i.gv, %bb.cd ] ; 2 uses
  %i.hj = load ptr, ptr %i.a, align 8
  %4 = and i32 %i.el, 8192
  %.not578 = icmp eq i32 %4, 0
  %5 = select i1 %.not578, i32 101, i32 69
  call void %i.hj(ptr noundef nonnull %0, i32 noundef %5) #11
  %i.hk = icmp slt i32 %i.cs, 0
  br i1 %i.hk, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %.loopexit54
  %i.hl = icmp eq i32 %i.cs, 0
  br i1 %i.hl, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.hm = load i8, ptr %i.g, align 4
  %i.hn = and i8 %i.hm, 16
  %.not579 = icmp eq i8 %i.hn, 0
  br i1 %.not579, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.loopexit54
  %i.ho = sub nsw i32 0, %i.cs
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %.0429 = phi i32 [ %i.ho, %bb.ci ], [ 0, %bb.ch ], [ %i.cs, %bb.cg ] ; 2 uses
  %.4 = phi i32 [ 45, %bb.ci ], [ 43, %bb.ch ], [ 43, %bb.cg ]
  %i.hp = add nsw i32 %.15, 2
  %i.hq = load ptr, ptr %i.a, align 8
  call void %i.hq(ptr noundef nonnull %0, i32 noundef %.4) #11
  %i.hr = zext nneg i32 %.0429 to i64
  %i.hs = call ptr @__ultoa_invert(i64 noundef %i.hr, ptr noundef nonnull %3, i32 noundef 10) #11
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = sub i64 %i.ht, %i.d                     ; 2 uses
  %or.cond20 = icmp samesign ult i32 %.0429, 10
  br i1 %or.cond20, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.hv = add nsw i32 %.15, 3
  %i.hw = load ptr, ptr %i.a, align 8
  call void %i.hw(ptr noundef nonnull %0, i32 noundef 48) #11
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.16 = phi i32 [ %i.hv, %bb.ck ], [ %i.hp, %bb.cj ] ; 2 uses
  %i.hx = and i64 %i.hu, 255
  %.not580105 = icmp eq i64 %i.hx, 0
  br i1 %.not580105, label %.loopexit51, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %bb.cl
  %i.hy = and i64 %i.hu, 255
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %indvars.iv170 = phi i64 [ %i.hy, %.lr.ph108.preheader ], [ %indvars.iv.next171, %.lr.ph108 ] ; 2 uses
  %.17107 = phi i32 [ %.16, %.lr.ph108.preheader ], [ %i.hz, %.lr.ph108 ]
  %i.hz = add nsw i32 %.17107, 1                  ; 2 uses
  %i.ia = load ptr, ptr %i.a, align 8
  %i.ib = getelementptr i8, ptr %3, i64 %indvars.iv170
  %i.ic = getelementptr i8, ptr %i.ib, i64 -1
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = sext i8 %i.id to i32
  call void %i.ia(ptr noundef nonnull %0, i32 noundef %i.ie) #11
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, -1 ; 2 uses
  %i.if = and i64 %indvars.iv.next171, 255
  %.not580 = icmp eq i64 %i.if, 0
  br i1 %.not580, label %.loopexit51, label %.lr.ph108, !llvm.loop !12

bb.cm:                                            ; preds = %bb.aj
  switch i8 %spec.store.select34, label %.thread30 [
    i8 99, label %bb.cn
    i8 115, label %bb.cr
    i8 83, label %bb.cr
    i8 105, label %bb.cw
    i8 100, label %bb.cw
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.ig = load i32, ptr %2, align 8               ; 3 uses
  %i.ih = icmp ult i32 %i.ig, 41
  br i1 %i.ih, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ii = load ptr, ptr %i.c, align 8
  %i.ij = zext nneg i32 %i.ig to i64
  %i.ik = getelementptr i8, ptr %i.ii, i64 %i.ij
  %i.il = add nuw nsw i32 %i.ig, 8
  store i32 %i.il, ptr %2, align 8
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.im = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 8
  store ptr %i.in, ptr %i.b, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.io = phi ptr [ %i.ik, %bb.co ], [ %i.im, %bb.cp ]
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = trunc i32 %i.ip to i8
  store i8 %i.iq, ptr %3, align 4
  br label %bb.cv

bb.cr:                                            ; preds = %bb.cm, %bb.cm
  %i.ir = load i32, ptr %2, align 8               ; 3 uses
  %i.is = icmp ult i32 %i.ir, 41
  br i1 %i.is, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.it = load ptr, ptr %i.c, align 8
  %i.iu = zext nneg i32 %i.ir to i64
  %i.iv = getelementptr i8, ptr %i.it, i64 %i.iu
  %i.iw = add nuw nsw i32 %i.ir, 8
  store i32 %i.iw, ptr %2, align 8
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  %i.ix = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  store ptr %i.iy, ptr %i.b, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.iz = phi ptr [ %i.iv, %bb.cs ], [ %i.ix, %bb.ct ]
  %i.ja = load ptr, ptr %i.iz, align 8            ; 2 uses
  %i.jb = icmp eq ptr %i.ja, null
  %spec.store.select21 = select i1 %i.jb, ptr @g_nullstring, ptr %i.ja ; 2 uses
  %i.jc = and i16 %spec.select, 256
  %.not542 = icmp eq i16 %i.jc, 0
  %i.jd = zext nneg i32 %.0447 to i64
  %i.je = select i1 %.not542, i64 -1, i64 %i.jd
  %i.jf = call i64 @strnlen(ptr noundef nonnull %spec.store.select21, i64 noundef %i.je) #9
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cq
  %.0446 = phi ptr [ %3, %bb.cq ], [ %spec.store.select21, %bb.cu ]
  %.0445 = phi i64 [ 1, %bb.cq ], [ %i.jf, %bb.cu ] ; 5 uses
  %i.jg = and i16 %spec.select, 8
  %i.jh = icmp eq i16 %i.jg, 0
  %i.ji = zext nneg i32 %.0455 to i64             ; 3 uses
  %i.jj = icmp ult i64 %.0445, %i.ji
  %or.cond130 = select i1 %i.jh, i1 %i.jj, i1 false
  br i1 %or.cond130, label %.lr.ph, label %.loopexit64

.lr.ph:                                           ; preds = %bb.cv, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.ji, %bb.cv ]
  %.1887 = phi i32 [ %i.jk, %.lr.ph ], [ %.1436, %bb.cv ]
  %i.jk = add nsw i32 %.1887, 1                   ; 2 uses
  %i.jl = load ptr, ptr %i.a, align 8
  call void %i.jl(ptr noundef %0, i32 noundef 32) #11
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.jm = icmp ult i64 %.0445, %indvars.iv.next
  br i1 %i.jm, label %.lr.ph, label %.loopexit64, !llvm.loop !13

.loopexit64:                                      ; preds = %.lr.ph, %bb.cv
  %.pre-phi180 = phi i64 [ %i.ji, %bb.cv ], [ %indvars.iv.next, %.lr.ph ]
  %.19 = phi i32 [ %.1436, %bb.cv ], [ %i.jk, %.lr.ph ]
  %i.jn = trunc i64 %.0445 to i32
  %i.jo = add i32 %.19, %i.jn
  %i.jp = load ptr, ptr %i.e, align 8
  %i.jq = call i64 %i.jp(ptr noundef %0, ptr noundef nonnull %.0446, i64 noundef %.0445) #11 ; 0 uses
  %i.jr = call i64 @llvm.usub.sat.i64(i64 %.pre-phi180, i64 %.0445)
  %i.js = trunc nuw nsw i64 %i.jr to i32
  br label %.loopexit51

bb.cw:                                            ; preds = %bb.cm, %bb.cm
  %i.jt = zext i16 %.0468 to i32                  ; 4 uses
  %i.ju = and i32 %i.jt, 2048
  %.not550 = icmp eq i32 %i.ju, 0
  %i.jv = and i32 %i.jt, 2560
  %or.cond599.not = icmp eq i32 %i.jv, 2560
  br i1 %or.cond599.not, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  %i.jw = load i32, ptr %2, align 8               ; 3 uses
  %i.jx = icmp ult i32 %i.jw, 41
  br i1 %i.jx, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jy = load ptr, ptr %i.c, align 8
  %i.jz = zext nneg i32 %i.jw to i64
  %i.ka = getelementptr i8, ptr %i.jy, i64 %i.jz
  %i.kb = add nuw nsw i32 %i.jw, 8
  store i32 %i.kb, ptr %2, align 8
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.kc = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 8
  store ptr %i.kd, ptr %i.b, align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.ke = phi ptr [ %i.ka, %bb.cy ], [ %i.kc, %bb.cz ]
  %i.kf = load i64, ptr %i.ke, align 8
  br label %bb.dn

bb.db:                                            ; preds = %bb.cw
  %i.kg = and i32 %i.jt, 512
  %.not549 = icmp eq i32 %i.kg, 0
  %i.kh = load i32, ptr %2, align 8               ; 5 uses
  %i.ki = icmp ult i32 %i.kh, 41                  ; 2 uses
  br i1 %.not549, label %bb.dg, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  br i1 %i.ki, label %bb.dd, label %bb.de

end_hunk_0
begin_hunk_1_@vsprintf_internal:bb.a
bb.ef:                                            ; preds = %bb.dx, %bb.ed, %bb.ee, %bb.eb, %bb.ds
  %.0413 = phi i64 [ %i.md, %bb.ds ], [ %i.mo, %bb.dx ], [ %i.na, %bb.ed ], [ %i.nc, %bb.ee ], [ %i.mx, %bb.eb ] ; 2 uses
  %i.nd = and i16 %spec.select172543, -7          ; 5 uses
  switch i8 %.248992936, label %bb.em [
    i8 117, label %bb.eg
    i8 111, label %bb.ek
    i8 112, label %bb.eh
    i8 120, label %bb.ei
    i8 88, label %bb.ej
  ]

bb.eg:                                            ; preds = %bb.ef
  %i.ne = and i16 %spec.select172543, -23
  br label %bb.ek

bb.eh:                                            ; preds = %bb.ef
  %i.nf = or i16 %i.nd, 16
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ef
  %.11479 = phi i16 [ %i.nf, %bb.eh ], [ %i.nd, %bb.ef ] ; 2 uses
  %i.ng = shl i16 %.11479, 10
  %i.nh = and i16 %i.ng, 16384
  %spec.select601 = or i16 %i.nh, %.11479
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ef
  %i.ni = and i16 %spec.select172543, 16
  %.not547 = icmp eq i16 %i.ni, 0
  %i.nj = or i16 %i.nd, 24576
  %spec.select602 = select i1 %.not547, i16 %i.nd, i16 %i.nj
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ef, %bb.ej, %bb.ei, %bb.eg
  %.14482 = phi i16 [ %i.ne, %bb.eg ], [ %spec.select602, %bb.ej ], [ %spec.select601, %bb.ei ], [ %i.nd, %bb.ef ] ; 3 uses
  %.0414 = phi i32 [ 10, %bb.eg ], [ 528, %bb.ej ], [ 16, %bb.ei ], [ 8, %bb.ef ]
  %i.nk = and i16 %.14482, 256
  %i.nl = icmp ne i16 %i.nk, 0
  %i.nm = icmp eq i32 %.2449122740, 0
  %or.cond30 = select i1 %i.nl, i1 %i.nm, i1 false
  %i.nn = icmp eq i64 %.0413, 0
  %or.cond32 = select i1 %or.cond30, i1 %i.nn, i1 false
  br i1 %or.cond32, label %.thread44, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.no = call ptr @__ultoa_invert(i64 noundef %.0413, ptr noundef nonnull %3, i32 noundef %.0414) #11
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = sub i64 %i.np, %i.d
  %i.nr = trunc i64 %i.nq to i8
  br label %.thread44

.thread44:                                        ; preds = %bb.el, %bb.ek
  %.6493 = phi i8 [ %i.nr, %bb.el ], [ 0, %bb.ek ]
  %i.ns = and i16 %.14482, -4097
  %.pre = and i16 %.14482, 256
  br label %bb.en

bb.em:                                            ; preds = %bb.ef
  %i.nt = load ptr, ptr %i.a, align 8
  call void %i.nt(ptr noundef %0, i32 noundef 37) #11
  %i.nu = add nsw i32 %.1436, 2
  %i.nv = load ptr, ptr %i.a, align 8
  call void %i.nv(ptr noundef %0, i32 noundef %i.lq) #11
  br label %.backedge.backedge

.backedge.loopexit:                               ; preds = %.lr.ph127
  %i.nw = add i32 %.11466, %.27
  br label %.backedge.backedge

bb.en:                                            ; preds = %.thread44, %bb.do
  %.pre-phi = phi i16 [ %.pre, %.thread44 ], [ %i.lh, %bb.do ]
  %.4434162641 = phi ptr [ %.4434162642, %.thread44 ], [ %.3433, %bb.do ] ; 3 uses
  %.2449122739 = phi i32 [ %.2449122740, %.thread44 ], [ %.0447, %bb.do ] ; 5 uses
  %.2457112837 = phi i32 [ %.2457112838, %.thread44 ], [ %.0455, %bb.do ] ; 3 uses
  %.8495 = phi i8 [ %.6493, %.thread44 ], [ %i.lp, %bb.do ] ; 6 uses
  %.16484 = phi i16 [ %i.ns, %.thread44 ], [ %.10478, %bb.do ] ; 4 uses
  %.not553 = icmp eq i16 %.pre-phi, 0
  br i1 %.not553, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.nx = and i16 %.16484, -2                     ; 2 uses
  %i.ny = zext i8 %.8495 to i32
  %i.nz = icmp sgt i32 %.2449122739, %i.ny
  br i1 %i.nz, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.oa = trunc i32 %.2449122739 to i8
  %i.ob = and i16 %.16484, 16400
  %or.cond604 = icmp eq i16 %i.ob, 16
  %i.oc = and i16 %.16484, -16402
  %spec.select607 = select i1 %or.cond604, i16 %i.oc, i16 %i.nx
  br label %bb.eq

bb.eq:                                            ; preds = %.thread234, %bb.ep, %bb.eo, %bb.en
  %.8495231 = phi i8 [ %.8495, %bb.eo ], [ %.8495, %bb.en ], [ %.8495, %bb.ep ], [ 0, %.thread234 ] ; 5 uses
  %.2457112837228 = phi i32 [ %.2457112837, %bb.eo ], [ %.2457112837, %bb.en ], [ %.2457112837, %bb.ep ], [ %.0455, %.thread234 ] ; 7 uses
  %.2449122739226 = phi i32 [ %.2449122739, %bb.eo ], [ %.2449122739, %bb.en ], [ %.2449122739, %bb.ep ], [ 0, %.thread234 ] ; 2 uses
  %.4434162641224 = phi ptr [ %.4434162641, %bb.eo ], [ %.4434162641, %bb.en ], [ %.4434162641, %bb.ep ], [ %.3433, %.thread234 ] ; 2 uses
  %.17485 = phi i16 [ %i.nx, %bb.eo ], [ %.16484, %bb.en ], [ %spec.select607, %bb.ep ], [ %i.ll, %.thread234 ] ; 2 uses
  %.0440 = phi i8 [ %.8495, %bb.eo ], [ %.8495, %bb.en ], [ %i.oa, %bb.ep ], [ 0, %.thread234 ] ; 3 uses
  %i.od = zext i16 %.17485 to i32                 ; 5 uses
  %i.oe = and i32 %i.od, 16
  %.not555 = icmp eq i32 %i.oe, 0
  br i1 %.not555, label %bb.eu, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.of = zext i8 %.8495231 to i64
  %i.og = getelementptr i8, ptr %3, i64 %i.of
  %i.oh = getelementptr i8, ptr %i.og, i64 -1
  %i.oi = load i8, ptr %i.oh, align 1
  %i.oj = icmp eq i8 %i.oi, 48
  br i1 %i.oj, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.ok = and i16 %.17485, -24593
  %.pre177 = zext i16 %i.ok to i32
  br label %bb.ev

bb.et:                                            ; preds = %bb.er
  %i.ol = and i32 %i.od, 16384
  %.not557 = icmp eq i32 %i.ol, 0
  %spec.select605.v = select i1 %.not557, i8 1, i8 2
  %spec.select605 = add i8 %spec.select605.v, %.0440
  br label %bb.ev

bb.eu:                                            ; preds = %bb.eq
  %i.om = and i32 %i.od, 4102
  %.not556 = icmp ne i32 %i.om, 0
  %i.on = zext i1 %.not556 to i8
  %spec.select606 = add i8 %.0440, %i.on
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es
  %.pre-phi178 = phi i32 [ %i.od, %bb.eu ], [ %i.od, %bb.et ], [ %.pre177, %bb.es ] ; 8 uses
  %.1441 = phi i8 [ %spec.select606, %bb.eu ], [ %spec.select605, %bb.et ], [ %.0440, %bb.es ] ; 4 uses
  %i.oo = and i32 %.pre-phi178, 8
  %i.op = icmp eq i32 %i.oo, 0
  br i1 %i.op, label %bb.ew, label %..loopexit52_crit_edge

..loopexit52_crit_edge:                           ; preds = %bb.ev
  %.pre181 = zext i8 %.1441 to i32
  br label %.loopexit52

bb.ew:                                            ; preds = %bb.ev
  %i.oq = and i32 %.pre-phi178, 1
  %.not558 = icmp eq i32 %i.oq, 0
  br i1 %.not558, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.or = zext i8 %.8495231 to i32                ; 2 uses
  %i.os = zext i8 %.1441 to i32                   ; 2 uses
  %i.ot = icmp sgt i32 %.2457112837228, %i.os
  br i1 %i.ot, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.ou = add nuw i32 %.2457112837228, %i.or
  %i.ov = sub i32 %i.ou, %i.os
  %i.ow = trunc i32 %.2457112837228 to i8
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ex, %bb.ey, %bb.ew
  %.5452 = phi i32 [ %i.ov, %bb.ey ], [ %i.or, %bb.ex ], [ %.2449122739226, %bb.ew ] ; 2 uses
  %.2442 = phi i8 [ %i.ow, %bb.ey ], [ %.1441, %bb.ex ], [ %.1441, %bb.ew ] ; 2 uses
  %i.ox = zext i8 %.2442 to i32                   ; 2 uses
  %i.oy = icmp sgt i32 %.2457112837228, %i.ox
  br i1 %i.oy, label %.lr.ph112, label %.loopexit52

.lr.ph112:                                        ; preds = %bb.ez, %.lr.ph112
  %.22111 = phi i32 [ %i.oz, %.lr.ph112 ], [ %.1436, %bb.ez ]
  %.3443110 = phi i8 [ %i.pb, %.lr.ph112 ], [ %.2442, %bb.ez ]
  %i.oz = add nsw i32 %.22111, 1                  ; 2 uses
  %i.pa = load ptr, ptr %i.a, align 8
  call void %i.pa(ptr noundef %0, i32 noundef 32) #11
  %i.pb = add i8 %.3443110, 1                     ; 2 uses
  %i.pc = zext i8 %i.pb to i32                    ; 2 uses
  %i.pd = icmp samesign ugt i32 %.2457112837228, %i.pc
  br i1 %i.pd, label %.lr.ph112, label %.loopexit52, !llvm.loop !14

.loopexit52:                                      ; preds = %.lr.ph112, %..loopexit52_crit_edge, %bb.ez
  %.pre-phi182 = phi i32 [ %.pre181, %..loopexit52_crit_edge ], [ %i.ox, %bb.ez ], [ %i.pc, %.lr.ph112 ] ; 2 uses
  %.6453 = phi i32 [ %.2449122739226, %..loopexit52_crit_edge ], [ %.5452, %bb.ez ], [ %.5452, %.lr.ph112 ] ; 3 uses
  %.23 = phi i32 [ %.1436, %..loopexit52_crit_edge ], [ %.1436, %bb.ez ], [ %i.oz, %.lr.ph112 ] ; 4 uses
  %i.pe = icmp sgt i32 %.2457112837228, %.pre-phi182
  %i.pf = sub nsw i32 %.2457112837228, %.pre-phi182
  %i.pg = select i1 %i.pe, i32 %i.pf, i32 0       ; 2 uses
  %i.ph = and i32 %.pre-phi178, 16
  %.not559 = icmp eq i32 %i.ph, 0
  br i1 %.not559, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %.loopexit52
  %i.pi = add nsw i32 %.23, 1
  %i.pj = load ptr, ptr %i.a, align 8
  call void %i.pj(ptr noundef %0, i32 noundef 48) #11
  %i.pk = and i32 %.pre-phi178, 16384
  %.not563 = icmp eq i32 %i.pk, 0
  br i1 %.not563, label %bb.fe, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.pl = add nsw i32 %.23, 2
  %i.pm = load ptr, ptr %i.a, align 8
  %6 = and i32 %.pre-phi178, 8192
  %.not564 = icmp eq i32 %6, 0
  %7 = select i1 %.not564, i32 120, i32 88
  call void %i.pm(ptr noundef nonnull %0, i32 noundef %7) #11
  br label %bb.fe

bb.fc:                                            ; preds = %.loopexit52
  %i.pn = and i32 %.pre-phi178, 4102
  %.not560 = icmp eq i32 %i.pn, 0
  br i1 %.not560, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.po = and i32 %.pre-phi178, 2
  %.not561 = icmp eq i32 %i.po, 0
  %i.pp = and i32 %.pre-phi178, 4096
  %.not562 = icmp eq i32 %i.pp, 0
  %i.pq = add nsw i32 %.23, 1
  %i.pr = load ptr, ptr %i.a, align 8
  %i.ps = select i1 %.not561, i32 32, i32 43
  %i.pt = select i1 %.not562, i32 %i.ps, i32 45
  call void %i.pr(ptr noundef %0, i32 noundef %i.pt) #11
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fc, %bb.fd, %bb.fa, %bb.fb
  %.24 = phi i32 [ %i.pl, %bb.fb ], [ %i.pi, %bb.fa ], [ %i.pq, %bb.fd ], [ %.23, %bb.fc ] ; 2 uses
  %i.pu = zext i8 %.8495231 to i32                ; 3 uses
  %i.pv = icmp sgt i32 %.6453, %i.pu
  br i1 %i.pv, label %.lr.ph117, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph117
  %i.pw = add i32 %.24, %.6453
  %i.px = sub i32 %i.pw, %i.pu
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.fe
  %.25.lcssa = phi i32 [ %.24, %bb.fe ], [ %i.px, %.preheader.loopexit ] ; 2 uses
  %.not565119 = icmp eq i8 %.8495231, 0
  br i1 %.not565119, label %.loopexit51, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %.preheader
  %i.py = zext i8 %.8495231 to i64
  br label %.lr.ph122

.lr.ph117:                                        ; preds = %bb.fe, %.lr.ph117
  %.7454115 = phi i32 [ %i.qa, %.lr.ph117 ], [ %.6453, %bb.fe ]
  %i.pz = load ptr, ptr %i.a, align 8
  call void %i.pz(ptr noundef %0, i32 noundef 48) #11
  %i.qa = add nsw i32 %.7454115, -1               ; 2 uses
  %i.qb = icmp samesign ugt i32 %i.qa, %i.pu
  br i1 %i.qb, label %.lr.ph117, label %.preheader.loopexit, !llvm.loop !15

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %.lr.ph122
  %indvars.iv173 = phi i64 [ %i.py, %.lr.ph122.preheader ], [ %i.qe, %.lr.ph122 ]
  %.26121 = phi i32 [ %.25.lcssa, %.lr.ph122.preheader ], [ %i.qc, %.lr.ph122 ]
  %i.qc = add nsw i32 %.26121, 1                  ; 2 uses
  %i.qd = load ptr, ptr %i.a, align 8
  %i.qe = add nsw i64 %indvars.iv173, -1          ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %3, i64 %i.qe
  %i.qg = load i8, ptr %i.qf, align 1
  %i.qh = sext i8 %i.qg to i32
  call void %i.qd(ptr noundef %0, i32 noundef %i.qh) #11
  %.not565.wide = icmp eq i64 %i.qe, 0
  br i1 %.not565.wide, label %.loopexit51, label %.lr.ph122, !llvm.loop !16

.loopexit51:                                      ; preds = %bb.ba, %.lr.ph108, %.lr.ph122, %bb.az, %bb.cl, %.preheader, %bb.bv, %bb.bw, %.loopexit64
  %.443414 = phi ptr [ %.3433, %.loopexit64 ], [ %.4434162641224, %.preheader ], [ %.3433, %bb.cl ], [ %.3433, %bb.bv ], [ %.3433, %bb.bw ], [ %.3433, %bb.az ], [ %.3433, %.lr.ph108 ], [ %.4434162641224, %.lr.ph122 ], [ %.3433, %bb.ba ] ; 2 uses
  %.11466 = phi i32 [ %i.js, %.loopexit64 ], [ %i.pg, %.preheader ], [ %.8463, %bb.cl ], [ %.8463, %bb.bv ], [ %.8463, %bb.bw ], [ %.4459, %bb.az ], [ %.8463, %.lr.ph108 ], [ %i.pg, %.lr.ph122 ], [ %.4459, %bb.ba ] ; 3 uses
  %.27 = phi i32 [ %i.jo, %.loopexit64 ], [ %.25.lcssa, %.preheader ], [ %.16, %bb.cl ], [ %i.gf, %bb.bv ], [ %i.gl, %bb.bw ], [ %.4439, %bb.az ], [ %i.hz, %.lr.ph108 ], [ %i.qc, %.lr.ph122 ], [ %i.dr, %bb.ba ] ; 2 uses
  %.not588124 = icmp eq i32 %.11466, 0
  br i1 %.not588124, label %.backedge.backedge, label %.lr.ph127

.lr.ph127:                                        ; preds = %.loopexit51, %.lr.ph127
  %.12467125 = phi i32 [ %i.qj, %.lr.ph127 ], [ %.11466, %.loopexit51 ]
  %i.qi = load ptr, ptr %i.a, align 8
  call void %i.qi(ptr noundef %0, i32 noundef 32) #11
  %i.qj = add nsw i32 %.12467125, -1              ; 2 uses
  %.not588 = icmp eq i32 %i.qj, 0
  br i1 %.not588, label %.backedge.loopexit, label %.lr.ph127, !llvm.loop !17

.loopexit66:                                      ; preds = %.backedge, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.1436
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @lib_sprintf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call fastcc i32 @vsprintf_internal(ptr noundef %0, ptr noundef readonly %1, ptr noundef nonnull %2) #9
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @lib_sprintf_internal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call fastcc i32 @vsprintf_internal(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #9
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %i.a
}

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @lib_vsprintf_internal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @vsprintf_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret i32 %i.a
}

; Function Attrs: noredzone optsize
declare dso_local i32 @__dtoa_engine(double noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone optsize
declare dso_local ptr @__ultoa_invert(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind optsize willreturn memory(argmem: read)
declare dso_local i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree noredzone nosync nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noredzone optsize }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = distinct !{!7, !18}
!8 = distinct !{!8, !18}
!9 = distinct !{!9, !18}
!10 = distinct !{!10, !18}
!11 = distinct !{!11, !18}
!12 = distinct !{!12, !18}
!13 = distinct !{!13, !18}
!14 = distinct !{!14, !18}
!15 = distinct !{!15, !18}
!16 = distinct !{!16, !18}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
end_hunk_1
