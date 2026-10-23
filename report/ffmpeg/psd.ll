Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/psd?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@decode_frame:bb.a
  %i.jd = zext i16 %i.bl to i32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %i.jd) #7
  br label %decode_header.exit.thread

bb.bj:                                            ; preds = %bb.bg, %bb.bh
  %.sink530 = phi i32 [ 112, %bb.bh ], [ 111, %bb.bg ]
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink530, ptr %i.je, align 8, !tbaa !74
  store i16 4, ptr %i.g, align 4, !tbaa !73
  br label %bb.cc

thread-pre-split318:                              ; preds = %bb.bf
  %i.jf = icmp ugt i16 %i.jb, 2
  br i1 %i.jf, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %thread-pre-split318
  switch i16 %i.bl, label %bb.bm [
    i16 8, label %bb.bn
    i16 16, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.jg = zext i16 %i.bl to i32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %i.jg) #7
  br label %decode_header.exit.thread

bb.bn:                                            ; preds = %bb.bk, %bb.bl
  %.sink532 = phi i32 [ 76, %bb.bl ], [ 71, %bb.bk ]
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink532, ptr %i.jh, align 8, !tbaa !74
  store i16 3, ptr %i.g, align 4, !tbaa !73
  br label %bb.cc

bb.bo:                                            ; preds = %thread-pre-split318
  %i.ji = zext nneg i16 %i.jb to i32
  %i.jj = load ptr, ptr %i.d, align 8, !tbaa !52
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.jj, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.ji) #7
  br label %decode_header.exit.thread

bb.bp:                                            ; preds = %decode_header.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.8) #7
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %decode_header.exit
  %i.jk = load i16, ptr %i.j, align 8, !tbaa !54
  %i.jl = icmp slt i16 %i.jk, 0
  %i.jm = load i16, ptr %i.e, align 8, !tbaa !63  ; 4 uses
  %i.jn = icmp ugt i16 %i.jm, 1
  %or.cond545 = select i1 %i.jl, i1 %i.jn, i1 false
  br i1 %or.cond545, label %bb.br, label %thread-pre-split320

bb.br:                                            ; preds = %bb.bq
  %i.jo = load i16, ptr %i.f, align 2, !tbaa !67  ; 2 uses
  switch i16 %i.jo, label %bb.bt [
    i16 8, label %bb.bu
    i16 16, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.jp = zext i16 %i.jo to i32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef %i.jp) #7
  br label %decode_header.exit.thread

bb.bu:                                            ; preds = %bb.br, %bb.bs
  %.sink534 = phi i32 [ 109, %bb.bs ], [ 56, %bb.br ]
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink534, ptr %i.jq, align 8, !tbaa !74
  store i16 2, ptr %i.g, align 4, !tbaa !73
  br label %bb.cc

thread-pre-split320:                              ; preds = %bb.bq
  %.not = icmp eq i16 %i.jm, 0
  br i1 %.not, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %thread-pre-split320
  %i.jr = load i16, ptr %i.f, align 2, !tbaa !67  ; 2 uses
  switch i16 %i.jr, label %bb.by [
    i16 8, label %bb.bz
    i16 16, label %bb.bw
    i16 32, label %bb.bx
  ]

bb.bw:                                            ; preds = %bb.bv
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  br label %bb.bz

bb.by:                                            ; preds = %bb.bv
  %i.js = zext i16 %i.jr to i32
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i32 noundef %i.js) #7
  br label %decode_header.exit.thread

bb.bz:                                            ; preds = %bb.bv, %bb.bw, %bb.bx
  %.sink536 = phi i32 [ 29, %bb.bw ], [ 182, %bb.bx ], [ 8, %bb.bv ]
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink536, ptr %i.jt, align 8, !tbaa !74
  store i16 1, ptr %i.g, align 4, !tbaa !73
  br label %bb.cc

bb.ca:                                            ; preds = %thread-pre-split320
  %i.ju = load ptr, ptr %i.d, align 8, !tbaa !52
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ju, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef 0) #7
  br label %decode_header.exit.thread

bb.cb:                                            ; preds = %decode_header.exit
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef %i.ia) #7
  br label %decode_header.exit.thread

bb.cc:                                            ; preds = %bb.bu, %bb.bz, %bb.bj, %bb.bn, %bb.az, %bb.bd, %bb.au, %bb.ar
  %i.jv = phi i16 [ %i.jm, %bb.bu ], [ %i.jm, %bb.bz ], [ %i.jb, %bb.bj ], [ %i.jb, %bb.bn ], [ %i.iq, %bb.az ], [ %i.iq, %bb.bd ], [ %.pre, %bb.au ], [ %.pre438, %bb.ar ]
  %i.jw = load i64, ptr %i.i, align 8, !tbaa !53
  %i.jx = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 12 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !64
  %i.jz = sext i32 %i.jy to i64
  %i.ka = mul i64 %i.jw, %i.jz
  %i.kb = zext i16 %i.jv to i64
  %i.kc = mul i64 %i.ka, %i.kb                    ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !75
  %i.ke = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !71
  %i.kg = icmp eq i32 %i.kf, 1
  br i1 %i.kg, label %bb.cd, label %bb.cq

bb.cd:                                            ; preds = %bb.cc
  %i.kh = tail call noalias ptr @av_malloc(i64 noundef %i.kc) #7 ; 4 uses
  store ptr %i.kh, ptr %i.h, align 8, !tbaa !76
  %.not310 = icmp eq ptr %i.kh, null
  br i1 %.not310, label %decode_header.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ki = load i32, ptr %i.jx, align 4, !tbaa !64
  %i.kj = load i16, ptr %i.e, align 8, !tbaa !63
  %i.kk = zext i16 %i.kj to i32
  %i.kl = mul nsw i32 %i.ki, %i.kk                ; 3 uses
  %i.km = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.kn = load ptr, ptr %i.k, align 8, !tbaa !58  ; 2 uses
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp                    ; 2 uses
  %i.kr = trunc i64 %i.kq to i32
  %i.ks = shl i32 %i.kl, 1                        ; 2 uses
  %i.kt = icmp ugt i32 %i.ks, %i.kr
  br i1 %i.kt, label %.loopexit335, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ku = zext i32 %i.ks to i64
  %..i.i312 = tail call i64 @llvm.smin.i64(i64 %i.kq, i64 %i.ku)
  %i.kv = getelementptr inbounds i8, ptr %i.kn, i64 %..i.i312
  store ptr %i.kv, ptr %i.k, align 8, !tbaa !58
  %.not79.i = icmp eq i32 %i.kl, 0
  br i1 %.not79.i, label %decode_rle.exit.thread, label %.preheader66.lr.ph.i

.preheader66.lr.ph.i:                             ; preds = %bb.cf
  %i.kw = load i64, ptr %i.i, align 8, !tbaa !53
  %.not80.i = icmp eq i64 %i.kw, 0
  br i1 %.not80.i, label %decode_rle.exit.thread, label %.preheader66.i

.preheader66.i:                                   ; preds = %.preheader66.lr.ph.i, %._crit_edge.i
  %i.kx = phi i64 [ %i.no, %._crit_edge.i ], [ 1, %.preheader66.lr.ph.i ]
  %.04678.i = phi i64 [ %.147.lcssa.i, %._crit_edge.i ], [ 0, %.preheader66.lr.ph.i ] ; 2 uses
  %.05077.i = phi i32 [ %i.np, %._crit_edge.i ], [ 0, %.preheader66.lr.ph.i ]
  %.not81.i = icmp eq i64 %i.kx, 0
  br i1 %.not81.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader66.i, %bb.cp
  %.14776.i = phi i64 [ %.4.i, %bb.cp ], [ %.04678.i, %.preheader66.i ] ; 7 uses
  %.04875.i = phi i32 [ %.149.i, %bb.cp ], [ 0, %.preheader66.i ] ; 2 uses
  %i.ky = load ptr, ptr %i.u, align 8, !tbaa !60  ; 4 uses
  %i.kz = load ptr, ptr %i.k, align 8, !tbaa !58  ; 3 uses
  %i.la = ptrtoint ptr %i.ky to i64               ; 4 uses
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = icmp slt i64 %i.lc, 1
  br i1 %i.ld, label %bytestream2_get_byte.exit63.thread.i, label %bytestream2_get_byte.exit63.i

bytestream2_get_byte.exit63.thread.i:             ; preds = %.lr.ph.i
  store ptr %i.ky, ptr %i.k, align 8, !tbaa !58
  br label %bytestream2_get_byte.exit63._crit_edge.i

bytestream2_get_byte.exit63.i:                    ; preds = %.lr.ph.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 1 ; 3 uses
  store ptr %i.le, ptr %i.k, align 8, !tbaa !61
  %i.lf = load i8, ptr %i.kz, align 1, !tbaa !62  ; 3 uses
  %i.lg = zext nneg i8 %i.lf to i64
  %i.lh = sext i8 %i.lf to i32                    ; 4 uses
  %i.li = icmp slt i8 %i.lf, 1
  %.pre.i313 = ptrtoint ptr %i.le to i64          ; 2 uses
  br i1 %i.li, label %bytestream2_get_byte.exit63._crit_edge.i, label %bb.ck

bytestream2_get_byte.exit63._crit_edge.i:         ; preds = %bytestream2_get_byte.exit63.i, %bytestream2_get_byte.exit63.thread.i
  %.pre-phi.i316 = phi i64 [ %i.la, %bytestream2_get_byte.exit63.thread.i ], [ %.pre.i313, %bytestream2_get_byte.exit63.i ]
  %i.lj = phi ptr [ %i.ky, %bytestream2_get_byte.exit63.thread.i ], [ %i.le, %bytestream2_get_byte.exit63.i ] ; 2 uses
  %i.lk = phi i32 [ 0, %bytestream2_get_byte.exit63.thread.i ], [ %i.lh, %bytestream2_get_byte.exit63.i ] ; 4 uses
  %i.ll = sub i64 %i.la, %.pre-phi.i316           ; 2 uses
  %i.lm = trunc i64 %i.ll to i32
  %i.ln = icmp slt i32 %i.lm, 1
  br i1 %i.ln, label %.loopexit335, label %bb.cg

bb.cg:                                            ; preds = %bytestream2_get_byte.exit63._crit_edge.i
  %i.lo = sub nsw i32 0, %i.lk                    ; 2 uses
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = add i64 %.14776.i, %i.lp
  %i.lr = load i64, ptr %i.kd, align 8, !tbaa !75
  %.not58.i = icmp ult i64 %i.lq, %i.lr
  br i1 %.not58.i, label %bb.ch, label %.loopexit335

bb.ch:                                            ; preds = %bb.cg
  %i.ls = icmp slt i64 %i.ll, 1
  br i1 %i.ls, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.ky, ptr %i.k, align 8, !tbaa !58
  br label %bytestream2_get_byte.exit61.i

bb.cj:                                            ; preds = %bb.ch
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  store ptr %i.lt, ptr %i.k, align 8, !tbaa !61
  %i.lu = load i8, ptr %i.lj, align 1, !tbaa !62
  br label %bytestream2_get_byte.exit61.i

bytestream2_get_byte.exit61.i:                    ; preds = %bb.cj, %bb.ci
  %.0.i60.i = phi i8 [ 0, %bb.ci ], [ %i.lu, %bb.cj ] ; 5 uses
  %i.lv = trunc i64 %.14776.i to i32
  %i.lw = add i32 %i.lv, 1
  %i.lx = sub i32 %i.lw, %i.lk
  %i.ly = sub nsw i32 1, %i.lk
  %xtraiter599 = and i32 %i.ly, 3                 ; 2 uses
  %lcmp.mod600.not = icmp eq i32 %xtraiter599, 0
  br i1 %lcmp.mod600.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bytestream2_get_byte.exit61.i, %.prol.preheader
  %.273.i.prol = phi i64 [ %i.ma, %.prol.preheader ], [ %.14776.i, %bytestream2_get_byte.exit61.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bytestream2_get_byte.exit61.i ]
  %i.lz = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.ma = add i64 %.273.i.prol, 1                 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 %.273.i.prol
  store i8 %.0.i60.i, ptr %i.mb, align 1, !tbaa !62
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter599
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !11

.prol.loopexit:                                   ; preds = %.prol.preheader, %bytestream2_get_byte.exit61.i
  %.lcssa584.unr = phi i64 [ poison, %bytestream2_get_byte.exit61.i ], [ %i.ma, %.prol.preheader ]
  %.273.i.unr = phi i64 [ %.14776.i, %bytestream2_get_byte.exit61.i ], [ %i.ma, %.prol.preheader ]
  %i.mc = icmp ult i32 %i.lo, 3
  br i1 %i.mc, label %.unr-lcssa, label %bytestream2_get_byte.exit61.i.new

bytestream2_get_byte.exit61.i.new:                ; preds = %.prol.loopexit, %bytestream2_get_byte.exit61.i.new
  %.273.i = phi i64 [ %i.mm, %bytestream2_get_byte.exit61.i.new ], [ %.273.i.unr, %.prol.loopexit ] ; 5 uses
  %i.md = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %.273.i
  store i8 %.0.i60.i, ptr %i.me, align 1, !tbaa !62
  %i.mf = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.mg = getelementptr i8, ptr %i.mf, i64 %.273.i
  %i.mh = getelementptr i8, ptr %i.mg, i64 1
  store i8 %.0.i60.i, ptr %i.mh, align 1, !tbaa !62
  %i.mi = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.mj = getelementptr i8, ptr %i.mi, i64 %.273.i
  %i.mk = getelementptr i8, ptr %i.mj, i64 2
  store i8 %.0.i60.i, ptr %i.mk, align 1, !tbaa !62
  %i.ml = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.mm = add i64 %.273.i, 4                      ; 3 uses
  %i.mn = getelementptr i8, ptr %i.ml, i64 %.273.i
  %i.mo = getelementptr i8, ptr %i.mn, i64 3
  store i8 %.0.i60.i, ptr %i.mo, align 1, !tbaa !62
  %lftr.wideiv411.3 = trunc i64 %i.mm to i32
  %exitcond412.3 = icmp eq i32 %i.lx, %lftr.wideiv411.3
  br i1 %exitcond412.3, label %.unr-lcssa, label %bytestream2_get_byte.exit61.i.new, !llvm.loop !12

.unr-lcssa:                                       ; preds = %bytestream2_get_byte.exit61.i.new, %.prol.loopexit
  %.lcssa584 = phi i64 [ %.lcssa584.unr, %.prol.loopexit ], [ %i.mm, %bytestream2_get_byte.exit61.i.new ]
  %reass.sub.i = add i32 %.04875.i, 1
  %i.mp = sub i32 %reass.sub.i, %i.lk
  br label %bb.cp

bb.ck:                                            ; preds = %bytestream2_get_byte.exit63.i
  %i.mq = sub i64 %i.la, %.pre.i313
  %i.mr = trunc i64 %i.mq to i32
  %i.ms = icmp slt i32 %i.mr, %i.lh
  br i1 %i.ms, label %.loopexit335, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mt = add i64 %.14776.i, %i.lg
  %i.mu = load i64, ptr %i.kd, align 8, !tbaa !75
  %.not.i314 = icmp ult i64 %i.mt, %i.mu
  br i1 %.not.i314, label %.preheader.preheader.i, label %.loopexit335

.preheader.preheader.i:                           ; preds = %bb.cl
  %i.mv = trunc i64 %.14776.i to i32
  %i.mw = add i32 %i.mv, 1
  %i.mx = add i32 %i.mw, %i.lh
  br label %.preheader.i

.preheader.i:                                     ; preds = %bytestream2_get_byte.exit.i, %.preheader.preheader.i
  %.371.i = phi i64 [ %i.nh, %bytestream2_get_byte.exit.i ], [ %.14776.i, %.preheader.preheader.i ] ; 2 uses
  %i.my = load ptr, ptr %i.u, align 8, !tbaa !60  ; 2 uses
  %i.mz = load ptr, ptr %i.k, align 8, !tbaa !58  ; 3 uses
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = icmp slt i64 %i.nc, 1
  br i1 %i.nd, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.preheader.i
  store ptr %i.my, ptr %i.k, align 8, !tbaa !58
  br label %bytestream2_get_byte.exit.i

bb.cn:                                            ; preds = %.preheader.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 1
  store ptr %i.ne, ptr %i.k, align 8, !tbaa !61
  %i.nf = load i8, ptr %i.mz, align 1, !tbaa !62
  br label %bytestream2_get_byte.exit.i

bytestream2_get_byte.exit.i:                      ; preds = %bb.cn, %bb.cm
  %.0.i.i = phi i8 [ 0, %bb.cm ], [ %i.nf, %bb.cn ]
  %i.ng = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.nh = add i64 %.371.i, 1                      ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.371.i
  store i8 %.0.i.i, ptr %i.ni, align 1, !tbaa !62
  %lftr.wideiv = trunc i64 %i.nh to i32
  %exitcond = icmp eq i32 %i.mx, %lftr.wideiv
  br i1 %exitcond, label %bb.co, label %.preheader.i, !llvm.loop !13

bb.co:                                            ; preds = %bytestream2_get_byte.exit.i
  %i.nj = add i32 %.04875.i, 1
  %i.nk = add i32 %i.nj, %i.lh
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.unr-lcssa
  %.149.i = phi i32 [ %i.mp, %.unr-lcssa ], [ %i.nk, %bb.co ] ; 2 uses
  %.4.i = phi i64 [ %.lcssa584, %.unr-lcssa ], [ %i.nh, %bb.co ] ; 2 uses
  %i.nl = zext i32 %.149.i to i64
  %i.nm = load i64, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.nn = icmp ugt i64 %i.nm, %i.nl
  br i1 %i.nn, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %bb.cp, %.preheader66.i
  %i.no = phi i64 [ 0, %.preheader66.i ], [ %i.nm, %bb.cp ]
  %.147.lcssa.i = phi i64 [ %.04678.i, %.preheader66.i ], [ %.4.i, %bb.cp ]
  %i.np = add nuw i32 %.05077.i, 1                ; 2 uses
  %exitcond86.not.i = icmp eq i32 %i.np, %i.kl
  br i1 %exitcond86.not.i, label %decode_rle.exit.thread.loopexit, label %.preheader66.i, !llvm.loop !15

.loopexit335:                                     ; preds = %bb.cl, %bb.ck, %bb.cg, %bytestream2_get_byte.exit63._crit_edge.i, %bb.ce
  %.str.33.sink.i = phi ptr [ @.str.31, %bb.ce ], [ @.str.33, %bb.cl ], [ @.str.32, %bytestream2_get_byte.exit63._crit_edge.i ], [ @.str.33, %bb.cg ], [ @.str.32, %bb.ck ]
  %i.nq = load ptr, ptr %i.d, align 8, !tbaa !52
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.nq, i32 noundef 16, ptr noundef nonnull %.str.33.sink.i) #7
  tail call void @av_freep(ptr noundef nonnull %i.h) #7
  br label %decode_header.exit.thread

bb.cq:                                            ; preds = %bb.cc
  %i.nr = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.ns = load ptr, ptr %i.k, align 8, !tbaa !58  ; 2 uses
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = shl i64 %i.nv, 32
  %i.nx = ashr exact i64 %i.nw, 32
  %i.ny = icmp ugt i64 %i.kc, %i.nx
  br i1 %i.ny, label %bb.cr, label %decode_rle.exit.thread

bb.cr:                                            ; preds = %bb.cq
  %i.nz = load ptr, ptr %i.d, align 8, !tbaa !52
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.nz, i32 noundef 16, ptr noundef nonnull @.str.12) #7
  br label %decode_header.exit.thread

decode_rle.exit.thread.loopexit:                  ; preds = %._crit_edge.i
  %.0282.pre = load ptr, ptr %i.h, align 8, !tbaa !61
  br label %decode_rle.exit.thread

decode_rle.exit.thread:                           ; preds = %decode_rle.exit.thread.loopexit, %bb.cf, %.preheader66.lr.ph.i, %bb.cq
  %.0282 = phi ptr [ %i.ns, %bb.cq ], [ %i.kh, %.preheader66.lr.ph.i ], [ %i.kh, %bb.cf ], [ %.0282.pre, %decode_rle.exit.thread.loopexit ] ; 5 uses
  %i.oa = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.ob = icmp slt i32 %i.oa, 0
  br i1 %i.ob, label %decode_header.exit.thread, label %bb.cs

bb.cs:                                            ; preds = %decode_rle.exit.thread
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !74
  switch i32 %i.od, label %bb.cw [
    i32 56, label %bb.ct
    i32 109, label %bb.ct
  ]

bb.ct:                                            ; preds = %bb.cs, %bb.cs
  %i.oe = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.og = load i32, ptr %i.jx, align 4, !tbaa !64 ; 2 uses
  %i.oh = icmp sgt i32 %i.og, 0
  br i1 %i.oh, label %.preheader332.lr.ph, label %.loopexit

.preheader332.lr.ph:                              ; preds = %bb.ct
  %i.oi = load i32, ptr %i.hw, align 8, !tbaa !66 ; 3 uses
  %i.oj = icmp sgt i32 %i.oi, 0
  br i1 %i.oj, label %.preheader332, label %.loopexit

.preheader332:                                    ; preds = %.preheader332.lr.ph, %._crit_edge343
  %i.ok = phi i32 [ %i.pi, %._crit_edge343 ], [ %i.og, %.preheader332.lr.ph ] ; 2 uses
  %i.ol = phi i32 [ %i.pj, %._crit_edge343 ], [ %i.oi, %.preheader332.lr.ph ] ; 3 uses
  %i.om = phi i32 [ %i.pk, %._crit_edge343 ], [ %i.oi, %.preheader332.lr.ph ] ; 3 uses
  %.2347 = phi ptr [ %.3.lcssa, %._crit_edge343 ], [ %.0282, %.preheader332.lr.ph ] ; 3 uses
  %.0285345 = phi i32 [ %i.pl, %._crit_edge343 ], [ 0, %.preheader332.lr.ph ] ; 2 uses
  %i.on = icmp sgt i32 %i.om, 0
  br i1 %i.on, label %.lr.ph342, label %._crit_edge343

.lr.ph342:                                        ; preds = %.preheader332
  %i.oo = load i32, ptr %i.hv, align 8, !tbaa !72 ; 2 uses
  %.not397 = icmp eq i32 %i.oo, 0
  br i1 %.not397, label %._crit_edge343, label %.lr.ph342.split

.lr.ph342.split:                                  ; preds = %.lr.ph342, %._crit_edge
  %i.op = phi i32 [ %i.pd, %._crit_edge ], [ %i.ol, %.lr.ph342 ]
  %i.oq = phi i32 [ %i.pe, %._crit_edge ], [ %i.oo, %.lr.ph342 ] ; 2 uses
  %i.or = phi i32 [ %i.pf, %._crit_edge ], [ 1, %.lr.ph342 ]
  %.3341 = phi ptr [ %.4.lcssa, %._crit_edge ], [ %.2347, %.lr.ph342 ] ; 2 uses
  %.0291340 = phi i32 [ %i.pg, %._crit_edge ], [ 0, %.lr.ph342 ] ; 2 uses
  %.not398 = icmp eq i32 %i.or, 0
  br i1 %.not398, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph342.split
  %i.os = shl nuw i32 %.0291340, 1
  %i.ot = load i32, ptr %i.of, align 8, !tbaa !78
  %i.ou = mul nsw i32 %i.ot, %.0285345
  %reass.mul = mul i32 %i.os, %i.oq
  %invariant.op = add i32 %i.ou, %reass.mul
  br label %bb.cu

bb.cu:                                            ; preds = %.lr.ph, %bb.cu
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cu ] ; 2 uses
  %.4339 = phi ptr [ %.3341, %.lr.ph ], [ %i.oz, %bb.cu ] ; 2 uses
  %i.ov = load i8, ptr %.4339, align 1, !tbaa !62
  %i.ow = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.ow
  %i.ox = sext i32 %.reass to i64
  %i.oy = getelementptr inbounds i8, ptr %i.oe, i64 %i.ox
  store i8 %i.ov, ptr %i.oy, align 1, !tbaa !62
  %i.oz = getelementptr inbounds nuw i8, ptr %.4339, i64 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pa = load i32, ptr %i.hv, align 8, !tbaa !72 ; 3 uses
  %i.pb = zext i32 %i.pa to i64
  %i.pc = icmp samesign ult i64 %indvars.iv.next, %i.pb
  br i1 %i.pc, label %bb.cu, label %._crit_edge.loopexit, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %bb.cu
  %.pre424 = load i32, ptr %i.hw, align 8, !tbaa !66
end_hunk_0
