Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/UriRecompose?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@uriToStringEngineA:bb.a
bb.bz:                                            ; preds = %bb.by
  %i.gp = add nuw nsw i64 %i.gl, %i.gm            ; 2 uses
  %i.gq = zext nneg i32 %i.f to i64
  %.not578 = icmp samesign ugt i64 %i.gp, %i.gq
  br i1 %.not578, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 %i.gm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gr, ptr nonnull align 1 %i.gg, i64 %i.gl, i1 false)
  %i.gs = trunc nuw nsw i64 %i.gp to i32
  br label %.thread656

bb.cb:                                            ; preds = %bb.bz
  store i8 0, ptr %0, align 1, !tbaa !22
  %.not579 = icmp eq ptr %3, null
  br i1 %.not579, label %.critedge, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.cd:                                            ; preds = %bb.bx
  %i.gt = load i32, ptr %4, align 4, !tbaa !12    ; 2 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = sub nsw i64 2147483647, %i.gu
  %i.gw = icmp ugt i64 %i.gl, %i.gv
  br i1 %i.gw, label %.critedge, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gx = trunc nuw i64 %i.gl to i32
  %i.gy = add i32 %i.gt, %i.gx
  store i32 %i.gy, ptr %4, align 4, !tbaa !12
  br label %.thread656

.thread656:                                       ; preds = %bb.am, %.preheader753.split.us, %bb.ce, %bb.ca, %bb.bv, %bb.bq, %bb.bf, %bb.bc, %bb.bw
  %.23 = phi i32 [ %.7431, %bb.ce ], [ %.7431, %bb.bw ], [ %i.ey, %bb.bc ], [ %i.fv, %bb.bq ], [ %.7431, %bb.bf ], [ %.7431, %bb.bv ], [ %i.gs, %bb.ca ], [ %.7431, %.preheader753.split.us ], [ %i.cx, %bb.am ] ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !34 ; 2 uses
  %.not599 = icmp eq ptr %i.ha, null
  br i1 %.not599, label %bb.cr, label %bb.cf

bb.cf:                                            ; preds = %.thread656
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !35
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he                    ; 6 uses
  br i1 %i.c, label %bb.co, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.not601.not = icmp slt i32 %.23, %i.f
  br i1 %.not601.not, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.hg = add nuw nsw i32 %.23, 1
  %i.hh = zext nneg i32 %.23 to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 %i.hh
  store i8 58, ptr %i.hi, align 1
  %i.hj = zext nneg i32 %i.hg to i64              ; 3 uses
  %i.hk = xor i64 %i.hj, 2147483647
  %i.hl = icmp ugt i64 %i.hf, %i.hk
  br i1 %i.hl, label %.critedge, label %bb.ck

bb.ci:                                            ; preds = %bb.cg
  store i8 0, ptr %0, align 1, !tbaa !22
  %.not602 = icmp eq ptr %3, null
  br i1 %.not602, label %.critedge, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.ck:                                            ; preds = %bb.ch
  %i.hm = add nuw nsw i64 %i.hf, %i.hj            ; 2 uses
  %i.hn = zext nneg i32 %i.f to i64
  %.not603 = icmp samesign ugt i64 %i.hm, %i.hn
  br i1 %.not603, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 %i.hj
  %i.hp = load ptr, ptr %i.gz, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ho, ptr align 1 %i.hp, i64 %i.hf, i1 false)
  %i.hq = trunc nuw nsw i64 %i.hm to i32
  br label %bb.cr

bb.cm:                                            ; preds = %bb.ck
  store i8 0, ptr %0, align 1, !tbaa !22
  %.not604 = icmp eq ptr %3, null
  br i1 %.not604, label %.critedge, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.co:                                            ; preds = %bb.cf
  %i.hr = icmp ugt i64 %i.hf, 2147483646
  br i1 %i.hr, label %.critedge, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.hs = load i32, ptr %4, align 4, !tbaa !12    ; 2 uses
  %i.ht = sext i32 %i.hs to i64
  %i.hu = sub nsw i64 2147483647, %i.ht
  %.not600 = icmp samesign ult i64 %i.hf, %i.hu
  br i1 %.not600, label %bb.cq, label %.critedge

bb.cq:                                            ; preds = %bb.cp
  %i.hv = trunc nuw nsw i64 %i.hf to i32
  %i.hw = add nuw nsw i32 %i.hv, 1
  %i.hx = add i32 %i.hw, %i.hs
  store i32 %i.hx, ptr %4, align 4, !tbaa !12
  br label %bb.cr

bb.cr:                                            ; preds = %.thread854, %bb.cq, %bb.cl, %.thread639, %.thread656, %bb.s
  %.26 = phi i32 [ 0, %.thread639 ], [ %.23, %.thread656 ], [ %.3427, %bb.s ], [ %.23, %bb.cq ], [ %i.hq, %bb.cl ], [ 0, %.thread854 ] ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !36
  %.not605 = icmp eq i32 %i.hz, 0
  br i1 %.not605, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !37
  %.not606 = icmp eq ptr %i.ib, null
  br i1 %.not606, label %bb.cy, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ic = tail call i32 @uriHasHostA(ptr noundef nonnull %1) #4
  %.not607 = icmp eq i32 %i.ic, 0
  br i1 %.not607, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cr
  br i1 %i.c, label %.thread876, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not608.not = icmp slt i32 %.26, %i.f
  br i1 %.not608.not, label %.thread870, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i8 0, ptr %0, align 1, !tbaa !22
  %.not609 = icmp eq ptr %3, null
  br i1 %.not609, label %.critedge, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.cy:                                            ; preds = %bb.ct, %bb.cs
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !37 ; 3 uses
  %.not610 = icmp eq ptr %i.ie, null
  br i1 %.not610, label %.thread702, label %.preheader

.thread876:                                       ; preds = %bb.cu
  %i.if = load i32, ptr %4, align 4, !tbaa !12
  %i.ig = add nsw i32 %i.if, 1
  store i32 %i.ig, ptr %4, align 4, !tbaa !12
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !37 ; 2 uses
  %.not610877 = icmp eq ptr %i.ii, null
  br i1 %.not610877, label %.thread702.thread888, label %.preheader.split.us

.thread870:                                       ; preds = %bb.cv
  %i.ij = add nuw nsw i32 %.26, 1                 ; 4 uses
  %i.ik = zext nneg i32 %.26 to i64
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 %i.ik
  store i8 47, ptr %i.il, align 1
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !37 ; 2 uses
  %.not610872 = icmp eq ptr %i.in, null
  br i1 %.not610872, label %.thread702.thread881, label %.preheader.split.preheader

.preheader:                                       ; preds = %bb.cy
  br i1 %i.c, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.thread870, %.preheader
  %.27873875 = phi i32 [ %.26, %.preheader ], [ %i.ij, %.thread870 ]
  %i.io = phi ptr [ %i.ie, %.preheader ], [ %i.in, %.thread870 ]
  %i.ip = zext i32 %i.f to i64
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.thread876, %.preheader
  %i.iq = phi ptr [ %i.ie, %.preheader ], [ %i.ii, %.thread876 ] ; 3 uses
  %.promoted770 = load i32, ptr %4, align 4, !tbaa !12 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !38
  %i.it = load ptr, ptr %i.iq, align 8, !tbaa !40
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = sub i64 %i.iu, %i.iv                    ; 2 uses
  %i.ix = sext i32 %.promoted770 to i64
  %i.iy = sub nsw i64 2147483647, %i.ix
  %i.iz = icmp ugt i64 %i.iw, %i.iy
  br i1 %i.iz, label %.critedge, label %.lr.ph929

.lr.ph929:                                        ; preds = %.preheader.split.us, %bb.cz
  %i.ja = phi i64 [ %i.jm, %bb.cz ], [ %i.iw, %.preheader.split.us ]
  %.0.us928 = phi ptr [ %i.jf, %bb.cz ], [ %i.iq, %.preheader.split.us ]
  %i.jb = phi i32 [ %i.jg, %bb.cz ], [ %.promoted770, %.preheader.split.us ]
  %i.jc = trunc nuw i64 %i.ja to i32
  %i.jd = add i32 %i.jb, %i.jc                    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.0.us928, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !41 ; 4 uses
  %.not613.us = icmp eq ptr %i.jf, null
  br i1 %.not613.us, label %.thread702.loopexit, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph929
  %i.jg = add nsw i32 %i.jd, 1                    ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !38
  %i.jj = load ptr, ptr %i.jf, align 8, !tbaa !40
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl                    ; 2 uses
  %i.jn = sext i32 %i.jg to i64
  %i.jo = sub nsw i64 2147483647, %i.jn
  %i.jp = icmp ugt i64 %i.jm, %i.jo
  br i1 %i.jp, label %.critedge.loopexit, label %.lr.ph929

.preheader.split:                                 ; preds = %.preheader.split.preheader, %bb.dd
  %.28 = phi i32 [ %i.ke, %bb.dd ], [ %.27873875, %.preheader.split.preheader ]
  %.0 = phi ptr [ %.pr, %bb.dd ], [ %i.io, %.preheader.split.preheader ] ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !38
  %i.js = load ptr, ptr %.0, align 8, !tbaa !40   ; 2 uses
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju                    ; 3 uses
  %i.jw = zext nneg i32 %.28 to i64               ; 3 uses
  %i.jx = xor i64 %i.jw, 2147483647
  %i.jy = icmp ugt i64 %i.jv, %i.jx
  br i1 %i.jy, label %.critedge, label %bb.da

bb.da:                                            ; preds = %.preheader.split
  %i.jz = add nuw nsw i64 %i.jv, %i.jw            ; 3 uses
  %.not611 = icmp ugt i64 %i.jz, %i.ip
  br i1 %.not611, label %bb.db, label %.thread686

bb.db:                                            ; preds = %bb.da
  store i8 0, ptr %0, align 1, !tbaa !22
  %.not612 = icmp eq ptr %3, null
  br i1 %.not612, label %.critedge, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

.thread686:                                       ; preds = %bb.da
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 %i.jw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ka, ptr align 1 %i.js, i64 %i.jv, i1 false)
  %i.kb = trunc nuw nsw i64 %i.jz to i32          ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !41
  %.not613688 = icmp eq ptr %i.kd, null
  br i1 %.not613688, label %.thread702.thread, label %.thread690

.thread690:                                       ; preds = %.thread686
  %.not614.not = icmp sgt i32 %i.f, %i.kb
  br i1 %.not614.not, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.thread690
  %i.ke = add nuw nsw i32 %i.kb, 1                ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 %i.jz
  store i8 47, ptr %i.kf, align 1
  %.pr = load ptr, ptr %i.kc, align 8, !tbaa !41  ; 2 uses
  %.not616 = icmp eq ptr %.pr, null
  br i1 %.not616, label %.thread702, label %.preheader.split, !llvm.loop !42

bb.de:                                            ; preds = %.thread690
  store i8 0, ptr %0, align 1, !tbaa !22
  %.not615 = icmp eq ptr %3, null
  br i1 %.not615, label %.critedge, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

.thread702.loopexit:                              ; preds = %.lr.ph929
  store i32 %i.jd, ptr %4, align 4, !tbaa !12
  br label %.thread702

.thread702:                                       ; preds = %bb.dd, %.thread702.loopexit, %bb.cy
  %.32 = phi i32 [ %.26, %bb.cy ], [ %.26, %.thread702.loopexit ], [ %i.ke, %bb.dd ] ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !43 ; 2 uses
  %.not617 = icmp eq ptr %i.kh, null
  br i1 %.not617, label %bb.dn, label %bb.dg

.thread702.thread888:                             ; preds = %.thread876
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !43 ; 2 uses
  %.not617890 = icmp eq ptr %i.kj, null
  br i1 %.not617890, label %.thread900, label %.thread891

.thread702.thread881:                             ; preds = %.thread870
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !43
  %.not617883 = icmp eq ptr %i.kl, null
  br i1 %.not617883, label %.thread893, label %.thread743

.thread702.thread:                                ; preds = %.thread686
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !43
  %.not617740 = icmp eq ptr %i.kn, null
  br i1 %.not617740, label %.thread746, label %.thread743

bb.dg:                                            ; preds = %.thread702
  br i1 %i.c, label %.thread891, label %.thread743

.thread743:                                       ; preds = %.thread702.thread881, %.thread702.thread, %bb.dg
  %.32741745 = phi i32 [ %.32, %bb.dg ], [ %i.kb, %.thread702.thread ], [ %i.ij, %.thread702.thread881 ] ; 3 uses
  %i.ko = phi ptr [ %i.kg, %bb.dg ], [ %i.km, %.thread702.thread ], [ %i.kk, %.thread702.thread881 ]
  %.not618.not = icmp slt i32 %.32741745, %i.f
  br i1 %.not618.not, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %.thread743
  store i8 0, ptr %0, align 1, !tbaa !22
  %.not619 = icmp eq ptr %3, null
  br i1 %.not619, label %.critedge, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.dj:                                            ; preds = %.thread743
  %i.kp = add nsw i32 %.32741745, 1
  %i.kq = sext i32 %.32741745 to i64
  %i.kr = getelementptr inbounds i8, ptr %0, i64 %i.kq
  store i8 63, ptr %i.kr, align 1
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !44
  %i.ku = load ptr, ptr %i.ko, align 8, !tbaa !43 ; 2 uses
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw                    ; 3 uses
  %i.ky = sext i32 %i.kp to i64                   ; 3 uses
  %i.kz = sub nsw i64 2147483647, %i.ky
  %i.la = icmp ugt i64 %i.kx, %i.kz
  br i1 %i.la, label %.critedge, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lb = add nsw i64 %i.kx, %i.ky                ; 2 uses
  %i.lc = zext nneg i32 %i.f to i64
  %.not620 = icmp ugt i64 %i.lb, %i.lc
  br i1 %.not620, label %bb.dl, label %.thread713

bb.dl:                                            ; preds = %bb.dk
  store i8 0, ptr %0, align 1, !tbaa !22
  %.not621 = icmp eq ptr %3, null
  br i1 %.not621, label %.critedge, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

.thread891:                                       ; preds = %.thread702.thread888, %bb.dg
  %i.ld = phi ptr [ %i.kh, %bb.dg ], [ %i.kj, %.thread702.thread888 ]
  %i.le = load i32, ptr %4, align 4, !tbaa !12
  %i.lf = add nsw i32 %i.le, 1                    ; 3 uses
  store i32 %i.lf, ptr %4, align 4, !tbaa !12
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !44
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.ld to i64
  %i.lk = sub i64 %i.li, %i.lj                    ; 2 uses
  %i.ll = sext i32 %i.lf to i64
  %i.lm = sub nsw i64 2147483647, %i.ll
  %i.ln = icmp ugt i64 %i.lk, %i.lm
  br i1 %i.ln, label %.critedge, label %.thread720

bb.dn:                                            ; preds = %.thread702
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !45 ; 2 uses
  %.not622 = icmp eq ptr %i.lp, null
  br i1 %.not622, label %bb.dx, label %bb.do

.thread900:                                       ; preds = %.thread702.thread888
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !45 ; 2 uses
  %.not622902 = icmp eq ptr %i.lr, null
  br i1 %.not622902, label %.critedge, label %..thread722_crit_edge

.thread893:                                       ; preds = %.thread702.thread881
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !45
  %.not622895 = icmp eq ptr %i.lt, null
  br i1 %.not622895, label %.thread736, label %.thread717

.thread746:                                       ; preds = %.thread702.thread
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !45
  %.not622748 = icmp eq ptr %i.lv, null
  br i1 %.not622748, label %.thread736, label %.thread717

.thread720:                                       ; preds = %.thread891
  %i.lw = trunc nuw i64 %i.lk to i32
  %i.lx = add i32 %i.lf, %i.lw                    ; 2 uses
  store i32 %i.lx, ptr %4, align 4, !tbaa !12
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !45 ; 2 uses
  %.not622721 = icmp eq ptr %i.lz, null
  br i1 %.not622721, label %.critedge, label %.thread722

.thread713:                                       ; preds = %bb.dk
  %i.ma = getelementptr inbounds i8, ptr %0, i64 %i.ky
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ma, ptr align 1 %i.ku, i64 %i.kx, i1 false)
  %i.mb = trunc nuw nsw i64 %i.lb to i32          ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !45
  %.not622715 = icmp eq ptr %i.md, null
  br i1 %.not622715, label %.thread736, label %.thread717

bb.do:                                            ; preds = %bb.dn
  br i1 %i.c, label %..thread722_crit_edge, label %.thread717

..thread722_crit_edge:                            ; preds = %.thread900, %bb.do
  %i.me = phi ptr [ %i.lp, %bb.do ], [ %i.lr, %.thread900 ]
  %.pre = load i32, ptr %4, align 4, !tbaa !12
  br label %.thread722

.thread717:                                       ; preds = %.thread893, %.thread746, %.thread713, %bb.do
  %.36716719 = phi i32 [ %.32, %bb.do ], [ %i.mb, %.thread713 ], [ %i.kb, %.thread746 ], [ %i.ij, %.thread893 ] ; 3 uses
  %i.mf = phi ptr [ %i.lo, %bb.do ], [ %i.mc, %.thread713 ], [ %i.lu, %.thread746 ], [ %i.ls, %.thread893 ]
  %.not623.not = icmp slt i32 %.36716719, %i.f
  br i1 %.not623.not, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %.thread717
  store i8 0, ptr %0, align 1, !tbaa !22
  %.not624 = icmp eq ptr %3, null
  br i1 %.not624, label %.critedge, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.dr:                                            ; preds = %.thread717
  %i.mg = add nsw i32 %.36716719, 1
  %i.mh = sext i32 %.36716719 to i64
  %i.mi = getelementptr inbounds i8, ptr %0, i64 %i.mh
  store i8 35, ptr %i.mi, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !46
  %i.ml = load ptr, ptr %i.mf, align 8, !tbaa !45 ; 2 uses
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = sub i64 %i.mm, %i.mn                    ; 3 uses
  %i.mp = sext i32 %i.mg to i64                   ; 3 uses
  %i.mq = sub nsw i64 2147483647, %i.mp
  %i.mr = icmp ugt i64 %i.mo, %i.mq
  br i1 %i.mr, label %.critedge, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ms = add nsw i64 %i.mo, %i.mp                ; 2 uses
  %i.mt = zext nneg i32 %i.f to i64
  %.not625 = icmp ugt i64 %i.ms, %i.mt
  br i1 %.not625, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.mu = getelementptr inbounds i8, ptr %0, i64 %i.mp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mu, ptr align 1 %i.ml, i64 %i.mo, i1 false)
  %i.mv = trunc nuw nsw i64 %i.ms to i32
  br label %.thread736

bb.du:                                            ; preds = %bb.ds
  store i8 0, ptr %0, align 1, !tbaa !22
  %.not626 = icmp eq ptr %3, null
  br i1 %.not626, label %.critedge, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

.thread722:                                       ; preds = %..thread722_crit_edge, %.thread720
  %i.mw = phi ptr [ %i.me, %..thread722_crit_edge ], [ %i.lz, %.thread720 ]
  %i.mx = phi i32 [ %.pre, %..thread722_crit_edge ], [ %i.lx, %.thread720 ]
  %i.my = add nsw i32 %i.mx, 1                    ; 3 uses
  store i32 %i.my, ptr %4, align 4, !tbaa !12
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !46
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.mw to i64
  %i.nd = sub i64 %i.nb, %i.nc                    ; 2 uses
  %i.ne = sext i32 %i.my to i64
  %i.nf = sub nsw i64 2147483647, %i.ne
  %i.ng = icmp ugt i64 %i.nd, %i.nf
  br i1 %i.ng, label %.critedge, label %bb.dw

bb.dw:                                            ; preds = %.thread722
  %i.nh = trunc nuw i64 %i.nd to i32
  %i.ni = add i32 %i.my, %i.nh
  store i32 %i.ni, ptr %4, align 4, !tbaa !12
  br label %.critedge

bb.dx:                                            ; preds = %bb.dn
  br i1 %i.c, label %.critedge, label %.thread736

.thread736:                                       ; preds = %.thread893, %.thread746, %.thread713, %bb.dt, %bb.dx
  %.40738 = phi i32 [ %.32, %bb.dx ], [ %i.mb, %.thread713 ], [ %i.mv, %bb.dt ], [ %i.kb, %.thread746 ], [ %i.ij, %.thread893 ] ; 2 uses
  %i.nj = sext i32 %.40738 to i64
  %i.nk = getelementptr inbounds i8, ptr %0, i64 %i.nj
  store i8 0, ptr %i.nk, align 1, !tbaa !22
  %.not627 = icmp eq ptr %3, null
  br i1 %.not627, label %.critedge, label %bb.dy

bb.dy:                                            ; preds = %.thread736
  %i.nl = add nsw i32 %.40738, 1
  store i32 %i.nl, ptr %3, align 4, !tbaa !12
  br label %.critedge

.critedge.loopexit:                               ; preds = %bb.cz
  store i32 %i.jg, ptr %4, align 4, !tbaa !12
  br label %.critedge

.critedge:                                        ; preds = %.preheader.split, %.critedge.loopexit, %.preheader.split.us, %.thread900, %.thread720, %bb.dw, %bb.dv, %.thread722, %bb.du, %bb.dr, %bb.dm, %.thread891, %bb.dl, %bb.dj, %bb.de, %bb.df, %bb.dc, %bb.db, %bb.cp, %bb.cn, %bb.cj, %bb.ch, %bb.co, %bb.cm, %bb.ci, %bb.cc, %bb.cd, %bb.cb, %bb.by, %bb.bu, %bb.bs, %bb.bp, %bb.bl, %bb.bj, %bb.bo, %bb.bt, %bb.br, %bb.bk, %bb.ax, %bb.aw, %bb.ba, %bb.az, %bb.be, %bb.av, %bb.au, %bb.bd, %bb.aq, %bb.an, %.preheader753.split._crit_edge, %bb.ap, %bb.w, %bb.ac, %bb.ae, %bb.z, %bb.aa, %bb.ad, %bb.af, %bb.j, %bb.l, %bb.q, %bb.n, %bb.m, %bb.r, %bb.dx, %bb.dy, %.thread736, %bb.dp, %bb.dq, %bb.dh, %bb.di, %bb.cw, %bb.cx, %bb.u, %bb.v, %bb.f, %bb.g, %bb.c, %bb.d
  %.21 = phi i32 [ 0, %bb.dx ], [ 2, %bb.c ], [ 4, %bb.dp ], [ 4, %bb.dm ], [ 4, %bb.dh ], [ 4, %bb.de ], [ 4, %bb.w ], [ 4, %bb.aq ], [ 4, %bb.u ], [ 4, %bb.cc ], [ 4, %bb.cp ], [ 4, %bb.dv ], [ 4, %bb.ax ], [ 4, %bb.bu ], [ 4, %bb.j ], [ 4, %bb.f ], [ 2, %bb.d ], [ 4, %bb.g ], [ 4, %bb.v ], [ 4, %bb.cx ], [ 4, %bb.cw ], [ 4, %bb.di ], [ 4, %bb.dq ], [ 0, %.thread736 ], [ 0, %bb.dy ], [ 4, %bb.r ], [ 4, %bb.m ], [ 4, %bb.n ], [ 4, %bb.q ], [ 4, %bb.l ], [ 4, %bb.af ], [ 4, %bb.ad ], [ 4, %bb.aa ], [ 4, %bb.z ], [ 4, %bb.ae ], [ 4, %bb.ac ], [ 4, %bb.ap ], [ 4, %.preheader753.split._crit_edge ], [ 4, %bb.an ], [ 4, %bb.bd ], [ 4, %bb.au ], [ 4, %bb.av ], [ 4, %bb.be ], [ 4, %bb.az ], [ 4, %bb.ba ], [ 4, %bb.aw ], [ 4, %bb.bk ], [ 4, %bb.br ], [ 4, %bb.bt ], [ 4, %bb.bo ], [ 4, %bb.bj ], [ 4, %bb.bl ], [ 4, %bb.bp ], [ 4, %bb.bs ], [ 4, %bb.by ], [ 4, %bb.cb ], [ 4, %bb.cd ], [ 4, %bb.ci ], [ 4, %bb.cm ], [ 4, %bb.co ], [ 4, %bb.ch ], [ 4, %bb.cj ], [ 4, %bb.cn ], [ 0, %bb.dw ], [ 4, %bb.db ], [ 0, %.thread720 ], [ 4, %bb.dc ], [ 4, %bb.df ], [ 4, %bb.dj ], [ 4, %bb.dl ], [ 4, %.thread891 ], [ 4, %bb.dr ], [ 4, %bb.du ], [ 4, %.thread722 ], [ 4, %.preheader.split.us ], [ 0, %.thread900 ], [ 4, %.critedge.loopexit ], [ 4, %.preheader.split ]
  ret i32 %.21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 5) i32 @uriToStringA(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @uriToStringEngineA(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 5) i32 @uriToStringCharsRequiredW(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @uriToStringEngineW(ptr noundef null, ptr noundef %0, i32 noundef 2147483647, ptr noundef null, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 5) i32 @uriToStringEngineW(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null                     ; 12 uses
  %i.d = icmp eq ptr %4, null
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not629 = icmp eq ptr %3, null
  br i1 %.not629, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %2, 1
  br i1 %i.e, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not628 = icmp eq ptr %3, null
  br i1 %.not628, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.f = add nsw i32 %2, -1                       ; 21 uses
  br i1 %i.c, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %4, align 4, !tbaa !12
  %i.g = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %.not560 = icmp eq ptr %i.g, null
  br i1 %.not560, label %.thread864, label %bb.n

.thread:                                          ; preds = %bb.h
  store i32 0, ptr %0, align 4, !tbaa !12
  %i.h = load ptr, ptr %1, align 8, !tbaa !47     ; 3 uses
  %.not560634 = icmp eq ptr %i.h, null
  br i1 %.not560634, label %bb.s, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = icmp ugt i64 %i.n, 2147483647
  br i1 %i.o, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = zext nneg i32 %i.f to i64
  %.not561 = icmp samesign ugt i64 %i.n, %i.p
  br i1 %.not561, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not562 = icmp eq ptr %3, null
  br i1 %.not562, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.n:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2                   ; 2 uses
  %i.w = icmp ugt i64 %i.v, 2147483647
  br i1 %i.w, label %.critedge, label %.thread639

bb.o:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %i.h, i64 %i.m, i1 false)
  %i.x = trunc nuw nsw i64 %i.n to i32            ; 2 uses
  %.not563.not = icmp samesign ugt i32 %i.f, %i.x
  br i1 %.not563.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.y = add nuw nsw i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  store i32 58, ptr %i.z, align 4
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not564 = icmp eq ptr %3, null
  br i1 %.not564, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.s:                                             ; preds = %.thread, %bb.p
  %.3427 = phi i32 [ 0, %.thread ], [ %i.y, %bb.p ] ; 3 uses
  %i.aa = tail call i32 @uriHasHostW(ptr noundef nonnull %1) #4
  %.not565 = icmp eq i32 %i.aa, 0
  br i1 %.not565, label %bb.cr, label %bb.t

.thread864:                                       ; preds = %bb.i
  %i.ab = tail call i32 @uriHasHostW(ptr noundef nonnull %1) #4
  %.not565866 = icmp eq i32 %i.ab, 0
  br i1 %.not565866, label %bb.cr, label %.thread868

.thread639:                                       ; preds = %bb.n
  %i.ac = trunc nuw nsw i64 %i.v to i32
  %i.ad = add nuw i32 %i.ac, 1
  store i32 %i.ad, ptr %4, align 4, !tbaa !12
  %i.ae = tail call i32 @uriHasHostW(ptr noundef nonnull %1) #4
  %.not565641 = icmp eq i32 %i.ae, 0
  br i1 %.not565641, label %bb.cr, label %.thread868

bb.t:                                             ; preds = %bb.s
  %i.af = add nuw nsw i32 %.3427, 2               ; 3 uses
  %.not566.not = icmp samesign ult i32 %i.af, %2
  br i1 %.not566.not, label %.thread646, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not567 = icmp eq ptr %3, null
  br i1 %.not567, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

.thread868:                                       ; preds = %.thread864, %.thread639
  %i.ag = load i32, ptr %4, align 4, !tbaa !12
  %i.ah = add nsw i32 %i.ag, 2                    ; 3 uses
  store i32 %i.ah, ptr %4, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !54 ; 2 uses
  %.not568 = icmp eq ptr %i.aj, null
  br i1 %.not568, label %bb.ah, label %bb.ae

.thread646:                                       ; preds = %bb.t
  %i.ak = zext nneg i32 %.3427 to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak
  store i64 201863462959, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !54 ; 3 uses
  %.not568648 = icmp eq ptr %i.an, null
  br i1 %.not568648, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %.thread646
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !55
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = ashr exact i64 %i.as, 2                 ; 2 uses
  %i.au = zext nneg i32 %i.af to i64              ; 3 uses
  %i.av = xor i64 %i.au, 2147483647
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = add nuw nsw i64 %i.at, %i.au            ; 3 uses
  %i.ay = zext nneg i32 %i.f to i64
  %.not570 = icmp samesign ugt i64 %i.ax, %i.ay
  br i1 %.not570, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.az, ptr nonnull align 4 %i.an, i64 %i.as, i1 false)
  %i.ba = trunc nuw nsw i64 %i.ax to i32          ; 2 uses
  %.not572.not = icmp samesign ugt i32 %i.f, %i.ba
  br i1 %.not572.not, label %bb.ab, label %bb.ac

bb.z:                                             ; preds = %bb.x
end_hunk_0
begin_hunk_1_@uriToStringEngineW:bb.a
  %i.hc = zext nneg i32 %i.f to i64
  %.not578 = icmp samesign ugt i64 %i.hb, %i.hc
  br i1 %.not578, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gy
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hd, ptr nonnull align 4 %i.gr, i64 %i.gw, i1 false)
  %i.he = trunc nuw nsw i64 %i.hb to i32
  br label %.thread656

bb.cb:                                            ; preds = %bb.bz
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not579 = icmp eq ptr %3, null
  br i1 %.not579, label %.critedge, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.cd:                                            ; preds = %bb.bx
  %i.hf = load i32, ptr %4, align 4, !tbaa !12    ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = sub nsw i64 2147483647, %i.hg
  %i.hi = icmp ugt i64 %i.gx, %i.hh
  br i1 %i.hi, label %.critedge, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hj = trunc nuw i64 %i.gx to i32
  %i.hk = add i32 %i.hf, %i.hj
  store i32 %i.hk, ptr %4, align 4, !tbaa !12
  br label %.thread656

.thread656:                                       ; preds = %bb.am, %.preheader763.split.us, %bb.ce, %bb.ca, %bb.bv, %bb.bq, %bb.bf, %bb.bc, %bb.bw
  %.23 = phi i32 [ %.7431, %bb.ce ], [ %.7431, %bb.bw ], [ %i.fi, %bb.bc ], [ %i.gg, %bb.bq ], [ %.7431, %bb.bf ], [ %.7431, %bb.bv ], [ %i.he, %bb.ca ], [ %.7431, %.preheader763.split.us ], [ %i.da, %bb.am ] ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !63 ; 2 uses
  %.not599 = icmp eq ptr %i.hm, null
  br i1 %.not599, label %bb.cr, label %bb.cf

bb.cf:                                            ; preds = %.thread656
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !64
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hp, %i.hq                    ; 2 uses
  %i.hs = ashr exact i64 %i.hr, 2                 ; 5 uses
  br i1 %i.c, label %bb.co, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.not601.not = icmp slt i32 %.23, %i.f
  br i1 %.not601.not, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ht = add nuw nsw i32 %.23, 1
  %i.hu = zext nneg i32 %.23 to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hu
  store i32 58, ptr %i.hv, align 4
  %i.hw = zext nneg i32 %i.ht to i64              ; 3 uses
  %i.hx = xor i64 %i.hw, 2147483647
  %i.hy = icmp ugt i64 %i.hs, %i.hx
  br i1 %i.hy, label %.critedge, label %bb.ck

bb.ci:                                            ; preds = %bb.cg
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not602 = icmp eq ptr %3, null
  br i1 %.not602, label %.critedge, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.ck:                                            ; preds = %bb.ch
  %i.hz = add nuw nsw i64 %i.hs, %i.hw            ; 2 uses
  %i.ia = zext nneg i32 %i.f to i64
  %.not603 = icmp samesign ugt i64 %i.hz, %i.ia
  br i1 %.not603, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hw
  %i.ic = load ptr, ptr %i.hl, align 8, !tbaa !63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ib, ptr align 4 %i.ic, i64 %i.hr, i1 false)
  %i.id = trunc nuw nsw i64 %i.hz to i32
  br label %bb.cr

bb.cm:                                            ; preds = %bb.ck
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not604 = icmp eq ptr %3, null
  br i1 %.not604, label %.critedge, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.co:                                            ; preds = %bb.cf
  %i.ie = icmp ugt i64 %i.hs, 2147483646
  br i1 %i.ie, label %.critedge, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.if = load i32, ptr %4, align 4, !tbaa !12    ; 2 uses
  %i.ig = sext i32 %i.if to i64
  %i.ih = sub nsw i64 2147483647, %i.ig
  %.not600 = icmp samesign ult i64 %i.hs, %i.ih
  br i1 %.not600, label %bb.cq, label %.critedge

bb.cq:                                            ; preds = %bb.cp
  %i.ii = trunc nuw nsw i64 %i.hs to i32
  %i.ij = add nuw nsw i32 %i.ii, 1
  %i.ik = add i32 %i.ij, %i.if
  store i32 %i.ik, ptr %4, align 4, !tbaa !12
  br label %bb.cr

bb.cr:                                            ; preds = %.thread864, %bb.cq, %bb.cl, %.thread639, %.thread656, %bb.s
  %.26 = phi i32 [ 0, %.thread639 ], [ %.23, %.thread656 ], [ %.3427, %bb.s ], [ %.23, %bb.cq ], [ %i.id, %bb.cl ], [ 0, %.thread864 ] ; 6 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.im = load i32, ptr %i.il, align 8, !tbaa !65
  %.not605 = icmp eq i32 %i.im, 0
  br i1 %.not605, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !66
  %.not606 = icmp eq ptr %i.io, null
  br i1 %.not606, label %bb.cy, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ip = tail call i32 @uriHasHostW(ptr noundef nonnull %1) #4
  %.not607 = icmp eq i32 %i.ip, 0
  br i1 %.not607, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cr
  br i1 %i.c, label %.thread886, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not608.not = icmp slt i32 %.26, %i.f
  br i1 %.not608.not, label %.thread880, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not609 = icmp eq ptr %3, null
  br i1 %.not609, label %.critedge, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.cy:                                            ; preds = %bb.ct, %bb.cs
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !66 ; 3 uses
  %.not610 = icmp eq ptr %i.ir, null
  br i1 %.not610, label %.thread702, label %.preheader

.thread886:                                       ; preds = %bb.cu
  %i.is = load i32, ptr %4, align 4, !tbaa !12
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %4, align 4, !tbaa !12
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !66 ; 2 uses
  %.not610887 = icmp eq ptr %i.iv, null
  br i1 %.not610887, label %.thread702.thread898, label %.preheader.split.us

.thread880:                                       ; preds = %bb.cv
  %i.iw = add nuw nsw i32 %.26, 1                 ; 4 uses
  %i.ix = zext nneg i32 %.26 to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ix
  store i32 47, ptr %i.iy, align 4
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !66 ; 2 uses
  %.not610882 = icmp eq ptr %i.ja, null
  br i1 %.not610882, label %.thread702.thread891, label %.preheader.split.preheader

.preheader:                                       ; preds = %bb.cy
  br i1 %i.c, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.thread880, %.preheader
  %.27883885 = phi i32 [ %.26, %.preheader ], [ %i.iw, %.thread880 ]
  %i.jb = phi ptr [ %i.ir, %.preheader ], [ %i.ja, %.thread880 ]
  %i.jc = zext i32 %i.f to i64
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.thread886, %.preheader
  %i.jd = phi ptr [ %i.ir, %.preheader ], [ %i.iv, %.thread886 ] ; 3 uses
  %.promoted780 = load i32, ptr %4, align 4, !tbaa !12 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !67
  %i.jg = load ptr, ptr %i.jd, align 8, !tbaa !69
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = ashr exact i64 %i.jj, 2                 ; 2 uses
  %i.jl = sext i32 %.promoted780 to i64
  %i.jm = sub nsw i64 2147483647, %i.jl
  %i.jn = icmp ugt i64 %i.jk, %i.jm
  br i1 %i.jn, label %.critedge, label %.lr.ph939

.lr.ph939:                                        ; preds = %.preheader.split.us, %bb.cz
  %i.jo = phi i64 [ %i.kb, %bb.cz ], [ %i.jk, %.preheader.split.us ]
  %.0.us938 = phi ptr [ %i.jt, %bb.cz ], [ %i.jd, %.preheader.split.us ]
  %i.jp = phi i32 [ %i.ju, %bb.cz ], [ %.promoted780, %.preheader.split.us ]
  %i.jq = trunc nuw i64 %i.jo to i32
  %i.jr = add i32 %i.jp, %i.jq                    ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.0.us938, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !70 ; 4 uses
  %.not613.us = icmp eq ptr %i.jt, null
  br i1 %.not613.us, label %.thread702.loopexit, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph939
  %i.ju = add nsw i32 %i.jr, 1                    ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !67
  %i.jx = load ptr, ptr %i.jt, align 8, !tbaa !69
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = ashr exact i64 %i.ka, 2                 ; 2 uses
  %i.kc = sext i32 %i.ju to i64
  %i.kd = sub nsw i64 2147483647, %i.kc
  %i.ke = icmp ugt i64 %i.kb, %i.kd
  br i1 %i.ke, label %.critedge.loopexit, label %.lr.ph939

.preheader.split:                                 ; preds = %.preheader.split.preheader, %bb.dd
  %.28 = phi i32 [ %i.ku, %bb.dd ], [ %.27883885, %.preheader.split.preheader ]
  %.0 = phi ptr [ %.pr, %bb.dd ], [ %i.jb, %.preheader.split.preheader ] ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !67
  %i.kh = load ptr, ptr %.0, align 8, !tbaa !69   ; 2 uses
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = sub i64 %i.ki, %i.kj                    ; 2 uses
  %i.kl = ashr exact i64 %i.kk, 2                 ; 2 uses
  %i.km = zext nneg i32 %.28 to i64               ; 3 uses
  %i.kn = xor i64 %i.km, 2147483647
  %i.ko = icmp ugt i64 %i.kl, %i.kn
  br i1 %i.ko, label %.critedge, label %bb.da

bb.da:                                            ; preds = %.preheader.split
  %i.kp = add nuw nsw i64 %i.kl, %i.km            ; 3 uses
  %.not611 = icmp ugt i64 %i.kp, %i.jc
  br i1 %.not611, label %bb.db, label %.thread686

bb.db:                                            ; preds = %bb.da
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not612 = icmp eq ptr %3, null
  br i1 %.not612, label %.critedge, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

.thread686:                                       ; preds = %bb.da
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.km
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kq, ptr align 4 %i.kh, i64 %i.kk, i1 false)
  %i.kr = trunc nuw nsw i64 %i.kp to i32          ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !70
  %.not613688 = icmp eq ptr %i.kt, null
  br i1 %.not613688, label %.thread702.thread, label %.thread690

.thread690:                                       ; preds = %.thread686
  %.not614.not = icmp sgt i32 %i.f, %i.kr
  br i1 %.not614.not, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.thread690
  %i.ku = add nuw nsw i32 %i.kr, 1                ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kp
  store i32 47, ptr %i.kv, align 4
  %.pr = load ptr, ptr %i.ks, align 8, !tbaa !70  ; 2 uses
  %.not616 = icmp eq ptr %.pr, null
  br i1 %.not616, label %.thread702, label %.preheader.split, !llvm.loop !71

bb.de:                                            ; preds = %.thread690
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not615 = icmp eq ptr %3, null
  br i1 %.not615, label %.critedge, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

.thread702.loopexit:                              ; preds = %.lr.ph939
  store i32 %i.jr, ptr %4, align 4, !tbaa !12
  br label %.thread702

.thread702:                                       ; preds = %bb.dd, %.thread702.loopexit, %bb.cy
  %.32 = phi i32 [ %.26, %bb.cy ], [ %.26, %.thread702.loopexit ], [ %i.ku, %bb.dd ] ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !72 ; 2 uses
  %.not617 = icmp eq ptr %i.kx, null
  br i1 %.not617, label %bb.dn, label %bb.dg

.thread702.thread898:                             ; preds = %.thread886
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !72 ; 2 uses
  %.not617900 = icmp eq ptr %i.kz, null
  br i1 %.not617900, label %.thread910, label %.thread901

.thread702.thread891:                             ; preds = %.thread880
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !72
  %.not617893 = icmp eq ptr %i.lb, null
  br i1 %.not617893, label %.thread903, label %.thread743

.thread702.thread:                                ; preds = %.thread686
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !72
  %.not617740 = icmp eq ptr %i.ld, null
  br i1 %.not617740, label %.thread746, label %.thread743

bb.dg:                                            ; preds = %.thread702
  br i1 %i.c, label %.thread901, label %.thread743

.thread743:                                       ; preds = %.thread702.thread891, %.thread702.thread, %bb.dg
  %.32741745 = phi i32 [ %.32, %bb.dg ], [ %i.kr, %.thread702.thread ], [ %i.iw, %.thread702.thread891 ] ; 3 uses
  %i.le = phi ptr [ %i.kw, %bb.dg ], [ %i.lc, %.thread702.thread ], [ %i.la, %.thread702.thread891 ]
  %.not618.not = icmp slt i32 %.32741745, %i.f
  br i1 %.not618.not, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %.thread743
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not619 = icmp eq ptr %3, null
  br i1 %.not619, label %.critedge, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.dj:                                            ; preds = %.thread743
  %i.lf = add nsw i32 %.32741745, 1
  %i.lg = sext i32 %.32741745 to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %0, i64 %i.lg
  store i32 63, ptr %i.lh, align 4
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !73
  %i.lk = load ptr, ptr %i.le, align 8, !tbaa !72 ; 2 uses
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = sub i64 %i.ll, %i.lm                    ; 2 uses
  %i.lo = ashr exact i64 %i.ln, 2                 ; 2 uses
  %i.lp = sext i32 %i.lf to i64                   ; 3 uses
  %i.lq = sub nsw i64 2147483647, %i.lp
  %i.lr = icmp ugt i64 %i.lo, %i.lq
  br i1 %i.lr, label %.critedge, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ls = add nsw i64 %i.lo, %i.lp                ; 2 uses
  %i.lt = zext nneg i32 %i.f to i64
  %.not620 = icmp ugt i64 %i.ls, %i.lt
  br i1 %.not620, label %bb.dl, label %.thread713

bb.dl:                                            ; preds = %bb.dk
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not621 = icmp eq ptr %3, null
  br i1 %.not621, label %.critedge, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

.thread901:                                       ; preds = %.thread702.thread898, %bb.dg
  %i.lu = phi ptr [ %i.kx, %bb.dg ], [ %i.kz, %.thread702.thread898 ]
  %i.lv = load i32, ptr %4, align 4, !tbaa !12
  %i.lw = add nsw i32 %i.lv, 1                    ; 3 uses
  store i32 %i.lw, ptr %4, align 4, !tbaa !12
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !73
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lu to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = ashr exact i64 %i.mb, 2                 ; 2 uses
  %i.md = sext i32 %i.lw to i64
  %i.me = sub nsw i64 2147483647, %i.md
  %i.mf = icmp ugt i64 %i.mc, %i.me
  br i1 %i.mf, label %.critedge, label %.thread720

bb.dn:                                            ; preds = %.thread702
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !74 ; 2 uses
  %.not622 = icmp eq ptr %i.mh, null
  br i1 %.not622, label %bb.dx, label %bb.do

.thread910:                                       ; preds = %.thread702.thread898
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !74 ; 2 uses
  %.not622912 = icmp eq ptr %i.mj, null
  br i1 %.not622912, label %.critedge, label %..thread722_crit_edge

.thread903:                                       ; preds = %.thread702.thread891
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !74
  %.not622905 = icmp eq ptr %i.ml, null
  br i1 %.not622905, label %.thread736, label %.thread717

.thread746:                                       ; preds = %.thread702.thread
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !74
  %.not622748 = icmp eq ptr %i.mn, null
  br i1 %.not622748, label %.thread736, label %.thread717

.thread720:                                       ; preds = %.thread901
  %i.mo = trunc nuw i64 %i.mc to i32
  %i.mp = add i32 %i.lw, %i.mo                    ; 2 uses
  store i32 %i.mp, ptr %4, align 4, !tbaa !12
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !74 ; 2 uses
  %.not622721 = icmp eq ptr %i.mr, null
  br i1 %.not622721, label %.critedge, label %.thread722

.thread713:                                       ; preds = %bb.dk
  %i.ms = getelementptr inbounds [4 x i8], ptr %0, i64 %i.lp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ms, ptr align 4 %i.lk, i64 %i.ln, i1 false)
  %i.mt = trunc nuw nsw i64 %i.ls to i32          ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !74
  %.not622715 = icmp eq ptr %i.mv, null
  br i1 %.not622715, label %.thread736, label %.thread717

bb.do:                                            ; preds = %bb.dn
  br i1 %i.c, label %..thread722_crit_edge, label %.thread717

..thread722_crit_edge:                            ; preds = %.thread910, %bb.do
  %i.mw = phi ptr [ %i.mh, %bb.do ], [ %i.mj, %.thread910 ]
  %.pre = load i32, ptr %4, align 4, !tbaa !12
  br label %.thread722

.thread717:                                       ; preds = %.thread903, %.thread746, %.thread713, %bb.do
  %.36716719 = phi i32 [ %.32, %bb.do ], [ %i.mt, %.thread713 ], [ %i.kr, %.thread746 ], [ %i.iw, %.thread903 ] ; 3 uses
  %i.mx = phi ptr [ %i.mg, %bb.do ], [ %i.mu, %.thread713 ], [ %i.mm, %.thread746 ], [ %i.mk, %.thread903 ]
  %.not623.not = icmp slt i32 %.36716719, %i.f
  br i1 %.not623.not, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %.thread717
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not624 = icmp eq ptr %3, null
  br i1 %.not624, label %.critedge, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

bb.dr:                                            ; preds = %.thread717
  %i.my = add nsw i32 %.36716719, 1
  %i.mz = sext i32 %.36716719 to i64
  %i.na = getelementptr inbounds [4 x i8], ptr %0, i64 %i.mz
  store i32 35, ptr %i.na, align 4
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !75
  %i.nd = load ptr, ptr %i.mx, align 8, !tbaa !74 ; 2 uses
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = sub i64 %i.ne, %i.nf                    ; 2 uses
  %i.nh = ashr exact i64 %i.ng, 2                 ; 2 uses
  %i.ni = sext i32 %i.my to i64                   ; 3 uses
  %i.nj = sub nsw i64 2147483647, %i.ni
  %i.nk = icmp ugt i64 %i.nh, %i.nj
  br i1 %i.nk, label %.critedge, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.nl = add nsw i64 %i.nh, %i.ni                ; 2 uses
  %i.nm = zext nneg i32 %i.f to i64
  %.not625 = icmp ugt i64 %i.nl, %i.nm
  br i1 %.not625, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.nn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ni
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.nn, ptr align 4 %i.nd, i64 %i.ng, i1 false)
  %i.no = trunc nuw nsw i64 %i.nl to i32
  br label %.thread736

bb.du:                                            ; preds = %bb.ds
  store i32 0, ptr %0, align 4, !tbaa !12
  %.not626 = icmp eq ptr %3, null
  br i1 %.not626, label %.critedge, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  store i32 0, ptr %3, align 4, !tbaa !12
  br label %.critedge

.thread722:                                       ; preds = %..thread722_crit_edge, %.thread720
  %i.np = phi ptr [ %i.mw, %..thread722_crit_edge ], [ %i.mr, %.thread720 ]
  %i.nq = phi i32 [ %.pre, %..thread722_crit_edge ], [ %i.mp, %.thread720 ]
  %i.nr = add nsw i32 %i.nq, 1                    ; 3 uses
  store i32 %i.nr, ptr %4, align 4, !tbaa !12
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !75
  %i.nu = ptrtoint ptr %i.nt to i64
  %i.nv = ptrtoint ptr %i.np to i64
  %i.nw = sub i64 %i.nu, %i.nv
  %i.nx = ashr exact i64 %i.nw, 2                 ; 2 uses
  %i.ny = sext i32 %i.nr to i64
  %i.nz = sub nsw i64 2147483647, %i.ny
  %i.oa = icmp ugt i64 %i.nx, %i.nz
  br i1 %i.oa, label %.critedge, label %bb.dw

bb.dw:                                            ; preds = %.thread722
  %i.ob = trunc nuw i64 %i.nx to i32
  %i.oc = add i32 %i.nr, %i.ob
  store i32 %i.oc, ptr %4, align 4, !tbaa !12
  br label %.critedge

bb.dx:                                            ; preds = %bb.dn
  br i1 %i.c, label %.critedge, label %.thread736

.thread736:                                       ; preds = %.thread903, %.thread746, %.thread713, %bb.dt, %bb.dx
  %.40738 = phi i32 [ %.32, %bb.dx ], [ %i.mt, %.thread713 ], [ %i.no, %bb.dt ], [ %i.kr, %.thread746 ], [ %i.iw, %.thread903 ] ; 2 uses
  %i.od = sext i32 %.40738 to i64
  %i.oe = getelementptr inbounds [4 x i8], ptr %0, i64 %i.od
  store i32 0, ptr %i.oe, align 4, !tbaa !12
  %.not627 = icmp eq ptr %3, null
  br i1 %.not627, label %.critedge, label %bb.dy

bb.dy:                                            ; preds = %.thread736
  %i.of = add nsw i32 %.40738, 1
  store i32 %i.of, ptr %3, align 4, !tbaa !12
  br label %.critedge

.critedge.loopexit:                               ; preds = %bb.cz
  store i32 %i.ju, ptr %4, align 4, !tbaa !12
  br label %.critedge

.critedge:                                        ; preds = %.preheader.split, %.critedge.loopexit, %.preheader.split.us, %.thread910, %.thread720, %bb.dw, %bb.dv, %.thread722, %bb.du, %bb.dr, %bb.dm, %.thread901, %bb.dl, %bb.dj, %bb.de, %bb.df, %bb.dc, %bb.db, %bb.cp, %bb.cn, %bb.cj, %bb.ch, %bb.co, %bb.cm, %bb.ci, %bb.cc, %bb.cd, %bb.cb, %bb.by, %bb.bu, %bb.bs, %bb.bp, %bb.bl, %bb.bj, %bb.bo, %bb.bt, %bb.br, %bb.bk, %bb.ax, %bb.aw, %bb.ba, %bb.az, %bb.be, %bb.av, %bb.au, %bb.bd, %bb.aq, %bb.an, %.preheader763.split._crit_edge, %bb.ap, %bb.w, %bb.ac, %bb.ae, %bb.z, %bb.aa, %bb.ad, %bb.af, %bb.j, %bb.l, %bb.q, %bb.n, %bb.m, %bb.r, %bb.dx, %bb.dy, %.thread736, %bb.dp, %bb.dq, %bb.dh, %bb.di, %bb.cw, %bb.cx, %bb.u, %bb.v, %bb.f, %bb.g, %bb.c, %bb.d
  %.21 = phi i32 [ 0, %bb.dx ], [ 2, %bb.c ], [ 4, %bb.dp ], [ 4, %bb.dm ], [ 4, %bb.dh ], [ 4, %bb.de ], [ 4, %bb.w ], [ 4, %bb.aq ], [ 4, %bb.u ], [ 4, %bb.cc ], [ 4, %bb.cp ], [ 4, %bb.dv ], [ 4, %bb.ax ], [ 4, %bb.bu ], [ 4, %bb.j ], [ 4, %bb.f ], [ 2, %bb.d ], [ 4, %bb.g ], [ 4, %bb.v ], [ 4, %bb.cx ], [ 4, %bb.cw ], [ 4, %bb.di ], [ 4, %bb.dq ], [ 0, %.thread736 ], [ 0, %bb.dy ], [ 4, %bb.r ], [ 4, %bb.m ], [ 4, %bb.n ], [ 4, %bb.q ], [ 4, %bb.l ], [ 4, %bb.af ], [ 4, %bb.ad ], [ 4, %bb.aa ], [ 4, %bb.z ], [ 4, %bb.ae ], [ 4, %bb.ac ], [ 4, %bb.ap ], [ 4, %.preheader763.split._crit_edge ], [ 4, %bb.an ], [ 4, %bb.bd ], [ 4, %bb.au ], [ 4, %bb.av ], [ 4, %bb.be ], [ 4, %bb.az ], [ 4, %bb.ba ], [ 4, %bb.aw ], [ 4, %bb.bk ], [ 4, %bb.br ], [ 4, %bb.bt ], [ 4, %bb.bo ], [ 4, %bb.bj ], [ 4, %bb.bl ], [ 4, %bb.bp ], [ 4, %bb.bs ], [ 4, %bb.by ], [ 4, %bb.cb ], [ 4, %bb.cd ], [ 4, %bb.ci ], [ 4, %bb.cm ], [ 4, %bb.co ], [ 4, %bb.ch ], [ 4, %bb.cj ], [ 4, %bb.cn ], [ 0, %bb.dw ], [ 4, %bb.db ], [ 0, %.thread720 ], [ 4, %bb.dc ], [ 4, %bb.df ], [ 4, %bb.dj ], [ 4, %bb.dl ], [ 4, %.thread901 ], [ 4, %bb.dr ], [ 4, %bb.du ], [ 4, %.thread722 ], [ 4, %.preheader.split.us ], [ 0, %.thread910 ], [ 4, %.critedge.loopexit ], [ 4, %.preheader.split ]
  ret i32 %.21
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 5) i32 @uriToStringW(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @uriToStringEngineW(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @uriHasHostA(ptr noundef) local_unnamed_addr #3

declare signext i8 @uriHexToLetterExA(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @uriHasHostW(ptr noundef) local_unnamed_addr #3

declare i32 @uriHexToLetterExW(i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!9, !9, i64 0}
!13 = !{!14, !16, i64 0}
!14 = !{!"UriUriStructA", !15, i64 0, !15, i64 16, !15, i64 32, !18, i64 48, !15, i64 80, !21, i64 96, !21, i64 104, !15, i64 112, !15, i64 128, !9, i64 144, !9, i64 148, !17, i64 152}
!15 = !{!"UriTextRangeStructA", !16, i64 0, !16, i64 8}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"UriHostDataStructA", !19, i64 0, !20, i64 8, !15, i64 16}
!19 = !{!"p1 _ZTS12UriIp4Struct", !17, i64 0}
!20 = !{!"p1 _ZTS12UriIp6Struct", !17, i64 0}
!21 = !{!"p1 _ZTS21UriPathSegmentStructA", !17, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!14, !16, i64 8}
!24 = !{!14, !16, i64 16}
!25 = !{!14, !16, i64 24}
!26 = !{!14, !19, i64 48}
!27 = !{!14, !20, i64 56}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!14, !16, i64 64}
!31 = !{!14, !16, i64 72}
!32 = !{!14, !16, i64 32}
!33 = !{!14, !16, i64 40}
!34 = !{!14, !16, i64 80}
!35 = !{!14, !16, i64 88}
!36 = !{!14, !9, i64 144}
!37 = !{!14, !21, i64 96}
!38 = !{!39, !16, i64 8}
!39 = !{!"UriPathSegmentStructA", !15, i64 0, !21, i64 16, !17, i64 24}
!40 = !{!39, !16, i64 0}
!41 = !{!39, !21, i64 16}
!42 = distinct !{!42, !29}
!43 = !{!14, !16, i64 112}
!44 = !{!14, !16, i64 120}
!45 = !{!14, !16, i64 128}
!46 = !{!14, !16, i64 136}
!47 = !{!48, !50, i64 0}
!48 = !{!"UriUriStructW", !49, i64 0, !49, i64 16, !49, i64 32, !51, i64 48, !49, i64 80, !52, i64 96, !52, i64 104, !49, i64 112, !49, i64 128, !9, i64 144, !9, i64 148, !17, i64 152}
!49 = !{!"UriTextRangeStructW", !50, i64 0, !50, i64 8}
!50 = !{!"p1 int", !17, i64 0}
!51 = !{!"UriHostDataStructW", !19, i64 0, !20, i64 8, !49, i64 16}
!52 = !{!"p1 _ZTS21UriPathSegmentStructW", !17, i64 0}
!53 = !{!48, !50, i64 8}
!54 = !{!48, !50, i64 16}
!55 = !{!48, !50, i64 24}
!56 = !{!48, !19, i64 48}
!57 = !{!48, !20, i64 56}
!58 = distinct !{!58, !29}
!59 = !{!48, !50, i64 64}
!60 = !{!48, !50, i64 72}
!61 = !{!48, !50, i64 32}
!62 = !{!48, !50, i64 40}
!63 = !{!48, !50, i64 80}
!64 = !{!48, !50, i64 88}
!65 = !{!48, !9, i64 144}
!66 = !{!48, !52, i64 96}
!67 = !{!68, !50, i64 8}
!68 = !{!"UriPathSegmentStructW", !49, i64 0, !52, i64 16, !17, i64 24}
!69 = !{!68, !50, i64 0}
!70 = !{!68, !52, i64 16}
!71 = distinct !{!71, !29}
!72 = !{!48, !50, i64 112}
!73 = !{!48, !50, i64 120}
!74 = !{!48, !50, i64 128}
!75 = !{!48, !50, i64 136}
end_hunk_1
