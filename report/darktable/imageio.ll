Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio?download=true
inline.NumInlined: 27
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@dt_imageio_export_with_flags:bb.a
  %.pre550 = load i32, ptr %i.eo, align 16        ; 3 uses
  br i1 %.not441, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %_get_pipescale.exit
  %i.gv = icmp eq i32 %.0394, 0
  %spec.select466 = select i1 %i.gv, i32 %.pre, i32 %.0394 ; 2 uses
  %i.gw = icmp eq i32 %.0392, 0
  %.1393 = select i1 %i.gw, i32 %.pre550, i32 %.0392 ; 2 uses
  %i.gx = icmp sgt i32 %spec.select466, 0
  br i1 %i.gx, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gy = uitofp nneg i32 %spec.select466 to double
  %i.gz = sitofp reassoc nsz arcp contract afn i32 %.pre to double
  %i.ha = fdiv reassoc nsz arcp contract afn double %i.gy, %i.gz
  %i.hb = call reassoc nsz arcp contract afn double @llvm.minnum.f64(double %i.ha, double %i.gg)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.hc = phi reassoc nsz arcp contract afn double [ %i.hb, %bb.be ], [ %i.gg, %bb.bd ]
  %i.hd = icmp sgt i32 %.1393, 0
  br i1 %i.hd, label %bb.bg, label %_get_pipescale.exit473

bb.bg:                                            ; preds = %bb.bf
  %i.he = uitofp nneg i32 %.1393 to double
  %i.hf = sitofp reassoc nsz arcp contract afn i32 %.pre550 to double
  %i.hg = fdiv reassoc nsz arcp contract afn double %i.he, %i.hf
  %i.hh = call reassoc nsz arcp contract afn double @llvm.minnum.f64(double %i.hg, double %i.gg)
  br label %_get_pipescale.exit473

_get_pipescale.exit473:                           ; preds = %bb.bf, %bb.bg
  %i.hi = phi reassoc nsz arcp contract afn double [ %i.hh, %bb.bg ], [ %i.gg, %bb.bf ]
  %i.hj = call reassoc nsz arcp contract afn double @llvm.minnum.f64(double %i.hc, double %i.hi)
  %i.hk = icmp eq i32 %8, 0
  %or.cond21 = or i1 %i.hk, %i.h
  br i1 %or.cond21, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_get_pipescale.exit473
  %i.hl = call reassoc nsz arcp contract afn double @llvm.minnum.f64(double %9, double %i.gg)
  br label %bb.bi

bb.bi:                                            ; preds = %_get_pipescale.exit473, %bb.bh, %_get_pipescale.exit
  %.0387 = phi nsz double [ %i.hj, %_get_pipescale.exit473 ], [ %i.hl, %bb.bh ], [ %i.gt, %_get_pipescale.exit ] ; 8 uses
  %i.hm = sitofp reassoc nsz arcp contract afn i32 %.pre to double
  %i.hn = fmul reassoc nsz arcp contract afn double %.0387, %i.hm
  %i.ho = call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.hn)
  %i.hp = fptosi double %i.ho to i32              ; 13 uses
  %i.hq = sitofp reassoc nsz arcp contract afn i32 %.pre550 to double
  %i.hr = fmul reassoc nsz arcp contract afn double %.0387, %i.hq
  %i.hs = call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.hr)
  %i.ht = fptosi double %i.hs to i32              ; 12 uses
  %i.hu = fcmp reassoc nsz arcp contract afn une double %.0387, %i.ga
  %or.cond15 = or i1 %i.h, %i.hu
  br i1 %or.cond15, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.hv, i32 noundef %i.hp, i32 noundef %i.ht) #17
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.hw = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !63
  %i.hx = and i32 %i.hw, 262144
  %.not442 = icmp eq i32 %i.hx, 0
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
  br i1 %min.iters.check663, label %.lr.ph528.preheader862, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph528.preheader
  %i.ku = mul nsw i64 %i.ks, %i.kr                ; 2 uses
  %i.kv = shl i64 %i.ku, 2                        ; 3 uses
  %31 = getelementptr i8, ptr %i.kh, i64 %i.kv
  %32 = getelementptr i8, ptr %31, i64 -3         ; 2 uses
  %33 = getelementptr i8, ptr %i.kh, i64 1        ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kh, i64 %i.kv
  %i.kx = getelementptr i8, ptr %i.kw, i64 -2     ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kh, i64 %i.kv  ; 2 uses
  %i.kz = shl i64 %i.ku, 4                        ; 3 uses
  %i.la = getelementptr i8, ptr %i.kh, i64 %i.kz
  %i.lb = getelementptr i8, ptr %i.kh, i64 %i.kz
  %i.lc = getelementptr i8, ptr %i.kh, i64 %i.kz  ; 2 uses
  %bound1 = icmp ult ptr %33, %32
  %i.ld = insertelement <4 x ptr> poison, ptr %i.kh, i64 0
  %i.le = shufflevector <4 x ptr> %i.ld, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lf = getelementptr i8, ptr %i.kh, <4 x i64> <i64 2, i64 8, i64 4, i64 0>
  %34 = insertelement <4 x ptr> poison, ptr %32, i64 0
  %35 = shufflevector <4 x ptr> %34, <4 x ptr> poison, <4 x i32> zeroinitializer
  %36 = icmp ult <4 x ptr> %i.lf, %35
  %37 = getelementptr i8, ptr %i.kh, <4 x i64> <i64 2, i64 8, i64 4, i64 0> ; 3 uses
  %38 = getelementptr i8, ptr %i.kh, i64 2
  %bound0 = icmp ult ptr %i.kh, %i.kx
  %i.lg = insertelement <4 x ptr> poison, ptr %i.kx, i64 0
  %39 = shufflevector <4 x ptr> %i.lg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lh = icmp ult <4 x ptr> %37, %39
  %found.conflict = and i1 %bound0, %bound1
  %40 = getelementptr i8, ptr %i.lc, i64 -12
  %41 = insertelement <4 x ptr> poison, ptr %i.ky, i64 0
  %i.li = insertelement <4 x ptr> %41, ptr %i.la, i64 1
  %i.lj = insertelement <4 x ptr> %i.li, ptr %i.lb, i64 2
  %i.lk = insertelement <4 x ptr> %i.lj, ptr %i.lc, i64 3
  %42 = getelementptr i8, <4 x ptr> %i.lk, <4 x i64> <i64 -1, i64 -4, i64 -8, i64 -12> ; 4 uses
  %43 = getelementptr i8, ptr %i.ky, i64 -1
  %44 = icmp ult <4 x ptr> %i.le, %42
  %bound0664 = icmp ult ptr %i.kh, %43
  %45 = and <4 x i1> %44, %36
  %i.ll = insertelement <4 x ptr> poison, ptr %33, i64 0
  %46 = shufflevector <4 x ptr> %i.ll, <4 x ptr> poison, <4 x i32> zeroinitializer
  %47 = icmp ult <4 x ptr> %46, %42
  %48 = shufflevector <4 x ptr> %37, <4 x ptr> poison, <2 x i32> zeroinitializer
  %49 = shufflevector <4 x ptr> %42, <4 x ptr> poison, <2 x i32> <i32 1, i32 2>
  %50 = icmp ult <2 x ptr> %48, %49
  %51 = shufflevector <4 x ptr> %37, <4 x ptr> poison, <2 x i32> <i32 1, i32 2>
  %52 = shufflevector <4 x ptr> %42, <4 x ptr> poison, <2 x i32> zeroinitializer
  %53 = icmp ult <2 x ptr> %51, %52
  %bound0702 = icmp ult ptr %38, %40
  %54 = bitcast <4 x i1> %45 to i4
  %55 = icmp ne i4 %54, 0
  %56 = insertelement <8 x i1> poison, i1 %bound0702, i64 6
  %57 = insertelement <8 x i1> %56, i1 %55, i64 7
  %58 = shufflevector <4 x i1> %47, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %59 = shufflevector <8 x i1> %58, <8 x i1> %57, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %60 = shufflevector <2 x i1> %50, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %61 = shufflevector <8 x i1> %59, <8 x i1> %60, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %62 = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound0664, i64 6
  %63 = shufflevector <4 x i1> %i.lh, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %64 = shufflevector <8 x i1> %63, <8 x i1> %62, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %65 = shufflevector <2 x i1> %53, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %66 = shufflevector <8 x i1> %64, <8 x i1> %65, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %67 = and <8 x i1> %61, %66
  %68 = bitcast <8 x i1> %67 to i8
  %69 = icmp ne i8 %68, 0
  %op.rdx863 = or i1 %69, %found.conflict
  br i1 %op.rdx863, label %.lr.ph528.preheader862, label %vector.ph705

vector.ph705:                                     ; preds = %vector.memcheck
  %i.lm = and i64 %i.kt, 7                        ; 2 uses
  %i.ln = icmp eq i64 %i.lm, 0
  %i.lo = select i1 %i.ln, i64 8, i64 %i.lm
  %n.vec706 = sub i64 %i.kt, %i.lo                ; 2 uses
  br label %vector.body707

vector.body707:                                   ; preds = %vector.body707, %vector.ph705
  %index708 = phi i64 [ 0, %vector.ph705 ], [ %index.next720, %vector.body707 ]
  %vec.ind709 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph705 ], [ %vec.ind.next721, %vector.body707 ] ; 2 uses
  %i.lp = shl <8 x i64> %vec.ind709, splat (i64 2) ; 10 uses
  %i.lq = or disjoint <8 x i64> %i.lp, splat (i64 2) ; 8 uses
  %i.lr = extractelement <8 x i64> %i.lq, i64 0   ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.lr
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 -8
  %wide.vec710 = load <32 x float>, ptr %i.lt, align 4, !tbaa !66 ; 3 uses
  %strided.vec711 = shufflevector <32 x float> %wide.vec710, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec712 = shufflevector <32 x float> %wide.vec710, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec713 = shufflevector <32 x float> %wide.vec710, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.lu = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec713, splat (float 2.550000e+02) ; 3 uses
  %i.lv = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.lu, splat (float 2.550000e+02)
  %i.lw = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.lu, zeroinitializer
  %i.lx = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.lu)
  %i.ly = fptoui <8 x float> %i.lx to <8 x i8>
  %predphi714 = select <8 x i1> %i.lw, <8 x i8> zeroinitializer, <8 x i8> %i.ly
  %predphi715 = select <8 x i1> %i.lv, <8 x i8> %predphi714, <8 x i8> splat (i8 -1) ; 8 uses
  %i.lz = or disjoint <8 x i64> %i.lp, splat (i64 1) ; 8 uses
  %i.ma = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec712, splat (float 2.550000e+02) ; 3 uses
  %i.mb = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ma, splat (float 2.550000e+02)
  %i.mc = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ma, zeroinitializer
  %i.md = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.ma)
  %i.me = fptoui <8 x float> %i.md to <8 x i8>
  %predphi716 = select <8 x i1> %i.mc, <8 x i8> zeroinitializer, <8 x i8> %i.me
  %predphi717 = select <8 x i1> %i.mb, <8 x i8> %predphi716, <8 x i8> splat (i8 -1) ; 8 uses
  %i.mf = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec711, splat (float 2.550000e+02) ; 3 uses
  %i.mg = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.mf, splat (float 2.550000e+02)
  %i.mh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.mf, zeroinitializer
  %i.mi = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.mf)
  %i.mj = fptoui <8 x float> %i.mi to <8 x i8>
  %predphi718 = select <8 x i1> %i.mh, <8 x i8> zeroinitializer, <8 x i8> %i.mj
  %predphi719 = select <8 x i1> %i.mg, <8 x i8> %predphi718, <8 x i8> splat (i8 -1) ; 8 uses
  %i.mk = extractelement <8 x i64> %i.lp, i64 0
  %i.ml = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.mk
  %i.mm = extractelement <8 x i64> %i.lp, i64 1
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.mm
  %i.mo = extractelement <8 x i64> %i.lp, i64 2
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.mo
  %i.mq = extractelement <8 x i64> %i.lp, i64 3
  %i.mr = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.mq
  %i.ms = extractelement <8 x i64> %i.lp, i64 4
  %i.mt = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ms
  %i.mu = extractelement <8 x i64> %i.lp, i64 5
  %i.mv = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.mu
  %i.mw = extractelement <8 x i64> %i.lp, i64 6
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.mw
  %i.my = extractelement <8 x i64> %i.lp, i64 7
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.my
  %i.na = extractelement <8 x i8> %predphi715, i64 0
  store i8 %i.na, ptr %i.ml, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.nb = extractelement <8 x i8> %predphi715, i64 1
  store i8 %i.nb, ptr %i.mn, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.nc = extractelement <8 x i8> %predphi715, i64 2
  store i8 %i.nc, ptr %i.mp, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.nd = extractelement <8 x i8> %predphi715, i64 3
  store i8 %i.nd, ptr %i.mr, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.ne = extractelement <8 x i8> %predphi715, i64 4
  store i8 %i.ne, ptr %i.mt, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.nf = extractelement <8 x i8> %predphi715, i64 5
  store i8 %i.nf, ptr %i.mv, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.ng = extractelement <8 x i8> %predphi715, i64 6
  store i8 %i.ng, ptr %i.mx, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.nh = extractelement <8 x i8> %predphi715, i64 7
  store i8 %i.nh, ptr %i.mz, align 1, !tbaa !21, !alias.scope !284, !noalias !285
  %i.ni = extractelement <8 x i64> %i.lz, i64 0
  %i.nj = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ni
  %i.nk = extractelement <8 x i64> %i.lz, i64 1
  %i.nl = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.nk
  %i.nm = extractelement <8 x i64> %i.lz, i64 2
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.nm
  %i.no = extractelement <8 x i64> %i.lz, i64 3
  %i.np = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.no
  %i.nq = extractelement <8 x i64> %i.lz, i64 4
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.nq
  %i.ns = extractelement <8 x i64> %i.lz, i64 5
  %i.nt = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ns
  %i.nu = extractelement <8 x i64> %i.lz, i64 6
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.nu
  %i.nw = extractelement <8 x i64> %i.lz, i64 7
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.nw
  %i.ny = extractelement <8 x i8> %predphi717, i64 0
  store i8 %i.ny, ptr %i.nj, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.nz = extractelement <8 x i8> %predphi717, i64 1
  store i8 %i.nz, ptr %i.nl, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.oa = extractelement <8 x i8> %predphi717, i64 2
  store i8 %i.oa, ptr %i.nn, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.ob = extractelement <8 x i8> %predphi717, i64 3
  store i8 %i.ob, ptr %i.np, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.oc = extractelement <8 x i8> %predphi717, i64 4
  store i8 %i.oc, ptr %i.nr, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.od = extractelement <8 x i8> %predphi717, i64 5
  store i8 %i.od, ptr %i.nt, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.oe = extractelement <8 x i8> %predphi717, i64 6
  store i8 %i.oe, ptr %i.nv, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.of = extractelement <8 x i8> %predphi717, i64 7
  store i8 %i.of, ptr %i.nx, align 1, !tbaa !21, !alias.scope !286, !noalias !287
  %i.og = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.lr
  %i.oh = extractelement <8 x i64> %i.lq, i64 1
  %i.oi = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.oh
  %i.oj = extractelement <8 x i64> %i.lq, i64 2
  %i.ok = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.oj
  %i.ol = extractelement <8 x i64> %i.lq, i64 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ol
  %i.on = extractelement <8 x i64> %i.lq, i64 4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.on
  %i.op = extractelement <8 x i64> %i.lq, i64 5
  %i.oq = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.op
  %i.or = extractelement <8 x i64> %i.lq, i64 6
  %i.os = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.or
  %i.ot = extractelement <8 x i64> %i.lq, i64 7
  %i.ou = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ot
  %i.ov = extractelement <8 x i8> %predphi719, i64 0
  store i8 %i.ov, ptr %i.og, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.ow = extractelement <8 x i8> %predphi719, i64 1
  store i8 %i.ow, ptr %i.oi, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.ox = extractelement <8 x i8> %predphi719, i64 2
  store i8 %i.ox, ptr %i.ok, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.oy = extractelement <8 x i8> %predphi719, i64 3
  store i8 %i.oy, ptr %i.om, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.oz = extractelement <8 x i8> %predphi719, i64 4
  store i8 %i.oz, ptr %i.oo, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.pa = extractelement <8 x i8> %predphi719, i64 5
  store i8 %i.pa, ptr %i.oq, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.pb = extractelement <8 x i8> %predphi719, i64 6
  store i8 %i.pb, ptr %i.os, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %i.pc = extractelement <8 x i8> %predphi719, i64 7
  store i8 %i.pc, ptr %i.ou, align 1, !tbaa !21, !alias.scope !288, !noalias !289
  %index.next720 = add nuw i64 %index708, 8       ; 2 uses
  %vec.ind.next721 = add nuw <8 x i64> %vec.ind709, splat (i64 8)
  %i.pd = icmp eq i64 %index.next720, %n.vec706
  br i1 %i.pd, label %.lr.ph528.preheader862, label %vector.body707, !llvm.loop !186

.lr.ph528.preheader862:                           ; preds = %vector.body707, %vector.memcheck, %.lr.ph528.preheader
  %.0381527.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph528.preheader ], [ %n.vec706, %vector.body707 ]
  br label %.lr.ph528

.lr.ph528:                                        ; preds = %.lr.ph528.preheader862, %bb.ck
  %.0381527 = phi i64 [ %i.qi, %bb.ck ], [ %.0381527.ph, %.lr.ph528.preheader862 ] ; 2 uses
  %i.pe = shl i64 %.0381527, 2                    ; 4 uses
  %i.pf = or disjoint i64 %i.pe, 2                ; 2 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.pf
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !66
  %i.pi = fmul reassoc nsz arcp contract afn float %i.ph, 2.550000e+02 ; 3 uses
  %i.pj = fcmp reassoc nsz arcp contract afn ogt float %i.pi, 2.550000e+02
  br i1 %i.pj, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph528
  %i.pk = fcmp reassoc nsz arcp contract afn olt float %i.pi, 0.000000e+00
  br i1 %i.pk, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pl = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.pi)
  %i.pm = fptoui float %i.pl to i8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %.lr.ph528
  %i.pn = phi i8 [ -1, %.lr.ph528 ], [ %i.pm, %bb.cd ], [ 0, %bb.cc ]
  %i.po = or disjoint i64 %i.pe, 1                ; 2 uses
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.po
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !66
  %i.pr = fmul reassoc nsz arcp contract afn float %i.pq, 2.550000e+02 ; 3 uses
  %i.ps = fcmp reassoc nsz arcp contract afn ogt float %i.pr, 2.550000e+02
  br i1 %i.ps, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pt = fcmp reassoc nsz arcp contract afn olt float %i.pr, 0.000000e+00
  br i1 %i.pt, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pu = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.pr)
  %i.pv = fptoui float %i.pu to i8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.pw = phi i8 [ -1, %bb.ce ], [ %i.pv, %bb.cg ], [ 0, %bb.cf ]
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.pe
  %i.py = load float, ptr %i.px, align 4, !tbaa !66
  %i.pz = fmul reassoc nsz arcp contract afn float %i.py, 2.550000e+02 ; 3 uses
  %i.qa = fcmp reassoc nsz arcp contract afn ogt float %i.pz, 2.550000e+02
  br i1 %i.qa, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qb = fcmp reassoc nsz arcp contract afn olt float %i.pz, 0.000000e+00
  br i1 %i.qb, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qc = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.pz)
  %i.qd = fptoui float %i.qc to i8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.qe = phi i8 [ -1, %bb.ch ], [ %i.qd, %bb.cj ], [ 0, %bb.ci ]
  %i.qf = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.pe
  store i8 %i.pn, ptr %i.qf, align 1, !tbaa !21
  %i.qg = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.po
  store i8 %i.pw, ptr %i.qg, align 1, !tbaa !21
  %i.qh = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.pf
  store i8 %i.qe, ptr %i.qh, align 1, !tbaa !21
  %i.qi = add nuw i64 %.0381527, 1                ; 2 uses
  %exitcond547.not = icmp eq i64 %i.qi, %i.kt
  br i1 %exitcond547.not, label %.loopexit, label %.lr.ph528, !llvm.loop !187

bb.cl:                                            ; preds = %bb.ca
  %i.qj = sext i32 %i.hp to i64                   ; 2 uses
  %i.qk = sext i32 %i.ht to i64                   ; 2 uses
  %i.ql = mul nsw i64 %i.qk, %i.qj                ; 8 uses
  %.not535 = icmp eq i64 %i.ql, 0                 ; 2 uses
  br i1 %i.jm, label %.preheader, label %.preheader498

.preheader498:                                    ; preds = %bb.cl
  br i1 %.not535, label %.loopexit, label %.lr.ph530.preheader

.lr.ph530.preheader:                              ; preds = %.preheader498
  %xtraiter = and i64 %i.ql, 3                    ; 3 uses
  %i.qm = icmp ult i64 %i.ql, 4
  br i1 %i.qm, label %.lr.ph530.epil.preheader, label %.lr.ph530.preheader.new

.lr.ph530.preheader.new:                          ; preds = %.lr.ph530.preheader
  %unroll_iter = and i64 %i.ql, -4
  br label %.lr.ph530

.preheader:                                       ; preds = %bb.cl
  br i1 %.not535, label %.loopexit, label %.lr.ph532.preheader

.lr.ph532.preheader:                              ; preds = %.preheader
  %min.iters.check782 = icmp ult i64 %i.ql, 33
  br i1 %min.iters.check782, label %.lr.ph532.preheader860, label %vector.memcheck783

vector.memcheck783:                               ; preds = %.lr.ph532.preheader
  %i.qn = mul nsw i64 %i.qk, %i.qj                ; 2 uses
  %i.qo = shl i64 %i.qn, 2                        ; 3 uses
  %i.qp = getelementptr i8, ptr %i.kh, i64 %i.qo
  %i.qq = getelementptr i8, ptr %i.qp, i64 -3     ; 2 uses
  %i.qr = getelementptr i8, ptr %i.kh, i64 1      ; 2 uses
  %i.qs = getelementptr i8, ptr %i.kh, i64 %i.qo
  %i.qt = getelementptr i8, ptr %i.qs, i64 -2     ; 2 uses
  %i.qu = getelementptr i8, ptr %i.kh, i64 %i.qo  ; 2 uses
  %i.qv = shl i64 %i.qn, 4                        ; 3 uses
  %i.qw = getelementptr i8, ptr %i.kh, i64 %i.qv
  %i.qx = getelementptr i8, ptr %i.kh, i64 %i.qv
  %i.qy = getelementptr i8, ptr %i.kh, i64 %i.qv  ; 2 uses
  %bound0784.a = icmp ult ptr %i.qr, %i.qq
  %70 = insertelement <4 x ptr> poison, ptr %i.kh, i64 0
  %71 = shufflevector <4 x ptr> %70, <4 x ptr> poison, <4 x i32> zeroinitializer
  %72 = getelementptr i8, ptr %i.kh, <4 x i64> <i64 2, i64 0, i64 4, i64 8>
  %i.qz = insertelement <4 x ptr> poison, ptr %i.qq, i64 0
  %i.ra = shufflevector <4 x ptr> %i.qz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %73 = icmp ult <4 x ptr> %72, %i.ra
  %i.rb = getelementptr i8, ptr %i.kh, i64 8
  %74 = getelementptr i8, ptr %i.kh, <4 x i64> <i64 2, i64 0, i64 4, i64 8> ; 2 uses
  %i.rc = getelementptr i8, ptr %i.kh, i64 4
  %75 = getelementptr i8, ptr %i.kh, i64 2
  %i.rd = insertelement <4 x ptr> poison, ptr %i.qt, i64 0
  %76 = shufflevector <4 x ptr> %i.rd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %77 = icmp ult <4 x ptr> %74, %76
  %bound0784 = icmp ult ptr %i.kh, %i.qt
  %found.conflict786 = and i1 %bound0784, %bound0784.a
  %i.re = getelementptr i8, ptr %i.qy, i64 -4
  %78 = insertelement <4 x ptr> poison, ptr %i.qu, i64 0
  %79 = insertelement <4 x ptr> %78, ptr %i.qw, i64 1
  %80 = insertelement <4 x ptr> %79, ptr %i.qx, i64 2
  %i.rf = insertelement <4 x ptr> %80, ptr %i.qy, i64 3
  %81 = getelementptr i8, <4 x ptr> %i.rf, <4 x i64> <i64 -1, i64 -12, i64 -8, i64 -4> ; 3 uses
  %82 = getelementptr i8, ptr %i.qu, i64 -1       ; 3 uses
  %83 = icmp ult <4 x ptr> %71, %81
  %bound0803 = icmp ult ptr %i.kh, %82
  %84 = and <4 x i1> %83, %73
  %85 = insertelement <4 x ptr> poison, ptr %i.qr, i64 0
  %86 = shufflevector <4 x ptr> %85, <4 x ptr> poison, <4 x i32> zeroinitializer
  %87 = icmp ult <4 x ptr> %86, %81
  %88 = shufflevector <4 x ptr> %74, <4 x ptr> poison, <2 x i32> zeroinitializer
  %89 = shufflevector <4 x ptr> %81, <4 x ptr> poison, <2 x i32> <i32 1, i32 2>
  %90 = icmp ult <2 x ptr> %88, %89
  %bound0814 = icmp ult ptr %i.rc, %82
  %bound1815 = icmp ult ptr %75, %i.re
  %bound0818 = icmp ult ptr %i.rb, %82
  %91 = bitcast <4 x i1> %84 to i4
  %92 = icmp ne i4 %91, 0
  %93 = insertelement <8 x i1> poison, i1 %bound1815, i64 6
  %94 = insertelement <8 x i1> %93, i1 %92, i64 7
  %95 = shufflevector <4 x i1> %87, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %96 = shufflevector <8 x i1> %95, <8 x i1> %94, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %97 = shufflevector <2 x i1> %90, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %98 = shufflevector <8 x i1> %96, <8 x i1> %97, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %99 = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound0803, i64 4
  %100 = insertelement <8 x i1> %99, i1 %bound0814, i64 5
  %101 = insertelement <8 x i1> %100, i1 %bound0818, i64 6
  %102 = shufflevector <4 x i1> %77, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %103 = shufflevector <8 x i1> %102, <8 x i1> %101, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %104 = and <8 x i1> %98, %103
  %105 = bitcast <8 x i1> %104 to i8
  %106 = icmp ne i8 %105, 0
  %op.rdx854 = or i1 %106, %found.conflict786
  br i1 %op.rdx854, label %.lr.ph532.preheader860, label %vector.ph829

vector.ph829:                                     ; preds = %vector.memcheck783
  %i.rg = and i64 %i.ql, 7                        ; 2 uses
  %i.rh = icmp eq i64 %i.rg, 0
  %i.ri = select i1 %i.rh, i64 8, i64 %i.rg
  %n.vec830 = sub i64 %i.ql, %i.ri                ; 2 uses
  br label %vector.body831

vector.body831:                                   ; preds = %vector.body831, %vector.ph829
  %index832 = phi i64 [ 0, %vector.ph829 ], [ %index.next844, %vector.body831 ]
  %vec.ind833 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph829 ], [ %vec.ind.next845, %vector.body831 ] ; 2 uses
  %i.rj = shl <8 x i64> %vec.ind833, splat (i64 2) ; 10 uses
  %i.rk = extractelement <8 x i64> %i.rj, i64 0   ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.rk
  %wide.vec834 = load <32 x float>, ptr %i.rl, align 4, !tbaa !66 ; 3 uses
  %strided.vec835 = shufflevector <32 x float> %wide.vec834, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec836 = shufflevector <32 x float> %wide.vec834, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec837 = shufflevector <32 x float> %wide.vec834, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.rm = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec835, splat (float 2.550000e+02) ; 3 uses
  %i.rn = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.rm, splat (float 2.550000e+02)
  %i.ro = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.rm, zeroinitializer
  %i.rp = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.rm)
  %i.rq = fptoui <8 x float> %i.rp to <8 x i8>
  %predphi838 = select <8 x i1> %i.ro, <8 x i8> zeroinitializer, <8 x i8> %i.rq
  %predphi839 = select <8 x i1> %i.rn, <8 x i8> %predphi838, <8 x i8> splat (i8 -1) ; 8 uses
  %i.rr = or disjoint <8 x i64> %i.rj, splat (i64 1) ; 8 uses
  %i.rs = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec836, splat (float 2.550000e+02) ; 3 uses
  %i.rt = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.rs, splat (float 2.550000e+02)
  %i.ru = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.rs, zeroinitializer
  %i.rv = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.rs)
  %i.rw = fptoui <8 x float> %i.rv to <8 x i8>
  %predphi840 = select <8 x i1> %i.ru, <8 x i8> zeroinitializer, <8 x i8> %i.rw
  %predphi841 = select <8 x i1> %i.rt, <8 x i8> %predphi840, <8 x i8> splat (i8 -1) ; 8 uses
  %i.rx = or disjoint <8 x i64> %i.rj, splat (i64 2) ; 8 uses
  %i.ry = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec837, splat (float 2.550000e+02) ; 3 uses
  %i.rz = fcmp reassoc nsz arcp contract afn ule <8 x float> %i.ry, splat (float 2.550000e+02)
  %i.sa = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ry, zeroinitializer
  %i.sb = call reassoc nsz arcp contract afn <8 x float> @llvm.round.v8f32(<8 x float> %i.ry)
  %i.sc = fptoui <8 x float> %i.sb to <8 x i8>
  %predphi842 = select <8 x i1> %i.sa, <8 x i8> zeroinitializer, <8 x i8> %i.sc
  %predphi843 = select <8 x i1> %i.rz, <8 x i8> %predphi842, <8 x i8> splat (i8 -1) ; 8 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.rk
  %i.se = extractelement <8 x i64> %i.rj, i64 1
  %i.sf = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.se
  %i.sg = extractelement <8 x i64> %i.rj, i64 2
  %i.sh = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.sg
  %i.si = extractelement <8 x i64> %i.rj, i64 3
  %i.sj = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.si
  %i.sk = extractelement <8 x i64> %i.rj, i64 4
  %i.sl = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.sk
  %i.sm = extractelement <8 x i64> %i.rj, i64 5
  %i.sn = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.sm
  %i.so = extractelement <8 x i64> %i.rj, i64 6
  %i.sp = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.so
  %i.sq = extractelement <8 x i64> %i.rj, i64 7
  %i.sr = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.sq
  %i.ss = extractelement <8 x i8> %predphi839, i64 0
  store i8 %i.ss, ptr %i.sd, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.st = extractelement <8 x i8> %predphi839, i64 1
  store i8 %i.st, ptr %i.sf, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.su = extractelement <8 x i8> %predphi839, i64 2
  store i8 %i.su, ptr %i.sh, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.sv = extractelement <8 x i8> %predphi839, i64 3
  store i8 %i.sv, ptr %i.sj, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.sw = extractelement <8 x i8> %predphi839, i64 4
  store i8 %i.sw, ptr %i.sl, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.sx = extractelement <8 x i8> %predphi839, i64 5
  store i8 %i.sx, ptr %i.sn, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.sy = extractelement <8 x i8> %predphi839, i64 6
  store i8 %i.sy, ptr %i.sp, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.sz = extractelement <8 x i8> %predphi839, i64 7
  store i8 %i.sz, ptr %i.sr, align 1, !tbaa !21, !alias.scope !290, !noalias !291
  %i.ta = extractelement <8 x i64> %i.rr, i64 0
  %i.tb = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ta
  %i.tc = extractelement <8 x i64> %i.rr, i64 1
  %i.td = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.tc
  %i.te = extractelement <8 x i64> %i.rr, i64 2
  %i.tf = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.te
  %i.tg = extractelement <8 x i64> %i.rr, i64 3
  %i.th = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.tg
  %i.ti = extractelement <8 x i64> %i.rr, i64 4
  %i.tj = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ti
  %i.tk = extractelement <8 x i64> %i.rr, i64 5
  %i.tl = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.tk
  %i.tm = extractelement <8 x i64> %i.rr, i64 6
  %i.tn = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.tm
  %i.to = extractelement <8 x i64> %i.rr, i64 7
  %i.tp = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.to
  %i.tq = extractelement <8 x i8> %predphi841, i64 0
  store i8 %i.tq, ptr %i.tb, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.tr = extractelement <8 x i8> %predphi841, i64 1
  store i8 %i.tr, ptr %i.td, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.ts = extractelement <8 x i8> %predphi841, i64 2
  store i8 %i.ts, ptr %i.tf, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.tt = extractelement <8 x i8> %predphi841, i64 3
  store i8 %i.tt, ptr %i.th, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.tu = extractelement <8 x i8> %predphi841, i64 4
  store i8 %i.tu, ptr %i.tj, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.tv = extractelement <8 x i8> %predphi841, i64 5
  store i8 %i.tv, ptr %i.tl, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.tw = extractelement <8 x i8> %predphi841, i64 6
  store i8 %i.tw, ptr %i.tn, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.tx = extractelement <8 x i8> %predphi841, i64 7
  store i8 %i.tx, ptr %i.tp, align 1, !tbaa !21, !alias.scope !292, !noalias !293
  %i.ty = extractelement <8 x i64> %i.rx, i64 0
  %i.tz = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ty
  %i.ua = extractelement <8 x i64> %i.rx, i64 1
  %i.ub = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ua
  %i.uc = extractelement <8 x i64> %i.rx, i64 2
  %i.ud = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.uc
  %i.ue = extractelement <8 x i64> %i.rx, i64 3
  %i.uf = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ue
  %i.ug = extractelement <8 x i64> %i.rx, i64 4
  %i.uh = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ug
  %i.ui = extractelement <8 x i64> %i.rx, i64 5
  %i.uj = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.ui
  %i.uk = extractelement <8 x i64> %i.rx, i64 6
  %i.ul = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.uk
  %i.um = extractelement <8 x i64> %i.rx, i64 7
  %i.un = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.um
  %i.uo = extractelement <8 x i8> %predphi843, i64 0
  store i8 %i.uo, ptr %i.tz, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.up = extractelement <8 x i8> %predphi843, i64 1
  store i8 %i.up, ptr %i.ub, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.uq = extractelement <8 x i8> %predphi843, i64 2
  store i8 %i.uq, ptr %i.ud, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.ur = extractelement <8 x i8> %predphi843, i64 3
  store i8 %i.ur, ptr %i.uf, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.us = extractelement <8 x i8> %predphi843, i64 4
  store i8 %i.us, ptr %i.uh, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.ut = extractelement <8 x i8> %predphi843, i64 5
  store i8 %i.ut, ptr %i.uj, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.uu = extractelement <8 x i8> %predphi843, i64 6
  store i8 %i.uu, ptr %i.ul, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %i.uv = extractelement <8 x i8> %predphi843, i64 7
  store i8 %i.uv, ptr %i.un, align 1, !tbaa !21, !alias.scope !294, !noalias !295
  %index.next844 = add nuw i64 %index832, 8       ; 2 uses
  %vec.ind.next845 = add nuw <8 x i64> %vec.ind833, splat (i64 8)
  %i.uw = icmp eq i64 %index.next844, %n.vec830
  br i1 %i.uw, label %.lr.ph532.preheader860, label %vector.body831, !llvm.loop !195

.lr.ph532.preheader860:                           ; preds = %vector.body831, %vector.memcheck783, %.lr.ph532.preheader
  %.0380531.ph = phi i64 [ 0, %vector.memcheck783 ], [ 0, %.lr.ph532.preheader ], [ %n.vec830, %vector.body831 ]
  br label %.lr.ph532

.lr.ph532:                                        ; preds = %.lr.ph532.preheader860, %bb.cu
  %.0380531 = phi i64 [ %i.wb, %bb.cu ], [ %.0380531.ph, %.lr.ph532.preheader860 ] ; 2 uses
  %i.ux = shl i64 %.0380531, 2                    ; 4 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.ux
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !66
  %i.va = fmul reassoc nsz arcp contract afn float %i.uz, 2.550000e+02 ; 3 uses
  %i.vb = fcmp reassoc nsz arcp contract afn ogt float %i.va, 2.550000e+02
  br i1 %i.vb, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph532
  %i.vc = fcmp reassoc nsz arcp contract afn olt float %i.va, 0.000000e+00
  br i1 %i.vc, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vd = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.va)
  %i.ve = fptoui float %i.vd to i8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %.lr.ph532
  %i.vf = phi i8 [ -1, %.lr.ph532 ], [ %i.ve, %bb.cn ], [ 0, %bb.cm ]
  %i.vg = or disjoint i64 %i.ux, 1                ; 2 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.vg
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !66
  %i.vj = fmul reassoc nsz arcp contract afn float %i.vi, 2.550000e+02 ; 3 uses
  %i.vk = fcmp reassoc nsz arcp contract afn ogt float %i.vj, 2.550000e+02
  br i1 %i.vk, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.vl = fcmp reassoc nsz arcp contract afn olt float %i.vj, 0.000000e+00
  br i1 %i.vl, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.vm = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.vj)
  %i.vn = fptoui float %i.vm to i8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co
  %i.vo = phi i8 [ -1, %bb.co ], [ %i.vn, %bb.cq ], [ 0, %bb.cp ]
  %i.vp = or disjoint i64 %i.ux, 2                ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.vp
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !66
  %i.vs = fmul reassoc nsz arcp contract afn float %i.vr, 2.550000e+02 ; 3 uses
  %i.vt = fcmp reassoc nsz arcp contract afn ogt float %i.vs, 2.550000e+02
  br i1 %i.vt, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.vu = fcmp reassoc nsz arcp contract afn olt float %i.vs, 0.000000e+00
  br i1 %i.vu, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vv = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.vs)
  %i.vw = fptoui float %i.vv to i8
  br label %bb.cu

end_hunk_0
