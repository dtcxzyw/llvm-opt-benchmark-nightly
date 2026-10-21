Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/kprobes?download=true
inline.NumInlined: 281
inline.NumDeleted: 96
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@kprobes_module_callback:bb.a
  %i.cl = getelementptr i8, ptr %2, i64 476
  %i.cm = getelementptr i8, ptr %2, i64 536
  %i.cn = getelementptr i8, ptr %2, i64 548
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.co = getelementptr [8 x i8], ptr @kprobe_table, i64 %indvars.iv
  %.03156 = load ptr, ptr %i.co, align 8          ; 2 uses
  %.not3457 = icmp eq ptr %.03156, null
  br i1 %.not3457, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.x
  %.03158 = phi ptr [ %.031, %bb.x ], [ %.03156, %bb.n ] ; 12 uses
  %i.cp = getelementptr i8, ptr %.03158, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64               ; 7 uses
  %i.cs = load ptr, ptr %i.ca, align 8
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = load i32, ptr %i.cb, align 4
  %i.cv = zext i32 %i.cu to i64
  %i.cw = sub i64 %i.cr, %i.ct
  %i.cx = icmp ult i64 %i.cw, %i.cv
  br i1 %i.cx, label %within_module_init.exit.thread, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.cy = load ptr, ptr %i.cc, align 8
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = load i32, ptr %i.cd, align 4
  %i.db = zext i32 %i.da to i64
  %i.dc = sub i64 %i.cr, %i.cz
  %i.dd = icmp ult i64 %i.dc, %i.db
  br i1 %i.dd, label %within_module_init.exit.thread, label %within_module_init.exit

within_module_init.exit:                          ; preds = %bb.o
  %i.de = load ptr, ptr %i.ce, align 8
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = load i32, ptr %i.cf, align 4
  %i.dh = zext i32 %i.dg to i64
  %i.di = sub i64 %i.cr, %i.df
  %i.dj = icmp ult i64 %i.di, %i.dh
  br i1 %i.dj, label %within_module_init.exit.thread, label %bb.p

bb.p:                                             ; preds = %within_module_init.exit
  br i1 %i.g, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.dk = load ptr, ptr %i.cg, align 8
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = load i32, ptr %i.ch, align 4
  %i.dn = zext i32 %i.dm to i64
  %i.do = sub i64 %i.cr, %i.dl
  %i.dp = icmp ult i64 %i.do, %i.dn
  br i1 %i.dp, label %within_module_init.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = load ptr, ptr %i.ci, align 8
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = load i32, ptr %i.cj, align 4
  %i.dt = zext i32 %i.ds to i64
  %i.du = sub i64 %i.cr, %i.dr
  %i.dv = icmp ult i64 %i.du, %i.dt
  br i1 %i.dv, label %within_module_init.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dw = load ptr, ptr %i.ck, align 8
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = load i32, ptr %i.cl, align 4
  %i.dz = zext i32 %i.dy to i64
  %i.ea = sub i64 %i.cr, %i.dx
  %i.eb = icmp ult i64 %i.ea, %i.dz
  br i1 %i.eb, label %within_module_init.exit.thread, label %within_module_core.exit

within_module_core.exit:                          ; preds = %bb.s
  %i.ec = load ptr, ptr %i.cm, align 8
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = load i32, ptr %i.cn, align 4
  %i.ef = zext i32 %i.ee to i64
  %i.eg = sub i64 %i.cr, %i.ed
  %i.eh = icmp ult i64 %i.eg, %i.ef
  br i1 %i.eh, label %within_module_init.exit.thread, label %bb.x

within_module_init.exit.thread:                   ; preds = %bb.r, %bb.q, %bb.s, %.lr.ph, %bb.o, %within_module_core.exit, %within_module_init.exit
  %i.ei = getelementptr i8, ptr %.03158, i64 120  ; 4 uses
  %.val19.i = load i32, ptr %i.ei, align 8
  %i.ej = or i32 %.val19.i, 1
  store i32 %i.ej, ptr %i.ei, align 8
  %i.ek = getelementptr i8, ptr %.03158, i64 64   ; 2 uses
  %.val18.i = load ptr, ptr %i.ek, align 8
  %i.el = icmp eq ptr %.val18.i, @aggr_pre_handler
  br i1 %i.el, label %bb.t, label %kill_kprobe.exit

bb.t:                                             ; preds = %within_module_init.exit.thread
  %i.em = getelementptr i8, ptr %.03158, i64 16   ; 5 uses
  %.pn20.i = load ptr, ptr %i.em, align 8         ; 2 uses
  %.not21.i = icmp eq ptr %.pn20.i, %i.em
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.t, %.lr.ph.i38
  %.pn22.i = phi ptr [ %.pn.i, %.lr.ph.i38 ], [ %.pn20.i, %bb.t ] ; 2 uses
  %i.en = getelementptr i8, ptr %.pn22.i, i64 104 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = or i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 8
  %.pn.i = load ptr, ptr %.pn22.i, align 8        ; 2 uses
  %.not.i39 = icmp eq ptr %.pn.i, %i.em
  br i1 %.not.i39, label %._crit_edge.i, label %.lr.ph.i38, !llvm.loop !7

._crit_edge.i:                                    ; preds = %.lr.ph.i38, %bb.t
  %i.eq = getelementptr i8, ptr %.03158, i64 72
  store ptr null, ptr %i.eq, align 8
  %i.er = getelementptr i8, ptr %.03158, i64 128  ; 9 uses
  %i.es = load volatile ptr, ptr %i.er, align 8   ; 4 uses
  %.not.i.i40 = icmp eq ptr %i.es, %i.er
  br i1 %.not.i.i40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i
  %i.et = getelementptr i8, ptr %.03158, i64 136  ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %i.ev = getelementptr i8, ptr %i.es, i64 8
  store ptr %i.eu, ptr %i.ev, align 8
  store volatile ptr %i.es, ptr %i.eu, align 8
  store volatile ptr %i.er, ptr %i.er, align 8
  store volatile ptr %i.er, ptr %i.et, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  %i.ew = phi ptr [ %i.er, %bb.u ], [ %i.es, %._crit_edge.i ] ; 2 uses
  %i.ex = load i32, ptr %i.ei, align 8            ; 2 uses
  %i.ey = and i32 %i.ex, -5
  store i32 %i.ey, ptr %i.ei, align 8
  %.val3.i.i.i = load ptr, ptr %i.ek, align 8
  %i.ez = icmp ne ptr %.val3.i.i.i, @aggr_pre_handler
  %i.fa = and i32 %i.ex, 3
  %.not.i.i.i41 = icmp eq i32 %i.fa, 0
  %or.cond.i.i = select i1 %i.ez, i1 true, i1 %.not.i.i.i41
  br i1 %or.cond.i.i, label %kill_optimized_kprobe.exit.i, label %kprobe_unused.exit.i.i

kprobe_unused.exit.i.i:                           ; preds = %bb.v
  %i.fb = load volatile ptr, ptr %i.em, align 8
  %i.fc = icmp eq ptr %i.fb, %i.em
  br i1 %i.fc, label %.preheader.i.i, label %kill_optimized_kprobe.exit.i

.preheader.i.i:                                   ; preds = %kprobe_unused.exit.i.i, %.preheader.i.i
  %.pn.in.i.i.i = phi ptr [ %.pn.i.i.i, %.preheader.i.i ], [ @unoptimizing_list, %kprobe_unused.exit.i.i ]
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 8 ; 3 uses
  %i.fd = icmp ne ptr %.pn.i.i.i, @unoptimizing_list ; 2 uses
  %.09.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i64 -128
  %i.fe = icmp ne ptr %.03158, %.09.i.i.i
  %or.cond.not.i.i.i = and i1 %i.fd, %i.fe
  br i1 %or.cond.not.i.i.i, label %.preheader.i.i, label %optprobe_queued_unopt.exit.i.i, !llvm.loop !4

optprobe_queued_unopt.exit.i.i:                   ; preds = %.preheader.i.i
  br i1 %i.fd, label %bb.w, label %kill_optimized_kprobe.exit.i

bb.w:                                             ; preds = %optprobe_queued_unopt.exit.i.i
  %i.ff = getelementptr i8, ptr %.03158, i64 136  ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ew, i64 8
  store ptr %i.fg, ptr %i.fh, align 8
  store volatile ptr %i.ew, ptr %i.fg, align 8
  %i.fi = load ptr, ptr @freeing_list, align 8    ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  store ptr %i.er, ptr %i.fj, align 8
  store ptr %i.fi, ptr %i.er, align 8
  store ptr @freeing_list, ptr %i.ff, align 8
  store volatile ptr %i.er, ptr @freeing_list, align 8
  br label %kill_optimized_kprobe.exit.i

kill_optimized_kprobe.exit.i:                     ; preds = %bb.w, %optprobe_queued_unopt.exit.i.i, %kprobe_unused.exit.i.i, %bb.v
  call void @arch_remove_optimized_kprobe(ptr noundef nonnull %.03158) #20
  br label %kill_kprobe.exit

kill_kprobe.exit:                                 ; preds = %within_module_init.exit.thread, %kill_optimized_kprobe.exit.i
  call void @arch_remove_kprobe(ptr noundef nonnull %.03158) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.p, %within_module_core.exit, %kill_kprobe.exit
  %.031 = load ptr, ptr %.03158, align 8          ; 2 uses
  %.not34 = icmp eq ptr %.031, null
  br i1 %.not34, label %._crit_edge, label %.lr.ph, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.x, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.y, label %bb.n, !llvm.loop !122

bb.y:                                             ; preds = %._crit_edge
  br i1 %i.g, label %bb.z, label %remove_module_kprobe_blacklist.exit

bb.z:                                             ; preds = %bb.y
  %i.fk = getelementptr i8, ptr %2, i64 1096      ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8
  %.not.i42 = icmp eq ptr %i.fl, null
  br i1 %.not.i42, label %.loopexit.i46, label %.preheader.i43

.preheader.i43:                                   ; preds = %bb.z
  %i.fm = getelementptr i8, ptr %2, i64 1104      ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 16           ; 2 uses
  %.not30.i = icmp eq i32 %i.fn, 0
  %i.fo = load ptr, ptr @kprobe_blacklist, align 8
  %i.fp = icmp eq ptr %i.fo, @kprobe_blacklist
  %or.cond.i = select i1 %.not30.i, i1 true, i1 %i.fp
  br i1 %or.cond.i, label %.loopexit.i46, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.preheader.i43, %kprobe_remove_ksym_blacklist.exit.i
  %i.fq = phi i32 [ %i.gc, %kprobe_remove_ksym_blacklist.exit.i ], [ %i.fn, %.preheader.i43 ]
  %.029.i = phi i32 [ %i.gd, %kprobe_remove_ksym_blacklist.exit.i ], [ 0, %.preheader.i43 ] ; 2 uses
  %i.fr = load ptr, ptr %i.fk, align 8
  %i.fs = sext i32 %.029.i to i64
  %i.ft = getelementptr [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8            ; 2 uses
  %i.fv = add i64 %i.fu, 1
  %3 = load ptr, ptr @kprobe_blacklist, align 8   ; 2 uses
  %.not19.i.i.i = icmp eq ptr %3, @kprobe_blacklist
  br i1 %.not19.i.i.i, label %kprobe_remove_ksym_blacklist.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.i, %bb.ab
  %.020.i.i.i = phi ptr [ %.01521.i.i.i, %bb.ab ], [ %3, %.lr.ph.split.i ] ; 5 uses
  %.01521.i.i.i = load ptr, ptr %.020.i.i.i, align 8 ; 4 uses
  %i.fw = getelementptr i8, ptr %.020.i.i.i, i64 16
  %i.fx = load i64, ptr %i.fw, align 8            ; 2 uses
  %i.fy = icmp uge i64 %i.fx, %i.fu
  %.not17.i.i.i44 = icmp ult i64 %i.fx, %i.fv
  %or.cond.i.i.i = and i1 %i.fy, %.not17.i.i.i44
  br i1 %or.cond.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.fz = getelementptr i8, ptr %.020.i.i.i, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8            ; 2 uses
  %i.gb = getelementptr i8, ptr %.01521.i.i.i, i64 8
  store ptr %i.ga, ptr %i.gb, align 8
  store volatile ptr %.01521.i.i.i, ptr %i.ga, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.020.i.i.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.fz, align 8
  call void @kfree(ptr noundef %.020.i.i.i) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i.i
  %.not.i.i.i45 = icmp eq ptr %.01521.i.i.i, @kprobe_blacklist
  br i1 %.not.i.i.i45, label %kprobe_remove_ksym_blacklist.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !123

kprobe_remove_ksym_blacklist.exit.loopexit.i:     ; preds = %bb.ab
  %.pre.i.a = load i32, ptr %i.fm, align 16
  br label %kprobe_remove_ksym_blacklist.exit.i

kprobe_remove_ksym_blacklist.exit.i:              ; preds = %kprobe_remove_ksym_blacklist.exit.loopexit.i, %.lr.ph.split.i
  %i.gc = phi i32 [ %.pre.i.a, %kprobe_remove_ksym_blacklist.exit.loopexit.i ], [ %i.fq, %.lr.ph.split.i ] ; 2 uses
  %i.gd = add nuw i32 %.029.i, 1                  ; 2 uses
  %i.ge = icmp ult i32 %i.gd, %i.gc
  br i1 %i.ge, label %.lr.ph.split.i, label %.loopexit.i46, !llvm.loop !124

.loopexit.i46:                                    ; preds = %kprobe_remove_ksym_blacklist.exit.i, %.preheader.i43, %bb.z
  %i.gf = getelementptr i8, ptr %2, i64 1080
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %.not19.i47 = icmp eq ptr %i.gg, null
  br i1 %.not19.i47, label %kprobe_remove_area_blacklist.exit.i, label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i46
  %i.gh = ptrtoint ptr %i.gg to i64               ; 2 uses
  %i.gi = getelementptr i8, ptr %2, i64 1088
  %i.gj = load i32, ptr %i.gi, align 64
  %i.gk = zext i32 %i.gj to i64
  %i.gl = add i64 %i.gk, %i.gh
  %i.gm = load ptr, ptr @kprobe_blacklist, align 8 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.gm, @kprobe_blacklist
  br i1 %.not19.i.i, label %kprobe_remove_area_blacklist.exit.i, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.ac, %bb.ae
  %.020.i.i = phi ptr [ %.01521.i.i, %bb.ae ], [ %i.gm, %bb.ac ] ; 5 uses
  %.01521.i.i = load ptr, ptr %.020.i.i, align 8  ; 4 uses
  %i.gn = getelementptr i8, ptr %.020.i.i, i64 16
  %i.go = load i64, ptr %i.gn, align 8            ; 2 uses
  %i.gp = icmp uge i64 %i.go, %i.gh
  %.not17.i.i49 = icmp ult i64 %i.go, %i.gl
  %or.cond.i.i50 = and i1 %i.gp, %.not17.i.i49
  br i1 %or.cond.i.i50, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i48
  %i.gq = getelementptr i8, ptr %.020.i.i, i64 8  ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8            ; 2 uses
  %i.gs = getelementptr i8, ptr %.01521.i.i, i64 8
  store ptr %i.gr, ptr %i.gs, align 8
  store volatile ptr %.01521.i.i, ptr %i.gr, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.020.i.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.gq, align 8
  call void @kfree(ptr noundef %.020.i.i) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i.i48
  %.not.i.i51 = icmp eq ptr %.01521.i.i, @kprobe_blacklist
  br i1 %.not.i.i51, label %kprobe_remove_area_blacklist.exit.i, label %.lr.ph.i.i48, !llvm.loop !123

kprobe_remove_area_blacklist.exit.i:              ; preds = %bb.ae, %bb.ac, %.loopexit.i46
  %i.gt = getelementptr i8, ptr %2, i64 984
  %i.gu = load ptr, ptr %i.gt, align 8            ; 2 uses
  %.not20.i52 = icmp eq ptr %i.gu, null
  br i1 %.not20.i52, label %remove_module_kprobe_blacklist.exit, label %bb.af

bb.af:                                            ; preds = %kprobe_remove_area_blacklist.exit.i
  %i.gv = ptrtoint ptr %i.gu to i64               ; 2 uses
  %i.gw = getelementptr i8, ptr %2, i64 992
  %i.gx = load i32, ptr %i.gw, align 32
  %i.gy = zext i32 %i.gx to i64
  %i.gz = add i64 %i.gy, %i.gv
  %i.ha = load ptr, ptr @kprobe_blacklist, align 8 ; 2 uses
  %.not19.i21.i = icmp eq ptr %i.ha, @kprobe_blacklist
  br i1 %.not19.i21.i, label %remove_module_kprobe_blacklist.exit, label %.lr.ph.i22.i53

.lr.ph.i22.i53:                                   ; preds = %bb.af, %bb.ah
  %.020.i23.i = phi ptr [ %.01521.i24.i, %bb.ah ], [ %i.ha, %bb.af ] ; 5 uses
  %.01521.i24.i = load ptr, ptr %.020.i23.i, align 8 ; 4 uses
  %i.hb = getelementptr i8, ptr %.020.i23.i, i64 16
  %i.hc = load i64, ptr %i.hb, align 8            ; 2 uses
  %i.hd = icmp uge i64 %i.hc, %i.gv
  %.not17.i25.i = icmp ult i64 %i.hc, %i.gz
  %or.cond.i26.i = and i1 %i.hd, %.not17.i25.i
  br i1 %or.cond.i26.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i22.i53
  %i.he = getelementptr i8, ptr %.020.i23.i, i64 8 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8            ; 2 uses
  %i.hg = getelementptr i8, ptr %.01521.i24.i, i64 8
  store ptr %i.hf, ptr %i.hg, align 8
  store volatile ptr %.01521.i24.i, ptr %i.hf, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.020.i23.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.he, align 8
  call void @kfree(ptr noundef %.020.i23.i) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i22.i53
  %.not.i27.i = icmp eq ptr %.01521.i24.i, @kprobe_blacklist
  br i1 %.not.i27.i, label %remove_module_kprobe_blacklist.exit, label %.lr.ph.i22.i53, !llvm.loop !123

remove_module_kprobe_blacklist.exit:              ; preds = %bb.ah, %bb.af, %kprobe_remove_area_blacklist.exit.i, %bb.y, %add_module_kprobe_blacklist.exit
  call void @mutex_unlock(ptr noundef @kprobe_mutex) #20
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_kprobes_optimization_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef @kprobe_sysctl_mutex) #20
  %.b = load i1, ptr @kprobes_allow_optimization, align 1
  %i.a = zext i1 %.b to i32
  store i32 %i.a, ptr @sysctl_kprobes_optimization, align 4
  %i.b = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #20
  %i.c = load i32, ptr @sysctl_kprobes_optimization, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @optimize_all_kprobes() #22, !srcloc !128
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  tail call void @mutex_lock(ptr noundef @kprobe_mutex) #20
  %.b.i = load i1, ptr @kprobes_allow_optimization, align 1
  br i1 %.b.i, label %bb.d, label %unoptimize_all_kprobes.exit

bb.d:                                             ; preds = %bb.c
  tail call void @cpus_read_lock() #20
  store i1 false, ptr @kprobes_allow_optimization, align 1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.d = getelementptr [8 x i8], ptr @kprobe_table, i64 %indvars.iv.i
  %.024.i = load ptr, ptr %i.d, align 8           ; 2 uses
  %.not2025.i = icmp eq ptr %.024.i, null
  br i1 %.not2025.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %unoptimize_kprobe.exit.i
  %.026.i = phi ptr [ %.0.i, %unoptimize_kprobe.exit.i ], [ %.024.i, %bb.e ] ; 7 uses
  %i.e = getelementptr i8, ptr %.026.i, i64 120   ; 3 uses
  %.0.val.i = load i32, ptr %i.e, align 8         ; 2 uses
  %i.f = and i32 %.0.val.i, 3
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.f, label %unoptimize_kprobe.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr i8, ptr %.026.i, i64 64
  %.val.i.i = load ptr, ptr %i.g, align 8
  %i.h = icmp ne ptr %.val.i.i, @aggr_pre_handler
  %.old.i.i = and i32 %.0.val.i, 4
  %.old17.not.i.i = icmp eq i32 %.old.i.i, 0
  %or.cond.i = or i1 %.old17.not.i.i, %i.h
  br i1 %or.cond.i, label %unoptimize_kprobe.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr i8, ptr %.026.i, i64 128   ; 8 uses
  %i.j = load volatile ptr, ptr %i.i, align 8     ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i, label %bb.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.i
  %.pn.in.i.i.i = phi ptr [ %.pn.i.i.i, %.preheader.i.i ], [ @unoptimizing_list, %bb.g ]
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 8 ; 3 uses
  %i.k = icmp ne ptr %.pn.i.i.i, @unoptimizing_list ; 2 uses
  %.09.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i64 -128
  %i.l = icmp ne ptr %.026.i, %.09.i.i.i
  %or.cond.not.i.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.not.i.i.i, label %.preheader.i.i, label %optprobe_queued_unopt.exit.i.i, !llvm.loop !4

optprobe_queued_unopt.exit.i.i:                   ; preds = %.preheader.i.i
  br i1 %i.k, label %unoptimize_kprobe.exit.i, label %bb.h

bb.h:                                             ; preds = %optprobe_queued_unopt.exit.i.i
  %i.m = getelementptr i8, ptr %.026.i, i64 136   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store volatile ptr %i.j, ptr %i.n, align 8
  store volatile ptr %i.i, ptr %i.i, align 8
  store volatile ptr %i.i, ptr %i.m, align 8
  %i.p = load i32, ptr %i.e, align 8
  %i.q = and i32 %i.p, -5
  store i32 %i.q, ptr %i.e, align 8
  br label %unoptimize_kprobe.exit.i

bb.i:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @unoptimizing_list, align 8 ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store ptr %i.i, ptr %i.s, align 8
  store ptr %i.r, ptr %i.i, align 8
  %i.t = getelementptr i8, ptr %.026.i, i64 136
  store ptr @unoptimizing_list, ptr %i.t, align 8
  store volatile ptr %i.i, ptr @unoptimizing_list, align 8
  %i.u = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $2, $1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @optimizer_state, i32 1, i32 0, ptr elementtype(i32) @optimizer_state) #21, !srcloc !38
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %unoptimize_kprobe.exit.i

bb.j:                                             ; preds = %bb.i
  %i.w = tail call i32 @__wake_up(ptr noundef @kprobe_optimizer_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #20 ; 0 uses
  br label %unoptimize_kprobe.exit.i

unoptimize_kprobe.exit.i:                         ; preds = %bb.j, %bb.i, %bb.h, %optprobe_queued_unopt.exit.i.i, %bb.f, %.lr.ph.i
  %.0.i = load ptr, ptr %.026.i, align 8          ; 2 uses
  %.not20.i = icmp eq ptr %.0.i, null
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !126

._crit_edge.i:                                    ; preds = %unoptimize_kprobe.exit.i, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %bb.k, label %bb.e, !llvm.loop !127
end_hunk_0
