Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-benchmark?download=true
inline.NumInlined: 91
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@main:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i8 44, ptr %i.c, align 16, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ua, ptr noundef nonnull align 1 dereferenceable(10) @.str.122, i64 10, i1 false)
  store i8 44, ptr %i.ub, align 1, !tbaa !50
  store i8 0, ptr %i.uc, align 4, !tbaa !50
  %i.aas = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.aaq, ptr noundef nonnull dereferenceable(1) %i.c) #21
  %.not426 = icmp eq ptr %i.aas, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br i1 %.not426, label %.thread573, label %bb.eg

.thread573:                                       ; preds = %test_is_selected.exit342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  br label %test_is_selected.exit347

bb.eg:                                            ; preds = %test_is_selected.exit337, %test_is_selected.exit342, %test_is_selected.exit337.thread
  %i.aat = call i32 (ptr, ptr, ...) @redisFormatCommand(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.130, ptr noundef nonnull %.0127) #20
  %i.aau = load ptr, ptr %i.af, align 8, !tbaa !22
  call fastcc void @benchmark(ptr noundef nonnull @.str.131, ptr noundef %i.aau, i32 noundef %i.aat)
  %i.aav = load ptr, ptr %i.af, align 8, !tbaa !22
  call void @free(ptr noundef %i.aav) #20
  %.pre480 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 240), align 8, !tbaa !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.aaw = icmp eq ptr %.pre480, null
  br i1 %i.aaw, label %test_is_selected.exit347.thread, label %test_is_selected.exit347

test_is_selected.exit347.thread:                  ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.eh

test_is_selected.exit347:                         ; preds = %.thread573, %bb.eg
  %i.aax = phi ptr [ %i.aaq, %.thread573 ], [ %.pre480, %bb.eg ] ; 2 uses
  store i8 44, ptr %i.b, align 16, !tbaa !50
  store i32 1952805741, ptr %i.ud, align 1
  store i8 44, ptr %i.ue, align 1, !tbaa !50
  store i8 0, ptr %i.uf, align 2, !tbaa !50
  %i.aay = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.aax, ptr noundef nonnull dereferenceable(1) %i.b) #21
  %.not427 = icmp eq ptr %i.aay, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br i1 %.not427, label %.thread574, label %bb.eh

.thread574:                                       ; preds = %test_is_selected.exit347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  br label %test_is_selected.exit352

bb.eh:                                            ; preds = %test_is_selected.exit347, %test_is_selected.exit347.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #20
  store ptr @.str.133, ptr %i.ag, align 16, !tbaa !22
  %i.aaz = call ptr @hi_sdsnew(ptr noundef nonnull @.str.55) #20
  %i.aba = call ptr (ptr, ptr, ...) @hi_sdscatprintf(ptr noundef %i.aaz, ptr noundef nonnull @.str.134, ptr noundef nonnull %.0127) #20 ; 11 uses
  store ptr %i.aba, ptr %i.uj, align 8, !tbaa !22
  store ptr %i.qt, ptr %i.uk, align 16, !tbaa !22
  store ptr %i.aba, ptr %i.ul, align 8, !tbaa !22
  store ptr %i.qt, ptr %i.um, align 16, !tbaa !22
  store ptr %i.aba, ptr %i.un, align 8, !tbaa !22
  store ptr %i.qt, ptr %i.uo, align 16, !tbaa !22
  store ptr %i.aba, ptr %i.up, align 8, !tbaa !22
  store ptr %i.qt, ptr %i.uq, align 16, !tbaa !22
  store ptr %i.aba, ptr %i.ur, align 8, !tbaa !22
  store ptr %i.qt, ptr %i.us, align 16, !tbaa !22
  store ptr %i.aba, ptr %i.ut, align 8, !tbaa !22
  store ptr %i.qt, ptr %i.uu, align 16, !tbaa !22
  store ptr %i.aba, ptr %i.uv, align 8, !tbaa !22
  store ptr %i.qt, ptr %i.uw, align 16, !tbaa !22
  store ptr %i.aba, ptr %i.ux, align 8, !tbaa !22
  store ptr %i.qt, ptr %i.uy, align 16, !tbaa !22
  store ptr %i.aba, ptr %i.uz, align 8, !tbaa !22
  store ptr %i.qt, ptr %i.va, align 16, !tbaa !22
  store ptr %i.aba, ptr %i.vb, align 8, !tbaa !22
  store ptr %i.qt, ptr %i.vc, align 16, !tbaa !22
  %i.abb = call i64 @redisFormatCommandArgv(ptr noundef nonnull %i.af, i32 noundef 21, ptr noundef nonnull %i.ag, ptr noundef null) #20
  %i.abc = trunc i64 %i.abb to i32
  %i.abd = load ptr, ptr %i.af, align 8, !tbaa !22
  call fastcc void @benchmark(ptr noundef nonnull @.str.135, ptr noundef %i.abd, i32 noundef %i.abc)
  %i.abe = load ptr, ptr %i.af, align 8, !tbaa !22
  call void @free(ptr noundef %i.abe) #20
  call void @hi_sdsfree(ptr noundef %i.aba) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #20
  %.pre481 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 240), align 8, !tbaa !57 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.abf = icmp eq ptr %.pre481, null
  br i1 %i.abf, label %test_is_selected.exit352.thread, label %test_is_selected.exit352

test_is_selected.exit352.thread:                  ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ei

test_is_selected.exit352:                         ; preds = %.thread574, %bb.eh
  %i.abg = phi ptr [ %i.aax, %.thread574 ], [ %.pre481, %bb.eh ]
  store i8 44, ptr %i.a, align 16, !tbaa !50
  store i32 1684300152, ptr %i.ug, align 1
  store i8 44, ptr %i.uh, align 1, !tbaa !50
  store i8 0, ptr %i.ui, align 2, !tbaa !50
  %i.abh = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.abg, ptr noundef nonnull dereferenceable(1) %i.a) #21
  %.not428 = icmp eq ptr %i.abh, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %.not428, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %test_is_selected.exit352.thread, %test_is_selected.exit352
  %i.abi = call i32 (ptr, ptr, ...) @redisFormatCommand(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.137, ptr noundef nonnull %.0127, ptr noundef nonnull %i.qt) #20
  %i.abj = load ptr, ptr %i.af, align 8, !tbaa !22
  call fastcc void @benchmark(ptr noundef nonnull @.str.138, ptr noundef %i.abj, i32 noundef %i.abi)
  %i.abk = load ptr, ptr %i.af, align 8, !tbaa !22
  call void @free(ptr noundef %i.abk) #20
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %test_is_selected.exit352
  %i.abl = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 220), align 4, !tbaa !54
  %.not180 = icmp eq i32 %i.abl, 0
  br i1 %.not180, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %putchar181 = call i32 @putchar(i32 10)         ; 0 uses
  br label %bb.el

bb.el:                                            ; preds = %bb.ej, %bb.ek
  %i.abm = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 224), align 8, !tbaa !55
  %.not182 = icmp eq i32 %i.abm, 0
  br i1 %.not182, label %bb.em, label %bb.dn, !llvm.loop !167

bb.em:                                            ; preds = %bb.el
  call void @zfree(ptr noundef %i.qt) #20
  call void @freeCliConnInfo(ptr noundef nonnull byval(%struct.cliConnInfo) align 8 getelementptr inbounds nuw (i8, ptr @config, i64 8)) #20
  %i.abn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 288), align 8, !tbaa !102 ; 4 uses
  %.not183 = icmp eq ptr %i.abn, null
  br i1 %.not183, label %bb.er, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !100 ; 2 uses
  %.not.i353 = icmp eq ptr %i.abo, null
  br i1 %.not.i353, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @hi_sdsfree(ptr noundef nonnull %i.abo) #20
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !101 ; 2 uses
  %.not6.i354 = icmp eq ptr %i.abq, null
  br i1 %.not6.i354, label %freeRedisConfig.exit355, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @hi_sdsfree(ptr noundef nonnull %i.abq) #20
  br label %freeRedisConfig.exit355

freeRedisConfig.exit355:                          ; preds = %bb.ep, %bb.eq
  call void @zfree(ptr noundef nonnull %i.abn) #20
  br label %bb.er

bb.er:                                            ; preds = %bb.em, %freeRedisConfig.exit355, %bb.cx, %bb.dl
  %.1 = phi i32 [ 1, %bb.cx ], [ 0, %bb.dl ], [ 0, %freeRedisConfig.exit355 ], [ 0, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #20
  ret i32 %.1
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare ptr @aeCreateEventLoop(i32 noundef) local_unnamed_addr #3

declare i64 @aeCreateTimeEvent(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @listCreate() local_unnamed_addr #3

declare i32 @cliSecureInit() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @getRedisConfig(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @zcalloc(i64 noundef 16) #26 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @getRedisContext(ptr noundef %0, i32 noundef %1, ptr noundef %2) ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @freeRedisConfig(ptr noundef %i.b)
  tail call void @exit(i32 noundef 1) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 (ptr, ptr, ...) @redisAppendCommand(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160) #20 ; 0 uses
  %i.f = tail call i32 (ptr, ptr, ...) @redisAppendCommand(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.161) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.h = call i32 @redisGetReply(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #20
  %.pre = load ptr, ptr %i.a, align 8             ; 11 uses
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  %i.j = select i1 %i.i, ptr %.pre, ptr null
  %i.k = icmp ne ptr %.pre, null
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %.pre, align 8, !tbaa !91  ; 2 uses
  %cond = icmp eq i32 %i.l, 2
  br i1 %cond, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !111
  %i.o = icmp ult i64 %i.n, 2
  br i1 %i.o, label %.threadthread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !92   ; 2 uses
  %.not55 = icmp eq ptr %i.u, null
  %spec.store.select = select i1 %.not55, ptr @.str.55, ptr %i.u
  %i.v = call ptr @hi_sdsnew(ptr noundef nonnull %spec.store.select) #20
  store ptr %i.v, ptr %i.b, align 8, !tbaa !100
  %i.w = call i32 @redisGetReply(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #20
  call void @freeReplyObject(ptr noundef nonnull %.pre) #20
  %i.x = icmp eq i32 %i.w, 0                      ; 2 uses
  %i.y = load ptr, ptr %i.a, align 8              ; 11 uses
  %i.z = select i1 %i.x, ptr %i.y, ptr null
  %i.aa = icmp ne ptr %i.y, null
  %or.cond.1 = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %or.cond.1, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %i.y, align 8, !tbaa !91  ; 2 uses
  %cond.1 = icmp eq i32 %i.ab, 2
  br i1 %cond.1, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !111
  %i.ae = icmp ult i64 %i.ad, 2
  br i1 %i.ae, label %.threadthread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !112
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !92 ; 2 uses
  %.not55.1 = icmp eq ptr %i.ak, null
  %spec.store.select.1 = select i1 %.not55.1, ptr @.str.55, ptr %i.ak
  %i.al = call ptr @hi_sdsnew(ptr noundef nonnull %spec.store.select.1) #20
  store ptr %i.al, ptr %i.g, align 8, !tbaa !101
  call void @freeReplyObject(ptr noundef nonnull %i.y) #20
  call void @redisFree(ptr noundef nonnull %i.c) #20
  br label %bb.u

bb.k:                                             ; preds = %bb.g, %bb.d
  %.lcssa65 = phi ptr [ %.pre, %bb.d ], [ %i.y, %bb.g ]
  %.lcssa = phi ptr [ %i.j, %bb.d ], [ %i.z, %bb.g ] ; 2 uses
  %.not56 = icmp eq ptr %.lcssa, null
  br i1 %.not56, label %.critedge, label %.threadthread-pre-split

.threadthread-pre-split:                          ; preds = %bb.k, %bb.f, %bb.i
  %.lcssa78.ph = phi ptr [ %.pre, %bb.f ], [ %i.y, %bb.i ], [ %.lcssa, %bb.k ]
  %.lcssa6577.ph = phi ptr [ %.pre, %bb.f ], [ %i.y, %bb.i ], [ %.lcssa65, %bb.k ] ; 2 uses
  %.pr = load i32, ptr %.lcssa6577.ph, align 8, !tbaa !91
  br label %bb.l

bb.l:                                             ; preds = %.threadthread-pre-split, %bb.h, %bb.e
  %3 = phi i32 [ %.pr, %.threadthread-pre-split ], [ %i.ab, %bb.h ], [ %i.l, %bb.e ]
  %.lcssa78 = phi ptr [ %.lcssa78.ph, %.threadthread-pre-split ], [ %i.y, %bb.h ], [ %.pre, %bb.e ] ; 2 uses
  %.lcssa6577 = phi ptr [ %.lcssa6577.ph, %.threadthread-pre-split ], [ %i.y, %bb.h ], [ %.pre, %bb.e ] ; 2 uses
  %i.am = icmp eq i32 %3, 6
  br i1 %i.am, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.lcssa6577, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !92 ; 3 uses
  %i.ap = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(7) @.str.162, i64 noundef 6) #21
  %.not57 = icmp eq i32 %i.ap, 0
  br i1 %.not57, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp eq ptr %2, null
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !40 ; 2 uses
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.155, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.ao) #25 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.at = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.156, ptr noundef nonnull %2, ptr noundef nonnull %i.ao) #25 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  call void @freeReplyObject(ptr noundef nonnull %.lcssa6577) #20
  call void @redisFree(ptr noundef nonnull %i.c) #20
  call fastcc void @freeRedisConfig(ptr noundef %i.b)
  call void @exit(i32 noundef 1) #24
  unreachable

.critedge:                                        ; preds = %bb.l, %bb.k, %bb.m
  %.lcssa79 = phi ptr [ %.lcssa78, %bb.l ], [ null, %bb.k ], [ %.lcssa78, %bb.m ]
  call void @freeReplyObject(ptr noundef %.lcssa79) #20
  call void @redisFree(ptr noundef nonnull %i.c) #20
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge
  call void @hi_sdsfree(ptr noundef nonnull %i.au) #20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !101 ; 2 uses
  %.not6.i = icmp eq ptr %i.av, null
  br i1 %.not6.i, label %freeRedisConfig.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @hi_sdsfree(ptr noundef nonnull %i.av) #20
  br label %freeRedisConfig.exit

freeRedisConfig.exit:                             ; preds = %bb.s, %bb.t
  call void @zfree(ptr noundef nonnull %i.b) #20
  br label %bb.u

bb.u:                                             ; preds = %freeRedisConfig.exit, %bb.j
  %.047 = phi ptr [ %i.b, %bb.j ], [ null, %freeRedisConfig.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  %.1 = phi ptr [ %.047, %bb.u ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @initBenchmarkThreads() unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !103 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !59 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %freeBenchmarkThreads.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %i.d = phi i32 [ %i.j, %bb.e ], [ %i.b, %bb.b ]
  %i.e = phi ptr [ %i.k, %bb.e ], [ %i.a, %bb.b ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %freeBenchmarkThread.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @aeDeleteEventLoop(ptr noundef nonnull %i.i) #20
  br label %freeBenchmarkThread.exit.i

freeBenchmarkThread.exit.i:                       ; preds = %bb.d, %bb.c
  tail call void @zfree(ptr noundef nonnull %i.g) #20
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !103
  %.pre8.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %freeBenchmarkThread.exit.i, %.lr.ph.i
  %i.j = phi i32 [ %.pre8.i, %freeBenchmarkThread.exit.i ], [ %i.d, %.lr.ph.i ] ; 2 uses
  %i.k = phi ptr [ %.pre.i, %freeBenchmarkThread.exit.i ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.l = sext i32 %i.j to i64
  %i.m = icmp slt i64 %indvars.iv.next.i, %i.l
  br i1 %i.m, label %.lr.ph.i, label %freeBenchmarkThreads.exit, !llvm.loop !5

freeBenchmarkThreads.exit:                        ; preds = %bb.e, %bb.b
  %i.n = phi ptr [ %i.a, %bb.b ], [ %i.k, %bb.e ]
  tail call void @zfree(ptr noundef %i.n) #20
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !103
  br label %bb.f

bb.f:                                             ; preds = %freeBenchmarkThreads.exit, %bb.a
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !59
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noalias ptr @zmalloc(i64 noundef %i.q) #26
  store ptr %i.r, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !103
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !59
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %createBenchmarkThread.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %createBenchmarkThread.exit ], [ 0, %bb.f ] ; 3 uses
  %i.u = tail call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #26 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %createBenchmarkThread.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.w, ptr %i.u, align 8, !tbaa !69
  %i.x = tail call ptr @aeCreateEventLoop(i32 noundef 10240) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !115
  %i.z = tail call i64 @aeCreateTimeEvent(ptr noundef %i.x, i64 noundef 1, ptr noundef nonnull @showThroughput, ptr noundef nonnull %i.u, ptr noundef null) #20 ; 0 uses
  br label %createBenchmarkThread.exit

createBenchmarkThread.exit:                       ; preds = %.lr.ph, %bb.g
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !103
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  store ptr %i.u, ptr %i.ab, align 8, !tbaa !105
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !59
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !178

._crit_edge:                                      ; preds = %createBenchmarkThread.exit, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @createClient(ptr noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 272), align 8, !tbaa !60
  %i.f = icmp ne i32 %i.e, 0
  %i.g = icmp sgt i32 %3, -1
  %i.h = and i1 %i.g, %i.f                        ; 4 uses
  %i.i = tail call noalias dereferenceable_or_null(120) ptr @zmalloc(i64 noundef 120) #26 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !118
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 40), align 8, !tbaa !41 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  %or.cond = select i1 %i.l, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 8), align 8, !tbaa !37
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 16), align 8, !tbaa !38
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !59
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 276), align 4, !tbaa !94 ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !70
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 276), align 4, !tbaa !94
  %i.t = srem i32 %i.r, %i.s
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = srem i32 %3, %i.p
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0164 = phi i32 [ %i.t, %bb.e ], [ %i.u, %bb.f ]
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 280), align 8, !tbaa !95
  %i.w = sext i32 %.0164 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !97   ; 4 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164, i32 noundef 644, ptr noundef nonnull @__PRETTY_FUNCTION__.createClient) #22
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !82
  store ptr %i.y, ptr %i.j, align 8, !tbaa !118
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.0162 = phi i32 [ %i.ab, %bb.i ], [ %i.n, %bb.c ] ; 2 uses
  %.0157 = phi ptr [ %i.z, %bb.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.ac = tail call ptr @redisConnectNonBlock(ptr noundef %.0157, i32 noundef %.0162) #20
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.ad = tail call ptr @redisConnectUnixNonBlock(ptr noundef nonnull %i.k) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = phi ptr [ %i.ad, %bb.k ], [ %i.ac, %bb.j ] ; 5 uses
end_hunk_0
