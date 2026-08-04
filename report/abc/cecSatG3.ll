inline.NumInlined: 775
inline.NumDeleted: 130
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@Cec5_ManPerformSweeping:bb.a
  br i1 %.not359, label %.critedge11, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph530
  %i.sv = load ptr, ptr %i.fs, align 8, !tbaa !134 ; 5 uses
  %i.sw = load i64, ptr %i.su, align 4            ; 2 uses
  %i.sx = and i64 %i.sw, 536870911
  %i.sy = sub nsw i64 0, %i.sx
  %i.sz = getelementptr inbounds [12 x i8], ptr %i.su, i64 %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !122 ; 2 uses
  %i.tc = trunc i64 %i.sw to i32
  %i.td = call fastcc ptr @Gia_ManAppendObj(ptr noundef %i.sv) ; 8 uses
  %i.te = load i64, ptr %i.td, align 4
  %i.tf = or i64 %i.te, 2147483648                ; 2 uses
  store i64 %i.tf, ptr %i.td, align 4
  %i.tg = getelementptr i8, ptr %i.sv, i64 32     ; 3 uses
  %.val20.i476 = load ptr, ptr %i.tg, align 8, !tbaa !93
  %i.th = ptrtoint ptr %i.td to i64               ; 3 uses
  %i.ti = ptrtoint ptr %.val20.i476 to i64
  %i.tj = sub i64 %i.th, %i.ti
  %i.tk = sdiv exact i64 %i.tj, 12
  %i.tl = trunc i64 %i.tk to i32
  %i.tm = lshr i32 %i.tb, 1
  %i.tn = sub i32 %i.tl, %i.tm
  %i.to = and i32 %i.tn, 536870911
  %i.tp = zext nneg i32 %i.to to i64
  %i.tq = and i64 %i.tf, -1073741824
  %i.tr = shl i32 %i.tb, 29
  %i.ts = xor i32 %i.tr, %i.tc
  %i.tt = and i32 %i.ts, 536870912
  %i.tu = zext nneg i32 %i.tt to i64
  %i.tv = or disjoint i64 %i.tq, %i.tu
  %i.tw = or disjoint i64 %i.tv, %i.tp            ; 2 uses
  store i64 %i.tw, ptr %i.td, align 4
  %i.tx = getelementptr inbounds nuw i8, ptr %i.sv, i64 72 ; 2 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !43
  %i.tz = getelementptr i8, ptr %i.ty, i64 4
  %.val.i477 = load i32, ptr %i.tz, align 4, !tbaa !18
  %i.ua = and i32 %.val.i477, 536870911
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = shl nuw nsw i64 %i.ub, 32
  %i.ud = and i64 %i.tw, -2305843004918726657
  %i.ue = or disjoint i64 %i.ud, %i.uc
  store i64 %i.ue, ptr %i.td, align 4
  %i.uf = load ptr, ptr %i.tx, align 8, !tbaa !43 ; 6 uses
  %.val19.i = load ptr, ptr %i.tg, align 8, !tbaa !93
  %i.ug = ptrtoint ptr %.val19.i to i64
  %i.uh = sub i64 %i.th, %i.ug
  %i.ui = sdiv exact i64 %i.uh, 12
  %i.uj = trunc i64 %i.ui to i32
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uf, i64 4 ; 3 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !18 ; 7 uses
  %i.um = load i32, ptr %i.uf, align 8, !tbaa !70
  %i.un = icmp eq i32 %i.ul, %i.um
  br i1 %i.un, label %bb.ci, label %Vec_IntPush.exit.i

bb.ci:                                            ; preds = %bb.ch
  %i.uo = icmp slt i32 %i.ul, 16
  br i1 %i.uo, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.up = getelementptr inbounds nuw i8, ptr %i.uf, i64 8 ; 2 uses
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !21 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.uq, null
  br i1 %.not9.i.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ur = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.uq, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.us = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.cl, %bb.ck
  %i.ut = phi ptr [ %i.ur, %bb.ck ], [ %i.us, %bb.cl ]
  store ptr %i.ut, ptr %i.up, align 8, !tbaa !21
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.cm:                                            ; preds = %bb.ci
  %i.uu = icmp samesign ult i32 %i.ul, 1073741823
  %i.uv = shl nuw nsw i32 %i.ul, 1
  %spec.select.i.i = select i1 %i.uu, i32 %i.uv, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.ul, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.cn, label %Vec_IntPush.exit.i

bb.cn:                                            ; preds = %bb.cm
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uf, i64 8 ; 2 uses
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !21 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.ux, null
  %i.uy = zext nneg i32 %spec.select.i.i to i64
  %i.uz = shl nuw nsw i64 %i.uy, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.va = call ptr @realloc(ptr noundef nonnull %i.ux, i64 noundef %i.uz) #29
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.vb = call noalias ptr @malloc(i64 noundef %i.uz) #26
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.vc = phi ptr [ %i.va, %bb.co ], [ %i.vb, %bb.cp ]
  store ptr %i.vc, ptr %i.uw, align 8, !tbaa !21
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.cq, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.cq ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.uf, align 8, !tbaa !70
  %.pre.i479 = load i32, ptr %i.uk, align 4, !tbaa !18
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.cm, %bb.ch
  %i.vd = phi i32 [ %i.ul, %bb.ch ], [ %i.ul, %bb.cm ], [ %.pre.i479, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !21
  %i.vg = add nsw i32 %i.vd, 1
  store i32 %i.vg, ptr %i.uk, align 4, !tbaa !18
  %i.vh = sext i32 %i.vd to i64
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.vh
  store i32 %i.uj, ptr %i.vi, align 4, !tbaa !22
  %i.vj = getelementptr inbounds nuw i8, ptr %i.sv, i64 232
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !280
  %.not.i478 = icmp eq ptr %i.vk, null
  br i1 %.not.i478, label %Gia_ManAppendCo.exit, label %bb.cr

bb.cr:                                            ; preds = %Vec_IntPush.exit.i
  %i.vl = load i64, ptr %i.td, align 4
  %i.vm = and i64 %i.vl, 536870911
  %i.vn = sub nsw i64 0, %i.vm
  %i.vo = getelementptr inbounds [12 x i8], ptr %i.td, i64 %i.vn
  call void @Gia_ObjAddFanout(ptr noundef nonnull %i.sv, ptr noundef nonnull %i.vo, ptr noundef nonnull %i.td) #27
  br label %Gia_ManAppendCo.exit

Gia_ManAppendCo.exit:                             ; preds = %Vec_IntPush.exit.i, %bb.cr
  %.val18.i = load ptr, ptr %i.tg, align 8, !tbaa !93
  %i.vp = ptrtoint ptr %.val18.i to i64
  %i.vq = sub i64 %i.th, %i.vp
  %i.vr = sdiv exact i64 %i.vq, 12
  %i.vs = trunc i64 %i.vr to i32
  %i.vt = shl i32 %i.vs, 1
  %i.vu = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  store i32 %i.vt, ptr %i.vu, align 4, !tbaa !122
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1 ; 2 uses
  %i.vv = load ptr, ptr %i.sl, align 8, !tbaa !43 ; 2 uses
  %i.vw = getelementptr i8, ptr %i.vv, i64 4
  %.val = load i32, ptr %i.vw, align 4, !tbaa !18
  %i.vx = sext i32 %.val to i64
  %i.vy = icmp slt i64 %indvars.iv.next542, %i.vx
  br i1 %i.vy, label %.lr.ph530, label %.critedge11, !llvm.loop !281

.critedge11:                                      ; preds = %.lr.ph530, %Gia_ManAppendCo.exit, %.preheader
  %i.vz = load ptr, ptr %i.fs, align 8, !tbaa !134
  %i.wa = call ptr @Gia_ManCleanup(ptr noundef %i.vz) #27
  store ptr %i.wa, ptr %2, align 8, !tbaa !282
  br label %bb.cs

bb.cs:                                            ; preds = %.critedge11, %bb.cg
  br i1 %.not353, label %.loopexit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.wb = load i32, ptr %i.i, align 4, !tbaa !95
  %.not360 = icmp eq i32 %i.wb, 0
  br i1 %.not360, label %.thread484, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @CbsP_ManSatPrintStats(ptr noundef %.0308) #27
  call void @CbsP_PrintRecord(ptr noundef %.0308) #27
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.ad, %bb.cs, %bb.cu, %._crit_edge, %bb.n, %bb.j
  %.1309.ph = phi ptr [ null, %bb.n ], [ null, %bb.j ], [ %.0308, %bb.cs ], [ %.0308, %bb.cu ], [ null, %._crit_edge ], [ null, %bb.ad ], [ null, %bb.t ] ; 2 uses
  %.pr = load i32, ptr %i.i, align 4, !tbaa !95
  %.not379 = icmp eq i32 %.pr, 0
  br i1 %.not379, label %.thread484, label %bb.cv

bb.cv:                                            ; preds = %.loopexit
  %i.wc = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.wd = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !227 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.a, i64 212 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !22
  %i.wj = load <2 x i32>, ptr %i.wc, align 4, !tbaa !22 ; 3 uses
  %i.wk = extractelement <2 x i32> %i.wj, i64 0   ; 2 uses
  %i.wl = extractelement <2 x i32> %i.wj, i64 1   ; 2 uses
  %i.wm = add nsw i32 %i.wk, %i.wl
  %i.wn = add nsw i32 %i.wm, %i.we
  %i.wo = load <2 x i32>, ptr %i.wg, align 8, !tbaa !22 ; 2 uses
  %i.wp = load i32, ptr %i.wg, align 8, !tbaa !22
  %i.wq = load <2 x i32>, ptr %i.wf, align 4, !tbaa !22 ; 2 uses
  %i.wr = load i32, ptr %i.wf, align 4, !tbaa !22
  %i.ws = shufflevector <2 x i32> %i.wq, <2 x i32> %i.wo, <2 x i32> <i32 1, i32 3>
  %i.wt = sitofp <2 x i32> %i.ws to <2 x float>
  %i.wu = shufflevector <2 x i32> %i.wq, <2 x i32> %i.wo, <2 x i32> <i32 0, i32 2>
  %i.wv = sub nsw <2 x i32> %i.wj, %i.wu
  %i.ww = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.wv, <2 x i32> splat (i32 1))
  %i.wx = uitofp nneg <2 x i32> %i.ww to <2 x float>
  %i.wy = fdiv <2 x float> %i.wt, %i.wx           ; 2 uses
  %10 = extractelement <2 x float> %i.wy, i64 1
  %11 = fpext float %10 to double
  %12 = extractelement <2 x float> %i.wy, i64 0
  %13 = fpext float %12 to double
  %i.wz = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !22
  %i.xb = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !186
  %i.xd = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !249
  %i.xf = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.xg = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !22 ; 2 uses
  %i.xi = sitofp i32 %i.xh to double
  %i.xj = fmul nnan double %i.xi, 1.000000e+02
  %i.xk = load i32, ptr %i.xf, align 8, !tbaa !22
  %i.xl = add nsw i32 %i.xk, %i.xh
  %i.xm = call noundef i32 @llvm.smax.i32(i32 %i.xl, i32 1)
  %i.xn = uitofp nneg i32 %i.xm to double
  %i.xo = fdiv double %i.xj, %i.xn
  %i.xp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %i.wn, i32 noundef %i.wl, i32 noundef %i.wp, double noundef %11, i32 noundef %i.wi, i32 noundef %i.wk, i32 noundef %i.wr, double noundef %13, i32 noundef %i.xa, i32 noundef %i.we, i32 noundef %i.xc, i32 noundef %i.xe, double noundef %i.xo) ; 0 uses
  br label %.thread484

.thread484:                                       ; preds = %bb.ct, %bb.cv, %.loopexit
  %.1309487 = phi ptr [ %.1309.ph, %.loopexit ], [ %.1309.ph, %bb.cv ], [ %.0308, %bb.ct ] ; 2 uses
  call void @Cec5_ManDestroy(ptr noundef %i.a)
  %.not380 = icmp eq ptr %.1309487, null
  br i1 %.not380, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.thread484
  call void @CbsP_ManStop(ptr noundef nonnull %.1309487) #27
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.thread484
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !143
  %.not381 = icmp eq ptr %i.xr, null
  br i1 %.not381, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @Gia_ManRemoveWrongChoices(ptr noundef nonnull %0) #27
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !184
  %.not382 = icmp eq ptr %i.xt, null
  %i.xu = zext i1 %.not382 to i32
  ret i32 %i.xu
}

declare void @Gia_ManSetPhase(ptr noundef) local_unnamed_addr #2

declare i32 @Gia_ManLevelNum(ptr noundef) local_unnamed_addr #2

declare void @Gia_ManCleanMark0(ptr noundef) local_unnamed_addr #2

declare void @Gia_ManCleanMark1(ptr noundef) local_unnamed_addr #2

declare ptr @CbsP_ManAlloc(ptr noundef) local_unnamed_addr #2

declare i32 @Gia_ManHashXorReal(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @Cec5_ManSweepNodeCbs(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #27
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %10, align 8, !tbaa !53
  %.neg140 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !55
  %.neg = sdiv i64 %i.f, -1000
  %.neg141 = add i64 %.neg, %.neg140
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg142 = phi i64 [ %.neg141, %bb.b ], [ 1, %bb.a ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %.val91 = load ptr, ptr %i.i, align 8, !tbaa !93 ; 2 uses
  %i.j = sext i32 %2 to i64                       ; 3 uses
  %i.k = getelementptr inbounds [12 x i8], ptr %.val91, i64 %i.j ; 2 uses
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = getelementptr inbounds [12 x i8], ptr %.val91, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !122  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !122  ; 2 uses
  %i.r = xor i32 %i.q, %i.o
  %i.s = and i32 %i.r, 1
  %i.t = load i64, ptr %i.k, align 4
  %i.u = lshr i64 %i.t, 63
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = xor i32 %i.s, %i.v
  %i.x = load i64, ptr %i.m, align 4
  %i.y = lshr i64 %i.x, 63
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = xor i32 %i.w, %i.z                      ; 2 uses
  %i.ab = ashr i32 %i.q, 1
  %i.ac = ashr i32 %i.o, 1
  %i.ad = load ptr, ptr %0, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 84
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !95
  %i.ag = call i32 @Cec5_ManSolveTwoCbs(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.aa, ptr noundef nonnull %i.a, i32 noundef %i.af, i32 poison)
  switch i32 %i.ag, label %bb.aw [
    i32 0, label %bb.c
    i32 1, label %bb.ap
  ]

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !88
  %i.aj = and i32 %2, 31
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !81
  %i.an = ashr i32 %2, 5
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22
  %i.ar = or i32 %i.aq, %i.ak
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.at = load <2 x i32>, ptr %i.as, align 8, !tbaa !22
  %i.au = add nsw <2 x i32> %i.at, splat (i32 1)
  store <2 x i32> %i.au, ptr %i.as, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !77
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 0, ptr %i.ax, align 4, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !283 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %.val87130 = load i32, ptr %i.ba, align 4, !tbaa !18
  %i.bb = icmp sgt i32 %.val87130, 0
  br i1 %i.bb, label %.lr.ph, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 836 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !172
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !172
  br label %.critedge2

.lr.ph:                                           ; preds = %bb.c, %Vec_IntPush.exit
  %i.bg = phi ptr [ %i.cf, %Vec_IntPush.exit ], [ %i.az, %bb.c ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %bb.c ] ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %.val89 = load ptr, ptr %i.bh, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val89, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !22
  %i.bk = load ptr, ptr %i.av, align 8, !tbaa !77 ; 6 uses
  %i.bl = xor i32 %i.bj, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !18 ; 7 uses
  %i.bo = load i32, ptr %i.bk, align 8, !tbaa !70
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %.lr.ph
  %i.bq = icmp slt i32 %i.bn, 16
  br i1 %i.bq, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !21 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bs, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bs, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.bu = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.bv = phi ptr [ %i.bt, %bb.f ], [ %i.bu, %bb.g ]
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.bw = icmp samesign ult i32 %i.bn, 1073741823
  %i.bx = shl nuw nsw i32 %i.bn, 1
  %spec.select.i = select i1 %i.bw, i32 %i.bx, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.bn, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !21 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.bz, null
  %i.ca = zext nneg i32 %spec.select.i to i64
  %i.cb = shl nuw nsw i64 %i.ca, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = call ptr @realloc(ptr noundef nonnull %i.bz, i64 noundef %i.cb) #29
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cd = call noalias ptr @malloc(i64 noundef %i.cb) #26
end_hunk_0
