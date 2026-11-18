Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio?download=true
inline.NumInlined: 27
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@dt_imageio_export_with_flags:bb.a
  br i1 %.not442, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hy = icmp slt i32 %i.hp, 1
  %i.hz = icmp slt i32 %i.ht, 1
  %i.ia = select i1 %i.hy, i1 true, i1 %i.hz
  %i.ib = select i1 %i.ia, ptr @.str.36, ptr @.str.25
  %i.ic = select i1 %i.h, ptr @.str.37, ptr @.str.38
  %i.id = load i32, ptr %i.en, align 4, !tbaa !279
  %i.ie = load i32, ptr %i.eo, align 16, !tbaa !280
  %i.if = select i1 %.not440, ptr @.str.8, ptr @.str.7
  %i.ig = icmp ne i32 %6, 0
  %i.ih = fcmp reassoc nsz arcp contract afn ogt double %.0387, 1.000000e+00
  %i.ii = or i1 %i.ig, %i.ih
  %i.ij = select i1 %i.ii, ptr @.str.7, ptr @.str.8
  %i.ik = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3608), align 8, !tbaa !281 ; 2 uses
  %.not.i474 = icmp eq ptr %i.ik, null
  br i1 %.not.i474, label %dt_check_gimpmode.exit.thread, label %dt_check_gimpmode.exit

dt_check_gimpmode.exit:                           ; preds = %bb.bl
  %i.il = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ik, ptr noundef nonnull dereferenceable(5) @.str.39) #18
  %.fr = freeze i32 %i.il
  %.not497 = icmp eq i32 %.fr, 0
  br i1 %.not497, label %bb.bm, label %dt_check_gimpmode.exit.thread

dt_check_gimpmode.exit.thread:                    ; preds = %bb.bl, %dt_check_gimpmode.exit
  br label %bb.bm

bb.bm:                                            ; preds = %dt_check_gimpmode.exit, %dt_check_gimpmode.exit.thread
  %i.im = phi ptr [ @.str.25, %dt_check_gimpmode.exit.thread ], [ @.str.40, %dt_check_gimpmode.exit ]
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.35, ptr noundef nonnull %i.ib, ptr noundef nonnull %i.ic, i32 noundef %0, i32 noundef %i.id, i32 noundef %i.ie, i32 noundef %i.hp, i32 noundef %i.ht, double noundef %.0387, double noundef %i.gg, ptr noundef nonnull %i.if, ptr noundef nonnull %i.ij, ptr noundef nonnull %i.im) #17
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !89
  %i.ip = call i32 %i.io(ptr noundef nonnull %3) #17 ; 2 uses
  %i.iq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !63
  %i.ir = and i32 %i.iq, 16
  %.not.i475 = icmp eq i32 %i.ir, 0
  br i1 %.not.i475, label %dt_get_perf_times.exit476, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #17
  %i.is = call i32 @gettimeofday(ptr noundef nonnull %24, ptr noundef null) #17 ; 0 uses
  %i.it = load i64, ptr %24, align 8, !tbaa !206
  %i.iu = add nsw i64 %i.it, -1290608000
  %i.iv = sitofp reassoc nsz arcp contract afn i64 %i.iu to double
  %i.iw = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !207
  %i.iy = sitofp reassoc nsz arcp contract afn i64 %i.ix to double
  %i.iz = fmul reassoc nnan nsz arcp contract afn double %i.iy, f0x3EB0C6F7A0B5ED8D
  %i.ja = fadd reassoc nsz arcp contract afn double %i.iz, %i.iv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #17
  store double %i.ja, ptr %29, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  %i.jb = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %23) #17 ; 0 uses
  %i.jc = load i64, ptr %23, align 8, !tbaa !211
  %i.jd = sitofp reassoc nsz arcp contract afn i64 %i.jc to double
  %i.je = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !212
  %i.jg = sitofp reassoc nsz arcp contract afn i64 %i.jf to double
  %i.jh = fmul reassoc nnan nsz arcp contract afn double %i.jg, f0x3EB0C6F7A0B5ED8D
  %i.ji = fadd reassoc nsz arcp contract afn double %i.jh, %i.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  %i.jj = getelementptr inbounds nuw i8, ptr %29, i64 8
  store double %i.ji, ptr %i.jj, align 8, !tbaa !213
  br label %dt_get_perf_times.exit476

dt_get_perf_times.exit476:                        ; preds = %bb.bn, %bb.bo
  %i.jk = icmp ne i32 %6, 0
  %i.jl = fcmp reassoc nsz arcp contract afn ogt double %.0387, 1.000000e+00
  %i.jm = or i1 %i.jk, %i.jl                      ; 3 uses
  br i1 %i.jm, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %dt_get_perf_times.exit476
  %i.jn = fptrunc reassoc nsz arcp contract afn double %.0387 to float
  %i.jo = call i32 @dt_dev_pixelpipe_process_no_gamma(ptr noundef nonnull %30, ptr noundef nonnull %27, i32 noundef 0, i32 noundef 0, i32 noundef %i.hp, i32 noundef %i.ht, float noundef %i.jn) #17 ; 0 uses
  br label %bb.bw

bb.bq:                                            ; preds = %dt_get_perf_times.exit476
  %i.jp = getelementptr inbounds nuw i8, ptr %30, i64 336
  %i.jq = load ptr, ptr %i.jp, align 16, !tbaa !265
  %i.jr = call ptr @g_list_last(ptr noundef %i.jq) #17 ; 2 uses
  %.not444515 = icmp eq ptr %i.jr, null
  br i1 %.not444515, label %._crit_edge519.thread, label %.lr.ph518

.lr.ph518:                                        ; preds = %bb.bq, %bb.br
  %.0383516 = phi ptr [ %i.jy, %bb.br ], [ %i.jr, %bb.bq ] ; 2 uses
  %i.js = load ptr, ptr %.0383516, align 8, !tbaa !236 ; 3 uses
  %i.jt = load ptr, ptr %i.js, align 16, !tbaa !271
  %i.ju = getelementptr i8, ptr %i.jt, i64 952
  %.val471 = load ptr, ptr %i.ju, align 8, !tbaa !275
  %i.jv = getelementptr inbounds nuw i8, ptr %.val471, i64 496
  %i.jw = call i32 @g_strcmp0(ptr noundef nonnull %i.jv, ptr noundef nonnull @.str.141) #17
  %.not.i.i.not = icmp eq i32 %i.jw, 0
  br i1 %.not.i.i.not, label %._crit_edge519, label %bb.br

bb.br:                                            ; preds = %.lr.ph518
  %i.jx = getelementptr inbounds nuw i8, ptr %.0383516, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !282 ; 2 uses
  %.not444 = icmp eq ptr %i.jy, null
  br i1 %.not444, label %._crit_edge519.thread, label %.lr.ph518

._crit_edge519:                                   ; preds = %.lr.ph518
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  store i32 0, ptr %i.jz, align 16, !tbaa !270
  br label %._crit_edge519.thread

._crit_edge519.thread:                            ; preds = %bb.br, %bb.bq, %._crit_edge519
  %.not446587 = phi i1 [ false, %._crit_edge519 ], [ true, %bb.bq ], [ true, %bb.br ]
  %.2586 = phi ptr [ %i.js, %._crit_edge519 ], [ null, %bb.bq ], [ null, %bb.br ]
  %i.ka = icmp eq i32 %i.ip, 8
  %i.kb = fptrunc reassoc nsz arcp contract afn double %.0387 to float ; 2 uses
  br i1 %i.ka, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %._crit_edge519.thread
  %i.kc = call i32 @dt_dev_pixelpipe_process(ptr noundef nonnull %30, ptr noundef nonnull %27, i32 noundef 0, i32 noundef 0, i32 noundef %i.hp, i32 noundef %i.ht, float noundef %i.kb, i32 noundef -2) #17 ; 0 uses
  br label %bb.bu

bb.bt:                                            ; preds = %._crit_edge519.thread
  %i.kd = call i32 @dt_dev_pixelpipe_process_no_gamma(ptr noundef nonnull %30, ptr noundef nonnull %27, i32 noundef 0, i32 noundef 0, i32 noundef %i.hp, i32 noundef %i.ht, float noundef %i.kb) #17 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  br i1 %.not446587, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ke = getelementptr inbounds nuw i8, ptr %.2586, i64 32
  store i32 1, ptr %i.ke, align 16, !tbaa !270
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv, %bb.bp
  %i.kf = select i1 %i.h, ptr @.str.41, ptr @.str.42
  call void @dt_show_times(ptr noundef nonnull %29, ptr noundef nonnull %i.kf) #17
  %i.kg = getelementptr inbounds nuw i8, ptr %30, i64 360
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !283 ; 129 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.kj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !63
  %i.kk = and i32 %i.kj, 262144
  %.not461 = icmp eq i32 %i.kk, 0
  br i1 %.not461, label %.thread486, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.43) #17
  br label %.thread486

bb.bz:                                            ; preds = %bb.bw
  switch i32 %i.ip, label %.loopexit [
    i32 8, label %bb.ca
    i32 16, label %.preheader503
  ]

.preheader503:                                    ; preds = %bb.bz
  %i.kl = icmp sgt i32 %i.ht, 0
  br i1 %i.kl, label %.preheader502.lr.ph, label %.loopexit

.preheader502.lr.ph:                              ; preds = %.preheader503
  %i.km = icmp sgt i32 %i.hp, 0
  %i.kn = zext i32 %i.hp to i64                   ; 4 uses
  br i1 %i.km, label %.preheader502.preheader, label %.loopexit

.preheader502.preheader:                          ; preds = %.preheader502.lr.ph
  %wide.trip.count545 = zext nneg i32 %i.ht to i64
  %min.iters.check = icmp ult i32 %i.hp, 9
  %i.ko = and i64 %i.kn, 7                        ; 2 uses
  %i.kp = icmp eq i64 %i.ko, 0
  %i.kq = select i1 %i.kp, i64 8, i64 %i.ko
  %n.vec = sub nsw i64 %i.kn, %i.kq               ; 2 uses
  br label %.preheader502

bb.ca:                                            ; preds = %bb.bz
  %.not447 = icmp eq i32 %5, 0
  br i1 %.not447, label %bb.cl, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.jm, label %.preheader500, label %.loopexit

.preheader500:                                    ; preds = %bb.cb
  %i.kr = sext i32 %i.hp to i64                   ; 2 uses
  %i.ks = sext i32 %i.ht to i64                   ; 2 uses
  %i.kt = mul nsw i64 %i.ks, %i.kr                ; 5 uses
  %.not533 = icmp eq i64 %i.kt, 0
  br i1 %.not533, label %.loopexit, label %.lr.ph528.preheader

.lr.ph528.preheader:                              ; preds = %.preheader500
  %min.iters.check663 = icmp ult i64 %i.kt, 33
  br i1 %min.iters.check663, label %.lr.ph528.preheader867, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph528.preheader
  %i.ku = mul nsw i64 %i.ks, %i.kr                ; 2 uses
  %i.kv = shl i64 %i.ku, 2                        ; 3 uses
  %i.kw = getelementptr i8, ptr %i.kh, i64 %i.kv
  %i.kx = getelementptr i8, ptr %i.kw, i64 -3     ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kh, i64 1      ; 2 uses
  %i.kz = getelementptr i8, ptr %i.kh, i64 %i.kv
  %i.la = getelementptr i8, ptr %i.kz, i64 -2     ; 2 uses
  %bound1 = icmp ult ptr %i.ky, %i.kx
  %i.lb = getelementptr i8, ptr %i.kh, i64 %i.kv  ; 2 uses
  %i.lc = shl i64 %i.ku, 4                        ; 3 uses
  %i.ld = getelementptr i8, ptr %i.kh, i64 %i.lc
  %i.le = getelementptr i8, ptr %i.kh, i64 %i.lc
  %i.lf = getelementptr i8, ptr %i.kh, i64 %i.lc  ; 2 uses
  %i.lg = insertelement <4 x ptr> poison, ptr %i.kh, i64 0
  %i.lh = shufflevector <4 x ptr> %i.lg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.li = getelementptr i8, ptr %i.kh, <4 x i64> <i64 2, i64 8, i64 4, i64 0>
  %i.lj = insertelement <4 x ptr> poison, ptr %i.kx, i64 0
  %i.lk = shufflevector <4 x ptr> %i.lj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ll = icmp ult <4 x ptr> %i.li, %i.lk
  %i.lm = getelementptr i8, ptr %i.kh, <4 x i64> <i64 2, i64 8, i64 4, i64 0> ; 3 uses
  %i.ln = getelementptr i8, ptr %i.kh, i64 2
  %bound0 = icmp ult ptr %i.kh, %i.la
  %i.lo = insertelement <4 x ptr> poison, ptr %i.la, i64 0
  %i.lp = shufflevector <4 x ptr> %i.lo, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lq = icmp ult <4 x ptr> %i.lm, %i.lp
  %found.conflict = and i1 %bound0, %bound1
  %i.lr = getelementptr i8, ptr %i.lf, i64 -12
  %i.ls = insertelement <4 x ptr> poison, ptr %i.lb, i64 0
  %i.lt = insertelement <4 x ptr> %i.ls, ptr %i.ld, i64 1
  %i.lu = insertelement <4 x ptr> %i.lt, ptr %i.le, i64 2
  %i.lv = insertelement <4 x ptr> %i.lu, ptr %i.lf, i64 3
  %i.lw = getelementptr i8, <4 x ptr> %i.lv, <4 x i64> <i64 -1, i64 -4, i64 -8, i64 -12> ; 4 uses
  %i.lx = getelementptr i8, ptr %i.lb, i64 -1
  %i.ly = icmp ult <4 x ptr> %i.lh, %i.lw
  %bound0664 = icmp ult ptr %i.kh, %i.lx
  %i.lz = and <4 x i1> %i.ly, %i.ll
  %i.ma = insertelement <4 x ptr> poison, ptr %i.ky, i64 0
  %i.mb = shufflevector <4 x ptr> %i.ma, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.mc = icmp ult <4 x ptr> %i.mb, %i.lw
  %i.md = shufflevector <4 x ptr> %i.lm, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.me = shufflevector <4 x ptr> %i.lw, <4 x ptr> poison, <2 x i32> <i32 1, i32 2>
  %i.mf = icmp ult <2 x ptr> %i.md, %i.me
  %i.mg = shufflevector <4 x ptr> %i.lm, <4 x ptr> poison, <2 x i32> <i32 1, i32 2>
  %i.mh = shufflevector <4 x ptr> %i.lw, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.mi = icmp ult <2 x ptr> %i.mg, %i.mh
  %bound0702 = icmp ult ptr %i.ln, %i.lr
  %i.mj = bitcast <4 x i1> %i.lz to i4
  %i.mk = icmp ne i4 %i.mj, 0
  %i.ml = insertelement <8 x i1> poison, i1 %bound0702, i64 6
  %i.mm = insertelement <8 x i1> %i.ml, i1 %i.mk, i64 7
  %i.mn = shufflevector <4 x i1> %i.mc, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mo = shufflevector <8 x i1> %i.mn, <8 x i1> %i.mm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.mp = shufflevector <2 x i1> %i.mf, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mq = shufflevector <8 x i1> %i.mo, <8 x i1> %i.mp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.mr = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound0664, i64 6
  %i.ms = shufflevector <4 x i1> %i.lq, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mt = shufflevector <8 x i1> %i.ms, <8 x i1> %i.mr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.mu = shufflevector <2 x i1> %i.mi, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mv = shufflevector <8 x i1> %i.mt, <8 x i1> %i.mu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.mw = and <8 x i1> %i.mq, %i.mv
  %i.mx = bitcast <8 x i1> %i.mw to i8
  %i.my = icmp ne i8 %i.mx, 0
  %op.rdx863 = or i1 %i.my, %found.conflict
  br i1 %op.rdx863, label %.lr.ph528.preheader867, label %vector.ph705

vector.ph705:                                     ; preds = %vector.memcheck
  %i.mz = and i64 %i.kt, 7                        ; 2 uses
  %i.na = icmp eq i64 %i.mz, 0
  %i.nb = select i1 %i.na, i64 8, i64 %i.mz
  %n.vec706 = sub i64 %i.kt, %i.nb                ; 2 uses
  br label %vector.body707

vector.body707:                                   ; preds = %vector.body707, %vector.ph705
  %index708 = phi i64 [ 0, %vector.ph705 ], [ %index.next720, %vector.body707 ]
  %vec.ind709 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph705 ], [ %vec.ind.next721, %vector.body707 ] ; 2 uses
  %i.nc = shl <8 x i64> %vec.ind709, splat (i64 2) ; 10 uses
  %i.nd = or disjoint <8 x i64> %i.nc, splat (i64 2) ; 8 uses
  %i.ne = extractelement <8 x i64> %i.nd, i64 0   ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.ne
  %i.ng = getelementptr inbounds i8, ptr %i.nf, i64 -8
  %wide.vec710 = load <32 x float>, ptr %i.ng, align 4, !tbaa !66 ; 3 uses
  %strided.vec711 = shufflevector <32 x float> %wide.vec710, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec712 = shufflevector <32 x float> %wide.vec710, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec713 = shufflevector <32 x float> %wide.vec710, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.nh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec713, splat (float 2.550000e+02) ; 3 uses
  %i.ni = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.nh, splat (float 2.550000e+02)
  %i.nj = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nh, zeroinitializer
  %i.nk = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.nh)
  %i.nl = fptoui <8 x float> %i.nk to <8 x i8>
  %predphi714 = select <8 x i1> %i.nj, <8 x i8> zeroinitializer, <8 x i8> %i.nl
  %predphi715 = select <8 x i1> %i.ni, <8 x i8> %predphi714, <8 x i8> splat (i8 -1) ; 8 uses
  %i.nm = or disjoint <8 x i64> %i.nc, splat (i64 1) ; 8 uses
  %i.nn = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec712, splat (float 2.550000e+02) ; 3 uses
  %i.no = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.nn, splat (float 2.550000e+02)
  %i.np = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nn, zeroinitializer
  %i.nq = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.nn)
  %i.nr = fptoui <8 x float> %i.nq to <8 x i8>
  %predphi716 = select <8 x i1> %i.np, <8 x i8> zeroinitializer, <8 x i8> %i.nr
  %predphi717 = select <8 x i1> %i.no, <8 x i8> %predphi716, <8 x i8> splat (i8 -1) ; 8 uses
  %i.ns = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec711, splat (float 2.550000e+02) ; 3 uses
  %i.nt = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ns, splat (float 2.550000e+02)
  %i.nu = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ns, zeroinitializer
  %i.nv = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.ns)
  %i.nw = fptoui <8 x float> %i.nv to <8 x i8>
  %predphi718 = select <8 x i1> %i.nu, <8 x i8> zeroinitializer, <8 x i8> %i.nw
  %predphi719 = select <8 x i1> %i.nt, <8 x i8> %predphi718, <8 x i8> splat (i8 -1) ; 8 uses
  %i.nx = extractelement <8 x i64> %i.nc, i64 0
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.nx
  %i.nz = extractelement <8 x i64> %i.nc, i64 1
  %i.oa = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.nz
  %i.ob = extractelement <8 x i64> %i.nc, i64 2
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ob
  %i.od = extractelement <8 x i64> %i.nc, i64 3
  %i.oe = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.od
  %i.of = extractelement <8 x i64> %i.nc, i64 4
  %i.og = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.of
  %i.oh = extractelement <8 x i64> %i.nc, i64 5
  %i.oi = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.oh
  %i.oj = extractelement <8 x i64> %i.nc, i64 6
  %i.ok = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.oj
  %i.ol = extractelement <8 x i64> %i.nc, i64 7
  %i.om = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ol
  %i.on = extractelement <8 x i8> %predphi715, i64 0
  store i8 %i.on, ptr %i.ny, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.oo = extractelement <8 x i8> %predphi715, i64 1
  store i8 %i.oo, ptr %i.oa, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.op = extractelement <8 x i8> %predphi715, i64 2
  store i8 %i.op, ptr %i.oc, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.oq = extractelement <8 x i8> %predphi715, i64 3
  store i8 %i.oq, ptr %i.oe, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.or = extractelement <8 x i8> %predphi715, i64 4
  store i8 %i.or, ptr %i.og, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.os = extractelement <8 x i8> %predphi715, i64 5
  store i8 %i.os, ptr %i.oi, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.ot = extractelement <8 x i8> %predphi715, i64 6
  store i8 %i.ot, ptr %i.ok, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.ou = extractelement <8 x i8> %predphi715, i64 7
  store i8 %i.ou, ptr %i.om, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.ov = extractelement <8 x i64> %i.nm, i64 0
  %i.ow = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ov
  %i.ox = extractelement <8 x i64> %i.nm, i64 1
  %i.oy = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ox
  %i.oz = extractelement <8 x i64> %i.nm, i64 2
  %i.pa = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.oz
  %i.pb = extractelement <8 x i64> %i.nm, i64 3
  %i.pc = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.pb
  %i.pd = extractelement <8 x i64> %i.nm, i64 4
  %i.pe = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.pd
  %i.pf = extractelement <8 x i64> %i.nm, i64 5
  %i.pg = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.pf
  %i.ph = extractelement <8 x i64> %i.nm, i64 6
  %i.pi = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ph
  %i.pj = extractelement <8 x i64> %i.nm, i64 7
  %i.pk = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.pj
  %i.pl = extractelement <8 x i8> %predphi717, i64 0
  store i8 %i.pl, ptr %i.ow, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.pm = extractelement <8 x i8> %predphi717, i64 1
  store i8 %i.pm, ptr %i.oy, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.pn = extractelement <8 x i8> %predphi717, i64 2
  store i8 %i.pn, ptr %i.pa, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.po = extractelement <8 x i8> %predphi717, i64 3
  store i8 %i.po, ptr %i.pc, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.pp = extractelement <8 x i8> %predphi717, i64 4
  store i8 %i.pp, ptr %i.pe, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.pq = extractelement <8 x i8> %predphi717, i64 5
  store i8 %i.pq, ptr %i.pg, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.pr = extractelement <8 x i8> %predphi717, i64 6
  store i8 %i.pr, ptr %i.pi, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.ps = extractelement <8 x i8> %predphi717, i64 7
  store i8 %i.ps, ptr %i.pk, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.pt = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ne
  %i.pu = extractelement <8 x i64> %i.nd, i64 1
  %i.pv = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.pu
  %i.pw = extractelement <8 x i64> %i.nd, i64 2
  %i.px = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.pw
  %i.py = extractelement <8 x i64> %i.nd, i64 3
  %i.pz = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.py
  %i.qa = extractelement <8 x i64> %i.nd, i64 4
  %i.qb = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.qa
  %i.qc = extractelement <8 x i64> %i.nd, i64 5
  %i.qd = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.qc
  %i.qe = extractelement <8 x i64> %i.nd, i64 6
  %i.qf = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.qe
  %i.qg = extractelement <8 x i64> %i.nd, i64 7
  %i.qh = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.qg
  %i.qi = extractelement <8 x i8> %predphi719, i64 0
  store i8 %i.qi, ptr %i.pt, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.qj = extractelement <8 x i8> %predphi719, i64 1
  store i8 %i.qj, ptr %i.pv, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.qk = extractelement <8 x i8> %predphi719, i64 2
  store i8 %i.qk, ptr %i.px, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.ql = extractelement <8 x i8> %predphi719, i64 3
  store i8 %i.ql, ptr %i.pz, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.qm = extractelement <8 x i8> %predphi719, i64 4
  store i8 %i.qm, ptr %i.qb, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.qn = extractelement <8 x i8> %predphi719, i64 5
  store i8 %i.qn, ptr %i.qd, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.qo = extractelement <8 x i8> %predphi719, i64 6
  store i8 %i.qo, ptr %i.qf, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.qp = extractelement <8 x i8> %predphi719, i64 7
  store i8 %i.qp, ptr %i.qh, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %index.next720 = add nuw i64 %index708, 8       ; 2 uses
  %vec.ind.next721 = add nuw <8 x i64> %vec.ind709, splat (i64 8)
  %i.qq = icmp eq i64 %index.next720, %n.vec706
  br i1 %i.qq, label %.lr.ph528.preheader867, label %vector.body707, !llvm.loop !186

.lr.ph528.preheader867:                           ; preds = %vector.body707, %vector.memcheck, %.lr.ph528.preheader
  %.0381527.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph528.preheader ], [ %n.vec706, %vector.body707 ]
  br label %.lr.ph528

.lr.ph528:                                        ; preds = %.lr.ph528.preheader867, %bb.ck
  %.0381527 = phi i64 [ %i.rv, %bb.ck ], [ %.0381527.ph, %.lr.ph528.preheader867 ] ; 2 uses
  %i.qr = shl i64 %.0381527, 2                    ; 4 uses
  %i.qs = or disjoint i64 %i.qr, 2                ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.qs
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !66
  %i.qv = fmul reassoc nsz arcp contract afn float %i.qu, 2.550000e+02 ; 3 uses
  %i.qw = fcmp reassoc nsz arcp contract afn ogt float %i.qv, 2.550000e+02
  br i1 %i.qw, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph528
  %i.qx = fcmp reassoc nsz arcp contract afn olt float %i.qv, 0.000000e+00
  br i1 %i.qx, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qy = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.qv)
  %i.qz = fptoui float %i.qy to i8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %.lr.ph528
  %i.ra = phi i8 [ -1, %.lr.ph528 ], [ %i.qz, %bb.cd ], [ 0, %bb.cc ]
  %i.rb = or disjoint i64 %i.qr, 1                ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.rb
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !66
  %i.re = fmul reassoc nsz arcp contract afn float %i.rd, 2.550000e+02 ; 3 uses
  %i.rf = fcmp reassoc nsz arcp contract afn ogt float %i.re, 2.550000e+02
  br i1 %i.rf, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.rg = fcmp reassoc nsz arcp contract afn olt float %i.re, 0.000000e+00
  br i1 %i.rg, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.rh = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.re)
  %i.ri = fptoui float %i.rh to i8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.rj = phi i8 [ -1, %bb.ce ], [ %i.ri, %bb.cg ], [ 0, %bb.cf ]
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.qr
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !66
  %i.rm = fmul reassoc nsz arcp contract afn float %i.rl, 2.550000e+02 ; 3 uses
  %i.rn = fcmp reassoc nsz arcp contract afn ogt float %i.rm, 2.550000e+02
  br i1 %i.rn, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ro = fcmp reassoc nsz arcp contract afn olt float %i.rm, 0.000000e+00
  br i1 %i.ro, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rp = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.rm)
  %i.rq = fptoui float %i.rp to i8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.rr = phi i8 [ -1, %bb.ch ], [ %i.rq, %bb.cj ], [ 0, %bb.ci ]
  %i.rs = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.qr
  store i8 %i.ra, ptr %i.rs, align 1, !tbaa !21
  %i.rt = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.rb
  store i8 %i.rj, ptr %i.rt, align 1, !tbaa !21
  %i.ru = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.qs
  store i8 %i.rr, ptr %i.ru, align 1, !tbaa !21
  %i.rv = add nuw i64 %.0381527, 1                ; 2 uses
  %exitcond547.not = icmp eq i64 %i.rv, %i.kt
  br i1 %exitcond547.not, label %.loopexit, label %.lr.ph528, !llvm.loop !187

bb.cl:                                            ; preds = %bb.ca
  %i.rw = sext i32 %i.hp to i64                   ; 2 uses
  %i.rx = sext i32 %i.ht to i64                   ; 2 uses
  %i.ry = mul nsw i64 %i.rx, %i.rw                ; 8 uses
  %.not535 = icmp eq i64 %i.ry, 0                 ; 2 uses
  br i1 %i.jm, label %.preheader, label %.preheader498

.preheader498:                                    ; preds = %bb.cl
  br i1 %.not535, label %.loopexit, label %.lr.ph530.preheader

.lr.ph530.preheader:                              ; preds = %.preheader498
  %xtraiter = and i64 %i.ry, 3                    ; 3 uses
  %i.rz = icmp ult i64 %i.ry, 4
  br i1 %i.rz, label %.lr.ph530.epil.preheader, label %.lr.ph530.preheader.new

.lr.ph530.preheader.new:                          ; preds = %.lr.ph530.preheader
  %unroll_iter = and i64 %i.ry, -4
  br label %.lr.ph530

.preheader:                                       ; preds = %bb.cl
  br i1 %.not535, label %.loopexit, label %.lr.ph532.preheader

.lr.ph532.preheader:                              ; preds = %.preheader
  %min.iters.check782 = icmp ult i64 %i.ry, 33
  br i1 %min.iters.check782, label %.lr.ph532.preheader865, label %vector.memcheck783

vector.memcheck783:                               ; preds = %.lr.ph532.preheader
  %i.sa = mul nsw i64 %i.rx, %i.rw                ; 2 uses
  %i.sb = shl i64 %i.sa, 2                        ; 3 uses
  %i.sc = getelementptr i8, ptr %i.kh, i64 %i.sb
  %i.sd = getelementptr i8, ptr %i.sc, i64 -3     ; 2 uses
  %i.se = getelementptr i8, ptr %i.kh, i64 1      ; 2 uses
  %i.sf = getelementptr i8, ptr %i.kh, i64 %i.sb
  %i.sg = getelementptr i8, ptr %i.sf, i64 -2     ; 2 uses
  %bound1785 = icmp ult ptr %i.se, %i.sd
  %i.sh = getelementptr i8, ptr %i.kh, i64 %i.sb  ; 2 uses
  %i.si = shl i64 %i.sa, 4                        ; 3 uses
  %i.sj = getelementptr i8, ptr %i.kh, i64 %i.si
  %i.sk = getelementptr i8, ptr %i.kh, i64 %i.si
  %i.sl = getelementptr i8, ptr %i.kh, i64 %i.si  ; 2 uses
  %i.sm = insertelement <4 x ptr> poison, ptr %i.kh, i64 0
  %i.sn = shufflevector <4 x ptr> %i.sm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.so = getelementptr i8, ptr %i.kh, <4 x i64> <i64 2, i64 0, i64 4, i64 8>
  %i.sp = insertelement <4 x ptr> poison, ptr %i.sd, i64 0
  %i.sq = shufflevector <4 x ptr> %i.sp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.sr = icmp ult <4 x ptr> %i.so, %i.sq
  %i.ss = getelementptr i8, ptr %i.kh, i64 8
  %i.st = getelementptr i8, ptr %i.kh, <4 x i64> <i64 2, i64 0, i64 4, i64 8> ; 2 uses
  %i.su = getelementptr i8, ptr %i.kh, i64 4
  %i.sv = getelementptr i8, ptr %i.kh, i64 2
  %i.sw = insertelement <4 x ptr> poison, ptr %i.sg, i64 0
  %i.sx = shufflevector <4 x ptr> %i.sw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.sy = icmp ult <4 x ptr> %i.st, %i.sx
  %bound0784 = icmp ult ptr %i.kh, %i.sg
  %found.conflict786 = and i1 %bound0784, %bound1785
  %i.sz = getelementptr i8, ptr %i.sl, i64 -4
  %i.ta = insertelement <4 x ptr> poison, ptr %i.sh, i64 0
  %i.tb = insertelement <4 x ptr> %i.ta, ptr %i.sj, i64 1
  %i.tc = insertelement <4 x ptr> %i.tb, ptr %i.sk, i64 2
  %i.td = insertelement <4 x ptr> %i.tc, ptr %i.sl, i64 3
  %i.te = getelementptr i8, <4 x ptr> %i.td, <4 x i64> <i64 -1, i64 -12, i64 -8, i64 -4> ; 3 uses
  %i.tf = getelementptr i8, ptr %i.sh, i64 -1     ; 3 uses
  %i.tg = icmp ult <4 x ptr> %i.sn, %i.te
  %bound0787 = icmp ult ptr %i.kh, %i.tf
  %i.th = and <4 x i1> %i.tg, %i.sr
  %i.ti = insertelement <4 x ptr> poison, ptr %i.se, i64 0
  %i.tj = shufflevector <4 x ptr> %i.ti, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.tk = icmp ult <4 x ptr> %i.tj, %i.te
  %i.tl = shufflevector <4 x ptr> %i.st, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.tm = shufflevector <4 x ptr> %i.te, <4 x ptr> poison, <2 x i32> <i32 1, i32 2>
  %i.tn = icmp ult <2 x ptr> %i.tl, %i.tm
  %bound1822 = icmp ult ptr %i.su, %i.tf
  %bound0825 = icmp ult ptr %i.sv, %i.sz
  %bound1826 = icmp ult ptr %i.ss, %i.tf
  %i.to = bitcast <4 x i1> %i.th to i4
  %i.tp = icmp ne i4 %i.to, 0
  %i.tq = insertelement <8 x i1> poison, i1 %bound0825, i64 6
  %i.tr = insertelement <8 x i1> %i.tq, i1 %i.tp, i64 7
  %i.ts = shufflevector <4 x i1> %i.tk, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tt = shufflevector <8 x i1> %i.ts, <8 x i1> %i.tr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.tu = shufflevector <2 x i1> %i.tn, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tv = shufflevector <8 x i1> %i.tt, <8 x i1> %i.tu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.tw = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound0787, i64 4
  %i.tx = insertelement <8 x i1> %i.tw, i1 %bound1822, i64 5
  %i.ty = insertelement <8 x i1> %i.tx, i1 %bound1826, i64 6
  %i.tz = shufflevector <4 x i1> %i.sy, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ua = shufflevector <8 x i1> %i.tz, <8 x i1> %i.ty, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ub = and <8 x i1> %i.tv, %i.ua
  %i.uc = bitcast <8 x i1> %i.ub to i8
  %i.ud = icmp ne i8 %i.uc, 0
  %op.rdx855 = or i1 %i.ud, %found.conflict786
  br i1 %op.rdx855, label %.lr.ph532.preheader865, label %vector.ph829

vector.ph829:                                     ; preds = %vector.memcheck783
  %i.ue = and i64 %i.ry, 7                        ; 2 uses
  %i.uf = icmp eq i64 %i.ue, 0
  %i.ug = select i1 %i.uf, i64 8, i64 %i.ue
  %n.vec830 = sub i64 %i.ry, %i.ug                ; 2 uses
  br label %vector.body831

vector.body831:                                   ; preds = %vector.body831, %vector.ph829
  %index832 = phi i64 [ 0, %vector.ph829 ], [ %index.next844, %vector.body831 ]
  %vec.ind833 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph829 ], [ %vec.ind.next845, %vector.body831 ] ; 2 uses
  %i.uh = shl <8 x i64> %vec.ind833, splat (i64 2) ; 10 uses
  %i.ui = extractelement <8 x i64> %i.uh, i64 0   ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.ui
  %wide.vec834 = load <32 x float>, ptr %i.uj, align 4, !tbaa !66 ; 3 uses
  %strided.vec835 = shufflevector <32 x float> %wide.vec834, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec836 = shufflevector <32 x float> %wide.vec834, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec837 = shufflevector <32 x float> %wide.vec834, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.uk = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec835, splat (float 2.550000e+02) ; 3 uses
  %i.ul = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.uk, splat (float 2.550000e+02)
  %i.um = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.uk, zeroinitializer
  %i.un = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.uk)
  %i.uo = fptoui <8 x float> %i.un to <8 x i8>
  %predphi838 = select <8 x i1> %i.um, <8 x i8> zeroinitializer, <8 x i8> %i.uo
  %predphi839 = select <8 x i1> %i.ul, <8 x i8> %predphi838, <8 x i8> splat (i8 -1) ; 8 uses
  %i.up = or disjoint <8 x i64> %i.uh, splat (i64 1) ; 8 uses
  %i.uq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec836, splat (float 2.550000e+02) ; 3 uses
  %i.ur = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.uq, splat (float 2.550000e+02)
  %i.us = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.uq, zeroinitializer
  %i.ut = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.uq)
  %i.uu = fptoui <8 x float> %i.ut to <8 x i8>
  %predphi840 = select <8 x i1> %i.us, <8 x i8> zeroinitializer, <8 x i8> %i.uu
  %predphi841 = select <8 x i1> %i.ur, <8 x i8> %predphi840, <8 x i8> splat (i8 -1) ; 8 uses
  %i.uv = or disjoint <8 x i64> %i.uh, splat (i64 2) ; 8 uses
  %i.uw = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec837, splat (float 2.550000e+02) ; 3 uses
  %i.ux = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.uw, splat (float 2.550000e+02)
  %i.uy = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.uw, zeroinitializer
  %i.uz = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.uw)
  %i.va = fptoui <8 x float> %i.uz to <8 x i8>
  %predphi842 = select <8 x i1> %i.uy, <8 x i8> zeroinitializer, <8 x i8> %i.va
  %predphi843 = select <8 x i1> %i.ux, <8 x i8> %predphi842, <8 x i8> splat (i8 -1) ; 8 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ui
  %i.vc = extractelement <8 x i64> %i.uh, i64 1
  %i.vd = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.vc
  %i.ve = extractelement <8 x i64> %i.uh, i64 2
  %i.vf = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ve
  %i.vg = extractelement <8 x i64> %i.uh, i64 3
  %i.vh = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.vg
  %i.vi = extractelement <8 x i64> %i.uh, i64 4
  %i.vj = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.vi
  %i.vk = extractelement <8 x i64> %i.uh, i64 5
  %i.vl = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.vk
  %i.vm = extractelement <8 x i64> %i.uh, i64 6
  %i.vn = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.vm
  %i.vo = extractelement <8 x i64> %i.uh, i64 7
  %i.vp = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.vo
  %i.vq = extractelement <8 x i8> %predphi839, i64 0
  store i8 %i.vq, ptr %i.vb, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.vr = extractelement <8 x i8> %predphi839, i64 1
  store i8 %i.vr, ptr %i.vd, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.vs = extractelement <8 x i8> %predphi839, i64 2
  store i8 %i.vs, ptr %i.vf, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.vt = extractelement <8 x i8> %predphi839, i64 3
  store i8 %i.vt, ptr %i.vh, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.vu = extractelement <8 x i8> %predphi839, i64 4
  store i8 %i.vu, ptr %i.vj, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.vv = extractelement <8 x i8> %predphi839, i64 5
  store i8 %i.vv, ptr %i.vl, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.vw = extractelement <8 x i8> %predphi839, i64 6
  store i8 %i.vw, ptr %i.vn, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.vx = extractelement <8 x i8> %predphi839, i64 7
  store i8 %i.vx, ptr %i.vp, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.vy = extractelement <8 x i64> %i.up, i64 0
  %i.vz = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.vy
  %i.wa = extractelement <8 x i64> %i.up, i64 1
  %i.wb = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.wa
  %i.wc = extractelement <8 x i64> %i.up, i64 2
  %i.wd = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.wc
  %i.we = extractelement <8 x i64> %i.up, i64 3
  %i.wf = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.we
  %i.wg = extractelement <8 x i64> %i.up, i64 4
  %i.wh = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.wg
  %i.wi = extractelement <8 x i64> %i.up, i64 5
  %i.wj = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.wi
  %i.wk = extractelement <8 x i64> %i.up, i64 6
  %i.wl = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.wk
  %i.wm = extractelement <8 x i64> %i.up, i64 7
  %i.wn = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.wm
  %i.wo = extractelement <8 x i8> %predphi841, i64 0
  store i8 %i.wo, ptr %i.vz, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.wp = extractelement <8 x i8> %predphi841, i64 1
  store i8 %i.wp, ptr %i.wb, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.wq = extractelement <8 x i8> %predphi841, i64 2
  store i8 %i.wq, ptr %i.wd, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.wr = extractelement <8 x i8> %predphi841, i64 3
  store i8 %i.wr, ptr %i.wf, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.ws = extractelement <8 x i8> %predphi841, i64 4
  store i8 %i.ws, ptr %i.wh, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.wt = extractelement <8 x i8> %predphi841, i64 5
  store i8 %i.wt, ptr %i.wj, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.wu = extractelement <8 x i8> %predphi841, i64 6
  store i8 %i.wu, ptr %i.wl, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.wv = extractelement <8 x i8> %predphi841, i64 7
  store i8 %i.wv, ptr %i.wn, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.ww = extractelement <8 x i64> %i.uv, i64 0
  %i.wx = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ww
  %i.wy = extractelement <8 x i64> %i.uv, i64 1
  %i.wz = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.wy
  %i.xa = extractelement <8 x i64> %i.uv, i64 2
  %i.xb = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.xa
  %i.xc = extractelement <8 x i64> %i.uv, i64 3
  %i.xd = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.xc
  %i.xe = extractelement <8 x i64> %i.uv, i64 4
  %i.xf = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.xe
  %i.xg = extractelement <8 x i64> %i.uv, i64 5
  %i.xh = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.xg
  %i.xi = extractelement <8 x i64> %i.uv, i64 6
  %i.xj = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.xi
  %i.xk = extractelement <8 x i64> %i.uv, i64 7
  %i.xl = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.xk
  %i.xm = extractelement <8 x i8> %predphi843, i64 0
  store i8 %i.xm, ptr %i.wx, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.xn = extractelement <8 x i8> %predphi843, i64 1
  store i8 %i.xn, ptr %i.wz, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.xo = extractelement <8 x i8> %predphi843, i64 2
  store i8 %i.xo, ptr %i.xb, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.xp = extractelement <8 x i8> %predphi843, i64 3
  store i8 %i.xp, ptr %i.xd, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.xq = extractelement <8 x i8> %predphi843, i64 4
  store i8 %i.xq, ptr %i.xf, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.xr = extractelement <8 x i8> %predphi843, i64 5
  store i8 %i.xr, ptr %i.xh, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.xs = extractelement <8 x i8> %predphi843, i64 6
  store i8 %i.xs, ptr %i.xj, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.xt = extractelement <8 x i8> %predphi843, i64 7
  store i8 %i.xt, ptr %i.xl, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %index.next844 = add nuw i64 %index832, 8       ; 2 uses
  %vec.ind.next845 = add nuw <8 x i64> %vec.ind833, splat (i64 8)
  %i.xu = icmp eq i64 %index.next844, %n.vec830
  br i1 %i.xu, label %.lr.ph532.preheader865, label %vector.body831, !llvm.loop !195

.lr.ph532.preheader865:                           ; preds = %vector.body831, %vector.memcheck783, %.lr.ph532.preheader
  %.0380531.ph = phi i64 [ 0, %vector.memcheck783 ], [ 0, %.lr.ph532.preheader ], [ %n.vec830, %vector.body831 ]
  br label %.lr.ph532

.lr.ph532:                                        ; preds = %.lr.ph532.preheader865, %bb.cu
  %.0380531 = phi i64 [ %i.yz, %bb.cu ], [ %.0380531.ph, %.lr.ph532.preheader865 ] ; 2 uses
  %i.xv = shl i64 %.0380531, 2                    ; 4 uses
end_hunk_0
