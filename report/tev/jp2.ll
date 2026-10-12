Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jp2?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@opj_jp2_apply_color_postprocessing:bb.a
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %index ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load = load <4 x i32>, ptr %i.hs, align 4, !tbaa !45
  %wide.load151 = load <4 x i32>, ptr %i.ht, align 4, !tbaa !45
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %index ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <4 x i32> %wide.load, ptr %i.hu, align 4, !tbaa !45
  store <4 x i32> %wide.load151, ptr %i.hv, align 4, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hw = icmp eq i64 %index.next, %n.vec
  br i1 %i.hw, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count179.i
  br i1 %cmp.n, label %.loopexit.i33, label %.lr.ph144.i.preheader

.lr.ph144.i.preheader:                            ; preds = %.lr.ph144.preheader.i, %middle.block
  %indvars.iv176.i.ph = phi i64 [ 0, %.lr.ph144.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter199 = and i64 %wide.trip.count179.i, 3 ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.lr.ph144.i.prol.loopexit, label %.lr.ph144.i.prol

.lr.ph144.i.prol:                                 ; preds = %.lr.ph144.i.preheader, %.lr.ph144.i.prol
  %indvars.iv176.i.prol = phi i64 [ %indvars.iv.next177.i.prol, %.lr.ph144.i.prol ], [ %indvars.iv176.i.ph, %.lr.ph144.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph144.i.prol ], [ 0, %.lr.ph144.i.preheader ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv176.i.prol
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !45
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv176.i.prol
  store i32 %i.hy, ptr %i.hz, align 4, !tbaa !45
  %indvars.iv.next177.i.prol = add nuw nsw i64 %indvars.iv176.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter199
  br i1 %prol.iter.cmp.not, label %.lr.ph144.i.prol.loopexit, label %.lr.ph144.i.prol, !llvm.loop !108

.lr.ph144.i.prol.loopexit:                        ; preds = %.lr.ph144.i.prol, %.lr.ph144.i.preheader
  %indvars.iv176.i.unr = phi i64 [ %indvars.iv176.i.ph, %.lr.ph144.i.preheader ], [ %indvars.iv.next177.i.prol, %.lr.ph144.i.prol ]
  %i.ia = sub nsw i64 %indvars.iv176.i.ph, %wide.trip.count179.i
  %i.ib = icmp ugt i64 %i.ia, -4
  br i1 %i.ib, label %.loopexit.i33, label %.lr.ph144.i

.lr.ph144.i:                                      ; preds = %.lr.ph144.i.prol.loopexit, %.lr.ph144.i
  %indvars.iv176.i = phi i64 [ %indvars.iv.next177.i.3, %.lr.ph144.i ], [ %indvars.iv176.i.unr, %.lr.ph144.i.prol.loopexit ] ; 6 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv176.i
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !45
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv176.i
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !45
  %indvars.iv.next177.i = add nuw nsw i64 %indvars.iv176.i, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.next177.i
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !45
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv.next177.i
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !45
  %indvars.iv.next177.i.1 = add nuw nsw i64 %indvars.iv176.i, 2 ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.next177.i.1
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !45
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv.next177.i.1
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !45
  %indvars.iv.next177.i.2 = add nuw nsw i64 %indvars.iv176.i, 3 ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.next177.i.2
  %i.im = load i32, ptr %i.il, align 4, !tbaa !45
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv.next177.i.2
  store i32 %i.im, ptr %i.in, align 4, !tbaa !45
  %indvars.iv.next177.i.3 = add nuw nsw i64 %indvars.iv176.i, 4 ; 2 uses
  %exitcond180.not.i.3 = icmp eq i64 %indvars.iv.next177.i.3, %wide.trip.count179.i
  br i1 %exitcond180.not.i.3, label %.loopexit.i33, label %.lr.ph144.i, !llvm.loop !109

bb.au:                                            ; preds = %.lr.ph147.i
  %i.io = zext i8 %i.gz to i64
  %i.ip = getelementptr inbounds nuw [64 x i8], ptr %i.ff, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !119 ; 3 uses
  %.not160.i = icmp eq i32 %i.hk, 0
  br i1 %.not160.i, label %.loopexit.i33, label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %bb.au
  %i.is = zext i8 %i.gz to i32                    ; 3 uses
  %wide.trip.count174.i = zext i32 %i.hk to i64   ; 2 uses
  %xtraiter193 = and i64 %wide.trip.count174.i, 1
  %i.it = icmp eq i32 %i.hk, 1
  br i1 %i.it, label %.epil.preheader192, label %.lr.ph141.i.new

.lr.ph141.i.new:                                  ; preds = %.lr.ph141.i
  %unroll_iter197 = and i64 %wide.trip.count174.i, 4294967294
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph141.i.new
  %indvars.iv171.i = phi i64 [ 0, %.lr.ph141.i.new ], [ %indvars.iv.next172.i.1, %bb.av ] ; 4 uses
  %niter198 = phi i64 [ 0, %.lr.ph141.i.new ], [ %niter198.next.1, %bb.av ]
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv171.i
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !45 ; 2 uses
  %i.iw = icmp slt i32 %i.iv, 0
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.iv, i32 %i.gv)
  %.0.i = select i1 %i.iw, i32 0, i32 %spec.select.i
  %i.ix = mul nsw i32 %.0.i, %i.em
  %i.iy = add nsw i32 %i.ix, %i.is
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !45
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv171.i
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !45
  %indvars.iv.next172.i = or disjoint i64 %indvars.iv171.i, 1 ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.next172.i
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !45 ; 2 uses
  %i.jf = icmp slt i32 %i.je, 0
  %spec.select.i.1 = tail call i32 @llvm.smin.i32(i32 %i.je, i32 %i.gv)
  %.0.i.1 = select i1 %i.jf, i32 0, i32 %spec.select.i.1
  %i.jg = mul nsw i32 %.0.i.1, %i.em
  %i.jh = add nsw i32 %i.jg, %i.is
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !45
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv.next172.i
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !45
  %indvars.iv.next172.i.1 = add nuw nsw i64 %indvars.iv171.i, 2 ; 2 uses
  %niter198.next.1 = add i64 %niter198, 2         ; 2 uses
  %niter198.ncmp.1 = icmp eq i64 %niter198.next.1, %unroll_iter197
  br i1 %niter198.ncmp.1, label %.loopexit.i33.loopexit178.unr-lcssa, label %bb.av, !llvm.loop !110

.loopexit.i33.loopexit178.unr-lcssa:              ; preds = %bb.av
  %lcmp.mod195.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod195.not, label %.loopexit.i33, label %.epil.preheader192

.epil.preheader192:                               ; preds = %.loopexit.i33.loopexit178.unr-lcssa, %.lr.ph141.i
  %indvars.iv171.i.epil.init = phi i64 [ 0, %.lr.ph141.i ], [ %indvars.iv.next172.i.1, %.loopexit.i33.loopexit178.unr-lcssa ] ; 2 uses
  %lcmp.mod196 = trunc i32 %i.hk to i1
  tail call void @llvm.assume(i1 %lcmp.mod196)
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv171.i.epil.init
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !45 ; 2 uses
  %i.jo = icmp slt i32 %i.jn, 0
  %spec.select.i.epil = tail call i32 @llvm.smin.i32(i32 %i.jn, i32 %i.gv)
  %.0.i.epil = select i1 %i.jo, i32 0, i32 %spec.select.i.epil
  %i.jp = mul nsw i32 %.0.i.epil, %i.em
  %i.jq = add nsw i32 %i.jp, %i.is
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !45
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv171.i.epil.init
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !45
  br label %.loopexit.i33

.loopexit.i33:                                    ; preds = %.epil.preheader192, %.loopexit.i33.loopexit178.unr-lcssa, %.lr.ph144.i.prol.loopexit, %.lr.ph144.i, %middle.block, %bb.au, %bb.at
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 1 ; 2 uses
  %exitcond185.not.i = icmp eq i64 %indvars.iv.next182.i, %i.fd
  br i1 %exitcond185.not.i, label %._crit_edge148.i, label %.lr.ph147.i, !llvm.loop !111

._crit_edge148.i:                                 ; preds = %.loopexit.i33, %._crit_edge.thread.i37
  %i.jv = phi ptr [ %i.fg, %._crit_edge.thread.i37 ], [ %i.ff, %.loopexit.i33 ]
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !32 ; 2 uses
  %.not162.i34 = icmp eq i32 %i.jx, 0
  br i1 %.not162.i34, label %opj_jp2_apply_pclr.exit, label %.lr.ph151.preheader.i

.lr.ph151.preheader.i:                            ; preds = %._crit_edge148.i
  %wide.trip.count189.i = zext i32 %i.jx to i64
  br label %.lr.ph151.i

.lr.ph151.i:                                      ; preds = %bb.ax, %.lr.ph151.preheader.i
  %indvars.iv186.i = phi i64 [ 0, %.lr.ph151.preheader.i ], [ %indvars.iv.next187.i, %bb.ax ] ; 2 uses
  %i.jy = getelementptr inbounds nuw [64 x i8], ptr %.pre.i25, i64 %indvars.iv186.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 48
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !119 ; 2 uses
  %.not122.i = icmp eq ptr %i.ka, null
  br i1 %.not122.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph151.i
  tail call void @opj_image_data_free(ptr noundef nonnull %i.ka) #6
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph151.i
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %exitcond190.not.i = icmp eq i64 %indvars.iv.next187.i, %wide.trip.count189.i
  br i1 %exitcond190.not.i, label %opj_jp2_apply_pclr.exit, label %.lr.ph151.i, !llvm.loop !112

opj_jp2_apply_pclr.exit:                          ; preds = %bb.ax, %._crit_edge148.i
  tail call void @opj_free(ptr noundef %.pre.i25) #6
  store ptr %i.jv, ptr %.phi.trans.insert.i24, align 8, !tbaa !50
  store i32 %i.em, ptr %i.jw, align 8, !tbaa !32
  br label %bb.ay

bb.ay:                                            ; preds = %opj_jp2_apply_pclr.exit, %opj_jp2_free_pclr.exit, %opj_jp2_check_color.exit
  %i.kb = load ptr, ptr %i.f, align 8, !tbaa !57  ; 4 uses
  %.not21 = icmp eq ptr %i.kb, null
  br i1 %.not21, label %opj_jp2_check_color.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !28 ; 11 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.ke = load i16, ptr %i.kd, align 8, !tbaa !29 ; 4 uses
  %.not84.i = icmp eq i16 %i.ke, 0
  br i1 %.not84.i, label %._crit_edge83.i, label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %bb.az
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.kh = zext i16 %i.ke to i64                   ; 2 uses
  %i.ki = add i16 %i.ke, -2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bm, %.lr.ph82.i
  %indvars.iv88.i = phi i64 [ 0, %.lr.ph82.i ], [ %indvars.iv.next89.i, %bb.bm ] ; 4 uses
  %indvars.iv.i38 = phi i64 [ 1, %.lr.ph82.i ], [ %indvars.iv.next.i39, %bb.bm ] ; 4 uses
  %i.kj = getelementptr inbounds nuw [6 x i8], ptr %i.kc, i64 %indvars.iv88.i ; 5 uses
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !38 ; 8 uses
  %i.kl = zext i16 %i.kk to i32                   ; 2 uses
  %i.km = load i32, ptr %i.kf, align 8, !tbaa !32 ; 4 uses
  %.not74.i = icmp ugt i32 %i.km, %i.kl
  br i1 %.not74.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kn = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %i.kl, i32 noundef %i.km) #6 ; 0 uses
  br label %bb.bm

bb.bc:                                            ; preds = %bb.ba
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !40 ; 2 uses
  %i.kq = add i16 %i.kp, 1
  %or.cond.i42 = icmp ult i16 %i.kq, 2
  br i1 %or.cond.i42, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kj, i64 2
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !58
  %i.kt = load ptr, ptr %i.kg, align 8, !tbaa !50
  %i.ku = zext i16 %i.kk to i64
  %i.kv = getelementptr inbounds nuw [64 x i8], ptr %i.kt, i64 %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 56
  store i16 %i.ks, ptr %i.kw, align 8, !tbaa !59
  br label %bb.bm

bb.be:                                            ; preds = %bb.bc
  %i.kx = add i16 %i.kp, -1                       ; 6 uses
  %i.ky = zext i16 %i.kx to i32                   ; 2 uses
  %.not75.i = icmp ugt i32 %i.km, %i.ky
  br i1 %.not75.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kz = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %i.ky, i32 noundef %i.km) #6 ; 0 uses
  br label %bb.bm

bb.bg:                                            ; preds = %bb.be
  %.not76.i = icmp eq i16 %i.kk, %i.kx
  br i1 %.not76.i, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.la = getelementptr inbounds nuw i8, ptr %i.kj, i64 2
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !58
  %i.lc = icmp eq i16 %i.lb, 0
  br i1 %i.lc, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ld = load ptr, ptr %i.kg, align 8, !tbaa !50 ; 2 uses
  %i.le = zext i16 %i.kk to i64
  %i.lf = getelementptr inbounds nuw [64 x i8], ptr %i.ld, i64 %i.le ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.lf, i64 64, i1 false)
  %i.lg = zext i16 %i.kx to i64                   ; 2 uses
  %i.lh = getelementptr inbounds nuw [64 x i8], ptr %i.ld, i64 %i.lg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lf, ptr noundef nonnull align 8 dereferenceable(64) %i.lh, i64 64, i1 false)
  %i.li = load ptr, ptr %i.kg, align 8, !tbaa !50
  %i.lj = getelementptr inbounds nuw [64 x i8], ptr %i.li, i64 %i.lg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lj, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  %i.lk = add nuw nsw i64 %indvars.iv88.i, 1
  %i.ll = icmp samesign ult i64 %i.lk, %i.kh
  br i1 %i.ll, label %.lr.ph.i44.preheader, label %._crit_edge.i43

.lr.ph.i44.preheader:                             ; preds = %bb.bi
  %4 = trunc i64 %indvars.iv88.i to i16
  %5 = sub i16 %i.ki, %4                          ; 2 uses
  %min.iters.check153 = icmp ult i16 %5, 8
  br i1 %min.iters.check153, label %.lr.ph.i44.preheader177, label %vector.ph154

vector.ph154:                                     ; preds = %.lr.ph.i44.preheader
  %i.lm = zext i16 %5 to i64
  %i.ln = add nuw nsw i64 %i.lm, 1                ; 2 uses
  %i.lo = and i64 %i.ln, 7                        ; 2 uses
  %i.lp = icmp eq i64 %i.lo, 0
  %i.lq = select i1 %i.lp, i64 8, i64 %i.lo
  %n.vec155 = sub nsw i64 %i.ln, %i.lq            ; 2 uses
  %i.lr = add i64 %indvars.iv.i38, %n.vec155
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kk, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert156 = insertelement <8 x i16> poison, i16 %i.kx, i64 0
  %broadcast.splat157 = shufflevector <8 x i16> %broadcast.splatinsert156, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body158

vector.body158:                                   ; preds = %pred.store.continue173, %vector.ph154
  %index159 = phi i64 [ 0, %vector.ph154 ], [ %index.next174, %pred.store.continue173 ] ; 2 uses
  %i.ls = add nuw i64 %indvars.iv.i38, %index159  ; 8 uses
  %i.lt = getelementptr inbounds nuw [6 x i8], ptr %i.kc, i64 %i.ls ; 2 uses
  %i.lu = getelementptr [6 x i8], ptr %i.kc, i64 %i.ls
  %i.lv = getelementptr i8, ptr %i.lu, i64 6      ; 2 uses
  %i.lw = getelementptr [6 x i8], ptr %i.kc, i64 %i.ls
  %i.lx = getelementptr i8, ptr %i.lw, i64 12     ; 2 uses
  %i.ly = getelementptr [6 x i8], ptr %i.kc, i64 %i.ls
  %i.lz = getelementptr i8, ptr %i.ly, i64 18     ; 2 uses
  %i.ma = getelementptr [6 x i8], ptr %i.kc, i64 %i.ls
  %i.mb = getelementptr i8, ptr %i.ma, i64 24     ; 2 uses
  %i.mc = getelementptr [6 x i8], ptr %i.kc, i64 %i.ls
  %i.md = getelementptr i8, ptr %i.mc, i64 30     ; 2 uses
  %i.me = getelementptr [6 x i8], ptr %i.kc, i64 %i.ls
  %i.mf = getelementptr i8, ptr %i.me, i64 36     ; 2 uses
  %i.mg = getelementptr [6 x i8], ptr %i.kc, i64 %i.ls
  %i.mh = getelementptr i8, ptr %i.mg, i64 42     ; 2 uses
  %i.mi = load i16, ptr %i.lt, align 2, !tbaa !38
  %i.mj = load i16, ptr %i.lv, align 2, !tbaa !38
  %i.mk = load i16, ptr %i.lx, align 2, !tbaa !38
  %i.ml = load i16, ptr %i.lz, align 2, !tbaa !38
  %i.mm = load i16, ptr %i.mb, align 2, !tbaa !38
  %i.mn = load i16, ptr %i.md, align 2, !tbaa !38
  %i.mo = load i16, ptr %i.mf, align 2, !tbaa !38
  %i.mp = load i16, ptr %i.mh, align 2, !tbaa !38
  %i.mq = insertelement <8 x i16> poison, i16 %i.mi, i64 0
  %i.mr = insertelement <8 x i16> %i.mq, i16 %i.mj, i64 1
  %i.ms = insertelement <8 x i16> %i.mr, i16 %i.mk, i64 2
  %i.mt = insertelement <8 x i16> %i.ms, i16 %i.ml, i64 3
  %i.mu = insertelement <8 x i16> %i.mt, i16 %i.mm, i64 4
  %i.mv = insertelement <8 x i16> %i.mu, i16 %i.mn, i64 5
  %i.mw = insertelement <8 x i16> %i.mv, i16 %i.mo, i64 6
  %i.mx = insertelement <8 x i16> %i.mw, i16 %i.mp, i64 7 ; 2 uses
  %i.my = icmp eq <8 x i16> %i.mx, %broadcast.splat ; 2 uses
  %i.mz = icmp eq <8 x i16> %i.mx, %broadcast.splat157
  %i.na = or <8 x i1> %i.mz, %i.my                ; 8 uses
  %predphi = select <8 x i1> %i.my, <8 x i16> %broadcast.splat157, <8 x i16> %broadcast.splat ; 8 uses
  %i.nb = extractelement <8 x i1> %i.na, i64 0
  br i1 %i.nb, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body158
  %i.nc = extractelement <8 x i16> %predphi, i64 0
  store i16 %i.nc, ptr %i.lt, align 2, !tbaa !38
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body158
  %i.nd = extractelement <8 x i1> %i.na, i64 1
  br i1 %i.nd, label %pred.store.if160, label %pred.store.continue161

pred.store.if160:                                 ; preds = %pred.store.continue
  %i.ne = extractelement <8 x i16> %predphi, i64 1
  store i16 %i.ne, ptr %i.lv, align 2, !tbaa !38
  br label %pred.store.continue161

pred.store.continue161:                           ; preds = %pred.store.if160, %pred.store.continue
  %i.nf = extractelement <8 x i1> %i.na, i64 2
  br i1 %i.nf, label %pred.store.if162, label %pred.store.continue163

pred.store.if162:                                 ; preds = %pred.store.continue161
  %i.ng = extractelement <8 x i16> %predphi, i64 2
  store i16 %i.ng, ptr %i.lx, align 2, !tbaa !38
  br label %pred.store.continue163

pred.store.continue163:                           ; preds = %pred.store.if162, %pred.store.continue161
  %i.nh = extractelement <8 x i1> %i.na, i64 3
  br i1 %i.nh, label %pred.store.if164, label %pred.store.continue165

pred.store.if164:                                 ; preds = %pred.store.continue163
  %i.ni = extractelement <8 x i16> %predphi, i64 3
  store i16 %i.ni, ptr %i.lz, align 2, !tbaa !38
  br label %pred.store.continue165

pred.store.continue165:                           ; preds = %pred.store.if164, %pred.store.continue163
  %i.nj = extractelement <8 x i1> %i.na, i64 4
  br i1 %i.nj, label %pred.store.if166, label %pred.store.continue167

pred.store.if166:                                 ; preds = %pred.store.continue165
  %i.nk = extractelement <8 x i16> %predphi, i64 4
  store i16 %i.nk, ptr %i.mb, align 2, !tbaa !38
  br label %pred.store.continue167

pred.store.continue167:                           ; preds = %pred.store.if166, %pred.store.continue165
  %i.nl = extractelement <8 x i1> %i.na, i64 5
  br i1 %i.nl, label %pred.store.if168, label %pred.store.continue169

pred.store.if168:                                 ; preds = %pred.store.continue167
  %i.nm = extractelement <8 x i16> %predphi, i64 5
  store i16 %i.nm, ptr %i.md, align 2, !tbaa !38
  br label %pred.store.continue169

pred.store.continue169:                           ; preds = %pred.store.if168, %pred.store.continue167
  %i.nn = extractelement <8 x i1> %i.na, i64 6
  br i1 %i.nn, label %pred.store.if170, label %pred.store.continue171

pred.store.if170:                                 ; preds = %pred.store.continue169
  %i.no = extractelement <8 x i16> %predphi, i64 6
  store i16 %i.no, ptr %i.mf, align 2, !tbaa !38
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.if170, %pred.store.continue169
  %i.np = extractelement <8 x i1> %i.na, i64 7
  br i1 %i.np, label %pred.store.if172, label %pred.store.continue173

pred.store.if172:                                 ; preds = %pred.store.continue171
  %i.nq = extractelement <8 x i16> %predphi, i64 7
  store i16 %i.nq, ptr %i.mh, align 2, !tbaa !38
  br label %pred.store.continue173

pred.store.continue173:                           ; preds = %pred.store.if172, %pred.store.continue171
  %index.next174 = add nuw i64 %index159, 8       ; 2 uses
  %i.nr = icmp eq i64 %index.next174, %n.vec155
  br i1 %i.nr, label %.lr.ph.i44.preheader177, label %vector.body158, !llvm.loop !113

.lr.ph.i44.preheader177:                          ; preds = %pred.store.continue173, %.lr.ph.i44.preheader
  %indvars.iv85.i.ph = phi i64 [ %indvars.iv.i38, %.lr.ph.i44.preheader ], [ %i.lr, %pred.store.continue173 ]
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader177, %bb.bk
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %bb.bk ], [ %indvars.iv85.i.ph, %.lr.ph.i44.preheader177 ] ; 2 uses
  %i.ns = getelementptr inbounds nuw [6 x i8], ptr %i.kc, i64 %indvars.iv85.i ; 2 uses
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !38 ; 2 uses
  %i.nu = icmp eq i16 %i.nt, %i.kk
  br i1 %i.nu, label %.sink.split.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i44
  %i.nv = icmp eq i16 %i.nt, %i.kx
  br i1 %i.nv, label %.sink.split.i, label %bb.bk

.sink.split.i:                                    ; preds = %bb.bj, %.lr.ph.i44
  %.sink.i = phi i16 [ %i.kx, %.lr.ph.i44 ], [ %i.kk, %bb.bj ]
  store i16 %.sink.i, ptr %i.ns, align 2, !tbaa !38
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split.i, %bb.bj
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next86.i to i16
  %exitcond87 = icmp eq i16 %i.ke, %lftr.wideiv
  br i1 %exitcond87, label %._crit_edge.i43, label %.lr.ph.i44, !llvm.loop !114

._crit_edge.i43:                                  ; preds = %bb.bk, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.i43, %bb.bh, %bb.bg
  %i.nw = getelementptr inbounds nuw i8, ptr %i.kj, i64 2
  %i.nx = load i16, ptr %i.nw, align 2, !tbaa !58
  %i.ny = load ptr, ptr %i.kg, align 8, !tbaa !50
  %i.nz = zext i16 %i.kk to i64
  %i.oa = getelementptr inbounds nuw [64 x i8], ptr %i.ny, i64 %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 56
  store i16 %i.nx, ptr %i.ob, align 8, !tbaa !59
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bf, %bb.bd, %bb.bb
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i38, 1
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next89.i, %i.kh
  br i1 %exitcond92.not.i, label %._crit_edge83.loopexit.i, label %bb.ba, !llvm.loop !115

._crit_edge83.loopexit.i:                         ; preds = %bb.bm
  %.pre.i40 = load ptr, ptr %i.f, align 8, !tbaa !116 ; 2 uses
  %.pre93.i = load ptr, ptr %.pre.i40, align 8, !tbaa !28
  br label %._crit_edge83.i

._crit_edge83.i:                                  ; preds = %._crit_edge83.loopexit.i, %bb.az
  %i.oc = phi ptr [ %.pre93.i, %._crit_edge83.loopexit.i ], [ %i.kc, %bb.az ] ; 2 uses
  %i.od = phi ptr [ %.pre.i40, %._crit_edge83.loopexit.i ], [ %i.kb, %bb.az ]
  %.not.i41 = icmp eq ptr %i.oc, null
  br i1 %.not.i41, label %opj_jp2_apply_cdef.exit, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge83.i
  tail call void @opj_free(ptr noundef nonnull %i.oc) #6
  %.pre94.i = load ptr, ptr %i.f, align 8, !tbaa !116
  br label %opj_jp2_apply_cdef.exit

opj_jp2_apply_cdef.exit:                          ; preds = %._crit_edge83.i, %bb.bn
  %i.oe = phi ptr [ %.pre94.i, %bb.bn ], [ %i.od, %._crit_edge83.i ]
  tail call void @opj_free(ptr noundef %i.oe) #6
  store ptr null, ptr %i.f, align 8, !tbaa !116
  br label %opj_jp2_check_color.exit.thread

opj_jp2_check_color.exit.thread:                  ; preds = %bb.ap, %._crit_edge156.i, %._crit_edge, %bb.l, %.split.us.i, %.critedge184.i, %.critedge182.thread186.i, %bb.j, %bb.b, %opj_jp2_apply_cdef.exit, %bb.ay, %bb.a
end_hunk_0
