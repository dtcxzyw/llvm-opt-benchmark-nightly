Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/fetch_config?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@get_log_level

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @find_conf_by_name(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @xstrcmp(ptr noundef %i.b, ptr noundef %1) #13
  %.not = icmp eq i32 %i.c, 0
  %i.d = zext i1 %.not to i32
  ret i32 %i.d
}

declare i32 @xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @write_one_config(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = load i8, ptr %0, align 8, !range !10, !noundef !11
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !range !10, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.37, ptr noundef %1, ptr noundef %i.d) #13
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.38, ptr noundef %1, ptr noundef %i.d) #13
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = call i32 @unlink(ptr noundef %i.k) #13   ; 0 uses
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.m = trunc nuw i8 %i.j to i1
  %i.n = select i1 %i.m, i32 493, i32 420
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = call i32 (ptr, i32, ...) @open(ptr noundef %i.o, i32 noundef 524865, i32 noundef %i.n) #13 ; 7 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__._write_conf, ptr noundef %i.r) #13 ; 0 uses
  br label %.thread.i

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %.loopexit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.f) #15 ; 2 uses
  %.not3752.i = icmp eq i64 %i.t, 0
  br i1 %.not3752.i, label %.loopexit.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.f, %.lr.ph.split.i.backedge
  %.028.ph55.i = phi ptr [ %i.af, %.lr.ph.split.i.backedge ], [ %i.f, %bb.f ] ; 3 uses
  %.029.ph53.i = phi i64 [ %i.ag, %.lr.ph.split.i.backedge ], [ %i.t, %bb.f ] ; 4 uses
  %i.u = call i64 @write(i32 noundef %i.p, ptr noundef %.028.ph55.i, i64 noundef %.029.ph53.i) #13 ; 2 uses
  %i.v = and i64 %i.u, 2147483648
  %.not3850.i = icmp eq i64 %i.v, 0
  br i1 %.not3850.i, label %.split.us.i, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %.lr.ph.split.i
  %i.w = tail call ptr @__errno_location() #16
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph51.i
  %i.x = load i32, ptr %i.w, align 4
  switch i32 %i.x, label %.split45.us.i [
    i32 11, label %bb.h
    i32 4, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.y = call i64 @write(i32 noundef %i.p, ptr noundef %.028.ph55.i, i64 noundef %.029.ph53.i) #13 ; 2 uses
  %i.z = and i64 %i.y, 2147483648
  %.not38.i = icmp eq i64 %i.z, 0
  br i1 %.not38.i, label %.split.us.i, label %bb.g

.split45.us.i:                                    ; preds = %bb.g
  %i.aa = call i32 @get_log_level() #13
  %i.ab = icmp sgt i32 %i.aa, 4
  br i1 %i.ab, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %.split45.us.i
  %i.ac = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.f) #15
  %i.ad = trunc i64 %i.ac to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 485, ptr noundef nonnull @__func__._write_conf, i64 noundef %.029.ph53.i, i32 noundef %i.ad) #13
  br label %.thread.i

.split.us.i:                                      ; preds = %bb.h, %.lr.ph.split.i
  %.us-phi.i = phi i64 [ %i.u, %.lr.ph.split.i ], [ %i.y, %bb.h ]
  %i.ae = and i64 %.us-phi.i, 2147483647          ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.028.ph55.i, i64 %i.ae
  %i.ag = sub i64 %.029.ph53.i, %i.ae             ; 3 uses
  %.not39.i = icmp eq i64 %i.ag, 0
  br i1 %.not39.i, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %.split.us.i
  %i.ah = call i32 @get_log_level() #13
  %i.ai = icmp sgt i32 %i.ah, 6
  br i1 %i.ai, label %bb.k, label %.lr.ph.split.i.backedge

bb.k:                                             ; preds = %bb.j
  %i.aj = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.f) #15
  %i.ak = trunc i64 %i.aj to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, i32 noundef 485, ptr noundef nonnull @__func__._write_conf, i64 noundef %i.ag, i32 noundef %i.ak) #13
  br label %.lr.ph.split.i.backedge

.lr.ph.split.i.backedge:                          ; preds = %bb.k, %bb.j
  br label %.lr.ph.split.i, !llvm.loop !20

.loopexit.i:                                      ; preds = %.split.us.i, %bb.f, %bb.e
  %i.al = call i32 @close(i32 noundef %i.p) #13   ; 0 uses
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = load ptr, ptr %i.b, align 8
  %i.ao = call i32 @rename(ptr noundef %i.am, ptr noundef %i.an) #13
  %.not40.i = icmp eq i32 %i.ao, 0
  br i1 %.not40.i, label %bb.m, label %.thread.i

.thread.i:                                        ; preds = %.loopexit.i, %bb.i, %.split45.us.i, %bb.d
  %.030.i = phi i32 [ %i.p, %bb.d ], [ -1, %.loopexit.i ], [ %i.p, %.split45.us.i ], [ %i.p, %bb.i ] ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__._write_conf, ptr noundef %i.ap) #13 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  call void @slurm_xfree(ptr noundef nonnull %i.b) #13
  %i.ar = icmp sgt i32 %.030.i, -1
  br i1 %i.ar, label %bb.l, label %_write_conf.exit.thread

bb.l:                                             ; preds = %.thread.i
  %i.as = call i32 @close(i32 noundef %.030.i) #13 ; 0 uses
  br label %_write_conf.exit.thread

bb.m:                                             ; preds = %.loopexit.i, %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  call void @slurm_xfree(ptr noundef nonnull %i.b) #13
  br label %_write_conf.exit.thread

_write_conf.exit.thread:                          ; preds = %.thread.i, %bb.l, %bb.m
  %i.at = phi i32 [ 0, %bb.m ], [ -1, %bb.l ], [ -1, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.at
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @write_config_to_memfd(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = tail call i32 @dump_to_memfd(ptr noundef %i.d, ptr noundef %i.f, ptr noundef nonnull %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @write_configs_to_conf_cache(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i32 @list_for_each(ptr noundef %i.a, ptr noundef nonnull @write_one_config, ptr noundef %1) #13
  %.lobit = ashr i32 %i.b, 31
  ret i32 %.lobit
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @find_map_conf_file(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call i32 @xstrcmp(ptr noundef %i.a, ptr noundef %1) #13
  %.not = icmp eq i32 %i.b, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define dso_local ptr @new_config_response(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 625, ptr noundef nonnull @__func__.new_config_response) #13 ; 8 uses
  %spec.store.select = select i1 %0, ptr @slurmd_config_files, ptr @client_config_files ; 2 uses
  %i.b = tail call ptr @list_create(ptr noundef nonnull @destroy_config_file) #13
  store ptr %i.b, ptr %i.a, align 8
  %1 = load ptr, ptr %spec.store.select, align 16 ; 2 uses
  %.not45 = icmp eq ptr %1, null
  br i1 %.not45, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  br i1 %0, label %.preheader44, label %bb.o

.preheader44:                                     ; preds = %._crit_edge
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1000), align 8 ; 2 uses
  %.not52 = icmp eq i32 %i.c, 0
  br i1 %.not52, label %.preheader, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %.preheader44
  %.pre61 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 992), align 8
  br label %.lr.ph48

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.a ]
  %i.d = phi ptr [ %i.k, %bb.e ], [ %1, %bb.a ]   ; 2 uses
  tail call fastcc void @_load_conf2list(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, i1 noundef zeroext false)
  %i.e = load ptr, ptr @conf_includes_list, align 8 ; 2 uses
  %.not41 = icmp eq ptr %i.e, null
  br i1 %.not41, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call ptr @list_find_first_ro(ptr noundef nonnull %i.e, ptr noundef nonnull @find_map_conf_file, ptr noundef nonnull %i.d) #13 ; 2 uses
  %.not42 = icmp eq ptr %i.f, null
  br i1 %.not42, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not43 = icmp eq ptr %i.h, null
  br i1 %.not43, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @list_for_each_ro(ptr noundef nonnull %i.h, ptr noundef nonnull @_foreach_include_file, ptr noundef nonnull %i.a) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %spec.store.select, i64 %indvars.iv.next
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

.preheader:                                       ; preds = %bb.g, %.preheader44
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 376), align 8 ; 2 uses
  %.not53 = icmp eq i32 %i.l, 0
  br i1 %.not53, label %._crit_edge51, label %.lr.ph50.preheader

.lr.ph50.preheader:                               ; preds = %.preheader
  %.pre64 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 368), align 8
  br label %.lr.ph50

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %bb.g
  %i.m = phi i32 [ %i.c, %.lr.ph48.preheader ], [ %i.r, %bb.g ]
  %i.n = phi ptr [ %.pre61, %.lr.ph48.preheader ], [ %i.s, %bb.g ] ; 2 uses
  %indvars.iv55 = phi i64 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next56, %bb.g ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv55
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load i8, ptr %i.p, align 1
  %.not40 = icmp eq i8 %i.q, 47
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph48
  tail call fastcc void @_load_conf2list(ptr noundef nonnull %i.a, ptr noundef nonnull %i.p, i1 noundef zeroext true)
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 992), align 8
  %.pre62 = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1000), align 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph48, %bb.f
  %i.r = phi i32 [ %i.m, %.lr.ph48 ], [ %.pre62, %bb.f ] ; 2 uses
  %i.s = phi ptr [ %i.n, %.lr.ph48 ], [ %.pre, %bb.f ]
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.t = zext i32 %i.r to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next56, %i.t
  br i1 %i.u, label %.lr.ph48, label %.preheader, !llvm.loop !22

._crit_edge51:                                    ; preds = %bb.i, %.preheader
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1528), align 8 ; 3 uses
  %.not35 = icmp eq ptr %i.v, null
  br i1 %.not35, label %bb.l, label %bb.j

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %bb.i
  %i.w = phi i32 [ %i.l, %.lr.ph50.preheader ], [ %i.ab, %bb.i ]
  %i.x = phi ptr [ %.pre64, %.lr.ph50.preheader ], [ %i.ac, %bb.i ] ; 2 uses
  %indvars.iv58 = phi i64 [ 0, %.lr.ph50.preheader ], [ %indvars.iv.next59, %bb.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv58
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1
  %.not39 = icmp eq i8 %i.aa, 47
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph50
  tail call fastcc void @_load_conf2list(ptr noundef nonnull %i.a, ptr noundef nonnull %i.z, i1 noundef zeroext true)
  %.pre63 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 368), align 8
  %.pre65 = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 376), align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph50, %bb.h
  %i.ab = phi i32 [ %i.w, %.lr.ph50 ], [ %.pre65, %bb.h ] ; 2 uses
  %i.ac = phi ptr [ %i.x, %.lr.ph50 ], [ %.pre63, %bb.h ]
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.ad = zext i32 %i.ab to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next59, %i.ad
  br i1 %i.ae, label %.lr.ph50, label %._crit_edge51, !llvm.loop !23

bb.j:                                             ; preds = %._crit_edge51
  %i.af = load i8, ptr %i.v, align 1
  %.not36 = icmp eq i8 %i.af, 47
  br i1 %.not36, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_load_conf2list(ptr noundef nonnull %i.a, ptr noundef nonnull %i.v, i1 noundef zeroext true)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge51
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1504), align 8 ; 3 uses
  %.not37 = icmp eq ptr %i.ag, null
  br i1 %.not37, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i8, ptr %i.ag, align 1
  %.not38 = icmp eq i8 %i.ah, 47
  br i1 %.not38, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @_load_conf2list(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ag, i1 noundef zeroext true)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %._crit_edge
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @destroy_config_file(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not1 = icmp eq ptr %i.c, null
  br i1 %.not1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = tail call i32 @close(i32 noundef %i.e) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @slurm_xfree(ptr noundef nonnull %i.b) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @slurm_xfree(ptr noundef nonnull %i.g) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.h) #13
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_load_conf2list(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = tail call ptr @get_extra_conf_path(ptr noundef %1) #13 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = tail call ptr @create_mmap_buf(ptr noundef %i.c) #13 ; 4 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  %.not = icmp eq ptr %i.d, null                  ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #16
  %i.f = load i32, ptr %i.e, align 4
  %.not18 = icmp eq i32 %i.f, 22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %.not18, %bb.b ] ; 2 uses
  %i.g = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef 567, ptr noundef nonnull @__func__._load_conf2list) #13 ; 5 uses
  %i.h = zext i1 %.0 to i8
  store i8 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.b, ptr %i.i, align 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = call ptr @xstrndup(ptr noundef %i.k, i64 noundef %i.n) #13
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.o, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = call ptr @xstrdup(ptr noundef %1) #13
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr %0, align 8
  call void @list_append(ptr noundef %i.s, ptr noundef nonnull %i.g) #13
  %i.t = call i32 @get_log_level() #13
  %i.u = icmp sgt i32 %i.t, 6
  br i1 %i.u, label %bb.f, label %bb.g

end_hunk_0
