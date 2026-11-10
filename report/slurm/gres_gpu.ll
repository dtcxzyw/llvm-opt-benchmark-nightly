Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/gres_gpu?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
begin_hunk_0_@gres_p_node_config_load:bb.a
  %.not27.us.i.i = icmp eq ptr %i.bj, null
  br i1 %.not27.us.i.i, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !13

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %.backedge.i.i
  %i.bk = phi ptr [ %i.bo, %.backedge.i.i ], [ %i.av, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call ptr @slurm_list_find_first(ptr noundef nonnull %i.j, ptr noundef nonnull @_find_type_in_gres_list, ptr noundef %i.bm) #9 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.bn, null
  br i1 %.not29.i.i, label %.backedge.i.i, label %bb.ad

.backedge.i.i:                                    ; preds = %bb.ad, %.lr.ph.split.i.i
  %i.bo = tail call ptr @slurm_list_next(ptr noundef %i.au) #9 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.bo, null
  br i1 %.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !13

bb.ad:                                            ; preds = %.lr.ph.split.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 0, ptr %i.bp, align 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.bl) #9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call ptr @slurm_xstrdup(ptr noundef %i.br) #9
  store ptr %i.bs, ptr %i.bl, align 8
  br label %.backedge.i.i

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %.backedge.us.i.i, %bb.y
  tail call void @slurm_list_iterator_destroy(ptr noundef %i.au) #9
  %i.bt = tail call ptr @slurm_list_iterator_create(ptr noundef nonnull %i.j) #9 ; 3 uses
  %i.bu = tail call ptr @slurm_list_next(ptr noundef %i.bt) #9 ; 2 uses
  %.not2831.i.i = icmp eq ptr %i.bu, null
  br i1 %.not2831.i.i, label %._crit_edge34.i.i, label %.lr.ph33.i.i

.lr.ph33.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph33.i.i
  %i.bv = phi ptr [ %i.bx, %.lr.ph33.i.i ], [ %i.bu, %._crit_edge.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 1, ptr %i.bw, align 8
  %i.bx = tail call ptr @slurm_list_next(ptr noundef %i.bt) #9 ; 2 uses
  %.not28.i.i = icmp eq ptr %i.bx, null
  br i1 %.not28.i.i, label %._crit_edge34.i.i, label %.lr.ph33.i.i, !llvm.loop !14

._crit_edge34.i.i:                                ; preds = %.lr.ph33.i.i, %._crit_edge.i.i
  tail call void @slurm_list_iterator_destroy(ptr noundef %i.bt) #9
  br label %_normalize_sys_gres_types.exit.i

_normalize_sys_gres_types.exit.i:                 ; preds = %._crit_edge34.i.i, %bb.x, %._crit_edge151.i
  tail call void @slurm_list_sort(ptr noundef %i.j, ptr noundef nonnull @_sort_gpu_by_file) #9
  tail call void @slurm_list_sort(ptr noundef nonnull %i.e, ptr noundef nonnull @_sort_gpu_by_file) #9
  %i.by = tail call ptr @slurm_list_iterator_create(ptr noundef %i.j) #9 ; 4 uses
  %i.bz = tail call ptr @slurm_list_iterator_create(ptr noundef nonnull %i.e) #9 ; 8 uses
  %i.ca = tail call ptr @slurm_list_next(ptr noundef %i.by) #9 ; 2 uses
  %.not114155.i = icmp eq ptr %i.ca, null
  br i1 %.not114155.i, label %._crit_edge157.i, label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %_normalize_sys_gres_types.exit.i, %.backedge.i
  %i.cb = phi ptr [ %i.du, %.backedge.i ], [ %i.ca, %_normalize_sys_gres_types.exit.i ] ; 13 uses
  tail call void @slurm_list_iterator_reset(ptr noundef %i.bz) #9
  %i.cc = tail call ptr @slurm_list_next(ptr noundef %i.bz) #9 ; 2 uses
  %.not122152.i = icmp eq ptr %i.cc, null
  br i1 %.not122152.i, label %.critedge.i, label %.lr.ph154.i

.lr.ph154.i:                                      ; preds = %.lr.ph156.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  br label %bb.ae

bb.ae:                                            ; preds = %_match_gres.exit.i, %.lr.ph154.i
  %i.cf = phi ptr [ %i.cc, %.lr.ph154.i ], [ %i.cr, %_match_gres.exit.i ] ; 13 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_match_gres.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i132.i = icmp eq ptr %i.cj, null
  br i1 %.not.i132.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call i32 @slurm_xstrcmp(ptr noundef nonnull %i.cj, ptr noundef %i.cl) #9
  %.not9.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not9.i.i, label %bb.ah, label %_match_gres.exit.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cn = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not10.i.i = icmp eq ptr %i.cn, null
  br i1 %.not10.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call i32 @slurm_xstrcmp(ptr noundef nonnull %i.cn, ptr noundef %i.cp) #9
  %.not11.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not11.i.i, label %bb.aj, label %_match_gres.exit.i

_match_gres.exit.i:                               ; preds = %bb.ai, %bb.ag, %bb.ae
  %i.cr = tail call ptr @slurm_list_next(ptr noundef %i.bz) #9 ; 2 uses
  %.not122.i = icmp eq ptr %i.cr, null
  br i1 %.not122.i, label %.critedge.i, label %bb.ae, !llvm.loop !15

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  %.not.i133.i = icmp eq ptr %i.cu, null
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %.not15.i.i = icmp eq ptr %.pre.i.i, null       ; 2 uses
  br i1 %.not.i133.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not15.i.i, label %.critedge139.i, label %.thread.i.i

bb.al:                                            ; preds = %bb.aj
  br i1 %.not15.i.i, label %bb.an, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.al, %bb.ak
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not16.i.i = icmp eq ptr %i.cw, null
  br i1 %.not16.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.thread.i.i
  %i.cx = tail call i32 @slurm_bit_equal(ptr noundef nonnull %.pre.i.i, ptr noundef nonnull %i.cw) #9
  %.not17.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not17.i.i, label %.critedge139.i, label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread.i.i, %bb.al
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not18.i.i = icmp eq ptr %i.cz, null
  br i1 %.not18.i.i, label %_validate_cpus_links.exitthread-pre-split.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %.not19.i.i = icmp eq ptr %i.db, null
  br i1 %.not19.i.i, label %_validate_cpus_links.exitthread-pre-split.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dc = tail call i32 @slurm_xstrcmp(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.db) #9
  %.not20.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not20.i.i, label %_validate_cpus_links.exitthread-pre-split.i, label %.critedge139.i

.critedge139.i:                                   ; preds = %bb.ap, %bb.am, %bb.ak
  %i.dd = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.14) #9 ; 0 uses
  %i.de = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.15) #9 ; 0 uses
  tail call void @print_gres_conf(ptr noundef nonnull %i.cb, i32 noundef 2) #9
  %i.df = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.16) #9 ; 0 uses
  tail call void @print_gres_conf(ptr noundef nonnull %i.cf, i32 noundef 2) #9
  store i64 0, ptr %i.cs, align 8
  br label %.backedge.i

_validate_cpus_links.exitthread-pre-split.i:      ; preds = %bb.ap, %bb.ao, %bb.an
  %.pr.i = load i64, ptr %i.cs, align 8
  %i.dg = icmp eq i64 %.pr.i, 0
  br i1 %i.dg, label %.backedge.i, label %bb.aq

bb.aq:                                            ; preds = %_validate_cpus_links.exitthread-pre-split.i
  %i.dh = tail call i32 @slurm_get_log_level() #9
  %i.di = icmp sgt i32 %i.dh, 4
  br i1 %i.di, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 5, ptr noundef nonnull @.str.17, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._merge_system_gres_conf) #9
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  tail call void @print_gres_conf(ptr noundef nonnull %i.cf, i32 noundef 5) #9
  %i.dj = load i32, ptr %i.cb, align 8            ; 2 uses
  %i.dk = and i32 %i.dj, 256
  %.not126.i = icmp eq i32 %i.dk, 0
  %.pre164.i = load i32, ptr %i.cf, align 8       ; 2 uses
  br i1 %.not126.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dl = and i32 %.pre164.i, -2273               ; 2 uses
  store i32 %i.dl, ptr %i.cf, align 8
  %i.dm = load i32, ptr %i.cb, align 8
  %i.dn = and i32 %i.dm, 2272
  %i.do = or disjoint i32 %i.dn, %i.dl            ; 2 uses
  store i32 %i.do, ptr %i.cf, align 8
  %.pre.i = load i32, ptr %i.cb, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dp = phi i32 [ %i.do, %bb.at ], [ %.pre164.i, %bb.as ]
  %i.dq = phi i32 [ %.pre.i, %bb.at ], [ %i.dj, %bb.as ]
  %i.dr = and i32 %i.dq, 20480
  %i.ds = or i32 %i.dr, %i.dp
  store i32 %i.ds, ptr %i.cf, align 8
  %i.dt = tail call ptr @slurm_list_remove(ptr noundef %i.bz) #9 ; 0 uses
  tail call void @slurm_list_append(ptr noundef %i.l, ptr noundef nonnull %i.cf) #9
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.ay, %bb.ax, %bb.au, %_validate_cpus_links.exitthread-pre-split.i, %.critedge139.i
  %i.du = tail call ptr @slurm_list_next(ptr noundef %i.by) #9 ; 2 uses
  %.not114.i = icmp eq ptr %i.du, null
  br i1 %.not114.i, label %._crit_edge157.i, label %.lr.ph156.i, !llvm.loop !16

.critedge.i:                                      ; preds = %_match_gres.exit.i, %.lr.ph156.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8
  %.not125.i = icmp eq ptr %i.dw, null
  br i1 %.not125.i, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %.critedge.i
  %i.dx = tail call i32 @slurm_get_log_level() #9
  %i.dy = icmp sgt i32 %i.dx, 4
  br i1 %i.dy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 5, ptr noundef nonnull @.str.18, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._merge_system_gres_conf) #9
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  tail call void @print_gres_conf(ptr noundef nonnull %i.cb, i32 noundef 5) #9
  %i.dz = tail call ptr @slurm_list_remove(ptr noundef %i.by) #9 ; 0 uses
  tail call void @slurm_list_append(ptr noundef %i.l, ptr noundef nonnull %i.cb) #9
  br label %.backedge.i

bb.ay:                                            ; preds = %.critedge.i
  %i.ea = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.19) #9 ; 0 uses
  tail call void @print_gres_conf(ptr noundef nonnull %i.cb, i32 noundef 2) #9
  br label %.backedge.i

._crit_edge157.i:                                 ; preds = %.backedge.i, %_normalize_sys_gres_types.exit.i
  tail call void @slurm_list_iterator_destroy(ptr noundef %i.by) #9
  tail call void @slurm_list_iterator_reset(ptr noundef %i.bz) #9
  %i.eb = tail call ptr @slurm_list_next(ptr noundef %i.bz) #9 ; 2 uses
  %.not115158.i = icmp eq ptr %i.eb, null
  br i1 %.not115158.i, label %._crit_edge161.i, label %.lr.ph160.i

.lr.ph160.i:                                      ; preds = %._crit_edge157.i, %bb.ba
  %i.ec = phi ptr [ %i.eg, %bb.ba ], [ %i.eb, %._crit_edge157.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph160.i
  store i64 1, ptr %i.ed, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph160.i
  %i.eg = tail call ptr @slurm_list_next(ptr noundef %i.bz) #9 ; 2 uses
  %.not115.i = icmp eq ptr %i.eg, null
  br i1 %.not115.i, label %._crit_edge161.i, label %.lr.ph160.i, !llvm.loop !17

._crit_edge161.i:                                 ; preds = %bb.ba, %._crit_edge157.i
  tail call void @slurm_list_iterator_destroy(ptr noundef %i.bz) #9
  %i.eh = tail call i32 @slurm_list_count(ptr noundef nonnull %i.e) #9
  %.not116.i = icmp eq i32 %i.eh, 0
  br i1 %.not116.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge161.i
  tail call void (ptr, ...) @warning(ptr noundef nonnull @.str.20) #9
  tail call void @print_gres_list(ptr noundef nonnull %i.e, i32 noundef 3) #9
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge161.i
  %i.ei = tail call i32 @slurm_list_flush(ptr noundef nonnull %0) #9 ; 0 uses
  %.not117.i = icmp eq ptr %i.l, null             ; 2 uses
  br i1 %.not117.i, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ej = tail call i32 @slurm_list_count(ptr noundef nonnull %i.l) #9
  %.not118.i = icmp eq i32 %i.ej, 0
  br i1 %.not118.i, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @slurm_list_sort(ptr noundef nonnull %i.l, ptr noundef nonnull @_sort_gpu_by_file) #9
  tail call void @slurm_list_sort(ptr noundef nonnull %i.l, ptr noundef nonnull @_sort_gpu_by_links_order) #9
  %i.ek = tail call i32 @slurm_get_log_level() #9
  %i.el = icmp sgt i32 %i.ek, 5
  br i1 %i.el, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef 6, ptr noundef nonnull @.str.21, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._merge_system_gres_conf) #9
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  tail call void @print_gres_list(ptr noundef nonnull %i.l, i32 noundef 6) #9
  %i.em = tail call i32 @slurm_list_transfer(ptr noundef nonnull %0, ptr noundef nonnull %i.l) #9 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bd, %bb.bc
  %.not119.i = icmp eq ptr %i.k, null             ; 2 uses
  br i1 %.not119.i, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.en = tail call i32 @slurm_list_count(ptr noundef nonnull %i.k) #9
  %.not120.i = icmp eq i32 %i.en, 0
  br i1 %.not120.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.eo = tail call i32 @slurm_list_transfer(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #9 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  br i1 %.not117.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @slurm_list_destroy(ptr noundef nonnull %i.l) #9
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %.not.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @slurm_list_destroy(ptr noundef nonnull %i.j) #9
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  br i1 %.not119.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @slurm_list_destroy(ptr noundef nonnull %i.k) #9
  br label %bb.bq

_merge_system_gres_conf.exit:                     ; preds = %bb.j
  %i.ep = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.10) #9 ; 0 uses
  tail call void @slurm_list_destroy(ptr noundef nonnull %i.e) #9
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  tail call void @slurm_list_destroy(ptr noundef nonnull %i.e) #9
  %i.eq = tail call i32 @slurm_list_is_empty(ptr noundef nonnull %0) #9
  %.not28 = icmp eq i32 %i.eq, 0
  br i1 %.not28, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_merge_system_gres_conf.exit, %bb.bq
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef %., ptr noundef nonnull @.str.5, ptr noundef nonnull @plugin_name) #9
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef %., ptr noundef nonnull @.str.6, ptr noundef nonnull @plugin_name) #9
  tail call void @print_gres_list(ptr noundef nonnull %0, i32 noundef %.) #9
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.g
  %i.er = tail call i32 @gres_node_config_load(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @gres_devices) #9
  store i32 0, ptr @node_flags, align 4
  %i.es = tail call i32 @slurm_list_for_each(ptr noundef %0, ptr noundef nonnull @gres_common_set_env_types_on_node_flags, ptr noundef nonnull @node_flags) #9 ; 0 uses
  %.not29 = icmp eq i32 %i.er, 0
  br i1 %.not29, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void (ptr, ...) @slurm_fatal(ptr noundef nonnull @.str.7, ptr noundef nonnull @plugin_name) #10
  unreachable

bb.bv:                                            ; preds = %bb.bt
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @gpu_g_get_system_gpu_list(ptr noundef) local_unnamed_addr #1

declare i32 @slurm_list_is_empty(ptr noundef) local_unnamed_addr #1

declare void @print_gres_list(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gres_node_config_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_list_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gres_common_set_env_types_on_node_flags(ptr noundef, ptr noundef) #1

; Function Attrs: noreturn
declare void @slurm_fatal(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local void @gres_p_job_set_env(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.common_gres_env_t, align 8  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.g = load i32, ptr @node_flags, align 4
  store i32 %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.j = load ptr, ptr @gres_devices, align 8
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i8 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.l, i8 0, i64 39, i1 false)
  call void @gres_common_gpu_set_env(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @gres_common_gpu_set_env(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gres_p_step_set_env(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.common_gres_env_t, align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.g = load i32, ptr @node_flags, align 4
  store i32 %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.j = load ptr, ptr @gres_devices, align 8
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i8 0, i64 40, i1 false)
  call void @gres_common_gpu_set_env(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gres_p_task_set_env(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.common_gres_env_t, align 8  ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %4, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.g = load i32, ptr @node_flags, align 4
  store i32 %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.j = load ptr, ptr @gres_devices, align 8
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i8 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 1, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 58
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.m, i8 0, i64 22, i1 false)
  store ptr %3, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 0, ptr %i.o, align 8
  call void @gres_common_gpu_set_env(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gres_p_send_stepd(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @gres_devices, align 8
  tail call void @gres_send_stepd(ptr noundef %0, ptr noundef %i.a) #9
  %i.b = load i32, ptr @node_flags, align 4
  tail call void @slurm_pack32(i32 noundef %i.b, ptr noundef %0) #9
  ret void
}

declare void @gres_send_stepd(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @slurm_pack32(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gres_p_recv_stepd(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @gres_recv_stepd(ptr noundef %0, ptr noundef nonnull @gres_devices) #9
  %i.a = tail call i32 @slurm_unpack32(ptr noundef nonnull @node_flags, ptr noundef %0) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.gres_p_recv_stepd) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @gres_recv_stepd(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_unpack32(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @gres_p_get_devices() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @gres_devices, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gres_p_prep_build_env(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.9, i32 noundef 791, ptr noundef nonnull @__func__.gres_p_prep_build_env) #9 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 %i.c, ptr %i.d, align 4
  %i.e = zext i32 %i.c to i64
  %i.f = tail call ptr @slurm_xcalloc(i64 noundef %i.e, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.9, i32 noundef 794, ptr noundef nonnull @__func__.gres_p_prep_build_env) #9
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = load i32, ptr %i.d, align 4              ; 2 uses
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %._crit_edge, label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %bb.d
  %.pr = load ptr, ptr %i.i, align 8
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.l = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.m = phi i32 [ %i.s, %.lr.ph.splitthread-pre-split ], [ %i.h, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.o, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @slurm_bit_copy(ptr noundef nonnull %i.o) #9
  %i.q = load ptr, ptr %i.g, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store ptr %i.p, ptr %i.r, align 8
  %.pre = load i32, ptr %i.d, align 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %bb.b, %bb.c
  %i.s = phi i32 [ %i.m, %.lr.ph.split ], [ %i.m, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.d, %.lr.ph, %bb.a
  ret ptr %i.a
}

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_bit_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gres_p_prep_set_env(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @node_flags, align 4
  %i.b = load ptr, ptr @gres_devices, align 8
  %i.c = tail call zeroext i1 @gres_common_prep_set_env(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.a, ptr noundef %i.b) #9 ; 0 uses
  ret void
}

declare zeroext i1 @gres_common_prep_set_env(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_list_create(ptr noundef) local_unnamed_addr #1

declare void @slurm_destroy_gres_slurmd_conf(ptr noundef) #1

declare ptr @slurm_list_iterator_create(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_list_next(ptr noundef) local_unnamed_addr #1

declare i32 @slurm_xstrcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_list_remove(ptr noundef) local_unnamed_addr #1

declare void @slurm_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @add_gres_to_list(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_hostlist_create(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_hostlist_shift(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare void @slurm_hostlist_destroy(ptr noundef) local_unnamed_addr #1

declare void @slurm_list_iterator_destroy(ptr noundef) local_unnamed_addr #1

declare void @slurm_list_sort(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @_sort_gpu_by_file(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.d, null                   ; 3 uses
  %i.h = icmp ne ptr %i.f, null                   ; 3 uses
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %_sort_string_null_last.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond3.i = or i1 %i.g, %i.h
  br i1 %or.cond3.i, label %bb.c, label %_sort_string_null_last.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = xor i1 %i.g, true
  %or.cond5.i = or i1 %i.h, %.not.i
  br i1 %or.cond5.i, label %bb.d, label %_sort_string_null_last.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @strnatcmp(ptr noundef %i.d, ptr noundef %i.f) #9
  br label %_sort_string_null_last.exit

_sort_string_null_last.exit:                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ 1, %bb.a ], [ %i.i, %bb.d ], [ -1, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0.i
}

declare void @slurm_list_iterator_reset(ptr noundef) local_unnamed_addr #1

declare void @print_gres_conf(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @slurm_list_count(ptr noundef) local_unnamed_addr #1

declare void @warning(ptr noundef, ...) local_unnamed_addr #1

declare i32 @slurm_list_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @_sort_gpu_by_links_order(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  %.not9 = icmp eq ptr %i.h, null                 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %.thread, label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %.not9, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.i = tail call i32 @gres_links_validate(ptr noundef %i.f) #9 ; 2 uses
  store i32 %i.i, ptr %i.a, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @gres_links_validate(ptr noundef %i.k) #9 ; 2 uses
  store i32 %i.l, ptr %i.b, align 4
  %i.m = icmp slt i32 %i.i, -1
  %i.n = icmp slt i32 %i.l, -1
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.o = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__._sort_gpu_by_links_order) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.p = call i32 @slurm_sort_int_list_asc(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.e
  %.0 = phi i32 [ %i.p, %bb.e ], [ 1, %bb.b ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

declare i32 @slurm_list_transfer(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_list_find_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @_find_nonnull_type_in_gres_list(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %i.b, align 1
  %.not7 = icmp eq i8 %i.c, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @_sort_gpu_by_type_name(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not19 = icmp ne ptr %i.h, null                ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %spec.select = sext i1 %.not19 to i32
  br label %_sort_string_null_last.exit

bb.c:                                             ; preds = %bb.a
  br i1 %.not19, label %bb.d, label %_sort_string_null_last.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #11
  %i.j = trunc i64 %i.i to i32
  store i32 %i.j, ptr %i.a, align 4
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #11
  %i.l = trunc i64 %i.k to i32
  store i32 %i.l, ptr %i.b, align 4
  %i.m = call i32 @slurm_sort_int_list_desc(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %_sort_string_null_last.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = call i32 @slurm_xstrcmp(ptr noundef %i.p, ptr noundef %i.q) #9 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %_sort_string_null_last.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.u, null                   ; 3 uses
  %i.y = icmp ne ptr %i.w, null                   ; 3 uses
  %or.cond.i = and i1 %i.x, %i.y
  br i1 %or.cond.i, label %_sort_string_null_last.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %or.cond3.i = or i1 %i.x, %i.y
  br i1 %or.cond3.i, label %bb.h, label %_sort_string_null_last.exit

bb.h:                                             ; preds = %bb.g
  %.not.i = xor i1 %i.x, true
  %or.cond5.i = or i1 %i.y, %.not.i
  br i1 %or.cond5.i, label %bb.i, label %_sort_string_null_last.exit

bb.i:                                             ; preds = %bb.h
  %i.z = call i32 @strnatcmp(ptr noundef %i.u, ptr noundef %i.w) #9
  br label %_sort_string_null_last.exit

_sort_string_null_last.exit:                      ; preds = %bb.b, %bb.d, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c
  %.017 = phi i32 [ %i.m, %bb.d ], [ 1, %bb.c ], [ %spec.select, %bb.b ], [ 0, %bb.h ], [ %i.r, %bb.e ], [ 1, %bb.f ], [ %i.z, %bb.i ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_find_type_in_gres_list(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @slurm_xstrcasestr(ptr noundef %1, ptr noundef %i.e) #9
  %.not7 = icmp ne ptr %i.f, null
  %. = zext i1 %.not7 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare i32 @slurm_sort_int_list_desc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @strnatcmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @slurm_xstrcasestr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_bit_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gres_links_validate(ptr noundef) local_unnamed_addr #1

declare i32 @slurm_sort_int_list_asc(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!13 = distinct !{!13, !8, !9}
!14 = distinct !{!14, !8, !9}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !8, !9}
!17 = distinct !{!17, !8, !9}
!18 = distinct !{!18, !8, !9, !19}
!19 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
