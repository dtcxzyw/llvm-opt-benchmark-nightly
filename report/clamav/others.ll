Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/others?download=true
inline.NumInlined: 32
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cl_init:bb.a
  br i1 %i.aj, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ak = call ptr @dlerror() #22                 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.162) #22
  br label %get_module_function.exit.thread

bb.x:                                             ; preds = %bb.v
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.162, ptr noundef nonnull %i.ak) #22
  br label %get_module_function.exit.thread

bb.y:                                             ; preds = %bb.u
  store ptr %i.ai, ptr @cli_unrar_open, align 8, !tbaa !13
  %i.am = call ptr @dlsym(ptr noundef nonnull %.5.i.i, ptr noundef nonnull @.str.163) #22 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ao = call ptr @dlerror() #22                 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.163) #22
  br label %get_module_function.exit.thread

bb.ab:                                            ; preds = %bb.z
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.163, ptr noundef nonnull %i.ao) #22
  br label %get_module_function.exit.thread

bb.ac:                                            ; preds = %bb.y
  store ptr %i.am, ptr @cli_unrar_peek_file_header, align 8, !tbaa !13
  %i.aq = call ptr @dlsym(ptr noundef nonnull %.5.i.i, ptr noundef nonnull @.str.164) #22 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.as = call ptr @dlerror() #22                 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.164) #22
  br label %get_module_function.exit.thread

bb.af:                                            ; preds = %bb.ad
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.164, ptr noundef nonnull %i.as) #22
  br label %get_module_function.exit.thread

bb.ag:                                            ; preds = %bb.ac
  store ptr %i.aq, ptr @cli_unrar_extract_file, align 8, !tbaa !13
  %i.au = call ptr @dlsym(ptr noundef nonnull %.5.i.i, ptr noundef nonnull @.str.165) #22 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.aw = call ptr @dlerror() #22                 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.165) #22
  br label %get_module_function.exit.thread

bb.aj:                                            ; preds = %bb.ah
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.165, ptr noundef nonnull %i.aw) #22
  br label %get_module_function.exit.thread

bb.ak:                                            ; preds = %bb.ag
  store ptr %i.au, ptr @cli_unrar_skip_file, align 8, !tbaa !13
  %i.ay = call ptr @dlsym(ptr noundef nonnull %.5.i.i, ptr noundef nonnull @.str.166) #22 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.ba = call ptr @dlerror() #22                 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.166) #22
  br label %get_module_function.exit.thread

bb.an:                                            ; preds = %bb.al
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.166, ptr noundef nonnull %i.ba) #22
  br label %get_module_function.exit.thread

get_module_function.exit.thread:                  ; preds = %bb.w, %bb.x, %bb.aa, %bb.ab, %bb.ae, %bb.af, %bb.ai, %bb.aj, %bb.an, %bb.am
  %cli_unrar_close.sink = phi ptr [ @cli_unrar_close, %bb.an ], [ @cli_unrar_close, %bb.am ], [ @cli_unrar_extract_file, %bb.af ], [ @cli_unrar_peek_file_header, %bb.ab ], [ @cli_unrar_open, %bb.x ], [ @cli_unrar_open, %bb.w ], [ @cli_unrar_peek_file_header, %bb.aa ], [ @cli_unrar_extract_file, %bb.ae ], [ @cli_unrar_skip_file, %bb.ai ], [ @cli_unrar_skip_file, %bb.aj ]
  store ptr null, ptr %cli_unrar_close.sink, align 8, !tbaa !13
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.167) #22
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.168) #22
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.169) #22
  br label %rarload.exit

bb.ao:                                            ; preds = %bb.ak
  store ptr %i.ay, ptr @cli_unrar_close, align 8, !tbaa !13
  store i32 1, ptr @have_rar, align 4, !tbaa !9
  br label %rarload.exit

rarload.exit:                                     ; preds = %bb.c, %bb.d, %load_module.exit.thread.i, %get_module_function.exit.thread, %bb.ao
  %i.bc = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #22 ; 0 uses
  %i.bd = zext i32 %i.c to i64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !16
  %i.bg = add i32 %i.c, 1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = mul nsw i64 %i.bf, %i.bh
  %i.bj = add nsw i64 %i.bi, %i.bd
  %i.bk = call i64 @clock() #22
  %i.bl = add nsw i64 %i.bj, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  call void @srand(i32 noundef %i.bm) #22
  %i.bn = call i32 @bytecode_init() #22           ; 2 uses
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %rarload.exit
  call void @xmlInitParser() #22
  br label %bb.aq

bb.aq:                                            ; preds = %rarload.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i32 %i.bn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #4

declare zeroext i1 @clrs_log_init() local_unnamed_addr #5

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #5

declare i32 @cl_initialize_crypto() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #4

declare i32 @bytecode_init() local_unnamed_addr #5

declare void @xmlInitParser() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define noundef ptr @cl_engine_new() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(1248) ptr @calloc(i64 noundef 1, i64 noundef 1248) #23 ; 47 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread113, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 120000, ptr %i.b, align 4, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 419430400, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 104857600, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store <4 x i32> <i32 17, i32 10000, i32 3, i32 3>, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  store i64 41943040, ptr %i.f, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  store i64 41943040, ptr %i.g, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  store i64 8388608, ptr %i.h, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  store i64 20971520, ptr %i.i, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  store i64 1048576, ptr %i.j, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 65536, ptr %i.k, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  store i32 1, ptr %i.l, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1076
  store i32 60000, ptr %i.m, align 4, !tbaa !48
  store i32 1, ptr %i.a, align 8, !tbaa !141
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.n, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 3, ptr %i.o, align 4, !tbaa !50
  %i.p = tail call i32 @EVP_default_properties_is_fips_enabled(ptr noundef null) #22
  %.not94 = icmp eq i32 %i.p, 0
  br i1 %.not94, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %0 = load i64, ptr %i.q, align 8, !tbaa !51
  %1 = or i64 %0, 64
  store i64 %1, ptr %i.q, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = tail call ptr @mpool_create() #22        ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 9 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !52
  %.not95 = icmp eq ptr %i.r, null
  br i1 %.not95, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @mpool_calloc(ptr noundef nonnull %i.r, i64 noundef 15, i64 noundef 8) #22 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.t, ptr %i.u, align 8, !tbaa !142
  %.not96 = icmp eq ptr %i.t, null
  br i1 %.not96, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %2 = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.v = tail call ptr @cli_dconf_init(ptr noundef %2) #22 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.v, ptr %i.w, align 8, !tbaa !143
  %.not97 = icmp eq ptr %i.v, null
  br i1 %.not97, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.x = tail call ptr @mpool_calloc(ptr noundef %3, i64 noundef 3, i64 noundef 8) #22 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store ptr %i.x, ptr %i.y, align 8, !tbaa !144
  %.not98 = icmp eq ptr %i.x, null
  br i1 %.not98, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  tail call void @crtmgr_init(ptr noundef nonnull %i.z) #22
  %i.aa = tail call i32 @crtmgr_add_roots(ptr noundef nonnull %i.a, ptr noundef nonnull %i.z, i32 noundef 0) #22
  %.not99 = icmp eq i32 %i.aa, 0
  br i1 %.not99, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #23 ; 9 uses
  %.not100 = icmp eq ptr %i.ab, null
  br i1 %.not100, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.ac, ptr noundef null) #22
  %.not101 = icmp eq i32 %i.ad, 0
  br i1 %.not101, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr %i.a, ptr %i.ae, align 8, !tbaa !145
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  store i32 50, ptr %i.af, align 4, !tbaa !146
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i32 1048576, ptr %i.ag, align 8, !tbaa !147
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  store i32 10, ptr %i.ah, align 4, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.sink = phi ptr [ %i.ab, %bb.k ], [ null, %bb.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1128
  store ptr %.sink, ptr %i.ai, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1136
  store ptr null, ptr %i.aj, align 8, !tbaa !148
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1160
  store ptr null, ptr %i.ak, align 8, !tbaa !149
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1168
  store ptr @clamav_stats_flush, ptr %i.al, align 8, !tbaa !150
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1144
  store ptr @clamav_stats_remove_sample, ptr %i.am, align 8, !tbaa !151
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  store ptr @clamav_stats_decrement_count, ptr %i.an, align 8, !tbaa !152
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 1176
  store ptr @clamav_stats_get_num, ptr %i.ao, align 8, !tbaa !153
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  store ptr @clamav_stats_get_size, ptr %i.ap, align 8, !tbaa !154
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 1192
  store ptr @clamav_stats_get_hostid, ptr %i.aq, align 8, !tbaa !155
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  store i32 50, ptr %i.ar, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 1204
  store i32 100, ptr %i.as, align 4, !tbaa !59
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 1208
  store i32 16, ptr %i.at, align 8, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  store i64 100000, ptr %i.au, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 1224
  store i64 2000, ptr %i.av, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  store i64 104857600, ptr %i.aw, align 8, !tbaa !63
  %i.ax = tail call i32 @cli_yara_init(ptr noundef nonnull %i.a) #22
  %.not102 = icmp eq i32 %i.ax, 0
  br i1 %.not102, label %.critedge, label %bb.m

.critedge:                                        ; preds = %bb.l
  %i.ay = tail call ptr @getenv(ptr noundef nonnull @.str.45) #22 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  %spec.store.select = select i1 %i.az, ptr @.str.46, ptr %i.ay
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.bb = tail call ptr @cli_mpool_strdup(ptr noundef %i.ba, ptr noundef nonnull %spec.store.select) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !64
  %i.bd = tail call ptr @cl_retver() #22
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.47, ptr noundef %i.bd) #22
  br label %bb.y

.thread113:                                       ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.37) #22
  br label %bb.y

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.str.38.sink = phi ptr [ @.str.43, %bb.j ], [ @.str.38, %bb.d ], [ @.str.39, %bb.e ], [ @.str.40, %bb.f ], [ @.str.41, %bb.g ], [ @.str.42, %bb.h ], [ @.str.44, %bb.l ]
  %.0.ph = phi ptr [ %i.ab, %bb.j ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ %i.ab, %bb.l ] ; 2 uses
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull %.str.38.sink) #22
  %i.be = load ptr, ptr %i.s, align 8, !tbaa !52  ; 3 uses
  %.not104 = icmp eq ptr %i.be, null
  br i1 %.not104, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !64 ; 2 uses
  %.not105 = icmp eq ptr %i.bg, null
  br i1 %.not105, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @mpool_free(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bg) #22
  %.pre116.pre117.pre119.pre = load ptr, ptr %i.s, align 8, !tbaa !52
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre116.pre117.pre119 = phi ptr [ %.pre116.pre117.pre119.pre, %bb.o ], [ %i.be, %bb.n ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !144 ; 2 uses
  %.not106 = icmp eq ptr %i.bi, null
  br i1 %.not106, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @mpool_free(ptr noundef %.pre116.pre117.pre119, ptr noundef nonnull %i.bi) #22
  %.pre116.pre117.pre = load ptr, ptr %i.s, align 8, !tbaa !52
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre116.pre117 = phi ptr [ %.pre116.pre117.pre, %bb.q ], [ %.pre116.pre117.pre119, %bb.p ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !143 ; 2 uses
  %.not107 = icmp eq ptr %i.bk, null
  br i1 %.not107, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @mpool_free(ptr noundef %.pre116.pre117, ptr noundef nonnull %i.bk) #22
  %.pre116.pre = load ptr, ptr %i.s, align 8, !tbaa !52
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pre116 = phi ptr [ %.pre116.pre, %bb.s ], [ %.pre116.pre117, %bb.r ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !142 ; 2 uses
  %.not108 = icmp eq ptr %i.bm, null
  br i1 %.not108, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @mpool_free(ptr noundef %.pre116, ptr noundef nonnull %i.bm) #22
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !52
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = phi ptr [ %.pre, %bb.u ], [ %.pre116, %bb.t ]
  tail call void @mpool_destroy(ptr noundef %i.bn) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.m, %bb.v
  tail call void @free(ptr noundef nonnull %i.a) #22
  %.not109 = icmp eq ptr %.0.ph, null
  br i1 %.not109, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %.0.ph) #22
  br label %bb.y

bb.y:                                             ; preds = %.thread113, %.critedge, %bb.w, %bb.x
  %.1 = phi ptr [ null, %bb.x ], [ null, %bb.w ], [ %i.a, %.critedge ], [ null, %.thread113 ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #5

declare i32 @EVP_default_properties_is_fips_enabled(ptr noundef) local_unnamed_addr #5

declare ptr @mpool_create() local_unnamed_addr #5

declare ptr @mpool_calloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare ptr @cli_dconf_init(ptr noundef) local_unnamed_addr #5

declare void @crtmgr_init(ptr noundef) local_unnamed_addr #5

declare i32 @crtmgr_add_roots(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @clamav_stats_flush(ptr noundef, ptr noundef) #5

declare void @clamav_stats_remove_sample(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

declare void @clamav_stats_decrement_count(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

declare i64 @clamav_stats_get_num(ptr noundef) #5

declare i64 @clamav_stats_get_size(ptr noundef) #5

declare ptr @clamav_stats_get_hostid(ptr noundef) #5

declare i32 @cli_yara_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #8

declare ptr @cli_mpool_strdup(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @cl_retver() local_unnamed_addr #5
end_hunk_0
begin_hunk_1_@cl_engine_get_num:bb.a

bb.ag:                                            ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !58
  %i.bx = zext i32 %i.bw to i64
  br label %bb.ap

bb.ah:                                            ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1204
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !59
  %i.ca = zext i32 %i.bz to i64
  br label %bb.ap

bb.ai:                                            ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !60
  %i.cd = zext i32 %i.cc to i64
  br label %bb.ap

bb.aj:                                            ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !38
  %i.cg = zext i32 %i.cf to i64
  br label %bb.ap

bb.ak:                                            ; preds = %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !61
  br label %bb.ap

bb.al:                                            ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !62
  br label %bb.ap

bb.am:                                            ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !63
  br label %bb.ap

bb.an:                                            ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.63) #22
  br i1 %.not44, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 3, ptr %2, align 4, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.b, %bb.c, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.0 = phi i64 [ -1, %bb.b ], [ %i.c, %bb.g ], [ %i.e, %bb.h ], [ %i.g, %bb.i ], [ %i.j, %bb.j ], [ %i.m, %bb.k ], [ %i.o, %bb.l ], [ %i.q, %bb.m ], [ %i.s, %bb.n ], [ %i.u, %bb.o ], [ %i.w, %bb.p ], [ %i.z, %bb.q ], [ %i.ac, %bb.r ], [ %i.af, %bb.s ], [ %i.ai, %bb.t ], [ %i.al, %bb.u ], [ %i.ao, %bb.v ], [ %i.ar, %bb.w ], [ %i.au, %bb.x ], [ %i.ax, %bb.y ], [ %i.ba, %bb.z ], [ %i.bd, %bb.aa ], [ %i.bg, %bb.ab ], [ %i.bj, %bb.ac ], [ %i.bm, %bb.ad ], [ %i.bp, %bb.ae ], [ %i.bu, %bb.af ], [ %i.bx, %bb.ag ], [ %i.ca, %bb.ah ], [ %i.cd, %bb.ai ], [ %i.cg, %bb.aj ], [ %i.ci, %bb.ak ], [ %i.ck, %bb.al ], [ %i.cm, %bb.am ], [ -1, %bb.c ], [ -1, %bb.ao ], [ -1, %bb.an ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 21) i32 @cl_engine_set_str(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.l [
    i32 6, label %bb.c
    i32 13, label %bb.f
    i32 37, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %.not32 = icmp eq ptr %i.b, null
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  tail call void @mpool_free(ptr noundef %i.d, ptr noundef nonnull %i.b) #22
  store ptr null, ptr %i.a, align 8, !tbaa !73
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.g = tail call ptr @cli_mpool_strdup(ptr noundef %i.f, ptr noundef %2) #22 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !73
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.n, label %bb.m

bb.f:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74   ; 2 uses
  %.not31 = icmp eq ptr %i.j, null
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  tail call void @mpool_free(ptr noundef %i.l, ptr noundef nonnull %i.j) #22
  store ptr null, ptr %i.i, align 8, !tbaa !74
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  %i.o = tail call ptr @cli_mpool_strdup(ptr noundef %i.n, ptr noundef %2) #22 ; 2 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !74
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.n, label %bb.m

bb.i:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64   ; 2 uses
  %.not30 = icmp eq ptr %i.r, null
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  tail call void @mpool_free(ptr noundef %i.t, ptr noundef nonnull %i.r) #22
  store ptr null, ptr %i.q, align 8, !tbaa !64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52
  %i.w = tail call ptr @cli_mpool_strdup(ptr noundef %i.v, ptr noundef %2) #22 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !64
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.61) #22
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.h, %bb.e
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.h, %bb.e, %bb.a, %bb.m, %bb.l
  %.0 = phi i32 [ 3, %bb.l ], [ 2, %bb.a ], [ 0, %bb.m ], [ 20, %bb.e ], [ 20, %bb.h ], [ 20, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @cl_engine_get_str(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.64) #22
  %.not13 = icmp eq ptr %2, null
  br i1 %.not13, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %2, align 4, !tbaa !9
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %.not14 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  switch i32 %1, label %bb.j [
    i32 6, label %bb.g
    i32 13, label %bb.h
    i32 37, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.63) #22
  br i1 %.not14, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr %2, align 4, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.b, %bb.c, %bb.i, %bb.h, %bb.g
  %.0 = phi ptr [ null, %bb.b ], [ %i.b, %bb.g ], [ %i.d, %bb.h ], [ %i.f, %bb.i ], [ null, %bb.c ], [ null, %bb.k ], [ null, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @cl_engine_settings_copy(ptr nofree noundef readonly %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(384) ptr @malloc(i64 noundef 384) #24 ; 34 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.65, i64 noundef 384) #22
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load <2 x i32>, ptr %i.b, align 4, !tbaa !9
  store <2 x i32> %i.c, ptr %i.a, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74   ; 2 uses
  %.not112 = icmp eq ptr %i.h, null
  br i1 %.not112, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @strdup(ptr noundef nonnull %i.h) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.m, ptr %i.n, align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %i.p, ptr %i.q, align 4, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = load <2 x i64>, ptr %i.r, align 8, !tbaa !80
  store <2 x i64> %i.t, ptr %i.s, align 8, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.y = load <2 x i64>, ptr %i.w, align 8, !tbaa !80
  store <2 x i64> %i.y, ptr %i.x, align 8, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.ab = load <2 x i64>, ptr %i.z, align 8, !tbaa !80
  store <2 x i64> %i.ab, ptr %i.aa, align 8, !tbaa !80
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !81
  %i.af = load <4 x i32>, ptr %i.u, align 8, !tbaa !9
  store <4 x i32> %i.af, ptr %i.v, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ai = load <2 x i32>, ptr %i.ag, align 8, !tbaa !9
  store <2 x i32> %i.ai, ptr %i.ah, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !72
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !73 ; 2 uses
  %.not113 = icmp eq ptr %i.an, null
  br i1 %.not113, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = tail call noalias ptr @strdup(ptr noundef nonnull %i.an) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ap = phi ptr [ %i.ao, %bb.f ], [ null, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.as, ptr %i.at, align 8, !tbaa !85
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.aw = load <2 x ptr>, ptr %i.au, align 8, !tbaa !13
  store <2 x ptr> %i.aw, ptr %i.av, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.az = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !13
  store <2 x ptr> %i.az, ptr %i.ay, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !86
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !87
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bf = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !13
  store <2 x ptr> %i.bf, ptr %i.be, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.bi = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !13
  store <2 x ptr> %i.bi, ptr %i.bh, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !157
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bo = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !13
  store <2 x ptr> %i.bo, ptr %i.bn, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.br = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !13
  store <2 x ptr> %i.br, ptr %i.bq, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !51
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !89
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !46
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !90
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.ca = load <2 x ptr>, ptr %i.by, align 8, !tbaa !13
  store <2 x ptr> %i.ca, ptr %i.bz, align 8, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.cd = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !13
  store <2 x ptr> %i.cd, ptr %i.cc, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.cg = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !13
  store <2 x ptr> %i.cg, ptr %i.cf, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.cj = load <2 x ptr>, ptr %i.ch, align 8, !tbaa !13
  store <2 x ptr> %i.cj, ptr %i.ci, align 8, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.cm = load <2 x i32>, ptr %i.ck, align 8, !tbaa !9
  store <2 x i32> %i.cm, ptr %i.cl, align 8, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !60
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !91
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !tbaa !80
  store <2 x i64> %i.cs, ptr %i.cr, align 8, !tbaa !80
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !63
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !92
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define range(i32 0, 21) i32 @cl_engine_settings_apply(ptr nofree noundef initializes((20, 32), (48, 52), (56, 104), (1072, 1084), (1088, 1128)) %0, ptr nofree noundef readonly %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load <2 x i32>, ptr %1, align 8, !tbaa !9
  store <2 x i32> %i.b, ptr %i.a, align 4, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.d, ptr %i.e, align 4, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.g, ptr %i.h, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !79
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.j, ptr %i.k, align 4, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load <2 x i64>, ptr %i.l, align 8, !tbaa !80
  store <2 x i64> %i.n, ptr %i.m, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.s = load <2 x i64>, ptr %i.q, align 8, !tbaa !80
  store <2 x i64> %i.s, ptr %i.r, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.v = load <2 x i64>, ptr %i.t, align 8, !tbaa !80
  store <2 x i64> %i.v, ptr %i.u, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.x = load i64, ptr %i.w, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %i.x, ptr %i.y, align 8, !tbaa !45
  %i.z = load <4 x i32>, ptr %i.o, align 8, !tbaa !9
  store <4 x i32> %i.z, ptr %i.p, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ac = load <2 x i32>, ptr %i.aa, align 8, !tbaa !9
  store <2 x i32> %i.ac, ptr %i.ab, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !82
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !89
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !90
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !74 ; 2 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52
  tail call void @mpool_free(ptr noundef %i.ap, ptr noundef nonnull %i.an) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !77 ; 2 uses
  %.not122 = icmp eq ptr %i.ar, null
  br i1 %.not122, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52
  %i.au = tail call ptr @cli_mpool_strdup(ptr noundef %i.at, ptr noundef nonnull %i.ar) #22 ; 2 uses
  store ptr %i.au, ptr %i.am, align 8, !tbaa !74
  %.not123 = icmp eq ptr %i.au, null
  br i1 %.not123, label %bb.l, label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %i.am, align 8, !tbaa !74
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !73 ; 2 uses
  %.not124 = icmp eq ptr %i.aw, null
  br i1 %.not124, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52
  tail call void @mpool_free(ptr noundef %i.ay, ptr noundef nonnull %i.aw) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !83 ; 2 uses
  %.not125 = icmp eq ptr %i.ba, null
  br i1 %.not125, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !52
  %i.bd = tail call ptr @cli_mpool_strdup(ptr noundef %i.bc, ptr noundef nonnull %i.ba) #22 ; 2 uses
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !73
  %.not126 = icmp eq ptr %i.bd, null
  br i1 %.not126, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.av, align 8, !tbaa !73
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !85
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !84
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bj = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !13
  store <2 x ptr> %i.bj, ptr %i.bi, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bm = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !13
  store <2 x ptr> %i.bm, ptr %i.bl, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !87
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !86
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bs = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !13
  store <2 x ptr> %i.bs, ptr %i.br, align 8, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bv = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !13
  store <2 x ptr> %i.bv, ptr %i.bu, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.by = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !13
  store <2 x ptr> %i.by, ptr %i.bx, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cb = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !13
  store <2 x ptr> %i.cb, ptr %i.ca, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !158
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !93
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ch = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !13
  store <2 x ptr> %i.ch, ptr %i.cg, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.ck = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !13
  store <2 x ptr> %i.ck, ptr %i.cj, align 8, !tbaa !13
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.cn = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !13
  store <2 x ptr> %i.cn, ptr %i.cm, align 8, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.cq = load <2 x ptr>, ptr %i.co, align 8, !tbaa !13
  store <2 x ptr> %i.cq, ptr %i.cp, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.ct = load <2 x i32>, ptr %i.cr, align 8, !tbaa !9
  store <2 x i32> %i.ct, ptr %i.cs, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !91
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store i32 %i.cv, ptr %i.cw, align 8, !tbaa !60
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.cz = load <2 x i64>, ptr %i.cx, align 8, !tbaa !80
  store <2 x i64> %i.cz, ptr %i.cy, align 8, !tbaa !80
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.db = load i64, ptr %i.da, align 8, !tbaa !92
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !63
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.d, %bb.k
  %.0 = phi i32 [ 0, %bb.k ], [ 20, %bb.d ], [ 20, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define range(i32 0, 3) i32 @cl_engine_settings_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #12 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  tail call void @free(ptr noundef %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83
  tail call void @free(ptr noundef %i.d) #22
end_hunk_1
