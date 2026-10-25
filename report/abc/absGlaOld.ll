Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/absGlaOld?download=true
inline.NumInlined: 785
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Gla_ManRefinement2:bb.a
bb.dj:                                            ; preds = %Gla_ManCheckVar.exit
  %i.sq = load i32, ptr %i.ks, align 4
  %i.sr = and i32 %i.sq, 1
  %i.ss = load ptr, ptr %i.w, align 8, !tbaa !44
  %i.st = getelementptr i8, ptr %i.ss, i64 32
  %.val226 = load ptr, ptr %i.st, align 8, !tbaa !59
  %i.su = ptrtoint ptr %.val226 to i64
  %i.sv = sub i64 %i.jl, %i.su
  %i.sw = sdiv exact i64 %i.sv, 12
  %i.sx = load ptr, ptr %i.y, align 8, !tbaa !60
  %i.sy = shl i64 %i.sw, 32
  %i.sz = ashr exact i64 %i.sy, 32                ; 2 uses
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.sz
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !33 ; 2 uses
  %.not.i.i463 = icmp ne i32 %i.tb, 0
  tail call void @llvm.assume(i1 %.not.i.i463)
  %i.tc = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.td = sext i32 %i.tb to i64
  %i.te = getelementptr inbounds [40 x i8], ptr %i.tc, i64 %i.td ; 6 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 24 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 28 ; 3 uses
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !20 ; 3 uses
  %i.ti = sext i32 %i.th to i64                   ; 3 uses
  %.not.i.not.i.i464 = icmp slt i64 %indvars.iv518, %i.ti
  br i1 %.not.i.not.i.i464, label %Gla_ManCheckVar.exit480, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.tj = load i32, ptr %i.tf, align 8, !tbaa !21 ; 4 uses
  %i.tk = shl nsw i32 %i.tj, 1                    ; 2 uses
  %i.tl = sext i32 %i.tk to i64
  %.not.i4.i465 = icmp slt i64 %indvars.iv518, %i.tl
  br i1 %.not.i4.i465, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.tm = getelementptr inbounds nuw i8, ptr %i.te, i64 32 ; 2 uses
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !22 ; 2 uses
  %.not9.i.i.i.i467 = icmp eq ptr %i.tn, null
  br i1 %.not9.i.i.i.i467, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.to = tail call ptr @realloc(ptr noundef nonnull %i.tn, i64 noundef %i.ix) #28
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.tp = tail call noalias ptr @malloc(i64 noundef %i.ix) #27
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.tq = phi ptr [ %i.to, %bb.dm ], [ %i.tp, %bb.dn ]
  store ptr %i.tq, ptr %i.tm, align 8, !tbaa !22
  br label %Vec_IntGrow.exit.sink.split.i.i.i468

bb.dp:                                            ; preds = %bb.dk
  %i.tr = sext i32 %i.tj to i64
  %.not.i.i.not.i.i466 = icmp slt i64 %indvars.iv518, %i.tr
  br i1 %.not.i.i.not.i.i466, label %Vec_IntGrow.exit.i.i.i471, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ts = icmp slt i32 %i.tj, 1073741823
  %spec.select.i.i.i477 = select i1 %i.ts, i32 %i.tk, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i478 = icmp slt i32 %i.tj, %spec.select.i.i.i477
  br i1 %.not.i22.i.i.i478, label %bb.dr, label %Vec_IntGrow.exit.i.i.i471

bb.dr:                                            ; preds = %bb.dq
  %i.tt = getelementptr inbounds nuw i8, ptr %i.te, i64 32 ; 2 uses
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !22 ; 2 uses
  %.not9.i23.i.i.i479 = icmp eq ptr %i.tu, null
  %i.tv = sext i32 %spec.select.i.i.i477 to i64
  %i.tw = shl nuw nsw i64 %i.tv, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i479, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.tx = tail call ptr @realloc(ptr noundef nonnull %i.tu, i64 noundef %i.tw) #28
  br label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.ty = tail call noalias ptr @malloc(i64 noundef %i.tw) #27
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.tz = phi ptr [ %i.tx, %bb.ds ], [ %i.ty, %bb.dt ]
  store ptr %i.tz, ptr %i.tt, align 8, !tbaa !22
  br label %Vec_IntGrow.exit.sink.split.i.i.i468

Vec_IntGrow.exit.sink.split.i.i.i468:             ; preds = %bb.du, %bb.do
  %spec.select.sink.i.i.i469 = phi i32 [ %spec.select.i.i.i477, %bb.du ], [ %i.jb, %bb.do ]
  store i32 %spec.select.sink.i.i.i469, ptr %i.tf, align 8, !tbaa !21
  %.pre.i.i470 = load i32, ptr %i.tg, align 4, !tbaa !20 ; 2 uses
  %.pre550 = sext i32 %.pre.i.i470 to i64
  br label %Vec_IntGrow.exit.i.i.i471

Vec_IntGrow.exit.i.i.i471:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i468, %bb.dq, %bb.dp
  %.pre-phi551 = phi i64 [ %.pre550, %Vec_IntGrow.exit.sink.split.i.i.i468 ], [ %i.ti, %bb.dq ], [ %i.ti, %bb.dp ] ; 2 uses
  %i.ua = phi i32 [ %.pre.i.i470, %Vec_IntGrow.exit.sink.split.i.i.i468 ], [ %i.th, %bb.dq ], [ %i.th, %bb.dp ]
  %.not3.i.i472 = icmp sgt i64 %.pre-phi551, %indvars.iv518
  br i1 %.not3.i.i472, label %._crit_edge.i.i.i475, label %.lr.ph.i.i.i473

.lr.ph.i.i.i473:                                  ; preds = %Vec_IntGrow.exit.i.i.i471
  %i.ub = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !22
  %i.ud = shl nsw i64 %.pre-phi551, 2
  %scevgep.i.i.i474 = getelementptr i8, ptr %i.uc, i64 %i.ud
  %i.ue = sub i32 %i.ad, %i.ua
  %i.uf = zext i32 %i.ue to i64
  %i.ug = shl nuw nsw i64 %i.uf, 2
  %i.uh = add nuw nsw i64 %i.ug, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i474, i8 0, i64 %i.uh, i1 false), !tbaa !33
  br label %._crit_edge.i.i.i475

._crit_edge.i.i.i475:                             ; preds = %.lr.ph.i.i.i473, %Vec_IntGrow.exit.i.i.i471
  store i32 %i.jb, ptr %i.tg, align 4, !tbaa !20
  br label %Gla_ManCheckVar.exit480

Gla_ManCheckVar.exit480:                          ; preds = %bb.dj, %._crit_edge.i.i.i475
  %i.ui = getelementptr i8, ptr %i.te, i64 32
  %.val.i.i476 = load ptr, ptr %i.ui, align 8, !tbaa !22
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i476, i64 %indvars.iv518
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !33
  %i.ul = icmp slt i32 %i.uk, 1
  br i1 %i.ul, label %Gla_ObjSatValue.exit372, label %bb.dv

bb.dv:                                            ; preds = %Gla_ManCheckVar.exit480
  %i.um = load ptr, ptr %i.aa, align 8, !tbaa !61
  %i.un = load ptr, ptr %i.y, align 8, !tbaa !60
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.sz
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !33
  %i.uq = tail call fastcc i32 @Gla_ManGetVar(ptr noundef nonnull %0, i32 noundef %i.up, i32 noundef %i.ad)
  %i.ur = getelementptr i8, ptr %i.um, i64 288
  %.val.i371 = load ptr, ptr %i.ur, align 8, !tbaa !74
  %i.us = sext i32 %i.uq to i64
  %i.ut = getelementptr inbounds [4 x i8], ptr %.val.i371, i64 %i.us
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !33
  %i.uv = icmp eq i32 %i.uu, 1
  %i.uw = zext i1 %i.uv to i32
  br label %Gla_ObjSatValue.exit372

Gla_ObjSatValue.exit372:                          ; preds = %Gla_ManCheckVar.exit480, %bb.dv
  %i.ux = phi i32 [ %i.uw, %bb.dv ], [ 0, %Gla_ManCheckVar.exit480 ]
  %.not208 = icmp eq i32 %i.sr, %i.ux
  br i1 %.not208, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %Gla_ObjSatValue.exit372
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.1)
  %i.uy = load ptr, ptr %i.w, align 8, !tbaa !44
  tail call void @Gia_ObjPrint(ptr noundef %i.uy, ptr noundef nonnull %i.jk) #29
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %Gla_ObjSatValue.exit372, %Gla_ManCheckVar.exit, %Gla_ObjRef.exit353
  %i.uz = load i32, ptr %i.ks, align 4            ; 2 uses
  %i.va = and i32 %i.uz, 1
  %.not209 = icmp eq i32 %i.va, 0
  %i.vb = load i32, ptr %i.ou, align 4            ; 4 uses
  br i1 %.not209, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.vc = lshr i32 %i.vb, 3
  %i.vd = and i32 %i.vc, 65535
  %i.ve = load i32, ptr %i.qi, align 4
  %i.vf = lshr i32 %i.ve, 3
  %i.vg = and i32 %i.vf, 65535
  %i.vh = tail call i32 @llvm.umax.i32(i32 %i.vd, i32 %i.vg)
  %i.vi = shl nuw nsw i32 %i.vh, 3
  br label %bb.ee

bb.dz:                                            ; preds = %bb.dx
  %.val260 = load i64, ptr %i.jk, align 4         ; 2 uses
  %i.vj = trunc i64 %.val260 to i32
  %i.vk = lshr i32 %i.vj, 29
  %i.vl = xor i32 %i.vk, %i.vb
  %i.vm = and i32 %i.vl, 1
  %i.vn = icmp eq i32 %i.vm, 0
  %i.vo = load i32, ptr %i.qi, align 4            ; 3 uses
  br i1 %i.vn, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.vp = lshr i64 %.val260, 61
  %i.vq = trunc nuw nsw i64 %i.vp to i32
  %i.vr = xor i32 %i.vo, %i.vq
  %i.vs = and i32 %i.vr, 1
  %i.vt = icmp eq i32 %i.vs, 0
  br i1 %i.vt, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.vu = lshr i32 %i.vb, 3
  %i.vv = and i32 %i.vu, 65535
  %i.vw = lshr i32 %i.vo, 3
  %i.vx = and i32 %i.vw, 65535
  %i.vy = tail call i32 @llvm.umin.i32(i32 %i.vv, i32 %i.vx)
  %i.vz = shl nuw nsw i32 %i.vy, 3
  br label %bb.ee

bb.ec:                                            ; preds = %bb.ea
  %i.wa = and i32 %i.vb, 524280
  br label %bb.ee

bb.ed:                                            ; preds = %bb.dz
  %i.wb = and i32 %i.vo, 524280
  br label %bb.ee

bb.ee:                                            ; preds = %bb.eb, %bb.ed, %bb.ec, %bb.dy
  %.sink625 = phi i32 [ -524282, %bb.eb ], [ -524282, %bb.ed ], [ -524282, %bb.ec ], [ -524281, %bb.dy ]
  %.sink = phi i32 [ %i.vz, %bb.eb ], [ %i.wb, %bb.ed ], [ %i.wa, %bb.ec ], [ %i.vi, %bb.dy ]
  %i.wc = and i32 %i.uz, %.sink625
  %1 = or disjoint i32 %.sink, %i.wc
  %i.wd = load i32, ptr @Gla_ManRefinement2.Sign, align 4, !tbaa !33 ; 3 uses
  %i.we = shl i32 %i.wd, 19
  %i.wf = and i32 %i.we, 2146959360
  %i.wg = and i32 %1, -2146959361
  %i.wh = or disjoint i32 %i.wg, %i.wf
  br label %bb.ef

bb.ef:                                            ; preds = %bb.bo, %Gla_ObjRef.exit319, %bb.ee
  %.sink626 = phi i32 [ %i.lc, %bb.bo ], [ %i.ne, %Gla_ObjRef.exit319 ], [ %i.wh, %bb.ee ]
  %i.wi = phi i32 [ %i.jd, %bb.bo ], [ %i.jd, %Gla_ObjRef.exit319 ], [ %i.wd, %bb.ee ] ; 2 uses
  %i.wj = phi i32 [ %i.jd, %bb.bo ], [ %i.je, %Gla_ObjRef.exit319 ], [ %i.wd, %bb.ee ]
  store i32 %.sink626, ptr %i.ks, align 4
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 2 uses
  %.val212 = load i32, ptr %i.p, align 4, !tbaa !20
  %i.wk = sext i32 %.val212 to i64
  %i.wl = icmp slt i64 %indvars.iv.next511, %i.wk
  br i1 %i.wl, label %bb.ba, label %.critedge4, !llvm.loop !173

.critedge4:                                       ; preds = %bb.ba, %bb.ef, %.critedge2
  %i.wm = phi i32 [ %i.iu, %.critedge2 ], [ %i.jd, %bb.ba ], [ %i.wi, %bb.ef ]
  %.val211 = load i32, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.wn = icmp sgt i32 %.val211, 0
  br i1 %i.wn, label %.lr.ph494, label %.critedge4..critedge6_crit_edge

.critedge4..critedge6_crit_edge:                  ; preds = %.critedge4
  %.pre570 = add nuw nsw i64 %indvars.iv518, 1
  br label %.critedge6

.lr.ph494:                                        ; preds = %.critedge4
  %.val216 = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.wo = add nuw nsw i64 %indvars.iv518, 1       ; 4 uses
  %i.wp = shl nuw nsw i64 %i.wo, 2                ; 4 uses
  %i.wq = shl i32 %i.wm, 19
  %i.wr = and i32 %i.wq, 2146959360
  %wide.trip.count516 = zext nneg i32 %.val211 to i64
  %i.ws = trunc nsw i64 %i.wo to i32              ; 4 uses
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph494, %Gla_ObjRef.exit406
  %indvars.iv513 = phi i64 [ 0, %.lr.ph494 ], [ %indvars.iv.next514, %Gla_ObjRef.exit406 ] ; 2 uses
  %i.wt = load ptr, ptr %i.w, align 8, !tbaa !44
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %.val216, i64 %indvars.iv513
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !33
  %i.ww = getelementptr i8, ptr %i.wt, i64 32
  %.val221 = load ptr, ptr %i.ww, align 8, !tbaa !59 ; 3 uses
  %i.wx = sext i32 %i.wv to i64                   ; 2 uses
  %i.wy = getelementptr inbounds [12 x i8], ptr %.val221, i64 %i.wx ; 3 uses
  %.not204 = icmp eq ptr %.val221, null
  br i1 %.not204, label %.critedge6, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %.val243 = load ptr, ptr %i.x, align 8, !tbaa !84 ; 2 uses
  %i.wz = shl nsw i64 %i.wx, 4
  %i.xa = getelementptr inbounds i8, ptr %.val243, i64 %i.wz ; 7 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 4 ; 3 uses
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !20 ; 3 uses
  %i.xd = sext i32 %i.xc to i64                   ; 3 uses
  %.not.i.not.i.i373 = icmp slt i64 %indvars.iv518, %i.xd
  br i1 %.not.i.not.i.i373, label %Gla_ObjRef.exit389, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.xe = load i32, ptr %i.xa, align 8, !tbaa !21 ; 4 uses
  %i.xf = shl nsw i32 %i.xe, 1                    ; 2 uses
  %i.xg = sext i32 %i.xf to i64
  %.not.i.i374 = icmp slt i64 %indvars.iv518, %i.xg
  br i1 %.not.i.i374, label %bb.en, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xa, i64 8 ; 2 uses
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !22 ; 2 uses
  %.not9.i.i.i.i376 = icmp eq ptr %i.xi, null
  br i1 %.not9.i.i.i.i376, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.xj = tail call ptr @realloc(ptr noundef nonnull %i.xi, i64 noundef %i.wp) #28
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.xk = tail call noalias ptr @malloc(i64 noundef %i.wp) #27
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.xl = phi ptr [ %i.xj, %bb.ek ], [ %i.xk, %bb.el ]
  store ptr %i.xl, ptr %i.xh, align 8, !tbaa !22
  br label %Vec_IntGrow.exit.sink.split.i.i.i377

bb.en:                                            ; preds = %bb.ei
  %i.xm = sext i32 %i.xe to i64
  %.not.i.i.not.i.i375 = icmp slt i64 %indvars.iv518, %i.xm
  br i1 %.not.i.i.not.i.i375, label %Vec_IntGrow.exit.i.i.i380, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.xn = icmp slt i32 %i.xe, 1073741823
  %spec.select.i.i.i386 = select i1 %i.xn, i32 %i.xf, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i387 = icmp slt i32 %i.xe, %spec.select.i.i.i386
  br i1 %.not.i22.i.i.i387, label %bb.ep, label %Vec_IntGrow.exit.i.i.i380

bb.ep:                                            ; preds = %bb.eo
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xa, i64 8 ; 2 uses
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !22 ; 2 uses
  %.not9.i23.i.i.i388 = icmp eq ptr %i.xp, null
  %i.xq = sext i32 %spec.select.i.i.i386 to i64
  %i.xr = shl nuw nsw i64 %i.xq, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i388, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.xs = tail call ptr @realloc(ptr noundef nonnull %i.xp, i64 noundef %i.xr) #28
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  %i.xt = tail call noalias ptr @malloc(i64 noundef %i.xr) #27
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.xu = phi ptr [ %i.xs, %bb.eq ], [ %i.xt, %bb.er ]
  store ptr %i.xu, ptr %i.xo, align 8, !tbaa !22
  br label %Vec_IntGrow.exit.sink.split.i.i.i377

Vec_IntGrow.exit.sink.split.i.i.i377:             ; preds = %bb.es, %bb.em
  %spec.select.sink.i.i.i378 = phi i32 [ %spec.select.i.i.i386, %bb.es ], [ %i.ws, %bb.em ]
  store i32 %spec.select.sink.i.i.i378, ptr %i.xa, align 8, !tbaa !21
  %.pre.i.i379 = load i32, ptr %i.xb, align 4, !tbaa !20 ; 2 uses
  %.pre546 = sext i32 %.pre.i.i379 to i64
  br label %Vec_IntGrow.exit.i.i.i380

Vec_IntGrow.exit.i.i.i380:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i377, %bb.eo, %bb.en
  %.pre-phi547 = phi i64 [ %.pre546, %Vec_IntGrow.exit.sink.split.i.i.i377 ], [ %i.xd, %bb.eo ], [ %i.xd, %bb.en ] ; 2 uses
  %i.xv = phi i32 [ %.pre.i.i379, %Vec_IntGrow.exit.sink.split.i.i.i377 ], [ %i.xc, %bb.eo ], [ %i.xc, %bb.en ]
  %.not3.i.i381 = icmp sgt i64 %.pre-phi547, %indvars.iv518
  br i1 %.not3.i.i381, label %._crit_edge.i.i.i384, label %.lr.ph.i.i.i382

.lr.ph.i.i.i382:                                  ; preds = %Vec_IntGrow.exit.i.i.i380
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xa, i64 8
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !22
  %i.xy = shl nsw i64 %.pre-phi547, 2
  %scevgep.i.i.i383 = getelementptr i8, ptr %i.xx, i64 %i.xy
  %i.xz = sub i32 %i.ad, %i.xv
  %i.ya = zext i32 %i.xz to i64
  %i.yb = shl nuw nsw i64 %i.ya, 2
  %i.yc = add nuw nsw i64 %i.yb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i383, i8 0, i64 %i.yc, i1 false), !tbaa !33
  br label %._crit_edge.i.i.i384

._crit_edge.i.i.i384:                             ; preds = %.lr.ph.i.i.i382, %Vec_IntGrow.exit.i.i.i380
  store i32 %i.ws, ptr %i.xb, align 4, !tbaa !20
  %.val240.pre = load ptr, ptr %i.w, align 8, !tbaa !44
  %.val241.pre = load ptr, ptr %i.x, align 8, !tbaa !84
  %.phi.trans.insert540 = getelementptr i8, ptr %.val240.pre, i64 32
  %.val240.val.pre = load ptr, ptr %.phi.trans.insert540, align 8, !tbaa !59
  br label %Gla_ObjRef.exit389

Gla_ObjRef.exit389:                               ; preds = %bb.eh, %._crit_edge.i.i.i384
  %.val240.val = phi ptr [ %.val221, %bb.eh ], [ %.val240.val.pre, %._crit_edge.i.i.i384 ]
  %.val241 = phi ptr [ %.val243, %bb.eh ], [ %.val241.pre, %._crit_edge.i.i.i384 ]
  %i.yd = getelementptr i8, ptr %i.xa, i64 8
  %.val.i.i385 = load ptr, ptr %i.yd, align 8, !tbaa !22
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i385, i64 %indvars.iv518 ; 4 uses
  store i32 0, ptr %i.ye, align 4, !tbaa !33
  %i.yf = load i64, ptr %i.wy, align 4            ; 2 uses
  %i.yg = and i64 %i.yf, 536870911
  %i.yh = sub nsw i64 0, %i.yg
  %i.yi = getelementptr inbounds [12 x i8], ptr %i.wy, i64 %i.yh
  %i.yj = ptrtoint ptr %i.yi to i64
  %i.yk = ptrtoint ptr %.val240.val to i64
  %i.yl = sub i64 %i.yj, %i.yk
  %i.ym = sdiv exact i64 %i.yl, 12
  %i.yn = shl i64 %i.ym, 32
  %i.yo = ashr exact i64 %i.yn, 28
  %i.yp = getelementptr inbounds i8, ptr %.val241, i64 %i.yo ; 7 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 4 ; 3 uses
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !20 ; 3 uses
  %i.ys = sext i32 %i.yr to i64                   ; 3 uses
  %.not.i.not.i.i390 = icmp slt i64 %indvars.iv518, %i.ys
  br i1 %.not.i.not.i.i390, label %Gla_ObjRef.exit406, label %bb.et

bb.et:                                            ; preds = %Gla_ObjRef.exit389
  %i.yt = load i32, ptr %i.yp, align 8, !tbaa !21 ; 4 uses
  %i.yu = shl nsw i32 %i.yt, 1                    ; 2 uses
  %i.yv = sext i32 %i.yu to i64
  %.not.i.i391 = icmp slt i64 %indvars.iv518, %i.yv
  br i1 %.not.i.i391, label %bb.ey, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yp, i64 8 ; 2 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !22 ; 2 uses
  %.not9.i.i.i.i393 = icmp eq ptr %i.yx, null
  br i1 %.not9.i.i.i.i393, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.yy = tail call ptr @realloc(ptr noundef nonnull %i.yx, i64 noundef %i.wp) #28
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.yz = tail call noalias ptr @malloc(i64 noundef %i.wp) #27
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.za = phi ptr [ %i.yy, %bb.ev ], [ %i.yz, %bb.ew ]
  store ptr %i.za, ptr %i.yw, align 8, !tbaa !22
  br label %Vec_IntGrow.exit.sink.split.i.i.i394

bb.ey:                                            ; preds = %bb.et
  %i.zb = sext i32 %i.yt to i64
  %.not.i.i.not.i.i392 = icmp slt i64 %indvars.iv518, %i.zb
  br i1 %.not.i.i.not.i.i392, label %Vec_IntGrow.exit.i.i.i397, label %bb.ez
end_hunk_0
