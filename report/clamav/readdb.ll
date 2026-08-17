inline.NumInlined: 52
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@cli_add_content_match_pattern:bb.a
  br label %bb.ao

bb.al:                                            ; preds = %.lr.ph377
  %.not275 = icmp eq i64 %.2225374, 0
  br i1 %.not275, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.29) #20
  br label %.thread301

bb.an:                                            ; preds = %bb.al
  %i.ca = add i16 %.0375, 1
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph377, %bb.aj, %bb.an, %bb.ak
  %.3 = phi i64 [ %i.by, %bb.aj ], [ %i.bz, %bb.ak ], [ 0, %bb.an ], [ %.2225374, %.lr.ph377 ]
  %.1 = phi i16 [ %.0375, %bb.aj ], [ %.0375, %bb.ak ], [ %i.ca, %bb.an ], [ %.0375, %.lr.ph377 ] ; 3 uses
  %i.cb = add nuw i64 %.3233373, 1                ; 2 uses
  %exitcond426.not = icmp eq i64 %i.cb, %i.d
  br i1 %exitcond426.not, label %.preheader, label %.lr.ph377

.lr.ph381:                                        ; preds = %.lr.ph381.preheader, %bb.as
  %.4380 = phi i64 [ %i.cj, %bb.as ], [ 1, %.lr.ph381.preheader ] ; 5 uses
  %i.cc = trunc nuw nsw i64 %.4380 to i32
  %i.cd = add nsw i32 %i.cc, -1
  %i.ce = tail call ptr @cli_strtok(ptr noundef nonnull %2, i32 noundef %i.cd, ptr noundef nonnull @.str.33) #20 ; 4 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph381
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.34, i64 noundef %.4380) #20
  br label %.thread301

bb.aq:                                            ; preds = %.lr.ph381
  %i.cg = load i32, ptr %i.bs, align 8, !tbaa !9
  %i.ch = trunc nuw i64 %.4380 to i16
  %i.ci = tail call i32 @cli_ac_addsig(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.ce, i8 noundef zeroext %3, i32 noundef %i.cg, i16 noundef zeroext %.0.lcssa454, i16 noundef zeroext %i.ch, i16 noundef zeroext %4, i16 noundef zeroext %5, i32 noundef 0, i32 noundef 0, ptr noundef %6, ptr noundef %7, i32 noundef %8) #20 ; 2 uses
  %.not274 = icmp eq i32 %i.ci, 0
  br i1 %.not274, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.35) #20
  tail call void @free(ptr noundef nonnull %i.ce) #20
  br label %.thread301

bb.as:                                            ; preds = %bb.aq
  tail call void @free(ptr noundef nonnull %i.ce) #20
  %i.cj = add nuw nsw i64 %.4380, 1
  %exitcond427.not = icmp eq i64 %.4380, %i.bv
  br i1 %exitcond427.not, label %.thread301, label %.lr.ph381

bb.at:                                            ; preds = %bb.ah
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 330
  %i.cl = load i8, ptr %i.ck, align 2, !tbaa !32
  %i.cm = icmp ne i8 %i.cl, 0
  %i.cn = icmp ne i16 %5, 0
  %or.cond13 = or i1 %i.cn, %i.cm
  %i.co = icmp ne ptr %7, null
  %or.cond15 = or i1 %i.co, %or.cond13
  %i.cp = icmp ne i8 %3, 0
  %or.cond18 = or i1 %i.cp, %or.cond15
  br i1 %or.cond18, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cq = tail call ptr @strpbrk(ptr noundef nonnull %2, ptr noundef nonnull @.str.36) #19
  %.not262 = icmp eq ptr %i.cq, null
  br i1 %.not262, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !33
  %.not263 = icmp eq i32 %i.cs, 0
  br i1 %.not263, label %bb.aw, label %sub_0

sub_0:                                            ; preds = %bb.av
  %i.ct = load i8, ptr %6, align 1
  %.not386 = icmp eq i8 %i.ct, 42
  br i1 %.not386, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.ay, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.cx = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef 44) #19
  %.not265 = icmp eq ptr %i.cx, null
  br i1 %.not265, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %.tail.thread, %bb.av
  %i.cy = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.37) #19
  %.not266 = icmp eq ptr %i.cy, null
  br i1 %.not266, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.cz = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef 36) #19
  %.not267 = icmp eq ptr %i.cz, null
  br i1 %.not267, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %.tail.thread, %.tail, %bb.au, %bb.at
  %i.da = tail call i32 @cli_ac_addsig(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext %4, i16 noundef zeroext %5, i32 noundef 0, i32 noundef 0, ptr noundef %6, ptr noundef %7, i32 noundef %8) #20 ; 2 uses
  %.not272 = icmp eq i32 %i.da, 0
  br i1 %.not272, label %.thread301, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.38) #20
  br label %.thread301

bb.ba:                                            ; preds = %bb.ax
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 9 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !34
  %i.dd = tail call ptr @mpool_calloc(ptr noundef %i.dc, i64 noundef 1, i64 noundef 72) #20 ; 10 uses
  %.not268 = icmp eq ptr %i.dd, null
  br i1 %.not268, label %.thread301, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !34
  %i.df = tail call ptr @cli_mpool_hex2str(ptr noundef %i.de, ptr noundef nonnull %2) #20 ; 2 uses
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !35
  %.not269 = icmp eq ptr %i.df, null
  br i1 %.not269, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !34
  tail call void @mpool_free(ptr noundef %i.dg, ptr noundef nonnull %i.dd) #20
  br label %.thread301

bb.bd:                                            ; preds = %bb.bb
  %i.dh = lshr i64 %i.d, 1
  %i.di = trunc i64 %i.dh to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 56 ; 2 uses
  store i16 %i.di, ptr %i.dj, align 8, !tbaa !38
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !34
  %i.dl = and i32 %8, 64
  %i.dm = tail call ptr @cli_mpool_virname(ptr noundef %i.dk, ptr noundef %1, i32 noundef %i.dl) #20 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !39
  %.not270 = icmp eq ptr %i.dm, null
  br i1 %.not270, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.do = load ptr, ptr %i.db, align 8, !tbaa !34
  %i.dp = load ptr, ptr %i.dd, align 8, !tbaa !35
  tail call void @mpool_free(ptr noundef %i.do, ptr noundef %i.dp) #20
  %i.dq = load ptr, ptr %i.db, align 8, !tbaa !34
  tail call void @mpool_free(ptr noundef %i.dq, ptr noundef nonnull %i.dd) #20
  br label %.thread301

bb.bf:                                            ; preds = %bb.bd
  %i.dr = load i16, ptr %i.dj, align 8, !tbaa !38 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 8, !tbaa !40
  %i.du = icmp ugt i16 %i.dr, %i.dt
  br i1 %i.du, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i16 %i.dr, ptr %i.ds, align 8, !tbaa !40
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.dv = tail call i32 @cli_bm_addpatt(ptr noundef nonnull %0, ptr noundef nonnull %i.dd, ptr noundef nonnull %6) #20 ; 2 uses
  %.not271 = icmp eq i32 %i.dv, 0
  br i1 %.not271, label %.thread301, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.39) #20
  %i.dw = load ptr, ptr %i.db, align 8, !tbaa !34
  %i.dx = load ptr, ptr %i.dd, align 8, !tbaa !35
  tail call void @mpool_free(ptr noundef %i.dw, ptr noundef %i.dx) #20
  %i.dy = load ptr, ptr %i.db, align 8, !tbaa !34
  %i.dz = load ptr, ptr %i.dn, align 8, !tbaa !39
  tail call void @mpool_free(ptr noundef %i.dy, ptr noundef %i.dz) #20
  %i.ea = load ptr, ptr %i.db, align 8, !tbaa !34
  tail call void @mpool_free(ptr noundef %i.ea, ptr noundef nonnull %i.dd) #20
  br label %.thread301

.thread301:                                       ; preds = %bb.as, %.preheader, %bb.ar, %bb.ap, %bb.am, %._crit_edge, %.critedge, %bb.m, %bb.j, %bb.c, %bb.d, %bb.e, %bb.ay, %bb.bh, %.thread298, %bb.ba, %bb.bi, %bb.be, %bb.bc, %bb.az
  %.2228 = phi i32 [ 20, %bb.ba ], [ 0, %bb.ay ], [ %i.z, %bb.e ], [ %i.da, %bb.az ], [ %i.dv, %bb.bi ], [ 20, %bb.be ], [ 4, %bb.bc ], [ 4, %bb.am ], [ 0, %.thread298 ], [ 0, %bb.bh ], [ 20, %._crit_edge ], [ 4, %.critedge ], [ 4, %bb.m ], [ 4, %bb.j ], [ 20, %bb.c ], [ 4, %bb.d ], [ %i.ci, %bb.ar ], [ 4, %bb.ap ], [ 0, %.preheader ], [ 0, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.2228
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @readdb_parse_ldb_subsignature(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [5 x ptr], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !41
  %i.f = load i8, ptr %2, align 1, !tbaa !8
  %i.g = icmp eq i8 %i.f, 36
  br i1 %i.g, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %.not146 = icmp eq i8 %i.k, 36
  br i1 %.not146, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.14, ptr noundef nonnull %2) #20
  br label %.thread158

bb.d:                                             ; preds = %bb.b
  %.not147 = icmp eq ptr %4, null
  br i1 %.not147, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.15) #20
  br label %.thread158

bb.f:                                             ; preds = %bb.d
  %i.l = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #20
  %.not148 = icmp eq i32 %i.l, 3
  br i1 %.not148, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.17, ptr noundef nonnull %2) #20
  br label %.thread158

bb.h:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.d, align 4, !tbaa !43   ; 2 uses
  %i.n = icmp ugt i32 %i.m, 31
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.18, i32 noundef %i.m) #20
  br label %.thread158

bb.j:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = call ptr @mpool_calloc(ptr noundef %i.p, i64 noundef 1, i64 noundef 136) #20 ; 10 uses
  %.not149 = icmp eq ptr %i.q, null
  br i1 %.not149, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.19) #20
  br label %.thread158

bb.l:                                             ; preds = %bb.j
  %i.r = load i32, ptr %i.b, align 4, !tbaa !43
  %i.s = trunc i32 %i.r to i16
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store i16 %i.s, ptr %i.t, align 8, !tbaa !44
  %i.u = load i32, ptr %i.c, align 4, !tbaa !43
  %i.v = trunc i32 %i.u to i16
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  store i16 %i.v, ptr %i.w, align 4, !tbaa !44
  %i.x = load i32, ptr %i.d, align 4, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  store i32 %i.x, ptr %i.y, align 4, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !49   ; 2 uses
  %i.ab = zext i8 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i16 %i.ab, ptr %i.ac, align 8, !tbaa !44
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.ae = zext i8 %i.aa to i64
  %i.af = call ptr @mpool_calloc(ptr noundef %i.ad, i64 noundef %i.ae, i64 noundef 2) #20 ; 2 uses
  store ptr %i.af, ptr %i.q, align 8, !tbaa !50
  %.not150 = icmp eq ptr %i.af, null
  br i1 %.not150, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.q) #20
  br label %.thread158

bb.n:                                             ; preds = %bb.l
  %i.ag = call i32 @cli_ac_addpatt(ptr noundef nonnull %0, ptr noundef nonnull %i.q) #20 ; 2 uses
  %.not151 = icmp eq i32 %i.ag, 0
  br i1 %.not151, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !50
  call void @mpool_free(ptr noundef %i.ah, ptr noundef %i.ai) #20
  call void @free(ptr noundef nonnull %i.q) #20
  br label %.thread158

bb.p:                                             ; preds = %bb.n
  %i.aj = icmp sgt i32 %6, 0
  br i1 %i.aj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 120 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %.not152 = icmp eq ptr %i.al, null
  br i1 %.not152, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.an = sext i32 %7 to i64
  %i.ao = call ptr @mpool_calloc(ptr noundef %i.am, i64 noundef %i.an, i64 noundef 4) #20 ; 3 uses
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !51
  %.not153 = icmp eq ptr %i.ao, null
  br i1 %.not153, label %.thread158, label %.thread

.thread:                                          ; preds = %bb.q, %bb.r
  %i.ap = phi ptr [ %i.ao, %bb.r ], [ %i.al, %bb.q ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !53
  %i.as = add i32 %i.ar, -1
  %i.at = zext nneg i32 %6 to i64
  %i.au = getelementptr [4 x i8], ptr %i.ap, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  store i32 %i.as, ptr %i.av, align 4, !tbaa !43
  br label %bb.s

.thread158:                                       ; preds = %bb.c, %bb.g, %bb.i, %bb.o, %bb.r, %bb.e, %bb.m, %bb.k
  %.0116.ph = phi i32 [ 20, %bb.k ], [ 20, %bb.m ], [ 4, %bb.e ], [ 20, %bb.r ], [ %i.ag, %bb.o ], [ 4, %bb.i ], [ 4, %bb.g ], [ 4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.am

bb.s:                                             ; preds = %bb.p, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.thread162

bb.t:                                             ; preds = %bb.a
  %i.aw = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 47) #19
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = tail call fastcc i32 @readdb_load_regex_subsignature(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) ; 2 uses
  %.not145 = icmp eq i32 %i.ax, 0
  br i1 %.not145, label %.thread162, label %bb.am

bb.v:                                             ; preds = %bb.t
  %i.ay = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 40) #19
  %.not133 = icmp eq ptr %i.ay, null
  br i1 %.not133, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 35) #19 ; 2 uses
  %.not134 = icmp eq ptr %i.az, null
  br i1 %.not134, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 35) #19 ; 2 uses
  %.not135 = icmp eq ptr %i.ba, null
  %.not136 = icmp eq ptr %i.az, %i.ba
  %or.cond = or i1 %.not135, %.not136
  br i1 %or.cond, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = tail call i32 @cli_bcomp_addpatt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %4, i32 noundef %5) #20 ; 2 uses
  %.not144 = icmp eq i32 %i.bb, 0
  br i1 %.not144, label %.thread162, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.20, ptr noundef nonnull %2) #20
  br label %bb.am

bb.aa:                                            ; preds = %bb.x, %bb.w, %bb.v
  %i.bc = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(11) @.str.21, i64 noundef 10) #19
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %.not143 = icmp eq ptr %4, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !54 ; 2 uses
  br i1 %.not143, label %bb.ac, label %.split

.split:                                           ; preds = %bb.ab
  %i.bg = load i32, ptr %4, align 4, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !43
  %i.bj = call zeroext i1 @fuzzy_hash_load_subsignature(ptr noundef %i.bf, ptr noundef nonnull %2, i32 noundef %i.bg, i32 noundef %i.bi, ptr noundef nonnull %i.a) #20
  br i1 %i.bj, label %.thread162, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bk = call zeroext i1 @fuzzy_hash_load_subsignature(ptr noundef %i.bf, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #20
  br i1 %i.bk, label %.thread162, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.bm = call ptr @ffierror_fmt(ptr noundef %i.bl) #20
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.22, ptr noundef nonnull %2, ptr noundef %i.bm) #20
  br label %bb.am

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.bn = call i64 @cli_ldbtokenize(ptr noundef nonnull %2, i8 noundef signext 58, i64 noundef 5, ptr noundef nonnull %i.e, i64 noundef 0) #20
  %i.bo = trunc i64 %i.bn to i32                  ; 3 uses
  %.not137 = icmp eq i32 %i.bo, 0
  br i1 %.not137, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.23) #20
  br label %.thread179

bb.ag:                                            ; preds = %bb.ae
  %i.bp = and i32 %i.bo, 1
  %i.bq = icmp eq i32 %i.bp, 0                    ; 3 uses
  %i.br = load ptr, ptr %i.e, align 16            ; 3 uses
  %spec.select = select i1 %i.bq, ptr %i.br, ptr %3 ; 2 uses
  switch i32 %i.bo, label %._crit_edge.thread [
    i32 3, label %9
    i32 4, label %bb.ah
  ]

9:                                                ; preds = %bb.ag
  %10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %11 = load ptr, ptr %10, align 16, !tbaa !55
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %9
  %.0111 = phi ptr [ %11, %9 ], [ %13, %bb.ah ]   ; 3 uses
  %.not138 = icmp eq ptr %.0111, null
  br i1 %.not138, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %bb.ai
  %i.bs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0111) #19 ; 2 uses
  %.not139183.not = icmp eq i64 %i.bs, 0
  br i1 %.not139183.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %switch.lookup
  %.0185 = phi i64 [ %i.bz, %switch.lookup ], [ 0, %.preheader ] ; 2 uses
  %.0110184 = phi i8 [ %i.by, %switch.lookup ], [ 0, %.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0111, i64 %.0185
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !8   ; 2 uses
  %switch.tableidx = add i8 %i.bu, -97            ; 3 uses
  %i.bv = icmp ult i8 %switch.tableidx, 23
  br i1 %i.bv, label %switch.hole_check, label %.thread168

.thread168:                                       ; preds = %switch.hole_check, %.lr.ph
  %i.bw = sext i8 %i.bu to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.24, ptr noundef %1, i32 noundef %i.bw) #20
  br label %.thread179

switch.hole_check:                                ; preds = %.lr.ph
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 4194593, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.thread168

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bx = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.readdb_parse_ldb_subsignature, i64 %i.bx
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.by = or i8 %.0110184, %switch.load           ; 2 uses
  %i.bz = add nuw i64 %.0185, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.bs
  br i1 %exitcond.not, label %bb.aj, label %.lr.ph

bb.aj:                                            ; preds = %switch.lookup
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = select i1 %i.bq, ptr %i.cb, ptr %i.br
  %i.cd = call i32 @cli_sigopts_handler(ptr noundef %0, ptr noundef %1, ptr noundef %i.cc, i8 noundef zeroext %i.by, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %spec.select, ptr noundef %4, i32 noundef %5)
  br label %bb.ak

._crit_edge.thread:                               ; preds = %bb.ag, %bb.ai, %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = select i1 %i.bq, ptr %i.cf, ptr %i.br
  %i.ch = call i32 @cli_add_content_match_pattern(ptr noundef %0, ptr noundef %1, ptr noundef %i.cg, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %spec.select, ptr noundef %4, i32 noundef %5)
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.thread, %bb.aj
  %.0120 = phi i32 [ %i.cd, %bb.aj ], [ %i.ch, %._crit_edge.thread ] ; 2 uses
  %.not142 = icmp eq i32 %.0120, 0
  br i1 %.not142, label %bb.al, label %.thread179

.thread179:                                       ; preds = %bb.ak, %bb.af, %.thread168
  %.4.ph = phi i32 [ 4, %.thread168 ], [ 4, %bb.af ], [ %.0120, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.thread162

.thread162:                                       ; preds = %.split, %bb.ac, %bb.al, %bb.s, %bb.u, %bb.y
  br label %bb.am

bb.am:                                            ; preds = %.thread179, %bb.ad, %.thread158, %bb.u, %.thread162, %bb.z
  %.5 = phi i32 [ 0, %.thread162 ], [ %.0116.ph, %.thread158 ], [ %.4.ph, %.thread179 ], [ %i.bb, %bb.z ], [ 26, %bb.ad ], [ %i.ax, %bb.u ]
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %.not154 = icmp eq ptr %i.ci, null
  br i1 %.not154, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @ffierror_free(ptr noundef nonnull %i.ci) #20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.5
}

; Function Attrs: nofree nounwind
declare noundef i32 @sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @mpool_calloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @cli_ac_addpatt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mpool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @readdb_load_regex_subsignature(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.137, i64 noundef 4) #19
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i64 @cli_ldbtokenize(ptr noundef %2, i8 noundef signext 58, i64 noundef 5, ptr noundef nonnull %i.a, i64 noundef 0) #20
  switch i64 %i.d, label %bb.d [
    i64 0, label %bb.e
    i64 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 16, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 16, !tbaa !55
  br label %.thread

bb.e:                                             ; preds = %bb.b
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.23) #20
  br label %bb.j

.thread:                                          ; preds = %bb.c, %bb.d, %bb.a
  %.236 = phi ptr [ %3, %bb.a ], [ %3, %bb.d ], [ %i.e, %bb.c ]
  %.2 = phi ptr [ %2, %bb.a ], [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  %i.i = call ptr @cli_safer_strdup(ptr noundef %.2) #20 ; 5 uses
  %.not46 = icmp eq ptr %i.i, null
  br i1 %.not46, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.j = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.i, i32 noundef 47) #19 ; 3 uses
  %i.k = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.i, i32 noundef 47) #19 ; 3 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i8, ptr %2, align 1, !tbaa !8
  %i.n = icmp eq i8 %i.m, 47
  br i1 %i.n, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.j, align 1, !tbaa !8
  store i8 0, ptr %i.k, align 1, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = icmp eq i8 %i.q, 0
  %spec.store.select = select i1 %i.r, ptr null, ptr %i.p
  %i.s = call i32 @cli_pcre_addpatt(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.o, ptr noundef %spec.store.select, ptr noundef %.236, ptr noundef %4, i32 noundef %5) #20 ; 2 uses
  %.not47 = icmp eq i32 %i.s, 0
  br i1 %.not47, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f
  %.str.138.sink = phi ptr [ @.str.139, %bb.g ], [ @.str.138, %bb.f ], [ @.str.140, %bb.h ]
  %.138.ph.ph = phi i32 [ 4, %bb.g ], [ 4, %bb.f ], [ %i.s, %bb.h ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull %.str.138.sink) #20
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %.138.ph = phi i32 [ 0, %bb.h ], [ %.138.ph.ph, %.sink.split ]
  call void @free(ptr noundef nonnull %i.i) #20
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.e, %bb.i
  %.13860 = phi i32 [ %.138.ph, %bb.i ], [ 4, %bb.e ], [ 20, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.13860
}

declare i32 @cli_bcomp_addpatt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @fuzzy_hash_load_subsignature(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ffierror_fmt(ptr noundef) local_unnamed_addr #3

declare i64 @cli_ldbtokenize(ptr noundef, i8 noundef signext, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ffierror_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #8

declare i32 @cli_ac_addsig(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cli_isnumber(ptr noundef) local_unnamed_addr #3

declare ptr @cli_strtok(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @cli_mpool_hex2str(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cli_mpool_virname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cli_bm_addpatt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @cli_initroots(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
.peel.begin:
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.40) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
end_hunk_0
