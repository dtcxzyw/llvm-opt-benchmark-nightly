Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcGen?download=true
inline.NumInlined: 292
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_GenATDual:bb.a
  %i.ry = add nuw nsw i64 %indvars.iv703, 1       ; 2 uses
  %i.rz = sext i32 %.val335 to i64
  %i.sa = icmp slt i64 %i.ry, %i.rz
  br i1 %i.sa, label %bb.cr, label %thread-pre-split

bb.cr:                                            ; preds = %Vec_WecPush.exit425
  %i.sb = getelementptr inbounds nuw [16 x i8], ptr %.val.i429, i64 %i.ry ; 6 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 4 ; 3 uses
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !15 ; 7 uses
  %i.se = load i32, ptr %i.sb, align 8, !tbaa !44
  %i.sf = icmp eq i32 %i.sd, %i.se
  br i1 %i.sf, label %bb.cs, label %Vec_WecPush.exit440

bb.cs:                                            ; preds = %bb.cr
  %i.sg = icmp slt i32 %i.sd, 16
  br i1 %i.sg, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sb, i64 8 ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !16 ; 2 uses
  %.not9.i.i.i436 = icmp eq ptr %i.si, null
  br i1 %.not9.i.i.i436, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.si, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i437

bb.cv:                                            ; preds = %bb.ct
  %i.sk = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i437

Vec_IntGrow.exit.i.i437:                          ; preds = %bb.cv, %bb.cu
  %i.sl = phi ptr [ %i.sj, %bb.cu ], [ %i.sk, %bb.cv ]
  store ptr %i.sl, ptr %i.sh, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i433

bb.cw:                                            ; preds = %bb.cs
  %i.sm = icmp samesign ult i32 %i.sd, 1073741823
  %i.sn = shl nuw nsw i32 %i.sd, 1
  %spec.select.i.i430 = select i1 %i.sm, i32 %i.sn, i32 2147483647 ; 3 uses
  %.not.i9.i.i431 = icmp samesign ult i32 %i.sd, %spec.select.i.i430
  br i1 %.not.i9.i.i431, label %bb.cx, label %Vec_WecPush.exit440

bb.cx:                                            ; preds = %bb.cw
  %i.so = getelementptr inbounds nuw i8, ptr %i.sb, i64 8 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !16 ; 2 uses
  %.not9.i10.i.i432 = icmp eq ptr %i.sp, null
  %i.sq = zext nneg i32 %spec.select.i.i430 to i64
  %i.sr = shl nuw nsw i64 %i.sq, 2                ; 2 uses
  br i1 %.not9.i10.i.i432, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ss = tail call ptr @realloc(ptr noundef nonnull %i.sp, i64 noundef %i.sr) #24
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.st = tail call noalias ptr @malloc(i64 noundef %i.sr) #23
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.su = phi ptr [ %i.ss, %bb.cy ], [ %i.st, %bb.cz ]
  store ptr %i.su, ptr %i.so, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i433

Vec_IntGrow.exit11.sink.split.i.i433:             ; preds = %bb.da, %Vec_IntGrow.exit.i.i437
  %spec.select.sink.i.i434 = phi i32 [ %spec.select.i.i430, %bb.da ], [ 16, %Vec_IntGrow.exit.i.i437 ]
  store i32 %spec.select.sink.i.i434, ptr %i.sb, align 8, !tbaa !44
  %.pre.i435 = load i32, ptr %i.sc, align 4, !tbaa !15
  br label %Vec_WecPush.exit440

Vec_WecPush.exit440:                              ; preds = %bb.cr, %bb.cw, %Vec_IntGrow.exit11.sink.split.i.i433
  %i.sv = phi i32 [ %i.sd, %bb.cr ], [ %i.sd, %bb.cw ], [ %.pre.i435, %Vec_IntGrow.exit11.sink.split.i.i433 ] ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !16
  %i.sy = add nsw i32 %i.sv, 1
  store i32 %i.sy, ptr %i.sc, align 4, !tbaa !15
  %i.sz = sext i32 %i.sv to i64
  %i.ta = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.sz
  store i32 %i.pt, ptr %i.ta, align 4, !tbaa !17
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %Vec_WecPush.exit440, %Vec_WecPush.exit425
  %.val.i414766 = phi ptr [ %.val.i429, %Vec_WecPush.exit440 ], [ %.val.i414, %Vec_WecPush.exit425 ] ; 4 uses
  %.val309.pr = load i32, ptr %i.fv, align 4, !tbaa !15
  br label %bb.db

bb.db:                                            ; preds = %thread-pre-split, %._crit_edge632
  %.val.i507843 = phi ptr [ %.val.i507845, %thread-pre-split ], [ %.val.i507846, %._crit_edge632 ] ; 6 uses
  %i.tb = phi i32 [ %i.qq, %thread-pre-split ], [ %i.ot, %._crit_edge632 ] ; 6 uses
  %i.tc = phi i32 [ %i.qr, %thread-pre-split ], [ %i.ou, %._crit_edge632 ] ; 5 uses
  %.val330 = phi ptr [ %.val330826, %thread-pre-split ], [ %.val330827, %._crit_edge632 ] ; 10 uses
  %.val.i491807 = phi ptr [ %.val.i491809, %thread-pre-split ], [ %.val.i491810, %._crit_edge632 ] ; 3 uses
  %i.td = phi i32 [ %i.qs, %thread-pre-split ], [ %i.ov, %._crit_edge632 ] ; 6 uses
  %i.te = phi i32 [ %i.qt, %thread-pre-split ], [ %i.ow, %._crit_edge632 ] ; 5 uses
  %i.tf = phi i32 [ %i.qu, %thread-pre-split ], [ %i.ox, %._crit_edge632 ] ; 9 uses
  %i.tg = phi ptr [ %.val.i429, %thread-pre-split ], [ %.val.i429791, %._crit_edge632 ] ; 5 uses
  %i.th = phi i32 [ %.val335, %thread-pre-split ], [ %.val335775, %._crit_edge632 ] ; 6 uses
  %.val.i414764 = phi ptr [ %.val.i414766, %thread-pre-split ], [ %.val.i414768, %._crit_edge632 ]
  %i.ti = phi i32 [ %i.qv, %thread-pre-split ], [ %i.oy, %._crit_edge632 ] ; 5 uses
  %.val.i399751 = phi ptr [ %.val.i414766, %thread-pre-split ], [ %i.oz, %._crit_edge632 ]
  %i.tj = phi i32 [ %i.qw, %thread-pre-split ], [ %i.pa, %._crit_edge632 ] ; 5 uses
  %i.tk = phi i32 [ %.val335, %thread-pre-split ], [ %i.pb, %._crit_edge632 ] ; 4 uses
  %.val336745 = phi i32 [ %.val335, %thread-pre-split ], [ %.val336746, %._crit_edge632 ] ; 4 uses
  %.val.i369736 = phi ptr [ %.val.i414766, %thread-pre-split ], [ %.val.i369737, %._crit_edge632 ]
  %i.tl = phi ptr [ %.val.i414766, %thread-pre-split ], [ %i.pc, %._crit_edge632 ]
  %i.tm = phi i32 [ %i.qx, %thread-pre-split ], [ %i.pd, %._crit_edge632 ] ; 5 uses
  %i.tn = phi i32 [ %.val335, %thread-pre-split ], [ %i.pe, %._crit_edge632 ] ; 4 uses
  %.val309 = phi i32 [ %.val309.pr, %thread-pre-split ], [ %.val312.lcssa, %._crit_edge632 ]
  %.3279 = phi i32 [ %i.pw, %thread-pre-split ], [ %.2278.lcssa, %._crit_edge632 ] ; 2 uses
  %.6272 = phi i32 [ %.5271, %thread-pre-split ], [ %.2268.lcssa, %._crit_edge632 ] ; 2 uses
  %.8 = phi i32 [ %i.pu, %thread-pre-split ], [ %.4263.lcssa, %._crit_edge632 ] ; 2 uses
  %i.to = icmp eq i32 %.val309, 2
  br i1 %i.to, label %bb.dc, label %bb.es

bb.dc:                                            ; preds = %bb.db
  %i.tp = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !16 ; 2 uses
  store i32 1, ptr %i.fv, align 4, !tbaa !15
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !17 ; 3 uses
  store i32 0, ptr %i.fv, align 4, !tbaa !15
  %i.tt = load i32, ptr %i.tq, align 4, !tbaa !17 ; 4 uses
  %i.tu = icmp slt i32 %i.ts, 0
  br i1 %i.tu, label %bb.dd, label %bb.dq

bb.dd:                                            ; preds = %bb.dc
  %i.tv = getelementptr inbounds nuw [16 x i8], ptr %.val330, i64 %indvars.iv703 ; 8 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 4 ; 8 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !15 ; 7 uses
  %i.ty = load i32, ptr %i.tv, align 8, !tbaa !44
  %i.tz = icmp eq i32 %i.tx, %i.ty
  br i1 %i.tz, label %bb.de, label %Vec_IntPush.exit.i

bb.de:                                            ; preds = %bb.dd
  %i.ua = icmp slt i32 %i.tx, 16
  br i1 %i.ua, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tv, i64 8 ; 2 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !16 ; 2 uses
  %.not9.i.i.i452 = icmp eq ptr %i.uc, null
  br i1 %.not9.i.i.i452, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ud = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.uc, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i453

bb.dh:                                            ; preds = %bb.df
  %i.ue = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i453

Vec_IntGrow.exit.i.i453:                          ; preds = %bb.dh, %bb.dg
  %i.uf = phi ptr [ %i.ud, %bb.dg ], [ %i.ue, %bb.dh ]
  store ptr %i.uf, ptr %i.ub, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i449

bb.di:                                            ; preds = %bb.de
  %i.ug = icmp samesign ult i32 %i.tx, 1073741823
  %i.uh = shl nuw nsw i32 %i.tx, 1
  %spec.select.i.i446 = select i1 %i.ug, i32 %i.uh, i32 2147483647 ; 3 uses
  %.not.i9.i.i447 = icmp samesign ult i32 %i.tx, %spec.select.i.i446
  br i1 %.not.i9.i.i447, label %bb.dj, label %Vec_IntPush.exit.i

bb.dj:                                            ; preds = %bb.di
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tv, i64 8 ; 2 uses
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !16 ; 2 uses
  %.not9.i10.i.i448 = icmp eq ptr %i.uj, null
  %i.uk = zext nneg i32 %spec.select.i.i446 to i64
  %i.ul = shl nuw nsw i64 %i.uk, 2                ; 2 uses
  br i1 %.not9.i10.i.i448, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.um = tail call ptr @realloc(ptr noundef nonnull %i.uj, i64 noundef %i.ul) #24
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.un = tail call noalias ptr @malloc(i64 noundef %i.ul) #23
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.uo = phi ptr [ %i.um, %bb.dk ], [ %i.un, %bb.dl ]
  store ptr %i.uo, ptr %i.ui, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i449

Vec_IntGrow.exit11.sink.split.i.i449:             ; preds = %bb.dm, %Vec_IntGrow.exit.i.i453
  %spec.select.sink.i.i450 = phi i32 [ %spec.select.i.i446, %bb.dm ], [ 16, %Vec_IntGrow.exit.i.i453 ]
  store i32 %spec.select.sink.i.i450, ptr %i.tv, align 8, !tbaa !44
  %.pre.i451 = load i32, ptr %i.tw, align 4, !tbaa !15
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i449, %bb.di, %bb.dd
  %i.up = phi i32 [ %i.tx, %bb.dd ], [ %i.tx, %bb.di ], [ %.pre.i451, %Vec_IntGrow.exit11.sink.split.i.i449 ] ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tv, i64 8 ; 2 uses
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !16 ; 9 uses
  %i.us = add nsw i32 %i.up, 1
  store i32 %i.us, ptr %i.tw, align 4, !tbaa !15
  %i.ut = sext i32 %i.up to i64
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %i.ut
  store i32 0, ptr %i.uu, align 4, !tbaa !17
  %i.uv = load i32, ptr %i.tw, align 4, !tbaa !15 ; 4 uses
  %.011.i441 = add i32 %i.uv, -1                  ; 2 uses
  %i.uw = icmp sgt i32 %i.uv, 1
  br i1 %i.uw, label %.lr.ph.preheader.i, label %Vec_IntInsert.exit

.lr.ph.preheader.i:                               ; preds = %Vec_IntPush.exit.i
  %i.ux = zext i32 %.011.i441 to i64              ; 5 uses
  %i.uy = zext nneg i32 %i.uv to i64              ; 3 uses
  %min.iters.check1104 = icmp ult i32 %i.uv, 9
  br i1 %min.iters.check1104, label %.lr.ph.i443.preheader, label %vector.ph1105

vector.ph1105:                                    ; preds = %.lr.ph.preheader.i
  %n.vec1106 = and i64 %i.ux, 4294967288          ; 3 uses
  %i.uz = sub nsw i64 %i.uy, %n.vec1106
  %2 = and i64 %i.ux, 7
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %vector.ph1105
  %index1108 = phi i64 [ 0, %vector.ph1105 ], [ %index.next1111, %vector.body1107 ] ; 3 uses
  %i.va = sub i64 %i.uy, %index1108
  %i.vb = sub i64 %i.ux, %index1108
  %i.vc = getelementptr [4 x i8], ptr %i.ur, i64 %i.va ; 2 uses
  %i.vd = getelementptr i8, ptr %i.vc, i64 -20
  %i.ve = getelementptr i8, ptr %i.vc, i64 -36
  %wide.load1109 = load <4 x i32>, ptr %i.vd, align 4, !tbaa !17
  %wide.load1110 = load <4 x i32>, ptr %i.ve, align 4, !tbaa !17
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.vb ; 2 uses
  %i.vg = getelementptr inbounds i8, ptr %i.vf, i64 -12
  %i.vh = getelementptr inbounds i8, ptr %i.vf, i64 -28
  store <4 x i32> %wide.load1109, ptr %i.vg, align 4, !tbaa !17
  store <4 x i32> %wide.load1110, ptr %i.vh, align 4, !tbaa !17
  %index.next1111 = add nuw i64 %index1108, 8     ; 2 uses
  %i.vi = icmp eq i64 %index.next1111, %n.vec1106
  br i1 %i.vi, label %middle.block1112, label %vector.body1107, !llvm.loop !235

middle.block1112:                                 ; preds = %vector.body1107
  %cmp.n1113 = icmp eq i64 %n.vec1106, %i.ux
  br i1 %cmp.n1113, label %Vec_IntInsert.exit, label %.lr.ph.i443.preheader

.lr.ph.i443.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block1112
  %indvars.iv16.i.ph = phi i64 [ %i.uy, %.lr.ph.preheader.i ], [ %i.uz, %middle.block1112 ]
  %indvars.iv.i444.ph = phi i64 [ %i.ux, %.lr.ph.preheader.i ], [ %2, %middle.block1112 ]
  br label %.lr.ph.i443

.lr.ph.i443:                                      ; preds = %.lr.ph.i443.preheader, %.lr.ph.i443
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %.lr.ph.i443 ], [ %indvars.iv16.i.ph, %.lr.ph.i443.preheader ] ; 2 uses
  %indvars.iv.i444 = phi i64 [ %indvars.iv.next.i445, %.lr.ph.i443 ], [ %indvars.iv.i444.ph, %.lr.ph.i443.preheader ] ; 3 uses
  %i.vj = getelementptr [4 x i8], ptr %i.ur, i64 %indvars.iv16.i
  %i.vk = getelementptr i8, ptr %i.vj, i64 -8
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !17
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv.i444
  store i32 %i.vl, ptr %i.vm, align 4, !tbaa !17
  %indvars.iv.next.i445 = add nsw i64 %indvars.iv.i444, -1
  %i.vn = icmp samesign ugt i64 %indvars.iv.i444, 1
  %indvars.iv.next17.i = add nsw i64 %indvars.iv16.i, -1
  br i1 %i.vn, label %.lr.ph.i443, label %Vec_IntInsert.exit, !llvm.loop !236

Vec_IntInsert.exit:                               ; preds = %.lr.ph.i443, %middle.block1112, %Vec_IntPush.exit.i
  %.0.lcssa.i442 = phi i32 [ %.011.i441, %Vec_IntPush.exit.i ], [ 0, %middle.block1112 ], [ 0, %.lr.ph.i443 ]
  %i.vo = sext i32 %.0.lcssa.i442 to i64
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.ur, i64 %i.vo
  store i32 %i.ts, ptr %i.vp, align 4, !tbaa !17
  %i.vq = load i32, ptr %i.tw, align 4, !tbaa !15 ; 7 uses
  %i.vr = load i32, ptr %i.tv, align 8, !tbaa !44
  %i.vs = icmp eq i32 %i.vq, %i.vr
  br i1 %i.vs, label %bb.dn, label %Vec_IntPush.exit.i454

bb.dn:                                            ; preds = %Vec_IntInsert.exit
  %i.vt = icmp slt i32 %i.vq, 16
  br i1 %i.vt, label %Vec_IntGrow.exit11.sink.split.i.i466, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.vu = icmp samesign ult i32 %i.vq, 1073741823
  %i.vv = shl nuw nsw i32 %i.vq, 1
  %spec.select.i.i463 = select i1 %i.vu, i32 %i.vv, i32 2147483647 ; 3 uses
  %.not.i9.i.i464 = icmp samesign ult i32 %i.vq, %spec.select.i.i463
  br i1 %.not.i9.i.i464, label %bb.dp, label %Vec_IntPush.exit.i454

bb.dp:                                            ; preds = %bb.do
  %i.vw = zext nneg i32 %spec.select.i.i463 to i64
  %i.vx = shl nuw nsw i64 %i.vw, 2
  br label %Vec_IntGrow.exit11.sink.split.i.i466

Vec_IntGrow.exit11.sink.split.i.i466:             ; preds = %bb.dn, %bb.dp
  %.sink = phi i64 [ %i.vx, %bb.dp ], [ 64, %bb.dn ]
  %spec.select.sink.i.i467 = phi i32 [ %spec.select.i.i463, %bb.dp ], [ 16, %bb.dn ]
  %i.vy = tail call ptr @realloc(ptr noundef nonnull %i.ur, i64 noundef %.sink) #24 ; 2 uses
  store ptr %i.vy, ptr %i.uq, align 8, !tbaa !16
  store i32 %spec.select.sink.i.i467, ptr %i.tv, align 8, !tbaa !44
  %.pre.i468 = load i32, ptr %i.tw, align 4, !tbaa !15
  br label %Vec_IntPush.exit.i454

Vec_IntPush.exit.i454:                            ; preds = %Vec_IntGrow.exit11.sink.split.i.i466, %bb.do, %Vec_IntInsert.exit
  %i.vz = phi ptr [ %i.ur, %Vec_IntInsert.exit ], [ %i.ur, %bb.do ], [ %i.vy, %Vec_IntGrow.exit11.sink.split.i.i466 ] ; 8 uses
  %i.wa = phi i32 [ %i.vq, %Vec_IntInsert.exit ], [ %i.vq, %bb.do ], [ %.pre.i468, %Vec_IntGrow.exit11.sink.split.i.i466 ] ; 2 uses
  %i.wb = add nsw i32 %i.wa, 1
  store i32 %i.wb, ptr %i.tw, align 4, !tbaa !15
  %i.wc = sext i32 %i.wa to i64
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.vz, i64 %i.wc
  store i32 0, ptr %i.wd, align 4, !tbaa !17
  %i.we = load i32, ptr %i.tw, align 4, !tbaa !15 ; 4 uses
  %.011.i455 = add i32 %i.we, -1                  ; 2 uses
  %i.wf = icmp sgt i32 %i.we, 1
  br i1 %i.wf, label %.lr.ph.preheader.i457, label %.sink.split

.lr.ph.preheader.i457:                            ; preds = %Vec_IntPush.exit.i454
  %i.wg = zext i32 %.011.i455 to i64              ; 5 uses
  %i.wh = zext nneg i32 %i.we to i64              ; 3 uses
  %min.iters.check1091 = icmp ult i32 %i.we, 9
  br i1 %min.iters.check1091, label %.lr.ph.i458.preheader, label %vector.ph1092

vector.ph1092:                                    ; preds = %.lr.ph.preheader.i457
  %n.vec1093 = and i64 %i.wg, 4294967288          ; 3 uses
  %i.wi = sub nsw i64 %i.wh, %n.vec1093
  %3 = and i64 %i.wg, 7
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %vector.ph1092
  %index1095 = phi i64 [ 0, %vector.ph1092 ], [ %index.next1098, %vector.body1094 ] ; 3 uses
  %i.wj = sub i64 %i.wh, %index1095
  %i.wk = sub i64 %i.wg, %index1095
  %i.wl = getelementptr [4 x i8], ptr %i.vz, i64 %i.wj ; 2 uses
  %i.wm = getelementptr i8, ptr %i.wl, i64 -20
  %i.wn = getelementptr i8, ptr %i.wl, i64 -36
  %wide.load1096 = load <4 x i32>, ptr %i.wm, align 4, !tbaa !17
  %wide.load1097 = load <4 x i32>, ptr %i.wn, align 4, !tbaa !17
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %i.wk ; 2 uses
  %i.wp = getelementptr inbounds i8, ptr %i.wo, i64 -12
  %i.wq = getelementptr inbounds i8, ptr %i.wo, i64 -28
  store <4 x i32> %wide.load1096, ptr %i.wp, align 4, !tbaa !17
  store <4 x i32> %wide.load1097, ptr %i.wq, align 4, !tbaa !17
  %index.next1098 = add nuw i64 %index1095, 8     ; 2 uses
  %i.wr = icmp eq i64 %index.next1098, %n.vec1093
  br i1 %i.wr, label %middle.block1099, label %vector.body1094, !llvm.loop !237

middle.block1099:                                 ; preds = %vector.body1094
  %cmp.n1100 = icmp eq i64 %n.vec1093, %i.wg
  br i1 %cmp.n1100, label %.sink.split, label %.lr.ph.i458.preheader

.lr.ph.i458.preheader:                            ; preds = %.lr.ph.preheader.i457, %middle.block1099
  %indvars.iv16.i459.ph = phi i64 [ %i.wh, %.lr.ph.preheader.i457 ], [ %i.wi, %middle.block1099 ]
  %indvars.iv.i460.ph = phi i64 [ %i.wg, %.lr.ph.preheader.i457 ], [ %3, %middle.block1099 ]
  br label %.lr.ph.i458

.lr.ph.i458:                                      ; preds = %.lr.ph.i458.preheader, %.lr.ph.i458
  %indvars.iv16.i459 = phi i64 [ %indvars.iv.next17.i462, %.lr.ph.i458 ], [ %indvars.iv16.i459.ph, %.lr.ph.i458.preheader ] ; 2 uses
  %indvars.iv.i460 = phi i64 [ %indvars.iv.next.i461, %.lr.ph.i458 ], [ %indvars.iv.i460.ph, %.lr.ph.i458.preheader ] ; 3 uses
  %i.ws = getelementptr [4 x i8], ptr %i.vz, i64 %indvars.iv16.i459
  %i.wt = getelementptr i8, ptr %i.ws, i64 -8
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !17
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %indvars.iv.i460
  store i32 %i.wu, ptr %i.wv, align 4, !tbaa !17
  %indvars.iv.next.i461 = add nsw i64 %indvars.iv.i460, -1
  %i.ww = icmp samesign ugt i64 %indvars.iv.i460, 1
  %indvars.iv.next17.i462 = add nsw i64 %indvars.iv16.i459, -1
  br i1 %i.ww, label %.lr.ph.i458, label %.sink.split, !llvm.loop !238

bb.dq:                                            ; preds = %bb.dc
  %i.wx = sext i32 %i.th to i64
  %.not.i472 = icmp slt i64 %indvars.iv703, %i.wx
  br i1 %.not.i472, label %bb.dw, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.wy = shl nsw i32 %i.th, 1
  %i.wz = trunc i64 %indvars.iv703 to i32
  %i.xa = add i32 %i.wz, 1                        ; 4 uses
  %i.xb = tail call noundef i32 @llvm.smax.i32(i32 %i.wy, i32 %i.xa) ; 7 uses
  %.not.i.i473 = icmp slt i32 %i.tf, %i.xb
  br i1 %.not.i.i473, label %bb.ds, label %Vec_WecGrow.exit.i474

bb.ds:                                            ; preds = %bb.dr
  %.not13.i.i485 = icmp eq ptr %i.tg, null
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = shl nuw nsw i64 %i.xc, 4                ; 2 uses
  br i1 %.not13.i.i485, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.xe = tail call ptr @realloc(ptr noundef nonnull %i.tg, i64 noundef %i.xd) #24
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.xf = tail call noalias ptr @malloc(i64 noundef %i.xd) #23
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.xg = phi ptr [ %i.xe, %bb.dt ], [ %i.xf, %bb.du ] ; 6 uses
  store ptr %i.xg, ptr %i.fg, align 8, !tbaa !52
  %i.xh = sext i32 %i.tf to i64
  %i.xi = getelementptr inbounds [16 x i8], ptr %i.xg, i64 %i.xh
  %i.xj = sub nsw i32 %i.xb, %i.tf
  %i.xk = sext i32 %i.xj to i64
  %i.xl = shl nuw nsw i64 %i.xk, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.xi, i8 0, i64 %i.xl, i1 false)
  store i32 %i.xb, ptr %i.fc, align 8, !tbaa !51
  br label %Vec_WecGrow.exit.i474

Vec_WecGrow.exit.i474:                            ; preds = %bb.dv, %bb.dr
  %.val.i507839 = phi ptr [ %i.xg, %bb.dv ], [ %.val.i507843, %bb.dr ]
  %i.xm = phi i32 [ %i.xb, %bb.dv ], [ %i.tb, %bb.dr ]
  %.val330820 = phi ptr [ %i.xg, %bb.dv ], [ %.val330, %bb.dr ]
  %.val.i491803 = phi ptr [ %i.xg, %bb.dv ], [ %.val.i491807, %bb.dr ]
  %i.xn = phi i32 [ %i.xb, %bb.dv ], [ %i.td, %bb.dr ]
  %.val.i475798 = phi ptr [ %i.xg, %bb.dv ], [ %i.tg, %bb.dr ]
  %i.xo = phi i32 [ %i.xb, %bb.dv ], [ %i.tf, %bb.dr ] ; 4 uses
  store i32 %i.xa, ptr %i.ff, align 4, !tbaa !53
  br label %bb.dw

bb.dw:                                            ; preds = %Vec_WecGrow.exit.i474, %bb.dq
  %.val.i507842 = phi ptr [ %.val.i507839, %Vec_WecGrow.exit.i474 ], [ %.val.i507843, %bb.dq ] ; 2 uses
  %i.xp = phi i32 [ %i.xm, %Vec_WecGrow.exit.i474 ], [ %i.tb, %bb.dq ] ; 2 uses
  %i.xq = phi i32 [ %i.xa, %Vec_WecGrow.exit.i474 ], [ %i.tc, %bb.dq ]
  %.val330823 = phi ptr [ %.val330820, %Vec_WecGrow.exit.i474 ], [ %.val330, %bb.dq ] ; 2 uses
  %.val.i491806 = phi ptr [ %.val.i491803, %Vec_WecGrow.exit.i474 ], [ %.val.i491807, %bb.dq ] ; 2 uses
  %i.xr = phi i32 [ %i.xn, %Vec_WecGrow.exit.i474 ], [ %i.td, %bb.dq ] ; 5 uses
  %i.xs = phi i32 [ %i.xa, %Vec_WecGrow.exit.i474 ], [ %i.te, %bb.dq ] ; 3 uses
  %.val.i475 = phi ptr [ %.val.i475798, %Vec_WecGrow.exit.i474 ], [ %i.tg, %bb.dq ] ; 2 uses
  %i.xt = phi i32 [ %i.xo, %Vec_WecGrow.exit.i474 ], [ %i.tf, %bb.dq ]
  %i.xu = phi i32 [ %i.xo, %Vec_WecGrow.exit.i474 ], [ %i.ti, %bb.dq ]
  %i.xv = phi i32 [ %i.xo, %Vec_WecGrow.exit.i474 ], [ %i.tj, %bb.dq ]
  %i.xw = phi i32 [ %i.xo, %Vec_WecGrow.exit.i474 ], [ %i.tm, %bb.dq ]
  %i.xx = getelementptr inbounds nuw [16 x i8], ptr %.val.i475, i64 %indvars.iv703 ; 6 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 4 ; 3 uses
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !15 ; 7 uses
  %i.ya = load i32, ptr %i.xx, align 8, !tbaa !44
  %i.yb = icmp eq i32 %i.xz, %i.ya
  br i1 %i.yb, label %bb.dx, label %Vec_WecPush.exit487

bb.dx:                                            ; preds = %bb.dw
  %i.yc = icmp slt i32 %i.xz, 16
  br i1 %i.yc, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xx, i64 8 ; 2 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !16 ; 2 uses
  %.not9.i.i.i483 = icmp eq ptr %i.ye, null
  br i1 %.not9.i.i.i483, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.yf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ye, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i484

bb.ea:                                            ; preds = %bb.dy
  %i.yg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i484

Vec_IntGrow.exit.i.i484:                          ; preds = %bb.ea, %bb.dz
  %i.yh = phi ptr [ %i.yf, %bb.dz ], [ %i.yg, %bb.ea ]
  store ptr %i.yh, ptr %i.yd, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i480

bb.eb:                                            ; preds = %bb.dx
  %i.yi = icmp samesign ult i32 %i.xz, 1073741823
  %i.yj = shl nuw nsw i32 %i.xz, 1
  %spec.select.i.i477 = select i1 %i.yi, i32 %i.yj, i32 2147483647 ; 3 uses
  %.not.i9.i.i478 = icmp samesign ult i32 %i.xz, %spec.select.i.i477
  br i1 %.not.i9.i.i478, label %bb.ec, label %Vec_WecPush.exit487

bb.ec:                                            ; preds = %bb.eb
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xx, i64 8 ; 2 uses
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !16 ; 2 uses
  %.not9.i10.i.i479 = icmp eq ptr %i.yl, null
  %i.ym = zext nneg i32 %spec.select.i.i477 to i64
  %i.yn = shl nuw nsw i64 %i.ym, 2                ; 2 uses
  br i1 %.not9.i10.i.i479, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.yo = tail call ptr @realloc(ptr noundef nonnull %i.yl, i64 noundef %i.yn) #24
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.yp = tail call noalias ptr @malloc(i64 noundef %i.yn) #23
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.yq = phi ptr [ %i.yo, %bb.ed ], [ %i.yp, %bb.ee ]
  store ptr %i.yq, ptr %i.yk, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i480

Vec_IntGrow.exit11.sink.split.i.i480:             ; preds = %bb.ef, %Vec_IntGrow.exit.i.i484
  %spec.select.sink.i.i481 = phi i32 [ %spec.select.i.i477, %bb.ef ], [ 16, %Vec_IntGrow.exit.i.i484 ]
  store i32 %spec.select.sink.i.i481, ptr %i.xx, align 8, !tbaa !44
  %.pre.i482 = load i32, ptr %i.xy, align 4, !tbaa !15
  br label %Vec_WecPush.exit487

Vec_WecPush.exit487:                              ; preds = %bb.dw, %bb.eb, %Vec_IntGrow.exit11.sink.split.i.i480
  %i.yr = phi i32 [ %i.xz, %bb.dw ], [ %i.xz, %bb.eb ], [ %.pre.i482, %Vec_IntGrow.exit11.sink.split.i.i480 ] ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !16
  %i.yu = add nsw i32 %i.yr, 1
  store i32 %i.yu, ptr %i.xy, align 4, !tbaa !15
  %i.yv = sext i32 %i.yr to i64
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.yt, i64 %i.yv
  store i32 %i.tt, ptr %i.yw, align 4, !tbaa !17
  %i.yx = sext i32 %i.xs to i64
  %.not.i488 = icmp slt i64 %indvars.iv703, %i.yx
  br i1 %.not.i488, label %bb.ei, label %bb.eg

bb.eg:                                            ; preds = %Vec_WecPush.exit487
  %i.yy = shl nsw i32 %i.xs, 1
  %i.yz = trunc i64 %indvars.iv703 to i32
  %i.za = add i32 %i.yz, 1                        ; 4 uses
  %i.zb = tail call noundef i32 @llvm.smax.i32(i32 %i.yy, i32 %i.za) ; 6 uses
  %.not.i.i489 = icmp slt i32 %i.xr, %i.zb
  br i1 %.not.i.i489, label %bb.eh, label %Vec_WecGrow.exit.i490

bb.eh:                                            ; preds = %bb.eg
  %i.zc = zext nneg i32 %i.zb to i64
  %i.zd = shl nuw nsw i64 %i.zc, 4
  %i.ze = tail call ptr @realloc(ptr noundef nonnull %.val.i475, i64 noundef %i.zd) #24 ; 5 uses
  store ptr %i.ze, ptr %i.fg, align 8, !tbaa !52
  %i.zf = sext i32 %i.xr to i64
  %i.zg = getelementptr inbounds [16 x i8], ptr %i.ze, i64 %i.zf
  %i.zh = sub nsw i32 %i.zb, %i.xr
  %i.zi = zext nneg i32 %i.zh to i64
  %i.zj = shl nuw nsw i64 %i.zi, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.zg, i8 0, i64 %i.zj, i1 false)
  store i32 %i.zb, ptr %i.fc, align 8, !tbaa !51
  br label %Vec_WecGrow.exit.i490

Vec_WecGrow.exit.i490:                            ; preds = %bb.eh, %bb.eg
  %.val.i507840 = phi ptr [ %i.ze, %bb.eh ], [ %.val.i507842, %bb.eg ]
  %i.zk = phi i32 [ %i.zb, %bb.eh ], [ %i.xp, %bb.eg ]
  %.val330821 = phi ptr [ %i.ze, %bb.eh ], [ %.val330823, %bb.eg ]
  %.val.i491804 = phi ptr [ %i.ze, %bb.eh ], [ %.val.i491806, %bb.eg ]
  %i.zl = phi i32 [ %i.zb, %bb.eh ], [ %i.xr, %bb.eg ] ; 5 uses
  store i32 %i.za, ptr %i.ff, align 4, !tbaa !53
  br label %bb.ei

bb.ei:                                            ; preds = %Vec_WecGrow.exit.i490, %Vec_WecPush.exit487
  %.val.i507841 = phi ptr [ %.val.i507840, %Vec_WecGrow.exit.i490 ], [ %.val.i507842, %Vec_WecPush.exit487 ]
  %i.zm = phi i32 [ %i.zk, %Vec_WecGrow.exit.i490 ], [ %i.xp, %Vec_WecPush.exit487 ]
  %i.zn = phi i32 [ %i.za, %Vec_WecGrow.exit.i490 ], [ %i.xq, %Vec_WecPush.exit487 ]
  %.val330822 = phi ptr [ %.val330821, %Vec_WecGrow.exit.i490 ], [ %.val330823, %Vec_WecPush.exit487 ]
  %.val.i491 = phi ptr [ %.val.i491804, %Vec_WecGrow.exit.i490 ], [ %.val.i491806, %Vec_WecPush.exit487 ] ; 2 uses
  %i.zo = phi i32 [ %i.zl, %Vec_WecGrow.exit.i490 ], [ %i.xr, %Vec_WecPush.exit487 ]
  %i.zp = phi i32 [ %i.za, %Vec_WecGrow.exit.i490 ], [ %i.xs, %Vec_WecPush.exit487 ] ; 5 uses
  %i.zq = phi i32 [ %i.zl, %Vec_WecGrow.exit.i490 ], [ %i.xt, %Vec_WecPush.exit487 ]
  %i.zr = phi i32 [ %i.zl, %Vec_WecGrow.exit.i490 ], [ %i.xu, %Vec_WecPush.exit487 ]
  %i.zs = phi i32 [ %i.zl, %Vec_WecGrow.exit.i490 ], [ %i.xv, %Vec_WecPush.exit487 ]
  %i.zt = phi i32 [ %i.zl, %Vec_WecGrow.exit.i490 ], [ %i.xw, %Vec_WecPush.exit487 ]
  %i.zu = getelementptr inbounds nuw [16 x i8], ptr %.val.i491, i64 %indvars.iv703 ; 6 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 4 ; 3 uses
end_hunk_0
