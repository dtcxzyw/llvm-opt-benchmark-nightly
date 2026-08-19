inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0_@gres_c_s_init_share_devices:bb.a
.lr.ph.i.i:                                       ; preds = %bb.ay
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.fn = sext i32 %i.fk to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.fn, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.az ] ; 2 uses
  %i.fo = phi ptr [ %i.fl, %.lr.ph.i.i ], [ %i.fu, %bb.az ] ; 2 uses
  %.01417.i.i = phi i64 [ %i.fj, %.lr.ph.i.i ], [ %i.ft, %bb.az ] ; 2 uses
  %i.fp = load ptr, ptr %i.fm, align 8
  %i.fq = tail call fastcc ptr @_create_shared_rec(ptr noundef %i.fo, ptr noundef %i.fp, ptr noundef nonnull readonly %i.ff) ; 2 uses
  %i.fr = udiv i64 %.01417.i.i, %indvars.iv.i.i   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 %i.fr, ptr %i.fs, align 8
  %i.ft = sub i64 %.01417.i.i, %i.fr
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  tail call void @slurm_list_append(ptr noundef %0, ptr noundef %i.fq) #7
  tail call void @slurm_list_append(ptr noundef %0, ptr noundef nonnull %i.fo) #7
  %i.fu = tail call ptr @slurm_list_pop(ptr noundef %.044.i64) #7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i, label %_distribute_count.exit.i, label %bb.az, !llvm.loop !14

_distribute_count.exit.i:                         ; preds = %bb.az, %bb.ay
  %i.fv = tail call i32 @slurm_list_flush(ptr noundef %.070.i) #7 ; 0 uses
  br label %_merge_lists.exit

bb.ba:                                            ; preds = %bb.ax, %bb.aw
  %i.fw = tail call ptr @slurm_list_pop(ptr noundef %.044.i64) #7 ; 2 uses
  %.not4854.i = icmp eq ptr %i.fw, null
  br i1 %.not4854.i, label %._crit_edge.i57, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %bb.ba, %bb.bl
  %i.fx = phi ptr [ %i.ha, %bb.bl ], [ %i.fw, %bb.ba ] ; 8 uses
  %i.fy = tail call ptr @slurm_list_remove_first(ptr noundef %.070.i, ptr noundef nonnull @_find_matching_file_gres, ptr noundef nonnull %i.fx) #7 ; 9 uses
  %.not49.i = icmp eq ptr %i.fy, null
  br i1 %.not49.i, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i52
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 64 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %.not50.i53 = icmp eq ptr %i.ga, null
  br i1 %.not50.i53, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gb = load i32, ptr %i.fy, align 8
  %i.gc = or i32 %i.gb, 4
  store i32 %i.gc, ptr %i.fy, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8
  %.not51.i54 = icmp eq ptr %i.ge, null
  br i1 %.not51.i54, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.gf) #7
  %i.gg = load ptr, ptr %i.gd, align 8
  %i.gh = tail call ptr @slurm_xstrdup(ptr noundef %i.gg) #7
  store ptr %i.gh, ptr %i.gf, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8
  %.not52.i55 = icmp eq ptr %i.gj, null
  br i1 %.not52.i55, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gl = load i32, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i32 %i.gl, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 32 ; 4 uses
  %i.go = load ptr, ptr %i.gn, align 8
  %.not53.i56 = icmp eq ptr %i.go, null
  br i1 %.not53.i56, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @slurm_bit_free(ptr noundef nonnull %i.gn) #7
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store ptr null, ptr %i.gn, align 8
  %i.gp = load ptr, ptr %i.gi, align 8
  %i.gq = tail call ptr @slurm_bit_copy(ptr noundef %i.gp) #7
  store ptr %i.gq, ptr %i.gn, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fy, i64 64 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.gr) #7
  %i.gs = load ptr, ptr %i.fz, align 8
  %i.gt = tail call ptr @slurm_xstrdup(ptr noundef %i.gs) #7
  store ptr %i.gt, ptr %i.gr, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fy, i64 72 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.gu) #7
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = tail call ptr @slurm_xstrdup(ptr noundef %i.gw) #7
  store ptr %i.gx, ptr %i.gu, align 8
  br label %bb.bl

bb.bk:                                            ; preds = %.lr.ph.i52
  %i.gy = tail call fastcc ptr @_create_shared_rec(ptr noundef %i.fx, ptr noundef %i.ez, ptr noundef null) ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store i64 0, ptr %i.gz, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.sink.i = phi ptr [ %i.gy, %bb.bk ], [ %i.fy, %bb.bj ]
  tail call void @slurm_list_append(ptr noundef %0, ptr noundef nonnull %.sink.i) #7
  tail call void @slurm_list_append(ptr noundef %0, ptr noundef nonnull %i.fx) #7
  %i.ha = tail call ptr @slurm_list_pop(ptr noundef %.044.i64) #7 ; 2 uses
  %.not48.i = icmp eq ptr %i.ha, null
  br i1 %.not48.i, label %._crit_edge.i57, label %.lr.ph.i52, !llvm.loop !15

._crit_edge.i57:                                  ; preds = %bb.bl, %bb.ba
  %i.hb = tail call i32 @slurm_list_delete_all(ptr noundef %.070.i, ptr noundef nonnull @_delete_leftovers, ptr noundef null) #7 ; 0 uses
  br label %_merge_lists.exit

_merge_lists.exit:                                ; preds = %bb.av, %_distribute_count.exit.i, %._crit_edge.i57
  %.not45 = phi i1 [ true, %._crit_edge.i57 ], [ true, %_distribute_count.exit.i ], [ false, %bb.av ]
  %.not43 = icmp eq ptr %.044.i64, null
  br i1 %.not43, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_merge_lists.exit
  tail call void @slurm_list_destroy(ptr noundef nonnull %.044.i64) #7
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_merge_lists.exit
  %.not44 = icmp eq ptr %.070.i, null
  br i1 %.not44, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @slurm_list_destroy(ptr noundef nonnull %.070.i) #7
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  br i1 %.not45, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void (ptr, ...) @slurm_fatal(ptr noundef nonnull @.str.2) #8
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.hc = tail call i32 @gres_node_config_load(ptr noundef %0, ptr noundef %2, ptr noundef %1) #7
  %.not46 = icmp eq i32 %i.hc, 0
  br i1 %.not46, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void (ptr, ...) @slurm_fatal(ptr noundef nonnull @.str.3) #8
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.hd = load ptr, ptr @shared_info, align 8     ; 2 uses
  %.not.i58 = icmp eq ptr %i.hd, null
  br i1 %.not.i58, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @slurm_list_destroy(ptr noundef nonnull %i.hd) #7
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  store ptr null, ptr @shared_info, align 8
  %i.he = tail call ptr @slurm_list_create(ptr noundef nonnull @slurm_xfree_ptr) #7
  store ptr %i.he, ptr @shared_info, align 8
  %i.hf = tail call ptr @slurm_list_iterator_create(ptr noundef %0) #7 ; 2 uses
  br label %.outer.i59

.outer.i59:                                       ; preds = %_compute_local_id.exit.i, %bb.bv
  %.0.ph.i60 = phi i64 [ %i.id, %_compute_local_id.exit.i ], [ 0, %bb.bv ] ; 2 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bx, %.outer.i59
  %i.hg = tail call ptr @slurm_list_next(ptr noundef %i.hf) #7 ; 4 uses
  %.not13.i = icmp eq ptr %i.hg, null
  br i1 %.not13.i, label %_build_shared_dev_info.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hh = load i32, ptr %i.hg, align 8
  %i.hi = tail call zeroext i1 @gres_id_shared(i32 noundef %i.hh) #7
  br i1 %i.hi, label %bb.by, label %bb.bw, !llvm.loop !16

bb.by:                                            ; preds = %bb.bx
  %i.hj = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.6, i32 noundef 240, ptr noundef nonnull @__func__._build_shared_dev_info) #7 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8
  store i64 %i.hl, ptr %i.hj, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8            ; 3 uses
  %.not.i.i61 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i61, label %_compute_local_id.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ho = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.hn) #9
  %i.hp = trunc i64 %i.ho to i32
  %.01620.i.i = add i32 %i.hp, -1                 ; 2 uses
  %i.hq = icmp sgt i32 %.01620.i.i, -1
  br i1 %i.hq, label %.lr.ph.i.i62, label %_compute_local_id.exit.i

.lr.ph.i.i62:                                     ; preds = %bb.bz, %bb.ca
  %.01623.i.i = phi i32 [ %.016.i.i, %bb.ca ], [ %.01620.i.i, %bb.bz ] ; 3 uses
  %.022.i.i = phi i32 [ %i.hy, %bb.ca ], [ 1, %bb.bz ] ; 2 uses
  %.01521.i.i = phi i32 [ %i.hx, %bb.ca ], [ -1, %bb.bz ] ; 3 uses
  %5 = zext nneg i32 %.01623.i.i to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 %5
  %i.hs = load i8, ptr %i.hr, align 1             ; 2 uses
  %i.ht = add i8 %i.hs, -58
  %or.cond.i.i = icmp ult i8 %i.ht, -10
  br i1 %or.cond.i.i, label %_compute_local_id.exit.i, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.i.i62
  %i.hu = icmp eq i32 %.01521.i.i, -1
  %spec.store.select.i.i = select i1 %i.hu, i32 0, i32 %.01521.i.i
  %narrow.i.i = add nsw i8 %i.hs, -48
  %i.hv = zext nneg i8 %narrow.i.i to i32
  %i.hw = mul nuw nsw i32 %.022.i.i, %i.hv
  %i.hx = add nsw i32 %i.hw, %spec.store.select.i.i ; 2 uses
  %i.hy = mul nuw nsw i32 %.022.i.i, 10
  %.016.i.i = add nsw i32 %.01623.i.i, -1
  %i.hz = icmp sgt i32 %.01623.i.i, 0
  br i1 %i.hz, label %.lr.ph.i.i62, label %_compute_local_id.exit.i, !llvm.loop !17

_compute_local_id.exit.i:                         ; preds = %bb.ca, %.lr.ph.i.i62, %bb.bz, %bb.by
  %.017.i.i = phi i32 [ -1, %bb.by ], [ -1, %bb.bz ], [ %.01521.i.i, %.lr.ph.i.i62 ], [ %i.hx, %bb.ca ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i32 %.017.i.i, ptr %i.ia, align 8
  %i.ib = load ptr, ptr @shared_info, align 8
  tail call void @slurm_list_append(ptr noundef %i.ib, ptr noundef nonnull %i.hj) #7
  %i.ic = load i64, ptr %i.hk, align 8
  %i.id = add i64 %i.ic, %.0.ph.i60
  br label %.outer.i59, !llvm.loop !16

_build_shared_dev_info.exit:                      ; preds = %bb.bw
  tail call void @slurm_list_iterator_destroy(ptr noundef %i.hf) #7
  %i.ie = icmp eq i64 %.0.ph.i60, 0
  %i.if = icmp ne ptr %0, null
  %or.cond = and i1 %i.if, %i.ie
  br i1 %or.cond, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_build_shared_dev_info.exit
  %i.ig = load ptr, ptr %i.ey, align 8
  %i.ih = tail call i32 @slurm_list_delete_all(ptr noundef nonnull %0, ptr noundef nonnull @_remove_shared_recs, ptr noundef %i.ig) #7 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_build_shared_dev_info.exit
  tail call void (i32, ptr, ...) @slurm_log_var(i32 noundef %., ptr noundef nonnull @.str.4) #7
  tail call void @print_gres_list(ptr noundef %0, i32 noundef %.) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ii = tail call ptr @slurm_get_extra_conf_path(ptr noundef nonnull @.str.15) #7 ; 2 uses
  store ptr %i.ii, ptr %i.a, align 8
  %i.ij = call i32 @stat(ptr noundef %i.ii, ptr noundef nonnull %4) #7
  %i.ik = icmp sgt i32 %i.ij, -1
  call void @slurm_xfree(ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br i1 %i.ik, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.il = call i32 @slurm_get_log_level() #7
  %i.im = icmp sgt i32 %i.il, 2
  br i1 %i.im, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.gres_c_s_init_share_devices) #7
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  call void @print_gres_list_parsable(ptr noundef %0) #7
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cc
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @slurm_get_log_level() local_unnamed_addr #1

declare void @slurm_log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @print_gres_list(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @slurm_fatal(ptr noundef, ...) local_unnamed_addr #3

declare i32 @gres_node_config_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_list_delete_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_remove_shared_recs(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @slurm_xstrcmp(ptr noundef %i.b, ptr noundef %1) #7
  %.not = icmp eq i32 %i.c, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

declare void @print_gres_list_parsable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local void @gres_c_s_send_stepd(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @shared_info, align 8      ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @slurm_pack32(i32 noundef 0, ptr noundef %0) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @slurm_list_count(ptr noundef nonnull %i.a) #7
  tail call void @slurm_pack32(i32 noundef %i.b, ptr noundef %0) #7
  %i.c = load ptr, ptr @shared_info, align 8
  %i.d = tail call ptr @slurm_list_iterator_create(ptr noundef %i.c) #7 ; 3 uses
  %i.e = tail call ptr @slurm_list_next(ptr noundef %i.d) #7 ; 2 uses
  %.not1011 = icmp eq ptr %i.e, null
  br i1 %.not1011, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.c ] ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  tail call void @slurm_pack64(i64 noundef %i.g, ptr noundef %0) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = sext i32 %i.i to i64
  tail call void @slurm_pack64(i64 noundef %i.j, ptr noundef %0) #7
  %i.k = tail call ptr @slurm_list_next(ptr noundef %i.d) #7 ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  tail call void @slurm_list_iterator_destroy(ptr noundef %i.d) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

declare void @slurm_pack32(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_list_count(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_list_iterator_create(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_list_next(ptr noundef) local_unnamed_addr #1

declare void @slurm_pack64(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @slurm_list_iterator_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @gres_c_s_recv_stepd(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = call i32 @slurm_unpack32(ptr noundef nonnull %i.c, ptr noundef %0) #7
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.c, align 4
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @shared_info, align 8      ; 2 uses
  %.not8 = icmp eq ptr %i.f, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @slurm_list_destroy(ptr noundef nonnull %i.f) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr @shared_info, align 8
  %i.g = call ptr @slurm_list_create(ptr noundef nonnull @slurm_xfree_ptr) #7
  store ptr %i.g, ptr @shared_info, align 8
  %i.h = load i32, ptr %i.c, align 4
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.012 = phi i32 [ %i.q, %bb.g ], [ 0, %bb.e ]
  %i.i = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.6, i32 noundef 558, ptr noundef nonnull @__func__.gres_c_s_recv_stepd) #7 ; 4 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.j = call i32 @slurm_unpack64(ptr noundef nonnull %i.b, ptr noundef %0) #7
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.f, label %.thread

bb.f:                                             ; preds = %.lr.ph
  %i.k = load i64, ptr %i.b, align 8
  store i64 %i.k, ptr %i.i, align 8
  %i.l = call i32 @slurm_unpack64(ptr noundef nonnull %i.b, ptr noundef %0) #7
  %.not10 = icmp eq i32 %i.l, 0
  br i1 %.not10, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.m = load i64, ptr %i.b, align 8
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr @shared_info, align 8
  call void @slurm_list_append(ptr noundef %i.p, ptr noundef nonnull %i.i) #7
  %i.q = add nuw i32 %.012, 1                     ; 2 uses
  %i.r = load i32, ptr %i.c, align 4
  %i.s = icmp ult i32 %i.q, %i.r
end_hunk_0
