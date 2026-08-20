inline.NumInlined: 66
inline.NumDeleted: 18
begin_hunk_0_@Inter_ManPerformInterpolation:bb.a
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %Abc_Clock.exit327, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gi = load i64, ptr %31, align 8, !tbaa !14
  %i.gj = mul nsw i64 %i.gi, 1000000
  %i.gk = load i64, ptr %i.cj, align 8, !tbaa !17
  %i.gl = sdiv i64 %i.gk, 1000
  %i.gm = add nsw i64 %i.gl, %i.gj
  br label %Abc_Clock.exit327

Abc_Clock.exit327:                                ; preds = %bb.aj, %bb.ak
  %.0.i326 = phi i64 [ %i.gm, %bb.ak ], [ -1, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15
  %i.gn = add i64 %.0.i326, %.0.i312.neg
  %i.go = sitofp i64 %i.gn to double
  %i.gp = fdiv double %i.go, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.6, double noundef %i.gp)
  br label %bb.al

bb.al:                                            ; preds = %Abc_Clock.exit327, %Abc_Clock.exit325
  %i.gq = load i32, ptr %i.ag, align 4, !tbaa !19
  %.not261 = icmp eq i32 %i.gq, 0
  br i1 %.not261, label %bb.am, label %bb.bd

bb.am:                                            ; preds = %bb.al
  %i.gr = load i32, ptr %i.bu, align 4, !tbaa !48
  %.not262 = icmp eq i32 %i.gr, 0
  br i1 %.not262, label %bb.an, label %bb.bd

bb.an:                                            ; preds = %bb.am
  %i.gs = load i32, ptr %i.w, align 4, !tbaa !8   ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 1
  br i1 %i.gt, label %bb.bd, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.gv = call ptr @Inter_CheckStart(ptr noundef %i.gu, i32 noundef %i.gs) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  %i.gw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %30) #15
  %i.gx = icmp slt i32 %i.gw, 0
  br i1 %i.gx, label %Abc_Clock.exit329, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gy = load i64, ptr %30, align 8, !tbaa !14
  %.neg410 = mul i64 %i.gy, -1000000
  %i.gz = load i64, ptr %i.ck, align 8, !tbaa !17
  %.neg409 = sdiv i64 %i.gz, -1000
  %.neg411 = add i64 %.neg409, %.neg410
  br label %Abc_Clock.exit329

Abc_Clock.exit329:                                ; preds = %bb.ao, %bb.ap
  %.0.i328.neg = phi i64 [ %.neg411, %bb.ap ], [ 1, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  %i.ha = load ptr, ptr %i.bv, align 8, !tbaa !49
  %i.hb = call ptr @Cnf_Derive(ptr noundef %i.ha, i32 noundef 1) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  %i.hc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %29) #15
  %i.hd = icmp slt i32 %i.hc, 0
  br i1 %i.hd, label %Abc_Clock.exit331, label %bb.aq

bb.aq:                                            ; preds = %Abc_Clock.exit329
  %i.he = load i64, ptr %29, align 8, !tbaa !14
  %i.hf = mul nsw i64 %i.he, 1000000
  %i.hg = load i64, ptr %i.cl, align 8, !tbaa !17
  %i.hh = sdiv i64 %i.hg, 1000
  %i.hi = add nsw i64 %i.hh, %i.hf
  br label %Abc_Clock.exit331

Abc_Clock.exit331:                                ; preds = %Abc_Clock.exit329, %bb.aq
  %.0.i330 = phi i64 [ %i.hi, %bb.aq ], [ -1, %Abc_Clock.exit329 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  %i.hj = add i64 %.0.i330, %.0.i328.neg
  %i.hk = load i64, ptr %i.bd, align 8, !tbaa !40
  %i.hl = add nsw i64 %i.hj, %i.hk
  store i64 %i.hl, ptr %i.bd, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  %i.hm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %28) #15
  %i.hn = icmp slt i32 %i.hm, 0
  br i1 %i.hn, label %Abc_Clock.exit333, label %bb.ar

bb.ar:                                            ; preds = %Abc_Clock.exit331
  %i.ho = load i64, ptr %28, align 8, !tbaa !14
  %.neg413 = mul i64 %i.ho, -1000000
  %i.hp = load i64, ptr %i.cm, align 8, !tbaa !17
  %.neg412 = sdiv i64 %i.hp, -1000
  %.neg414 = add i64 %.neg412, %.neg413
  br label %Abc_Clock.exit333

Abc_Clock.exit333:                                ; preds = %Abc_Clock.exit331, %bb.ar
  %.0.i332.neg = phi i64 [ %.neg414, %bb.ar ], [ 1, %Abc_Clock.exit331 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  %i.hq = call i32 @Inter_CheckPerform(ptr noundef %i.gv, ptr noundef %i.hb, i64 noundef %i.v) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  %i.hr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %27) #15
  %i.hs = icmp slt i32 %i.hr, 0
  br i1 %i.hs, label %Abc_Clock.exit335, label %bb.as

bb.as:                                            ; preds = %Abc_Clock.exit333
  %i.ht = load i64, ptr %27, align 8, !tbaa !14
  %i.hu = mul nsw i64 %i.ht, 1000000
  %i.hv = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.hw = sdiv i64 %i.hv, 1000
  %i.hx = add nsw i64 %i.hw, %i.hu
  br label %Abc_Clock.exit335

Abc_Clock.exit335:                                ; preds = %Abc_Clock.exit333, %bb.as
  %.0.i334 = phi i64 [ %i.hx, %bb.as ], [ -1, %Abc_Clock.exit333 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  %i.hy = add i64 %.0.i334, %.0.i332.neg
  %i.hz = load i64, ptr %i.co, align 8, !tbaa !56
  %i.ia = add nsw i64 %i.hy, %i.hz
  store i64 %i.ia, ptr %i.co, align 8, !tbaa !56
  call void @Cnf_DataFree(ptr noundef %i.hb) #15
  %i.ib = load ptr, ptr %i.cp, align 8, !tbaa !57 ; 7 uses
  %.not263 = icmp eq ptr %i.ib, null
  br i1 %.not263, label %bb.bd, label %bb.at

bb.at:                                            ; preds = %Abc_Clock.exit335
  %i.ic = load ptr, ptr %i.bv, align 8, !tbaa !49
  %i.id = call ptr @Aig_ManDupSimple(ptr noundef %i.ic) #15
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 4 ; 3 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !58 ; 7 uses
  %i.ig = load i32, ptr %i.ib, align 8, !tbaa !60
  %i.ih = icmp eq i32 %i.if, %i.ig
  br i1 %i.ih, label %bb.au, label %Vec_PtrPush.exit

bb.au:                                            ; preds = %bb.at
  %i.ii = icmp slt i32 %i.if, 16
  br i1 %i.ii, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !61 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ik, null
  br i1 %.not9.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.il = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ik, i64 noundef 128) #16
  br label %Vec_PtrGrow.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.im = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.ax, %bb.aw
  %i.in = phi ptr [ %i.il, %bb.aw ], [ %i.im, %bb.ax ]
  store ptr %i.in, ptr %i.ij, align 8, !tbaa !61
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.ay:                                            ; preds = %bb.au
  %i.io = icmp samesign ult i32 %i.if, 1073741823
  %i.ip = shl nuw nsw i32 %i.if, 1
  %spec.select.i = select i1 %i.io, i32 %i.ip, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.if, %spec.select.i
  br i1 %.not.i10.i, label %bb.az, label %Vec_PtrPush.exit

bb.az:                                            ; preds = %bb.ay
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !61 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.ir, null
  %i.is = zext nneg i32 %spec.select.i to i64
  %i.it = shl nuw nsw i64 %i.is, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.iu = call ptr @realloc(ptr noundef nonnull %i.ir, i64 noundef %i.it) #16
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.iv = call noalias ptr @malloc(i64 noundef %i.it) #17
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.iw = phi ptr [ %i.iu, %bb.ba ], [ %i.iv, %bb.bb ]
  store ptr %i.iw, ptr %i.iq, align 8, !tbaa !61
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.bc, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.bc ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ib, align 8, !tbaa !60
  %.pre = load i32, ptr %i.ie, align 4, !tbaa !58
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.at, %bb.ay, %Vec_PtrGrow.exit12.sink.split.i
  %i.ix = phi i32 [ %i.if, %bb.at ], [ %i.if, %bb.ay ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !61
  %i.ja = add nsw i32 %i.ix, 1
  store i32 %i.ja, ptr %i.ie, align 4, !tbaa !58
  %i.jb = sext i32 %i.ix to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.iz, i64 %i.jb
  store ptr %i.id, ptr %i.jc, align 8, !tbaa !62
  br label %bb.bd

bb.bd:                                            ; preds = %Abc_Clock.exit335, %Vec_PtrPush.exit, %bb.an, %bb.am, %bb.al
  %.1239 = phi ptr [ %.0238, %bb.al ], [ %.0238, %bb.am ], [ %.0238, %bb.an ], [ %i.gv, %Vec_PtrPush.exit ], [ %i.gv, %Abc_Clock.exit335 ] ; 10 uses
  br label %bb.be

bb.be:                                            ; preds = %Abc_Clock.exit391, %bb.bd
  %.0236 = phi i32 [ 0, %bb.bd ], [ %i.vh, %Abc_Clock.exit391 ] ; 7 uses
  %.1 = phi i64 [ %.0234, %bb.bd ], [ %.2, %Abc_Clock.exit391 ] ; 4 uses
  %i.jd = load i32, ptr %i.cq, align 4, !tbaa !63 ; 3 uses
  %.not264 = icmp eq i32 %i.jd, 0
  br i1 %.not264, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.je = load i32, ptr %i.bs, align 8, !tbaa !47
  %i.jf = add nsw i32 %i.je, %.0236
  %.not265 = icmp slt i32 %i.jf, %i.jd
  br i1 %.not265, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jg = load i32, ptr %i.aa, align 8, !tbaa !20
  %.not285 = icmp eq i32 %i.jg, 0
  br i1 %.not285, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.jd) ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  %i.ji = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %26) #15
  %i.jj = icmp slt i32 %i.ji, 0
  br i1 %i.jj, label %Abc_Clock.exit337, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jk = load i64, ptr %26, align 8, !tbaa !14
  %i.jl = mul nsw i64 %i.jk, 1000000
  %i.jm = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !17
  %i.jo = sdiv i64 %i.jn, 1000
  %i.jp = add nsw i64 %i.jo, %i.jl
  br label %Abc_Clock.exit337

Abc_Clock.exit337:                                ; preds = %bb.bi, %bb.bj
  %.0.i336 = phi i64 [ %i.jp, %bb.bj ], [ -1, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  %i.jq = sub nsw i64 %.0.i336, %.0.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  store i64 %i.jq, ptr %i.jr, align 8, !tbaa !64
  call void @Inter_ManStop(ptr noundef nonnull %i.af, i32 noundef 0) #15
  call void @Inter_CheckStop(ptr noundef %.1239) #15
  br label %.thread

bb.bk:                                            ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  %i.js = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %25) #15
  %i.jt = icmp slt i32 %i.js, 0
  br i1 %i.jt, label %Abc_Clock.exit339, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ju = load i64, ptr %25, align 8, !tbaa !14
  %.neg416 = mul i64 %i.ju, -1000000
  %i.jv = load i64, ptr %i.cr, align 8, !tbaa !17
  %.neg415 = sdiv i64 %i.jv, -1000
  %.neg417 = add i64 %.neg415, %.neg416
  br label %Abc_Clock.exit339

Abc_Clock.exit339:                                ; preds = %bb.bk, %bb.bl
  %.0.i338.neg = phi i64 [ %.neg417, %bb.bl ], [ 1, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  %i.jw = load i32, ptr %i.cs, align 8, !tbaa !65
  %i.jx = load i32, ptr %i.bu, align 4, !tbaa !48
  %i.jy = call i32 @Inter_ManPerformOneStep(ptr noundef nonnull %i.af, i32 noundef %i.jw, i32 noundef %i.jx, i64 noundef %i.v) #15
  %i.jz = load i32, ptr %i.aa, align 8, !tbaa !20
  %.not266 = icmp eq i32 %i.jz, 0
  br i1 %.not266, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %Abc_Clock.exit339
  %i.ka = add nuw nsw i32 %.0236, 1               ; 2 uses
  %i.kb = load i32, ptr %i.bs, align 8, !tbaa !47
  %i.kc = add nsw i32 %i.kb, %i.ka
  %i.kd = load ptr, ptr %i.bv, align 8, !tbaa !49 ; 3 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 148
  %.val295 = load i32, ptr %i.ke, align 4, !tbaa !34
  %i.kf = getelementptr i8, ptr %i.kd, i64 152
  %.val296 = load i32, ptr %i.kf, align 8, !tbaa !34
  %i.kg = add nsw i32 %.val296, %.val295
  %i.kh = call i32 @Aig_ManLevelNum(ptr noundef %i.kd) #15
  %i.ki = load i32, ptr %i.ct, align 4, !tbaa !66
  %i.kj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.ka, i32 noundef %i.kc, i32 noundef %i.kg, i32 noundef %i.kh, i32 noundef %i.ki) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  %i.kk = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %24) #15
  %i.kl = icmp slt i32 %i.kk, 0
  br i1 %i.kl, label %Abc_Clock.exit341, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.km = load i64, ptr %24, align 8, !tbaa !14
  %i.kn = mul nsw i64 %i.km, 1000000
  %i.ko = load i64, ptr %i.cu, align 8, !tbaa !17
  %i.kp = sdiv i64 %i.ko, 1000
  %i.kq = add nsw i64 %i.kp, %i.kn
  br label %Abc_Clock.exit341

Abc_Clock.exit341:                                ; preds = %bb.bm, %bb.bn
  %.0.i340 = phi i64 [ %i.kq, %bb.bn ], [ -1, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  %i.kr = add i64 %.0.i340, %.0.i338.neg
  %i.ks = sitofp i64 %i.kr to double
  %i.kt = fdiv double %i.ks, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.6, double noundef %i.kt)
  br label %bb.bo

bb.bo:                                            ; preds = %Abc_Clock.exit341, %Abc_Clock.exit339
  %44 = add nsw i32 %.0236, -1
  %i.ku = load i32, ptr %i.bs, align 8, !tbaa !47 ; 3 uses
  %i.kv = add nsw i32 %44, %i.ku
  store i32 %i.kv, ptr %i.cv, align 4, !tbaa !13
  switch i32 %i.jy, label %bb.cf [
    i32 0, label %bb.bp
    i32 -1, label %bb.bw
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.kw = icmp eq i32 %.0236, 0
  br i1 %i.kw, label %bb.bq, label %bb.el

bb.bq:                                            ; preds = %bb.bp
  %i.kx = load i32, ptr %i.aa, align 8, !tbaa !20
  %.not282 = icmp eq i32 %i.kx, 0
  br i1 %.not282, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ky = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.ku) ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.kz = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %23) #15
  %i.la = icmp slt i32 %i.kz, 0
  br i1 %i.la, label %Abc_Clock.exit343, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lb = load i64, ptr %23, align 8, !tbaa !14
  %i.lc = mul nsw i64 %i.lb, 1000000
  %i.ld = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !17
  %i.lf = sdiv i64 %i.le, 1000
  %i.lg = add nsw i64 %i.lf, %i.lc
  br label %Abc_Clock.exit343

Abc_Clock.exit343:                                ; preds = %bb.bs, %bb.bt
  %.0.i342 = phi i64 [ %i.lg, %bb.bt ], [ -1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  %i.lh = sub nsw i64 %.0.i342, %.0.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  store i64 %i.lh, ptr %i.li, align 8, !tbaa !64
  %i.lj = load i32, ptr %i.bs, align 8, !tbaa !47
  store i32 %i.lj, ptr %2, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15
  call void @Saig_ParBmcSetDefaultParams(ptr noundef nonnull %43) #15
  %i.lk = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 100000000, ptr %i.lk, align 8, !tbaa !67
  %i.ll = load i32, ptr %i.bs, align 8, !tbaa !47
  store i32 %i.ll, ptr %43, align 8, !tbaa !69
  %i.lm = load i32, ptr %i.aa, align 8, !tbaa !20
  %i.ln = getelementptr inbounds nuw i8, ptr %43, i64 88
  store i32 %i.lm, ptr %i.ln, align 8, !tbaa !70
  %i.lo = call i32 @Saig_ManBmcScalable(ptr noundef %0, ptr noundef nonnull %43) #15
  switch i32 %i.lo, label %bb.bv [
    i32 1, label %.sink.split
    i32 -1, label %bb.bu
  ]

bb.bu:                                            ; preds = %Abc_Clock.exit343
  br label %.sink.split

.sink.split:                                      ; preds = %Abc_Clock.exit343, %bb.bu
  %str.2.sink = phi ptr [ @str.2, %bb.bu ], [ @str.3, %Abc_Clock.exit343 ]
  %puts283 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink) ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split, %Abc_Clock.exit343
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  call void @Inter_ManStop(ptr noundef nonnull %i.af, i32 noundef 0) #15
  call void @Inter_CheckStop(ptr noundef %.1239) #15
  br label %.thread

bb.bw:                                            ; preds = %bb.bo
  %i.lp = load i32, ptr %i.i, align 8, !tbaa !18
  %.not279 = icmp eq i32 %i.lp, 0
  br i1 %.not279, label %._crit_edge, label %bb.bx

._crit_edge:                                      ; preds = %bb.bw
  %.pre498 = load i32, ptr %i.aa, align 8, !tbaa !20
  br label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  %i.lq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %22) #15
  %i.lr = icmp slt i32 %i.lq, 0
  br i1 %i.lr, label %Abc_Clock.exit345, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ls = load i64, ptr %22, align 8, !tbaa !14
  %i.lt = mul nsw i64 %i.ls, 1000000
  %i.lu = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !17
  %i.lw = sdiv i64 %i.lv, 1000
  %i.lx = add nsw i64 %i.lw, %i.lt
  br label %Abc_Clock.exit345

Abc_Clock.exit345:                                ; preds = %bb.bx, %bb.by
  %.0.i344 = phi i64 [ %i.lx, %bb.by ], [ -1, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.ly = icmp sgt i64 %.0.i344, %i.v
  %.pre499 = load i32, ptr %i.aa, align 8, !tbaa !20 ; 2 uses
  br i1 %i.ly, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %Abc_Clock.exit345
  %.not281 = icmp eq i32 %.pre499, 0
  br i1 %.not281, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lz = load i32, ptr %i.i, align 8, !tbaa !18
  %i.ma = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.lz) ; 0 uses
  br label %bb.cd

bb.cb:                                            ; preds = %._crit_edge, %Abc_Clock.exit345
  %i.mb = phi i32 [ %.pre498, %._crit_edge ], [ %.pre499, %Abc_Clock.exit345 ]
  %.not280 = icmp eq i32 %i.mb, 0
  br i1 %.not280, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mc = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !71
  %i.me = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.md) ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.bz, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  %i.mf = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %21) #15
  %i.mg = icmp slt i32 %i.mf, 0
  br i1 %i.mg, label %Abc_Clock.exit347, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mh = load i64, ptr %21, align 8, !tbaa !14
  %i.mi = mul nsw i64 %i.mh, 1000000
  %i.mj = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !17
  %i.ml = sdiv i64 %i.mk, 1000
  %i.mm = add nsw i64 %i.ml, %i.mi
  br label %Abc_Clock.exit347

Abc_Clock.exit347:                                ; preds = %bb.cd, %bb.ce
  %.0.i346 = phi i64 [ %i.mm, %bb.ce ], [ -1, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  %i.mn = sub nsw i64 %.0.i346, %.0.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !64
  call void @Inter_ManStop(ptr noundef nonnull %i.af, i32 noundef 0) #15
  call void @Inter_CheckStop(ptr noundef %.1239) #15
  br label %.thread

bb.cf:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.mp = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %20) #15
  %i.mq = icmp slt i32 %i.mp, 0
  br i1 %i.mq, label %Abc_Clock.exit349, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mr = load i64, ptr %20, align 8, !tbaa !14
  %.neg419 = mul i64 %i.mr, -1000000
  %i.ms = load i64, ptr %i.cw, align 8, !tbaa !17
  %.neg418 = sdiv i64 %i.ms, -1000
  %.neg420 = add i64 %.neg418, %.neg419
  br label %Abc_Clock.exit349

Abc_Clock.exit349:                                ; preds = %bb.cf, %bb.cg
  %.0.i348.neg = phi i64 [ %.neg420, %bb.cg ], [ 1, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  %i.mt = load ptr, ptr %i.cx, align 8, !tbaa !72 ; 4 uses
  %.not267 = icmp eq ptr %i.mt, null
  br i1 %.not267, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %Abc_Clock.exit349
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 488
  store i64 %i.v, ptr %i.mu, align 8, !tbaa !73
  %i.mv = call ptr @Dar_ManRwsat(ptr noundef nonnull %i.mt, i32 noundef 1, i32 noundef 0) #15
  store ptr %i.mv, ptr %i.cx, align 8, !tbaa !72
  call void @Aig_ManStop(ptr noundef nonnull %i.mt) #15
  %i.mw = load ptr, ptr %i.cx, align 8, !tbaa !72
  %i.mx = icmp eq ptr %i.mw, null
  br i1 %i.mx, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.my = load i32, ptr %i.i, align 8, !tbaa !18
  %i.mz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.my) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  %i.na = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %19) #15
  %i.nb = icmp slt i32 %i.na, 0
  br i1 %i.nb, label %Abc_Clock.exit351, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nc = load i64, ptr %19, align 8, !tbaa !14
  %i.nd = mul nsw i64 %i.nc, 1000000
  %i.ne = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !17
  %i.ng = sdiv i64 %i.nf, 1000
  %i.nh = add nsw i64 %i.ng, %i.nd
  br label %Abc_Clock.exit351

Abc_Clock.exit351:                                ; preds = %bb.ci, %bb.cj
  %.0.i350 = phi i64 [ %i.nh, %bb.cj ], [ -1, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  %i.ni = sub nsw i64 %.0.i350, %.0.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.af, i64 152
end_hunk_0
