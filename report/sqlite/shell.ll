Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@process_input:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) @dynPrompt, ptr noundef nonnull align 1 dereferenceable(3) @.str.2014, i64 3, i1 false), !tbaa !16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 3), align 1, !tbaa !16
  br label %.lr.ph.i30.i.i.preheader

.lr.ph.i30.i.i.preheader:                         ; preds = %.lr.ph.i18.preheader.i.i, %.lr.ph.i24.preheader.i.i, %.lr.ph.i12.preheader.i.i
  br label %.lr.ph.i30.i.i

.lr.ph.i30.i.i:                                   ; preds = %bb.x, %.lr.ph.i30.i.i.preheader
  %.011.i31.i.i = phi i64 [ 0, %.lr.ph.i30.i.i.preheader ], [ %i.dj, %bb.x ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @continuePrompt, i64 3), i64 %.011.i31.i.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !16  ; 2 uses
  %.not.i32.i.i = icmp eq i8 %i.cz, 0
  br i1 %.not.i32.i.i, label %.thread.sink.split.i.i, label %.lr.ph.i30.i.i.1

.lr.ph.i30.i.i.1:                                 ; preds = %.lr.ph.i30.i.i
  %i.da = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 3), i64 %.011.i31.i.i
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !16
  %i.db = add nuw nsw i64 %.011.i31.i.i, 1        ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @continuePrompt, i64 3), i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !16  ; 2 uses
  %.not.i32.i.i.1 = icmp eq i8 %i.dd, 0
  br i1 %.not.i32.i.i.1, label %.thread.sink.split.i.i, label %.lr.ph.i30.i.i.2

.lr.ph.i30.i.i.2:                                 ; preds = %.lr.ph.i30.i.i.1
  %i.de = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 3), i64 %i.db
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !16
  %i.df = add nuw nsw i64 %.011.i31.i.i, 2        ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @continuePrompt, i64 3), i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !16  ; 2 uses
  %.not.i32.i.i.2 = icmp eq i8 %i.dh, 0
  br i1 %.not.i32.i.i.2, label %.thread.sink.split.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i30.i.i.2
  %i.di = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 3), i64 %i.df
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !16
  %i.dj = add nuw nsw i64 %.011.i31.i.i, 3        ; 2 uses
  %exitcond.not.i33.i.i.2 = icmp eq i64 %i.dj, 123
  br i1 %exitcond.not.i33.i.i.2, label %.thread.sink.split.i.i, label %.lr.ph.i30.i.i, !llvm.loop !698

.thread.sink.split.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %bb.u, %.lr.ph.i30.i.i, %.lr.ph.i30.i.i.1, %.lr.ph.i30.i.i.2, %bb.x
  %.0.lcssa.ph.i34.sink.i.i = phi i64 [ %i.df, %.lr.ph.i30.i.i.2 ], [ 123, %bb.x ], [ %.011.i31.i.i, %.lr.ph.i30.i.i ], [ %i.db, %.lr.ph.i30.i.i.1 ], [ 123, %bb.u ], [ %.011.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %.lr.ph.i.i.i.1 ], [ %i.cp, %.lr.ph.i.i.i.2 ]
  %i.dk = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 3), i64 %.0.lcssa.ph.i34.sink.i.i
  store i8 0, ptr %i.dk, align 1, !tbaa !16
  br label %dynamicContinuePrompt.exit.i

dynamicContinuePrompt.exit.i:                     ; preds = %.thread.sink.split.i.i, %bb.t, %bb.r, %bb.q, %bb.p
  %i.dl = phi ptr [ @mainPrompt, %bb.p ], [ @continuePrompt, %bb.t ], [ @continuePrompt, %bb.q ], [ @continuePrompt, %bb.r ], [ @dynPrompt, %.thread.sink.split.i.i ]
  tail call void @free(ptr noundef %.0144) #45
  %i.dm = tail call ptr @readline(ptr noundef nonnull %i.dl) #45 ; 2 uses
  %cond15.i = icmp eq ptr %i.dm, null
  br i1 %cond15.i, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %dynamicContinuePrompt.exit.i, %bb.y
  %i.dn = tail call i32 @sqlite3_sleep(i32 noundef 50) #45 ; 0 uses
  %i.do = load volatile i32, ptr @seenInterrupt, align 4, !tbaa !17
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %one_input_line.exit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i
  %i.dq = tail call ptr @readline(ptr noundef nonnull @.str.48) #45 ; 2 uses
  %cond.i = icmp eq ptr %i.dq, null
  br i1 %cond.i, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !785

.loopexit.i:                                      ; preds = %bb.y, %dynamicContinuePrompt.exit.i
  %.0.lcssa.i = phi ptr [ %i.dm, %dynamicContinuePrompt.exit.i ], [ %i.dq, %bb.y ] ; 4 uses
  %i.dr = load i8, ptr %.0.lcssa.i, align 1, !tbaa !16
  %.not14.i = icmp eq i8 %i.dr, 0
  br i1 %.not14.i, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %.loopexit.i
  tail call void @add_history(ptr noundef nonnull %.0.lcssa.i) #45
  br label %bb.ae

one_input_line.exit.sink.split:                   ; preds = %bb.j, %bb.g
  %.136.i.i.lcssa.lcssa.sink = phi ptr [ %.035.i.i, %bb.g ], [ %.136.i.i, %bb.j ]
  tail call void @free(ptr noundef %.136.i.i.lcssa.lcssa.sink) #45
  br label %one_input_line.exit

one_input_line.exit:                              ; preds = %.lr.ph.i, %one_input_line.exit.sink.split
  %i.ds = load ptr, ptr %i.m, align 8, !tbaa !581
  %i.dt = icmp eq ptr %i.ds, null
  %i.du = load i32, ptr @stdin_is_interactive, align 4
  %i.dv = icmp ne i32 %i.du, 0
  %or.cond3 = select i1 %i.dt, i1 %i.dv, i1 false
  br i1 %or.cond3, label %bb.aa, label %cli_puts.exit

bb.aa:                                            ; preds = %one_input_line.exit
  %i.dw = load ptr, ptr %i.n, align 8, !tbaa !578 ; 3 uses
  %i.dx = load ptr, ptr @cli_output_capture, align 8, !tbaa !559 ; 2 uses
  %.not.i167 = icmp eq ptr %i.dx, null
  br i1 %.not.i167, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = load ptr, ptr @stdout, align 8, !tbaa !150
  %i.dz = icmp eq ptr %i.dw, %i.dy
  %i.ea = load ptr, ptr @stderr, align 8
  %i.eb = icmp eq ptr %i.dw, %i.ea
  %or.cond.i = select i1 %i.dz, i1 true, i1 %i.eb
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @sqlite3_str_appendall(ptr noundef nonnull %i.dx, ptr noundef nonnull @.str.125) #45
  br label %cli_puts.exit

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %fputc = tail call i32 @fputc(i32 10, ptr %i.dw) ; 0 uses
  br label %cli_puts.exit

bb.ae:                                            ; preds = %bb.k, %bb.z, %.loopexit.i, %bb.o
  %.1.i.ph = phi ptr [ %.136.i.i, %bb.o ], [ %.0.lcssa.i, %.loopexit.i ], [ %.0.lcssa.i, %bb.z ], [ %.136.i.i, %bb.k ] ; 20 uses
  %i.ec = load volatile i32, ptr @seenInterrupt, align 4, !tbaa !17
  %.not = icmp eq i32 %i.ec, 0
  br i1 %.not, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = load ptr, ptr %i.m, align 8, !tbaa !581
  %.not152 = icmp eq ptr %i.ed, null
  br i1 %.not152, label %bb.ag, label %cli_puts.exit

bb.ag:                                            ; preds = %bb.af
  store volatile i32 0, ptr @seenInterrupt, align 4, !tbaa !17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.ee = load i64, ptr %i.k, align 8, !tbaa !582
  %i.ef = add nsw i64 %i.ee, 1
  store i64 %i.ef, ptr %i.k, align 8, !tbaa !582
  %i.eg = and i32 %.0129, 255
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.ai, label %line_is_command_terminator.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.ei = tail call ptr @__ctype_b_loc() #47
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !170
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.012.i = phi ptr [ %.1.i.ph, %bb.ai ], [ %i.ep, %bb.aj ] ; 3 uses
  %i.ek = load i8, ptr %.012.i, align 1, !tbaa !16 ; 2 uses
  %i.el = zext i8 %i.ek to i64                    ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !84
  %i.eo = and i16 %i.en, 8192
  %.not.i168 = icmp eq i16 %i.eo, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 3 uses
  br i1 %.not.i168, label %bb.ak, label %bb.aj, !llvm.loop !786

bb.ak:                                            ; preds = %bb.aj
  %i.eq = icmp eq i8 %i.ek, 47
  br i1 %i.eq, label %line_is_command_terminator.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.er = tail call ptr @__ctype_tolower_loc() #47
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !787 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.el
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !17
  %sext.mask.i = and i32 %i.eu, 255
  %i.ev = icmp eq i32 %sext.mask.i, 103
  br i1 %i.ev, label %bb.am, label %line_is_command_terminator.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.ew = load i8, ptr %i.ep, align 1, !tbaa !16
  %i.ex = zext i8 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !17
  %sext.mask13.i = and i32 %i.ez, 255
  %i.fa = icmp eq i32 %sext.mask13.i, 111
  br i1 %i.fa, label %bb.an, label %line_is_command_terminator.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i, i64 2
  br label %line_is_command_terminator.exit

line_is_command_terminator.exit:                  ; preds = %bb.ak, %bb.an
  %.1.i170 = phi ptr [ %i.fb, %bb.an ], [ %i.ep, %bb.ak ]
  %i.fc = tail call fastcc i32 @quickscan(ptr noundef %.1.i170, i32 noundef 0, ptr noundef null)
  %.not197 = icmp eq i32 %i.fc, 0
  br i1 %.not197, label %bb.ao, label %line_is_command_terminator.exit.thread

bb.ao:                                            ; preds = %line_is_command_terminator.exit
  br i1 %i.ae, label %line_is_complete.exit.thread, label %line_is_complete.exit

line_is_complete.exit:                            ; preds = %bb.ao
  %sext = shl i64 %.0137, 32
  %i.fd = ashr exact i64 %sext, 32
  %i.fe = getelementptr inbounds i8, ptr %.0141.ph, i64 %i.fd ; 3 uses
  store i8 59, ptr %i.fe, align 1, !tbaa !16
  %i.ff = getelementptr i8, ptr %i.fe, i64 1
  store i8 0, ptr %i.ff, align 1, !tbaa !16
  %i.fg = tail call i32 @sqlite3_complete(ptr noundef nonnull %.0141.ph) #45
  store i8 0, ptr %i.fe, align 1, !tbaa !16
  %.not154 = icmp eq i32 %i.fg, 0
  br i1 %.not154, label %line_is_command_terminator.exit.thread, label %line_is_complete.exit.thread

line_is_complete.exit.thread:                     ; preds = %bb.ao, %line_is_complete.exit
  store i16 59, ptr %.1.i.ph, align 1
  br label %line_is_command_terminator.exit.thread

line_is_command_terminator.exit.thread:           ; preds = %bb.al, %bb.am, %line_is_complete.exit.thread, %line_is_complete.exit, %line_is_command_terminator.exit, %bb.ah
  %i.fh = tail call fastcc i32 @quickscan(ptr noundef %.1.i.ph, i32 noundef %.0129, ptr noundef nonnull @dynPrompt) ; 3 uses
  %i.fi = and i32 %i.fh, -513                     ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  %i.fk = icmp eq i64 %.0137, 0                   ; 4 uses
  %or.cond5 = and i1 %i.fk, %i.fj
  br i1 %or.cond5, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %line_is_command_terminator.exit.thread
  %i.fl = load i8, ptr %i.o, align 1, !tbaa !596
  %i.fm = and i8 %i.fl, 1
  %.not.i172 = icmp eq i8 %i.fm, 0
  br i1 %.not.i172, label %echo_group_input.exit.backedge, label %bb.aq

echo_group_input.exit.backedge:                   ; preds = %bb.ap, %bb.aq
  br label %echo_group_input.exit, !llvm.loop !788

bb.aq:                                            ; preds = %bb.ap
  %i.fn = load ptr, ptr %i.n, align 8, !tbaa !578
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fn, ptr noundef nonnull @.str.253, ptr noundef nonnull %.1.i.ph)
  %i.fo = load ptr, ptr %i.n, align 8, !tbaa !578
  %i.fp = tail call i32 @fflush(ptr noundef %i.fo) ; 0 uses
  br label %echo_group_input.exit.backedge

bb.ar:                                            ; preds = %line_is_command_terminator.exit.thread
  %i.fq = load i8, ptr %.1.i.ph, align 1, !tbaa !16 ; 2 uses
  %i.fr = icmp eq i8 %i.fq, 46
  br i1 %i.fr, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fs = icmp eq i8 %i.fq, 35
  %or.cond7 = and i1 %i.fk, %i.fs
  br i1 %or.cond7, label %bb.au, label %bb.ay

bb.at:                                            ; preds = %bb.ar
  br i1 %i.fk, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at, %bb.as
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 128), align 8, !tbaa !16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 132), align 4, !tbaa !781
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 136), align 8, !tbaa !783
  %i.ft = load i8, ptr %i.o, align 1, !tbaa !596
  %i.fu = and i8 %i.ft, 1
  %.not.i173 = icmp eq i8 %i.fu, 0
  br i1 %.not.i173, label %echo_group_input.exit174, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fv = load ptr, ptr %i.n, align 8, !tbaa !578
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.fv, ptr noundef nonnull @.str.253, ptr noundef nonnull %.1.i.ph)
  %i.fw = load ptr, ptr %i.n, align 8, !tbaa !578
  %i.fx = tail call i32 @fflush(ptr noundef %i.fw) ; 0 uses
  br label %echo_group_input.exit174

echo_group_input.exit174:                         ; preds = %bb.au, %bb.av
  %i.fy = load i8, ptr %.1.i.ph, align 1, !tbaa !16
  %i.fz = icmp eq i8 %i.fy, 46
  br i1 %i.fz, label %bb.aw, label %.outer201.backedge

bb.aw:                                            ; preds = %echo_group_input.exit174
  %i.ga = tail call fastcc i32 @do_meta_command(ptr noundef nonnull %.1.i.ph, ptr noundef %0) ; 2 uses
  switch i32 %i.ga, label %bb.ax [
    i32 2, label %cli_puts.exit.thread
    i32 0, label %.outer201.backedge
  ]

.outer201.backedge:                               ; preds = %bb.aw, %echo_group_input.exit174
  %.0129.ph206.be = phi i32 [ 0, %echo_group_input.exit174 ], [ %i.ga, %bb.aw ]
  br label %.outer201, !llvm.loop !788

bb.ax:                                            ; preds = %bb.aw
  %i.gb = add nsw i32 %.0132.ph204.ph, 1
  br label %.outer201.outer, !llvm.loop !788

bb.ay:                                            ; preds = %bb.at, %bb.as
  %.lcssa385.lcssa = phi i1 [ false, %bb.at ], [ %i.fk, %bb.as ]
  %i.gc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1.i.ph) #46 ; 6 uses
  %i.gd = add nsw i64 %.0137, 2
  %i.ge = add i64 %i.gd, %i.gc
  %.not155 = icmp slt i64 %i.ge, %.0135.ph
  br i1 %.not155, label %shell_check_oom.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gf = ashr i64 %.0137, 1
  %i.gg = add nsw i64 %.0137, 100
  %i.gh = add i64 %i.gg, %i.gf
  %i.gi = add i64 %i.gh, %i.gc                    ; 2 uses
  %i.gj = tail call ptr @realloc(ptr noundef %.0141.ph, i64 noundef %i.gi) #49 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.ba, label %shell_check_oom.exit

bb.ba:                                            ; preds = %bb.az
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.az, %bb.ay
  %.1142 = phi ptr [ %.0141.ph, %bb.ay ], [ %i.gj, %bb.az ] ; 9 uses
  %.1136 = phi i64 [ %.0135.ph, %bb.ay ], [ %i.gi, %bb.az ]
  br i1 %.lcssa385.lcssa, label %.preheader, label %bb.bd

.preheader:                                       ; preds = %shell_check_oom.exit
  %i.gl = load i8, ptr %.1.i.ph, align 1, !tbaa !16 ; 2 uses
  %.not156277 = icmp eq i8 %i.gl, 0
  br i1 %.not156277, label %.critedge9, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.gm = tail call ptr @__ctype_b_loc() #47
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !170
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %bb.bc
  %i.go = phi i8 [ %i.gl, %.lr.ph ], [ %i.gv, %bb.bc ]
  %.0278 = phi i64 [ 0, %.lr.ph ], [ %i.gt, %bb.bc ] ; 2 uses
  %i.gp = zext i8 %i.go to i64
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.gp
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !84
  %i.gs = and i16 %i.gr, 8192
  %.not157 = icmp eq i16 %i.gs, 0
  br i1 %.not157, label %.critedge9, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gt = add nuw nsw i64 %.0278, 1               ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !16  ; 2 uses
  %.not156 = icmp eq i8 %i.gv, 0
  br i1 %.not156, label %.critedge9, label %bb.bb, !llvm.loop !789

.critedge9:                                       ; preds = %bb.bb, %bb.bc, %.preheader
  %.0.lcssa276 = phi i64 [ 0, %.preheader ], [ %i.gt, %bb.bc ], [ %.0278, %bb.bb ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 %.0.lcssa276
  %i.gx = add nsw i64 %i.gc, 1
  %i.gy = sub i64 %i.gx, %.0.lcssa276
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1142, ptr nonnull align 1 %i.gw, i64 %i.gy, i1 false)
  %i.gz = load i64, ptr %i.k, align 8, !tbaa !582
  %i.ha = sub nsw i64 %i.gc, %.0.lcssa276
  br label %bb.be

bb.bd:                                            ; preds = %shell_check_oom.exit
  %i.hb = add nsw i64 %.0137, 1                   ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %.1142, i64 %.0137
  store i8 10, ptr %i.hc, align 1, !tbaa !16
  %i.hd = getelementptr inbounds i8, ptr %.1142, i64 %i.hb
  %i.he = add nsw i64 %i.gc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hd, ptr nonnull align 1 %.1.i.ph, i64 %i.he, i1 false)
  %i.hf = add nsw i64 %i.gc, %i.hb
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.critedge9
  %.1138 = phi i64 [ %i.ha, %.critedge9 ], [ %i.hf, %bb.bd ] ; 5 uses
  %.1131 = phi i64 [ %i.gz, %.critedge9 ], [ %.0130.ph, %bb.bd ] ; 3 uses
  %i.hg = icmp sgt i64 %.1138, 2147418112
  br i1 %i.hg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.hh = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2010, i64 noundef %.1138) #45 ; 0 uses
  %i.hi = load ptr, ptr @stderr, align 8, !tbaa !150
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.hi, ptr noundef nonnull @.str.2011, ptr noundef %1, i64 noundef %.1131, ptr noundef nonnull %i.a)
  %i.hj = add nsw i32 %.0132.ph204.ph, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %cli_puts.exit.thread

bb.bg:                                            ; preds = %bb.be
  %.not158 = icmp eq i64 %.1138, 0
  %.not158.not = icmp ne i64 %.1138, 0
  %i.hk = and i32 %i.fh, -257
  %2 = icmp eq i32 %i.hk, 512
  %or.cond165 = and i1 %2, %.not158.not
  br i1 %or.cond165, label %bb.bh, label %bb.bs

bb.bh:                                            ; preds = %bb.bg
  %i.hl = tail call i32 @sqlite3_complete(ptr noundef %.1142) #45
  %.not159 = icmp eq i32 %i.hl, 0
  br i1 %.not159, label %bb.bs, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hm = load i8, ptr %i.o, align 1, !tbaa !596
  %i.hn = and i8 %i.hm, 1
  %.not.i175 = icmp eq i8 %i.hn, 0
  br i1 %.not.i175, label %echo_group_input.exit176, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ho = load ptr, ptr %i.n, align 8, !tbaa !578
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ho, ptr noundef nonnull @.str.253, ptr noundef %.1142)
  %i.hp = load ptr, ptr %i.n, align 8, !tbaa !578
  %i.hq = tail call i32 @fflush(ptr noundef %i.hp) ; 0 uses
  br label %echo_group_input.exit176

echo_group_input.exit176:                         ; preds = %bb.bi, %bb.bj
  %i.hr = load ptr, ptr %i.i, align 8, !tbaa !603
  %i.hs = trunc i64 %.1131 to i32
  %i.ht = tail call fastcc i32 @runOneSqlLine(ptr noundef %0, ptr noundef %.1142, ptr noundef %i.hr, i32 noundef %i.hs)
  %i.hu = add nsw i32 %i.ht, %.0132.ph204.ph
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 128), align 8, !tbaa !16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 132), align 4, !tbaa !781
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 136), align 8, !tbaa !783
  %i.hv = load i8, ptr %i.p, align 8, !tbaa !615
  %.not160 = icmp eq i8 %i.hv, 0
  br i1 %.not160, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %echo_group_input.exit176
  tail call fastcc void @output_reset(ptr noundef %0)
  store i8 0, ptr %i.p, align 8, !tbaa !615
  br label %clearTempFile.exit

bb.bl:                                            ; preds = %echo_group_input.exit176
  %i.hw = load ptr, ptr %i.q, align 8, !tbaa !616 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %clearTempFile.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hy = load i8, ptr %i.r, align 1, !tbaa !623
  %.not.i177 = icmp eq i8 %i.hy, 0
  br i1 %.not.i177, label %bb.bn, label %clearTempFile.exit

bb.bn:                                            ; preds = %bb.bm
  %i.hz = tail call noundef i32 @unlink(ptr noundef nonnull readonly %i.hw) #45
  %.not5.i = icmp eq i32 %i.hz, 0
  br i1 %.not5.i, label %bb.bo, label %clearTempFile.exit

bb.bo:                                            ; preds = %bb.bn
  %i.ia = load ptr, ptr %i.q, align 8, !tbaa !616
  tail call void @sqlite3_free(ptr noundef %i.ia) #45
  store ptr null, ptr %i.q, align 8, !tbaa !616
  br label %clearTempFile.exit

clearTempFile.exit:                               ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %i.ib = load i8, ptr %i.s, align 1, !tbaa !605
  %.not161 = icmp eq i8 %i.ib, 0
  br i1 %.not161, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %clearTempFile.exit
  %i.ic = load i8, ptr %i.t, align 8, !tbaa !606
  %.not.i178 = icmp eq i8 %i.ic, 0
  br i1 %.not.i178, label %modePop.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.id = load ptr, ptr %i.w, align 8, !tbaa !607
  tail call void @free(ptr noundef %i.id) #45
  %i.ie = load ptr, ptr %i.x, align 8, !tbaa !608
  tail call void @free(ptr noundef %i.ie) #45
  %i.if = load ptr, ptr %i.y, align 8, !tbaa !609
  tail call void @free(ptr noundef %i.if) #45
  %i.ig = load ptr, ptr %i.z, align 8, !tbaa !610
  tail call void @free(ptr noundef %i.ig) #45
  %i.ih = load ptr, ptr %i.aa, align 8, !tbaa !611
  tail call void @free(ptr noundef %i.ih) #45
  %i.ii = load ptr, ptr %i.ab, align 8, !tbaa !612
  tail call void @free(ptr noundef %i.ii) #45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.v, ptr noundef nonnull align 8 dereferenceable(136) %i.u, i64 136, i1 false), !tbaa.struct !613
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.u, i8 0, i64 136, i1 false)
  br label %modePop.exit

modePop.exit:                                     ; preds = %bb.bp, %bb.bq
  store i8 0, ptr %i.s, align 1, !tbaa !605
  br label %bb.br

bb.br:                                            ; preds = %modePop.exit, %clearTempFile.exit
  %i.ij = load i8, ptr %i.ac, align 1, !tbaa !600
  store i8 %i.ij, ptr %i.ad, align 4, !tbaa !601
  br label %.outer.backedge

bb.bs:                                            ; preds = %bb.bh, %bb.bg
  %.not166 = icmp ne i32 %i.fi, 0
  %brmerge = or i1 %.not166, %.not158
  br i1 %brmerge, label %.outer.backedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ik = load i8, ptr %i.o, align 1, !tbaa !596
  %i.il = and i8 %i.ik, 1
  %.not.i179 = icmp eq i8 %i.il, 0
  br i1 %.not.i179, label %.outer.backedge, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.im = load ptr, ptr %i.n, align 8, !tbaa !578
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.im, ptr noundef nonnull @.str.253, ptr noundef %.1142)
  %i.in = load ptr, ptr %i.n, align 8, !tbaa !578
  %i.io = tail call i32 @fflush(ptr noundef %i.in) ; 0 uses
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br
  %.0137.ph.be = phi i64 [ 0, %bb.bu ], [ 0, %bb.bt ], [ %.1138, %bb.bs ], [ 0, %bb.br ]
  %.0132.ph.be = phi i32 [ %.0132.ph204.ph, %bb.bu ], [ %.0132.ph204.ph, %bb.bt ], [ %.0132.ph204.ph, %bb.bs ], [ %i.hu, %bb.br ]
  %.0129.ph.be = phi i32 [ 0, %bb.bu ], [ 0, %bb.bt ], [ %i.fh, %bb.bs ], [ 0, %bb.br ]
  br label %.outer, !llvm.loop !788

cli_puts.exit:                                    ; preds = %bb.af, %bb.d, %bb.ad, %bb.ac, %one_input_line.exit
  %.1145 = phi ptr [ null, %bb.ac ], [ null, %one_input_line.exit ], [ null, %bb.ad ], [ %.1.i.ph, %bb.af ], [ %.0144, %bb.d ] ; 2 uses
  %.not163 = icmp eq i64 %.0137, 0
  br i1 %.not163, label %cli_puts.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %cli_puts.exit
  %i.ip = load i8, ptr %i.o, align 1, !tbaa !596
  %i.iq = and i8 %i.ip, 1
  %.not.i181 = icmp eq i8 %i.iq, 0
  br i1 %.not.i181, label %echo_group_input.exit182, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ir = load ptr, ptr %i.n, align 8, !tbaa !578
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ir, ptr noundef nonnull @.str.253, ptr noundef %.0141.ph)
  %i.is = load ptr, ptr %i.n, align 8, !tbaa !578
  %i.it = tail call i32 @fflush(ptr noundef %i.is) ; 0 uses
  br label %echo_group_input.exit182

echo_group_input.exit182:                         ; preds = %bb.bv, %bb.bw
  %i.iu = load ptr, ptr %i.i, align 8, !tbaa !603
  %i.iv = trunc i64 %.0130.ph to i32
  %i.iw = tail call fastcc i32 @runOneSqlLine(ptr noundef %0, ptr noundef %.0141.ph, ptr noundef %i.iu, i32 noundef %i.iv)
  %i.ix = add nsw i32 %i.iw, %.0132.ph204.ph
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 128), align 8, !tbaa !16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 132), align 4, !tbaa !781
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @dynPrompt, i64 136), align 8, !tbaa !783
  br label %cli_puts.exit.thread

cli_puts.exit.thread:                             ; preds = %bb.aw, %bb.bf, %echo_group_input.exit182, %cli_puts.exit
  %.2143196 = phi ptr [ %.0141.ph, %echo_group_input.exit182 ], [ %.0141.ph, %cli_puts.exit ], [ %.1142, %bb.bf ], [ %.0141.ph, %bb.aw ]
  %.1145195 = phi ptr [ %.1145, %echo_group_input.exit182 ], [ %.1145, %cli_puts.exit ], [ %.1.i.ph, %bb.bf ], [ %.1.i.ph, %bb.aw ]
  %.4 = phi i32 [ %i.ix, %echo_group_input.exit182 ], [ %.0132.ph204.ph, %cli_puts.exit ], [ %i.hj, %bb.bf ], [ %.0132.ph204.ph, %bb.aw ]
  call void @free(ptr noundef %.2143196) #45
  call void @free(ptr noundef %.1145195) #45
  %i.iy = load i32, ptr %i.b, align 4, !tbaa !780
  %i.iz = add nsw i32 %i.iy, -1
  store i32 %i.iz, ptr %i.b, align 4, !tbaa !780
  store ptr %i.j, ptr %i.i, align 8, !tbaa !603
  store i64 %i.l, ptr %i.k, align 8, !tbaa !582
  %i.ja = icmp sgt i32 %.4, 0
  %i.jb = zext i1 %i.ja to i32
  br label %bb.bx

bb.bx:                                            ; preds = %cli_puts.exit.thread, %bb.b
  %.0146 = phi i32 [ 1, %bb.b ], [ %i.jb, %cli_puts.exit.thread ]
  ret i32 %.0146
}

declare ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @modePop(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.b = load i8, ptr %i.a, align 8, !tbaa !606
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4312
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4360
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !607
  tail call void @free(ptr noundef %i.f) #45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !608
  tail call void @free(ptr noundef %i.h) #45
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !609
  tail call void @free(ptr noundef %i.j) #45
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !610
  tail call void @free(ptr noundef %i.l) #45
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !611
  tail call void @free(ptr noundef %i.n) #45
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !612
  tail call void @free(ptr noundef %i.p) #45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.c, i64 136, i1 false), !tbaa.struct !613
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.c, i8 0, i64 136, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @output_reset(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 198 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !16
  %i.c = icmp eq i8 %i.b, 124
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !578
  %i.f = tail call i32 @pclose(ptr noundef %i.e)  ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4318
  %i.h = load i8, ptr %i.g, align 2, !tbaa !682
  %i.i = icmp eq i8 %i.h, 22
  br i1 %i.i, label %bb.d, label %cli_puts.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !578  ; 3 uses
  %i.l = load ptr, ptr @cli_output_capture, align 8, !tbaa !559 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !150
  %i.n = icmp eq ptr %i.k, %i.m
  %i.o = load ptr, ptr @stderr, align 8
  %i.p = icmp eq ptr %i.k, %i.o
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @sqlite3_str_appendall(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.2016) #45
  br label %cli_puts.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.q = tail call i64 @fwrite(ptr nonnull @.str.2016, i64 21, i64 1, ptr %i.k) ; 0 uses
  br label %cli_puts.exit

cli_puts.exit:                                    ; preds = %bb.g, %bb.f, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !578  ; 4 uses
  %.not.i18 = icmp eq ptr %i.s, null
  %i.t = load ptr, ptr @stdout, align 8
  %.not4.i = icmp eq ptr %i.s, %i.t
  %or.cond.i19 = select i1 %.not.i18, i1 true, i1 %.not4.i
  %i.u = load ptr, ptr @stderr, align 8
  %.not5.i = icmp eq ptr %i.s, %i.u
  %or.cond6.i = select i1 %or.cond.i19, i1 true, i1 %.not5.i
  br i1 %or.cond6.i, label %output_file_close.exit, label %bb.h

bb.h:                                             ; preds = %cli_puts.exit
  %i.v = tail call i32 @fclose(ptr noundef nonnull %i.s) ; 0 uses
  br label %output_file_close.exit

output_file_close.exit:                           ; preds = %cli_puts.exit, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !623
  %.not = icmp eq i8 %i.x, 0
  br i1 %.not, label %bb.n, label %bb.i

bb.i:                                             ; preds = %output_file_close.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !616
  %i.aa = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.2018, ptr noundef nonnull @.str.2017, ptr noundef %i.z) #45 ; 3 uses
  %i.ab = tail call i32 @system(ptr noundef %i.aa) #45
  %.not16 = icmp eq i32 %i.ab, 0
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ac, ptr noundef nonnull @.str.2019, ptr noundef %i.aa)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ad = tail call i32 @sqlite3_sleep(i32 noundef 2000) #45 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @sqlite3_free(ptr noundef %i.aa) #45
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !606
  %.not.i20 = icmp eq i8 %i.af, 0
  br i1 %.not.i20, label %modePop.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4312
end_hunk_0
begin_hunk_1_@dotCmdMode:bb.a
  %i.xj = icmp sgt i32 %i.xi, 1
  br i1 %i.xj, label %.peel.next, label %._crit_edge1181

.peel.next:                                       ; preds = %.lr.ph1180, %.peel.next
  %indvars.iv1280 = phi i64 [ %indvars.iv.next1281, %.peel.next ], [ 1, %.lr.ph1180 ] ; 2 uses
  %i.xk = load ptr, ptr %i.xe, align 8, !tbaa !717
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr %i.xk, i64 %indvars.iv1280
  %i.xm = load i16, ptr %i.xl, align 2, !tbaa !84
  %i.xn = sext i16 %i.xm to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.433, ptr noundef nonnull @.str.163, i32 noundef %i.xn) #45
  %indvars.iv.next1281 = add nuw nsw i64 %indvars.iv1280, 1 ; 2 uses
  %i.xo = load i32, ptr %i.xd, align 8, !tbaa !716
  %i.xp = sext i32 %i.xo to i64
  %i.xq = icmp slt i64 %indvars.iv.next1281, %i.xp
  br i1 %i.xq, label %.peel.next, label %._crit_edge1181, !llvm.loop !1272

bb.fx:                                            ; preds = %modeTitleDsply.exit.thread
  br i1 %i.ws, label %.thread959, label %.critedge712

.thread959:                                       ; preds = %bb.fx
  call void @sqlite3_str_appendall(ptr noundef %i.oz, ptr noundef nonnull @.str.1834) #45
  br label %.critedge714

._crit_edge1181:                                  ; preds = %.peel.next, %.lr.ph1180
  br i1 %i.xc, label %.critedge714, label %.critedge712

.critedge712:                                     ; preds = %modeTitleDsply.exit.thread.thread, %.thread960, %bb.fx, %._crit_edge1181
  %i.xr = shl nuw i64 1, %i.ow
  %i.xs = and i64 %i.xr, 7493621
  %.not652.not = icmp eq i64 %i.xs, 0
  br i1 %.not652.not, label %bb.fy, label %bb.gd

bb.fy:                                            ; preds = %.critedge712
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 4327
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !713
  %.not653 = icmp eq i8 %i.xu, 0
  br i1 %.not653, label %bb.gd, label %bb.fz

.critedge714:                                     ; preds = %.thread959, %._crit_edge1181
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 4327
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !713
  %i.xx = icmp eq i8 %i.xw, 2
  %i.xy = select i1 %i.xx, ptr @.str.926, ptr @.str.850
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1835, ptr noundef nonnull %i.xy) #45
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %.critedge714
  %i.xz = phi i1 [ false, %bb.fy ], [ true, %.critedge714 ]
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 4334
  %i.yb = load i16, ptr %i.ya, align 2, !tbaa !712 ; 2 uses
  %.not654 = icmp eq i16 %i.yb, 0
  br i1 %.not654, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.yc = sext i16 %i.yb to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.oz, ptr noundef nonnull @.str.1836, i32 noundef %i.yc) #45
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  br i1 %i.xz, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @sqlite3_str_append(ptr noundef %i.oz, ptr noundef nonnull @.str.1837, i32 noundef 5) #45
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gb, %bb.gc, %bb.fy, %.critedge712
  %i.yd = call ptr @sqlite3_str_finish(ptr noundef %i.oz) #45 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !578
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.yf, ptr noundef nonnull @.str.1838, ptr noundef %i.yd)
  %i.yg = load ptr, ptr %i.ye, align 8, !tbaa !578
  %i.yh = call i32 @fflush(ptr noundef %i.yg)     ; 0 uses
  call void @sqlite3_free(ptr noundef %i.yd) #45
  br label %.critedge709

.critedge709:                                     ; preds = %._crit_edge.thread, %bb.dv, %bb.dr, %bb.da, %bb.cy, %bb.cw, %bb.v, %bb.j, %bb.ea, %.thread895, %bb.bu, %.thread842, %bb.al, %bb.cf, %bb.x, %bb.ac, %bb.ao, %bb.bn, %bb.cq, %bb.dg, %bb.ed, %bb.ef, %bb.eg, %bb.gd, %._crit_edge1170
  %.16 = phi i32 [ 0, %bb.gd ], [ 0, %._crit_edge1170 ], [ 1, %bb.eg ], [ 1, %bb.ef ], [ 1, %bb.ed ], [ 1, %bb.ea ], [ 1, %bb.da ], [ 1, %.thread895 ], [ 1, %bb.dg ], [ 1, %bb.v ], [ 1, %bb.cq ], [ 1, %bb.cf ], [ 1, %bb.bu ], [ 1, %bb.bn ], [ 1, %.thread842 ], [ 1, %bb.ao ], [ 1, %bb.al ], [ 1, %bb.ac ], [ 1, %bb.x ], [ 1, %bb.j ], [ 1, %bb.cw ], [ 1, %bb.cy ], [ 1, %bb.dr ], [ 1, %bb.dv ], [ 1, %._crit_edge.thread ]
  ret i32 %.16
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @shellFilenameFromUri(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.b = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef nonnull %i.a) #45 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %shell_check_oom.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.a, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.a ] ; 3 uses
  %.030 = phi i32 [ %i.z, %bb.j ], [ 0, %bb.a ]   ; 3 uses
  %i.d = sext i32 %.030 to i64
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16    ; 2 uses
  switch i8 %i.f, label %bb.j [
    i8 0, label %.critedge
    i8 63, label %.critedge
    i8 37, label %bb.c
  ]

bb.c:                                             ; preds = %shell_check_oom.exit
  %i.g = getelementptr i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16    ; 5 uses
  %i.i = add i8 %i.h, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.i, 10
  br i1 %or.cond.i, label %hexDigitValue.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i8 %i.h, -97
  %or.cond5.i = icmp ult i8 %i.j, 6
  br i1 %or.cond5.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i8 %i.h, -87
  br label %hexDigitValue.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.l = add nsw i8 %i.h, -55
  %i.m = add i8 %i.h, -71
  %or.cond = icmp ult i8 %i.m, -6
  br i1 %or.cond, label %.critedge, label %hexDigitValue.exit.thread

hexDigitValue.exit.thread:                        ; preds = %bb.c, %bb.f, %bb.e
  %.0.i44 = phi i8 [ %i.l, %bb.f ], [ %i.k, %bb.e ], [ %i.i, %bb.c ]
  %i.n = add nsw i32 %.030, 2                     ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16    ; 5 uses
  %i.r = add i8 %i.q, -48                         ; 2 uses
  %or.cond.i37 = icmp ult i8 %i.r, 10
  br i1 %or.cond.i37, label %hexDigitValue.exit42.thread, label %bb.g

bb.g:                                             ; preds = %hexDigitValue.exit.thread
  %i.s = add i8 %i.q, -97
  %or.cond5.i38 = icmp ult i8 %i.s, 6
  br i1 %or.cond5.i38, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i8 %i.q, -87
  br label %hexDigitValue.exit42.thread

bb.i:                                             ; preds = %bb.g
  %i.u = add nsw i8 %i.q, -55
  %i.v = add i8 %i.q, -71
  %or.cond52 = icmp ult i8 %i.v, -6
  br i1 %or.cond52, label %.critedge, label %hexDigitValue.exit42.thread

hexDigitValue.exit42.thread:                      ; preds = %hexDigitValue.exit.thread, %bb.i, %bb.h
  %.0.i4149 = phi i8 [ %i.u, %bb.i ], [ %i.t, %bb.h ], [ %i.r, %hexDigitValue.exit.thread ]
  %i.w = shl i8 %.0.i44, 4
  %i.x = add i8 %.0.i4149, %i.w
  br label %bb.j

bb.j:                                             ; preds = %shell_check_oom.exit, %hexDigitValue.exit42.thread
  %.sink = phi i8 [ %i.x, %hexDigitValue.exit42.thread ], [ %i.f, %shell_check_oom.exit ]
  %.131 = phi i32 [ %i.n, %hexDigitValue.exit42.thread ], [ %.030, %shell_check_oom.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %.sink, ptr %i.y, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.z = add nsw i32 %.131, 1
  br label %shell_check_oom.exit, !llvm.loop !1273

.critedge:                                        ; preds = %shell_check_oom.exit, %shell_check_oom.exit, %bb.i, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 0, ptr %i.aa, align 1, !tbaa !16
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @dotCmdOutput(ptr noundef nonnull %0) unnamed_addr #4 {
strlen30.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4772
  %i.b = load i32, ptr %i.a, align 4, !tbaa !662  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !632  ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66   ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16    ; 2 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.e) #46 ; 2 uses
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 1073741823)
  tail call void (ptr, ptr, ...) @failIfSafeMode(ptr noundef nonnull %0, ptr noundef nonnull @.str.862, ptr noundef nonnull %i.e)
  switch i8 %i.f, label %bb.b [
    i8 101, label %bb.d
    i8 119, label %bb.a
  ]

bb.a:                                             ; preds = %strlen30.exit
  br label %bb.d

bb.b:                                             ; preds = %strlen30.exit
  %i.i = icmp ugt i64 %i.g, 1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %spec.store.select.i = select i1 %i.k, ptr @.str.48, ptr %i.j
  %i.l = tail call i32 @strncmp(ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull @.str.1074, i64 noundef range(i64 -2147483648, 2147483648) %i.h) #46 ; 2 uses
  %1 = icmp eq i32 %i.l, 0
  %i.m = icmp eq i32 %i.l, 0
  %i.n = select i1 %i.m, i8 2, i8 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %strlen30.exit, %bb.a, %bb.b
  %.0152 = phi i32 [ 0, %bb.b ], [ 119, %bb.a ], [ 120, %strlen30.exit ], [ 0, %bb.c ] ; 2 uses
  %i.o = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %strlen30.exit ], [ %1, %bb.c ]
  %.not182 = phi i8 [ 0, %bb.b ], [ 2, %bb.a ], [ 2, %strlen30.exit ], [ %i.n, %bb.c ]
  %i.p = icmp sgt i32 %i.b, 1
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.q = icmp eq i8 %i.f, 111
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.ah
  %.0140314 = phi ptr [ null, %.lr.ph ], [ %.2142.ph, %bb.ah ] ; 10 uses
  %.0143313 = phi i32 [ 0, %.lr.ph ], [ %.2145.ph, %bb.ah ] ; 7 uses
  %.0147312 = phi i32 [ 0, %.lr.ph ], [ %.2149.ph, %bb.ah ] ; 10 uses
  %.1153311 = phi i32 [ %.0152, %.lr.ph ], [ %.3155.ph, %bb.ah ] ; 8 uses
  %.0156310 = phi i32 [ 1, %.lr.ph ], [ %i.bx, %bb.ah ] ; 16 uses
  %.0160309 = phi ptr [ null, %.lr.ph ], [ %.4164.ph, %bb.ah ] ; 11 uses
  %i.s = sext i32 %.0156310 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !66   ; 6 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !16
  %i.w = icmp eq i8 %i.v, 45
  br i1 %i.w, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = icmp eq i8 %i.y, 45
  %spec.select189 = select i1 %i.z, ptr %i.x, ptr %i.u ; 9 uses
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select189, ptr noundef nonnull dereferenceable(5) @.str.1843) #46
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.ah, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select189, ptr noundef nonnull dereferenceable(7) @.str.1844) #46
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.ah, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.q, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call i32 @sqlite3_strglob(ptr noundef nonnull @.str.1845, ptr noundef nonnull %spec.select189) #45
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp ne i32 %.0143313, 0
  %i.ah = icmp ne i32 %.1153311, 0
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.0156310, ptr noundef nonnull @.str.1388, ptr noundef null)
  br label %.thread246

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %spec.select189, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = sext i8 %i.aj to i32
  br label %bb.ah

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select189, ptr noundef nonnull dereferenceable(6) @.str.1384) #46
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr @cli_output_capture, align 8, !tbaa !559 ; 2 uses
  %.not181 = icmp eq ptr %i.an, null
  br i1 %.not181, label %bb.ah, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !150
  %i.ap = tail call ptr @sqlite3_str_value(ptr noundef nonnull %i.an) #45
  %fputs = tail call i32 @fputs(ptr %i.ap, ptr %i.ao) ; 0 uses
  br label %bb.ah

bb.p:                                             ; preds = %bb.m
  %i.aq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select189, ptr noundef nonnull dereferenceable(6) @.str.1383) #46
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.ah, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = load i8, ptr %spec.select189, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.as, 45
  br i1 %.not.i, label %optionMatch.exit, label %optionMatch.exit.thread

optionMatch.exit:                                 ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select189, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = icmp eq i8 %i.au, 45
  %i.aw = getelementptr inbounds nuw i8, ptr %spec.select189, i64 2
  %spec.select.i = select i1 %i.av, ptr %i.aw, ptr %i.at
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i, ptr noundef nonnull dereferenceable(13) @.str.1846) #46
  %.not263 = icmp eq i32 %i.ax, 0
  br i1 %.not263, label %bb.r, label %optionMatch.exit.thread

bb.r:                                             ; preds = %optionMatch.exit
  %i.ay = add nsw i32 %.0156310, 1                ; 3 uses
  %.not180 = icmp slt i32 %i.ay, %i.b
  br i1 %.not180, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.0156310, ptr noundef nonnull @.str.1097, ptr noundef null)
  br label %.thread234

bb.t:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !604
  tail call void @free(ptr noundef %i.az) #45
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !66 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !16
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = tail call noalias ptr @strdup(ptr noundef nonnull %i.bc) #45
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.bg = phi ptr [ %i.bf, %bb.u ], [ null, %bb.t ]
  store ptr %i.bg, ptr %i.r, align 8, !tbaa !604
  br label %bb.ah

optionMatch.exit.thread:                          ; preds = %bb.q, %optionMatch.exit
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.0156310, ptr noundef nonnull @.str.864, ptr noundef null)
  tail call void @sqlite3_free(ptr noundef %.0160309) #45
  br label %.thread234

bb.w:                                             ; preds = %bb.e
  %i.bh = icmp eq ptr %.0160309, null
  %i.bi = icmp eq i32 %.1153311, 0
  %or.cond3 = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond3, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %.not = icmp eq i32 %.0143313, 0
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.0156310, ptr noundef nonnull @.str.1388, ptr noundef null)
  br label %.thread246

bb.z:                                             ; preds = %bb.x
  %i.bj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(7) @.str.1847) #46
  %i.bk = icmp eq i32 %i.bj, 0
  %or.cond5 = and i1 %i.o, %i.bk
  br i1 %or.cond5, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.1848, ptr noundef null)
  br label %.thread246

bb.ab:                                            ; preds = %bb.z
  %i.bl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(4) @.str.850) #46
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bn = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1849) #45
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bo = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef nonnull %i.u) #45
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1161 = phi ptr [ %i.bn, %bb.ac ], [ %i.bo, %bb.ad ] ; 5 uses
  %.not178 = icmp eq ptr %.1161, null
  br i1 %.not178, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bp = load i8, ptr %.1161, align 1, !tbaa !16
  %i.bq = icmp eq i8 %i.bp, 124
  br i1 %i.bq, label %.preheader, label %bb.ah

.preheader:                                       ; preds = %bb.af
  %i.br = add nsw i32 %.0156310, 1                ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.b
  br i1 %i.bs, label %.lr.ph320.preheader, label %shell_check_oom.exit

.lr.ph320.preheader:                              ; preds = %.preheader
  %i.bt = sext i32 %i.br to i64
  br label %.lr.ph320

.lr.ph320:                                        ; preds = %.lr.ph320.preheader, %.lr.ph320
  %indvars.iv = phi i64 [ %i.bt, %.lr.ph320.preheader ], [ %indvars.iv.next, %.lr.ph320 ] ; 2 uses
  %.2162319 = phi ptr [ %.1161, %.lr.ph320.preheader ], [ %i.bw, %.lr.ph320 ]
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !66
  %i.bw = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1193, ptr noundef %.2162319, ptr noundef %i.bv) #45 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph320, !llvm.loop !1274

bb.ag:                                            ; preds = %bb.w
  tail call void (ptr, i32, ptr, ptr, ...) @dotCmdError(ptr noundef %0, i32 noundef %.0156310, ptr noundef nonnull @.str.1850, ptr noundef null)
  tail call void @sqlite3_free(ptr noundef %.0160309) #45
end_hunk_1
