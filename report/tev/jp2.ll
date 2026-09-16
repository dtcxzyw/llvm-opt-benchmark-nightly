Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jp2?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@opj_jp2_apply_color_postprocessing:bb.a
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
  %i.kj = trunc i64 %indvars.iv88.i to i16
  %i.kk = sub i16 %i.ki, %i.kj                    ; 2 uses
  %i.kl = getelementptr inbounds nuw [6 x i8], ptr %i.kc, i64 %indvars.iv88.i ; 5 uses
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !38 ; 8 uses
  %i.kn = zext i16 %i.km to i32                   ; 2 uses
  %i.ko = load i32, ptr %i.kf, align 8, !tbaa !32 ; 4 uses
  %.not74.i = icmp ugt i32 %i.ko, %i.kn
  br i1 %.not74.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kp = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %i.kn, i32 noundef %i.ko) #6 ; 0 uses
  br label %bb.bm

bb.bc:                                            ; preds = %bb.ba
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !40 ; 2 uses
  %i.ks = add i16 %i.kr, 1
  %or.cond.i42 = icmp ult i16 %i.ks, 2
  br i1 %or.cond.i42, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !58
  %i.kv = load ptr, ptr %i.kg, align 8, !tbaa !50
  %i.kw = zext i16 %i.km to i64
  %i.kx = getelementptr inbounds nuw [64 x i8], ptr %i.kv, i64 %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 56
  store i16 %i.ku, ptr %i.ky, align 8, !tbaa !59
  br label %bb.bm

bb.be:                                            ; preds = %bb.bc
  %i.kz = add i16 %i.kr, -1                       ; 6 uses
  %i.la = zext i16 %i.kz to i32                   ; 2 uses
  %.not75.i = icmp ugt i32 %i.ko, %i.la
  br i1 %.not75.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lb = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %2, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %i.la, i32 noundef %i.ko) #6 ; 0 uses
  br label %bb.bm

bb.bg:                                            ; preds = %bb.be
  %.not76.i = icmp eq i16 %i.km, %i.kz
  br i1 %.not76.i, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !58
  %i.le = icmp eq i16 %i.ld, 0
  br i1 %i.le, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.lf = load ptr, ptr %i.kg, align 8, !tbaa !50 ; 2 uses
  %i.lg = zext i16 %i.km to i64
  %i.lh = getelementptr inbounds nuw [64 x i8], ptr %i.lf, i64 %i.lg ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.lh, i64 64, i1 false)
  %i.li = zext i16 %i.kz to i64                   ; 2 uses
  %i.lj = getelementptr inbounds nuw [64 x i8], ptr %i.lf, i64 %i.li
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lh, ptr noundef nonnull align 8 dereferenceable(64) %i.lj, i64 64, i1 false)
  %i.lk = load ptr, ptr %i.kg, align 8, !tbaa !50
  %i.ll = getelementptr inbounds nuw [64 x i8], ptr %i.lk, i64 %i.li
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ll, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  %i.lm = add nuw nsw i64 %indvars.iv88.i, 1
  %i.ln = icmp samesign ult i64 %i.lm, %i.kh
  br i1 %i.ln, label %.lr.ph.i44.preheader, label %._crit_edge.i43

.lr.ph.i44.preheader:                             ; preds = %bb.bi
  %min.iters.check153 = icmp ult i16 %i.kk, 8
  br i1 %min.iters.check153, label %.lr.ph.i44.preheader177, label %vector.ph154

vector.ph154:                                     ; preds = %.lr.ph.i44.preheader
  %i.lo = zext i16 %i.kk to i64
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %i.lq = and i64 %i.lp, 7                        ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 0
  %i.ls = select i1 %i.lr, i64 8, i64 %i.lq
  %n.vec155 = sub nsw i64 %i.lp, %i.ls            ; 2 uses
  %4 = add i64 %indvars.iv.i38, %n.vec155
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.km, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert156 = insertelement <8 x i16> poison, i16 %i.kz, i64 0
  %broadcast.splat157 = shufflevector <8 x i16> %broadcast.splatinsert156, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body158

vector.body158:                                   ; preds = %pred.store.continue173, %vector.ph154
  %index159 = phi i64 [ 0, %vector.ph154 ], [ %index.next174, %pred.store.continue173 ] ; 2 uses
  %i.lt = add nuw i64 %indvars.iv.i38, %index159  ; 8 uses
  %i.lu = getelementptr inbounds nuw [6 x i8], ptr %i.kc, i64 %i.lt ; 2 uses
  %i.lv = getelementptr [6 x i8], ptr %i.kc, i64 %i.lt
  %i.lw = getelementptr i8, ptr %i.lv, i64 6      ; 2 uses
  %i.lx = getelementptr [6 x i8], ptr %i.kc, i64 %i.lt
  %i.ly = getelementptr i8, ptr %i.lx, i64 12     ; 2 uses
  %i.lz = getelementptr [6 x i8], ptr %i.kc, i64 %i.lt
  %i.ma = getelementptr i8, ptr %i.lz, i64 18     ; 2 uses
  %i.mb = getelementptr [6 x i8], ptr %i.kc, i64 %i.lt
  %i.mc = getelementptr i8, ptr %i.mb, i64 24     ; 2 uses
  %i.md = getelementptr [6 x i8], ptr %i.kc, i64 %i.lt
  %i.me = getelementptr i8, ptr %i.md, i64 30     ; 2 uses
  %i.mf = getelementptr [6 x i8], ptr %i.kc, i64 %i.lt
  %i.mg = getelementptr i8, ptr %i.mf, i64 36     ; 2 uses
  %i.mh = getelementptr [6 x i8], ptr %i.kc, i64 %i.lt
  %i.mi = getelementptr i8, ptr %i.mh, i64 42     ; 2 uses
  %i.mj = load i16, ptr %i.lu, align 2, !tbaa !38
  %i.mk = load i16, ptr %i.lw, align 2, !tbaa !38
  %i.ml = load i16, ptr %i.ly, align 2, !tbaa !38
  %i.mm = load i16, ptr %i.ma, align 2, !tbaa !38
  %i.mn = load i16, ptr %i.mc, align 2, !tbaa !38
  %i.mo = load i16, ptr %i.me, align 2, !tbaa !38
  %i.mp = load i16, ptr %i.mg, align 2, !tbaa !38
  %i.mq = load i16, ptr %i.mi, align 2, !tbaa !38
  %i.mr = insertelement <8 x i16> poison, i16 %i.mj, i64 0
  %i.ms = insertelement <8 x i16> %i.mr, i16 %i.mk, i64 1
  %i.mt = insertelement <8 x i16> %i.ms, i16 %i.ml, i64 2
  %i.mu = insertelement <8 x i16> %i.mt, i16 %i.mm, i64 3
  %i.mv = insertelement <8 x i16> %i.mu, i16 %i.mn, i64 4
  %i.mw = insertelement <8 x i16> %i.mv, i16 %i.mo, i64 5
  %i.mx = insertelement <8 x i16> %i.mw, i16 %i.mp, i64 6
  %i.my = insertelement <8 x i16> %i.mx, i16 %i.mq, i64 7 ; 2 uses
  %i.mz = icmp eq <8 x i16> %i.my, %broadcast.splat ; 2 uses
  %i.na = icmp eq <8 x i16> %i.my, %broadcast.splat157
  %i.nb = or <8 x i1> %i.na, %i.mz                ; 8 uses
  %predphi = select <8 x i1> %i.mz, <8 x i16> %broadcast.splat157, <8 x i16> %broadcast.splat ; 8 uses
  %i.nc = extractelement <8 x i1> %i.nb, i64 0
  br i1 %i.nc, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body158
  %i.nd = extractelement <8 x i16> %predphi, i64 0
  store i16 %i.nd, ptr %i.lu, align 2, !tbaa !38
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body158
  %i.ne = extractelement <8 x i1> %i.nb, i64 1
  br i1 %i.ne, label %pred.store.if160, label %pred.store.continue161

pred.store.if160:                                 ; preds = %pred.store.continue
  %i.nf = extractelement <8 x i16> %predphi, i64 1
  store i16 %i.nf, ptr %i.lw, align 2, !tbaa !38
  br label %pred.store.continue161

pred.store.continue161:                           ; preds = %pred.store.if160, %pred.store.continue
  %i.ng = extractelement <8 x i1> %i.nb, i64 2
  br i1 %i.ng, label %pred.store.if162, label %pred.store.continue163

pred.store.if162:                                 ; preds = %pred.store.continue161
  %i.nh = extractelement <8 x i16> %predphi, i64 2
  store i16 %i.nh, ptr %i.ly, align 2, !tbaa !38
  br label %pred.store.continue163

pred.store.continue163:                           ; preds = %pred.store.if162, %pred.store.continue161
  %i.ni = extractelement <8 x i1> %i.nb, i64 3
  br i1 %i.ni, label %pred.store.if164, label %pred.store.continue165

pred.store.if164:                                 ; preds = %pred.store.continue163
  %i.nj = extractelement <8 x i16> %predphi, i64 3
  store i16 %i.nj, ptr %i.ma, align 2, !tbaa !38
  br label %pred.store.continue165

pred.store.continue165:                           ; preds = %pred.store.if164, %pred.store.continue163
  %i.nk = extractelement <8 x i1> %i.nb, i64 4
  br i1 %i.nk, label %pred.store.if166, label %pred.store.continue167

pred.store.if166:                                 ; preds = %pred.store.continue165
  %i.nl = extractelement <8 x i16> %predphi, i64 4
  store i16 %i.nl, ptr %i.mc, align 2, !tbaa !38
  br label %pred.store.continue167

pred.store.continue167:                           ; preds = %pred.store.if166, %pred.store.continue165
  %i.nm = extractelement <8 x i1> %i.nb, i64 5
  br i1 %i.nm, label %pred.store.if168, label %pred.store.continue169

pred.store.if168:                                 ; preds = %pred.store.continue167
  %i.nn = extractelement <8 x i16> %predphi, i64 5
  store i16 %i.nn, ptr %i.me, align 2, !tbaa !38
  br label %pred.store.continue169

pred.store.continue169:                           ; preds = %pred.store.if168, %pred.store.continue167
  %i.no = extractelement <8 x i1> %i.nb, i64 6
  br i1 %i.no, label %pred.store.if170, label %pred.store.continue171

pred.store.if170:                                 ; preds = %pred.store.continue169
  %i.np = extractelement <8 x i16> %predphi, i64 6
  store i16 %i.np, ptr %i.mg, align 2, !tbaa !38
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.if170, %pred.store.continue169
  %i.nq = extractelement <8 x i1> %i.nb, i64 7
  br i1 %i.nq, label %pred.store.if172, label %pred.store.continue173

pred.store.if172:                                 ; preds = %pred.store.continue171
  %i.nr = extractelement <8 x i16> %predphi, i64 7
  store i16 %i.nr, ptr %i.mi, align 2, !tbaa !38
  br label %pred.store.continue173

pred.store.continue173:                           ; preds = %pred.store.if172, %pred.store.continue171
  %index.next174 = add nuw i64 %index159, 8       ; 2 uses
  %i.ns = icmp eq i64 %index.next174, %n.vec155
  br i1 %i.ns, label %.lr.ph.i44.preheader177, label %vector.body158, !llvm.loop !113

.lr.ph.i44.preheader177:                          ; preds = %pred.store.continue173, %.lr.ph.i44.preheader
  %indvars.iv85.i.ph = phi i64 [ %indvars.iv.i38, %.lr.ph.i44.preheader ], [ %4, %pred.store.continue173 ]
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader177, %bb.bk
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %bb.bk ], [ %indvars.iv85.i.ph, %.lr.ph.i44.preheader177 ] ; 2 uses
  %i.nt = getelementptr inbounds nuw [6 x i8], ptr %i.kc, i64 %indvars.iv85.i ; 2 uses
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !38 ; 2 uses
  %i.nv = icmp eq i16 %i.nu, %i.km
  br i1 %i.nv, label %.sink.split.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i44
  %i.nw = icmp eq i16 %i.nu, %i.kz
  br i1 %i.nw, label %.sink.split.i, label %bb.bk

.sink.split.i:                                    ; preds = %bb.bj, %.lr.ph.i44
  %.sink.i = phi i16 [ %i.kz, %.lr.ph.i44 ], [ %i.km, %bb.bj ]
  store i16 %.sink.i, ptr %i.nt, align 2, !tbaa !38
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
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.ny = load i16, ptr %i.nx, align 2, !tbaa !58
  %i.nz = load ptr, ptr %i.kg, align 8, !tbaa !50
  %i.oa = zext i16 %i.km to i64
  %i.ob = getelementptr inbounds nuw [64 x i8], ptr %i.nz, i64 %i.oa
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 56
  store i16 %i.ny, ptr %i.oc, align 8, !tbaa !59
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
  %i.od = phi ptr [ %.pre93.i, %._crit_edge83.loopexit.i ], [ %i.kc, %bb.az ] ; 2 uses
  %i.oe = phi ptr [ %.pre.i40, %._crit_edge83.loopexit.i ], [ %i.kb, %bb.az ]
  %.not.i41 = icmp eq ptr %i.od, null
  br i1 %.not.i41, label %opj_jp2_apply_cdef.exit, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge83.i
  tail call void @opj_free(ptr noundef nonnull %i.od) #6
  %.pre94.i = load ptr, ptr %i.f, align 8, !tbaa !116
  br label %opj_jp2_apply_cdef.exit

opj_jp2_apply_cdef.exit:                          ; preds = %._crit_edge83.i, %bb.bn
  %i.of = phi ptr [ %.pre94.i, %bb.bn ], [ %i.oe, %._crit_edge83.i ]
  tail call void @opj_free(ptr noundef %i.of) #6
  store ptr null, ptr %i.f, align 8, !tbaa !116
  br label %opj_jp2_check_color.exit.thread

opj_jp2_check_color.exit.thread:                  ; preds = %bb.ap, %._crit_edge156.i, %._crit_edge, %bb.l, %.split.us.i, %.critedge184.i, %.critedge182.thread186.i, %bb.j, %bb.b, %opj_jp2_apply_cdef.exit, %bb.ay, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.l ], [ 1, %bb.b ], [ 1, %bb.ay ], [ 1, %opj_jp2_apply_cdef.exit ], [ 0, %bb.j ], [ 0, %.critedge182.thread186.i ], [ 0, %.critedge184.i ], [ 0, %.split.us.i ], [ 0, %._crit_edge ], [ 0, %._crit_edge156.i ], [ 0, %bb.ap ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @opj_jp2_setup_decoder(ptr nofree noundef captures(none) initializes((160, 161), (168, 172)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  tail call void @opj_j2k_setup_decoder(ptr noundef %i.a, ptr noundef %1) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.b, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8248
  %i.d = load i32, ptr %i.c, align 4, !tbaa !123
  %i.e = and i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.e, ptr %i.f, align 8, !tbaa !24
  ret void
}

declare void @opj_j2k_setup_decoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @opj_jp2_decoder_set_strict_mode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  tail call void @opj_j2k_decoder_set_strict_mode(ptr noundef %i.a, i32 noundef %1) #6
  ret void
}

declare void @opj_j2k_decoder_set_strict_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @opj_jp2_set_threads(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = tail call i32 @opj_j2k_set_threads(ptr noundef %i.a, i32 noundef %1) #6
  ret i32 %i.b
}

declare i32 @opj_j2k_set_threads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @opj_jp2_setup_encoder(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32
  %i.f = add i32 %i.e, -16385
  %or.cond170 = icmp ult i32 %i.f, -16384
  br i1 %or.cond170, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.1) #6 ; 0 uses
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !22
  %i.i = tail call i32 @opj_j2k_setup_encoder(ptr noundef %i.h, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3) #6
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.af, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 1785737760, ptr %i.k, align 4, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.l, align 8, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 1, ptr %i.m, align 4, !tbaa !63
  %i.n = tail call ptr @opj_malloc(i64 noundef 4) #6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.n, ptr %i.o, align 8, !tbaa !64
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  store i32 1785737760, ptr %i.n, align 4, !tbaa !45
  %i.q = load i32, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.q, ptr %i.r, align 8, !tbaa !65
  %i.s = zext i32 %i.q to i64
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call ptr @opj_malloc(i64 noundef %i.t) #6 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.u, ptr %i.v, align 8, !tbaa !66
  %.not160 = icmp eq ptr %i.u, null
  br i1 %.not160, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = tail call i32 (ptr, i32, ptr, ...) @opj_event_msg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.2) #6 ; 0 uses
  br label %bb.af

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load <2 x i32>, ptr %i.x, align 8, !tbaa !45
  %i.aa = load <2 x i32>, ptr %2, align 8, !tbaa !45
  %i.ab = sub <2 x i32> %i.z, %i.aa
  store <2 x i32> %i.ab, ptr %i.y, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !52 ; 4 uses
  %i.ag = add i32 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !53
  %i.aj = shl i32 %i.ai, 7
  %i.ak = add i32 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !67
  %i.am = load i32, ptr %i.d, align 8, !tbaa !32  ; 7 uses
  %i.an = icmp ugt i32 %i.am, 1
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext i32 %i.am to i64
  %i.ao = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.ao, 1
  %i.ap = icmp eq i32 %i.am, 2
  br i1 %i.ap, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ao, -2
end_hunk_0
