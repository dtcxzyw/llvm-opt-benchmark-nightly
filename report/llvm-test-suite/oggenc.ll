inline.NumInlined: 678
inline.NumDeleted: 90
begin_hunk_0_@main:bb.a
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 40
  %i.vy = load ptr, ptr %i.vx, align 8
  store ptr %i.vy, ptr %i.kz, align 8
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vw, i64 48
  %i.wa = load ptr, ptr %i.vz, align 8
  store ptr %i.wa, ptr %i.la, align 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %i.wc = load ptr, ptr %i.wb, align 8
  call void @free(ptr noundef %i.wc) #62
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vw, i64 24
  %i.we = load ptr, ptr %i.wd, align 8
  call void @free(ptr noundef %i.we) #62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.vw, i8 0, i64 40, i1 false)
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vw, i64 64 ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 8
  %i.wh = icmp sgt i32 %i.wg, 0
  br i1 %i.wh, label %.lr.ph.i185, label %.sink.split

.lr.ph.i185:                                      ; preds = %bb.fa
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vw, i64 56
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fb, %.lr.ph.i185
  %indvars.iv.i186 = phi i64 [ 0, %.lr.ph.i185 ], [ %indvars.iv.next.i187, %bb.fb ] ; 2 uses
  %i.wj = load ptr, ptr %i.wi, align 8
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvars.iv.i186
  %i.wl = load ptr, ptr %i.wk, align 8
  call void @free(ptr noundef %i.wl) #62
  %indvars.iv.next.i187 = add nuw nsw i64 %indvars.iv.i186, 1 ; 2 uses
  %i.wm = load i32, ptr %i.wf, align 8
  %i.wn = sext i32 %i.wm to i64
  %i.wo = icmp slt i64 %indvars.iv.next.i187, %i.wn
  br i1 %i.wo, label %bb.fb, label %.sink.split, !llvm.loop !10

bb.fc:                                            ; preds = %bb.ey, %setup_downmix.exit, %.thread214
  %i.wp = load float, ptr %i.ah, align 8          ; 3 uses
  %i.wq = fcmp ogt float %i.wp, 0.000000e+00
  br i1 %i.wq, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.wr = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #71 ; 5 uses
  %i.ws = load ptr, ptr %i.kz, align 8
  store ptr %i.ws, ptr %i.wr, align 8
  %i.wt = load ptr, ptr %i.la, align 8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store ptr %i.wt, ptr %i.wu, align 8
  store ptr @read_scaler, ptr %i.kz, align 8
  store ptr %i.wr, ptr %i.la, align 8
  %i.wv = load i32, ptr %i.kw, align 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  store i32 %i.wv, ptr %i.ww, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wr, i64 20
  store float %i.wp, ptr %i.wx, align 4
  %i.wy = load i32, ptr %i.h, align 8
  %.not155 = icmp eq i32 %i.wy, 0
  br i1 %.not155, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.wz = load ptr, ptr @stderr, align 8
  %i.xa = fpext float %i.wp to double
  %i.xb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wz, ptr noundef nonnull @.str.51, double noundef %i.xa) #65 ; 0 uses
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fd, %bb.fe, %bb.fc
  %i.xc = load i64, ptr %i.lb, align 8
  %.not156 = icmp eq i64 %i.xc, 0
  br i1 %.not156, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  store ptr @update_statistics_notime, ptr %i.kq, align 8
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.xd = load i32, ptr %i.h, align 8
  %.not157 = icmp eq i32 %i.xd, 0
  br i1 %.not157, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  store ptr @start_encode_null, ptr %i.kr, align 8
  store <2 x ptr> <ptr @update_statistics_null, ptr @final_statistics_null>, ptr %i.kq, align 8
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.xe = call i32 @oe_encode(ptr noundef nonnull %3) ; 3 uses
  %i.xf = load float, ptr %i.ah, align 8
  %i.xg = fcmp ogt float %i.xf, 0.000000e+00
  br i1 %i.xg, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.xh = load ptr, ptr %i.la, align 8            ; 3 uses
  %i.xi = load ptr, ptr %i.xh, align 8
  store ptr %i.xi, ptr %i.kz, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8
  store ptr %i.xk, ptr %i.la, align 8
  call void @free(ptr noundef %i.xh) #62
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.xl = load i32, ptr %i.ai, align 4
  %.not159 = icmp eq i32 %i.xl, 0
  br i1 %.not159, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.xm = load ptr, ptr %i.la, align 8            ; 4 uses
  %i.xn = load ptr, ptr %i.xm, align 8
  store ptr %i.xn, ptr %i.kz, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xp = load ptr, ptr %i.xo, align 8
  store ptr %i.xp, ptr %i.la, align 8
  store i32 2, ptr %i.kw, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xm, i64 16 ; 3 uses
  %i.xr = load ptr, ptr %i.xq, align 8
  %i.xs = load ptr, ptr %i.xr, align 8
  call void @free(ptr noundef %i.xs) #62
  %i.xt = load ptr, ptr %i.xq, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.xv = load ptr, ptr %i.xu, align 8
  call void @free(ptr noundef %i.xv) #62
  %i.xw = load ptr, ptr %i.xq, align 8
  call void @free(ptr noundef %i.xw) #62
  call void @free(ptr noundef %i.xm) #62
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.xx = load i32, ptr %i.aj, align 8            ; 2 uses
  %.not160 = icmp eq i32 %i.xx, 0
  %i.xy = sext i32 %i.xx to i64
  %i.xz = load i64, ptr %i.kv, align 8
  %.not161 = icmp eq i64 %i.xz, %i.xy
  %or.cond177 = select i1 %.not160, i1 true, i1 %.not161
  br i1 %or.cond177, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ya = load ptr, ptr %i.la, align 8            ; 9 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 40
  %i.yc = load ptr, ptr %i.yb, align 8
  store ptr %i.yc, ptr %i.kz, align 8
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ya, i64 48
  %i.ye = load ptr, ptr %i.yd, align 8
  store ptr %i.ye, ptr %i.la, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  %i.yg = load ptr, ptr %i.yf, align 8
  call void @free(ptr noundef %i.yg) #62
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ya, i64 24
  %i.yi = load ptr, ptr %i.yh, align 8
  call void @free(ptr noundef %i.yi) #62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ya, i8 0, i64 40, i1 false)
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ya, i64 64 ; 2 uses
  %i.yk = load i32, ptr %i.yj, align 8
  %i.yl = icmp sgt i32 %i.yk, 0
  br i1 %i.yl, label %.lr.ph.i189, label %.sink.split

.lr.ph.i189:                                      ; preds = %bb.fo
  %i.ym = getelementptr inbounds nuw i8, ptr %i.ya, i64 56
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fp, %.lr.ph.i189
  %indvars.iv.i190 = phi i64 [ 0, %.lr.ph.i189 ], [ %indvars.iv.next.i191, %bb.fp ] ; 2 uses
  %i.yn = load ptr, ptr %i.ym, align 8
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %indvars.iv.i190
  %i.yp = load ptr, ptr %i.yo, align 8
  call void @free(ptr noundef %i.yp) #62
  %indvars.iv.next.i191 = add nuw nsw i64 %indvars.iv.i190, 1 ; 2 uses
  %i.yq = load i32, ptr %i.yj, align 8
  %i.yr = sext i32 %i.yq to i64
  %i.ys = icmp slt i64 %indvars.iv.next.i191, %i.yr
  br i1 %i.ys, label %bb.fp, label %.sink.split, !llvm.loop !10

.sink.split:                                      ; preds = %bb.fb, %bb.fp, %bb.fo, %bb.fa
  %.sink280 = phi ptr [ %i.vw, %bb.fa ], [ %i.ya, %bb.fp ], [ %i.ya, %bb.fo ], [ %i.vw, %bb.fb ] ; 2 uses
  %.pn.ph = phi i32 [ 1, %bb.fa ], [ %i.xe, %bb.fp ], [ %i.xe, %bb.fo ], [ 1, %bb.fb ]
  %i.yt = getelementptr inbounds nuw i8, ptr %.sink280, i64 56
  %i.yu = load ptr, ptr %i.yt, align 8
  call void @free(ptr noundef %i.yu) #62
  call void @free(ptr noundef nonnull %.sink280) #62
  br label %bb.fq

bb.fq:                                            ; preds = %.sink.split, %bb.eu, %bb.fn, %bb.ez
  %.pn = phi i32 [ 1, %bb.eu ], [ 1, %bb.ez ], [ %i.xe, %bb.fn ], [ %.pn.ph, %.sink.split ]
  %.4 = add nsw i32 %.pn, %.0108225               ; 2 uses
  %.not162 = icmp eq ptr %.1106, null
  br i1 %.not162, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @free(ptr noundef nonnull %.1106) #62
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.yv = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not163 = icmp eq ptr %i.yv, null
  br i1 %.not163, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @free(ptr noundef nonnull %i.yv) #62
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.yw = load i32, ptr %i.kt, align 8            ; 2 uses
  %i.yx = icmp sgt i32 %i.yw, 0
  %.pre243 = load ptr, ptr %4, align 8            ; 2 uses
  br i1 %i.yx, label %.lr.ph.i195, label %._crit_edge.i194

.lr.ph.i195:                                      ; preds = %bb.fu, %bb.fw
  %5 = phi ptr [ %7, %bb.fw ], [ %.pre243, %bb.fu ] ; 2 uses
  %6 = phi i32 [ %i.za, %bb.fw ], [ %i.yw, %bb.fu ]
  %.023.i = phi i64 [ %i.zb, %bb.fw ], [ 0, %bb.fu ] ; 2 uses
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.023.i
  %i.yz = load ptr, ptr %i.yy, align 8            ; 2 uses
  %.not22.i = icmp eq ptr %i.yz, null
  br i1 %.not22.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph.i195
  call void @free(ptr noundef nonnull %i.yz) #62
  %.pre.i196 = load i32, ptr %i.kt, align 8
  %.pre = load ptr, ptr %4, align 8
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %.lr.ph.i195
  %7 = phi ptr [ %5, %.lr.ph.i195 ], [ %.pre, %bb.fv ] ; 2 uses
  %i.za = phi i32 [ %6, %.lr.ph.i195 ], [ %.pre.i196, %bb.fv ] ; 2 uses
  %i.zb = add nuw nsw i64 %.023.i, 1              ; 2 uses
  %i.zc = sext i32 %i.za to i64
  %i.zd = icmp slt i64 %i.zb, %i.zc
  br i1 %i.zd, label %.lr.ph.i195, label %._crit_edge.i194, !llvm.loop !11

._crit_edge.i194:                                 ; preds = %bb.fw, %bb.fu
  %8 = phi ptr [ %.pre243, %bb.fu ], [ %7, %bb.fw ] ; 2 uses
  %.not19.i = icmp eq ptr %8, null
  br i1 %.not19.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %._crit_edge.i194
  call void @free(ptr noundef nonnull %8) #62
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %._crit_edge.i194
  %i.ze = load ptr, ptr %i.ku, align 8            ; 2 uses
  %.not20.i = icmp eq ptr %i.ze, null
  br i1 %.not20.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @free(ptr noundef nonnull %i.ze) #62
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.zf = load ptr, ptr %i.ll, align 8            ; 2 uses
  %.not21.i = icmp eq ptr %i.zf, null
  br i1 %.not21.i, label %vorbis_comment_clear.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @free(ptr noundef nonnull %i.zf) #62
  br label %vorbis_comment_clear.exit

vorbis_comment_clear.exit:                        ; preds = %bb.ga, %bb.gb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.zg = load i32, ptr %i.b, align 4
  %.not164 = icmp eq i32 %i.zg, 0
  br i1 %.not164, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %vorbis_comment_clear.exit
  %i.zh = getelementptr inbounds nuw i8, ptr %.198.ph, i64 24
  %i.zi = load ptr, ptr %i.zh, align 8
  %i.zj = load ptr, ptr %i.la, align 8
  call void %i.zi(ptr noundef %i.zj) #62
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %vorbis_comment_clear.exit
  br i1 %.not132274, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.zk = call i32 @fclose(ptr noundef %.0104)    ; 0 uses
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  br i1 %.not166, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.zl = call i32 @fclose(ptr noundef %.1103)    ; 0 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gf, %bb.gg, %bb.er, %bb.en, %bb.dn, %bb.df
  %.5 = phi i32 [ %i.pp, %bb.df ], [ %i.uc, %bb.en ], [ %i.ul, %bb.er ], [ %i.qr, %bb.dn ], [ %.4, %bb.gg ], [ %.4, %bb.gf ] ; 2 uses
  %.2 = phi ptr [ %.097226, %bb.df ], [ %.198.ph, %bb.en ], [ %.198.ph, %bb.er ], [ null, %bb.dn ], [ %.198.ph, %bb.gg ], [ %.198.ph, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #62
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next238, %wide.trip.count240
  br i1 %exitcond241.not, label %._crit_edge229.loopexit, label %bb.co, !llvm.loop !12

._crit_edge229.loopexit:                          ; preds = %bb.gh
  %i.zm = icmp ne i32 %.5, 0
  %i.zn = zext i1 %i.zm to i32
  br label %._crit_edge229

._crit_edge229:                                   ; preds = %bb.cn, %._crit_edge229.loopexit, %bb.ci
  %.0 = phi i32 [ 1, %bb.ci ], [ 0, %bb.cn ], [ %i.zn, %._crit_edge229.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #62
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @update_statistics_full(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2, double noundef %3) #6 {
bb.a:
  %i.a = sitofp i64 %2 to double                  ; 2 uses
  %i.b = sitofp i64 %1 to double                  ; 2 uses
  %i.c = fdiv double %i.a, %i.b
  %i.d = fdiv double %3, %i.c
  %i.e = fsub double %i.d, %3                     ; 2 uses
  %i.f = fptosi double %i.e to i32
  %i.g = sdiv i32 %i.f, 60                        ; 2 uses
  %i.h = sitofp i32 %i.g to double
  %i.i = fmul nnan double %i.h, 6.000000e+01
  %i.j = fsub double %i.e, %i.i
  %i.k = fptosi double %i.j to i32
  %i.l = load ptr, ptr @stderr, align 8
  %fputc = tail call i32 @fputc(i32 13, ptr %i.l) ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8
  %i.n = fmul nnan double %i.a, 1.000000e+02
  %i.o = fdiv double %i.n, %i.b
  %i.p = load i32, ptr @update_statistics_full.spinpoint, align 4 ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr @update_statistics_full.spinpoint, align 4
  %i.r = srem i32 %i.p, 4
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr @.str.90, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = sext i8 %i.u to i32
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.92, double noundef %i.o, i32 noundef %i.g, i32 noundef %i.k, i32 noundef %i.v) #65 ; 0 uses
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @start_encode_full(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #6 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %5, 0
  %i.c = load ptr, ptr @stderr, align 8           ; 2 uses
  %.not61 = icmp eq ptr %0, null                  ; 2 uses
  %i.d = select i1 %.not61, ptr @.str.103, ptr @.str.102 ; 4 uses
  %i.e = select i1 %.not61, ptr @.str.104, ptr %0 ; 2 uses
  %.not62 = icmp eq ptr %1, null                  ; 2 uses
  %i.f = select i1 %.not62, ptr @.str.103, ptr @.str.102 ; 4 uses
  %i.g = select i1 %.not62, ptr @.str.105, ptr %1 ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.101, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i32 noundef %2) #65 ; 0 uses
  tail call fastcc void @print_brconstraints(i32 noundef %6, i32 noundef %7)
  %i.i = load ptr, ptr @stderr, align 8
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.106, i64 40, i64 1, ptr %i.i) #64 ; 0 uses
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.107, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i32 noundef %2) #65 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %4, 0
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = icmp sgt i32 %5, 0
  %i.n = load ptr, ptr @stderr, align 8           ; 2 uses
  %.not56 = icmp eq ptr %0, null                  ; 2 uses
  %i.o = select i1 %.not56, ptr @.str.103, ptr @.str.102 ; 4 uses
  %i.p = select i1 %.not56, ptr @.str.104, ptr %0 ; 2 uses
  %.not57 = icmp eq ptr %1, null                  ; 2 uses
  %i.q = select i1 %.not57, ptr @.str.103, ptr @.str.102 ; 4 uses
  %i.r = select i1 %.not57, ptr @.str.105, ptr %1 ; 2 uses
  %i.s = fmul float %3, 1.000000e+01
  %i.t = fpext float %i.s to double               ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q, double noundef %i.t) #65 ; 0 uses
  tail call fastcc void @print_brconstraints(i32 noundef %6, i32 noundef %7)
  %i.v = load ptr, ptr @stderr, align 8
  %fputc58 = tail call i32 @fputc(i32 10, ptr %i.v) ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.110, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.q, double noundef %i.t) #65 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.x = load ptr, ptr @stderr, align 8
  %.not = icmp eq ptr %0, null                    ; 2 uses
  %i.y = select i1 %.not, ptr @.str.103, ptr @.str.102 ; 2 uses
  %i.z = select i1 %.not, ptr @.str.104, ptr %0
  %.not53 = icmp eq ptr %1, null                  ; 2 uses
  %i.aa = select i1 %.not53, ptr @.str.103, ptr @.str.102 ; 2 uses
  %i.ab = select i1 %.not53, ptr @.str.105, ptr %1
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.111, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %i.y, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.aa) #65 ; 0 uses
  tail call fastcc void @print_brconstraints(i32 noundef %6, i32 noundef %7)
  %i.ad = load ptr, ptr @stderr, align 8
  %fputc = tail call i32 @fputc(i32 10, ptr %i.ad) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.c, %bb.d
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @final_statistics(ptr noundef %0, double noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = load ptr, ptr @stderr, align 8           ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_0
