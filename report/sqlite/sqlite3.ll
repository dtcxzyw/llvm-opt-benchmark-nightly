Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@strftimeFunc:bb.a

bb.y:                                             ; preds = %sqlite3_str_append.exit, %sqlite3_str_append.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13196)
  %.sroa.0192.0.copyload = load i64, ptr %3, align 8, !tbaa !565 ; 2 uses
  %.sroa.7.0.copyload = load i32, ptr %i.ch, align 8, !tbaa !570
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7, align 8, !tbaa !570
  %.sroa.15198.0.copyload = load i8, ptr %i.ac, align 8, !tbaa !733
  %i.di = add nsw i64 %.sroa.0192.0.copyload, 43200000
  %i.dj = sdiv i64 %i.di, 86400000
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = srem i32 %i.dk, 7
  %i.dm = sub nsw i32 3, %i.dl
  %i.dn = mul nsw i32 %i.dm, 86400000
  %i.do = sext i32 %i.dn to i64
  %i.dp = add nsw i64 %.sroa.0192.0.copyload, %i.do ; 2 uses
  %.not30.i = icmp eq i8 %.sroa.15198.0.copyload, 0
  br i1 %.not30.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 2000, ptr %.sroa.7, align 8, !tbaa !2499
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.dq = icmp ugt i64 %i.dp, 464269060799999
  br i1 %i.dq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %.sroa.7, align 8
  br label %computeYMD.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dr = add nuw nsw i64 %i.dp, 43200000
  %i.ds = udiv i64 %i.dr, 86400000
  %i.dt = trunc nuw nsw i64 %i.ds to i32          ; 2 uses
  %i.du = uitofp nneg i32 %i.dt to double
  %i.dv = fadd double %i.du, f0x40DF4B3000000000
  %i.dw = fdiv double %i.dv, f0x40E1D58800000000
  %i.dx = fptosi double %i.dw to i32              ; 2 uses
  %i.dy = add nuw nsw i32 %i.dx, 48
  %.neg33.i = lshr i32 %i.dy, 2
  %i.dz = add nuw nsw i32 %i.dt, 1498
  %i.ea = add nuw i32 %i.dz, %i.dx
  %i.eb = sub i32 %i.ea, %.neg33.i                ; 2 uses
  %i.ec = sitofp i32 %i.eb to double
  %i.ed = fadd double %i.ec, -1.221000e+02
  %i.ee = fdiv double %i.ed, 3.652500e+02
  %i.ef = fptosi double %i.ee to i32              ; 2 uses
  %i.eg = and i32 %i.ef, 32767
  %i.eh = mul nuw nsw i32 %i.eg, 1461
  %i.ei = lshr i32 %i.eh, 2
  %i.ej = sub nsw i32 %i.eb, %i.ei
  %i.ek = sitofp i32 %i.ej to double
  %i.el = fdiv double %i.ek, 3.060010e+01
  %i.em = fptosi double %i.el to i32              ; 2 uses
  %i.en = icmp slt i32 %i.em, 14
  %.v.i = select i1 %i.en, i32 -1, i32 -13
  %i.eo = add nsw i32 %.v.i, %i.em
  %i.ep = icmp sgt i32 %i.eo, 2
  %.v32.i = select i1 %i.ep, i32 -4716, i32 -4715
  %i.eq = add nsw i32 %.v32.i, %i.ef
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.sink35.i.sroa.phi = phi ptr [ %.sroa.7, %bb.ac ], [ %.sroa.13196, %bb.z ]
  %.sink.i = phi i32 [ %i.eq, %bb.ac ], [ 1, %bb.z ]
  store i32 %.sink.i, ptr %.sink35.i.sroa.phi, align 8, !tbaa !570
  br label %computeYMD.exit

computeYMD.exit:                                  ; preds = %bb.ab, %bb.ad
  %i.er = icmp eq i8 %i.cz, 103
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.194 = load i32, ptr %.sroa.7, align 8, !tbaa !2499 ; 2 uses
  br i1 %i.er, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %computeYMD.exit
  %i.es = srem i32 %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.194, 100
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1399, i32 noundef %i.es)
  br label %bb.ag

bb.af:                                            ; preds = %computeYMD.exit
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1403, i32 noundef %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.194)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13196)
  br label %.loopexit

bb.ah:                                            ; preds = %sqlite3_str_append.exit, %sqlite3_str_append.exit
  %i.et = icmp eq i8 %i.cz, 72
  %i.eu = select i1 %i.et, ptr @.str.1399, ptr @.str.1400
  %i.ev = load i32, ptr %.sroa.13.0..sroa_idx.i145, align 4, !tbaa !2503
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull %i.eu, i32 noundef %i.ev)
  br label %.loopexit

bb.ai:                                            ; preds = %sqlite3_str_append.exit, %sqlite3_str_append.exit
  %i.ew = load i32, ptr %.sroa.13.0..sroa_idx.i145, align 4, !tbaa !2503 ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 12
  %i.ey = add nsw i32 %i.ew, -12
  %spec.select = select i1 %i.ex, i32 %i.ey, i32 %i.ew ; 2 uses
  %i.ez = icmp eq i32 %spec.select, 0
  %spec.store.select1 = select i1 %i.ez, i32 12, i32 %spec.select
  %i.fa = icmp eq i8 %i.cz, 73
  %i.fb = select i1 %i.fa, ptr @.str.1399, ptr @.str.1400
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull %i.fb, i32 noundef %spec.store.select1)
  br label %.loopexit

bb.aj:                                            ; preds = %sqlite3_str_append.exit
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !565
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i145, align 4, !tbaa !570
  %.sroa.14.0.copyload.i = load i32, ptr %.sroa.14.0..sroa_idx.i147, align 8, !tbaa !570
  %.sroa.15.0.copyload.i = load i32, ptr %.sroa.15.0..sroa_idx.i149, align 4, !tbaa !570 ; 2 uses
  %.sroa.17.0.copyload.i = load double, ptr %.sroa.17.0..sroa_idx.i151, align 8, !tbaa !782
  %.sroa.21.0.copyload.i = load i8, ptr %.sroa.21.0..sroa_idx.i153, align 1, !tbaa !733
  %.sroa.23.0.copyload.i = load i8, ptr %.sroa.23.0..sroa_idx.i155, align 2, !tbaa !733
  %.sroa.252.0.copyload.i = load i8, ptr %.sroa.252.0..sroa_idx.i157, align 4, !tbaa !733
  %.not40.i.i = icmp eq i8 %.sroa.21.0.copyload.i, 0
  br i1 %.not40.i.i, label %.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.8.0.copyload.i = load i32, ptr %i.ch, align 8, !tbaa !570 ; 2 uses
  %i.fc = add i32 %.sroa.8.0.copyload.i, -10000
  %or.cond.i.i = icmp ult i32 %i.fc, -14713
  br i1 %or.cond.i.i, label %daysAfterJan01.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ak, %bb.aj
  %.03748.i.i = phi i32 [ %.sroa.8.0.copyload.i, %bb.ak ], [ 2000, %bb.aj ]
  %i.fd = and i8 %.sroa.252.0.copyload.i, 1
  %.not41.i.i = icmp eq i8 %i.fd, 0
  br i1 %.not41.i.i, label %bb.al, label %daysAfterJan01.exit

bb.al:                                            ; preds = %.thread.i.i
  %.138.i.i = add nsw i32 %.03748.i.i, -1         ; 2 uses
  %i.fe = trunc nsw i32 %.138.i.i to i16
  %.neg51.lhs.trunc.i.i = add nsw i16 %i.fe, 4800 ; 2 uses
  %.neg5152.i.i = udiv i16 %.neg51.lhs.trunc.i.i, 100
  %.neg51.zext.i.i = zext nneg i16 %.neg5152.i.i to i32
  %i.ff = udiv i16 %.neg51.lhs.trunc.i.i, 400
  %.zext.i.i = zext nneg i16 %i.ff to i32
  %i.fg = mul nsw i32 %.138.i.i, 36525
  %i.fh = add nsw i32 %i.fg, 172251900
  %i.fi = udiv i32 %i.fh, 100
  %i.fj = add nuw nsw i32 %i.fi, 467
  %i.fk = sub nuw nsw i32 %i.fj, %.neg51.zext.i.i
  %i.fl = add nuw nsw i32 %i.fk, %.zext.i.i
  %i.fm = uitofp nneg i32 %i.fl to double
  %i.fn = fadd nnan double %i.fm, -1.524500e+03
  %i.fo = fmul nnan double %i.fn, 8.640000e+07
  %i.fp = fptosi double %i.fo to i64              ; 2 uses
  %.not42.i.i = icmp eq i8 %.sroa.23.0.copyload.i, 0
  br i1 %.not42.i.i, label %daysAfterJan01.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fq = mul nsw i32 %.sroa.13.0.copyload.i, 3600000
  %i.fr = mul nsw i32 %.sroa.14.0.copyload.i, 60000
  %i.fs = add nsw i32 %i.fr, %i.fq
  %i.ft = sext i32 %i.fs to i64
  %i.fu = call double @llvm.fmuladd.f64(double %.sroa.17.0.copyload.i, double 1.000000e+03, double 5.000000e-01)
  %i.fv = fptosi double %i.fu to i64
  %i.fw = add i64 %i.fv, %i.ft
  %i.fx = add i64 %i.fw, %i.fp                    ; 2 uses
  %.not43.i.i = icmp eq i32 %.sroa.15.0.copyload.i, 0
  br i1 %.not43.i.i, label %daysAfterJan01.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fy = mul nsw i32 %.sroa.15.0.copyload.i, 60000
  %i.fz = sext i32 %i.fy to i64
  %i.ga = sub nsw i64 %i.fx, %i.fz
  br label %daysAfterJan01.exit

daysAfterJan01.exit:                              ; preds = %bb.ak, %.thread.i.i, %bb.al, %bb.am, %bb.an
  %.sroa.0.0.i = phi i64 [ %i.fp, %bb.al ], [ %i.fx, %bb.am ], [ %i.ga, %bb.an ], [ 0, %.thread.i.i ], [ 0, %bb.ak ]
  %i.gb = add i64 %.sroa.0.0.copyload.i, 43200000
  %i.gc = sub i64 %i.gb, %.sroa.0.0.i
  %i.gd = sdiv i64 %i.gc, 86400000
  %i.ge = trunc i64 %i.gd to i32
  %i.gf = add nsw i32 %i.ge, 1
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1404, i32 noundef %i.gf)
  br label %.loopexit

bb.ao:                                            ; preds = %sqlite3_str_append.exit
  %i.gg = load i64, ptr %3, align 8, !tbaa !2497
  %i.gh = sitofp i64 %i.gg to double
  %i.gi = fdiv double %i.gh, 8.640000e+07
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.142, double noundef %i.gi)
  br label %.loopexit

bb.ap:                                            ; preds = %sqlite3_str_append.exit
  %i.gj = load i32, ptr %i.ci, align 4, !tbaa !2500
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1399, i32 noundef %i.gj)
  br label %.loopexit

bb.aq:                                            ; preds = %sqlite3_str_append.exit
  %i.gk = load i32, ptr %.sroa.14.0..sroa_idx.i147, align 8, !tbaa !2504
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1399, i32 noundef %i.gk)
  br label %.loopexit

bb.ar:                                            ; preds = %sqlite3_str_append.exit, %sqlite3_str_append.exit
  %i.gl = load i32, ptr %.sroa.13.0..sroa_idx.i145, align 4, !tbaa !2503
  %i.gm = icmp sgt i32 %i.gl, 11
  %i.gn = icmp eq i8 %i.cz, 112                   ; 4 uses
  %i.go = load i32, ptr %i.z, align 8, !tbaa !753 ; 3 uses
  %i.gp = add i32 %i.go, 2                        ; 3 uses
  %i.gq = load i32, ptr %i.x, align 8, !tbaa !754
  %.not.i69 = icmp ult i32 %i.gp, %i.gq           ; 2 uses
  br i1 %i.gm, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  br i1 %.not.i69, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %5 = select i1 %i.gn, ptr @.str.1405, ptr @.str.1406
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %4, ptr noundef nonnull readonly %5, i32 noundef 2), !inline_history !755
  br label %.loopexit

bb.au:                                            ; preds = %bb.as
  store i32 %i.gp, ptr %i.z, align 8, !tbaa !753
  %i.gr = load ptr, ptr %i.w, align 8, !tbaa !756
  %i.gs = zext i32 %i.go to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gs
  %6 = select i1 %i.gn, i16 19792, i16 28016
  store i16 %6, ptr %i.gt, align 1
  br label %.loopexit

bb.av:                                            ; preds = %bb.ar
  br i1 %.not.i69, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %7 = select i1 %i.gn, ptr @.str.1407, ptr @.str.1408
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %4, ptr noundef nonnull readonly %7, i32 noundef 2), !inline_history !755
  br label %.loopexit

bb.ax:                                            ; preds = %bb.av
  store i32 %i.gp, ptr %i.z, align 8, !tbaa !753
  %i.gu = load ptr, ptr %i.w, align 8, !tbaa !756
  %i.gv = zext i32 %i.go to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gv
  %8 = select i1 %i.gn, i16 19777, i16 28001
  store i16 %8, ptr %i.gw, align 1
  br label %.loopexit

bb.ay:                                            ; preds = %sqlite3_str_append.exit
  %i.gx = load i32, ptr %.sroa.13.0..sroa_idx.i145, align 4, !tbaa !2503
  %i.gy = load i32, ptr %.sroa.14.0..sroa_idx.i147, align 8, !tbaa !2504
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1409, i32 noundef %i.gx, i32 noundef %i.gy)
  br label %.loopexit

bb.az:                                            ; preds = %sqlite3_str_append.exit
  %i.gz = load i8, ptr %.sroa.252.0..sroa_idx.i157, align 4
  %i.ha = and i8 %i.gz, 4
  %.not62 = icmp eq i8 %i.ha, 0
  %i.hb = load i64, ptr %3, align 8, !tbaa !2497  ; 2 uses
  br i1 %.not62, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hc = add nsw i64 %i.hb, -210866760000000
  %i.hd = sitofp i64 %i.hc to double
  %i.he = fdiv double %i.hd, 1.000000e+03
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1410, double noundef %i.he)
  br label %.loopexit

bb.bb:                                            ; preds = %bb.az
  %i.hf = sdiv i64 %i.hb, 1000
  %i.hg = add nsw i64 %i.hf, -210866760000
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.140, i64 noundef %i.hg)
  br label %.loopexit

bb.bc:                                            ; preds = %sqlite3_str_append.exit
  %i.hh = load double, ptr %.sroa.17.0..sroa_idx.i151, align 8, !tbaa !2505
  %i.hi = fptosi double %i.hh to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1399, i32 noundef %i.hi)
  br label %.loopexit

bb.bd:                                            ; preds = %sqlite3_str_append.exit
  %i.hj = load i32, ptr %.sroa.13.0..sroa_idx.i145, align 4, !tbaa !2503
  %i.hk = load i32, ptr %.sroa.14.0..sroa_idx.i147, align 8, !tbaa !2504
  %i.hl = load double, ptr %.sroa.17.0..sroa_idx.i151, align 8, !tbaa !2505
  %i.hm = fptosi double %i.hl to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1411, i32 noundef %i.hj, i32 noundef %i.hk, i32 noundef %i.hm)
  br label %.loopexit

bb.be:                                            ; preds = %sqlite3_str_append.exit, %sqlite3_str_append.exit
  %.val66 = load i64, ptr %3, align 8, !tbaa !2497
  %i.hn = add nsw i64 %.val66, 129600000
  %i.ho = sdiv i64 %i.hn, 86400000
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = srem i32 %i.hp, 7                       ; 2 uses
  %i.hr = trunc nsw i32 %i.hq to i8
  %i.hs = add nsw i8 %i.hr, 48
  %i.ht = icmp eq i32 %i.hq, 0
  %i.hu = icmp eq i8 %i.cz, 117
  %or.cond = and i1 %i.hu, %i.ht
  %spec.store.select4 = select i1 %or.cond, i8 55, i8 %i.hs
  %i.hv = load i32, ptr %i.z, align 8, !tbaa !753
  %i.hw = zext i32 %i.hv to i64
  %i.hx = add nuw nsw i64 %i.hw, 1
  %i.hy = load i32, ptr %i.x, align 8, !tbaa !754
  %i.hz = zext i32 %i.hy to i64
  %.not.i73 = icmp samesign ult i64 %i.hx, %i.hz
  br i1 %.not.i73, label %.lr.ph.i.preheader, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ia = call fastcc i32 @sqlite3StrAccumEnlarge(ptr noundef nonnull %4, i64 noundef 1), !inline_history !788 ; 2 uses
  %i.ib = icmp slt i32 %i.ia, 1
  br i1 %i.ib, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.be, %bb.bf
  %.19.i.ph = phi i32 [ 1, %bb.be ], [ %i.ia, %bb.bf ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.19.i = phi i32 [ %i.ic, %.lr.ph.i ], [ %.19.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ic = add nsw i32 %.19.i, -1
  %i.id = load ptr, ptr %i.w, align 8, !tbaa !756
  %i.ie = load i32, ptr %i.z, align 8, !tbaa !753 ; 2 uses
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr %i.z, align 8, !tbaa !753
  %i.ig = zext i32 %i.ie to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ig
  store i8 %spec.store.select4, ptr %i.ih, align 1, !tbaa !733
  %i.ii = icmp samesign ugt i32 %.19.i, 1
  br i1 %i.ii, label %.lr.ph.i, label %.loopexit, !llvm.loop !14

bb.bg:                                            ; preds = %sqlite3_str_append.exit
  %.sroa.0.0.copyload.i74 = load i64, ptr %3, align 8, !tbaa !565 ; 2 uses
  %.sroa.13.0.copyload.i76 = load i32, ptr %.sroa.13.0..sroa_idx.i145, align 4, !tbaa !570
  %.sroa.14.0.copyload.i78 = load i32, ptr %.sroa.14.0..sroa_idx.i147, align 8, !tbaa !570
  %.sroa.15.0.copyload.i80 = load i32, ptr %.sroa.15.0..sroa_idx.i149, align 4, !tbaa !570 ; 2 uses
  %.sroa.17.0.copyload.i82 = load double, ptr %.sroa.17.0..sroa_idx.i151, align 8, !tbaa !782
  %.sroa.21.0.copyload.i84 = load i8, ptr %.sroa.21.0..sroa_idx.i153, align 1, !tbaa !733
  %.sroa.23.0.copyload.i86 = load i8, ptr %.sroa.23.0..sroa_idx.i155, align 2, !tbaa !733
  %.sroa.252.0.copyload.i88 = load i8, ptr %.sroa.252.0..sroa_idx.i157, align 4, !tbaa !733
  %.not40.i.i89 = icmp eq i8 %.sroa.21.0.copyload.i84, 0
  br i1 %.not40.i.i89, label %.thread.i.i93, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.sroa.8.0.copyload.i91 = load i32, ptr %i.ch, align 8, !tbaa !570 ; 2 uses
  %i.ij = add i32 %.sroa.8.0.copyload.i91, -10000
  %or.cond.i.i92 = icmp ult i32 %i.ij, -14713
  br i1 %or.cond.i.i92, label %daysAfterJan01.exit104, label %.thread.i.i93

.thread.i.i93:                                    ; preds = %bb.bh, %bb.bg
  %.03748.i.i94 = phi i32 [ %.sroa.8.0.copyload.i91, %bb.bh ], [ 2000, %bb.bg ]
  %i.ik = and i8 %.sroa.252.0.copyload.i88, 1
  %.not41.i.i95 = icmp eq i8 %i.ik, 0
  br i1 %.not41.i.i95, label %bb.bi, label %daysAfterJan01.exit104

bb.bi:                                            ; preds = %.thread.i.i93
  %.138.i.i97 = add nsw i32 %.03748.i.i94, -1     ; 2 uses
  %i.il = trunc nsw i32 %.138.i.i97 to i16
  %.neg51.lhs.trunc.i.i98 = add nsw i16 %i.il, 4800 ; 2 uses
  %.neg5152.i.i99 = udiv i16 %.neg51.lhs.trunc.i.i98, 100
  %.neg51.zext.i.i100 = zext nneg i16 %.neg5152.i.i99 to i32
  %i.im = udiv i16 %.neg51.lhs.trunc.i.i98, 400
  %.zext.i.i101 = zext nneg i16 %i.im to i32
  %i.in = mul nsw i32 %.138.i.i97, 36525
  %i.io = add nsw i32 %i.in, 172251900
  %i.ip = udiv i32 %i.io, 100
  %i.iq = add nuw nsw i32 %i.ip, 467
  %i.ir = sub nuw nsw i32 %i.iq, %.neg51.zext.i.i100
  %i.is = add nuw nsw i32 %i.ir, %.zext.i.i101
  %i.it = uitofp nneg i32 %i.is to double
  %i.iu = fadd nnan double %i.it, -1.524500e+03
  %i.iv = fmul nnan double %i.iu, 8.640000e+07
  %i.iw = fptosi double %i.iv to i64              ; 2 uses
  %.not42.i.i102 = icmp eq i8 %.sroa.23.0.copyload.i86, 0
  br i1 %.not42.i.i102, label %daysAfterJan01.exit104, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ix = mul nsw i32 %.sroa.13.0.copyload.i76, 3600000
  %i.iy = mul nsw i32 %.sroa.14.0.copyload.i78, 60000
  %i.iz = add nsw i32 %i.iy, %i.ix
  %i.ja = sext i32 %i.iz to i64
  %i.jb = call double @llvm.fmuladd.f64(double %.sroa.17.0.copyload.i82, double 1.000000e+03, double 5.000000e-01)
  %i.jc = fptosi double %i.jb to i64
  %i.jd = add i64 %i.jc, %i.ja
  %i.je = add i64 %i.jd, %i.iw                    ; 2 uses
  %.not43.i.i103 = icmp eq i32 %.sroa.15.0.copyload.i80, 0
  br i1 %.not43.i.i103, label %daysAfterJan01.exit104, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jf = mul nsw i32 %.sroa.15.0.copyload.i80, 60000
  %i.jg = sext i32 %i.jf to i64
  %i.jh = sub nsw i64 %i.je, %i.jg
  br label %daysAfterJan01.exit104

daysAfterJan01.exit104:                           ; preds = %bb.bh, %.thread.i.i93, %bb.bi, %bb.bj, %bb.bk
  %.sroa.0.0.i96 = phi i64 [ %i.iw, %bb.bi ], [ %i.je, %bb.bj ], [ %i.jh, %bb.bk ], [ 0, %.thread.i.i93 ], [ 0, %bb.bh ]
  %i.ji = add i64 %.sroa.0.0.copyload.i74, 43200000
  %i.jj = sub i64 %i.ji, %.sroa.0.0.i96
  %i.jk = sdiv i64 %i.jj, 86400000
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = add nsw i64 %.sroa.0.0.copyload.i74, 129600000
  %i.jn = sdiv i64 %i.jm, 86400000
  %i.jo = trunc i64 %i.jn to i32
  %i.jp = srem i32 %i.jo, 7
  %reass.sub249 = sub i32 %i.jl, %i.jp
  %i.jq = add i32 %reass.sub249, 7
  %i.jr = sdiv i32 %i.jq, 7
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1399, i32 noundef %i.jr)
  br label %.loopexit

bb.bl:                                            ; preds = %sqlite3_str_append.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %.sroa.0.0.copyload = load i64, ptr %3, align 8, !tbaa !565 ; 2 uses
  %.sroa.8.0.copyload = load i32, ptr %i.ch, align 8, !tbaa !570
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8, align 8, !tbaa !570
  %.sroa.15.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx.i145, align 4, !tbaa !570
  %.sroa.16.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx.i147, align 8, !tbaa !570
  %.sroa.17.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx.i149, align 4, !tbaa !570
  %.sroa.18.0.copyload = load double, ptr %.sroa.17.0..sroa_idx.i151, align 8, !tbaa !782
  %.sroa.19.0.copyload = load i8, ptr %i.ac, align 8, !tbaa !733
  %.sroa.24.0.copyload = load i8, ptr %.sroa.23.0..sroa_idx.i155, align 2, !tbaa !733
  %.sroa.25187.0.copyload = load i8, ptr %.sroa.252.0..sroa_idx.i157, align 4, !tbaa !733
  %i.js = add nsw i64 %.sroa.0.0.copyload, 43200000
  %i.jt = sdiv i64 %i.js, 86400000
  %i.ju = trunc i64 %i.jt to i32
  %i.jv = srem i32 %i.ju, 7
  %i.jw = sub nsw i32 3, %i.jv
  %i.jx = mul nsw i32 %i.jw, 86400000
  %i.jy = sext i32 %i.jx to i64
  %i.jz = add nsw i64 %.sroa.0.0.copyload, %i.jy  ; 4 uses
  %.not30.i106 = icmp eq i8 %.sroa.19.0.copyload, 0
  br i1 %.not30.i106, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 2000, ptr %.sroa.8, align 8, !tbaa !2499
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  %i.ka = icmp ugt i64 %i.jz, 464269060799999
  br i1 %i.ka, label %.thread.i.i132.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kb = add nuw nsw i64 %i.jz, 43200000
  %i.kc = udiv i64 %i.kb, 86400000
  %i.kd = trunc nuw nsw i64 %i.kc to i32          ; 2 uses
end_hunk_0
