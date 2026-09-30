Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_substitute?download=true
loop-unroll.NumUnrolled: 1
begin_hunk_0_@php_pcre2_substitute:bb.a
  %i.go = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next1845
  store i8 %i.gy, ptr %i.go, align 1, !tbaa !19
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gw, i64 2 ; 6 uses
  store ptr %i.gp, ptr %i.b, align 8, !tbaa !21
  %.not843.1 = icmp ult ptr %i.gp, %.1642
  br i1 %.not843.1, label %bb.cd, label %.thread929

bb.cd:                                            ; preds = %.lr.ph
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !19  ; 4 uses
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !19
  %i.gu = and i8 %i.gt, 16
  %.not842.1 = icmp eq i8 %i.gu, 0
  br i1 %.not842.1, label %.thread929, label %.lr.ph.1, !llvm.loop !27

.lr.ph.1:                                         ; preds = %bb.cd
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next1845, 2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next
  store i8 %i.gq, ptr %i.gv, align 1, !tbaa !19
  %exitcond.1 = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.1, label %.thread984, label %bb.ce, !llvm.loop !27

bb.ce:                                            ; preds = %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.next1845 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph.1 ] ; 5 uses
  %i.gw = phi ptr [ %.promoted, %.lr.ph.preheader ], [ %i.gp, %.lr.ph.1 ] ; 2 uses
  %.313461844 = phi i8 [ %.1534928, %.lr.ph.preheader ], [ %i.gq, %.lr.ph.1 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1 ; 5 uses
  store ptr %i.gx, ptr %i.b, align 8, !tbaa !21
  %.not843 = icmp ult ptr %i.gx, %.1642
  br i1 %.not843, label %bb.cf, label %.thread929

bb.cf:                                            ; preds = %bb.ce
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !19  ; 4 uses
  %i.gz = zext i8 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !19
  %i.hc = and i8 %i.hb, 16
  %.not842 = icmp eq i8 %i.hc, 0
  br i1 %.not842, label %.thread929, label %.lr.ph, !llvm.loop !27

.thread929:                                       ; preds = %bb.cd, %.lr.ph, %bb.ce, %bb.cf
  %indvars.iv.next1845.lcssa = phi i64 [ %indvars.iv.next1845, %bb.ce ], [ %indvars.iv.next1845, %bb.cf ], [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.next, %bb.cd ]
  %.lcssa = phi ptr [ %i.gx, %bb.ce ], [ %i.gx, %bb.cf ], [ %i.gp, %.lr.ph ], [ %i.gp, %bb.cd ]
  %.31222 = phi i8 [ %.313461844, %bb.ce ], [ %i.gy, %bb.cf ], [ %i.gy, %.lr.ph ], [ %i.gq, %bb.cd ]
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next1845.lcssa
  store i8 0, ptr %i.hd, align 1, !tbaa !19
  br label %.critedge18

..critedge18.loopexit_crit_edge:                  ; preds = %.lr.ph1846
  br label %.critedge18, !llvm.loop !26

.critedge18:                                      ; preds = %.lr.ph1351, %bb.bz, %.preheader1212, %.preheader1212.preheader, %..critedge18.loopexit_crit_edge, %bb.by, %.thread929
  %i.he = phi ptr [ %i.fp, %bb.by ], [ %.lcssa, %.thread929 ], [ %i.gd, %.preheader1212 ], [ %i.gb, %.preheader1212.preheader ], [ %i.gf, %..critedge18.loopexit_crit_edge ], [ %i.fr, %bb.bz ], [ %.promoted1357, %.lr.ph1351 ] ; 6 uses
  %.1552 = phi i32 [ %i.fo, %bb.by ], [ -1, %.thread929 ], [ %i.fx, %.preheader1212 ], [ %i.fx, %.preheader1212.preheader ], [ %i.fx, %..critedge18.loopexit_crit_edge ], [ %i.fx, %bb.bz ], [ %.05511349, %.lr.ph1351 ] ; 3 uses
  %.4 = phi i8 [ %.0533, %bb.by ], [ %.31222, %.thread929 ], [ %i.fs, %.preheader1212 ], [ %i.fs, %.preheader1212.preheader ], [ %i.fs, %..critedge18.loopexit_crit_edge ], [ %i.fs, %bb.bz ], [ %i.fs, %.lr.ph1351 ]
  br i1 %.not846, label %bb.cg, label %bb.cr

bb.cg:                                            ; preds = %.critedge18
  %or.cond20.not = and i1 %.not837, %i.fi
  br i1 %or.cond20.not, label %bb.ch, label %bb.co

bb.ch:                                            ; preds = %bb.cg
  %i.hf = getelementptr inbounds i8, ptr %.1642, i64 -2
  %i.hg = icmp ult ptr %i.he, %i.hf
  %i.hh = icmp eq i8 %.4, 58
  %or.cond23 = and i1 %i.hh, %i.hg
  br i1 %or.cond23, label %bb.ci, label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 1 ; 2 uses
  store ptr %i.hi, ptr %i.b, align 8, !tbaa !21
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !19  ; 4 uses
  %i.hk = zext i8 %i.hj to i32
  switch i8 %i.hj, label %.thread984 [
    i8 45, label %bb.cj
    i8 43, label %bb.cj
  ]

bb.cj:                                            ; preds = %bb.ci, %bb.ci
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 2 ; 4 uses
  store ptr %i.hl, ptr %i.b, align 8, !tbaa !21
  %i.hm = icmp eq i8 %i.hj, 45
  %i.hn = zext i1 %i.hm to i32
  %i.ho = call fastcc i32 @find_text_end(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull %.1642, i32 noundef %i.hn) ; 2 uses
  %.not848 = icmp eq i32 %i.ho, 0
  br i1 %.not848, label %bb.ck, label %.thread984

bb.ck:                                            ; preds = %bb.cj
  %i.hp = load ptr, ptr %i.b, align 8, !tbaa !21  ; 7 uses
  %i.hq = icmp eq i8 %i.hj, 43
  br i1 %i.hq, label %bb.cl, label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  %i.hr = load i8, ptr %i.hp, align 1, !tbaa !19
  %i.hs = icmp eq i8 %i.hr, 58
  br i1 %i.hs, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 1 ; 2 uses
  store ptr %i.ht, ptr %i.b, align 8, !tbaa !21
  %i.hu = call fastcc i32 @find_text_end(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull %.1642, i32 noundef 1) ; 2 uses
  %.not849 = icmp eq i32 %i.hu, 0
  br i1 %.not849, label %bb.cn, label %.thread984

bb.cn:                                            ; preds = %bb.cm
  %i.hv = load ptr, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  br label %bb.cq

bb.co:                                            ; preds = %bb.ch, %bb.cg
  %.not850 = icmp ult ptr %i.he, %.1642
  br i1 %.not850, label %bb.cp, label %.thread984

bb.cp:                                            ; preds = %bb.co
  %i.hw = load i8, ptr %i.he, align 1, !tbaa !19
  %.not851 = icmp eq i8 %i.hw, 125
  br i1 %.not851, label %bb.cq, label %.thread984

bb.cq:                                            ; preds = %bb.cp, %bb.ck, %bb.cl, %bb.cn
  %i.hx = phi ptr [ %i.he, %bb.cp ], [ %i.hv, %bb.cn ], [ %i.hp, %bb.cl ], [ %i.hp, %bb.ck ]
  %.3727 = phi i32 [ %.2726, %bb.cp ], [ 0, %bb.cn ], [ 0, %bb.cl ], [ 0, %bb.ck ]
  %.0547 = phi i32 [ 0, %bb.cp ], [ 43, %bb.cn ], [ 43, %bb.cl ], [ %i.hk, %bb.ck ]
  %.0543 = phi ptr [ null, %bb.cp ], [ %i.hl, %bb.cn ], [ %i.hl, %bb.cl ], [ %i.hl, %bb.ck ]
  %.0541 = phi ptr [ null, %bb.cp ], [ %i.hp, %bb.cn ], [ %i.hp, %bb.cl ], [ %i.hp, %bb.ck ]
  %.0538 = phi ptr [ null, %bb.cp ], [ %i.ht, %bb.cn ], [ null, %bb.cl ], [ null, %bb.ck ]
  %.0535 = phi ptr [ null, %bb.cp ], [ %i.hv, %bb.cn ], [ null, %bb.cl ], [ null, %bb.ck ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  store ptr %i.hy, ptr %i.b, align 8, !tbaa !21
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.critedge18
  %.4728 = phi i32 [ %.3727, %bb.cq ], [ %.2726, %.critedge18 ] ; 6 uses
  %.1548 = phi i32 [ %.0547, %bb.cq ], [ 0, %.critedge18 ] ; 2 uses
  %.1544 = phi ptr [ %.0543, %bb.cq ], [ null, %.critedge18 ] ; 2 uses
  %.1542 = phi ptr [ %.0541, %bb.cq ], [ null, %.critedge18 ] ; 2 uses
  %.1539 = phi ptr [ %.0538, %bb.cq ], [ null, %.critedge18 ]
  %.1536 = phi ptr [ %.0535, %bb.cq ], [ null, %.critedge18 ]
  br i1 %i.fi, label %bb.cz, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.hz = call i32 @_pcre2_strcmp_c8_8(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.1) #6
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.ct, label %.thread984

bb.ct:                                            ; preds = %bb.cs
  %i.ib = call ptr @php_pcre2_get_mark(ptr noundef nonnull %.2754) #6 ; 3 uses
  %.not863 = icmp eq ptr %i.ib, null
  br i1 %.not863, label %.thread952, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ct
  %strlen = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ib) ; 6 uses
  %.not865 = icmp eq i32 %.5660, 0                ; 2 uses
  %i.ic = icmp ult i64 %.5581, %strlen
  %or.cond902 = select i1 %.not865, i1 %i.ic, i1 false
  br i1 %or.cond902, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %.preheader.preheader
  br i1 %i.ea, label %.thread984, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.id = sub nuw i64 %strlen, %.5581
  br label %.thread952

bb.cw:                                            ; preds = %.preheader.preheader
  br i1 %.not865, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ie = add i64 %strlen, %.5620
  br label %.thread952

bb.cy:                                            ; preds = %bb.cw
  %i.if = getelementptr inbounds nuw i8, ptr %9, i64 %.5595
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.if, ptr nonnull align 1 %i.ib, i64 %strlen, i1 false)
  %i.ig = add i64 %strlen, %.5595
  %i.ih = sub i64 %.5581, %strlen
  br label %.thread952

bb.cz:                                            ; preds = %bb.cr
  %i.ii = icmp slt i32 %.1552, 0
  br i1 %i.ii, label %bb.da, label %bb.dh

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.ij = call i32 @php_pcre2_substring_nametable_scan(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #6 ; 4 uses
  %i.ik = icmp ne i32 %i.ij, -49
  %or.cond903 = or i1 %.not844, %i.ik
  br i1 %or.cond903, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.il = load i16, ptr %i.bo, align 8, !tbaa !32
  %i.im = zext i16 %i.il to i32
  %i.in = add nuw nsw i32 %i.im, 1
  br label %.thread967

bb.dc:                                            ; preds = %bb.da
  %i.io = icmp slt i32 %i.ij, 0
  br i1 %i.io, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ip = load ptr, ptr %i.g, align 8, !tbaa !21  ; 3 uses
  %i.iq = load ptr, ptr %i.h, align 8, !tbaa !21  ; 2 uses
  %.not8541358 = icmp ugt ptr %i.ip, %i.iq
  br i1 %.not8541358, label %._crit_edge1363.thread, label %.lr.ph1362

.lr.ph1362:                                       ; preds = %bb.dd
  %i.ir = zext nneg i32 %i.ij to i64
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph1362, %select.unfold
  %.01360 = phi ptr [ %i.ip, %.lr.ph1362 ], [ %i.iy, %select.unfold ] ; 2 uses
  %.25531359 = phi i32 [ %.1552, %.lr.ph1362 ], [ %.5.ph, %select.unfold ] ; 3 uses
  %12 = load i16, ptr %.01360, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %i.is = zext i16 %13 to i32                     ; 4 uses
  %14 = icmp ugt i32 %i.an, %i.is
  br i1 %14, label %bb.df, label %select.unfold

bb.df:                                            ; preds = %bb.de
  %i.it = icmp slt i32 %.25531359, 0
  %spec.select904 = select i1 %i.it, i32 %i.is, i32 %.25531359
  %i.iu = shl nuw nsw i32 %i.is, 1
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.iv
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !31
  %.not855 = icmp eq i64 %i.ix, -1
  br i1 %.not855, label %select.unfold, label %.thread967

select.unfold:                                    ; preds = %bb.df, %bb.de
  %.5.ph = phi i32 [ %.25531359, %bb.de ], [ %spec.select904, %bb.df ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.01360, i64 %i.ir ; 2 uses
  %.not854 = icmp ugt ptr %i.iy, %i.iq
  br i1 %.not854, label %._crit_edge1363, label %bb.de, !llvm.loop !28

._crit_edge1363:                                  ; preds = %select.unfold
  %i.iz = icmp slt i32 %.5.ph, 0
  br i1 %i.iz, label %._crit_edge1363.thread, label %.thread967

._crit_edge1363.thread:                           ; preds = %bb.dd, %._crit_edge1363
  %15 = load i16, ptr %i.ip, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %i.ja = zext i16 %16 to i32
  br label %.thread967

.thread967:                                       ; preds = %bb.df, %._crit_edge1363, %._crit_edge1363.thread, %bb.db
  %.8.ph = phi i32 [ %i.in, %bb.db ], [ %.5.ph, %._crit_edge1363 ], [ %i.ja, %._crit_edge1363.thread ], [ %i.is, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.dh

bb.dg:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %select.unfold1025

bb.dh:                                            ; preds = %.thread967, %bb.cz
  %.9 = phi i32 [ %.8.ph, %.thread967 ], [ %.1552, %bb.cz ] ; 2 uses
  %i.jb = call i32 @php_pcre2_substring_length_bynumber(ptr noundef nonnull %.2754, i32 noundef %.9, ptr noundef nonnull %i.e) #6 ; 4 uses
  %i.jc = icmp slt i32 %i.jb, 0
  br i1 %i.jc, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.jd = icmp eq i32 %i.jb, -49
  %.5729 = select i1 %i.jd, i32 %spec.select905, i32 %i.jb ; 2 uses
  %.not857 = icmp eq i32 %.5729, -55
  br i1 %.not857, label %bb.dj, label %select.unfold1025

bb.dj:                                            ; preds = %bb.di
  %i.je = icmp eq i32 %.1548, 0
  br i1 %i.je, label %select.unfold1025, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.dh
  %.6730 = phi i32 [ -55, %bb.dj ], [ %i.jb, %bb.dh ] ; 7 uses
  switch i32 %.1548, label %bb.dm [
    i32 0, label %bb.do
    i32 45, label %bb.dl
  ]

bb.dl:                                            ; preds = %bb.dk
  %i.jf = icmp eq i32 %.6730, 0
  br i1 %i.jf, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.2540 = phi ptr [ %.1539, %bb.dk ], [ %.1544, %bb.dl ]
  %.2537 = phi ptr [ %.1536, %bb.dk ], [ %.1542, %bb.dl ]
  %i.jg = icmp ugt i32 %.0558, 19
  br i1 %i.jg, label %select.unfold1025, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.jh = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.ji = zext nneg i32 %.0558 to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ji ; 2 uses
  store ptr %i.jh, ptr %i.jj, align 8, !tbaa !21
  %i.jk = add nuw nsw i32 %.0558, 2
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr %.1642, ptr %i.jl, align 8, !tbaa !21
  %i.jm = icmp eq i32 %.6730, 0                   ; 2 uses
  %.1544..2540 = select i1 %i.jm, ptr %.1544, ptr %.2540
  %.1542..2537 = select i1 %i.jm, ptr %.1542, ptr %.2537
  store ptr %.1544..2540, ptr %i.b, align 8, !tbaa !21
  br label %select.unfold1025

bb.do:                                            ; preds = %bb.dk, %bb.dl
  %i.jn = shl nuw nsw i32 %.9, 1
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.jo ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !31 ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jp, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !31 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.0748924, i64 %i.js
  %i.ju = icmp samesign ult i64 %i.jq, %i.js
  br i1 %i.ju, label %.lr.ph1372.preheader, label %.thread952

.lr.ph1372.preheader:                             ; preds = %bb.do
  %i.jv = getelementptr inbounds nuw i8, ptr %.0748924, i64 %i.jq
  br label %.lr.ph1372

.lr.ph1372:                                       ; preds = %.lr.ph1372.preheader, %bb.eo
  %.05311370 = phi ptr [ %.1, %bb.eo ], [ %i.jv, %.lr.ph1372.preheader ] ; 13 uses
  %.105861369 = phi i64 [ %.11587, %bb.eo ], [ %.5581, %.lr.ph1372.preheader ] ; 6 uses
  %.106001368 = phi i64 [ %.11601, %bb.eo ], [ %.5595, %.lr.ph1372.preheader ] ; 5 uses
  %.106251367 = phi i64 [ %.11626, %bb.eo ], [ %.5620, %.lr.ph1372.preheader ] ; 3 uses
  %.106651366 = phi i32 [ %.11666, %bb.eo ], [ %.5660, %.lr.ph1372.preheader ]
  %.27091365 = phi i32 [ %.3710, %bb.eo ], [ %.1708, %.lr.ph1372.preheader ] ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.05311370, i64 1 ; 3 uses
  %i.jx = load i8, ptr %.05311370, align 1, !tbaa !19 ; 2 uses
  %i.jy = zext i8 %i.jx to i32                    ; 11 uses
  store i32 %i.jy, ptr %i.d, align 4, !tbaa !22
  %i.jz = icmp ugt i8 %i.jx, -65
  %or.cond27 = select i1 %i.m, i1 %i.jz, i1 false
  br i1 %or.cond27, label %bb.dp, label %bb.dy

bb.dp:                                            ; preds = %.lr.ph1372
  %i.ka = and i32 %i.jy, 32
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.kc = shl nuw nsw i32 %i.jy, 6
  %i.kd = and i32 %i.kc, 1984
  %i.ke = getelementptr inbounds nuw i8, ptr %.05311370, i64 2
  %i.kf = load i8, ptr %i.jw, align 1, !tbaa !19
  %i.kg = and i8 %i.kf, 63
  %i.kh = zext nneg i8 %i.kg to i32
  %i.ki = or disjoint i32 %i.kd, %i.kh            ; 2 uses
  store i32 %i.ki, ptr %i.d, align 4, !tbaa !22
  br label %bb.dy

bb.dr:                                            ; preds = %bb.dp
  %i.kj = and i32 %i.jy, 16
  %i.kk = icmp eq i32 %i.kj, 0
  %i.kl = load i8, ptr %i.jw, align 1, !tbaa !19
  %i.km = and i8 %i.kl, 63
  %i.kn = zext nneg i8 %i.km to i32               ; 4 uses
  br i1 %i.kk, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.ko = shl nuw nsw i32 %i.jy, 12
  %i.kp = and i32 %i.ko, 61440
  %i.kq = shl nuw nsw i32 %i.kn, 6
  %i.kr = or disjoint i32 %i.kq, %i.kp
  %i.ks = getelementptr inbounds nuw i8, ptr %.05311370, i64 2
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !19
  %i.ku = and i8 %i.kt, 63
  %i.kv = zext nneg i8 %i.ku to i32
  %i.kw = or disjoint i32 %i.kr, %i.kv            ; 2 uses
  store i32 %i.kw, ptr %i.d, align 4, !tbaa !22
  %i.kx = getelementptr inbounds nuw i8, ptr %.05311370, i64 3
  br label %bb.dy

bb.dt:                                            ; preds = %bb.dr
  %i.ky = and i32 %i.jy, 8
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.la = shl nuw nsw i32 %i.jy, 18
  %i.lb = and i32 %i.la, 1835008
  %i.lc = shl nuw nsw i32 %i.kn, 12
  %i.ld = or disjoint i32 %i.lc, %i.lb
  %i.le = getelementptr inbounds nuw i8, ptr %.05311370, i64 2
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !19
  %i.lg = and i8 %i.lf, 63
  %i.lh = zext nneg i8 %i.lg to i32
  %i.li = shl nuw nsw i32 %i.lh, 6
  %i.lj = or disjoint i32 %i.ld, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %.05311370, i64 3
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !19
  %i.lm = and i8 %i.ll, 63
  %i.ln = zext nneg i8 %i.lm to i32
  %i.lo = or disjoint i32 %i.lj, %i.ln            ; 2 uses
  store i32 %i.lo, ptr %i.d, align 4, !tbaa !22
  %i.lp = getelementptr inbounds nuw i8, ptr %.05311370, i64 4
  br label %bb.dy

bb.dv:                                            ; preds = %bb.dt
  %i.lq = and i32 %i.jy, 4
  %i.lr = icmp eq i32 %i.lq, 0
  %i.ls = getelementptr inbounds nuw i8, ptr %.05311370, i64 2
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !19
  %i.lu = and i8 %i.lt, 63
  %i.lv = zext nneg i8 %i.lu to i32               ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.05311370, i64 3
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !19
  %i.ly = and i8 %i.lx, 63
  %i.lz = zext nneg i8 %i.ly to i32               ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.05311370, i64 4
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !19
  %i.mc = and i8 %i.mb, 63
  %i.md = zext nneg i8 %i.mc to i32               ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.05311370, i64 5 ; 2 uses
  br i1 %i.lr, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.mf = shl nuw i32 %i.jy, 24
  %i.mg = and i32 %i.mf, 50331648
  %i.mh = shl nuw nsw i32 %i.kn, 18
  %i.mi = or disjoint i32 %i.mh, %i.mg
  %i.mj = shl nuw nsw i32 %i.lv, 12
  %i.mk = or disjoint i32 %i.mi, %i.mj
  %i.ml = shl nuw nsw i32 %i.lz, 6
  %i.mm = or disjoint i32 %i.mk, %i.ml
  %i.mn = or disjoint i32 %i.mm, %i.md            ; 2 uses
  store i32 %i.mn, ptr %i.d, align 4, !tbaa !22
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.mo = shl i32 %i.jy, 30
  %i.mp = and i32 %i.mo, 1073741824
  %i.mq = shl nuw nsw i32 %i.kn, 24
  %i.mr = or disjoint i32 %i.mq, %i.mp
  %i.ms = shl nuw nsw i32 %i.lv, 18
  %i.mt = or disjoint i32 %i.mr, %i.ms
  %i.mu = shl nuw nsw i32 %i.lz, 12
  %i.mv = or disjoint i32 %i.mt, %i.mu
  %i.mw = shl nuw nsw i32 %i.md, 6
  %i.mx = or disjoint i32 %i.mv, %i.mw
  %i.my = load i8, ptr %i.me, align 1, !tbaa !19
  %i.mz = and i8 %i.my, 63
  %i.na = zext nneg i8 %i.mz to i32
  %i.nb = or disjoint i32 %i.mx, %i.na            ; 2 uses
  store i32 %i.nb, ptr %i.d, align 4, !tbaa !22
  %i.nc = getelementptr inbounds nuw i8, ptr %.05311370, i64 6
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dq, %bb.du, %bb.dx, %bb.dw, %bb.ds, %.lr.ph1372
end_hunk_0
begin_hunk_1_@php_pcre2_substitute:bb.a
  %i.xb = ptrtoint ptr %.0750917 to i64
  %i.xc = sub i64 %i.xa, %i.xb
  store i64 %i.xc, ptr %10, align 8, !tbaa !31
  br label %.loopexit1218

.critedge889:                                     ; preds = %bb.gj, %bb.f, %bb.i, %bb.gx, %bb.gy, %bb.l, %bb.c, %bb.a, %bb.g
  %.3747 = phi i32 [ -48, %bb.i ], [ -34, %bb.a ], [ %.18742, %bb.gx ], [ -51, %bb.l ], [ -51, %bb.f ], [ -48, %bb.g ], [ -51, %bb.c ], [ %.18742, %bb.gy ], [ -48, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.3747
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @_pcre2_strlen_8(ptr noundef) local_unnamed_addr #2

declare ptr @php_pcre2_match_data_create_from_pattern(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @php_pcre2_match_data_create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @php_pcre2_get_ovector_pointer(ptr noundef) local_unnamed_addr #2

declare i32 @php_pcre2_get_ovector_count(ptr noundef) local_unnamed_addr #2

declare i32 @_pcre2_valid_utf_8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @php_pcre2_match(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_text_end(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = load ptr, ptr %1, align 8, !tbaa !21     ; 4 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !21
  %i.e = icmp ult ptr %i.d, %2
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %2, i64 -1 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %.02144 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.r ]
  %.02243 = phi i32 [ 0, %.lr.ph ], [ %.123, %bb.r ] ; 9 uses
  %storemerge42 = phi ptr [ %i.d, %.lr.ph ], [ %i.al, %bb.r ] ; 16 uses
  %.not = icmp eq i32 %.02144, 0
  %i.j = load i8, ptr %storemerge42, align 1, !tbaa !19 ; 4 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.j, 92
  %i.l = icmp ult ptr %storemerge42, %i.f
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge42, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !19
  %i.o = icmp ne i8 %i.n, 69                      ; 2 uses
  %spec.select = select i1 %i.o, ptr %storemerge42, ptr %i.m
  %spec.select54 = zext i1 %i.o to i32
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  %i.p = icmp eq i8 %i.j, 125
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i32 %.02243, 0
  br i1 %i.q, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add i32 %.02243, -1
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.s = icmp eq i8 %i.j, 58
  %or.cond.not36 = and i1 %i.g, %i.s
  %i.t = icmp eq i32 %.02243, 0
  %or.cond3 = select i1 %or.cond.not36, i1 %i.t, i1 false
  br i1 %or.cond3, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.j, label %bb.r [
    i8 36, label %bb.j
    i8 92, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.u = icmp ult ptr %storemerge42, %i.f
  br i1 %i.u, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge42, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !19
  %i.x = icmp eq i8 %i.w, 123                     ; 2 uses
  %spec.select55 = select i1 %i.x, ptr %i.v, ptr %storemerge42
  %i.y = zext i1 %i.x to i32
  %spec.select56 = add i32 %.02243, %i.y
  br label %bb.r

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.z = icmp ult ptr %storemerge42, %i.f
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge42, i64 1 ; 5 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !19
  switch i8 %i.ab, label %bb.n [
    i8 76, label %.thread
    i8 108, label %.thread
    i8 85, label %.thread
    i8 117, label %.thread
  ]

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge42, i64 1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !21
  %i.ad = load i32, ptr %i.h, align 8, !tbaa !18
  %i.ae = load i32, ptr %i.i, align 4, !tbaa !23
  %i.af = call i32 @_pcre2_check_escape_8(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef 0, ptr noundef null) #6
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -1 ; 3 uses
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !22  ; 2 uses
  %.not37 = icmp eq i32 %i.ai, 0
  br i1 %.not37, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  switch i32 %i.af, label %bb.q [
    i32 0, label %bb.p
    i32 25, label %bb.p
    i32 26, label %.thread
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.p, %bb.o
  %i.aj = phi ptr [ %i.ah, %bb.p ], [ %i.ah, %bb.o ], [ %i.aa, %bb.m ], [ %i.aa, %bb.m ], [ %i.aa, %bb.m ], [ %i.aa, %bb.m ]
  %.2.ph = phi i32 [ 0, %bb.p ], [ 1, %bb.o ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  %.125 = phi i32 [ -57, %bb.o ], [ %i.ai, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %.loopexit

bb.r:                                             ; preds = %bb.k, %bb.d, %.thread, %bb.i, %bb.c, %bb.j, %bb.g
  %i.ak = phi ptr [ %i.aj, %.thread ], [ %storemerge42, %bb.j ], [ %storemerge42, %bb.i ], [ %storemerge42, %bb.c ], [ %storemerge42, %bb.g ], [ %spec.select, %bb.d ], [ %spec.select55, %bb.k ]
  %.123 = phi i32 [ %.02243, %.thread ], [ %.02243, %bb.j ], [ %.02243, %bb.i ], [ %.02243, %bb.c ], [ %i.r, %bb.g ], [ %.02243, %bb.d ], [ %spec.select56, %bb.k ]
  %.3 = phi i32 [ %.2.ph, %.thread ], [ 0, %bb.j ], [ 0, %bb.i ], [ 1, %bb.c ], [ 0, %bb.g ], [ %spec.select54, %bb.d ], [ 0, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 4 uses
  store ptr %i.al, ptr %i.a, align 8, !tbaa !21
  %i.am = icmp ult ptr %i.al, %2
  br i1 %i.am, label %bb.b, label %.loopexit, !llvm.loop !56

.loopexit:                                        ; preds = %bb.f, %bb.h, %bb.r, %bb.a, %bb.q
  %i.an = phi ptr [ %i.ah, %bb.q ], [ %i.d, %bb.a ], [ %storemerge42, %bb.h ], [ %storemerge42, %bb.f ], [ %i.al, %bb.r ]
  %.327 = phi i32 [ %.125, %bb.q ], [ -58, %bb.a ], [ 0, %bb.h ], [ 0, %bb.f ], [ -58, %bb.r ]
  store ptr %i.an, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.327
}

declare i32 @_pcre2_strcmp_c8_8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @php_pcre2_get_mark(ptr noundef) local_unnamed_addr #2

declare i32 @php_pcre2_substring_nametable_scan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @php_pcre2_substring_length_bynumber(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_pcre2_ord2utf_8(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_pcre2_check_escape_8(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @php_pcre2_match_data_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"pcre2_memctl", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!"pcre2_real_code_8", !13, i64 0, !14, i64 24, !12, i64 32, !8, i64 40, !15, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !16, i64 120, !16, i64 122, !16, i64 124, !16, i64 126, !16, i64 128, !16, i64 130, !16, i64 132, !16, i64 134}
!18 = !{!17, !9, i64 88}
!19 = !{!8, !8, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!14, !14, i64 0}
!22 = !{!9, !9, i64 0}
!23 = !{!17, !9, i64 92}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = !{!15, !15, i64 0}
!32 = !{!17, !16, i64 128}
!33 = !{!"p1 _ZTS17pcre2_real_code_8", !12, i64 0}
!34 = !{!"p1 _ZTS9heapframe", !12, i64 0}
!35 = !{!"pcre2_real_match_data_8", !13, i64 0, !33, i64 24, !14, i64 32, !14, i64 40, !34, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !8, i64 96, !8, i64 97, !16, i64 98, !9, i64 100, !8, i64 104}
!36 = !{!35, !16, i64 98}
!37 = !{!"p1 long", !12, i64 0}
!38 = !{!"pcre2_substitute_callout_block_8", !9, i64 0, !14, i64 8, !14, i64 16, !8, i64 24, !37, i64 40, !9, i64 48, !9, i64 52}
!39 = !{!38, !9, i64 0}
!40 = !{!38, !14, i64 8}
!41 = !{!38, !14, i64 16}
!42 = !{!38, !37, i64 40}
!43 = !{!35, !15, i64 72}
!44 = !{!35, !9, i64 100}
!45 = !{!17, !16, i64 122}
!46 = !{!38, !9, i64 48}
!47 = !{!17, !14, i64 24}
!48 = !{!16, !16, i64 0}
!49 = !{!"", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !9, i64 4, !16, i64 8, !16, i64 10}
!50 = !{!49, !8, i64 1}
!51 = !{!49, !9, i64 4}
!52 = !{!"pcre2_real_match_context_8", !13, i64 0, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !15, i64 72, !9, i64 80, !9, i64 84, !9, i64 88}
!53 = !{!52, !12, i64 56}
!54 = !{!38, !9, i64 52}
!55 = !{!52, !12, i64 64}
!56 = distinct !{!56, !20}
end_hunk_1
