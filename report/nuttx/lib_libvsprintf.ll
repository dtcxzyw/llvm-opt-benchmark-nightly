Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_libvsprintf?download=true
begin_hunk_0_@vsprintf_internal:bb.a
  %i.fl = zext i8 %.3 to i32
  %i.fm = sub nsw i32 0, %.4451.fr
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader55, %bb.bp
  %.11 = phi i32 [ %i.fx, %bb.bp ], [ %.10, %.preheader55 ] ; 2 uses
  %.3428 = phi i32 [ %i.fw, %bb.bp ], [ %i.en, %.preheader55 ] ; 5 uses
  %i.fn = icmp eq i32 %.3428, -1
  br i1 %i.fn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fo = add nsw i32 %.11, 1
  %i.fp = load ptr, ptr %i.a, align 8
  call void %i.fp(ptr noundef %0, i32 noundef 46) #11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.12 = phi i32 [ %i.fo, %bb.bl ], [ %.11, %bb.bk ] ; 3 uses
  %i.fq = sub nsw i32 %i.cs, %.3428               ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, -1
  %i.fs = icmp slt i32 %i.fq, %i.fl
  %or.cond598 = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %or.cond598, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ft = zext nneg i32 %i.fq to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.0417 = phi i8 [ %i.fv, %bb.bn ], [ 48, %bb.bm ] ; 4 uses
  %i.fw = add nsw i32 %.3428, -1                  ; 2 uses
  %.not581 = icmp sgt i32 %.3428, %i.fm
  br i1 %.not581, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.fx = add nsw i32 %.12, 1
  %i.fy = load ptr, ptr %i.a, align 8
  %i.fz = sext i8 %.0417 to i32
  call void %i.fy(ptr noundef %0, i32 noundef %i.fz) #11
  br label %bb.bk

bb.bq:                                            ; preds = %bb.bo
  %i.ga = icmp eq i32 %i.fw, %i.cs
  br i1 %i.ga, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.gb = load i8, ptr %i.h, align 1              ; 2 uses
  %i.gc = icmp sgt i8 %i.gb, 53
  br i1 %i.gc, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gd = icmp eq i8 %i.gb, 53
  br i1 %i.gd, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.ge = load i8, ptr %i.g, align 4
  %i.gf = and i8 %i.ge, 16
  %.not582 = icmp eq i8 %i.gf, 0
  br i1 %.not582, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.br
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq
  %.1418 = phi i8 [ 49, %bb.bu ], [ %.0417, %bb.bt ], [ %.0417, %bb.bs ], [ %.0417, %bb.bq ]
  %i.gg = add nsw i32 %.12, 1
  %i.gh = load ptr, ptr %i.a, align 8
  %i.gi = sext i8 %.1418 to i32
  call void %i.gh(ptr noundef %0, i32 noundef %i.gi) #11
  %i.gj = and i32 %i.em, 16
  %i.gk = icmp ne i32 %i.gj, 0
  %i.gl = icmp eq i32 %.3428, 0
  %or.cond18 = and i1 %i.gk, %i.gl
  br i1 %or.cond18, label %bb.bw, label %.loopexit51

bb.bw:                                            ; preds = %bb.bv
  %i.gm = add nsw i32 %.12, 2
  %i.gn = load ptr, ptr %i.a, align 8
  call void %i.gn(ptr noundef nonnull %0, i32 noundef 46) #11
  br label %.loopexit51

bb.bx:                                            ; preds = %.loopexit57
  %i.go = load i8, ptr %i.h, align 1              ; 2 uses
  %.not575 = icmp eq i8 %i.go, 49
  br i1 %.not575, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.gp = load i8, ptr %i.g, align 4
  %i.gq = and i8 %i.gp, -17
  store i8 %i.gq, ptr %i.g, align 4
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.gr = load ptr, ptr %i.a, align 8
  %i.gs = sext i8 %i.go to i32
  call void %i.gr(ptr noundef %0, i32 noundef %i.gs) #11
  %i.gt = icmp sgt i32 %.4451.fr, 0
  br i1 %i.gt, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.gu = add nsw i32 %.10, 2
  %i.gv = load ptr, ptr %i.a, align 8
  call void %i.gv(ptr noundef nonnull %0, i32 noundef 46) #11
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.cd
  %.0416104 = phi i8 [ 1, %bb.ca ], [ %i.he, %bb.cd ] ; 3 uses
  %.14103 = phi i32 [ %i.gu, %bb.ca ], [ %i.gw, %bb.cd ]
  %i.gw = add nsw i32 %.14103, 1                  ; 2 uses
  %i.gx = load ptr, ptr %i.a, align 8
  %i.gy = icmp ult i8 %.0416104, %.3
  br i1 %i.gy, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.gz = zext i8 %.0416104 to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = sext i8 %i.hb to i32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.hd = phi i32 [ %i.hc, %bb.cc ], [ 48, %bb.cb ]
  call void %i.gx(ptr noundef nonnull %0, i32 noundef %i.hd) #11
  %i.he = add i8 %.0416104, 1                     ; 2 uses
  %i.hf = zext i8 %i.he to i32
  %.not577 = icmp samesign ult i32 %.4451.fr, %i.hf
  br i1 %.not577, label %.loopexit54, label %bb.cb, !llvm.loop !11

bb.ce:                                            ; preds = %bb.bz
  %i.hg = add nsw i32 %.10, 1
  %i.hh = and i32 %i.em, 16
  %.not576 = icmp eq i32 %i.hh, 0
  br i1 %.not576, label %.loopexit54, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hi = add nsw i32 %.10, 2
  %i.hj = load ptr, ptr %i.a, align 8
  call void %i.hj(ptr noundef nonnull %0, i32 noundef 46) #11
  br label %.loopexit54

.loopexit54:                                      ; preds = %bb.cd, %bb.ce, %bb.cf
  %.15 = phi i32 [ %i.hg, %bb.ce ], [ %i.hi, %bb.cf ], [ %i.gw, %bb.cd ] ; 2 uses
  %i.hk = load ptr, ptr %i.a, align 8
  %i.hl = and i32 %i.em, 8192
  %.not578 = icmp eq i32 %i.hl, 0
  %i.hm = select i1 %.not578, i32 101, i32 69
  call void %i.hk(ptr noundef nonnull %0, i32 noundef %i.hm) #11
  %i.hn = icmp slt i32 %i.cs, 0
  br i1 %i.hn, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %.loopexit54
  %i.ho = icmp eq i32 %i.cs, 0
  br i1 %i.ho, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.hp = load i8, ptr %i.g, align 4
  %i.hq = and i8 %i.hp, 16
  %.not579 = icmp eq i8 %i.hq, 0
  br i1 %.not579, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.loopexit54
  %i.hr = sub nsw i32 0, %i.cs
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %.0429 = phi i32 [ %i.hr, %bb.ci ], [ 0, %bb.ch ], [ %i.cs, %bb.cg ] ; 2 uses
  %.4 = phi i32 [ 45, %bb.ci ], [ 43, %bb.ch ], [ 43, %bb.cg ]
  %i.hs = add nsw i32 %.15, 2
  %i.ht = load ptr, ptr %i.a, align 8
  call void %i.ht(ptr noundef nonnull %0, i32 noundef %.4) #11
  %i.hu = zext nneg i32 %.0429 to i64
  %i.hv = call ptr @__ultoa_invert(i64 noundef %i.hu, ptr noundef nonnull %3, i32 noundef 10) #11
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = sub i64 %i.hw, %i.d                     ; 2 uses
  %or.cond20 = icmp samesign ult i32 %.0429, 10
  br i1 %or.cond20, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.hy = add nsw i32 %.15, 3
  %i.hz = load ptr, ptr %i.a, align 8
  call void %i.hz(ptr noundef nonnull %0, i32 noundef 48) #11
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.16 = phi i32 [ %i.hy, %bb.ck ], [ %i.hs, %bb.cj ] ; 2 uses
  %i.ia = and i64 %i.hx, 255
  %.not580105 = icmp eq i64 %i.ia, 0
  br i1 %.not580105, label %.loopexit51, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %bb.cl
  %i.ib = and i64 %i.hx, 255
  br label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %indvars.iv170 = phi i64 [ %i.ib, %.lr.ph108.preheader ], [ %indvars.iv.next171, %.lr.ph108 ] ; 2 uses
  %.17107 = phi i32 [ %.16, %.lr.ph108.preheader ], [ %i.ic, %.lr.ph108 ]
  %i.ic = add nsw i32 %.17107, 1                  ; 2 uses
  %i.id = load ptr, ptr %i.a, align 8
  %4 = add nuw nsw i64 %indvars.iv170, 4294967295
  %5 = and i64 %4, 4294967295
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 %5
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = sext i8 %i.if to i32
  call void %i.id(ptr noundef nonnull %0, i32 noundef %i.ig) #11
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, -1 ; 2 uses
  %i.ih = and i64 %indvars.iv.next171, 255
  %.not580 = icmp eq i64 %i.ih, 0
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
  %i.ii = load i32, ptr %2, align 8               ; 3 uses
  %i.ij = icmp ult i32 %i.ii, 41
  br i1 %i.ij, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.ik = load ptr, ptr %i.c, align 8
  %i.il = zext nneg i32 %i.ii to i64
  %i.im = getelementptr i8, ptr %i.ik, i64 %i.il
  %i.in = add nuw nsw i32 %i.ii, 8
  store i32 %i.in, ptr %2, align 8
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.io = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 8
  store ptr %i.ip, ptr %i.b, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.iq = phi ptr [ %i.im, %bb.co ], [ %i.io, %bb.cp ]
  %i.ir = load i32, ptr %i.iq, align 4
  %i.is = trunc i32 %i.ir to i8
  store i8 %i.is, ptr %3, align 4
  br label %bb.cv

bb.cr:                                            ; preds = %bb.cm, %bb.cm
  %i.it = load i32, ptr %2, align 8               ; 3 uses
  %i.iu = icmp ult i32 %i.it, 41
  br i1 %i.iu, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.iv = load ptr, ptr %i.c, align 8
  %i.iw = zext nneg i32 %i.it to i64
  %i.ix = getelementptr i8, ptr %i.iv, i64 %i.iw
  %i.iy = add nuw nsw i32 %i.it, 8
  store i32 %i.iy, ptr %2, align 8
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr
  %i.iz = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 8
  store ptr %i.ja, ptr %i.b, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.jb = phi ptr [ %i.ix, %bb.cs ], [ %i.iz, %bb.ct ]
  %i.jc = load ptr, ptr %i.jb, align 8            ; 2 uses
  %i.jd = icmp eq ptr %i.jc, null
  %spec.store.select21 = select i1 %i.jd, ptr @g_nullstring, ptr %i.jc ; 2 uses
  %i.je = and i16 %spec.select, 256
  %.not542 = icmp eq i16 %i.je, 0
  %i.jf = zext nneg i32 %.0447 to i64
  %i.jg = select i1 %.not542, i64 -1, i64 %i.jf
  %i.jh = call i64 @strnlen(ptr noundef nonnull %spec.store.select21, i64 noundef %i.jg) #9
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cq
  %.0446 = phi ptr [ %3, %bb.cq ], [ %spec.store.select21, %bb.cu ]
  %.0445 = phi i64 [ 1, %bb.cq ], [ %i.jh, %bb.cu ] ; 5 uses
  %i.ji = and i16 %spec.select, 8
  %i.jj = icmp eq i16 %i.ji, 0
  %i.jk = zext nneg i32 %.0455 to i64             ; 3 uses
  %i.jl = icmp ult i64 %.0445, %i.jk
  %or.cond130 = select i1 %i.jj, i1 %i.jl, i1 false
  br i1 %or.cond130, label %.lr.ph, label %.loopexit64

.lr.ph:                                           ; preds = %bb.cv, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.jk, %bb.cv ]
  %.1887 = phi i32 [ %i.jm, %.lr.ph ], [ %.1436, %bb.cv ]
  %i.jm = add nsw i32 %.1887, 1                   ; 2 uses
  %i.jn = load ptr, ptr %i.a, align 8
  call void %i.jn(ptr noundef %0, i32 noundef 32) #11
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.jo = icmp ult i64 %.0445, %indvars.iv.next
  br i1 %i.jo, label %.lr.ph, label %.loopexit64, !llvm.loop !13

.loopexit64:                                      ; preds = %.lr.ph, %bb.cv
  %.pre-phi180 = phi i64 [ %i.jk, %bb.cv ], [ %indvars.iv.next, %.lr.ph ]
  %.19 = phi i32 [ %.1436, %bb.cv ], [ %i.jm, %.lr.ph ]
  %i.jp = trunc i64 %.0445 to i32
  %i.jq = add i32 %.19, %i.jp
  %i.jr = load ptr, ptr %i.e, align 8
  %i.js = call i64 %i.jr(ptr noundef %0, ptr noundef nonnull %.0446, i64 noundef %.0445) #11 ; 0 uses
  %i.jt = call i64 @llvm.usub.sat.i64(i64 %.pre-phi180, i64 %.0445)
  %i.ju = trunc nuw nsw i64 %i.jt to i32
  br label %.loopexit51

bb.cw:                                            ; preds = %bb.cm, %bb.cm
  %i.jv = zext i16 %.0468 to i32                  ; 4 uses
  %i.jw = and i32 %i.jv, 2048
  %.not550 = icmp eq i32 %i.jw, 0
  %i.jx = and i32 %i.jv, 2560
  %or.cond599.not = icmp eq i32 %i.jx, 2560
  br i1 %or.cond599.not, label %bb.cx, label %bb.db

bb.cx:                                            ; preds = %bb.cw
  %i.jy = load i32, ptr %2, align 8               ; 3 uses
  %i.jz = icmp ult i32 %i.jy, 41
  br i1 %i.jz, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ka = load ptr, ptr %i.c, align 8
  %i.kb = zext nneg i32 %i.jy to i64
  %i.kc = getelementptr i8, ptr %i.ka, i64 %i.kb
  %i.kd = add nuw nsw i32 %i.jy, 8
  store i32 %i.kd, ptr %2, align 8
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.ke = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 8
  store ptr %i.kf, ptr %i.b, align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.kg = phi ptr [ %i.kc, %bb.cy ], [ %i.ke, %bb.cz ]
  %i.kh = load i64, ptr %i.kg, align 8
  br label %bb.dn

bb.db:                                            ; preds = %bb.cw
  %i.ki = and i32 %i.jv, 512
  %.not549 = icmp eq i32 %i.ki, 0
  %i.kj = load i32, ptr %2, align 8               ; 5 uses
  %i.kk = icmp ult i32 %i.kj, 41                  ; 2 uses
  br i1 %.not549, label %bb.dg, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  br i1 %i.kk, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.kl = load ptr, ptr %i.c, align 8
  %i.km = zext nneg i32 %i.kj to i64
  %i.kn = getelementptr i8, ptr %i.kl, i64 %i.km
  %i.ko = add nuw nsw i32 %i.kj, 8
  store i32 %i.ko, ptr %2, align 8
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.kp = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.kq = getelementptr i8, ptr %i.kp, i64 8
  store ptr %i.kq, ptr %i.b, align 8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.kr = phi ptr [ %i.kn, %bb.dd ], [ %i.kp, %bb.de ]
  %i.ks = load i64, ptr %i.kr, align 8
  br label %bb.dn

bb.dg:                                            ; preds = %bb.db
  br i1 %i.kk, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.kt = load ptr, ptr %i.c, align 8
  %i.ku = zext nneg i32 %i.kj to i64
  %i.kv = getelementptr i8, ptr %i.kt, i64 %i.ku
  %i.kw = add nuw nsw i32 %i.kj, 8
  store i32 %i.kw, ptr %2, align 8
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.kx = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kx, i64 8
  store ptr %i.ky, ptr %i.b, align 8
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.kz = phi ptr [ %i.kv, %bb.dh ], [ %i.kx, %bb.di ]
  %i.la = load i32, ptr %i.kz, align 4            ; 2 uses
  %i.lb = sext i32 %i.la to i64
  %i.lc = and i32 %i.jv, 1024
  %.not551 = icmp eq i32 %i.lc, 0
  br i1 %.not551, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ld = zext i32 %i.la to i64                   ; 2 uses
  br i1 %.not550, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %sext552 = shl i64 %i.ld, 48
  %i.le = ashr exact i64 %sext552, 48
  br label %bb.dn

end_hunk_0
