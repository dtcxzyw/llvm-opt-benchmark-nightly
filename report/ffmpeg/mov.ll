inline.NumInlined: 191
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mov_read_header:bb.a
  br label %.thread206.thread.i.i

.thread206.loopexit.i.i:                          ; preds = %bb.ar
  %.pre397.i.i = load ptr, ptr %i.ey, align 8, !tbaa !196
  br label %.thread206.i.i

.thread206.i.i:                                   ; preds = %.thread206.loopexit.i.i, %bb.aq
  %i.hn = phi ptr [ %.pre397.i.i, %.thread206.loopexit.i.i ], [ %i.ez, %bb.aq ] ; 7 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 76
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !185
  switch i32 %i.hp, label %bb.ch [
    i32 1684632167, label %bb.bf
    i32 1819701097, label %bb.bx
  ]

bb.bf:                                            ; preds = %.thread206.i.i
  %i.hq = load ptr, ptr %i.e, align 8, !tbaa !147 ; 6 uses
  %i.hr = load ptr, ptr %i.g, align 8, !tbaa !148
  %i.hs = tail call i64 @avio_seek(ptr noundef %i.hr, i64 noundef 0, i32 noundef 1) #16
  %i.ht = load ptr, ptr %i.g, align 8, !tbaa !148 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 144
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !140
  %i.hw = and i32 %i.hv, 1
  %.not.i.i.i = icmp eq i32 %i.hw, 0
  br i1 %.not.i.i.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.hy, i32 noundef 32, ptr noundef nonnull @.str.539) #16
  br label %mov_parse_heif_items.exit.thread

bb.bh:                                            ; preds = %bb.bf
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hn, i64 80
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !162
  %.not112.i.i.i = icmp eq i32 %i.ia, 0
  br i1 %.not112.i.i.i, label %.thread.i.i.i, label %bb.bi

.thread.i.i.i:                                    ; preds = %bb.bh
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !176
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 504
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !163 ; 3 uses
  %.not113.i.i.i = icmp eq i64 %i.ie, 0
  br i1 %.not113.i.i.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ig, i32 noundef 16, ptr noundef nonnull @.str.540) #16
  br label %mov_parse_heif_items.exit.thread

bb.bk:                                            ; preds = %bb.bi
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !176 ; 2 uses
  %i.ij = sub nsw i64 9223372036854775807, %i.ii
  %i.ik = icmp sgt i64 %i.ie, %i.ij
  br i1 %i.ik, label %mov_parse_heif_items.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread.i.i.i
  %i.il = phi i64 [ %i.ic, %.thread.i.i.i ], [ %i.ii, %bb.bk ]
  %.0101120.i.i.i = phi i64 [ 0, %.thread.i.i.i ], [ %i.ie, %bb.bk ]
  %i.im = add nsw i64 %.0101120.i.i.i, %i.il
  %i.in = tail call i64 @avio_seek(ptr noundef nonnull %i.ht, i64 noundef %i.im, i32 noundef 0) #16 ; 0 uses
  %i.io = load ptr, ptr %i.g, align 8, !tbaa !148
  %i.ip = tail call i32 @avio_r8(ptr noundef %i.io) #16 ; 0 uses
  %i.iq = load ptr, ptr %i.g, align 8, !tbaa !148
  %i.ir = tail call i32 @avio_r8(ptr noundef %i.iq) #16
  %i.is = load ptr, ptr %i.g, align 8, !tbaa !148
  %i.it = tail call i32 @avio_r8(ptr noundef %i.is) #16
  %i.iu = add nsw i32 %i.it, 1                    ; 2 uses
  %i.iv = load ptr, ptr %i.g, align 8, !tbaa !148
  %i.iw = tail call i32 @avio_r8(ptr noundef %i.iv) #16 ; 2 uses
  %i.ix = add i32 %i.iw, 1                        ; 5 uses
  %i.iy = and i32 %i.ir, 1
  %.not114.i.i.i = icmp eq i32 %i.iy, 0
  %i.iz = load ptr, ptr %i.g, align 8, !tbaa !148 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ff, i64 44 ; 3 uses
  br i1 %.not114.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jb = tail call i32 @avio_rb32(ptr noundef %i.iz) #16
  store i32 %i.jb, ptr %i.ja, align 4, !tbaa !211
  %i.jc = load ptr, ptr %i.g, align 8, !tbaa !148
  %i.jd = tail call i32 @avio_rb32(ptr noundef %i.jc) #16
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.je = tail call i32 @avio_rb16(ptr noundef %i.iz) #16
  store i32 %i.je, ptr %i.ja, align 4, !tbaa !211
  %i.jf = load ptr, ptr %i.g, align 8, !tbaa !148
  %i.jg = tail call i32 @avio_rb16(ptr noundef %i.jf) #16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.jh = phi i32 [ %i.jd, %bb.bm ], [ %i.jg, %bb.bn ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  store i32 %i.jh, ptr %i.ji, align 8, !tbaa !213
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !9
  %i.jl = load i32, ptr %i.ja, align 4, !tbaa !211
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.jk, i32 noundef 56, ptr noundef nonnull @.str.541, i32 noundef %i.iu, i32 noundef %i.ix, i32 noundef %i.jl, i32 noundef %i.jh) #16
  %i.jm = load ptr, ptr %i.g, align 8, !tbaa !148
  %i.jn = tail call i64 @avio_seek(ptr noundef %i.jm, i64 noundef %i.hs, i32 noundef 0) #16 ; 0 uses
  %i.jo = mul nsw i32 %i.ix, %i.iu                ; 4 uses
  %i.jp = load i32, ptr %i.fg, align 8, !tbaa !201 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 3 uses
  store i32 %i.jp, ptr %i.jq, align 8, !tbaa !214
  %.not115.i.i.i = icmp eq i32 %i.jp, %i.jo
  br i1 %.not115.i.i.i, label %.preheader124.i.i.i, label %mov_parse_heif_items.exit.thread

.preheader124.i.i.i:                              ; preds = %bb.bo
  %.not116135.i.i.i = icmp slt i32 %i.iw, 0
  br i1 %.not116135.i.i.i, label %.preheader123.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader124.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !205 ; 5 uses
  %wide.trip.count.i.i.i = zext i32 %i.ix to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.jt = icmp ult i32 %i.ix, 4
  br i1 %i.jt, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 4294967292
  br label %bb.bq

.preheader123.i.i.i.loopexit.unr-lcssa:           ; preds = %bb.bq
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader123.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader123.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.3, %.preheader123.i.i.i.loopexit.unr-lcssa ]
  %.0103136.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.lf, %.preheader123.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1162 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1162)
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.bp ] ; 2 uses
  %.0103136.i.i.i.epil = phi i64 [ %.0103136.i.i.i.epil.init, %.epil.preheader ], [ %i.jz, %bb.bp ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bp ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv.i.i.i.epil
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !157
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 56
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !215
  %i.jy = sext i32 %i.jx to i64
  %i.jz = add nsw i64 %.0103136.i.i.i.epil, %i.jy ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader123.i.i.i, label %bb.bp, !llvm.loop !216

.preheader123.i.i.i:                              ; preds = %.preheader123.i.i.i.loopexit.unr-lcssa, %bb.bp, %.preheader124.i.i.i
  %.0103.lcssa.i.i.i = phi i64 [ 0, %.preheader124.i.i.i ], [ %i.lf, %.preheader123.i.i.i.loopexit.unr-lcssa ], [ %i.jz, %bb.bp ] ; 2 uses
  %i.ka = icmp sgt i32 %i.jo, 0
  br i1 %i.ka, label %.lr.ph140.i.i.i, label %._crit_edge.i.i.i

.lr.ph140.i.i.i:                                  ; preds = %.preheader123.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !205
  %i.kd = sext i32 %i.ix to i64
  %i.ke = zext nneg i32 %i.jo to i64
  br label %bb.br

bb.bq:                                            ; preds = %bb.bq, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %bb.bq ] ; 5 uses
  %.0103136.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %i.lf, %bb.bq ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.3, %bb.bq ]
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv.i.i.i
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !157
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 56
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !215
  %i.kj = sext i32 %i.ki to i64
  %i.kk = add nsw i64 %.0103136.i.i.i, %i.kj
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv.i.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !157
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 56
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !215
  %i.kq = sext i32 %i.kp to i64
  %i.kr = add nsw i64 %i.kk, %i.kq
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !157
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 56
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !215
  %i.kx = sext i32 %i.kw to i64
  %i.ky = add nsw i64 %i.kr, %i.kx
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv.i.i.i
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !157
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 56
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !215
  %i.le = sext i32 %i.ld to i64
  %i.lf = add nsw i64 %i.ky, %i.le                ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader123.i.i.i.loopexit.unr-lcssa, label %bb.bq, !llvm.loop !218

._crit_edge.i.i.i:                                ; preds = %bb.br, %.preheader123.i.i.i
  %.0102.lcssa.i.i.i = phi i64 [ 0, %.preheader123.i.i.i ], [ %i.ln, %bb.br ] ; 2 uses
  %i.lg = icmp sgt i64 %.0103.lcssa.i.i.i, 2147483647
  %i.lh = icmp sgt i64 %.0102.lcssa.i.i.i, 2147483647
  %or.cond.i.i.i = select i1 %i.lg, i1 true, i1 %i.lh
  br i1 %or.cond.i.i.i, label %mov_parse_heif_items.exit.thread, label %bb.bs

bb.br:                                            ; preds = %bb.br, %.lr.ph140.i.i.i
  %indvars.iv165.i.i.i = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %indvars.iv.next166.i.i.i, %bb.br ] ; 2 uses
  %.0102138.i.i.i = phi i64 [ 0, %.lr.ph140.i.i.i ], [ %i.ln, %bb.br ]
  %i.li = getelementptr inbounds [8 x i8], ptr %i.kc, i64 %indvars.iv165.i.i.i
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !157
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 60
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !219
  %i.lm = sext i32 %i.ll to i64
  %i.ln = add nsw i64 %.0102138.i.i.i, %i.lm      ; 2 uses
  %indvars.iv.next166.i.i.i = add nsw i64 %indvars.iv165.i.i.i, %i.kd ; 2 uses
  %i.lo = icmp slt i64 %indvars.iv.next166.i.i.i, %i.ke
  br i1 %i.lo, label %bb.br, label %._crit_edge.i.i.i, !llvm.loop !220

bb.bs:                                            ; preds = %._crit_edge.i.i.i
  %i.lp = trunc i64 %.0103.lcssa.i.i.i to i32
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ff, i64 12 ; 2 uses
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !221
  %i.lr = trunc i64 %.0102.lcssa.i.i.i to i32
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  store i32 %i.lr, ptr %i.ls, align 8, !tbaa !222
  %i.lt = zext i32 %i.jo to i64
  %i.lu = tail call noalias ptr @av_calloc(i64 noundef %i.lt, i64 noundef 12) #16 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !223
  %.not117.i.i.i = icmp eq ptr %i.lu, null
  br i1 %.not117.i.i.i, label %mov_parse_heif_items.exit.thread, label %.preheader122.i.i.i

.preheader122.i.i.i:                              ; preds = %bb.bs
  %i.lw = load i32, ptr %i.ls, align 8, !tbaa !222 ; 2 uses
  %i.lx = sext i32 %i.lw to i64                   ; 3 uses
  %i.ly = icmp sgt i32 %i.lw, 0
  br i1 %i.ly, label %.preheader.lr.ph.i.i.i, label %._crit_edge151.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %.preheader122.i.i.i
  %i.lz = load i32, ptr %i.lq, align 4, !tbaa !221 ; 3 uses
  %i.ma = sext i32 %i.lz to i64                   ; 2 uses
  %i.mb = icmp sgt i32 %i.lz, 0
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.md = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  br i1 %i.mb, label %.preheader.lr.ph.split.us.i.i.i, label %.preheader.lr.ph.split.i.i.i

.preheader.lr.ph.split.us.i.i.i:                  ; preds = %.preheader.lr.ph.i.i.i
  %i.me = load i32, ptr %i.jq, align 8, !tbaa !214
  %sext.i.i.i = sext i32 %i.me to i64             ; 2 uses
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %bb.bu, %.preheader.lr.ph.split.us.i.i.i
  %.096150.us.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.i.i.i ], [ %indvars.iv.next169.i.i.i, %bb.bu ] ; 3 uses
  %.097149.us.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.us.i.i.i ], [ %i.nc, %bb.bu ] ; 2 uses
  %i.mf = trunc i64 %.097149.us.i.i.i to i32
  %i.mg = icmp eq i64 %.096150.us.i.i.i, %sext.i.i.i
  br i1 %i.mg, label %mov_parse_heif_items.exit.thread, label %.lr.ph1041.preheader

.lr.ph1041.preheader:                             ; preds = %.preheader.us.i.i.i
  %i.mh = load ptr, ptr %i.mc, align 8, !tbaa !207
  %i.mi = load ptr, ptr %i.md, align 8, !tbaa !205 ; 2 uses
  br label %.lr.ph1041

bb.bt:                                            ; preds = %.lr.ph1041
  %i.mj = icmp eq i64 %indvars.iv.next169.i.i.i, %sext.i.i.i
  br i1 %i.mj, label %mov_parse_heif_items.exit.thread, label %.lr.ph1041, !llvm.loop !224

.lr.ph1041:                                       ; preds = %.lr.ph1041.preheader, %bb.bt
  %.1100142.us.i.i.i1040 = phi i64 [ %i.mv, %bb.bt ], [ 0, %.lr.ph1041.preheader ] ; 2 uses
  %indvars.iv168.i.i.i1039 = phi i64 [ %indvars.iv.next169.i.i.i, %bb.bt ], [ %.096150.us.i.i.i, %.lr.ph1041.preheader ] ; 4 uses
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %indvars.iv168.i.i.i1039
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !87
  %i.mm = getelementptr inbounds [12 x i8], ptr %i.lu, i64 %indvars.iv168.i.i.i1039 ; 3 uses
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !225
  %i.mn = trunc i64 %.1100142.us.i.i.i1040 to i32
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !227
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store i32 %i.mf, ptr %i.mp, align 4, !tbaa !228
  %indvars.iv.next169.i.i.i = add nsw i64 %indvars.iv168.i.i.i1039, 1 ; 4 uses
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %indvars.iv168.i.i.i1039
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !157
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 56
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !215
  %i.mu = sext i32 %i.mt to i64
  %i.mv = add nsw i64 %.1100142.us.i.i.i1040, %i.mu ; 3 uses
  %i.mw = icmp slt i64 %i.mv, %i.ma
  br i1 %i.mw, label %bb.bt, label %._crit_edge145.us.i.i.i, !llvm.loop !224

bb.bu:                                            ; preds = %._crit_edge145.us.i.i.i
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %.096150.us.i.i.i
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !157
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 60
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !219
  %i.nb = sext i32 %i.na to i64
  %i.nc = add nsw i64 %.097149.us.i.i.i, %i.nb    ; 3 uses
  %i.nd = icmp slt i64 %i.nc, %i.lx
  br i1 %i.nd, label %.preheader.us.i.i.i, label %._crit_edge151.loopexit.i.i.i, !llvm.loop !229

._crit_edge145.us.i.i.i:                          ; preds = %.lr.ph1041
  %i.ne = icmp sgt i64 %i.mv, %i.ma
  br i1 %i.ne, label %.split.us.i.i.i, label %bb.bu

.preheader.lr.ph.split.i.i.i:                     ; preds = %.preheader.lr.ph.i.i.i
  %i.nf = icmp slt i32 %i.lz, 0
  br i1 %i.nf, label %.split.us.i.i.i, label %.preheader.lr.ph.split.split.i.i.i

.preheader.lr.ph.split.split.i.i.i:               ; preds = %.preheader.lr.ph.split.i.i.i
  %i.ng = load ptr, ptr %i.md, align 8, !tbaa !205
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !157
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 60
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !219
  %i.nk = sext i32 %i.nj to i64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.lr.ph.split.split.i.i.i
  %.097149.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.split.i.i.i ], [ %i.nl, %.preheader.i.i.i ]
  %i.nl = add nsw i64 %.097149.i.i.i, %i.nk       ; 3 uses
  %i.nm = icmp slt i64 %i.nl, %i.lx
  br i1 %i.nm, label %.preheader.i.i.i, label %._crit_edge151.i.i.i, !llvm.loop !229

.split.us.i.i.i:                                  ; preds = %.preheader.lr.ph.split.i.i.i, %._crit_edge145.us.i.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.no, i32 noundef 16, ptr noundef nonnull @.str.542) #16
  br label %mov_parse_heif_items.exit.thread

._crit_edge151.loopexit.i.i.i:                    ; preds = %bb.bu
  %i.np = trunc nsw i64 %indvars.iv.next169.i.i.i to i32
  br label %._crit_edge151.i.i.i

._crit_edge151.i.i.i:                             ; preds = %.preheader.i.i.i, %._crit_edge151.loopexit.i.i.i, %.preheader122.i.i.i
  %.097.lcssa.i.i.i = phi i64 [ 0, %.preheader122.i.i.i ], [ %i.nc, %._crit_edge151.loopexit.i.i.i ], [ %i.nl, %.preheader.i.i.i ]
  %.096.lcssa.i.i.i = phi i32 [ 0, %.preheader122.i.i.i ], [ %i.np, %._crit_edge151.loopexit.i.i.i ], [ 0, %.preheader.i.i.i ]
  %i.nq = icmp sgt i64 %.097.lcssa.i.i.i, %i.lx
  br i1 %i.nq, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge151.i.i.i
  %i.nr = load i32, ptr %i.jq, align 8, !tbaa !214
  %.not118.i.i.i = icmp eq i32 %.096.lcssa.i.i.i, %i.nr
  br i1 %.not118.i.i.i, label %.preheader259.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %._crit_edge151.i.i.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.nt, i32 noundef 16, ptr noundef nonnull @.str.542) #16
  br label %mov_parse_heif_items.exit.thread

bb.bx:                                            ; preds = %.thread206.i.i
  %i.nu = load ptr, ptr %i.e, align 8, !tbaa !147 ; 4 uses
  %i.nv = load ptr, ptr %i.g, align 8, !tbaa !148
  %i.nw = tail call i64 @avio_seek(ptr noundef %i.nv, i64 noundef 0, i32 noundef 1) #16 ; 2 uses
  %i.nx = load ptr, ptr %i.g, align 8, !tbaa !148 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 144
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !140
  %i.oa = and i32 %i.nz, 1
  %.not.i172.i.i = icmp eq i32 %i.oa, 0
  br i1 %.not.i172.i.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.oc, i32 noundef 32, ptr noundef nonnull @.str.543) #16
  br label %mov_parse_heif_items.exit.thread

bb.bz:                                            ; preds = %bb.bx
  %i.od = getelementptr inbounds nuw i8, ptr %i.hn, i64 80
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !162
  %.not80.i.i.i = icmp eq i32 %i.oe, 0
  br i1 %.not80.i.i.i, label %.thread.i177.i.i, label %bb.ca

.thread.i177.i.i:                                 ; preds = %bb.bz
  %i.of = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %i.og = load i64, ptr %i.of, align 8, !tbaa !176
  br label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nu, i64 504
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !163 ; 3 uses
  %.not81.i.i.i = icmp eq i64 %i.oi, 0
  br i1 %.not81.i.i.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ok, i32 noundef 16, ptr noundef nonnull @.str.544) #16
  br label %mov_parse_heif_items.exit.thread

bb.cc:                                            ; preds = %bb.ca
  %i.ol = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !176 ; 2 uses
  %i.on = sub nsw i64 9223372036854775807, %i.om
  %i.oo = icmp sgt i64 %i.oi, %i.on
  br i1 %i.oo, label %mov_parse_heif_items.exit.thread, label %bb.cd

end_hunk_0
begin_hunk_1_@mov_read_header:bb.a
bb.hx:                                            ; preds = %bb.hw, %bb.hu
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avr, i64 1512 ; 2 uses
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !306 ; 2 uses
  %.not274 = icmp eq ptr %i.awe, null
  br i1 %.not274, label %bb.ia, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.awf = load ptr, ptr %i.avs, align 8, !tbaa !51 ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 32
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awf, i64 40
  %i.awi = getelementptr inbounds nuw i8, ptr %i.avr, i64 1520
  %i.awj = load i64, ptr %i.awi, align 8, !tbaa !307
  %i.awk = call ptr @av_packet_side_data_add(ptr noundef nonnull %i.awg, ptr noundef nonnull %i.awh, i32 noundef 6, ptr noundef nonnull %i.awe, i64 noundef %i.awj, i32 noundef 0) #16
  %.not275 = icmp eq ptr %i.awk, null
  br i1 %.not275, label %mov_parse_heif_items.exit.thread, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  store ptr null, ptr %i.awd, align 8, !tbaa !306
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hx
  %i.awl = getelementptr inbounds nuw i8, ptr %i.avr, i64 1528 ; 2 uses
  %i.awm = load ptr, ptr %i.awl, align 8, !tbaa !308 ; 2 uses
  %.not276 = icmp eq ptr %i.awm, null
  br i1 %.not276, label %bb.id, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.awn = load ptr, ptr %i.avs, align 8, !tbaa !51 ; 2 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 32
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awn, i64 40
  %i.awq = getelementptr inbounds nuw i8, ptr %i.avr, i64 1536
  %i.awr = load i64, ptr %i.awq, align 8, !tbaa !309
  %i.aws = call ptr @av_packet_side_data_add(ptr noundef nonnull %i.awo, ptr noundef nonnull %i.awp, i32 noundef 21, ptr noundef nonnull %i.awm, i64 noundef %i.awr, i32 noundef 0) #16
  %.not277 = icmp eq ptr %i.aws, null
  br i1 %.not277, label %mov_parse_heif_items.exit.thread, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  store ptr null, ptr %i.awl, align 8, !tbaa !308
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ia
  %i.awt = getelementptr inbounds nuw i8, ptr %i.avr, i64 1544 ; 2 uses
  %i.awu = load ptr, ptr %i.awt, align 8, !tbaa !310 ; 2 uses
  %.not278 = icmp eq ptr %i.awu, null
  br i1 %.not278, label %bb.ig, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.awv = load ptr, ptr %i.avs, align 8, !tbaa !51 ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 32
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awv, i64 40
  %i.awy = getelementptr inbounds nuw i8, ptr %i.avr, i64 1552
  %i.awz = load i64, ptr %i.awy, align 8, !tbaa !311
  %i.axa = call ptr @av_packet_side_data_add(ptr noundef nonnull %i.aww, ptr noundef nonnull %i.awx, i32 noundef 20, ptr noundef nonnull %i.awu, i64 noundef %i.awz, i32 noundef 0) #16
  %.not279 = icmp eq ptr %i.axa, null
  br i1 %.not279, label %mov_parse_heif_items.exit.thread, label %bb.if

bb.if:                                            ; preds = %bb.ie
  store ptr null, ptr %i.awt, align 8, !tbaa !310
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.id
  %i.axb = getelementptr inbounds nuw i8, ptr %i.avr, i64 1560 ; 2 uses
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !312 ; 2 uses
  %.not280 = icmp eq ptr %i.axc, null
  br i1 %.not280, label %bb.ij, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.axd = load ptr, ptr %i.avs, align 8, !tbaa !51 ; 2 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 32
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axd, i64 40
  %i.axg = getelementptr inbounds nuw i8, ptr %i.avr, i64 1568
  %i.axh = load i64, ptr %i.axg, align 8, !tbaa !313
  %i.axi = call ptr @av_packet_side_data_add(ptr noundef nonnull %i.axe, ptr noundef nonnull %i.axf, i32 noundef 22, ptr noundef nonnull %i.axc, i64 noundef %i.axh, i32 noundef 0) #16
  %.not281 = icmp eq ptr %i.axi, null
  br i1 %.not281, label %mov_parse_heif_items.exit.thread, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  store ptr null, ptr %i.axb, align 8, !tbaa !312
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ig
  %i.axj = getelementptr inbounds nuw i8, ptr %i.avr, i64 1576 ; 2 uses
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !314 ; 2 uses
  %.not282 = icmp eq ptr %i.axk, null
  br i1 %.not282, label %bb.im, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.axl = load ptr, ptr %i.avs, align 8, !tbaa !51 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 32
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axl, i64 40
  %i.axo = getelementptr inbounds nuw i8, ptr %i.avr, i64 1584
  %i.axp = load i64, ptr %i.axo, align 8, !tbaa !315
  %i.axq = call ptr @av_packet_side_data_add(ptr noundef nonnull %i.axm, ptr noundef nonnull %i.axn, i32 noundef 35, ptr noundef nonnull %i.axk, i64 noundef %i.axp, i32 noundef 0) #16
  %.not283 = icmp eq ptr %i.axq, null
  br i1 %.not283, label %mov_parse_heif_items.exit.thread, label %bb.il

bb.il:                                            ; preds = %bb.ik
  store ptr null, ptr %i.axj, align 8, !tbaa !314
  br label %bb.im

bb.im:                                            ; preds = %bb.ij, %bb.il, %bb.ht, %bb.hs
  %indvars.iv.next669 = add nuw nsw i64 %indvars.iv668, 1 ; 2 uses
  %i.axr = load i32, ptr %i.atk, align 4, !tbaa !28 ; 5 uses
  %i.axs = zext i32 %i.axr to i64
  %i.axt = icmp samesign ult i64 %indvars.iv.next669, %i.axs
  br i1 %i.axt, label %bb.hs, label %._crit_edge537, !llvm.loop !316

._crit_edge537:                                   ; preds = %bb.im
  %.not79.i = icmp eq i32 %i.axr, 0
  br i1 %.not79.i, label %.preheader61.i, label %.lr.ph.i366

.lr.ph.i366:                                      ; preds = %._crit_edge537
  %i.axu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !39 ; 3 uses
  %wide.trip.count.i367 = zext i32 %i.axr to i64  ; 2 uses
  %xtraiter1164 = and i64 %wide.trip.count.i367, 1
  %i.axw = icmp eq i32 %i.axr, 1
  br i1 %i.axw, label %.epil.preheader1163, label %.lr.ph.i366.new

.lr.ph.i366.new:                                  ; preds = %.lr.ph.i366
  %unroll_iter1169 = and i64 %wide.trip.count.i367, 4294967294
  br label %bb.io

.preheader61.i.loopexit.unr-lcssa:                ; preds = %bb.is
  %lcmp.mod1166.not = icmp eq i64 %xtraiter1164, 0
  br i1 %lcmp.mod1166.not, label %.preheader61.i, label %.epil.preheader1163

.epil.preheader1163:                              ; preds = %.preheader61.i.loopexit.unr-lcssa, %.lr.ph.i366
  %indvars.iv.i368.epil.init = phi i64 [ 0, %.lr.ph.i366 ], [ %indvars.iv.next.i370.1, %.preheader61.i.loopexit.unr-lcssa ]
  %.063.i.epil.init = phi i32 [ 0, %.lr.ph.i366 ], [ %.1.i.1, %.preheader61.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1168 = trunc i32 %i.axr to i1
  call void @llvm.assume(i1 %lcmp.mod1168)
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %i.axv, i64 %indvars.iv.i368.epil.init
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !40 ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 24
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !42
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 1640
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !288
  %.not58.i369.epil = icmp eq ptr %i.ayc, null
  br i1 %.not58.i369.epil, label %bb.in, label %.preheader61.i

bb.in:                                            ; preds = %.epil.preheader1163
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axy, i64 12
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !253
  %.0..i.epil = call i32 @llvm.smax.i32(i32 %.063.i.epil.init, i32 %i.aye)
  br label %.preheader61.i

.preheader61.i:                                   ; preds = %.preheader61.i.loopexit.unr-lcssa, %bb.in, %.epil.preheader1163, %.critedge4, %._crit_edge537
  %.0.lcssa.i = phi i32 [ 0, %._crit_edge537 ], [ 0, %.critedge4 ], [ %.1.i.1, %.preheader61.i.loopexit.unr-lcssa ], [ %.063.i.epil.init, %.epil.preheader1163 ], [ %.0..i.epil, %bb.in ] ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ayg = load i32, ptr %i.ayf, align 8, !tbaa !317 ; 4 uses
  %.not80.i = icmp eq i32 %i.ayg, 0
  br i1 %.not80.i, label %._crit_edge.i374, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %.preheader61.i
  %i.ayh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ayi = load ptr, ptr %i.ayh, align 8, !tbaa !318
  %wide.trip.count95.i = zext i32 %i.ayg to i64
  br label %bb.it

bb.io:                                            ; preds = %bb.is, %.lr.ph.i366.new
  %indvars.iv.i368 = phi i64 [ 0, %.lr.ph.i366.new ], [ %indvars.iv.next.i370.1, %bb.is ] ; 3 uses
  %.063.i = phi i32 [ 0, %.lr.ph.i366.new ], [ %.1.i.1, %bb.is ] ; 2 uses
  %niter1170 = phi i64 [ 0, %.lr.ph.i366.new ], [ %niter1170.next.1, %bb.is ]
  %i.ayj = getelementptr inbounds nuw [8 x i8], ptr %i.axv, i64 %indvars.iv.i368
  %i.ayk = load ptr, ptr %i.ayj, align 8, !tbaa !40 ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 24
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !42
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 1640
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !288
  %.not58.i369 = icmp eq ptr %i.ayo, null
  br i1 %.not58.i369, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayk, i64 12
  %i.ayq = load i32, ptr %i.ayp, align 4, !tbaa !253
  %.0..i = call i32 @llvm.smax.i32(i32 %.063.i, i32 %i.ayq)
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %.1.i = phi i32 [ %.063.i, %bb.io ], [ %.0..i, %bb.ip ] ; 2 uses
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr %i.axv, i64 %indvars.iv.i368
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 8
  %i.ayt = load ptr, ptr %i.ays, align 8, !tbaa !40 ; 2 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayt, i64 24
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !42
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 1640
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !288
  %.not58.i369.1 = icmp eq ptr %i.ayx, null
  br i1 %.not58.i369.1, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayt, i64 12
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !253
  %.0..i.1 = call i32 @llvm.smax.i32(i32 %.1.i, i32 %i.ayz)
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.1.i.1 = phi i32 [ %.1.i, %bb.iq ], [ %.0..i.1, %bb.ir ] ; 3 uses
  %indvars.iv.next.i370.1 = add nuw nsw i64 %indvars.iv.i368, 2 ; 2 uses
  %niter1170.next.1 = add i64 %niter1170, 2       ; 2 uses
  %niter1170.ncmp.1 = icmp eq i64 %niter1170.next.1, %unroll_iter1169
  br i1 %niter1170.ncmp.1, label %.preheader61.i.loopexit.unr-lcssa, label %bb.io, !llvm.loop !319

._crit_edge.i374:                                 ; preds = %.loopexit60.i, %.preheader61.i
  %.046.lcssa.i = phi i32 [ 2147483647, %.preheader61.i ], [ %.2.i373, %.loopexit60.i ] ; 2 uses
  %i.aza = icmp slt i32 %.0.lcssa.i, %.046.lcssa.i
  br i1 %i.aza, label %fix_stream_ids.exit, label %bb.iw

bb.it:                                            ; preds = %.loopexit60.i, %.lr.ph70.i
  %indvars.iv92.i = phi i64 [ 0, %.lr.ph70.i ], [ %indvars.iv.next93.i, %.loopexit60.i ] ; 2 uses
  %.04669.i = phi i32 [ 2147483647, %.lr.ph70.i ], [ %.2.i373, %.loopexit60.i ] ; 4 uses
  %i.azb = getelementptr inbounds nuw [8 x i8], ptr %i.ayi, i64 %indvars.iv92.i
  %i.azc = load ptr, ptr %i.azb, align 8, !tbaa !320 ; 3 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 32
  %i.aze = load i32, ptr %i.azd, align 8, !tbaa !322
  %.not57.i372 = icmp eq i32 %i.aze, 1
  br i1 %.not57.i372, label %.preheader59.i, label %.loopexit60.i

.preheader59.i:                                   ; preds = %bb.it
  %i.azf = getelementptr inbounds nuw i8, ptr %i.azc, i64 56
  %i.azg = load i32, ptr %i.azf, align 8, !tbaa !206 ; 3 uses
  %.not81.i = icmp eq i32 %i.azg, 0
  br i1 %.not81.i, label %.loopexit60.i, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %.preheader59.i
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azc, i64 64
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !208 ; 5 uses
  %wide.trip.count90.i = zext i32 %i.azg to i64   ; 2 uses
  %xtraiter1172 = and i64 %wide.trip.count90.i, 3 ; 3 uses
  %i.azj = icmp ult i32 %i.azg, 4
  br i1 %i.azj, label %.epil.preheader1171, label %.lr.ph66.i.new

.lr.ph66.i.new:                                   ; preds = %.lr.ph66.i
  %unroll_iter1177 = and i64 %wide.trip.count90.i, 4294967292
  br label %bb.iu

bb.iu:                                            ; preds = %bb.iu, %.lr.ph66.i.new
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph66.i.new ], [ %indvars.iv.next88.i.3, %bb.iu ] ; 5 uses
  %.14765.i = phi i32 [ %.04669.i, %.lr.ph66.i.new ], [ %..147.i.3, %bb.iu ]
  %niter1178 = phi i64 [ 0, %.lr.ph66.i.new ], [ %niter1178.next.3, %bb.iu ]
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %i.azi, i64 %indvars.iv87.i
  %i.azl = load ptr, ptr %i.azk, align 8, !tbaa !40
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 12
  %i.azn = load i32, ptr %i.azm, align 4, !tbaa !253
  %..147.i = call i32 @llvm.smin.i32(i32 %.14765.i, i32 %i.azn)
  %i.azo = getelementptr inbounds nuw [8 x i8], ptr %i.azi, i64 %indvars.iv87.i
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 8
  %i.azq = load ptr, ptr %i.azp, align 8, !tbaa !40
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 12
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !253
  %..147.i.1 = call i32 @llvm.smin.i32(i32 %..147.i, i32 %i.azs)
  %i.azt = getelementptr inbounds nuw [8 x i8], ptr %i.azi, i64 %indvars.iv87.i
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 16
  %i.azv = load ptr, ptr %i.azu, align 8, !tbaa !40
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 12
  %i.azx = load i32, ptr %i.azw, align 4, !tbaa !253
  %..147.i.2 = call i32 @llvm.smin.i32(i32 %..147.i.1, i32 %i.azx)
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr %i.azi, i64 %indvars.iv87.i
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 24
  %i.baa = load ptr, ptr %i.azz, align 8, !tbaa !40
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 12
  %i.bac = load i32, ptr %i.bab, align 4, !tbaa !253
  %..147.i.3 = call i32 @llvm.smin.i32(i32 %..147.i.2, i32 %i.bac) ; 3 uses
  %indvars.iv.next88.i.3 = add nuw nsw i64 %indvars.iv87.i, 4 ; 2 uses
  %niter1178.next.3 = add i64 %niter1178, 4       ; 2 uses
  %niter1178.ncmp.3 = icmp eq i64 %niter1178.next.3, %unroll_iter1177
  br i1 %niter1178.ncmp.3, label %.loopexit60.i.loopexit.unr-lcssa, label %bb.iu, !llvm.loop !323

.loopexit60.i.loopexit.unr-lcssa:                 ; preds = %bb.iu
  %lcmp.mod1174.not = icmp eq i64 %xtraiter1172, 0
  br i1 %lcmp.mod1174.not, label %.loopexit60.i, label %.epil.preheader1171

.epil.preheader1171:                              ; preds = %.loopexit60.i.loopexit.unr-lcssa, %.lr.ph66.i
  %indvars.iv87.i.epil.init = phi i64 [ 0, %.lr.ph66.i ], [ %indvars.iv.next88.i.3, %.loopexit60.i.loopexit.unr-lcssa ]
  %.14765.i.epil.init = phi i32 [ %.04669.i, %.lr.ph66.i ], [ %..147.i.3, %.loopexit60.i.loopexit.unr-lcssa ]
  %lcmp.mod1176 = icmp ne i64 %xtraiter1172, 0
  call void @llvm.assume(i1 %lcmp.mod1176)
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iv, %.epil.preheader1171
  %indvars.iv87.i.epil = phi i64 [ %indvars.iv87.i.epil.init, %.epil.preheader1171 ], [ %indvars.iv.next88.i.epil, %bb.iv ] ; 2 uses
  %.14765.i.epil = phi i32 [ %.14765.i.epil.init, %.epil.preheader1171 ], [ %..147.i.epil, %bb.iv ]
  %epil.iter1173 = phi i64 [ 0, %.epil.preheader1171 ], [ %epil.iter1173.next, %bb.iv ]
  %i.bad = getelementptr inbounds nuw [8 x i8], ptr %i.azi, i64 %indvars.iv87.i.epil
  %i.bae = load ptr, ptr %i.bad, align 8, !tbaa !40
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 12
  %i.bag = load i32, ptr %i.baf, align 4, !tbaa !253
  %..147.i.epil = call i32 @llvm.smin.i32(i32 %.14765.i.epil, i32 %i.bag) ; 2 uses
  %indvars.iv.next88.i.epil = add nuw nsw i64 %indvars.iv87.i.epil, 1
  %epil.iter1173.next = add i64 %epil.iter1173, 1 ; 2 uses
  %epil.iter1173.cmp.not = icmp eq i64 %epil.iter1173.next, %xtraiter1172
  br i1 %epil.iter1173.cmp.not, label %.loopexit60.i, label %bb.iv, !llvm.loop !324

.loopexit60.i:                                    ; preds = %.loopexit60.i.loopexit.unr-lcssa, %bb.iv, %.preheader59.i, %bb.it
  %.2.i373 = phi i32 [ %.04669.i, %bb.it ], [ %.04669.i, %.preheader59.i ], [ %..147.i.3, %.loopexit60.i.loopexit.unr-lcssa ], [ %..147.i.epil, %bb.iv ] ; 2 uses
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %exitcond96.not.i = icmp eq i64 %indvars.iv.next93.i, %wide.trip.count95.i
  br i1 %exitcond96.not.i, label %._crit_edge.i374, label %bb.it, !llvm.loop !325

bb.iw:                                            ; preds = %._crit_edge.i374
  %.not.i375 = icmp eq i32 %.046.lcssa.i, 0
  %i.bah = zext i1 %.not.i375 to i32
  %i.bai = add nuw nsw i32 %.0.lcssa.i, %i.bah
  %.fr82.i = freeze i32 %i.bai                    ; 7 uses
  %i.baj = icmp sgt i32 %.fr82.i, 1
  %i.bak = icmp ne i32 %i.ayg, 0
  %or.cond75.i = and i1 %i.bak, %i.baj
  br i1 %or.cond75.i, label %.lr.ph78.split.preheader.i, label %fix_stream_ids.exit

.lr.ph78.split.preheader.i:                       ; preds = %bb.iw
  %i.bal = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bam = load ptr, ptr %i.bal, align 8, !tbaa !318
  %wide.trip.count110.i = zext i32 %i.ayg to i64
  br label %.lr.ph78.split.i

.lr.ph78.split.i:                                 ; preds = %.loopexit.i376, %.lr.ph78.split.preheader.i
  %indvars.iv107.i = phi i64 [ 0, %.lr.ph78.split.preheader.i ], [ %indvars.iv.next108.i, %.loopexit.i376 ] ; 2 uses
  %i.ban = getelementptr inbounds nuw [8 x i8], ptr %i.bam, i64 %indvars.iv107.i
  %i.bao = load ptr, ptr %i.ban, align 8, !tbaa !320 ; 3 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 32
  %i.baq = load i32, ptr %i.bap, align 8, !tbaa !322
  %.not56.i = icmp eq i32 %i.baq, 1
  br i1 %.not56.i, label %.preheader.i, label %.loopexit.i376

.preheader.i:                                     ; preds = %.lr.ph78.split.i
  %i.bar = getelementptr inbounds nuw i8, ptr %i.bao, i64 56
  %i.bas = load i32, ptr %i.bar, align 8, !tbaa !206 ; 4 uses
  %.not84.i377 = icmp eq i32 %i.bas, 0
  br i1 %.not84.i377, label %.loopexit.i376, label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.preheader.i
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bao, i64 64
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !208 ; 3 uses
  %wide.trip.count105.i = zext i32 %i.bas to i64  ; 2 uses
  %xtraiter1180 = and i64 %wide.trip.count105.i, 1
  %i.bav = icmp eq i32 %i.bas, 1
  br i1 %i.bav, label %.epil.preheader1179, label %.lr.ph74.i.new

.lr.ph74.i.new:                                   ; preds = %.lr.ph74.i
  %unroll_iter1184 = and i64 %wide.trip.count105.i, 4294967294
  br label %bb.ix

bb.ix:                                            ; preds = %bb.ix, %.lr.ph74.i.new
  %indvars.iv102.i = phi i64 [ 0, %.lr.ph74.i.new ], [ %indvars.iv.next103.i.1, %bb.ix ] ; 3 uses
  %niter1185 = phi i64 [ 0, %.lr.ph74.i.new ], [ %niter1185.next.1, %bb.ix ]
  %i.baw = getelementptr inbounds nuw [8 x i8], ptr %i.bau, i64 %indvars.iv102.i
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !40 ; 2 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 24
  %i.baz = load ptr, ptr %i.bay, align 8, !tbaa !42
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bax, i64 12 ; 2 uses
  %i.bbb = load i32, ptr %i.bba, align 4, !tbaa !253
  %i.bbc = add nsw i32 %i.bbb, %.fr82.i
  store i32 %i.bbc, ptr %i.bba, align 4, !tbaa !253
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.baz, i64 1648
  store i32 %.fr82.i, ptr %i.bbd, align 8, !tbaa !326
  %i.bbe = getelementptr inbounds nuw [8 x i8], ptr %i.bau, i64 %indvars.iv102.i
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 8
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !40 ; 2 uses
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 24
  %i.bbi = load ptr, ptr %i.bbh, align 8, !tbaa !42
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbg, i64 12 ; 2 uses
  %i.bbk = load i32, ptr %i.bbj, align 4, !tbaa !253
  %i.bbl = add nsw i32 %i.bbk, %.fr82.i
  store i32 %i.bbl, ptr %i.bbj, align 4, !tbaa !253
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbi, i64 1648
  store i32 %.fr82.i, ptr %i.bbm, align 8, !tbaa !326
  %indvars.iv.next103.i.1 = add nuw nsw i64 %indvars.iv102.i, 2 ; 2 uses
  %niter1185.next.1 = add i64 %niter1185, 2       ; 2 uses
  %niter1185.ncmp.1 = icmp eq i64 %niter1185.next.1, %unroll_iter1184
  br i1 %niter1185.ncmp.1, label %.loopexit.i376.loopexit.unr-lcssa, label %bb.ix, !llvm.loop !327

.loopexit.i376.loopexit.unr-lcssa:                ; preds = %bb.ix
  %lcmp.mod1182.not = icmp eq i64 %xtraiter1180, 0
  br i1 %lcmp.mod1182.not, label %.loopexit.i376, label %.epil.preheader1179

.epil.preheader1179:                              ; preds = %.loopexit.i376.loopexit.unr-lcssa, %.lr.ph74.i
  %indvars.iv102.i.epil.init = phi i64 [ 0, %.lr.ph74.i ], [ %indvars.iv.next103.i.1, %.loopexit.i376.loopexit.unr-lcssa ]
  %lcmp.mod1183 = trunc i32 %i.bas to i1
  call void @llvm.assume(i1 %lcmp.mod1183)
  %i.bbn = getelementptr inbounds nuw [8 x i8], ptr %i.bau, i64 %indvars.iv102.i.epil.init
  %i.bbo = load ptr, ptr %i.bbn, align 8, !tbaa !40 ; 2 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 24
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !42
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbo, i64 12 ; 2 uses
  %i.bbs = load i32, ptr %i.bbr, align 4, !tbaa !253
  %i.bbt = add nsw i32 %i.bbs, %.fr82.i
  store i32 %i.bbt, ptr %i.bbr, align 4, !tbaa !253
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbq, i64 1648
  store i32 %.fr82.i, ptr %i.bbu, align 8, !tbaa !326
  br label %.loopexit.i376

.loopexit.i376:                                   ; preds = %.epil.preheader1179, %.loopexit.i376.loopexit.unr-lcssa, %.preheader.i, %.lr.ph78.split.i
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond111.not.i = icmp eq i64 %indvars.iv.next108.i, %wide.trip.count110.i
  br i1 %exitcond111.not.i, label %fix_stream_ids.exit, label %.lr.ph78.split.i, !llvm.loop !328

fix_stream_ids.exit:                              ; preds = %.loopexit.i376, %._crit_edge.i374, %bb.iw
  call void @ff_configure_buffers_for_index(ptr noundef %0, i64 noundef 1000000) #16
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.f, i64 268
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !329 ; 4 uses
  %i.bbx = icmp sgt i32 %i.bbw, 0
  br i1 %i.bbx, label %.lr.ph539, label %mov_parse_heif_items.exit.thread

.lr.ph539:                                        ; preds = %fix_stream_ids.exit
  %i.bby = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.bbz = load ptr, ptr %i.bby, align 8, !tbaa !330 ; 3 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.bcb = load i64, ptr %i.bca, align 8, !tbaa !331 ; 3 uses
  %wide.trip.count674 = zext nneg i32 %i.bbw to i64 ; 2 uses
  %xtraiter1187 = and i64 %wide.trip.count674, 1
  %i.bcc = icmp eq i32 %i.bbw, 1
  br i1 %i.bcc, label %.epil.preheader1186, label %.lr.ph539.new

.lr.ph539.new:                                    ; preds = %.lr.ph539
  %unroll_iter1191 = and i64 %wide.trip.count674, 2147483646
  br label %bb.iy

bb.iy:                                            ; preds = %bb.jc, %.lr.ph539.new
  %indvars.iv671 = phi i64 [ 0, %.lr.ph539.new ], [ %indvars.iv.next672.1, %bb.jc ] ; 3 uses
  %niter1192 = phi i64 [ 0, %.lr.ph539.new ], [ %niter1192.next.1, %bb.jc ]
  %i.bcd = getelementptr inbounds nuw [32 x i8], ptr %i.bbz, i64 %indvars.iv671 ; 2 uses
  %i.bce = load i64, ptr %i.bcd, align 8, !tbaa !332
  %.not271 = icmp ugt i64 %i.bce, %i.bcb
  br i1 %.not271, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bcd, i64 8
  store i32 1, ptr %i.bcf, align 8, !tbaa !335
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iy, %bb.iz
  %i.bcg = getelementptr inbounds nuw [32 x i8], ptr %i.bbz, i64 %indvars.iv671 ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 32
  %i.bci = load i64, ptr %i.bch, align 8, !tbaa !332
  %.not271.1 = icmp ugt i64 %i.bci, %i.bcb
  br i1 %.not271.1, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bcg, i64 40
  store i32 1, ptr %i.bcj, align 8, !tbaa !335
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %indvars.iv.next672.1 = add nuw nsw i64 %indvars.iv671, 2 ; 2 uses
  %niter1192.next.1 = add i64 %niter1192, 2       ; 2 uses
  %niter1192.ncmp.1 = icmp eq i64 %niter1192.next.1, %unroll_iter1191
  br i1 %niter1192.ncmp.1, label %mov_parse_heif_items.exit.thread.loopexit.unr-lcssa, label %bb.iy, !llvm.loop !336

mov_parse_heif_items.exit.thread.loopexit.unr-lcssa: ; preds = %bb.jc
  %lcmp.mod1189.not = icmp eq i64 %xtraiter1187, 0
  br i1 %lcmp.mod1189.not, label %mov_parse_heif_items.exit.thread, label %.epil.preheader1186

.epil.preheader1186:                              ; preds = %mov_parse_heif_items.exit.thread.loopexit.unr-lcssa, %.lr.ph539
  %indvars.iv671.epil.init = phi i64 [ 0, %.lr.ph539 ], [ %indvars.iv.next672.1, %mov_parse_heif_items.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod1190 = trunc i32 %i.bbw to i1
  call void @llvm.assume(i1 %lcmp.mod1190)
  %i.bck = getelementptr inbounds nuw [32 x i8], ptr %i.bbz, i64 %indvars.iv671.epil.init ; 2 uses
  %i.bcl = load i64, ptr %i.bck, align 8, !tbaa !332
  %.not271.epil = icmp ugt i64 %i.bcl, %i.bcb
  br i1 %.not271.epil, label %mov_parse_heif_items.exit.thread, label %bb.jd

bb.jd:                                            ; preds = %.epil.preheader1186
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bck, i64 8
  store i32 1, ptr %i.bcm, align 8, !tbaa !335
  br label %mov_parse_heif_items.exit.thread

mov_parse_heif_items.exit.thread:                 ; preds = %bb.y, %bb.al, %bb.ah, %bb.ct, %bb.ap, %bb.cr, %bb.cc, %._crit_edge.i.i.i, %bb.bs, %bb.bo, %bb.bk, %bb.ax, %.preheader.us.i.i.i, %bb.cn, %bb.bt, %bb.ez, %bb.en, %bb.ew, %bb.es, %bb.fl, %bb.fr, %mov_find_reference_track.exit.thread.thread.i, %bb.fp, %mov_find_reference_track.exit.thread.i354, %bb.gh, %bb.gg, %bb.gf, %bb.hm, %bb.ik, %bb.hv, %bb.hy, %bb.ib, %bb.ie, %bb.ih, %bb.ht, %mov_parse_heif_items.exit.thread.loopexit.unr-lcssa, %bb.jd, %.epil.preheader1186, %fix_stream_ids.exit, %read_image_grid.exit.i.i, %bb.by, %.split.us.i.i.i, %bb.bj, %bb.bg, %bb.bw, %sanity_checks.exit.i, %bb.s, %bb.cb, %bb.hg, %bb.l, %bb.e
  %.7 = phi i32 [ %i.w, %bb.e ], [ -1094995529, %bb.l ], [ 0, %fix_stream_ids.exit ], [ -1094995529, %bb.cb ], [ -12, %bb.en ], [ %.1228, %bb.hg ], [ -12, %bb.fl ], [ %i.avw, %bb.ht ], [ %i.aex, %bb.es ], [ -1094995529, %bb.bw ], [ -1094995529, %bb.bt ], [ %i.akk, %bb.fp ], [ %i.gk, %bb.ax ], [ -1094995529, %sanity_checks.exit.i ], [ -1094995529, %bb.s ], [ 0, %mov_parse_heif_items.exit.thread.loopexit.unr-lcssa ], [ %i.dl, %bb.ah ], [ -1094995529, %.preheader.us.i.i.i ], [ -1094995529, %bb.hm ], [ -12, %read_image_grid.exit.i.i ], [ %i.afx, %bb.ew ], [ -12, %bb.gf ], [ -1163346256, %bb.by ], [ -1094995529, %.split.us.i.i.i ], [ -1094995529, %bb.bj ], [ -1163346256, %bb.bg ], [ %i.tg, %bb.cn ], [ -12, %bb.bs ], [ 0, %.epil.preheader1186 ], [ 0, %bb.jd ], [ -12, %bb.ih ], [ -12, %bb.ie ], [ -12, %bb.ib ], [ -12, %bb.hy ], [ -12, %bb.hv ], [ -12, %bb.ik ], [ %i.anp, %bb.gg ], [ %i.anr, %bb.gh ], [ -1094995529, %mov_find_reference_track.exit.thread.i354 ], [ -1094995529, %mov_find_reference_track.exit.thread.thread.i ], [ %i.aku, %bb.fr ], [ %i.agi, %bb.ez ], [ -1094995529, %bb.bk ], [ -1094995529, %bb.bo ], [ -12, %bb.ap ], [ -1094995529, %._crit_edge.i.i.i ], [ -1094995529, %bb.cc ], [ -12, %bb.cr ], [ -12, %bb.ct ], [ -12, %bb.al ], [ -1094995529, %bb.y ]
  ret i32 %.7
}

; Function Attrs: nounwind uwtable
define internal i32 @mov_read_packet(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !147  ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store ptr null, ptr %i.i, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 20 uses
  store ptr %0, ptr %i.l, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 256 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 268 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 272 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 264 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.a
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !148
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !337
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.b, label %bb.i

bb.b:                                             ; preds = %.outer
  %i.af = load i32, ptr %i.n, align 8, !tbaa !338
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.ah = load i32, ptr %i.o, align 4, !tbaa !329
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @av_freep(ptr noundef nonnull %i.p) #16
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %i.n, align 8, !tbaa !87
  br label %bb.c

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !330
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.al) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.o, align 4, !tbaa !329
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !339

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.ap = load i32, ptr %i.r, align 4, !tbaa !28  ; 2 uses
  %.not404 = icmp eq i32 %i.ap, 0
  br i1 %.not404, label %._crit_edge390, label %.lr.ph389

.lr.ph389:                                        ; preds = %bb.c, %bb.h
  %i.aq = phi i32 [ %i.bt, %bb.h ], [ %i.ap, %bb.c ]
  %indvars.iv461 = phi i64 [ %indvars.iv.next462, %bb.h ], [ 0, %bb.c ] ; 2 uses
  %i.ar = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv461
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 224
  store i32 0, ptr %i.aw, align 8, !tbaa !340
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 232 ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !341
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 240
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !342 ; 4 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %mov_current_sample_set.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph389
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 248 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !343 ; 2 uses
  %.not2124.i = icmp eq i64 %i.bc, 0
  br i1 %.not2124.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %i.bd = phi i64 [ %i.bn, %bb.f ], [ %i.bc, %bb.d ]
  %.026.i = phi i32 [ %i.bk, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %storemerge25.i = phi ptr [ %i.bl, %bb.f ], [ %i.az, %bb.d ] ; 4 uses
  %i.be = load i64, ptr %storemerge25.i, align 8, !tbaa !345 ; 2 uses
  %i.bf = sub nsw i64 %i.bd, %i.be                ; 2 uses
  %i.bg = sext i32 %.026.i to i64                 ; 2 uses
  %i.bh = icmp sgt i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  store ptr %storemerge25.i, ptr %i.ba, align 8, !tbaa !346
  %i.bi = add nsw i64 %i.be, %i.bg
  store i64 %i.bi, ptr %i.ax, align 8, !tbaa !341
  br label %mov_current_sample_set.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.bj = trunc i64 %i.bf to i32
  %i.bk = sub i32 %.026.i, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %storemerge25.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %storemerge25.i, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !343 ; 2 uses
  %.not21.i = icmp eq i64 %i.bn, 0
  br i1 %.not21.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !347

.loopexit.i:                                      ; preds = %bb.f, %bb.d
  %storemerge.lcssa.i = phi ptr [ %i.az, %bb.d ], [ %i.bl, %bb.f ]
  store ptr %storemerge.lcssa.i, ptr %i.ba, align 8, !tbaa !346
  br label %mov_current_sample_set.exit

mov_current_sample_set.exit:                      ; preds = %.lr.ph389, %bb.e, %.loopexit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 156
  store i32 0, ptr %i.bo, align 4, !tbaa !348
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 332 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !349
  %.not240 = icmp eq i32 %i.bq, 0
  br i1 %.not240, label %bb.h, label %bb.g

bb.g:                                             ; preds = %mov_current_sample_set.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 320
  tail call void @av_freep(ptr noundef nonnull %i.br) #16
  store i32 0, ptr %i.bp, align 4, !tbaa !349
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 328
  store i32 0, ptr %i.bs, align 8, !tbaa !244
  %.pre = load i32, ptr %i.r, align 4, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %mov_current_sample_set.exit
  %i.bt = phi i32 [ %.pre, %bb.g ], [ %i.aq, %mov_current_sample_set.exit ] ; 2 uses
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next462, %i.bu
  br i1 %i.bv, label %.lr.ph389, label %._crit_edge390, !llvm.loop !350

._crit_edge390:                                   ; preds = %bb.h, %bb.c
  %i.bw = tail call fastcc i32 @mov_switch_root(ptr noundef nonnull %0, i64 noundef -1, i32 noundef -1) ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %mov_current_sample_dec.exit266.thread, label %bb.i

bb.i:                                             ; preds = %._crit_edge390, %.outer
  %i.by = call fastcc ptr @mov_find_next_sample(ptr noundef nonnull %0, ptr noundef %i.i) ; 13 uses
  %.not = icmp eq ptr %i.by, null
  %.pre469 = load i64, ptr %i.t, align 8, !tbaa !143 ; 5 uses
  %.not239 = icmp eq i64 %.pre469, 0              ; 3 uses
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not239, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !246
  %i.ca = icmp sgt i64 %i.bz, %.pre469
  br i1 %i.ca, label %.thread540, label %bb.m

bb.l:                                             ; preds = %bb.i
  br i1 %.not239, label %mov_current_sample_dec.exit266.thread, label %.thread540
end_hunk_1
begin_hunk_2_@mov_read_dref:bb.a

bb.e:                                             ; preds = %.lr.ph243
  %i.at = add i32 %i.am, -4
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %i.an, %i.au            ; 2 uses
  %i.aw = tail call i32 @avio_rl32(ptr noundef %1) #16
  store i32 %i.aw, ptr %i.al, align 8, !tbaa !445
  %i.ax = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 0 uses
  %i.ay = load i32, ptr %i.al, align 8, !tbaa !445 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1936288865
  %i.ba = icmp ugt i32 %i.am, 150
  %or.cond7 = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond7, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %bb.e
  %i.bb = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 10) #16 ; 0 uses
  %i.bc = tail call i32 @avio_r8(ptr noundef %1) #16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 4 uses
  %i.be = tail call i32 @ffio_read_size(ptr noundef %1, ptr noundef nonnull %i.bd, i32 noundef 27) #16 ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = and i32 %i.bc, 65535
  %i.bh = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 27) ; 4 uses
  %i.bi = zext nneg i32 %i.bh to i64              ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bi
  store i8 0, ptr %i.bj, align 1, !tbaa !86
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bk, i32 noundef 48, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.bd, i32 noundef %i.bh) #16
  %i.bl = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 12) #16 ; 0 uses
  %i.bm = tail call i32 @avio_r8(ptr noundef %1) #16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.al, i64 52 ; 3 uses
  %i.bo = tail call i32 @ffio_read_size(ptr noundef %1, ptr noundef nonnull %i.bn, i32 noundef 63) #16 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = and i32 %i.bm, 65535
  %i.br = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 63) ; 2 uses
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bs
  store i8 0, ptr %i.bt, align 1, !tbaa !86
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bu, i32 noundef 48, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.bn, i32 noundef %i.br) #16
  %i.bv = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 16) #16 ; 0 uses
  %i.bw = tail call i32 @avio_rb16(ptr noundef %1) #16
  %i.bx = trunc i32 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.al, i64 118 ; 2 uses
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !447
  %i.bz = tail call i32 @avio_rb16(ptr noundef %1) #16 ; 2 uses
  %i.ca = trunc i32 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.al, i64 116
  store i16 %i.ca, ptr %i.cb, align 4, !tbaa !448
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.cd = load i16, ptr %i.by, align 2, !tbaa !447
  %i.ce = sext i16 %i.cd to i32
  %sext = shl i32 %i.bz, 16
  %i.cf = ashr exact i32 %sext, 16
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cc, i32 noundef 48, ptr noundef nonnull @.str.63, i32 noundef %i.ce, i32 noundef %i.cf) #16
  %i.cg = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 16) #16 ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 8 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 10 uses
  %i.cj = trunc nuw nsw i32 %i.bh to i16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.af
  %i.ck = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #16
  %i.cl = icmp slt i64 %i.ck, %i.av
  br i1 %i.cl, label %bb.j, label %.loopexit.loopexit

bb.j:                                             ; preds = %bb.i
  %i.cm = tail call i32 @avio_feof(ptr noundef %1) #16
  %.not202 = icmp eq i32 %i.cm, 0
  br i1 %.not202, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cn = tail call i32 @avio_rb16(ptr noundef %1) #16 ; 2 uses
  %i.co = tail call i32 @avio_rb16(ptr noundef %1) #16 ; 2 uses
  %i.cp = trunc i32 %i.co to i16                  ; 2 uses
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !9
  %sext203 = shl i32 %i.cn, 16                    ; 2 uses
  %i.cr = ashr exact i32 %sext203, 16
  %i.cs = and i32 %i.co, 65535
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cq, i32 noundef 48, ptr noundef nonnull @.str.64, i32 noundef %i.cr, i32 noundef %i.cs) #16
  %i.ct = and i16 %i.cp, 1
  %.0168 = add i16 %i.ct, %i.cp                   ; 11 uses
  switch i32 %sext203, label %bb.ae [
    i32 131072, label %bb.l
    i32 0, label %bb.x
  ]

bb.l:                                             ; preds = %bb.k
  %i.cu = load ptr, ptr %i.ci, align 8, !tbaa !449
  tail call void @av_free(ptr noundef %i.cu) #16
  %i.cv = zext i16 %.0168 to i32                  ; 3 uses
  %i.cw = add nuw nsw i32 %i.cv, 1
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = tail call noalias ptr @av_mallocz(i64 noundef %i.cx) #16 ; 3 uses
  store ptr %i.cy, ptr %i.ci, align 8, !tbaa !449
  %.not206 = icmp eq ptr %i.cy, null
  br i1 %.not206, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = tail call i32 @ffio_read_size(ptr noundef %1, ptr noundef nonnull %i.cy, i32 noundef %i.cv) #16 ; 2 uses
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = icmp samesign ult i32 %i.bh, %i.cv
  br i1 %i.db, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dc = load ptr, ptr %i.ci, align 8, !tbaa !449 ; 3 uses
  %i.dd = tail call i32 @strncmp(ptr noundef %i.dc, ptr noundef nonnull %i.bd, i64 noundef %i.bi) #18
  %.not207 = icmp eq i32 %i.dd, 0
  br i1 %.not207, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.de = sub i16 %.0168, %i.cj                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.bi
  %i.dg = zext i16 %i.de to i64                   ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.df, i64 %i.dg, i1 false)
  %i.dh = load ptr, ptr %i.ci, align 8, !tbaa !449
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store i8 0, ptr %i.di, align 1, !tbaa !86
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1 = phi i16 [ %.0168, %bb.o ], [ %i.de, %bb.p ], [ %.0168, %bb.n ] ; 3 uses
  %.not253 = icmp eq i16 %.1, 0
  br i1 %.not253, label %._crit_edge239, label %.lr.ph232

.lr.ph232:                                        ; preds = %bb.q
  %i.dj = zext i16 %.1 to i32
  %i.dk = load ptr, ptr %i.ci, align 8, !tbaa !449
  %i.dl = zext i16 %.1 to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph232, %bb.s
  %indvars.iv268 = phi i64 [ %i.dl, %.lr.ph232 ], [ %indvars.iv.next269, %bb.s ] ; 2 uses
  %.0174230.in = phi i32 [ %i.dj, %.lr.ph232 ], [ %.0174230, %bb.s ] ; 4 uses
  %indvars.iv.next269 = add nsw i64 %indvars.iv268, -1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.next269
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !86
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %bb.s, label %._crit_edge233

bb.s:                                             ; preds = %bb.r
  %.0174230 = add nsw i32 %.0174230.in, -1
  %i.dp = icmp samesign ugt i64 %indvars.iv268, 1
  br i1 %i.dp, label %bb.r, label %._crit_edge239, !llvm.loop !450

._crit_edge233:                                   ; preds = %bb.r
  %i.dq = and i32 %.0174230.in, 65535
  %.not254 = icmp eq i32 %i.dq, 0
  br i1 %.not254, label %._crit_edge239, label %.lr.ph238.preheader

.lr.ph238.preheader:                              ; preds = %._crit_edge233
  %indvars270.le.mask = and i32 %.0174230.in, 65535 ; 2 uses
  %wide.trip.count274 = zext nneg i32 %indvars270.le.mask to i64 ; 2 uses
  %xtraiter311 = and i64 %wide.trip.count274, 1
  %i.dr = icmp eq i32 %indvars270.le.mask, 1
  br i1 %i.dr, label %.lr.ph238.epil.preheader, label %.lr.ph238.preheader.new

.lr.ph238.preheader.new:                          ; preds = %.lr.ph238.preheader
  %unroll_iter314 = and i64 %wide.trip.count274, 65534
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %bb.v, %.lr.ph238.preheader.new
  %indvars.iv271 = phi i64 [ 0, %.lr.ph238.preheader.new ], [ %indvars.iv.next272.1, %bb.v ] ; 3 uses
  %niter315 = phi i64 [ 0, %.lr.ph238.preheader.new ], [ %niter315.next.1, %bb.v ]
  %i.ds = load ptr, ptr %i.ci, align 8, !tbaa !449
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv271 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !86
  switch i8 %i.du, label %.lr.ph238.1 [
    i8 58, label %bb.t
    i8 0, label %bb.t
  ]

bb.t:                                             ; preds = %.lr.ph238, %.lr.ph238
  store i8 47, ptr %i.dt, align 1, !tbaa !86
  br label %.lr.ph238.1

.lr.ph238.1:                                      ; preds = %.lr.ph238, %bb.t
  %i.dv = load ptr, ptr %i.ci, align 8, !tbaa !449
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv271
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !86
  switch i8 %i.dy, label %bb.v [
    i8 58, label %bb.u
    i8 0, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph238.1, %.lr.ph238.1
  store i8 47, ptr %i.dx, align 1, !tbaa !86
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph238.1
  %indvars.iv.next272.1 = add nuw nsw i64 %indvars.iv271, 2 ; 2 uses
  %niter315.next.1 = add i64 %niter315, 2         ; 2 uses
  %niter315.ncmp.1 = icmp eq i64 %niter315.next.1, %unroll_iter314
  br i1 %niter315.ncmp.1, label %._crit_edge239.loopexit.unr-lcssa, label %.lr.ph238, !llvm.loop !451

._crit_edge239.loopexit.unr-lcssa:                ; preds = %bb.v
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %._crit_edge239, label %.lr.ph238.epil.preheader

.lr.ph238.epil.preheader:                         ; preds = %._crit_edge239.loopexit.unr-lcssa, %.lr.ph238.preheader
  %indvars.iv271.epil.init = phi i64 [ 0, %.lr.ph238.preheader ], [ %indvars.iv.next272.1, %._crit_edge239.loopexit.unr-lcssa ]
  %lcmp.mod313 = trunc i32 %.0174230.in to i1
  tail call void @llvm.assume(i1 %lcmp.mod313)
  %i.dz = load ptr, ptr %i.ci, align 8, !tbaa !449
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv271.epil.init ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !86
  switch i8 %i.eb, label %._crit_edge239 [
    i8 58, label %bb.w
    i8 0, label %bb.w
  ]

bb.w:                                             ; preds = %.lr.ph238.epil.preheader, %.lr.ph238.epil.preheader
  store i8 47, ptr %i.ea, align 1, !tbaa !86
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %bb.s, %._crit_edge239.loopexit.unr-lcssa, %bb.w, %.lr.ph238.epil.preheader, %bb.q, %._crit_edge233
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.ed = load ptr, ptr %i.ci, align 8, !tbaa !449
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ec, i32 noundef 48, ptr noundef nonnull @.str.65, ptr noundef %i.ed) #16
  br label %bb.af

bb.x:                                             ; preds = %bb.k
  %i.ee = load ptr, ptr %i.ch, align 8, !tbaa !452
  tail call void @av_free(ptr noundef %i.ee) #16
  %i.ef = zext i16 %.0168 to i32                  ; 2 uses
  %i.eg = add nuw nsw i32 %i.ef, 1
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = tail call noalias ptr @av_malloc(i64 noundef %i.eh) #16 ; 3 uses
  store ptr %i.ei, ptr %i.ch, align 8, !tbaa !452
  %.not205 = icmp eq ptr %i.ei, null
  br i1 %.not205, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = tail call i32 @ffio_read_size(ptr noundef %1, ptr noundef nonnull %i.ei, i32 noundef %i.ef) #16 ; 2 uses
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %.thread.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = load ptr, ptr %i.ch, align 8, !tbaa !452
  %i.em = zext i16 %.0168 to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.em
  store i8 0, ptr %i.en, align 1, !tbaa !86
  %.not252 = icmp eq i16 %.0168, 0
  br i1 %.not252, label %._crit_edge227, label %.lr.ph226.preheader

.lr.ph226.preheader:                              ; preds = %bb.z
  %wide.trip.count = zext i16 %.0168 to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.eo = icmp eq i16 %.0168, 1
  br i1 %i.eo, label %.lr.ph226.epil.preheader, label %.lr.ph226.preheader.new

.lr.ph226.preheader.new:                          ; preds = %.lr.ph226.preheader
  %unroll_iter = and i64 %wide.trip.count, 65534
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %bb.ac, %.lr.ph226.preheader.new
  %indvars.iv265 = phi i64 [ 0, %.lr.ph226.preheader.new ], [ %indvars.iv.next266.1, %bb.ac ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph226.preheader.new ], [ %niter.next.1, %bb.ac ]
  %i.ep = load ptr, ptr %i.ch, align 8, !tbaa !452
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv265 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !86
  %i.es = icmp eq i8 %i.er, 58
  br i1 %i.es, label %bb.aa, label %.lr.ph226.1

bb.aa:                                            ; preds = %.lr.ph226
  store i8 47, ptr %i.eq, align 1, !tbaa !86
  br label %.lr.ph226.1

.lr.ph226.1:                                      ; preds = %.lr.ph226, %bb.aa
  %i.et = load ptr, ptr %i.ch, align 8, !tbaa !452
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv265
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !86
  %i.ex = icmp eq i8 %i.ew, 58
  br i1 %i.ex, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph226.1
  store i8 47, ptr %i.ev, align 1, !tbaa !86
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph226.1
  %indvars.iv.next266.1 = add nuw nsw i64 %indvars.iv265, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge227.loopexit.unr-lcssa, label %.lr.ph226, !llvm.loop !453

._crit_edge227.loopexit.unr-lcssa:                ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge227, label %.lr.ph226.epil.preheader

.lr.ph226.epil.preheader:                         ; preds = %._crit_edge227.loopexit.unr-lcssa, %.lr.ph226.preheader
  %indvars.iv265.epil.init = phi i64 [ 0, %.lr.ph226.preheader ], [ %indvars.iv.next266.1, %._crit_edge227.loopexit.unr-lcssa ]
  %lcmp.mod310 = trunc i16 %.0168 to i1
  tail call void @llvm.assume(i1 %lcmp.mod310)
  %i.ey = load ptr, ptr %i.ch, align 8, !tbaa !452
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv265.epil.init ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !86
  %i.fb = icmp eq i8 %i.fa, 58
  br i1 %i.fb, label %bb.ad, label %._crit_edge227

bb.ad:                                            ; preds = %.lr.ph226.epil.preheader
  store i8 47, ptr %i.ez, align 1, !tbaa !86
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %._crit_edge227.loopexit.unr-lcssa, %bb.ad, %.lr.ph226.epil.preheader, %bb.z
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.fd = load ptr, ptr %i.ch, align 8, !tbaa !452
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fc, i32 noundef 48, ptr noundef nonnull @.str.66, ptr noundef %i.fd) #16
  br label %bb.af

bb.ae:                                            ; preds = %bb.k
  %i.fe = zext i16 %.0168 to i64
  %i.ff = tail call i64 @avio_skip(ptr noundef %1, i64 noundef %i.fe) #16 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge227, %bb.ae, %._crit_edge239
  %sext200.mask = and i32 %i.cn, 65535
  %.not201 = icmp eq i32 %sext200.mask, 65535
  br i1 %.not201, label %.loopexit.loopexit, label %bb.i, !llvm.loop !454

bb.ag:                                            ; preds = %bb.e
  %i.fg = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fg, i32 noundef 48, ptr noundef nonnull @.str.67, i32 noundef %i.ay, i32 noundef %i.am) #16
  %i.fh = add nsw i32 %.0181240, -1
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.i, %bb.af
  %i.fi = add nsw i32 %.1178241, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ag
  %.1182 = phi i32 [ %i.fh, %bb.ag ], [ %.0181240, %.loopexit.loopexit ] ; 2 uses
  %.2179 = phi i32 [ %.1178241, %bb.ag ], [ %i.fi, %.loopexit.loopexit ] ; 2 uses
  %i.fj = tail call i64 @avio_seek(ptr noundef %1, i64 noundef %i.av, i32 noundef 0) #16 ; 0 uses
  %i.fk = icmp slt i32 %.2179, %.1182
  br i1 %i.fk, label %.lr.ph243, label %.thread, !llvm.loop !455

.thread.sink.split:                               ; preds = %bb.y, %bb.m
  %.lcssa298.sink = phi ptr [ %i.ci, %bb.m ], [ %i.ch, %bb.y ]
  %.4.ph = phi i32 [ %i.cz, %bb.m ], [ %i.ej, %bb.y ]
  tail call void @av_freep(ptr noundef nonnull %.lcssa298.sink) #16
  br label %.thread

.thread:                                          ; preds = %.loopexit, %.lr.ph243, %bb.f, %bb.g, %bb.l, %bb.j, %bb.x, %.thread.sink.split, %._crit_edge, %bb.b, %bb.c, %bb.a
  %.4 = phi i32 [ -1094995529, %bb.b ], [ 0, %bb.a ], [ %.4.ph, %.thread.sink.split ], [ -12, %._crit_edge ], [ -1094995529, %bb.c ], [ -12, %bb.l ], [ -12, %bb.x ], [ -541478725, %bb.j ], [ 0, %.loopexit ], [ %i.bo, %bb.g ], [ %i.be, %bb.f ], [ -1094995529, %.lr.ph243 ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @mov_read_elst(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.critedge92, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load i32, ptr %i.f, align 8, !tbaa !456
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %.critedge92

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = add i32 %i.d, -1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 2 uses
  %i.p = tail call i32 @avio_r8(ptr noundef %1) #16
  %i.q = tail call i32 @avio_rb24(ptr noundef %1) #16 ; 0 uses
  %i.r = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 3 uses
  %i.s = add nsw i64 %3, -8                       ; 6 uses
  %.fr112 = freeze i32 %i.p
  %i.t = icmp eq i32 %.fr112, 1                   ; 2 uses
  %i.u = select i1 %i.t, i64 20, i64 12           ; 3 uses
  %i.v = sext i32 %i.r to i64
  %i.w = mul nsw i64 %i.u, %i.v
  %.not83 = icmp eq i64 %i.s, %i.w
  br i1 %.not83, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 272
  %i.z = load i32, ptr %i.y, align 8, !tbaa !131
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.f

end_hunk_2
begin_hunk_3_@mov_read_trak:bb.a
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !172
  %.not25.i = icmp eq ptr %i.as, null
  br i1 %.not25.i, label %bb.o, label %.thread37.i

bb.m:                                             ; preds = %.thread.i
  %.phi.trans.insert29.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.pre30.i = load i32, ptr %.phi.trans.insert29.i, align 8, !tbaa !171 ; 2 uses
  %.not26.i = icmp eq i32 %.pre30.i, 0
  br i1 %.not26.i, label %bb.p, label %.thread37.i

.thread37.i:                                      ; preds = %bb.m, %bb.l, %bb.j
  %i.at = phi i32 [ %i.an, %bb.m ], [ %i.ac, %bb.l ], [ %i.ac, %bb.j ]
  %i.au = phi ptr [ %i.ao, %bb.m ], [ %i.ad, %bb.l ], [ %i.ad, %bb.j ] ; 2 uses
  %i.av = phi i32 [ 0, %bb.m ], [ %i.ae, %bb.l ], [ %i.ae, %bb.j ]
  %i.aw = phi i32 [ %.pre30.i, %bb.m ], [ %i.ai, %bb.l ], [ %i.ai, %bb.j ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !173
  %i.az = add i32 %i.aw, -1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !174
  %i.bd = icmp ugt i32 %i.bc, %i.av
  br i1 %i.bd, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.thread37.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.au, i32 noundef 16, ptr noundef nonnull @.str.163, i32 noundef %i.at) #16
  br label %mov_update_iamf_streams.exit

bb.o:                                             ; preds = %bb.h, %.thread.i, %bb.l, %bb.k, %bb.i
  %.ph = phi i32 [ %i.ac, %bb.i ], [ %i.ac, %bb.k ], [ %i.ac, %bb.l ], [ %i.an, %.thread.i ], [ %i.ac, %bb.h ]
  %.ph182 = phi ptr [ %i.ad, %bb.i ], [ %i.ad, %bb.k ], [ %i.ad, %bb.l ], [ %i.ao, %.thread.i ], [ %i.ad, %bb.h ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %.ph182, i32 noundef 16, ptr noundef nonnull @.str.162, i32 noundef %.ph) #16
  br label %mov_update_iamf_streams.exit

bb.p:                                             ; preds = %.thread37.i, %bb.m
  %i.be = phi ptr [ %i.au, %.thread37.i ], [ %i.ao, %bb.m ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 200 ; 4 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !285 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 1
  br i1 %i.bh, label %bb.q, label %fix_timescale.exit

bb.q:                                             ; preds = %bb.p
  %i.bi = load i32, ptr %i.k, align 4, !tbaa !286
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.be, i32 noundef 24, ptr noundef nonnull @.str.164, i32 noundef %i.bi) #16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !287
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 1) ; 2 uses
  store i32 %spec.store.select.i, ptr %i.bf, align 8
  br label %fix_timescale.exit

fix_timescale.exit:                               ; preds = %bb.p, %bb.q
  %i.bl = phi i32 [ %i.bg, %bb.p ], [ %spec.store.select.i, %bb.q ]
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.c, i32 noundef 64, i32 noundef 1, i32 noundef %i.bl) #16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !170
  %.not157 = icmp eq i32 %i.bn, 0
  br i1 %.not157, label %bb.r, label %bb.t

bb.r:                                             ; preds = %fix_timescale.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !540
  %.not158 = icmp eq i32 %i.bp, 0
  br i1 %.not158, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bq, i32 noundef 40, ptr noundef nonnull @.str.159) #16
  store i32 0, ptr %i.bo, align 4, !tbaa !540
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 1, ptr %i.br, align 8, !tbaa !541
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %fix_timescale.exit
  tail call fastcc void @mov_build_index(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 1640
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !288
  %.not159 = icmp eq ptr %i.bt, null
  br i1 %.not159, label %mov_update_iamf_streams.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1640
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !288 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !542 ; 2 uses
  %.not6780.i = icmp sgt i32 %i.by, 0
  br i1 %.not6780.i, label %.preheader73.lr.ph.i, label %mov_update_iamf_streams.exit.thread

.preheader73.lr.ph.i:                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 332 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  br label %.preheader73.i

.preheader73.i:                                   ; preds = %._crit_edge79.i, %.preheader73.lr.ph.i
  %i.ci = phi i32 [ %i.by, %.preheader73.lr.ph.i ], [ %i.ff, %._crit_edge79.i ]
  %indvars.iv89.i = phi i64 [ 0, %.preheader73.lr.ph.i ], [ %indvars.iv.next90.i, %._crit_edge79.i ] ; 2 uses
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !317 ; 3 uses
  %.not82.i = icmp eq i32 %i.cl, 0
  br i1 %.not82.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader73.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !318 ; 5 uses
  %i.co = load ptr, ptr %i.bz, align 8, !tbaa !548
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv89.i
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !549
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !551
  %i.ct = zext i32 %i.cs to i64                   ; 5 uses
  %wide.trip.count.i = zext i32 %i.cl to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cu = icmp ult i32 %i.cl, 4
  br i1 %i.cu, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.w

._crit_edge.i.unr-lcssa:                          ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  %.05675.i.epil.init = phi ptr [ null, %.lr.ph.i ], [ %spec.select.i.3, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod265 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod265)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.v ] ; 2 uses
  %.05675.i.epil = phi ptr [ %.05675.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %bb.v ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.i.epil
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !320 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !199
  %i.cz = icmp eq i64 %i.cy, %i.ct
  %spec.select.i.epil = select i1 %i.cz, ptr %i.cw, ptr %.05675.i.epil ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.v, !llvm.loop !556

._crit_edge.i:                                    ; preds = %bb.v, %._crit_edge.i.unr-lcssa
  %spec.select.i.lcssa = phi ptr [ %spec.select.i.3, %._crit_edge.i.unr-lcssa ], [ %spec.select.i.epil, %bb.v ] ; 3 uses
  %.not.i178 = icmp eq ptr %spec.select.i.lcssa, null
  br i1 %.not.i178, label %._crit_edge.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.da = getelementptr inbounds nuw i8, ptr %spec.select.i.lcssa, i64 56 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !206 ; 2 uses
  %.not83.i = icmp eq i32 %i.db, 0
  br i1 %.not83.i, label %._crit_edge79.i, label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.preheader.i
  %i.dc = getelementptr inbounds nuw i8, ptr %spec.select.i.lcssa, i64 64
  br label %bb.x

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.w ] ; 5 uses
  %.05675.i = phi ptr [ null, %.lr.ph.i.new ], [ %spec.select.i.3, %bb.w ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.w ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !320 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !199
  %i.dh = icmp eq i64 %i.dg, %i.ct
  %spec.select.i = select i1 %i.dh, ptr %i.de, ptr %.05675.i
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !320 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !199
  %i.dn = icmp eq i64 %i.dm, %i.ct
  %spec.select.i.1 = select i1 %i.dn, ptr %i.dk, ptr %spec.select.i
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !320 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !199
  %i.dt = icmp eq i64 %i.ds, %i.ct
  %spec.select.i.2 = select i1 %i.dt, ptr %i.dq, ptr %spec.select.i.1
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !320 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !199
  %i.dz = icmp eq i64 %i.dy, %i.ct
  %spec.select.i.3 = select i1 %i.dz, ptr %i.dw, ptr %spec.select.i.2 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.w, !llvm.loop !557

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.preheader73.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.2, i32 noundef 5264) #16
  tail call void @abort() #17
  unreachable

bb.x:                                             ; preds = %bb.ac, %.lr.ph78.i
  %i.ea = phi i32 [ %i.db, %.lr.ph78.i ], [ %i.fc, %bb.ac ]
  %indvars.iv86.i = phi i64 [ 0, %.lr.ph78.i ], [ %indvars.iv.next87.i, %bb.ac ] ; 2 uses
  %i.eb = load ptr, ptr %i.dc, align 8, !tbaa !208
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv86.i
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !40 ; 9 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !51
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  store i64 0, ptr %i.eg, align 8, !tbaa !300
  %i.eh = icmp eq ptr %i.ed, %i.c
  br i1 %i.eh, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ej = load i64, ptr %i.ca, align 8
  store i64 %i.ej, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.el = load <2 x i64>, ptr %i.cb, align 8, !tbaa !178
  store <2 x i64> %i.el, ptr %i.ek, align 8, !tbaa !178
  %i.em = load i64, ptr %i.cc, align 8, !tbaa !513
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  store i64 %i.em, ptr %i.en, align 8, !tbaa !513
  %i.eo = load i32, ptr %i.cd, align 4, !tbaa !248
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 68
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !248
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ed, i64 320 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !245
  %.not65.i = icmp eq ptr %i.er, null
  br i1 %.not65.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.2, i32 noundef 5282) #16
  tail call void @abort() #17
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.es = load i32, ptr %i.ce, align 4, !tbaa !349
  %i.et = zext i32 %i.es to i64
  %i.eu = tail call noalias ptr @av_malloc(i64 noundef %i.et) #16 ; 3 uses
  store ptr %i.eu, ptr %i.eq, align 8, !tbaa !245
  %.not66.i = icmp eq ptr %i.eu, null
  br i1 %.not66.i, label %mov_update_iamf_streams.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ed, i64 328
  %i.ew = load i32, ptr %i.ce, align 4, !tbaa !349
  %i.ex = load <2 x i32>, ptr %i.cf, align 8, !tbaa !87
  store <2 x i32> %i.ex, ptr %i.ev, align 8, !tbaa !87
  %i.ey = load i32, ptr %i.cg, align 8, !tbaa !292
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ed, i64 360
  store i32 %i.ey, ptr %i.ez, align 8, !tbaa !292
  %i.fa = load ptr, ptr %i.ch, align 8, !tbaa !245
  %i.fb = zext i32 %i.ew to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eu, ptr align 8 %i.fa, i64 %i.fb, i1 false)
  %.pre.i = load i32, ptr %i.da, align 8, !tbaa !206
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %i.fc = phi i32 [ %i.ea, %bb.x ], [ %.pre.i, %bb.ab ] ; 2 uses
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1 ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %i.fe = icmp samesign ult i64 %indvars.iv.next87.i, %i.fd
  br i1 %i.fe, label %bb.x, label %._crit_edge79.loopexit.i, !llvm.loop !558

._crit_edge79.loopexit.i:                         ; preds = %bb.ac
  %.pre92.i = load i32, ptr %i.bx, align 8, !tbaa !542
  br label %._crit_edge79.i

._crit_edge79.i:                                  ; preds = %._crit_edge79.loopexit.i, %.preheader.i
  %i.ff = phi i32 [ %.pre92.i, %._crit_edge79.loopexit.i ], [ %i.ci, %.preheader.i ] ; 2 uses
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %i.fg = sext i32 %i.ff to i64
  %.not67.i = icmp slt i64 %indvars.iv.next90.i, %i.fg
  br i1 %.not67.i, label %.preheader73.i, label %mov_update_iamf_streams.exit.thread, !llvm.loop !559

mov_update_iamf_streams.exit.thread:              ; preds = %._crit_edge79.i, %bb.u, %bb.t
  %i.fh = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !79
  %i.fj = add nsw i32 %i.fi, -1                   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 276
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !442
  %i.fm = icmp ult i32 %i.fj, %i.fl
  br i1 %i.fm, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %mov_update_iamf_streams.exit.thread
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !443
  %i.fp = sext i32 %i.fj to i64
  %i.fq = getelementptr inbounds [120 x i8], ptr %i.fo, i64 %i.fp ; 12 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !449 ; 2 uses
  %.not160 = icmp eq ptr %i.fs, null
  br i1 %.not160, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !560
  %.not161 = icmp eq i32 %i.fu, 0
  %i.fv = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  br i1 %.not161, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 88
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !561
  %i.fy = tail call fastcc i32 @mov_open_dref(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef %i.fx, ptr noundef nonnull %i.fq)
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.gb = load i32, ptr %i.i, align 8, !tbaa !168
  %i.gc = load ptr, ptr %i.fr, align 8, !tbaa !449
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !452
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fq, i64 52
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 118
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !447
  %i.gj = sext i16 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fq, i64 116
  %i.gl = load i16, ptr %i.gk, align 4, !tbaa !448
  %i.gm = sext i16 %i.gl to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ga, i32 noundef 16, ptr noundef nonnull @.str.160, i32 noundef %i.gb, ptr noundef %i.gc, ptr noundef %i.ge, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.gg, i32 noundef %i.gj, i32 noundef %i.gm) #16
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  %i.gn = load i32, ptr %i.i, align 8, !tbaa !168
  %i.go = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !452
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fq, i64 52
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fq, i64 118
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !447
  %i.gu = sext i16 %i.gt to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fq, i64 116
  %i.gw = load i16, ptr %i.gv, align 4, !tbaa !448
  %i.gx = sext i16 %i.gw to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fv, i32 noundef 24, ptr noundef nonnull @.str.161, i32 noundef %i.gn, ptr noundef nonnull %i.fs, ptr noundef %i.gp, ptr noundef nonnull %i.gq, ptr noundef nonnull %i.gr, i32 noundef %i.gu, i32 noundef %i.gx) #16
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad, %mov_update_iamf_streams.exit.thread
  %i.gy = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !148
  store ptr %i.ha, ptr %i.e, align 8, !tbaa !242
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.hb, align 4, !tbaa !562
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ai
  %i.hc = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !81
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.ak, label %bb.ay

bb.ak:                                            ; preds = %bb.aj
  %i.hf = load i32, ptr %i.bm, align 8, !tbaa !170
  %.not162 = icmp eq i32 %i.hf, 0
  br i1 %.not162, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !563
  %i.hi = icmp ne i32 %i.hh, 0
  %i.hj = zext i1 %i.hi to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.hk = phi i32 [ 0, %bb.ak ], [ %i.hj, %bb.al ] ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !484 ; 2 uses
  %.not163 = icmp eq i32 %i.hm, 0
  br i1 %.not163, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 316
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !485 ; 2 uses
  %.not164 = icmp eq i32 %i.ho, 0
  br i1 %.not164, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hp = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.hr = sext i32 %i.hm to i64
  %i.hs = sext i32 %i.ho to i64
  %i.ht = tail call i32 @av_reduce(ptr noundef nonnull %i.hp, ptr noundef nonnull %i.hq, i64 noundef %i.hr, i64 noundef %i.hs, i64 noundef 2147483647) #16 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !564
end_hunk_3
begin_hunk_4_@mov_build_index:bb.a
  %i.am = load i32, ptr %i.e, align 8, !tbaa !741 ; 2 uses
  %.not11030.not.i = icmp eq i32 %i.am, 0
  br i1 %.not11030.not.i, label %.critedge115.i, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %get_sgpd_sync_index.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1400
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !747
  %wide.trip.count67.i = zext i32 %i.am to i64
  br label %bb.i

._crit_edge.loopexit.i:                           ; preds = %bb.h
  %i.ap = trunc nsw i64 %indvars.iv.next57.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader17.i
  %.192.lcssa.i = phi i32 [ %.09127.i, %.preheader17.i ], [ %i.ap, %._crit_edge.loopexit.i ]
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %._crit_edge29.i, label %.preheader17.i, !llvm.loop !748

bb.h:                                             ; preds = %bb.h, %.lr.ph26.i
  %indvars.iv56.i = phi i64 [ %i.ab, %.lr.ph26.i ], [ %indvars.iv.next57.i, %bb.h ] ; 2 uses
  %.08525.i = phi i32 [ 0, %.lr.ph26.i ], [ %i.ar, %bb.h ]
  %indvars.iv.next57.i = add nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv56.i
  store i32 %.pre.i, ptr %i.aq, align 4, !tbaa !87
  %i.ar = add nuw nsw i32 %.08525.i, 1            ; 2 uses
  %i.as = load i32, ptr %i.y, align 4, !tbaa !437
  %i.at = icmp ult i32 %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %._crit_edge.loopexit.i, !llvm.loop !749

bb.i:                                             ; preds = %bb.l, %.lr.ph32.i
  %i.au = phi i32 [ 0, %.lr.ph32.i ], [ %i.bd, %bb.l ] ; 3 uses
  %indvars.iv64.i = phi i64 [ 0, %.lr.ph32.i ], [ %indvars.iv.next65.i, %bb.l ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv64.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !599
  %i.ay = icmp eq i32 %i.ax, %i.ak
  br i1 %i.ay, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.az = load i32, ptr %i.av, align 4, !tbaa !597 ; 2 uses
  %i.ba = sub nsw i32 2147483647, %i.au
  %i.bb = icmp ugt i32 %i.az, %i.ba
  br i1 %i.bb, label %.critedge535, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = add i32 %i.az, %i.au                    ; 2 uses
  store i32 %i.bc, ptr %i.al, align 8, !tbaa !746
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.bd = phi i32 [ %i.au, %bb.i ], [ %i.bc, %bb.k ]
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %.critedge115.i, label %bb.i, !llvm.loop !750

.critedge115.i:                                   ; preds = %bb.l, %get_sgpd_sync_index.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 1440 ; 2 uses
  tail call void @av_freep(ptr noundef nonnull %i.be) #16
  %i.bf = load i32, ptr %i.al, align 8, !tbaa !746
  %i.bg = sext i32 %i.bf to i64
  %i.bh = tail call noalias ptr @av_calloc(i64 noundef %i.bg, i64 noundef 4) #16 ; 3 uses
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !751
  %.not111.i = icmp eq ptr %i.bh, null
  br i1 %.not111.i, label %.critedge535, label %.preheader13.i

.preheader13.i:                                   ; preds = %.critedge115.i
  %i.bi = load i32, ptr %i.e, align 8, !tbaa !741 ; 2 uses
  %.not11338.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not11338.not.i, label %.thread.i, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.preheader13.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 1400
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !747
  %wide.trip.count75.i = zext i32 %i.bi to i64
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge36.thread.i, %.lr.ph42.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph42.i ], [ %indvars.iv.next73.i, %._crit_edge36.thread.i ] ; 2 uses
  %.08940.i = phi i32 [ 0, %.lr.ph42.i ], [ %.19010.i, %._crit_edge36.thread.i ] ; 4 uses
  %.29339.i = phi i32 [ 0, %.lr.ph42.i ], [ %.48.i, %._crit_edge36.thread.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv72.i ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !599
  %i.bo = icmp eq i32 %i.bn, %i.ak
  %i.bp = load i32, ptr %i.bl, align 4, !tbaa !597 ; 3 uses
  br i1 %i.bo, label %.preheader.i, label %.thread3.i

.preheader.i:                                     ; preds = %bb.m
  %.not48.i = icmp eq i32 %i.bp, 0
  br i1 %.not48.i, label %._crit_edge36.thread.i, label %.lr.ph35.preheader.i

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %i.bq = sext i32 %.29339.i to i64
  br label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %.lr.ph35.i, %.lr.ph35.preheader.i
  %indvars.iv69.i = phi i64 [ %i.bq, %.lr.ph35.preheader.i ], [ %indvars.iv.next70.i, %.lr.ph35.i ] ; 2 uses
  %.08234.i = phi i32 [ 0, %.lr.ph35.preheader.i ], [ %i.bs, %.lr.ph35.i ]
  %indvars.iv.next70.i = add nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv69.i
  store i32 %.08940.i, ptr %i.br, align 4, !tbaa !87
  %i.bs = add nuw i32 %.08234.i, 1                ; 2 uses
  %i.bt = load i32, ptr %i.bl, align 4, !tbaa !597 ; 3 uses
  %i.bu = icmp ult i32 %i.bs, %i.bt
  br i1 %i.bu, label %.lr.ph35.i, label %._crit_edge36.i, !llvm.loop !752

._crit_edge36.i:                                  ; preds = %.lr.ph35.i
  %i.bv = trunc nsw i64 %indvars.iv.next70.i to i32
  %i.bw = sub nsw i32 2147483647, %.08940.i
  %.not112.i = icmp ugt i32 %i.bt, %i.bw
  br i1 %.not112.i, label %.critedge535, label %._crit_edge36.thread.i

.thread3.i:                                       ; preds = %bb.m
  %i.bx = sub nsw i32 2147483647, %.08940.i
  %.not1125.i = icmp ugt i32 %i.bp, %i.bx
  br i1 %.not1125.i, label %.critedge535, label %._crit_edge36.thread.i

._crit_edge36.thread.i:                           ; preds = %.thread3.i, %._crit_edge36.i, %.preheader.i
  %.pn.i = phi i32 [ %i.bp, %.thread3.i ], [ %i.bt, %._crit_edge36.i ], [ 0, %.preheader.i ]
  %.48.i = phi i32 [ %.29339.i, %.thread3.i ], [ %i.bv, %._crit_edge36.i ], [ %.29339.i, %.preheader.i ]
  %.19010.i = add i32 %.pn.i, %.08940.i
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count75.i
  br i1 %exitcond76.not.i, label %.thread.i, label %bb.m, !llvm.loop !753

.thread.i:                                        ; preds = %._crit_edge36.thread.i, %.preheader13.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 1452 ; 2 uses
  store i32 -1, ptr %i.by, align 4, !tbaa !754
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !170 ; 3 uses
  %.not49.i = icmp eq i32 %i.ca, 0
  br i1 %.not49.i, label %build_open_gop_key_points.exit, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.thread.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !507 ; 3 uses
  %wide.trip.count80.i = zext i32 %i.ca to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.ca, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i
  %i.cd = and i64 %wide.trip.count80.i, 7         ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 8, i64 %i.cd
  %n.vec = sub nsw i64 %wide.trip.count80.i, %i.cf ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.ck, %vector.body ]
  %vec.phi931 = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.cl, %vector.body ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 36
  %wide.vec = load <8 x i32>, ptr %i.ci, align 4, !tbaa !510
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec932 = load <8 x i32>, ptr %i.cj, align 4, !tbaa !510
  %strided.vec933 = shufflevector <8 x i32> %wide.vec932, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ck = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi, <4 x i32> %strided.vec) ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi931, <4 x i32> %strided.vec933) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !755

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ck, <4 x i32> %i.cl)
  %i.cn = tail call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph44.i, %middle.block
  %indvars.iv77.i.ph = phi i64 [ 0, %.lr.ph44.i ], [ %n.vec, %middle.block ]
  %.ph = phi i32 [ -1, %.lr.ph44.i ], [ %i.cn, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %scalar.ph ], [ %indvars.iv77.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = phi i32 [ %..i, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv77.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !510
  %..i = tail call i32 @llvm.umin.i32(i32 %i.co, i32 %i.cr) ; 2 uses
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next78.i, %wide.trip.count80.i
  br i1 %exitcond81.not.i, label %.get_sgpd_sync_index.exit.thread.loopexit_crit_edge.i, label %scalar.ph, !llvm.loop !756

.get_sgpd_sync_index.exit.thread.loopexit_crit_edge.i: ; preds = %scalar.ph
  store i32 %..i, ptr %i.by, align 4, !tbaa !754
  br label %build_open_gop_key_points.exit

build_open_gop_key_points.exit:                   ; preds = %bb.g, %.get_sgpd_sync_index.exit.thread.loopexit_crit_edge.i, %.thread.i, %._crit_edge29.i, %bb.b, %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !458 ; 4 uses
  %.not = icmp eq i32 %i.ct, 0
  br i1 %.not, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %build_open_gop_key_points.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !457 ; 6 uses
  %wide.trip.count = zext i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !462
  %i.cy = icmp eq i64 %i.cx, -1
  br i1 %i.cy, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !462 ; 2 uses
  %.lobit = lshr i64 %i.da, 63
  %spec.select882 = trunc nuw nsw i64 %.lobit to i32
  %spec.select883 = tail call i64 @llvm.smax.i64(i64 %i.da, i64 0)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !459
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.1414.peel = phi i64 [ 1, %bb.p ], [ 0, %bb.o ] ; 3 uses
  %.1412.peel = phi i32 [ 0, %bb.p ], [ %spec.select882, %bb.o ] ; 3 uses
  %.1409.peel = phi i64 [ %i.db, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %.1407.peel = phi i64 [ 0, %bb.p ], [ %spec.select883, %bb.o ] ; 3 uses
  %exitcond.peel.not = icmp eq i32 %i.ct, 1
  br i1 %exitcond.peel.not, label %.loopexit767, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.q
  %i.dc = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.dc, 1
  %i.dd = icmp eq i32 %i.ct, 2
  br i1 %i.dd, label %.peel.next.epil.preheader, label %.peel.next.preheader.new

.peel.next.preheader.new:                         ; preds = %.peel.next.preheader
  %unroll_iter = and i64 %i.dc, -2
  br label %.peel.next

.peel.next:                                       ; preds = %bb.t, %.peel.next.preheader.new
  %indvars.iv = phi i64 [ 1, %.peel.next.preheader.new ], [ %indvars.iv.next.1, %bb.t ] ; 4 uses
  %.0406664 = phi i64 [ %.1407.peel, %.peel.next.preheader.new ], [ %.1407.1, %bb.t ]
  %.0411662 = phi i32 [ %.1412.peel, %.peel.next.preheader.new ], [ %.1412.1, %bb.t ]
  %niter = phi i64 [ 0, %.peel.next.preheader.new ], [ %niter.next.1, %bb.t ]
  %i.de = icmp eq i64 %indvars.iv, %.1414.peel
  br i1 %i.de, label %2, label %7

2:                                                ; preds = %.peel.next
  %3 = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !462      ; 2 uses
  %6 = icmp sgt i64 %5, -1
  br i1 %6, label %.peel.next.1, label %7

7:                                                ; preds = %2, %.peel.next
  br label %.peel.next.1

.peel.next.1:                                     ; preds = %2, %7
  %.1412 = phi i32 [ %.0411662, %2 ], [ 1, %7 ]
  %.1407 = phi i64 [ %5, %2 ], [ %.0406664, %7 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %8 = icmp eq i64 %indvars.iv.next, %.1414.peel
  br i1 %8, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.peel.next.1
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv.next
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !462 ; 2 uses
  %i.di = icmp sgt i64 %i.dh, -1
  br i1 %i.di, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.peel.next.1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1412.1 = phi i32 [ %.1412, %bb.r ], [ 1, %bb.s ] ; 3 uses
  %.1407.1 = phi i64 [ %i.dh, %bb.r ], [ %.1407, %bb.s ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit767.loopexit.unr-lcssa, label %.peel.next, !llvm.loop !757

.loopexit767.loopexit.unr-lcssa:                  ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit767, label %.peel.next.epil.preheader

.peel.next.epil.preheader:                        ; preds = %.loopexit767.loopexit.unr-lcssa, %.peel.next.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.peel.next.preheader ], [ %indvars.iv.next.1, %.loopexit767.loopexit.unr-lcssa ] ; 2 uses
  %.0406664.epil.init = phi i64 [ %.1407.peel, %.peel.next.preheader ], [ %.1407.1, %.loopexit767.loopexit.unr-lcssa ]
  %.0411662.epil.init = phi i32 [ %.1412.peel, %.peel.next.preheader ], [ %.1412.1, %.loopexit767.loopexit.unr-lcssa ]
  %lcmp.mod980 = trunc i64 %i.dc to i1
  tail call void @llvm.assume(i1 %lcmp.mod980)
  %i.dj = icmp eq i64 %indvars.iv.epil.init, %.1414.peel
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.peel.next.epil.preheader
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv.epil.init
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !462 ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, -1
  br i1 %i.dn, label %.loopexit767, label %bb.v

bb.v:                                             ; preds = %bb.u, %.peel.next.epil.preheader
  br label %.loopexit767

.loopexit767:                                     ; preds = %.loopexit767.loopexit.unr-lcssa, %bb.v, %bb.u, %bb.q
  %.1412.lcssa = phi i32 [ %.1412.peel, %bb.q ], [ %.1412.1, %.loopexit767.loopexit.unr-lcssa ], [ %.0411662.epil.init, %bb.u ], [ 1, %bb.v ]
  %.1407.lcssa = phi i64 [ %.1407.peel, %bb.q ], [ %.1407.1, %.loopexit767.loopexit.unr-lcssa ], [ %i.dm, %bb.u ], [ %.0406664.epil.init, %bb.v ] ; 4 uses
  %.not489 = icmp eq i32 %.1412.lcssa, 0          ; 2 uses
  br i1 %.not489, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit767
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !540
  %.not490 = icmp eq i32 %i.dp, 0
  br i1 %.not490, label %.sink.split, label %bb.x

.sink.split:                                      ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !541
  %.not491 = icmp eq i32 %i.dr, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !9
  %.str.166..str.165 = select i1 %.not491, ptr @.str.166, ptr @.str.165
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dt, i32 noundef 24, ptr noundef nonnull %.str.166..str.165) #16
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.w, %.loopexit767
  %i.du = icmp ne i64 %.1409.peel, 0              ; 2 uses
  %i.dv = icmp ne i64 %.1407.lcssa, 0             ; 2 uses
  %or.cond = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !287 ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  br i1 %i.du, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !285
  %i.eb = sext i32 %i.ea to i64
  %i.ec = zext nneg i32 %i.dx to i64
  %i.ed = tail call i64 @av_rescale(i64 noundef %.1409.peel, i64 noundef %i.eb, i64 noundef %i.ec) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2410 = phi i64 [ %i.ed, %bb.aa ], [ 0, %bb.z ]
  %i.ee = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.1407.lcssa, i64 %.2410) ; 2 uses
  %i.ef = extractvalue { i64, i1 } %i.ee, 1
  %i.eg = extractvalue { i64, i1 } %i.ee, 0       ; 2 uses
  br i1 %i.ef, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !9
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ei, i32 noundef 24, ptr noundef nonnull @.str.167) #16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i64 %i.eg, ptr %i.ej, align 8, !tbaa !581
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i64 %.1407.lcssa, ptr %i.ek, align 8, !tbaa !758
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.em = load i32, ptr %i.el, align 4, !tbaa !540
  %.not493 = icmp eq i32 %i.em, 0
  br i1 %.not493, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.0.i = tail call i64 @llvm.smax.i64(i64 %i.eg, i64 -9223372036854775807)
  %i.en = sub nsw i64 0, %.0.i
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.x, %bb.y
  %.0448 = phi i64 [ 0, %bb.ad ], [ %i.en, %bb.ae ], [ 0, %bb.y ], [ 0, %bb.x ] ; 4 uses
  br i1 %.not489, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !540
  %.not494 = icmp eq i32 %i.ep, 0
  br i1 %.not494, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.eq = load ptr, ptr %i.c, align 8, !tbaa !51  ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !82
  %i.et = icmp eq i32 %i.es, 86018
  %or.cond9 = select i1 %i.et, i1 %i.dv, i1 false
  br i1 %or.cond9, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 152
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !97
  %i.ex = load i64, ptr %i.eu, align 8
  %.sroa.2.0.insert.ext = zext i32 %i.ew to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, 1
  %i.ey = tail call i64 @av_rescale_q(i64 noundef %.1407.lcssa, i64 %i.ex, i64 %.sroa.0.0.insert.insert) #19
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 164
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !291
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai, %build_open_gop_key_points.exit
  %.1449 = phi i64 [ 0, %build_open_gop_key_points.exit ], [ %.0448, %bb.ai ], [ %.0448, %bb.ah ], [ %.0448, %bb.ag ], [ %.0448, %bb.af ] ; 3 uses
  %i.fb = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !81
  %i.fd = icmp eq i32 %i.fc, 1
  br i1 %i.fd, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !170
  %i.fg = icmp eq i32 %i.ff, 1
  br i1 %i.fg, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !507 ; 2 uses
  %.not495 = icmp eq ptr %i.fi, null
  br i1 %.not495, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !510
  %i.fl = icmp eq i32 %i.fk, 1
  br i1 %i.fl, label %bb.cq, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 1376 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !759
  %.not496 = icmp eq i32 %i.fn, 0
  br i1 %.not496, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 1384
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !760
  %i.fq = icmp ne ptr %i.fp, null
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fr = phi i1 [ false, %bb.an ], [ %i.fq, %bb.ao ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 188 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !504
  %.not497 = icmp eq i32 %i.ft, 0
  br i1 %.not497, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !503
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !87
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !496
  %.not498 = icmp eq i32 %i.fz, 0
  br i1 %.not498, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !495
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !87
  %i.gd = icmp ne i32 %i.gc, 0
  %i.ge = zext i1 %i.gd to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq
  %i.gf = phi i32 [ 1, %bb.aq ], [ 0, %bb.ar ], [ %i.ge, %bb.as ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !440 ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, -1
  br i1 %i.gi, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.2, i32 noundef 4903) #16
  tail call void @abort() #17
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.gj = zext nneg i32 %i.gh to i64              ; 2 uses
  %i.gk = or disjoint i64 %i.gj, -9223372036854775808
  %i.gl = icmp slt i64 %.1449, %i.gk
  br i1 %i.gl, label %.critedge535, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gm = sub nsw i64 %.1449, %i.gj
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 3 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !167 ; 3 uses
  %.not499 = icmp eq i32 %i.go, 0
  br i1 %.not499, label %.critedge535, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 6 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !244
  %.not500 = icmp eq i32 %i.gq, 0
  br i1 %.not500, label %bb.ay, label %.critedge535

bb.ay:                                            ; preds = %bb.ax
end_hunk_4
begin_hunk_5_@mov_fix_index:bb.a
  %i.dm = phi i64 [ %i.dk, %bb.v ], [ %.pre, %._crit_edge ]
  %i.dn = phi i64 [ %i.dl, %bb.v ], [ %spec.store.select.i, %._crit_edge ] ; 9 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0263432, i64 16 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = shl i32 %i.dp, 30
  %i.dr = ashr exact i32 %i.dq, 30                ; 5 uses
  %i.ds = load i32, ptr %i.aj, align 8, !tbaa !440
  %i.dt = sext i32 %i.ds to i64
  %i.du = add nsw i64 %i.dm, %i.dt                ; 3 uses
  %i.dv = icmp slt i64 %i.dc, %i.q
  %or.cond469 = select i1 %.not291, i1 %i.dv, i1 false
  br i1 %or.cond469, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.dw = getelementptr inbounds [12 x i8], ptr %i.n, i64 %i.dc ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !586
  %i.dz = sext i32 %i.dy to i64                   ; 4 uses
  %i.ea = load ptr, ptr %i.au, align 8, !tbaa !9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ea, i32 noundef 56, ptr noundef nonnull @.str.186, i64 noundef %i.du, i64 noundef %i.dz, i64 noundef %i.dc, i64 noundef %i.q) #16
  %i.eb = add nsw i64 %i.du, %i.dz                ; 2 uses
  %i.ec = add nsw i64 %i.dd, 1                    ; 3 uses
  %i.ed = load i32, ptr %i.dw, align 4, !tbaa !585 ; 2 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = icmp eq i64 %i.ec, %i.ee
  br i1 %i.ef, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.eg = trunc i64 %.0255434 to i32
  %i.eh = sub i32 %i.ed, %i.eg
  %i.ei = load i32, ptr %i.dx, align 4, !tbaa !586 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !566
  %i.el = load i32, ptr %i.o, align 8, !tbaa !87  ; 2 uses
  %i.em = icmp ugt i32 %i.el, 357913939
  br i1 %i.em, label %split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = add nuw nsw i32 %i.el, 1
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = mul nuw nsw i64 %i.eo, 12               ; 3 uses
  %i.eq = load i32, ptr %i.ah, align 4, !tbaa !87 ; 2 uses
  %i.er = zext i32 %i.eq to i64
  %i.es = icmp samesign ugt i64 %i.ep, %i.er
  %i.et = shl i32 %i.eq, 1
  %i.eu = zext i32 %i.et to i64
  %..i = call i64 @llvm.umax.i64(i64 %i.ep, i64 %i.eu)
  %i.ev = select i1 %i.es, i64 %..i, i64 %i.ep
  %i.ew = load ptr, ptr %i.m, align 8, !tbaa !779
  %i.ex = call ptr @av_fast_realloc(ptr noundef %i.ew, ptr noundef nonnull %i.ah, i64 noundef %i.ev) #16 ; 5 uses
  %.not.i = icmp eq ptr %i.ex, null
  br i1 %.not.i, label %._crit_edge555, label %bb.aa

._crit_edge555:                                   ; preds = %bb.z
  %.pre556 = load i32, ptr %i.dw, align 4, !tbaa !585
  %.pre557 = load i32, ptr %i.dx, align 4, !tbaa !586
  %.pre559 = zext i32 %.pre556 to i64
  br label %split

split:                                            ; preds = %bb.y, %._crit_edge555
  %.pre-phi = phi i64 [ %.pre559, %._crit_edge555 ], [ %i.ee, %bb.y ]
  %i.ey = phi i32 [ %.pre557, %._crit_edge555 ], [ %i.ei, %bb.y ]
  store i64 %i.dc, ptr %i.a, align 8
  store i64 %i.ec, ptr %i.b, align 8
  store i64 %i.de, ptr %i.c, align 8
  %i.ez = load ptr, ptr %i.au, align 8, !tbaa !9
  %i.fa = sub nsw i64 %.pre-phi, %.0255434
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ez, i32 noundef 16, ptr noundef nonnull @.str.187, i64 noundef %i.dc, i64 noundef %i.fa, i32 noundef %i.ey) #16
  br label %bb.bo

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ex, ptr %i.m, align 8, !tbaa !779
  %i.fb = load i32, ptr %i.o, align 8, !tbaa !87
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [12 x i8], ptr %i.ex, i64 %i.fc
  store i32 %i.eh, ptr %i.fd, align 4, !tbaa !585
  %i.fe = load i32, ptr %i.o, align 8, !tbaa !87
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %i.ex, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 %i.ei, ptr %i.fh, align 4, !tbaa !586
  %i.fi = load i32, ptr %i.o, align 8, !tbaa !87
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [12 x i8], ptr %i.ex, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 %i.ek, ptr %i.fl, align 4, !tbaa !566
  %i.fm = load i32, ptr %i.o, align 8, !tbaa !87
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr %i.o, align 8, !tbaa !87
  %i.fo = add nsw i64 %i.dc, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.aa, %bb.w
  %i.fp = phi i64 [ 0, %bb.aa ], [ %i.ec, %bb.x ], [ %i.dd, %bb.w ] ; 8 uses
  %i.fq = phi i64 [ %i.fo, %bb.aa ], [ %i.dc, %bb.x ], [ %i.dc, %bb.w ] ; 8 uses
  %.1256 = phi i64 [ 0, %bb.aa ], [ %.0255434, %bb.x ], [ %.0255434, %bb.w ] ; 2 uses
  %.0254 = phi i64 [ %i.eb, %bb.aa ], [ %i.eb, %bb.x ], [ %i.du, %bb.w ] ; 7 uses
  %.0253 = phi i64 [ %i.dz, %bb.aa ], [ %i.dz, %bb.x ], [ 0, %bb.w ]
  %i.fr = icmp sge i64 %.0254, %i.bg              ; 2 uses
  %.not292 = icmp slt i64 %.0254, %i.da
  %or.cond354 = select i1 %i.fr, i1 %.not292, i1 false
  br i1 %or.cond354, label %bb.as, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fs = load ptr, ptr %i.aw, align 8, !tbaa !51 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !81
  %i.fu = icmp eq i32 %i.ft, 1
  br i1 %i.fu, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !82
  %.not294 = icmp eq i32 %i.fw, 86021
  %brmerge = or i1 %i.fr, %.not294
  br i1 %brmerge, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fx = add nsw i64 %.0254, %i.dn
  %i.fy = icmp sgt i64 %i.fx, %i.bg
  %or.cond5 = select i1 %i.fy, i1 %i.db, i1 false
  br i1 %or.cond5, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.fz = sub nsw i64 %i.bg, %.0254               ; 2 uses
  %i.ga = trunc i64 %i.fz to i32                  ; 2 uses
  %i.gb = load i32, ptr %i.ax, align 8, !tbaa !292
  %i.gc = add nsw i32 %i.gb, %i.ga
  store i32 %i.gc, ptr %i.ax, align 8, !tbaa !292
  %sext = shl i64 %i.fz, 32
  %i.gd = ashr exact i64 %sext, 32
  %i.ge = sub nsw i64 %.0260433, %i.gd            ; 3 uses
  %i.gf = icmp eq i64 %.0247435, 0
  br i1 %i.gf, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.gg = load ptr, ptr %i.d, align 8, !tbaa !776 ; 2 uses
  %.not297 = icmp eq ptr %i.gg, null
  br i1 %.not297, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gh = load i32, ptr %i.i, align 8, !tbaa !244 ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, -1
  br i1 %i.gi, label %.preheader.i, label %bb.ai

.preheader.i:                                     ; preds = %bb.ah
  %i.gj = icmp sgt i32 %.0244436, 0
  br i1 %i.gj, label %.lr.ph.i, label %fix_index_entry_timestamps.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.gk = load ptr, ptr %i.g, align 8, !tbaa !245
  %i.gl = zext nneg i32 %.0244436 to i64          ; 3 uses
  %i.gm = zext nneg i32 %i.gh to i64
  %i.gn = getelementptr [8 x i8], ptr %i.gg, i64 %i.gl ; 5 uses
  %i.go = getelementptr [24 x i8], ptr %i.gk, i64 %i.gm ; 5 uses
  %xtraiter = and i64 %i.gl, 3                    ; 3 uses
  %i.gp = icmp ult i32 %.0244436, 4
  br i1 %i.gp, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.gl, 2147483644
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.2, i32 noundef 4230) #16
  call void @abort() #17
  unreachable

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.aj ] ; 5 uses
  %.01417.i = phi i64 [ %i.ge, %.lr.ph.i.new ], [ %i.hl, %bb.aj ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.aj ]
  %i.gq = xor i64 %indvars.iv.i, -1               ; 2 uses
  %i.gr = getelementptr [8 x i8], ptr %i.gn, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !178
  %i.gt = sub nsw i64 %.01417.i, %i.gs            ; 2 uses
  %i.gu = getelementptr [24 x i8], ptr %i.go, i64 %i.gq
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store i64 %i.gt, ptr %i.gv, align 8, !tbaa !249
  %i.gw = xor i64 %indvars.iv.i, -2               ; 2 uses
  %i.gx = getelementptr [8 x i8], ptr %i.gn, i64 %i.gw
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !178
  %i.gz = sub nsw i64 %i.gt, %i.gy                ; 2 uses
  %i.ha = getelementptr [24 x i8], ptr %i.go, i64 %i.gw
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i64 %i.gz, ptr %i.hb, align 8, !tbaa !249
  %i.hc = xor i64 %indvars.iv.i, -3               ; 2 uses
  %i.hd = getelementptr [8 x i8], ptr %i.gn, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !178
  %i.hf = sub nsw i64 %i.gz, %i.he                ; 2 uses
  %i.hg = getelementptr [24 x i8], ptr %i.go, i64 %i.hc
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store i64 %i.hf, ptr %i.hh, align 8, !tbaa !249
  %i.hi = xor i64 %indvars.iv.i, -4               ; 2 uses
  %i.hj = getelementptr [8 x i8], ptr %i.gn, i64 %i.hi
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !178
  %i.hl = sub nsw i64 %i.hf, %i.hk                ; 3 uses
  %i.hm = getelementptr [24 x i8], ptr %i.go, i64 %i.hi
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i64 %i.hl, ptr %i.hn, align 8, !tbaa !249
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %fix_index_entry_timestamps.exit.loopexit.unr-lcssa, label %bb.aj, !llvm.loop !780

fix_index_entry_timestamps.exit.loopexit.unr-lcssa: ; preds = %bb.aj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %fix_index_entry_timestamps.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %fix_index_entry_timestamps.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %fix_index_entry_timestamps.exit.loopexit.unr-lcssa ]
  %.01417.i.epil.init = phi i64 [ %i.ge, %.lr.ph.i ], [ %i.hl, %fix_index_entry_timestamps.exit.loopexit.unr-lcssa ]
  %lcmp.mod874 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod874)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.ak ] ; 2 uses
  %.01417.i.epil = phi i64 [ %.01417.i.epil.init, %.epil.preheader ], [ %i.hr, %bb.ak ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ak ]
  %i.ho = xor i64 %indvars.iv.i.epil, -1          ; 2 uses
  %i.hp = getelementptr [8 x i8], ptr %i.gn, i64 %i.ho
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !178
  %i.hr = sub nsw i64 %.01417.i.epil, %i.hq       ; 2 uses
  %i.hs = getelementptr [24 x i8], ptr %i.go, i64 %i.ho
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i64 %i.hr, ptr %i.ht, align 8, !tbaa !249
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %fix_index_entry_timestamps.exit, label %bb.ak, !llvm.loop !781

fix_index_entry_timestamps.exit:                  ; preds = %fix_index_entry_timestamps.exit.loopexit.unr-lcssa, %bb.ak, %.preheader.i
  call void @av_freep(ptr noundef nonnull %i.d) #16
  br label %bb.al

bb.al:                                            ; preds = %bb.ag, %fix_index_entry_timestamps.exit, %bb.af
  %i.hu = load ptr, ptr %i.au, align 8, !tbaa !9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.hu, i32 noundef 48, ptr noundef nonnull @.str.188, i32 noundef %i.ga, i64 noundef %.0254) #16
  br label %bb.ay

bb.am:                                            ; preds = %bb.ad, %bb.ae, %bb.ac
  %i.hv = or i32 %i.dr, 2                         ; 4 uses
  %i.hw = load ptr, ptr %i.au, align 8, !tbaa !9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.hw, i32 noundef 48, ptr noundef nonnull @.str.189, i64 noundef %.0254, i64 noundef %i.de) #16
  %i.hx = icmp eq i64 %.0247435, 0
  br i1 %i.hx, label %bb.an, label %bb.ay

bb.an:                                            ; preds = %bb.am
  %i.hy = add nsw i32 %.0244436, 1                ; 4 uses
  %i.hz = load ptr, ptr %i.d, align 8, !tbaa !776
  %i.ia = sext i32 %i.hy to i64
  %i.ib = shl nsw i64 %i.ia, 3
  %i.ic = call ptr @av_realloc(ptr noundef %i.hz, i64 noundef %i.ib) #16 ; 3 uses
  store ptr %i.ic, ptr %i.d, align 8, !tbaa !776
  %.not295 = icmp eq ptr %i.ic, null
  br i1 %.not295, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i64 %i.fq, ptr %i.a, align 8
  store i64 %i.fp, ptr %i.b, align 8
  store i64 %i.de, ptr %i.c, align 8
  %i.id = load ptr, ptr %i.au, align 8, !tbaa !9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.id, i32 noundef 16, ptr noundef nonnull @.str.190) #16
  br label %bb.bo

bb.ap:                                            ; preds = %bb.an
  %i.ie = sext i32 %.0244436 to i64
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.ie
  store i64 %i.dn, ptr %i.if, align 8, !tbaa !178
  %i.ig = load ptr, ptr %i.aw, align 8, !tbaa !51 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !81
  %i.ii = icmp eq i32 %i.ih, 1
  %or.cond7 = select i1 %i.ii, i1 %i.db, i1 false
  br i1 %or.cond7, label %bb.aq, label %bb.ay

bb.aq:                                            ; preds = %bb.ap
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !82
  %.not296 = icmp eq i32 %i.ik, 86021
  br i1 %.not296, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.il = load i32, ptr %i.ax, align 8, !tbaa !292
  %i.im = trunc i64 %i.dn to i32
  %i.in = add i32 %i.il, %i.im
  store i32 %i.in, ptr %i.ax, align 8, !tbaa !292
  br label %bb.ay

bb.as:                                            ; preds = %bb.ab
  %i.io = load i64, ptr %i.ai, align 8, !tbaa !758 ; 2 uses
  %i.ip = icmp slt i64 %i.io, 0
  %i.iq = add nsw i64 %.0253, %.0260433
  %i.ir = load i32, ptr %i.aj, align 8, !tbaa !440
  %i.is = sext i32 %i.ir to i64
  %i.it = add nsw i64 %i.iq, %i.is                ; 2 uses
  %.305 = call i64 @llvm.smin.i64(i64 %i.io, i64 %i.it)
  %storemerge = select i1 %i.ip, i64 %i.it, i64 %.305
  store i64 %storemerge, ptr %i.ai, align 8, !tbaa !758
  %i.iu = icmp eq i64 %.0247435, 0
  br i1 %i.iu, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.iv = load ptr, ptr %i.d, align 8, !tbaa !776 ; 2 uses
  %.not293 = icmp eq ptr %i.iv, null
  br i1 %.not293, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iw = load i32, ptr %i.i, align 8, !tbaa !244 ; 2 uses
  %i.ix = icmp sgt i32 %i.iw, -1
  br i1 %i.ix, label %.preheader.i311, label %bb.av

.preheader.i311:                                  ; preds = %bb.au
  %i.iy = icmp sgt i32 %.0244436, 0
  br i1 %i.iy, label %.lr.ph.i312, label %fix_index_entry_timestamps.exit318

.lr.ph.i312:                                      ; preds = %.preheader.i311
  %i.iz = load ptr, ptr %i.g, align 8, !tbaa !245
  %i.ja = zext nneg i32 %.0244436 to i64          ; 3 uses
  %i.jb = zext nneg i32 %i.iw to i64
  %i.jc = getelementptr [8 x i8], ptr %i.iv, i64 %i.ja ; 5 uses
  %i.jd = getelementptr [24 x i8], ptr %i.iz, i64 %i.jb ; 5 uses
  %xtraiter876 = and i64 %i.ja, 3                 ; 3 uses
  %i.je = icmp ult i32 %.0244436, 4
  br i1 %i.je, label %.epil.preheader875, label %.lr.ph.i312.new

.lr.ph.i312.new:                                  ; preds = %.lr.ph.i312
  %unroll_iter880 = and i64 %i.ja, 2147483644
  br label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.2, i32 noundef 4230) #16
  call void @abort() #17
  unreachable

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i312.new
  %indvars.iv.i314 = phi i64 [ 0, %.lr.ph.i312.new ], [ %indvars.iv.next.i316.3, %bb.aw ] ; 5 uses
  %.01417.i315 = phi i64 [ %.0260433, %.lr.ph.i312.new ], [ %i.ka, %bb.aw ]
  %niter881 = phi i64 [ 0, %.lr.ph.i312.new ], [ %niter881.next.3, %bb.aw ]
  %i.jf = xor i64 %indvars.iv.i314, -1            ; 2 uses
  %i.jg = getelementptr [8 x i8], ptr %i.jc, i64 %i.jf
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !178
  %i.ji = sub nsw i64 %.01417.i315, %i.jh         ; 2 uses
  %i.jj = getelementptr [24 x i8], ptr %i.jd, i64 %i.jf
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store i64 %i.ji, ptr %i.jk, align 8, !tbaa !249
  %i.jl = xor i64 %indvars.iv.i314, -2            ; 2 uses
  %i.jm = getelementptr [8 x i8], ptr %i.jc, i64 %i.jl
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !178
  %i.jo = sub nsw i64 %i.ji, %i.jn                ; 2 uses
  %i.jp = getelementptr [24 x i8], ptr %i.jd, i64 %i.jl
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store i64 %i.jo, ptr %i.jq, align 8, !tbaa !249
  %i.jr = xor i64 %indvars.iv.i314, -3            ; 2 uses
  %i.js = getelementptr [8 x i8], ptr %i.jc, i64 %i.jr
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !178
  %i.ju = sub nsw i64 %i.jo, %i.jt                ; 2 uses
  %i.jv = getelementptr [24 x i8], ptr %i.jd, i64 %i.jr
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store i64 %i.ju, ptr %i.jw, align 8, !tbaa !249
  %i.jx = xor i64 %indvars.iv.i314, -4            ; 2 uses
  %i.jy = getelementptr [8 x i8], ptr %i.jc, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !178
  %i.ka = sub nsw i64 %i.ju, %i.jz                ; 3 uses
  %i.kb = getelementptr [24 x i8], ptr %i.jd, i64 %i.jx
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store i64 %i.ka, ptr %i.kc, align 8, !tbaa !249
  %indvars.iv.next.i316.3 = add nuw nsw i64 %indvars.iv.i314, 4 ; 2 uses
  %niter881.next.3 = add i64 %niter881, 4         ; 2 uses
  %niter881.ncmp.3 = icmp eq i64 %niter881.next.3, %unroll_iter880
  br i1 %niter881.ncmp.3, label %fix_index_entry_timestamps.exit318.loopexit.unr-lcssa, label %bb.aw, !llvm.loop !780

fix_index_entry_timestamps.exit318.loopexit.unr-lcssa: ; preds = %bb.aw
  %lcmp.mod878.not = icmp eq i64 %xtraiter876, 0
  br i1 %lcmp.mod878.not, label %fix_index_entry_timestamps.exit318, label %.epil.preheader875

.epil.preheader875:                               ; preds = %fix_index_entry_timestamps.exit318.loopexit.unr-lcssa, %.lr.ph.i312
  %indvars.iv.i314.epil.init = phi i64 [ 0, %.lr.ph.i312 ], [ %indvars.iv.next.i316.3, %fix_index_entry_timestamps.exit318.loopexit.unr-lcssa ]
  %.01417.i315.epil.init = phi i64 [ %.0260433, %.lr.ph.i312 ], [ %i.ka, %fix_index_entry_timestamps.exit318.loopexit.unr-lcssa ]
  %lcmp.mod879 = icmp ne i64 %xtraiter876, 0
  call void @llvm.assume(i1 %lcmp.mod879)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.epil.preheader875
  %indvars.iv.i314.epil = phi i64 [ %indvars.iv.i314.epil.init, %.epil.preheader875 ], [ %indvars.iv.next.i316.epil, %bb.ax ] ; 2 uses
  %.01417.i315.epil = phi i64 [ %.01417.i315.epil.init, %.epil.preheader875 ], [ %i.kg, %bb.ax ]
  %epil.iter877 = phi i64 [ 0, %.epil.preheader875 ], [ %epil.iter877.next, %bb.ax ]
  %i.kd = xor i64 %indvars.iv.i314.epil, -1       ; 2 uses
  %i.ke = getelementptr [8 x i8], ptr %i.jc, i64 %i.kd
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !178
  %i.kg = sub nsw i64 %.01417.i315.epil, %i.kf    ; 2 uses
  %i.kh = getelementptr [24 x i8], ptr %i.jd, i64 %i.kd
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i64 %i.kg, ptr %i.ki, align 8, !tbaa !249
  %indvars.iv.next.i316.epil = add nuw nsw i64 %indvars.iv.i314.epil, 1
  %epil.iter877.next = add i64 %epil.iter877, 1   ; 2 uses
  %epil.iter877.cmp.not = icmp eq i64 %epil.iter877.next, %xtraiter876
  br i1 %epil.iter877.cmp.not, label %fix_index_entry_timestamps.exit318, label %bb.ax, !llvm.loop !782

fix_index_entry_timestamps.exit318:               ; preds = %fix_index_entry_timestamps.exit318.loopexit.unr-lcssa, %bb.ax, %.preheader.i311
  call void @av_freep(ptr noundef nonnull %i.d) #16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.as, %fix_index_entry_timestamps.exit318, %bb.at, %bb.al, %bb.ap, %bb.aq, %bb.ar, %bb.am
  %.1261 = phi i64 [ %i.ge, %bb.al ], [ %.0260433, %bb.ar ], [ %.0260433, %bb.aq ], [ %.0260433, %bb.ap ], [ %.0260433, %bb.am ], [ %.0260433, %fix_index_entry_timestamps.exit318 ], [ %.0260433, %bb.at ], [ %.0260433, %bb.as ] ; 2 uses
  %.0250 = phi i32 [ %i.dr, %bb.al ], [ %i.hv, %bb.ar ], [ %i.hv, %bb.aq ], [ %i.hv, %bb.ap ], [ %i.hv, %bb.am ], [ %i.dr, %fix_index_entry_timestamps.exit318 ], [ %i.dr, %bb.at ], [ %i.dr, %bb.as ] ; 2 uses
  %i.kj = phi i64 [ %i.dn, %bb.al ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ %i.dn, %bb.am ], [ %i.dn, %fix_index_entry_timestamps.exit318 ], [ %i.dn, %bb.at ], [ %i.dn, %bb.as ]
  %.2249 = phi i64 [ 1, %bb.al ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ 1, %bb.am ], [ 1, %fix_index_entry_timestamps.exit318 ], [ 1, %bb.at ], [ 1, %bb.as ]
  %.1245 = phi i32 [ %.0244436, %bb.al ], [ %i.hy, %bb.ar ], [ %i.hy, %bb.aq ], [ %i.hy, %bb.ap ], [ %.0244436, %bb.am ], [ %.0244436, %fix_index_entry_timestamps.exit318 ], [ %.0244436, %bb.at ], [ %.0244436, %bb.as ]
  %i.kk = load i64, ptr %.0263432, align 8, !tbaa !246
  %i.kl = load i32, ptr %i.do, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %.0263432, i64 20
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !584
  %i.ko = load i32, ptr %i.i, align 8, !tbaa !244 ; 2 uses
  %i.kp = add i32 %i.ko, -178956969
  %i.kq = icmp ult i32 %i.kp, -178956970
  br i1 %i.kq, label %add_index_entry.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kr = add nsw i32 %i.ko, 1
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = mul nuw nsw i64 %i.ks, 24               ; 3 uses
  %i.ku = load i32, ptr %i.ae, align 4, !tbaa !349 ; 2 uses
  %i.kv = zext i32 %i.ku to i64
  %i.kw = icmp samesign ugt i64 %i.kt, %i.kv
  %i.kx = shl i32 %i.ku, 1
  %i.ky = zext i32 %i.kx to i64
  %..i319 = call i64 @llvm.umax.i64(i64 %i.kt, i64 %i.ky)
  %i.kz = select i1 %i.kw, i64 %..i319, i64 %i.kt
  %i.la = load ptr, ptr %i.g, align 8, !tbaa !245
  %i.lb = call ptr @av_fast_realloc(ptr noundef %i.la, ptr noundef nonnull %i.ae, i64 noundef %i.kz) #16 ; 3 uses
  %.not.i320 = icmp eq ptr %i.lb, null
  br i1 %.not.i320, label %add_index_entry.exit.thread, label %add_index_entry.exit

add_index_entry.exit:                             ; preds = %bb.az
  store ptr %i.lb, ptr %i.g, align 8, !tbaa !245
  %i.lc = load i32, ptr %i.i, align 8, !tbaa !244 ; 3 uses
  %i.ld = add nsw i32 %i.lc, 1
  store i32 %i.ld, ptr %i.i, align 8, !tbaa !244
  %i.le = sext i32 %i.lc to i64
  %i.lf = getelementptr inbounds [24 x i8], ptr %i.lb, i64 %i.le ; 4 uses
  store i64 %i.kk, ptr %i.lf, align 8, !tbaa !246
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store i64 %.1261, ptr %i.lg, align 8, !tbaa !249
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 20
  store i32 %i.kn, ptr %i.lh, align 4, !tbaa !584
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lj = and i32 %i.kl, -4
  %i.lk = and i32 %.0250, 3
  %i.ll = or disjoint i32 %i.lj, %i.lk
  store i32 %i.ll, ptr %i.li, align 8
  %i.lm = icmp eq i32 %i.lc, -1
  br i1 %i.lm, label %add_index_entry.exit.thread, label %bb.ba

add_index_entry.exit.thread:                      ; preds = %bb.az, %bb.ay, %add_index_entry.exit
  store i64 %i.fq, ptr %i.a, align 8
  store i64 %i.fp, ptr %i.b, align 8
  store i64 %i.de, ptr %i.c, align 8
  %i.ln = load ptr, ptr %i.au, align 8, !tbaa !9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ln, i32 noundef 16, ptr noundef nonnull @.str.191) #16
  br label %bb.bo

bb.ba:                                            ; preds = %add_index_entry.exit
  %.not298 = icmp eq ptr %.1240438, null
  br i1 %.not298, label %.critedge, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lo = getelementptr inbounds nuw i8, ptr %.1240438, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !343
  %.not299 = icmp eq i64 %i.de, %i.lp
  br i1 %.not299, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lq = getelementptr inbounds nuw i8, ptr %.1240438, i64 16
  br label %bb.bd

.critedge:                                        ; preds = %bb.ba
  %i.lr = load ptr, ptr %i.aa, align 8, !tbaa !342
  br label %bb.bd

bb.bd:                                            ; preds = %.critedge, %bb.bc
  %i.ls = phi ptr [ %i.lq, %bb.bc ], [ %i.lr, %.critedge ] ; 2 uses
  store i64 %i.de, ptr %i.ls, align 8, !tbaa !345
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %.2 = phi ptr [ %i.ls, %bb.bd ], [ %.1240438, %bb.bb ] ; 7 uses
  %i.lt = add nsw i64 %i.de, 1                    ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.2, i64 8
  store i64 %i.lt, ptr %i.lu, align 8, !tbaa !343
  %spec.select = add nsw i64 %i.kj, %.1261
  %i.lv = add nsw i64 %.0254, %i.dn
  %.not300 = icmp slt i64 %i.lv, %i.da
  br i1 %.not300, label %bb.bn, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lw = and i32 %.0250, 1
  %.not301 = icmp eq i32 %i.lw, 0
  br i1 %.not301, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lx = load ptr, ptr %i.aw, align 8, !tbaa !51
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !81
  %i.lz = icmp eq i32 %i.ly, 1
  br i1 %i.lz, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ma = load i32, ptr %i.az, align 8, !tbaa !435
  %.not302 = icmp eq i32 %i.ma, 0
  br i1 %.not302, label %.loopexit356, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mb = load ptr, ptr %i.aw, align 8, !tbaa !51
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !81
  %i.md = icmp ne i32 %i.mc, 1
  %i.me = icmp eq i32 %.0238439, 0
  %or.cond9 = select i1 %i.md, i1 %i.me, i1 false
  br i1 %or.cond9, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i64 %i.fq, ptr %i.a, align 8
  store i64 %i.fp, ptr %i.b, align 8
  store i64 %i.de, ptr %i.c, align 8
  %.not303 = icmp eq i64 %i.fp, 0
  br i1 %.not303, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mf = sub nsw i64 %i.fp, %.1256               ; 2 uses
  %i.mg = trunc i64 %i.mf to i32
  %i.mh = getelementptr inbounds [12 x i8], ptr %i.n, i64 %i.fq ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8 ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !586 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !566
  %i.mm = load i32, ptr %i.o, align 8, !tbaa !87  ; 2 uses
  %i.mn = icmp ugt i32 %i.mm, 357913939
  br i1 %i.mn, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mo = add nuw nsw i32 %i.mm, 1
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = mul nuw nsw i64 %i.mp, 12               ; 3 uses
  %i.mr = load i32, ptr %i.ah, align 4, !tbaa !87 ; 2 uses
  %i.ms = zext i32 %i.mr to i64
  %i.mt = icmp samesign ugt i64 %i.mq, %i.ms
  %i.mu = shl i32 %i.mr, 1
  %i.mv = zext i32 %i.mu to i64
  %..i322 = call i64 @llvm.umax.i64(i64 %i.mq, i64 %i.mv)
  %i.mw = select i1 %i.mt, i64 %..i322, i64 %i.mq
  %i.mx = load ptr, ptr %i.m, align 8, !tbaa !779
  %i.my = call ptr @av_fast_realloc(ptr noundef %i.mx, ptr noundef nonnull %i.ah, i64 noundef %i.mw) #16 ; 5 uses
  %.not.i323 = icmp eq ptr %i.my, null
  br i1 %.not.i323, label %._crit_edge553, label %add_tts_entry.exit325

._crit_edge553:                                   ; preds = %bb.bl
  %.pre554 = load i32, ptr %i.mi, align 4, !tbaa !586
  br label %bb.bm

add_tts_entry.exit325:                            ; preds = %bb.bl
  store ptr %i.my, ptr %i.m, align 8, !tbaa !779
  %i.mz = load i32, ptr %i.o, align 8, !tbaa !87
  %i.na = zext i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw [12 x i8], ptr %i.my, i64 %i.na
  store i32 %i.mg, ptr %i.nb, align 4, !tbaa !585
  %i.nc = load i32, ptr %i.o, align 8, !tbaa !87
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [12 x i8], ptr %i.my, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store i32 %i.mj, ptr %i.nf, align 4, !tbaa !586
  %i.ng = load i32, ptr %i.o, align 8, !tbaa !87
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [12 x i8], ptr %i.my, i64 %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  store i32 %i.ml, ptr %i.nj, align 4, !tbaa !566
  %i.nk = load i32, ptr %i.o, align 8, !tbaa !87
  %i.nl = add i32 %i.nk, 1
  store i32 %i.nl, ptr %i.o, align 8, !tbaa !87
  br label %bb.bo

bb.bm:                                            ; preds = %._crit_edge553, %bb.bk
  %i.nm = phi i32 [ %.pre554, %._crit_edge553 ], [ %i.mj, %bb.bk ]
  %i.nn = load ptr, ptr %i.au, align 8, !tbaa !9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.nn, i32 noundef 16, ptr noundef nonnull @.str.187, i64 noundef %i.fq, i64 noundef %i.mf, i32 noundef %i.nm) #16
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bi, %bb.be, %bb.bg
  %.1 = phi i32 [ %.0238439, %bb.be ], [ %.0238439, %bb.bg ], [ 1, %bb.bi ]
  br i1 %i.dg, label %bb.u, label %.loopexit356, !llvm.loop !783

.loopexit356:                                     ; preds = %bb.bh, %bb.bn, %bb.t
  %.lcssa425 = phi i64 [ %i.cx, %bb.t ], [ %i.lt, %bb.bn ], [ %i.de, %bb.bh ]
  %i.no = phi i64 [ %.promoted417, %bb.t ], [ %i.fp, %bb.bn ], [ %i.fp, %bb.bh ]
  %i.np = phi i64 [ %.promoted, %bb.t ], [ %i.fq, %bb.bn ], [ %i.fq, %bb.bh ]
  %.3.ph = phi ptr [ %.0239451, %bb.t ], [ %.2, %bb.bn ], [ %.2, %bb.bh ]
  store i64 %i.np, ptr %i.a, align 8
  store i64 %i.no, ptr %i.b, align 8
  store i64 %.lcssa425, ptr %i.c, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %.loopexit356, %add_tts_entry.exit325, %bb.bj, %bb.bm, %add_index_entry.exit.thread, %bb.ao, %split
  %.3 = phi ptr [ %.1240438, %split ], [ %.1240438, %add_index_entry.exit.thread ], [ %.2, %bb.bm ], [ %.2, %add_tts_entry.exit325 ], [ %.2, %bb.bj ], [ %.1240438, %bb.ao ], [ %.3.ph, %.loopexit356 ] ; 2 uses
  %i.nq = trunc i64 %i.bs to i32
  %i.nr = load i32, ptr %i.t, align 8, !tbaa !458
  %i.ns = icmp eq i32 %i.nr, %i.nq
  br i1 %i.ns, label %get_edit_list_entry.exit.thread, label %bb.h, !llvm.loop !778

get_edit_list_entry.exit.thread:                  ; preds = %.outer, %bb.bo, %bb.g, %bb.i, %bb.k
  %.0252.ph410 = phi i64 [ %.0252.ph460, %bb.k ], [ %.0252.ph460, %bb.i ], [ %.0252.ph460, %bb.bo ], [ 0, %bb.g ], [ %i.cc, %.outer ] ; 2 uses
  %.0239380 = phi ptr [ %.0239451, %bb.k ], [ %.0239451, %bb.i ], [ %.3, %bb.bo ], [ null, %bb.g ], [ %.0239451, %.outer ] ; 2 uses
  %.2259 = phi i64 [ 9223372036854775807, %bb.k ], [ %.1258448, %bb.i ], [ %i.by, %bb.bo ], [ %.0257, %bb.g ], [ %i.by, %.outer ]
  %i.nt = load i64, ptr %i.ai, align 8, !tbaa !758
  %i.nu = sub nsw i64 %i.nt, %.0252.ph410         ; 3 uses
  store i64 %i.nu, ptr %i.ai, align 8, !tbaa !758
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !51
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !81
  %i.ny = icmp eq i32 %i.nx, 0
  %i.nz = icmp sgt i64 %i.nu, 0
  %or.cond306 = select i1 %i.ny, i1 %i.nz, i1 false
  br i1 %or.cond306, label %bb.bp, label %.loopexit

bb.bp:                                            ; preds = %get_edit_list_entry.exit.thread
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ob, i32 noundef 48, ptr noundef nonnull @.str.192, i64 noundef %i.nu) #16
  %i.oc = load i32, ptr %i.i, align 8, !tbaa !244 ; 3 uses
  %i.od = icmp sgt i32 %i.oc, 0
  br i1 %i.od, label %.lr.ph468, label %.loopexit

.lr.ph468:                                        ; preds = %bb.bp
  %i.oe = load i64, ptr %i.ai, align 8, !tbaa !758 ; 5 uses
  %i.of = load ptr, ptr %i.g, align 8, !tbaa !245 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.oc to i64   ; 2 uses
  %xtraiter883 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.og = icmp ult i32 %i.oc, 4
  br i1 %i.og, label %.epil.preheader882, label %.lr.ph468.new

.lr.ph468.new:                                    ; preds = %.lr.ph468
  %unroll_iter887 = and i64 %wide.trip.count, 2147483644
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.lr.ph468.new
  %indvars.iv = phi i64 [ 0, %.lr.ph468.new ], [ %indvars.iv.next.3, %bb.bq ] ; 5 uses
  %niter888 = phi i64 [ 0, %.lr.ph468.new ], [ %niter888.next.3, %bb.bq ]
  %i.oh = getelementptr inbounds nuw [24 x i8], ptr %i.of, i64 %indvars.iv
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 2 uses
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !249
  %i.ok = sub nsw i64 %i.oj, %i.oe
  store i64 %i.ok, ptr %i.oi, align 8, !tbaa !249
  %i.ol = getelementptr inbounds nuw [24 x i8], ptr %i.of, i64 %indvars.iv
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 32 ; 2 uses
  %i.on = load i64, ptr %i.om, align 8, !tbaa !249
  %i.oo = sub nsw i64 %i.on, %i.oe
  store i64 %i.oo, ptr %i.om, align 8, !tbaa !249
  %i.op = getelementptr inbounds nuw [24 x i8], ptr %i.of, i64 %indvars.iv
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 56 ; 2 uses
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !249
  %i.os = sub nsw i64 %i.or, %i.oe
  store i64 %i.os, ptr %i.oq, align 8, !tbaa !249
  %i.ot = getelementptr inbounds nuw [24 x i8], ptr %i.of, i64 %indvars.iv
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 80 ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !249
  %i.ow = sub nsw i64 %i.ov, %i.oe
  store i64 %i.ow, ptr %i.ou, align 8, !tbaa !249
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter888.next.3 = add i64 %niter888, 4         ; 2 uses
  %niter888.ncmp.3 = icmp eq i64 %niter888.next.3, %unroll_iter887
  br i1 %niter888.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.bq, !llvm.loop !784

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bq
  %lcmp.mod885.not = icmp eq i64 %xtraiter883, 0
  br i1 %lcmp.mod885.not, label %.loopexit, label %.epil.preheader882

.epil.preheader882:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph468
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph468 ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod886 = icmp ne i64 %xtraiter883, 0
  call void @llvm.assume(i1 %lcmp.mod886)
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.epil.preheader882
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader882 ], [ %indvars.iv.next.epil, %bb.br ] ; 2 uses
  %epil.iter884 = phi i64 [ 0, %.epil.preheader882 ], [ %epil.iter884.next, %bb.br ]
  %i.ox = getelementptr inbounds nuw [24 x i8], ptr %i.of, i64 %indvars.iv.epil
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8 ; 2 uses
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !249
  %i.pa = sub nsw i64 %i.oz, %i.oe
  store i64 %i.pa, ptr %i.oy, align 8, !tbaa !249
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter884.next = add i64 %epil.iter884, 1   ; 2 uses
  %epil.iter884.cmp.not = icmp eq i64 %epil.iter884.next, %xtraiter883
  br i1 %epil.iter884.cmp.not, label %.loopexit, label %bb.br, !llvm.loop !785

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.br, %bb.bp, %get_edit_list_entry.exit.thread
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %.0252.ph410, ptr %i.pb, align 8, !tbaa !766
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !470
  %i.pe = sub nsw i64 %.2259, %.0257
  %.307 = call i64 @llvm.smin.i64(i64 %i.pd, i64 %i.pe)
  store i64 %.307, ptr %i.pc, align 8, !tbaa !470
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !292
  %i.ph = load ptr, ptr %i.nv, align 8, !tbaa !51
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 164
  store i32 %i.pg, ptr %i.pi, align 4, !tbaa !291
  call void @av_free(ptr noundef %i.h) #16
  call void @av_free(ptr noundef %i.n) #16
  call void @av_freep(ptr noundef nonnull %i.d) #16
  %.not304 = icmp eq ptr %.0239380, null
  br i1 %.not304, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.loopexit
  %i.pj = getelementptr inbounds nuw i8, ptr %.0239380, i64 16
  %.pre558 = load ptr, ptr %i.aa, align 8, !tbaa !342
  br label %bb.bu

bb.bt:                                            ; preds = %.loopexit
  %i.pk = load ptr, ptr %i.aa, align 8, !tbaa !342 ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.pl = phi ptr [ %.pre558, %bb.bs ], [ %i.pk, %bb.bt ]
  %i.pm = phi ptr [ %i.pj, %bb.bs ], [ %i.pk, %bb.bt ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pm, i8 0, i64 16, i1 false)
  %i.pn = load i64, ptr %i.pl, align 8, !tbaa !345
  %i.po = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  store i64 %i.pn, ptr %i.po, align 8, !tbaa !341
  br label %bb.bv

bb.bv:                                            ; preds = %bb.a, %bb.b, %bb.bu, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mov_estimate_video_delay(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [17 x i64], align 16              ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.a, align 16, !tbaa !178
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.d, align 16, !tbaa !178
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.e, align 16, !tbaa !178
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x i64> splat (i64 -9223372036854775808), ptr %i.f, align 16, !tbaa !178
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 -9223372036854775808, ptr %i.g, align 16, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !786
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.n = load i32, ptr %i.m, align 8, !tbaa !435
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !82
  %i.q = icmp eq i32 %i.p, 27
  br i1 %i.q, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !786
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.s = load i32, ptr %i.r, align 8, !tbaa !244  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph71, label %.critedge

.lr.ph71:                                         ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !563
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph71, %._crit_edge
  %i.y = phi i32 [ 0, %.lr.ph71 ], [ %..048, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.05068 = phi i32 [ 0, %.lr.ph71 ], [ %spec.store.select, %._crit_edge ] ; 4 uses
  %.05167 = phi i32 [ 0, %.lr.ph71 ], [ %.152, %._crit_edge ]
  %.05366 = phi i32 [ 0, %.lr.ph71 ], [ %.154, %._crit_edge ] ; 3 uses
  %i.z = icmp ult i32 %.05366, %i.v
  br i1 %i.z, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.e, %._crit_edge, %bb.d
  %i.aa = phi i32 [ 0, %bb.d ], [ %i.y, %bb.e ], [ %..048, %._crit_edge ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !168
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ac, i32 noundef 48, ptr noundef nonnull @.str.198, i32 noundef %i.aa, i32 noundef %i.ae) #16
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = add nsw i32 %.05068, 1                  ; 2 uses
  %i.ag = icmp eq i32 %i.af, 17
  %spec.store.select = select i1 %i.ag, i32 0, i32 %i.af ; 3 uses
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !245
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !249
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !565
  %i.am = zext nneg i32 %.05366 to i64
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !586
  %i.aq = sext i32 %i.ap to i64
  %i.ar = add nsw i64 %i.ak, %i.aq
  %i.as = sext i32 %.05068 to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.as
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !178
  %.not5961 = icmp eq i32 %.05068, %spec.store.select
  br i1 %.not5961, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.04863 = phi i32 [ %i.bd, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.162 = phi i32 [ %spec.store.select1, %bb.g ], [ %.05068, %bb.f ] ; 3 uses
  %i.au = add nsw i32 %.162, -1
  %i.av = icmp slt i32 %.162, 1
  %spec.store.select1 = select i1 %i.av, i32 16, i32 %i.au ; 3 uses
  %i.aw = sext i32 %.162 to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !178 ; 2 uses
  %i.az = sext i32 %spec.store.select1 to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !178 ; 2 uses
  %i.bc = icmp slt i64 %i.ay, %i.bb
  br i1 %i.bc, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !178
  store i64 %i.bb, ptr %i.ax, align 8, !tbaa !178
  %i.bd = add nuw nsw i32 %.04863, 1              ; 2 uses
  %.not59 = icmp eq i32 %spec.store.select1, %spec.store.select
  br i1 %.not59, label %._crit_edge, label %.lr.ph, !llvm.loop !787

._crit_edge:                                      ; preds = %bb.g, %.lr.ph, %bb.f
  %.048.lcssa = phi i32 [ 0, %bb.f ], [ %.04863, %.lr.ph ], [ %i.bd, %bb.g ]
  %..048 = tail call i32 @llvm.smax.i32(i32 %i.y, i32 %.048.lcssa) ; 3 uses
  store i32 %..048, ptr %i.j, align 8, !tbaa !786
  %i.be = add nsw i32 %.05167, 1                  ; 2 uses
  %i.bf = load i32, ptr %i.an, align 4, !tbaa !585
  %i.bg = icmp eq i32 %i.be, %i.bf                ; 2 uses
  %i.bh = zext i1 %i.bg to i32
  %.154 = add nuw nsw i32 %.05366, %i.bh
  %.152 = select i1 %i.bg, i32 0, i32 %i.be
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !788

bb.h:                                             ; preds = %.critedge, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}
end_hunk_5
begin_hunk_6_@mov_seek_stream:bb.a
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.split.preheader.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %i.ab = sext i32 %i.w to i64
  %i.ac = sext i32 %.01950.i.i to i64
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !241
  br label %bb.d

bb.d:                                             ; preds = %get_frag_time.exit.thread.us.i.i, %.lr.ph.split.us.i.i
  %.01832.us.i.i = phi i32 [ %i.w, %.lr.ph.split.us.i.i ], [ %i.ax, %get_frag_time.exit.thread.us.i.i ] ; 6 uses
  %i.af = icmp slt i32 %.01832.us.i.i, 0
  br i1 %i.af, label %get_frag_time.exit.thread.us.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.n, align 4, !tbaa !363
  %.not.i.i.us.i.i = icmp slt i32 %.01832.us.i.i, %i.ag
  br i1 %.not.i.i.us.i.i, label %bb.f, label %get_frag_time.exit.thread.us.i.i

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !364
  %i.ai = zext nneg i32 %.01832.us.i.i to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !365 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i.i.us.i.i, label %get_frag_time.exit.thread.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !366
  %wide.trip.count.i.i.us.i.i = zext nneg i32 %i.al to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.us.i.i
  %indvars.iv.i.i.us.i.i = phi i64 [ 0, %.lr.ph.i.i.us.i.i ], [ %indvars.iv.next.i.i.us.i.i, %bb.h ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [64 x i8], ptr %i.ao, i64 %indvars.iv.i.i.us.i.i ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !368
  %i.ar = icmp eq i32 %i.aq, %i.ae
  br i1 %i.ar, label %get_frag_stream_info.exit.i.us.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i.i = add nuw nsw i64 %indvars.iv.i.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i = icmp eq i64 %indvars.iv.next.i.i.us.i.i, %wide.trip.count.i.i.us.i.i
  br i1 %exitcond.not.i.i.us.i.i, label %get_frag_time.exit.thread.us.i.i, label %bb.g, !llvm.loop !367

get_frag_stream_info.exit.i.us.i.i:               ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !489 ; 2 uses
  %.not53.i.us.i.i = icmp eq i64 %i.at, -9223372036854775808
  br i1 %.not53.i.us.i.i, label %get_frag_time.exit.us.i.i, label %.critedge.i.i

get_frag_time.exit.us.i.i:                        ; preds = %get_frag_stream_info.exit.i.us.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !475 ; 2 uses
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  br i1 %i.aw, label %get_frag_time.exit.thread.us.i.i, label %.critedge.i.i

get_frag_time.exit.thread.us.i.i:                 ; preds = %bb.h, %get_frag_time.exit.us.i.i, %bb.f, %bb.e, %bb.d
  %i.ax = add i32 %.01832.us.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ax, %.01950.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %bb.d, !llvm.loop !817

.lr.ph.split.i.i:                                 ; preds = %get_frag_time.exit.thread.i.i, %.lr.ph.split.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ab, %.lr.ph.split.preheader.i.i ], [ %indvars.iv.next.i.i, %get_frag_time.exit.thread.i.i ] ; 9 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1596
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !491
  %.not.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i, label %.preheader63.i.i.i, label %bb.i

.preheader63.i.i.i:                               ; preds = %.lr.ph.split.i.i
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !364 ; 2 uses
  %i.bc = getelementptr inbounds [32 x i8], ptr %i.bb, i64 %indvars.iv.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !365
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph69.i.i.i, label %get_frag_time.exit.thread.i.i

bb.i:                                             ; preds = %.lr.ph.split.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !241
  %i.bi = icmp slt i64 %indvars.iv.i.i, 0
  br i1 %i.bi, label %get_frag_time.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = load i32, ptr %i.n, align 4, !tbaa !363
  %i.bk = sext i32 %i.bj to i64
  %.not.i.i.i.i = icmp slt i64 %indvars.iv.i.i, %i.bk
  br i1 %.not.i.i.i.i, label %bb.k, label %get_frag_time.exit.thread.i.i

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.q, align 8, !tbaa !364
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %indvars.iv.i.i ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !365 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i.i.i, label %get_frag_time.exit.thread.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !366
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.bo to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %get_frag_time.exit.thread.i.i, label %bb.m, !llvm.loop !367

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.l ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [64 x i8], ptr %i.br, i64 %indvars.iv.i.i.i.i ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !368
  %i.bu = icmp eq i32 %i.bt, %i.bh
  br i1 %i.bu, label %get_frag_stream_info.exit.i.i.i, label %bb.l

get_frag_stream_info.exit.i.i.i:                  ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !489 ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.bw, -9223372036854775808
  br i1 %.not53.i.i.i, label %bb.n, label %.critedge.loopexit.split.loop.exit.i.i

bb.n:                                             ; preds = %get_frag_stream_info.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !475
  br label %get_frag_time.exit.i.i

.lr.ph69.i.i.i:                                   ; preds = %.preheader63.i.i.i, %.thread.i.i.i
  %i.bz = phi ptr [ %i.ef, %.thread.i.i.i ], [ %i.bb, %.preheader63.i.i.i ] ; 3 uses
  %indvars.iv74.i.i.i = phi i64 [ %indvars.iv.next75.i.i.i, %.thread.i.i.i ], [ 0, %.preheader63.i.i.i ] ; 2 uses
  %i.ca = getelementptr inbounds [32 x i8], ptr %i.bz, i64 %indvars.iv.i.i
  %i.cb = load i32, ptr %i.r, align 4, !tbaa !253 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !366
  %i.ce = getelementptr inbounds nuw [64 x i8], ptr %i.cd, i64 %indvars.iv74.i.i.i ; 4 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !368
  %.not49.i.i.i = icmp eq i32 %i.cb, %i.cf
  br i1 %.not49.i.i.i, label %.preheader.i.i.i, label %.thread.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph69.i.i.i
  %i.cg = load i32, ptr %i.s, align 4, !tbaa !28  ; 3 uses
  %.not70.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not70.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.ch = load ptr, ptr %i.t, align 8, !tbaa !39  ; 5 uses
  %wide.trip.count.i.i.i = zext i32 %i.cg to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.ci = icmp ult i32 %i.cg, 4
  br i1 %i.ci, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 4294967292
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %bb.o ] ; 5 uses
  %.067.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.new ], [ %spec.select.i.i.i.3, %bb.o ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.3, %bb.o ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !241
  %i.cp = icmp eq i32 %i.co, %i.cb
  %spec.select.i.i.i = select i1 %i.cp, ptr %i.ck, ptr %.067.i.i.i
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !40 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !42
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !241
  %i.cx = icmp eq i32 %i.cw, %i.cb
  %spec.select.i.i.i.1 = select i1 %i.cx, ptr %i.cs, ptr %spec.select.i.i.i
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !42
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !241
  %i.df = icmp eq i32 %i.de, %i.cb
  %spec.select.i.i.i.2 = select i1 %i.df, ptr %i.da, ptr %spec.select.i.i.i.1
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !40 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !42
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !241
  %i.dn = icmp eq i32 %i.dm, %i.cb
  %spec.select.i.i.i.3 = select i1 %i.dn, ptr %i.di, ptr %spec.select.i.i.i.2 ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.unr-lcssa, label %bb.o, !llvm.loop !818

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.3, %._crit_edge.i.i.i.unr-lcssa ]
  %.067.i.i.i.epil.init = phi ptr [ null, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.3, %._crit_edge.i.i.i.unr-lcssa ]
  %lcmp.mod374 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod374)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.p ] ; 2 uses
  %.067.i.i.i.epil = phi ptr [ %.067.i.i.i.epil.init, %.epil.preheader ], [ %spec.select.i.i.i.epil, %bb.p ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i.epil
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !40 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !42
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !241
  %i.du = icmp eq i32 %i.dt, %i.cb
  %spec.select.i.i.i.epil = select i1 %i.du, ptr %i.dp, ptr %.067.i.i.i.epil ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i, label %bb.p, !llvm.loop !819

._crit_edge.i.i.i:                                ; preds = %bb.p, %._crit_edge.i.i.i.unr-lcssa
  %spec.select.i.i.i.lcssa = phi ptr [ %spec.select.i.i.i.3, %._crit_edge.i.i.i.unr-lcssa ], [ %spec.select.i.i.i.epil, %bb.p ] ; 2 uses
  %.not50.i.i.i = icmp eq ptr %spec.select.i.i.i.lcssa, null
  br i1 %.not50.i.i.i, label %._crit_edge.thread.i.i.i, label %bb.q

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.preheader.i.i.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.582) #16
  %.pre.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !364
  br label %.thread.i.i.i

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !489 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.dw, -9223372036854775808
  br i1 %.not9.i.i.i.i, label %bb.r, label %get_stream_info_time.exit.thread.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !475 ; 2 uses
  %.not10.i.i.i.i = icmp eq i64 %i.dy, -9223372036854775808
  br i1 %.not10.i.i.i.i, label %get_stream_info_time.exit.i.i.i, label %get_stream_info_time.exit.thread.i.i.i

get_stream_info_time.exit.i.i.i:                  ; preds = %bb.r
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !523 ; 2 uses
  %.not51.i.i.i = icmp eq i64 %i.ea, -9223372036854775808
  br i1 %.not51.i.i.i, label %.thread.i.i.i, label %get_stream_info_time.exit.thread.i.i.i

get_stream_info_time.exit.thread.i.i.i:           ; preds = %get_stream_info_time.exit.i.i.i, %bb.r, %bb.q
  %.0.i60.i.i.i = phi i64 [ %i.ea, %get_stream_info_time.exit.i.i.i ], [ %i.dy, %bb.r ], [ %i.dw, %bb.q ]
  %i.eb = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.lcssa, i64 32
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = load i64, ptr %i.u, align 8
  %i.ee = tail call i64 @av_rescale_q(i64 noundef %.0.i60.i.i.i, i64 %i.ec, i64 %i.ed) #19
  br label %get_frag_time.exit.i.i

.thread.i.i.i:                                    ; preds = %get_stream_info_time.exit.i.i.i, %._crit_edge.thread.i.i.i, %.lr.ph69.i.i.i
  %i.ef = phi ptr [ %i.bz, %get_stream_info_time.exit.i.i.i ], [ %.pre.i.i.i, %._crit_edge.thread.i.i.i ], [ %i.bz, %.lr.ph69.i.i.i ] ; 2 uses
  %indvars.iv.next75.i.i.i = add nuw nsw i64 %indvars.iv74.i.i.i, 1 ; 2 uses
  %i.eg = getelementptr inbounds [32 x i8], ptr %i.ef, i64 %indvars.iv.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !365
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp slt i64 %indvars.iv.next75.i.i.i, %i.ej
  br i1 %i.ek, label %.lr.ph69.i.i.i, label %get_frag_time.exit.thread.i.i, !llvm.loop !820

get_frag_time.exit.i.i:                           ; preds = %get_stream_info_time.exit.thread.i.i.i, %bb.n
  %.3.i.i.i = phi i64 [ %i.ee, %get_stream_info_time.exit.thread.i.i.i ], [ %i.by, %bb.n ] ; 2 uses
  %i.el = icmp eq i64 %.3.i.i.i, -9223372036854775808
  br i1 %i.el, label %get_frag_time.exit.thread.i.i, label %.critedge.loopexit.split.loop.exit92.i.i

get_frag_time.exit.thread.i.i:                    ; preds = %bb.l, %.thread.i.i.i, %get_frag_time.exit.i.i, %bb.k, %bb.j, %bb.i, %.preheader63.i.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond67.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ac
  br i1 %exitcond67.not.i.i, label %.critedge.i.i, label %.lr.ph.split.i.i, !llvm.loop !821

.critedge.loopexit.split.loop.exit.i.i:           ; preds = %get_frag_stream_info.exit.i.i.i
  %i.em = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %.critedge.i.i

.critedge.loopexit.split.loop.exit92.i.i:         ; preds = %get_frag_time.exit.i.i
  %i.en = trunc nsw i64 %indvars.iv.i.i to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %get_frag_time.exit.thread.us.i.i, %get_frag_time.exit.us.i.i, %get_frag_stream_info.exit.i.us.i.i, %get_frag_time.exit.thread.i.i, %.critedge.loopexit.split.loop.exit92.i.i, %.critedge.loopexit.split.loop.exit.i.i, %bb.c
  %.018.lcssa.i.i = phi i32 [ %i.w, %bb.c ], [ %.01950.i.i, %get_frag_time.exit.thread.i.i ], [ %i.em, %.critedge.loopexit.split.loop.exit.i.i ], [ %i.en, %.critedge.loopexit.split.loop.exit92.i.i ], [ %.01950.i.i, %get_frag_time.exit.thread.us.i.i ], [ %.01832.us.i.i, %get_frag_time.exit.us.i.i ], [ %.01832.us.i.i, %get_frag_stream_info.exit.i.us.i.i ]
  %.lcssa31.i.i = phi i1 [ true, %bb.c ], [ true, %get_frag_time.exit.thread.i.i ], [ false, %.critedge.loopexit.split.loop.exit.i.i ], [ false, %.critedge.loopexit.split.loop.exit92.i.i ], [ true, %get_frag_time.exit.thread.us.i.i ], [ false, %get_frag_time.exit.us.i.i ], [ false, %get_frag_stream_info.exit.i.us.i.i ]
  %.2.i.i = phi i64 [ %.052.i.i, %bb.c ], [ -9223372036854775808, %get_frag_time.exit.thread.i.i ], [ %i.bw, %.critedge.loopexit.split.loop.exit.i.i ], [ %.3.i.i.i, %.critedge.loopexit.split.loop.exit92.i.i ], [ -9223372036854775808, %get_frag_time.exit.thread.us.i.i ], [ %i.av, %get_frag_time.exit.us.i.i ], [ %i.at, %get_frag_stream_info.exit.i.us.i.i ] ; 2 uses
  %.not.i.i = icmp sgt i64 %.2.i.i, %i.i
  %or.cond.i.i = select i1 %.lcssa31.i.i, i1 true, i1 %.not.i.i ; 2 uses
  %.122.i.i = select i1 %or.cond.i.i, i32 %.02149.i.i, i32 %.018.lcssa.i.i ; 3 uses
  %.120.i.i = select i1 %or.cond.i.i, i32 %i.w, i32 %.01950.i.i ; 2 uses
  %i.eo = sub nsw i32 %.120.i.i, %.122.i.i
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %bb.c, label %search_frag_timestamp.exit.loopexit.i, !llvm.loop !822

search_frag_timestamp.exit.loopexit.i:            ; preds = %.critedge.i.i
  %i.eq = tail call i32 @llvm.smax.i32(i32 %.122.i.i, i32 0)
  br label %search_frag_timestamp.exit.i

search_frag_timestamp.exit.i:                     ; preds = %search_frag_timestamp.exit.loopexit.i, %bb.b
  %.021.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %i.eq, %search_frag_timestamp.exit.loopexit.i ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !330 ; 2 uses
  %i.et = zext nneg i32 %.021.lcssa.i.i to i64
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !335
  %.not17.i = icmp eq i32 %i.ew, 0
  br i1 %.not17.i, label %mov_seek_fragment.exit, label %bb.s

bb.s:                                             ; preds = %search_frag_timestamp.exit.i
  %i.ex = add nuw nsw i32 %.021.lcssa.i.i, 1      ; 2 uses
  %i.ey = load i32, ptr %i.n, align 4, !tbaa !329
  %i.ez = icmp slt i32 %i.ex, %i.ey
  br i1 %i.ez, label %bb.t, label %.preheader145

bb.t:                                             ; preds = %bb.s
  %i.fa = zext nneg i32 %i.ex to i64
  %i.fb = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !332
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !143
  br label %.preheader145

mov_seek_fragment.exit:                           ; preds = %search_frag_timestamp.exit.i
  %i.fe = tail call fastcc i32 @mov_switch_root(ptr noundef %0, i64 noundef -1, i32 noundef %.021.lcssa.i.i) ; 2 uses
  %i.ff = icmp slt i32 %i.fe, 0
  br i1 %i.ff, label %.thread, label %.preheader145

.preheader145:                                    ; preds = %bb.s, %bb.t, %bb.a, %mov_seek_fragment.exit
  %i.fg = tail call i32 @av_index_search_timestamp(ptr noundef %1, i64 noundef %i.i, i32 noundef %3) #16 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !168
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 56, ptr noundef nonnull @.str.579, i32 noundef %i.fi, i64 noundef %i.i, i32 noundef %i.fg) #16
  %i.fj = icmp slt i32 %i.fg, 0
  br i1 %i.fj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader145
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 1452
  br label %bb.v

._crit_edge:                                      ; preds = %can_seek_to_key_sample.exit120.thread, %.preheader145
  %.085.lcssa = phi i64 [ %i.i, %.preheader145 ], [ %i.gz, %can_seek_to_key_sample.exit120.thread ]
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !244
  %.not = icmp eq i32 %i.fo, 0
  br i1 %.not, label %.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !245
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !249
  %i.ft = icmp slt i64 %.085.lcssa, %i.fs
  br i1 %i.ft, label %can_seek_to_key_sample.exit120, label %.thread

bb.v:                                             ; preds = %.lr.ph, %can_seek_to_key_sample.exit120.thread
  %i.fu = phi i32 [ %i.fg, %.lr.ph ], [ %i.if, %can_seek_to_key_sample.exit120.thread ] ; 13 uses
  %.085186 = phi i64 [ %i.i, %.lr.ph ], [ %i.gz, %can_seek_to_key_sample.exit120.thread ] ; 2 uses
  %.not93 = icmp eq i32 %i.fu, 0
  br i1 %.not93, label %can_seek_to_key_sample.exit120, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fv = load ptr, ptr %i.a, align 8, !tbaa !42  ; 5 uses
  %i.fw = load ptr, ptr %i.fk, align 8, !tbaa !51
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !82
  %.not.i100 = icmp eq i32 %i.fy, 172
  br i1 %.not.i100, label %bb.x, label %can_seek_to_key_sample.exit120

bb.x:                                             ; preds = %bb.w
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 1432
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !742
  %.not17.i102 = icmp slt i32 %i.fu, %i.ga
  br i1 %.not17.i102, label %bb.y, label %can_seek_to_key_sample.exit120

bb.y:                                             ; preds = %bb.x
  %i.gb = load ptr, ptr %i.fl, align 8, !tbaa !245
  %i.gc = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !249
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 1424
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !744
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gc
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !87
end_hunk_6
