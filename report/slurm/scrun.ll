Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/scrun?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
begin_hunk_0_@main:bb.a
_try_tmp_path.exit.i:                             ; preds = %bb.bc, %bb.bb
  call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @state, i64 248)) #16
  %i.co = call ptr @xstrdup(ptr noundef nonnull %i.ck) #16
  store ptr %i.co, ptr getelementptr inbounds nuw (i8, ptr @state, i64 248), align 8
  br label %_set_root.exit

_try_tmp_path.exit.thread.i:                      ; preds = %bb.ba, %bb.az, %bb.ax
  %i.cp = call i32 @getuid() #16
  %.not5.i = icmp eq i32 %i.cp, 0
  br i1 %.not5.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_try_tmp_path.exit.thread.i
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.43) #17
  unreachable

bb.be:                                            ; preds = %_try_tmp_path.exit.thread.i
  %i.cq = call i32 @getuid() #16
  %i.cr = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.44, i32 noundef %i.cq) #16 ; 5 uses
  store ptr %i.cr, ptr %i.d, align 8
  %i.cs = call i32 @access(ptr noundef %i.cr, i32 noundef 6) #16
  %.not.i9.i = icmp eq i32 %i.cs, 0
  %i.ct = call i32 @get_log_level() #16
  %i.cu = icmp sgt i32 %i.ct, 4                   ; 2 uses
  br i1 %.not.i9.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.cu, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__._try_tmp_path, ptr noundef %i.cr) #16
  br label %bb.bj

bb.bh:                                            ; preds = %bb.be
  br i1 %i.cu, label %bb.bi, label %_try_tmp_path.exit10.i

bb.bi:                                            ; preds = %bb.bh
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__._try_tmp_path, ptr noundef %i.cr) #16
  br label %_try_tmp_path.exit10.i

_try_tmp_path.exit10.i:                           ; preds = %bb.bi, %bb.bh
  call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @state, i64 248)) #16
  %i.cv = call ptr @xstrdup(ptr noundef %i.cr) #16
  store ptr %i.cv, ptr getelementptr inbounds nuw (i8, ptr @state, i64 248), align 8
  call void @slurm_xfree(ptr noundef nonnull %i.d) #16
  br label %_set_root.exit

bb.bj:                                            ; preds = %bb.bg, %bb.bf
  call void @slurm_xfree(ptr noundef nonnull %i.d) #16
  %i.cw = call ptr @getenv(ptr noundef nonnull @.str.45) #16 ; 2 uses
  %.not7.i = icmp eq ptr %i.cw, null
  br i1 %.not7.i, label %bb.bp, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cx = call i32 @getuid() #16
  %i.cy = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.46, ptr noundef nonnull %i.cw, i32 noundef %i.cx) #16 ; 5 uses
  store ptr %i.cy, ptr %i.d, align 8
  %i.cz = call i32 @access(ptr noundef %i.cy, i32 noundef 6) #16
  %.not.i11.i = icmp eq i32 %i.cz, 0
  %i.da = call i32 @get_log_level() #16
  %i.db = icmp sgt i32 %i.da, 4                   ; 2 uses
  br i1 %.not.i11.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.db, label %bb.bm, label %_try_tmp_path.exit12.thread.i

bb.bm:                                            ; preds = %bb.bl
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__._try_tmp_path, ptr noundef %i.cy) #16
  br label %_try_tmp_path.exit12.thread.i

bb.bn:                                            ; preds = %bb.bk
  br i1 %i.db, label %bb.bo, label %_try_tmp_path.exit12.i

bb.bo:                                            ; preds = %bb.bn
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__._try_tmp_path, ptr noundef %i.cy) #16
  br label %_try_tmp_path.exit12.i

_try_tmp_path.exit12.thread.i:                    ; preds = %bb.bm, %bb.bl
  call void @slurm_xfree(ptr noundef nonnull %i.d) #16
  br label %bb.bp

_try_tmp_path.exit12.i:                           ; preds = %bb.bo, %bb.bn
  call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @state, i64 248)) #16
  %i.dc = call ptr @xstrdup(ptr noundef %i.cy) #16
  store ptr %i.dc, ptr getelementptr inbounds nuw (i8, ptr @state, i64 248), align 8
  call void @slurm_xfree(ptr noundef nonnull %i.d) #16
  br label %_set_root.exit

bb.bp:                                            ; preds = %_try_tmp_path.exit12.thread.i, %bb.bj
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.47) #17
  unreachable

_set_root.exit:                                   ; preds = %_try_tmp_path.exit.i, %_try_tmp_path.exit10.i, %_try_tmp_path.exit12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.bq

bb.bq:                                            ; preds = %_set_root.exit, %bb.aw
  call void @serializer_required(ptr noundef nonnull @.str.6) #16
  %i.dd = call i32 @get_log_level() #16
  %i.de = icmp sgt i32 %i.dd, 5
  %i.df = icmp sgt i32 %0, 0
  %or.cond = and i1 %i.de, %i.df
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.bq
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bs
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.bs ] ; 3 uses
  %i.dg = call i32 @get_log_level() #16
  %i.dh = icmp sgt i32 %i.dg, 5
  br i1 %i.dh, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph
  %i.di = load ptr, ptr %1, align 8
  %i.dj = call ptr @xbasename(ptr noundef %i.di) #16
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = trunc nuw nsw i64 %indvars.iv to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.main, ptr noundef %i.dj, i32 noundef %i.dm, ptr noundef %i.dl) #16
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph, %bb.br
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit:                                        ; preds = %bb.bs, %bb.bq
  %i.dn = sub i32 %0, %i.ce                       ; 3 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = call ptr @slurm_xcalloc(i64 noundef %i.do, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 698, ptr noundef nonnull @__func__.main) #16 ; 5 uses
  %i.dq = ptrtoaddr ptr %i.dp to i64
  %i.dr = load ptr, ptr %1, align 8
  store ptr %i.dr, ptr %i.dp, align 8
  %.044 = add nsw i32 %i.ce, 1                    ; 2 uses
  %i.ds = icmp slt i32 %.044, %0
  br i1 %i.ds, label %.lr.ph47.preheader, label %._crit_edge

.lr.ph47.preheader:                               ; preds = %.loopexit
  %i.dt = sext i32 %.044 to i64                   ; 5 uses
  %wide.trip.count58 = zext i32 %i.dn to i64      ; 2 uses
  %i.du = add nsw i64 %wide.trip.count58, -1      ; 4 uses
  %min.iters.check = icmp ult i64 %i.du, 12
  br i1 %min.iters.check, label %.lr.ph47.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph47.preheader
  %i.dv = shl nsw i64 %i.dt, 3
  %i.dw = add i64 %i.dv, %i.a
  %i.dx = sub i64 %i.dq, %i.dw
  %i.dy = add i64 %i.dx, 7
  %diff.check = icmp ult i64 %i.dy, 15
  br i1 %diff.check, label %.lr.ph47.preheader73, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.du, -2                      ; 3 uses
  %i.dz = or i64 %i.du, 1
  %i.ea = add nsw i64 %n.vec, %i.dt
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.dt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <2 x ptr>, ptr %gep, align 8
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %index
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store <2 x ptr> %wide.load, ptr %i.ec, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph47.preheader73

.lr.ph47.preheader73:                             ; preds = %vector.memcheck, %.lr.ph47.preheader, %middle.block
  %indvars.iv53.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph47.preheader ], [ %i.dz, %middle.block ]
  %indvars.iv51.ph = phi i64 [ %i.dt, %vector.memcheck ], [ %i.dt, %.lr.ph47.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph47

._crit_edge:                                      ; preds = %.lr.ph47, %middle.block, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(152) @__const._disable_sigpipe.sigpipe_handler, i64 152, i1 false)
  %i.ee = call i32 @sigaction(i32 noundef 13, ptr noundef nonnull %3, ptr noundef null) #16
  %i.ef = icmp eq i32 %i.ee, -1
  br i1 %i.ef, label %bb.bt, label %_disable_sigpipe.exit

bb.bt:                                            ; preds = %._crit_edge
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__._disable_sigpipe) #17
  unreachable

_disable_sigpipe.exit:                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.eg = load i32, ptr @command_requested, align 4
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [32 x i8], ptr @commands, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(i32 noundef %i.dn, ptr noundef nonnull %i.dp) #16
  %i.el = load i32, ptr @command_requested, align 4
  %4 = sext i32 %i.el to i64                      ; 2 uses
  %5 = getelementptr inbounds [32 x i8], ptr @commands, i64 %4
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %7 = load i8, ptr %6, align 8, !range !17, !noundef !18
  %8 = trunc nuw i8 %7 to i1
  br i1 %8, label %bb.bu, label %bb.by

.lr.ph47:                                         ; preds = %.lr.ph47.preheader73, %.lr.ph47
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %.lr.ph47 ], [ %indvars.iv53.ph, %.lr.ph47.preheader73 ] ; 2 uses
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph47 ], [ %indvars.iv51.ph, %.lr.ph47.preheader73 ] ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv51
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv53
  store ptr %i.en, ptr %i.eo, align 8
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %indvars.iv.next52 = add nsw i64 %indvars.iv51, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count58
  br i1 %exitcond59.not, label %._crit_edge, label %.lr.ph47, !llvm.loop !14

bb.bu:                                            ; preds = %_disable_sigpipe.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.ep = call i32 @getuid() #16                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.eq, i8 0, i64 32, i1 false)
  store i8 2, ptr %2, align 1
  %i.er = call ptr @uid_to_string_or_null(i32 noundef %i.ep) #16 ; 3 uses
  store ptr %i.er, ptr %i.c, align 8
  %.not.i41 = icmp eq ptr %i.er, null
  br i1 %.not.i41, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.86, i32 noundef %i.ep) #17
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @state, i64 72), align 8
  %i.et = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.87, ptr noundef nonnull %i.er, ptr noundef %i.es) #16 ; 4 uses
  store ptr %i.et, ptr %i.b, align 8
  %i.eu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.et) #19
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = call i32 @hash_g_compute(ptr noundef nonnull %i.et, i32 noundef %i.ev, ptr noundef null, i32 noundef 0, ptr noundef nonnull %2) #16 ; 0 uses
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @state, i64 248), align 8
  %i.ey = load i8, ptr %i.eq, align 1
  %i.ez = zext i8 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = zext i8 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i32
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = zext i8 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = zext i8 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = zext i8 %i.fw to i32
  %i.fy = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.88, ptr noundef %i.ex, i32 noundef %i.ez, i32 noundef %i.fc, i32 noundef %i.ff, i32 noundef %i.fi, i32 noundef %i.fl, i32 noundef %i.fo, i32 noundef %i.fr, i32 noundef %i.fu, i32 noundef %i.fx) #16
  store ptr %i.fy, ptr getelementptr inbounds nuw (i8, ptr @state, i64 200), align 8
  %i.fz = call i32 @get_log_level() #16
  %i.ga = icmp sgt i32 %i.fz, 4
  br i1 %i.ga, label %bb.bx, label %_get_anchor_socket.exit

bb.bx:                                            ; preds = %bb.bw
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @state, i64 200), align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__._get_anchor_socket, ptr noundef nonnull %i.et, ptr noundef %i.gb) #16
  br label %_get_anchor_socket.exit

_get_anchor_socket.exit:                          ; preds = %bb.bw, %bb.bx
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  call void @slurm_xfree(ptr noundef nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %.pre = load i32, ptr @command_requested, align 4
  %.pre60 = sext i32 %.pre to i64
  br label %bb.by

bb.by:                                            ; preds = %_get_anchor_socket.exit, %_disable_sigpipe.exit
  %.pre-phi = phi i64 [ %.pre60, %_get_anchor_socket.exit ], [ %4, %_disable_sigpipe.exit ]
  %i.gc = getelementptr inbounds [32 x i8], ptr @commands, i64 %.pre-phi
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 16
  %i.gf = call i32 %i.ge() #16                    ; 3 uses
  %i.gg = call i32 @get_log_level() #16
  %i.gh = icmp sgt i32 %i.gg, 4
  br i1 %i.gh, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.gi = call ptr @slurm_strerror(i32 noundef %i.gf) #16
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef %i.gf, ptr noundef %i.gi) #16
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  ret i32 %i.gf
}

declare i32 @log_init(ptr noundef, ptr noundef byval(%struct.log_options_t) align 8, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @xbasename(ptr noundef) local_unnamed_addr #2

declare void @init_setproctitle(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @slurm_init(ptr noundef) local_unnamed_addr #2

declare i32 @get_oci_conf(ptr noundef) local_unnamed_addr #2

declare void @init_state() local_unnamed_addr #2

declare void @serializer_required(ptr noundef) local_unnamed_addr #2

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #4

declare zeroext i16 @log_string2num(ptr noundef) local_unnamed_addr #2

declare ptr @log_num2string(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @putenv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare i32 @command_version() #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @_usage() unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef add (i64 sub (i64 ptrtoint (ptr @_binary_usage_txt_end to i64), i64 ptrtoint (ptr @_binary_usage_txt_start to i64)), i64 1), i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 342, ptr noundef nonnull @__func__._usage) #16 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr nonnull align 8 @_binary_usage_txt_start, i64 sub (i64 ptrtoint (ptr @_binary_usage_txt_end to i64), i64 ptrtoint (ptr @_binary_usage_txt_start to i64)), i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 sub (i64 ptrtoint (ptr @_binary_usage_txt_end to i64), i64 ptrtoint (ptr @_binary_usage_txt_start to i64))
  store i8 0, ptr %i.c, align 1
  store ptr %i.b, ptr %i.a, align 8
  %i.d = load ptr, ptr @stderr, align 8
  %fputs = tail call i32 @fputs(ptr %i.b, ptr %i.d) #20 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #5

declare ptr @xstrdup_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal void @_sigpipe_handler(i32 %0) #0 {
bb.a:
  %i.a = tail call i64 @write(i32 noundef 2, ptr noundef nonnull @.str.51, i64 noundef 23) #16
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__._sigpipe_handler) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @_parse_create(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4
  %i.b = tail call i32 @get_log_level() #16
  %i.c = icmp sgt i32 %i.b, 5
  %i.d = icmp sgt i32 %0, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.e = tail call i32 @get_log_level() #16
  %i.f = icmp sgt i32 %i.e, 5
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.65, i32 noundef %i.i, ptr noundef %i.h) #16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.preheader, label %.lr.ph, !llvm.loop !19

.loopexit.preheader:                              ; preds = %bb.c, %bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %.loopexit.preheader
  %i.j = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef nonnull @_parse_create.long_options, ptr noundef nonnull %i.a) #16
  switch i32 %i.j, label %bb.m [
    i32 -1, label %bb.n
    i32 256, label %bb.d
    i32 98, label %bb.d
    i32 257, label %bb.e
    i32 258, label %bb.f
    i32 259, label %bb.h
    i32 260, label %bb.j
    i32 261, label %bb.l
  ]

bb.d:                                             ; preds = %.loopexit, %.loopexit
  call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @state, i64 88)) #16
  call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @state, i64 96)) #16
  %i.k = load ptr, ptr @optarg, align 8
  %i.l = call ptr @xstrdup(ptr noundef %i.k) #16
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @state, i64 88), align 8
  %i.m = load ptr, ptr @optarg, align 8
  %i.n = call ptr @xstrdup(ptr noundef %i.m) #16
  store ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @state, i64 96), align 8
  br label %.loopexit.backedge

bb.e:                                             ; preds = %.loopexit
  call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @state, i64 112)) #16
  %i.o = load ptr, ptr @optarg, align 8
  %i.p = call ptr @xstrdup(ptr noundef %i.o) #16
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @state, i64 112), align 8
  br label %.loopexit.backedge

bb.f:                                             ; preds = %.loopexit
  %i.q = call i32 @get_log_level() #16
  %i.r = icmp sgt i32 %i.q, 4
  br i1 %i.r, label %bb.g, label %.loopexit.backedge

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.67) #16
  br label %.loopexit.backedge

bb.h:                                             ; preds = %.loopexit
  %i.s = call i32 @get_log_level() #16
  %i.t = icmp sgt i32 %i.s, 4
  br i1 %i.t, label %bb.i, label %.loopexit.backedge

bb.i:                                             ; preds = %bb.h
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.68) #16
  br label %.loopexit.backedge

bb.j:                                             ; preds = %.loopexit
  %i.u = call i32 @get_log_level() #16
  %i.v = icmp sgt i32 %i.u, 4
  br i1 %i.v, label %bb.k, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %bb.j, %bb.k, %bb.h, %bb.i, %bb.f, %bb.g, %bb.l, %bb.e, %bb.d
  br label %.loopexit, !llvm.loop !20

bb.k:                                             ; preds = %bb.j
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.69) #16
  br label %.loopexit.backedge

bb.l:                                             ; preds = %.loopexit
  call void @slurm_xfree(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @state, i64 144)) #16
  %i.w = load ptr, ptr @optarg, align 8
  %i.x = call ptr @xstrdup(ptr noundef %i.w) #16
  store ptr %i.x, ptr getelementptr inbounds nuw (i8, ptr @state, i64 144), align 8
  br label %.loopexit.backedge

bb.m:                                             ; preds = %.loopexit
  %i.y = load i32, ptr @optopt, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %1, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.70, ptr noundef %i.ab) #17
  unreachable

bb.n:                                             ; preds = %.loopexit
  %i.ac = load i32, ptr @optind, align 4          ; 3 uses
  %i.ad = add nsw i32 %0, -1
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %1, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call ptr @xstrdup(ptr noundef %i.ah) #16
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @state, i64 72), align 8
  %i.aj = load i32, ptr @optind, align 4          ; 3 uses
  %i.ak = icmp slt i32 %i.aj, %i.ac
  br i1 %i.ak, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.71) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %1, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.72, i32 noundef %i.aj, ptr noundef %i.an) #17
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @state, i64 88), align 8
  %.not19 = icmp eq ptr %i.ao, null
  br i1 %.not19, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ap = call ptr @get_current_dir_name() #16    ; 2 uses
  %i.aq = call ptr @xstrdup(ptr noundef %i.ap) #16
  store ptr %i.aq, ptr getelementptr inbounds nuw (i8, ptr @state, i64 88), align 8
  call void @free(ptr noundef %i.ap) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare i32 @command_create() #2

; Function Attrs: nounwind uwtable
define internal void @_parse_start(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.73) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @xstrdup(ptr noundef %i.b) #16
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @state, i64 72), align 8
  ret void
}

declare i32 @command_start() #2

; Function Attrs: nounwind uwtable
define internal void @_parse_state(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.73) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @xstrdup(ptr noundef %i.b) #16
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @state, i64 72), align 8
  ret void
}

declare i32 @command_state() #2

; Function Attrs: nounwind uwtable
define internal void @_parse_kill(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4
  %i.b = tail call i32 @get_log_level() #16
  %i.c = icmp sgt i32 %i.b, 5
  %i.d = icmp sgt i32 %0, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.e = tail call i32 @get_log_level() #16
  %i.f = icmp sgt i32 %i.e, 5
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.75, i32 noundef %i.i, ptr noundef %i.h) #16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.preheader, label %.lr.ph, !llvm.loop !21

.loopexit.preheader:                              ; preds = %bb.c, %bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %.loopexit.preheader
  %i.j = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.76, ptr noundef nonnull @_parse_kill.long_options, ptr noundef nonnull %i.a) #16
  switch i32 %i.j, label %bb.f [
    i32 -1, label %bb.g
    i32 256, label %bb.d
  ]

bb.d:                                             ; preds = %.loopexit
  %i.k = call i32 @get_log_level() #16
  %i.l = icmp sgt i32 %i.k, 4
  br i1 %i.l, label %bb.e, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %bb.d, %bb.e
  br label %.loopexit, !llvm.loop !22

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.77) #16
  br label %.loopexit.backedge

bb.f:                                             ; preds = %.loopexit
  %i.m = load i32, ptr @optopt, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %1, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.70, ptr noundef %i.p) #17
  unreachable

bb.g:                                             ; preds = %.loopexit
  %i.q = load i32, ptr @optind, align 4           ; 2 uses
  %i.r = icmp slt i32 %i.q, %0
  br i1 %i.r, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call ptr @xstrdup(ptr noundef %i.u) #16
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @state, i64 72), align 8
  %i.w = load i32, ptr @optind, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr @optind, align 4
  %i.y = call i32 @get_log_level() #16
  %i.z = icmp sgt i32 %i.y, 4
  br i1 %i.z, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @state, i64 72), align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.78, ptr noundef %i.aa) #16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.71) #17
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.ab = load i32, ptr @optind, align 4          ; 2 uses
  %.not29 = icmp slt i32 %i.ab, %0
  br i1 %.not29, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = call i32 @get_log_level() #16
  %i.ad = icmp sgt i32 %i.ac, 4
  br i1 %i.ad, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.79) #16
  br label %bb.u

bb.n:                                             ; preds = %bb.k
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8            ; 4 uses
  %i.ah = tail call ptr @__ctype_b_loc() #21
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load i8, ptr %i.ag, align 1
  %i.ak = sext i8 %i.aj to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2
  %i.an = and i16 %i.am, 2048
  %.not30 = icmp eq i16 %i.an, 0
  br i1 %.not30, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ag, ptr noundef null, i32 noundef 10) #16, !inline_history !23
  %i.ap = trunc i64 %i.ao to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aq = call i32 @sig_name2num(ptr noundef nonnull %i.ag) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.023 = phi i32 [ %i.ap, %bb.o ], [ %i.aq, %bb.p ] ; 3 uses
  %i.ar = icmp slt i32 %.023, 1
  br i1 %i.ar, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = call i32 @__libc_current_sigrtmax() #16
  %.not31 = icmp slt i32 %.023, %i.as
  br i1 %.not31, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.80, ptr noundef nonnull %i.ag) #17
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.at = load i32, ptr @optind, align 4
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr @optind, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.l, %bb.m, %bb.t
  %.1 = phi i32 [ %.023, %bb.t ], [ 15, %bb.m ], [ 15, %bb.l ]
  %i.av = load i32, ptr @optind, align 4          ; 3 uses
  %i.aw = icmp slt i32 %i.av, %0
  br i1 %i.aw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.81, i32 noundef %i.av, i32 noundef %0, ptr noundef %i.az) #17
  unreachable

bb.w:                                             ; preds = %bb.u
  store i32 %.1, ptr getelementptr inbounds nuw (i8, ptr @state, i64 272), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare i32 @command_kill() #2

; Function Attrs: nounwind uwtable
define internal void @_parse_delete(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4
  %i.b = tail call i32 @get_log_level() #16
  %i.c = icmp sgt i32 %i.b, 5
  %i.d = icmp sgt i32 %0, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.e = tail call i32 @get_log_level() #16
  %i.f = icmp sgt i32 %i.e, 5
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.83, i32 noundef %i.i, ptr noundef %i.h) #16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.preheader, label %.lr.ph, !llvm.loop !24

.loopexit.preheader:                              ; preds = %bb.c, %bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %.loopexit.preheader
  %i.j = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.84, ptr noundef nonnull @_parse_delete.long_options, ptr noundef nonnull %i.a) #16
  switch i32 %i.j, label %bb.e [
    i32 -1, label %bb.f
    i32 256, label %bb.d
    i32 102, label %bb.d
  ]

bb.d:                                             ; preds = %.loopexit, %.loopexit
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @state, i64 276), align 4
  br label %.loopexit.backedge

bb.e:                                             ; preds = %.loopexit
  %i.k = load i32, ptr @optopt, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %1, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__._parse_delete, ptr noundef %i.n) #16 ; 0 uses
  br label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %bb.e, %bb.d
  br label %.loopexit, !llvm.loop !25

bb.f:                                             ; preds = %.loopexit
  %i.p = load i32, ptr @optind, align 4           ; 3 uses
  %i.q = add nsw i32 %0, -1
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call ptr @xstrdup(ptr noundef %i.u) #16
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @state, i64 72), align 8
  %i.w = load i32, ptr @optind, align 4           ; 3 uses
  %i.x = icmp slt i32 %i.w, %i.p
  br i1 %i.x, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.71) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %1, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.72, i32 noundef %i.w, ptr noundef %i.aa) #17
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare i32 @command_delete() #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_parse_version(i32 %0, ptr nofree readnone captures(none) %1) #11 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare ptr @get_current_dir_name() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #13

declare i32 @sig_name2num(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

declare ptr @uid_to_string_or_null(i32 noundef) local_unnamed_addr #2

declare i32 @hash_g_compute(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #15

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { cold }
attributes #21 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !8, !9}
!11 = distinct !{!11, !8, !9}
!12 = distinct !{!12, !8, !9}
!13 = distinct !{!13, !8, !9, !15, !16}
!14 = distinct !{!14, !8, !9, !15}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = distinct !{!19, !8, !9}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !8, !9}
!22 = distinct !{!22, !8, !9}
!23 = distinct !{null}
!24 = distinct !{!24, !8, !9}
!25 = distinct !{!25, !8, !9}
end_hunk_0
