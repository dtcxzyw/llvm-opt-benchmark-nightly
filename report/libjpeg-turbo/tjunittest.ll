Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/tjunittest?download=true
inline.NumInlined: 61
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@doTest:bb.a
bb.cq:                                            ; preds = %bb.cp
  %i.ut = call i64 @fwrite(ptr noundef readonly %i.uq, i64 noundef %i.ur, i64 noundef 1, ptr noundef nonnull %i.us)
  %.not7.i.i = icmp eq i64 %i.ut, 1
  br i1 %.not7.i.i, label %.thread.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.uu = tail call ptr @__errno_location() #24
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !12
  %i.uw = call ptr @strerror(i32 noundef %i.uv) #21
  %i.ux = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.177, ptr noundef nonnull %i.a, ptr noundef %i.uw) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cr, %bb.cq
  %i.uy = call i32 @fclose(ptr noundef nonnull %i.us) ; 0 uses
  br label %writeJPEG.exit.i

.critedge.i.i:                                    ; preds = %bb.cp
  %i.uz = tail call ptr @__errno_location() #24
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !12
  %i.vb = call ptr @strerror(i32 noundef %i.va) #21
  %i.vc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.177, ptr noundef nonnull %i.a, ptr noundef %i.vb) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %writeJPEG.exit.i

writeJPEG.exit.i:                                 ; preds = %.critedge.i.i, %.thread.i.i
  %i.vd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.152, ptr noundef nonnull %i.a) ; 0 uses
  br label %compTest.exit

compTest.exit:                                    ; preds = %bb.ad, %.thread206.i, %bb.cb, %bb.cg, %bb.cj, %bb.cl, %writeJPEG.exit.i
  %.1176.i = phi ptr [ null, %bb.ad ], [ %.0175.i, %writeJPEG.exit.i ], [ %i.ot, %.thread206.i ], [ null, %bb.cb ], [ null, %bb.cg ], [ null, %bb.cj ], [ null, %bb.cl ]
  %.2.i = phi ptr [ null, %bb.ad ], [ null, %writeJPEG.exit.i ], [ %.0173.ph.i, %.thread206.i ], [ null, %bb.cb ], [ null, %bb.cg ], [ null, %bb.cj ], [ null, %bb.cl ]
  call void @tj3Destroy(ptr noundef %.2.i) #21
  call void @free(ptr noundef %.1176.i) #21
  call void @free(ptr noundef %i.cv) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ve = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.vf = load i64, ptr %i.g, align 8, !tbaa !15
  call fastcc void @decompTest(ptr noundef %i.r, ptr noundef %i.ve, i64 noundef %i.vf, i32 noundef %0, i32 noundef %1, i32 noundef %i.cf, i32 noundef %spec.store.select)
  %i.vg = add i32 %i.cf, -2
  %or.cond9 = icmp ult i32 %i.vg, 4
  br i1 %or.cond9, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %compTest.exit
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.vh = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.vi = load i64, ptr %i.g, align 8, !tbaa !15
  %i.vj = add nuw nsw i32 %i.cf, 5
  call fastcc void @decompTest(ptr noundef %i.r, ptr noundef %i.vh, i64 noundef %i.vi, i32 noundef %0, i32 noundef %1, i32 noundef %i.vj, i32 noundef %spec.store.select)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %compTest.exit
  %putchar81 = call i32 @putchar(i32 10)          ; 0 uses
  br i1 %i.bw, label %.preheader, label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %bb.ct, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.cu, label %bb.w, !llvm.loop !41

bb.cu:                                            ; preds = %.loopexit
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.z, %bb.x, %bb.v, %bb.t, %bb.q, %bb.o, %bb.m, %bb.j, %bb.h, %bb.e, %bb.c
  %.070 = phi ptr [ %i.p, %bb.h ], [ %i.p, %bb.j ], [ %i.p, %bb.m ], [ %i.p, %bb.o ], [ %i.p, %bb.v ], [ %i.p, %bb.x ], [ %i.p, %bb.z ], [ %i.p, %bb.cu ], [ %i.p, %bb.q ], [ %i.p, %bb.t ], [ null, %bb.c ], [ null, %bb.e ]
  %.1 = phi ptr [ null, %bb.h ], [ %i.r, %bb.j ], [ %i.r, %bb.m ], [ %i.r, %bb.o ], [ %i.r, %bb.v ], [ %i.r, %bb.x ], [ %i.r, %bb.z ], [ %i.r, %bb.cu ], [ %i.r, %bb.q ], [ %i.r, %bb.t ], [ null, %bb.c ], [ null, %bb.e ]
  call void @tj3Destroy(ptr noundef %.070) #21
  call void @tj3Destroy(ptr noundef %.1) #21
  %i.vk = load ptr, ptr %i.f, align 8, !tbaa !11
  call void @tj3Free(ptr noundef %i.vk) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @doBmpTest(ptr noundef %0, i32 noundef range(i32 -2147483648, 9) %1, i32 noundef range(i32 -2147483648, 12) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 22 uses
  %i.b = alloca [80 x i8], align 16               ; 26 uses
  %i.c = alloca [65 x i8], align 16               ; 3 uses
  %i.d = alloca i32, align 4                      ; 16 uses
  %i.e = alloca i32, align 4                      ; 16 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.g = sext i32 %2 to i64                       ; 4 uses
  %i.h = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !12   ; 4 uses
  %i.j = mul nsw i32 %i.i, 35
  %i.k = add i32 %1, -1                           ; 4 uses
  %i.l = add i32 %i.k, %i.j
  %i.m = sub i32 0, %1                            ; 4 uses
  %i.n = and i32 %i.l, %i.m                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  store i32 0, ptr %i.e, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i32 %2, ptr %i.f, align 4, !tbaa !12
  %i.o = tail call ptr @tj3InitVersion(i32 noundef 2, i32 noundef 3002000) #21 ; 38 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = tail call ptr @tj3GetErrorStr(ptr noundef null) #21
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.q) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cj

bb.c:                                             ; preds = %bb.a
  %i.s = tail call i32 @tj3Set(ptr noundef nonnull %i.o, i32 noundef 1, i32 noundef %3) #21
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.u) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cj

bb.e:                                             ; preds = %bb.c
  %i.w = load i32, ptr @precision, align 4, !tbaa !12
  %i.x = tail call i32 @tj3Set(ptr noundef nonnull %i.o, i32 noundef 7, i32 noundef %i.w) #21
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.z) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cj

bb.g:                                             ; preds = %bb.e
  %i.ab = load i32, ptr @precision, align 4, !tbaa !12 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 8
  br i1 %i.ac, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.26) #20
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp eq i32 %2, 6
  %i.af = select i1 %i.ae, ptr @.str.109, ptr @.str.110
  br label %bb.m

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ag = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.29) #20
  %.not183 = icmp eq i32 %i.ag, 0
  %i.ah = icmp eq i32 %2, 6                       ; 2 uses
  %i.ai = sext i32 %i.ab to i64                   ; 2 uses
  br i1 %.not183, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.in.v = select i1 %i.ah, ptr @__const.doBmpTest.grayPNGRefs, ptr @__const.doBmpTest.colorPNGRefs
  %.in = getelementptr inbounds [8 x i8], ptr %.in.v, i64 %i.ai
  %i.aj = load ptr, ptr %.in, align 8, !tbaa !11
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.in184.v = select i1 %i.ah, ptr @__const.doBmpTest.grayPPMRefs, ptr @__const.doBmpTest.colorPPMRefs
  %.in184 = getelementptr inbounds [8 x i8], ptr %.in184.v, i64 %i.ai
  %i.ak = load ptr, ptr %.in184, align 8, !tbaa !11
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %.0145 = phi ptr [ %i.ak, %bb.l ], [ %i.aj, %bb.k ], [ %i.af, %bb.i ] ; 2 uses
  %.0 = phi i32 [ 17, %bb.l ], [ 17, %bb.k ], [ 9, %bb.i ]
  %i.al = mul nsw i32 %i.n, 39
  %i.am = load i32, ptr @sampleSize, align 4, !tbaa !12
  %i.an = mul nsw i32 %i.al, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = tail call ptr @tj3Alloc(i64 noundef %i.ao) #21 ; 19 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull @.str.111) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cj

bb.o:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds [4 x i8], ptr @tjRedOffset, i64 %i.g
  %i.at = load i32, ptr %i.as, align 4, !tbaa !12
  %i.au = getelementptr inbounds [4 x i8], ptr @tjGreenOffset, i64 %i.g
  %i.av = load i32, ptr %i.au, align 4, !tbaa !12
  %i.aw = getelementptr inbounds [4 x i8], ptr @tjBlueOffset, i64 %i.g
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !12
  %.not.i = icmp eq i32 %3, 0                     ; 2 uses
  %i.ay = load i32, ptr @maxSample, align 4, !tbaa !12 ; 2 uses
  %i.az = add nsw i32 %i.ay, 1                    ; 4 uses
  %i.ba = load i32, ptr @precision, align 4       ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 8                   ; 5 uses
  %i.bc = sitofp i32 %i.ay to double              ; 3 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.i, i32 1)
  %i.bd = zext nneg i32 %smax.i to i64
  %i.be = sext i32 %i.i to i64                    ; 3 uses
  %i.bf = sext i32 %i.at to i64
  %i.bg = sext i32 %i.av to i64                   ; 2 uses
  %i.bh = sext i32 %i.ax to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.ap, i64 %i.bg
  %invariant.gep109.i = getelementptr [2 x i8], ptr %i.ap, i64 %i.bh
  %invariant.gep111.i = getelementptr i8, ptr %i.ap, i64 %i.bg
  %invariant.gep113.i = getelementptr i8, ptr %i.ap, i64 %i.bh
  %i.bi = insertelement <4 x double> poison, double %i.bc, i64 0
  %i.bj = shufflevector <4 x double> %i.bi, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %4 = insertelement <2 x i32> poison, i32 %i.az, i64 0
  %5 = shufflevector <2 x i32> %4, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bk = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = zext i1 %i.bb to i64
  %i.bn = zext i1 %i.bb to i64
  %.sink = shl nuw nsw i64 %i.bd, %i.bn
  br label %bb.p

bb.p:                                             ; preds = %bb.aa, %bb.o
  %.082101.i = phi i32 [ 0, %bb.o ], [ %i.dz, %bb.aa ] ; 4 uses
  %i.bo = sub nuw nsw i32 38, %.082101.i
  %i.bp = select i1 %.not.i, i32 %.082101.i, i32 %i.bo
  %i.bq = mul nsw i32 %.082101.i, %i.az
  %i.br = sdiv i32 %i.bq, 39                      ; 2 uses
  %i.bs = srem i32 %i.br, %i.az                   ; 3 uses
  %i.bt = mul i32 %i.bp, %i.n                     ; 2 uses
  %i.bu = sitofp i32 %i.bs to double
  %i.bv = fdiv double %i.bu, %i.bc
  %i.bw = fsub double 1.000000e+00, %i.bv         ; 3 uses
  %i.bx = trunc i32 %i.bs to i16
  %i.by = trunc i32 %i.bs to i8
  %i.bz = sext i32 %i.bt to i64                   ; 3 uses
  %i.ca = insertelement <2 x double> poison, double %i.bw, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %setVal.exit88.i, %bb.p
  %indvars.iv.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next.i, %setVal.exit88.i ] ; 5 uses
  %i.cb = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.cc = mul i32 %i.i, %i.cb
  %i.cd = add i32 %i.cc, %i.bt
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul i32 %i.az, %i.cb
  %i.cg = sdiv i32 %i.cf, 35                      ; 2 uses
  %6 = add nsw i32 %i.cg, %i.br
  %7 = insertelement <2 x i32> poison, i32 %i.cg, i64 0
  %8 = insertelement <2 x i32> %7, i32 %6, i64 1
  %9 = srem <2 x i32> %8, %5                      ; 7 uses
  %.sink369 = shl nsw i64 %i.ce, %i.bm
  %scevgep104.i = getelementptr i8, ptr %i.ap, i64 %.sink369
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep104.i, i8 0, i64 %.sink, i1 false), !tbaa !16
  switch i32 %2, label %bb.x [
    i32 6, label %bb.q
    i32 11, label %bb.t
  ]

bb.q:                                             ; preds = %.lr.ph.i
  %i.ch = mul nsw i64 %indvars.iv.i, %i.be
  %i.ci = add nsw i64 %i.ch, %i.bz                ; 2 uses
  br i1 %i.bb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %10 = bitcast <2 x i32> %9 to <8 x i8>
  %11 = extractelement <8 x i8> %10, i64 4
  %i.cj = getelementptr inbounds i8, ptr %i.ap, i64 %i.ci
  store i8 %11, ptr %i.cj, align 1, !tbaa !16
  br label %setVal.exit88.i

bb.s:                                             ; preds = %bb.q
  %12 = bitcast <2 x i32> %9 to <4 x i16>
  %13 = extractelement <4 x i16> %12, i64 2
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.ci
  store i16 %13, ptr %i.ck, align 2, !tbaa !18
  br label %setVal.exit88.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.cl = sitofp <2 x i32> %9 to <2 x double>
  %i.cm = fdiv <2 x double> %i.cl, %i.bl          ; 2 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 0
  %i.co = fsub double 1.000000e+00, %i.cn         ; 3 uses
  %i.cp = extractelement <2 x double> %i.cm, i64 1
  %i.cq = fsub double 1.000000e+00, %i.cp         ; 3 uses
  %i.cr = fcmp olt double %i.co, %i.bw
  %i.cs = select i1 %i.cr, double %i.co, double %i.bw ; 2 uses
  %i.ct = fcmp olt double %i.cs, %i.cq
  %..i.i = select i1 %i.ct, double %i.cs, double %i.cq ; 5 uses
  %i.cu = fcmp oeq double %..i.i, 1.000000e+00
  br i1 %i.cu, label %rgb_to_cmyk.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = insertelement <2 x double> %i.ca, double %i.co, i64 0
  %i.cw = insertelement <2 x double> poison, double %..i.i, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fsub <2 x double> %i.cv, %i.cx
  %i.cz = fsub double 1.000000e+00, %..i.i        ; 2 uses
  %i.da = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fdiv <2 x double> %i.cy, %i.db
  %i.dd = fsub double %i.cq, %..i.i
  %i.de = fdiv double %i.dd, %i.cz
  %i.df = shufflevector <2 x double> %i.dc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %rgb_to_cmyk.exit.i

rgb_to_cmyk.exit.i:                               ; preds = %bb.u, %bb.t
  %.0.i.i = phi double [ %i.de, %bb.u ], [ 0.000000e+00, %bb.t ]
  %i.dg = phi <4 x double> [ %i.df, %bb.u ], [ <double 0.000000e+00, double 0.000000e+00, double undef, double undef>, %bb.t ]
  %i.dh = insertelement <4 x double> poison, double %.0.i.i, i64 2
  %i.di = insertelement <4 x double> %i.dh, double %..i.i, i64 3
  %i.dj = shufflevector <4 x double> %i.dg, <4 x double> %i.di, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dk = fneg <4 x double> %i.dj
  %i.dl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dk, <4 x double> %i.bj, <4 x double> %i.bj)
  %i.dm = fadd <4 x double> %i.dl, splat (double 5.000000e-01)
  %i.dn = fptosi <4 x double> %i.dm to <4 x i32>  ; 2 uses
  %i.do = mul nsw i64 %indvars.iv.i, %i.be
  %i.dp = add nsw i64 %i.do, %i.bz                ; 2 uses
  br i1 %i.bb, label %bb.w, label %bb.v

bb.v:                                             ; preds = %rgb_to_cmyk.exit.i
  %i.dq = getelementptr i8, ptr %i.ap, i64 %i.dp
  %i.dr = trunc <4 x i32> %i.dn to <4 x i8>
  store <4 x i8> %i.dr, ptr %i.dq, align 1, !tbaa !16
  br label %setVal.exit88.i

bb.w:                                             ; preds = %rgb_to_cmyk.exit.i
  %i.ds = trunc <4 x i32> %i.dn to <4 x i16>
  %i.dt = getelementptr [2 x i8], ptr %i.ap, i64 %i.dp
  store <4 x i16> %i.ds, ptr %i.dt, align 2, !tbaa !18
  br label %setVal.exit88.i

bb.x:                                             ; preds = %.lr.ph.i
  %i.du = mul nsw i64 %indvars.iv.i, %i.be
  %i.dv = add nsw i64 %i.du, %i.bz                ; 5 uses
  %i.dw = add nsw i64 %i.dv, %i.bf                ; 2 uses
  br i1 %i.bb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %14 = bitcast <2 x i32> %9 to <8 x i8>
  %15 = extractelement <8 x i8> %14, i64 0
  %i.dx = getelementptr inbounds i8, ptr %i.ap, i64 %i.dw
  store i8 %15, ptr %i.dx, align 1, !tbaa !16
  %gep112.i = getelementptr i8, ptr %invariant.gep111.i, i64 %i.dv
  store i8 %i.by, ptr %gep112.i, align 1, !tbaa !16
  %16 = bitcast <2 x i32> %9 to <8 x i8>
  %17 = extractelement <8 x i8> %16, i64 4
  %gep114.i = getelementptr i8, ptr %invariant.gep113.i, i64 %i.dv
  store i8 %17, ptr %gep114.i, align 1, !tbaa !16
  br label %setVal.exit88.i

bb.z:                                             ; preds = %bb.x
  %18 = bitcast <2 x i32> %9 to <4 x i16>
  %19 = extractelement <4 x i16> %18, i64 0
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.dw
  store i16 %19, ptr %i.dy, align 2, !tbaa !18
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.dv
  store i16 %i.bx, ptr %gep.i, align 2, !tbaa !18
  %20 = bitcast <2 x i32> %9 to <4 x i16>
  %21 = extractelement <4 x i16> %20, i64 2
  %gep110.i = getelementptr [2 x i8], ptr %invariant.gep109.i, i64 %i.dv
  store i16 %21, ptr %gep110.i, align 2, !tbaa !18
  br label %setVal.exit88.i

setVal.exit88.i:                                  ; preds = %bb.z, %bb.y, %bb.w, %bb.v, %bb.s, %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 35
  br i1 %exitcond.not.i, label %bb.aa, label %.lr.ph.i, !llvm.loop !45

bb.aa:                                            ; preds = %setVal.exit88.i
  %i.dz = add nuw nsw i32 %.082101.i, 1           ; 2 uses
  %exitcond108.not.i = icmp eq i32 %i.dz, 39
  br i1 %exitcond108.not.i, label %initBitmap.exit, label %bb.p, !llvm.loop !46

initBitmap.exit:                                  ; preds = %bb.aa
  %i.ea = load i32, ptr %i.a, align 4, !tbaa !12
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr @pixFormatStr, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !11
  %i.ee = select i1 %.not.i, ptr @.str.114, ptr @.str.113
  %i.ef = tail call i32 @getpid() #21
  %i.eg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 80, ptr noundef nonnull @.str.112, i32 noundef %i.ba, ptr noundef %i.ed, i32 noundef %1, ptr noundef nonnull %i.ee, i32 noundef %i.ef, ptr noundef %0) #21 ; 0 uses
  %i.eh = load i32, ptr @precision, align 4, !tbaa !12 ; 2 uses
  %i.ei = icmp slt i32 %i.eh, 9
  br i1 %i.ei, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %initBitmap.exit
  %i.ej = load i32, ptr %i.a, align 4, !tbaa !12
  %i.ek = call i32 @tj3SaveImage8(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ap, i32 noundef 35, i32 noundef %i.n, i32 noundef 39, i32 noundef %i.ej) #21
  %i.el = icmp eq i32 %i.ek, -1
  br i1 %i.el, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.em = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.en = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.em) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cj

bb.ad:                                            ; preds = %initBitmap.exit
  %i.eo = icmp samesign ult i32 %i.eh, 13
  %i.ep = load i32, ptr %i.a, align 4, !tbaa !12  ; 2 uses
  br i1 %i.eo, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.eq = call i32 @tj3SaveImage12(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ap, i32 noundef 35, i32 noundef %i.n, i32 noundef 39, i32 noundef %i.ep) #21
  %i.er = icmp eq i32 %i.eq, -1
  br i1 %i.er, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.es = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.et = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.es) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cj

bb.ag:                                            ; preds = %bb.ad
  %i.eu = call i32 @tj3SaveImage16(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ap, i32 noundef 35, i32 noundef %i.n, i32 noundef 39, i32 noundef %i.ep) #21
  %i.ev = icmp eq i32 %i.eu, -1
  br i1 %i.ev, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ew = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.ex = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.ew) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cj

bb.ai:                                            ; preds = %bb.ae, %bb.ag, %bb.ab
  call void @tj3Free(ptr noundef nonnull %i.ap) #21
  %i.ey = call ptr @MD5File(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #21 ; 3 uses
  %.not186 = icmp eq ptr %i.ey, null
  br i1 %.not186, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.cj

bb.ak:                                            ; preds = %bb.ai
  %i.fa = call i32 @strcasecmp(ptr noundef nonnull %i.ey, ptr noundef %.0145) #20
  %.not187 = icmp eq i32 %i.fa, 0
  br i1 %.not187, label %.preheader, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.116, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ey, ptr noundef %.0145) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cj

.preheader:                                       ; preds = %bb.ak, %.thread
  %.0144248 = phi i32 [ %i.jg, %.thread ], [ 2, %bb.ak ] ; 13 uses
  %.0147247 = phi i32 [ %.1148, %.thread ], [ 0, %bb.ak ] ; 15 uses
  %i.fc = call i32 @tj3Set(ptr noundef nonnull %i.o, i32 noundef 7, i32 noundef %.0144248) #21
  %i.fd = icmp eq i32 %i.fc, -1
  br i1 %i.fd, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.preheader
  %i.fe = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.ff = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.fe) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cj

bb.an:                                            ; preds = %.preheader
  %i.fg = load i32, ptr %i.f, align 4, !tbaa !12
  store i32 %i.fg, ptr %i.a, align 4, !tbaa !12
  %i.fh = icmp samesign ult i32 %.0144248, 9      ; 4 uses
  br i1 %i.fh, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.fi = call ptr @tj3LoadImage8(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.fk = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.fl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.fk) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cj

bb.aq:                                            ; preds = %bb.an
  %i.fm = icmp samesign ult i32 %.0144248, 13
  br i1 %i.fm, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fn = call ptr @tj3LoadImage12(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.fp = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.fq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.fp) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cj

bb.at:                                            ; preds = %bb.aq
  %i.fr = call ptr @tj3LoadImage16(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ft = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.fu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.ft) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cj

bb.av:                                            ; preds = %bb.ar, %bb.at, %bb.ao
  %.1 = phi ptr [ %i.fi, %bb.ao ], [ %i.fn, %bb.ar ], [ %i.fr, %bb.at ] ; 4 uses
  %i.fv = load i32, ptr %i.d, align 4, !tbaa !12
  %.not189 = icmp eq i32 %i.fv, 35
  %i.fw = load i32, ptr %i.e, align 4
  %.not190 = icmp eq i32 %i.fw, 39
  %or.cond196 = select i1 %.not189, i1 %.not190, i1 false
  br i1 %or.cond196, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.117, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.cj

bb.ax:                                            ; preds = %bb.av
  %i.fy = load i32, ptr %i.a, align 4, !tbaa !12  ; 2 uses
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !12
  %i.gc = mul nsw i32 %i.gb, 35
  %i.gd = add i32 %i.k, %i.gc
  %i.ge = and i32 %i.gd, %i.m
  %i.gf = call fastcc i32 @cmpBitmap(ptr noundef %.1, i32 noundef %i.ge, i32 noundef %i.fy, i32 noundef %3, i32 noundef 0, i32 noundef %.0144248, ptr noundef %0)
  %.not191 = icmp eq i32 %i.gf, 0
  br i1 %.not191, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.118, ptr noundef nonnull %i.b) ; 0 uses
  %i.gh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.119, i32 noundef %.0144248) ; 0 uses
  br label %bb.cj

bb.az:                                            ; preds = %bb.ax
  call void @tj3Free(ptr noundef nonnull %.1) #21
  %i.gi = load i32, ptr %i.a, align 4, !tbaa !12
  %i.gj = icmp eq i32 %i.gi, 6
  br i1 %i.gj, label %bb.ba, label %bb.bv

bb.ba:                                            ; preds = %bb.az
  store i32 4, ptr %i.a, align 4, !tbaa !12
  br i1 %i.fh, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.gk = call ptr @tj3LoadImage8(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.gm = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.o) #21
  %i.gn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.gm) ; 0 uses
  store i1 true, ptr @exitStatus, align 4
  br label %bb.cj

bb.bd:                                            ; preds = %bb.ba
  %i.go = icmp samesign ult i32 %.0144248, 13
  br i1 %i.go, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.gp = call ptr @tj3LoadImage12(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
end_hunk_0
