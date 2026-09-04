Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zip?download=true
inline.NumInlined: 42
inline.NumDeleted: 6
begin_hunk_0_@phar_parse_zipfile:bb.a
  %i.gx = and i16 %i.gw, 256
  %.not1599 = icmp eq i16 %i.gx, 0
  %i.gy = load ptr, ptr %i.bg, align 8, !tbaa !28 ; 2 uses
  br i1 %.not1599, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @free(ptr noundef %i.gy) #14
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  call void @_efree(ptr noundef %i.gy) #14
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !35 ; 3 uses
  %.not1600 = icmp eq ptr %i.ha, null
  br i1 %.not1600, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hb = load i16, ptr %i.bj, align 4
  %i.hc = and i16 %i.hb, 256
  %.not1601 = icmp eq i16 %i.hc, 0
  br i1 %.not1601, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @free(ptr noundef nonnull %i.ha) #14
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  call void @_efree(ptr noundef nonnull %i.ha) #14
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.br
  %i.hd = load i16, ptr %i.bj, align 4
  %i.he = and i16 %i.hd, 256
  %.not1602 = icmp eq i16 %i.he, 0
  br i1 %.not1602, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @free(ptr noundef nonnull %i.bg) #14
  br label %.thread1716

bb.bx:                                            ; preds = %bb.bv
  call void @_efree(ptr noundef nonnull %i.bg) #14
  br label %.thread1716

bb.by:                                            ; preds = %bb.bj
  %i.hf = load i16, ptr %i.dq, align 2
  %i.hg = and i16 %i.hf, 256
  %.not1370 = icmp eq i16 %i.hg, 0
  br i1 %.not1370, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 %indvars.iv, ptr %i.eb, align 4, !tbaa !85
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.hh = load i32, ptr %i.ed, align 1
  store i32 %i.hh, ptr %12, align 8, !tbaa !36
  %i.hi = load <2 x i32>, ptr %i.ee, align 1
  %i.hj = shufflevector <2 x i32> %i.hi, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.hj, ptr %i.ec, align 8, !tbaa !37
  %.val = load i8, ptr %i.eg, align 1, !tbaa !12
  %.val1694 = load i8, ptr %i.ei, align 1, !tbaa !12
  %.val1695 = load i8, ptr %i.eh, align 1, !tbaa !12
  %.val1696 = load i8, ptr %i.ej, align 1, !tbaa !12
  %i.hk = zext i8 %.val to i32                    ; 2 uses
  %i.hl = zext i8 %.val1694 to i32                ; 2 uses
  %i.hm = shl nuw nsw i32 %i.hl, 8
  %i.hn = or disjoint i32 %i.hm, %i.hk
  %i.ho = zext i8 %.val1695 to i32                ; 2 uses
  %i.hp = zext i8 %.val1696 to i32                ; 2 uses
  %i.hq = shl nuw nsw i32 %i.hp, 8
  %i.hr = or disjoint i32 %i.hq, %i.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.hs = call i64 @time(ptr noundef null) #14
  store i64 %i.hs, ptr %i.a, align 8, !tbaa !38
  %i.ht = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %7) #14 ; 7 uses
  %i.hu = lshr i32 %i.hp, 1
  %i.hv = add nuw nsw i32 %i.hu, 80
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 20
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !40
  %i.hx = lshr i32 %i.hr, 5
  %i.hy = and i32 %i.hx, 15
  %i.hz = add nsw i32 %i.hy, -1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store i32 %i.hz, ptr %i.ia, align 8, !tbaa !41
  %i.ib = and i32 %i.ho, 31
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !42
  %i.id = lshr i32 %i.hl, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store i32 %i.id, ptr %i.ie, align 8, !tbaa !43
  %i.if = lshr i32 %i.hn, 5
  %i.ig = and i32 %i.if, 63
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !44
  %i.ii = shl nuw nsw i32 %i.hk, 1
  %i.ij = and i32 %i.ii, 62
  store i32 %i.ij, ptr %i.ht, align 8, !tbaa !45
  %i.ik = call noundef i64 @mktime(ptr noundef nonnull %i.ht) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.il = trunc i64 %i.ik to i32
  store i32 %i.il, ptr %i.ek, align 4, !tbaa !46
  store i32 438, ptr %i.el, align 8, !tbaa !47
  %i.im = load i32, ptr %i.em, align 1
  %i.in = zext i32 %i.im to i64
  store i64 %i.in, ptr %i.en, align 8, !tbaa !48
  %i.io = load i8, ptr %i.eo, align 1, !tbaa !12
  %i.ip = and i8 %i.io, 1
  %.not1371 = icmp eq i8 %i.ip, 0
  br i1 %.not1371, label %bb.cp, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_efree(ptr noundef %.012011873) #14
  call void @zend_hash_destroy(ptr noundef nonnull %i.dc) #14
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  store i32 8, ptr %i.iq, align 8, !tbaa !12
  call void @zend_hash_destroy(ptr noundef nonnull %i.dg) #14
  %i.ir = getelementptr inbounds nuw i8, ptr %i.bg, i64 184
  store i32 8, ptr %i.ir, align 8, !tbaa !12
  call void @zend_hash_destroy(ptr noundef nonnull %i.dk) #14
  %i.is = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  store i32 8, ptr %i.is, align 8, !tbaa !12
  %i.it = call i32 @_php_stream_free(ptr noundef %0, i32 noundef 3) #14 ; 0 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bg, i64 288
  %i.iv = load i16, ptr %i.bj, align 4
  %i.iw = and i16 %i.iv, 256
  %i.ix = icmp ne i16 %i.iw, 0
  call void @phar_metadata_tracker_free(ptr noundef nonnull %i.iu, i1 noundef zeroext %i.ix) #14
  %i.iy = load ptr, ptr %i.fj, align 8, !tbaa !84 ; 2 uses
  %.not1591 = icmp eq ptr %i.iy, null
  br i1 %.not1591, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_efree(ptr noundef nonnull %i.iy) #14
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.not1592 = icmp eq ptr %6, null
  br i1 %.not1592, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.iz = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.ja = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, ptr noundef %i.iz) #14 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.jb = load i16, ptr %i.bj, align 4
  %i.jc = and i16 %i.jb, 256
  %.not1593 = icmp eq i16 %i.jc, 0
  %i.jd = load ptr, ptr %i.bg, align 8, !tbaa !28 ; 2 uses
  br i1 %.not1593, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @free(ptr noundef %i.jd) #14
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  call void @_efree(ptr noundef %i.jd) #14
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.je = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !35 ; 3 uses
  %.not1594 = icmp eq ptr %i.jf, null
  br i1 %.not1594, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jg = load i16, ptr %i.bj, align 4
  %i.jh = and i16 %i.jg, 256
  %.not1595 = icmp eq i16 %i.jh, 0
  br i1 %.not1595, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @free(ptr noundef nonnull %i.jf) #14
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  call void @_efree(ptr noundef nonnull %i.jf) #14
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl, %bb.ci
  %i.ji = load i16, ptr %i.bj, align 4
  %i.jj = and i16 %i.ji, 256
  %.not1596 = icmp eq i16 %i.jj, 0
  br i1 %.not1596, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @free(ptr noundef nonnull %i.bg) #14
  br label %.thread1716

bb.co:                                            ; preds = %bb.cm
  call void @_efree(ptr noundef nonnull %i.bg) #14
  br label %.thread1716

bb.cp:                                            ; preds = %bb.ca
  %i.jk = load i16, ptr %i.ep, align 1            ; 4 uses
  %.not1372 = icmp eq i16 %i.jk, 0
  br i1 %.not1372, label %bb.cq, label %bb.de

bb.cq:                                            ; preds = %bb.cp
  call void @_efree(ptr noundef %.012011873) #14
  call void @zend_hash_destroy(ptr noundef nonnull %i.dc) #14
  %i.jl = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  store i32 8, ptr %i.jl, align 8, !tbaa !12
  call void @zend_hash_destroy(ptr noundef nonnull %i.dg) #14
  %i.jm = getelementptr inbounds nuw i8, ptr %i.bg, i64 184
  store i32 8, ptr %i.jm, align 8, !tbaa !12
  call void @zend_hash_destroy(ptr noundef nonnull %i.dk) #14
  %i.jn = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  store i32 8, ptr %i.jn, align 8, !tbaa !12
  %i.jo = call i32 @_php_stream_free(ptr noundef %0, i32 noundef 3) #14 ; 0 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bg, i64 288
  %i.jq = load i16, ptr %i.bj, align 4
  %i.jr = and i16 %i.jq, 256
  %i.js = icmp ne i16 %i.jr, 0
  call void @phar_metadata_tracker_free(ptr noundef nonnull %i.jp, i1 noundef zeroext %i.js) #14
  %i.jt = load ptr, ptr %i.fj, align 8, !tbaa !84 ; 2 uses
  %.not1373 = icmp eq ptr %i.jt, null
  br i1 %.not1373, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_efree(ptr noundef nonnull %i.jt) #14
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.not1374 = icmp eq ptr %6, null
  br i1 %.not1374, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ju = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.jv = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11, ptr noundef %i.ju) #14 ; 0 uses
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.jw = load i16, ptr %i.bj, align 4
  %i.jx = and i16 %i.jw, 256
  %.not1375 = icmp eq i16 %i.jx, 0
  %i.jy = load ptr, ptr %i.bg, align 8, !tbaa !28 ; 2 uses
  br i1 %.not1375, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @free(ptr noundef %i.jy) #14
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  call void @_efree(ptr noundef %i.jy) #14
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.jz = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !35 ; 3 uses
  %.not1376 = icmp eq ptr %i.ka, null
  br i1 %.not1376, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kb = load i16, ptr %i.bj, align 4
  %i.kc = and i16 %i.kb, 256
  %.not1377 = icmp eq i16 %i.kc, 0
  br i1 %.not1377, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @free(ptr noundef nonnull %i.ka) #14
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  call void @_efree(ptr noundef nonnull %i.ka) #14
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da, %bb.cx
  %i.kd = load i16, ptr %i.bj, align 4
  %i.ke = and i16 %i.kd, 256
  %.not1378 = icmp eq i16 %i.ke, 0
  br i1 %.not1378, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @free(ptr noundef nonnull %i.bg) #14
  br label %.thread1716

bb.dd:                                            ; preds = %bb.db
  call void @_efree(ptr noundef nonnull %i.bg) #14
  br label %.thread1716

bb.de:                                            ; preds = %bb.cp
  %15 = zext i16 %i.jk to i32                     ; 2 uses
  %i.kf = zext i16 %i.jk to i64                   ; 5 uses
  %i.kg = load i16, ptr %i.dq, align 2
  %i.kh = and i16 %i.kg, 256
  %.not1735 = icmp eq i16 %i.kh, 0
  %i.ki = add nuw nsw i64 %i.kf, 32
  %i.kj = and i64 %i.ki, 131064                   ; 2 uses
  br i1 %.not1735, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.kk = call noalias ptr @__zend_malloc(i64 noundef %i.kj) #17
  br label %zend_string_alloc.exit

bb.dg:                                            ; preds = %bb.de
  %i.kl = call noalias ptr @_emalloc(i64 noundef %i.kj) #17
  br label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %bb.df, %bb.dg
  %i.km = phi i32 [ 150, %bb.df ], [ 22, %bb.dg ]
  %i.kn = phi ptr [ %i.kk, %bb.df ], [ %i.kl, %bb.dg ] ; 6 uses
  store i32 1, ptr %i.kn, align 4, !tbaa !49
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  store i32 %i.km, ptr %i.ko, align 4, !tbaa !12
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store i64 0, ptr %i.kp, align 8, !tbaa !51
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  store i64 %i.kf, ptr %i.kq, align 8, !tbaa !52
  store ptr %i.kn, ptr %i.eq, align 8, !tbaa !53
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.ks = call i64 @_php_stream_read(ptr noundef %0, ptr noundef nonnull %i.kr, i64 noundef %i.kf) #14
  %.not1379 = icmp eq i64 %i.ks, %i.kf
  %i.kt = load ptr, ptr %i.eq, align 8, !tbaa !53 ; 6 uses
  br i1 %.not1379, label %bb.dy, label %bb.dh

bb.dh:                                            ; preds = %zend_string_alloc.exit
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !12 ; 2 uses
  %i.kw = and i32 %i.kv, 64
  %.not.i1624 = icmp eq i32 %i.kw, 0
  br i1 %.not.i1624, label %bb.di, label %zend_string_free.exit1626

bb.di:                                            ; preds = %bb.dh
  %i.kx = and i32 %i.kv, 128
  %.not4.i1625 = icmp eq i32 %i.kx, 0
  br i1 %.not4.i1625, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @free(ptr noundef nonnull %i.kt) #14
  br label %zend_string_free.exit1626

bb.dk:                                            ; preds = %bb.di
  call void @_efree(ptr noundef nonnull %i.kt) #14
  br label %zend_string_free.exit1626

zend_string_free.exit1626:                        ; preds = %bb.dh, %bb.dj, %bb.dk
  call void @_efree(ptr noundef %.012011873) #14
  call void @zend_hash_destroy(ptr noundef nonnull %i.dc) #14
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  store i32 8, ptr %i.ky, align 8, !tbaa !12
  call void @zend_hash_destroy(ptr noundef nonnull %i.dg) #14
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bg, i64 184
  store i32 8, ptr %i.kz, align 8, !tbaa !12
  call void @zend_hash_destroy(ptr noundef nonnull %i.dk) #14
  %i.la = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  store i32 8, ptr %i.la, align 8, !tbaa !12
  %i.lb = call i32 @_php_stream_free(ptr noundef %0, i32 noundef 3) #14 ; 0 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bg, i64 288
  %i.ld = load i16, ptr %i.bj, align 4
  %i.le = and i16 %i.ld, 256
  %i.lf = icmp ne i16 %i.le, 0
  call void @phar_metadata_tracker_free(ptr noundef nonnull %i.lc, i1 noundef zeroext %i.lf) #14
  %i.lg = load ptr, ptr %i.fj, align 8, !tbaa !84 ; 2 uses
  %.not1585 = icmp eq ptr %i.lg, null
  br i1 %.not1585, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %zend_string_free.exit1626
  call void @_efree(ptr noundef nonnull %i.lg) #14
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %zend_string_free.exit1626
  %.not1586 = icmp eq ptr %6, null
  br i1 %.not1586, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.lh = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.li = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12, ptr noundef %i.lh) #14 ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.lj = load i16, ptr %i.bj, align 4
  %i.lk = and i16 %i.lj, 256
  %.not1587 = icmp eq i16 %i.lk, 0
  %i.ll = load ptr, ptr %i.bg, align 8, !tbaa !28 ; 2 uses
  br i1 %.not1587, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @free(ptr noundef %i.ll) #14
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  call void @_efree(ptr noundef %i.ll) #14
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !35 ; 3 uses
  %.not1588 = icmp eq ptr %i.ln, null
  br i1 %.not1588, label %bb.dv, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.lo = load i16, ptr %i.bj, align 4
  %i.lp = and i16 %i.lo, 256
  %.not1589 = icmp eq i16 %i.lp, 0
  br i1 %.not1589, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @free(ptr noundef nonnull %i.ln) #14
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  call void @_efree(ptr noundef nonnull %i.ln) #14
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dt, %bb.du, %bb.dr
  %i.lq = load i16, ptr %i.bj, align 4
  %i.lr = and i16 %i.lq, 256
  %.not1590 = icmp eq i16 %i.lr, 0
  br i1 %.not1590, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @free(ptr noundef nonnull %i.bg) #14
  br label %.thread1716

bb.dx:                                            ; preds = %bb.dv
  call void @_efree(ptr noundef nonnull %i.bg) #14
  br label %.thread1716

bb.dy:                                            ; preds = %zend_string_alloc.exit
  %i.ls = getelementptr i8, ptr %i.kt, i64 %i.kf
  %i.lt = getelementptr i8, ptr %i.ls, i64 23
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !12
  %i.lv = icmp eq i8 %i.lu, 47
  %i.lw = load i16, ptr %i.dq, align 2            ; 2 uses
  br i1 %i.lv, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %i.lx = or i16 %i.lw, 8
  store i16 %i.lx, ptr %i.dq, align 2
  %.not1380 = icmp eq i16 %i.jk, 1
  br i1 %.not1380, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %16 = add nsw i32 %15, -1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !52
  %i.ma = add i64 %i.lz, -1
  store i64 %i.ma, ptr %i.ly, align 8, !tbaa !52
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.0 = phi i32 [ %16, %bb.ea ], [ 1, %bb.dz ]
  %i.mb = load i32, ptr %i.el, align 8, !tbaa !47
  %i.mc = or i32 %i.mb, 511
  store i32 %i.mc, ptr %i.el, align 8, !tbaa !47
  br label %bb.ed

bb.ec:                                            ; preds = %bb.dy
  %i.md = and i16 %i.lw, -9
  store i16 %i.md, ptr %i.dq, align 2
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.1 = phi i32 [ %.0, %bb.eb ], [ %15, %bb.ec ]
  %i.me = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %17 = zext nneg i32 %.1 to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 %17
  store i8 0, ptr %i.mf, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.mg = load i16, ptr %i.dq, align 2
  %i.mh = and i16 %i.mg, 8
  %.not1381 = icmp eq i16 %i.mh, 0
  br i1 %.not1381, label %bb.ee, label %bb.fo

bb.ee:                                            ; preds = %bb.ed
  %i.mi = call i64 @_php_stream_tell(ptr noundef %0) #14
  %i.mj = load i64, ptr %i.en, align 8, !tbaa !48
  %i.mk = call i32 @_php_stream_seek(ptr noundef %0, i64 noundef %i.mj, i32 noundef 0) #14 ; 0 uses
  %i.ml = call i64 @_php_stream_read(ptr noundef %0, ptr noundef nonnull %14, i64 noundef 30) #14
  %.not1382 = icmp eq i64 %i.ml, 30
  br i1 %.not1382, label %bb.ew, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.mm = load ptr, ptr %i.eq, align 8, !tbaa !53 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !12 ; 2 uses
  %i.mp = and i32 %i.mo, 64
  %.not.i1621 = icmp eq i32 %i.mp, 0
  br i1 %.not.i1621, label %bb.eg, label %zend_string_free.exit1623

bb.eg:                                            ; preds = %bb.ef
  %i.mq = and i32 %i.mo, 128
  %.not4.i1622 = icmp eq i32 %i.mq, 0
  br i1 %.not4.i1622, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @free(ptr noundef nonnull %i.mm) #14
  br label %zend_string_free.exit1623

bb.ei:                                            ; preds = %bb.eg
  call void @_efree(ptr noundef nonnull %i.mm) #14
  br label %zend_string_free.exit1623

zend_string_free.exit1623:                        ; preds = %bb.ef, %bb.eh, %bb.ei
  call void @_efree(ptr noundef %.012011873) #14
  call void @zend_hash_destroy(ptr noundef nonnull %i.dc) #14
  %i.mr = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  store i32 8, ptr %i.mr, align 8, !tbaa !12
  call void @zend_hash_destroy(ptr noundef nonnull %i.dg) #14
  %i.ms = getelementptr inbounds nuw i8, ptr %i.bg, i64 184
  store i32 8, ptr %i.ms, align 8, !tbaa !12
  call void @zend_hash_destroy(ptr noundef nonnull %i.dk) #14
  %i.mt = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  store i32 8, ptr %i.mt, align 8, !tbaa !12
  %i.mu = call i32 @_php_stream_free(ptr noundef %0, i32 noundef 3) #14 ; 0 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.bg, i64 288
  %i.mw = load i16, ptr %i.bj, align 4
  %i.mx = and i16 %i.mw, 256
  %i.my = icmp ne i16 %i.mx, 0
  call void @phar_metadata_tracker_free(ptr noundef nonnull %i.mv, i1 noundef zeroext %i.my) #14
  %i.mz = load ptr, ptr %i.fj, align 8, !tbaa !84 ; 2 uses
  %.not1390 = icmp eq ptr %i.mz, null
  br i1 %.not1390, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %zend_string_free.exit1623
  call void @_efree(ptr noundef nonnull %i.mz) #14
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %zend_string_free.exit1623
  %.not1391 = icmp eq ptr %6, null
  br i1 %.not1391, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.na = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.nb = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.13, ptr noundef %i.na) #14 ; 0 uses
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.nc = load i16, ptr %i.bj, align 4
  %i.nd = and i16 %i.nc, 256
  %.not1392 = icmp eq i16 %i.nd, 0
  %i.ne = load ptr, ptr %i.bg, align 8, !tbaa !28 ; 2 uses
  br i1 %.not1392, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @free(ptr noundef %i.ne) #14
  br label %bb.ep

bb.eo:                                            ; preds = %bb.em
  call void @_efree(ptr noundef %i.ne) #14
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.nf = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !35 ; 3 uses
  %.not1393 = icmp eq ptr %i.ng, null
  br i1 %.not1393, label %bb.et, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.nh = load i16, ptr %i.bj, align 4
  %i.ni = and i16 %i.nh, 256
  %.not1394 = icmp eq i16 %i.ni, 0
  br i1 %.not1394, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @free(ptr noundef nonnull %i.ng) #14
  br label %bb.et

bb.es:                                            ; preds = %bb.eq
  call void @_efree(ptr noundef nonnull %i.ng) #14
  br label %bb.et

bb.et:                                            ; preds = %bb.er, %bb.es, %bb.ep
  %i.nj = load i16, ptr %i.bj, align 4
  %i.nk = and i16 %i.nj, 256
  %.not1395 = icmp eq i16 %i.nk, 0
  br i1 %.not1395, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @free(ptr noundef nonnull %i.bg) #14
  br label %.thread1720

bb.ev:                                            ; preds = %bb.et
  call void @_efree(ptr noundef nonnull %i.bg) #14
  br label %.thread1720

bb.ew:                                            ; preds = %bb.ee
  %i.nl = call i32 @_php_stream_seek(ptr noundef %0, i64 noundef %i.mi, i32 noundef 0) #14 ; 0 uses
  %i.nm = load ptr, ptr %i.eq, align 8, !tbaa !53 ; 5 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !52 ; 3 uses
  %i.np = load i16, ptr %i.eu, align 1
  %i.nq = zext i16 %i.np to i64
  %.not1383 = icmp eq i64 %i.no, %i.nq
  br i1 %.not1383, label %.critedge, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !12 ; 2 uses
  %i.nt = and i32 %i.ns, 64
  %.not.i1618 = icmp eq i32 %i.nt, 0
  br i1 %.not.i1618, label %bb.ey, label %zend_string_free.exit1620

bb.ey:                                            ; preds = %bb.ex
  %i.nu = and i32 %i.ns, 128
  %.not4.i1619 = icmp eq i32 %i.nu, 0
  br i1 %.not4.i1619, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @free(ptr noundef nonnull %i.nm) #14
  br label %zend_string_free.exit1620

bb.fa:                                            ; preds = %bb.ey
  call void @_efree(ptr noundef nonnull %i.nm) #14
  br label %zend_string_free.exit1620

zend_string_free.exit1620:                        ; preds = %bb.ex, %bb.ez, %bb.fa
  call void @_efree(ptr noundef %.012011873) #14
  call void @zend_hash_destroy(ptr noundef nonnull %i.dc) #14
  %i.nv = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  store i32 8, ptr %i.nv, align 8, !tbaa !12
  call void @zend_hash_destroy(ptr noundef nonnull %i.dg) #14
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bg, i64 184
  store i32 8, ptr %i.nw, align 8, !tbaa !12
  call void @zend_hash_destroy(ptr noundef nonnull %i.dk) #14
  %i.nx = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  store i32 8, ptr %i.nx, align 8, !tbaa !12
  %i.ny = call i32 @_php_stream_free(ptr noundef %0, i32 noundef 3) #14 ; 0 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.bg, i64 288
  %i.oa = load i16, ptr %i.bj, align 4
  %i.ob = and i16 %i.oa, 256
  %i.oc = icmp ne i16 %i.ob, 0
  call void @phar_metadata_tracker_free(ptr noundef nonnull %i.nz, i1 noundef zeroext %i.oc) #14
  %i.od = load ptr, ptr %i.fj, align 8, !tbaa !84 ; 2 uses
  %.not1384 = icmp eq ptr %i.od, null
  br i1 %.not1384, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %zend_string_free.exit1620
  call void @_efree(ptr noundef nonnull %i.od) #14
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %zend_string_free.exit1620
  %.not1385 = icmp eq ptr %6, null
  br i1 %.not1385, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.oe = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.of = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.14, ptr noundef %i.oe) #14 ; 0 uses
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.og = load i16, ptr %i.bj, align 4
  %i.oh = and i16 %i.og, 256
  %.not1386 = icmp eq i16 %i.oh, 0
  %i.oi = load ptr, ptr %i.bg, align 8, !tbaa !28 ; 2 uses
  br i1 %.not1386, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @free(ptr noundef %i.oi) #14
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  call void @_efree(ptr noundef %i.oi) #14
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.oj = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
end_hunk_0
