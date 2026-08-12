inline.NumInlined: 181
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dt_dev_process_image_job:bb.a
  %i.ht = load float, ptr %i.b, align 4, !tbaa !122
  %i.hu = fpext reassoc nsz arcp contract afn float %i.ht to double
  %i.hv = fadd reassoc nsz arcp contract afn double %i.hu, 5.000000e-01
  %i.hw = fmul reassoc nsz arcp contract afn double %i.hv, %i.hs
  %i.hx = sdiv i32 %i.he, 2
  %i.hy = sitofp reassoc nsz arcp contract afn i32 %i.hx to double
  %i.hz = fsub reassoc nsz arcp contract afn double %i.hw, %i.hy ; 3 uses
  %i.ia = sub nsw i32 %i.ha, %i.he
  %i.ib = uitofp nneg i32 %i.ia to double         ; 2 uses
  %i.ic = fcmp reassoc nsz arcp contract afn ogt double %i.hz, %i.ib
  br i1 %i.ic, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.id = fcmp reassoc nsz arcp contract afn olt double %i.hz, 0.000000e+00
  br i1 %i.id, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br label %bb.bf

bb.bf:                                            ; preds = %bb.ay, %bb.bc, %bb.bd, %bb.be
  %i.ie = phi i32 [ %i.hr, %bb.bd ], [ %i.hr, %bb.bc ], [ %i.hr, %bb.be ], [ 0, %bb.ay ] ; 2 uses
  %i.if = phi reassoc nsz arcp contract afn double [ 0.000000e+00, %bb.bd ], [ %i.ib, %bb.bc ], [ %i.hz, %bb.be ], [ 0.000000e+00, %bb.ay ]
  %i.ig = fptosi double %i.if to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ih = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #25 ; 0 uses
  %i.ii = load i64, ptr %8, align 8, !tbaa !214
  %i.ij = add nsw i64 %i.ii, -1290608000
  %i.ik = sitofp reassoc nsz arcp contract afn i64 %i.ij to double
  %i.il = load i64, ptr %i.dp, align 8, !tbaa !216
  %i.im = sitofp reassoc nsz arcp contract afn i64 %i.il to double
  %i.in = fmul reassoc nnan nsz arcp contract afn double %i.im, f0x3EB0C6F7A0B5ED8D
  %i.io = fadd reassoc nsz arcp contract afn double %i.in, %i.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  store double %i.io, ptr %11, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ip = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %7) #25 ; 0 uses
  %i.iq = load i64, ptr %7, align 8, !tbaa !219
  %i.ir = sitofp reassoc nsz arcp contract afn i64 %i.iq to double
  %i.is = load i64, ptr %i.dq, align 8, !tbaa !221
  %i.it = sitofp reassoc nsz arcp contract afn i64 %i.is to double
  %i.iu = fmul reassoc nnan nsz arcp contract afn double %i.it, f0x3EB0C6F7A0B5ED8D
  %i.iv = fadd reassoc nsz arcp contract afn double %i.iu, %i.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  store double %i.iv, ptr %i.dr, align 8, !tbaa !222
  %i.iw = call i32 @dt_dev_pixelpipe_process(ptr noundef nonnull %2, ptr noundef nonnull %0, i32 noundef %i.ie, i32 noundef %i.ig, i32 noundef %i.hc, i32 noundef %i.he, float noundef %.0225, i32 noundef %4) #25
  %i.ix = atomicrmw xchg ptr %i.w, i32 0 seq_cst, align 4 ; 2 uses
  %i.iy = icmp ne i32 %i.iw, 0
  %i.iz = icmp ne i32 %i.ix, 0                    ; 2 uses
  %i.ja = select i1 %i.iy, i1 true, i1 %i.iz      ; 3 uses
  store i32 %i.ie, ptr %13, align 4, !tbaa !236
  store i32 %i.ig, ptr %i.ds, align 4, !tbaa !237
  store i32 %i.hc, ptr %i.dt, align 4, !tbaa !238
  store i32 %i.he, ptr %i.du, align 4, !tbaa !239
  store float %.0225, ptr %i.dv, align 4, !tbaa !240
  %i.jb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !213
  %i.jc = and i32 %i.jb, 33554432
  %.not263 = icmp eq i32 %i.jc, 0
  br i1 %.not263, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jd = select i1 %i.ja, ptr @.str.24, ptr @.str.25
  %i.je = icmp samesign ugt i32 %.0224318, 5
  %i.jf = select i1 %i.je, ptr @.str.27, ptr @.str.22
  %i.jg = call ptr @dt_dev_pixelpipe_shutdown_to_str(i32 noundef %i.ix) #25
  %i.jh = load i32, ptr %i.dw, align 16, !tbaa !56
  %.not264 = icmp eq i32 %i.jh, 0
  %i.ji = select i1 %.not264, ptr @.str.22, ptr @.str.28
  %i.jj = load i32, ptr %i.br, align 16, !tbaa !172
  %.not265 = icmp eq i32 %i.jj, 0
  %i.jk = select i1 %.not265, ptr @.str.22, ptr @.str.29
  %i.jl = load i32, ptr %i.dx, align 4, !tbaa !229
  %.not266 = icmp eq i32 %i.jl, 0
  %i.jm = select i1 %.not266, ptr @.str.22, ptr @.str.30
  %i.jn = load i32, ptr %i.di, align 8, !tbaa !173 ; 2 uses
  %i.jo = and i32 %i.jn, 8
  %.not267 = icmp eq i32 %i.jo, 0
  %i.jp = select i1 %.not267, ptr @.str.22, ptr @.str.31
  %i.jq = and i32 %i.jn, 4
  %.not268 = icmp eq i32 %i.jq, 0
  %i.jr = select i1 %.not268, ptr @.str.22, ptr @.str.32
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull %i.jd, ptr noundef nonnull %2, ptr noundef null, i32 noundef -2, ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.jf, ptr noundef %i.jg, ptr noundef nonnull %i.ji, ptr noundef nonnull %i.jk, ptr noundef nonnull %i.jm, ptr noundef nonnull %i.jp, ptr noundef nonnull %i.jr) #25
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.js = add nuw nsw i32 %.0224318, 1
  br i1 %i.ja, label %bb.bi, label %.thread300

bb.bi:                                            ; preds = %bb.bh
  %i.jt = load i32, ptr %i.dw, align 16, !tbaa !56
  %.not269 = icmp eq i32 %i.jt, 0
  br i1 %.not269, label %bb.bj, label %.critedge292

bb.bj:                                            ; preds = %bb.bi
  %i.ju = load i32, ptr %i.br, align 16, !tbaa !172
  %.not270 = icmp eq i32 %i.ju, 0
  br i1 %.not270, label %bb.bk, label %.thread298

bb.bk:                                            ; preds = %bb.bj
  %i.jv = load i32, ptr %i.dx, align 4, !tbaa !229
  %.not302 = icmp eq i32 %i.jv, 0
  br i1 %.not302, label %bb.bl, label %.thread298

.critedge292:                                     ; preds = %bb.bi
  call void @dt_dev_pixelpipe_cache_flush(ptr noundef nonnull %2) #25
  store i32 0, ptr %i.dw, align 16, !tbaa !56
  br label %.thread298

.thread298:                                       ; preds = %bb.bj, %bb.bk, %.critedge292
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %12, ptr noundef nonnull @.str.16, i32 noundef 806) #25
  call void (...) @dt_control_busy_leave() #25
  store i32 3, ptr %i.ac, align 4, !tbaa !168
  %i.jw = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.s) #25 ; 0 uses
  br label %bb.cn

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.iz, label %bb.bm, label %.thread300

bb.bm:                                            ; preds = %bb.bl
  %i.jx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !213
  %i.jy = and i32 %i.jx, 50331648
  %or.cond293.not = icmp eq i32 %i.jy, 50331648
  br i1 %or.cond293.not, label %.backedge.sink.split, label %.backedge

.thread300:                                       ; preds = %bb.bl, %bb.bh
  br i1 %.not249, label %.loopexit, label %bb.bn

bb.bn:                                            ; preds = %.thread300
  %i.jz = load i32, ptr %i.di, align 8, !tbaa !173 ; 2 uses
  %.not274 = icmp eq i32 %i.jz, 0
  br i1 %.not274, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ka = icmp ne i32 %i.jz, 8
  %or.cond5 = select i1 %i.ka, i1 true, i1 %i.ja
  br i1 %or.cond5, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.val = load i32, ptr %i.dy, align 4, !tbaa !241
  %i.kb = and i32 %.val, 512
  %.not275 = icmp eq i32 %i.kb, 0
  br i1 %.not275, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.kd = load i32, ptr %i.kc, align 16, !tbaa !242
  %i.ke = getelementptr inbounds nuw i8, ptr %2, i64 148
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !243
  call void @dt_dev_pixelpipe_get_dimensions(ptr noundef nonnull %2, ptr noundef %0, i32 noundef %i.kd, i32 noundef %i.kf, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.do) #25
  store i32 0, ptr %i.di, align 8, !tbaa !173
  br label %.loopexit

bb.br:                                            ; preds = %bb.bo, %bb.bp
  %i.kg = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !213
  %i.kh = and i32 %i.kg, 50331648
  %or.cond294.not = icmp eq i32 %i.kh, 50331648
  br i1 %or.cond294.not, label %.backedge.sink.split, label %.backedge

.backedge.sink.split:                             ; preds = %bb.br, %bb.bm
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.33, ptr noundef nonnull %2, ptr noundef null, i32 noundef -2, ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull @.str.34) #25
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.br, %bb.bm
  %i.ki = load i32, ptr %i.u, align 4, !tbaa !156
  %.not260 = icmp eq i32 %i.ki, 0
  br i1 %.not260, label %bb.ac, label %._crit_edge

.loopexit:                                        ; preds = %.thread300, %bb.bn, %bb.bq
  %i.kj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !213
  %i.kk = and i32 %i.kj, 33554432
  %.not276 = icmp eq i32 %i.kk, 0
  br i1 %.not276, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.loopexit
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.35, ptr noundef nonnull %2, ptr noundef null, i32 noundef -2, ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull @.str.36) #25
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.loopexit
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 1236
  call void (ptr, ptr, ptr, ...) @dt_show_times_f(ptr noundef nonnull %11, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.kl) #25
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 640 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.kn = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #25 ; 0 uses
  %i.ko = load i64, ptr %6, align 8, !tbaa !214
  %i.kp = add nsw i64 %i.ko, -1290608000
  %i.kq = sitofp reassoc nsz arcp contract afn i64 %i.kp to double
  %i.kr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !216
  %i.kt = sitofp reassoc nsz arcp contract afn i64 %i.ks to double
  %i.ku = fmul reassoc nnan nsz arcp contract afn double %i.kt, f0x3EB0C6F7A0B5ED8D
  %i.kv = fadd reassoc nnan nsz arcp contract afn double %i.ku, %i.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.kw = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.kx = load double, ptr %11, align 8, !tbaa !217
  %i.ky = fsub reassoc nsz arcp contract afn double %i.kv, %i.kx
  %i.kz = fmul reassoc nsz arcp contract afn double %i.ky, 2.000000e+02
  %i.la = load i32, ptr %i.km, align 16, !tbaa !187 ; 2 uses
  %i.lb = udiv i32 %i.la, 5
  %i.lc = uitofp reassoc nsz arcp contract afn nneg i32 %i.lb to double
  %14 = fsub reassoc nsz arcp contract afn double %i.kz, %i.lc
  %15 = uitofp reassoc nsz arcp contract afn i32 %i.la to double
  %16 = fadd reassoc nsz arcp contract afn double %14, %15
  %i.ld = fptoui double %16 to i32
  store i32 %i.ld, ptr %i.km, align 16, !tbaa !187
  store i32 2, ptr %i.ac, align 4, !tbaa !168
  store i32 0, ptr %i.br, align 16, !tbaa !172
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.le, align 8, !tbaa !60
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %12, ptr noundef nonnull @.str.16, i32 noundef 861) #25
  call void (...) @dt_control_busy_leave() #25
  %i.lf = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.s) #25 ; 0 uses
  %i.lg = load i32, ptr %0, align 16, !tbaa !53
  %.not277 = icmp ne i32 %i.lg, 0                 ; 2 uses
  br i1 %.not277, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.lh = load i32, ptr %i.u, align 4, !tbaa !156
  %.not278 = icmp eq i32 %i.lh, 0
  %i.li = icmp ne i32 %3, -1
  %spec.select = and i1 %i.li, %.not278
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.lj = phi i1 [ %spec.select, %bb.bu ], [ false, %bb.bt ] ; 2 uses
  br i1 %.not249, label %bb.ce, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lk = icmp ne i32 %3, 21
  %or.cond7 = and i1 %i.lk, %i.lj
  br i1 %or.cond7, label %bb.bx, label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  %i.ll = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !244
  %i.lm = and i32 %i.ll, 1
  %.not285 = icmp eq i32 %i.lm, 0
  br i1 %.not285, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ln = zext i32 %3 to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3316), i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !187
  %.not286 = icmp eq i32 %i.lp, 0
  br i1 %.not286, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !213
  %i.lr = and i32 %i.lq, 1048576
  %.not287 = icmp eq i32 %i.lr, 0
  br i1 %.not287, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.16, i32 noundef 871, ptr noundef nonnull @__FUNCTION__.dt_dev_process_image_job) #25
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca, %bb.by, %bb.bx
  %i.ls = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !245
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.ls, i32 noundef %3) #25
  br label %bb.cn

bb.cc:                                            ; preds = %bb.bw
  %i.lt = load ptr, ptr %1, align 8, !tbaa !207   ; 2 uses
  %.not283 = icmp eq ptr %i.lt, null
  %brmerge = or i1 %.not277, %.not283
  br i1 %brmerge, label %bb.cn, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @dt_control_queue_redraw_widget(ptr noundef nonnull %i.lt) #25
  br label %bb.cn

bb.ce:                                            ; preds = %bb.bv
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.lv = load i32, ptr %i.lu, align 16, !tbaa !51
  %.not279 = icmp eq i32 %i.lv, 0
  br i1 %.not279, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.lx = load ptr, ptr %i.lw, align 16, !tbaa !62
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 604
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !246
  call void @dt_image_update_final_size(i32 noundef %i.lz) #25
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  br i1 %i.lj, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.ma = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !244
  %i.mb = and i32 %i.ma, 1
  %.not280 = icmp eq i32 %i.mb, 0
  br i1 %.not280, label %bb.cl, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mc = zext i32 %3 to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3316), i64 %i.mc
  %i.me = load i32, ptr %i.md, align 4, !tbaa !187
  %.not281 = icmp eq i32 %i.me, 0
  br i1 %.not281, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mf = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !213
  %i.mg = and i32 %i.mf, 1048576
  %.not282 = icmp eq i32 %i.mg, 0
  br i1 %.not282, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.16, i32 noundef 883, ptr noundef nonnull @__FUNCTION__.dt_dev_process_image_job) #25
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck, %bb.ci, %bb.ch
  %i.mh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !245
  call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.mh, i32 noundef %3) #25
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cg
  %i.mi = call reassoc nsz arcp contract afn fastcc double @dt_get_wtime()
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.mi, ptr %i.mj, align 16, !tbaa !247
  %i.mk = load i32, ptr %i.ax, align 16, !tbaa !171
  %i.ml = sext i32 %i.mk to i64
  %i.mm = inttoptr i64 %i.ml to ptr
  call void (ptr, i32, ptr, i32, ptr, ptr, i32, ...) @dt_lua_async_call_alien_internal(ptr noundef nonnull @__FUNCTION__.dt_dev_process_image_job, i32 noundef 892, ptr noundef nonnull @dt_lua_event_trigger_wrapper, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 2, ptr noundef nonnull @.str.43, ptr noundef %i.mm, i32 noundef 4) #25
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cc, %.thread298, %._crit_edge, %bb.cm, %bb.cd, %bb.cb, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.co

bb.co:                                            ; preds = %bb.a, %bb.c, %bb.f, %bb.cn, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_widget_get_type() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @g_type_check_instance_is_a(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @dt_control_busy_enter(...) local_unnamed_addr #4

declare void @dt_mipmap_cache_get_with_caller(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_show_times(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_control_busy_leave(...) local_unnamed_addr #4

declare void @dt_dev_pixelpipe_set_input(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #4

declare void @dt_dev_pixelpipe_cleanup_nodes(ptr noundef) local_unnamed_addr #4

declare void @dt_dev_pixelpipe_create_nodes(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_dev_pixelpipe_cache_flush(ptr noundef) local_unnamed_addr #4

declare void @dt_mipmap_cache_release_with_caller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_dev_pixelpipe_change(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @dt_dev_zoom_move(ptr nofree noundef captures(address) %0, i32 noundef %1, float noundef %2, i32 noundef %3, float noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 9 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !248  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8
  %i.g = select i1 %.not, ptr %i.f, ptr %i.e      ; 11 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !249
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3392
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #25 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2008 ; 3 uses
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.k) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = load <2 x float>, ptr %i.m, align 4, !tbaa !122
  store <2 x float> %i.o, ptr %i.a, align 8, !tbaa !122
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !231
  %i.r = call fastcc i32 @_dev_distort_transform_locked(ptr noundef %i.g, ptr noundef %i.q, i32 noundef 0, double noundef 0.000000e+00, i32 noundef 5, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  %i.s = load <2 x float>, ptr %i.a, align 8, !tbaa !122 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !234 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !250  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !251  ; 8 uses
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !231  ; 9 uses
  %.not23.i = icmp eq ptr %i.z, null              ; 4 uses
  br i1 %.not23.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 156
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !204 ; 2 uses
  %.not24.i = icmp eq i32 %i.ab, 0
  br i1 %.not24.i, label %bb.d, label %bb.c

end_hunk_0
begin_hunk_1_@dt_dev_zoom_move:bb.a
  %i.iq = fcmp reassoc nsz arcp contract afn ogt float %.0.i315, %.sink.i.i
  %i.ir = select reassoc nsz arcp contract afn i1 %i.iq, float %.0.i315, float %.sink.i.i
  %i.is = select reassoc nsz arcp contract afn i1 %.not.i314, float %i.ir, float %i.ip ; 5 uses
  %i.it = fcmp reassoc nsz arcp contract afn olt float %i.is, 1.999900e+00
  br i1 %i.it, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_calculate_new_scroll_zoom_tscale.exit
  %i.iu = fdiv reassoc nsz arcp contract afn float %i.is, %i.cu
  br label %bb.bk

bb.bi:                                            ; preds = %_calculate_new_scroll_zoom_tscale.exit
  %.1223 = zext i1 %i.cv to i32
  %i.iv = fcmp reassoc nsz arcp contract afn ogt float %i.is, 3.999900e+00
  %i.iw = select i1 %i.cv, i32 2, i32 1
  %.2224 = select i1 %i.iv, i32 %i.iw, i32 %.1223
  %i.ix = fcmp reassoc nsz arcp contract afn ogt float %i.is, f0x40FFFF2E
  %i.iy = zext i1 %i.ix to i32
  %.3225 = add nuw nsw i32 %.2224, %i.iy          ; 2 uses
  %i.iz = fpext reassoc nsz arcp contract afn float %i.is to double
  %i.ja = fcmp reassoc nsz arcp contract afn ogt double %i.iz, 1.599990e+01
  br i1 %i.ja, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.jb = add nuw nsw i32 %.3225, 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bh
  %.4226 = phi i32 [ 0, %bb.bh ], [ %i.jb, %bb.bj ], [ %.3225, %bb.bi ]
  %.0220 = phi nsz float [ %i.iu, %bb.bh ], [ 1.000000e+00, %bb.bj ], [ 1.000000e+00, %bb.bi ] ; 3 uses
  %.1 = phi i32 [ 3, %bb.bh ], [ 2, %bb.bj ], [ 2, %bb.bi ]
  %i.jc = fadd reassoc nsz arcp contract afn float %.0220, -1.000000e+00
  %i.jd = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.jc)
  %i.je = fcmp reassoc nsz arcp contract afn olt float %i.jd, 1.000000e-03
  %.2 = select i1 %i.je, i32 2, i32 %.1
  %i.jf = fsub reassoc nsz arcp contract afn float %.0220, %.1.i310
  %i.jg = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.jf)
  %i.jh = fcmp reassoc nsz arcp contract afn olt float %i.jg, 1.000000e-03
  %.3 = select i1 %i.jh, i32 0, i32 %.2
  br label %bb.bp

bb.bl:                                            ; preds = %bb.at
  %i.ji = getelementptr inbounds nuw i8, ptr %i.g, i64 2188
  store i32 %i.w, ptr %i.ji, align 4, !tbaa !252
  %i.jj = getelementptr inbounds nuw i8, ptr %i.g, i64 2192
  store i32 %i.y, ptr %i.jj, align 16, !tbaa !253
  %i.jk = getelementptr inbounds nuw i8, ptr %i.g, i64 2196
  store <2 x float> %i.az, ptr %i.jk, align 4, !tbaa !122
  br label %bb.bp

bb.bm:                                            ; preds = %bb.at
  %i.jl = getelementptr inbounds nuw i8, ptr %i.g, i64 2188
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !252
  %i.jn = getelementptr inbounds nuw i8, ptr %i.g, i64 2192
  %i.jo = load i32, ptr %i.jn, align 16, !tbaa !253
  %i.jp = getelementptr inbounds nuw i8, ptr %i.g, i64 2196
  %i.jq = load <2 x float>, ptr %i.jp, align 4, !tbaa !122
  br label %bb.bp

bb.bn:                                            ; preds = %bb.at
  %i.jr = icmp eq i32 %1, 3
  %i.js = icmp ne i32 %6, 0
  %or.cond8 = and i1 %i.jr, %i.js
  br i1 %or.cond8, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jt = call reassoc nsz arcp contract afn float @dt_dev_get_zoom_scale(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %i.ju = fmul reassoc nsz arcp contract afn float %.1.i, %i.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.jv = fmul reassoc nsz arcp contract afn float %i.jt, %i.cu
  call fastcc void @_zoom_constraint_bounds(i32 noundef 1, float noundef %i.ju, float noundef %i.jv, ptr noundef %i.b, ptr noundef %i.c)
  %i.jw = fmul reassoc nsz arcp contract afn float %2, %i.cu ; 3 uses
  %i.jx = load float, ptr %i.c, align 4, !tbaa !122 ; 2 uses
  %i.jy = fcmp reassoc nsz arcp contract afn ogt float %i.jw, %i.jx
  %i.jz = load float, ptr %i.b, align 4           ; 2 uses
  %i.ka = fcmp reassoc nsz arcp contract afn olt float %i.jw, %i.jz
  %i.kb = select reassoc nsz arcp contract afn i1 %i.ka, float %i.jz, float %i.jw
  %i.kc = select reassoc nsz arcp contract afn i1 %i.jy, float %i.jx, float %i.kb
  %i.kd = fdiv reassoc nsz arcp contract afn float %i.kc, %i.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.bp

bb.bp:                                            ; preds = %dt_dev_get_zoom_scale.exit302, %bb.as, %bb.r, %bb.s, %bb.bl, %bb.bn, %bb.bo, %bb.bm, %bb.bk
  %.5227 = phi i32 [ %3, %bb.bn ], [ 0, %bb.r ], [ %.4226, %bb.bk ], [ %3, %bb.bl ], [ %i.jo, %bb.bm ], [ %3, %bb.bo ], [ %i.cz, %bb.s ], [ %.0222, %bb.as ], [ %.0222, %dt_dev_get_zoom_scale.exit302 ] ; 2 uses
  %.1221 = phi nsz float [ %2, %bb.bn ], [ %2, %bb.r ], [ %.0220, %bb.bk ], [ %i.u, %bb.bl ], [ %i.u, %bb.bm ], [ %i.kd, %bb.bo ], [ %2, %bb.s ], [ %i.fz, %bb.as ], [ %.1.i299, %dt_dev_get_zoom_scale.exit302 ] ; 2 uses
  %.4 = phi i32 [ %1, %bb.bn ], [ 2, %bb.r ], [ %.3, %bb.bk ], [ 0, %bb.bl ], [ %i.jm, %bb.bm ], [ 3, %bb.bo ], [ 2, %bb.s ], [ %.0, %bb.as ], [ %.0, %dt_dev_get_zoom_scale.exit302 ] ; 3 uses
  %i.ke = phi <2 x float> [ %i.az, %bb.bn ], [ %i.az, %bb.r ], [ %i.az, %bb.bk ], [ %i.az, %bb.bl ], [ %i.jq, %bb.bm ], [ %i.az, %bb.bo ], [ %i.az, %bb.s ], [ %i.az, %bb.as ], [ %i.az, %dt_dev_get_zoom_scale.exit302 ]
  store i32 %.5227, ptr %i.x, align 8, !tbaa !251
  store float %.1221, ptr %i.t, align 4, !tbaa !234
  store i32 %.4, ptr %i.v, align 4, !tbaa !250
  br label %bb.bq

bb.bq:                                            ; preds = %bb.p, %dt_dev_get_zoom_scale.exit, %bb.bp
  %i.kf = phi float [ %.1221, %bb.bp ], [ %i.u, %dt_dev_get_zoom_scale.exit ], [ %i.u, %bb.p ]
  %i.kg = phi i32 [ %.5227, %bb.bp ], [ %i.y, %dt_dev_get_zoom_scale.exit ], [ %i.y, %bb.p ]
  %i.kh = phi i32 [ %.4, %bb.bp ], [ %i.w, %dt_dev_get_zoom_scale.exit ], [ %i.w, %bb.p ]
  %.0228 = phi i32 [ %i.y, %bb.bp ], [ %i.y, %dt_dev_get_zoom_scale.exit ], [ %spec.select, %bb.p ]
  %.5 = phi i32 [ %.4, %bb.bp ], [ %1, %dt_dev_get_zoom_scale.exit ], [ 5, %bb.p ] ; 3 uses
  %i.ki = phi <2 x float> [ %i.ke, %bb.bp ], [ %i.ci, %dt_dev_get_zoom_scale.exit ], [ %i.cq, %bb.p ] ; 2 uses
  %i.kj = icmp ne i32 %.5, 0
  %i.kk = icmp ne <2 x i32> %i.aw, zeroinitializer ; 2 uses
  %i.kl = extractelement <2 x i1> %i.kk, i64 0
  %or.cond11 = select i1 %i.kj, i1 %i.kl, i1 false
  %i.km = extractelement <2 x i1> %i.kk, i64 1
  %or.cond14 = select i1 %or.cond11, i1 %i.km, i1 false
  br i1 %or.cond14, label %bb.br, label %bb.ci

bb.br:                                            ; preds = %bb.bq
  %i.kn = shl nuw i32 1, %i.kg
  %i.ko = load ptr, ptr %i.p, align 8, !tbaa !231 ; 3 uses
  %.not23.i.i317 = icmp eq ptr %i.ko, null
  br i1 %.not23.i.i317, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 156
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !204 ; 2 uses
  %.not24.i.i318 = icmp eq i32 %i.kq, 0
  br i1 %.not24.i.i318, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 160
  %i.ks = load i32, ptr %i.kr, align 16, !tbaa !205
  br label %dt_dev_get_processed_size.exit.i319

bb.bu:                                            ; preds = %bb.bs, %bb.br
  %i.kt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !232
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 96
  %i.kv = load ptr, ptr %i.ku, align 16, !tbaa !62 ; 4 uses
  %.not25.i.i324 = icmp eq ptr %i.kv, null
  br i1 %.not25.i.i324, label %dt_dev_get_processed_size.exit.i319, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 156
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !204 ; 2 uses
  %.not26.i.i325 = icmp eq i32 %i.kx, 0
  br i1 %.not26.i.i325, label %dt_dev_get_processed_size.exit.i319, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 152
  %i.kz = load float, ptr %i.ky, align 8, !tbaa !233 ; 2 uses
  %i.la = sitofp reassoc nsz arcp contract afn i32 %i.kx to float
  %i.lb = fmul reassoc nsz arcp contract afn float %i.kz, %i.la
  %i.lc = fptosi float %i.lb to i32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kv, i64 160
  %i.le = load i32, ptr %i.ld, align 16, !tbaa !205
  %i.lf = sitofp reassoc nsz arcp contract afn i32 %i.le to float
  %i.lg = fmul reassoc nsz arcp contract afn float %i.kz, %i.lf
  %i.lh = fptosi float %i.lg to i32
  br label %dt_dev_get_processed_size.exit.i319

dt_dev_get_processed_size.exit.i319:              ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt
  %.116.i320 = phi i32 [ %i.kq, %bb.bt ], [ 0, %bb.bu ], [ 0, %bb.bv ], [ %i.lc, %bb.bw ]
  %.014.i321 = phi i32 [ %i.ks, %bb.bt ], [ 0, %bb.bu ], [ 0, %bb.bv ], [ %i.lh, %bb.bw ]
  %i.li = sitofp reassoc nsz arcp contract afn i32 %.116.i320 to float
  %i.lj = load <2 x i32>, ptr %i.bu, align 8, !tbaa !187
  %i.lk = sitofp <2 x i32> %i.lj to <2 x float>   ; 3 uses
  %i.ll = extractelement <2 x float> %i.lk, i64 0 ; 2 uses
  %i.lm = fdiv reassoc nsz arcp contract afn float %i.ll, %i.li ; 2 uses
  %i.ln = sitofp reassoc nsz arcp contract afn i32 %.014.i321 to float
  %i.lo = extractelement <2 x float> %i.lk, i64 1 ; 2 uses
  %i.lp = fdiv reassoc nsz arcp contract afn float %i.lo, %i.ln ; 2 uses
  switch i32 %i.kh, label %dt_dev_get_zoom_scale.exit326 [
    i32 0, label %bb.bx
    i32 1, label %bb.by
    i32 2, label %bb.bz
  ]

bb.bx:                                            ; preds = %dt_dev_get_processed_size.exit.i319
  %i.lq = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.lm, float %i.lp)
  br label %dt_dev_get_zoom_scale.exit326

bb.by:                                            ; preds = %dt_dev_get_processed_size.exit.i319
  %i.lr = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lm, float %i.lp)
  br label %dt_dev_get_zoom_scale.exit326

bb.bz:                                            ; preds = %dt_dev_get_processed_size.exit.i319
  %i.ls = sitofp reassoc nsz arcp contract afn i32 %i.kn to float
  br label %dt_dev_get_zoom_scale.exit326

dt_dev_get_zoom_scale.exit326:                    ; preds = %dt_dev_get_processed_size.exit.i319, %bb.bx, %bb.by, %bb.bz
  %.0.i322 = phi nsz float [ %i.ls, %bb.bz ], [ %i.lq, %bb.bx ], [ %i.lr, %bb.by ], [ %i.kf, %dt_dev_get_processed_size.exit.i319 ] ; 2 uses
  %i.lt = fcmp reassoc nsz arcp contract afn une float %.0.i322, 0.000000e+00
  %.1.i323 = select nsz i1 %i.lt, float %.0.i322, float 1.000000e+00 ; 3 uses
  %i.lu = extractelement <2 x float> %i.ax, i64 0
  %i.lv = fmul reassoc nsz arcp contract afn float %.1.i323, %i.lu
  %i.lw = fdiv reassoc nsz arcp contract afn float %i.ll, %i.lv ; 2 uses
  %i.lx = extractelement <2 x float> %i.ax, i64 1
  %i.ly = fmul reassoc nsz arcp contract afn float %.1.i323, %i.lx
  %i.lz = fdiv reassoc nsz arcp contract afn float %i.lo, %i.ly ; 2 uses
  %i.ma = fcmp reassoc nsz arcp contract afn oge float %4, 0.000000e+00
  %i.mb = fcmp reassoc nsz arcp contract afn oge float %5, 0.000000e+00
  %or.cond17 = and i1 %i.ma, %i.mb
  br i1 %or.cond17, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %dt_dev_get_zoom_scale.exit326
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !254
  %i.me = sitofp reassoc nsz arcp contract afn i32 %i.md to float
  %i.mf = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.lk, splat (float -5.000000e-01)
  %i.mg = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, %i.mf
  %i.mh = insertelement <2 x float> poison, float %i.me, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = fsub reassoc nsz arcp contract afn <2 x float> %i.mg, %i.mi
  %i.mk = fdiv reassoc nsz arcp contract afn <2 x float> %i.mj, %i.ax ; 2 uses
  %i.ml = insertelement <2 x float> poison, float %.1.i, i64 0
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mn = fdiv reassoc nsz arcp contract afn <2 x float> %i.mk, %i.mm
  %i.mo = insertelement <2 x float> poison, float %.1.i323, i64 0
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mq = fdiv reassoc nsz arcp contract afn <2 x float> %i.mk, %i.mp
  %i.mr = fsub reassoc nsz arcp contract afn <2 x float> %i.ki, %i.mq
  %i.ms = fadd reassoc nsz arcp contract afn <2 x float> %i.mr, %i.mn
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %dt_dev_get_zoom_scale.exit326
  %i.mt = phi <2 x float> [ %i.ms, %bb.ca ], [ %i.ki, %dt_dev_get_zoom_scale.exit326 ] ; 2 uses
  %i.mu = fcmp reassoc nsz arcp contract afn ogt float %i.lw, 1.000000e+00
  br i1 %i.mu, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mv = extractelement <2 x float> %i.mt, i64 0
  %i.mw = fpext reassoc nsz arcp contract afn float %i.mv to double ; 3 uses
  %i.mx = fmul reassoc nsz arcp contract afn float %i.lw, 5.000000e-01
  %i.my = fpext reassoc nsz arcp contract afn float %i.mx to double ; 2 uses
  %i.mz = fsub reassoc nsz arcp contract afn double 5.000000e-01, %i.my ; 2 uses
  %i.na = fcmp reassoc nsz arcp contract afn olt double %i.mz, %i.mw
  br i1 %i.na, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nb = fadd reassoc nsz arcp contract afn double %i.my, -5.000000e-01 ; 2 uses
  %i.nc = fcmp reassoc nsz arcp contract afn ogt double %i.nb, %i.mw
  %. = select reassoc nsz arcp contract afn i1 %i.nc, double %i.nb, double %i.mw
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.nd = phi reassoc nsz arcp contract afn double [ 0.000000e+00, %bb.cb ], [ %i.mz, %bb.cc ], [ %., %bb.cd ]
  %i.ne = fptrunc reassoc nsz arcp contract afn double %i.nd to float
  %i.nf = fcmp reassoc nsz arcp contract afn ogt float %i.lz, 1.000000e+00
  br i1 %i.nf, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ng = extractelement <2 x float> %i.mt, i64 1
  %i.nh = fpext reassoc nsz arcp contract afn float %i.ng to double ; 3 uses
  %i.ni = fmul reassoc nsz arcp contract afn float %i.lz, 5.000000e-01
  %i.nj = fpext reassoc nsz arcp contract afn float %i.ni to double ; 2 uses
  %i.nk = fsub reassoc nsz arcp contract afn double 5.000000e-01, %i.nj ; 2 uses
  %i.nl = fcmp reassoc nsz arcp contract afn olt double %i.nk, %i.nh
  br i1 %i.nl, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nm = fadd reassoc nsz arcp contract afn double %i.nj, -5.000000e-01 ; 2 uses
  %i.nn = fcmp reassoc nsz arcp contract afn ogt double %i.nm, %i.nh
  %.273 = select reassoc nsz arcp contract afn i1 %i.nn, double %i.nm, double %i.nh
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.no = phi reassoc nsz arcp contract afn double [ 0.000000e+00, %bb.ce ], [ %i.nk, %bb.cf ], [ %.273, %bb.cg ]
  %i.np = fptrunc reassoc nsz arcp contract afn double %i.no to float
  %i.nq = fadd reassoc nsz arcp contract afn float %i.ne, 5.000000e-01
  %i.nr = fadd reassoc nsz arcp contract afn float %i.np, 5.000000e-01
  br label %bb.ci

bb.ci:                                            ; preds = %bb.bq, %bb.ch
  %.3236 = phi float [ %i.nr, %bb.ch ], [ 5.000000e-01, %bb.bq ]
  %.3232 = phi float [ %i.nq, %bb.ch ], [ 5.000000e-01, %bb.bq ]
  %i.ns = extractelement <2 x float> %i.ax, i64 0
  %i.nt = fmul reassoc nsz arcp contract afn float %.3232, %i.ns ; 2 uses
  store float %i.nt, ptr %i.a, align 8, !tbaa !122
  %i.nu = extractelement <2 x float> %i.ax, i64 1
  %i.nv = fmul reassoc nsz arcp contract afn float %.3236, %i.nu ; 2 uses
  store float %i.nv, ptr %i.n, align 4, !tbaa !122
  %i.nw = icmp ne i32 %.5, 5
  %i.nx = fcmp reassoc nsz arcp contract afn une float %4, 0.000000e+00 ; 2 uses
  %i.ny = fcmp reassoc nsz arcp contract afn une float %5, 0.000000e+00 ; 2 uses
  %i.nz = or i1 %i.ny, %i.nw
  %i.oa = or i1 %i.nx, %i.nz
  %i.ob = select i1 %i.oa, float 5.000000e-01, float 3.000000e+00
  %i.oc = extractelement <2 x float> %i.s, i64 0
  %i.od = fsub reassoc nsz arcp contract afn float %i.nt, %i.oc
  %i.oe = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.od)
  %i.of = extractelement <2 x float> %i.s, i64 1
  %i.og = fsub reassoc nsz arcp contract afn float %i.nv, %i.of
  %i.oh = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.og)
  %i.oi = fadd reassoc nsz arcp contract afn float %i.oe, %i.oh
  %i.oj = fcmp reassoc nsz arcp contract afn ogt float %i.oi, %i.ob
  br i1 %i.oj, label %.critedge277, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ok = icmp eq i32 %.5, 5
  %i.ol = or i1 %i.nx, %i.ny
  %or.cond279 = and i1 %i.ol, %i.ok
  br i1 %or.cond279, label %.critedge277, label %.critedge

.critedge277:                                     ; preds = %bb.ci, %bb.cj
  %i.om = load ptr, ptr %i.p, align 8, !tbaa !231
  %i.on = call fastcc i32 @_dev_distort_transform_locked(ptr noundef nonnull %i.g, ptr noundef %i.om, i32 noundef 1, double noundef 0.000000e+00, i32 noundef 5, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  %i.oo = load <2 x float>, ptr %i.a, align 8, !tbaa !122
  store <2 x float> %i.oo, ptr %i.m, align 4, !tbaa !122
  %i.op = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #25 ; 0 uses
  %i.oq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !249
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 3392
  %i.os = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.or) #25 ; 0 uses
  br label %bb.cm

.critedge:                                        ; preds = %bb.cj
  %i.ot = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.k) #25 ; 0 uses
  %i.ou = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !249
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 3392
  %i.ow = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ov) #25 ; 0 uses
  %i.ox = load float, ptr %i.t, align 4, !tbaa !234
  %i.oy = fsub reassoc nsz arcp contract afn float %i.u, %i.ox
  %i.oz = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.oy)
  %i.pa = fcmp reassoc nsz arcp contract afn olt float %i.oz, f0x3C23D70A
  br i1 %i.pa, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %.critedge
  %i.pb = load i32, ptr %i.v, align 4, !tbaa !250
  %i.pc = icmp eq i32 %i.w, %i.pb
  br i1 %i.pc, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.pd = load i32, ptr %i.x, align 8, !tbaa !251
  %i.pe = icmp eq i32 %.0228, %i.pd
  br i1 %i.pe, label %bb.cs, label %bb.cm

bb.cm:                                            ; preds = %.critedge277, %.critedge, %bb.ck, %bb.cl
  %i.pf = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !213 ; 2 uses
  %i.pg = and i32 %i.pf, 33554434
  %.not268 = icmp eq i32 %i.pg, 0
  %i.ph = and i32 %i.pf, 16777216
  %.not269.not = icmp eq i32 %i.ph, 0
  %or.cond274 = or i1 %.not268, %.not269.not
  br i1 %or.cond274, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pi = load ptr, ptr %i.p, align 8, !tbaa !231
  %i.pj = load ptr, ptr %0, align 8, !tbaa !207
  %.not270 = icmp eq ptr %i.pj, null
  %i.pk = select i1 %.not270, ptr @.str.22, ptr @.str.83
  %i.pl = getelementptr inbounds nuw i8, ptr %i.g, i64 2680
  %i.pm = icmp eq ptr %0, %i.pl
  %i.pn = select i1 %i.pm, ptr @.str.84, ptr @.str.22
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.82, ptr noundef %i.pi, ptr noundef null, i32 noundef -2, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.pk, ptr noundef nonnull %i.pn) #25
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.po = load ptr, ptr %i.p, align 8, !tbaa !231
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 344 ; 2 uses
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !173
  %i.pr = or i32 %i.pq, 8
  store i32 %i.pr, ptr %i.pp, align 8, !tbaa !173
  %i.ps = load ptr, ptr %0, align 8, !tbaa !207   ; 2 uses
  %.not271 = icmp eq ptr %i.ps, null
  br i1 %.not271, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @dt_control_queue_redraw_widget(ptr noundef nonnull %i.ps) #25
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.pt = getelementptr inbounds nuw i8, ptr %i.g, i64 2680
  %i.pu = icmp eq ptr %0, %i.pt
  br i1 %i.pu, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call void @dt_control_navigation_redraw() #25
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_dev_get_viewport_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 5 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !249
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3392
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.c) #25 ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !250
  store i32 %i.f, ptr %1, align 4, !tbaa !187
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not23 = icmp eq ptr %2, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !251
  store i32 %i.h, ptr %2, align 4, !tbaa !187
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_1
begin_hunk_2_@_zoom_constraint_bounds:bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.n = or i1 %.not33, %i.f
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float 1.600000e+01, float 2.000000e+00
  store float %i.o, ptr %4, align 4, !tbaa !122
  %i.p = fcmp reassoc nsz arcp contract afn olt float %1, %2
  %i.q = or i1 %.not33, %i.p
  %i.r = select reassoc nsz arcp contract afn i1 %i.q, float %i.c, float %2
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.s = or i1 %.not33, %i.f
  %i.t = select reassoc nsz arcp contract afn i1 %i.s, float 1.600000e+01, float %2
  store float %i.t, ptr %4, align 4, !tbaa !122
  br label %bb.e

default.unreachable34:                            ; preds = %bb.a
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi float [ %i.c, %bb.d ], [ %i.r, %bb.c ], [ %i.m, %bb.b ]
  store float %.sink, ptr %3, align 4, !tbaa !122
  ret void
}

declare void @dt_control_navigation_redraw() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @dt_dev_get_pointer_zoom_pos(ptr nofree noundef readonly captures(address_is_null) %0, float noundef %1, float noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !122
  call void @dt_dev_get_viewport_params(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %dt_dev_get_processed_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !231  ; 5 uses
  %.not23.i = icmp eq ptr %i.f, null              ; 2 uses
  br i1 %.not23.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  %i.h = load i32, ptr %i.g, align 4, !tbaa !204  ; 2 uses
  %.not24.i = icmp eq i32 %i.h, 0
  br i1 %.not24.i, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.j = load i32, ptr %i.i, align 16, !tbaa !205
  %i.k = load i32, ptr %i.a, align 4, !tbaa !187
  %i.l = load i32, ptr %i.b, align 4, !tbaa !187
  %i.m = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.n = insertelement <2 x i32> %i.m, i32 %i.j, i64 1
  br label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !232
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !62  ; 4 uses
  %.not25.i = icmp eq ptr %i.q, null
  br i1 %.not25.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 156
  %i.s = load i32, ptr %i.r, align 4, !tbaa !204  ; 2 uses
  %.not26.i = icmp eq i32 %i.s, 0
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.u = load float, ptr %i.t, align 8, !tbaa !233
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.w = load i32, ptr %i.v, align 16, !tbaa !205
  %i.x = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %i.y = insertelement <2 x i32> %i.x, i32 %i.w, i64 1
  %i.z = sitofp <2 x i32> %i.y to <2 x float>
  %i.aa = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul reassoc nsz arcp contract afn <2 x float> %i.ab, %i.z
  %i.ad = fptosi <2 x float> %i.ac to <2 x i32>
  br label %bb.g

dt_dev_get_processed_size.exit:                   ; preds = %bb.a
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !187
  %i.af = load i32, ptr %i.b, align 4, !tbaa !187
  br label %dt_dev_get_processed_size.exit.i

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.e
  %i.ag = phi <2 x i32> [ zeroinitializer, %bb.d ], [ %i.ad, %bb.f ], [ zeroinitializer, %bb.e ] ; 2 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !187 ; 2 uses
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !187 ; 2 uses
  br i1 %.not23.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.aj = phi i32 [ %i.l, %.thread ], [ %i.ai, %bb.g ] ; 2 uses
  %i.ak = phi i32 [ %i.k, %.thread ], [ %i.ah, %bb.g ] ; 2 uses
  %i.al = phi <2 x i32> [ %i.n, %.thread ], [ %i.ag, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 156
  %i.an = load i32, ptr %i.am, align 4, !tbaa !204 ; 2 uses
  %.not24.i.i = icmp eq i32 %i.an, 0
  br i1 %.not24.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.ap = load i32, ptr %i.ao, align 16, !tbaa !205
  br label %dt_dev_get_processed_size.exit.i

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.aq = phi i32 [ %i.aj, %bb.h ], [ %i.ai, %bb.g ] ; 3 uses
  %i.ar = phi i32 [ %i.ak, %bb.h ], [ %i.ah, %bb.g ] ; 3 uses
  %i.as = phi <2 x i32> [ %i.al, %bb.h ], [ %i.ag, %bb.g ] ; 3 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !232
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !62 ; 4 uses
  %.not25.i.i = icmp eq ptr %i.av, null
  br i1 %.not25.i.i, label %dt_dev_get_processed_size.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 156
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !204 ; 2 uses
  %.not26.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not26.i.i, label %dt_dev_get_processed_size.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  %i.az = load float, ptr %i.ay, align 8, !tbaa !233 ; 2 uses
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.ax to float
  %i.bb = fmul reassoc nsz arcp contract afn float %i.az, %i.ba
  %i.bc = fptosi float %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %i.be = load i32, ptr %i.bd, align 16, !tbaa !205
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.be to float
  %i.bg = fmul reassoc nsz arcp contract afn float %i.az, %i.bf
  %i.bh = fptosi float %i.bg to i32
  br label %dt_dev_get_processed_size.exit.i

dt_dev_get_processed_size.exit.i:                 ; preds = %dt_dev_get_processed_size.exit, %bb.l, %bb.k, %bb.j, %bb.i
  %.pn = phi i32 [ %i.af, %dt_dev_get_processed_size.exit ], [ %i.aq, %bb.j ], [ %i.aq, %bb.k ], [ %i.aq, %bb.l ], [ %i.aj, %bb.i ]
  %i.bi = phi i32 [ %i.ae, %dt_dev_get_processed_size.exit ], [ %i.ar, %bb.j ], [ %i.ar, %bb.k ], [ %i.ar, %bb.l ], [ %i.ak, %bb.i ] ; 2 uses
  %.116.i = phi i32 [ 0, %dt_dev_get_processed_size.exit ], [ 0, %bb.j ], [ 0, %bb.k ], [ %i.bc, %bb.l ], [ %i.an, %bb.i ]
  %.014.i = phi i32 [ 0, %dt_dev_get_processed_size.exit ], [ 0, %bb.j ], [ 0, %bb.k ], [ %i.bh, %bb.l ], [ %i.ap, %bb.i ]
  %i.bj = phi <2 x i32> [ zeroinitializer, %dt_dev_get_processed_size.exit ], [ %i.as, %bb.j ], [ %i.as, %bb.k ], [ %i.as, %bb.l ], [ %i.al, %bb.i ]
  %i.bk = shl nuw i32 1, %.pn                     ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %.116.i to float
  %i.bn = load <2 x i32>, ptr %i.bl, align 8, !tbaa !187
  %i.bo = sitofp <2 x i32> %i.bn to <2 x float>   ; 3 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0 ; 2 uses
  %i.bq = fdiv reassoc nsz arcp contract afn float %i.bp, %i.bm ; 2 uses
  %i.br = sitofp reassoc nsz arcp contract afn i32 %.014.i to float
  %i.bs = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.bt = fdiv reassoc nsz arcp contract afn float %i.bs, %i.br ; 2 uses
  switch i32 %i.bi, label %bb.p [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.m:                                             ; preds = %dt_dev_get_processed_size.exit.i
  %i.bu = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bq, float %i.bt)
  br label %bb.q

bb.n:                                             ; preds = %dt_dev_get_processed_size.exit.i
  %i.bv = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bq, float %i.bt)
  br label %bb.q

bb.o:                                             ; preds = %dt_dev_get_processed_size.exit.i
  %i.bw = sitofp reassoc nsz arcp contract afn i32 %i.bk to float
  br label %bb.q

bb.p:                                             ; preds = %dt_dev_get_processed_size.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.by = load float, ptr %i.bx, align 4, !tbaa !234
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.0.i18 = phi nsz float [ %i.by, %bb.p ], [ %i.bu, %bb.m ], [ %i.bv, %bb.n ], [ %i.bw, %bb.o ] ; 2 uses
  %i.bz = fcmp reassoc nsz arcp contract afn une float %.0.i18, 0.000000e+00
  %.1.i = select nsz i1 %i.bz, float %.0.i18, float 1.000000e+00
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !254
  %i.cc = sitofp reassoc nsz arcp contract afn i32 %i.cb to float
  %i.cd = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.bo, splat (float -5.000000e-01)
  %i.ce = sitofp <2 x i32> %i.bj to <2 x float>
  %i.cf = load float, ptr %i.c, align 4, !tbaa !122
  %i.cg = load float, ptr %i.d, align 4, !tbaa !122
  %i.ch = insertelement <2 x float> poison, float %1, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %2, i64 1
  %i.cj = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, %i.cd
  %i.ck = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fsub reassoc nsz arcp contract afn <2 x float> %i.cj, %i.cl
  %i.cn = insertelement <2 x float> poison, float %.1.i, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.ce
  %i.cq = fdiv reassoc nsz arcp contract afn <2 x float> %i.cm, %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.cg, i64 1
  %i.ct = fadd reassoc nsz arcp contract afn <2 x float> %i.cq, %i.cs
  %i.cu = fadd reassoc nsz arcp contract afn <2 x float> %i.ct, splat (float 5.000000e-01) ; 2 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 0
  store float %i.cv, ptr %3, align 4, !tbaa !122
  %i.cw = extractelement <2 x float> %i.cu, i64 1
  store float %i.cw, ptr %4, align 4, !tbaa !122
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !231 ; 3 uses
  %.not23.i.i20 = icmp eq ptr %i.cy, null
  br i1 %.not23.i.i20, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 156
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !204 ; 2 uses
  %.not24.i.i21 = icmp eq i32 %i.da, 0
  br i1 %.not24.i.i21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 160
  %i.dc = load i32, ptr %i.db, align 16, !tbaa !205
  br label %dt_dev_get_processed_size.exit.i22

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !232
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 96
  %i.df = load ptr, ptr %i.de, align 16, !tbaa !62 ; 4 uses
  %.not25.i.i27 = icmp eq ptr %i.df, null
  br i1 %.not25.i.i27, label %dt_dev_get_processed_size.exit.i22, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 156
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !204 ; 2 uses
  %.not26.i.i28 = icmp eq i32 %i.dh, 0
  br i1 %.not26.i.i28, label %dt_dev_get_processed_size.exit.i22, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 152
  %i.dj = load float, ptr %i.di, align 8, !tbaa !233 ; 2 uses
  %i.dk = sitofp reassoc nsz arcp contract afn i32 %i.dh to float
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dj, %i.dk
  %i.dm = fptosi float %i.dl to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 160
  %i.do = load i32, ptr %i.dn, align 16, !tbaa !205
  %i.dp = sitofp reassoc nsz arcp contract afn i32 %i.do to float
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dj, %i.dp
  %i.dr = fptosi float %i.dq to i32
  br label %dt_dev_get_processed_size.exit.i22

dt_dev_get_processed_size.exit.i22:               ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.116.i23 = phi i32 [ %i.da, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ], [ %i.dm, %bb.v ]
  %.014.i24 = phi i32 [ %i.dc, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ], [ %i.dr, %bb.v ]
  %i.ds = sitofp reassoc nsz arcp contract afn i32 %.116.i23 to float
  %i.dt = fdiv reassoc nsz arcp contract afn float %i.bp, %i.ds ; 2 uses
  %i.du = sitofp reassoc nsz arcp contract afn i32 %.014.i24 to float
  %i.dv = fdiv reassoc nsz arcp contract afn float %i.bs, %i.du ; 2 uses
  switch i32 %i.bi, label %bb.z [
    i32 0, label %bb.w
    i32 1, label %bb.x
    i32 2, label %bb.y
  ]

bb.w:                                             ; preds = %dt_dev_get_processed_size.exit.i22
  %i.dw = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dt, float %i.dv)
  br label %dt_dev_get_zoom_scale.exit29

bb.x:                                             ; preds = %dt_dev_get_processed_size.exit.i22
  %i.dx = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dt, float %i.dv)
  br label %dt_dev_get_zoom_scale.exit29

bb.y:                                             ; preds = %dt_dev_get_processed_size.exit.i22
  %i.dy = sitofp reassoc nsz arcp contract afn i32 %i.bk to float
  br label %dt_dev_get_zoom_scale.exit29

bb.z:                                             ; preds = %dt_dev_get_processed_size.exit.i22
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !234
  br label %dt_dev_get_zoom_scale.exit29

dt_dev_get_zoom_scale.exit29:                     ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %.0.i25 = phi nsz float [ %i.ea, %bb.z ], [ %i.dw, %bb.w ], [ %i.dx, %bb.x ], [ %i.dy, %bb.y ] ; 2 uses
  %i.eb = fcmp reassoc nsz arcp contract afn une float %.0.i25, 0.000000e+00
  %.1.i26 = select nsz i1 %i.eb, float %.0.i25, float 1.000000e+00
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !232
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 96
  %i.ee = load ptr, ptr %i.ed, align 16, !tbaa !62
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 152
  %i.eg = load float, ptr %i.ef, align 8, !tbaa !233
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %.1.i26
  store float %i.eh, ptr %5, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_dev_get_pointer_zoom_pos_from_bounds(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !249
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3392
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.b) #25 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !250  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !251  ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !249
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3392
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.i) #25 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !231  ; 7 uses
  %.not23.i = icmp eq ptr %i.l, null              ; 3 uses
  br i1 %.not23.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 156
  %i.n = load i32, ptr %i.m, align 4, !tbaa !204  ; 2 uses
  %.not24.i = icmp eq i32 %i.n, 0
  br i1 %.not24.i, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.p = load i32, ptr %i.o, align 16, !tbaa !205
  %i.q = shl nuw i32 1, %i.g
  %i.r = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.s = insertelement <2 x i32> %i.r, i32 %i.p, i64 1
  br label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !232
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !62  ; 4 uses
  %.not25.i = icmp eq ptr %i.v, null
  br i1 %.not25.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 156
  %i.x = load i32, ptr %i.w, align 4, !tbaa !204  ; 2 uses
  %.not26.i = icmp eq i32 %i.x, 0
  br i1 %.not26.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.z = load float, ptr %i.y, align 8, !tbaa !233
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !205
  %i.ac = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.ad = insertelement <2 x i32> %i.ac, i32 %i.ab, i64 1
  %i.ae = sitofp <2 x i32> %i.ad to <2 x float>
  %i.af = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fmul reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ae
  %i.ai = fptosi <2 x float> %i.ah to <2 x i32>
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %i.aj = phi <2 x i32> [ zeroinitializer, %bb.d ], [ zeroinitializer, %bb.c ], [ %i.ai, %bb.e ] ; 2 uses
  %i.ak = shl nuw i32 1, %i.g                     ; 2 uses
  br i1 %.not23.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.al = phi i32 [ %i.q, %.thread ], [ %i.ak, %bb.f ] ; 2 uses
  %i.am = phi <2 x i32> [ %i.s, %.thread ], [ %i.aj, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 156
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !204 ; 2 uses
  %.not24.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not24.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.aq = load i32, ptr %i.ap, align 16, !tbaa !205
  br label %dt_dev_get_processed_size.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ar = phi i32 [ %i.al, %bb.g ], [ %i.ak, %bb.f ] ; 3 uses
  %i.as = phi <2 x i32> [ %i.am, %bb.g ], [ %i.aj, %bb.f ] ; 3 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !232
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !62 ; 4 uses
  %.not25.i.i = icmp eq ptr %i.av, null
  br i1 %.not25.i.i, label %dt_dev_get_processed_size.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 156
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !204 ; 2 uses
  %.not26.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not26.i.i, label %dt_dev_get_processed_size.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  %i.az = load float, ptr %i.ay, align 8, !tbaa !233 ; 2 uses
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.ax to float
  %i.bb = fmul reassoc nsz arcp contract afn float %i.az, %i.ba
  %i.bc = fptosi float %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %i.be = load i32, ptr %i.bd, align 16, !tbaa !205
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.be to float
  %i.bg = fmul reassoc nsz arcp contract afn float %i.az, %i.bf
  %i.bh = fptosi float %i.bg to i32
  br label %dt_dev_get_processed_size.exit.i

dt_dev_get_processed_size.exit.i:                 ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.bi = phi i32 [ %i.al, %bb.h ], [ %i.ar, %bb.i ], [ %i.ar, %bb.j ], [ %i.ar, %bb.k ] ; 2 uses
  %.116.i = phi i32 [ %i.ao, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ %i.bc, %bb.k ]
  %.014.i = phi i32 [ %i.aq, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ %i.bh, %bb.k ]
  %i.bj = phi <2 x i32> [ %i.am, %bb.h ], [ %i.as, %bb.i ], [ %i.as, %bb.j ], [ %i.as, %bb.k ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = sitofp reassoc nsz arcp contract afn i32 %.116.i to float
  %i.bm = load <2 x i32>, ptr %i.bk, align 8, !tbaa !187
  %i.bn = sitofp <2 x i32> %i.bm to <2 x float>   ; 3 uses
  %i.bo = extractelement <2 x float> %i.bn, i64 0 ; 2 uses
  %i.bp = fdiv reassoc nsz arcp contract afn float %i.bo, %i.bl ; 2 uses
  %i.bq = sitofp reassoc nsz arcp contract afn i32 %.014.i to float
  %i.br = extractelement <2 x float> %i.bn, i64 1 ; 2 uses
  %i.bs = fdiv reassoc nsz arcp contract afn float %i.br, %i.bq ; 2 uses
  switch i32 %i.e, label %bb.o [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %dt_dev_get_processed_size.exit.i
  %i.bt = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bp, float %i.bs)
  br label %bb.p

bb.m:                                             ; preds = %dt_dev_get_processed_size.exit.i
  %i.bu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bp, float %i.bs)
  br label %bb.p

bb.n:                                             ; preds = %dt_dev_get_processed_size.exit.i
  %i.bv = sitofp reassoc nsz arcp contract afn i32 %i.bi to float
  br label %bb.p

bb.o:                                             ; preds = %dt_dev_get_processed_size.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !234
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.0.i24 = phi nsz float [ %i.bx, %bb.o ], [ %i.bt, %bb.l ], [ %i.bu, %bb.m ], [ %i.bv, %bb.n ] ; 2 uses
  %i.by = fcmp reassoc nsz arcp contract afn une float %.0.i24, 0.000000e+00
  %.1.i = select nsz i1 %i.by, float %.0.i24, float 1.000000e+00
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !254
  %i.cb = sitofp reassoc nsz arcp contract afn i32 %i.ca to float
  %i.cc = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.bn, splat (float -5.000000e-01)
  %i.cd = sitofp <2 x i32> %i.bj to <2 x float>
  %i.ce = insertelement <2 x float> poison, float %3, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %4, i64 1
  %i.cg = fadd reassoc nsz arcp contract afn <2 x float> %i.cf, splat (float 5.000000e-01)
  %i.ch = insertelement <2 x float> poison, float %1, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %2, i64 1
  %i.cj = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, %i.cc
  %i.ck = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fsub reassoc nsz arcp contract afn <2 x float> %i.cj, %i.cl
  %i.cn = insertelement <2 x float> poison, float %.1.i, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.cd
  %i.cq = fdiv reassoc nsz arcp contract afn <2 x float> %i.cm, %i.cp
  %i.cr = fadd reassoc nsz arcp contract afn <2 x float> %i.cg, %i.cq ; 2 uses
  %i.cs = extractelement <2 x float> %i.cr, i64 0
  store float %i.cs, ptr %5, align 4, !tbaa !122
  %i.ct = extractelement <2 x float> %i.cr, i64 1
  store float %i.ct, ptr %6, align 4, !tbaa !122
  br i1 %.not23.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 156
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !204 ; 2 uses
  %.not24.i.i27 = icmp eq i32 %i.cv, 0
  br i1 %.not24.i.i27, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.cx = load i32, ptr %i.cw, align 16, !tbaa !205
  br label %dt_dev_get_processed_size.exit.i28

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !232
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.da = load ptr, ptr %i.cz, align 16, !tbaa !62 ; 4 uses
  %.not25.i.i33 = icmp eq ptr %i.da, null
  br i1 %.not25.i.i33, label %dt_dev_get_processed_size.exit.i28, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 156
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !204 ; 2 uses
  %.not26.i.i34 = icmp eq i32 %i.dc, 0
  br i1 %.not26.i.i34, label %dt_dev_get_processed_size.exit.i28, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 152
  %i.de = load float, ptr %i.dd, align 8, !tbaa !233 ; 2 uses
  %i.df = sitofp reassoc nsz arcp contract afn i32 %i.dc to float
  %i.dg = fmul reassoc nsz arcp contract afn float %i.de, %i.df
  %i.dh = fptosi float %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 160
  %i.dj = load i32, ptr %i.di, align 16, !tbaa !205
  %i.dk = sitofp reassoc nsz arcp contract afn i32 %i.dj to float
  %i.dl = fmul reassoc nsz arcp contract afn float %i.de, %i.dk
  %i.dm = fptosi float %i.dl to i32
  br label %dt_dev_get_processed_size.exit.i28

dt_dev_get_processed_size.exit.i28:               ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.116.i29 = phi i32 [ %i.cv, %bb.r ], [ 0, %bb.s ], [ 0, %bb.t ], [ %i.dh, %bb.u ]
  %.014.i30 = phi i32 [ %i.cx, %bb.r ], [ 0, %bb.s ], [ 0, %bb.t ], [ %i.dm, %bb.u ]
  %i.dn = sitofp reassoc nsz arcp contract afn i32 %.116.i29 to float
  %i.do = fdiv reassoc nsz arcp contract afn float %i.bo, %i.dn ; 2 uses
  %i.dp = sitofp reassoc nsz arcp contract afn i32 %.014.i30 to float
  %i.dq = fdiv reassoc nsz arcp contract afn float %i.br, %i.dp ; 2 uses
  switch i32 %i.e, label %bb.y [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
  ]

bb.v:                                             ; preds = %dt_dev_get_processed_size.exit.i28
  %i.dr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.do, float %i.dq)
  br label %dt_dev_get_zoom_scale.exit35

bb.w:                                             ; preds = %dt_dev_get_processed_size.exit.i28
  %i.ds = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.do, float %i.dq)
  br label %dt_dev_get_zoom_scale.exit35

bb.x:                                             ; preds = %dt_dev_get_processed_size.exit.i28
  %i.dt = sitofp reassoc nsz arcp contract afn i32 %i.bi to float
  br label %dt_dev_get_zoom_scale.exit35

bb.y:                                             ; preds = %dt_dev_get_processed_size.exit.i28
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.dv = load float, ptr %i.du, align 4, !tbaa !234
  br label %dt_dev_get_zoom_scale.exit35

dt_dev_get_zoom_scale.exit35:                     ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %.0.i31 = phi nsz float [ %i.dv, %bb.y ], [ %i.dr, %bb.v ], [ %i.ds, %bb.w ], [ %i.dt, %bb.x ] ; 2 uses
  %i.dw = fcmp reassoc nsz arcp contract afn une float %.0.i31, 0.000000e+00
  %.1.i32 = select nsz i1 %i.dw, float %.0.i31, float 1.000000e+00
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !232
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 96
  %i.dz = load ptr, ptr %i.dy, align 16, !tbaa !62
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 152
  %i.eb = load float, ptr %i.ea, align 8, !tbaa !233
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, %.1.i32
  store float %i.ec, ptr %7, align 4, !tbaa !122
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_dev_distort_transform_plus(ptr noundef %0, ptr noundef %1, double noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.c = tail call fastcc i32 @_dev_distort_transform_locked(ptr noundef %0, ptr noundef %1, i32 noundef 0, double noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5)
  %i.d = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #25 ; 0 uses
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @dt_dev_is_current_image(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #21 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.b = load i32, ptr %i.a, align 16, !tbaa !171
  %i.c = icmp eq i32 %i.b, %1
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ]
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define float @dt_dev_exposure_get_exposure(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !119
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_dev_exposure_proxy_available.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @dt_view_get_current() #25
  %.not6.i = icmp eq i32 %i.c, 2
  br i1 %.not6.i, label %bb.c, label %_dev_exposure_proxy_available.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !326 ; 3 uses
  %.not7.i = icmp eq ptr %i.d, null
  br i1 %.not7.i, label %_dev_exposure_proxy_available.exit.thread, label %_dev_exposure_proxy_available.exit

_dev_exposure_proxy_available.exit:               ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !327  ; 2 uses
  %.not7 = icmp eq ptr %i.f, null
  br i1 %.not7, label %_dev_exposure_proxy_available.exit.thread, label %bb.d

bb.d:                                             ; preds = %_dev_exposure_proxy_available.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 672
  %i.h = load i32, ptr %i.g, align 16, !tbaa !186
  %.not8 = icmp eq i32 %i.h, 0
  br i1 %.not8, label %_dev_exposure_proxy_available.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call reassoc nsz arcp contract afn float %i.f(ptr noundef nonnull %i.d) #25
  br label %_dev_exposure_proxy_available.exit.thread

_dev_exposure_proxy_available.exit.thread:        ; preds = %bb.c, %bb.a, %bb.b, %_dev_exposure_proxy_available.exit, %bb.d, %bb.e
  %i.j = phi reassoc nsz arcp contract afn float [ %i.i, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %_dev_exposure_proxy_available.exit ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.c ]
  ret float %i.j
}

; Function Attrs: nounwind uwtable
define float @dt_dev_exposure_get_effective_exposure(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dt_view_get_current() #25
  %.not = icmp eq i32 %i.a, 2
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2240 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !328
  %.not22 = icmp eq ptr %i.c, null
  %.02028 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 16), align 8 ; 2 uses
  %.not2329 = icmp eq ptr %.02028, null
  %or.cond = select i1 %.not22, i1 true, i1 %.not2329
  br i1 %or.cond, label %.thread, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.02030, i64 8
  %.020 = load ptr, ptr %i.d, align 8, !tbaa !175 ; 2 uses
  %.not23 = icmp eq ptr %.020, null
  br i1 %.not23, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.02030 = phi ptr [ %.020, %bb.c ], [ %.02028, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %.02030, align 8, !tbaa !144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  %i.g = tail call i32 @g_strcmp0(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.85) #25
  %.not.i.not = icmp eq i32 %i.g, 0
  br i1 %.not.i.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph
  %i.h = tail call ptr @dt_iop_get_module_enabled_preferring_unmasked_first_instance(ptr noundef nonnull %i.e) #25 ; 2 uses
  %.not26 = icmp eq ptr %i.h, null
  br i1 %.not26, label %.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.i = load ptr, ptr %i.b, align 16, !tbaa !328
  %i.j = tail call reassoc nsz arcp contract afn float %i.i(ptr noundef nonnull %i.h) #25
end_hunk_2
