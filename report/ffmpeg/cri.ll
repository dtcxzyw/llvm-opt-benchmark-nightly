Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cri?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cri_decode_frame:bb.a
  store ptr %i.gd, ptr %4, align 8, !tbaa !45
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.gd, ptr %i.gh, align 8, !tbaa !46
  %i.gi = zext nneg i32 %i.ge to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !47
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !59
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !60
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !37
  %i.gr = sdiv i32 %i.gq, 2
  %i.gs = sext i32 %i.gr to i64
  call fastcc void @unpack_10bit(ptr noundef %4, ptr noundef %i.gc, i32 noundef %i.gm, i32 noundef %i.go, i64 noundef %i.gs)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.critedge250

bb.be:                                            ; preds = %bb.bb
  %i.gt = sub nuw nsw i32 16, %switch.ext425      ; 3 uses
  %i.gu = load ptr, ptr %i.f, align 8, !tbaa !40  ; 4 uses
  %i.gv = load i32, ptr %i.g, align 8, !tbaa !41  ; 2 uses
  %or.cond.i276 = icmp ugt i32 %i.gv, 268435455
  %i.gw = shl nuw nsw i32 %i.gv, 3
  %i.gx = select i1 %or.cond.i276, i32 -8, i32 %i.gw ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.gx, 2147483135
  %i.gy = icmp ne ptr %i.gu, null
  %or.cond3.i.i = and i1 %i.gy, %or.cond.i.i      ; 2 uses
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.gx, i32 0 ; 2 uses
  %i.gz = add nuw nsw i32 %.013.i.i, 8            ; 3 uses
  br i1 %or.cond3.i.i, label %.preheader296, label %.critedge250.thread

.preheader296:                                    ; preds = %bb.be
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !60 ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph335, label %.critedge250

.lr.ph335:                                        ; preds = %.preheader296
  %i.hd = load ptr, ptr %1, align 8, !tbaa !48
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !59
  %.fr337 = freeze i32 %i.hf                      ; 5 uses
  %i.hg = mul nsw i32 %.fr337, %switch.ext425
  %i.hh = icmp sgt i32 %.fr337, 0
  %narrow.i.i = sub nuw nsw i32 32, %switch.ext425
  %i.hi = lshr i32 -1, %narrow.i.i                ; 3 uses
  br i1 %i.hh, label %.lr.ph335.split.us.preheader, label %.critedge250

.lr.ph335.split.us.preheader:                     ; preds = %.lr.ph335
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !37
  %i.hl = sext i32 %i.hk to i64
  %wide.trip.count359 = zext nneg i32 %i.hb to i64
  %wide.trip.count = zext nneg i32 %.fr337 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.hm = icmp eq i32 %.fr337, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod439 = trunc i32 %.fr337 to i1
  br label %.lr.ph335.split.us

.lr.ph335.split.us:                               ; preds = %.lr.ph335.split.us.preheader, %._crit_edge331.us
  %indvars.iv356 = phi i64 [ 0, %.lr.ph335.split.us.preheader ], [ %indvars.iv.next357, %._crit_edge331.us ] ; 2 uses
  %.sroa.4.0333.us = phi i32 [ 0, %.lr.ph335.split.us.preheader ], [ %.lcssa, %._crit_edge331.us ] ; 3 uses
  %i.hn = mul nsw i64 %indvars.iv356, %i.hl
  %i.ho = getelementptr inbounds i8, ptr %i.hd, i64 %i.hn ; 3 uses
  %i.hp = sub nsw i32 %.013.i.i, %.sroa.4.0333.us
  %.not234.us = icmp slt i32 %i.hp, %i.hg
  br i1 %.not234.us, label %.critedge250, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph335.split.us
  br i1 %i.hm, label %.preheader.us.epil.preheader, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %indvars.iv352 = phi i64 [ %indvars.iv.next353.1, %.preheader.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %.sroa.4.1328.us = phi i32 [ %i.ik, %.preheader.us ], [ %.sroa.4.0333.us, %.preheader.us.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us ], [ 0, %.preheader.us.preheader ]
  %i.hq = lshr i32 %.sroa.4.1328.us, 3
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 1, !tbaa !49
  %i.hu = and i32 %.sroa.4.1328.us, 7
  %i.hv = lshr i32 %i.ht, %i.hu
  %i.hw = and i32 %i.hv, %i.hi
  %i.hx = add i32 %.sroa.4.1328.us, %switch.ext425
  %i.hy = tail call i32 @llvm.umin.i32(i32 %i.gz, i32 %i.hx) ; 3 uses
  %i.hz = shl nuw nsw i32 %i.hw, %i.gt
  %i.ia = trunc i32 %i.hz to i16
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %indvars.iv352
  store i16 %i.ia, ptr %i.ib, align 2, !tbaa !61
  %i.ic = lshr i32 %i.hy, 3
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 1, !tbaa !49
  %i.ig = and i32 %i.hy, 7
  %i.ih = lshr i32 %i.if, %i.ig
  %i.ii = and i32 %i.ih, %i.hi
  %i.ij = add nuw i32 %i.hy, %switch.ext425
  %i.ik = tail call i32 @llvm.umin.i32(i32 %i.gz, i32 %i.ij) ; 3 uses
  %i.il = shl nuw nsw i32 %i.ii, %i.gt
  %i.im = trunc i32 %i.il to i16
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %indvars.iv352
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  store i16 %i.im, ptr %i.io, align 2, !tbaa !61
  %indvars.iv.next353.1 = add nuw nsw i64 %indvars.iv352, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge331.us.unr-lcssa, label %.preheader.us, !llvm.loop !63

._crit_edge331.us.unr-lcssa:                      ; preds = %.preheader.us
  br i1 %lcmp.mod.not, label %._crit_edge331.us, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._crit_edge331.us.unr-lcssa, %.preheader.us.preheader
  %indvars.iv352.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next353.1, %._crit_edge331.us.unr-lcssa ]
  %.sroa.4.1328.us.epil.init = phi i32 [ %.sroa.4.0333.us, %.preheader.us.preheader ], [ %i.ik, %._crit_edge331.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod439)
  %i.ip = lshr i32 %.sroa.4.1328.us.epil.init, 3
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 1, !tbaa !49
  %i.it = and i32 %.sroa.4.1328.us.epil.init, 7
  %i.iu = lshr i32 %i.is, %i.it
  %i.iv = and i32 %i.iu, %i.hi
  %i.iw = add i32 %.sroa.4.1328.us.epil.init, %switch.ext425
  %i.ix = tail call i32 @llvm.umin.i32(i32 %i.gz, i32 %i.iw)
  %i.iy = shl nuw nsw i32 %i.iv, %i.gt
  %i.iz = trunc i32 %i.iy to i16
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %indvars.iv352.epil.init
  store i16 %i.iz, ptr %i.ja, align 2, !tbaa !61
  br label %._crit_edge331.us

._crit_edge331.us:                                ; preds = %._crit_edge331.us.unr-lcssa, %.preheader.us.epil.preheader
  %.lcssa = phi i32 [ %i.ik, %._crit_edge331.us.unr-lcssa ], [ %i.ix, %.preheader.us.epil.preheader ]
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %exitcond360.not = icmp eq i64 %indvars.iv.next357, %wide.trip.count359
  br i1 %exitcond360.not, label %.critedge250, label %.lr.ph335.split.us, !llvm.loop !64

bb.bf:                                            ; preds = %.critedge.preheader, %.critedge
  %indvars.iv = phi i64 [ 0, %.critedge.preheader ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.0194326 = phi i64 [ 0, %.critedge.preheader ], [ %i.kl, %.critedge ]
  %i.jb = load ptr, ptr %i.fu, align 8, !tbaa !35
  tail call void @av_packet_unref(ptr noundef %i.jb) #9
  %i.jc = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.jd = and i64 %.0194326, 4294967295           ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jd
  %i.jf = load ptr, ptr %i.fu, align 8, !tbaa !35 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  store ptr %i.je, ptr %i.jg, align 8, !tbaa !42
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv ; 2 uses
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !53
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  store i32 %i.jj, ptr %i.jk, align 8, !tbaa !44
  %i.jl = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.jm = tail call i32 @avcodec_send_packet(ptr noundef %i.jl, ptr noundef %i.jf) #9 ; 2 uses
  %i.jn = icmp slt i32 %i.jm, 0
  br i1 %i.jn, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #9
  br label %.critedge250.thread

bb.bh:                                            ; preds = %bb.bf
  %i.jo = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.jp = load ptr, ptr %i.fw, align 8, !tbaa !29
  %i.jq = tail call i32 @avcodec_receive_frame(ptr noundef %i.jo, ptr noundef %i.jp) #9 ; 3 uses
  %i.jr = icmp slt i32 %i.jq, 0
  br i1 %i.jr, label %.critedge252, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.js = load ptr, ptr %i.fw, align 8, !tbaa !29 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 116
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !65
  %.not235 = icmp eq i32 %i.ju, 30
  br i1 %.not235, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.jv = load ptr, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 112
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !59
  %i.jy = shl nsw i32 %i.jx, 1
  %i.jz = load i32, ptr %i.fx, align 8, !tbaa !59
  %.not236 = icmp eq i32 %i.jy, %i.jz
  br i1 %.not236, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 116
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !60 ; 2 uses
  %i.kc = shl nsw i32 %i.kb, 1
  %i.kd = load i32, ptr %i.fy, align 4, !tbaa !60
  %.not237 = icmp eq i32 %i.kc, %i.kd
  br i1 %.not237, label %.preheader297, label %bb.bl

.preheader297:                                    ; preds = %bb.bk
  %i.ke = icmp sgt i32 %i.kb, 0
  br i1 %i.ke, label %.lr.ph324, label %.critedge

.lr.ph324:                                        ; preds = %.preheader297
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.kf = shl nuw nsw i32 %indvars.iv.tr, 1
  br label %bb.bn

.critedge252:                                     ; preds = %bb.bh
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.jq) #9
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi, %bb.bj, %bb.bk
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #9
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.critedge252
  %.0197 = phi i32 [ %i.jq, %.critedge252 ], [ -1094995529, %bb.bl ]
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !70
  %i.ki = and i32 %i.kh, 8
  %.not238 = icmp eq i32 %i.ki, 0
  %..0197 = select i1 %.not238, i32 0, i32 %.0197
  br label %.critedge250.thread

.critedge.loopexit:                               ; preds = %bb.bn
  %.pre362 = load ptr, ptr %i.fw, align 8, !tbaa !29
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader297
  %i.kj = phi ptr [ %.pre362, %.critedge.loopexit ], [ %i.js, %.preheader297 ]
  tail call void @av_frame_unref(ptr noundef %i.kj) #9
  %i.kk = load i64, ptr %i.jh, align 8, !tbaa !53
  %i.kl = add i64 %i.kk, %i.jd
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %.critedge250, label %bb.bf, !llvm.loop !71

bb.bn:                                            ; preds = %.lr.ph324, %bb.bn
  %.0192323 = phi i32 [ 0, %.lr.ph324 ], [ %i.ln, %bb.bn ] ; 3 uses
  %i.km = load ptr, ptr %i.fw, align 8, !tbaa !29 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 104
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !72
  %i.kp = sdiv i32 %i.ko, 2                       ; 3 uses
  %i.kq = load ptr, ptr %1, align 8, !tbaa !48
  %i.kr = shl nuw nsw i32 %.0192323, 1
  %i.ks = load i32, ptr %i.fz, align 8, !tbaa !37
  %i.kt = mul nsw i32 %i.kr, %i.ks
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds i8, ptr %i.kq, i64 %i.ku
  %i.kw = mul i32 %i.kf, %i.kp
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds i8, ptr %i.kv, i64 %i.kx ; 2 uses
  %i.kz = load ptr, ptr %i.km, align 8, !tbaa !48
  %i.la = getelementptr inbounds nuw i8, ptr %i.km, i64 64
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !37
  %i.lc = mul nsw i32 %i.lb, %.0192323
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds i8, ptr %i.kz, i64 %i.ld ; 2 uses
  %i.lf = shl nsw i32 %i.kp, 1
  %i.lg = sext i32 %i.lf to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ky, ptr align 2 %i.le, i64 %i.lg, i1 false)
  %i.lh = sext i32 %i.kp to i64
  %i.li = getelementptr inbounds [2 x i8], ptr %i.le, i64 %i.lh
  %i.lj = load i32, ptr %i.fz, align 8, !tbaa !37
  %i.lk = sdiv i32 %i.lj, 2
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [2 x i8], ptr %i.ky, i64 %i.ll
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.lm, ptr align 2 %i.li, i64 %i.lg, i1 false)
  %i.ln = add nuw nsw i32 %.0192323, 1            ; 2 uses
  %i.lo = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 116
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !60
  %i.lr = icmp slt i32 %i.ln, %i.lq
  br i1 %i.lr, label %bb.bn, label %.critedge.loopexit, !llvm.loop !73

.critedge250:                                     ; preds = %.critedge, %._crit_edge331.us, %.lr.ph335.split.us, %.lr.ph335, %.preheader296, %bytestream2_init.exit
  %i.ls = icmp ne i32 %.0215.lcssa, 0
  %i.lt = icmp ne i32 %.0211.lcssa, 0
  %or.cond = select i1 %i.ls, i1 true, i1 %i.lt
  br i1 %or.cond, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %.critedge250
  %i.lu = call i32 @ff_frame_new_side_data(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 6, i64 noundef 36, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.lv = load ptr, ptr %i.a, align 8, !tbaa !74  ; 2 uses
  %.not239 = icmp eq ptr %i.lv, null
  br i1 %.not239, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !76
  call void @av_display_rotation_set(ptr noundef %i.lx, double noundef 0.000000e+00) #9
  %i.ly = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !76
  call void @av_display_matrix_flip(ptr noundef %i.ma, i32 noundef %.0215.lcssa, i32 noundef %.0211.lcssa) #9
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp, %.critedge250
  store i32 1, ptr %2, align 4, !tbaa !37
  br label %.critedge250.thread

.critedge250.thread:                              ; preds = %switch.lookup, %._crit_edge, %.preheader299, %bb.ar, %bb.as, %bb.at, %bb.bg, %bb.bm, %bb.be, %.thread, %bb.az, %bb.av, %bb.aw, %bb.au, %bb.bq, %bb.ay
  %.6 = phi i32 [ %.1.ph, %.thread ], [ %i.fr, %bb.az ], [ -1094995529, %switch.lookup ], [ %i.fq, %bb.ay ], [ -1094995529, %bb.av ], [ 0, %bb.bq ], [ -1094995529, %bb.be ], [ -1094995529, %._crit_edge ], [ -1094995529, %bb.au ], [ -1094995529, %bb.aw ], [ %i.jm, %bb.bg ], [ %..0197, %bb.bm ], [ -1094995529, %bb.at ], [ -1094995529, %bb.as ], [ -1094995529, %bb.ar ], [ -1094995529, %.preheader299 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.6
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @cri_decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_packet_free(ptr noundef nonnull %i.d) #9
  tail call void @avcodec_free_context(ptr noundef %i.b) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_frame_alloc() local_unnamed_addr #3

declare ptr @av_packet_alloc() local_unnamed_addr #3

declare ptr @avcodec_alloc_context3(ptr noundef) local_unnamed_addr #3

declare i32 @avcodec_open2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @unpack_10bit(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef range(i64 -1073741824, 1073741824) %4) unnamed_addr #5 {
bb.a:
  %i.a = mul nsw i32 %3, %2                       ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 7 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !45
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ai
  %i.f = phi ptr [ %.pre, %.lr.ph ], [ %i.ac, %bb.ai ] ; 3 uses
  %.0108167 = phi i32 [ 0, %.lr.ph ], [ %.9, %bb.ai ] ; 2 uses
  %.0109166 = phi i32 [ %i.a, %.lr.ph ], [ %i.ds, %bb.ai ] ; 11 uses
  %.0111165 = phi ptr [ %1, %.lr.ph ], [ %.9120, %bb.ai ] ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.e, %i.g                       ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp slt i32 %i.i, 4
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i64 %i.h, 4
  br i1 %i.k, label %bytestream2_get_le32.exit160, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !48
  %i.m = load i32, ptr %i.f, align 1, !tbaa !49
  %.pre178 = ptrtoint ptr %i.l to i64
  br label %bytestream2_get_le32.exit160

bytestream2_get_le32.exit160:                     ; preds = %bb.c, %bb.d
  %.pre-phi = phi i64 [ %.pre178, %bb.d ], [ %i.e, %bb.c ]
  %i.n = phi ptr [ %i.l, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.0.i159 = phi i32 [ %i.m, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %i.o = sub i64 %i.e, %.pre-phi
  %i.p = icmp slt i64 %i.o, 4
  br i1 %i.p, label %bytestream2_get_le32.exit158, label %bb.e

bb.e:                                             ; preds = %bytestream2_get_le32.exit160
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !48
  %i.r = load i32, ptr %i.n, align 1, !tbaa !49
  %.pre179 = ptrtoint ptr %i.q to i64
  br label %bytestream2_get_le32.exit158

bytestream2_get_le32.exit158:                     ; preds = %bytestream2_get_le32.exit160, %bb.e
  %.pre-phi180 = phi i64 [ %.pre179, %bb.e ], [ %i.e, %bytestream2_get_le32.exit160 ]
  %i.s = phi ptr [ %i.q, %bb.e ], [ %i.d, %bytestream2_get_le32.exit160 ] ; 2 uses
  %.0.i157 = phi i32 [ %i.r, %bb.e ], [ 0, %bytestream2_get_le32.exit160 ] ; 4 uses
  %i.t = sub i64 %i.e, %.pre-phi180
  %i.u = icmp slt i64 %i.t, 4
  br i1 %i.u, label %bytestream2_get_le32.exit156, label %bb.f

bb.f:                                             ; preds = %bytestream2_get_le32.exit158
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !48
  %i.w = load i32, ptr %i.s, align 1, !tbaa !49
  %.pre181 = ptrtoint ptr %i.v to i64
  br label %bytestream2_get_le32.exit156

bytestream2_get_le32.exit156:                     ; preds = %bytestream2_get_le32.exit158, %bb.f
  %.pre-phi182 = phi i64 [ %.pre181, %bb.f ], [ %i.e, %bytestream2_get_le32.exit158 ]
  %i.x = phi ptr [ %i.v, %bb.f ], [ %i.d, %bytestream2_get_le32.exit158 ] ; 2 uses
  %.0.i155 = phi i32 [ %i.w, %bb.f ], [ 0, %bytestream2_get_le32.exit158 ] ; 4 uses
  %i.y = sub i64 %i.e, %.pre-phi182
  %i.z = icmp slt i64 %i.y, 4
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bytestream2_get_le32.exit156
  store ptr %i.d, ptr %0, align 8, !tbaa !45
  br label %bytestream2_get_le32.exit

bb.h:                                             ; preds = %bytestream2_get_le32.exit156
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !48
  %i.ab = load i32, ptr %i.x, align 1, !tbaa !49
  br label %bytestream2_get_le32.exit

bytestream2_get_le32.exit:                        ; preds = %bb.g, %bb.h
  %i.ac = phi ptr [ %i.d, %bb.g ], [ %i.aa, %bb.h ]
  %.0.i = phi i32 [ 0, %bb.g ], [ %i.ab, %bb.h ]  ; 5 uses
  %i.ad = lshr i32 %.0.i159, 1
  %i.ae = and i32 %i.ad, 3584
  %i.af = and i32 %.0.i159, 511
  %i.ag = or disjoint i32 %i.ae, %i.af
  %.tr = trunc nuw nsw i32 %i.ag to i16
  %i.ah = shl nuw i16 %.tr, 4
  %i.ai = sext i32 %.0108167 to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %.0111165, i64 %i.ai
  store i16 %i.ah, ptr %i.aj, align 2, !tbaa !61
  %i.ak = add nsw i32 %.0108167, 1                ; 2 uses
  %.not = icmp slt i32 %i.ak, %2
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bytestream2_get_le32.exit
  %i.al = icmp eq i32 %.0109166, 1
  br i1 %i.al, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds [2 x i8], ptr %.0111165, i64 %4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bytestream2_get_le32.exit
  %.1112 = phi ptr [ %i.am, %bb.j ], [ %.0111165, %bytestream2_get_le32.exit ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.j ], [ %i.ak, %bytestream2_get_le32.exit ] ; 2 uses
  %i.an = lshr i32 %.0.i159, 13
  %i.ao = and i32 %i.an, 63
  %i.ap = lshr i32 %.0.i159, 14
  %i.aq = and i32 %i.ap, 4032
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %.tr140 = trunc nuw nsw i32 %i.ar to i16
  %i.as = shl nuw i16 %.tr140, 4
  %i.at = sext i32 %.1 to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %.1112, i64 %i.at
  store i16 %i.as, ptr %i.au, align 2, !tbaa !61
  %i.av = add nsw i32 %.1, 1                      ; 2 uses
  %.not141 = icmp slt i32 %i.av, %2
  br i1 %.not141, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp eq i32 %.0109166, 2
  br i1 %i.aw, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds [2 x i8], ptr %.1112, i64 %4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.2113 = phi ptr [ %i.ax, %bb.m ], [ %.1112, %bb.k ] ; 3 uses
  %.2 = phi i32 [ 0, %bb.m ], [ %i.av, %bb.k ]    ; 2 uses
  %i.ay = lshr i32 %.0.i159, 26
  %i.az = and i32 %i.ay, 7
  %i.ba = shl i32 %.0.i157, 3
  %5 = and i32 %i.ba, 4088
  %i.bb = or disjoint i32 %5, %i.az
  %.tr142 = trunc nuw nsw i32 %i.bb to i16
  %i.bc = shl nuw i16 %.tr142, 4
  %i.bd = sext i32 %.2 to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %.2113, i64 %i.bd
  store i16 %i.bc, ptr %i.be, align 2, !tbaa !61
  %i.bf = add nsw i32 %.2, 1                      ; 2 uses
  %.not143 = icmp slt i32 %i.bf, %2
  br i1 %.not143, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = icmp eq i32 %.0109166, 3
  br i1 %i.bg, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds [2 x i8], ptr %.2113, i64 %4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.3114 = phi ptr [ %i.bh, %bb.p ], [ %.2113, %bb.n ] ; 3 uses
  %.3 = phi i32 [ 0, %bb.p ], [ %i.bf, %bb.n ]    ; 2 uses
  %i.bi = lshr i32 %.0.i157, 10
  %i.bj = and i32 %i.bi, 511
  %i.bk = lshr i32 %.0.i157, 11
  %i.bl = and i32 %i.bk, 3584
  %i.bm = or disjoint i32 %i.bj, %i.bl
  %.tr144 = trunc nuw nsw i32 %i.bm to i16
  %i.bn = shl nuw i16 %.tr144, 4
  %i.bo = sext i32 %.3 to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %.3114, i64 %i.bo
  store i16 %i.bn, ptr %i.bp, align 2, !tbaa !61
  %i.bq = add nsw i32 %.3, 1                      ; 2 uses
  %.not145 = icmp slt i32 %i.bq, %2
  br i1 %.not145, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = icmp eq i32 %.0109166, 4
  br i1 %i.br, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds [2 x i8], ptr %.3114, i64 %4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.4115 = phi ptr [ %i.bs, %bb.s ], [ %.3114, %bb.q ] ; 3 uses
  %.4 = phi i32 [ 0, %bb.s ], [ %i.bq, %bb.q ]    ; 2 uses
  %i.bt = lshr i32 %.0.i157, 23
  %i.bu = and i32 %i.bt, 63
  %i.bv = shl i32 %.0.i155, 6
  %6 = and i32 %i.bv, 4032
  %i.bw = or disjoint i32 %6, %i.bu
  %.tr146 = trunc nuw nsw i32 %i.bw to i16
  %i.bx = shl nuw i16 %.tr146, 4
  %i.by = sext i32 %.4 to i64
  %i.bz = getelementptr inbounds [2 x i8], ptr %.4115, i64 %i.by
  store i16 %i.bx, ptr %i.bz, align 2, !tbaa !61
  %i.ca = add nsw i32 %.4, 1                      ; 2 uses
  %.not147 = icmp slt i32 %i.ca, %2
  br i1 %.not147, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = icmp eq i32 %.0109166, 5
  br i1 %i.cb, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds [2 x i8], ptr %.4115, i64 %4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.5116 = phi ptr [ %i.cc, %bb.v ], [ %.4115, %bb.t ] ; 3 uses
  %.5 = phi i32 [ 0, %bb.v ], [ %i.ca, %bb.t ]    ; 2 uses
  %i.cd = lshr i32 %.0.i155, 7
  %i.ce = and i32 %i.cd, 4088
  %i.cf = lshr i32 %.0.i155, 6
  %i.cg = and i32 %i.cf, 7
  %i.ch = or disjoint i32 %i.ce, %i.cg
  %.tr148 = trunc nuw nsw i32 %i.ch to i16
  %i.ci = shl nuw i16 %.tr148, 4
  %i.cj = sext i32 %.5 to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %.5116, i64 %i.cj
  store i16 %i.ci, ptr %i.ck, align 2, !tbaa !61
  %i.cl = add nsw i32 %.5, 1                      ; 2 uses
  %.not149 = icmp slt i32 %i.cl, %2
  br i1 %.not149, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = icmp eq i32 %.0109166, 6
  br i1 %i.cm, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds [2 x i8], ptr %.5116, i64 %4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.6117 = phi ptr [ %i.cn, %bb.y ], [ %.5116, %bb.w ] ; 3 uses
  %.6 = phi i32 [ 0, %bb.y ], [ %i.cl, %bb.w ]    ; 2 uses
  %i.co = shl i32 %.0.i, 9
  %7 = and i32 %i.co, 3584
  %i.cp = lshr i32 %.0.i155, 20
  %i.cq = and i32 %i.cp, 511
  %i.cr = or disjoint i32 %7, %i.cq
  %.tr150 = trunc nuw nsw i32 %i.cr to i16
  %i.cs = shl nuw i16 %.tr150, 4
  %i.ct = sext i32 %.6 to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %.6117, i64 %i.ct
  store i16 %i.cs, ptr %i.cu, align 2, !tbaa !61
  %i.cv = add nsw i32 %.6, 1                      ; 2 uses
  %.not151 = icmp slt i32 %i.cv, %2
  br i1 %.not151, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = icmp eq i32 %.0109166, 7
  br i1 %i.cw, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds [2 x i8], ptr %.6117, i64 %4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.7118 = phi ptr [ %i.cx, %bb.ab ], [ %.6117, %bb.z ] ; 3 uses
  %.7 = phi i32 [ 0, %bb.ab ], [ %i.cv, %bb.z ]   ; 2 uses
  %i.cy = shl i32 %.0.i, 1
  %i.cz = and i32 %i.cy, 1008
  %.mask = and i32 %.0.i, 64512
  %i.da = or disjoint i32 %i.cz, %.mask
  %i.db = trunc nuw i32 %i.da to i16
  %i.dc = sext i32 %.7 to i64
  %i.dd = getelementptr inbounds [2 x i8], ptr %.7118, i64 %i.dc
  store i16 %i.db, ptr %i.dd, align 2, !tbaa !61
  %i.de = add nsw i32 %.7, 1                      ; 2 uses
  %.not152 = icmp slt i32 %i.de, %2
  br i1 %.not152, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = icmp eq i32 %.0109166, 8
  br i1 %i.df, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds [2 x i8], ptr %.7118, i64 %4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.8119 = phi ptr [ %i.dg, %bb.ae ], [ %.7118, %bb.ac ] ; 3 uses
  %.8 = phi i32 [ 0, %bb.ae ], [ %i.de, %bb.ac ]  ; 2 uses
  %i.dh = lshr i32 %.0.i, 16
  %i.di = and i32 %i.dh, 7
  %i.dj = lshr i32 %.0.i, 17
  %i.dk = and i32 %i.dj, 4088
  %i.dl = or disjoint i32 %i.di, %i.dk
  %.tr153 = trunc nuw nsw i32 %i.dl to i16
  %i.dm = shl nuw i16 %.tr153, 4
  %i.dn = sext i32 %.8 to i64
  %i.do = getelementptr inbounds [2 x i8], ptr %.8119, i64 %i.dn
  store i16 %i.dm, ptr %i.do, align 2, !tbaa !61
  %i.dp = add nsw i32 %.8, 1                      ; 2 uses
  %.not154 = icmp slt i32 %i.dp, %2
  br i1 %.not154, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dq = icmp eq i32 %.0109166, 9
  br i1 %i.dq, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dr = getelementptr inbounds [2 x i8], ptr %.8119, i64 %4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ah
  %.9120 = phi ptr [ %i.dr, %bb.ah ], [ %.8119, %bb.af ]
  %.9 = phi i32 [ 0, %bb.ah ], [ %i.dp, %bb.af ]
  %i.ds = add nsw i32 %.0109166, -9
  %i.dt = icmp sgt i32 %.0109166, 9
  br i1 %i.dt, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.ai, %bb.b, %bb.i, %bb.l, %bb.o, %bb.r, %bb.u, %bb.x, %bb.aa, %bb.ad, %bb.ag, %bb.a
  ret void
}

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #3

declare i32 @avcodec_send_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @avcodec_receive_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #3

declare i32 @ff_frame_new_side_data(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @av_display_rotation_set(ptr noundef, double noundef) local_unnamed_addr #3

declare void @av_display_matrix_flip(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @av_packet_free(ptr noundef) local_unnamed_addr #3

declare void @avcodec_free_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !33, i64 16}
!30 = !{!"CRIContext", !31, i64 0, !32, i64 8, !33, i64 16, !34, i64 24, !6, i64 48, !16, i64 56, !6, i64 64, !7, i64 72}
!31 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!32 = !{!"p1 _ZTS8AVPacket", !12, i64 0}
!33 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!34 = !{!"GetByteContext", !16, i64 0, !16, i64 8, !16, i64 16}
!35 = !{!30, !32, i64 8}
!36 = !{!30, !31, i64 0}
!37 = !{!6, !6, i64 0}
!38 = !{!10, !6, i64 644}
!39 = !{!10, !15, i64 792}
!40 = !{!30, !16, i64 56}
!41 = !{!30, !6, i64 64}
!42 = !{!43, !16, i64 24}
!43 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!44 = !{!43, !6, i64 32}
!45 = !{!34, !16, i64 0}
!46 = !{!34, !16, i64 16}
!47 = !{!34, !16, i64 8}
!48 = !{!16, !16, i64 0}
!49 = !{!7, !7, i64 0}
!50 = !{!30, !6, i64 48}
!51 = !{!10, !6, i64 100}
!52 = !{!10, !6, i64 104}
!53 = !{!15, !15, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!10, !6, i64 136}
!57 = !{!10, !6, i64 704}
!58 = !{!10, !6, i64 652}
!59 = !{!10, !6, i64 112}
!60 = !{!10, !6, i64 116}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !7, i64 0}
!63 = distinct !{!63, !55}
!64 = distinct !{!64, !55}
!65 = !{!66, !6, i64 116}
!66 = !{!"AVFrame", !7, i64 0, !7, i64 64, !67, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !68, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !69, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!67 = !{!"p2 omnipotent char", !28, i64 0}
!68 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!69 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!70 = !{!10, !6, i64 528}
end_hunk_0
