Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/bench?download=true
inline.NumInlined: 13
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@BMK_benchFileTable:bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 3
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #21 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 48
  br label %bb.b

bb.b:                                             ; preds = %UTIL_getFileSize.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %UTIL_getFileSize.exit.i ] ; 2 uses
  %.067.i = phi i64 [ 0, %bb.a ], [ %i.n, %UTIL_getFileSize.exit.i ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.i = call i32 @stat(ptr noundef readonly %i.h, ptr noundef nonnull %8) #19
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %UTIL_getFileSize.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.e, align 8, !tbaa !17
  %i.k = and i32 %i.j, 61440
  %i.l = icmp eq i32 %i.k, 32768
  %i.m = load i64, ptr %i.f, align 8
  %spec.select.i = select i1 %i.l, i64 %i.m, i64 0
  br label %UTIL_getFileSize.exit.i

UTIL_getFileSize.exit.i:                          ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.n = add i64 %.0.i.i, %.067.i                 ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.b
  br i1 %exitcond.not.i, label %UTIL_getTotalFileSize.exit, label %bb.b, !llvm.loop !35

UTIL_getTotalFileSize.exit:                       ; preds = %UTIL_getFileSize.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %UTIL_getTotalFileSize.exit
  %i.o = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not40 = icmp eq i32 %i.o, 0
  br i1 %.not40, label %.thread68, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.5, i32 noundef 12) #17 ; 0 uses
  %.pr = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not41 = icmp eq i32 %.pr, 0
  br i1 %.not41, label %.thread68, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.42, i64 31, i64 1, ptr %i.r) #18 ; 0 uses
  %.pr67 = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not42 = icmp eq i32 %.pr67, 0
  br i1 %.not42, label %.thread68, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc = tail call i32 @fputc(i32 10, ptr %i.s) ; 0 uses
  br label %.thread68

.thread68:                                        ; preds = %bb.d, %bb.e, %bb.g, %bb.f
  tail call void @exit(i32 noundef 12) #20
  unreachable

bb.h:                                             ; preds = %UTIL_getTotalFileSize.exit
  %i.t = mul i64 %i.n, 3
  %i.u = and i64 %i.t, -67108864
  %i.v = add i64 %i.u, 201326592                  ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 8589934592) ; 2 uses
  %i.w = icmp ugt i64 %i.v, 67108864
  %i.x = add nsw i64 %spec.store.select.i, -67108864
  %i.y = lshr exact i64 %spec.store.select.i, 1
  %.1.i = select i1 %i.w, i64 %i.x, i64 %i.y      ; 3 uses
  %i.z = icmp ugt i64 %.1.i, 67108864
  %i.aa = add nsw i64 %.1.i, -67108864
  %i.ab = lshr exact i64 %.1.i, 1
  %.2.i = select i1 %i.z, i64 %i.aa, i64 %i.ab    ; 2 uses
  %i.ac = icmp ult i64 %.2.i, 3
  br i1 %i.ac, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ad = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not52 = icmp eq i32 %i.ad, 0
  br i1 %.not52, label %.thread75, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.5, i32 noundef 12) #17 ; 0 uses
  %.pr70 = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not53 = icmp eq i32 %.pr70, 0
  br i1 %.not53, label %.thread75, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite54 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 17, i64 1, ptr %i.ag) #18 ; 0 uses
  %.pr73 = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not55 = icmp eq i32 %.pr73, 0
  br i1 %.not55, label %.thread75, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc57 = tail call i32 @fputc(i32 10, ptr %i.ah) ; 0 uses
  br label %.thread75

.thread75:                                        ; preds = %bb.i, %bb.j, %bb.l, %bb.k
  tail call void @exit(i32 noundef 12) #20
  unreachable

bb.m:                                             ; preds = %bb.h
  %i.ai = udiv i64 %.2.i, 3                       ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.n) ; 4 uses
  %i.aj = icmp samesign ugt i64 %spec.select, 2113929216
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.43, i32 noundef 2016) #17 ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.am = icmp ult i64 %i.ai, %i.n
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ao = lshr i64 %spec.select, 20
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.44, i32 noundef %i.ap) #17 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.1 = phi i64 [ 2113929216, %bb.n ], [ %spec.select, %bb.p ], [ %spec.select, %bb.o ] ; 3 uses
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.1, i64 1)
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.ar) #21 ; 4 uses
  %.not45 = icmp eq ptr %i.as, null
  br i1 %.not45, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.at = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not46 = icmp eq i32 %i.at, 0
  br i1 %.not46, label %.thread82, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.5, i32 noundef 12) #17 ; 0 uses
  %.pr77 = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not47 = icmp eq i32 %.pr77, 0
  br i1 %.not47, label %.thread82, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite48 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 17, i64 1, ptr %i.aw) #18 ; 0 uses
  %.pr80 = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not49 = icmp eq i32 %.pr80, 0
  br i1 %.not49, label %.thread82, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc51 = tail call i32 @fputc(i32 10, ptr %i.ax) ; 0 uses
  br label %.thread82

.thread82:                                        ; preds = %bb.r, %bb.s, %bb.u, %bb.t
  tail call void @exit(i32 noundef 12) #20
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.w

bb.w:                                             ; preds = %bb.aq, %bb.v
  %indvars.iv.i58 = phi i64 [ 0, %bb.v ], [ %indvars.iv.next.i64, %bb.aq ] ; 5 uses
  %.04293.i = phi i64 [ 0, %bb.v ], [ %.1.i63, %bb.aq ] ; 2 uses
  %.04392.i = phi i64 [ 0, %bb.v ], [ %.144.i, %bb.aq ] ; 4 uses
  %.04591.i = phi i32 [ %1, %bb.v ], [ %.2.i62, %bb.aq ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i58 ; 7 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bd = call i32 @stat(ptr noundef readonly %i.bc, ptr noundef nonnull %7) #19
  %.not.i.i59 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i59, label %bb.x, label %UTIL_getFileSize.exit.i60

bb.x:                                             ; preds = %bb.w
  %i.be = load i32, ptr %i.ay, align 8, !tbaa !17
  %i.bf = and i32 %i.be, 61440
  %i.bg = icmp eq i32 %i.bf, 32768
  %i.bh = load i64, ptr %i.az, align 8
  %spec.select95.i = select i1 %i.bg, i64 %i.bh, i64 0
  br label %UTIL_getFileSize.exit.i60

UTIL_getFileSize.exit.i60:                        ; preds = %bb.x, %bb.w
  %.0.i.i61 = phi i64 [ 0, %bb.w ], [ %spec.select95.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bj = call i32 @stat(ptr noundef readonly %i.bi, ptr noundef nonnull %6) #19
  %.not.i67.i = icmp ne i32 %i.bj, 0
  %i.bk = load i32, ptr %i.ba, align 8
  %i.bl = and i32 %i.bk, 61440
  %9 = icmp ne i32 %i.bl, 16384
  %narrow.i.not.i = select i1 %.not.i67.i, i1 true, i1 %9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %narrow.i.not.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %UTIL_getFileSize.exit.i60
  %i.bm = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %i.bn = icmp ugt i32 %i.bm, 1
  br i1 %i.bn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.46, ptr noundef %i.bp) #17 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i58
  store i64 0, ptr %i.br, align 8, !tbaa !14
  br label %bb.aq

bb.ab:                                            ; preds = %UTIL_getFileSize.exit.i60
  %i.bs = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.bt = tail call noalias ptr @fopen(ptr noundef %i.bs, ptr noundef nonnull @.str.9) ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  %i.bv = load i32, ptr @g_displayLevel, align 4, !tbaa !9 ; 2 uses
  br i1 %i.bu, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %.not61.i = icmp eq i32 %i.bv, 0
  br i1 %.not61.i, label %.thread71.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.5, i32 noundef 10) #17 ; 0 uses
  %.pr.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not62.i = icmp eq i32 %.pr.i, 0
  br i1 %.not62.i, label %.thread71.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bz = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.47, ptr noundef %i.bz) #17 ; 0 uses
  %.pr70.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not63.i = icmp eq i32 %.pr70.i, 0
  br i1 %.not63.i, label %.thread71.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc65.i = tail call i32 @fputc(i32 10, ptr %i.cb) ; 0 uses
  br label %.thread71.i

.thread71.i:                                      ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  tail call void @exit(i32 noundef 10) #20
  unreachable

bb.ag:                                            ; preds = %bb.ab
  %i.cc = icmp ugt i32 %i.bv, 1
  br i1 %i.cc, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.cd = tail call i64 @clock() #19
  %i.ce = load i64, ptr @g_time, align 8, !tbaa !14
  %i.cf = sub nsw i64 %i.cd, %i.ce
  %i.cg = icmp sgt i64 %i.cf, 150000
  %i.ch = load i32, ptr @g_displayLevel, align 4
  %i.ci = icmp ugt i32 %i.ch, 3
  %or.cond.i = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.cj = tail call i64 @clock() #19
  store i64 %i.cj, ptr @g_time, align 8, !tbaa !14
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.cl = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.48, ptr noundef %i.cl) #17 ; 0 uses
  %i.cn = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %i.co = icmp ugt i32 %i.cn, 3
  br i1 %i.co, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cp = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.cq = tail call i32 @fflush(ptr noundef %i.cp) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.cr = sub i64 %.1, %.04392.i                  ; 2 uses
  %spec.select66.i = tail call i64 @llvm.umin.i64(i64 %.0.i.i61, i64 %i.cr) ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.as, i64 %.04392.i
  %i.ct = tail call i64 @fread(ptr noundef nonnull %i.cs, i64 noundef 1, i64 noundef %spec.select66.i, ptr noundef nonnull %i.bt)
  %.not55.i = icmp eq i64 %i.ct, %spec.select66.i
  br i1 %.not55.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cu = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not56.i = icmp eq i32 %i.cu, 0
  br i1 %.not56.i, label %.thread78.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.cw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cv, ptr noundef nonnull @.str.5, i32 noundef 11) #17 ; 0 uses
  %.pr73.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not57.i = icmp eq i32 %.pr73.i, 0
  br i1 %.not57.i, label %.thread78.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.cy = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.cz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str.49, ptr noundef %i.cy) #17 ; 0 uses
  %.pr76.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not58.i = icmp eq i32 %.pr76.i, 0
  br i1 %.not58.i, label %.thread78.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.da = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc60.i = tail call i32 @fputc(i32 10, ptr %i.da) ; 0 uses
  br label %.thread78.i

.thread78.i:                                      ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  tail call void @exit(i32 noundef 11) #20
  unreachable

bb.ap:                                            ; preds = %bb.ak
  %i.db = icmp ugt i64 %.0.i.i61, %i.cr
  %i.dc = trunc nuw i64 %indvars.iv.i58 to i32
  %spec.select.i65 = select i1 %i.db, i32 %i.dc, i32 %.04591.i
  %i.dd = add i64 %spec.select66.i, %.04392.i
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i58
  store i64 %spec.select66.i, ptr %i.de, align 8, !tbaa !14
  %i.df = add i64 %spec.select66.i, %.04293.i
  %i.dg = tail call i32 @fclose(ptr noundef nonnull %i.bt) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.aa
  %.2.i62 = phi i32 [ %.04591.i, %bb.aa ], [ %spec.select.i65, %bb.ap ] ; 2 uses
  %.144.i = phi i64 [ %.04392.i, %bb.aa ], [ %i.dd, %bb.ap ]
  %.1.i63 = phi i64 [ %.04293.i, %bb.aa ], [ %i.df, %bb.ap ] ; 2 uses
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i58, 1 ; 2 uses
  %i.dh = zext i32 %.2.i62 to i64
  %i.di = icmp samesign ult i64 %indvars.iv.next.i64, %i.dh
  br i1 %i.di, label %bb.w, label %bb.ar, !llvm.loop !36

bb.ar:                                            ; preds = %bb.aq
  %i.dj = icmp eq i64 %.1.i63, 0
  br i1 %i.dj, label %bb.as, label %BMK_loadFiles.exit

bb.as:                                            ; preds = %bb.ar
  %i.dk = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i, label %.thread85.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.dm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.5, i32 noundef 12) #17 ; 0 uses
  %.pr80.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not51.i = icmp eq i32 %.pr80.i, 0
  br i1 %.not51.i, label %.thread85.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.50, i64 16, i64 1, ptr %i.dn) #18 ; 0 uses
  %.pr83.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not52.i = icmp eq i32 %.pr83.i, 0
  br i1 %.not52.i, label %.thread85.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc.i = tail call i32 @fputc(i32 10, ptr %i.do) ; 0 uses
  br label %.thread85.i

.thread85.i:                                      ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  tail call void @exit(i32 noundef 12) #20
  unreachable

BMK_loadFiles.exit:                               ; preds = %bb.ar
  %i.dp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 20, ptr noundef nonnull @.str.45, i32 noundef %1) #19 ; 0 uses
  %i.dq = icmp ugt i32 %1, 1
  br i1 %i.dq, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %BMK_loadFiles.exit
  %i.dr = load ptr, ptr %0, align 8, !tbaa !20
  br label %bb.ax

bb.ax:                                            ; preds = %BMK_loadFiles.exit, %bb.aw
  %i.ds = phi ptr [ %i.dr, %bb.aw ], [ %i.a, %BMK_loadFiles.exit ]
  %i.dt = call fastcc i32 @BMK_benchCLevel(ptr noundef %i.as, i64 noundef %.1, ptr noundef %i.ds, i32 noundef %2, i32 noundef %3, ptr noundef %i.d, i32 noundef %1, ptr noundef %4, i32 noundef %5)
  call void @free(ptr noundef %i.as) #19
  call void @free(ptr noundef nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.dt
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare void @LOREM_genBuffer(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @BMK_benchCLevel(ptr noundef nonnull %0, i64 noundef range(i64 0, 2113929217) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull readonly captures(none) %5, i32 noundef range(i32 1, 0) %6, ptr noundef %7, i32 noundef range(i32 0, 65537) %8) unnamed_addr #3 {
bb.a:
  %9 = alloca %struct.compressionParameters, align 8 ; 14 uses
end_hunk_0
begin_hunk_1_@BMK_benchCLevel:bb.a
  %or.cond.i = select i1 %i.ae, i1 true, i1 %i.ag
  %i.ah = select i1 %or.cond.i, i64 %1, i64 %i.ad
  %i.ai = add i64 %i.ah, %i.p                     ; 4 uses
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  %i.ak = add i64 %i.aj, %1
  %i.al = udiv i64 %i.ak, %i.ai
  %i.am = trunc i64 %i.al to i32
  %i.an = add i32 %6, %i.am                       ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul nuw nsw i64 %i.ao, 56
  %i.aq = call noalias ptr @malloc(i64 noundef %i.ap) #21 ; 28 uses
  %i.ar = call i32 @LZ4_compressBound(i32 noundef %.pre-phi) #19
  %i.as = sext i32 %i.ar to i64
  %i.at = shl i32 %i.an, 10
  %i.au = zext i32 %i.at to i64
  %i.av = add nsw i64 %i.au, %i.as                ; 3 uses
  %i.aw = call noalias ptr @malloc(i64 noundef %i.av) #21 ; 5 uses
  %i.ax = load i32, ptr @g_decodeOnly, align 4, !tbaa !9
  %.not354.i = icmp eq i32 %i.ax, 0               ; 3 uses
  %i.ay = select i1 %.not354.i, i64 1, i64 255    ; 3 uses
  %i.az = select i1 %.not354.i, i64 2113929216, i64 8289918 ; 2 uses
  %i.ba = icmp samesign ult i64 %1, %i.az
  %i.bb = mul nuw nsw i64 %i.ay, %1
  %i.bc = select i1 %i.ba, i64 %i.bb, i64 2113929216
  %i.bd = call noalias ptr @malloc(i64 noundef %i.bc) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.be = icmp ne ptr %i.aw, null
  %i.bf = icmp ne ptr %i.bd, null
  %or.cond3.i = and i1 %i.be, %i.bf
  %i.bg = icmp ne ptr %i.aq, null
  %or.cond5.i = and i1 %i.bg, %or.cond3.i
  br i1 %or.cond5.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not355.i = icmp eq i32 %i.bh, 0
  br i1 %.not355.i, label %.thread392.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.5, i32 noundef 31) #17 ; 0 uses
  %.pr.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not356.i = icmp eq i32 %.pr.i, 0
  br i1 %.not356.i, label %.thread392.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.19, i64 36, i64 1, ptr %i.bk) #18 ; 0 uses
  %.pr391.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not357.i = icmp eq i32 %.pr391.i, 0
  br i1 %.not357.i, label %.thread392.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc.i = call i32 @fputc(i32 10, ptr %i.bl)   ; 0 uses
  br label %.thread392.i

.thread392.i:                                     ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  call void @exit(i32 noundef 31) #20
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.bm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select) #22 ; 2 uses
  %i.bn = icmp ugt i64 %i.bm, 17
  %i.bo = getelementptr i8, ptr %spec.select, i64 %i.bm
  %i.bp = getelementptr i8, ptr %i.bo, i64 -17
  %.0290.i = select i1 %i.bn, ptr %i.bp, ptr %spec.select ; 5 uses
  store i32 %.02459, ptr %9, align 8, !tbaa !24
  store ptr %7, ptr %i.q, align 8, !tbaa !25
  store i32 %8, ptr %i.r, align 8, !tbaa !26
  br i1 %.not.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp slt i32 %.02459, 2
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store <2 x ptr> <ptr @LZ4_compressInitStream, ptr @LZ4_compressResetStream>, ptr %i.u, align 8, !tbaa !55
  store <2 x ptr> <ptr @LZ4_compressBlockStream, ptr @LZ4_compressCleanupStream>, ptr %i.v, align 8, !tbaa !55
  br label %LZ4_buildCompressionParameters.exit.i

bb.n:                                             ; preds = %bb.l
  store <2 x ptr> <ptr @LZ4_compressInitStreamHC, ptr @LZ4_compressResetStreamHC>, ptr %i.u, align 8, !tbaa !55
  store <2 x ptr> <ptr @LZ4_compressBlockStreamHC, ptr @LZ4_compressCleanupStreamHC>, ptr %i.v, align 8, !tbaa !55
  br label %LZ4_buildCompressionParameters.exit.i

bb.o:                                             ; preds = %bb.k
  store <2 x ptr> <ptr @LZ4_compressInitNoStream, ptr @LZ4_compressResetNoStream>, ptr %i.u, align 8, !tbaa !55
  store ptr @LZ4_compressCleanupNoStream, ptr %i.t, align 8, !tbaa !56
  %i.br = icmp slt i32 %.02459, 2
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr @LZ4_compressBlockNoStream, ptr %i.v, align 8, !tbaa !57
  br label %LZ4_buildCompressionParameters.exit.i

bb.q:                                             ; preds = %bb.o
  store ptr @LZ4_compressBlockNoStreamHC, ptr %i.v, align 8, !tbaa !57
  br label %LZ4_buildCompressionParameters.exit.i

LZ4_buildCompressionParameters.exit.i:            ; preds = %bb.q, %bb.p, %bb.n, %bb.m
  %i.bs = phi ptr [ @LZ4_compressInitStream, %bb.m ], [ @LZ4_compressInitStreamHC, %bb.n ], [ @LZ4_compressInitNoStream, %bb.p ], [ @LZ4_compressInitNoStream, %bb.q ]
  call void %i.bs(ptr noundef nonnull %9) #19, !inline_history !37
  %i.bt = load ptr, ptr @g_dctx, align 8, !tbaa !28
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.r, %LZ4_buildCompressionParameters.exit.i
  br label %bb.w

bb.r:                                             ; preds = %LZ4_buildCompressionParameters.exit.i
  %i.bv = call i64 @LZ4F_createDecompressionContext(ptr noundef nonnull @g_dctx, i32 noundef 100) #19 ; 0 uses
  %i.bw = load ptr, ptr @g_dctx, align 8, !tbaa !28
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.s, label %.preheader

bb.s:                                             ; preds = %bb.r
  %i.by = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not378.i = icmp eq i32 %i.by, 0
  br i1 %.not378.i, label %.thread399.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ca = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.5, i32 noundef 1) #17 ; 0 uses
  %.pr394.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not379.i = icmp eq i32 %.pr394.i, 0
  br i1 %.not379.i, label %.thread399.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite380.i = call i64 @fwrite(ptr nonnull @.str.20, i64 38, i64 1, ptr %i.cb) #18 ; 0 uses
  %.pr397.i = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %.not381.i = icmp eq i32 %.pr397.i, 0
  br i1 %.not381.i, label %.thread399.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc383.i = call i32 @fputc(i32 10, ptr %i.cc) ; 0 uses
  br label %.thread399.i

.thread399.i:                                     ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  call void @exit(i32 noundef 1) #20
  unreachable

bb.w:                                             ; preds = %.preheader, %._crit_edge.i
  %indvars.iv535.i = phi i64 [ %indvars.iv.next536.i, %._crit_edge.i ], [ 0, %.preheader ] ; 2 uses
  %.0328434.i = phi ptr [ %.1329.lcssa.i, %._crit_edge.i ], [ %i.bd, %.preheader ] ; 2 uses
  %.0330433.i = phi ptr [ %.1331.lcssa.i, %._crit_edge.i ], [ %i.aw, %.preheader ] ; 2 uses
  %.0332432.i = phi ptr [ %.1333.lcssa.i, %._crit_edge.i ], [ %0, %.preheader ] ; 2 uses
  %.0334431.i = phi i32 [ %.1335.lcssa.i, %._crit_edge.i ], [ 0, %.preheader ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv535.i
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !14 ; 2 uses
  %i.cf = add i64 %i.ce, %i.aj
  %i.cg = udiv i64 %i.cf, %i.ai
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = add i32 %.0334431.i, %i.ch              ; 2 uses
  %i.cj = icmp ult i32 %.0334431.i, %i.ci
  br i1 %i.cj, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.w
  %i.ck = zext i32 %.0334431.i to i64
  %i.cl = zext i32 %i.ci to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ck, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.0326427.i = phi i64 [ %i.ce, %.lr.ph.preheader.i ], [ %i.db, %.lr.ph.i ] ; 2 uses
  %.1329426.i = phi ptr [ %.0328434.i, %.lr.ph.preheader.i ], [ %i.da, %.lr.ph.i ] ; 2 uses
  %.1331425.i = phi ptr [ %.0330433.i, %.lr.ph.preheader.i ], [ %i.cz, %.lr.ph.i ] ; 2 uses
  %.1333424.i = phi ptr [ %.0332432.i, %.lr.ph.preheader.i ], [ %i.cy, %.lr.ph.i ] ; 2 uses
  %i.cm = call i64 @llvm.umin.i64(i64 %.0326427.i, i64 %i.ai) ; 6 uses
  %i.cn = mul i64 %i.cm, %i.ay
  %i.co = icmp ult i64 %i.cm, %i.az
  %i.cp = select i1 %i.co, i64 %i.cn, i64 2113929216
  %i.cq = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv.i ; 5 uses
  store ptr %.1333424.i, ptr %i.cq, align 8, !tbaa !59
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %.1331425.i, ptr %i.cr, align 8, !tbaa !60
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  store ptr %.1329426.i, ptr %i.cs, align 8, !tbaa !61
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.cm, ptr %i.ct, align 8, !tbaa !62
  %i.cu = trunc i64 %i.cm to i32
  %i.cv = call i32 @LZ4_compressBound(i32 noundef %i.cu) #19
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !63
  %i.cy = getelementptr inbounds nuw i8, ptr %.1333424.i, i64 %i.cm ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.1331425.i, i64 %i.cw ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1329426.i, i64 %i.cp ; 2 uses
  %i.db = sub nuw i64 %.0326427.i, %i.cm
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.dc = icmp samesign ult i64 %indvars.iv.next.i, %i.cl
  br i1 %i.dc, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !38

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.dd = trunc nuw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.w
  %.1335.lcssa.i = phi i32 [ %.0334431.i, %bb.w ], [ %i.dd, %._crit_edge.loopexit.i ] ; 10 uses
  %.1333.lcssa.i = phi ptr [ %.0332432.i, %bb.w ], [ %i.cy, %._crit_edge.loopexit.i ]
  %.1331.lcssa.i = phi ptr [ %.0330433.i, %bb.w ], [ %i.cz, %._crit_edge.loopexit.i ]
  %.1329.lcssa.i = phi ptr [ %.0328434.i, %bb.w ], [ %i.da, %._crit_edge.loopexit.i ]
  %indvars.iv.next536.i = add nuw nsw i64 %indvars.iv535.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next536.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.x, label %bb.w, !llvm.loop !39

bb.x:                                             ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aw, i8 32, i64 %i.av, i1 false)
  %i.de = load i32, ptr @g_decodeOnly, align 4, !tbaa !9
  %.not359.i = icmp ne i32 %i.de, 0
  %i.df = icmp ne i32 %.1335.lcssa.i, 0           ; 7 uses
  %or.cond500.i = and i1 %i.df, %.not359.i
  br i1 %or.cond500.i, label %.lr.ph437.preheader.i, label %.loopexit413.i

.lr.ph437.preheader.i:                            ; preds = %bb.x
  %wide.trip.count542.i = zext i32 %.1335.lcssa.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count542.i, 1
  %i.dg = icmp eq i32 %.1335.lcssa.i, 1
  br i1 %i.dg, label %.lr.ph437.i.epil.preheader, label %.lr.ph437.preheader.i.new

.lr.ph437.preheader.i.new:                        ; preds = %.lr.ph437.preheader.i
  %unroll_iter = and i64 %wide.trip.count542.i, 4294967294
  br label %.lr.ph437.i

.lr.ph437.i:                                      ; preds = %.lr.ph437.i, %.lr.ph437.preheader.i.new
  %indvars.iv538.i = phi i64 [ 0, %.lr.ph437.preheader.i.new ], [ %indvars.iv.next539.i.1, %.lr.ph437.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph437.preheader.i.new ], [ %niter.next.1, %.lr.ph437.i ]
  %i.dh = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv538.i ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !60
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !59
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !62 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.dk, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !64
  %i.do = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv538.i ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !60
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !59
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !62 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.ds, i64 %i.du, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 88
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !64
  %indvars.iv.next539.i.1 = add nuw nsw i64 %indvars.iv538.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit413.i.loopexit.unr-lcssa, label %.lr.ph437.i, !llvm.loop !40

.loopexit413.i.loopexit.unr-lcssa:                ; preds = %.lr.ph437.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit413.i, label %.lr.ph437.i.epil.preheader

.lr.ph437.i.epil.preheader:                       ; preds = %.loopexit413.i.loopexit.unr-lcssa, %.lr.ph437.preheader.i
  %indvars.iv538.i.epil.init = phi i64 [ 0, %.lr.ph437.preheader.i ], [ %indvars.iv.next539.i.1, %.loopexit413.i.loopexit.unr-lcssa ]
  %lcmp.mod179 = trunc i32 %.1335.lcssa.i to i1
  call void @llvm.assume(i1 %lcmp.mod179)
  %i.dw = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv538.i.epil.init ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !60
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !59
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !62 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr align 1 %i.dz, i64 %i.eb, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !64
  br label %.loopexit413.i

.loopexit413.i:                                   ; preds = %.lr.ph437.i.epil.preheader, %.loopexit413.i.loopexit.unr-lcssa, %bb.x
  %i.ed = call i64 @XXH64(ptr noundef nonnull %0, i64 noundef range(i64 0, 2113929217) %1, i64 noundef 0) #19 ; 2 uses
  %i.ee = call i64 @TIME_getTime() #19
  %i.ef = load i32, ptr @g_nbSeconds, align 4, !tbaa !9 ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = mul nuw nsw i64 %i.eg, 1000000000
  %i.ei = or disjoint i64 %i.eh, 100              ; 2 uses
  %i.ej = udiv i64 5242880, %i.w
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  %i.el = add nuw nsw i32 %i.ek, 1
  %i.em = udiv i64 209715200, %i.w
  %i.en = trunc nuw nsw i64 %i.em to i32
  %i.eo = add nuw nsw i32 %i.en, 1
  %i.ep = load i32, ptr @g_decodeOnly, align 4, !tbaa !9
  %i.eq = icmp ne i32 %i.ep, 1
  %i.er = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %i.es = icmp ugt i32 %i.er, 1
  br i1 %i.es, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit413.i
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.eu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.18) #17 ; 0 uses
  %.pre.i = load i32, ptr @g_nbSeconds, align 4, !tbaa !9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.loopexit413.i
  %i.ev = phi i32 [ %.pre.i, %bb.y ], [ %i.ef, %.loopexit413.i ]
  %i.ew = icmp eq i32 %i.ev, 0                    ; 2 uses
  %spec.select.i = select i1 %i.ew, i32 1, i32 %i.el
  %spec.select384.i = select i1 %i.ew, i32 1, i32 %i.eo
  %i.ex = select i1 %.not354.i, i64 2147483647, i64 8421504
  %wide.trip.count548.i = zext i32 %.1335.lcssa.i to i64 ; 9 uses
  %xtraiter180 = and i64 %wide.trip.count548.i, 7 ; 3 uses
  %i.ey = icmp ult i32 %.1335.lcssa.i, 8
  %unroll_iter183 = and i64 %wide.trip.count548.i, 4294967288
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  %lcmp.mod182 = icmp ne i64 %xtraiter180, 0
  %xtraiter185 = and i64 %wide.trip.count548.i, 3 ; 3 uses
  %i.ez = icmp ult i32 %.1335.lcssa.i, 4
  %unroll_iter190 = and i64 %wide.trip.count548.i, 4294967292
  %lcmp.mod187.not = icmp eq i64 %xtraiter185, 0
  %lcmp.mod189 = icmp ne i64 %xtraiter185, 0
  %xtraiter192 = and i64 %wide.trip.count548.i, 3 ; 3 uses
  %i.fa = icmp ult i32 %.1335.lcssa.i, 4
  %unroll_iter197 = and i64 %wide.trip.count548.i, 4294967292
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  %lcmp.mod196 = icmp ne i64 %xtraiter192, 0
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.bm, %bb.z
  %.not361486.i = phi i1 [ true, %bb.z ], [ %.1301.i, %bb.bm ]
  %.not360485.i = phi i1 [ %i.eq, %bb.z ], [ %.1303.i, %bb.bm ]
  %.0293484.i = phi i64 [ %1, %bb.z ], [ %.2.i, %bb.bm ] ; 4 uses
  %.0295483.i = phi i64 [ %1, %bb.z ], [ %.2297.i, %bb.bm ]
  %.0298482.i = phi i32 [ 0, %bb.z ], [ %i.lv, %bb.bm ] ; 3 uses
  %.0304481.i = phi i64 [ 0, %bb.z ], [ %.1305.i, %bb.bm ] ; 2 uses
  %.0306480.i = phi i64 [ 0, %bb.z ], [ %.1307.i, %bb.bm ] ; 2 uses
  %.1309478.i = phi i32 [ %spec.select384.i, %bb.z ], [ %.3311.i, %bb.bm ] ; 5 uses
  %.1313476.i = phi i32 [ %spec.select.i, %bb.z ], [ %.3315.i, %bb.bm ] ; 6 uses
  %.sroa.0123.0475.i = phi i64 [ %i.ee, %bb.z ], [ %.sroa.0123.1.i, %bb.bm ] ; 2 uses
  %.0316474.i = phi i64 [ -1, %bb.z ], [ %.3319.i, %bb.bm ] ; 4 uses
  %.0320473.i = phi i64 [ -1, %bb.z ], [ %.3323.i, %bb.bm ] ; 4 uses
  %.0336472.i = phi i32 [ 0, %bb.z ], [ %.9.i, %bb.bm ] ; 4 uses
  %i.fb = call i64 @TIME_clockSpan_ns(i64 %.sroa.0123.0475.i) #19
  %i.fc = icmp ugt i64 %i.fb, 70000000000
  br i1 %i.fc, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %.critedge.i
  %i.fd = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %i.fe = icmp ugt i32 %i.fd, 1
  br i1 %i.fe, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ff = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite362.i = call i64 @fwrite(ptr nonnull @.str.26, i64 22, i64 1, ptr %i.ff) #18 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fg = call i32 @sleep(i32 noundef 10) #19     ; 0 uses
  %i.fh = call i64 @TIME_getTime() #19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.critedge.i
  %.sroa.0123.1.i = phi i64 [ %i.fh, %bb.ac ], [ %.sroa.0123.0475.i, %.critedge.i ]
  %i.fi = load i32, ptr @g_displayLevel, align 4, !tbaa !9
  %i.fj = icmp ugt i32 %i.fi, 1
  br i1 %i.fj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.fl = zext nneg i32 %.0298482.i to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr @__const.BMK_benchMem.marks, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !20
  %i.fo = trunc i64 %.0293484.i to i32
  %i.fp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fk, ptr noundef nonnull @.str.27, ptr noundef %i.fn, ptr noundef %.0290.i, i32 noundef %i.fo) #17 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %.not360485.i, label %bb.ag, label %.critedge387.i

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aw, i8 -27, i64 %i.av, i1 false)
  br i1 %i.df, label %.lr.ph440.i.preheader, label %._crit_edge441.i

.lr.ph440.i.preheader:                            ; preds = %bb.ag
  br i1 %i.ey, label %.lr.ph440.i.epil.preheader, label %.lr.ph440.i

.lr.ph440.i:                                      ; preds = %.lr.ph440.i.preheader, %.lr.ph440.i
  %indvars.iv544.i = phi i64 [ %indvars.iv.next545.i.7, %.lr.ph440.i ], [ 0, %.lr.ph440.i.preheader ] ; 9 uses
  %niter184 = phi i64 [ %niter184.next.7, %.lr.ph440.i ], [ 0, %.lr.ph440.i.preheader ]
  %i.fq = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  store i64 0, ptr %i.fr, align 8, !tbaa !64
  %i.fs = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 88
  store i64 0, ptr %i.ft, align 8, !tbaa !64
  %i.fu = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 144
  store i64 0, ptr %i.fv, align 8, !tbaa !64
  %i.fw = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 200
  store i64 0, ptr %i.fx, align 8, !tbaa !64
  %i.fy = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 256
  store i64 0, ptr %i.fz, align 8, !tbaa !64
  %i.ga = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 312
  store i64 0, ptr %i.gb, align 8, !tbaa !64
  %i.gc = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 368
  store i64 0, ptr %i.gd, align 8, !tbaa !64
  %i.ge = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 424
  store i64 0, ptr %i.gf, align 8, !tbaa !64
  %indvars.iv.next545.i.7 = add nuw nsw i64 %indvars.iv544.i, 8 ; 2 uses
  %niter184.next.7 = add i64 %niter184, 8         ; 2 uses
  %niter184.ncmp.7 = icmp eq i64 %niter184.next.7, %unroll_iter183
  br i1 %niter184.ncmp.7, label %._crit_edge441.i.loopexit.unr-lcssa, label %.lr.ph440.i, !llvm.loop !41

._crit_edge441.i.loopexit.unr-lcssa:              ; preds = %.lr.ph440.i
  br i1 %lcmp.mod181.not, label %._crit_edge441.i, label %.lr.ph440.i.epil.preheader

.lr.ph440.i.epil.preheader:                       ; preds = %._crit_edge441.i.loopexit.unr-lcssa, %.lr.ph440.i.preheader
  %indvars.iv544.i.epil.init = phi i64 [ 0, %.lr.ph440.i.preheader ], [ %indvars.iv.next545.i.7, %._crit_edge441.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod182)
  br label %.lr.ph440.i.epil

.lr.ph440.i.epil:                                 ; preds = %.lr.ph440.i.epil, %.lr.ph440.i.epil.preheader
  %indvars.iv544.i.epil = phi i64 [ %indvars.iv.next545.i.epil, %.lr.ph440.i.epil ], [ %indvars.iv544.i.epil.init, %.lr.ph440.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph440.i.epil ], [ 0, %.lr.ph440.i.epil.preheader ]
  %i.gg = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv544.i.epil
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store i64 0, ptr %i.gh, align 8, !tbaa !64
  %indvars.iv.next545.i.epil = add nuw nsw i64 %indvars.iv544.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter180
  br i1 %epil.iter.cmp.not, label %._crit_edge441.i, label %.lr.ph440.i.epil, !llvm.loop !42

._crit_edge441.i:                                 ; preds = %._crit_edge441.i.loopexit.unr-lcssa, %.lr.ph440.i.epil, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i64 0, ptr %10, align 8, !tbaa !66
  store i64 1000000, ptr %i.x, align 8, !tbaa !67
  %i.gi = call i32 @nanosleep(ptr noundef nonnull %10, ptr noundef null) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @TIME_waitForNextTick() #19
  %i.gj = call i64 @TIME_getTime() #19
  %.not507.i = icmp eq i32 %.1313476.i, 0
  br i1 %.not507.i, label %._crit_edge452.i, label %.lr.ph451.i

.lr.ph451.i:                                      ; preds = %._crit_edge441.i
  br i1 %i.df, label %.lr.ph445.us.i, label %.lr.ph451.split.i

.lr.ph445.us.i:                                   ; preds = %.lr.ph451.i, %._crit_edge446.us.i
  %.0288449.us.i = phi i32 [ %i.hd, %._crit_edge446.us.i ], [ 0, %.lr.ph451.i ]
  %.1337448.us.i = phi i32 [ %.3339.us.i, %._crit_edge446.us.i ], [ %.0336472.i, %.lr.ph451.i ]
  %i.gk = load ptr, ptr %i.s, align 8, !tbaa !68
  call void %i.gk(ptr noundef nonnull %9) #19, !inline_history !37
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph445.us.i
  %indvars.iv550.i = phi i64 [ 0, %.lr.ph445.us.i ], [ %indvars.iv.next551.i, %bb.aj ] ; 3 uses
  %.2338442.us.i = phi i32 [ %.1337448.us.i, %.lr.ph445.us.i ], [ %.3339.us.i, %bb.aj ]
  %i.gl = load ptr, ptr %i.v, align 8, !tbaa !57
  %i.gm = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %indvars.iv550.i ; 5 uses
end_hunk_1
