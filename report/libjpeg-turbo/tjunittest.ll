Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/tjunittest?download=true
inline.NumInlined: 61
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@main:bb.a

bb.en:                                            ; preds = %bufSizeTest.exit
  %puts54 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  call fastcc void @doTest(i32 noundef 48, i32 noundef 48, ptr noundef nonnull @_onlyRGB, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.13)
  call fastcc void @doTest(i32 noundef 48, i32 noundef 48, ptr noundef nonnull @_onlyRGB, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.13)
  call fastcc void @doTest(i32 noundef 48, i32 noundef 48, ptr noundef nonnull @_onlyRGB, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13)
  call fastcc void @doTest(i32 noundef 48, i32 noundef 48, ptr noundef nonnull @_onlyRGB, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.13)
  call fastcc void @doTest(i32 noundef 48, i32 noundef 48, ptr noundef nonnull @_onlyRGB, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @.str.13)
  call fastcc void @doTest(i32 noundef 48, i32 noundef 48, ptr noundef nonnull @_onlyRGB, i32 noundef 1, i32 noundef 6, ptr noundef nonnull @.str.13)
  call fastcc void @doTest(i32 noundef 48, i32 noundef 48, ptr noundef nonnull @_onlyRGB, i32 noundef 1, i32 noundef 7, ptr noundef nonnull @.str.13)
  call fastcc void @doTest(i32 noundef 48, i32 noundef 48, ptr noundef nonnull @_onlyRGB, i32 noundef 1, i32 noundef 8, ptr noundef nonnull @.str.13)
  call fastcc void @doTest(i32 noundef 48, i32 noundef 48, ptr noundef nonnull @_onlyRGB, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.13)
  call fastcc void @doTest(i32 noundef 48, i32 noundef 48, ptr noundef nonnull @_onlyGray, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.13)
  br label %bb.eo

bb.eo:                                            ; preds = %bufSizeTest.exit, %bb.en, %bb.o, %bb.m
  %.b53 = load i1, ptr @exitStatus, align 4
  %i.jo = sext i1 %.b53 to i32
  br label %bmpTest.exit

bmpTest.exit:                                     ; preds = %bb.ab, %bb.z, %bb.y, %bb.w, %bb.u, %bb.t, %bb.r, %bb.eo
  %.044 = phi i32 [ %i.jo, %bb.eo ], [ -1, %bb.z ], [ -1, %bb.r ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %bb.w ], [ -1, %bb.y ], [ 0, %bb.ab ]
  ret i32 %.044
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal fastcc void @usage(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %0) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %puts8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  tail call void @exit(i32 noundef 1) #23
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @doTest(i32 noundef range(i32 35, 49) %0, i32 noundef range(i32 35, 49) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 1, 6) %3, i32 noundef range(i32 0, 9) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 8 uses
  %i.b = alloca [3 x ptr], align 16               ; 10 uses
  %i.c = alloca [3 x i32], align 4                ; 10 uses
  %6 = alloca %struct.MD5Context, align 4         ; 9 uses
  %i.d = alloca [65 x i8], align 16               ; 4 uses
  %i.e = alloca [65 x i8], align 16               ; 4 uses
  %i.f = alloca ptr, align 8                      ; 17 uses
  %i.g = alloca i64, align 8                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store ptr null, ptr %i.f, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store i64 0, ptr %i.g, align 8, !tbaa !15
  %.b77 = load i1, ptr @lossless, align 4
  %i.h = icmp ne i32 %4, 3
  %or.cond = and i1 %i.h, %.b77
  %spec.store.select = select i1 %or.cond, i32 0, i32 %4 ; 6 uses
  %.b80 = load i1, ptr @alloc, align 4
  br i1 %.b80, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @tj3JPEGBufSize(i32 noundef %0, i32 noundef %1, i32 noundef %spec.store.select) #21 ; 4 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !15
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @tj3GetErrorStr(ptr noundef null) #21
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.k) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.d:                                             ; preds = %bb.b
  %i.m = tail call ptr @tj3Alloc(i64 noundef %i.i) #21 ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !11
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @.str.135) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.f:                                             ; preds = %bb.d, %bb.a
  %.068 = phi i64 [ 0, %bb.a ], [ %i.i, %bb.d ]
  %i.p = tail call ptr @tj3InitVersion(i32 noundef 0, i32 noundef 3002000) #21 ; 43 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @tj3InitVersion(i32 noundef 1, i32 noundef 3002000) #21 ; 16 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = tail call ptr @tj3GetErrorStr(ptr noundef null) #21
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.t) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.i:                                             ; preds = %bb.g
  %.b79 = load i1, ptr @alloc, align 4
  %i.v = xor i1 %.b79, true
  %i.w = zext i1 %i.v to i32
  %i.x = tail call i32 @tj3Set(ptr noundef nonnull %i.p, i32 noundef 2, i32 noundef %i.w) #21
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.p) #21
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.z) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.k:                                             ; preds = %bb.i
  %.b = load i1, ptr @lossless, align 4
  br i1 %.b, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call i32 @tj3Set(ptr noundef nonnull %i.p, i32 noundef 15, i32 noundef 1) #21
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.p) #21
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.ad) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.n:                                             ; preds = %bb.l
  %i.af = load i32, ptr @psv, align 4, !tbaa !12  ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr @psv, align 4, !tbaa !12
  %i.ah = add nsw i32 %i.af, -1
  %i.ai = srem i32 %i.ah, 7
  %i.aj = add nsw i32 %i.ai, 1
  %i.ak = tail call i32 @tj3Set(ptr noundef nonnull %i.p, i32 noundef 16, i32 noundef %i.aj) #21
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.am = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.p) #21
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.am) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.p:                                             ; preds = %bb.k
  %i.ao = tail call i32 @tj3Set(ptr noundef nonnull %i.p, i32 noundef 3, i32 noundef 100) #21
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aq = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.p) #21
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.aq) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.r:                                             ; preds = %bb.p
  switch i32 %spec.store.select, label %bb.u [
    i32 4, label %bb.s
    i32 2, label %bb.s
    i32 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r
  %i.as = tail call i32 @tj3Set(ptr noundef nonnull %i.r, i32 noundef 9, i32 noundef 1) #21
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.au = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.r) #21
  %i.av = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.au) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.n
  %i.aw = tail call i32 @tj3Set(ptr noundef nonnull %i.p, i32 noundef 4, i32 noundef %spec.store.select) #21
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.v, label %.preheader91

.preheader91:                                     ; preds = %bb.u
  %i.ay = icmp samesign ugt i32 %spec.store.select, 6
  %i.az = mul nuw nsw i32 %1, %0
  %wide.trip.count234.i.i = zext nneg i32 %0 to i64 ; 25 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %xtraiter = and i64 %wide.trip.count234.i.i, 1
  %unroll_iter = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod242 = trunc i32 %0 to i1
  %xtraiter243 = and i64 %wide.trip.count234.i.i, 1
  %unroll_iter246 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  %lcmp.mod245 = trunc i32 %0 to i1
  %xtraiter248 = and i64 %wide.trip.count234.i.i, 1
  %unroll_iter251 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  %lcmp.mod250 = trunc i32 %0 to i1
  %xtraiter253 = and i64 %wide.trip.count234.i.i, 1
  %unroll_iter256 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  %lcmp.mod255 = trunc i32 %0 to i1
  %i.be = and i64 %wide.trip.count234.i.i, 12
  %n.vec169 = and i64 %wide.trip.count234.i.i, 48 ; 5 uses
  %i.bf = icmp eq i64 %n.vec169, 32
  %cmp.n182 = icmp eq i64 %n.vec169, %wide.trip.count234.i.i
  %min.epilog.iters.check187 = icmp eq i64 %i.be, 0
  %n.vec189 = and i64 %wide.trip.count234.i.i, 60 ; 3 uses
  %i.bg = trunc nuw nsw i64 %n.vec169 to i32
  %broadcast.splatinsert196 = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat197 = shufflevector <4 x i32> %broadcast.splatinsert196, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction198 = or disjoint <4 x i32> %broadcast.splat197, <i32 0, i32 1, i32 2, i32 3>
  %cmp.n205 = icmp eq i64 %n.vec189, %wide.trip.count234.i.i
  %i.bh = and i64 %wide.trip.count234.i.i, 12
  %n.vec = and i64 %wide.trip.count234.i.i, 48    ; 5 uses
  %i.bi = icmp eq i64 %n.vec, 32
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count234.i.i
  %min.epilog.iters.check = icmp eq i64 %i.bh, 0
  %n.vec153 = and i64 %wide.trip.count234.i.i, 60 ; 3 uses
  %i.bj = trunc nuw nsw i64 %n.vec to i32
  %broadcast.splatinsert160 = insertelement <4 x i32> poison, i32 %i.bj, i64 0
  %broadcast.splat161 = shufflevector <4 x i32> %broadcast.splatinsert160, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat161, <i32 0, i32 1, i32 2, i32 3>
  %cmp.n166 = icmp eq i64 %n.vec153, %wide.trip.count234.i.i
  %xtraiter258 = and i64 %wide.trip.count234.i.i, 1
  %unroll_iter261 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  %lcmp.mod260 = trunc i32 %0 to i1
  %xtraiter263 = and i64 %wide.trip.count234.i.i, 1
  %unroll_iter266 = and i64 %wide.trip.count234.i.i, 62
  %lcmp.mod264.not = icmp eq i64 %xtraiter263, 0
  %lcmp.mod265 = trunc i32 %0 to i1
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bk = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.p) #21
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.bk) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.w:                                             ; preds = %.preheader91, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader91 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !12
  %i.bo = icmp eq i32 %i.bn, 11
  %or.cond82 = select i1 %i.bo, i1 %i.ay, i1 false
  br i1 %or.cond82, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.w, %bb.ct
  %i.bp = phi i1 [ false, %bb.ct ], [ true, %bb.w ]
  %.098 = phi i32 [ 1, %bb.ct ], [ 0, %bb.w ]     ; 2 uses
  %i.bq = call i32 @tj3Set(ptr noundef nonnull %i.p, i32 noundef 1, i32 noundef %.098) #21
  %i.br = icmp eq i32 %i.bq, -1
  br i1 %i.br, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.preheader
  %i.bs = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.p) #21
  %i.bt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.bs) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.y:                                             ; preds = %.preheader
  %i.bu = call i32 @tj3Set(ptr noundef nonnull %i.r, i32 noundef 1, i32 noundef %.098) #21
  %i.bv = icmp eq i32 %i.bu, -1
  br i1 %i.bv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bw = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.r) #21
  %i.bx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.bw) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cv

bb.aa:                                            ; preds = %bb.y
  %i.by = load i32, ptr %i.bm, align 4, !tbaa !12 ; 10 uses
  %.b78 = load i1, ptr @alloc, align 4
  br i1 %.b78, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %.068, ptr %i.g, align 8, !tbaa !15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bz = sext i32 %i.by to i64                   ; 5 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr @pixFormatStr, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !11 ; 5 uses
  %i.cc = call i32 @tj3Get(ptr noundef nonnull %i.p, i32 noundef 1) #21 ; 2 uses
  %i.cd = call i32 @tj3Get(ptr noundef nonnull %i.p, i32 noundef 4) #21
  %.fr100 = freeze i32 %i.cd                      ; 17 uses
  %i.ce = call i32 @tj3Get(ptr noundef nonnull %i.p, i32 noundef 16) #21 ; 2 uses
  %i.cf = call i32 @tj3Get(ptr noundef nonnull %i.p, i32 noundef 3) #21 ; 3 uses
  %.not.i = icmp eq i32 %i.cc, 0                  ; 7 uses
  %i.cg = select i1 %.not.i, ptr @.str.139, ptr @.str.138 ; 4 uses
  %i.ch = select i1 %.not.i, ptr @.str.141, ptr @.str.140 ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.bz
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !12 ; 4 uses
  %i.ck = mul nsw i32 %i.az, %i.cj                ; 6 uses
  %i.cl = load i32, ptr @sampleSize, align 4, !tbaa !12
  %i.cm = mul nsw i32 %i.ck, %i.cl
  %i.cn = sext i32 %i.cm to i64                   ; 3 uses
  %i.co = call noalias ptr @malloc(i64 noundef %i.cn) #22 ; 37 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @.str.142) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %compTest.exit

bb.ae:                                            ; preds = %bb.ac
  switch i32 %i.by, label %bb.ag [
    i32 6, label %bb.af
    i32 11, label %.preheader150.i.i
  ]

.preheader150.i.i:                                ; preds = %bb.ae
  %i.cr = icmp sgt i32 %i.ck, 0
  %.pre.i.i = load i32, ptr @precision, align 4
  %.fr204.i.i = freeze i32 %.pre.i.i              ; 3 uses
  %i.cs = icmp slt i32 %.fr204.i.i, 9             ; 2 uses
  br i1 %i.cr, label %.lr.ph.i.i, label %.preheader148.i.i

.lr.ph.i.i:                                       ; preds = %.preheader150.i.i
  %i.ct = load i32, ptr @maxSample, align 4, !tbaa !12 ; 2 uses
  %i.cu = trunc i32 %i.ct to i16                  ; 3 uses
  br i1 %i.cs, label %.preheader148.thread.i.i, label %iter.check219

iter.check219:                                    ; preds = %.lr.ph.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.ck to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ck, 4
  br i1 %min.iters.check, label %setVal.exit135.i.i.preheader, label %vector.main.loop.iter.check207

vector.main.loop.iter.check207:                   ; preds = %iter.check219
  %min.iters.check208 = icmp ult i32 %i.ck, 16
  br i1 %min.iters.check208, label %vec.epilog.ph223, label %vector.ph209

vector.ph209:                                     ; preds = %vector.main.loop.iter.check207
  %i.cv = and i64 %wide.trip.count.i.i, 12
  %n.vec210 = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  %broadcast.splatinsert211 = insertelement <8 x i16> poison, i16 %i.cu, i64 0
  %broadcast.splat212 = shufflevector <8 x i16> %broadcast.splatinsert211, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph209
  %index214 = phi i64 [ 0, %vector.ph209 ], [ %index.next215, %vector.body213 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index214 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <8 x i16> %broadcast.splat212, ptr %i.cw, align 2, !tbaa !18
  store <8 x i16> %broadcast.splat212, ptr %i.cx, align 2, !tbaa !18
  %index.next215 = add nuw i64 %index214, 16      ; 2 uses
  %i.cy = icmp eq i64 %index.next215, %n.vec210
  br i1 %i.cy, label %middle.block216, label %vector.body213, !llvm.loop !28

middle.block216:                                  ; preds = %vector.body213
  %cmp.n217 = icmp eq i64 %n.vec210, %wide.trip.count.i.i
  br i1 %cmp.n217, label %.preheader147.preheader.i.i, label %vec.epilog.iter.check221

vec.epilog.iter.check221:                         ; preds = %middle.block216
  %min.epilog.iters.check222 = icmp eq i64 %i.cv, 0
  br i1 %min.epilog.iters.check222, label %setVal.exit135.i.i.preheader, label %vec.epilog.ph223, !prof !44

vec.epilog.ph223:                                 ; preds = %vector.main.loop.iter.check207, %vec.epilog.iter.check221
  %vec.epilog.resume.val218 = phi i64 [ %n.vec210, %vec.epilog.iter.check221 ], [ 0, %vector.main.loop.iter.check207 ]
  %n.vec224 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert225 = insertelement <4 x i16> poison, i16 %i.cu, i64 0
  %broadcast.splat226 = shufflevector <4 x i16> %broadcast.splatinsert225, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body227

vec.epilog.vector.body227:                        ; preds = %vec.epilog.vector.body227, %vec.epilog.ph223
  %index228 = phi i64 [ %vec.epilog.resume.val218, %vec.epilog.ph223 ], [ %index.next229, %vec.epilog.vector.body227 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %index228
  store <4 x i16> %broadcast.splat226, ptr %i.cz, align 2, !tbaa !18
  %index.next229 = add nuw i64 %index228, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next229, %n.vec224
  br i1 %i.da, label %vec.epilog.middle.block230, label %vec.epilog.vector.body227, !llvm.loop !29

vec.epilog.middle.block230:                       ; preds = %vec.epilog.vector.body227
  %cmp.n231 = icmp eq i64 %n.vec224, %wide.trip.count.i.i
  br i1 %cmp.n231, label %.preheader147.preheader.i.i, label %setVal.exit135.i.i.preheader

setVal.exit135.i.i.preheader:                     ; preds = %iter.check219, %vec.epilog.iter.check221, %vec.epilog.middle.block230
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check219 ], [ %n.vec210, %vec.epilog.iter.check221 ], [ %n.vec224, %vec.epilog.middle.block230 ]
  br label %setVal.exit135.i.i

.preheader148.thread.i.i:                         ; preds = %.lr.ph.i.i
  %i.db = trunc i32 %i.ct to i8
  %i.dc = zext nneg i32 %i.ck to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.co, i8 %i.db, i64 %i.dc, i1 false), !tbaa !16
  br label %.preheader147.us.preheader.i.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.co, i8 0, i64 %i.cn, i1 false)
  %i.dd = load i32, ptr @redToY, align 4          ; 2 uses
  %i.de = load i32, ptr @yellowToY, align 4       ; 2 uses
  %i.df = load i32, ptr @precision, align 4
  %.fr.i.i = freeze i32 %i.df                     ; 3 uses
  %i.dg = icmp slt i32 %.fr.i.i, 9
  %i.dh = load i32, ptr @maxSample, align 4       ; 2 uses
  br i1 %i.dg, label %.preheader145.us.preheader.i.i, label %.preheader145.preheader.i.i

.preheader145.us.preheader.i.i:                   ; preds = %bb.af
  %i.di = trunc i32 %i.dh to i8
  br label %iter.check

iter.check:                                       ; preds = %.split171.us.us.i.i, %.preheader145.us.preheader.i.i
  %.0113178.us.i.i = phi i32 [ %i.er, %.split171.us.us.i.i ], [ 0, %.preheader145.us.preheader.i.i ] ; 5 uses
  %i.dj = lshr i32 %.0113178.us.i.i, 3            ; 3 uses
  %i.dk = icmp samesign ult i32 %.0113178.us.i.i, 16 ; 2 uses
  %i.dl = select i1 %i.dk, i32 %i.dd, i32 %i.de
  %i.dm = trunc i32 %i.dl to i8                   ; 3 uses
  %i.dn = select i1 %i.dk, i8 %i.di, i8 0         ; 3 uses
  %i.do = xor i32 %.0113178.us.i.i, -1
  %i.dp = add nsw i32 %1, %i.do
  %.pn133.us.i.i = select i1 %.not.i, i32 %.0113178.us.i.i, i32 %i.dp
  %.pn132.us.i.i = mul nsw i32 %.pn133.us.i.i, %0
  %i.dq = sext i32 %.pn132.us.i.i to i64
  %invariant.gep334.i.i = getelementptr i8, ptr %i.co, i64 %i.dq ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert149 = insertelement <16 x i8> poison, i8 %i.dm, i64 0
  %broadcast.splat150 = shufflevector <16 x i8> %broadcast.splatinsert149, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert151 = insertelement <16 x i8> poison, i8 %i.dn, i64 0
  %broadcast.splat152 = shufflevector <16 x i8> %broadcast.splatinsert151, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dr = add nuw nsw <16 x i32> %broadcast.splat, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ds = and <16 x i32> %i.dr, splat (i32 1)
  %i.dt = icmp eq <16 x i32> %i.ds, zeroinitializer
  %i.du = select <16 x i1> %i.dt, <16 x i8> %broadcast.splat152, <16 x i8> %broadcast.splat150
  store <16 x i8> %i.du, ptr %invariant.gep334.i.i, align 1, !tbaa !16
  %i.dv = add nuw nsw <16 x i32> %broadcast.splat, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
end_hunk_0
begin_hunk_1_@doTest:bb.a
  %i.ea = add nuw nsw <16 x i32> %broadcast.splat, <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.eb = and <16 x i32> %i.ea, splat (i32 1)
  %i.ec = icmp eq <16 x i32> %i.eb, zeroinitializer
  %i.ed = select <16 x i1> %i.ec, <16 x i8> %broadcast.splat152, <16 x i8> %broadcast.splat150
  %i.ee = getelementptr i8, ptr %invariant.gep334.i.i, i64 32
  store <16 x i8> %i.ed, ptr %i.ee, align 1, !tbaa !16
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %iter.check
  br i1 %cmp.n, label %.split171.us.us.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.preheader145.split.us.split.us.us.i.i.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vec.epilog.iter.check
  %broadcast.splatinsert154 = insertelement <4 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat155 = shufflevector <4 x i32> %broadcast.splatinsert154, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert156 = insertelement <4 x i8> poison, i8 %i.dm, i64 0
  %broadcast.splat157 = shufflevector <4 x i8> %broadcast.splatinsert156, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert158 = insertelement <4 x i8> poison, i8 %i.dn, i64 0
  %broadcast.splat159 = shufflevector <4 x i8> %broadcast.splatinsert158, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index162 = phi i64 [ %n.vec, %vec.epilog.ph ], [ %index.next164, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind163 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next165, %vec.epilog.vector.body ] ; 2 uses
  %i.ef = lshr <4 x i32> %vec.ind163, splat (i32 3)
  %i.eg = add nuw nsw <4 x i32> %i.ef, %broadcast.splat155
  %i.eh = and <4 x i32> %i.eg, splat (i32 1)
  %i.ei = icmp eq <4 x i32> %i.eh, zeroinitializer
  %i.ej = select <4 x i1> %i.ei, <4 x i8> %broadcast.splat159, <4 x i8> %broadcast.splat157
  %i.ek = getelementptr i8, ptr %invariant.gep334.i.i, i64 %index162
  store <4 x i8> %i.ej, ptr %i.ek, align 1, !tbaa !16
  %index.next164 = add nuw i64 %index162, 4       ; 2 uses
  %vec.ind.next165 = add <4 x i32> %vec.ind163, splat (i32 4)
  %i.el = icmp eq i64 %index.next164, %n.vec153
  br i1 %i.el, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n166, label %.split171.us.us.i.i, label %.preheader145.split.us.split.us.us.i.i.preheader

.preheader145.split.us.split.us.us.i.i.preheader: ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv282.i.i.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ %n.vec153, %vec.epilog.middle.block ]
  br label %.preheader145.split.us.split.us.us.i.i

.preheader145.split.us.split.us.us.i.i:           ; preds = %.preheader145.split.us.split.us.us.i.i.preheader, %.preheader145.split.us.split.us.us.i.i
  %indvars.iv282.i.i = phi i64 [ %indvars.iv.next283.i.i, %.preheader145.split.us.split.us.us.i.i ], [ %indvars.iv282.i.i.ph, %.preheader145.split.us.split.us.us.i.i.preheader ] ; 3 uses
  %i.em = trunc nuw nsw i64 %indvars.iv282.i.i to i32
  %i.en = lshr i32 %i.em, 3
  %i.eo = add nuw nsw i32 %i.en, %i.dj
  %i.ep = and i32 %i.eo, 1
  %i.eq = icmp eq i32 %i.ep, 0
  %spec.select.i.i = select i1 %i.eq, i8 %i.dn, i8 %i.dm
  %gep335.i.i = getelementptr i8, ptr %invariant.gep334.i.i, i64 %indvars.iv282.i.i
  store i8 %spec.select.i.i, ptr %gep335.i.i, align 1, !tbaa !16
  %indvars.iv.next283.i.i = add nuw nsw i64 %indvars.iv282.i.i, 1 ; 2 uses
  %exitcond287.not.i.i = icmp eq i64 %indvars.iv.next283.i.i, %wide.trip.count234.i.i
  br i1 %exitcond287.not.i.i, label %.split171.us.us.i.i, label %.preheader145.split.us.split.us.us.i.i, !llvm.loop !31

.split171.us.us.i.i:                              ; preds = %.preheader145.split.us.split.us.us.i.i, %vec.epilog.middle.block, %middle.block
  %i.er = add nuw nsw i32 %.0113178.us.i.i, 1     ; 2 uses
  %exitcond288.not.i.i = icmp eq i32 %i.er, %1
  br i1 %exitcond288.not.i.i, label %initBuf.exit.i, label %iter.check, !llvm.loop !32

.preheader145.preheader.i.i:                      ; preds = %bb.af
  %i.es = trunc i32 %i.dh to i16
  br label %iter.check184

iter.check184:                                    ; preds = %.split171.split.i.i, %.preheader145.preheader.i.i
  %.0113178.i.i = phi i32 [ %i.gh, %.split171.split.i.i ], [ 0, %.preheader145.preheader.i.i ] ; 5 uses
  %i.et = xor i32 %.0113178.i.i, -1
  %i.eu = add nsw i32 %1, %i.et
  %.pn133.i.i = select i1 %.not.i, i32 %.0113178.i.i, i32 %i.eu
  %.pn132.i.i = mul nsw i32 %.pn133.i.i, %0
  %i.ev = lshr i32 %.0113178.i.i, 3               ; 3 uses
  %i.ew = icmp samesign ult i32 %.0113178.i.i, 16 ; 2 uses
  %i.ex = select i1 %i.ew, i32 %i.dd, i32 %i.de
  %i.ey = trunc i32 %i.ex to i16                  ; 3 uses
  %i.ez = select i1 %i.ew, i16 %i.es, i16 0       ; 3 uses
  %i.fa = sext i32 %.pn132.i.i to i64
  %invariant.gep.i.i = getelementptr [2 x i8], ptr %i.co, i64 %i.fa ; 8 uses
  %broadcast.splatinsert170 = insertelement <8 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat171 = shufflevector <8 x i32> %broadcast.splatinsert170, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert172 = insertelement <8 x i16> poison, i16 %i.ey, i64 0
  %broadcast.splat173 = shufflevector <8 x i16> %broadcast.splatinsert172, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert174 = insertelement <8 x i16> poison, i16 %i.ez, i64 0
  %broadcast.splat175 = shufflevector <8 x i16> %broadcast.splatinsert174, <8 x i16> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.fb = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %i.fc = icmp eq <8 x i32> %i.fb, zeroinitializer
  %i.fd = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %.not233 = icmp eq <8 x i32> %i.fd, zeroinitializer
  %i.fe = select <8 x i1> %i.fc, <8 x i16> %broadcast.splat175, <8 x i16> %broadcast.splat173
  %i.ff = select <8 x i1> %.not233, <8 x i16> %broadcast.splat173, <8 x i16> %broadcast.splat175
  %i.fg = getelementptr i8, ptr %invariant.gep.i.i, i64 16
  store <8 x i16> %i.fe, ptr %invariant.gep.i.i, align 2, !tbaa !18
  store <8 x i16> %i.ff, ptr %i.fg, align 2, !tbaa !18
  %i.fh = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %i.fi = icmp eq <8 x i32> %i.fh, zeroinitializer
  %i.fj = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %.not233.1 = icmp eq <8 x i32> %i.fj, zeroinitializer
  %i.fk = select <8 x i1> %i.fi, <8 x i16> %broadcast.splat175, <8 x i16> %broadcast.splat173
  %i.fl = select <8 x i1> %.not233.1, <8 x i16> %broadcast.splat173, <8 x i16> %broadcast.splat175
  %i.fm = getelementptr i8, ptr %invariant.gep.i.i, i64 32
  %i.fn = getelementptr i8, ptr %invariant.gep.i.i, i64 48
  store <8 x i16> %i.fk, ptr %i.fm, align 2, !tbaa !18
  store <8 x i16> %i.fl, ptr %i.fn, align 2, !tbaa !18
  br i1 %i.bf, label %middle.block181, label %vector.body176.2

vector.body176.2:                                 ; preds = %iter.check184
  %i.fo = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %i.fp = icmp eq <8 x i32> %i.fo, zeroinitializer
  %i.fq = and <8 x i32> %broadcast.splat171, splat (i32 1)
  %.not233.2 = icmp eq <8 x i32> %i.fq, zeroinitializer
  %i.fr = select <8 x i1> %i.fp, <8 x i16> %broadcast.splat175, <8 x i16> %broadcast.splat173
  %i.fs = select <8 x i1> %.not233.2, <8 x i16> %broadcast.splat173, <8 x i16> %broadcast.splat175
  %i.ft = getelementptr i8, ptr %invariant.gep.i.i, i64 64
  %i.fu = getelementptr i8, ptr %invariant.gep.i.i, i64 80
  store <8 x i16> %i.fr, ptr %i.ft, align 2, !tbaa !18
  store <8 x i16> %i.fs, ptr %i.fu, align 2, !tbaa !18
  br label %middle.block181

middle.block181:                                  ; preds = %vector.body176.2, %iter.check184
  br i1 %cmp.n182, label %.split171.split.i.i, label %vec.epilog.iter.check186

vec.epilog.iter.check186:                         ; preds = %middle.block181
  br i1 %min.epilog.iters.check187, label %setVal.exit.i.i.preheader, label %vec.epilog.ph188, !prof !44

vec.epilog.ph188:                                 ; preds = %vec.epilog.iter.check186
  %broadcast.splatinsert190 = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat191 = shufflevector <4 x i32> %broadcast.splatinsert190, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert192 = insertelement <4 x i16> poison, i16 %i.ey, i64 0
  %broadcast.splat193 = shufflevector <4 x i16> %broadcast.splatinsert192, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <4 x i16> poison, i16 %i.ez, i64 0
  %broadcast.splat195 = shufflevector <4 x i16> %broadcast.splatinsert194, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body199

vec.epilog.vector.body199:                        ; preds = %vec.epilog.vector.body199, %vec.epilog.ph188
  %index200 = phi i64 [ %n.vec169, %vec.epilog.ph188 ], [ %index.next202, %vec.epilog.vector.body199 ] ; 2 uses
  %vec.ind201 = phi <4 x i32> [ %induction198, %vec.epilog.ph188 ], [ %vec.ind.next203, %vec.epilog.vector.body199 ] ; 2 uses
  %i.fv = lshr <4 x i32> %vec.ind201, splat (i32 3)
  %i.fw = add nuw nsw <4 x i32> %i.fv, %broadcast.splat191
  %i.fx = and <4 x i32> %i.fw, splat (i32 1)
  %i.fy = icmp eq <4 x i32> %i.fx, zeroinitializer
  %i.fz = select <4 x i1> %i.fy, <4 x i16> %broadcast.splat195, <4 x i16> %broadcast.splat193
  %i.ga = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %index200
  store <4 x i16> %i.fz, ptr %i.ga, align 2, !tbaa !18
  %index.next202 = add nuw i64 %index200, 4       ; 2 uses
  %vec.ind.next203 = add <4 x i32> %vec.ind201, splat (i32 4)
  %i.gb = icmp eq i64 %index.next202, %n.vec189
  br i1 %i.gb, label %vec.epilog.middle.block204, label %vec.epilog.vector.body199, !llvm.loop !33

vec.epilog.middle.block204:                       ; preds = %vec.epilog.vector.body199
  br i1 %cmp.n205, label %.split171.split.i.i, label %setVal.exit.i.i.preheader

setVal.exit.i.i.preheader:                        ; preds = %vec.epilog.iter.check186, %vec.epilog.middle.block204
  %indvars.iv262.i.i.ph = phi i64 [ %n.vec169, %vec.epilog.iter.check186 ], [ %n.vec189, %vec.epilog.middle.block204 ]
  br label %setVal.exit.i.i

setVal.exit.i.i:                                  ; preds = %setVal.exit.i.i.preheader, %setVal.exit.i.i
  %indvars.iv262.i.i = phi i64 [ %indvars.iv.next263.i.i, %setVal.exit.i.i ], [ %indvars.iv262.i.i.ph, %setVal.exit.i.i.preheader ] ; 3 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv262.i.i to i32
  %i.gd = lshr i32 %i.gc, 3
  %i.ge = add nuw nsw i32 %i.gd, %i.ev
  %i.gf = and i32 %i.ge, 1
  %i.gg = icmp eq i32 %i.gf, 0
  %spec.select356.i.i = select i1 %i.gg, i16 %i.ez, i16 %i.ey
  %gep.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv262.i.i
  store i16 %spec.select356.i.i, ptr %gep.i.i, align 2, !tbaa !18
  %indvars.iv.next263.i.i = add nuw nsw i64 %indvars.iv262.i.i, 1 ; 2 uses
  %exitcond267.not.i.i = icmp eq i64 %indvars.iv.next263.i.i, %wide.trip.count234.i.i
  br i1 %exitcond267.not.i.i, label %.split171.split.i.i, label %setVal.exit.i.i, !llvm.loop !34

.split171.split.i.i:                              ; preds = %setVal.exit.i.i, %vec.epilog.middle.block204, %middle.block181
  %i.gh = add nuw nsw i32 %.0113178.i.i, 1        ; 2 uses
  %exitcond268.not.i.i = icmp eq i32 %i.gh, %1
  br i1 %exitcond268.not.i.i, label %initBuf.exit.i, label %iter.check184, !llvm.loop !32

.preheader148.i.i:                                ; preds = %.preheader150.i.i
  br i1 %i.cs, label %.preheader147.us.preheader.i.i, label %.preheader147.preheader.i.i

.preheader147.preheader.i.i:                      ; preds = %setVal.exit135.i.i, %middle.block216, %vec.epilog.middle.block230, %.preheader148.i.i
  %i.gi = sext i32 %i.cj to i64                   ; 6 uses
  br label %.preheader147.i.i

.preheader147.us.preheader.i.i:                   ; preds = %.preheader148.i.i, %.preheader148.thread.i.i
  %i.gj = sext i32 %i.cj to i64                   ; 6 uses
  br label %.preheader147.us.i.i

.preheader147.us.i.i:                             ; preds = %.split.us.us.i.i, %.preheader147.us.preheader.i.i
  %.1114162.us.i.i = phi i32 [ %i.iv, %.split.us.us.i.i ], [ 0, %.preheader147.us.preheader.i.i ] ; 5 uses
  %i.gk = xor i32 %.1114162.us.i.i, -1
  %i.gl = add nsw i32 %1, %i.gk
  %.pn130.us.i.i = select i1 %.not.i, i32 %.1114162.us.i.i, i32 %i.gl
  %.pn129.us.i.i = mul nsw i32 %.pn130.us.i.i, %0 ; 2 uses
  %i.gm = lshr i32 %.1114162.us.i.i, 3            ; 6 uses
  %i.gn = icmp samesign ugt i32 %.1114162.us.i.i, 15
  br i1 %i.gn, label %.preheader147.split.us.us.split.us.preheader.i.i, label %.preheader147.split.us.us.split.split.us.preheader.i.i

.preheader147.split.us.us.split.us.preheader.i.i: ; preds = %.preheader147.us.i.i
  %i.go = sext i32 %.pn129.us.i.i to i64          ; 3 uses
  br label %.preheader147.split.us.us.split.us.i.i

.preheader147.split.us.us.split.us.i.i:           ; preds = %.preheader147.split.us.us.split.us.i.i, %.preheader147.split.us.us.split.us.preheader.i.i
  %indvars.iv255.i.i = phi i64 [ 0, %.preheader147.split.us.us.split.us.preheader.i.i ], [ %indvars.iv.next256.i.i.1, %.preheader147.split.us.us.split.us.i.i ] ; 5 uses
  %niter257 = phi i64 [ 0, %.preheader147.split.us.us.split.us.preheader.i.i ], [ %niter257.next.1, %.preheader147.split.us.us.split.us.i.i ]
  %i.gp = add nsw i64 %indvars.iv255.i.i, %i.go
  %i.gq = trunc nuw nsw i64 %indvars.iv255.i.i to i32
  %i.gr = lshr i32 %i.gq, 3
  %i.gs = add nuw nsw i32 %i.gr, %i.gm
  %i.gt = and i32 %i.gs, 1
  %i.gu = icmp eq i32 %i.gt, 0
  %i.gv = mul nsw i64 %i.gp, %i.gj
  %i.gw = getelementptr i8, ptr %i.co, i64 %i.gv
  %..i = select i1 %i.gu, i64 3, i64 2
  %i.gx = getelementptr i8, ptr %i.gw, i64 %..i
  store i8 0, ptr %i.gx, align 1, !tbaa !16
  %indvars.iv.next256.i.i = or disjoint i64 %indvars.iv255.i.i, 1
  %i.gy = add nsw i64 %indvars.iv.next256.i.i, %i.go
  %i.gz = trunc i64 %indvars.iv255.i.i to i32
  %i.ha = lshr i32 %i.gz, 3
  %i.hb = add nuw nsw i32 %i.ha, %i.gm
  %i.hc = and i32 %i.hb, 1
  %i.hd = icmp eq i32 %i.hc, 0
  %i.he = mul nsw i64 %i.gy, %i.gj
  %i.hf = getelementptr i8, ptr %i.co, i64 %i.he
  %..i.1 = select i1 %i.hd, i64 3, i64 2
  %i.hg = getelementptr i8, ptr %i.hf, i64 %..i.1
  store i8 0, ptr %i.hg, align 1, !tbaa !16
  %indvars.iv.next256.i.i.1 = add nuw nsw i64 %indvars.iv255.i.i, 2 ; 3 uses
  %niter257.next.1 = add nuw nsw i64 %niter257, 2 ; 2 uses
  %niter257.ncmp.1 = icmp eq i64 %niter257.next.1, %unroll_iter256
  br i1 %niter257.ncmp.1, label %.split.us.us.i.i.loopexit.unr-lcssa, label %.preheader147.split.us.us.split.us.i.i, !llvm.loop !35

.preheader147.split.us.us.split.split.us.preheader.i.i: ; preds = %.preheader147.us.i.i
  %i.hh = zext nneg i32 %.pn129.us.i.i to i64     ; 3 uses
  br label %.preheader147.split.us.us.split.split.us.i.i

.preheader147.split.us.us.split.split.us.i.i:     ; preds = %setVal.exit136.us.us.us167.i.i.1, %.preheader147.split.us.us.split.split.us.preheader.i.i
  %indvars.iv249.i.i = phi i64 [ 0, %.preheader147.split.us.us.split.split.us.preheader.i.i ], [ %indvars.iv.next250.i.i.1, %setVal.exit136.us.us.us167.i.i.1 ] ; 5 uses
  %niter252 = phi i64 [ 0, %.preheader147.split.us.us.split.split.us.preheader.i.i ], [ %niter252.next.1, %setVal.exit136.us.us.us167.i.i.1 ]
  %i.hi = trunc nuw nsw i64 %indvars.iv249.i.i to i32
  %i.hj = lshr i32 %i.hi, 3
  %i.hk = add nuw nsw i32 %i.hj, %i.gm
  %i.hl = and i32 %i.hk, 1
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %setVal.exit136.us.us.us167.i.i, label %setVal.exit137.us.us.us166.i.i

setVal.exit137.us.us.us166.i.i:                   ; preds = %.preheader147.split.us.us.split.split.us.i.i
  %i.hn = add nuw nsw i64 %indvars.iv249.i.i, %i.hh
  %i.ho = mul nsw i64 %i.hn, %i.gj
  %i.hp = getelementptr i8, ptr %i.co, i64 %i.ho  ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 2
  store i8 0, ptr %i.hq, align 1, !tbaa !16
  %i.hr = getelementptr i8, ptr %i.hp, i64 1
  store i8 0, ptr %i.hr, align 1, !tbaa !16
  br label %setVal.exit136.us.us.us167.i.i

setVal.exit136.us.us.us167.i.i:                   ; preds = %setVal.exit137.us.us.us166.i.i, %.preheader147.split.us.us.split.split.us.i.i
  %i.hs = trunc i64 %indvars.iv249.i.i to i32
  %i.ht = lshr i32 %i.hs, 3
  %i.hu = add nuw nsw i32 %i.ht, %i.gm
  %i.hv = and i32 %i.hu, 1
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %setVal.exit136.us.us.us167.i.i.1, label %setVal.exit137.us.us.us166.i.i.1

setVal.exit137.us.us.us166.i.i.1:                 ; preds = %setVal.exit136.us.us.us167.i.i
  %indvars.iv.next250.i.i = or disjoint i64 %indvars.iv249.i.i, 1
  %i.hx = add nuw nsw i64 %indvars.iv.next250.i.i, %i.hh
  %i.hy = mul nsw i64 %i.hx, %i.gj
  %i.hz = getelementptr i8, ptr %i.co, i64 %i.hy  ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 2
  store i8 0, ptr %i.ia, align 1, !tbaa !16
  %i.ib = getelementptr i8, ptr %i.hz, i64 1
  store i8 0, ptr %i.ib, align 1, !tbaa !16
  br label %setVal.exit136.us.us.us167.i.i.1

setVal.exit136.us.us.us167.i.i.1:                 ; preds = %setVal.exit137.us.us.us166.i.i.1, %setVal.exit136.us.us.us167.i.i
  %indvars.iv.next250.i.i.1 = add nuw nsw i64 %indvars.iv249.i.i, 2 ; 3 uses
  %niter252.next.1 = add nuw nsw i64 %niter252, 2 ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %.split.us.us.i.i.loopexit236.unr-lcssa, label %.preheader147.split.us.us.split.split.us.i.i, !llvm.loop !35

.split.us.us.i.i.loopexit.unr-lcssa:              ; preds = %.preheader147.split.us.us.split.us.i.i
  br i1 %lcmp.mod254.not, label %.split.us.us.i.i, label %.preheader147.split.us.us.split.us.i.i.epil.preheader

.preheader147.split.us.us.split.us.i.i.epil.preheader: ; preds = %.split.us.us.i.i.loopexit.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod255)
  %i.ic = add nsw i64 %indvars.iv.next256.i.i.1, %i.go
  %i.id = trunc nuw nsw i64 %indvars.iv.next256.i.i.1 to i32
  %i.ie = lshr i32 %i.id, 3
  %i.if = add nuw nsw i32 %i.ie, %i.gm
  %i.ig = and i32 %i.if, 1
  %i.ih = icmp eq i32 %i.ig, 0
  %i.ii = mul nsw i64 %i.ic, %i.gj
  %i.ij = getelementptr i8, ptr %i.co, i64 %i.ii
  %..i.epil = select i1 %i.ih, i64 3, i64 2
  %i.ik = getelementptr i8, ptr %i.ij, i64 %..i.epil
  store i8 0, ptr %i.ik, align 1, !tbaa !16
  br label %.split.us.us.i.i

.split.us.us.i.i.loopexit236.unr-lcssa:           ; preds = %setVal.exit136.us.us.us167.i.i.1
  br i1 %lcmp.mod249.not, label %.split.us.us.i.i, label %.preheader147.split.us.us.split.split.us.i.i.epil.preheader

.preheader147.split.us.us.split.split.us.i.i.epil.preheader: ; preds = %.split.us.us.i.i.loopexit236.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.il = trunc nuw nsw i64 %indvars.iv.next250.i.i.1 to i32
  %i.im = lshr i32 %i.il, 3
  %i.in = add nuw nsw i32 %i.im, %i.gm
  %i.io = and i32 %i.in, 1
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %.split.us.us.i.i, label %setVal.exit137.us.us.us166.i.i.epil

setVal.exit137.us.us.us166.i.i.epil:              ; preds = %.preheader147.split.us.us.split.split.us.i.i.epil.preheader
  %i.iq = add nuw nsw i64 %indvars.iv.next250.i.i.1, %i.hh
  %i.ir = mul nsw i64 %i.iq, %i.gj
  %i.is = getelementptr i8, ptr %i.co, i64 %i.ir  ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 2
  store i8 0, ptr %i.it, align 1, !tbaa !16
  %i.iu = getelementptr i8, ptr %i.is, i64 1
  store i8 0, ptr %i.iu, align 1, !tbaa !16
  br label %.split.us.us.i.i

.split.us.us.i.i:                                 ; preds = %.split.us.us.i.i.loopexit236.unr-lcssa, %setVal.exit137.us.us.us166.i.i.epil, %.preheader147.split.us.us.split.split.us.i.i.epil.preheader, %.preheader147.split.us.us.split.us.i.i.epil.preheader, %.split.us.us.i.i.loopexit.unr-lcssa
  %i.iv = add nuw nsw i32 %.1114162.us.i.i, 1     ; 2 uses
  %exitcond261.not.i.i = icmp eq i32 %i.iv, %1
  br i1 %exitcond261.not.i.i, label %initBuf.exit.i, label %.preheader147.us.i.i, !llvm.loop !36

setVal.exit135.i.i:                               ; preds = %setVal.exit135.i.i.preheader, %setVal.exit135.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %setVal.exit135.i.i ], [ %indvars.iv.i.i.ph, %setVal.exit135.i.i.preheader ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv.i.i
  store i16 %i.cu, ptr %i.iw, align 2, !tbaa !18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader147.preheader.i.i, label %setVal.exit135.i.i, !llvm.loop !37

.preheader147.i.i:                                ; preds = %.split.i.i, %.preheader147.preheader.i.i
  %.1114162.i.i = phi i32 [ %i.li, %.split.i.i ], [ 0, %.preheader147.preheader.i.i ] ; 5 uses
  %i.ix = xor i32 %.1114162.i.i, -1
  %i.iy = add nsw i32 %1, %i.ix
  %.pn130.i.i = select i1 %.not.i, i32 %.1114162.i.i, i32 %i.iy
  %.pn129.i.i = mul nsw i32 %.pn130.i.i, %0       ; 2 uses
  %i.iz = lshr i32 %.1114162.i.i, 3               ; 6 uses
  %i.ja = icmp samesign ugt i32 %.1114162.i.i, 15
  br i1 %i.ja, label %.preheader147.split.split.us.preheader.i.i, label %.preheader147.split.split.split.us.preheader.i.i

.preheader147.split.split.us.preheader.i.i:       ; preds = %.preheader147.i.i
  %i.jb = sext i32 %.pn129.i.i to i64             ; 3 uses
  br label %.preheader147.split.split.us.i.i

.preheader147.split.split.us.i.i:                 ; preds = %.preheader147.split.split.us.i.i, %.preheader147.split.split.us.preheader.i.i
  %indvars.iv236.i.i = phi i64 [ 0, %.preheader147.split.split.us.preheader.i.i ], [ %indvars.iv.next237.i.i.1, %.preheader147.split.split.us.i.i ] ; 5 uses
  %niter247 = phi i64 [ 0, %.preheader147.split.split.us.preheader.i.i ], [ %niter247.next.1, %.preheader147.split.split.us.i.i ]
  %i.jc = add nsw i64 %indvars.iv236.i.i, %i.jb
  %i.jd = trunc nuw nsw i64 %indvars.iv236.i.i to i32
  %i.je = lshr i32 %i.jd, 3
  %i.jf = add nuw nsw i32 %i.je, %i.iz
  %i.jg = and i32 %i.jf, 1
  %i.jh = icmp eq i32 %i.jg, 0
  %i.ji = mul nsw i64 %i.jc, %i.gi
  %i.jj = getelementptr [2 x i8], ptr %i.co, i64 %i.ji
  %.255.i = select i1 %i.jh, i64 6, i64 4
  %i.jk = getelementptr i8, ptr %i.jj, i64 %.255.i
  store i16 0, ptr %i.jk, align 2, !tbaa !18
  %indvars.iv.next237.i.i = or disjoint i64 %indvars.iv236.i.i, 1
  %i.jl = add nsw i64 %indvars.iv.next237.i.i, %i.jb
  %i.jm = trunc i64 %indvars.iv236.i.i to i32
  %i.jn = lshr i32 %i.jm, 3
  %i.jo = add nuw nsw i32 %i.jn, %i.iz
  %i.jp = and i32 %i.jo, 1
  %i.jq = icmp eq i32 %i.jp, 0
  %i.jr = mul nsw i64 %i.jl, %i.gi
  %i.js = getelementptr [2 x i8], ptr %i.co, i64 %i.jr
  %.255.i.1 = select i1 %i.jq, i64 6, i64 4
  %i.jt = getelementptr i8, ptr %i.js, i64 %.255.i.1
  store i16 0, ptr %i.jt, align 2, !tbaa !18
  %indvars.iv.next237.i.i.1 = add nuw nsw i64 %indvars.iv236.i.i, 2 ; 3 uses
  %niter247.next.1 = add nuw nsw i64 %niter247, 2 ; 2 uses
  %niter247.ncmp.1 = icmp eq i64 %niter247.next.1, %unroll_iter246
  br i1 %niter247.ncmp.1, label %.split.i.i.loopexit.unr-lcssa, label %.preheader147.split.split.us.i.i, !llvm.loop !35

.preheader147.split.split.split.us.preheader.i.i: ; preds = %.preheader147.i.i
  %i.ju = zext nneg i32 %.pn129.i.i to i64        ; 3 uses
  br label %.preheader147.split.split.split.us.i.i

.preheader147.split.split.split.us.i.i:           ; preds = %setVal.exit136.us160.i.i.1, %.preheader147.split.split.split.us.preheader.i.i
  %indvars.iv230.i.i = phi i64 [ 0, %.preheader147.split.split.split.us.preheader.i.i ], [ %indvars.iv.next231.i.i.1, %setVal.exit136.us160.i.i.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader147.split.split.split.us.preheader.i.i ], [ %niter.next.1, %setVal.exit136.us160.i.i.1 ]
  %i.jv = trunc nuw nsw i64 %indvars.iv230.i.i to i32
  %i.jw = lshr i32 %i.jv, 3
  %i.jx = add nuw nsw i32 %i.jw, %i.iz
  %i.jy = and i32 %i.jx, 1
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %setVal.exit136.us160.i.i, label %setVal.exit137.thread.us159.i.i

setVal.exit137.thread.us159.i.i:                  ; preds = %.preheader147.split.split.split.us.i.i
  %i.ka = add nuw nsw i64 %indvars.iv230.i.i, %i.ju
  %i.kb = mul nsw i64 %i.ka, %i.gi
  %i.kc = getelementptr [2 x i8], ptr %i.co, i64 %i.kb ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 4
  store i16 0, ptr %i.kd, align 2, !tbaa !18
  %i.ke = getelementptr i8, ptr %i.kc, i64 2
  store i16 0, ptr %i.ke, align 2, !tbaa !18
  br label %setVal.exit136.us160.i.i

setVal.exit136.us160.i.i:                         ; preds = %setVal.exit137.thread.us159.i.i, %.preheader147.split.split.split.us.i.i
  %i.kf = trunc i64 %indvars.iv230.i.i to i32
  %i.kg = lshr i32 %i.kf, 3
  %i.kh = add nuw nsw i32 %i.kg, %i.iz
  %i.ki = and i32 %i.kh, 1
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %setVal.exit136.us160.i.i.1, label %setVal.exit137.thread.us159.i.i.1

setVal.exit137.thread.us159.i.i.1:                ; preds = %setVal.exit136.us160.i.i
  %indvars.iv.next231.i.i = or disjoint i64 %indvars.iv230.i.i, 1
  %i.kk = add nuw nsw i64 %indvars.iv.next231.i.i, %i.ju
  %i.kl = mul nsw i64 %i.kk, %i.gi
  %i.km = getelementptr [2 x i8], ptr %i.co, i64 %i.kl ; 2 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 4
  store i16 0, ptr %i.kn, align 2, !tbaa !18
  %i.ko = getelementptr i8, ptr %i.km, i64 2
  store i16 0, ptr %i.ko, align 2, !tbaa !18
  br label %setVal.exit136.us160.i.i.1

setVal.exit136.us160.i.i.1:                       ; preds = %setVal.exit137.thread.us159.i.i.1, %setVal.exit136.us160.i.i
  %indvars.iv.next231.i.i.1 = add nuw nsw i64 %indvars.iv230.i.i, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split.i.i.loopexit237.unr-lcssa, label %.preheader147.split.split.split.us.i.i, !llvm.loop !35

.split.i.i.loopexit.unr-lcssa:                    ; preds = %.preheader147.split.split.us.i.i
  br i1 %lcmp.mod244.not, label %.split.i.i, label %.preheader147.split.split.us.i.i.epil.preheader

.preheader147.split.split.us.i.i.epil.preheader:  ; preds = %.split.i.i.loopexit.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod245)
  %i.kp = add nsw i64 %indvars.iv.next237.i.i.1, %i.jb
  %i.kq = trunc nuw nsw i64 %indvars.iv.next237.i.i.1 to i32
  %i.kr = lshr i32 %i.kq, 3
  %i.ks = add nuw nsw i32 %i.kr, %i.iz
  %i.kt = and i32 %i.ks, 1
  %i.ku = icmp eq i32 %i.kt, 0
  %i.kv = mul nsw i64 %i.kp, %i.gi
  %i.kw = getelementptr [2 x i8], ptr %i.co, i64 %i.kv
  %.255.i.epil = select i1 %i.ku, i64 6, i64 4
  %i.kx = getelementptr i8, ptr %i.kw, i64 %.255.i.epil
  store i16 0, ptr %i.kx, align 2, !tbaa !18
  br label %.split.i.i

.split.i.i.loopexit237.unr-lcssa:                 ; preds = %setVal.exit136.us160.i.i.1
  br i1 %lcmp.mod.not, label %.split.i.i, label %.preheader147.split.split.split.us.i.i.epil.preheader

.preheader147.split.split.split.us.i.i.epil.preheader: ; preds = %.split.i.i.loopexit237.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod242)
  %i.ky = trunc nuw nsw i64 %indvars.iv.next231.i.i.1 to i32
  %i.kz = lshr i32 %i.ky, 3
  %i.la = add nuw nsw i32 %i.kz, %i.iz
  %i.lb = and i32 %i.la, 1
  %i.lc = icmp eq i32 %i.lb, 0
  br i1 %i.lc, label %.split.i.i, label %setVal.exit137.thread.us159.i.i.epil

setVal.exit137.thread.us159.i.i.epil:             ; preds = %.preheader147.split.split.split.us.i.i.epil.preheader
  %i.ld = add nuw nsw i64 %indvars.iv.next231.i.i.1, %i.ju
  %i.le = mul nsw i64 %i.ld, %i.gi
  %i.lf = getelementptr [2 x i8], ptr %i.co, i64 %i.le ; 2 uses
  %i.lg = getelementptr i8, ptr %i.lf, i64 4
  store i16 0, ptr %i.lg, align 2, !tbaa !18
  %i.lh = getelementptr i8, ptr %i.lf, i64 2
  store i16 0, ptr %i.lh, align 2, !tbaa !18
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i.loopexit237.unr-lcssa, %setVal.exit137.thread.us159.i.i.epil, %.preheader147.split.split.split.us.i.i.epil.preheader, %.preheader147.split.split.us.i.i.epil.preheader, %.split.i.i.loopexit.unr-lcssa
  %i.li = add nuw nsw i32 %.1114162.i.i, 1        ; 2 uses
  %exitcond242.not.i.i = icmp eq i32 %i.li, %1
  br i1 %exitcond242.not.i.i, label %initBuf.exit.i, label %.preheader147.i.i, !llvm.loop !36

bb.ag:                                            ; preds = %bb.ae
  %i.lj = getelementptr inbounds [4 x i8], ptr @tjBlueOffset, i64 %i.bz
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !12
  %i.ll = getelementptr inbounds [4 x i8], ptr @tjGreenOffset, i64 %i.bz
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !12
  %i.ln = getelementptr inbounds [4 x i8], ptr @tjRedOffset, i64 %i.bz
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !12
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.co, i8 0, i64 %i.cn, i1 false)
  %i.lp = load i32, ptr @maxSample, align 4       ; 2 uses
  %i.lq = load i32, ptr @precision, align 4
  %.fr205.i.i = freeze i32 %i.lq                  ; 2 uses
  %i.lr = icmp slt i32 %.fr205.i.i, 9             ; 3 uses
  %i.ls = trunc i32 %i.lp to i16                  ; 10 uses
  %i.lt = trunc i32 %i.lp to i8                   ; 10 uses
  %i.lu = sext i32 %i.cj to i64                   ; 7 uses
  %i.lv = sext i32 %i.lo to i64                   ; 3 uses
  %i.lw = sext i32 %i.lm to i64                   ; 2 uses
  %i.lx = sext i32 %i.lk to i64                   ; 2 uses
  %invariant.gep336.i.i = getelementptr [2 x i8], ptr %i.co, i64 %i.lv ; 3 uses
  %invariant.gep338.i.i = getelementptr [2 x i8], ptr %i.co, i64 %i.lw ; 4 uses
  %invariant.gep340.i.i = getelementptr i8, ptr %i.co, i64 %i.lv ; 3 uses
  %invariant.gep342.i.i = getelementptr i8, ptr %i.co, i64 %i.lw ; 4 uses
  %invariant.gep350.i.i = getelementptr [2 x i8], ptr %i.co, i64 %i.lx
  %invariant.gep354.i.i = getelementptr i8, ptr %i.co, i64 %i.lx
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.split191.us.i.i, %bb.ag
  %.2115203.i.i = phi i32 [ 0, %bb.ag ], [ %i.og, %.split191.us.i.i ] ; 5 uses
  %i.ly = xor i32 %.2115203.i.i, -1
  %i.lz = add nsw i32 %1, %i.ly
  %.pn127.i.i = select i1 %.not.i, i32 %.2115203.i.i, i32 %i.lz
  %.pn.i.i = mul nsw i32 %.pn127.i.i, %0          ; 2 uses
  %i.ma = lshr i32 %.2115203.i.i, 3               ; 7 uses
  %i.mb = icmp samesign ult i32 %.2115203.i.i, 16
  br i1 %i.mb, label %.preheader.split.us.preheader.i.i, label %.preheader.split.i.i

.preheader.split.us.preheader.i.i:                ; preds = %.preheader.i.i
  %i.mc = zext nneg i32 %.pn.i.i to i64
  br label %.preheader.split.us.i.i

.preheader.split.us.i.i:                          ; preds = %setVal.exit141.us.i.i, %.preheader.split.us.preheader.i.i
  %indvars.iv307.i.i = phi i64 [ 0, %.preheader.split.us.preheader.i.i ], [ %indvars.iv.next308.i.i, %setVal.exit141.us.i.i ] ; 3 uses
  %i.md = add nuw nsw i64 %indvars.iv307.i.i, %i.mc
  %i.me = trunc nuw nsw i64 %indvars.iv307.i.i to i32
  %i.mf = lshr i32 %i.me, 3
  %i.mg = add nuw nsw i32 %i.mf, %i.ma
  %i.mh = and i32 %i.mg, 1
  %i.mi = icmp eq i32 %i.mh, 0
  %i.mj = mul nsw i64 %i.md, %i.lu                ; 5 uses
  %i.mk = add nsw i64 %i.mj, %i.lv                ; 4 uses
  br i1 %i.mi, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.preheader.split.us.i.i
  br i1 %i.lr, label %setVal.exit142.us.i.i, label %setVal.exit142.thread.us.i.i

setVal.exit142.thread.us.i.i:                     ; preds = %bb.ah
  %i.ml = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.mk
  store i16 %i.ls, ptr %i.ml, align 2, !tbaa !18
  br label %setVal.exit141.us.i.i

setVal.exit142.us.i.i:                            ; preds = %bb.ah
  %i.mm = getelementptr inbounds i8, ptr %i.co, i64 %i.mk
  store i8 %i.lt, ptr %i.mm, align 1, !tbaa !16
  br label %setVal.exit141.us.i.i

bb.ai:                                            ; preds = %.preheader.split.us.i.i
  br i1 %i.lr, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.mn = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.mk
  store i16 %i.ls, ptr %i.mn, align 2, !tbaa !18
  %gep349.i.i = getelementptr [2 x i8], ptr %invariant.gep338.i.i, i64 %i.mj
  store i16 %i.ls, ptr %gep349.i.i, align 2, !tbaa !18
  %gep351.i.i = getelementptr [2 x i8], ptr %invariant.gep350.i.i, i64 %i.mj
  store i16 %i.ls, ptr %gep351.i.i, align 2, !tbaa !18
  br label %setVal.exit141.us.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.mo = getelementptr inbounds i8, ptr %i.co, i64 %i.mk
  store i8 %i.lt, ptr %i.mo, align 1, !tbaa !16
  %gep353.i.i = getelementptr i8, ptr %invariant.gep342.i.i, i64 %i.mj
  store i8 %i.lt, ptr %gep353.i.i, align 1, !tbaa !16
  %gep355.i.i = getelementptr i8, ptr %invariant.gep354.i.i, i64 %i.mj
  store i8 %i.lt, ptr %gep355.i.i, align 1, !tbaa !16
  br label %setVal.exit141.us.i.i

setVal.exit141.us.i.i:                            ; preds = %bb.ak, %bb.aj, %setVal.exit142.us.i.i, %setVal.exit142.thread.us.i.i
  %indvars.iv.next308.i.i = add nuw nsw i64 %indvars.iv307.i.i, 1 ; 2 uses
  %exitcond312.not.i.i = icmp eq i64 %indvars.iv.next308.i.i, %wide.trip.count234.i.i
  br i1 %exitcond312.not.i.i, label %.split191.us.i.i, label %.preheader.split.us.i.i, !llvm.loop !38

.preheader.split.i.i:                             ; preds = %.preheader.i.i
  %i.mp = sext i32 %.pn.i.i to i64                ; 6 uses
  br i1 %i.lr, label %.preheader.split.split.us.i.i, label %.preheader.split.split.split.us.i.i

.preheader.split.split.us.i.i:                    ; preds = %.preheader.split.i.i, %setVal.exit141.us196.i.i.1
  %indvars.iv301.i.i = phi i64 [ %indvars.iv.next302.i.i.1, %setVal.exit141.us196.i.i.1 ], [ 0, %.preheader.split.i.i ] ; 5 uses
  %niter267 = phi i64 [ %niter267.next.1, %setVal.exit141.us196.i.i.1 ], [ 0, %.preheader.split.i.i ]
  %i.mq = trunc nuw nsw i64 %indvars.iv301.i.i to i32
  %i.mr = lshr i32 %i.mq, 3
  %i.ms = add nuw nsw i32 %i.mr, %i.ma
  %i.mt = and i32 %i.ms, 1
  %i.mu = icmp eq i32 %i.mt, 0
  br i1 %i.mu, label %setVal.exit141.us196.i.i, label %setVal.exit142.us195.i.i

setVal.exit142.us195.i.i:                         ; preds = %.preheader.split.split.us.i.i
  %i.mv = add nsw i64 %indvars.iv301.i.i, %i.mp
  %i.mw = mul nsw i64 %i.mv, %i.lu                ; 2 uses
  %gep341.i.i = getelementptr i8, ptr %invariant.gep340.i.i, i64 %i.mw
  store i8 %i.lt, ptr %gep341.i.i, align 1, !tbaa !16
  %gep343.i.i = getelementptr i8, ptr %invariant.gep342.i.i, i64 %i.mw
  store i8 %i.lt, ptr %gep343.i.i, align 1, !tbaa !16
  br label %setVal.exit141.us196.i.i

setVal.exit141.us196.i.i:                         ; preds = %setVal.exit142.us195.i.i, %.preheader.split.split.us.i.i
  %i.mx = trunc i64 %indvars.iv301.i.i to i32
  %i.my = lshr i32 %i.mx, 3
  %i.mz = add nuw nsw i32 %i.my, %i.ma
  %i.na = and i32 %i.mz, 1
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %setVal.exit141.us196.i.i.1, label %setVal.exit142.us195.i.i.1

setVal.exit142.us195.i.i.1:                       ; preds = %setVal.exit141.us196.i.i
  %indvars.iv.next302.i.i = or disjoint i64 %indvars.iv301.i.i, 1
  %i.nc = add nsw i64 %indvars.iv.next302.i.i, %i.mp
  %i.nd = mul nsw i64 %i.nc, %i.lu                ; 2 uses
  %gep341.i.i.1 = getelementptr i8, ptr %invariant.gep340.i.i, i64 %i.nd
  store i8 %i.lt, ptr %gep341.i.i.1, align 1, !tbaa !16
  %gep343.i.i.1 = getelementptr i8, ptr %invariant.gep342.i.i, i64 %i.nd
  store i8 %i.lt, ptr %gep343.i.i.1, align 1, !tbaa !16
  br label %setVal.exit141.us196.i.i.1

setVal.exit141.us196.i.i.1:                       ; preds = %setVal.exit142.us195.i.i.1, %setVal.exit141.us196.i.i
  %indvars.iv.next302.i.i.1 = add nuw nsw i64 %indvars.iv301.i.i, 2 ; 3 uses
  %niter267.next.1 = add nuw nsw i64 %niter267, 2 ; 2 uses
  %niter267.ncmp.1 = icmp eq i64 %niter267.next.1, %unroll_iter266
  br i1 %niter267.ncmp.1, label %.split191.us.i.i.loopexit234.unr-lcssa, label %.preheader.split.split.us.i.i, !llvm.loop !38

.preheader.split.split.split.us.i.i:              ; preds = %.preheader.split.i.i, %setVal.exit141.us201.i.i.1
  %indvars.iv295.i.i = phi i64 [ %indvars.iv.next296.i.i.1, %setVal.exit141.us201.i.i.1 ], [ 0, %.preheader.split.i.i ] ; 5 uses
  %niter262 = phi i64 [ %niter262.next.1, %setVal.exit141.us201.i.i.1 ], [ 0, %.preheader.split.i.i ]
  %i.ne = trunc nuw nsw i64 %indvars.iv295.i.i to i32
  %i.nf = lshr i32 %i.ne, 3
  %i.ng = add nuw nsw i32 %i.nf, %i.ma
  %i.nh = and i32 %i.ng, 1
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %setVal.exit141.us201.i.i, label %setVal.exit142.thread.us200.i.i

setVal.exit142.thread.us200.i.i:                  ; preds = %.preheader.split.split.split.us.i.i
  %i.nj = add nsw i64 %indvars.iv295.i.i, %i.mp
  %i.nk = mul nsw i64 %i.nj, %i.lu                ; 2 uses
  %gep337.i.i = getelementptr [2 x i8], ptr %invariant.gep336.i.i, i64 %i.nk
  store i16 %i.ls, ptr %gep337.i.i, align 2, !tbaa !18
  %gep339.i.i = getelementptr [2 x i8], ptr %invariant.gep338.i.i, i64 %i.nk
  store i16 %i.ls, ptr %gep339.i.i, align 2, !tbaa !18
  br label %setVal.exit141.us201.i.i

setVal.exit141.us201.i.i:                         ; preds = %setVal.exit142.thread.us200.i.i, %.preheader.split.split.split.us.i.i
  %i.nl = trunc i64 %indvars.iv295.i.i to i32
  %i.nm = lshr i32 %i.nl, 3
  %i.nn = add nuw nsw i32 %i.nm, %i.ma
  %i.no = and i32 %i.nn, 1
  %i.np = icmp eq i32 %i.no, 0
  br i1 %i.np, label %setVal.exit141.us201.i.i.1, label %setVal.exit142.thread.us200.i.i.1

setVal.exit142.thread.us200.i.i.1:                ; preds = %setVal.exit141.us201.i.i
  %indvars.iv.next296.i.i = or disjoint i64 %indvars.iv295.i.i, 1
  %i.nq = add nsw i64 %indvars.iv.next296.i.i, %i.mp
  %i.nr = mul nsw i64 %i.nq, %i.lu                ; 2 uses
  %gep337.i.i.1 = getelementptr [2 x i8], ptr %invariant.gep336.i.i, i64 %i.nr
  store i16 %i.ls, ptr %gep337.i.i.1, align 2, !tbaa !18
  %gep339.i.i.1 = getelementptr [2 x i8], ptr %invariant.gep338.i.i, i64 %i.nr
  store i16 %i.ls, ptr %gep339.i.i.1, align 2, !tbaa !18
  br label %setVal.exit141.us201.i.i.1

setVal.exit141.us201.i.i.1:                       ; preds = %setVal.exit142.thread.us200.i.i.1, %setVal.exit141.us201.i.i
  %indvars.iv.next296.i.i.1 = add nuw nsw i64 %indvars.iv295.i.i, 2 ; 3 uses
  %niter262.next.1 = add nuw nsw i64 %niter262, 2 ; 2 uses
  %niter262.ncmp.1 = icmp eq i64 %niter262.next.1, %unroll_iter261
  br i1 %niter262.ncmp.1, label %.split191.us.i.i.loopexit235.unr-lcssa, label %.preheader.split.split.split.us.i.i, !llvm.loop !38

.split191.us.i.i.loopexit234.unr-lcssa:           ; preds = %setVal.exit141.us196.i.i.1
  br i1 %lcmp.mod264.not, label %.split191.us.i.i, label %.preheader.split.split.us.i.i.epil.preheader

.preheader.split.split.us.i.i.epil.preheader:     ; preds = %.split191.us.i.i.loopexit234.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod265)
  %i.ns = trunc nuw nsw i64 %indvars.iv.next302.i.i.1 to i32
  %i.nt = lshr i32 %i.ns, 3
  %i.nu = add nuw nsw i32 %i.nt, %i.ma
  %i.nv = and i32 %i.nu, 1
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %.split191.us.i.i, label %setVal.exit142.us195.i.i.epil

setVal.exit142.us195.i.i.epil:                    ; preds = %.preheader.split.split.us.i.i.epil.preheader
  %i.nx = add nsw i64 %indvars.iv.next302.i.i.1, %i.mp
  %i.ny = mul nsw i64 %i.nx, %i.lu                ; 2 uses
  %gep341.i.i.epil = getelementptr i8, ptr %invariant.gep340.i.i, i64 %i.ny
  store i8 %i.lt, ptr %gep341.i.i.epil, align 1, !tbaa !16
  %gep343.i.i.epil = getelementptr i8, ptr %invariant.gep342.i.i, i64 %i.ny
  store i8 %i.lt, ptr %gep343.i.i.epil, align 1, !tbaa !16
  br label %.split191.us.i.i

.split191.us.i.i.loopexit235.unr-lcssa:           ; preds = %setVal.exit141.us201.i.i.1
  br i1 %lcmp.mod259.not, label %.split191.us.i.i, label %.preheader.split.split.split.us.i.i.epil.preheader

.preheader.split.split.split.us.i.i.epil.preheader: ; preds = %.split191.us.i.i.loopexit235.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod260)
  %i.nz = trunc nuw nsw i64 %indvars.iv.next296.i.i.1 to i32
  %i.oa = lshr i32 %i.nz, 3
  %i.ob = add nuw nsw i32 %i.oa, %i.ma
  %i.oc = and i32 %i.ob, 1
  %i.od = icmp eq i32 %i.oc, 0
  br i1 %i.od, label %.split191.us.i.i, label %setVal.exit142.thread.us200.i.i.epil

setVal.exit142.thread.us200.i.i.epil:             ; preds = %.preheader.split.split.split.us.i.i.epil.preheader
  %i.oe = add nsw i64 %indvars.iv.next296.i.i.1, %i.mp
  %i.of = mul nsw i64 %i.oe, %i.lu                ; 2 uses
  %gep337.i.i.epil = getelementptr [2 x i8], ptr %invariant.gep336.i.i, i64 %i.of
  store i16 %i.ls, ptr %gep337.i.i.epil, align 2, !tbaa !18
  %gep339.i.i.epil = getelementptr [2 x i8], ptr %invariant.gep338.i.i, i64 %i.of
  store i16 %i.ls, ptr %gep339.i.i.epil, align 2, !tbaa !18
  br label %.split191.us.i.i

.split191.us.i.i:                                 ; preds = %.split191.us.i.i.loopexit235.unr-lcssa, %setVal.exit142.thread.us200.i.i.epil, %.preheader.split.split.split.us.i.i.epil.preheader, %.split191.us.i.i.loopexit234.unr-lcssa, %setVal.exit142.us195.i.i.epil, %.preheader.split.split.us.i.i.epil.preheader, %setVal.exit141.us.i.i
  %i.og = add nuw nsw i32 %.2115203.i.i, 1        ; 2 uses
  %exitcond313.not.i.i = icmp eq i32 %i.og, %1
  br i1 %exitcond313.not.i.i, label %initBuf.exit.i, label %.preheader.i.i, !llvm.loop !39

initBuf.exit.i:                                   ; preds = %.split.i.i, %.split.us.us.i.i, %.split171.split.i.i, %.split171.us.us.i.i, %.split191.us.i.i
  %i.oh = phi i32 [ %.fr204.i.i, %.split.us.us.i.i ], [ %.fr.i.i, %.split171.split.i.i ], [ %.fr.i.i, %.split171.us.us.i.i ], [ %.fr205.i.i, %.split191.us.i.i ], [ %.fr204.i.i, %.split.i.i ]
  %i.oi = load ptr, ptr %i.f, align 8, !tbaa !11  ; 2 uses
  %.not194.i = icmp eq ptr %i.oi, null
  br i1 %.not194.i, label %bb.an, label %bb.al

bb.al:                                            ; preds = %initBuf.exit.i
  %i.oj = load i64, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %.not195.i = icmp eq i64 %i.oj, 0
  br i1 %.not195.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.oi, i8 0, i64 %i.oj, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %initBuf.exit.i
  %.b.i = load i1, ptr @doYUV, align 4
  br i1 %.b.i, label %bb.ao, label %bb.bz

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %.b191.i = load i1, ptr @yuvAlign, align 4
  %i.ok = select i1 %.b191.i, i32 1, i32 4
  %i.ol = call i64 @tj3YUVBufSize(i32 noundef range(i32 35, 49) %0, i32 noundef %i.ok, i32 noundef range(i32 35, 49) %1, i32 noundef %.fr100) #21 ; 3 uses
  %i.om = call noalias ptr @malloc(i64 noundef %i.ol) #22 ; 12 uses
  %i.on = icmp eq ptr %i.om, null
  br i1 %i.on, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.oo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @.str.142) ; 0 uses
  br label %.thread206.i

bb.aq:                                            ; preds = %bb.ao
  %i.op = sext i32 %.fr100 to i64
  %i.oq = getelementptr inbounds [8 x i8], ptr @subNameLong, i64 %i.op
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !11 ; 2 uses
  %i.os = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.143, ptr noundef %i.cb, ptr noundef nonnull %i.cg, ptr noundef %i.or) ; 0 uses
  %i.ot = call ptr @tj3InitVersion(i32 noundef 0, i32 noundef 3002000) #21 ; 22 uses
  %i.ou = icmp eq ptr %i.ot, null
  br i1 %i.ou, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ov = call ptr @tj3GetErrorStr(ptr noundef null) #21
  %i.ow = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.ov) ; 0 uses
  br label %.thread206.i

bb.as:                                            ; preds = %bb.aq
  %i.ox = call i32 @tj3Set(ptr noundef nonnull %i.ot, i32 noundef 1, i32 noundef %i.cc) #21
  %i.oy = icmp eq i32 %i.ox, -1
  br i1 %i.oy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.oz = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.ot) #21
  %i.pa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.oz) ; 0 uses
  br label %.thread206.i

bb.au:                                            ; preds = %bb.as
  %i.pb = call i32 @tj3Set(ptr noundef nonnull %i.ot, i32 noundef 4, i32 noundef %.fr100) #21
  %i.pc = icmp eq i32 %i.pb, -1
  br i1 %i.pc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.pd = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.ot) #21
  %i.pe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.pd) ; 0 uses
  br label %.thread206.i

bb.aw:                                            ; preds = %bb.au
  %i.pf = call i32 @tj3Set(ptr noundef nonnull %i.ot, i32 noundef 15, i32 noundef 1) #21
  %i.pg = icmp eq i32 %i.pf, -1
  br i1 %i.pg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ph = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.ot) #21
  %i.pi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.ph) ; 0 uses
  br label %.thread206.i

bb.ay:                                            ; preds = %bb.aw
  %i.pj = call i32 @tj3Set(ptr noundef nonnull %i.ot, i32 noundef 8, i32 noundef 0) #21
  %i.pk = icmp eq i32 %i.pj, -1
  br i1 %i.pk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.pl = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.ot) #21
  %i.pm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.pl) ; 0 uses
  br label %.thread206.i

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.om, i8 0, i64 %i.ol, i1 false)
  %.b190.i = load i1, ptr @yuvAlign, align 4
  %i.pn = select i1 %.b190.i, i32 1, i32 4
  %i.po = call i32 @tj3EncodeYUV8(ptr noundef nonnull %i.ot, ptr noundef nonnull %i.co, i32 noundef range(i32 35, 49) %0, i32 noundef 0, i32 noundef range(i32 35, 49) %1, i32 noundef %i.by, ptr noundef nonnull %i.om, i32 noundef %i.pn) #21
  %i.pp = icmp eq i32 %i.po, -1
  br i1 %i.pp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.pq = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.ot) #21
  %i.pr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.pq) ; 0 uses
  br label %.thread206.i

bb.bc:                                            ; preds = %bb.ba
  %i.ps = call fastcc i32 @checkBufYUV(ptr noundef %i.om, i32 noundef range(i32 35, 49) %0, i32 noundef range(i32 35, 49) %1, i32 noundef %.fr100, i64 4294967297)
  %.not = icmp eq i32 %.fr100, 3
  br i1 %.not, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.bc
  %i.pt = call i32 @tj3YUVPlaneWidth(i32 noundef 0, i32 noundef range(i32 35, 49) %0, i32 noundef %.fr100) #21 ; 3 uses
  %i.pu = icmp eq i32 %i.pt, 0
  br i1 %i.pu, label %.split93.us, label %bb.bf

.split.us:                                        ; preds = %bb.bc
  %i.pv = call i32 @tj3YUVPlaneWidth(i32 noundef 0, i32 noundef range(i32 35, 49) %0, i32 noundef 3) #21 ; 2 uses
  %i.pw = icmp eq i32 %i.pv, 0
  br i1 %i.pw, label %.split93.us, label %bb.bd

bb.bd:                                            ; preds = %.split.us
  %i.px = call i32 @tj3YUVPlaneHeight(i32 noundef 0, i32 noundef range(i32 35, 49) %1, i32 noundef 3) #21
  %i.py = icmp eq i32 %i.px, 0
  br i1 %i.py, label %.split93.us, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.b189.i.us = load i1, ptr @yuvAlign, align 4   ; 2 uses
  %.neg.i.us = select i1 %.b189.i.us, i32 -1, i32 -4
  %i.pz = select i1 %.b189.i.us, i32 1, i32 4
  %i.qa = add i32 %i.pv, -1
  %i.qb = add i32 %i.qa, %i.pz
  %i.qc = and i32 %i.qb, %.neg.i.us               ; 2 uses
  store i32 %i.qc, ptr %i.c, align 4, !tbaa !12
  %i.qd = call i64 @tj3YUVPlaneSize(i32 noundef 0, i32 noundef range(i32 35, 49) %0, i32 noundef %i.qc, i32 noundef range(i32 35, 49) %1, i32 noundef 3) #21
  %i.qe = icmp eq i64 %i.qd, 0
  br i1 %i.qe, label %.split95.us, label %.split97.us

.split97.us:                                      ; preds = %bb.be
  store ptr %i.om, ptr %i.b, align 16, !tbaa !11
  br label %.split97

bb.bf:                                            ; preds = %.split.preheader
  %i.qf = call i32 @tj3YUVPlaneHeight(i32 noundef 0, i32 noundef range(i32 35, 49) %1, i32 noundef %.fr100) #21
  %i.qg = icmp eq i32 %i.qf, 0
  br i1 %i.qg, label %.split93.us, label %bb.bg

.split93.us:                                      ; preds = %.split.preheader, %bb.bf, %.split.1, %bb.bh, %.split.2, %bb.bj, %.split.us, %bb.bd
  %i.qh = call ptr @tj3GetErrorStr(ptr noundef null) #21
  %i.qi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.qh) ; 0 uses
  br label %.thread206.i

bb.bg:                                            ; preds = %bb.bf
  %.b189.i = load i1, ptr @yuvAlign, align 4      ; 2 uses
  %.neg.i = select i1 %.b189.i, i32 -1, i32 -4
  %i.qj = select i1 %.b189.i, i32 1, i32 4
  %i.qk = add i32 %i.pt, -1
  %i.ql = add i32 %i.qk, %i.qj
  %i.qm = and i32 %i.ql, %.neg.i                  ; 3 uses
  store i32 %i.qm, ptr %i.c, align 4, !tbaa !12
  %i.qn = call i64 @tj3YUVPlaneSize(i32 noundef 0, i32 noundef range(i32 35, 49) %0, i32 noundef %i.qm, i32 noundef range(i32 35, 49) %1, i32 noundef %.fr100) #21 ; 2 uses
  %i.qo = icmp eq i64 %i.qn, 0
  br i1 %i.qo, label %.split95.us, label %.split.1

.split95.us:                                      ; preds = %bb.bg, %bb.bi, %bb.bk, %bb.be
  %i.qp = call ptr @tj3GetErrorStr(ptr noundef null) #21
  %i.qq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.qp) ; 0 uses
  br label %.thread206.i

.split.1:                                         ; preds = %bb.bg
  store ptr %i.om, ptr %i.b, align 16, !tbaa !11
  %i.qr = sext i32 %i.qm to i64
  %i.qs = sext i32 %i.pt to i64
  %i.qt = sub i64 %i.qn, %i.qs
  %i.qu = getelementptr i8, ptr %i.om, i64 %i.qt
  %i.qv = getelementptr i8, ptr %i.qu, i64 %i.qr  ; 2 uses
  %i.qw = call i32 @tj3YUVPlaneWidth(i32 noundef 1, i32 noundef range(i32 35, 49) %0, i32 noundef %.fr100) #21 ; 3 uses
  %i.qx = icmp eq i32 %i.qw, 0
  br i1 %i.qx, label %.split93.us, label %bb.bh

bb.bh:                                            ; preds = %.split.1
  %i.qy = call i32 @tj3YUVPlaneHeight(i32 noundef 1, i32 noundef range(i32 35, 49) %1, i32 noundef %.fr100) #21
  %i.qz = icmp eq i32 %i.qy, 0
  br i1 %i.qz, label %.split93.us, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.b189.i.1 = load i1, ptr @yuvAlign, align 4    ; 2 uses
  %.neg.i.1 = select i1 %.b189.i.1, i32 -1, i32 -4
  %i.ra = select i1 %.b189.i.1, i32 1, i32 4
end_hunk_1
