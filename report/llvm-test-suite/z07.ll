inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0_@InsertObject:bb.a
  %i.hn = load i16, ptr %i.hm, align 4
  %i.ho = and i16 %i.hn, 127
  %i.hp = or disjoint i16 %i.ho, 9728
  store i16 %i.hp, ptr %i.hm, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 46
  store i16 0, ptr %i.hq, align 2, !tbaa !8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 40 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 42
  store i8 0, ptr %i.hs, align 2, !tbaa !8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 41
  store i8 0, ptr %i.ht, align 1, !tbaa !8
  %i.hu = load i32, ptr %i.hr, align 8
  %i.hv = and i32 %i.hu, -1610612737
  %i.hw = or disjoint i32 %i.hv, 536870912
  store i32 %i.hw, ptr %i.hr, align 8
  %i.hx = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.hy = zext i8 %i.hx to i32                    ; 2 uses
  store i32 %i.hy, ptr @zz_size, align 4, !tbaa !4
  %i.hz = zext i8 %i.hx to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.hz ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !17 ; 4 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.id = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ie = tail call ptr @GetMemory(i32 noundef %i.hy, ptr noundef %i.id) #7
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store ptr %i.ib, ptr @zz_hold, align 8, !tbaa !17
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !8
  store ptr %i.if, ptr %i.ia, align 8, !tbaa !17
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ig = phi ptr [ %i.ie, %bb.v ], [ %i.ib, %bb.w ] ; 13 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  store i8 0, ptr %i.ih, align 8, !tbaa !8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  store ptr %i.ig, ptr %i.ii, align 8, !tbaa !8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store ptr %i.ig, ptr %i.ij, align 8, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store ptr %i.ig, ptr %i.ik, align 8, !tbaa !8
  store ptr %i.ig, ptr %i.ig, align 8, !tbaa !8
  store ptr %i.ig, ptr @xx_link, align 8, !tbaa !17
  store ptr %i.ig, ptr @zz_res, align 8, !tbaa !17
  %i.il = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !8  ; 4 uses
  store ptr %i.im, ptr @zz_hold, align 8, !tbaa !17
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %.thread196, label %bb.y

.thread196:                                       ; preds = %bb.x
  store ptr %i.hh, ptr @zz_hold, align 8, !tbaa !17
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.io = load ptr, ptr %i.im, align 8, !tbaa !8
  store ptr %i.io, ptr @zz_tmp, align 8, !tbaa !17
  %i.ip = load ptr, ptr %i.ig, align 8, !tbaa !8
  store ptr %i.ip, ptr %i.im, align 8, !tbaa !8
  %i.iq = load ptr, ptr @zz_hold, align 8, !tbaa !17
  %i.ir = load ptr, ptr @zz_res, align 8, !tbaa !17 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store ptr %i.iq, ptr %i.it, align 8, !tbaa !8
  %i.iu = load ptr, ptr @zz_tmp, align 8, !tbaa !17 ; 2 uses
  store ptr %i.iu, ptr %i.ir, align 8, !tbaa !8
  %i.iv = load ptr, ptr @zz_res, align 8, !tbaa !17
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !8
  %.pre = load ptr, ptr @xx_link, align 8, !tbaa !17 ; 3 uses
  store ptr %.pre, ptr @zz_res, align 8, !tbaa !17
  store ptr %i.hh, ptr @zz_hold, align 8, !tbaa !17
  %i.ix = icmp eq ptr %.pre, null
  br i1 %i.ix, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.thread196, %bb.y
  %i.iy = phi ptr [ %i.ig, %.thread196 ], [ %.pre, %bb.y ] ; 2 uses
  %i.iz = load ptr, ptr %i.hj, align 8, !tbaa !8  ; 3 uses
  store ptr %i.iz, ptr @zz_tmp, align 8, !tbaa !17
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 16 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !8  ; 2 uses
  store ptr %i.jb, ptr %i.hj, align 8, !tbaa !8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  store ptr %i.hh, ptr %i.jc, align 8, !tbaa !8
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  store ptr %i.iy, ptr %i.jd, align 8, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.je = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.jf = zext i8 %i.je to i32                    ; 2 uses
  store i32 %i.jf, ptr @zz_size, align 4, !tbaa !4
  %i.jg = zext i8 %i.je to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.jg ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !17 ; 4 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jk = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.jl = tail call ptr @GetMemory(i32 noundef %i.jf, ptr noundef %i.jk) #7
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store ptr %i.ji, ptr @zz_hold, align 8, !tbaa !17
  %i.jm = load ptr, ptr %i.ji, align 8, !tbaa !8
  store ptr %i.jm, ptr %i.jh, align 8, !tbaa !17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.jn = phi ptr [ %i.jl, %bb.ab ], [ %i.ji, %bb.ac ] ; 13 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  store i8 0, ptr %i.jo, align 8, !tbaa !8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  store ptr %i.jn, ptr %i.jp, align 8, !tbaa !8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store ptr %i.jn, ptr %i.jq, align 8, !tbaa !8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %i.jn, ptr %i.jr, align 8, !tbaa !8
  store ptr %i.jn, ptr %i.jn, align 8, !tbaa !8
  store ptr %i.jn, ptr @xx_link, align 8, !tbaa !17
  store ptr %i.jn, ptr @zz_res, align 8, !tbaa !17
  %i.js = load ptr, ptr %i.il, align 8, !tbaa !8  ; 4 uses
  store ptr %i.js, ptr @zz_hold, align 8, !tbaa !17
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ju = load ptr, ptr %i.js, align 8, !tbaa !8
  store ptr %i.ju, ptr @zz_tmp, align 8, !tbaa !17
  %i.jv = load ptr, ptr %i.jn, align 8, !tbaa !8
  store ptr %i.jv, ptr %i.js, align 8, !tbaa !8
  %i.jw = load ptr, ptr @zz_hold, align 8, !tbaa !17
  %i.jx = load ptr, ptr @zz_res, align 8, !tbaa !17 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store ptr %i.jw, ptr %i.jz, align 8, !tbaa !8
  %i.ka = load ptr, ptr @zz_tmp, align 8, !tbaa !17 ; 2 uses
  store ptr %i.ka, ptr %i.jx, align 8, !tbaa !8
  %i.kb = load ptr, ptr @zz_res, align 8, !tbaa !17
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store ptr %i.kb, ptr %i.kc, align 8, !tbaa !8
  %.pre183 = load ptr, ptr @xx_link, align 8, !tbaa !17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.kd = phi ptr [ %.pre183, %bb.ae ], [ %i.jn, %bb.ad ] ; 4 uses
  store ptr %i.kd, ptr @zz_res, align 8, !tbaa !17
  %i.ke = load ptr, ptr %1, align 8, !tbaa !17    ; 5 uses
  store ptr %i.ke, ptr @zz_hold, align 8, !tbaa !17
  %i.kf = icmp eq ptr %i.ke, null
  %i.kg = icmp eq ptr %i.kd, null
  %or.cond13 = select i1 %i.kf, i1 true, i1 %i.kg
  br i1 %or.cond13, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !8  ; 3 uses
  store ptr %i.ki, ptr @zz_tmp, align 8, !tbaa !17
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !8  ; 2 uses
  store ptr %i.kk, ptr %i.kh, align 8, !tbaa !8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store ptr %i.ke, ptr %i.kl, align 8, !tbaa !8
  store ptr %i.ki, ptr %i.kj, align 8, !tbaa !8
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  store ptr %i.kd, ptr %i.km, align 8, !tbaa !8
  %.pre184 = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.kn = phi ptr [ %.pre184, %bb.ag ], [ %i.ke, %bb.af ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 40 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 8
  %i.kq = and i32 %i.kp, -1610612737
  %i.kr = or disjoint i32 %i.kq, 536870912
  store i32 %i.kr, ptr %i.ko, align 8
  store ptr null, ptr %1, align 8, !tbaa !17
  br label %.critedge

bb.ai:                                            ; preds = %tailrecurse
  %i.ks = zext i8 %i.h to i32
  %i.kt = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ku = tail call ptr @Image(i32 noundef %i.ks) #7
  %i.kv = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %i.kt, ptr noundef nonnull @.str.8, ptr noundef %i.ku) #7 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %bb.n, %.lr.ph, %bb.m, %bb.ai, %bb.ah
  %current.ret.tr141 = select i1 %ret.known.tr.ph, ptr %ret.tr.ph, ptr %.tr
  ret ptr %current.ret.tr141
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @Meld(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x [32 x i8]], align 16        ; 10 uses
  %i.b = alloca [32 x [32 x i8]], align 16        ; 12 uses
  %i.c = alloca [32 x ptr], align 16              ; 7 uses
  %i.d = alloca [32 x ptr], align 16              ; 7 uses
  %i.e = alloca [32 x ptr], align 16              ; 5 uses
  %i.f = alloca [32 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !8
  %i.i = icmp eq i8 %i.h, 17
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.k = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.j, ptr noundef nonnull @.str.9) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !8
  %i.n = icmp eq i8 %i.m, 17
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.p = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.o, ptr noundef nonnull @.str.10) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.c, align 16, !tbaa !17
  %.0287.in436 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0287437 = load ptr, ptr %.0287.in436, align 8, !tbaa !8 ; 3 uses
  %.not438 = icmp eq ptr %.0287437, %0
  br i1 %.not438, label %._crit_edge, label %.preheader392

.preheader392:                                    ; preds = %bb.e, %.critedge
  %.0287440 = phi ptr [ %.0287, %.critedge ], [ %.0287437, %bb.e ] ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader392, %bb.f
  %.0287.pn = phi ptr [ %.1279, %bb.f ], [ %.0287440, %.preheader392 ]
  %.1279.in = getelementptr inbounds nuw i8, ptr %.0287.pn, i64 16
  %.1279 = load ptr, ptr %.1279.in, align 8, !tbaa !8 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.1279, i64 32
  %i.r = load i8, ptr %i.q, align 8, !tbaa !8     ; 2 uses
  switch i8 %i.r, label %bb.k [
    i8 0, label %bb.f
    i8 1, label %.critedge
    i8 9, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.1279, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.pn14.i = phi ptr [ %i.t, %bb.g ], [ %.011.i, %bb.h ]
  %.011.in.i = getelementptr inbounds nuw i8, ptr %.pn14.i, i64 16
  %.011.i = load ptr, ptr %.011.in.i, align 8, !tbaa !8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i, i64 32
  %i.v = load i8, ptr %i.u, align 8, !tbaa !8     ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i, !llvm.loop !11

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %.1279, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.pn.i = phi ptr [ %i.x, %bb.i ], [ %.0.i, %bb.j ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.z = load i8, ptr %i.y, align 8, !tbaa !8     ; 2 uses
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.j, label %SplitIsDefinite.exit, !llvm.loop !13

SplitIsDefinite.exit:                             ; preds = %bb.j
  %i.ab = add i8 %i.v, -100
  %or.cond.i = icmp ult i8 %i.ab, -91
  %i.ac = add i8 %i.z, -100
  %i.ad = icmp ult i8 %i.ac, -91
  %narrow.i.not = or i1 %or.cond.i, %i.ad
  br i1 %narrow.i.not, label %.critedge, label %._crit_edge

bb.k:                                             ; preds = %bb.f
  %i.ae = add i8 %i.r, -9
  %or.cond343 = icmp ult i8 %i.ae, 91
  br i1 %or.cond343, label %._crit_edge, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.k, %SplitIsDefinite.exit
  %.0287.in = getelementptr inbounds nuw i8, ptr %.0287440, i64 8
  %.0287 = load ptr, ptr %.0287.in, align 8, !tbaa !8 ; 3 uses
  %.not = icmp eq ptr %.0287, %0
  br i1 %.not, label %._crit_edge, label %.preheader392, !llvm.loop !38

._crit_edge:                                      ; preds = %.critedge, %SplitIsDefinite.exit, %bb.k, %bb.e
  %.0287.lcssa = phi ptr [ %.0287437, %bb.e ], [ %.0287440, %bb.k ], [ %.0287440, %SplitIsDefinite.exit ], [ %.0287, %.critedge ] ; 2 uses
  %.2280 = phi ptr [ undef, %bb.e ], [ %.1279, %bb.k ], [ %.1279, %SplitIsDefinite.exit ], [ %.1279, %.critedge ] ; 2 uses
  %.not322456 = icmp eq ptr %.0287.lcssa, %0
  br i1 %.not322456, label %._crit_edge462, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.loopexit391
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit391 ], [ 1, %._crit_edge ] ; 4 uses
  %.0270459 = phi ptr [ %.1271426, %.loopexit391 ], [ null, %._crit_edge ]
  %.3281458 = phi ptr [ %.6284, %.loopexit391 ], [ %.2280, %._crit_edge ] ; 2 uses
  %.1288457 = phi ptr [ %.2289424, %.loopexit391 ], [ %.0287.lcssa, %._crit_edge ]
  %i.af = icmp samesign ugt i64 %indvars.iv, 31
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.ag = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 7, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.12, i32 noundef 31) #7 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %.3281458, ptr %i.ah, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %.0270459, ptr %i.ai, align 8, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.2289.in447 = getelementptr inbounds nuw i8, ptr %.1288457, i64 8
  %.2289448 = load ptr, ptr %.2289.in447, align 8, !tbaa !8 ; 3 uses
  %.not335449 = icmp eq ptr %.2289448, %0
  br i1 %.not335449, label %.loopexit391, label %.preheader390

.preheader390:                                    ; preds = %bb.m, %.critedge2
  %.2289452 = phi ptr [ %.2289, %.critedge2 ], [ %.2289448, %bb.m ] ; 4 uses
  %.2268451 = phi i32 [ %.3269, %.critedge2 ], [ 1, %bb.m ] ; 3 uses
  %.1271450 = phi ptr [ %.2272, %.critedge2 ], [ null, %bb.m ] ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader390, %bb.n
  %.2289.pn = phi ptr [ %.5283, %bb.n ], [ %.2289452, %.preheader390 ]
  %.5283.in = getelementptr inbounds nuw i8, ptr %.2289.pn, i64 16
  %.5283 = load ptr, ptr %.5283.in, align 8, !tbaa !8 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.5283, i64 32
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !8   ; 2 uses
  switch i8 %i.ak, label %bb.u [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 9, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %.not338 = icmp eq i32 %.2268451, 0
  br i1 %.not338, label %.critedge2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %.5283, i64 44
  %i.am = load i16, ptr %i.al, align 4
  %i.an = lshr i16 %i.am, 9
  %.lobit339 = and i16 %i.an, 1
  %i.ao = zext nneg i16 %.lobit339 to i32
  br label %.critedge2

bb.q:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.5283, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.pn14.i351 = phi ptr [ %i.aq, %bb.q ], [ %.011.i353, %bb.r ]
  %.011.in.i352 = getelementptr inbounds nuw i8, ptr %.pn14.i351, i64 16
  %.011.i353 = load ptr, ptr %.011.in.i352, align 8, !tbaa !8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.i353, i64 32
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !8   ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.r, label %bb.s, !llvm.loop !11

bb.s:                                             ; preds = %bb.r
  %i.au = load ptr, ptr %.5283, align 8, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.pn.i354 = phi ptr [ %i.au, %bb.s ], [ %.0.i356, %bb.t ]
  %.0.in.i355 = getelementptr inbounds nuw i8, ptr %.pn.i354, i64 16
  %.0.i356 = load ptr, ptr %.0.in.i355, align 8, !tbaa !8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i356, i64 32
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !8   ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.t, label %SplitIsDefinite.exit359, !llvm.loop !13

SplitIsDefinite.exit359:                          ; preds = %bb.t
  %i.ay = add i8 %i.as, -100
  %or.cond.i357 = icmp ult i8 %i.ay, -91
  %i.az = add i8 %i.aw, -100
  %i.ba = icmp ult i8 %i.az, -91
  %narrow.i358.not = or i1 %or.cond.i357, %i.ba
  br i1 %narrow.i358.not, label %.critedge2, label %bb.v

bb.u:                                             ; preds = %bb.n
  %i.bb = add i8 %i.ak, -9
  %or.cond344 = icmp ult i8 %i.bb, 91
  br i1 %or.cond344, label %bb.v, label %.critedge2

bb.v:                                             ; preds = %bb.u, %SplitIsDefinite.exit359
  %.not337 = icmp eq ptr %.1271450, null
  br i1 %.not337, label %bb.w, label %.loopexit391

bb.w:                                             ; preds = %bb.v
  %i.bc = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.bd = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.bc, ptr noundef nonnull @.str.13) #7 ; 0 uses
  br label %.loopexit391

.critedge2:                                       ; preds = %bb.o, %bb.p, %bb.u, %SplitIsDefinite.exit359
  %.2272 = phi ptr [ %.1271450, %bb.u ], [ %.1271450, %SplitIsDefinite.exit359 ], [ %.5283, %bb.o ], [ %.5283, %bb.p ] ; 2 uses
  %.3269 = phi i32 [ %.2268451, %bb.u ], [ %.2268451, %SplitIsDefinite.exit359 ], [ 0, %bb.o ], [ %i.ao, %bb.p ]
  %.2289.in = getelementptr inbounds nuw i8, ptr %.2289452, i64 8
  %.2289 = load ptr, ptr %.2289.in, align 8, !tbaa !8 ; 3 uses
  %.not335 = icmp eq ptr %.2289, %0
  br i1 %.not335, label %.loopexit391, label %.preheader390, !llvm.loop !39

.loopexit391:                                     ; preds = %.critedge2, %bb.m, %bb.v, %bb.w
  %.1271426 = phi ptr [ %.1271450, %bb.v ], [ null, %bb.w ], [ null, %bb.m ], [ %.2272, %.critedge2 ]
  %.2289424 = phi ptr [ %.2289452, %bb.v ], [ %.2289452, %bb.w ], [ %.2289448, %bb.m ], [ %.2289, %.critedge2 ] ; 2 uses
  %.6284 = phi ptr [ %.5283, %bb.v ], [ %.5283, %bb.w ], [ %.3281458, %bb.m ], [ %.5283, %.critedge2 ] ; 2 uses
  %.not322 = icmp eq ptr %.2289424, %0
  br i1 %.not322, label %._crit_edge462.loopexit, label %.lr.ph, !llvm.loop !40

._crit_edge462.loopexit:                          ; preds = %.loopexit391
  %i.be = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge462

._crit_edge462:                                   ; preds = %._crit_edge462.loopexit, %._crit_edge
  %.3281.lcssa = phi ptr [ %.2280, %._crit_edge ], [ %.6284, %._crit_edge462.loopexit ]
  %.0265.lcssa = phi i32 [ 1, %._crit_edge ], [ %i.be, %._crit_edge462.loopexit ] ; 6 uses
  store ptr null, ptr %i.d, align 16, !tbaa !17
  %.3290.in465 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.3290466 = load ptr, ptr %.3290.in465, align 8, !tbaa !8 ; 3 uses
  %.not323467 = icmp eq ptr %.3290466, %1
  br i1 %.not323467, label %._crit_edge470, label %.preheader389

.preheader389:                                    ; preds = %._crit_edge462, %.critedge4
  %.3290469 = phi ptr [ %.3290, %.critedge4 ], [ %.3290466, %._crit_edge462 ] ; 4 uses
  br label %bb.x

bb.x:                                             ; preds = %.preheader389, %bb.x
  %.3290.pn = phi ptr [ %.8286, %bb.x ], [ %.3290469, %.preheader389 ]
  %.8286.in = getelementptr inbounds nuw i8, ptr %.3290.pn, i64 16
  %.8286 = load ptr, ptr %.8286.in, align 8, !tbaa !8 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.8286, i64 32
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !8   ; 2 uses
  switch i8 %i.bg, label %bb.ac [
    i8 0, label %bb.x
    i8 1, label %.critedge4
    i8 9, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr inbounds nuw i8, ptr %.8286, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.pn14.i360 = phi ptr [ %i.bi, %bb.y ], [ %.011.i362, %bb.z ]
  %.011.in.i361 = getelementptr inbounds nuw i8, ptr %.pn14.i360, i64 16
  %.011.i362 = load ptr, ptr %.011.in.i361, align 8, !tbaa !8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i362, i64 32
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !8   ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.z, label %bb.aa, !llvm.loop !11

bb.aa:                                            ; preds = %bb.z
  %i.bm = load ptr, ptr %.8286, align 8, !tbaa !8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %.pn.i363 = phi ptr [ %i.bm, %bb.aa ], [ %.0.i365, %bb.ab ]
  %.0.in.i364 = getelementptr inbounds nuw i8, ptr %.pn.i363, i64 16
  %.0.i365 = load ptr, ptr %.0.in.i364, align 8, !tbaa !8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i365, i64 32
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !8   ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.ab, label %SplitIsDefinite.exit368, !llvm.loop !13

SplitIsDefinite.exit368:                          ; preds = %bb.ab
  %i.bq = add i8 %i.bk, -100
  %or.cond.i366 = icmp ult i8 %i.bq, -91
  %i.br = add i8 %i.bo, -100
  %i.bs = icmp ult i8 %i.br, -91
  %narrow.i367.not = or i1 %or.cond.i366, %i.bs
  br i1 %narrow.i367.not, label %.critedge4, label %._crit_edge470

bb.ac:                                            ; preds = %bb.x
  %i.bt = add i8 %i.bg, -9
  %or.cond345 = icmp ult i8 %i.bt, 91
  br i1 %or.cond345, label %._crit_edge470, label %.critedge4

.critedge4:                                       ; preds = %bb.x, %bb.ac, %SplitIsDefinite.exit368
  %.3290.in = getelementptr inbounds nuw i8, ptr %.3290469, i64 8
  %.3290 = load ptr, ptr %.3290.in, align 8, !tbaa !8 ; 3 uses
  %.not323 = icmp eq ptr %.3290, %1
  br i1 %.not323, label %._crit_edge470, label %.preheader389, !llvm.loop !41

._crit_edge470:                                   ; preds = %.critedge4, %SplitIsDefinite.exit368, %bb.ac, %._crit_edge462
  %.3290.lcssa = phi ptr [ %.3290466, %._crit_edge462 ], [ %.3290469, %bb.ac ], [ %.3290469, %SplitIsDefinite.exit368 ], [ %.3290, %.critedge4 ] ; 2 uses
  %.9 = phi ptr [ %.3281.lcssa, %._crit_edge462 ], [ %.8286, %bb.ac ], [ %.8286, %SplitIsDefinite.exit368 ], [ %.8286, %.critedge4 ]
  %.not325487 = icmp eq ptr %.3290.lcssa, %1
  br i1 %.not325487, label %._crit_edge494, label %.lr.ph493

.lr.ph493:                                        ; preds = %._crit_edge470, %.loopexit
  %indvars.iv550 = phi i64 [ %indvars.iv.next551, %.loopexit ], [ 1, %._crit_edge470 ] ; 5 uses
  %.3273490 = phi ptr [ %.4274404, %.loopexit ], [ null, %._crit_edge470 ]
  %.10489 = phi ptr [ %.13, %.loopexit ], [ %.9, %._crit_edge470 ] ; 2 uses
  %.4291488 = phi ptr [ %.5292402, %.loopexit ], [ %.3290.lcssa, %._crit_edge470 ]
  %i.bu = icmp samesign ugt i64 %indvars.iv550, 31
  br i1 %i.bu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph493
  %i.bv = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 7, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull %i.l, ptr noundef nonnull @.str.12, i32 noundef 31) #7 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph493
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv550
  store ptr %.10489, ptr %i.bw, align 8, !tbaa !17
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv550
  store ptr %.3273490, ptr %i.bx, align 8, !tbaa !17
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %.5292.in478 = getelementptr inbounds nuw i8, ptr %.4291488, i64 8
  %.5292479 = load ptr, ptr %.5292.in478, align 8, !tbaa !8 ; 3 uses
  %.not329480 = icmp eq ptr %.5292479, %1
  br i1 %.not329480, label %.loopexit, label %.preheader388

.preheader388:                                    ; preds = %bb.ae, %.critedge6
  %.5292483 = phi ptr [ %.5292, %.critedge6 ], [ %.5292479, %bb.ae ] ; 4 uses
  %.6482 = phi i32 [ %.7, %.critedge6 ], [ 1, %bb.ae ] ; 3 uses
  %.4274481 = phi ptr [ %.5275, %.critedge6 ], [ null, %bb.ae ] ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %.preheader388, %bb.af
  %.5292.pn = phi ptr [ %.12, %bb.af ], [ %.5292483, %.preheader388 ]
  %.12.in = getelementptr inbounds nuw i8, ptr %.5292.pn, i64 16
  %.12 = load ptr, ptr %.12.in, align 8, !tbaa !8 ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.12, i64 32
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !8   ; 2 uses
  switch i8 %i.bz, label %bb.am [
    i8 0, label %bb.af
    i8 1, label %bb.ag
    i8 9, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %.not332 = icmp eq i32 %.6482, 0
  br i1 %.not332, label %.critedge6, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ca = getelementptr inbounds nuw i8, ptr %.12, i64 44
  %i.cb = load i16, ptr %i.ca, align 4
  %i.cc = lshr i16 %i.cb, 9
  %.lobit = and i16 %i.cc, 1
  %i.cd = zext nneg i16 %.lobit to i32
  br label %.critedge6

bb.ai:                                            ; preds = %bb.af
  %i.ce = getelementptr inbounds nuw i8, ptr %.12, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.pn14.i369 = phi ptr [ %i.cf, %bb.ai ], [ %.011.i371, %bb.aj ]
  %.011.in.i370 = getelementptr inbounds nuw i8, ptr %.pn14.i369, i64 16
  %.011.i371 = load ptr, ptr %.011.in.i370, align 8, !tbaa !8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.011.i371, i64 32
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !8   ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.aj, label %bb.ak, !llvm.loop !11

bb.ak:                                            ; preds = %bb.aj
  %i.cj = load ptr, ptr %.12, align 8, !tbaa !8
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.pn.i372 = phi ptr [ %i.cj, %bb.ak ], [ %.0.i374, %bb.al ]
  %.0.in.i373 = getelementptr inbounds nuw i8, ptr %.pn.i372, i64 16
  %.0.i374 = load ptr, ptr %.0.in.i373, align 8, !tbaa !8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i374, i64 32
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !8   ; 2 uses
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.al, label %SplitIsDefinite.exit377, !llvm.loop !13

SplitIsDefinite.exit377:                          ; preds = %bb.al
  %i.cn = add i8 %i.ch, -100
  %or.cond.i375 = icmp ult i8 %i.cn, -91
  %i.co = add i8 %i.cl, -100
  %i.cp = icmp ult i8 %i.co, -91
  %narrow.i376.not = or i1 %or.cond.i375, %i.cp
  br i1 %narrow.i376.not, label %.critedge6, label %bb.an

bb.am:                                            ; preds = %bb.af
  %i.cq = add i8 %i.bz, -9
  %or.cond346 = icmp ult i8 %i.cq, 91
  br i1 %or.cond346, label %bb.an, label %.critedge6

bb.an:                                            ; preds = %bb.am, %SplitIsDefinite.exit377
  %.not331 = icmp eq ptr %.4274481, null
  br i1 %.not331, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.cr = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.cs = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.cr, ptr noundef nonnull @.str.13) #7 ; 0 uses
  br label %.loopexit

.critedge6:                                       ; preds = %bb.ag, %bb.ah, %bb.am, %SplitIsDefinite.exit377
  %.5275 = phi ptr [ %.4274481, %bb.am ], [ %.4274481, %SplitIsDefinite.exit377 ], [ %.12, %bb.ag ], [ %.12, %bb.ah ] ; 2 uses
  %.7 = phi i32 [ %.6482, %bb.am ], [ %.6482, %SplitIsDefinite.exit377 ], [ 0, %bb.ag ], [ %i.cd, %bb.ah ]
  %.5292.in = getelementptr inbounds nuw i8, ptr %.5292483, i64 8
  %.5292 = load ptr, ptr %.5292.in, align 8, !tbaa !8 ; 3 uses
  %.not329 = icmp eq ptr %.5292, %1
  br i1 %.not329, label %.loopexit, label %.preheader388, !llvm.loop !42

.loopexit:                                        ; preds = %.critedge6, %bb.ae, %bb.an, %bb.ao
  %.4274404 = phi ptr [ %.4274481, %bb.an ], [ null, %bb.ao ], [ null, %bb.ae ], [ %.5275, %.critedge6 ] ; 3 uses
  %.5292402 = phi ptr [ %.5292483, %bb.an ], [ %.5292483, %bb.ao ], [ %.5292479, %bb.ae ], [ %.5292, %.critedge6 ] ; 2 uses
  %.13 = phi ptr [ %.12, %bb.an ], [ %.12, %bb.ao ], [ %.10489, %bb.ae ], [ %.12, %.critedge6 ]
  %.not325 = icmp eq ptr %.5292402, %1
  br i1 %.not325, label %._crit_edge494.loopexit, label %.lr.ph493, !llvm.loop !43

._crit_edge494.loopexit:                          ; preds = %.loopexit
  %i.ct = trunc nuw i64 %indvars.iv.next551 to i32 ; 2 uses
  store i8 0, ptr %i.a, align 16, !tbaa !8
  store i8 0, ptr %i.b, align 16, !tbaa !8
  %2 = icmp samesign ugt i32 %.0265.lcssa, 1
  br i1 %2, label %.lr.ph499.preheader, label %.preheader386.thread623

._crit_edge494:                                   ; preds = %._crit_edge470
  store i8 0, ptr %i.a, align 16, !tbaa !8
  store i8 0, ptr %i.b, align 16, !tbaa !8
  %i.cu = icmp samesign ugt i32 %.0265.lcssa, 1
  br i1 %i.cu, label %.lr.ph499.preheader, label %._crit_edge506.split

.lr.ph499.preheader:                              ; preds = %._crit_edge494, %._crit_edge494.loopexit
  %.0264.lcssa633 = phi i32 [ 1, %._crit_edge494 ], [ %i.ct, %._crit_edge494.loopexit ] ; 6 uses
  %.3273.lcssa630 = phi ptr [ null, %._crit_edge494 ], [ %.4274404, %._crit_edge494.loopexit ] ; 2 uses
  %wide.trip.count = zext i32 %.0265.lcssa to i64
  %i.cv = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.cv, 1
  %i.cw = icmp eq i32 %.0265.lcssa, 2
  br i1 %i.cw, label %.lr.ph499.epil.preheader, label %.lr.ph499.preheader.new

.lr.ph499.preheader.new:                          ; preds = %.lr.ph499.preheader
  %unroll_iter = and i64 %i.cv, -2
  br label %.lr.ph499

.preheader387.loopexit.unr-lcssa:                 ; preds = %.lr.ph499
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader387, label %.lr.ph499.epil.preheader

.lr.ph499.epil.preheader:                         ; preds = %.preheader387.loopexit.unr-lcssa, %.lr.ph499.preheader
  %indvars.iv553.epil.init = phi i64 [ 1, %.lr.ph499.preheader ], [ %indvars.iv.next554.1, %.preheader387.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod741 = trunc i64 %i.cv to i1
  tail call void @llvm.assume(i1 %lcmp.mod741)
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv553.epil.init
  store i8 0, ptr %i.cx, align 16, !tbaa !8
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv553.epil.init
  store i8 1, ptr %i.cy, align 16, !tbaa !8
  br label %.preheader387

.preheader387:                                    ; preds = %.preheader387.loopexit.unr-lcssa, %.lr.ph499.epil.preheader
  %i.cz = icmp samesign ugt i32 %.0264.lcssa633, 1
  br i1 %i.cz, label %.preheader386, label %._crit_edge506.split

.preheader386.thread623:                          ; preds = %._crit_edge494.loopexit
  %scevgep624 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = and i64 %indvars.iv550, 4294967295         ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep624, i8 0, i64 %3, i1 false), !tbaa !8
  %scevgep561625 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep561625, i8 2, i64 %3, i1 false), !tbaa !8
  br label %._crit_edge506.split

.lr.ph499:                                        ; preds = %.lr.ph499, %.lr.ph499.preheader.new
  %indvars.iv553 = phi i64 [ 1, %.lr.ph499.preheader.new ], [ %indvars.iv.next554.1, %.lr.ph499 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph499.preheader.new ], [ %niter.next.1, %.lr.ph499 ]
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv553
  store i8 0, ptr %i.da, align 16, !tbaa !8
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv553
  store i8 1, ptr %i.db, align 16, !tbaa !8
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv.next554
  store i8 0, ptr %i.dc, align 16, !tbaa !8
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv.next554
  store i8 1, ptr %i.dd, align 16, !tbaa !8
  %indvars.iv.next554.1 = add nuw nsw i64 %indvars.iv553, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader387.loopexit.unr-lcssa, label %.lr.ph499, !llvm.loop !44

.preheader386:                                    ; preds = %.preheader387
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.de = add i32 %.0264.lcssa633, -1
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep, i8 0, i64 %i.df, i1 false), !tbaa !8
  %scevgep556 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %scevgep556, i8 2, i64 %i.df, i1 false), !tbaa !8
  %wide.trip.count578 = zext i32 %.0265.lcssa to i64
  %wide.trip.count568 = zext i32 %.0264.lcssa633 to i64
  %wide.trip.count573 = zext i32 %.0264.lcssa633 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader386, %bb.as
  %indvars.iv570.a = phi i64 [ 1, %.preheader386 ], [ %indvars.iv.next566.a, %bb.as ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv570.a
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !17 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !8   ; 2 uses
  %.off = add i8 %i.dj, -11
  %switch = icmp ult i8 %.off, 2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dl = getelementptr [32 x i8], ptr %i.a, i64 %indvars.iv570.a ; 5 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 -32    ; 2 uses
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %indvars.iv570.a ; 4 uses
  br i1 %switch, label %.lr.ph503.split, label %.lr.ph503.split.us

.lr.ph503.split.us:                               ; preds = %.preheader, %4
  %indvars.iv565 = phi i64 [ %indvars.iv.next566, %4 ], [ 1, %.preheader ] ; 7 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv565
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !8
  %.not384.us = icmp eq i8 %i.dj, %i.dr
  br i1 %.not384.us, label %bb.ar, label %.critedge348.us

.critedge348.us:                                  ; preds = %.lr.ph503.split.us
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv565
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !8   ; 2 uses
  %i.du = getelementptr i8, ptr %i.dl, i64 %indvars.iv565 ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 -1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !8   ; 2 uses
  %i.dx = icmp sgt i8 %i.dt, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv565 ; 2 uses
  br i1 %i.dx, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.critedge348.us
  store i8 %i.dw, ptr %i.du, align 1, !tbaa !8
  store i8 2, ptr %i.dy, align 1, !tbaa !8
  br label %4

bb.aq:                                            ; preds = %.critedge348.us
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !8
  store i8 1, ptr %i.dy, align 1, !tbaa !8
  br label %4

bb.ar:                                            ; preds = %.lr.ph503.split.us
  %i.dz = getelementptr i8, ptr %i.dl, i64 %indvars.iv565 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 -33
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !8
  %i.ec = add i8 %i.eb, 1
  store i8 %i.ec, ptr %i.dz, align 1, !tbaa !8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv565
  store i8 3, ptr %i.ed, align 1, !tbaa !8
  br label %4

4:                                                ; preds = %bb.ar, %bb.aq, %bb.ap
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %exitcond569.not = icmp eq i64 %indvars.iv.next566, %wide.trip.count568
  br i1 %exitcond569.not, label %bb.as, label %.lr.ph503.split.us, !llvm.loop !45

bb.as:                                            ; preds = %4, %._crit_edge504
  %indvars.iv.next566.a = add nuw nsw i64 %indvars.iv570.a, 1 ; 2 uses
  %exitcond569.not.a = icmp eq i64 %indvars.iv.next566.a, %wide.trip.count578
  br i1 %exitcond569.not.a, label %._crit_edge506.split, label %.preheader, !llvm.loop !46

.lr.ph503.split:                                  ; preds = %.preheader, %._crit_edge504
  %indvars.iv560 = phi i64 [ %indvars.iv.next571, %._crit_edge504 ], [ 1, %.preheader ] ; 7 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv560
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !17 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !8
  %.off349.us.us = add i8 %i.eh, -11
  %switch350.us.us = icmp ult i8 %.off349.us.us, 2
  br i1 %switch350.us.us, label %bb.at, label %.critedge348

bb.at:                                            ; preds = %.lr.ph503.split
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dk, ptr noundef nonnull dereferenceable(1) %i.ei) #8
  %.not385.us.us = icmp eq i32 %5, 0
  br i1 %.not385.us.us, label %bb.aw, label %.critedge348

.critedge348:                                     ; preds = %bb.at, %.lr.ph503.split
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv560
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !8   ; 2 uses
  %i.el = getelementptr i8, ptr %i.dl, i64 %indvars.iv560 ; 3 uses
  %i.em = getelementptr i8, ptr %i.el, i64 -1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !8   ; 2 uses
  %i.eo = icmp sgt i8 %i.ek, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv560 ; 2 uses
  br i1 %i.eo, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.critedge348
  store i8 %i.en, ptr %i.el, align 1, !tbaa !8
  store i8 2, ptr %i.ep, align 1, !tbaa !8
  br label %._crit_edge504

bb.av:                                            ; preds = %.critedge348
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !8
  store i8 1, ptr %i.ep, align 1, !tbaa !8
  br label %._crit_edge504

bb.aw:                                            ; preds = %bb.at
  %6 = getelementptr i8, ptr %i.dl, i64 %indvars.iv560 ; 2 uses
  %7 = getelementptr i8, ptr %6, i64 -33
  %8 = load i8, ptr %7, align 1, !tbaa !8
  %9 = add i8 %8, 1
  store i8 %9, ptr %6, align 1, !tbaa !8
  %10 = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv560
  store i8 3, ptr %10, align 1, !tbaa !8
  br label %._crit_edge504

._crit_edge504:                                   ; preds = %bb.aw, %bb.av, %bb.au
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv560, 1 ; 2 uses
  %exitcond574.not = icmp eq i64 %indvars.iv.next571, %wide.trip.count573
  br i1 %exitcond574.not, label %bb.as, label %.lr.ph503.split, !llvm.loop !45

._crit_edge506.split:                             ; preds = %bb.as, %._crit_edge494, %.preheader387, %.preheader386.thread623
  %.0264.lcssa631 = phi i32 [ %.0264.lcssa633, %.preheader387 ], [ 1, %._crit_edge494 ], [ %i.ct, %.preheader386.thread623 ], [ %.0264.lcssa633, %bb.as ]
  %.3273.lcssa628 = phi ptr [ %.3273.lcssa630, %.preheader387 ], [ null, %._crit_edge494 ], [ %.4274404, %.preheader386.thread623 ], [ %.3273.lcssa630, %bb.as ]
  %i.eq = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 17), align 1, !tbaa !8 ; 2 uses
  %i.er = zext i8 %i.eq to i32                    ; 2 uses
  store i32 %i.er, ptr @zz_size, align 4, !tbaa !4
  %i.es = zext i8 %i.eq to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.es ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !17 ; 4 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %._crit_edge506.split
  %i.ew = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ex = tail call ptr @GetMemory(i32 noundef %i.er, ptr noundef %i.ew) #7 ; 2 uses
  store ptr %i.ex, ptr @zz_hold, align 8, !tbaa !17
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge506.split
  store ptr %i.eu, ptr @zz_hold, align 8, !tbaa !17
  %i.ey = load ptr, ptr %i.eu, align 8, !tbaa !8
  store ptr %i.ey, ptr %i.et, align 8, !tbaa !17
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.ez = phi ptr [ %i.ex, %bb.ax ], [ %i.eu, %bb.ay ] ; 17 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  store i8 17, ptr %i.fa, align 8, !tbaa !8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  store ptr %i.ez, ptr %i.fb, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store ptr %i.ez, ptr %i.fc, align 8, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 6 uses
  store ptr %i.ez, ptr %i.fd, align 8, !tbaa !8
  store ptr %i.ez, ptr %i.ez, align 8, !tbaa !8
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.ff = load i16, ptr %i.fe, align 8
  %i.fg = and i16 %i.ff, 128
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 64 ; 11 uses
  %i.fi = load i16, ptr %i.fh, align 8
  %i.fj = and i16 %i.fi, -129
  %i.fk = or disjoint i16 %i.fj, %i.fg            ; 3 uses
  store i16 %i.fk, ptr %i.fh, align 8
  %i.fl = load i16, ptr %i.fe, align 8
  %i.fm = and i16 %i.fl, 256
  %i.fn = and i16 %i.fk, -257
  %i.fo = or disjoint i16 %i.fn, %i.fm            ; 2 uses
  store i16 %i.fo, ptr %i.fh, align 8
  %i.fp = load i16, ptr %i.fe, align 8
  %i.fq = and i16 %i.fp, 512
  %i.fr = and i16 %i.fo, -513
  %i.fs = or disjoint i16 %i.fr, %i.fq            ; 2 uses
  store i16 %i.fs, ptr %i.fh, align 8
  %i.ft = load i16, ptr %i.fe, align 8
  %i.fu = and i16 %i.ft, 7168
  %i.fv = and i16 %i.fs, -7169
  %i.fw = or disjoint i16 %i.fv, %i.fu            ; 2 uses
  store i16 %i.fw, ptr %i.fh, align 8
  %i.fx = load i16, ptr %i.fe, align 8
  %i.fy = and i16 %i.fx, -8192
  %i.fz = and i16 %i.fw, 8191
  %i.ga = or disjoint i16 %i.fz, %i.fy
  store i16 %i.ga, ptr %i.fh, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ez, i64 66
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !8
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 8 uses
  %i.gf = load i8, ptr %i.ge, align 4
  %i.gg = and i8 %i.gf, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ez, i64 68 ; 10 uses
  %i.gi = load i8, ptr %i.gh, align 4
  %i.gj = and i8 %i.gi, -4
  %i.gk = or disjoint i8 %i.gj, %i.gg             ; 2 uses
  store i8 %i.gk, ptr %i.gh, align 4
  %i.gl = load i8, ptr %i.ge, align 4
  %i.gm = and i8 %i.gl, 12
  %i.gn = and i8 %i.gk, -13
  %i.go = or disjoint i8 %i.gn, %i.gm             ; 2 uses
  store i8 %i.go, ptr %i.gh, align 4
  %i.gp = load i8, ptr %i.ge, align 4
  %i.gq = and i8 %i.gp, 112
  %i.gr = and i8 %i.go, -113
  %i.gs = or disjoint i8 %i.gr, %i.gq
  store i8 %i.gs, ptr %i.gh, align 4
  %i.gt = load i8, ptr %i.fe, align 8
  %i.gu = and i8 %i.gt, 8
  %i.gv = trunc i16 %i.fk to i8
  %i.gw = and i8 %i.gv, -9
  %i.gx = or disjoint i8 %i.gw, %i.gu             ; 2 uses
  store i8 %i.gx, ptr %i.fh, align 8
  %i.gy = load i16, ptr %i.ge, align 4
  %i.gz = and i16 %i.gy, 128
  %i.ha = load i16, ptr %i.gh, align 4
  %i.hb = and i16 %i.ha, -129
  %i.hc = or disjoint i16 %i.hb, %i.gz            ; 2 uses
  store i16 %i.hc, ptr %i.gh, align 4
  %i.hd = load i16, ptr %i.ge, align 4
  %i.he = and i16 %i.hd, 256
  %i.hf = and i16 %i.hc, -257
  %i.hg = or disjoint i16 %i.hf, %i.he            ; 2 uses
  store i16 %i.hg, ptr %i.gh, align 4
  %i.hh = load i16, ptr %i.ge, align 4
  %i.hi = and i16 %i.hh, 512
  %i.hj = and i16 %i.hg, -513
  %i.hk = or disjoint i16 %i.hj, %i.hi            ; 2 uses
  store i16 %i.hk, ptr %i.gh, align 4
  %i.hl = load i16, ptr %i.ge, align 4
  %i.hm = and i16 %i.hl, 7168
  %i.hn = and i16 %i.hk, -7169
  %i.ho = or disjoint i16 %i.hn, %i.hm            ; 2 uses
  store i16 %i.ho, ptr %i.gh, align 4
  %i.hp = load i16, ptr %i.ge, align 4
  %i.hq = and i16 %i.hp, -8192
  %i.hr = and i16 %i.ho, 8191
  %i.hs = or disjoint i16 %i.hr, %i.hq
  store i16 %i.hs, ptr %i.gh, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ez, i64 70 ; 2 uses
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 6 uses
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = and i32 %i.hx, 4095
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ez, i64 76 ; 7 uses
  %i.ia = load i32, ptr %i.hz, align 4
  %i.ib = and i32 %i.ia, -4096
  %i.ic = or disjoint i32 %i.ib, %i.hy            ; 2 uses
  store i32 %i.ic, ptr %i.hz, align 4
  %i.id = load i32, ptr %i.hw, align 4
  %i.ie = and i32 %i.id, 4190208
  %i.if = and i32 %i.ic, -4190209
  %i.ig = or disjoint i32 %i.if, %i.ie            ; 2 uses
  store i32 %i.ig, ptr %i.hz, align 4
  %i.ih = load i32, ptr %i.hw, align 4
  %i.ii = and i32 %i.ih, 12582912
  %i.ij = and i32 %i.ig, -12582913
  %i.ik = or disjoint i32 %i.ij, %i.ii            ; 2 uses
  store i32 %i.ik, ptr %i.hz, align 4
  %i.il = load i32, ptr %i.hw, align 4
  %i.im = and i32 %i.il, 1056964608
  %i.in = and i32 %i.ik, -1056964609
  %i.io = or disjoint i32 %i.in, %i.im            ; 2 uses
  store i32 %i.io, ptr %i.hz, align 4
  %i.ip = load i32, ptr %i.hw, align 4
  %i.iq = and i32 %i.ip, -2147483648
  %i.ir = and i32 %i.io, 2147483647
  %i.is = or disjoint i32 %i.ir, %i.iq            ; 2 uses
  store i32 %i.is, ptr %i.hz, align 4
  %i.it = load i32, ptr %i.hw, align 4
  %i.iu = and i32 %i.it, 1073741824
  %i.iv = and i32 %i.is, -1073741825
  %i.iw = or disjoint i32 %i.iv, %i.iu
  store i32 %i.iw, ptr %i.hz, align 4
  %i.ix = load i8, ptr %i.fe, align 8
  %i.iy = and i8 %i.ix, 1
  %i.iz = and i8 %i.gx, -2
  %i.ja = or disjoint i8 %i.iy, %i.iz             ; 2 uses
  store i8 %i.ja, ptr %i.fh, align 8
  %i.jb = load i8, ptr %i.fe, align 8
  %i.jc = and i8 %i.jb, 2
  %i.jd = and i8 %i.ja, -3
  %i.je = or disjoint i8 %i.jd, %i.jc             ; 2 uses
  store i8 %i.je, ptr %i.fh, align 8
  %i.jf = load i8, ptr %i.fe, align 8
  %i.jg = and i8 %i.jf, 4
  %i.jh = and i8 %i.je, -5
  %i.ji = or disjoint i8 %i.jh, %i.jg             ; 2 uses
  store i8 %i.ji, ptr %i.fh, align 8
  %i.jj = load i8, ptr %i.fe, align 8
  %i.jk = and i8 %i.jj, 112
  %i.jl = and i8 %i.ji, -113
  %i.jm = or disjoint i8 %i.jl, %i.jk
  store i8 %i.jm, ptr %i.fh, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jo = load i16, ptr %i.jn, align 8, !tbaa !8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  store i16 %i.jo, ptr %i.jp, align 8, !tbaa !8
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !8
  %i.js = getelementptr inbounds nuw i8, ptr %i.ez, i64 74
  store i16 %i.jr, ptr %i.js, align 2, !tbaa !8
  %i.jt = add nsw i32 %.0265.lcssa, -1
  %i.ju = add nsw i32 %.0264.lcssa631, -1
  br label %bb.ba

bb.ba:                                            ; preds = %.backedge, %bb.az
  %.6276 = phi ptr [ %.3273.lcssa628, %bb.az ], [ %.6276.be, %.backedge ]
  %.2262 = phi i32 [ %i.jt, %bb.az ], [ %.3263, %.backedge ] ; 5 uses
  %.2 = phi i32 [ %i.ju, %bb.az ], [ %.3, %.backedge ] ; 5 uses
  %i.jv = sext i32 %.2262 to i64                  ; 5 uses
  %i.jw = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.jv
  %i.jx = sext i32 %.2 to i64                     ; 3 uses
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !8
  switch i8 %i.jz, label %bb.bz [
    i8 0, label %bb.cx
    i8 3, label %bb.bb
    i8 2, label %bb.bj
    i8 1, label %bb.br
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ka = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.kb = zext i8 %i.ka to i32                    ; 2 uses
  store i32 %i.kb, ptr @zz_size, align 4, !tbaa !4
  %i.kc = zext i8 %i.ka to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.kc ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !17 ; 4 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kg = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.kh = tail call ptr @GetMemory(i32 noundef %i.kb, ptr noundef %i.kg) #7
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  store ptr %i.ke, ptr @zz_hold, align 8, !tbaa !17
  %i.ki = load ptr, ptr %i.ke, align 8, !tbaa !8
  store ptr %i.ki, ptr %i.kd, align 8, !tbaa !17
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.kj = phi ptr [ %i.kh, %bb.bc ], [ %i.ke, %bb.bd ] ; 13 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  store i8 0, ptr %i.kk, align 8, !tbaa !8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  store ptr %i.kj, ptr %i.kl, align 8, !tbaa !8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store ptr %i.kj, ptr %i.km, align 8, !tbaa !8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %i.kj, ptr %i.kn, align 8, !tbaa !8
  store ptr %i.kj, ptr %i.kj, align 8, !tbaa !8
  store ptr %i.kj, ptr @xx_link, align 8, !tbaa !17
  store ptr %i.kj, ptr @zz_res, align 8, !tbaa !17
  %i.ko = load ptr, ptr %i.fd, align 8, !tbaa !8  ; 4 uses
  store ptr %i.ko, ptr @zz_hold, align 8, !tbaa !17
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !8
  store ptr %i.kq, ptr @zz_tmp, align 8, !tbaa !17
  %i.kr = load ptr, ptr %i.kj, align 8, !tbaa !8
  store ptr %i.kr, ptr %i.ko, align 8, !tbaa !8
  %i.ks = load ptr, ptr @zz_hold, align 8, !tbaa !17
  %i.kt = load ptr, ptr @zz_res, align 8, !tbaa !17 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store ptr %i.ks, ptr %i.kv, align 8, !tbaa !8
  %i.kw = load ptr, ptr @zz_tmp, align 8, !tbaa !17 ; 2 uses
  store ptr %i.kw, ptr %i.kt, align 8, !tbaa !8
  %i.kx = load ptr, ptr @zz_res, align 8, !tbaa !17
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store ptr %i.kx, ptr %i.ky, align 8, !tbaa !8
  %.pre576 = load ptr, ptr @xx_link, align 8, !tbaa !17
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.kz = phi ptr [ %.pre576, %bb.bf ], [ %i.kj, %bb.be ] ; 4 uses
  store ptr %i.kz, ptr @zz_res, align 8, !tbaa !17
  %i.la = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jv
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !17 ; 4 uses
  store ptr %i.lb, ptr @zz_hold, align 8, !tbaa !17
  %i.lc = icmp eq ptr %i.lb, null
  %i.ld = icmp eq ptr %i.kz, null
  %or.cond9 = select i1 %i.lc, i1 true, i1 %i.ld
  br i1 %or.cond9, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !8  ; 3 uses
  store ptr %i.lf, ptr @zz_tmp, align 8, !tbaa !17
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kz, i64 16 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !8  ; 2 uses
  store ptr %i.lh, ptr %i.le, align 8, !tbaa !8
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  store ptr %i.lb, ptr %i.li, align 8, !tbaa !8
  store ptr %i.lf, ptr %i.lg, align 8, !tbaa !8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  store ptr %i.kz, ptr %i.lj, align 8, !tbaa !8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.jv
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !17
  %i.lm = add nsw i32 %.2262, -1
  %i.ln = add nsw i32 %.2, -1
  br label %bb.bz

bb.bj:                                            ; preds = %bb.ba
  %i.lo = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.lp = zext i8 %i.lo to i32                    ; 2 uses
  store i32 %i.lp, ptr @zz_size, align 4, !tbaa !4
  %i.lq = zext i8 %i.lo to i64
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.lq ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !17 ; 4 uses
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.lu = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.lv = tail call ptr @GetMemory(i32 noundef %i.lp, ptr noundef %i.lu) #7
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  store ptr %i.ls, ptr @zz_hold, align 8, !tbaa !17
  %i.lw = load ptr, ptr %i.ls, align 8, !tbaa !8
  store ptr %i.lw, ptr %i.lr, align 8, !tbaa !17
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.lx = phi ptr [ %i.lv, %bb.bk ], [ %i.ls, %bb.bl ] ; 13 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  store i8 0, ptr %i.ly, align 8, !tbaa !8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  store ptr %i.lx, ptr %i.lz, align 8, !tbaa !8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store ptr %i.lx, ptr %i.ma, align 8, !tbaa !8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store ptr %i.lx, ptr %i.mb, align 8, !tbaa !8
  store ptr %i.lx, ptr %i.lx, align 8, !tbaa !8
  store ptr %i.lx, ptr @xx_link, align 8, !tbaa !17
  store ptr %i.lx, ptr @zz_res, align 8, !tbaa !17
  %i.mc = load ptr, ptr %i.fd, align 8, !tbaa !8  ; 4 uses
  store ptr %i.mc, ptr @zz_hold, align 8, !tbaa !17
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.me = load ptr, ptr %i.mc, align 8, !tbaa !8
  store ptr %i.me, ptr @zz_tmp, align 8, !tbaa !17
  %i.mf = load ptr, ptr %i.lx, align 8, !tbaa !8
  store ptr %i.mf, ptr %i.mc, align 8, !tbaa !8
  %i.mg = load ptr, ptr @zz_hold, align 8, !tbaa !17
  %i.mh = load ptr, ptr @zz_res, align 8, !tbaa !17 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store ptr %i.mg, ptr %i.mj, align 8, !tbaa !8
  %i.mk = load ptr, ptr @zz_tmp, align 8, !tbaa !17 ; 2 uses
  store ptr %i.mk, ptr %i.mh, align 8, !tbaa !8
  %i.ml = load ptr, ptr @zz_res, align 8, !tbaa !17
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store ptr %i.ml, ptr %i.mm, align 8, !tbaa !8
  %.pre575 = load ptr, ptr @xx_link, align 8, !tbaa !17
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.mn = phi ptr [ %.pre575, %bb.bn ], [ %i.lx, %bb.bm ] ; 4 uses
  store ptr %i.mn, ptr @zz_res, align 8, !tbaa !17
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.jx
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !17 ; 4 uses
  store ptr %i.mp, ptr @zz_hold, align 8, !tbaa !17
  %i.mq = icmp eq ptr %i.mp, null
  %i.mr = icmp eq ptr %i.mn, null
  %or.cond13 = select i1 %i.mq, i1 true, i1 %i.mr
  br i1 %or.cond13, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !8  ; 3 uses
  store ptr %i.mt, ptr @zz_tmp, align 8, !tbaa !17
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 16 ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !8  ; 2 uses
  store ptr %i.mv, ptr %i.ms, align 8, !tbaa !8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  store ptr %i.mp, ptr %i.mw, align 8, !tbaa !8
  store ptr %i.mt, ptr %i.mu, align 8, !tbaa !8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  store ptr %i.mn, ptr %i.mx, align 8, !tbaa !8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.my = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jx
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !17
  %i.na = add nsw i32 %.2, -1
  br label %bb.bz

bb.br:                                            ; preds = %bb.ba
  %i.nb = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.nc = zext i8 %i.nb to i32                    ; 2 uses
  store i32 %i.nc, ptr @zz_size, align 4, !tbaa !4
  %i.nd = zext i8 %i.nb to i64
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.nd ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !17 ; 4 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.bs, label %bb.bt
end_hunk_0
