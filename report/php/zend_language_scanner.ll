Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_language_scanner?download=true
inline.NumInlined: 61
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lex_scan:bb.a

zend_string_alloc.exit.new:                       ; preds = %zend_string_alloc.exit, %.prol.loopexit.unr-lcssa
  %.unr = phi i32 [ %.promoted10123, %zend_string_alloc.exit ], [ %i.hy, %.prol.loopexit.unr-lcssa ]
  %.04960.unr = phi ptr [ %i.hs, %zend_string_alloc.exit ], [ %i.hz, %.prol.loopexit.unr-lcssa ]
  br label %bb.az

bb.az:                                            ; preds = %bb.bf, %zend_string_alloc.exit.new
  %i.ia = phi i32 [ %.unr, %zend_string_alloc.exit.new ], [ %i.in, %bb.bf ] ; 3 uses
  %.04960 = phi ptr [ %.04960.unr, %zend_string_alloc.exit.new ], [ %i.io, %bb.bf ] ; 7 uses
  %i.ib = load i8, ptr %.04960, align 1, !tbaa !44
  switch i8 %i.ib, label %bb.bc [
    i8 92, label %.preheader6625
    i8 10, label %bb.bb
    i8 13, label %bb.ba
  ], !prof !137

.preheader6625.loopexit.split.loop.exit:          ; preds = %bb.bc
  %i.ic = getelementptr inbounds nuw i8, ptr %.04960, i64 1
  br label %.preheader6625

.preheader6625:                                   ; preds = %.preheader6625.loopexit.split.loop.exit, %bb.az, %.prol.preheader
  %.04960.lcssa = phi ptr [ %i.hs, %.prol.preheader ], [ %i.ic, %.preheader6625.loopexit.split.loop.exit ], [ %.04960, %bb.az ] ; 4 uses
  %i.id = icmp ult ptr %.04960.lcssa, %i.ht
  br i1 %i.id, label %.lr.ph10126, label %._crit_edge10127

bb.ba:                                            ; preds = %bb.az
  %i.ie = getelementptr inbounds nuw i8, ptr %.04960, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !44
  %.not6135 = icmp eq i8 %i.if, 10
  br i1 %.not6135, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.ig = add nsw i32 %i.ia, 1                    ; 2 uses
  store i32 %i.ig, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.bb, %bb.ba
  %i.ih = phi i32 [ %i.ia, %bb.az ], [ %i.ig, %bb.bb ], [ %i.ia, %bb.ba ] ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.04960, i64 1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !44
  switch i8 %i.ij, label %bb.bf [
    i8 92, label %.preheader6625.loopexit.split.loop.exit
    i8 10, label %bb.be
    i8 13, label %bb.bd
  ], !prof !137

bb.bd:                                            ; preds = %bb.bc
  %i.ik = getelementptr inbounds nuw i8, ptr %.04960, i64 2
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !44
  %.not6135.1 = icmp eq i8 %i.il, 10
  br i1 %.not6135.1, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.im = add nsw i32 %i.ih, 1                    ; 2 uses
  store i32 %i.im, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.in = phi i32 [ %i.ih, %bb.bc ], [ %i.im, %bb.be ], [ %i.ih, %bb.bd ]
  %i.io = getelementptr inbounds nuw i8, ptr %.04960, i64 2 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.ht
  br i1 %i.ip, label %.loopexit6626, label %bb.az

.lr.ph10126thread-pre-split:                      ; preds = %bb.bn
  %.pr = load i8, ptr %i.jd, align 1, !tbaa !44
  br label %.lr.ph10126

.lr.ph10126:                                      ; preds = %.preheader6625, %.lr.ph10126thread-pre-split
  %i.iq = phi i8 [ %.pr, %.lr.ph10126thread-pre-split ], [ 92, %.preheader6625 ] ; 2 uses
  %.1496110125 = phi ptr [ %i.jd, %.lr.ph10126thread-pre-split ], [ %.04960.lcssa, %.preheader6625 ] ; 2 uses
  %.0496410124 = phi ptr [ %.14965, %.lr.ph10126thread-pre-split ], [ %.04960.lcssa, %.preheader6625 ] ; 6 uses
  %i.ir = icmp eq i8 %i.iq, 92
  br i1 %i.ir, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %.lr.ph10126
  %i.is = getelementptr inbounds nuw i8, ptr %.1496110125, i64 1 ; 4 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !44  ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0496410124, i64 1 ; 2 uses
  switch i8 %i.it, label %bb.bi [
    i8 92, label %bb.bh
    i8 39, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  store i8 %i.it, ptr %.0496410124, align 1, !tbaa !44
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  store i8 92, ptr %.0496410124, align 1, !tbaa !44
  %i.iv = load i8, ptr %i.is, align 1, !tbaa !44
  %i.iw = getelementptr inbounds nuw i8, ptr %.0496410124, i64 2
  store i8 %i.iv, ptr %i.iu, align 1, !tbaa !44
  br label %bb.bk

bb.bj:                                            ; preds = %.lr.ph10126
  %i.ix = getelementptr inbounds nuw i8, ptr %.0496410124, i64 1
  store i8 %i.iq, ptr %.0496410124, align 1, !tbaa !44
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bi, %bb.bj
  %.14965 = phi ptr [ %i.iu, %bb.bh ], [ %i.iw, %bb.bi ], [ %i.ix, %bb.bj ] ; 2 uses
  %.24962 = phi ptr [ %i.is, %bb.bh ], [ %i.is, %bb.bi ], [ %.1496110125, %bb.bj ] ; 3 uses
  %i.iy = load i8, ptr %.24962, align 1, !tbaa !44
  switch i8 %i.iy, label %bb.bn [
    i8 10, label %bb.bm
    i8 13, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.iz = getelementptr inbounds nuw i8, ptr %.24962, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !44
  %.not6136 = icmp eq i8 %i.ja, 10
  br i1 %.not6136, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.jb = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  %i.jc = add nsw i32 %i.jb, 1
  store i32 %i.jc, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %bb.bm, %bb.bl
  %i.jd = getelementptr inbounds nuw i8, ptr %.24962, i64 1 ; 3 uses
  %i.je = icmp ult ptr %i.jd, %i.ht
  br i1 %i.je, label %.lr.ph10126thread-pre-split, label %._crit_edge10127, !llvm.loop !174

._crit_edge10127:                                 ; preds = %bb.bn, %.preheader6625
  %.04964.lcssa = phi ptr [ %.04960.lcssa, %.preheader6625 ], [ %.14965, %bb.bn ] ; 2 uses
  store i8 0, ptr %.04964.lcssa, align 1, !tbaa !44
  %i.jf = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = ptrtoint ptr %.04964.lcssa to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store i64 %i.jj, ptr %i.jk, align 8, !tbaa !84
  br label %.loopexit6626

.loopexit6626:                                    ; preds = %bb.bf, %bb.at, %bb.aw, %._crit_edge10127
  %i.jl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 208), align 8, !tbaa !89 ; 2 uses
  %.not6138 = icmp eq ptr %i.jl, null
  br i1 %.not6138, label %.thread6564, label %zend_string_alloc.exit6390

zend_string_alloc.exit6390:                       ; preds = %.loopexit6626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  store i64 0, ptr %i.h, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store ptr null, ptr %i.i, align 8, !tbaa !51
  %i.jm = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !84
  %i.jq = call i64 %i.jl(ptr noundef nonnull %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.jn, i64 noundef %i.jp) #16 ; 0 uses
  %i.jr = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.js = load i64, ptr %i.h, align 8, !tbaa !92  ; 4 uses
  %i.jt = and i64 %i.js, -8
  %i.ju = add i64 %i.jt, 32
  %i.jv = call noalias ptr @_emalloc(i64 noundef %i.ju) #17 ; 6 uses
  store i32 1, ptr %i.jv, align 4, !tbaa !45
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4 ; 2 uses
  store i32 22, ptr %i.jw, align 4, !tbaa !44
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i64 0, ptr %i.jx, align 8, !tbaa !83
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store i64 %i.js, ptr %i.jy, align 8, !tbaa !84
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jz, ptr align 1 %i.jr, i64 %i.js, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.js
  store i8 0, ptr %i.ka, align 1, !tbaa !44
  %i.kb = load ptr, ptr %i.i, align 8, !tbaa !51  ; 2 uses
  %.not6139 = icmp eq ptr %i.kb, %i.jn
  br i1 %.not6139, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %zend_string_alloc.exit6390
  call void @_efree(ptr noundef %i.kb) #16
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %zend_string_alloc.exit6390
  %i.kc = load ptr, ptr %0, align 8, !tbaa !44    ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !44
  %i.kf = and i32 %i.ke, 64
  %.not.i6386 = icmp eq i32 %i.kf, 0
  br i1 %.not.i6386, label %bb.bq, label %zend_string_release_ex.exit6387

bb.bq:                                            ; preds = %bb.bp
  %i.kg = load i32, ptr %i.kc, align 4, !tbaa !45 ; 2 uses
  %i.kh = icmp ne i32 %i.kg, 0
  call void @llvm.assume(i1 %i.kh)
  %i.ki = add i32 %i.kg, -1                       ; 2 uses
  store i32 %i.ki, ptr %i.kc, align 4, !tbaa !45
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.br, label %zend_string_release_ex.exit6387

bb.br:                                            ; preds = %bb.bq
  call void @_efree(ptr noundef nonnull %i.kc) #16
  br label %zend_string_release_ex.exit6387

zend_string_release_ex.exit6387:                  ; preds = %bb.bp, %bb.bq, %bb.br
  store ptr %i.jv, ptr %0, align 8, !tbaa !44
  %i.kk = load i32, ptr %i.jw, align 4, !tbaa !44
  %13 = shl i32 %i.kk, 2
  %14 = and i32 %13, 256
  %15 = xor i32 %14, 262
  store i32 %15, ptr %i.u, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  br label %.thread6564

bb.bs:                                            ; preds = %bb.k
  %i.kl = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 13 uses
  store ptr %i.kl, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  store ptr %i.kl, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 48), align 8, !tbaa !131
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !44  ; 22 uses
  %i.kn = icmp ult i8 %i.km, 84
  br i1 %i.kn, label %bb.bt, label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  %i.ko = icmp samesign ult i8 %i.km, 69
  br i1 %i.ko, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.kp = icmp samesign ult i8 %i.km, 33
  br i1 %i.kp, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  switch i8 %i.km, label %.loopexit7061 [
    i8 32, label %.preheader6867.preheader
    i8 9, label %.preheader6867.preheader
  ]

bb.bw:                                            ; preds = %bb.bu
  %i.kq = icmp samesign ugt i8 %i.km, 64
  %i.kr = icmp ne i8 %i.km, 67
  %or.cond74 = and i1 %i.kq, %i.kr
  br i1 %or.cond74, label %.preheader6867.preheader, label %.loopexit7061

bb.bx:                                            ; preds = %bb.bt
  %i.ks = icmp samesign ult i8 %i.km, 74
  br i1 %i.ks, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  switch i8 %i.km, label %.loopexit7061 [
    i8 73, label %.preheader6867.preheader
    i8 70, label %.preheader6867.preheader
  ]

bb.bz:                                            ; preds = %bb.bx
  %i.kt = icmp eq i8 %i.km, 79
  %i.ku = icmp samesign ugt i8 %i.km, 81
  %or.cond80 = or i1 %i.kt, %i.ku
  br i1 %or.cond80, label %.preheader6867.preheader, label %.loopexit7061

bb.ca:                                            ; preds = %bb.bs
  %i.kv = icmp ult i8 %i.km, 103
  br i1 %i.kv, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.kw = icmp samesign ult i8 %i.km, 99
  br i1 %i.kw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.kx = icmp ne i8 %i.km, 84
  %i.ky = add nsw i8 %i.km, -97
  %or.cond83 = icmp ult i8 %i.ky, -10
  %or.cond = select i1 %i.kx, i1 %or.cond83, i1 false
  br i1 %or.cond, label %.preheader6867.preheader, label %.loopexit7061

bb.cd:                                            ; preds = %bb.cb
  %i.kz = and i8 %i.km, 125
  %or.cond86 = icmp eq i8 %i.kz, 100
  br i1 %or.cond86, label %.preheader6867.preheader, label %.loopexit7061

bb.ce:                                            ; preds = %bb.ca
  %i.la = icmp ult i8 %i.km, 112
  br i1 %i.la, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  switch i8 %i.km, label %.loopexit7061 [
    i8 111, label %.preheader6867.preheader
    i8 105, label %.preheader6867.preheader
  ]

.preheader6867.preheader:                         ; preds = %bb.bz, %bb.cd, %bb.ch, %bb.bw, %bb.ci, %bb.bv, %bb.bv, %bb.by, %bb.by, %bb.cc, %bb.cf, %bb.cf
  br label %.preheader6867

bb.cg:                                            ; preds = %bb.ce
  %i.lb = icmp ult i8 %i.km, 116
  br i1 %i.lb, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.lc = icmp samesign ugt i8 %i.km, 113
  br i1 %i.lc, label %.preheader6867.preheader, label %.loopexit7061

bb.ci:                                            ; preds = %bb.cg
  %i.ld = icmp ne i8 %i.km, 116
  %i.le = icmp ult i8 %i.km, 119
  %or.cond92 = and i1 %i.ld, %i.le
  br i1 %or.cond92, label %.preheader6867.preheader, label %.loopexit7061

.loopexit7061:                                    ; preds = %bb.cf, %bb.by, %bb.bv, %bb.cd, %bb.bz, %bb.ch, %bb.ci, %bb.cc, %bb.bw, %bb.kf, %bb.ik
  %i.lf = phi ptr [ %i.ul, %bb.ik ], [ %i.xr, %bb.kf ], [ %i.kl, %bb.bw ], [ %i.kl, %bb.cc ], [ %i.kl, %bb.ci ], [ %i.kl, %bb.ch ], [ %i.kl, %bb.bz ], [ %i.kl, %bb.cd ], [ %i.kl, %bb.bv ], [ %i.kl, %bb.by ], [ %i.kl, %bb.cf ]
  %i.lg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132 ; 2 uses
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = trunc i64 %i.lj to i32
  store i32 %i.lk, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.ll = load i8, ptr %i.lg, align 1, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store i8 %i.ll, ptr %10, align 4, !tbaa !134
  %i.lm = getelementptr inbounds nuw i8, ptr %10, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.lm, i8 0, i64 3, i1 false)
  %i.ln = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.lo = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !66
  store i32 %i.lo, ptr %i.ln, align 4, !tbaa !135
  %i.lp = call i32 @zend_stack_push(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 128), ptr noundef nonnull %10) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.lq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !44
  %i.ls = sext i8 %i.lr to i32
  br label %.thread6538

bb.cj:                                            ; preds = %bb.k, %bb.k
  %i.lt = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.lt, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 16), align 8, !tbaa !48
  %i.lu = load i8, ptr %i.y, align 1, !tbaa !44
  %i.lv = tail call fastcc i32 @exit_nesting(i8 noundef signext %i.lu)
  %.not6104 = icmp eq i32 %i.lv, 0
  %or.cond6277 = or i1 %.not5629, %.not6104
  br i1 %or.cond6277, label %bb.ck, label %.thread6538, !prof !200

bb.ck:                                            ; preds = %bb.cj
  %i.lw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 32), align 8, !tbaa !132
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !44
  %i.ly = sext i8 %i.lx to i32
  br label %.thread6538

bb.cl:                                            ; preds = %bb.k
  %i.lz = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 3 uses
  store ptr %i.lz, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !44
  switch i8 %i.ma, label %.loopexit7058 [
    i8 42, label %bb.nl
    i8 61, label %bb.nn
  ]

bb.cm:                                            ; preds = %bb.k
  %i.mb = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 3 uses
  store ptr %i.mb, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !44
  switch i8 %i.mc, label %.loopexit7058 [
    i8 43, label %bb.no
    i8 61, label %bb.np
  ]

bb.cn:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.md = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.md, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  br label %.loopexit7058

bb.co:                                            ; preds = %bb.k
  %i.me = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.me, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !44  ; 4 uses
  %i.mg = icmp ult i8 %i.mf, 61
  br i1 %i.mg, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.mh = icmp eq i8 %i.mf, 45
  br i1 %i.mh, label %bb.nq, label %.loopexit7058

bb.cq:                                            ; preds = %bb.co
  %i.mi = icmp eq i8 %i.mf, 61
  br i1 %i.mi, label %bb.nr, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mj = icmp ult i8 %i.mf, 63
  br i1 %i.mj, label %bb.ns, label %.loopexit7058

bb.cs:                                            ; preds = %bb.k
  %i.mk = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 6 uses
  store ptr %i.mk, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  store ptr %i.mk, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 48), align 8, !tbaa !131
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !44  ; 4 uses
  %i.mm = icmp ult i8 %i.ml, 48
  br i1 %i.mm, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.mn = icmp eq i8 %i.ml, 46
  br i1 %i.mn, label %bb.nt, label %.loopexit7058.loopexit

bb.cu:                                            ; preds = %bb.cs
  %i.mo = icmp ult i8 %i.ml, 58
  br i1 %i.mo, label %bb.nu, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mp = icmp eq i8 %i.ml, 61
  br i1 %i.mp, label %bb.oj, label %.loopexit7058

bb.cw:                                            ; preds = %bb.k
  %i.mq = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.mq, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 40), align 8, !tbaa !94
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !44  ; 3 uses
end_hunk_0
