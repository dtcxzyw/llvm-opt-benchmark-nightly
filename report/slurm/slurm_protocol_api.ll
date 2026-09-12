Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurm_protocol_api?download=true
inline.NumInlined: 38
inline.NumDeleted: 9
begin_hunk_0_@slurm_get_tres_weight_array:bb.a
  store i32 0, ptr %i.ae, align 4
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = call double @strtod(ptr noundef %i.af, ptr noundef nonnull %i.b) #17 ; 5 uses
  %i.ah = load i32, ptr %i.ae, align 4
  %.not31.i = icmp eq i32 %i.ah, 0
  br i1 %.not31.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.93, ptr noundef nonnull @__func__._tres_weight_item, ptr noundef %i.ai) #17 ; 0 uses
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not32.i = icmp eq ptr %i.ak, null
  br i1 %.not32.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load i8, ptr %i.ak, align 1
  %.not33.i = icmp eq i8 %i.al, 0
  br i1 %.not33.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = call i32 @slurmdb_get_tres_base_unit(ptr noundef %.020.i) #17 ; 2 uses
  %i.an = load i8, ptr %i.ak, align 1             ; 3 uses
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %get_unit_type.exit.thread.sink.split.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = tail call ptr @__ctype_toupper_loc() #19
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = sext i8 %i.an to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %memchr.i.i.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @.str.78, i64 1), i32 %i.at, i64 6) ; 2 uses
  %.not.i.i.i = icmp eq ptr %memchr.i.i.i, null
  br i1 %.not.i.i.i, label %get_unit_type.exit.thread.sink.split.i.i.split.loop.exit, label %get_unit_type.exit.i.i

get_unit_type.exit.i.i:                           ; preds = %bb.r
  %i.au = ptrtoint ptr %memchr.i.i.i to i64
  %i.av = trunc i64 %i.au to i32
  %i.aw = sub i32 %i.av, ptrtoint (ptr @.str.78 to i32) ; 3 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %get_unit_type.exit.i.i
  %i.ay = icmp slt i32 %i.am, %i.aw
  br i1 %i.ay, label %.lr.ph.i.i, label %bb.v

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.011.i.i = phi i32 [ %.1.i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.0810.i.i = phi i32 [ %i.az, %.lr.ph.i.i ], [ %i.am, %.preheader.i.i ]
  %i.az = add nsw i32 %.0810.i.i, 1               ; 2 uses
  %.not.i.i = icmp eq i32 %.011.i.i, 0
  %i.ba = shl i32 %.011.i.i, 10
  %.1.i.i = select i1 %.not.i.i, i32 1024, i32 %i.ba ; 3 uses
  %i.bb = icmp slt i32 %i.az, %i.aw
  br i1 %i.bb, label %.lr.ph.i.i, label %get_convert_unit_val.exit.i, !llvm.loop !1

get_unit_type.exit.thread.sink.split.i.i.split.loop.exit: ; preds = %bb.r
  %i.bc = sext i8 %i.an to i32
  br label %get_unit_type.exit.thread.sink.split.i.i

get_unit_type.exit.thread.sink.split.i.i:         ; preds = %bb.q, %get_unit_type.exit.thread.sink.split.i.i.split.loop.exit
  %.sink.i.i = phi i32 [ %i.bc, %get_unit_type.exit.thread.sink.split.i.i.split.loop.exit ], [ 0, %bb.q ]
  %i.bd = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.79, i32 noundef %.sink.i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.78, i64 1)) #17 ; 0 uses
  br label %.loopexit

get_convert_unit_val.exit.i:                      ; preds = %.lr.ph.i.i
  %i.be = icmp sgt i32 %.1.i.i, 0
  br i1 %i.be, label %bb.s, label %bb.v

bb.s:                                             ; preds = %get_convert_unit_val.exit.i
  %i.bf = uitofp nneg i32 %.1.i.i to double
  %i.bg = fdiv double %i.ag, %i.bf
  br label %bb.v

.loopexit:                                        ; preds = %get_unit_type.exit.i.i, %bb.e, %bb.l, %bb.n, %bb.j, %get_unit_type.exit.thread.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @slurm_xfree(ptr noundef nonnull %i.d) #17
  call void @slurm_xfree(ptr noundef nonnull %i.e) #17
  br i1 %2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #20
  unreachable

bb.u:                                             ; preds = %.loopexit
  %i.bh = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #17 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %get_convert_unit_val.exit.i, %.preheader.i.i, %bb.p, %bb.o
  %.2.i = phi double [ %i.ag, %bb.o ], [ %i.ag, %bb.p ], [ %i.bg, %bb.s ], [ %i.ag, %get_convert_unit_val.exit.i ], [ %i.ag, %.preheader.i.i ]
  %i.bi = sext i32 %i.y to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bi
  store double %.2.i, ptr %i.bj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bk = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.f) #17 ; 2 uses
  %.not14 = icmp eq ptr %i.bk, null
  br i1 %.not14, label %._crit_edge, label %bb.d, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.v, %bb.c
  call void @slurm_xfree(ptr noundef nonnull %i.e) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.b, %._crit_edge, %bb.u
  %.011 = phi ptr [ null, %bb.u ], [ %i.l, %._crit_edge ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  ret ptr %.011
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok_r(ptr noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #5

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @slurm_get_stepd_loc() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #17
  ret ptr %i.a
}

declare ptr @xstrdup_printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @slurm_get_tmp_fs(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @slurmdbd_conf, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @slurm_conf_lock() #17
  %.not6 = icmp eq ptr %0, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1560
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @xstrdup(ptr noundef %i.d) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @slurm_conf_expand_slurmd_path(ptr noundef %i.d, ptr noundef nonnull %0, ptr noundef null) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.f, %bb.d ], [ %i.e, %bb.c ]
  tail call void @slurm_conf_unlock() #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1 = phi ptr [ null, %bb.a ], [ %.0, %bb.e ]
  ret ptr %.1
}

declare ptr @slurm_conf_lock() local_unnamed_addr #3

declare ptr @slurm_conf_expand_slurmd_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @slurm_conf_unlock() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @slurm_get_track_wckey() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @slurmdbd_conf, align 8    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 178
  %i.c = load i16, ptr %i.b, align 2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @slurm_conf_lock() #17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 284
  %i.f = load i32, ptr %i.e, align 4
  %0 = lshr i32 %i.f, 5
  %1 = trunc i32 %0 to i16
  %i.g = and i16 %1, 1
  tail call void @slurm_conf_unlock() #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i16 [ %i.c, %bb.b ], [ %i.g, %bb.c ]
  ret i16 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @slurm_with_slurmdbd() local_unnamed_addr #1 {
bb.a:
  %.b = load i1, ptr @slurm_with_slurmdbd.is_set, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @slurm_conf_lock() #17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @xstrcasecmp(ptr noundef %i.c, ptr noundef nonnull @.str.5) #17
  %.not = icmp eq i32 %i.d, 0
  %i.e = zext i1 %.not to i8
  store i8 %i.e, ptr @slurm_with_slurmdbd.with_slurmdbd, align 1
  store i1 true, ptr @slurm_with_slurmdbd.is_set, align 1
  tail call void @slurm_conf_unlock() #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0.in = load i8, ptr @slurm_with_slurmdbd.with_slurmdbd, align 1, !range !12, !noundef !13
  %.0 = trunc nuw i8 %.0.in to i1
  ret i1 %.0
}

declare i32 @xstrcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @slurm_auth_opts_to_socket(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @conf_get_opt_str(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #17 ; 2 uses
  %.not10 = icmp eq ptr %i.a, null
  br i1 %.not10, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 61) #18
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @xstrdup(ptr noundef nonnull %0) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.07 = phi ptr [ null, %bb.a ], [ %i.a, %bb.b ], [ null, %bb.c ], [ %i.c, %bb.d ]
  ret ptr %.07
}

declare ptr @conf_get_opt_str(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define dso_local range(i32 0, -2147483648) i32 @slurm_get_auth_ttl() local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @slurm_get_auth_ttl.ttl, align 4 ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 136), align 8 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.7) #18 ; 2 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.e, ptr noundef null, i32 noundef 10) #17, !inline_history !0
  %i.g = trunc i64 %i.f to i32
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %storemerge = phi i32 [ %spec.store.select, %bb.d ], [ 0, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr @slurm_get_auth_ttl.ttl, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ %i.a, %bb.a ], [ %storemerge, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @slurm_get_acct_gather_interconnect_type() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @slurmdbd_conf, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @slurm_conf_lock() #17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @xstrdup(ptr noundef %i.d) #17
  tail call void @slurm_conf_unlock() #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @slurm_get_gpu_freq_def() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @slurmdbd_conf, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @slurm_conf_lock() #17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @xstrdup(ptr noundef %i.d) #17
  tail call void @slurm_conf_unlock() #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @slurm_get_preempt_type() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @slurmdbd_conf, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @slurm_conf_lock() #17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @xstrdup(ptr noundef %i.d) #17
  tail call void @slurm_conf_unlock() #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @slurm_get_select_type() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @slurmdbd_conf, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @slurm_conf_lock() #17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1184
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @xstrdup(ptr noundef %i.d) #17
  tail call void @slurm_conf_unlock() #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @slurm_get_srun_port_range() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @slurmdbd_conf, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @slurm_conf_lock() #17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1416
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @slurm_conf_unlock() #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.b ]
  ret ptr %.0
}
end_hunk_0
begin_hunk_1_@auth_g_destroy
declare void @auth_g_destroy(ptr noundef) local_unnamed_addr #3

declare void @auth_g_get_ids(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_check_hash(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %4 = alloca %struct.slurm_hash_t, align 1       ; 8 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = and i16 %i.e, 64
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @_check_hash.config_update, align 8
  %i.h = load i64, ptr @slurm_conf, align 8
  %.not20 = icmp eq i64 %i.g, %i.h
  br i1 %.not20, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 272), align 8
  %i.j = tail call ptr @xstrcasestr(ptr noundef %i.i, ptr noundef nonnull @.str.101) #17
  %i.k = icmp ne ptr %i.j, null
  %i.l = zext i1 %i.k to i8
  store i8 %i.l, ptr @_check_hash.block_null_hash, align 1
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 272), align 8
  %i.n = tail call ptr @xstrcasestr(ptr noundef %i.m, ptr noundef nonnull @.str.102) #17
  %i.o = icmp ne ptr %i.n, null
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr @_check_hash.block_zero_hash, align 1
  %i.q = load i64, ptr @slurm_conf, align 8
  store i64 %i.q, ptr @_check_hash.config_update, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.s = load i32, ptr %i.r, align 8
  %i.t = tail call zeroext i1 @slurm_get_plugin_hash_enable(i32 noundef %i.s) #17
  br i1 %i.t, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.u = call i32 @auth_g_get_data(ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17 ; 3 uses
  %i.v = load i32, ptr %i.b, align 4              ; 2 uses
  %.not21 = icmp eq i32 %i.v, 0
  br i1 %.not21, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.x = and i64 %i.w, 16
  %.not22 = icmp eq i64 %i.x, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = zext i32 %i.v to i64
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef %i.y, i64 noundef %i.z, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.103, ptr noundef nonnull @__func__._check_hash) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 226
  %i.ae = load i16, ptr %i.ad, align 2
  %rev.i = call noundef i16 @llvm.bswap.i16(i16 %i.ae) ; 2 uses
  %.sroa.4.0.extract.shift = lshr i16 %rev.i, 8
  %.sroa.4.0.extract.trunc = zext nneg i16 %.sroa.4.0.extract.shift to i32
  %i.af = load i8, ptr @_check_hash.block_zero_hash, align 1, !range !12, !noundef !13
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load i32, ptr %i.b, align 4
  %i.ai = icmp ne i32 %i.ah, 3
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ai
  br i1 %or.cond, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.extract.trunc = zext i16 %rev.i to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i32
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.am = ashr exact i32 %sext, 24
  %i.an = icmp eq i32 %i.am, %i.al
  br i1 %i.an, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = sext i8 %i.ap to i32
  %sext26 = shl nuw i32 %.sroa.4.0.extract.trunc, 24
  %i.ar = ashr exact i32 %sext26, 24
  %i.as = icmp eq i32 %i.ar, %i.aq
  br i1 %i.as, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 202
  store i8 1, ptr %i.at, align 2
  br label %bb.t

bb.m:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aw, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 226
  %i.ay = load i16, ptr %i.ax, align 2
  %rev.i27 = call noundef i16 @llvm.bswap.i16(i16 %i.ay)
  store i16 %rev.i27, ptr %i.c, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  store i8 %i.ab, ptr %4, align 1
  %i.bf = call i32 @hash_g_compute(ptr noundef %i.be, i32 noundef %i.av, ptr noundef nonnull %i.c, i32 noundef 2, ptr noundef nonnull %4) #17 ; 2 uses
  %i.bg = add nsw i32 %i.bf, 1
  %i.bh = load i32, ptr %i.b, align 4
  %.not23 = icmp eq i32 %i.bg, %i.bh
  br i1 %.not23, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.a, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.bl = sext i32 %i.bf to i64
  %bcmp = call i32 @bcmp(ptr nonnull %i.bj, ptr nonnull %i.bk, i64 %i.bl)
  %.not24 = icmp eq i32 %bcmp, 0
  br i1 %.not24, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = load i8, ptr %4, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 202
  store i8 %i.bm, ptr %i.bn, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.1 = phi i32 [ %i.u, %bb.o ], [ -1, %bb.n ], [ -1, %bb.m ]
  %i.bo = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bp = and i64 %i.bo, 16
  %.not25 = icmp eq i64 %i.bp, 0
  br i1 %.not25, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef nonnull %4, i64 noundef 33, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__._check_hash) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.t

bb.s:                                             ; preds = %bb.e
  %i.bq = load i8, ptr @_check_hash.block_null_hash, align 1, !range !12, !noundef !13
  %i.br = trunc nuw i8 %i.bq to i1
  %spec.select = select i1 %i.br, i32 -1, i32 %i.u
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.l, %bb.i, %bb.k, %bb.j, %bb.r
  %.2 = phi i32 [ %spec.select, %bb.s ], [ %.1, %bb.r ], [ -1, %bb.j ], [ -1, %bb.i ], [ %i.u, %bb.l ], [ -1, %bb.k ]
  call void @slurm_xfree(ptr noundef nonnull %i.a) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.d, %bb.a, %bb.t
  %.018 = phi i32 [ 0, %bb.a ], [ %.2, %bb.t ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.018
}

declare i32 @unpack_msg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @destroy_forward(ptr noundef) local_unnamed_addr #3

declare i32 @usleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @slurm_receive_msg(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.persist_msg_t, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load i16, ptr %i.c, align 8
  %4 = and i16 %i.d, 4
  %.not69 = icmp eq i16 %4, 0                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.g = tail call i32 @slurm_msg_t_init_address(ptr noundef nonnull %1) #17 ; 2 uses
  %.not65 = icmp eq i32 %i.g, 0
  br i1 %.not65, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.i = and i64 %i.h, 1024
  %.not66 = icmp eq i64 %i.i, 0
  br i1 %.not66, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @get_log_level() #17
  %i.k = icmp sgt i32 %i.j, 3
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.p = load i16, ptr %i.o, align 8
  %i.q = zext i16 %i.p to i32
  %i.r = tail call ptr @slurm_strerror(i32 noundef %i.g) #17
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.slurm_receive_msg, ptr noundef %i.n, i32 noundef %i.q, ptr noundef %i.r) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = tail call ptr @slurm_persist_recv_msg(ptr noundef %i.s) #17 ; 4 uses
  %.not67 = icmp eq ptr %i.t, null
  br i1 %.not67, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.slurm_receive_msg) #17 ; 0 uses
  %i.v = load ptr, ptr %i.e, align 8
  tail call void @slurm_persist_conn_close(ptr noundef %i.v) #17
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %i.e, align 8
  %i.x = call i32 @slurm_persist_msg_unpack(ptr noundef %i.w, ptr noundef nonnull %3, ptr noundef nonnull %i.t) #17
  br i1 %.not69, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.t, ptr %i.y, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @free_buf(ptr noundef nonnull %i.t) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not68 = icmp eq i32 %i.x, 0
  br i1 %.not68, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.slurm_receive_msg) #17 ; 0 uses
  %i.aa = load ptr, ptr %i.e, align 8
  call void @slurm_persist_conn_close(ptr noundef %i.aa) #17
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 226
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.g
  %.051 = phi i32 [ -1, %bb.l ], [ 0, %bb.m ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.am

bb.o:                                             ; preds = %bb.a
  %i.ah = tail call i32 @conn_g_get_fd(ptr noundef %0) #17 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %0, ptr %i.ai, align 8
  %i.aj = tail call i32 @slurm_msg_t_init_address(ptr noundef nonnull %1) #17 ; 2 uses
  %.not57 = icmp eq i32 %i.aj, 0
  br i1 %.not57, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.al = and i64 %i.ak, 1024
  %.not58 = icmp eq i64 %i.al, 0
  br i1 %.not58, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = tail call i32 @get_log_level() #17
  %i.an = icmp sgt i32 %i.am, 3
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ao = tail call ptr @slurm_strerror(i32 noundef %i.aj) #17
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.slurm_receive_msg, i32 noundef %i.ah, ptr noundef %i.ao) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q, %bb.o
  %i.ap = icmp slt i32 %2, 1
  %i.aq = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  br i1 %i.ap, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.as = mul nuw nsw i32 %i.ar, 1000
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %i.at = mul nuw nsw i32 %i.ar, 10000
  %i.au = icmp samesign ugt i32 %2, %i.at
  br i1 %i.au, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.aw = and i64 %i.av, 1024
  %.not59 = icmp eq i64 %i.aw, 0
  br i1 %.not59, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = tail call i32 @get_log_level() #17
  %i.ay = icmp sgt i32 %i.ax, 3
  br i1 %i.ay, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.az = udiv i32 %2, 1000
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.slurm_receive_msg, i32 noundef %i.az) #17
  br label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.ba = icmp samesign ult i32 %2, 1000
  br i1 %i.ba, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bb = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.slurm_receive_msg, i32 noundef %2) #17 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.x, %bb.v, %bb.z, %bb.y, %bb.t
  %.050 = phi i32 [ %i.as, %bb.t ], [ %2, %bb.x ], [ %2, %bb.w ], [ %2, %bb.v ], [ %2, %bb.z ], [ %2, %bb.y ]
  %i.bc = call i64 @slurm_msg_recvfrom_timeout(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.050) #17
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.be = tail call ptr @__errno_location() #19
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %.not63 = icmp eq i32 %i.bf, 0
  %spec.store.select1 = select i1 %.not63, i32 1802, i32 %i.bf
  br label %bb.al

bb.ac:                                            ; preds = %bb.aa
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bh = and i64 %i.bg, 16
  %.not60 = icmp eq i64 %i.bh, 0
  br i1 %.not60, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bi = load ptr, ptr %i.a, align 8
  %i.bj = load i64, ptr %i.b, align 8
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef %i.bi, i64 noundef %i.bj, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.slurm_receive_msg) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bk = load ptr, ptr %i.a, align 8
  %i.bl = load i64, ptr %i.b, align 8
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = call ptr @create_buf(ptr noundef %i.bk, i32 noundef %i.bm) #17 ; 4 uses
  %i.bo = call i32 @slurm_unpack_received_msg(ptr noundef nonnull %1, i32 noundef %i.ah, ptr noundef %i.bn) ; 3 uses
  br i1 %.not69, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.bn, ptr %i.bp, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %.not61 = icmp eq ptr %i.bn, null
  br i1 %.not61, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @free_buf(ptr noundef nonnull %i.bn) #17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %i.bq = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.br = and i64 %i.bq, 1024
  %.not62 = icmp eq i64 %i.br, 0
  br i1 %.not62, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bs = call i32 @get_log_level() #17
  %i.bt = icmp sgt i32 %i.bs, 3
  br i1 %i.bt, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 226
  %i.bv = load i16, ptr %i.bu, align 2
  %i.bw = call ptr @rpc_num2string(i16 noundef zeroext %i.bv) #17
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.24, ptr noundef %i.bw, ptr noundef nonnull %1, i32 noundef %i.ah) #17
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.aj, %bb.ab
  %.0 = phi i32 [ %spec.store.select1, %bb.ab ], [ %i.bo, %bb.ak ], [ %i.bo, %bb.aj ], [ %i.bo, %bb.ai ] ; 2 uses
  %i.bx = tail call ptr @__errno_location() #19
  store i32 %.0, ptr %i.bx, align 4
  %.not64 = icmp ne i32 %.0, 0
  %spec.store.select2 = sext i1 %.not64 to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.n
  %.1 = phi i32 [ %.051, %bb.n ], [ %spec.store.select2, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.1
}

declare i32 @slurm_msg_t_init_address(ptr noundef) local_unnamed_addr #3

declare ptr @slurm_persist_recv_msg(ptr noundef) local_unnamed_addr #3

declare void @slurm_persist_conn_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i32 @slurm_persist_msg_unpack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_buf(ptr noundef) local_unnamed_addr #3

declare i32 @conn_g_get_fd(ptr noundef) local_unnamed_addr #3

declare i64 @slurm_msg_recvfrom_timeout(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_log_flag_hex(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @create_buf(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @slurm_receive_msgs(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.slurm_protocol_header, align 8 ; 19 uses
  %4 = alloca %struct.slurm_msg, align 8          ; 14 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store ptr null, ptr %i.c, align 8
  %i.d = tail call i32 @conn_g_get_fd(ptr noundef %0) #17 ; 5 uses
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.f = and i64 %i.e, 1040
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @fd_resolve_peer(i32 noundef %i.d) #17 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 6 uses
  call void @slurm_msg_t_init(ptr noundef nonnull %4) #17
  %i.i = icmp slt i32 %2, 1
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.k = zext i16 %i.j to i32
  %i.l = mul nuw nsw i32 %i.k, 1000
  %.066 = select i1 %i.i, i32 %i.l, i32 %2        ; 6 uses
  %.not84 = icmp eq i32 %1, 0
  br i1 %.not84, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = shl nsw i32 %1, 1
  %i.n = sdiv i32 %.066, %i.m
  %i.o = add nsw i32 %1, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.n, %bb.d ], [ %.066, %bb.c ] ; 4 uses
  %.0 = phi i32 [ %i.o, %bb.d ], [ 0, %bb.c ]
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.q = and i64 %i.p, 1024
  %.not85 = icmp eq i64 %i.q, 0
  br i1 %.not85, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = call i32 @get_log_level() #17
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.slurm_receive_msgs, ptr noundef %i.h, i32 noundef %.1, i32 noundef %.0, i32 noundef %.066) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.t = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.u = zext i16 %i.t to i32
  %i.v = mul nuw nsw i32 %i.u, 10000
  %.not86 = icmp slt i32 %.1, %i.v
  br i1 %.not86, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.x = and i64 %i.w, 1024
  %.not88 = icmp eq i64 %i.x, 0
  br i1 %.not88, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = call i32 @get_log_level() #17
  %i.z = icmp sgt i32 %i.y, 3
  br i1 %i.z, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aa = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.ab = zext i16 %i.aa to i32
  %i.ac = mul nuw nsw i32 %i.ab, 10
  %i.ad = udiv i32 %.066, 1000
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.slurm_receive_msgs, ptr noundef %i.h, i32 noundef %i.ac, i32 noundef %i.ad) #17
  br label %bb.p

bb.l:                                             ; preds = %bb.h
  %i.ae = icmp slt i32 %.1, 1000
  br i1 %i.ae, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ag = and i64 %i.af, 1024
  %.not87 = icmp eq i64 %i.ag, 0
  br i1 %.not87, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = call i32 @get_log_level() #17
  %i.ai = icmp sgt i32 %i.ah, 3
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.slurm_receive_msgs, ptr noundef %i.h, i32 noundef %.066, i32 noundef %.1) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.o, %bb.m, %bb.i, %bb.k, %bb.j
  %i.aj = call i64 @slurm_msg_recvfrom_timeout(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.066) #17
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.au, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.am = and i64 %i.al, 16
  %.not89 = icmp eq i64 %i.am, 0
  br i1 %.not89, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr %i.a, align 8
  %i.ao = load i64, ptr %i.b, align 8
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef %i.an, i64 noundef %i.ao, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.slurm_receive_msgs, ptr noundef %i.h) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = load i64, ptr %i.b, align 8
  %i.ar = trunc i64 %i.aq to i32
  %i.as = call ptr @create_buf(ptr noundef %i.ap, i32 noundef %i.ar) #17 ; 12 uses
  %i.at = call i32 @unpack_header(ptr noundef nonnull %3, ptr noundef %i.as) #17 ; 2 uses
  %.not90 = icmp eq i32 %i.at, 0
  br i1 %.not90, label %bb.v, label %bb.t

end_hunk_1
