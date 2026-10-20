Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/skl_watermark?download=true
inline.NumInlined: 430
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@skl_compute_wm:bb.a
  %.pre-phi98.i.i = phi i64 [ %.pre97.i.i, %bb.cd ], [ %.pre-phi96.i.i, %bb.cc ] ; 2 uses
  %i.ki = and i64 %.pre-phi98.i.i, 8
  %.not46.3.i.i = icmp eq i64 %i.ki, 0
  br i1 %.not46.3.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kj = getelementptr i8, ptr %i.w, i64 3053
  store i8 0, ptr %i.kj, align 1
  %i.kk = getelementptr i8, ptr %i.w, i64 3065
  store i8 0, ptr %i.kk, align 1
  %.pre76.i.i = load i8, ptr %i.jw, align 1
  %.pre99.i.i = zext i8 %.pre76.i.i to i64
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pre-phi100.i.i = phi i64 [ %.pre99.i.i, %bb.cf ], [ %.pre-phi98.i.i, %bb.ce ] ; 2 uses
  %i.kl = and i64 %.pre-phi100.i.i, 16
  %.not46.4.i.i = icmp eq i64 %i.kl, 0
  br i1 %.not46.4.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.km = getelementptr i8, ptr %i.w, i64 3185
  store i8 0, ptr %i.km, align 1
  %i.kn = getelementptr i8, ptr %i.w, i64 3197
  store i8 0, ptr %i.kn, align 1
  %.pre77.i.i = load i8, ptr %i.jw, align 1
  %.pre101.i.i = zext i8 %.pre77.i.i to i64
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pre-phi102.i.i = phi i64 [ %.pre101.i.i, %bb.ch ], [ %.pre-phi100.i.i, %bb.cg ] ; 2 uses
  %i.ko = and i64 %.pre-phi102.i.i, 32
  %.not46.5.i.i = icmp eq i64 %i.ko, 0
  br i1 %.not46.5.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kp = getelementptr i8, ptr %i.w, i64 3317
  store i8 0, ptr %i.kp, align 1
  %i.kq = getelementptr i8, ptr %i.w, i64 3329
  store i8 0, ptr %i.kq, align 1
  %.pre78.i.i = load i8, ptr %i.jw, align 1
  %.pre103.i.i = zext i8 %.pre78.i.i to i64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pre-phi104.i.i = phi i64 [ %.pre103.i.i, %bb.cj ], [ %.pre-phi102.i.i, %bb.ci ] ; 2 uses
  %i.kr = and i64 %.pre-phi104.i.i, 64
  %.not46.6.i.i = icmp eq i64 %i.kr, 0
  br i1 %.not46.6.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ks = getelementptr i8, ptr %i.w, i64 3449
  store i8 0, ptr %i.ks, align 1
  %i.kt = getelementptr i8, ptr %i.w, i64 3461
  store i8 0, ptr %i.kt, align 1
  %.pre79.i.i = load i8, ptr %i.jw, align 1
  %.pre105.i.i = zext i8 %.pre79.i.i to i64
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pre-phi106.i.i = phi i64 [ %.pre105.i.i, %bb.cl ], [ %.pre-phi104.i.i, %bb.ck ]
  %i.ku = and i64 %.pre-phi106.i.i, 128
  %.not46.7.i.i = icmp eq i64 %i.ku, 0
  br i1 %.not46.7.i.i, label %skl_build_pipe_wm.exit.thread130, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kv = getelementptr i8, ptr %i.w, i64 3581
  store i8 0, ptr %i.kv, align 1
  %i.kw = getelementptr i8, ptr %i.w, i64 3593
  store i8 0, ptr %i.kw, align 1
  br label %skl_build_pipe_wm.exit.thread130

skl_build_pipe_wm.exit.thread130:                 ; preds = %bb.ax, %bb.by, %bb.bx, %bb.bw, %._crit_edge.i.i, %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.backedge

.backedge:                                        ; preds = %skl_build_pipe_wm.exit.thread130, %bb.g
  br label %bb.d, !llvm.loop !120

bb.co:                                            ; preds = %bb.f
  %i.kx = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i75 = icmp eq ptr %i.kx, null
  br i1 %.not.i75, label %.thread.split.us.preheader.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ky = call ptr @__drm_to_display(ptr noundef nonnull %i.kx) #16 ; 4 uses
  %.pr.i = load ptr, ptr %i.c, align 8            ; 2 uses
  %.not160.i = icmp eq ptr %.pr.i, null
  br i1 %.not160.i, label %.thread.split.us.preheader.i, label %.thread.i

.thread.i:                                        ; preds = %bb.cp
  %i.kz = call ptr @__drm_to_display(ptr noundef nonnull %.pr.i) #16
  %.pre.i = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.la = icmp eq ptr %.pre.i, null
  %i.lb = getelementptr i8, ptr %i.kz, i64 40     ; 2 uses
  br i1 %i.la, label %.thread.split.us.preheader.i, label %.thread.split.i

.thread.split.us.preheader.i:                     ; preds = %bb.co, %bb.cp, %.thread.i
  %i.lc = phi ptr [ %i.lb, %.thread.i ], [ inttoptr (i64 40 to ptr), %bb.cp ], [ inttoptr (i64 40 to ptr), %bb.co ]
  %i.ld = phi ptr [ %i.ky, %.thread.i ], [ %i.ky, %bb.cp ], [ null, %bb.co ]
  br label %.thread.split.us.i

.thread.split.us.i:                               ; preds = %bb.cq, %.thread.split.us.preheader.i
  %.pn.in.us.i = phi ptr [ %.pn.us.i, %bb.cq ], [ %i.lc, %.thread.split.us.preheader.i ]
  %.pn.us.i = load ptr, ptr %.pn.in.us.i, align 8 ; 3 uses
  %.not237.us.i = icmp eq ptr %.pn.us.i, inttoptr (i64 40 to ptr)
  br i1 %.not237.us.i, label %skl_compute_ddb.exit.thread139, label %bb.cq

bb.cq:                                            ; preds = %.thread.split.us.i
  %.val195.us.i = load ptr, ptr %i.j, align 8
  %i.le = getelementptr i8, ptr %.pn.us.i, i64 -1512
  %.0136.val.us.i = load i32, ptr %i.le, align 8
  %i.lf = zext i32 %.0136.val.us.i to i64
  %i.lg = getelementptr [56 x i8], ptr %.val195.us.i, i64 %i.lf
  %i.lh = getelementptr i8, ptr %i.lg, i64 24
  %i.li = load ptr, ptr %i.lh, align 8
  %.not163.us.i = icmp eq ptr %i.li, null
  br i1 %.not163.us.i, label %.thread.split.us.i, label %intel_atomic_get_dbuf_state.exit.i, !llvm.loop !121

.thread.split.i:                                  ; preds = %.thread.i, %bb.ct
  %i.lj = phi ptr [ %.pr358.i, %bb.ct ], [ %.pre.i, %.thread.i ] ; 2 uses
  %.pn.in.i = phi ptr [ %.pn.i, %bb.ct ], [ %i.lb, %.thread.i ]
  %.pn.i = load ptr, ptr %.pn.in.i, align 8       ; 3 uses
  %.not161.i = icmp eq ptr %i.lj, null
  br i1 %.not161.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.thread.split.i
  %i.lk = call ptr @__drm_to_display(ptr noundef nonnull %i.lj) #16
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.thread.split.i
  %i.ll = phi ptr [ %i.lk, %bb.cr ], [ null, %.thread.split.i ]
  %i.lm = getelementptr i8, ptr %i.ll, i64 40
  %.not237.i = icmp eq ptr %.pn.i, %i.lm
  br i1 %.not237.i, label %skl_compute_ddb.exit.thread139, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.val195.i = load ptr, ptr %i.j, align 8
  %i.ln = getelementptr i8, ptr %.pn.i, i64 -1512
  %.0136.val.i = load i32, ptr %i.ln, align 8
  %i.lo = zext i32 %.0136.val.i to i64
  %i.lp = getelementptr [56 x i8], ptr %.val195.i, i64 %i.lo
  %i.lq = getelementptr i8, ptr %i.lp, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8
  %.not163.i = icmp eq ptr %i.lr, null
  %.pr358.i = load ptr, ptr %i.c, align 8         ; 3 uses
  br i1 %.not163.i, label %.thread.split.i, label %.split.us.i, !llvm.loop !122

.split.us.i:                                      ; preds = %bb.ct
  %.not.i.i76 = icmp eq ptr %.pr358.i, null
  br i1 %.not.i.i76, label %intel_atomic_get_dbuf_state.exit.i, label %bb.cu

bb.cu:                                            ; preds = %.split.us.i
  %i.ls = call ptr @__drm_to_display(ptr noundef nonnull %.pr358.i) #16
  br label %intel_atomic_get_dbuf_state.exit.i

intel_atomic_get_dbuf_state.exit.i:               ; preds = %bb.cq, %bb.cu, %.split.us.i
  %i.lt = phi ptr [ %i.ky, %bb.cu ], [ %i.ky, %.split.us.i ], [ %i.ld, %bb.cq ] ; 5 uses
  %i.lu = phi ptr [ %i.ls, %bb.cu ], [ null, %.split.us.i ], [ null, %bb.cq ]
  %i.lv = getelementptr i8, ptr %i.lu, i64 720
  %i.lw = call ptr @intel_atomic_get_global_obj_state(ptr noundef %0, ptr noundef %i.lv) #16 ; 20 uses
  %i.lx = icmp ugt ptr %i.lw, inttoptr (i64 -4096 to ptr)
  br i1 %i.lx, label %skl_compute_ddb.exit, label %bb.cv

bb.cv:                                            ; preds = %intel_atomic_get_dbuf_state.exit.i
  %i.ly = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not164.i = icmp eq ptr %i.ly, null
  br i1 %.not164.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lz = call ptr @__drm_to_display(ptr noundef nonnull %i.ly) #16
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.ma = phi ptr [ %i.lz, %bb.cw ], [ null, %bb.cv ]
  %i.mb = getelementptr i8, ptr %i.ma, i64 720
  %i.mc = call ptr @intel_atomic_get_old_global_obj_state(ptr noundef %0, ptr noundef %i.mb) #16 ; 7 uses
  %.not165.i = icmp eq ptr %i.lw, null
  br i1 %.not165.i, label %skl_compute_ddb.exit.thread139, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.md = getelementptr i8, ptr %i.mc, i64 69     ; 2 uses
  %i.me = load i8, ptr %i.md, align 1
  %i.mf = call zeroext i8 @intel_calc_active_pipes(ptr noundef %0, i8 noundef zeroext %i.me) #16 ; 2 uses
  %i.mg = getelementptr i8, ptr %i.lw, i64 69     ; 3 uses
  store i8 %i.mf, ptr %i.mg, align 1
  %i.mh = load i8, ptr %i.md, align 1
  %.not166.i = icmp eq i8 %i.mh, %i.mf
  br i1 %.not166.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.mi = call i32 @intel_atomic_lock_global_state(ptr noundef nonnull %i.lw) #16 ; 2 uses
  %.not167.i = icmp eq i32 %i.mi, 0
  br i1 %.not167.i, label %bb.da, label %skl_print_wm_changes.exit

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.mj = getelementptr i8, ptr %i.lt, i64 8
  %i.mk = load i64, ptr %i.mj, align 8
  %i.ml = and i64 %i.mk, 4503599627370496
  %.not168.i = icmp eq i64 %i.ml, 0
  br i1 %.not168.i, label %bb.db, label %6

bb.db:                                            ; preds = %bb.da
  %i.mm = getelementptr i8, ptr %i.lt, i64 1168
  %i.mn = load i16, ptr %i.mm, align 8
  %i.mo = icmp ugt i16 %i.mn, 13
  br i1 %i.mo, label %6, label %bb.dd

6:                                                ; preds = %bb.db, %bb.da
  %7 = load i8, ptr %i.mg, align 1
  switch i8 %7, label %adlp_check_mbus_joined.exit.i [
    i8 1, label %8
    i8 2, label %.fold.split.i.i.i
    i8 3, label %.fold.split6.i.i.i
    i8 4, label %.fold.split7.i.i.i
    i8 5, label %.fold.split8.i.i.i
    i8 6, label %.fold.split9.i.i.i
    i8 7, label %.fold.split10.i.i.i
    i8 8, label %.fold.split11.i.i.i
    i8 9, label %.fold.split12.i.i.i
    i8 10, label %.fold.split13.i.i.i
    i8 11, label %.fold.split14.i.i.i
    i8 12, label %.fold.split15.i.i.i
    i8 13, label %.fold.split16.i.i.i
    i8 14, label %.fold.split17.i.i.i
    i8 15, label %.fold.split18.i.i.i
  ]

.fold.split.i.i.i:                                ; preds = %6
  br label %8

.fold.split6.i.i.i:                               ; preds = %6
  br label %8

.fold.split7.i.i.i:                               ; preds = %6
  br label %8

.fold.split8.i.i.i:                               ; preds = %6
  br label %8

.fold.split9.i.i.i:                               ; preds = %6
  br label %8

.fold.split10.i.i.i:                              ; preds = %6
  br label %8

.fold.split11.i.i.i:                              ; preds = %6
  br label %8

.fold.split12.i.i.i:                              ; preds = %6
  br label %8

.fold.split13.i.i.i:                              ; preds = %6
  br label %8

.fold.split14.i.i.i:                              ; preds = %6
  br label %8

.fold.split15.i.i.i:                              ; preds = %6
  br label %8

.fold.split16.i.i.i:                              ; preds = %6
  br label %8

.fold.split17.i.i.i:                              ; preds = %6
  br label %8

.fold.split18.i.i.i:                              ; preds = %6
  br label %8

8:                                                ; preds = %.fold.split18.i.i.i, %.fold.split17.i.i.i, %.fold.split16.i.i.i, %.fold.split15.i.i.i, %.fold.split14.i.i.i, %.fold.split13.i.i.i, %.fold.split12.i.i.i, %.fold.split11.i.i.i, %.fold.split10.i.i.i, %.fold.split9.i.i.i, %.fold.split8.i.i.i, %.fold.split7.i.i.i, %.fold.split6.i.i.i, %.fold.split.i.i.i, %6
  %.lcssa.i.i.i = phi ptr [ @adlp_allowed_dbufs, %6 ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 78), %.fold.split15.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 90), %.fold.split17.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 84), %.fold.split16.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 6), %.fold.split.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 24), %.fold.split6.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 30), %.fold.split7.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 36), %.fold.split8.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 42), %.fold.split9.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 48), %.fold.split10.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 54), %.fold.split11.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 60), %.fold.split12.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 66), %.fold.split13.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 72), %.fold.split14.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 96), %.fold.split18.i.i.i ]
  %9 = getelementptr i8, ptr %.lcssa.i.i.i, i64 5
  %10 = load i8, ptr %9, align 1, !range !18, !noundef !19
  %11 = trunc nuw i8 %10 to i1
  br label %adlp_check_mbus_joined.exit.i

adlp_check_mbus_joined.exit.i:                    ; preds = %8, %6
  %.08.i.i.i = phi i1 [ %11, %8 ], [ false, %6 ]  ; 2 uses
  %i.mp = getelementptr i8, ptr %i.lw, i64 71
  %i.mq = zext i1 %.08.i.i.i to i8                ; 2 uses
  store i8 %i.mq, ptr %i.mp, align 1
  %i.mr = getelementptr i8, ptr %i.mc, i64 71
  %i.ms = load i8, ptr %i.mr, align 1, !range !18, !noundef !19
  %.not169.i = icmp eq i8 %i.ms, %i.mq
  br i1 %.not169.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %adlp_check_mbus_joined.exit.i
  %i.mt = call i32 @intel_cdclk_state_set_joined_mbus(ptr noundef %0, i1 noundef zeroext %.08.i.i.i) #16 ; 2 uses
  %.not170.i = icmp eq i32 %i.mt, 0
  br i1 %.not170.i, label %bb.dd, label %skl_print_wm_changes.exit

bb.dd:                                            ; preds = %bb.dc, %adlp_check_mbus_joined.exit.i, %bb.db
  %i.mu = getelementptr i8, ptr %i.lt, i64 40     ; 5 uses
  %.pn171266.i = load ptr, ptr %i.mu, align 8     ; 2 uses
  %.not238267.i = icmp eq ptr %.pn171266.i, %i.mu
  br i1 %.not238267.i, label %._crit_edge.i, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.dd
  %i.mv = getelementptr i8, ptr %i.lw, i64 71
  %i.mw = getelementptr i8, ptr %i.lw, i64 64
  %i.mx = getelementptr i8, ptr %i.mc, i64 64
  br label %bb.de

bb.de:                                            ; preds = %select.unfold.i, %.lr.ph.i77
  %.pn171268.i = phi ptr [ %.pn171266.i, %.lr.ph.i77 ], [ %.pn171.i, %select.unfold.i ] ; 3 uses
  %.1137.i = getelementptr i8, ptr %.pn171268.i, i64 -1648
  %i.my = getelementptr i8, ptr %.pn171268.i, i64 16
  %i.mz = load i32, ptr %i.my, align 8
  %i.na = load i8, ptr %i.mg, align 1
  %i.nb = load i8, ptr %i.mv, align 1, !range !18, !noundef !19
  %i.nc = trunc nuw i8 %i.nb to i1
  %i.nd = call fastcc zeroext i8 @skl_compute_dbuf_slices(ptr noundef %.1137.i, i8 noundef zeroext %i.na, i1 noundef zeroext %i.nc) #17, !srcloc !150 ; 2 uses
  %i.ne = sext i32 %i.mz to i64                   ; 2 uses
  %i.nf = getelementptr i8, ptr %i.mw, i64 %i.ne
  store i8 %i.nd, ptr %i.nf, align 1
  %i.ng = getelementptr i8, ptr %i.mx, i64 %i.ne
  %i.nh = load i8, ptr %i.ng, align 1
  %i.ni = icmp eq i8 %i.nh, %i.nd
  br i1 %i.ni, label %select.unfold.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nj = call i32 @intel_atomic_lock_global_state(ptr noundef nonnull %i.lw) #16 ; 2 uses
  %.not192.i = icmp eq i32 %i.nj, 0
  br i1 %.not192.i, label %select.unfold.i, label %skl_print_wm_changes.exit

select.unfold.i:                                  ; preds = %bb.df, %bb.de
  %.pn171.i = load ptr, ptr %.pn171268.i, align 8 ; 2 uses
  %.not238.i = icmp eq ptr %.pn171.i, %i.mu
  br i1 %.not238.i, label %._crit_edge.i, label %bb.de, !llvm.loop !123

._crit_edge.i:                                    ; preds = %select.unfold.i, %bb.dd
  %i.nk = getelementptr i8, ptr %i.lw, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = getelementptr i8, ptr %i.nl, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8            ; 2 uses
  %.not.i196.i = icmp eq ptr %i.nn, null
  br i1 %.not.i196.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %._crit_edge.i
  %i.no = call ptr @__drm_to_display(ptr noundef nonnull %i.nn) #16
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %._crit_edge.i
  %i.np = phi ptr [ %i.no, %bb.dg ], [ null, %._crit_edge.i ]
  %i.nq = getelementptr i8, ptr %i.np, i64 1188
  %i.nr = load i8, ptr %i.nq, align 4
  %i.ns = zext i8 %i.nr to i64                    ; 4 uses
  %i.nt = and i64 %i.ns, 1
  %.not11.i.i = icmp eq i64 %i.nt, 0
  br i1 %.not11.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nu = getelementptr i8, ptr %i.lw, i64 64
  %i.nv = load i8, ptr %i.nu, align 8
  %i.nw = or i8 %i.nv, 1
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.1.i.i = phi i8 [ %i.nw, %bb.di ], [ 1, %bb.dh ] ; 2 uses
  %i.nx = and i64 %i.ns, 2
  %.not11.1.i.i = icmp eq i64 %i.nx, 0
  br i1 %.not11.1.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ny = getelementptr i8, ptr %i.lw, i64 65
  %i.nz = load i8, ptr %i.ny, align 1
  %i.oa = or i8 %i.nz, %.1.i.i
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.1.1.i.i = phi i8 [ %i.oa, %bb.dk ], [ %.1.i.i, %bb.dj ] ; 2 uses
  %i.ob = and i64 %i.ns, 4
  %.not11.2.i.i = icmp eq i64 %i.ob, 0
  br i1 %.not11.2.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.oc = getelementptr i8, ptr %i.lw, i64 66
  %i.od = load i8, ptr %i.oc, align 2
  %i.oe = or i8 %i.od, %.1.1.i.i
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.1.2.i.i = phi i8 [ %i.oe, %bb.dm ], [ %.1.1.i.i, %bb.dl ] ; 2 uses
  %i.of = and i64 %i.ns, 8
  %.not11.3.i.i = icmp eq i64 %i.of, 0
  br i1 %.not11.3.i.i, label %intel_dbuf_enabled_slices.exit.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.og = getelementptr i8, ptr %i.lw, i64 67
  %i.oh = load i8, ptr %i.og, align 1
  %i.oi = or i8 %i.oh, %.1.2.i.i
  br label %intel_dbuf_enabled_slices.exit.i

intel_dbuf_enabled_slices.exit.i:                 ; preds = %bb.do, %bb.dn
  %.1.3.i.i = phi i8 [ %i.oi, %bb.do ], [ %.1.2.i.i, %bb.dn ] ; 2 uses
  %i.oj = getelementptr i8, ptr %i.lw, i64 68     ; 2 uses
  store i8 %.1.3.i.i, ptr %i.oj, align 4
  %i.ok = getelementptr i8, ptr %i.mc, i64 68     ; 2 uses
  %i.ol = load i8, ptr %i.ok, align 4
  %.not173.i = icmp eq i8 %i.ol, %.1.3.i.i
  br i1 %.not173.i, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %intel_dbuf_enabled_slices.exit.i
  %i.om = getelementptr i8, ptr %i.mc, i64 71
  %i.on = load i8, ptr %i.om, align 1, !range !18, !noundef !19
  %i.oo = getelementptr i8, ptr %i.lw, i64 71
  %i.op = load i8, ptr %i.oo, align 1, !range !18, !noundef !19
  %.not174.i = icmp eq i8 %i.on, %i.op
  br i1 %.not174.i, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %intel_dbuf_enabled_slices.exit.i
  %i.oq = call i32 @intel_atomic_serialize_global_state(ptr noundef nonnull %i.lw) #16 ; 2 uses
  %.not175.i = icmp eq i32 %i.oq, 0
  br i1 %.not175.i, label %bb.dr, label %skl_print_wm_changes.exit

bb.dr:                                            ; preds = %bb.dq
  %i.or = load ptr, ptr %i.lt, align 8            ; 2 uses
  %.not.i197.i = icmp eq ptr %i.or, null
  br i1 %.not.i197.i, label %__drm_to_dev.exit.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.os = getelementptr i8, ptr %i.or, i64 8
  %i.ot = load ptr, ptr %i.os, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.ds, %bb.dr
  %i.ou = phi ptr [ %i.ot, %bb.ds ], [ null, %bb.dr ]
  %i.ov = load i8, ptr %i.ok, align 4
  %i.ow = zext i8 %i.ov to i32
  %i.ox = load i8, ptr %i.oj, align 4
  %i.oy = zext i8 %i.ox to i32
  %i.oz = getelementptr i8, ptr %i.lt, i64 1160
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = getelementptr i8, ptr %i.pa, i64 44
  %i.pc = load i8, ptr %i.pb, align 2
  %i.pd = zext i8 %i.pc to i32
  %i.pe = getelementptr i8, ptr %i.mc, i64 71
  %i.pf = load i8, ptr %i.pe, align 1, !range !18, !noundef !19
  %i.pg = trunc nuw i8 %i.pf to i1
  %i.ph = select i1 %i.pg, ptr @.str.25, ptr @.str.26
  %i.pi = getelementptr i8, ptr %i.lw, i64 71
  %i.pj = load i8, ptr %i.pi, align 1, !range !18, !noundef !19
  %i.pk = trunc nuw i8 %i.pj to i1
  %i.pl = select i1 %i.pk, ptr @.str.25, ptr @.str.26
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ou, i32 noundef 2, ptr noundef @.str.44, i32 noundef %i.ow, i32 noundef %i.oy, i32 noundef %i.pd, ptr noundef nonnull %i.ph, ptr noundef nonnull %i.pl) #16
  br label %bb.dt

bb.dt:                                            ; preds = %__drm_to_dev.exit.i, %bb.dp
  %i.pm = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not176.i = icmp eq ptr %i.pm, null
  br i1 %.not176.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pn = call ptr @__drm_to_display(ptr noundef nonnull %i.pm) #16
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.po = phi ptr [ %i.pn, %bb.du ], [ null, %bb.dt ]
  %i.pp = getelementptr i8, ptr %i.po, i64 40
  %i.pq = getelementptr i8, ptr %i.lw, i64 48
  %i.pr = getelementptr i8, ptr %i.mc, i64 48
  br label %.thread225.i

.thread225.i:                                     ; preds = %.thread225.i.backedge, %bb.dv
  %.pn177.in.i = phi ptr [ %i.pp, %bb.dv ], [ %.pn177.i, %.thread225.i.backedge ]
  %.pn177.i = load ptr, ptr %.pn177.in.i, align 8 ; 4 uses
  %i.ps = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not178.i = icmp eq ptr %i.ps, null
  br i1 %.not178.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %.thread225.i
  %i.pt = call ptr @__drm_to_display(ptr noundef nonnull %i.ps) #16
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.thread225.i
  %i.pu = phi ptr [ %i.pt, %bb.dw ], [ null, %.thread225.i ]
  %i.pv = getelementptr i8, ptr %i.pu, i64 40
  %.not239.i = icmp eq ptr %.pn177.i, %i.pv
  br i1 %.not239.i, label %.preheader.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.val194.i = load ptr, ptr %i.j, align 8
  %i.pw = getelementptr i8, ptr %.pn177.i, i64 -1512
  %.2138.val.i = load i32, ptr %i.pw, align 8
  %i.px = zext i32 %.2138.val.i to i64
  %i.py = getelementptr [56 x i8], ptr %.val194.i, i64 %i.px
  %i.pz = getelementptr i8, ptr %i.py, i64 24
  %i.qa = load ptr, ptr %i.pz, align 8            ; 3 uses
end_hunk_0
begin_hunk_1_@skl_wm_get_hw_state:bb.a
  %.pre.i96130 = load i16, ptr %.phi.trans.insert.i95129, align 2
  %i.br = icmp eq i16 %.pre.i96130, 0
  br i1 %i.br, label %skl_ddb_entry_union.exit99, label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %i.bk, label %skl_ddb_entry_union.exit.thread, label %skl_ddb_entry_union.exit

skl_ddb_entry_union.exit.thread:                  ; preds = %bb.l
  %.phi.trans.insert.i95118 = getelementptr i8, ptr %i.bf, i64 2 ; 2 uses
  %.pre.i96119 = load i16, ptr %.phi.trans.insert.i95118, align 2
  %i.bs = icmp eq i16 %.pre.i96119, 0
  br i1 %i.bs, label %skl_ddb_entry_union.exit99, label %bb.p

skl_ddb_entry_union.exit:                         ; preds = %bb.l
  %i.bt = load i16, ptr %i.bg, align 2
  store i16 %i.bt, ptr %i.aq, align 4
  %i.bu = load i16, ptr %.phi.trans.insert.i, align 2 ; 3 uses
  store i16 %i.bu, ptr %i.aw, align 2
  %.not.i94 = icmp eq i16 %i.bu, 0
  %.phi.trans.insert.i95 = getelementptr i8, ptr %i.bf, i64 2 ; 3 uses
  %.pre.i96 = load i16, ptr %.phi.trans.insert.i95, align 2
  %i.bv = icmp eq i16 %.pre.i96, 0                ; 2 uses
  br i1 %.not.i94, label %bb.o, label %bb.m

bb.m:                                             ; preds = %skl_ddb_entry_union.exit
  br i1 %i.bv, label %skl_ddb_entry_union.exit99, label %bb.n

bb.n:                                             ; preds = %skl_ddb_entry_union.exit.thread126, %skl_ddb_entry_union.exit.thread121, %bb.m
  %i.bw = phi i16 [ %i.bj, %skl_ddb_entry_union.exit.thread121 ], [ %i.bu, %bb.m ], [ %i.bq, %skl_ddb_entry_union.exit.thread126 ]
  %.phi.trans.insert.i95125132 = phi ptr [ %.phi.trans.insert.i95123, %skl_ddb_entry_union.exit.thread121 ], [ %.phi.trans.insert.i95, %bb.m ], [ %.phi.trans.insert.i95129, %skl_ddb_entry_union.exit.thread126 ]
  %i.bx = load i16, ptr %i.aq, align 4
  %i.by = load i16, ptr %i.bf, align 2
  %i.bz = call i16 @llvm.umin.i16(i16 %i.bx, i16 %i.by)
  store i16 %i.bz, ptr %i.aq, align 4
  %i.ca = load i16, ptr %.phi.trans.insert.i95125132, align 2
  %i.cb = call i16 @llvm.umax.i16(i16 %i.bw, i16 %i.ca)
  br label %.thread.sink.split.i97

bb.o:                                             ; preds = %skl_ddb_entry_union.exit
  br i1 %i.bv, label %skl_ddb_entry_union.exit99, label %bb.p

bb.p:                                             ; preds = %skl_ddb_entry_union.exit.thread, %bb.o
  %.phi.trans.insert.i95120134 = phi ptr [ %.phi.trans.insert.i95118, %skl_ddb_entry_union.exit.thread ], [ %.phi.trans.insert.i95, %bb.o ]
  %i.cc = load i16, ptr %i.bf, align 2
  store i16 %i.cc, ptr %i.aq, align 4
  %i.cd = load i16, ptr %.phi.trans.insert.i95120134, align 2
  br label %.thread.sink.split.i97

.thread.sink.split.i97:                           ; preds = %bb.p, %bb.n
  %.sink.i98 = phi i16 [ %i.cd, %bb.p ], [ %i.cb, %bb.n ]
  store i16 %.sink.i98, ptr %i.aw, align 2
  br label %skl_ddb_entry_union.exit99

skl_ddb_entry_union.exit99:                       ; preds = %skl_ddb_entry_union.exit.thread, %skl_ddb_entry_union.exit.thread126, %skl_ddb_entry_union.exit.thread121, %.thread.sink.split.i97, %bb.o, %bb.m, %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.q, label %bb.h, !llvm.loop !164

bb.q:                                             ; preds = %skl_ddb_entry_union.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ce = load i8, ptr %i.ah, align 8, !range !18, !noundef !19
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.r, label %intel_crtc_ddb_weight.exit

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.a, align 4, !annotation !22
  store i32 0, ptr %i.b, align 4, !annotation !22
  %i.cg = getelementptr i8, ptr %i.ac, i64 496
  call void @drm_mode_get_hv_timing(ptr noundef %i.cg, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.ch = load i32, ptr %i.a, align 4
  br label %intel_crtc_ddb_weight.exit

intel_crtc_ddb_weight.exit:                       ; preds = %bb.q, %bb.r
  %.0.i = phi i32 [ %i.ch, %bb.r ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ci = getelementptr [4 x i8], ptr %i.x, i64 %i.ap
  store i32 %.0.i, ptr %i.ci, align 4
  %i.cj = load i8, ptr %i.u, align 1
  %i.ck = load i8, ptr %i.y, align 1, !range !18, !noundef !19
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = call fastcc zeroext i8 @skl_compute_dbuf_slices(ptr noundef %.0109, i8 noundef zeroext %i.cj, i1 noundef zeroext %i.cl) #17, !srcloc !168
  %i.cn = call fastcc i32 @mbus_ddb_offset(ptr noundef %0, i8 noundef zeroext %i.cm) #17, !srcloc !169
  %i.co = load i16, ptr %i.aq, align 4
  %i.cp = trunc nuw i32 %i.cn to i16              ; 2 uses
  %i.cq = add i16 %i.co, %i.cp
  %i.cr = getelementptr i8, ptr %i.ac, i64 3600   ; 2 uses
  store i16 %i.cq, ptr %i.cr, align 8
  %i.cs = load i16, ptr %i.aw, align 2
  %i.ct = add i16 %i.cs, %i.cp
  %i.cu = getelementptr i8, ptr %i.ac, i64 3602   ; 2 uses
  store i16 %i.ct, ptr %i.cu, align 2
  %.val.i100 = load ptr, ptr %i.z, align 8        ; 2 uses
  %i.cv = getelementptr i8, ptr %.val.i100, i64 42
  %.val.val.i = load i16, ptr %i.cv, align 2
  %i.cw = getelementptr i8, ptr %.val.i100, i64 44
  %.val.val15.i = load i8, ptr %i.cw, align 2
  %i.cx = zext i8 %.val.val15.i to i32
  %i.cy = call i64 @llvm.read_register.i64(metadata !7)
  %i.cz = call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.cx, i64 %i.cy) #19, !srcloc !21 ; 2 uses
  %i.da = extractvalue { i32, i64 } %i.cz, 1
  call void @llvm.write_register.i64(metadata !7, i64 %i.da)
  %.val16.i.pre = load i16, ptr %i.cr, align 8    ; 2 uses
  %.val17.i.pre = load i16, ptr %i.cu, align 2    ; 2 uses
  %.not.i101 = icmp eq i16 %.val17.i.pre, %.val16.i.pre
  br i1 %.not.i101, label %skl_ddb_dbuf_slice_mask.exit, label %bb.s

bb.s:                                             ; preds = %intel_crtc_ddb_weight.exit
  %i.db = extractvalue { i32, i64 } %i.cz, 0
  %i.dc = zext i16 %.val.val.i to i32
  %i.dd = udiv i32 %i.dc, %i.db                   ; 2 uses
  %.rhs.trunc.i = trunc nuw i32 %i.dd to i16
  %i.de = udiv i16 %.val16.i.pre, %.rhs.trunc.i
  %.zext.i = zext i16 %i.de to i32                ; 2 uses
  %i.df = zext i16 %.val17.i.pre to i32
  %i.dg = add nsw i32 %i.df, -1
  %i.dh = sdiv i32 %i.dg, %i.dd                   ; 2 uses
  %.not1418.i = icmp ult i32 %i.dh, %.zext.i
  br i1 %.not1418.i, label %skl_ddb_dbuf_slice_mask.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i
  %.020.i = phi i8 [ %i.dl, %.lr.ph.i ], [ 0, %bb.s ]
  %.01219.i = phi i32 [ %i.dm, %.lr.ph.i ], [ %.zext.i, %bb.s ] ; 2 uses
  %i.di = zext nneg i32 %.01219.i to i64
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = trunc i64 %i.dj to i8
  %i.dl = or i8 %.020.i, %i.dk                    ; 2 uses
  %i.dm = add i32 %.01219.i, 1                    ; 2 uses
  %.not14.i = icmp ugt i32 %i.dm, %i.dh
  br i1 %.not14.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.dn = zext i8 %i.dl to i32
  br label %skl_ddb_dbuf_slice_mask.exit

skl_ddb_dbuf_slice_mask.exit:                     ; preds = %intel_crtc_ddb_weight.exit, %bb.s, %._crit_edge.loopexit.i
  %.013.i = phi i32 [ 0, %intel_crtc_ddb_weight.exit ], [ 0, %bb.s ], [ %i.dn, %._crit_edge.loopexit.i ] ; 2 uses
  %i.do = trunc nuw i32 %.013.i to i8
  %i.dp = getelementptr i8, ptr %i.aa, i64 %i.ap
  store i8 %i.do, ptr %i.dp, align 1
  %i.dq = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i102 = icmp eq ptr %i.dq, null
  br i1 %.not.i102, label %__drm_to_dev.exit, label %bb.t

bb.t:                                             ; preds = %skl_ddb_dbuf_slice_mask.exit
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %skl_ddb_dbuf_slice_mask.exit, %bb.t
  %i.dt = phi ptr [ %i.ds, %bb.t ], [ null, %skl_ddb_dbuf_slice_mask.exit ]
  %i.du = getelementptr i8, ptr %.pn108, i64 -1560
  %i.dv = load i32, ptr %i.du, align 8
  %i.dw = getelementptr i8, ptr %.pn108, i64 -1616
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = load i16, ptr %i.aq, align 4
  %i.dz = zext i16 %i.dy to i32
  %i.ea = load i16, ptr %i.aw, align 2
  %i.eb = zext i16 %i.ea to i32
  %i.ec = load i8, ptr %i.u, align 1
  %i.ed = zext i8 %i.ec to i32
  %i.ee = load i8, ptr %i.y, align 1, !range !18, !noundef !19
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = select i1 %i.ef, ptr @.str.25, ptr @.str.26
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dt, i32 noundef 2, ptr noundef @.str.60, i32 noundef %i.dv, ptr noundef %i.dx, i32 noundef %.013.i, i32 noundef %i.dz, i32 noundef %i.eb, i32 noundef %i.ed, ptr noundef nonnull %i.eg) #16
  %.pn = load ptr, ptr %.pn108, align 8           ; 2 uses
  %.not103 = icmp eq ptr %.pn, %i.v
  br i1 %.not103, label %._crit_edge, label %bb.e, !llvm.loop !165

._crit_edge:                                      ; preds = %__drm_to_dev.exit, %bb.d
  %i.eh = getelementptr i8, ptr %0, i64 712
  %i.ei = load i8, ptr %i.eh, align 8
  %i.ej = getelementptr i8, ptr %i.d, i64 68
  store i8 %i.ei, ptr %i.ej, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_wm_sanitize(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca [4 x %struct.skl_ddb_entry], align 16 ; 13 uses
  %i.a = getelementptr i8, ptr %0, i64 736        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 4503599627370496
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 1168
  %i.g = load i16, ptr %i.f, align 8
  %i.h = icmp ugt i16 %i.g, 13
  br i1 %i.h, label %bb.c, label %skl_mbus_sanitize.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 71       ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !range !18, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %2, label %skl_mbus_sanitize.exit

2:                                                ; preds = %bb.c
  %3 = getelementptr i8, ptr %i.b, i64 69
  %4 = load i8, ptr %3, align 1                   ; 2 uses
  switch i8 %4, label %adlp_check_mbus_joined.exit.thread.i [
    i8 1, label %adlp_check_mbus_joined.exit.i
    i8 2, label %.fold.split.i.i.i
    i8 3, label %.fold.split6.i.i.i
    i8 4, label %.fold.split7.i.i.i
    i8 5, label %.fold.split8.i.i.i
    i8 6, label %.fold.split9.i.i.i
    i8 7, label %.fold.split10.i.i.i
    i8 8, label %.fold.split11.i.i.i
    i8 9, label %.fold.split12.i.i.i
    i8 10, label %.fold.split13.i.i.i
    i8 11, label %.fold.split14.i.i.i
    i8 12, label %.fold.split15.i.i.i
    i8 13, label %.fold.split16.i.i.i
    i8 14, label %.fold.split17.i.i.i
    i8 15, label %.fold.split18.i.i.i
  ]

.fold.split.i.i.i:                                ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

.fold.split6.i.i.i:                               ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

.fold.split7.i.i.i:                               ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

.fold.split8.i.i.i:                               ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

.fold.split9.i.i.i:                               ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

.fold.split10.i.i.i:                              ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

.fold.split11.i.i.i:                              ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

.fold.split12.i.i.i:                              ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

.fold.split13.i.i.i:                              ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

.fold.split14.i.i.i:                              ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

.fold.split15.i.i.i:                              ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

.fold.split16.i.i.i:                              ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

.fold.split17.i.i.i:                              ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

.fold.split18.i.i.i:                              ; preds = %2
  br label %adlp_check_mbus_joined.exit.i

adlp_check_mbus_joined.exit.i:                    ; preds = %.fold.split18.i.i.i, %.fold.split17.i.i.i, %.fold.split16.i.i.i, %.fold.split15.i.i.i, %.fold.split14.i.i.i, %.fold.split13.i.i.i, %.fold.split12.i.i.i, %.fold.split11.i.i.i, %.fold.split10.i.i.i, %.fold.split9.i.i.i, %.fold.split8.i.i.i, %.fold.split7.i.i.i, %.fold.split6.i.i.i, %.fold.split.i.i.i, %2
  %.lcssa.i.i.i = phi ptr [ @adlp_allowed_dbufs, %2 ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 78), %.fold.split15.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 90), %.fold.split17.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 84), %.fold.split16.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 6), %.fold.split.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 24), %.fold.split6.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 30), %.fold.split7.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 36), %.fold.split8.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 42), %.fold.split9.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 48), %.fold.split10.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 54), %.fold.split11.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 60), %.fold.split12.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 66), %.fold.split13.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 72), %.fold.split14.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 96), %.fold.split18.i.i.i ]
  %5 = getelementptr i8, ptr %.lcssa.i.i.i, i64 5
  %6 = load i8, ptr %5, align 1, !range !18, !noundef !19
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %skl_mbus_sanitize.exit, label %adlp_check_mbus_joined.exit.thread.i

adlp_check_mbus_joined.exit.thread.i:             ; preds = %adlp_check_mbus_joined.exit.i, %2
  %i.l = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.d

bb.d:                                             ; preds = %adlp_check_mbus_joined.exit.thread.i
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.d, %adlp_check_mbus_joined.exit.thread.i
  %i.o = phi ptr [ %i.n, %bb.d ], [ null, %adlp_check_mbus_joined.exit.thread.i ]
  %i.p = zext i8 %4 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.o, i32 noundef 2, ptr noundef @.str.61, i32 noundef %i.p) #16
  store i8 0, ptr %i.i, align 1
  %i.q = getelementptr i8, ptr %i.b, i64 70
  %i.r = load i8, ptr %i.q, align 2
  %i.s = zext i8 %i.r to i32
  tail call void @intel_dbuf_mdclk_cdclk_ratio_update(ptr noundef %0, i32 noundef %i.s, i1 noundef zeroext false) #17
  tail call fastcc void @pipe_mbus_dbox_ctl_update(ptr noundef %0, ptr noundef %i.b) #17, !srcloc !175
  %.val.i = load i8, ptr %i.i, align 1, !range !18, !noundef !19
  %i.t = trunc nuw i8 %.val.i to i1
  %.1.i.i = select i1 %i.t, i32 -603979776, i32 469762048
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 279436) #16
  %.val.i.i.i = load ptr, ptr %0, align 8
  %i.u = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.i) #16 ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 144
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call i32 %i.w(ptr noundef %i.u, i32 279436, i1 noundef zeroext true) #16, !inline_history !170
  %i.y = and i32 %i.x, 603979775
  %i.z = or disjoint i32 %i.y, %.1.i.i
  %i.aa = getelementptr i8, ptr %i.u, i64 176
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef %i.u, i32 279436, i32 noundef %i.z, i1 noundef zeroext true) #16, !inline_history !171
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 279436) #16
  %.pre = load ptr, ptr %i.a, align 8
  br label %skl_mbus_sanitize.exit

skl_mbus_sanitize.exit:                           ; preds = %bb.b, %bb.c, %adlp_check_mbus_joined.exit.i, %__drm_to_dev.exit.i
  %i.ac = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %i.b, %adlp_check_mbus_joined.exit.i ], [ %.pre, %__drm_to_dev.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.ad = getelementptr i8, ptr %0, i64 40        ; 7 uses
  %.pn46.i.i = load ptr, ptr %i.ad, align 8       ; 3 uses
  %.not47.i.i = icmp eq ptr %.pn46.i.i, %i.ad
  br i1 %.not47.i.i, label %skl_dbuf_is_misconfigured.exit.i, label %.lr.ph.i.i

.lr.ph51.i.i:                                     ; preds = %.lr.ph.i.i
  %i.ae = getelementptr i8, ptr %i.ac, i64 69
  %i.af = getelementptr i8, ptr %i.ac, i64 71
  %i.ag = getelementptr i8, ptr %i.ac, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = load i16, ptr %1, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = load i16, ptr %i.ah, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = load i16, ptr %i.ai, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.au = load i16, ptr %i.at, align 2            ; 2 uses
  %i.av = load i16, ptr %i.aj, align 4
  br label %bb.e

.lr.ph.i.i:                                       ; preds = %skl_mbus_sanitize.exit, %.lr.ph.i.i
  %.pn48.i.i = phi ptr [ %.pn.i.i, %.lr.ph.i.i ], [ %.pn46.i.i, %skl_mbus_sanitize.exit ] ; 3 uses
  %i.aw = getelementptr i8, ptr %.pn48.i.i, i64 -168
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr i8, ptr %.pn48.i.i, i64 16
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [4 x i8], ptr %1, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.ax, i64 3600
  %i.bd = load i32, ptr %i.bc, align 4
  store i32 %i.bd, ptr %i.bb, align 4
  %.pn.i.i = load ptr, ptr %.pn48.i.i, align 8    ; 2 uses
  %.not.i.i2 = icmp eq ptr %.pn.i.i, %i.ad
  br i1 %.not.i.i2, label %.lr.ph51.i.i, label %.lr.ph.i.i, !llvm.loop !172

bb.e:                                             ; preds = %skl_ddb_entries_overlap.exit.thread.i.3.i.i, %.lr.ph51.i.i
  %.pn3950.i.i = phi ptr [ %.pn46.i.i, %.lr.ph51.i.i ], [ %.pn39.i.i, %skl_ddb_entries_overlap.exit.thread.i.3.i.i ] ; 4 uses
  %.138.i.i = getelementptr i8, ptr %.pn3950.i.i, i64 -1648
  %i.be = getelementptr i8, ptr %.pn3950.i.i, i64 -168
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = load i8, ptr %i.ae, align 1
  %i.bh = load i8, ptr %i.af, align 1, !range !18, !noundef !19
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = tail call fastcc zeroext i8 @skl_compute_dbuf_slices(ptr noundef %.138.i.i, i8 noundef zeroext %i.bg, i1 noundef zeroext %i.bi) #17, !srcloc !176
  %i.bk = getelementptr i8, ptr %.pn3950.i.i, i64 16
  %i.bl = load i32, ptr %i.bk, align 8            ; 5 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = zext i8 %i.bj to i32
  %i.br = xor i32 %i.bq, -1
  %i.bs = and i32 %i.bp, %i.br
  %.not41.not.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not41.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr i8, ptr %i.bf, i64 3600
  %i.bu = getelementptr i8, ptr %i.bf, i64 3602   ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.bl, 0
  %.pre.i = load i16, ptr %i.bt, align 2          ; 5 uses
  br i1 %.not.i.i.i, label %skl_ddb_entries_overlap.exit.thread.i.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = icmp ult i16 %.pre.i, %i.al
  br i1 %i.bv, label %skl_ddb_entries_overlap.exit.i.i.i, label %skl_ddb_entries_overlap.exit.thread.i.i.i

skl_ddb_entries_overlap.exit.i.i.i:               ; preds = %bb.g
  %i.bw = load i16, ptr %i.bu, align 2
  %i.bx = icmp ult i16 %i.am, %i.bw
  br i1 %i.bx, label %bb.h, label %skl_ddb_entries_overlap.exit.thread.i.i.i

skl_ddb_entries_overlap.exit.thread.i.i.i:        ; preds = %skl_ddb_entries_overlap.exit.i.i.i, %bb.g
  %.not.i.1.i.i = icmp eq i32 %i.bl, 1
  br i1 %.not.i.1.i.i, label %skl_ddb_entries_overlap.exit.thread.i.1.thread.i.i, label %skl_ddb_entries_overlap.exit.thread.i.thread.i.i

skl_ddb_entries_overlap.exit.thread.i.thread.i.i: ; preds = %skl_ddb_entries_overlap.exit.thread.i.i.i, %bb.f
  %i.by = icmp ult i16 %.pre.i, %i.ao
  br i1 %i.by, label %skl_ddb_entries_overlap.exit.i.1.i.i, label %skl_ddb_entries_overlap.exit.thread.i.1.i.i

skl_ddb_entries_overlap.exit.i.1.i.i:             ; preds = %skl_ddb_entries_overlap.exit.thread.i.thread.i.i
  %i.bz = load i16, ptr %i.bu, align 2
  %i.ca = icmp ult i16 %i.ap, %i.bz
  br i1 %i.ca, label %bb.h, label %skl_ddb_entries_overlap.exit.thread.i.1.i.i

skl_ddb_entries_overlap.exit.thread.i.1.i.i:      ; preds = %skl_ddb_entries_overlap.exit.i.1.i.i, %skl_ddb_entries_overlap.exit.thread.i.thread.i.i
  %.not.i.2.i.i = icmp eq i32 %i.bl, 2
  br i1 %.not.i.2.i.i, label %skl_ddb_entries_overlap.exit.thread.i.2.thread.i.i, label %skl_ddb_entries_overlap.exit.thread.i.1.thread.i.i

skl_ddb_entries_overlap.exit.thread.i.1.thread.i.i: ; preds = %skl_ddb_entries_overlap.exit.thread.i.1.i.i, %skl_ddb_entries_overlap.exit.thread.i.i.i
  %i.cb = icmp ult i16 %.pre.i, %i.ar
  br i1 %i.cb, label %skl_ddb_entries_overlap.exit.i.2.i.i, label %skl_ddb_entries_overlap.exit.thread.i.2.i.i

skl_ddb_entries_overlap.exit.i.2.i.i:             ; preds = %skl_ddb_entries_overlap.exit.thread.i.1.thread.i.i
  %i.cc = load i16, ptr %i.bu, align 2
  %i.cd = icmp ult i16 %i.as, %i.cc
  br i1 %i.cd, label %bb.h, label %skl_ddb_entries_overlap.exit.thread.i.2.i.i

skl_ddb_entries_overlap.exit.thread.i.2.i.i:      ; preds = %skl_ddb_entries_overlap.exit.i.2.i.i, %skl_ddb_entries_overlap.exit.thread.i.1.thread.i.i
  %.not.i.3.i.i = icmp ne i32 %i.bl, 3
  %i.ce = icmp ult i16 %.pre.i, %i.au
  %or.cond.i = select i1 %.not.i.3.i.i, i1 %i.ce, i1 false
  br i1 %or.cond.i, label %skl_ddb_entries_overlap.exit.i.3.i.i, label %skl_ddb_entries_overlap.exit.thread.i.3.i.i

skl_ddb_entries_overlap.exit.thread.i.2.thread.i.i: ; preds = %skl_ddb_entries_overlap.exit.thread.i.1.i.i
  %.old.i = icmp ult i16 %.pre.i, %i.au
  br i1 %.old.i, label %skl_ddb_entries_overlap.exit.i.3.i.i, label %skl_ddb_entries_overlap.exit.thread.i.3.i.i

skl_ddb_entries_overlap.exit.i.3.i.i:             ; preds = %skl_ddb_entries_overlap.exit.thread.i.2.thread.i.i, %skl_ddb_entries_overlap.exit.thread.i.2.i.i
  %i.cf = load i16, ptr %i.bu, align 2
  %i.cg = icmp ult i16 %i.av, %i.cf
  br i1 %i.cg, label %bb.h, label %skl_ddb_entries_overlap.exit.thread.i.3.i.i

skl_ddb_entries_overlap.exit.thread.i.3.i.i:      ; preds = %skl_ddb_entries_overlap.exit.i.3.i.i, %skl_ddb_entries_overlap.exit.thread.i.2.thread.i.i, %skl_ddb_entries_overlap.exit.thread.i.2.i.i
  %.pn39.i.i = load ptr, ptr %.pn3950.i.i, align 8 ; 2 uses
  %.not55.i.i = icmp eq ptr %.pn39.i.i, %i.ad
  br i1 %.not55.i.i, label %skl_dbuf_is_misconfigured.exit.i, label %bb.e, !llvm.loop !173

skl_dbuf_is_misconfigured.exit.i:                 ; preds = %skl_ddb_entries_overlap.exit.thread.i.3.i.i, %skl_mbus_sanitize.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %skl_dbuf_sanitize.exit

bb.h:                                             ; preds = %skl_ddb_entries_overlap.exit.i.3.i.i, %skl_ddb_entries_overlap.exit.i.2.i.i, %skl_ddb_entries_overlap.exit.i.1.i.i, %skl_ddb_entries_overlap.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.ch = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i34.i = icmp eq ptr %i.ch, null
  br i1 %.not.i34.i, label %__drm_to_dev.exit.i3, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  br label %__drm_to_dev.exit.i3

__drm_to_dev.exit.i3:                             ; preds = %bb.i, %bb.h
  %i.ck = phi ptr [ %i.cj, %bb.i ], [ null, %bb.h ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ck, i32 noundef 2, ptr noundef @.str.62) #16
  %.pn48.i = load ptr, ptr %i.ad, align 8         ; 2 uses
  %.not50.i = icmp eq ptr %.pn48.i, %i.ad
  br i1 %.not50.i, label %skl_dbuf_sanitize.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %__drm_to_dev.exit.i3, %bb.q
  %.pn51.i = phi ptr [ %.pn.i, %bb.q ], [ %.pn48.i, %__drm_to_dev.exit.i3 ] ; 4 uses
  %i.cl = getelementptr i8, ptr %.pn51.i, i64 -1528
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 1232
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr i8, ptr %.pn51.i, i64 -168
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cr = getelementptr i8, ptr %i.co, i64 140
  %i.cs = load i8, ptr %i.cr, align 4, !range !18, !noundef !19
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %.052.i = getelementptr i8, ptr %.pn51.i, i64 -1648
  tail call void @intel_plane_disable_noatomic(ptr noundef %.052.i, ptr noundef %i.cm) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.cu = getelementptr i8, ptr %i.cq, i64 3945
  %i.cv = load i8, ptr %i.cu, align 1
  %.not33.i = icmp eq i8 %i.cv, 0
  br i1 %.not33.i, label %bb.q, label %bb.l, !prof !24

bb.l:                                             ; preds = %bb.k
end_hunk_1
