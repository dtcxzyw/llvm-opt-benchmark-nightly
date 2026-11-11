Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/burst_buffer_datawarp?download=true
inline.NumInlined: 92
inline.NumDeleted: 38
begin_hunk_0_@_load_state:bb.a
  %.not62.i = icmp eq i32 %i.wo, 0
  br i1 %.not62.i, label %bb.fh, label %.loopexit.i

bb.fh:                                            ; preds = %bb.fg
  %i.wp = load i32, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 64), align 8
  %i.wq = and i32 %i.wp, 4
  %.not63.i = icmp eq i32 %i.wq, 0
  br i1 %.not63.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.wr = call i32 @unpack64(ptr noundef nonnull %i.f, ptr noundef %i.vp) #14
  %.not64.i = icmp eq i32 %i.wr, 0
  br i1 %.not64.i, label %bb.fj, label %.loopexit.i

bb.fj:                                            ; preds = %bb.fi, %bb.fh, %.lr.ph.i240
  %i.ws = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not65.i = icmp eq i32 %i.ws, 0
  br i1 %.not65.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  store i32 %i.ws, ptr %i.vo, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._recover_bb_state) #16
  unreachable

bb.fl:                                            ; preds = %bb.fj
  %i.wt = load i32, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 64), align 8
  %i.wu = and i32 %i.wt, 4
  %.not66.i = icmp eq i32 %i.wu, 0
  %i.wv = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ww = load i32, ptr %i.e, align 4             ; 2 uses
  br i1 %.not66.i, label %bb.fp, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.wx = call ptr @bb_alloc_name_rec(ptr noundef nonnull @bb_state, ptr noundef %i.wv, i32 noundef %i.ww) #14 ; 7 uses
  %i.wy = load i32, ptr %i.d, align 4             ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 60
  store i32 %i.wy, ptr %i.wz, align 4
  %i.xa = load i32, ptr @last_persistent_id, align 4
  %i.xb = call i32 @llvm.umax.i32(i32 %i.xa, i32 %i.wy)
  store i32 %i.xb, ptr @last_persistent_id, align 4
  %i.xc = load ptr, ptr %i.h, align 8             ; 3 uses
  %.not67.i = icmp eq ptr %i.xc, null
  br i1 %.not67.i, label %.thread.i242, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.xd = load i8, ptr %i.xc, align 1
  %i.xe = add i8 %i.xd, -48
  %or.cond.i241 = icmp ult i8 %i.xe, 10
  br i1 %or.cond.i241, label %bb.fo, label %.thread.i242

bb.fo:                                            ; preds = %bb.fn
  %i.xf = call i64 @__isoc23_strtol(ptr noundef nonnull %i.xc, ptr noundef nonnull %i.l, i32 noundef 10) #14
  %i.xg = trunc i64 %i.xf to i32                  ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wx, i64 64
  store i32 %i.xg, ptr %i.xh, align 8
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wx, i64 24
  store i32 %i.xg, ptr %i.xi, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wx, i64 28
  store i32 -2, ptr %i.xj, align 4
  br label %.thread.i242

.thread.i242:                                     ; preds = %bb.fo, %bb.fn, %bb.fm
  %i.xk = call i64 @time(ptr noundef null) #14
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wx, i64 128
  store i64 %i.xk, ptr %i.xl, align 8
  %i.xm = load i64, ptr %i.f, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wx, i64 136
  store i64 %i.xm, ptr %i.xn, align 8
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fl
  %i.xo = call ptr @bb_find_name_rec(ptr noundef %i.wv, i32 noundef %i.ww, ptr noundef nonnull @bb_state) #14 ; 2 uses
  %.not68.i = icmp eq ptr %i.xo, null
  br i1 %.not68.i, label %bb.fu, label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %.thread.i242
  %.04577.i = phi ptr [ %i.wx, %.thread.i242 ], [ %i.xo, %bb.fp ] ; 8 uses
  %i.xp = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.xq = and i64 %i.xp, 1099511627776
  %.not69.i = icmp eq i64 %i.xq, 0
  br i1 %.not69.i, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.xr = call i32 @get_log_level() #14
  %i.xs = icmp sgt i32 %i.xr, 3
  br i1 %i.xs, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.xt = getelementptr inbounds nuw i8, ptr %.04577.i, i64 72
  %i.xu = load ptr, ptr %i.xt, align 8
  %i.xv = getelementptr inbounds nuw i8, ptr %.04577.i, i64 168
  %i.xw = load i32, ptr %i.xv, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.114, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._recover_bb_state, ptr noundef %i.xu, i32 noundef %i.xw) #14
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %bb.fq
  call void @slurm_xfree(ptr noundef nonnull %.04577.i) #14
  %i.xx = load ptr, ptr %i.g, align 8
  store ptr %i.xx, ptr %.04577.i, align 8
  store ptr null, ptr %i.g, align 8
  %i.xy = load i64, ptr %i.m, align 8
  %i.xz = getelementptr inbounds nuw i8, ptr %.04577.i, i64 40
  store i64 %i.xy, ptr %i.xz, align 8
  %i.ya = getelementptr inbounds nuw i8, ptr %.04577.i, i64 96 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.ya) #14
  %i.yb = load ptr, ptr %i.i, align 8
  store ptr %i.yb, ptr %i.ya, align 8
  store ptr null, ptr %i.i, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %.04577.i, i64 104 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.yc) #14
  %i.yd = load ptr, ptr %i.j, align 8
  store ptr %i.yd, ptr %i.yc, align 8
  store ptr null, ptr %i.j, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %.04577.i, i64 112 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.ye) #14
  %i.yf = load ptr, ptr %i.k, align 8
  store ptr %i.yf, ptr %i.ye, align 8
  store ptr null, ptr %i.k, align 8
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fp
  %i.yg = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not70.i = icmp eq i32 %i.yg, 0
  br i1 %.not70.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  store i32 %i.yg, ptr %i.vo, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__._recover_bb_state) #16
  unreachable

bb.fw:                                            ; preds = %bb.fu
  call void @slurm_xfree(ptr noundef nonnull %i.g) #14
  call void @slurm_xfree(ptr noundef nonnull %i.h) #14
  call void @slurm_xfree(ptr noundef nonnull %i.i) #14
  call void @slurm_xfree(ptr noundef nonnull %i.j) #14
  call void @slurm_xfree(ptr noundef nonnull %i.k) #14
  %i.yh = add nuw nsw i32 %.04680.i, 1            ; 2 uses
  %i.yi = load i32, ptr %i.c, align 4
  %i.yj = icmp ult i32 %i.yh, %i.yi
  br i1 %i.yj, label %.lr.ph.i240, label %._crit_edge.i243, !llvm.loop !41

._crit_edge.i243:                                 ; preds = %bb.fw, %.preheader.i239
  %i.yk = call i32 @get_log_level() #14
  %i.yl = icmp sgt i32 %i.yk, 2
  br i1 %i.yl, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %._crit_edge.i243
  %i.ym = load i32, ptr %i.c, align 4
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.115, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._recover_bb_state, i32 noundef %i.ym) #14
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %._crit_edge.i243
  br i1 %.not.i238, label %_recover_bb_state.exit, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @free_buf(ptr noundef nonnull %i.vp) #14
  br label %_recover_bb_state.exit

.loopexit.i:                                      ; preds = %bb.fi, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.et
  %i.yn = load i8, ptr @ignore_state_errors, align 1, !range !11, !noundef !12
  %i.yo = trunc nuw i8 %i.yn to i1
  br i1 %i.yo, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %.loopexit.i
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.116) #16
  unreachable

bb.gb:                                            ; preds = %.loopexit.i
  %i.yp = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.117) #14 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.g) #14
  call void @slurm_xfree(ptr noundef nonnull %i.h) #14
  call void @slurm_xfree(ptr noundef nonnull %i.i) #14
  call void @slurm_xfree(ptr noundef nonnull %i.k) #14
  br i1 %.not.i238, label %_recover_bb_state.exit, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @free_buf(ptr noundef nonnull %i.vp) #14
  br label %_recover_bb_state.exit

_recover_bb_state.exit:                           ; preds = %bb.es, %bb.ex, %bb.fy, %bb.fz, %bb.gb, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.yq = load i32, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 64), align 8
  %i.yr = and i32 %i.yq, 4
  %.not.i244 = icmp ne i32 %i.yr, 0
  %i.ys = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.yt = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.yu = getelementptr inbounds nuw i8, ptr %2, i64 292
  %i.yv = getelementptr inbounds nuw i8, ptr %3, i64 264
  br label %bb.gd

bb.gd:                                            ; preds = %._crit_edge.i247, %_recover_bb_state.exit
  %indvars.iv.i245 = phi i64 [ 0, %_recover_bb_state.exit ], [ %indvars.iv.next.i248, %._crit_edge.i247 ] ; 2 uses
  %13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 168), align 8
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv.i245
  %.01316.i = load ptr, ptr %i.yw, align 8        ; 2 uses
  %.not1517.i = icmp eq ptr %.01316.i, null
  br i1 %.not1517.i, label %._crit_edge.i247, label %.lr.ph.i246

.lr.ph.i246:                                      ; preds = %bb.gd, %_set_assoc_mgr_ptrs.exit.i
  %.01318.i = phi ptr [ %.013.i, %_set_assoc_mgr_ptrs.exit.i ], [ %.01316.i, %bb.gd ] ; 14 uses
  %i.yx = call i32 @get_log_level() #14
  %i.yy = icmp sgt i32 %i.yx, 2
  br i1 %i.yy, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %.lr.ph.i246
  %i.yz = getelementptr inbounds nuw i8, ptr %.01318.i, i64 72
  %i.za = load ptr, ptr %i.yz, align 8
  %i.zb = getelementptr inbounds nuw i8, ptr %.01318.i, i64 168
  %i.zc = load i32, ptr %i.zb, align 8
  %i.zd = getelementptr inbounds nuw i8, ptr %.01318.i, i64 104
  %i.ze = load ptr, ptr %i.zd, align 8
  %i.zf = getelementptr inbounds nuw i8, ptr %.01318.i, i64 136
  %i.zg = load i64, ptr %i.zf, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.118, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._apply_limits, ptr noundef %i.za, i32 noundef %i.zc, ptr noundef %i.ze, i64 noundef %i.zg) #14
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %.lr.ph.i246
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %1, ptr noundef nonnull align 4 dereferenceable(28) @__const._set_assoc_mgr_ptrs.assoc_locks, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %2, i8 0, i64 328, i1 false)
  %i.zh = load ptr, ptr %.01318.i, align 8
  store ptr %i.zh, ptr %i.ys, align 8
  %i.zi = getelementptr inbounds nuw i8, ptr %.01318.i, i64 96
  %i.zj = load ptr, ptr %i.zi, align 8
  store ptr %i.zj, ptr %i.yt, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %.01318.i, i64 168 ; 2 uses
  %i.zl = load i32, ptr %i.zk, align 8
  store i32 %i.zl, ptr %i.yu, align 4
  call void @assoc_mgr_lock(ptr noundef nonnull %1) #14
  %i.zm = load ptr, ptr @acct_db_conn, align 8
  %i.zn = load i16, ptr @accounting_enforce, align 2
  %i.zo = zext i16 %i.zn to i32
  %i.zp = getelementptr inbounds nuw i8, ptr %.01318.i, i64 8 ; 2 uses
  %i.zq = call i32 @assoc_mgr_fill_in_assoc(ptr noundef %i.zm, ptr noundef nonnull %2, i32 noundef %i.zo, ptr noundef nonnull %i.zp, i1 noundef zeroext true) #14
  %i.zr = icmp eq i32 %i.zq, 0
  br i1 %i.zr, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %bb.gf
  %i.zs = getelementptr inbounds nuw i8, ptr %.01318.i, i64 16 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.zs) #14
  %i.zt = load ptr, ptr %i.zp, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.zt, null
  br i1 %.not.i.i, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 132
  %i.zv = load i32, ptr %i.zu, align 4
  %i.zw = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.102, i32 noundef %i.zv) #14
  store ptr %i.zw, ptr %i.zs, align 8
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg, %bb.gf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %3, i8 0, i64 344, i1 false)
  %i.zx = getelementptr inbounds nuw i8, ptr %.01318.i, i64 112 ; 2 uses
  %i.zy = load ptr, ptr %i.zx, align 8
  store ptr %i.zy, ptr %i.yv, align 8
  %i.zz = load ptr, ptr @acct_db_conn, align 8
  %i.aaa = load i16, ptr @accounting_enforce, align 2
  %i.aab = zext i16 %i.aaa to i32
  %i.aac = getelementptr inbounds nuw i8, ptr %.01318.i, i64 120
  %i.aad = call i32 @assoc_mgr_fill_in_qos(ptr noundef %i.zz, ptr noundef nonnull %3, i32 noundef %i.aab, ptr noundef nonnull %i.aac, i1 noundef zeroext true) #14
  %.not11.i.i = icmp eq i32 %i.aad, 0
  br i1 %.not11.i.i, label %_set_assoc_mgr_ptrs.exit.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aae = call i32 @get_log_level() #14
  %i.aaf = icmp sgt i32 %i.aae, 3
  br i1 %i.aaf, label %bb.gk, label %_set_assoc_mgr_ptrs.exit.i

bb.gk:                                            ; preds = %bb.gj
  %i.aag = load ptr, ptr %i.zx, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.127, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._set_assoc_mgr_ptrs, ptr noundef %i.aag) #14
  br label %_set_assoc_mgr_ptrs.exit.i

_set_assoc_mgr_ptrs.exit.i:                       ; preds = %bb.gk, %bb.gj, %bb.gi
  call void @assoc_mgr_unlock(ptr noundef nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.aah = load i32, ptr %i.zk, align 8
  %i.aai = getelementptr inbounds nuw i8, ptr %.01318.i, i64 136
  %i.aaj = load i64, ptr %i.aai, align 8
  %i.aak = getelementptr inbounds nuw i8, ptr %.01318.i, i64 104
  %i.aal = load ptr, ptr %i.aak, align 8
  call void @bb_limit_add(i32 noundef %i.aah, i64 noundef %i.aaj, ptr noundef %i.aal, ptr noundef nonnull @bb_state, i1 noundef zeroext %.not.i244) #14
  %i.aam = getelementptr inbounds nuw i8, ptr %.01318.i, i64 80
  %.013.i = load ptr, ptr %i.aam, align 8         ; 2 uses
  %.not15.i = icmp eq ptr %.013.i, null
  br i1 %.not15.i, label %._crit_edge.i247, label %.lr.ph.i246, !llvm.loop !42

._crit_edge.i247:                                 ; preds = %_set_assoc_mgr_ptrs.exit.i, %bb.gd
  %indvars.iv.next.i248 = add nuw nsw i64 %indvars.iv.i245, 1 ; 2 uses
  %exitcond.not.i249 = icmp eq i64 %indvars.iv.next.i248, 100
  br i1 %exitcond.not.i249, label %_apply_limits.exit, label %bb.gd, !llvm.loop !43

_apply_limits.exit:                               ; preds = %._crit_edge.i247
  %i.aan = call i64 @time(ptr noundef null) #14
  store i64 %i.aan, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 264), align 8
  br label %bb.gl

bb.gl:                                            ; preds = %_bb_free_sessions.exit, %_apply_limits.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #14
  ret void
}

declare void @bb_set_tres_pos(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @_save_bb_state() unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @time(ptr noundef null) #14
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 264), align 8
  %i.c = load i64, ptr @_save_bb_state.last_save_time, align 8
  %i.d = icmp sgt i64 %i.b, %i.c
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 336), align 8, !range !11
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @init_buf(i32 noundef 16384) #14 ; 15 uses
  tail call void @pack16(i16 noundef zeroext 11520, ptr noundef %i.g) #14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4
  tail call void @pack32(i32 noundef 0, ptr noundef %i.g) #14
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 168), align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not76 = icmp eq i32 %i.k, 0
  br i1 %.not76, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__errno_location() #15
  store i32 %i.k, ptr %i.l, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._save_bb_state) #16
  unreachable

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %.06592 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 168), align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %.06688 = load ptr, ptr %i.n, align 8           ; 2 uses
  %.not8089 = icmp eq ptr %.06688, null
  br i1 %.not8089, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %.06691 = phi ptr [ %.066, %bb.r ], [ %.06688, %.preheader ] ; 10 uses
  %.190 = phi i32 [ %.2, %bb.r ], [ %.06592, %.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.06691, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %.not81 = icmp eq ptr %i.p, null
  br i1 %.not81, label %bb.r, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %.06691, align 8           ; 3 uses
  %.not82 = icmp eq ptr %i.q, null
  br i1 %.not82, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #17
  %i.s = trunc i64 %i.r to i32
  %i.t = add i32 %i.s, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.063 = phi i32 [ %i.t, %bb.f ], [ 0, %bb.e ]
  tail call void @packmem(ptr noundef %i.q, i32 noundef %.063, ptr noundef %i.g) #14
  %i.u = getelementptr inbounds nuw i8, ptr %.06691, i64 40
  %i.v = load i64, ptr %i.u, align 8
  tail call void @pack_time(i64 noundef %i.v, ptr noundef %i.g) #14
  %i.w = getelementptr inbounds nuw i8, ptr %.06691, i64 60
  %i.x = load i32, ptr %i.w, align 4
  tail call void @pack32(i32 noundef %i.x, ptr noundef %i.g) #14
  %i.y = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not83 = icmp eq ptr %i.y, null
  br i1 %.not83, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #17
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add i32 %i.aa, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.062 = phi i32 [ %i.ab, %bb.h ], [ 0, %bb.g ]
  tail call void @packmem(ptr noundef %i.y, i32 noundef %.062, ptr noundef %i.g) #14
  %i.ac = getelementptr inbounds nuw i8, ptr %.06691, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not84 = icmp eq ptr %i.ad, null
  br i1 %.not84, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #17
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add i32 %i.af, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.061 = phi i32 [ %i.ag, %bb.j ], [ 0, %bb.i ]
  tail call void @packmem(ptr noundef %i.ad, i32 noundef %.061, ptr noundef %i.g) #14
  %i.ah = getelementptr inbounds nuw i8, ptr %.06691, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %.not85 = icmp eq ptr %i.ai, null
  br i1 %.not85, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #17
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add i32 %i.ak, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.060 = phi i32 [ %i.al, %bb.l ], [ 0, %bb.k ]
  tail call void @packmem(ptr noundef %i.ai, i32 noundef %.060, ptr noundef %i.g) #14
  %i.am = getelementptr inbounds nuw i8, ptr %.06691, i64 112
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not86 = icmp eq ptr %i.an, null
  br i1 %.not86, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #17
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = add i32 %i.ap, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i32 [ %i.aq, %bb.n ], [ 0, %bb.m ]
  tail call void @packmem(ptr noundef %i.an, i32 noundef %.0, ptr noundef %i.g) #14
  %i.ar = getelementptr inbounds nuw i8, ptr %.06691, i64 168
  %i.as = load i32, ptr %i.ar, align 8
  tail call void @pack32(i32 noundef %i.as, ptr noundef %i.g) #14
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 64), align 8
  %i.au = and i32 %i.at, 4
  %.not87 = icmp eq i32 %i.au, 0
  br i1 %.not87, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.06691, i64 136
  %i.aw = load i64, ptr %i.av, align 8
  tail call void @pack64(i64 noundef %i.aw, ptr noundef %i.g) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ax = add i32 %.190, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph
  %.2 = phi i32 [ %i.ax, %bb.q ], [ %.190, %.lr.ph ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.06691, i64 80
  %.066 = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not80 = icmp eq ptr %.066, null
  br i1 %.not80, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.r, %.preheader
  %.1.lcssa = phi i32 [ %.06592, %.preheader ], [ %.2, %bb.r ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %bb.s, label %.preheader, !llvm.loop !45

bb.s:                                             ; preds = %._crit_edge
  %i.az = tail call i64 @time(ptr noundef null) #14
  %i.ba = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not77 = icmp eq i32 %i.ba, 0
  br i1 %.not77, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @__errno_location() #15
  store i32 %i.ba, ptr %i.bb, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__._save_bb_state) #16
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bc = load i32, ptr %i.h, align 4
  store i32 %i.i, ptr %i.h, align 4
  tail call void @pack32(i32 noundef %.1.lcssa, ptr noundef %i.g) #14
  store i32 %i.bc, ptr %i.h, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.b
  %.067 = phi i64 [ %i.az, %bb.u ], [ %i.a, %bb.b ]
  %i.bd = tail call i32 @save_buf_to_state(ptr noundef nonnull @.str.109, ptr noundef nonnull %i.g, ptr noundef null) #14
  %.not78 = icmp eq i32 %i.bd, 0
  br i1 %.not78, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i64 %.067, ptr @_save_bb_state.last_save_time, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  tail call void @free_buf(ptr noundef nonnull %i.g) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @bb_p_get_status(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.run_command_args_t, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  store i32 2000, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.f, align 4
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 80), align 8
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @.str.9, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.m = add i32 %0, 2
  %i.n = zext i32 %i.m to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.o = call ptr @slurm_xcalloc(i64 noundef %i.n, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 2758, ptr noundef nonnull @__func__.bb_p_get_status) #14 ; 6 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  store ptr %i.o, ptr %i.c, align 8
  store ptr @.str.9, ptr %i.o, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %0 to i64           ; 3 uses
  %min.iters.check = icmp ult i32 %0, 10
  br i1 %min.iters.check, label %.lr.ph.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.q = sub i64 %i.p, %i.a
  %i.r = add i64 %i.q, 7
  %diff.check = icmp ult i64 %i.r, 15
  br i1 %diff.check, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967294   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load = load <2 x ptr>, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store <2 x ptr> %wide.load, ptr %i.u, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader8, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader8 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next
  store ptr %i.x, ptr %i.y, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  store ptr %i.o, ptr %i.g, align 8
  %i.z = call ptr @run_command(ptr noundef nonnull %4) #14
  store ptr %i.z, ptr %i.b, align 8
  %i.aa = load i32, ptr %i.d, align 4
  %i.ab = and i32 %i.aa, 65407
  %or.cond = icmp eq i32 %i.ab, 0
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  call void @slurm_xfree(ptr noundef nonnull %i.b) #14
  %i.ac = call ptr @xstrdup(ptr noundef nonnull @.str.10) #14
  store ptr %i.ac, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.c) #14
  %i.ad = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret ptr %i.ad
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @run_command(ptr noundef) local_unnamed_addr #5

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #5

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @bb_p_reconfig() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.assoc_mgr_lock_t, align 4   ; 5 uses
  %1 = alloca %struct.slurmdb_assoc_rec, align 8  ; 7 uses
  %2 = alloca %struct.slurmdb_qos_rec_t, align 8  ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #15
  store i32 %i.b, ptr %i.c, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bb_p_reconfig) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.e = and i64 %i.d, 1099511627776
  %.not12 = icmp eq i64 %i.e, 0
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @get_log_level() #14
  %i.g = icmp sgt i32 %i.f, 3
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.bb_p_reconfig) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 24), align 8 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 24), align 8
  tail call void @bb_load_config(ptr noundef nonnull @bb_state, ptr noundef nonnull @plugin_type) #14
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 24), align 8
  %.not13 = icmp eq ptr %i.i, null
  br i1 %.not13, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 24), align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @slurm_xfree(ptr noundef nonnull %i.a) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call fastcc void @_test_config()
  %i.j = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 264
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = tail call ptr @__errno_location() #15
  store i32 %i.j, ptr %i.o, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.bb_p_reconfig) #16
  unreachable

bb.k:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %3 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 168), align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %.016 = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not1517 = icmp eq ptr %.016, null
  br i1 %.not1517, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %_set_assoc_mgr_ptrs.exit
  %.018 = phi ptr [ %.0, %_set_assoc_mgr_ptrs.exit ], [ %.016, %bb.k ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) @__const._set_assoc_mgr_ptrs.assoc_locks, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %1, i8 0, i64 328, i1 false)
  %i.q = load ptr, ptr %.018, align 8
  store ptr %i.q, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 96
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %i.l, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.018, i64 168
  %i.u = load i32, ptr %i.t, align 8
  store i32 %i.u, ptr %i.m, align 4
  call void @assoc_mgr_lock(ptr noundef nonnull %0) #14
  %i.v = load ptr, ptr @acct_db_conn, align 8
  %i.w = load i16, ptr @accounting_enforce, align 2
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  %i.z = call i32 @assoc_mgr_fill_in_assoc(ptr noundef %i.v, ptr noundef nonnull %1, i32 noundef %i.x, ptr noundef nonnull %i.y, i1 noundef zeroext true) #14
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.018, i64 16 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.ab) #14
  %i.ac = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 132
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.102, i32 noundef %i.ae) #14
  store ptr %i.af, ptr %i.ab, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %2, i8 0, i64 344, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.018, i64 112 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  store ptr %i.ah, ptr %i.n, align 8
  %i.ai = load ptr, ptr @acct_db_conn, align 8
  %i.aj = load i16, ptr @accounting_enforce, align 2
  %i.ak = zext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.018, i64 120
  %i.am = call i32 @assoc_mgr_fill_in_qos(ptr noundef %i.ai, ptr noundef nonnull %2, i32 noundef %i.ak, ptr noundef nonnull %i.al, i1 noundef zeroext true) #14
  %.not11.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i, label %_set_assoc_mgr_ptrs.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = call i32 @get_log_level() #14
  %i.ao = icmp sgt i32 %i.an, 3
  br i1 %i.ao, label %bb.p, label %_set_assoc_mgr_ptrs.exit

bb.p:                                             ; preds = %bb.o
  %i.ap = load ptr, ptr %i.ag, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.127, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._set_assoc_mgr_ptrs, ptr noundef %i.ap) #14
  br label %_set_assoc_mgr_ptrs.exit

_set_assoc_mgr_ptrs.exit:                         ; preds = %bb.n, %bb.o, %bb.p
  call void @assoc_mgr_unlock(ptr noundef nonnull %0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  %i.aq = getelementptr inbounds nuw i8, ptr %.018, i64 80
  %.0 = load ptr, ptr %i.aq, align 8              ; 2 uses
  %.not15 = icmp eq ptr %.0, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %_set_assoc_mgr_ptrs.exit, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %bb.q, label %bb.k, !llvm.loop !51

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @bb_p_state_pack(i32 noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #15
  store i32 %i.a, ptr %i.b, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bb_p_state_pack) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 248), align 8 ; 3 uses
  %.not19 = icmp eq ptr %i.c, null
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #17
  %i.e = trunc i64 %i.d to i32
  %i.f = add i32 %i.e, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.f, %bb.d ], [ 0, %bb.c ]
  tail call void @packmem(ptr noundef %i.c, i32 noundef %.0, ptr noundef %1) #14
  tail call void @bb_pack_state(ptr noundef nonnull @bb_state, ptr noundef %1, i16 noundef zeroext %2) #14
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 64), align 8
  %i.h = and i32 %i.g, 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call zeroext i1 @validate_operator(i32 noundef %0) #14
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.015 = phi i32 [ 0, %bb.g ], [ %0, %bb.f ]     ; 2 uses
  %i.k = tail call i32 @bb_pack_bufs(i32 noundef %.015, ptr noundef nonnull @bb_state, ptr noundef %1, i16 noundef zeroext %2) #14
  %i.l = tail call i32 @bb_pack_usage(i32 noundef %.015, ptr noundef nonnull @bb_state, ptr noundef %1, i16 noundef zeroext %2) #14 ; 0 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.n = and i64 %i.m, 1099511627776
  %.not20 = icmp eq i64 %i.n, 0
  br i1 %.not20, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i32 @get_log_level() #14
  %i.p = icmp sgt i32 %i.o, 3
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.bb_p_state_pack, i32 noundef %i.k) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not21 = icmp eq i32 %i.q, 0
  br i1 %.not21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = tail call ptr @__errno_location() #15
  store i32 %i.q, ptr %i.r, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.bb_p_state_pack) #16
  unreachable

bb.m:                                             ; preds = %bb.k
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare void @packmem(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @bb_pack_state(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

declare zeroext i1 @validate_operator(i32 noundef) local_unnamed_addr #5

declare i32 @bb_pack_bufs(i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

declare i32 @bb_pack_usage(i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2095) i32 @bb_p_job_validate(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca ptr, align 8                      ; 16 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  store ptr null, ptr %i.g, align 8
  %i.h = tail call zeroext i1 @validate_operator(i32 noundef %1) #14
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 64), align 8
  %i.j = and i32 %i.i, 2
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.092.i = phi i1 [ true, %bb.c ], [ false, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not124.i = icmp eq ptr %i.l, null
  br i1 %.not124.i, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call fastcc i32 @_xlate_interactive(ptr noundef nonnull %0) ; 2 uses
  %.not51.i.i = icmp eq i32 %i.o, 0
  br i1 %.not51.i.i, label %bb.g, label %_xlate_batch.exit.i

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.m, align 8
  tail call void @run_command_add_to_script(ptr noundef nonnull %i.k, ptr noundef %i.p) #14
  tail call void @slurm_xfree(ptr noundef nonnull %i.m) #14
  %.pre.i = load ptr, ptr %i.k, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.q = phi ptr [ %.pre.i, %bb.g ], [ %i.l, %bb.e ]
  %i.r = tail call ptr @xstrdup(ptr noundef %i.q) #14 ; 2 uses
  store ptr %i.r, ptr %i.a, align 8
  %i.s = call ptr @strtok_r(ptr noundef %i.r, ptr noundef nonnull @.str.128, ptr noundef nonnull %i.b) #14 ; 2 uses
  %.not5269.i.i = icmp eq ptr %i.s, null
  br i1 %.not5269.i.i, label %.sink.split.i.i, label %.lr.ph75.i.i

.lr.ph75.i.i:                                     ; preds = %bb.h, %.thread.i.i
  %.03773.i.i = phi i1 [ %.2.i.i, %.thread.i.i ], [ false, %bb.h ] ; 6 uses
  %.03972.i.i = phi i1 [ %.241.i.i, %.thread.i.i ], [ false, %bb.h ]
  %.04271.i.i = phi i32 [ %.143.i.i, %.thread.i.i ], [ 0, %bb.h ] ; 4 uses
  %.04570.i.i = phi ptr [ %i.be, %.thread.i.i ], [ %i.s, %bb.h ] ; 7 uses
  %i.t = load i8, ptr %.04570.i.i, align 1
  %.not53.i.i = icmp eq i8 %i.t, 35
  br i1 %.not53.i.i, label %bb.i, label %.sink.split.i.i

bb.i:                                             ; preds = %.lr.ph75.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.04570.i.i, i64 1
  %i.v = load i8, ptr %i.u, align 1
  switch i8 %i.v, label %.thread.i.i [
    i8 66, label %bb.j
    i8 68, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.04570.i.i, i64 2
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 66
  br i1 %i.y, label %bb.l, label %.thread.i.i

bb.k:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.04570.i.i, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 87
  br i1 %i.ab, label %bb.l, label %.thread.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %.044.ph.i.i = phi i32 [ 2, %bb.k ], [ 1, %bb.j ] ; 2 uses
  br i1 %.03972.i.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %.not55.i.i = icmp eq i32 %.044.ph.i.i, %.04271.i.i
  br i1 %.not55.i.i, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %.04570.i.i, i64 3 ; 2 uses
end_hunk_0
