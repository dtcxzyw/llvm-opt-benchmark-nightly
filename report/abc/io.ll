Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/io?download=true
inline.NumInlined: 210
inline.NumDeleted: 59
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Abc_NtkReadCexFile:bb.a
  %i.km = phi i32 [ %i.jx, %._crit_edge408 ], [ %i.gj, %bb.bn ], [ %i.an, %.thread340 ], [ %i.an, %bb.x ], [ %i.gj, %bb.bo ], [ %i.ds, %Vec_IntPush.exit282 ], [ %spec.select.sink.i303400, %._crit_edge398 ], [ %i.gj, %bb.bd ]
  %i.kn = phi ptr [ %i.jy, %._crit_edge408 ], [ %i.gk, %bb.bn ], [ %i.ao, %.thread340 ], [ %i.ao, %bb.x ], [ %i.gk, %bb.bo ], [ %i.dr, %Vec_IntPush.exit282 ], [ %storemerge352404, %._crit_edge398 ], [ %i.gk, %bb.bd ]
  %i.ko = phi i32 [ %i.jz, %._crit_edge408 ], [ %i.gl, %bb.bn ], [ %i.ap, %.thread340 ], [ %i.ap, %bb.x ], [ %i.gl, %bb.bo ], [ %i.ds, %Vec_IntPush.exit282 ], [ %spec.select.sink.i303400, %._crit_edge398 ], [ %i.gl, %bb.bd ]
  %i.kp = phi ptr [ %i.ka, %._crit_edge408 ], [ %i.gm, %bb.bn ], [ %i.aq, %.thread340 ], [ %i.aq, %bb.x ], [ %i.gm, %bb.bo ], [ %i.dr, %Vec_IntPush.exit282 ], [ %storemerge352404, %._crit_edge398 ], [ %i.gm, %bb.bd ]
  %i.kq = phi ptr [ %i.kb, %._crit_edge408 ], [ %i.gn, %bb.bn ], [ %i.ar, %.thread340 ], [ %i.ar, %bb.x ], [ %i.gn, %bb.bo ], [ %i.dr, %Vec_IntPush.exit282 ], [ %storemerge352404, %._crit_edge398 ], [ %i.gn, %bb.bd ]
  %i.kr = phi i32 [ %i.kc, %._crit_edge408 ], [ %i.go, %bb.bn ], [ %i.as, %.thread340 ], [ %i.as, %bb.x ], [ %i.go, %bb.bo ], [ %i.ds, %Vec_IntPush.exit282 ], [ %spec.select.sink.i303400, %._crit_edge398 ], [ %i.go, %bb.bd ]
  %i.ks = phi i32 [ %i.kd, %._crit_edge408 ], [ %.val261, %bb.bn ], [ %i.at, %.thread340 ], [ %i.at, %bb.x ], [ %.0.lcssa, %bb.bo ], [ %i.dt, %Vec_IntPush.exit282 ], [ %i.hh, %._crit_edge398 ], [ %.val261, %bb.bd ]
  %.4216 = phi i32 [ %.0212.ph411, %._crit_edge408 ], [ %.val261, %bb.bn ], [ %.0212.ph411, %.thread340 ], [ %.0212.ph411, %bb.x ], [ %.0.lcssa, %bb.bo ], [ %i.dt, %Vec_IntPush.exit282 ], [ %i.hh, %._crit_edge398 ], [ %.val261, %bb.bd ] ; 2 uses
  %.1211 = phi i32 [ %i.ke, %._crit_edge408 ], [ %.0210.ph412, %bb.bn ], [ %.0210.ph412, %.thread340 ], [ %.0210.ph412, %bb.x ], [ %.0210.ph412, %bb.bo ], [ %.0210.ph412, %Vec_IntPush.exit282 ], [ %.0210.ph412, %._crit_edge398 ], [ %.0210.ph412, %bb.bd ] ; 2 uses
  %.7 = phi i32 [ %.5207.lcssa, %._crit_edge408 ], [ %.3205.lcssa, %bb.bn ], [ %.0202.ph413, %.thread340 ], [ %.0202.ph413, %bb.x ], [ %.3205.lcssa, %bb.bo ], [ 1, %Vec_IntPush.exit282 ], [ %.3205.lcssa, %._crit_edge398 ], [ %.3205.lcssa, %bb.bd ] ; 2 uses
  %.5201 = phi i32 [ %.2198.ph527, %._crit_edge408 ], [ 3, %bb.bn ], [ 2, %.thread340 ], [ 1, %bb.x ], [ 3, %bb.bo ], [ 3, %Vec_IntPush.exit282 ], [ 3, %._crit_edge398 ], [ 3, %bb.bd ]
  %.2193 = phi i32 [ %.0191.ph415, %._crit_edge408 ], [ %.1192332.ph526535, %bb.bn ], [ %i.dx, %.thread340 ], [ %.0191.ph415, %bb.x ], [ %.1192332.ph526535, %bb.bo ], [ %.0191.ph415, %Vec_IntPush.exit282 ], [ %.1192332.ph526535, %._crit_edge398 ], [ %.1192332.ph526535, %bb.bd ] ; 2 uses
  %.5 = phi i32 [ %.2188.ph528, %._crit_edge408 ], [ %.2188.ph529533, %bb.bn ], [ %.0186.ph416, %.thread340 ], [ %i.cz, %bb.x ], [ %.2188.ph529533, %bb.bo ], [ %.0186.ph416, %Vec_IntPush.exit282 ], [ %.2188.ph529533, %._crit_edge398 ], [ %.2188.ph529533, %bb.bd ] ; 2 uses
  %i.kt = tail call ptr @fgets(ptr noundef nonnull %i.ad, i32 noundef 1000000, ptr noundef nonnull %i.a)
  %.not379 = icmp eq ptr %i.kt, null
  br i1 %.not379, label %.loopexit, label %.lr.ph380, !llvm.loop !167

.loopexit:                                        ; preds = %bb.s, %.thread346, %bb.u, %bb.t, %bb.f, %.critedge
  %i.ku = phi ptr [ %i.f, %.critedge ], [ %i.ag, %bb.f ], [ %i.ag, %bb.u ], [ %i.ag, %bb.s ], [ %i.kf, %.thread346 ], [ %i.bq, %bb.t ] ; 11 uses
  %.0212.ph376 = phi i32 [ -1, %.critedge ], [ %.0212.ph411, %bb.f ], [ %.0212.ph411, %bb.u ], [ %.0212.ph411, %bb.s ], [ %.4216, %.thread346 ], [ %.0212.ph411, %bb.t ] ; 2 uses
  %.0210.ph373 = phi i32 [ -1, %.critedge ], [ %.0210.ph412, %bb.f ], [ %.0210.ph412, %bb.u ], [ %.0210.ph412, %bb.s ], [ %.1211, %.thread346 ], [ %.0210.ph412, %bb.t ] ; 4 uses
  %.0202.ph370 = phi i32 [ 0, %.critedge ], [ %.0202.ph413, %bb.f ], [ %.0202.ph413, %bb.u ], [ %.0202.ph413, %bb.s ], [ %.7, %.thread346 ], [ %.0202.ph413, %bb.t ]
  %.3194 = phi i32 [ 0, %.critedge ], [ %.0191.ph415, %bb.f ], [ 0, %bb.u ], [ %.0191.ph415, %bb.s ], [ %.2193, %.thread346 ], [ %.0191.ph415, %bb.t ] ; 2 uses
  %.6 = phi i32 [ 0, %.critedge ], [ %.0186.ph416, %bb.f ], [ 1, %bb.u ], [ %.0186.ph416, %bb.s ], [ %.5, %.thread346 ], [ 1, %bb.t ] ; 3 uses
  %i.kv = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.kw = icmp eq i32 %.0202.ph370, 0
  %i.kx = icmp ne i32 %6, 0                       ; 3 uses
  %or.cond15 = or i1 %i.kx, %i.kw
  br i1 %or.cond15, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.loopexit
  %puts241 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.loopexit
  %i.ky = icmp slt i32 %.0212.ph376, 0
  br i1 %i.ky, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.kz = icmp eq i32 %.6, 0
  br i1 %i.kz, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.la = load i32, ptr %5, align 4, !tbaa !11
  %i.lb = icmp eq i32 %i.la, 0
  %spec.select631 = select i1 %i.lb, ptr @str.22, ptr @str.21
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %str.21.sink = phi ptr [ @str.22, %bb.cl ], [ %spec.select631, %bb.cm ]
  %puts255 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.21.sink) ; 0 uses
  %.not.i = icmp eq ptr %i.ku, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @free(ptr noundef nonnull %i.ku) #22
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.cn, %bb.co
  tail call void @free(ptr noundef nonnull %i.d) #22
  br label %bb.ds

bb.cp:                                            ; preds = %bb.ck
  %.not242 = icmp eq i32 %.0212.ph376, %.0.lcssa
  br i1 %.not242, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %puts254 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  %.not.i323 = icmp eq ptr %i.ku, null
  br i1 %.not.i323, label %Vec_IntFree.exit324, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @free(ptr noundef nonnull %i.ku) #22
  br label %Vec_IntFree.exit324

Vec_IntFree.exit324:                              ; preds = %bb.cq, %bb.cr
  tail call void @free(ptr noundef nonnull %i.d) #22
  br label %bb.ds

bb.cs:                                            ; preds = %bb.cp
  %.val259 = load i32, ptr %i.e, align 4, !tbaa !83 ; 2 uses
  %i.lc = icmp eq i32 %.val259, %.0.lcssa
  br i1 %i.lc, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %puts253 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  %.not.i325 = icmp eq ptr %i.ku, null
  br i1 %.not.i325, label %Vec_IntFree.exit326, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call void @free(ptr noundef nonnull %i.ku) #22
  br label %Vec_IntFree.exit326

Vec_IntFree.exit326:                              ; preds = %bb.ct, %bb.cu
  tail call void @free(ptr noundef nonnull %i.d) #22
  br label %bb.ds

bb.cv:                                            ; preds = %bb.cs
  %i.ld = sub nsw i32 %.val259, %.0.lcssa         ; 2 uses
  %i.le = add nsw i32 %.0210.ph373, 1             ; 4 uses
  %i.lf = srem i32 %i.ld, %i.le
  %i.lg = sdiv i32 %i.ld, %i.le                   ; 3 uses
  %.not243 = icmp eq i32 %i.lf, 0
  br i1 %.not243, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %puts252 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  %.not.i327 = icmp eq ptr %i.ku, null
  br i1 %.not.i327, label %Vec_IntFree.exit328, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @free(ptr noundef nonnull %i.ku) #22
  br label %Vec_IntFree.exit328

Vec_IntFree.exit328:                              ; preds = %bb.cw, %bb.cx
  tail call void @free(ptr noundef nonnull %i.d) #22
  br label %bb.ds

bb.cy:                                            ; preds = %bb.cv
  %i.lh = getelementptr i8, ptr %1, i64 40
  %.val270 = load ptr, ptr %i.lh, align 8, !tbaa !34
  %i.li = getelementptr i8, ptr %.val270, i64 4
  %.val270.val = load i32, ptr %i.li, align 4, !tbaa !37
  %.not244 = icmp eq i32 %i.lg, %.val270.val
  br i1 %.not244, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %puts251 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  tail call fastcc void @Vec_IntFree(ptr noundef nonnull %i.d)
  br label %bb.ds

bb.da:                                            ; preds = %bb.cy
  %i.lj = getelementptr i8, ptr %1, i64 48
  %.val269 = load ptr, ptr %i.lj, align 8, !tbaa !81
  %i.lk = getelementptr i8, ptr %.val269, i64 4
  %.val269.val = load i32, ptr %i.lk, align 4, !tbaa !37
  %.not245 = icmp slt i32 %.3194, %.val269.val
  br i1 %.not245, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %puts246 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.4195 = phi i32 [ 0, %bb.db ], [ %.3194, %bb.da ] ; 2 uses
  %i.ll = load ptr, ptr %i.h, align 8, !tbaa !91  ; 3 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 4
  %.val267422 = load i32, ptr %i.lm, align 4, !tbaa !37
  %i.ln = icmp sgt i32 %.val267422, 0
  br i1 %i.ln, label %.lr.ph425, label %.critedge17

.lr.ph425:                                        ; preds = %bb.dc
  br i1 %i.kx, label %.lr.ph425.split, label %.lr.ph425.split.us

.lr.ph425.split.us:                               ; preds = %.lr.ph425, %bb.dd
  %indvars.iv456 = phi i64 [ %indvars.iv.next457, %bb.dd ], [ 0, %.lr.ph425 ] ; 3 uses
  %i.lo = phi ptr [ %i.ly, %bb.dd ], [ %i.ll, %.lr.ph425 ]
  %i.lp = getelementptr i8, ptr %i.lo, i64 8
  %.val271.val.us = load ptr, ptr %i.lp, align 8, !tbaa !55
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.val271.val.us, i64 %indvars.iv456
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !56 ; 2 uses
  %i.ls = getelementptr i8, ptr %i.lr, i64 20
  %.val273.us = load i32, ptr %i.ls, align 4
  %i.lt = and i32 %.val273.us, 15
  %.not358.us = icmp eq i32 %i.lt, 8
  br i1 %.not358.us, label %.sink.split620, label %bb.dd

.sink.split620:                                   ; preds = %.lr.ph425.split.us
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv456
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !11
  %i.lw = icmp eq i32 %i.lv, 1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 64
  %. = select i1 %i.lw, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 1 to ptr)
  store ptr %., ptr %i.lx, align 8, !tbaa !16
  br label %bb.dd

bb.dd:                                            ; preds = %.sink.split620, %.lr.ph425.split.us
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %i.ly = load ptr, ptr %i.h, align 8, !tbaa !91  ; 2 uses
  %i.lz = getelementptr i8, ptr %i.ly, i64 4
  %.val267.us = load i32, ptr %i.lz, align 4, !tbaa !37
  %i.ma = sext i32 %.val267.us to i64
  %i.mb = icmp slt i64 %indvars.iv.next457, %i.ma
  br i1 %i.mb, label %.lr.ph425.split.us, label %.critedge17, !llvm.loop !171

.lr.ph425.split:                                  ; preds = %.lr.ph425, %bb.df
  %indvars.iv459 = phi i64 [ %indvars.iv.next460, %bb.df ], [ 0, %.lr.ph425 ] ; 3 uses
  %i.mc = phi ptr [ %i.ml, %bb.df ], [ %i.ll, %.lr.ph425 ]
  %i.md = getelementptr i8, ptr %i.mc, i64 8
  %.val271.val = load ptr, ptr %i.md, align 8, !tbaa !55
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %.val271.val, i64 %indvars.iv459
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !56 ; 2 uses
  %i.mg = getelementptr i8, ptr %i.mf, i64 20
  %.val273 = load i32, ptr %i.mg, align 4
  %i.mh = and i32 %.val273, 15
  %.not358 = icmp eq i32 %i.mh, 8
  br i1 %.not358, label %bb.de, label %bb.df

bb.de:                                            ; preds = %.lr.ph425.split
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv459
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !11 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 64
  %switch.selectcmp = icmp eq i32 %i.mj, 2
  %switch.select = select i1 %switch.selectcmp, ptr null, ptr inttoptr (i64 1 to ptr)
  %switch.selectcmp631 = icmp eq i32 %i.mj, 1
  %switch.select632 = select i1 %switch.selectcmp631, ptr inttoptr (i64 2 to ptr), ptr %switch.select
  store ptr %switch.select632, ptr %i.mk, align 8, !tbaa !16
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.lr.ph425.split
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 2 uses
  %i.ml = load ptr, ptr %i.h, align 8, !tbaa !91  ; 2 uses
  %i.mm = getelementptr i8, ptr %i.ml, i64 4
  %.val267 = load i32, ptr %i.mm, align 4, !tbaa !37
  %i.mn = sext i32 %.val267 to i64
  %i.mo = icmp slt i64 %indvars.iv.next460, %i.mn
  br i1 %i.mo, label %.lr.ph425.split, label %.critedge17, !llvm.loop !171

.critedge17:                                      ; preds = %bb.dd, %bb.df, %bb.dc
  %i.mp = tail call ptr @Abc_CexAlloc(i32 noundef %.0.lcssa, i32 noundef %i.lg, i32 noundef %i.le) #22 ; 6 uses
  %i.mq = tail call ptr @Abc_CexAlloc(i32 noundef %.0.lcssa, i32 noundef %i.lg, i32 noundef %i.le) #22 ; 5 uses
  store i32 %.4195, ptr %i.mp, align 4, !tbaa !52
  store i32 %.4195, ptr %i.mq, align 4, !tbaa !52
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store i32 %.0210.ph373, ptr %i.mr, align 4, !tbaa !92
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  store i32 %.0210.ph373, ptr %i.ms, align 4, !tbaa !92
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !173
  %i.mv = icmp sgt i32 %i.mu, 0
  br i1 %i.mv, label %.lr.ph427, label %._crit_edge428

.lr.ph427:                                        ; preds = %.critedge17
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mq, i64 20
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mp, i64 20
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph427, %bb.dk
  %indvars.iv462 = phi i64 [ 0, %.lr.ph427 ], [ %indvars.iv.next463, %bb.dk ] ; 6 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv462
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !11 ; 2 uses
  %i.na = icmp eq i32 %i.mz, 1
  br i1 %i.na, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.nb = trunc nuw nsw i64 %indvars.iv462 to i32
  %i.nc = and i32 %i.nb, 31
  %i.nd = shl nuw i32 1, %i.nc                    ; 2 uses
  %i.ne = lshr i64 %indvars.iv462, 5
  %i.nf = and i64 %i.ne, 134217727                ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.nf ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !11
  %i.ni = or i32 %i.nh, %i.nd
  store i32 %i.ni, ptr %i.ng, align 4, !tbaa !11
  br label %.sink.split624

bb.di:                                            ; preds = %bb.dg
  %i.nj = icmp eq i32 %i.mz, 2
  %or.cond21 = and i1 %i.kx, %i.nj
  br i1 %or.cond21, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.nk = trunc nuw nsw i64 %indvars.iv462 to i32
  %i.nl = and i32 %i.nk, 31
  %i.nm = shl nuw i32 1, %i.nl
  %i.nn = lshr i64 %indvars.iv462, 5
  %i.no = and i64 %i.nn, 134217727
  br label %.sink.split624

.sink.split624:                                   ; preds = %bb.dj, %bb.dh
  %.sink630 = phi i64 [ %i.nf, %bb.dh ], [ %i.no, %bb.dj ]
  %.sink628 = phi i32 [ %i.nd, %bb.dh ], [ %i.nm, %bb.dj ]
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %.sink630 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !11
  %i.nr = or i32 %i.nq, %.sink628
  store i32 %i.nr, ptr %i.np, align 4, !tbaa !11
  br label %bb.dk

bb.dk:                                            ; preds = %.sink.split624, %bb.di
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %i.ns = load i32, ptr %i.mt, align 4, !tbaa !173
  %i.nt = sext i32 %i.ns to i64
  %i.nu = icmp slt i64 %indvars.iv.next463, %i.nt
  br i1 %i.nu, label %bb.dg, label %._crit_edge428, !llvm.loop !172

._crit_edge428:                                   ; preds = %bb.dk, %.critedge17
  tail call fastcc void @Vec_IntFree(ptr noundef nonnull %i.d)
  tail call void @Abc_CexFreeP(ptr noundef %2) #22
  %.not247 = icmp eq ptr %2, null
  br i1 %.not247, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %._crit_edge428
  store ptr %i.mp, ptr %2, align 8, !tbaa !46
  br label %bb.dn

bb.dm:                                            ; preds = %._crit_edge428
  tail call void @Abc_CexFree(ptr noundef nonnull %i.mp) #22
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  tail call void @Abc_CexFreeP(ptr noundef %3) #22
  %.not248 = icmp eq ptr %3, null
  br i1 %.not248, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store ptr %i.mq, ptr %3, align 8, !tbaa !46
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  tail call void @Abc_CexFree(ptr noundef nonnull %i.mq) #22
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.not249 = icmp eq ptr %4, null
  br i1 %.not249, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  store i32 %.0210.ph373, ptr %4, align 4, !tbaa !11
  br label %bb.ds

bb.ds:                                            ; preds = %bb.ai, %bb.cz, %bb.dr, %bb.dq, %Vec_IntFree.exit328, %Vec_IntFree.exit326, %Vec_IntFree.exit324, %Vec_IntFree.exit, %bb.b
  %.6224 = phi i32 [ -1, %bb.b ], [ -1, %bb.ai ], [ -1, %Vec_IntFree.exit ], [ -1, %Vec_IntFree.exit324 ], [ -1, %Vec_IntFree.exit326 ], [ -1, %Vec_IntFree.exit328 ], [ -1, %bb.cz ], [ %.6, %bb.dr ], [ %.6, %bb.dq ]
  ret i32 %.6224
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Vec_IntAlloc(i32 noundef range(i32 0, 101) %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 4 uses
  %i.b = add nsw i32 %0, -1
  %or.cond = icmp ult i32 %i.b, 15
  %spec.store.select = select i1 %or.cond, i32 16, i32 %0 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !83
  store i32 %spec.store.select, ptr %i.a, align 8, !tbaa !90
  %.not = icmp eq i32 %spec.store.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i32 %spec.store.select, 2
  %i.e = zext nneg i32 %i.d to i64
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !53
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntFree(ptr noundef captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %0) #22
  ret void
}

declare ptr @Abc_CexAlloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Abc_CexFreeP(ptr noundef) local_unnamed_addr #1

declare void @Abc_CexFree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Abc_NtkCheckSpecialPi(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !34 ; 2 uses
  %i.b = getelementptr i8, ptr %.val8, i64 4
  %.val.val9 = load i32, ptr %i.b, align 4, !tbaa !37
  %i.c = icmp sgt i32 %.val.val9, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
