Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/collect?download=true
inline.NumInlined: 133
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_tree_view:bb.a
  %.0261431 = phi i32 [ 0, %.lr.ph434 ], [ %.7, %split_path.exit.thread ] ; 8 uses
  %.0266430 = phi i32 [ 0, %.lr.ph434 ], [ %.3269, %split_path.exit.thread ] ; 6 uses
  %.0270429 = phi ptr [ null, %.lr.ph434 ], [ %.3273, %split_path.exit.thread ] ; 8 uses
  %i.fi = load ptr, ptr %.0256432, align 8, !tbaa !126 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !123 ; 12 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !180 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 20
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !181
  %i.fo = icmp eq ptr %i.fj, null
  br i1 %i.fo, label %split_path.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %.not313, label %bb.at, label %.thread

bb.at:                                            ; preds = %bb.as
  %i.fp = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.fj, i32 noundef 124) #18
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.fr = getelementptr inbounds nuw i8, ptr %.0256432, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !127 ; 2 uses
  %.not314 = icmp eq ptr %i.fs, null
  br i1 %.not314, label %g_strdup_inline.exit348, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !126
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !123
  br label %g_strdup_inline.exit348

g_strdup_inline.exit348:                          ; preds = %bb.av, %bb.au
  %i.fv = phi ptr [ %i.fu, %bb.av ], [ @.str.12, %bb.au ]
  %i.fw = call noalias ptr @g_strdup(ptr noundef %i.fv) #16 ; 5 uses
  %i.fx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fw) #18
  %i.fy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fj) #18 ; 2 uses
  %i.fz = add i64 %i.fy, 1
  %.not315 = icmp ult i64 %i.fx, %i.fz
  br i1 %.not315, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %g_strdup_inline.exit348
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fy ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !121
  %i.gc = icmp eq i8 %i.gb, 124
  br i1 %i.gc, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i8 0, ptr %i.ga, align 1, !tbaa !121
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %g_strdup_inline.exit348
  %i.gd = call i32 @g_strcmp0(ptr noundef nonnull %i.fw, ptr noundef nonnull %i.fj) #16
  %.not316 = icmp eq i32 %i.gd, 0
  br i1 %.not316, label %.thread384, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ge = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.124, i32 noundef 5) #16
  %i.gf = call i32 @g_strcmp0(ptr noundef nonnull %i.fj, ptr noundef %i.ge) #16
  %.not317 = icmp eq i32 %i.gf, 0
  br i1 %.not317, label %.thread384, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gg = load i32, ptr %1, align 8, !tbaa !183
  %.not318 = icmp eq i32 %i.gg, 0
  br i1 %.not318, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gh = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.160, i32 noundef 5) #16
  call void (ptr, ptr, ptr, i32, ...) @gtk_tree_store_insert_with_values(ptr noundef %i.ah, ptr noundef nonnull %1, ptr noundef null, i32 noundef -1, i32 noundef 0, ptr noundef %i.gh, i32 noundef 3, ptr noundef nonnull @.str.12, i32 noundef 4, i32 noundef 1, i32 noundef 7, i32 noundef %.0261431, i32 noundef -1) #16
  %i.gi = add i32 %.0261431, 1
  br label %bb.bc

.thread384:                                       ; preds = %bb.az, %bb.ay
  call void @g_free(ptr noundef nonnull %i.fw) #16
  br label %.thread

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.1262 = phi i32 [ %.0261431, %bb.ba ], [ %i.gi, %bb.bb ] ; 2 uses
  call void (ptr, ptr, ptr, i32, ...) @gtk_tree_store_insert_with_values(ptr noundef %i.ah, ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.fj, i32 noundef 3, ptr noundef nonnull %i.fj, i32 noundef 4, i32 noundef 1, i32 noundef 6, i32 noundef %i.fl, i32 noundef 7, i32 noundef %.1262, i32 noundef -1) #16
  %i.gj = add i32 %.1262, 1
  call void @g_free(ptr noundef nonnull %i.fw) #16
  br label %split_path.exit.thread

.thread:                                          ; preds = %bb.at, %bb.as, %.thread384
  br i1 %i.ev, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %.thread
  %i.gk = load i8, ptr %i.fj, align 1, !tbaa !121
  %.not.i368 = icmp eq i8 %i.gk, 0
  br i1 %.not.i368, label %split_path.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gl = call ptr @g_strsplit(ptr noundef nonnull %i.fj, ptr noundef nonnull @.str.139, i32 noundef -1) #16 ; 4 uses
  %i.gm = call i32 @g_strv_length(ptr noundef %i.gl) #16 ; 2 uses
  %i.gn = zext i32 %i.gm to i64
  %i.go = shl nuw nsw i64 %i.gn, 3                ; 2 uses
  %i.gp = call noalias ptr @malloc(i64 noundef %i.go) #17 ; 2 uses
  %.not18.i = icmp eq i32 %i.gm, 0
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.be
  %scevgep.i = getelementptr i8, ptr %i.gl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gp, ptr align 8 %scevgep.i, i64 %i.go, i1 false), !tbaa !87
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.be
  %i.gq = load ptr, ptr %i.gl, align 8, !tbaa !87
  call void @g_free(ptr noundef %i.gq) #16
  call void @g_free(ptr noundef nonnull %i.gl) #16
  br label %split_path.exit

bb.bf:                                            ; preds = %.thread
  br i1 %i.ew, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gr = call ptr @g_strsplit(ptr noundef nonnull %i.fj, ptr noundef nonnull @.str.141, i32 noundef -1) #16
  br label %split_path.exit

bb.bh:                                            ; preds = %bb.bf
  br i1 %narrow.i369, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gs = call ptr @g_strsplit_set(ptr noundef nonnull %i.fj, ptr noundef nonnull @.str.142, i32 noundef 4) #16
  br label %split_path.exit

bb.bj:                                            ; preds = %bb.bh
  %i.gt = call ptr @g_strsplit(ptr noundef nonnull %i.fj, ptr noundef nonnull @.str.143, i32 noundef -1) #16
  br label %split_path.exit

split_path.exit:                                  ; preds = %._crit_edge.i, %bb.bg, %bb.bj, %bb.bi
  %.0253 = phi ptr [ %i.gt, %bb.bj ], [ %i.gr, %bb.bg ], [ %i.gs, %bb.bi ], [ %i.gp, %._crit_edge.i ] ; 7 uses
  %.not321 = icmp eq ptr %.0253, null
  br i1 %.not321, label %split_path.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %split_path.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !129
  %i.gu = load ptr, ptr %.0253, align 8, !tbaa !87 ; 2 uses
  %.not4.i = icmp eq ptr %i.gu, null
  br i1 %.not4.i, label %string_array_length.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bk, %.lr.ph.i
  %.06.i = phi i32 [ %i.gv, %.lr.ph.i ], [ 0, %bb.bk ]
  %.035.i = phi ptr [ %i.gw, %.lr.ph.i ], [ %.0253, %bb.bk ]
  %i.gv = add nuw nsw i32 %.06.i, 1               ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.035.i, i64 8 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !87
  %.not.i370 = icmp eq ptr %i.gx, null
  br i1 %.not.i370, label %string_array_length.exit.thread, label %.lr.ph.i

string_array_length.exit:                         ; preds = %bb.bk
  %.not322 = icmp eq ptr %.0270429, null
  br i1 %.not322, label %.loopexit, label %.critedge

string_array_length.exit.thread:                  ; preds = %.lr.ph.i
  %.not322474 = icmp eq ptr %.0270429, null
  br i1 %.not322474, label %.loopexit, label %.lr.ph404

.lr.ph404:                                        ; preds = %string_array_length.exit.thread, %bb.bm
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bm ], [ 0, %string_array_length.exit.thread ] ; 4 uses
  %i.gy = phi ptr [ %i.hd, %bb.bm ], [ %i.gu, %string_array_length.exit.thread ]
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.0270429, i64 %indvars.iv
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !87 ; 2 uses
  %.not324 = icmp eq ptr %i.ha, null
  br i1 %.not324, label %.critedge.loopexit, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph404
  %i.hb = call i32 @g_strcmp0(ptr noundef nonnull %i.gy, ptr noundef nonnull %i.ha) #16
  %.not325 = icmp eq i32 %i.hb, 0
  br i1 %.not325, label %bb.bm, label %.critedge.loopexit

bb.bm:                                            ; preds = %bb.bl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.0253, i64 %indvars.iv.next
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !87 ; 2 uses
  %.not323 = icmp eq ptr %i.hd, null
  br i1 %.not323, label %.critedge.loopexit, label %.lr.ph404

.critedge.loopexit:                               ; preds = %.lr.ph404, %bb.bm, %bb.bl
  %.0251.lcssa.ph.in = phi i64 [ %indvars.iv, %bb.bl ], [ %indvars.iv.next, %bb.bm ], [ %indvars.iv, %.lr.ph404 ]
  %.0251.lcssa.ph = trunc i64 %.0251.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %string_array_length.exit, %.critedge.loopexit
  %.0.lcssa.i475484 = phi i32 [ %i.gv, %.critedge.loopexit ], [ 0, %string_array_length.exit ] ; 2 uses
  %.0251.lcssa = phi i32 [ %.0251.lcssa.ph, %.critedge.loopexit ], [ 0, %string_array_length.exit ] ; 4 uses
  %i.he = icmp slt i32 %.0251.lcssa, %.0266430
  br i1 %i.he, label %.lr.ph411, label %.loopexit

.lr.ph411:                                        ; preds = %.critedge, %.lr.ph411
  %.0250410 = phi i32 [ %i.hg, %.lr.ph411 ], [ %.0251.lcssa, %.critedge ]
  %i.hf = call i32 @gtk_tree_model_iter_parent(ptr noundef %i.ah, ptr noundef nonnull %4, ptr noundef nonnull %3) #16 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !129
  %i.hg = add nsw i32 %.0250410, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.hg, %.0266430
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph411

.loopexit:                                        ; preds = %.lr.ph411, %string_array_length.exit.thread, %.critedge, %string_array_length.exit
  %.not322478 = phi i1 [ true, %string_array_length.exit ], [ false, %.critedge ], [ true, %string_array_length.exit.thread ], [ false, %.lr.ph411 ]
  %.0.lcssa.i476 = phi i32 [ 0, %string_array_length.exit ], [ %.0.lcssa.i475484, %.critedge ], [ %i.gv, %string_array_length.exit.thread ], [ %.0.lcssa.i475484, %.lr.ph411 ]
  %.1252 = phi i32 [ 0, %string_array_length.exit ], [ %.0251.lcssa, %.critedge ], [ 0, %string_array_length.exit.thread ], [ %.0251.lcssa, %.lr.ph411 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store ptr null, ptr %i.e, align 8, !tbaa !87
  br i1 %i.ev, label %g_strdup_inline.exit343, label %bb.bn

g_strdup_inline.exit343:                          ; preds = %.loopexit
  %i.hh = call noalias dereferenceable_or_null(2) ptr @g_malloc(i64 noundef 2) #17 ; 2 uses
  store i16 47, ptr %i.hh, align 1
  store ptr %i.hh, ptr %i.e, align 8, !tbaa !87
  br label %bb.bn

bb.bn:                                            ; preds = %g_strdup_inline.exit343, %.loopexit
  %.not437 = icmp eq i32 %.1252, 0
  br i1 %.not437, label %._crit_edge415, label %.lr.ph414.preheader

.lr.ph414.preheader:                              ; preds = %bb.bn
  %wide.trip.count = zext i32 %.1252 to i64       ; 2 uses
  br label %.lr.ph414

._crit_edge415:                                   ; preds = %.lr.ph414, %bb.bn
  %.pre-phi453 = phi i64 [ 0, %bb.bn ], [ %wide.trip.count, %.lr.ph414 ]
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.0253, i64 %.pre-phi453 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !87
  %.not326420 = icmp eq ptr %i.hj, null
  br i1 %.not326420, label %._crit_edge426, label %.lr.ph425

.lr.ph425:                                        ; preds = %._crit_edge415
  %.not331 = icmp eq i32 %i.fn, 0
  br label %bb.bo

.lr.ph414:                                        ; preds = %.lr.ph414.preheader, %.lr.ph414
  %indvars.iv443 = phi i64 [ 0, %.lr.ph414.preheader ], [ %indvars.iv.next444, %.lr.ph414 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.0253, i64 %indvars.iv443
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !87
  call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef nonnull %i.e, ptr noundef nonnull %.0257, ptr noundef %i.hl) #16
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next444, %wide.trip.count
  br i1 %exitcond447.not, label %._crit_edge415, label %.lr.ph414

._crit_edge426:                                   ; preds = %bb.bt, %._crit_edge415
  %.4.lcssa = phi i32 [ %.0261431, %._crit_edge415 ], [ %i.ib, %bb.bt ]
  %i.hm = load ptr, ptr %i.e, align 8, !tbaa !87
  call void @g_free(ptr noundef %i.hm) #16
  br i1 %.not322478, label %bb.bv, label %bb.bu

bb.bo:                                            ; preds = %.lr.ph425, %bb.bt
  %.0248423 = phi ptr [ %i.hi, %.lr.ph425 ], [ %i.hx, %bb.bt ] ; 4 uses
  %.2422 = phi i32 [ %.1252, %.lr.ph425 ], [ %i.ih, %bb.bt ] ; 2 uses
  %.4421 = phi i32 [ %.0261431, %.lr.ph425 ], [ %i.ib, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.hn = load ptr, ptr %.0248423, align 8, !tbaa !87
  call void (ptr, ptr, ...) @dt_util_str_cat(ptr noundef nonnull %i.e, ptr noundef nonnull %.0257, ptr noundef %i.hn) #16
  br i1 %narrow.i372, label %bb.bp, label %._crit_edge448

._crit_edge448:                                   ; preds = %bb.bo
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !87
  br label %g_strdup_inline.exit341

bb.bp:                                            ; preds = %bb.bo
  %i.ho = getelementptr inbounds nuw i8, ptr %.0248423, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !87
  %.not328 = icmp eq ptr %i.hp, null
  %.pre449 = load ptr, ptr %i.e, align 8, !tbaa !87 ; 3 uses
  br i1 %.not328, label %bb.bq, label %g_strdup_inline.exit341

bb.bq:                                            ; preds = %bb.bp
  %i.hq = getelementptr inbounds nuw i8, ptr %.pre449, i64 10
  store i8 32, ptr %i.hq, align 1, !tbaa !121
  br label %g_strdup_inline.exit341

g_strdup_inline.exit341:                          ; preds = %bb.bp, %bb.bq, %._crit_edge448
  %i.hr = phi ptr [ %.pre, %._crit_edge448 ], [ %.pre449, %bb.bq ], [ %.pre449, %bb.bp ]
  %i.hs = call noalias ptr @g_strdup(ptr noundef %i.hr) #16 ; 4 uses
  %i.ht = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hs) #18
  %i.hu = getelementptr i8, ptr %i.hs, i64 %i.ht
  %i.hv = getelementptr i8, ptr %i.hu, i64 -1
  store i8 0, ptr %i.hv, align 1, !tbaa !121
  %.not329 = icmp eq i32 %.2422, 0
  %. = select i1 %.not329, ptr null, ptr %4
  %i.hw = load ptr, ptr %.0248423, align 8, !tbaa !87
  %i.hx = getelementptr inbounds nuw i8, ptr %.0248423, i64 8 ; 4 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !87
  %.not330 = icmp eq ptr %i.hy, null              ; 2 uses
  %i.hz = select i1 %.not330, i32 %i.fl, i32 0
  %narrow = select i1 %.not330, i1 %.not331, i1 false
  %i.ia = zext i1 %narrow to i32
  call void (ptr, ptr, ptr, i32, ...) @gtk_tree_store_insert_with_values(ptr noundef %i.ah, ptr noundef nonnull %5, ptr noundef %., i32 noundef 0, i32 noundef 0, ptr noundef %i.hw, i32 noundef 3, ptr noundef nonnull %i.hs, i32 noundef 4, i32 noundef 1, i32 noundef 6, i32 noundef %i.hz, i32 noundef 7, i32 noundef %.4421, i32 noundef 5, i32 noundef %i.ia, i32 noundef -1) #16
  %i.ib = add i32 %.4421, 1                       ; 2 uses
  br i1 %brmerge, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %g_strdup_inline.exit341
  %i.ic = load ptr, ptr %i.hx, align 8, !tbaa !87
  %.not333 = icmp eq ptr %i.ic, null
  br i1 %.not333, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !129
  %i.id = call i32 @gtk_tree_model_iter_parent(ptr noundef %i.ah, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %.not334416 = icmp eq i32 %i.id, 0
  br i1 %.not334416, label %._crit_edge419, label %.lr.ph418

.lr.ph418:                                        ; preds = %bb.bs, %.lr.ph418
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %i.ah, ptr noundef nonnull %6, i32 noundef 6, ptr noundef nonnull %i.f, i32 noundef -1) #16
  %i.ie = load i32, ptr %i.f, align 4, !tbaa !13
  %i.if = add i32 %i.ie, %i.fl
  call void (ptr, ptr, ...) @gtk_tree_store_set(ptr noundef %i.ah, ptr noundef nonnull %6, i32 noundef 6, i32 noundef %i.if, i32 noundef -1) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !129
  %i.ig = call i32 @gtk_tree_model_iter_parent(ptr noundef %i.ah, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %.not334 = icmp eq i32 %i.ig, 0
  br i1 %.not334, label %._crit_edge419, label %.lr.ph418

._crit_edge419:                                   ; preds = %.lr.ph418, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %bb.bt

bb.bt:                                            ; preds = %g_strdup_inline.exit341, %._crit_edge419, %bb.br
  %i.ih = add nuw nsw i32 %.2422, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !129
  call void @g_free(ptr noundef nonnull %i.hs) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ii = load ptr, ptr %i.hx, align 8, !tbaa !87
  %.not326 = icmp eq ptr %i.ii, null
  br i1 %.not326, label %._crit_edge426, label %bb.bo

bb.bu:                                            ; preds = %._crit_edge426
  call void @g_strfreev(ptr noundef nonnull %.0270429) #16
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %._crit_edge426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %split_path.exit.thread

split_path.exit.thread:                           ; preds = %bb.bd, %bb.bc, %bb.bv, %split_path.exit, %bb.ar
  %.3273 = phi ptr [ %.0270429, %bb.ar ], [ %.0270429, %bb.bc ], [ %.0253, %bb.bv ], [ %.0270429, %split_path.exit ], [ %.0270429, %bb.bd ] ; 2 uses
  %.3269 = phi i32 [ %.0266430, %bb.ar ], [ %.0266430, %bb.bc ], [ %.0.lcssa.i476, %bb.bv ], [ %.0266430, %split_path.exit ], [ %.0266430, %bb.bd ]
  %.7 = phi i32 [ %.0261431, %bb.ar ], [ %i.gj, %bb.bc ], [ %.4.lcssa, %bb.bv ], [ %.0261431, %split_path.exit ], [ %.0261431, %bb.bd ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.0256432, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !127 ; 2 uses
  %.not296 = icmp eq ptr %i.ik, null
  br i1 %.not296, label %._crit_edge435, label %bb.ar

bb.bw:                                            ; preds = %._crit_edge435, %bb.b
  %i.il = getelementptr inbounds nuw i8, ptr %i.k, i64 1128 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !77
  %i.in = call ptr @gtk_tree_view_get_selection(ptr noundef %i.im) #16
  call void @gtk_tree_selection_unselect_all(ptr noundef %i.in) #16
  %i.io = load ptr, ptr %i.il, align 8, !tbaa !77
  call void @gtk_tree_view_collapse_all(ptr noundef %i.io) #16
  %i.ip = add i32 %i.p, -10
  %i.iq = icmp ult i32 %i.ip, 6
  br i1 %i.iq, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.ir = load ptr, ptr %i.y, align 8, !tbaa !84
  %i.is = call ptr @gtk_entry_get_text(ptr noundef %i.ir) #16
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @dt_collection_split_operator_datetime(ptr noundef %i.is, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.iu) #16
  %i.iv = load ptr, ptr %i.g, align 8, !tbaa !87  ; 4 uses
  %.not298 = icmp eq ptr %i.iv, null
  br i1 %.not298, label %.thread388, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iv) #18
  %i.ix = getelementptr i8, ptr %i.iv, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 -1     ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !121
  %i.ja = icmp eq i8 %i.iz, 37
  br i1 %i.ja, label %bb.bz, label %.thread485

bb.bz:                                            ; preds = %bb.by
  store i8 0, ptr %i.iy, align 1, !tbaa !121
  %.pr.pre = load ptr, ptr %i.g, align 8, !tbaa !87 ; 2 uses
  %.not299 = icmp eq ptr %.pr.pre, null
  br i1 %.not299, label %.thread388, label %.thread485

.thread485:                                       ; preds = %bb.by, %bb.bz
  %.pr488 = phi ptr [ %.pr.pre, %bb.bz ], [ %i.iv, %bb.by ]
  %i.jb = call i64 @dt_datetime_exif_to_gtimespan(ptr noundef nonnull %.pr488) #16
  br label %.thread388

.thread388:                                       ; preds = %bb.bx, %bb.bz, %.thread485
  %i.jc = phi i64 [ %i.jb, %.thread485 ], [ 0, %bb.bz ], [ 0, %bb.bx ]
  store i64 %i.jc, ptr %i.it, align 8, !tbaa !130
  %i.jd = load ptr, ptr %i.h, align 8, !tbaa !87  ; 2 uses
  %.not300 = icmp eq ptr %i.jd, null
  br i1 %.not300, label %.thread390, label %bb.ca

bb.ca:                                            ; preds = %.thread388
  %i.je = call i64 @dt_datetime_exif_to_gtimespan(ptr noundef nonnull %i.jd) #16
  br label %.thread390

.thread390:                                       ; preds = %bb.ca, %.thread388
  %i.jf = phi i64 [ %i.je, %bb.ca ], [ 0, %.thread388 ]
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.jf, ptr %i.jg, align 8, !tbaa !131
  %i.jh = load ptr, ptr %i.g, align 8, !tbaa !87
  call void @g_free(ptr noundef %i.jh) #16
  %i.ji = load ptr, ptr %i.h, align 8, !tbaa !87
  call void @g_free(ptr noundef %i.ji) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  br label %.critedge336

bb.cb:                                            ; preds = %bb.bw
  %i.jj = icmp eq i32 %i.q, 17
  br i1 %i.jj, label %bb.cc, label %.critedge336

bb.cc:                                            ; preds = %bb.cb
  %i.jk = call i32 @dt_conf_is_equal(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.144) #16
  %i.jl = icmp ne i32 %i.jk, 0                    ; 2 uses
  %i.jm = zext i1 %i.jl to i32
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 60
end_hunk_0
