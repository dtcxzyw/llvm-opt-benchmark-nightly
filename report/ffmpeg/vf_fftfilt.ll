Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fftfilt?download=true
inline.NumInlined: 27
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@initialize:bb.a
  br i1 %or.cond, label %bb.n, label %bb.m, !llvm.loop !70

bb.n:                                             ; preds = %bb.m
  ret i32 %i.ai
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4344
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4376
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4408
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4440
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4520
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4552
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2104
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1080
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3128
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv39 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next40, %._crit_edge ] ; 11 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv39
  tail call void @av_freep(ptr noundef nonnull %i.n) #10
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv39
  tail call void @av_freep(ptr noundef nonnull %i.o) #10
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv39
  tail call void @av_freep(ptr noundef nonnull %i.p) #10
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv39
  tail call void @av_freep(ptr noundef nonnull %i.q) #10
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv39
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !28
  tail call void @av_expr_free(ptr noundef %i.s) #10
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv39
  tail call void @av_freep(ptr noundef nonnull %i.t) #10
  %i.u = load i32, ptr %i.i, align 4, !tbaa !30
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv39
  %invariant.gep31 = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv39
  %invariant.gep33 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv39
  %invariant.gep35 = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv39
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next40, 4
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !72

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %gep = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv
  tail call void @av_tx_uninit(ptr noundef nonnull %gep) #10
  %gep32 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep31, i64 %indvars.iv
  tail call void @av_tx_uninit(ptr noundef nonnull %gep32) #10
  %gep34 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep33, i64 %indvars.iv
  tail call void @av_tx_uninit(ptr noundef nonnull %gep34) #10
  %gep36 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep35, i64 %indvars.iv
  tail call void @av_tx_uninit(ptr noundef nonnull %gep36) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.i, align 4, !tbaa !30
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.d, label %._crit_edge, !llvm.loop !73
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [7 x double], align 16            ; 9 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 18 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !41
  %i.n = tail call ptr @ff_get_video_buffer(ptr noundef %i.g, i32 noundef %i.k, i32 noundef %i.m) #10 ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.b) #10
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.o = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.n, ptr noundef %1) #10 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4584
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 44 ; 7 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 7 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !30
  %. = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.u)
  %i.v = tail call i32 @ff_filter_execute(ptr noundef nonnull %i.d, ptr noundef %i.q, ptr noundef %1, ptr noundef null, i32 noundef %.) #10 ; 0 uses
  %i.w = load i32, ptr %i.r, align 4, !tbaa !24
  %i.x = load i32, ptr %i.t, align 4, !tbaa !30
  %i.y = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.x)
  %i.z = tail call i32 @ff_filter_execute(ptr noundef nonnull %i.d, ptr noundef nonnull @copy_vertical, ptr noundef null, ptr noundef null, i32 noundef %i.y) #10 ; 0 uses
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !24
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !30
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.ab)
  %i.ad = tail call i32 @ff_filter_execute(ptr noundef nonnull %i.d, ptr noundef nonnull @rdft_vertical, ptr noundef null, ptr noundef null, i32 noundef %i.ac) #10 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !43 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 256
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 4280
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 4312
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 4520
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 4552
  %i.au = load i32, ptr %i.ah, align 8, !tbaa !44
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.lr.ph.split, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %.lr.ph, %bb.c
  %i.aw = load i32, ptr %i.r, align 4, !tbaa !24
  %i.ax = load i32, ptr %i.t, align 4, !tbaa !30
  %.84 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.ax)
  %i.ay = call i32 @ff_filter_execute(ptr noundef nonnull %i.d, ptr noundef nonnull @multiply_data, ptr noundef null, ptr noundef null, i32 noundef %.84) #10 ; 0 uses
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !43 ; 4 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 4280 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 4312 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 4472 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !45
  %i.bg = add nsw i32 %i.bf, -8
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = sext i32 %i.bh to i64                   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 4440 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.az to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bk = icmp eq i32 %i.az, 1
  br i1 %i.bk, label %.epil.preheader, label %.lr.ph90.new

.lr.ph90.new:                                     ; preds = %.lr.ph90
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.f

.lr.ph.splitthread-pre-split:                     ; preds = %bb.e
  %.pr = load i32, ptr %i.ah, align 8, !tbaa !44
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bl = phi i32 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 1, %.lr.ph ]
  %.pre97 = phi i32 [ %.pre98, %.lr.ph.splitthread-pre-split ], [ %i.af, %.lr.ph ] ; 3 uses
  %i.bm = phi i32 [ %i.cv, %.lr.ph.splitthread-pre-split ], [ %i.af, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 7 uses
  %i.bn = icmp eq i32 %i.bl, 1
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %.val = load i64, ptr %i.ai, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bo = sitofp nsz i64 %.val to double
  store double %i.bo, ptr %i.aj, align 16, !tbaa !50
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !24
  %i.br = sitofp nsz i32 %i.bq to double
  store double %i.br, ptr %i.al, align 16, !tbaa !50
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !24
  %i.bu = sitofp nsz i32 %i.bt to double
  store double %i.bu, ptr %i.an, align 8, !tbaa !50
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !51 ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !51 ; 2 uses
  %i.bz = insertelement <2 x i64> poison, i64 %i.bw, i64 0
  %i.ca = insertelement <2 x i64> %i.bz, i64 %i.by, i64 1
  %i.cb = uitofp <2 x i64> %i.ca to <2 x double>
  store <2 x double> %i.cb, ptr %i.ap, align 8, !tbaa !50
  %.not.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i, label %do_eval.exit, label %.lr.ph4.i

.lr.ph4.i:                                        ; preds = %bb.d
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %.not6.i = icmp eq i64 %i.by, 0
  br i1 %.not6.i, label %do_eval.exit, label %.lr.ph4.split.i

.lr.ph4.split.i:                                  ; preds = %.lr.ph4.i, %._crit_edge.i
  %i.ce = phi i64 [ %i.cs, %._crit_edge.i ], [ %i.bw, %.lr.ph4.i ]
  %i.cf = phi i64 [ %i.ct, %._crit_edge.i ], [ 1, %.lr.ph4.i ]
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %._crit_edge.i ], [ 0, %.lr.ph4.i ] ; 3 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv9.i to i32
  %i.ch = uitofp nsz nneg i32 %i.cg to double
  store double %i.ch, ptr %i.a, align 16, !tbaa !50
  %.not7.i = icmp eq i64 %i.cf, 0
  br i1 %.not7.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph4.split.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph4.split.i ] ; 3 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cj = uitofp nsz nneg i32 %i.ci to double
  store double %i.cj, ptr %i.ar, align 8, !tbaa !50
  %i.ck = load ptr, ptr %i.cc, align 8, !tbaa !28
  %i.cl = call nsz double @av_expr_eval(ptr noundef %i.ck, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #10
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !53
  %i.cn = load i64, ptr %i.bx, align 8, !tbaa !51 ; 3 uses
  %i.co = mul i64 %i.cn, %indvars.iv9.i
  %i.cp = getelementptr [8 x i8], ptr %i.cm, i64 %i.co
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %indvars.iv.i
  store double %i.cl, ptr %i.cq, align 8, !tbaa !50
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cr = icmp ugt i64 %i.cn, %indvars.iv.next.i
  br i1 %i.cr, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i64, ptr %i.bv, align 8, !tbaa !51
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph4.split.i
  %i.cs = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ce, %.lr.ph4.split.i ] ; 2 uses
  %i.ct = phi i64 [ %i.cn, %._crit_edge.loopexit.i ], [ 0, %.lr.ph4.split.i ]
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1 ; 2 uses
  %i.cu = icmp ugt i64 %i.cs, %indvars.iv.next10.i
  br i1 %i.cu, label %.lr.ph4.split.i, label %do_eval.exit.loopexit, !llvm.loop !1

do_eval.exit.loopexit:                            ; preds = %._crit_edge.i
  %.pre.pre = load i32, ptr %i.ae, align 8, !tbaa !43
  br label %do_eval.exit

do_eval.exit:                                     ; preds = %do_eval.exit.loopexit, %bb.d, %.lr.ph4.i
  %.pre = phi i32 [ %.pre.pre, %do_eval.exit.loopexit ], [ %.pre97, %bb.d ], [ %.pre97, %.lr.ph4.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.split, %do_eval.exit
  %.pre98 = phi i32 [ %.pre97, %.lr.ph.split ], [ %.pre, %do_eval.exit ]
  %i.cv = phi i32 [ %i.bm, %.lr.ph.split ], [ %.pre, %do_eval.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp slt i64 %indvars.iv.next, %i.cw
  br i1 %i.cx, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !74

._crit_edge91.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge91, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge91.loopexit.unr-lcssa, %.lr.ph90
  %indvars.iv94.epil.init = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next95.1, %._crit_edge91.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod105 = trunc i32 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod105)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv94.epil.init
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !51
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv94.epil.init
  %i.db = load i64, ptr %i.da, align 8, !tbaa !51
  %i.dc = mul i64 %i.db, %i.cz
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv94.epil.init
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !24
  %i.df = sext i32 %i.de to i64
  %i.dg = mul i64 %i.dc, %i.df
  %i.dh = mul i64 %i.dg, %i.bi
  %i.di = uitofp nsz i64 %i.dh to float
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv94.epil.init
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !56 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !58
  %i.dm = fadd nsz float %i.dl, %i.di
  store float %i.dm, ptr %i.dk, align 4, !tbaa !58
  br label %._crit_edge91

._crit_edge91:                                    ; preds = %.epil.preheader, %._crit_edge91.loopexit.unr-lcssa, %._crit_edge
  %i.dn = load i32, ptr %i.r, align 4, !tbaa !24
  %i.do = load i32, ptr %i.t, align 4, !tbaa !30
  %.85 = call i32 @llvm.smin.i32(i32 %i.dn, i32 %i.do)
  %i.dp = call i32 @ff_filter_execute(ptr noundef nonnull %i.d, ptr noundef nonnull @irdft_vertical, ptr noundef null, ptr noundef null, i32 noundef %.85) #10 ; 0 uses
  %i.dq = load i32, ptr %i.r, align 4, !tbaa !24
  %i.dr = load i32, ptr %i.t, align 4, !tbaa !30
  %i.ds = call i32 @llvm.smin.i32(i32 %i.dq, i32 %i.dr)
  %i.dt = call i32 @ff_filter_execute(ptr noundef nonnull %i.d, ptr noundef nonnull @copy_horizontal, ptr noundef null, ptr noundef null, i32 noundef %i.ds) #10 ; 0 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 4592
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !59
  %i.dw = load i32, ptr %i.r, align 4, !tbaa !24
  %i.dx = load i32, ptr %i.t, align 4, !tbaa !30
  %i.dy = call i32 @llvm.smin.i32(i32 %i.dw, i32 %i.dx)
  %i.dz = call i32 @ff_filter_execute(ptr noundef nonnull %i.d, ptr noundef %i.dv, ptr noundef nonnull %i.n, ptr noundef null, i32 noundef %i.dy) #10 ; 0 uses
  call void @av_frame_free(ptr noundef nonnull %i.b) #10
  %i.ea = call i32 @ff_filter_frame(ptr noundef %i.g, ptr noundef nonnull %i.n) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph90.new
  %indvars.iv94 = phi i64 [ 0, %.lr.ph90.new ], [ %indvars.iv.next95.1, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph90.new ], [ %niter.next.1, %bb.f ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv94
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !51
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv94
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !51
  %i.ef = mul i64 %i.ee, %i.ec
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv94
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !24
  %i.ei = sext i32 %i.eh to i64
  %i.ej = mul i64 %i.ef, %i.ei
  %i.ek = mul i64 %i.ej, %i.bi
  %i.el = uitofp nsz i64 %i.ek to float
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv94
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !56 ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !58
  %i.ep = fadd nsz float %i.eo, %i.el
  store float %i.ep, ptr %i.en, align 4, !tbaa !58
  %indvars.iv.next95 = or disjoint i64 %indvars.iv94, 1 ; 4 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next95
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !51
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next95
  %i.et = load i64, ptr %i.es, align 8, !tbaa !51
  %i.eu = mul i64 %i.et, %i.er
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next95
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !24
  %i.ex = sext i32 %i.ew to i64
  %i.ey = mul i64 %i.eu, %i.ex
  %i.ez = mul i64 %i.ey, %i.bi
  %i.fa = uitofp nsz i64 %i.ez to float
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next95
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !56 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !58
  %i.fe = fadd nsz float %i.fd, %i.fa
  store float %i.fe, ptr %i.fc, align 4, !tbaa !58
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge91.loopexit.unr-lcssa, label %bb.f, !llvm.loop !75

bb.g:                                             ; preds = %._crit_edge91, %bb.b
  %.068 = phi i32 [ %i.ea, %._crit_edge91 ], [ -12, %bb.b ]
  ret i32 %.068
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_props(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = alloca [7 x double], align 16            ; 17 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 51 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !84
  %i.l = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.k) #10 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  store i32 %i.n, ptr %i.o, align 4, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !40
  %i.r = sub nsw i32 0, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !88
  %i.u = zext nneg i8 %i.t to i32
  %i.v = ashr i32 %i.r, %i.u
  %i.w = sub nsw i32 0, %i.v                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 %i.w, ptr %i.y, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %i.w, ptr %i.z, align 4, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !24
  store i32 %i.ab, ptr %i.x, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !41
  %i.af = sub nsw i32 0, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !89
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = ashr i32 %i.af, %i.ai
end_hunk_0
begin_hunk_1_@config_props:bb.a
  %i.cy = lshr i32 %i.cx, 16
  %spec.select.i173 = select i1 %.not.i172, i32 %i.cx, i32 %i.cy ; 3 uses
  %spec.select12.i174 = select i1 %.not.i172, i32 0, i32 16 ; 2 uses
  %.not11.i175 = icmp samesign ult i32 %spec.select.i173, 256 ; 2 uses
  %i.cz = lshr i32 %spec.select.i173, 8
  %i.da = or disjoint i32 %spec.select12.i174, 8
  %.110.i176 = select i1 %.not11.i175, i32 %spec.select.i173, i32 %i.cz
  %.1.i177 = select i1 %.not11.i175, i32 %spec.select12.i174, i32 %i.da
  %i.db = zext nneg i32 %.110.i176 to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !60
  %i.de = zext i8 %i.dd to i32
  %i.df = add nuw nsw i32 %.1.i177, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv252 ; 3 uses
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !24
  %i.dh = sext i32 %i.cj to i64                   ; 2 uses
  %i.di = shl i64 %i.cu, 2
  %i.dj = call noalias ptr @av_calloc(i64 noundef %i.dh, i64 noundef %i.di) #10 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv252
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !56
  %.not160 = icmp eq ptr %i.dj, null
  br i1 %.not160, label %.thread187, label %bb.b

bb.b:                                             ; preds = %ff_clz_c.exit170
  %i.dl = load i64, ptr %i.cv, align 8, !tbaa !51
  %i.dm = shl i64 %i.dl, 2
  %i.dn = call noalias ptr @av_calloc(i64 noundef %i.dh, i64 noundef %i.dm) #10 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv252
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !56
  %.not161 = icmp eq ptr %i.dn, null
  br i1 %.not161, label %.thread187, label %.preheader193

.preheader193:                                    ; preds = %bb.b
  %i.dp = load i32, ptr %i.aw, align 4, !tbaa !30
  %.not162207 = icmp sgt i32 %i.dp, 0
  br i1 %.not162207, label %.lr.ph210, label %.preheader192

.lr.ph210:                                        ; preds = %.preheader193
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv252
  %invariant.gep212 = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv252
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dq = load i32, ptr %i.aw, align 4, !tbaa !30
  %i.dr = sext i32 %i.dq to i64
  %.not162 = icmp slt i64 %indvars.iv.next, %i.dr
  br i1 %.not162, label %bb.d, label %.preheader192, !llvm.loop !81

.preheader192:                                    ; preds = %bb.c, %.preheader193
  %i.ds = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cj, i1 false)
  %i.dt = sub nuw nsw i32 32, %i.ds
  %i.du = shl nuw i32 1, %i.dt
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv252 ; 2 uses
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !51
  %i.dx = call i64 @av_cpu_max_align() #10
  %i.dy = add nsw i64 %i.dv, 1
  %i.dz = add i64 %i.dy, %i.dx
  %i.ea = call i64 @av_cpu_max_align() #10
  %i.eb = sub i64 0, %i.ea
  %i.ec = and i64 %i.dz, %i.eb                    ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv252 ; 2 uses
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !51
  %i.ee = load i64, ptr %i.dw, align 8, !tbaa !51
  %i.ef = trunc i64 %i.ee to i32                  ; 3 uses
  %.not.i171 = icmp ult i32 %i.ef, 65536          ; 2 uses
  %i.eg = lshr i32 %i.ef, 16
  %spec.select.i = select i1 %.not.i171, i32 %i.ef, i32 %i.eg ; 3 uses
  %spec.select12.i = select i1 %.not.i171, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.eh = lshr i32 %spec.select.i, 8
  %i.ei = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.eh
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.ei
  %i.ej = zext nneg i32 %.110.i to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !60
  %i.em = zext i8 %i.el to i32
  %i.en = add nuw nsw i32 %.1.i, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv252 ; 3 uses
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !24
  %i.ep = load i64, ptr %i.cv, align 8, !tbaa !51
  %i.eq = shl i64 %i.ec, 2
  %i.er = call noalias ptr @av_calloc(i64 noundef %i.ep, i64 noundef %i.eq) #10 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv252
  store ptr %i.er, ptr %i.es, align 8, !tbaa !56
  %.not163 = icmp eq ptr %i.er, null
  br i1 %.not163, label %.thread187, label %bb.f

bb.d:                                             ; preds = %.lr.ph210, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph210 ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !58
  %gep = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.et = load i32, ptr %i.dg, align 4, !tbaa !24
  %i.eu = shl nuw i32 1, %i.et
  %i.ev = call i32 @av_tx_init(ptr noundef nonnull %gep, ptr noundef nonnull %i.bf, i32 noundef 6, i32 noundef 0, i32 noundef %i.eu, ptr noundef nonnull %i.b, i64 noundef 0) #10 ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %.thread187

bb.e:                                             ; preds = %bb.d
  %gep213 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep212, i64 %indvars.iv
  %i.ex = load i32, ptr %i.dg, align 4, !tbaa !24
  %i.ey = shl nuw i32 1, %i.ex
  %i.ez = call i32 @av_tx_init(ptr noundef nonnull %gep213, ptr noundef nonnull %i.bh, i32 noundef 6, i32 noundef 1, i32 noundef %i.ey, ptr noundef nonnull %i.c, i64 noundef 0) #10 ; 2 uses
  %i.fa = icmp sgt i32 %i.ez, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br i1 %i.fa, label %bb.c, label %.thread187

bb.f:                                             ; preds = %.preheader192
  %i.fb = load i64, ptr %i.cv, align 8, !tbaa !51
  %i.fc = load i64, ptr %i.ed, align 8, !tbaa !51
  %i.fd = shl i64 %i.fc, 2
  %i.fe = call noalias ptr @av_calloc(i64 noundef %i.fb, i64 noundef %i.fd) #10 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv252
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !56
  %.not164 = icmp eq ptr %i.fe, null
  br i1 %.not164, label %.thread187, label %.preheader190

.preheader190:                                    ; preds = %bb.f
  %i.fg = load i32, ptr %i.aw, align 4, !tbaa !30
  %.not165.not219 = icmp sgt i32 %i.fg, 0
  br i1 %.not165.not219, label %.lr.ph222, label %._crit_edge

.lr.ph222:                                        ; preds = %.preheader190
  %invariant.gep224 = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv252
  %invariant.gep226 = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv252
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.fh = load i32, ptr %i.aw, align 4, !tbaa !30
  %i.fi = sext i32 %i.fh to i64
  %.not165.not = icmp slt i64 %indvars.iv.next250, %i.fi
  br i1 %.not165.not, label %bb.h, label %._crit_edge, !llvm.loop !82

bb.h:                                             ; preds = %.lr.ph222, %bb.g
  %indvars.iv249 = phi i64 [ 0, %.lr.ph222 ], [ %indvars.iv.next250, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !58
  %gep225 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep224, i64 %indvars.iv249
  %i.fj = load i32, ptr %i.eo, align 4, !tbaa !24
  %i.fk = shl nuw i32 1, %i.fj
  %i.fl = call i32 @av_tx_init(ptr noundef nonnull %gep225, ptr noundef nonnull %i.bo, i32 noundef 6, i32 noundef 0, i32 noundef %i.fk, ptr noundef nonnull %i.d, i64 noundef 0) #10 ; 2 uses
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %.thread183, label %bb.i

.thread183:                                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %.thread187

bb.i:                                             ; preds = %bb.h
  %gep227 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep226, i64 %indvars.iv249
  %i.fn = load i32, ptr %i.eo, align 4, !tbaa !24
  %i.fo = shl nuw i32 1, %i.fn
  %i.fp = call i32 @av_tx_init(ptr noundef nonnull %gep227, ptr noundef nonnull %i.bq, i32 noundef 6, i32 noundef 1, i32 noundef %i.fo, ptr noundef nonnull %i.e, i64 noundef 0) #10 ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br i1 %i.fq, label %bb.g, label %.thread187

._crit_edge:                                      ; preds = %bb.g, %.preheader190
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.fr = load i8, ptr %i.ax, align 8, !tbaa !90
  %i.fs = zext i8 %i.fr to i64
  %i.ft = icmp samesign ult i64 %indvars.iv.next253, %i.fs
  br i1 %i.ft, label %ff_clz_c.exit170, label %.preheader, !llvm.loop !83

bb.j:                                             ; preds = %.preheader
  %i.fu = load i32, ptr %i.bu, align 8, !tbaa !44
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val = load i64, ptr %i.bv, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.fw = sitofp nsz i64 %.val to double
  store double %i.fw, ptr %i.bw, align 16, !tbaa !50
  %i.fx = load i32, ptr %i.x, align 8, !tbaa !24
  %i.fy = sitofp nsz i32 %i.fx to double
  store double %i.fy, ptr %i.bx, align 16, !tbaa !50
  %i.fz = load i32, ptr %i.al, align 8, !tbaa !24
  %i.ga = sitofp nsz i32 %i.fz to double
  store double %i.ga, ptr %i.by, align 8, !tbaa !50
  %i.gb = load i64, ptr %i.br, align 8, !tbaa !51 ; 3 uses
  %i.gc = load i64, ptr %i.bs, align 8, !tbaa !51 ; 2 uses
  %i.gd = insertelement <2 x i64> poison, i64 %i.gb, i64 0
  %i.ge = insertelement <2 x i64> %i.gd, i64 %i.gc, i64 1
  %i.gf = uitofp <2 x i64> %i.ge to <2 x double>
  store <2 x double> %i.gf, ptr %i.bz, align 8, !tbaa !50
  %.not.i178 = icmp eq i64 %i.gb, 0
  %.not6.i = icmp eq i64 %i.gc, 0
  %or.cond = select i1 %.not.i178, i1 true, i1 %.not6.i
  br i1 %or.cond, label %do_eval.exit, label %.lr.ph4.split.i

.lr.ph4.split.i:                                  ; preds = %bb.k, %._crit_edge.i
  %i.gg = phi i64 [ %i.gu, %._crit_edge.i ], [ %i.gb, %bb.k ]
  %i.gh = phi i64 [ %i.gv, %._crit_edge.i ], [ 1, %bb.k ]
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %._crit_edge.i ], [ 0, %bb.k ] ; 3 uses
  %i.gi = trunc nuw nsw i64 %indvars.iv9.i to i32
  %i.gj = uitofp nsz nneg i32 %i.gi to double
  store double %i.gj, ptr %i.a, align 16, !tbaa !50
  %.not7.i = icmp eq i64 %i.gh, 0
  br i1 %.not7.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph4.split.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph4.split.i ] ; 3 uses
  %i.gk = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.gl = uitofp nsz nneg i32 %i.gk to double
  store double %i.gl, ptr %i.ca, align 8, !tbaa !50
  %i.gm = load ptr, ptr %i.cb, align 8, !tbaa !28
  %i.gn = call nsz double @av_expr_eval(ptr noundef %i.gm, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #10
  %i.go = load ptr, ptr %i.bt, align 8, !tbaa !53
  %i.gp = load i64, ptr %i.bs, align 8, !tbaa !51 ; 3 uses
  %i.gq = mul i64 %i.gp, %indvars.iv9.i
  %i.gr = getelementptr [8 x i8], ptr %i.go, i64 %i.gq
  %i.gs = getelementptr [8 x i8], ptr %i.gr, i64 %indvars.iv.i
  store double %i.gn, ptr %i.gs, align 8, !tbaa !50
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gt = icmp ugt i64 %i.gp, %indvars.iv.next.i
  br i1 %i.gt, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i64, ptr %i.br, align 8, !tbaa !51
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph4.split.i
  %i.gu = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.gg, %.lr.ph4.split.i ] ; 2 uses
  %i.gv = phi i64 [ %i.gp, %._crit_edge.loopexit.i ], [ 0, %.lr.ph4.split.i ]
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1 ; 2 uses
  %i.gw = icmp ugt i64 %i.gu, %indvars.iv.next10.i
  br i1 %i.gw, label %.lr.ph4.split.i, label %do_eval.exit, !llvm.loop !1

do_eval.exit:                                     ; preds = %._crit_edge.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %do_eval.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %i.i, i64 4288 ; 3 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !51
  %i.gz = getelementptr inbounds nuw i8, ptr %i.i, i64 4320 ; 3 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !51
  %i.hb = shl i64 %i.ha, 3
  %i.hc = call noalias ptr @av_calloc(i64 noundef %i.gy, i64 noundef %i.hb) #10 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.i, i64 4560 ; 2 uses
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !53
  %.not.1 = icmp eq ptr %i.hc, null
  br i1 %.not.1, label %.thread187, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.he = load i32, ptr %i.bu, align 8, !tbaa !44
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.val.1 = load i64, ptr %i.bv, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.hg = sitofp nsz i64 %.val.1 to double
  store double %i.hg, ptr %i.bw, align 16, !tbaa !50
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !24
  %i.hj = sitofp nsz i32 %i.hi to double
  store double %i.hj, ptr %i.bx, align 16, !tbaa !50
  %i.hk = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !24
  %i.hm = sitofp nsz i32 %i.hl to double
  store double %i.hm, ptr %i.by, align 8, !tbaa !50
  %i.hn = load i64, ptr %i.gx, align 8, !tbaa !51 ; 3 uses
  %i.ho = load i64, ptr %i.gz, align 8, !tbaa !51 ; 2 uses
  %i.hp = insertelement <2 x i64> poison, i64 %i.hn, i64 0
  %i.hq = insertelement <2 x i64> %i.hp, i64 %i.ho, i64 1
  %i.hr = uitofp <2 x i64> %i.hq to <2 x double>
  store <2 x double> %i.hr, ptr %i.bz, align 8, !tbaa !50
  %.not.i178.1 = icmp eq i64 %i.hn, 0
  br i1 %.not.i178.1, label %do_eval.exit.1, label %.lr.ph4.i.1

.lr.ph4.i.1:                                      ; preds = %bb.n
  %i.hs = getelementptr inbounds nuw i8, ptr %i.i, i64 4528
  %.not6.i.1 = icmp eq i64 %i.ho, 0
  br i1 %.not6.i.1, label %do_eval.exit.1, label %.lr.ph4.split.i.1

.lr.ph4.split.i.1:                                ; preds = %.lr.ph4.i.1, %._crit_edge.i.1
  %i.ht = phi i64 [ %i.ih, %._crit_edge.i.1 ], [ %i.hn, %.lr.ph4.i.1 ]
  %i.hu = phi i64 [ %i.ii, %._crit_edge.i.1 ], [ 1, %.lr.ph4.i.1 ]
  %indvars.iv9.i.1 = phi i64 [ %indvars.iv.next10.i.1, %._crit_edge.i.1 ], [ 0, %.lr.ph4.i.1 ] ; 3 uses
  %i.hv = trunc nuw nsw i64 %indvars.iv9.i.1 to i32
  %i.hw = uitofp nsz nneg i32 %i.hv to double
  store double %i.hw, ptr %i.a, align 16, !tbaa !50
  %.not7.i.1 = icmp eq i64 %i.hu, 0
  br i1 %.not7.i.1, label %._crit_edge.i.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph4.split.i.1, %.lr.ph.i.1
  %indvars.iv.i.1 = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.1 ], [ 0, %.lr.ph4.split.i.1 ] ; 3 uses
  %i.hx = trunc nuw nsw i64 %indvars.iv.i.1 to i32
  %i.hy = uitofp nsz nneg i32 %i.hx to double
  store double %i.hy, ptr %i.ca, align 8, !tbaa !50
  %i.hz = load ptr, ptr %i.hs, align 8, !tbaa !28
  %i.ia = call nsz double @av_expr_eval(ptr noundef %i.hz, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #10
  %i.ib = load ptr, ptr %i.hd, align 8, !tbaa !53
  %i.ic = load i64, ptr %i.gz, align 8, !tbaa !51 ; 3 uses
  %i.id = mul i64 %i.ic, %indvars.iv9.i.1
  %i.ie = getelementptr [8 x i8], ptr %i.ib, i64 %i.id
  %i.if = getelementptr [8 x i8], ptr %i.ie, i64 %indvars.iv.i.1
  store double %i.ia, ptr %i.if, align 8, !tbaa !50
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %i.ig = icmp ugt i64 %i.ic, %indvars.iv.next.i.1
  br i1 %i.ig, label %.lr.ph.i.1, label %._crit_edge.loopexit.i.1, !llvm.loop !0

._crit_edge.loopexit.i.1:                         ; preds = %.lr.ph.i.1
  %.pre.i.1 = load i64, ptr %i.gx, align 8, !tbaa !51
  br label %._crit_edge.i.1

._crit_edge.i.1:                                  ; preds = %._crit_edge.loopexit.i.1, %.lr.ph4.split.i.1
  %i.ih = phi i64 [ %.pre.i.1, %._crit_edge.loopexit.i.1 ], [ %i.ht, %.lr.ph4.split.i.1 ] ; 2 uses
  %i.ii = phi i64 [ %i.ic, %._crit_edge.loopexit.i.1 ], [ 0, %.lr.ph4.split.i.1 ]
  %indvars.iv.next10.i.1 = add nuw nsw i64 %indvars.iv9.i.1, 1 ; 2 uses
  %i.ij = icmp ugt i64 %i.ih, %indvars.iv.next10.i.1
  br i1 %i.ij, label %.lr.ph4.split.i.1, label %do_eval.exit.1, !llvm.loop !1

do_eval.exit.1:                                   ; preds = %._crit_edge.i.1, %.lr.ph4.i.1, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.o

bb.o:                                             ; preds = %do_eval.exit.1, %bb.m
  %i.ik = getelementptr inbounds nuw i8, ptr %i.i, i64 4296 ; 3 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !51
  %i.im = getelementptr inbounds nuw i8, ptr %i.i, i64 4328 ; 3 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !51
  %i.io = shl i64 %i.in, 3
  %i.ip = call noalias ptr @av_calloc(i64 noundef %i.il, i64 noundef %i.io) #10 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.i, i64 4568 ; 2 uses
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !53
  %.not.2 = icmp eq ptr %i.ip, null
  br i1 %.not.2, label %.thread187, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ir = load i32, ptr %i.bu, align 8, !tbaa !44
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.val.2 = load i64, ptr %i.bv, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.it = sitofp nsz i64 %.val.2 to double
  store double %i.it, ptr %i.bw, align 16, !tbaa !50
  %i.iu = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !24
  %i.iw = sitofp nsz i32 %i.iv to double
  store double %i.iw, ptr %i.bx, align 16, !tbaa !50
  %i.ix = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !24
  %i.iz = sitofp nsz i32 %i.iy to double
  store double %i.iz, ptr %i.by, align 8, !tbaa !50
  %i.ja = load i64, ptr %i.ik, align 8, !tbaa !51 ; 3 uses
  %i.jb = load i64, ptr %i.im, align 8, !tbaa !51 ; 2 uses
  %i.jc = insertelement <2 x i64> poison, i64 %i.ja, i64 0
  %i.jd = insertelement <2 x i64> %i.jc, i64 %i.jb, i64 1
  %i.je = uitofp <2 x i64> %i.jd to <2 x double>
  store <2 x double> %i.je, ptr %i.bz, align 8, !tbaa !50
  %.not.i178.2 = icmp eq i64 %i.ja, 0
  br i1 %.not.i178.2, label %do_eval.exit.2, label %.lr.ph4.i.2

.lr.ph4.i.2:                                      ; preds = %bb.q
  %i.jf = getelementptr inbounds nuw i8, ptr %i.i, i64 4536
  %.not6.i.2 = icmp eq i64 %i.jb, 0
  br i1 %.not6.i.2, label %do_eval.exit.2, label %.lr.ph4.split.i.2

.lr.ph4.split.i.2:                                ; preds = %.lr.ph4.i.2, %._crit_edge.i.2
  %i.jg = phi i64 [ %i.ju, %._crit_edge.i.2 ], [ %i.ja, %.lr.ph4.i.2 ]
  %i.jh = phi i64 [ %i.jv, %._crit_edge.i.2 ], [ 1, %.lr.ph4.i.2 ]
  %indvars.iv9.i.2 = phi i64 [ %indvars.iv.next10.i.2, %._crit_edge.i.2 ], [ 0, %.lr.ph4.i.2 ] ; 3 uses
  %i.ji = trunc nuw nsw i64 %indvars.iv9.i.2 to i32
  %i.jj = uitofp nsz nneg i32 %i.ji to double
  store double %i.jj, ptr %i.a, align 16, !tbaa !50
  %.not7.i.2 = icmp eq i64 %i.jh, 0
  br i1 %.not7.i.2, label %._crit_edge.i.2, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph4.split.i.2, %.lr.ph.i.2
  %indvars.iv.i.2 = phi i64 [ %indvars.iv.next.i.2, %.lr.ph.i.2 ], [ 0, %.lr.ph4.split.i.2 ] ; 3 uses
  %i.jk = trunc nuw nsw i64 %indvars.iv.i.2 to i32
  %i.jl = uitofp nsz nneg i32 %i.jk to double
  store double %i.jl, ptr %i.ca, align 8, !tbaa !50
  %i.jm = load ptr, ptr %i.jf, align 8, !tbaa !28
  %i.jn = call nsz double @av_expr_eval(ptr noundef %i.jm, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #10
  %i.jo = load ptr, ptr %i.iq, align 8, !tbaa !53
  %i.jp = load i64, ptr %i.im, align 8, !tbaa !51 ; 3 uses
  %i.jq = mul i64 %i.jp, %indvars.iv9.i.2
  %i.jr = getelementptr [8 x i8], ptr %i.jo, i64 %i.jq
  %i.js = getelementptr [8 x i8], ptr %i.jr, i64 %indvars.iv.i.2
  store double %i.jn, ptr %i.js, align 8, !tbaa !50
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %i.jt = icmp ugt i64 %i.jp, %indvars.iv.next.i.2
  br i1 %i.jt, label %.lr.ph.i.2, label %._crit_edge.loopexit.i.2, !llvm.loop !0

._crit_edge.loopexit.i.2:                         ; preds = %.lr.ph.i.2
  %.pre.i.2 = load i64, ptr %i.ik, align 8, !tbaa !51
  br label %._crit_edge.i.2

._crit_edge.i.2:                                  ; preds = %._crit_edge.loopexit.i.2, %.lr.ph4.split.i.2
  %i.ju = phi i64 [ %.pre.i.2, %._crit_edge.loopexit.i.2 ], [ %i.jg, %.lr.ph4.split.i.2 ] ; 2 uses
  %i.jv = phi i64 [ %i.jp, %._crit_edge.loopexit.i.2 ], [ 0, %.lr.ph4.split.i.2 ]
  %indvars.iv.next10.i.2 = add nuw nsw i64 %indvars.iv9.i.2, 1 ; 2 uses
  %i.jw = icmp ugt i64 %i.ju, %indvars.iv.next10.i.2
  br i1 %i.jw, label %.lr.ph4.split.i.2, label %do_eval.exit.2, !llvm.loop !1

do_eval.exit.2:                                   ; preds = %._crit_edge.i.2, %.lr.ph4.i.2, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.r

bb.r:                                             ; preds = %do_eval.exit.2, %bb.p
  %i.jx = load i32, ptr %i.o, align 4, !tbaa !45
  %i.jy = icmp slt i32 %i.jx, 9
  %i.jz = getelementptr inbounds nuw i8, ptr %i.i, i64 4584 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.i, i64 4592 ; 2 uses
  br i1 %i.jy, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr @rdft_horizontal8, ptr %i.jz, align 8, !tbaa !42
  store ptr @irdft_horizontal8, ptr %i.ka, align 8, !tbaa !59
  br label %.thread187

bb.t:                                             ; preds = %bb.r
  store ptr @rdft_horizontal16, ptr %i.jz, align 8, !tbaa !42
  store ptr @irdft_horizontal16, ptr %i.ka, align 8, !tbaa !59
  br label %.thread187

.thread187:                                       ; preds = %ff_clz_c.exit170, %bb.b, %.preheader192, %bb.f, %bb.e, %bb.i, %.preheader, %bb.l, %bb.o, %.thread, %.thread183, %bb.s, %bb.t
  %.8 = phi i32 [ 0, %bb.s ], [ %i.fp, %bb.i ], [ 0, %bb.t ], [ %i.fl, %.thread183 ], [ -12, %.preheader ], [ %i.ev, %.thread ], [ %i.ez, %bb.e ], [ -12, %bb.o ], [ -12, %bb.l ], [ -12, %bb.f ], [ -12, %.preheader192 ], [ -12, %bb.b ], [ -12, %ff_clz_c.exit170 ]
  ret i32 %.8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @ff_get_video_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @copy_vertical(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4280
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4312
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4216
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4248
  %i.j = sext i32 %2 to i64
  %i.k = sext i32 %3 to i64                       ; 2 uses
  %i.l = add nsw i32 %2, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4408
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4376
  %wide.trip.count87 = zext nneg i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %._crit_edge48, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph, %._crit_edge48
  %indvars.iv84 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next85, %._crit_edge48 ] ; 8 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv84
  %i.r = load i64, ptr %i.q, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv84
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51   ; 4 uses
  %i.u = trunc i64 %i.t to i32                    ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv84
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv84
  %i.y = load i64, ptr %i.x, align 8, !tbaa !51   ; 3 uses
  %i.z = shl i64 %i.r, 32
  %i.aa = ashr exact i64 %i.z, 32                 ; 2 uses
  %i.ab = mul nsw i64 %i.aa, %i.j
  %i.ac = sdiv i64 %i.ab, %i.k                    ; 4 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = mul nsw i64 %i.aa, %i.m
  %i.af = sdiv i64 %i.ae, %i.k                    ; 4 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv84
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !24 ; 9 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv84
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv84
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 6 uses
  %i.an = icmp slt i32 %i.ad, %i.ag
  br i1 %i.an, label %.preheader.lr.ph, label %._crit_edge48

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.ao = icmp sgt i32 %i.ai, 0
  %i.ap = sub nsw i32 %i.u, %i.ai                 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 1                   ; 2 uses
  %i.ar = lshr i32 %i.ap, 1
  %i.as = add nsw i32 %i.ar, %i.ai
  %i.at = shl nsw i32 %i.ai, 1                    ; 2 uses
  %i.au = sext i32 %i.ai to i64                   ; 6 uses
  %i.av = sext i32 %i.as to i64                   ; 2 uses
  %sext = shl i64 %i.t, 32
  %i.aw = ashr exact i64 %sext, 32                ; 16 uses
  br i1 %i.ao, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.ax = shl i64 %i.w, 32                        ; 2 uses
  %i.ay = ashr exact i64 %i.ax, 32                ; 11 uses
  %sext98 = shl i64 %i.ac, 32                     ; 2 uses
  %i.az = ashr exact i64 %sext98, 32              ; 2 uses
  %i.ba = shl i64 %i.y, 32                        ; 3 uses
  %i.bb = ashr exact i64 %i.ba, 32                ; 2 uses
  %sext99 = shl i64 %i.af, 32                     ; 2 uses
  %wide.trip.count82 = ashr exact i64 %sext99, 32
  %wide.trip.count77 = zext nneg i32 %i.ai to i64 ; 7 uses
  %i.bc = add nsw i64 %wide.trip.count77, -1      ; 2 uses
  %i.bd = ashr exact i64 %i.ax, 30                ; 2 uses
  %i.be = mul nsw i64 %i.ay, -4
  %i.bf = shl nsw i64 %i.bc, 2
  %i.bg = mul i64 %i.bf, %i.ay
  %i.bh = ashr exact i64 %sext98, 30
  %i.bi = ashr exact i64 %sext99, 30
  %i.bj = add nsw i64 %i.bi, -4
  %i.bk = mul i64 %i.bj, %i.bb
  %i.bl = shl nuw nsw i64 %wide.trip.count77, 2
  %i.bm = getelementptr i8, ptr %i.am, i64 %i.bk
  %scevgep = getelementptr i8, ptr %i.bm, i64 %i.bl
  %i.bn = ashr exact i64 %i.ba, 30
  %i.bo = mul i64 %i.bn, %i.az
  %scevgep110 = getelementptr i8, ptr %i.am, i64 %i.bo
  %min.iters.check = icmp ult i32 %i.ai, 72
  %i.bp = icmp slt i64 %i.bd, 0                   ; 2 uses
  %i.bq = select i1 %i.bp, i64 %i.be, i64 %i.bd
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bq, i64 %i.bc) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.br = sub i64 0, %mul.result
  %i.bs = getelementptr i8, ptr %i.ak, i64 %i.bg
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bh
  %stride.check = icmp slt i64 %i.ba, 0
  %n.vec = and i64 %wide.trip.count77, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count77
  %xtraiter113 = and i64 %wide.trip.count77, 3    ; 2 uses
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %copy_rev.exit.us
  %indvar = phi i64 [ 0, %.preheader.us.preheader ], [ %indvar.next, %copy_rev.exit.us ] ; 2 uses
  %indvars.iv79 = phi i64 [ %i.az, %.preheader.us.preheader ], [ %indvars.iv.next80, %copy_rev.exit.us ] ; 3 uses
  %i.bu = mul nsw i64 %indvars.iv79, %i.bb        ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv79 ; 17 uses
  %invariant.gep102 = getelementptr [4 x i8], ptr %i.am, i64 %i.bu ; 6 uses
end_hunk_1
