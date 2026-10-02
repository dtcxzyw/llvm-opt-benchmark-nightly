Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/sigtool?download=true
inline.NumInlined: 31
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@utf16decode:bb.a
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = tail call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 4 uses
  %i.e = tail call i32 (ptr, i32, ...) @open(ptr noundef %i.d, i32 noundef 0) #23 ; 7 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.203, ptr noundef %i.d) #23
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #29
  %i.h = add i64 %i.g, 7
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #28 ; 9 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.204) #23
  %i.j = tail call i32 @close(i32 noundef %i.e) #23 ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef nonnull %i.d) #23 ; 0 uses
  %i.l = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.i, i32 noundef 577, i32 noundef 384) #23 ; 4 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.n = call i64 @read(i32 noundef %i.e, ptr noundef nonnull %i.a, i64 noundef 512) #23
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.206, ptr noundef nonnull %i.i) #23
  tail call void @free(ptr noundef nonnull %i.i) #23
  %i.q = tail call i32 @close(i32 noundef %i.e) #23 ; 0 uses
  br label %bb.k

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %i.r = phi i32 [ %i.aa, %bb.j ], [ %i.o, %.preheader ]
  %i.s = call ptr @cli_utf16toascii(ptr noundef nonnull %i.a, i32 noundef %i.r) #23 ; 5 uses
  %.not32 = icmp eq ptr %i.s, null
  br i1 %.not32, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #29
  %i.u = call i64 @write(i32 noundef %i.l, ptr noundef nonnull %i.s, i64 noundef %i.t) #23
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.207, ptr noundef nonnull %i.i) #23
  call void @free(ptr noundef nonnull %i.s) #23
  %i.w = call i32 @close(i32 noundef %i.e) #23    ; 0 uses
  %i.x = call i32 @close(i32 noundef %i.l) #23    ; 0 uses
  %i.y = call i32 @unlink(ptr noundef nonnull %i.i) #23 ; 0 uses
  call void @free(ptr noundef %i.i) #23
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.s) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %i.z = call i64 @read(i32 noundef %i.e, ptr noundef nonnull %i.a, i64 noundef 512) #23
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %.preheader
  call void @free(ptr noundef %i.i) #23
  %i.ac = call i32 @close(i32 noundef %i.e) #23   ; 0 uses
  %i.ad = call i32 @close(i32 noundef %i.l) #23   ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.f ], [ -1, %bb.h ], [ 0, %._crit_edge ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 51) i32 @build(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca [4096 x i8], align 16             ; 12 uses
  %i.c = alloca [4096 x i8], align 16             ; 7 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [8192 x i8], align 16             ; 6 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %1 = alloca %struct.stat, align 8               ; 3 uses
  %i.h = alloca [8192 x i8], align 16             ; 6 uses
  %i.i = alloca [513 x i8], align 16              ; 30 uses
  %i.j = alloca [32 x i8], align 16               ; 4 uses
  %i.k = alloca [33 x i8], align 16               ; 10 uses
  %i.l = alloca [512 x i8], align 16              ; 20 uses
  %i.m = alloca [50 x i8], align 16               ; 9 uses
  %i.n = alloca [57 x i8], align 16               ; 5 uses
  %i.o = alloca [32 x i8], align 16               ; 15 uses
  %i.p = alloca [4096 x i8], align 16             ; 8 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i32 0, ptr %i.f, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  %i.r = tail call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.208) #23
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !18
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = tail call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.209) #23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !18
  %.not346 = icmp eq i32 %i.w, 0
  br i1 %.not346, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.210) #23
  br label %bb.er

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.x = tail call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.211) #23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !22
  %.not347 = icmp eq i32 %i.z, 0
  br i1 %.not347, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.211) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0306 = phi ptr [ %i.ac, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.ad = call i32 @stat(ptr noundef nonnull @.str.212, ptr noundef nonnull %1) #23
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.213) #23
  br label %bb.er

bb.h:                                             ; preds = %bb.f
  %i.af = tail call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 5 uses
  %i.ai = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #29
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = tail call i32 @cli_strbcasestr(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.230) #23
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.al = tail call i32 @cli_strbcasestr(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.231) #23
  %.not32.i = icmp eq i32 %i.al, 0
  br i1 %.not32.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = tail call i32 @cli_strbcasestr(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.232) #23
  %.not33.i = icmp eq i32 %i.am, 0
  br i1 %.not33.i, label %getdbname.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.an = add nsw i32 %i.aj, -4
  br label %getdbname.exit

getdbname.exit:                                   ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ %i.an, %bb.k ], [ %i.aj, %bb.j ]
  %i.ao = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 31)
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = call ptr @strncpy(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ah, i64 noundef %i.ap) #23 ; 0 uses
  %i.ar = getelementptr inbounds i8, ptr %i.o, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !tbaa !87
  %i.as = load i64, ptr %i.o, align 16
  %i.at = xor i64 %i.as, 7306086968196364642
  %i.au = getelementptr i8, ptr %i.o, i64 8
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = zext i8 %i.av to i64
  %i.ax = or i64 %i.at, %i.aw
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %.not348 = icmp eq i32 %i.az, 0                 ; 3 uses
  %2 = xor i1 %.not348, true                      ; 2 uses
  %i.ba = call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.215) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !18
  %.not349 = icmp ne i32 %i.bc, 0                 ; 5 uses
  %i.bd = call ptr @cl_engine_new() #23           ; 6 uses
  %.not350 = icmp eq ptr %i.bd, null
  br i1 %.not350, label %bb.l, label %bb.m

bb.l:                                             ; preds = %getdbname.exit
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.216) #23
  br label %bb.er

bb.m:                                             ; preds = %getdbname.exit
  %i.be = load ptr, ptr @g_cvdcertsdir, align 8, !tbaa !24 ; 2 uses
  %.not351 = icmp eq ptr %i.be, null
  br i1 %.not351, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = call i32 @cl_engine_set_str(ptr noundef nonnull %i.bd, i32 noundef 37, ptr noundef nonnull %i.be) #23 ; 2 uses
  %.not352 = icmp eq i32 %i.bf, 0
  br i1 %.not352, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = call ptr @cl_strerror(i32 noundef %i.bf) #23
  %i.bh = call i32 (i32, ptr, ...) @logg(i32 noundef 5, ptr noundef nonnull @.str.217, ptr noundef %i.bg) #23 ; 0 uses
  %i.bi = call i32 @cl_engine_free(ptr noundef nonnull %i.bd) #23 ; 0 uses
  br label %bb.er

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bj = call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.218) #23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !18
  %.not353 = icmp eq i32 %i.bl, 0
  %spec.select = select i1 %.not353, i32 24602, i32 4218906
  %i.bm = call i32 @cl_load(ptr noundef nonnull @.str.187, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.f, i32 noundef %spec.select) #23 ; 2 uses
  %.not354 = icmp eq i32 %i.bm, 0
  br i1 %.not354, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = call ptr @cl_strerror(i32 noundef %i.bm) #23
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.219, ptr noundef %i.bn) #23
  %i.bo = call i32 @cl_engine_free(ptr noundef nonnull %i.bd) #23 ; 0 uses
  br label %bb.er

bb.r:                                             ; preds = %bb.p
  %i.bp = call i32 @cl_engine_free(ptr noundef nonnull %i.bd) #23 ; 0 uses
  %i.bq = load i32, ptr %i.f, align 4, !tbaa !86
  %.not355 = icmp eq i32 %i.bq, 0
  br i1 %.not355, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.220) #23
  br label %bb.as

bb.t:                                             ; preds = %bb.r
  %or.cond = or i1 %.not348, %.not349
  br i1 %or.cond, label %bb.u, label %bb.aj

bb.u:                                             ; preds = %bb.t
  %i.br = call noalias ptr @opendir(ptr noundef nonnull @.str.187) ; 6 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.v, label %.preheader413

.preheader413:                                    ; preds = %bb.u
  %i.bt = call ptr @readdir(ptr noundef nonnull %i.br) #23 ; 2 uses
  %.not356422 = icmp eq ptr %i.bt, null
  br i1 %.not356422, label %.thread, label %.lr.ph

bb.v:                                             ; preds = %bb.u
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.221) #23
  br label %bb.er

.lr.ph:                                           ; preds = %.preheader413, %bb.aa
  %i.bu = phi ptr [ %i.ci, %bb.aa ], [ %i.bt, %.preheader413 ] ; 2 uses
  %.0301424 = phi i32 [ %.1, %bb.aa ], [ 0, %.preheader413 ] ; 5 uses
  %.0302423 = phi ptr [ %.1303, %bb.aa ], [ null, %.preheader413 ] ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !90
  %.not400 = icmp eq i64 %i.bv, 0
  br i1 %.not400, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 19 ; 2 uses
  %i.bx = call i32 @cli_strbcasestr(ptr noundef nonnull %i.bw, ptr noundef nonnull @.str.222) #23
  %.not401 = icmp eq i32 %i.bx, 0
  br i1 %.not401, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = add i32 %.0301424, 1                    ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = call ptr @realloc(ptr noundef %.0302423, i64 noundef %i.ca) #30 ; 5 uses
  %.not402 = icmp eq ptr %i.cb, null
  br i1 %.not402, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.223) #23
  %i.cc = call i32 @closedir(ptr noundef nonnull %i.br) ; 0 uses
  br label %bb.er

bb.z:                                             ; preds = %bb.x
  %i.cd = call noalias ptr @strdup(ptr noundef nonnull %i.bw) #23 ; 2 uses
  %i.ce = zext i32 %.0301424 to i64               ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ce
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !24
  %.not403 = icmp eq ptr %i.cd, null
  br i1 %.not403, label %.preheader412, label %bb.aa

.preheader412:                                    ; preds = %bb.z
  %.not480 = icmp eq i32 %.0301424, 0
  br i1 %.not480, label %._crit_edge428, label %.lr.ph427

.lr.ph427:                                        ; preds = %.preheader412, %.lr.ph427
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph427 ], [ 0, %.preheader412 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !24
  call void @free(ptr noundef %i.ch) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ce
  br i1 %exitcond.not, label %._crit_edge428, label %.lr.ph427

._crit_edge428:                                   ; preds = %.lr.ph427, %.preheader412
  call void @free(ptr noundef nonnull %i.cb) #23
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.223) #23
  br label %bb.er

bb.aa:                                            ; preds = %bb.z, %bb.w, %.lr.ph
  %.1303 = phi ptr [ %.0302423, %.lr.ph ], [ %.0302423, %bb.w ], [ %i.cb, %bb.z ] ; 5 uses
  %.1 = phi i32 [ %.0301424, %.lr.ph ], [ %.0301424, %bb.w ], [ %i.by, %bb.z ] ; 8 uses
  %i.ci = call ptr @readdir(ptr noundef nonnull %i.br) #23 ; 2 uses
  %.not356 = icmp eq ptr %i.ci, null
  br i1 %.not356, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.aa
  %i.cj = call i32 @closedir(ptr noundef nonnull %i.br) ; 0 uses
  %.not357 = icmp eq ptr %.1303, null
  br i1 %.not357, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.ck = zext i32 %.1 to i64
  call void @qsort(ptr noundef nonnull %.1303, i64 noundef %i.ck, i64 noundef 8, ptr noundef nonnull @qcompare) #23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  %i.cl = call i32 @access(ptr noundef nonnull @.str.224, i32 noundef 4) #23
  %.not358 = icmp eq i32 %i.cl, 0
  br i1 %.not358, label %bb.ad, label %bb.aj

.thread:                                          ; preds = %.preheader413
  %i.cm = call i32 @closedir(ptr noundef nonnull %i.br) ; 0 uses
  %i.cn = call i32 @access(ptr noundef nonnull @.str.224, i32 noundef 4) #23
  %.not358608 = icmp eq i32 %i.cn, 0
  br i1 %.not358608, label %.thread611, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %.not359 = icmp eq i32 %.1, 0
  br i1 %.not359, label %.thread611, label %bb.ae

.thread611:                                       ; preds = %.thread, %bb.ad
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.225) #23
  br label %bb.er

bb.ae:                                            ; preds = %bb.ad
  %i.co = add i32 %.1, 1                          ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = call ptr @realloc(ptr noundef %.1303, i64 noundef %i.cq) #30 ; 5 uses
  %.not360 = icmp eq ptr %i.cr, null
  br i1 %.not360, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.223) #23
  br label %bb.er

bb.ag:                                            ; preds = %bb.ae
  %i.cs = call noalias dereferenceable_or_null(9) ptr @strdup(ptr noundef nonnull @.str.224) #23 ; 2 uses
  %i.ct = zext i32 %.1 to i64                     ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !24
  %.not361 = icmp eq ptr %i.cs, null
  br i1 %.not361, label %.preheader409, label %bb.ai

.preheader409:                                    ; preds = %bb.ag, %.preheader409
  %indvars.iv509 = phi i64 [ %indvars.iv.next510, %.preheader409 ], [ 0, %bb.ag ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv509
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !24
  call void @free(ptr noundef %i.cw) #23
  %indvars.iv.next510 = add nuw nsw i64 %indvars.iv509, 1 ; 2 uses
  %exitcond513.not = icmp eq i64 %indvars.iv.next510, %i.ct
  br i1 %exitcond513.not, label %bb.ah, label %.preheader409

bb.ah:                                            ; preds = %.preheader409
  call void @free(ptr noundef nonnull %i.cr) #23
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.223) #23
  br label %bb.er

bb.ai:                                            ; preds = %bb.ag
  %i.cx = call i32 @countlines(ptr noundef nonnull @.str.224) #23
  %i.cy = add i32 %i.cx, %.1
  br label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.ac, %bb.ai, %bb.t
  %.0307 = phi i32 [ %.1, %bb.ac ], [ %i.cy, %bb.ai ], [ 0, %bb.t ], [ 0, %.thread ] ; 2 uses
  %.2304 = phi ptr [ %.1303, %bb.ac ], [ %i.cr, %bb.ai ], [ null, %bb.t ], [ null, %.thread ] ; 4 uses
  %.2 = phi i32 [ %.1, %bb.ac ], [ %i.co, %bb.ai ], [ 0, %bb.t ], [ 0, %.thread ] ; 4 uses
  %or.cond3 = or i1 %.not349, %2
  br i1 %or.cond3, label %.preheader410, label %.loopexit411

.preheader410:                                    ; preds = %bb.aj, %bb.am
  %indvars.iv501 = phi i64 [ %indvars.iv.next502, %bb.am ], [ 0, %bb.aj ] ; 3 uses
  %.1308430 = phi i32 [ %.2309, %bb.am ], [ %.0307, %bb.aj ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr @dblist, i64 %indvars.iv501
  %i.da = load ptr, ptr %i.cz, align 16, !tbaa !106
  %i.db = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.p, i64 noundef 4096, ptr noundef nonnull @.str.226, ptr noundef nonnull %i.o, ptr noundef %i.da) #23 ; 0 uses
  %i.dc = shl nuw i64 1, %indvars.iv501
  %i.dd = and i64 %i.dc, 1151336479
  %.not398.not = icmp eq i64 %i.dd, 0
  br i1 %.not398.not, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.preheader410
  %i.de = call i32 @access(ptr noundef nonnull %i.p, i32 noundef 4) #23
  %.not399 = icmp eq i32 %i.de, 0
  br i1 %.not399, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.df = call i32 @countlines(ptr noundef nonnull %i.p) #23
  %i.dg = add i32 %i.df, %.1308430
  br label %bb.am

bb.am:                                            ; preds = %.preheader410, %bb.ak, %bb.al
  %.2309 = phi i32 [ %.1308430, %bb.ak ], [ %i.dg, %bb.al ], [ %.1308430, %.preheader410 ] ; 2 uses
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %.not362 = icmp eq i64 %indvars.iv.next502, 30
  br i1 %.not362, label %.loopexit411, label %.preheader410

.loopexit411:                                     ; preds = %bb.am, %bb.aj
  %.3310 = phi i32 [ %.0307, %bb.aj ], [ %.2309, %bb.am ] ; 5 uses
  %i.dh = load i32, ptr %i.f, align 4, !tbaa !86  ; 2 uses
  %.not363 = icmp eq i32 %.3310, %i.dh
  br i1 %.not363, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.loopexit411
  call void (i32, ptr, ...) @mprintf(i32 noundef 4, ptr noundef nonnull @.str.227, ptr noundef nonnull %i.o, i32 noundef %.3310, i32 noundef %i.dh) #23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit411
  %i.di = call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.228) #23
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !107
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  %.not364 = icmp eq i32 %i.dl, 0
  br i1 %.not364, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not365 = icmp eq i32 %.3310, 0
  br i1 %.not365, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dm = load i32, ptr %i.f, align 4, !tbaa !86  ; 2 uses
  %i.dn = icmp ule i32 %i.dm, %.3310
  %i.do = sub nuw i32 %i.dm, %.3310
  %.not366 = icmp ult i32 %i.do, %i.dl
  %or.cond404 = select i1 %i.dn, i1 true, i1 %.not366
  br i1 %or.cond404, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.229) #23
  %.not481 = icmp eq i32 %.2, 0
  br i1 %.not481, label %._crit_edge434, label %.lr.ph433.preheader

.lr.ph433.preheader:                              ; preds = %bb.ar
  %wide.trip.count507 = zext i32 %.2 to i64
  br label %.lr.ph433

.lr.ph433:                                        ; preds = %.lr.ph433.preheader, %.lr.ph433
  %indvars.iv504 = phi i64 [ 0, %.lr.ph433.preheader ], [ %indvars.iv.next505, %.lr.ph433 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.2304, i64 %indvars.iv504
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !24
  call void @free(ptr noundef %i.dq) #23
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %exitcond508.not = icmp eq i64 %indvars.iv.next505, %wide.trip.count507
  br i1 %exitcond508.not, label %._crit_edge434, label %.lr.ph433

._crit_edge434:                                   ; preds = %.lr.ph433, %bb.ar
  call void @free(ptr noundef %.2304) #23
  br label %bb.er

bb.as:                                            ; preds = %bb.ao, %bb.aq, %bb.s
  %.3305 = phi ptr [ null, %bb.s ], [ %.2304, %bb.aq ], [ %.2304, %bb.ao ] ; 23 uses
  %.3 = phi i32 [ 0, %bb.s ], [ %.2, %bb.aq ], [ %.2, %bb.ao ] ; 15 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !23 ; 2 uses
  %.not367 = icmp eq ptr %i.ds, null
  br i1 %.not367, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !24
  %i.du = call i32 @cli_strbcasestr(ptr noundef %i.dt, ptr noundef nonnull @.str.230) #23
  %.not371 = icmp eq i32 %i.du, 0
  br i1 %.not371, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !23
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !24
  %i.dx = call i32 @cli_strbcasestr(ptr noundef %i.dw, ptr noundef nonnull @.str.231) #23
  %.not372 = icmp eq i32 %i.dx, 0
  br i1 %.not372, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.dy = load ptr, ptr %i.dr, align 8, !tbaa !23
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !24
  %i.ea = call i32 @cli_strbcasestr(ptr noundef %i.dz, ptr noundef nonnull @.str.232) #23
  %.not373 = icmp eq i32 %i.ea, 0
  br i1 %.not373, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.eb = load ptr, ptr %i.dr, align 8, !tbaa !23
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !24
  %i.ed = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %i.ec, i64 noundef 512) #23 ; 0 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 511
  store i8 0, ptr %i.ee, align 1, !tbaa !87
  br label %bb.bd

bb.ax:                                            ; preds = %bb.av
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.233) #23
  %.not482 = icmp eq i32 %.3, 0
  br i1 %.not482, label %._crit_edge439, label %.lr.ph438.preheader

.lr.ph438.preheader:                              ; preds = %bb.ax
  %wide.trip.count517 = zext i32 %.3 to i64
  br label %.lr.ph438

.lr.ph438:                                        ; preds = %.lr.ph438.preheader, %.lr.ph438
  %indvars.iv514 = phi i64 [ 0, %.lr.ph438.preheader ], [ %indvars.iv.next515, %.lr.ph438 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.3305, i64 %indvars.iv514
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !24
  call void @free(ptr noundef %i.eg) #23
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1 ; 2 uses
  %exitcond518.not = icmp eq i64 %indvars.iv.next515, %wide.trip.count517
  br i1 %exitcond518.not, label %._crit_edge439, label %.lr.ph438

._crit_edge439:                                   ; preds = %.lr.ph438, %bb.ax
  call void @free(ptr noundef %.3305) #23
  br label %bb.er

bb.ay:                                            ; preds = %bb.as
  %i.eh = call ptr @freshdbdir() #23              ; 2 uses
  %.not368 = icmp eq ptr %.0306, null
  %i.ei = select i1 %.not368, ptr %i.eh, ptr %.0306 ; 3 uses
  %i.ej = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 512, ptr noundef nonnull @.str.234, ptr noundef %i.ei, ptr noundef nonnull %i.o) #23 ; 0 uses
  %i.ek = call i32 @access(ptr noundef nonnull %i.l, i32 noundef 4) #23
  %.not369 = icmp eq i32 %i.ek, 0
  br i1 %.not369, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.el = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 512, ptr noundef nonnull @.str.235, ptr noundef %i.ei, ptr noundef nonnull %i.o) #23 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.em = call i32 @access(ptr noundef nonnull %i.l, i32 noundef 4) #23
  %.not370 = icmp eq i32 %i.em, 0
  br i1 %.not370, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.en = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 512, ptr noundef nonnull @.str.236, ptr noundef %i.ei, ptr noundef nonnull %i.o) #23 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @free(ptr noundef %i.eh) #23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.aw
  %i.eo = call ptr @cl_cvdhead(ptr noundef nonnull %i.l) #23 ; 4 uses
  %.not374 = icmp eq ptr %i.eo, null              ; 2 uses
  br i1 %.not374, label %bb.be, label %.critedge

bb.be:                                            ; preds = %bb.bd
  %i.ep = call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.209) #23
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !18
  %.not375 = icmp eq i32 %i.er, 0
  br i1 %.not375, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void (i32, ptr, ...) @mprintf(i32 noundef 4, ptr noundef nonnull @.str.237, ptr noundef nonnull %i.l) #23
  %i.es = call i32 @sleep(i32 noundef 3) #23      ; 0 uses
  br label %bb.bg

.critedge:                                        ; preds = %bb.bd
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !92
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr %i.g, align 4, !tbaa !86
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !93
  call void @cl_cvdfree(ptr noundef nonnull %i.eo) #23
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.ey = call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.238) #23
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !107
  %.not376 = icmp eq i64 %i.fa, 0
  br i1 %.not376, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fb = call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.238) #23
end_hunk_0
begin_hunk_1_@build:bb.a
  br label %bb.co

bb.cn:                                            ; preds = %._crit_edge.i
  %i.ip = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.gw, ptr noundef nonnull @.str.318, ptr noundef nonnull %i.in) #23 ; 0 uses
  call void @free(ptr noundef nonnull %i.in) #23
  br label %bb.cp

bb.co:                                            ; preds = %bb.bw, %bb.ca, %bb.by, %bb.ch, %bb.cf, %bb.cm, %bb.cl, %bb.bu, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.256) #23
  %.not490 = icmp eq i32 %.3, 0
  br i1 %.not490, label %._crit_edge475, label %.lr.ph474.preheader

.lr.ph474.preheader:                              ; preds = %bb.co
  %wide.trip.count565 = zext i32 %.3 to i64
  br label %.lr.ph474

.lr.ph474:                                        ; preds = %.lr.ph474.preheader, %.lr.ph474
  %indvars.iv562 = phi i64 [ 0, %.lr.ph474.preheader ], [ %indvars.iv.next563, %.lr.ph474 ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %.3305, i64 %indvars.iv562
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !24
  call void @free(ptr noundef %i.ir) #23
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %exitcond566.not = icmp eq i64 %indvars.iv.next563, %wide.trip.count565
  br i1 %exitcond566.not, label %._crit_edge475, label %.lr.ph474

._crit_edge475:                                   ; preds = %.lr.ph474, %bb.co
  call void @free(ptr noundef %.3305) #23
  br label %bb.er

bb.cp:                                            ; preds = %bb.cn, %.loopexit.i
  %i.is = call i32 @fclose(ptr noundef nonnull %i.gw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.it = and i64 %i.gh, 4294967295
  %i.iu = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.it
  store i8 0, ptr %i.iu, align 1, !tbaa !87
  %i.iv = call ptr @cli_gentemp(ptr noundef nonnull @.str.187) #23 ; 34 uses
  %.not378 = icmp eq ptr %i.iv, null
  br i1 %.not378, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.257) #23
  br i1 %.not54.i, label %._crit_edge471, label %.lr.ph470.preheader

.lr.ph470.preheader:                              ; preds = %bb.cq
  %wide.trip.count560 = zext i32 %.3 to i64
  br label %.lr.ph470

.lr.ph470:                                        ; preds = %.lr.ph470.preheader, %.lr.ph470
  %indvars.iv557 = phi i64 [ 0, %.lr.ph470.preheader ], [ %indvars.iv.next558, %.lr.ph470 ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.3305, i64 %indvars.iv557
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !24
  call void @free(ptr noundef %i.ix) #23
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %exitcond561.not = icmp eq i64 %indvars.iv.next558, %wide.trip.count560
  br i1 %exitcond561.not, label %._crit_edge471, label %.lr.ph470

._crit_edge471:                                   ; preds = %.lr.ph470, %bb.cq
  call void @free(ptr noundef %.3305) #23
  br label %bb.er

bb.cr:                                            ; preds = %bb.cp
  %i.iy = call ptr @gzopen(ptr noundef nonnull %i.iv, ptr noundef nonnull @.str.258) #23 ; 10 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.259, ptr noundef nonnull %i.iv) #23
  call void @free(ptr noundef nonnull %i.iv) #23
  br i1 %.not54.i, label %._crit_edge467, label %.lr.ph466.preheader

.lr.ph466.preheader:                              ; preds = %bb.cs
  %wide.trip.count555 = zext i32 %.3 to i64
  br label %.lr.ph466

.lr.ph466:                                        ; preds = %.lr.ph466.preheader, %.lr.ph466
  %indvars.iv552 = phi i64 [ 0, %.lr.ph466.preheader ], [ %indvars.iv.next553, %.lr.ph466 ] ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.3305, i64 %indvars.iv552
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !24
  call void @free(ptr noundef %i.jb) #23
  %indvars.iv.next553 = add nuw nsw i64 %indvars.iv552, 1 ; 2 uses
  %exitcond556.not = icmp eq i64 %indvars.iv.next553, %wide.trip.count555
  br i1 %exitcond556.not, label %._crit_edge467, label %.lr.ph466

._crit_edge467:                                   ; preds = %.lr.ph466, %bb.cs
  call void @free(ptr noundef %.3305) #23
  br label %bb.er

bb.ct:                                            ; preds = %bb.cr
  %i.jc = call i32 @tar_addfile(i32 noundef -1, ptr noundef nonnull %i.iy, ptr noundef nonnull @.str.212) #23
  %i.jd = icmp eq i32 %i.jc, -1
  br i1 %i.jd, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.260) #23
  %i.je = call i32 @gzclose(ptr noundef nonnull %i.iy) #23 ; 0 uses
  %i.jf = call i32 @unlink(ptr noundef nonnull %i.iv) #23 ; 0 uses
  call void @free(ptr noundef nonnull %i.iv) #23
  br i1 %.not54.i, label %._crit_edge463, label %.lr.ph462.preheader

.lr.ph462.preheader:                              ; preds = %bb.cu
  %wide.trip.count550 = zext i32 %.3 to i64
  br label %.lr.ph462

.lr.ph462:                                        ; preds = %.lr.ph462.preheader, %.lr.ph462
  %indvars.iv547 = phi i64 [ 0, %.lr.ph462.preheader ], [ %indvars.iv.next548, %.lr.ph462 ] ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %.3305, i64 %indvars.iv547
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !24
  call void @free(ptr noundef %i.jh) #23
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %exitcond551.not = icmp eq i64 %indvars.iv.next548, %wide.trip.count550
  br i1 %exitcond551.not, label %._crit_edge463, label %.lr.ph462

._crit_edge463:                                   ; preds = %.lr.ph462, %bb.cu
  call void @free(ptr noundef %.3305) #23
  br label %bb.er

bb.cv:                                            ; preds = %bb.ct
  %or.cond5 = or i1 %.not348, %.not349
  br i1 %or.cond5, label %bb.cw, label %.loopexit408

bb.cw:                                            ; preds = %bb.cv
  br i1 %.not349, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ji = call i32 @tar_addfile(i32 noundef -1, ptr noundef nonnull %i.iy, ptr noundef nonnull @.str.261) #23
  %i.jj = icmp eq i32 %i.ji, -1
  br i1 %i.jj, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.jk = call i32 @gzclose(ptr noundef nonnull %i.iy) #23 ; 0 uses
  %i.jl = call i32 @unlink(ptr noundef nonnull %i.iv) #23 ; 0 uses
  call void @free(ptr noundef nonnull %i.iv) #23
  br i1 %.not54.i, label %._crit_edge443, label %.lr.ph442.preheader

.lr.ph442.preheader:                              ; preds = %bb.cy
  %wide.trip.count522 = zext i32 %.3 to i64
  br label %.lr.ph442

.lr.ph442:                                        ; preds = %.lr.ph442.preheader, %.lr.ph442
  %indvars.iv519 = phi i64 [ 0, %.lr.ph442.preheader ], [ %indvars.iv.next520, %.lr.ph442 ] ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.3305, i64 %indvars.iv519
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !24
  call void @free(ptr noundef %i.jn) #23
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %exitcond523.not = icmp eq i64 %indvars.iv.next520, %wide.trip.count522
  br i1 %exitcond523.not, label %._crit_edge443, label %.lr.ph442

._crit_edge443:                                   ; preds = %.lr.ph442, %bb.cy
  call void @free(ptr noundef %.3305) #23
  br label %bb.er

bb.cz:                                            ; preds = %bb.cx, %bb.cw
  br i1 %.not54.i, label %.loopexit408, label %.lr.ph446.preheader

.lr.ph446.preheader:                              ; preds = %bb.cz
  %wide.trip.count527 = zext i32 %.3 to i64       ; 2 uses
  br label %.lr.ph446

bb.da:                                            ; preds = %.lr.ph446
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1 ; 2 uses
  %exitcond528.not = icmp eq i64 %indvars.iv.next525, %wide.trip.count527
  br i1 %exitcond528.not, label %.loopexit408, label %.lr.ph446

.lr.ph446:                                        ; preds = %.lr.ph446.preheader, %bb.da
  %indvars.iv524 = phi i64 [ 0, %.lr.ph446.preheader ], [ %indvars.iv.next525, %bb.da ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.3305, i64 %indvars.iv524
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !24
  %i.jq = call i32 @tar_addfile(i32 noundef -1, ptr noundef nonnull %i.iy, ptr noundef %i.jp) #23
  %i.jr = icmp eq i32 %i.jq, -1
  br i1 %i.jr, label %bb.db, label %bb.da

bb.db:                                            ; preds = %.lr.ph446
  %i.js = call i32 @gzclose(ptr noundef nonnull %i.iy) #23 ; 0 uses
  %i.jt = call i32 @unlink(ptr noundef nonnull %i.iv) #23 ; 0 uses
  call void @free(ptr noundef %i.iv) #23
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.dc
  %indvars.iv529 = phi i64 [ 0, %bb.db ], [ %indvars.iv.next530, %bb.dc ] ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.3305, i64 %indvars.iv529
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !24
  call void @free(ptr noundef %i.jv) #23
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %exitcond533.not = icmp eq i64 %indvars.iv.next530, %wide.trip.count527
  br i1 %exitcond533.not, label %bb.dd, label %bb.dc

bb.dd:                                            ; preds = %bb.dc
  call void @free(ptr noundef nonnull %.3305) #23
  br label %bb.er

.loopexit408:                                     ; preds = %bb.da, %bb.cz, %bb.cv
  %or.cond7 = or i1 %.not349, %2
  br i1 %or.cond7, label %.preheader407, label %.loopexit

.preheader407:                                    ; preds = %.loopexit408, %bb.dg
  %indvars.iv534 = phi i64 [ %indvars.iv.next535, %bb.dg ], [ 0, %.loopexit408 ] ; 2 uses
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr @dblist, i64 %indvars.iv534
  %i.jx = load ptr, ptr %i.jw, align 16, !tbaa !106
  %i.jy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.p, i64 noundef 4096, ptr noundef nonnull @.str.226, ptr noundef nonnull %i.o, ptr noundef %i.jx) #23 ; 0 uses
  %i.jz = call i32 @access(ptr noundef nonnull %i.p, i32 noundef 4) #23
  %.not397 = icmp eq i32 %i.jz, 0
  br i1 %.not397, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %.preheader407
  %i.ka = call i32 @tar_addfile(i32 noundef -1, ptr noundef nonnull %i.iy, ptr noundef nonnull %i.p) #23
  %i.kb = icmp eq i32 %i.ka, -1
  br i1 %i.kb, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.kc = call i32 @gzclose(ptr noundef nonnull %i.iy) #23 ; 0 uses
  %i.kd = call i32 @unlink(ptr noundef nonnull %i.iv) #23 ; 0 uses
  call void @free(ptr noundef %i.iv) #23
  br i1 %.not54.i, label %._crit_edge451, label %.lr.ph450.preheader

.lr.ph450.preheader:                              ; preds = %bb.df
  %wide.trip.count545.a = zext i32 %.3 to i64
  br label %.lr.ph450

.lr.ph450:                                        ; preds = %.lr.ph450.preheader, %.lr.ph450
  %indvars.iv542.a = phi i64 [ 0, %.lr.ph450.preheader ], [ %indvars.iv.next543.a, %.lr.ph450 ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.3305, i64 %indvars.iv542.a
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !24
  call void @free(ptr noundef %i.kf) #23
  %indvars.iv.next543.a = add nuw nsw i64 %indvars.iv542.a, 1 ; 2 uses
  %exitcond546.not.a = icmp eq i64 %indvars.iv.next543.a, %wide.trip.count545.a
  br i1 %exitcond546.not.a, label %._crit_edge451, label %.lr.ph450

._crit_edge451:                                   ; preds = %.lr.ph450, %bb.df
  call void @free(ptr noundef %.3305) #23
  br label %bb.er

bb.dg:                                            ; preds = %.preheader407, %bb.de
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %.not379 = icmp eq i64 %indvars.iv.next535, 30
  br i1 %.not379, label %.loopexit, label %.preheader407

.loopexit:                                        ; preds = %bb.dg, %.loopexit408
  %i.kg = call i32 @gzclose(ptr noundef nonnull %i.iy) #23 ; 0 uses
  br i1 %.not54.i, label %._crit_edge455, label %.lr.ph454.preheader

.lr.ph454.preheader:                              ; preds = %.loopexit
  %wide.trip.count540 = zext i32 %.3 to i64
  br label %.lr.ph454

.lr.ph454:                                        ; preds = %.lr.ph454.preheader, %.lr.ph454
  %indvars.iv537 = phi i64 [ 0, %.lr.ph454.preheader ], [ %indvars.iv.next538, %.lr.ph454 ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.3305, i64 %indvars.iv537
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !24
  call void @free(ptr noundef %i.ki) #23
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %exitcond541.not = icmp eq i64 %indvars.iv.next538, %wide.trip.count540
  br i1 %exitcond541.not, label %._crit_edge455, label %.lr.ph454

._crit_edge455:                                   ; preds = %.lr.ph454, %.loopexit
  call void @free(ptr noundef %.3305) #23
  %i.kj = call noalias ptr @fopen(ptr noundef nonnull %i.iv, ptr noundef nonnull @.str.262) ; 11 uses
  %.not380 = icmp eq ptr %i.kj, null
  br i1 %.not380, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %._crit_edge455
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.263, ptr noundef nonnull %i.iv) #23
  %i.kk = call i32 @unlink(ptr noundef nonnull %i.iv) #23 ; 0 uses
  call void @free(ptr noundef nonnull %i.iv) #23
  br label %bb.er

bb.di:                                            ; preds = %._crit_edge455
  %i.kl = call ptr @cli_hashstream(ptr noundef nonnull %i.kj, ptr noundef nonnull %i.h, i32 noundef 0) #23 ; 7 uses
  %.not381 = icmp eq ptr %i.kl, null
  br i1 %.not381, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.264, ptr noundef nonnull %i.iv) #23
  %i.km = call i32 @fclose(ptr noundef nonnull %i.kj) ; 0 uses
  %i.kn = call i32 @unlink(ptr noundef nonnull %i.iv) #23 ; 0 uses
  call void @free(ptr noundef nonnull %i.iv) #23
  br label %bb.er

bb.dk:                                            ; preds = %bb.di
  %i.ko = load i8, ptr %i.kl, align 1, !tbaa !87
  %i.kp = icmp eq i8 %i.ko, 48
  br i1 %i.kp, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 1
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !87
  %i.ks = icmp eq i8 %i.kr, 48
  br i1 %i.ks, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.265, ptr noundef nonnull %i.kl) #23
  %i.kt = call i32 @fclose(ptr noundef nonnull %i.kj) ; 0 uses
  %i.ku = call i32 @unlink(ptr noundef nonnull %i.iv) #23 ; 0 uses
  call void @free(ptr noundef nonnull %i.iv) #23
  call void @free(ptr noundef nonnull %i.kl) #23
  br label %bb.er

bb.dn:                                            ; preds = %bb.dl, %bb.dk
  call void @rewind(ptr noundef nonnull %i.kj)
  %i.kv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #29
  %i.kw = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.kv
  %i.kx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.kw, ptr noundef nonnull dereferenceable(1) @.str.266, ptr noundef nonnull %i.kl) #23 ; 0 uses
  call void @free(ptr noundef nonnull %i.kl) #23
  %i.ky = call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.209) #23
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !18
  %.not382 = icmp eq i32 %i.la, 0
  br i1 %.not382, label %bb.do, label %bb.dr

bb.do:                                            ; preds = %bb.dn
  %i.lb = call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.208) #23
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !19
  %i.le = call ptr @cli_getdsig(ptr noundef %i.ld, ptr noundef nonnull %i.k, ptr noundef nonnull %i.h, i32 noundef 16, i16 noundef zeroext 1) #23 ; 3 uses
  %.not383 = icmp eq ptr %i.le, null
  br i1 %.not383, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.267) #23
  %i.lf = call i32 @fclose(ptr noundef nonnull %i.kj) ; 0 uses
  %i.lg = call i32 @unlink(ptr noundef nonnull %i.iv) #23 ; 0 uses
  call void @free(ptr noundef nonnull %i.iv) #23
  br label %bb.er

bb.dq:                                            ; preds = %bb.do
  %i.lh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #29
  %i.li = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.lh
  %i.lj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.li, ptr noundef nonnull dereferenceable(1) @.str.266, ptr noundef nonnull %i.le) #23 ; 0 uses
  call void @free(ptr noundef nonnull %i.le) #23
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dn
  %i.lk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #29
  %i.ll = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.lk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ll, ptr noundef nonnull align 1 dereferenceable(3) @.str.268, i64 3, i1 false)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.lm = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.k) #23 ; 0 uses
  %i.ln = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #29
  %i.lo = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ln
  %i.lp = load i64, ptr %i.q, align 8, !tbaa !94
  %i.lq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.lo, ptr noundef nonnull dereferenceable(1) @.str.255, i64 noundef %i.lp) #23 ; 0 uses
  %i.lr = call i64 @strlen(ptr nonnull dereferenceable(1) %i.i) ; 2 uses
  %i.ls = icmp ult i64 %i.lr, 512
  br i1 %i.ls, label %.lr.ph457, label %._crit_edge458

.lr.ph457:                                        ; preds = %bb.ds, %.lr.ph457
  %i.lt = phi i64 [ %i.lu, %.lr.ph457 ], [ %i.lr, %bb.ds ]
  %endptr396 = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.lt
  store i16 32, ptr %endptr396, align 1
  %i.lu = call i64 @strlen(ptr nonnull dereferenceable(1) %i.i) ; 2 uses
  %i.lv = icmp ult i64 %i.lu, 512
  br i1 %i.lv, label %.lr.ph457, label %._crit_edge458

._crit_edge458:                                   ; preds = %.lr.ph457, %bb.ds
  %i.lw = call ptr @optget(ptr noundef nonnull %0, ptr noundef nonnull @.str.29) #23
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !19 ; 13 uses
  %i.lz = call noalias ptr @fopen(ptr noundef %i.ly, ptr noundef nonnull @.str.270) ; 6 uses
  %.not384 = icmp eq ptr %i.lz, null
  br i1 %.not384, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %._crit_edge458
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.271, ptr noundef %i.ly) #23
  %i.ma = call i32 @fclose(ptr noundef nonnull %i.kj) ; 0 uses
  %i.mb = call i32 @unlink(ptr noundef nonnull %i.iv) #23 ; 0 uses
  call void @free(ptr noundef nonnull %i.iv) #23
  br label %bb.er

bb.du:                                            ; preds = %._crit_edge458
  %i.mc = call i64 @fwrite(ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef 512, ptr noundef nonnull %i.lz)
  %.not385 = icmp eq i64 %i.mc, 512
  br i1 %.not385, label %.preheader, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void (i32, ptr, ...) @mprintf(i32 noundef 5, ptr noundef nonnull @.str.272, ptr noundef %i.ly) #23
  %i.md = call i32 @fclose(ptr noundef nonnull %i.kj) ; 0 uses
  %i.me = call i32 @unlink(ptr noundef nonnull %i.iv) #23 ; 0 uses
  call void @free(ptr noundef nonnull %i.iv) #23
  %i.mf = call i32 @fclose(ptr noundef nonnull %i.lz) ; 0 uses
  %i.mg = call i32 @unlink(ptr noundef %i.ly) #23 ; 0 uses
  br label %bb.er

.preheader:                                       ; preds = %bb.du, %bb.dw
  %i.mh = call i64 @fread(ptr noundef nonnull %i.h, i64 noundef 1, i64 noundef 8192, ptr noundef nonnull %i.kj) ; 3 uses
  %.not386 = icmp eq i64 %i.mh, 0
  br i1 %.not386, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %.preheader
  %i.mi = call i64 @fwrite(ptr noundef nonnull %i.h, i64 noundef 1, i64 noundef %i.mh, ptr noundef nonnull %i.lz)
  %.not394 = icmp eq i64 %i.mi, %i.mh
  br i1 %.not394, label %.preheader, label %bb.dx

end_hunk_1
