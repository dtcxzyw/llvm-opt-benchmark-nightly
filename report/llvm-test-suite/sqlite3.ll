Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 107
begin_hunk_0_@unixOpen:bb.a
fillInUnixFile.exit:                              ; preds = %bb.ad, %bb.ac, %bb.d, %bb.k, %bb.e
  %.152 = phi i32 [ %i.w, %bb.e ], [ 14, %bb.d ], [ %i.y, %bb.k ], [ 7, %bb.ac ], [ 0, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret i32 %.152
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 1291) i32 @unixDelete(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2) #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call i32 @unlink(ptr noundef %1) #43 ; 0 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.c = call fastcc i32 @openDirectory(ptr noundef %1, ptr noundef %i.a) ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.a, align 4, !tbaa !112  ; 2 uses
  %i.f = tail call i32 @fsync(i32 noundef %i.e) #43
  %.not6 = icmp eq i32 %i.f, 0
  %spec.select = select i1 %.not6, i32 0, i32 1290
  %i.g = tail call i32 @close(i32 noundef %i.e) #43 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %spec.select, %bb.c ], [ %i.c, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.2 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nofree nounwind uwtable
define internal noundef range(i32 0, 2) i32 @unixAccess(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #24 {
bb.a:
  %switch.selectcmp = icmp eq i32 %2, 1
  %switch.select = select i1 %switch.selectcmp, i32 6, i32 0
  %switch.selectcmp2 = icmp eq i32 %2, 2
  %switch.select3 = select i1 %switch.selectcmp2, i32 4, i32 %switch.select
  %i.a = tail call i32 @access(ptr noundef %1, i32 noundef %switch.select3) #43
  %i.b = icmp eq i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @unixGetTempname(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr noundef %2) #5 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.a = load ptr, ptr @sqlite3_temp_directory, align 8, !tbaa !150 ; 3 uses
  store ptr %i.a, ptr @unixGetTempname.azDirs, align 16, !tbaa !150
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @stat(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #43
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.b, align 8, !tbaa !1181
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 16384
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @unixGetTempname.azDirs, align 16, !tbaa !150
  %i.i = tail call i32 @access(ptr noundef %i.h, i32 noundef 7) #43
  %.not28 = icmp eq i32 %i.i, 0
  br i1 %.not28, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.u, %bb.q, %bb.m, %bb.i, %bb.d
  %.lcssa33 = phi ptr [ @unixGetTempname.azDirs, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @unixGetTempname.azDirs, i64 8), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @unixGetTempname.azDirs, i64 16), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @unixGetTempname.azDirs, i64 24), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @unixGetTempname.azDirs, i64 32), %bb.u ]
  %i.j = load ptr, ptr %.lcssa33, align 8, !tbaa !150
  br label %.loopexit29

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @unixGetTempname.azDirs, i64 8), align 8, !tbaa !150 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = call i32 @stat(ptr noundef nonnull %i.k, ptr noundef nonnull %3) #43
  %.not.1 = icmp eq i32 %i.m, 0
  br i1 %.not.1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.n = load i32, ptr %i.b, align 8, !tbaa !1181
  %i.o = and i32 %i.n, 61440
  %i.p = icmp eq i32 %i.o, 16384
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @unixGetTempname.azDirs, i64 8), align 8, !tbaa !150
  %i.r = tail call i32 @access(ptr noundef %i.q, i32 noundef 7) #43
  %.not28.1 = icmp eq i32 %i.r, 0
  br i1 %.not28.1, label %bb.e, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @unixGetTempname.azDirs, i64 16), align 16, !tbaa !150 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = call i32 @stat(ptr noundef nonnull %i.s, ptr noundef nonnull %3) #43
  %.not.2 = icmp eq i32 %i.u, 0
  br i1 %.not.2, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.v = load i32, ptr %i.b, align 8, !tbaa !1181
  %i.w = and i32 %i.v, 61440
  %i.x = icmp eq i32 %i.w, 16384
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @unixGetTempname.azDirs, i64 16), align 16, !tbaa !150
  %i.z = tail call i32 @access(ptr noundef %i.y, i32 noundef 7) #43
  %.not28.2 = icmp eq i32 %i.z, 0
  br i1 %.not28.2, label %bb.e, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @unixGetTempname.azDirs, i64 24), align 8, !tbaa !150 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = call i32 @stat(ptr noundef nonnull %i.aa, ptr noundef nonnull %3) #43
  %.not.3 = icmp eq i32 %i.ac, 0
  br i1 %.not.3, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !1181
  %i.ae = and i32 %i.ad, 61440
  %i.af = icmp eq i32 %i.ae, 16384
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @unixGetTempname.azDirs, i64 24), align 8, !tbaa !150
  %i.ah = tail call i32 @access(ptr noundef %i.ag, i32 noundef 7) #43
  %.not28.3 = icmp eq i32 %i.ah, 0
  br i1 %.not28.3, label %bb.e, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @unixGetTempname.azDirs, i64 32), align 16, !tbaa !150 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.loopexit29, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = call i32 @stat(ptr noundef nonnull %i.ai, ptr noundef nonnull %3) #43
  %.not.4 = icmp eq i32 %i.ak, 0
  br i1 %.not.4, label %bb.t, label %.loopexit29

bb.t:                                             ; preds = %bb.s
  %i.al = load i32, ptr %i.b, align 8, !tbaa !1181
  %i.am = and i32 %i.al, 61440
  %i.an = icmp eq i32 %i.am, 16384
  br i1 %i.an, label %bb.u, label %.loopexit29

bb.u:                                             ; preds = %bb.t
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @unixGetTempname.azDirs, i64 32), align 16, !tbaa !150
  %i.ap = tail call i32 @access(ptr noundef %i.ao, i32 noundef 7) #43
  %.not28.4 = icmp eq i32 %i.ap, 0
  br i1 %.not28.4, label %bb.e, label %.loopexit29

.loopexit29:                                      ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.e
  %.0 = phi ptr [ %i.j, %bb.e ], [ @.str.24, %bb.u ], [ @.str.24, %bb.t ], [ @.str.24, %bb.s ], [ @.str.24, %bb.r ] ; 2 uses
  %i.aq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #42
  %i.ar = icmp eq i64 %i.aq, 25
  br i1 %i.ar, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit29
  %i.as = add nsw i32 %1, -17
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %bb.v
  %i.at = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.as, ptr noundef %2, ptr noundef nonnull @.str.32, ptr noundef nonnull %.0) ; 0 uses
  %i.au = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #42 ; 2 uses
  %sext = shl i64 %i.au, 32
  %i.av = ashr exact i64 %sext, 32
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  tail call fastcc void @sqlite3Randomness(i32 noundef 15, ptr noundef nonnull %i.aw)
  %i.ax = shl i64 %i.au, 32
  %i.ay = ashr exact i64 %i.ax, 32                ; 16 uses
  %i.az = getelementptr inbounds i8, ptr %2, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !139
  %i.bb = urem i8 %i.ba, 62
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !139
  store i8 %i.be, ptr %i.az, align 1, !tbaa !139
  %i.bf = getelementptr i8, ptr %2, i64 %i.ay
  %i.bg = getelementptr i8, ptr %i.bf, i64 1      ; 2 uses
  %4 = load i8, ptr %i.bg, align 1, !tbaa !139
  %5 = urem i8 %4, 62
  %6 = zext nneg i8 %5 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %6
  %7 = load i8, ptr %i.bh, align 1, !tbaa !139
  store i8 %7, ptr %i.bg, align 1, !tbaa !139
  %i.bi = getelementptr i8, ptr %2, i64 %i.ay
  %i.bj = getelementptr i8, ptr %i.bi, i64 2      ; 2 uses
  %8 = load i8, ptr %i.bj, align 1, !tbaa !139
  %9 = urem i8 %8, 62
  %10 = zext nneg i8 %9 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %10
  %11 = load i8, ptr %i.bk, align 1, !tbaa !139
  store i8 %11, ptr %i.bj, align 1, !tbaa !139
  %i.bl = getelementptr i8, ptr %2, i64 %i.ay
  %i.bm = getelementptr i8, ptr %i.bl, i64 3      ; 2 uses
  %12 = load i8, ptr %i.bm, align 1, !tbaa !139
  %13 = urem i8 %12, 62
  %14 = zext nneg i8 %13 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %14
  %15 = load i8, ptr %i.bn, align 1, !tbaa !139
  store i8 %15, ptr %i.bm, align 1, !tbaa !139
  %i.bo = getelementptr i8, ptr %2, i64 %i.ay
  %i.bp = getelementptr i8, ptr %i.bo, i64 4      ; 2 uses
  %16 = load i8, ptr %i.bp, align 1, !tbaa !139
  %17 = urem i8 %16, 62
  %18 = zext nneg i8 %17 to i64
  %19 = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !139
  store i8 %20, ptr %i.bp, align 1, !tbaa !139
  %i.bq = getelementptr i8, ptr %2, i64 %i.ay
  %21 = getelementptr i8, ptr %i.bq, i64 5        ; 2 uses
  %22 = load i8, ptr %21, align 1, !tbaa !139
  %23 = urem i8 %22, 62
  %i.br = zext nneg i8 %23 to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !139
  store i8 %i.bt, ptr %21, align 1, !tbaa !139
  %24 = getelementptr i8, ptr %2, i64 %i.ay
  %25 = getelementptr i8, ptr %24, i64 6          ; 2 uses
  %26 = load i8, ptr %25, align 1, !tbaa !139
  %27 = urem i8 %26, 62
  %i.bu = zext nneg i8 %27 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !139
  store i8 %i.bw, ptr %25, align 1, !tbaa !139
  %28 = getelementptr i8, ptr %2, i64 %i.ay
  %29 = getelementptr i8, ptr %28, i64 7          ; 2 uses
  %30 = getelementptr i8, ptr %2, i64 %i.ay
  %31 = getelementptr i8, ptr %30, i64 8
  %32 = getelementptr i8, ptr %2, i64 %i.ay
  %i.bx = getelementptr i8, ptr %32, i64 9
  %33 = getelementptr i8, ptr %2, i64 %i.ay
  %34 = getelementptr i8, ptr %33, i64 10
  %35 = getelementptr i8, ptr %2, i64 %i.ay
  %36 = getelementptr i8, ptr %35, i64 11
  %i.by = getelementptr i8, ptr %2, i64 %i.ay
  %37 = getelementptr i8, ptr %i.by, i64 12
  %38 = getelementptr i8, ptr %2, i64 %i.ay
  %39 = getelementptr i8, ptr %38, i64 13
  %40 = getelementptr i8, ptr %2, i64 %i.ay
  %i.bz = getelementptr i8, ptr %40, i64 14
  %41 = load <8 x i8>, ptr %29, align 1, !tbaa !139
  %42 = urem <8 x i8> %41, splat (i8 62)          ; 8 uses
  %i.ca = extractelement <8 x i8> %42, i64 0
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !139
  store i8 %i.cd, ptr %29, align 1, !tbaa !139
  %i.ce = extractelement <8 x i8> %42, i64 1
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !139
  store i8 %i.ch, ptr %31, align 1, !tbaa !139
  %i.ci = extractelement <8 x i8> %42, i64 2
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !139
  store i8 %i.cl, ptr %i.bx, align 1, !tbaa !139
  %i.cm = extractelement <8 x i8> %42, i64 3
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !139
  store i8 %i.cp, ptr %34, align 1, !tbaa !139
  %i.cq = extractelement <8 x i8> %42, i64 4
  %i.cr = zext nneg i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !139
  store i8 %i.ct, ptr %36, align 1, !tbaa !139
  %i.cu = extractelement <8 x i8> %42, i64 5
  %i.cv = zext nneg i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !139
  store i8 %i.cx, ptr %37, align 1, !tbaa !139
  %i.cy = extractelement <8 x i8> %42, i64 6
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !139
  store i8 %i.db, ptr %39, align 1, !tbaa !139
  %i.dc = extractelement <8 x i8> %42, i64 7
  %i.dd = zext nneg i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @unixGetTempname.zChars, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !139
  store i8 %i.df, ptr %i.bz, align 1, !tbaa !139
  %i.dg = getelementptr i8, ptr %2, i64 %i.ay
  %i.dh = getelementptr i8, ptr %i.dg, i64 15
  store i8 0, ptr %i.dh, align 1, !tbaa !139
  %i.di = tail call i32 @access(ptr noundef nonnull %2, i32 noundef 0) #43
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.v, label %.loopexit, !llvm.loop !1180

.loopexit:                                        ; preds = %bb.v, %.loopexit29
  %.025 = phi i32 [ 1, %.loopexit29 ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 15) i32 @unixFullPathname(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = add nsw i32 %2, -1
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %3, i64 %i.b
  store i8 0, ptr %i.c, align 1, !tbaa !139
  %i.d = load i8, ptr %1, align 1, !tbaa !139
  %i.e = icmp eq i8 %i.d, 47
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef nonnull %1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @getcwd(ptr noundef nonnull %3, i64 noundef %i.b) #43
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #42 ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = sub nsw i32 %2, %i.j
  %sext = shl i64 %i.i, 32
  %i.l = ashr exact i64 %sext, 32
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.n = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull @.str.33, ptr noundef nonnull %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.thread, %bb.c
  %.1 = phi i32 [ 14, %bb.c ], [ 0, %.thread ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unixRandomness(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %i.b, i1 false)
  %i.c = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.34, i32 noundef 0) #43 ; 3 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.e = call i64 @time(ptr noundef nonnull %i.a) #43 ; 0 uses
  %i.f = load i64, ptr %i.a, align 8
  store i64 %i.f, ptr %2, align 1
  %i.g = call i32 @getpid() #43
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.g, ptr %i.h, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i64 @read(i32 noundef %i.c, ptr noundef %2, i64 noundef %i.b) #43 ; 0 uses
  %i.j = tail call i32 @close(i32 noundef %i.c) #43 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2146000000, 2147000001) i32 @unixSleep(ptr nofree readnone captures(none) %0, i32 noundef %1) #5 {
bb.a:
  %i.a = add nsw i32 %1, 999999
  %i.b = sdiv i32 %i.a, 1000000                   ; 2 uses
  %i.c = tail call i32 @sleep(i32 noundef %i.b) #43 ; 0 uses
  %i.d = mul nsw i32 %i.b, 1000000
  ret i32 %i.d
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @unixCurrentTime(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #24 {
bb.a:
  %2 = alloca %struct.timeval, align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #43 ; 0 uses
  %i.b = load <2 x i64>, ptr %2, align 16, !tbaa !141
  %i.c = sitofp <2 x i64> %i.b to <2 x double>
  %i.d = fdiv <2 x double> %i.c, <double 8.640000e+04, double 8.640000e+10> ; 2 uses
  %i.e = extractelement <2 x double> %i.d, i64 0
  %i.f = fadd double %i.e, f0x41429EC5C0000000
  %i.g = extractelement <2 x double> %i.d, i64 1
  %i.h = fadd double %i.f, %i.g
  store double %i.h, ptr %1, align 8, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret i32 0
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #25

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 15) i32 @openDirectory(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [513 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.b = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 512, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef %0) ; 0 uses
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #42
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01117 = phi i32 [ %i.i, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %i.f = zext nneg i32 %.01117 to i64             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !139
  %.not = icmp eq i8 %i.h, 47
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = add nsw i32 %.01117, -1
  %i.j = icmp sgt i32 %.01117, 0
  br i1 %i.j, label %.lr.ph, label %.critedge.thread, !llvm.loop !1182

.critedge:                                        ; preds = %.lr.ph
  %.not15 = icmp eq i32 %.01117, 0
  br i1 %.not15, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  store i8 0, ptr %i.k, align 1, !tbaa !139
  %i.l = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0) #43 ; 5 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.l, i32 noundef 1, i32 noundef 0) #43
  %i.o = or i32 %i.n, 1
  %i.p = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.l, i32 noundef 2, i32 noundef %i.o) #43 ; 0 uses
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %bb.a, %.critedge, %bb.c, %bb.d
  %storemerge = phi i32 [ %i.l, %bb.d ], [ %i.l, %bb.c ], [ -1, %.critedge ], [ -1, %bb.a ], [ -1, %bb.b ]
  %i.q = phi i32 [ 0, %bb.d ], [ 14, %bb.c ], [ 14, %.critedge ], [ 14, %bb.a ], [ 14, %bb.b ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret i32 %i.q
}

declare i32 @close(i32 noundef) local_unnamed_addr #27

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3HashFind(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %sqlite3HashFindElem.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !448
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %sqlite3HashFindElem.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %0, align 8, !tbaa !467
  %i.f = icmp eq i8 %i.e, 3
  %strHash.binHash.i.i = select i1 %i.f, ptr @strHash, ptr @binHash
  %i.g = tail call i32 %strHash.binHash.i.i(ptr noundef %1, i32 noundef %2) #43, !callees !468, !inline_history !1183
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !448  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %sqlite3HashFindElem.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !449
  %i.k = srem i32 %i.g, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.m, align 8, !tbaa !470
end_hunk_0
