Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tjunittest?download=true
inline.NumInlined: 62
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@doTest:bb.a
bb.bp:                                            ; preds = %bb.bn
  %i.qo = sext i32 %i.cb to i64
  %i.qp = getelementptr inbounds [8 x i8], ptr @subName, i64 %i.qo
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !10
  %i.qr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.116, ptr noundef %5, i32 noundef %i.qm, ptr noundef %i.bz, ptr noundef nonnull %i.cf, ptr noundef %i.qq, i32 noundef %i.cd) #21 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.qs = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.qt = load i64, ptr %i.c, align 8, !tbaa !13
  %i.qu = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.137) ; 3 uses
  %.not.i119.i = icmp eq ptr %i.qu, null
  br i1 %.not.i119.i, label %.critedge.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qv = call i64 @fwrite(ptr noundef readonly %i.qs, i64 noundef %i.qt, i64 noundef 1, ptr noundef nonnull %i.qu)
  %.not7.i.i = icmp eq i64 %i.qv, 1
  br i1 %.not7.i.i, label %.thread.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qw = tail call ptr @__errno_location() #24
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !7
  %i.qy = call ptr @strerror(i32 noundef %i.qx) #21
  %i.qz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.138, ptr noundef nonnull %i.a, ptr noundef %i.qy) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bs, %bb.br
  %i.ra = call i32 @fclose(ptr noundef nonnull %i.qu) ; 0 uses
  br label %writeJPEG.exit.i

.critedge.i.i:                                    ; preds = %bb.bq
  %i.rb = tail call ptr @__errno_location() #24
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !7
  %i.rd = call ptr @strerror(i32 noundef %i.rc) #21
  %i.re = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.138, ptr noundef nonnull %i.a, ptr noundef %i.rd) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %writeJPEG.exit.i

writeJPEG.exit.i:                                 ; preds = %.critedge.i.i, %.thread.i.i
  %i.rf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.117, ptr noundef nonnull %i.a) ; 0 uses
  br label %compTest.exit

compTest.exit:                                    ; preds = %bb.ad, %bb.ap, %bb.ar, %bb.at, %bb.av, %bb.ax, %bb.az, %bb.bc, %bb.bh, %bb.bk, %bb.bm, %writeJPEG.exit.i
  %.2.i = phi ptr [ null, %bb.ad ], [ %.1.i, %writeJPEG.exit.i ], [ null, %bb.bm ], [ null, %bb.bc ], [ null, %bb.bh ], [ null, %bb.bk ], [ %calloc.i, %bb.az ], [ %calloc.i, %bb.ax ], [ null, %bb.av ], [ null, %bb.at ], [ null, %bb.ar ], [ null, %bb.ap ]
  call void @free(ptr noundef %.2.i) #21
  call void @free(ptr noundef %i.cm) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.rg = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.rh = load i64, ptr %i.c, align 8, !tbaa !13
  call fastcc void @decompTest(ptr noundef %i.n, ptr noundef %i.rg, i64 noundef %i.rh, i32 noundef %0, i32 noundef %1, i32 noundef %i.bw, i32 noundef %spec.store.select)
  %i.ri = add i32 %i.bw, -2
  %or.cond11 = icmp ult i32 %i.ri, 4
  br i1 %or.cond11, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %compTest.exit
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.rj = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.rk = load i64, ptr %i.c, align 8, !tbaa !13
  %i.rl = add nuw nsw i32 %i.bw, 5
  call fastcc void @decompTest(ptr noundef %i.n, ptr noundef %i.rj, i64 noundef %i.rk, i32 noundef %0, i32 noundef %1, i32 noundef %i.rl, i32 noundef %spec.store.select)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %compTest.exit
  %putchar81 = call i32 @putchar(i32 10)          ; 0 uses
  br i1 %i.bn, label %bb.w, label %bb.bv, !llvm.loop !37

bb.bv:                                            ; preds = %bb.bu
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.bw, label %.preheader, !llvm.loop !38

bb.bw:                                            ; preds = %bb.bv
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.z, %bb.x, %bb.v, %bb.t, %bb.q, %bb.o, %bb.m, %bb.j, %bb.h, %bb.e, %bb.c
  %.070 = phi ptr [ %i.l, %bb.h ], [ %i.l, %bb.j ], [ %i.l, %bb.m ], [ %i.l, %bb.o ], [ %i.l, %bb.v ], [ %i.l, %bb.x ], [ %i.l, %bb.z ], [ %i.l, %bb.bw ], [ %i.l, %bb.q ], [ %i.l, %bb.t ], [ null, %bb.c ], [ null, %bb.e ]
  %.1 = phi ptr [ null, %bb.h ], [ %i.n, %bb.j ], [ %i.n, %bb.m ], [ %i.n, %bb.o ], [ %i.n, %bb.v ], [ %i.n, %bb.x ], [ %i.n, %bb.z ], [ %i.n, %bb.bw ], [ %i.n, %bb.q ], [ %i.n, %bb.t ], [ null, %bb.c ], [ null, %bb.e ]
  call void @tj3Destroy(ptr noundef %.070) #21
  call void @tj3Destroy(ptr noundef %.1) #21
  %i.rm = load ptr, ptr %i.b, align 8, !tbaa !10
  call void @tj3Free(ptr noundef %i.rm) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @doBmpTest(ptr noundef %0, i32 noundef range(i32 -2147483648, 9) %1, i32 noundef range(i32 -2147483648, 12) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 20 uses
  %i.b = alloca [80 x i8], align 16               ; 26 uses
  %i.c = alloca [65 x i8], align 16               ; 3 uses
  %i.d = alloca i32, align 4                      ; 16 uses
  %i.e = alloca i32, align 4                      ; 16 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.g = sext i32 %2 to i64                       ; 4 uses
  %i.h = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7    ; 4 uses
  %i.j = mul nsw i32 %i.i, 35
  %i.k = add i32 %1, -1                           ; 3 uses
  %i.l = add i32 %i.k, %i.j
  %i.m = sub i32 0, %1                            ; 3 uses
  %i.n = and i32 %i.l, %i.m                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i32 0, ptr %i.e, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i32 %2, ptr %i.f, align 4, !tbaa !7
  %i.o = tail call ptr @tj3Init(i32 noundef 2) #21 ; 36 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = tail call ptr @tj3GetErrorStr(ptr noundef null) #21
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.q) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.c:                                             ; preds = %bb.a
  %i.s = tail call i32 @tj3Set(ptr noundef nonnull %i.o, i32 noundef 1, i32 noundef %3) #21
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.u) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.e:                                             ; preds = %bb.c
  %i.w = load i32, ptr @precision, align 4, !tbaa !7
  %i.x = tail call i32 @tj3Set(ptr noundef nonnull %i.o, i32 noundef 7, i32 noundef %i.w) #21
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.z) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.g:                                             ; preds = %bb.e
  %i.ab = load i32, ptr @precision, align 4, !tbaa !7 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 8
  br i1 %i.ac, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.26) #20
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp eq i32 %2, 6
  %i.af = select i1 %i.ae, ptr @.str.76, ptr @.str.77
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ag = icmp eq i32 %2, 6
  %i.ah = sext i32 %i.ab to i64
  %.in.v = select i1 %i.ag, ptr @__const.doBmpTest.grayPPMRefs, ptr @__const.doBmpTest.colorPPMRefs
  %.in = getelementptr inbounds [8 x i8], ptr %.in.v, i64 %i.ah
  %i.ai = load ptr, ptr %.in, align 8, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.ai, %bb.j ], [ %i.af, %bb.i ] ; 2 uses
  %i.aj = mul nsw i32 %i.n, 39
  %i.ak = load i32, ptr @sampleSize, align 4, !tbaa !7
  %i.al = mul nsw i32 %i.aj, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = tail call ptr @tj3Alloc(i64 noundef %i.am) #21 ; 21 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @.str.78) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.m:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds [4 x i8], ptr @tjRedOffset, i64 %i.g
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = getelementptr inbounds [4 x i8], ptr @tjGreenOffset, i64 %i.g
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = getelementptr inbounds [4 x i8], ptr @tjBlueOffset, i64 %i.g
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %.not.i = icmp eq i32 %3, 0                     ; 2 uses
  %i.aw = load i32, ptr @maxSample, align 4, !tbaa !7 ; 2 uses
  %i.ax = add nsw i32 %i.aw, 1                    ; 5 uses
  %i.ay = load i32, ptr @precision, align 4       ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 8                   ; 5 uses
  %i.ba = sitofp i32 %i.aw to double              ; 3 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1)
  %i.bb = zext nneg i32 %smax.i to i64
  %i.bc = sext i32 %i.i to i64                    ; 3 uses
  %i.bd = sext i32 %i.ar to i64
  %i.be = sext i32 %i.at to i64                   ; 2 uses
  %i.bf = sext i32 %i.av to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.an, i64 %i.be
  %invariant.gep109.i = getelementptr [2 x i8], ptr %i.an, i64 %i.bf
  %invariant.gep111.i = getelementptr i8, ptr %i.an, i64 %i.be
  %invariant.gep113.i = getelementptr i8, ptr %i.an, i64 %i.bf
  %i.bg = insertelement <4 x double> poison, double %i.ba, i64 0
  %i.bh = shufflevector <4 x double> %i.bg, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bi = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = zext i1 %i.az to i64
  %i.bl = zext i1 %i.az to i64
  %.sink = shl nuw nsw i64 %i.bb, %i.bl
  br label %bb.n

bb.n:                                             ; preds = %bb.y, %bb.m
  %.082101.i = phi i32 [ 0, %bb.m ], [ %i.dx, %bb.y ] ; 4 uses
  %i.bm = sub nuw nsw i32 38, %.082101.i
  %i.bn = select i1 %.not.i, i32 %.082101.i, i32 %i.bm
  %i.bo = mul nsw i32 %.082101.i, %i.ax
  %i.bp = sdiv i32 %i.bo, 39                      ; 2 uses
  %i.bq = srem i32 %i.bp, %i.ax                   ; 3 uses
  %i.br = mul i32 %i.bn, %i.n                     ; 2 uses
  %i.bs = sitofp i32 %i.bq to double
  %i.bt = fdiv double %i.bs, %i.ba
  %i.bu = fsub double 1.000000e+00, %i.bt         ; 3 uses
  %i.bv = trunc i32 %i.bq to i16
  %i.bw = trunc i32 %i.bq to i8
  %i.bx = sext i32 %i.br to i64                   ; 3 uses
  %i.by = insertelement <2 x double> poison, double %i.bu, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %setVal.exit88.i, %bb.n
  %indvars.iv.i = phi i64 [ 0, %bb.n ], [ %indvars.iv.next.i, %setVal.exit88.i ] ; 5 uses
  %i.bz = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.ca = mul i32 %i.i, %i.bz
  %i.cb = add i32 %i.ca, %i.br
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i32 %i.ax, %i.bz
  %i.ce = sdiv i32 %i.cd, 35                      ; 2 uses
  %4 = srem i32 %i.ce, %i.ax                      ; 3 uses
  %5 = add nsw i32 %i.ce, %i.bp
  %6 = srem i32 %5, %i.ax                         ; 5 uses
  %.sink188 = shl nsw i64 %i.cc, %i.bk
  %scevgep104.i = getelementptr i8, ptr %i.an, i64 %.sink188
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep104.i, i8 0, i64 %.sink, i1 false), !tbaa !14
  switch i32 %2, label %bb.v [
    i32 6, label %bb.o
    i32 11, label %bb.r
  ]

bb.o:                                             ; preds = %.lr.ph.i
  %i.cf = mul nsw i64 %indvars.iv.i, %i.bc
  %i.cg = add nsw i64 %i.cf, %i.bx                ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %7 = trunc i32 %6 to i8
  %i.ch = getelementptr inbounds i8, ptr %i.an, i64 %i.cg
  store i8 %7, ptr %i.ch, align 1, !tbaa !14
  br label %setVal.exit88.i

bb.q:                                             ; preds = %bb.o
  %8 = trunc i32 %6 to i16
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.cg
  store i16 %8, ptr %i.ci, align 2, !tbaa !16
  br label %setVal.exit88.i

bb.r:                                             ; preds = %.lr.ph.i
  %9 = insertelement <2 x i32> poison, i32 %4, i64 0
  %10 = insertelement <2 x i32> %9, i32 %6, i64 1
  %i.cj = sitofp <2 x i32> %10 to <2 x double>
  %i.ck = fdiv <2 x double> %i.cj, %i.bj          ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0
  %i.cm = fsub double 1.000000e+00, %i.cl         ; 3 uses
  %i.cn = extractelement <2 x double> %i.ck, i64 1
  %i.co = fsub double 1.000000e+00, %i.cn         ; 3 uses
  %i.cp = fcmp olt double %i.cm, %i.bu
  %i.cq = select i1 %i.cp, double %i.cm, double %i.bu ; 2 uses
  %i.cr = fcmp olt double %i.cq, %i.co
  %..i.i = select i1 %i.cr, double %i.cq, double %i.co ; 5 uses
  %i.cs = fcmp oeq double %..i.i, 1.000000e+00
  br i1 %i.cs, label %rgb_to_cmyk.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = insertelement <2 x double> %i.by, double %i.cm, i64 0
  %i.cu = insertelement <2 x double> poison, double %..i.i, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = fsub <2 x double> %i.ct, %i.cv
  %i.cx = fsub double 1.000000e+00, %..i.i        ; 2 uses
  %i.cy = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = fdiv <2 x double> %i.cw, %i.cz
  %i.db = fsub double %i.co, %..i.i
  %i.dc = fdiv double %i.db, %i.cx
  %i.dd = shufflevector <2 x double> %i.da, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %rgb_to_cmyk.exit.i

rgb_to_cmyk.exit.i:                               ; preds = %bb.s, %bb.r
  %.0.i.i = phi double [ %i.dc, %bb.s ], [ 0.000000e+00, %bb.r ]
  %i.de = phi <4 x double> [ %i.dd, %bb.s ], [ <double 0.000000e+00, double 0.000000e+00, double undef, double undef>, %bb.r ]
  %i.df = insertelement <4 x double> poison, double %.0.i.i, i64 2
  %i.dg = insertelement <4 x double> %i.df, double %..i.i, i64 3
  %i.dh = shufflevector <4 x double> %i.de, <4 x double> %i.dg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.di = fneg <4 x double> %i.dh
  %i.dj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.di, <4 x double> %i.bh, <4 x double> %i.bh)
  %i.dk = fadd <4 x double> %i.dj, splat (double 5.000000e-01)
  %i.dl = fptosi <4 x double> %i.dk to <4 x i32>  ; 2 uses
  %i.dm = mul nsw i64 %indvars.iv.i, %i.bc
  %i.dn = add nsw i64 %i.dm, %i.bx                ; 2 uses
  br i1 %i.az, label %bb.u, label %bb.t

bb.t:                                             ; preds = %rgb_to_cmyk.exit.i
  %i.do = getelementptr i8, ptr %i.an, i64 %i.dn
  %i.dp = trunc <4 x i32> %i.dl to <4 x i8>
  store <4 x i8> %i.dp, ptr %i.do, align 1, !tbaa !14
  br label %setVal.exit88.i

bb.u:                                             ; preds = %rgb_to_cmyk.exit.i
  %i.dq = trunc <4 x i32> %i.dl to <4 x i16>
  %i.dr = getelementptr [2 x i8], ptr %i.an, i64 %i.dn
  store <4 x i16> %i.dq, ptr %i.dr, align 2, !tbaa !16
  br label %setVal.exit88.i

bb.v:                                             ; preds = %.lr.ph.i
  %i.ds = mul nsw i64 %indvars.iv.i, %i.bc
  %i.dt = add nsw i64 %i.ds, %i.bx                ; 5 uses
  %i.du = add nsw i64 %i.dt, %i.bd                ; 2 uses
  br i1 %i.az, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %11 = trunc i32 %4 to i8
  %i.dv = getelementptr inbounds i8, ptr %i.an, i64 %i.du
  store i8 %11, ptr %i.dv, align 1, !tbaa !14
  %gep112.i = getelementptr i8, ptr %invariant.gep111.i, i64 %i.dt
  store i8 %i.bw, ptr %gep112.i, align 1, !tbaa !14
  %12 = trunc i32 %6 to i8
  %gep114.i = getelementptr i8, ptr %invariant.gep113.i, i64 %i.dt
  store i8 %12, ptr %gep114.i, align 1, !tbaa !14
  br label %setVal.exit88.i

bb.x:                                             ; preds = %bb.v
  %13 = trunc i32 %4 to i16
  %i.dw = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.du
  store i16 %13, ptr %i.dw, align 2, !tbaa !16
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.dt
  store i16 %i.bv, ptr %gep.i, align 2, !tbaa !16
  %14 = trunc i32 %6 to i16
  %gep110.i = getelementptr [2 x i8], ptr %invariant.gep109.i, i64 %i.dt
  store i16 %14, ptr %gep110.i, align 2, !tbaa !16
  br label %setVal.exit88.i

setVal.exit88.i:                                  ; preds = %bb.x, %bb.w, %bb.u, %bb.t, %bb.q, %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 35
  br i1 %exitcond.not.i, label %bb.y, label %.lr.ph.i, !llvm.loop !42

bb.y:                                             ; preds = %setVal.exit88.i
  %i.dx = add nuw nsw i32 %.082101.i, 1           ; 2 uses
  %exitcond108.not.i = icmp eq i32 %i.dx, 39
  br i1 %exitcond108.not.i, label %initBitmap.exit, label %bb.n, !llvm.loop !43

initBitmap.exit:                                  ; preds = %bb.y
  %i.dy = load i32, ptr %i.a, align 4, !tbaa !7
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr @pixFormatStr, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !10
  %i.ec = select i1 %.not.i, ptr @.str.81, ptr @.str.80
  %i.ed = tail call i32 @getpid() #21
  %i.ee = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 80, ptr noundef nonnull @.str.79, i32 noundef %i.ay, ptr noundef %i.eb, i32 noundef %1, ptr noundef nonnull %i.ec, i32 noundef %i.ed, ptr noundef %0) #21 ; 0 uses
  %i.ef = load i32, ptr @precision, align 4, !tbaa !7 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 9
  br i1 %i.eg, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %initBitmap.exit
  %i.eh = load i32, ptr %i.a, align 4, !tbaa !7
  %i.ei = call i32 @tj3SaveImage8(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.an, i32 noundef 35, i32 noundef %i.n, i32 noundef 39, i32 noundef %i.eh) #21
  %i.ej = icmp eq i32 %i.ei, -1
  br i1 %i.ej, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.ek = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.el = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.ek) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.ab:                                            ; preds = %initBitmap.exit
  %i.em = icmp samesign ult i32 %i.ef, 13
  %i.en = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  br i1 %i.em, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.eo = call i32 @tj3SaveImage12(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.an, i32 noundef 35, i32 noundef %i.n, i32 noundef 39, i32 noundef %i.en) #21
  %i.ep = icmp eq i32 %i.eo, -1
  br i1 %i.ep, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.eq = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.er = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.eq) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.ae:                                            ; preds = %bb.ab
  %i.es = call i32 @tj3SaveImage16(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.an, i32 noundef 35, i32 noundef %i.n, i32 noundef 39, i32 noundef %i.en) #21
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eu = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.ev = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.eu) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.ag:                                            ; preds = %bb.ac, %bb.ae, %bb.z
  %i.ew = call ptr @MD5File(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #21 ; 3 uses
  %.not157 = icmp eq ptr %i.ew, null
  br i1 %.not157, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ex = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.ce

bb.ai:                                            ; preds = %bb.ag
  %i.ey = call i32 @strcasecmp(ptr noundef nonnull %i.ew, ptr noundef %.0) #20
  %.not158 = icmp eq i32 %i.ey, 0
  br i1 %.not158, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ew, ptr noundef %.0) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.ak:                                            ; preds = %bb.ai
  call void @tj3Free(ptr noundef nonnull %i.an) #21
  %i.fa = load i32, ptr @precision, align 4, !tbaa !7 ; 2 uses
  %i.fb = icmp slt i32 %i.fa, 9
  br i1 %i.fb, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fc = call ptr @tj3LoadImage8(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.fe = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.ff = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.fe) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.an:                                            ; preds = %bb.ak
  %i.fg = icmp samesign ult i32 %i.fa, 13
  br i1 %i.fg, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.fh = call ptr @tj3LoadImage12(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.fj = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.fk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.fj) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.aq:                                            ; preds = %bb.an
  %i.fl = call ptr @tj3LoadImage16(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fn = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.fo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.fn) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.as:                                            ; preds = %bb.ao, %bb.aq, %bb.al
  %.0116 = phi ptr [ %i.fc, %bb.al ], [ %i.fh, %bb.ao ], [ %i.fl, %bb.aq ] ; 5 uses
  %i.fp = load i32, ptr %i.d, align 4, !tbaa !7
  %.not159 = icmp eq i32 %i.fp, 35
  %i.fq = load i32, ptr %i.e, align 4
  %.not160 = icmp eq i32 %i.fq, 39
  %or.cond166 = select i1 %.not159, i1 %.not160, i1 false
  br i1 %or.cond166, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.ce

bb.au:                                            ; preds = %bb.as
  %i.fs = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.ft = call fastcc i32 @cmpBitmap(ptr noundef %.0116, i32 noundef %i.n, i32 noundef %i.fs, i32 noundef %3, i32 noundef 0)
  %.not161 = icmp eq i32 %i.ft, 0
  br i1 %.not161, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.ce

bb.aw:                                            ; preds = %bb.au
  %i.fv = icmp eq i32 %i.fs, 6
  br i1 %i.fv, label %bb.ax, label %bb.br

bb.ax:                                            ; preds = %bb.aw
  call void @tj3Free(ptr noundef nonnull %.0116) #21
  store i32 4, ptr %i.a, align 4, !tbaa !7
  %i.fw = load i32, ptr @precision, align 4, !tbaa !7 ; 2 uses
  %i.fx = icmp slt i32 %i.fw, 9
  br i1 %i.fx, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.fy = call ptr @tj3LoadImage8(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.ga = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.gb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.ga) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.ba:                                            ; preds = %bb.ax
  %i.gc = icmp samesign ult i32 %i.fw, 13
  br i1 %i.gc, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.gd = call ptr @tj3LoadImage12(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.gf = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.gg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.gf) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.bd:                                            ; preds = %bb.ba
  %i.gh = call ptr @tj3LoadImage16(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gj = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.gk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, ptr noundef %i.gj) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.ce

bb.bf:                                            ; preds = %bb.bb, %bb.bd, %bb.ay
  %.1 = phi ptr [ %i.fy, %bb.ay ], [ %i.gd, %bb.bb ], [ %i.gh, %bb.bd ] ; 3 uses
  %i.gl = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.gm = sext i32 %i.gl to i64
end_hunk_0
