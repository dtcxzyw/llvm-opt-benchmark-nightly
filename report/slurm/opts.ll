Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/opts?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0_@parse_command_line:bb.a
  %i.fp = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 38), align 2, !range !14, !noundef !15
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = select i1 %i.fq, ptr @.str.52, ptr @.str.53
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.81, ptr noundef nonnull %i.fr) #12
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.fs = call i32 @get_log_level() #12
  %i.ft = icmp sgt i32 %i.fs, 3
  br i1 %i.ft, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.fu = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 39), align 1, !range !14, !noundef !15
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = select i1 %i.fv, ptr @.str.52, ptr @.str.53
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.82, ptr noundef nonnull %i.fw) #12
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.fx = call i32 @get_log_level() #12
  %i.fy = icmp sgt i32 %i.fx, 3
  br i1 %i.fy, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.fz = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 40), align 8, !range !14, !noundef !15
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = select i1 %i.ga, ptr @.str.52, ptr @.str.53
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.83, ptr noundef nonnull %i.gb) #12
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.gc = call i32 @get_log_level() #12
  %i.gd = icmp sgt i32 %i.gc, 3
  br i1 %i.gd, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.ge = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 41), align 1, !range !14, !noundef !15
  %i.gf = trunc nuw i8 %i.ge to i1
  %i.gg = select i1 %i.gf, ptr @.str.52, ptr @.str.53
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.84, ptr noundef nonnull %i.gg) #12
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.gh = call i32 @get_log_level() #12
  %i.gi = icmp sgt i32 %i.gh, 3
  br i1 %i.gi, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.gj = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 42), align 2, !range !14, !noundef !15
  %i.gk = trunc nuw i8 %i.gj to i1
  %i.gl = select i1 %i.gk, ptr @.str.52, ptr @.str.53
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.85, ptr noundef nonnull %i.gl) #12
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.gm = call i32 @get_log_level() #12
  %i.gn = icmp sgt i32 %i.gm, 3
  br i1 %i.gn, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.go = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 43), align 1, !range !14, !noundef !15
  %i.gp = trunc nuw i8 %i.go to i1
  %i.gq = select i1 %i.gp, ptr @.str.52, ptr @.str.53
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.86, ptr noundef nonnull %i.gq) #12
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.gr = call i32 @get_log_level() #12
  %i.gs = icmp sgt i32 %i.gr, 3
  br i1 %i.gs, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.gt = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 44), align 4, !range !14, !noundef !15
  %i.gu = trunc nuw i8 %i.gt to i1
  %i.gv = select i1 %i.gu, ptr @.str.52, ptr @.str.53
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.87, ptr noundef nonnull %i.gv) #12
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.gw = call i32 @get_log_level() #12
  %i.gx = icmp sgt i32 %i.gw, 3
  br i1 %i.gx, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.gy = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 45), align 1, !range !14, !noundef !15
  %i.gz = trunc nuw i8 %i.gy to i1
  %i.ha = select i1 %i.gz, ptr @.str.52, ptr @.str.53
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.88, ptr noundef nonnull %i.ha) #12
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.hb = call i32 @get_log_level() #12
  %i.hc = icmp sgt i32 %i.hb, 3
  br i1 %i.hc, label %bb.ej, label %_print_options.exit

bb.ej:                                            ; preds = %bb.ei
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.50) #12
  br label %_print_options.exit

_print_options.exit:                              ; preds = %bb.ej, %bb.ei, %bb.bk
  %i.hd = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 32), align 8, !range !14, !noundef !15 ; 2 uses
  %i.he = trunc nuw i8 %i.hd to i1
  %i.hf = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 33), align 1, !range !14, !noundef !15
  %narrow.i = add nuw nsw i8 %i.hf, %i.hd
  %i.hg = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 34), align 2, !range !14, !noundef !15 ; 2 uses
  %narrow21.i = add nuw nsw i8 %narrow.i, %i.hg
  %.not.i = icmp eq i8 %narrow21.i, 1
  br i1 %.not.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %_print_options.exit
  %i.hh = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.89) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.el:                                            ; preds = %_print_options.exit
  %i.hi = trunc nuw i8 %i.hg to i1
  %i.hj = load i32, ptr getelementptr inbounds nuw (i8, ptr @params, i64 88), align 8
  %i.hk = icmp ne i32 %i.hj, -2
  %not..i = xor i1 %i.hi, true
  %or.cond.i = select i1 %not..i, i1 true, i1 %i.hk
  %i.hl = load i32, ptr getelementptr inbounds nuw (i8, ptr @params, i64 84), align 4
  %i.hm = icmp ne i32 %i.hl, 0
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.hm
  %i.hn = load i32, ptr getelementptr inbounds nuw (i8, ptr @params, i64 20), align 4
  %i.ho = icmp ne i32 %i.hn, 0                    ; 3 uses
  %or.cond5.i = select i1 %or.cond3.i, i1 true, i1 %i.ho
  %i.hp = load i64, ptr getelementptr inbounds nuw (i8, ptr @params, i64 24), align 8
  %i.hq = icmp ne i64 %i.hp, 0                    ; 3 uses
  %or.cond7.i = select i1 %or.cond5.i, i1 true, i1 %i.hq
  br i1 %or.cond7.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.hr = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.90) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.en:                                            ; preds = %bb.el
  br i1 %i.he, label %bb.eo, label %bb.es

bb.eo:                                            ; preds = %bb.en
  %i.hs = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 47), align 1, !range !14, !noundef !15
  %i.ht = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 48), align 8, !range !14, !noundef !15
  %narrow22.i = add nuw nsw i8 %i.ht, %i.hs
  %i.hu = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 65), align 1, !range !14, !noundef !15
  %narrow23.i = add nuw nsw i8 %narrow22.i, %i.hu
  %i.hv = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 64), align 8, !range !14, !noundef !15
  %narrow24.i = add nuw nsw i8 %narrow23.i, %i.hv
  %i.hw = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 67), align 1, !range !14, !noundef !15
  %narrow25.i = add nuw nsw i8 %narrow24.i, %i.hw
  %i.hx = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 81), align 1, !range !14, !noundef !15
  %narrow26.i = add nuw nsw i8 %narrow25.i, %i.hx
  %i.hy = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 18), align 2, !range !14, !noundef !15 ; 2 uses
  %narrow27.i = add nuw nsw i8 %narrow26.i, %i.hy
  %i.hz = zext nneg i8 %narrow27.i to i32
  %i.ia = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 82), align 2, !range !14, !noundef !15 ; 2 uses
  %i.ib = zext nneg i8 %i.ia to i32
  %i.ic = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 49), align 1, !range !14, !noundef !15
  %i.id = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 66), align 2, !range !14, !noundef !15
  %i.ie = load i8, ptr @params, align 8, !range !14, !noundef !15
  %i.if = load <8 x i8>, ptr getelementptr inbounds nuw (i8, ptr @params, i64 35), align 1
  %i.ig = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 43), align 1, !range !14, !noundef !15
  %i.ih = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 44), align 4, !range !14, !noundef !15
  %i.ii = zext nneg i8 %i.ih to i32
  %.mask = and <8 x i8> %i.if, splat (i8 1)
  %i.ij = zext nneg <8 x i8> %.mask to <8 x i32>
  %i.ik = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ij)
  %op.rdx = add nuw nsw i32 %i.ik, %i.ib
  %narrow = add nuw nsw i8 %i.ic, %i.id
  %op.rdx40 = zext nneg i8 %narrow to i32
  %narrow46 = add nuw nsw i8 %i.ie, %i.ig
  %op.rdx41 = zext nneg i8 %narrow46 to i32
  %op.rdx42 = add nuw nsw i32 %i.ii, %i.hz
  %op.rdx43 = add nuw nsw i32 %op.rdx, %op.rdx40
  %op.rdx44 = add nuw nsw i32 %op.rdx42, %op.rdx41
  %op.rdx45 = add nuw nsw i32 %op.rdx43, %op.rdx44
  %i.il = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 45), align 1, !range !14, !noundef !15
  %i.im = zext nneg i8 %i.il to i32
  %i.in = or i32 %op.rdx45, %i.im
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.ip = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.91) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.eq:                                            ; preds = %bb.eo
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 72), align 8 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.er, label %.thread47.i

bb.er:                                            ; preds = %bb.eq
  %i.is = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.92) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.es:                                            ; preds = %bb.en
  %.pre.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 18), align 2, !range !14
  %.pre44.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @params, i64 82), align 2, !range !14
  %i.it = or i8 %.pre44.i, %.pre.i
  %3 = icmp eq i8 %i.it, 0
  %or.cond11.not31.i = select i1 %3, i1 true, i1 %i.ho
  %or.cond13.i = select i1 %or.cond11.not31.i, i1 true, i1 %i.hq
  br i1 %or.cond13.i, label %bb.eu, label %bb.et

.thread47.i:                                      ; preds = %bb.eq
  %i.iu = or i8 %i.ia, %i.hy
  %4 = icmp eq i8 %i.iu, 0
  %or.cond11.not3148.i = select i1 %4, i1 true, i1 %i.ho
  %or.cond1349.i = select i1 %or.cond11.not3148.i, i1 true, i1 %i.hq
  br i1 %or.cond1349.i, label %.thread50.i, label %bb.et

bb.et:                                            ; preds = %.thread47.i, %bb.es
  %i.iv = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.93) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.eu:                                            ; preds = %bb.es
  %i.iw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @params, i64 72), align 8 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %.thread39.i, label %.thread50.i

.thread50.i:                                      ; preds = %bb.eu, %.thread47.i
  %i.iy = phi ptr [ %i.iw, %bb.eu ], [ %i.iq, %.thread47.i ] ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1
  %.not33.i.a = icmp eq i8 %i.iz, 47
  br i1 %.not33.i.a, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %.thread50.i
  %i.ja = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.94) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.ew:                                            ; preds = %.thread50.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.jb = call ptr @xstrdup(ptr noundef nonnull %i.iy) #12 ; 5 uses
  store ptr %i.jb, ptr %i.a, align 8
  %i.jc = load i8, ptr %i.jb, align 1             ; 2 uses
  %.not3541.i = icmp eq i8 %i.jc, 0
  br i1 %.not3541.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ew
  %i.jd = tail call ptr @__ctype_b_loc() #16
  %i.je = load ptr, ptr %i.jd, align 8
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ey
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.next.i
  %i.jg = load i8, ptr %i.jf, align 1             ; 2 uses
  %.not35.i.a = icmp eq i8 %i.jg, 0
  br i1 %.not35.i.a, label %.loopexit.i, label %bb.ey, !llvm.loop !11

bb.ey:                                            ; preds = %bb.ex, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ex ] ; 2 uses
  %i.jh = phi i8 [ %i.jc, %.lr.ph.i ], [ %i.jg, %bb.ex ]
  %i.ji = sext i8 %i.jh to i64
  %i.jj = getelementptr inbounds [2 x i8], ptr %i.je, i64 %i.ji
  %i.jk = load i16, ptr %i.jj, align 2
  %i.jl = and i16 %i.jk, 8192
  %.not36.i = icmp eq i16 %i.jl, 0
  br i1 %.not36.i, label %bb.ex, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.i
  store i8 0, ptr %i.jm, align 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ex, %bb.ez, %bb.ew
  %i.jn = call i32 @stat(ptr noundef nonnull %i.jb, ptr noundef nonnull %2) #12
  %.not37.i = icmp eq i32 %i.jn, 0
  br i1 %.not37.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %.loopexit.i
  %i.jo = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.95) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.fb:                                            ; preds = %.loopexit.i
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jq = load i32, ptr %i.jp, align 8
  %i.jr = and i32 %i.jq, 61440
  %i.js = icmp eq i32 %i.jr, 32768
  br i1 %i.js, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.jt = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.96) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

bb.fd:                                            ; preds = %bb.fb
  call void @slurm_xfree(ptr noundef nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %.thread39.i

.thread39.i:                                      ; preds = %bb.fd, %bb.eu
  %i.ju = load i32, ptr getelementptr inbounds nuw (i8, ptr @params, i64 68), align 4
  %i.jv = add i32 %i.ju, -32001
  %or.cond15.i = icmp ult i32 %i.jv, -64001
  br i1 %or.cond15.i, label %bb.fe, label %_validate_options.exit

bb.fe:                                            ; preds = %.thread39.i
  %i.jw = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.97) #12 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

_validate_options.exit:                           ; preds = %.thread39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

declare i64 @str2sluid(ptr noundef) local_unnamed_addr #4

declare i32 @error(ptr noundef, ...) local_unnamed_addr #4

declare void @list_destroy(ptr noundef) local_unnamed_addr #4

declare i32 @slurm_get_cluster_info(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

declare void @print_db_notok(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #5

declare ptr @list_peek(ptr noundef) local_unnamed_addr #4

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #4

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #4

declare void @print_slurm_version() local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @_help() unnamed_addr #6 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @_usage() unnamed_addr #6 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  ret void
}

declare i32 @xstrncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @uid_from_string(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @suggest_completion(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @get_log_level() local_unnamed_addr #4

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #11

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(none) }
end_hunk_0
