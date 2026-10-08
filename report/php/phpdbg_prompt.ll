Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/phpdbg_prompt?download=true
inline.NumInlined: 23
inline.NumDeleted: 3
begin_hunk_0_@phpdbg_do_sh:bb.a
  %i.c = tail call noalias ptr @popen(ptr noundef %i.b, ptr noundef nonnull @.str.127) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @pclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !57
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.g = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.e, ptr noundef nonnull @.str.128, ptr noundef %i.f) #25 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @phpdbg_do_quit(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !76
  %i.b = and i64 %i.a, -327681
  %i.c = or disjoint i64 %i.b, 65536
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !76
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @phpdbg_do_watch(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !110
  switch i32 %i.a, label %bb.e [
    i32 0, label %bb.c
    i32 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @phpdbg_list_watchpoints() #25
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77
  %i.f = tail call i32 @phpdbg_create_var_watchpoint(ptr noundef %i.c, i64 noundef %i.e) #25 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !57
  %i.h = tail call ptr @phpdbg_get_param_type(ptr noundef nonnull %0) #25
  %i.i = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.g, ptr noundef nonnull @.str.126, ptr noundef %i.h) #25 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 4) i32 @phpdbg_do_next(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1392), align 8, !tbaa !53, !range !54, !noundef !55
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !57
  %i.d = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.c, ptr noundef nonnull @.str.85) #25 ; 0 uses
  br label %phpdbg_skip_line_helper.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !76 ; 2 uses
  %i.f = or i64 %i.e, 8192
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i, %bb.c
  %.0.i.in.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), %bb.c ], [ %i.j, %.critedge.i.i ]
  %.0.i.i = load ptr, ptr %.0.i.in.i, align 8, !tbaa !143 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !144  ; 4 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %i.h, align 8, !tbaa !81
  %.not6.i.i = icmp eq i8 %i.i, 1
  br i1 %.not6.i.i, label %.critedge.i.i, label %phpdbg_user_execute_data.exit.i

.critedge.i.i:                                    ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  br label %bb.d, !llvm.loop !0

phpdbg_user_execute_data.exit.i:                  ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !152  ; 2 uses
  %i.m = or i64 %i.e, 1056768
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !76
  store ptr %.0.i.i, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 728), align 8, !tbaa !153
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %phpdbg_user_execute_data.exit.i
  %i.p = phi ptr [ %i.l, %phpdbg_user_execute_data.exit.i ], [ %i.z, %bb.i ]
  %.0.i = phi ptr [ %i.l, %phpdbg_user_execute_data.exit.i ], [ %i.aa, %bb.i ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !154
  %i.s = load ptr, ptr %.0.i.i, align 8, !tbaa !155
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !154
  %.not.i = icmp eq i32 %i.r, %i.u
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.w = load i8, ptr %i.v, align 4, !tbaa !156
  switch i8 %i.w, label %bb.i [
    i8 62, label %bb.h
    i8 -93, label %bb.h
    i8 -95, label %bb.h
    i8 -96, label %bb.h
    i8 -90, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.f
  %i.x = ptrtoint ptr %.0.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %.0.i, ptr %1, align 8, !tbaa !81
  store i32 13, ptr %i.n, align 8, !tbaa !81
  %i.y = call ptr @zend_hash_index_update(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 672), i64 noundef %i.x, ptr noundef nonnull %1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !152
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ %i.p, %bb.g ], [ %.pre.i, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.ab = load i32, ptr %i.o, align 8, !tbaa !157
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ac
  %i.ae = icmp ult ptr %i.aa, %i.ad
  br i1 %i.ae, label %bb.f, label %phpdbg_skip_line_helper.exit, !llvm.loop !1

phpdbg_skip_line_helper.exit:                     ; preds = %bb.i, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 3, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @phpdbg_string_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.phpdbg_init_state, align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.a = tail call ptr @strtok(ptr noundef %0, ptr noundef nonnull @.str.61) #25 ; 2 uses
  %.not5 = icmp eq ptr %i.a, null
  br i1 %.not5, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi ptr [ %i.b, %.lr.ph ], [ %i.a, %bb.a ]
  call fastcc void @phpdbg_line_init(ptr noundef %.06, ptr noundef %1)
  %i.b = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.61) #25 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !221

._crit_edge:                                      ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !169 ; 2 uses
  %.not4 = icmp eq ptr %.pre, null
  br i1 %.not4, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %.pre) #25
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @phpdbg_line_init(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct._phpdbg_param, align 8      ; 9 uses
  %i.b = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26 ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !223
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %1, align 8, !tbaa !223
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %.critedge58, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = call ptr @__ctype_b_loc() #31
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !225
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.060 = phi i64 [ %i.b, %.lr.ph ], [ %i.o, %bb.c ] ; 7 uses
  %i.h = getelementptr i8, ptr %0, i64 %.060      ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !81
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !226
  %i.n = and i16 %i.m, 8192
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = add i64 %.060, -1                        ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.critedge58, label %bb.b, !llvm.loop !222

.critedge:                                        ; preds = %bb.b
  store i8 0, ptr %i.h, align 1, !tbaa !81
  %i.q = load i8, ptr %0, align 1, !tbaa !81
  switch i8 %i.q, label %bb.d [
    i8 35, label %bb.z
    i8 0, label %bb.z
  ]

bb.d:                                             ; preds = %.critedge
  %i.r = icmp eq i64 %.060, 2
  br i1 %i.r, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.s = load i16, ptr %0, align 1
  %i.t = icmp ne i16 %i.s, 14908
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 1, ptr %i.w, align 4, !tbaa !227
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  %i.x = load i16, ptr %0, align 1
  %i.y = icmp ne i16 %i.x, 15930
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.ab, align 4, !tbaa !227
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !169
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !228
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !81
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !169
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !228
  %i.aj = call i32 @zend_eval_stringl(ptr noundef %i.ah, i64 noundef %i.ai, ptr noundef null, ptr noundef nonnull @.str.183) #25 ; 0 uses
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !169
  call void @free(ptr noundef %i.ak) #25
  store ptr null, ptr %i.ac, align 8, !tbaa !169
  br label %bb.z

bb.i:                                             ; preds = %bb.g, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.am = load i8, ptr %i.al, align 4, !tbaa !227, !range !54, !noundef !55
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !169 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = add i64 %.060, 1
  %i.as = call noalias ptr @malloc(i64 noundef %i.ar) #28
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !228
  %i.av = add i64 %.060, 1
  %i.aw = add i64 %i.av, %i.au
  %i.ax = call ptr @realloc(ptr noundef nonnull %i.ap, i64 noundef %i.aw) #29
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge = phi ptr [ %i.ax, %bb.l ], [ %i.as, %bb.k ] ; 3 uses
  store ptr %storemerge, ptr %i.ao, align 8, !tbaa !169
  %.not52 = icmp eq ptr %storemerge, null
  br i1 %.not52, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !228 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull align 1 %0, i64 %.060, i1 false)
  %i.bb = add i64 %i.az, %.060
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !228
  br label %bb.z

bb.o:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %2, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  %i.bd = call i32 @__sigsetjmp(ptr noundef nonnull %2, i32 noundef 0) #30
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bf = call ptr @phpdbg_read_input(ptr noundef nonnull %0) #25 ; 4 uses
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 9, ptr %3, align 8, !tbaa !110
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, i8 0, i64 80, i1 false)
  call void @phpdbg_activate_err_buf(i1 noundef zeroext true) #25
  %i.bi = call i32 @phpdbg_do_parse(ptr noundef nonnull %3, ptr noundef %i.bf) #25
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bk = call i32 @phpdbg_stack_execute(ptr noundef nonnull %3, i1 noundef zeroext true) #25
  %cond = icmp eq i32 %i.bk, -1
  br i1 %cond, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @phpdbg_activate_err_buf(i1 noundef zeroext false) #25
  %.val = load i32, ptr %3, align 8, !tbaa !110
  %.val54 = load ptr, ptr %i.bh, align 8
  %i.bl = call fastcc i32 @phpdbg_call_register(i32 %.val, ptr %.val54)
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !171 ; 2 uses
  %.not51 = icmp eq ptr %i.bo, null
  %i.bp = load i32, ptr %1, align 8, !tbaa !223   ; 2 uses
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1544), align 8, !tbaa !172 ; 2 uses
  br i1 %.not51, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = call i32 (ptr, ...) @phpdbg_output_err_buf(ptr noundef nonnull @.str.184, ptr noundef nonnull %i.bo, i32 noundef %i.bp, ptr noundef %i.bf, ptr noundef %i.bq) #25 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bs = call i32 (ptr, ...) @phpdbg_output_err_buf(ptr noundef nonnull @.str.185, i32 noundef %i.bp, ptr noundef %i.bf, ptr noundef %i.bq) #25 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.t, %bb.u, %bb.r, %bb.p
  call void @phpdbg_activate_err_buf(i1 noundef zeroext false) #25
  call void @phpdbg_free_err_buf() #25
  call void @phpdbg_stack_free(ptr noundef nonnull %3) #25
  call void @phpdbg_destroy_input(ptr noundef nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  %i.bu = icmp eq ptr %i.bt, %2
  call void @llvm.assume(i1 %i.bu)
  br label %bb.y

bb.w:                                             ; preds = %bb.o
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  %i.bw = icmp eq ptr %i.bv, %2
  call void @llvm.assume(i1 %i.bw)
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  %i.bx = load i64, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !76 ; 2 uses
  %i.by = and i64 %i.bx, -786433
  store i64 %i.by, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !76
  %i.bz = and i64 %i.bx, 65536
  %.not50 = icmp eq i64 %i.bz, 0
  br i1 %.not50, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_zend_bailout(ptr noundef nonnull @.str.78, i32 noundef 264) #27
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.v
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.z

.critedge58:                                      ; preds = %bb.c, %bb.a
  store i8 0, ptr %0, align 1, !tbaa !81
  br label %bb.z

bb.z:                                             ; preds = %.critedge58, %.critedge, %.critedge, %bb.y, %bb.m, %bb.n, %bb.h, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define hidden void @phpdbg_try_file_init(ptr noundef %0, i64 %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca [500 x i8], align 16              ; 5 uses
  %4 = alloca %struct.phpdbg_init_state, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %3) #25
  %.not11 = icmp eq i32 %i.b, -1
  br i1 %.not11, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.62) ; 4 uses
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %i.d, align 8, !tbaa !171
  %i.e = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 500, ptr noundef nonnull %i.c)
  %.not1315 = icmp eq ptr %i.e, null
  br i1 %.not1315, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  call fastcc void @phpdbg_line_init(ptr noundef %i.a, ptr noundef %4)
  %i.f = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 500, ptr noundef nonnull %i.c)
  %.not13 = icmp eq ptr %i.f, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !229

._crit_edge:                                      ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !169 ; 2 uses
  %.not14 = icmp eq ptr %.pre, null
  br i1 %.not14, label %._crit_edge.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %.pre) #25
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d, %bb.e, %._crit_edge
  %i.g = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !57
  %i.i = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.h, ptr noundef nonnull @.str.63, ptr noundef nonnull %0) #25 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.thread
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %0) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #8

declare i32 @phpdbg_print(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @phpdbg_init(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !75
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @phpdbg_try_file_init(ptr noundef nonnull %0, i64 poison, i1 noundef zeroext true)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.64) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.d = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #25 ; 0 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !75
  call void @phpdbg_try_file_init(ptr noundef %i.e, i64 poison, i1 noundef zeroext false)
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !75
  call void @free(ptr noundef %i.f) #25
  %.not19 = icmp eq ptr %i.c, null
  %spec.store.select = select i1 %.not19, ptr @.str.67, ptr %i.c ; 2 uses
  %i.g = load i8, ptr %spec.store.select, align 1, !tbaa !81
  %.not2029 = icmp eq i8 %i.g, 0
  br i1 %.not2029, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %.thread
  %.030 = phi ptr [ %i.o, %.thread ], [ %spec.store.select, %bb.d ] ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.h = getelementptr i8, ptr %.030, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !81    ; 2 uses
  %.not21 = icmp eq i8 %i.i, 58
  br i1 %.not21, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %.critedge, label %bb.e, !llvm.loop !230

.thread:                                          ; preds = %bb.e
  %i.k = getelementptr i8, ptr %.030, i64 %indvars.iv ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !81
  %i.l = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.68, ptr noundef nonnull %.030, ptr noundef nonnull @.str.69) #25 ; 0 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !75
  call void @phpdbg_try_file_init(ptr noundef %i.m, i64 poison, i1 noundef zeroext false)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !75
  call void @free(ptr noundef %i.n) #25
  %i.o = getelementptr i8, ptr %i.k, i64 1        ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !81
  %.not20 = icmp eq i8 %i.p, 0
  br i1 %.not20, label %.loopexit, label %.preheader, !llvm.loop !231

.critedge:                                        ; preds = %bb.f
  %i.q = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.68, ptr noundef nonnull %.030, ptr noundef nonnull @.str.69) #25 ; 0 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !75
  call void @phpdbg_try_file_init(ptr noundef %i.r, i64 poison, i1 noundef zeroext false)
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !75
  call void @free(ptr noundef %i.s) #25
  br label %.loopexit

end_hunk_0
