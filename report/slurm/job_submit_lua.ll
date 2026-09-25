Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/job_submit_lua?download=true
inline.NumInlined: 18
inline.NumDeleted: 9
begin_hunk_0_@job_modify:bb.a

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.0 = phi i32 [ %i.be, %bb.l ], [ 0, %bb.n ], [ 0, %bb.m ]
  %i.bi = load ptr, ptr @L, align 8
  call void @lua_settop(ptr noundef %i.bi, i32 noundef -2) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.1 = phi i32 [ %i.aq, %bb.j ], [ %.0, %bb.o ]  ; 2 uses
  %i.bj = load ptr, ptr @L, align 8
  call void @slurm_lua_stack_dump(ptr noundef nonnull @plugin_type, ptr noundef nonnull @.str.13, ptr noundef %i.bj) #10
  %i.bk = load ptr, ptr @user_msg, align 8        ; 2 uses
  %.not25 = icmp eq ptr %i.bk, null
  br i1 %.not25, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.bk, ptr %3, align 8
  store ptr null, ptr @user_msg, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.d, %bb.q, %bb.p
  %.2 = phi i32 [ %i.e, %bb.c ], [ 0, %bb.d ], [ %.1, %bb.q ], [ %.1, %bb.p ]
  %i.bl = call i32 @pthread_mutex_unlock(ptr noundef nonnull @lua_lock) #10 ; 2 uses
  %.not26 = icmp eq i32 %i.bl, 0
  br i1 %.not26, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = tail call ptr @__errno_location() #11
  store i32 %i.bl, ptr %i.bm, align 4
  call void (ptr, ...) @slurm_fatal_abort(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.job_modify) #12
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @slurm_xfree(ptr noundef nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.2
}

declare void @slurm_lua_table_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_setglobal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_log_lua_user_msg(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @lua_tolstring(ptr noundef %0, i32 noundef -1, ptr noundef null) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8
  %i.c = load ptr, ptr @user_msg, align 8         ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ptr, ...) @slurm_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.c, ptr noundef %i.b) #10
  call void @slurm_xfree(ptr noundef nonnull @user_msg) #10
  %i.d = load ptr, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @slurm_xstrdup(ptr noundef %i.b) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  store ptr %.sink, ptr @user_msg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 0
}

declare ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @slurm_xstrfmtcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @slurm_xstrdup(ptr noundef) local_unnamed_addr #2

declare void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_get_job_env_field_name(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef 1) #10
  %i.b = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef null) #10
  tail call fastcc void @_job_env_field(ptr noundef %i.a, ptr noundef %i.b)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_get_job_req_field_name(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef 1) #10
  %i.b = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef null) #10
  tail call fastcc void @_get_job_req_field(ptr noundef %i.a, ptr noundef %i.b)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_set_job_env_field(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef null) #10
  %i.c = tail call ptr @slurm_xstrdup(ptr noundef %i.b) #10
  store ptr %i.c, ptr %i.a, align 8
  call void @slurm_xstrcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.23) #10
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #13
  %i.f = call i32 @lua_getmetatable(ptr noundef %0, i32 noundef -3) #10 ; 0 uses
  %i.g = call i32 @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.131) #10 ; 0 uses
  %i.h = call ptr @lua_touserdata(ptr noundef %0, i32 noundef -1) #10 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19) #10 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 248 ; 10 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  %i.o = load ptr, ptr %i.n, align 8
  %.not42 = icmp eq ptr %i.o, null
  br i1 %.not42, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.25, ptr noundef nonnull @plugin_type, ptr noundef nonnull @.str.19) #10 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.q = call i32 @slurm_get_log_level() #10
  %i.r = icmp sgt i32 %i.q, 2
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @slurm_log_var(i32 noundef 3, ptr noundef nonnull @.str.132, ptr noundef nonnull @plugin_type, ptr noundef nonnull @.str.19) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  call void @lua_pushnil(ptr noundef %0) #10
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  %i.s = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 3, ptr noundef null) #10 ; 2 uses
  %i.t = load ptr, ptr %i.k, align 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not47 = icmp eq ptr %i.u, null
  br i1 %.not47, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %sext = shl i64 %i.e, 32
  %i.v = ashr exact i64 %sext, 32                 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %i.w = phi ptr [ %i.u, %.lr.ph ], [ %i.ab, %bb.k ]
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = call i32 @slurm_xstrncmp(ptr noundef nonnull %i.w, ptr noundef %i.x, i64 noundef %i.v) #10
  %.not40 = icmp eq i32 %i.y, 0
  %i.z = load ptr, ptr %i.k, align 8              ; 2 uses
  br i1 %.not40, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %.loopexit.loopexit, label %bb.j, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %bb.k
  %i.ac = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit.thread

.loopexit:                                        ; preds = %bb.j
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.v
  store i8 0, ptr %i.ag, align 1
  %i.ah = load ptr, ptr %i.k, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  call void @slurm_xstrcat(ptr noundef %i.ai, ptr noundef %i.s) #10
  %.pre = load ptr, ptr %i.k, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %.pre60 = load ptr, ptr %.phi.trans.insert, align 8
  %i.aj = icmp eq ptr %.pre60, null
  br i1 %i.aj, label %.loopexit.thread, label %bb.l

.loopexit.thread:                                 ; preds = %.loopexit.loopexit, %bb.i, %.loopexit
  %.0374565 = phi i32 [ %i.ad, %.loopexit ], [ %i.ac, %.loopexit.loopexit ], [ 0, %bb.i ] ; 3 uses
  %i.ak = add nuw nsw i32 %.0374565, 2
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.k, i64 noundef 1, i64 noundef %i.am, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.133, i32 noundef 411, ptr noundef nonnull @.str.19) #10
  store ptr %i.an, ptr %i.k, align 8
  %.not52 = icmp eq i32 %.0374565, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %.loopexit.thread
  %i.ao = zext i32 %.0374565 to i64
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %.lr.ph51
  %indvars.iv57 = phi i64 [ %i.ao, %.lr.ph51.preheader ], [ %indvars.iv.next58, %.lr.ph51 ] ; 3 uses
  %i.ap = load ptr, ptr %i.k, align 8
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv57 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %i.aq, align 8
  %indvars.iv.next58 = add nsw i64 %indvars.iv57, -1
  %1 = trunc nuw i64 %indvars.iv57 to i32
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %.lr.ph51, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph51, %.loopexit.thread
  %i.at = load ptr, ptr %i.a, align 8
  %i.au = call ptr @slurm_xstrdup(ptr noundef %i.at) #10
  %i.av = load ptr, ptr %i.k, align 8
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = load ptr, ptr %i.k, align 8
  call void @slurm_xstrcat(ptr noundef %i.aw, ptr noundef %i.s) #10
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 292 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %._crit_edge, %.loopexit, %bb.b
  call void @slurm_xfree(ptr noundef nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_set_job_req_field(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef null) #10 ; 81 uses
  %i.b = tail call i32 @lua_getmetatable(ptr noundef %0, i32 noundef -3) #10 ; 0 uses
  %i.c = tail call i32 @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.131) #10 ; 0 uses
  %i.d = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef -1) #10 ; 81 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ...) @slurm_error(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20) #10 ; 0 uses
  br label %bb.gt

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i32 @slurm_xstrcmp(ptr noundef %i.a, ptr noundef nonnull @.str.27) #10
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 3, ptr noundef null) #10 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.d) #10
  %char0 = load i8, ptr %i.h, align 1
  %.not364 = icmp eq i8 %char0, 0
  br i1 %.not364, label %bb.gt, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @slurm_xstrdup(ptr noundef nonnull %i.h) #10
  store ptr %i.i, ptr %i.d, align 8
  br label %bb.gt

bb.f:                                             ; preds = %bb.c
  %i.j = tail call i32 @slurm_xstrcmp(ptr noundef %i.a, ptr noundef nonnull @.str.28) #10
  %.not365 = icmp eq i32 %i.j, 0
  br i1 %.not365, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.k = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 3, ptr noundef null) #10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.l) #10
  %char0366 = load i8, ptr %i.k, align 1
  %.not367 = icmp eq i8 %char0366, 0
  br i1 %.not367, label %bb.gt, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @slurm_xstrdup(ptr noundef nonnull %i.k) #10
  store ptr %i.m, ptr %i.l, align 8
  br label %bb.gt

bb.i:                                             ; preds = %bb.f
  %i.n = tail call i32 @slurm_xstrcmp(ptr noundef %i.a, ptr noundef nonnull @.str.29) #10
  %.not368 = icmp eq i32 %i.n, 0
  br i1 %.not368, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.o = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 3, ptr noundef null) #10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.p) #10
  %char0369 = load i8, ptr %i.o, align 1
  %.not370 = icmp eq i8 %char0369, 0
  br i1 %.not370, label %bb.gt, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = tail call ptr @slurm_xstrdup(ptr noundef nonnull %i.o) #10
  store ptr %i.q, ptr %i.p, align 8
  br label %bb.gt

bb.l:                                             ; preds = %bb.i
  %i.r = tail call i32 @slurm_xstrcmp(ptr noundef %i.a, ptr noundef nonnull @.str.33) #10
  %.not371 = icmp eq i32 %i.r, 0
  br i1 %.not371, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.s = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 3, ptr noundef null) #10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.t) #10
  %char0372 = load i8, ptr %i.s, align 1
  %.not373 = icmp eq i8 %char0372, 0
  br i1 %.not373, label %bb.gt, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = tail call ptr @slurm_xstrdup(ptr noundef nonnull %i.s) #10
  store ptr %i.u, ptr %i.t, align 8
  br label %bb.gt

bb.o:                                             ; preds = %bb.l
  %i.v = tail call i32 @slurm_xstrcmp(ptr noundef %i.a, ptr noundef nonnull @.str.36) #10
  %.not374 = icmp eq i32 %i.v, 0
  br i1 %.not374, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.w = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 3, ptr noundef null) #10 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.x) #10
  %char0375 = load i8, ptr %i.w, align 1
  %.not376 = icmp eq i8 %char0375, 0
  br i1 %.not376, label %bb.gt, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = tail call ptr @slurm_xstrdup(ptr noundef nonnull %i.w) #10
  store ptr %i.y, ptr %i.x, align 8
  br label %bb.gt

bb.r:                                             ; preds = %bb.o
  %i.z = tail call i32 @slurm_xstrcmp(ptr noundef %i.a, ptr noundef nonnull @.str.37) #10
  %.not377 = icmp eq i32 %i.z, 0
  br i1 %.not377, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aa = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 3) #10
  %i.ab = fptosi double %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 %i.ab, ptr %i.ac, align 8
  br label %bb.gt

bb.t:                                             ; preds = %bb.r
  %i.ad = tail call i32 @slurm_xstrcmp(ptr noundef %i.a, ptr noundef nonnull @.str.38) #10
  %.not378 = icmp eq i32 %i.ad, 0
  br i1 %.not378, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ae = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 3) #10
  %i.af = fptoui double %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 %i.af, ptr %i.ag, align 8
  br label %bb.gt

bb.v:                                             ; preds = %bb.t
  %i.ah = tail call i32 @slurm_xstrcmp(ptr noundef %i.a, ptr noundef nonnull @.str.40) #10
  %.not379 = icmp eq i32 %i.ah, 0
  br i1 %.not379, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ai = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 3, ptr noundef null) #10 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.aj) #10
  %char0380 = load i8, ptr %i.ai, align 1
  %.not381 = icmp eq i8 %char0380, 0
  br i1 %.not381, label %bb.gt, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ak = tail call ptr @slurm_xstrdup(ptr noundef nonnull %i.ai) #10
  store ptr %i.ak, ptr %i.aj, align 8
  br label %bb.gt

bb.y:                                             ; preds = %bb.v
  %i.al = tail call i32 @slurm_xstrcmp(ptr noundef %i.a, ptr noundef nonnull @.str.41) #10
  %.not382 = icmp eq i32 %i.al, 0
  br i1 %.not382, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.am = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 3, ptr noundef null) #10 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.an) #10
  %char0383 = load i8, ptr %i.am, align 1
  %.not384 = icmp eq i8 %char0383, 0
  br i1 %.not384, label %bb.gt, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ao = tail call ptr @slurm_xstrdup(ptr noundef nonnull %i.am) #10
  store ptr %i.ao, ptr %i.an, align 8
  br label %bb.gt

bb.ab:                                            ; preds = %bb.y
  %i.ap = tail call i32 @slurm_xstrcmp(ptr noundef %i.a, ptr noundef nonnull @.str.42) #10
  %.not385 = icmp eq i32 %i.ap, 0
  br i1 %.not385, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.aq = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 3, ptr noundef null) #10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  tail call void @slurm_xfree(ptr noundef nonnull %i.ar) #10
  %char0386 = load i8, ptr %i.aq, align 1
  %.not387 = icmp eq i8 %char0386, 0
  br i1 %.not387, label %bb.gt, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.as = tail call ptr @slurm_xstrdup(ptr noundef nonnull %i.aq) #10
  store ptr %i.as, ptr %i.ar, align 8
end_hunk_0
