Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/plugrack?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
begin_hunk_0_@_foreach_plugin:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.a(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 8004) i32 @load_plugins(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.plugrack_foreach_args_t, align 8 ; 5 uses
  %7 = alloca %struct.plugrack_foreach_args_t, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 48, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 522, ptr noundef nonnull @__func__.load_plugins) #11 ; 4 uses
  store i32 1038080693, ptr %i.g, align 8
  %i.h = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 123, ptr noundef nonnull @__func__.plugrack_create) #11 ; 5 uses
  %i.i = tail call ptr @xstrdup(ptr noundef %1) #11
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = tail call ptr @list_create(ptr noundef nonnull @plugrack_entry_destructor) #11
  store ptr %i.k, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.h, ptr %i.l, align 8
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 848), align 8 ; 2 uses
  %.not84 = icmp eq ptr %i.m, null
  %i.n = load ptr, ptr @default_plugin_path, align 8
  %.074 = select i1 %.not84, ptr %i.n, ptr %i.m   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not113 = icmp eq ptr %.074, null
  br i1 %.not113, label %plugrack_read_dir.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @xstrdup(ptr noundef nonnull %.074) #11 ; 3 uses
  store ptr %i.o, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.p = phi ptr [ %i.z, %bb.g ], [ %i.o, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.c ] ; 3 uses
  %.015.i = phi ptr [ %.116.i, %bb.g ], [ %i.o, %bb.c ] ; 3 uses
  %.0.i = phi i32 [ %.2.i, %bb.g ], [ 0, %bb.c ]  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  switch i8 %i.r, label %bb.g [
    i8 0, label %bb.e
    i8 58, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = tail call fastcc i32 @_plugrack_read_single_dir(ptr noundef readonly %i.h, ptr noundef %.015.i)
  %i.t = icmp eq i32 %i.s, -1
  call void @slurm_xfree(ptr noundef nonnull %i.a) #11
  br i1 %i.t, label %plugrack_read_dir.exit.thread, label %plugrack_read_dir.exit

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.q, align 1
  %i.u = tail call fastcc i32 @_plugrack_read_single_dir(ptr noundef readonly %i.h, ptr noundef %.015.i)
  %i.v = icmp eq i32 %i.u, -1
  %spec.select21.i = select i1 %i.v, i32 -1, i32 %.0.i
  %i.w = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.z = phi ptr [ %i.w, %bb.f ], [ %i.p, %bb.d ]
  %.116.i = phi ptr [ %i.y, %bb.f ], [ %.015.i, %bb.d ]
  %.2.i = phi i32 [ %spec.select21.i, %bb.f ], [ %.0.i, %bb.d ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %bb.d, !llvm.loop !11

plugrack_read_dir.exit.thread:                    ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.h

plugrack_read_dir.exit:                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not85 = icmp eq i32 %.0.i, 0
  br i1 %.not85, label %.thread, label %bb.h

bb.h:                                             ; preds = %plugrack_read_dir.exit, %plugrack_read_dir.exit.thread
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 848), align 8
  %i.ab = call ptr @slurm_strerror(i32 noundef -1) #11
  %i.ac = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.load_plugins, ptr noundef %i.aa, ptr noundef %i.ab) #11 ; 0 uses
  br label %.thread107

.thread:                                          ; preds = %plugrack_read_dir.exit, %bb.a
  %.075 = phi ptr [ %i.f, %bb.a ], [ %i.g, %plugrack_read_dir.exit ] ; 13 uses
  %.not86 = icmp eq ptr %3, null
  br i1 %.not86, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.thread
  %i.ad = call i32 @xstrcasecmp(ptr noundef %2, ptr noundef nonnull @.str.16) #11
  %.not87 = icmp eq i32 %i.ad, 0
  br i1 %.not87, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.075, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr %3, ptr %7, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.af, align 8
  %i.ai = call i32 @list_for_each(ptr noundef %i.ah, ptr noundef nonnull @_foreach_plugin, ptr noundef nonnull %7) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %.thread99

bb.k:                                             ; preds = %bb.i, %.thread
  %.not88 = icmp eq ptr %2, null
  br i1 %.not88, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.075, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store ptr @_plugrack_foreach, ptr %6, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.075, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.ak, align 8
  %i.an = call i32 @list_for_each(ptr noundef %i.am, ptr noundef nonnull @_foreach_plugin, ptr noundef nonnull %6) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.ao = load i8, ptr %2, align 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aq = call i32 @get_log_level() #11
  %i.ar = icmp sgt i32 %i.aq, 4
  br i1 %i.ar, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.load_plugins, ptr noundef %1) #11
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.as = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.18, ptr noundef %1) #11 ; 3 uses
  store ptr %i.as, ptr %i.d, align 8
  %i.at = call ptr @xstrdup(ptr noundef nonnull %2) #11 ; 2 uses
  store ptr %i.at, ptr %i.c, align 8
  %i.au = call ptr @strtok_r(ptr noundef %i.at, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b) #11 ; 2 uses
  %.not89119 = icmp eq ptr %i.au, null
  br i1 %.not89119, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.072120 = phi ptr [ %i.ay, %.lr.ph ], [ %i.au, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #12 ; 2 uses
  %i.aw = call i32 @xstrncmp(ptr noundef nonnull %.072120, ptr noundef nonnull %i.as, i64 noundef %i.av) #11
  %.not90 = icmp eq i32 %i.aw, 0
  %.071.idx = select i1 %.not90, i64 %i.av, i64 0
  %.071 = getelementptr inbounds nuw i8, ptr %.072120, i64 %.071.idx
  %i.ax = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.19, ptr noundef %1, ptr noundef nonnull %.071) #11 ; 2 uses
  store ptr %i.ax, ptr %i.e, align 8
  call void @_plugrack_foreach(ptr noundef %i.ax, ptr noundef null, ptr noundef null, ptr noundef nonnull %.075)
  call void @slurm_xfree(ptr noundef nonnull %i.e) #11
  %i.ay = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.b) #11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  %.not89 = icmp eq ptr %i.ay, null
  br i1 %.not89, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %bb.p
  call void @slurm_xfree(ptr noundef nonnull %i.c) #11
  call void @slurm_xfree(ptr noundef nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.o, %bb.n, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %.075, i64 32 ; 5 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %.not126 = icmp eq i64 %i.ba, 0
  br i1 %.not126, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %.075, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.075, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %.075, i64 24 ; 2 uses
  %.pre = load ptr, ptr %i.bb, align 8
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph123, %bb.u
  %i.be = phi i64 [ %i.ba, %.lr.ph123 ], [ %i.by, %bb.u ]
  %i.bf = phi ptr [ %.pre, %.lr.ph123 ], [ %i.bz, %bb.u ] ; 2 uses
  %.070121 = phi i64 [ 0, %.lr.ph123 ], [ %i.ca, %bb.u ] ; 6 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.070121
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %i.bc, align 8
  %i.bk = load ptr, ptr %i.bd, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.070121
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call ptr @plugrack_use_by_type(ptr noundef %i.bj, ptr noundef %i.bm)
  %i.bo = load ptr, ptr %i.bb, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.070121
  store ptr %i.bn, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.070121
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.t, label %._crit_edge129

._crit_edge129:                                   ; preds = %bb.s
  %.pre130 = load i64, ptr %i.az, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bu = load ptr, ptr %i.bd, align 8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.070121
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.load_plugins, ptr noundef %i.bw) #11 ; 0 uses
  %.pre131 = load i64, ptr %i.az, align 8
  br label %.loopexit

bb.u:                                             ; preds = %._crit_edge129, %bb.r
  %i.by = phi i64 [ %i.be, %bb.r ], [ %.pre130, %._crit_edge129 ] ; 3 uses
  %i.bz = phi ptr [ %i.bf, %bb.r ], [ %i.bq, %._crit_edge129 ]
  %i.ca = add nuw i64 %.070121, 1                 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.by
  br i1 %i.cb, label %bb.r, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %bb.u, %bb.q, %bb.t
  %i.cc = phi i64 [ %.pre131, %bb.t ], [ 0, %bb.q ], [ %i.by, %bb.u ]
  %i.cd = phi i1 [ true, %bb.t ], [ false, %bb.q ], [ false, %bb.u ] ; 2 uses
  %.177 = phi i32 [ 8002, %bb.t ], [ 0, %bb.q ], [ 0, %bb.u ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.075, i64 8 ; 3 uses
  %i.cf = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.ce, i64 noundef %i.cc, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 602, ptr noundef nonnull @__func__.load_plugins) #11 ; 0 uses
  %i.cg = load i64, ptr %i.az, align 8            ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  %or.cond = or i1 %i.cd, %i.ch
  br i1 %or.cond, label %bb.aa, label %.lr.ph125

.lr.ph125:                                        ; preds = %.loopexit
  %i.ci = getelementptr inbounds nuw i8, ptr %.075, i64 16 ; 2 uses
  %i.cj = add i64 %5, 1
  %i.ck = trunc i64 %5 to i32
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph125, %bb.z
  %i.cl = phi i64 [ %i.cg, %.lr.ph125 ], [ %i.dd, %bb.z ]
  %.0124 = phi i64 [ 0, %.lr.ph125 ], [ %i.de, %bb.z ] ; 5 uses
  %i.cm = load ptr, ptr %i.ce, align 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.0124 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8
  %.not91 = icmp eq ptr %i.co, null
  br i1 %.not91, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cp = load ptr, ptr %i.ci, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.0124
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.21) #13
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ct = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.cn, i64 noundef %i.cj, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 616, ptr noundef nonnull @__func__.load_plugins) #11 ; 0 uses
  %i.cu = load ptr, ptr %i.ci, align 8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.0124
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load ptr, ptr %i.ce, align 8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.0124
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call i32 @plugin_get_syms(ptr noundef %i.cw, i32 noundef %i.ck, ptr noundef %4, ptr noundef %i.cz) #11
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp ugt i64 %5, %i.db
  br i1 %i.dc, label %.thread107, label %._crit_edge132

._crit_edge132:                                   ; preds = %bb.y
  %.pre133 = load i64, ptr %i.az, align 8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge132, %bb.v
  %i.dd = phi i64 [ %.pre133, %._crit_edge132 ], [ %i.cl, %bb.v ] ; 2 uses
  %i.de = add nuw i64 %.0124, 1                   ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  br i1 %i.df, label %bb.v, label %.thread99, !llvm.loop !18

bb.aa:                                            ; preds = %.loopexit
  br i1 %i.cd, label %.thread107, label %.thread99

.thread99:                                        ; preds = %bb.z, %bb.j, %bb.aa
  store ptr %.075, ptr %0, align 8
  br label %bb.ab

.thread107:                                       ; preds = %bb.y, %bb.h, %bb.aa
  %.1112 = phi ptr [ %.075, %bb.aa ], [ %i.g, %bb.h ], [ %.075, %bb.y ]
  %.3111 = phi i32 [ %.177, %bb.aa ], [ -1, %bb.h ], [ 8003, %bb.y ]
  call void @unload_plugins(ptr noundef %.1112)
  br label %bb.ab

bb.ab:                                            ; preds = %.thread99, %.thread107
  %.3103 = phi i32 [ 0, %.thread99 ], [ %.3111, %.thread107 ]
  ret i32 %.3103
}

declare i32 @xstrcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_plugrack_foreach(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.e = load i64, ptr %i.a, align 8              ; 2 uses
  %i.f = icmp ugt i64 %i.e, %indvars.iv.next.i
  br i1 %i.f, label %.lr.ph.i, label %.loopexit.loopexit, !llvm.loop !19

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @xstrcasecmp(ptr noundef %0, ptr noundef %i.i) #11
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_plugin_loaded.exit, label %bb.b

_plugin_loaded.exit:                              ; preds = %.lr.ph.i
  %i.k = tail call i32 @get_log_level() #11
  %i.l = icmp sgt i32 %i.k, 4
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_plugin_loaded.exit
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__._plugrack_foreach, ptr noundef %i.p, ptr noundef %0) #11
  br label %bb.e

.loopexit.loopexit:                               ; preds = %bb.b
  %i.q = add i64 %i.e, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.r = phi i64 [ %i.q, %.loopexit.loopexit ], [ 1, %bb.a ] ; 2 uses
  store i64 %i.r, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = tail call ptr @slurm_xrecalloc(ptr noundef nonnull %i.s, i64 noundef %i.r, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 501, ptr noundef nonnull @__func__._plugrack_foreach) #11 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.a, align 8
  %i.w = tail call ptr @slurm_xrecalloc(ptr noundef nonnull %i.u, i64 noundef %i.v, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 502, ptr noundef nonnull @__func__._plugrack_foreach) #11 ; 0 uses
  %i.x = tail call ptr @xstrdup(ptr noundef %0) #11
  %i.y = load ptr, ptr %i.u, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.b
  store ptr %i.x, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.s, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.b
  store ptr %2, ptr %i.ab, align 8
  %i.ac = tail call i32 @get_log_level() #11
  %i.ad = icmp sgt i32 %i.ac, 4
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__._plugrack_foreach, ptr noundef %i.ah, ptr noundef %0, ptr noundef %1) #11
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d, %_plugin_loaded.exit, %bb.c
  ret void
}

declare ptr @xstrdup_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @slurm_xrecalloc(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #6

declare i32 @plugin_get_syms(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @unload_plugins(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %.not21 = icmp eq i64 %i.e, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.b, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.g = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.c, %.preheader ]
  %i.h = tail call i32 @plugrack_destroy(ptr noundef %i.g) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.0715 = phi i64 [ 0, %.lr.ph ], [ %i.o, %bb.c ] ; 2 uses
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0715
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = tail call i32 @list_for_each(ptr noundef %i.m, ptr noundef nonnull @_foreach_release_plugin, ptr noundef %i.l) #11 ; 0 uses
  %i.o = add nuw i64 %.0715, 1                    ; 2 uses
  %i.p = load i64, ptr %i.d, align 8
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !20

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %.not22 = icmp eq i64 %i.s, 0
  br i1 %.not22, label %._crit_edge19, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

._crit_edge19:                                    ; preds = %bb.i, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.v) #11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.w) #11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @slurm_xfree(ptr noundef nonnull %i.x) #11
  call void @slurm_xfree(ptr noundef nonnull %i.a) #11
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph18, %bb.i
  %.016 = phi i64 [ 0, %.lr.ph18 ], [ %i.ac, %bb.i ] ; 3 uses
  %i.y = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.y, null
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.016
  tail call void @slurm_xfree(ptr noundef nonnull %i.z) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not13 = icmp eq ptr %i.aa, null
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.016
  tail call void @slurm_xfree(ptr noundef nonnull %i.ab) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ac = add nuw i64 %.016, 1                    ; 2 uses
  %i.ad = load i64, ptr %i.r, align 8
  %i.ae = icmp ult i64 %i.ac, %i.ad
end_hunk_0
