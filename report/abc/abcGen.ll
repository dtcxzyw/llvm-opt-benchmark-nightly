Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcGen?download=true
inline.NumInlined: 292
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_GenATDual:bb.a
  %i.sb = add nuw nsw i64 %indvars.iv702, 1       ; 2 uses
  %i.sc = sext i32 %.val335 to i64
  %i.sd = icmp slt i64 %i.sb, %i.sc
  br i1 %i.sd, label %bb.cr, label %thread-pre-split

bb.cr:                                            ; preds = %Vec_WecPush.exit425
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %.val.i429, i64 %i.sb ; 6 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 4 ; 3 uses
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !15 ; 7 uses
  %i.sh = load i32, ptr %i.se, align 8, !tbaa !44
  %i.si = icmp eq i32 %i.sg, %i.sh
  br i1 %i.si, label %bb.cs, label %Vec_WecPush.exit440

bb.cs:                                            ; preds = %bb.cr
  %i.sj = icmp slt i32 %i.sg, 16
  br i1 %i.sj, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.sk = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !16 ; 2 uses
  %.not9.i.i.i436 = icmp eq ptr %i.sl, null
  br i1 %.not9.i.i.i436, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.sl, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i437

bb.cv:                                            ; preds = %bb.ct
  %i.sn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i437

Vec_IntGrow.exit.i.i437:                          ; preds = %bb.cv, %bb.cu
  %i.so = phi ptr [ %i.sm, %bb.cu ], [ %i.sn, %bb.cv ]
  store ptr %i.so, ptr %i.sk, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i433

bb.cw:                                            ; preds = %bb.cs
  %i.sp = icmp samesign ult i32 %i.sg, 1073741823
  %i.sq = shl nuw nsw i32 %i.sg, 1
  %spec.select.i.i430 = select i1 %i.sp, i32 %i.sq, i32 2147483647 ; 3 uses
  %.not.i9.i.i431 = icmp samesign ult i32 %i.sg, %spec.select.i.i430
  br i1 %.not.i9.i.i431, label %bb.cx, label %Vec_WecPush.exit440

bb.cx:                                            ; preds = %bb.cw
  %i.sr = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !16 ; 2 uses
  %.not9.i10.i.i432 = icmp eq ptr %i.ss, null
  %i.st = zext nneg i32 %spec.select.i.i430 to i64
  %i.su = shl nuw nsw i64 %i.st, 2                ; 2 uses
  br i1 %.not9.i10.i.i432, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.sv = tail call ptr @realloc(ptr noundef nonnull %i.ss, i64 noundef %i.su) #24
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.sw = tail call noalias ptr @malloc(i64 noundef %i.su) #23
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.sx = phi ptr [ %i.sv, %bb.cy ], [ %i.sw, %bb.cz ]
  store ptr %i.sx, ptr %i.sr, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i433

Vec_IntGrow.exit11.sink.split.i.i433:             ; preds = %bb.da, %Vec_IntGrow.exit.i.i437
  %spec.select.sink.i.i434 = phi i32 [ %spec.select.i.i430, %bb.da ], [ 16, %Vec_IntGrow.exit.i.i437 ]
  store i32 %spec.select.sink.i.i434, ptr %i.se, align 8, !tbaa !44
  %.pre.i435 = load i32, ptr %i.sf, align 4, !tbaa !15
  br label %Vec_WecPush.exit440

Vec_WecPush.exit440:                              ; preds = %bb.cr, %bb.cw, %Vec_IntGrow.exit11.sink.split.i.i433
  %i.sy = phi i32 [ %i.sg, %bb.cr ], [ %i.sg, %bb.cw ], [ %.pre.i435, %Vec_IntGrow.exit11.sink.split.i.i433 ] ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !16
  %i.tb = add nsw i32 %i.sy, 1
  store i32 %i.tb, ptr %i.sf, align 4, !tbaa !15
  %i.tc = sext i32 %i.sy to i64
  %i.td = getelementptr inbounds [4 x i8], ptr %i.ta, i64 %i.tc
  store i32 %i.pv, ptr %i.td, align 4, !tbaa !17
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %Vec_WecPush.exit440, %Vec_WecPush.exit425
  %.val.i414765 = phi ptr [ %.val.i429, %Vec_WecPush.exit440 ], [ %.val.i414, %Vec_WecPush.exit425 ] ; 4 uses
  %.val309.pr = load i32, ptr %i.fv, align 4, !tbaa !15
  br label %bb.db

bb.db:                                            ; preds = %thread-pre-split, %._crit_edge631
  %.val.i507842 = phi ptr [ %.val.i507844, %thread-pre-split ], [ %.val.i507845, %._crit_edge631 ] ; 6 uses
  %i.te = phi i32 [ %i.qt, %thread-pre-split ], [ %i.ov, %._crit_edge631 ] ; 6 uses
  %i.tf = phi i32 [ %i.qu, %thread-pre-split ], [ %i.ow, %._crit_edge631 ] ; 5 uses
  %.val329 = phi ptr [ %.val329825, %thread-pre-split ], [ %.val329826, %._crit_edge631 ] ; 10 uses
  %.val330 = phi ptr [ %.val.i491808, %thread-pre-split ], [ %.val.i491809, %._crit_edge631 ] ; 4 uses
  %i.tg = phi i32 [ %i.qv, %thread-pre-split ], [ %i.ox, %._crit_edge631 ] ; 6 uses
  %i.th = phi i32 [ %i.qw, %thread-pre-split ], [ %i.oy, %._crit_edge631 ] ; 5 uses
  %i.ti = phi i32 [ %i.qx, %thread-pre-split ], [ %i.oz, %._crit_edge631 ] ; 8 uses
  %i.tj = phi ptr [ %.val.i429, %thread-pre-split ], [ %.val.i429790, %._crit_edge631 ] ; 5 uses
  %i.tk = phi i32 [ %.val335, %thread-pre-split ], [ %.val335774, %._crit_edge631 ] ; 6 uses
  %.val.i414763 = phi ptr [ %.val.i414765, %thread-pre-split ], [ %.val.i414767, %._crit_edge631 ]
  %i.tl = phi i32 [ %i.qy, %thread-pre-split ], [ %i.pa, %._crit_edge631 ] ; 5 uses
  %.val.i399750 = phi ptr [ %.val.i414765, %thread-pre-split ], [ %i.pb, %._crit_edge631 ]
  %i.tm = phi i32 [ %i.qz, %thread-pre-split ], [ %i.pc, %._crit_edge631 ] ; 5 uses
  %i.tn = phi i32 [ %.val335, %thread-pre-split ], [ %i.pd, %._crit_edge631 ] ; 4 uses
  %.val336744 = phi i32 [ %.val335, %thread-pre-split ], [ %.val336745, %._crit_edge631 ] ; 4 uses
  %.val.i369735 = phi ptr [ %.val.i414765, %thread-pre-split ], [ %.val.i369736, %._crit_edge631 ]
  %i.to = phi ptr [ %.val.i414765, %thread-pre-split ], [ %i.pe, %._crit_edge631 ]
  %i.tp = phi i32 [ %i.ra, %thread-pre-split ], [ %i.pf, %._crit_edge631 ] ; 5 uses
  %i.tq = phi i32 [ %.val335, %thread-pre-split ], [ %i.pg, %._crit_edge631 ] ; 4 uses
  %.val309 = phi i32 [ %.val309.pr, %thread-pre-split ], [ %.val312.lcssa, %._crit_edge631 ]
  %.3279 = phi i32 [ %i.py, %thread-pre-split ], [ %.2278.lcssa, %._crit_edge631 ] ; 2 uses
  %.6272 = phi i32 [ %.5271, %thread-pre-split ], [ %.2268.lcssa, %._crit_edge631 ] ; 2 uses
  %.8 = phi i32 [ %i.pw, %thread-pre-split ], [ %.4263.lcssa, %._crit_edge631 ] ; 2 uses
  %i.tr = icmp eq i32 %.val309, 2
  br i1 %i.tr, label %bb.dc, label %bb.ey

bb.dc:                                            ; preds = %bb.db
  %i.ts = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !16 ; 2 uses
  store i32 1, ptr %i.fv, align 4, !tbaa !15
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !17 ; 3 uses
  store i32 0, ptr %i.fv, align 4, !tbaa !15
  %i.tw = load i32, ptr %i.tt, align 4, !tbaa !17 ; 4 uses
  %i.tx = icmp slt i32 %i.tv, 0
  br i1 %i.tx, label %bb.dd, label %bb.dw

bb.dd:                                            ; preds = %bb.dc
  %i.ty = getelementptr inbounds nuw [16 x i8], ptr %.val330, i64 %indvars.iv702 ; 6 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 4 ; 4 uses
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !15 ; 7 uses
  %i.ub = load i32, ptr %i.ty, align 8, !tbaa !44
  %i.uc = icmp eq i32 %i.ua, %i.ub
  br i1 %i.uc, label %bb.de, label %Vec_IntPush.exit.i

bb.de:                                            ; preds = %bb.dd
  %i.ud = icmp slt i32 %i.ua, 16
  br i1 %i.ud, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ty, i64 8 ; 2 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !16 ; 2 uses
  %.not9.i.i.i452 = icmp eq ptr %i.uf, null
  br i1 %.not9.i.i.i452, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ug = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.uf, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i453

bb.dh:                                            ; preds = %bb.df
  %i.uh = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i453

Vec_IntGrow.exit.i.i453:                          ; preds = %bb.dh, %bb.dg
  %i.ui = phi ptr [ %i.ug, %bb.dg ], [ %i.uh, %bb.dh ]
  store ptr %i.ui, ptr %i.ue, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i449

bb.di:                                            ; preds = %bb.de
  %i.uj = icmp samesign ult i32 %i.ua, 1073741823
  %i.uk = shl nuw nsw i32 %i.ua, 1
  %spec.select.i.i446 = select i1 %i.uj, i32 %i.uk, i32 2147483647 ; 3 uses
  %.not.i9.i.i447 = icmp samesign ult i32 %i.ua, %spec.select.i.i446
  br i1 %.not.i9.i.i447, label %bb.dj, label %Vec_IntPush.exit.i

bb.dj:                                            ; preds = %bb.di
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ty, i64 8 ; 2 uses
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !16 ; 2 uses
  %.not9.i10.i.i448 = icmp eq ptr %i.um, null
  %i.un = zext nneg i32 %spec.select.i.i446 to i64
  %i.uo = shl nuw nsw i64 %i.un, 2                ; 2 uses
  br i1 %.not9.i10.i.i448, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.up = tail call ptr @realloc(ptr noundef nonnull %i.um, i64 noundef %i.uo) #24
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.uq = tail call noalias ptr @malloc(i64 noundef %i.uo) #23
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.ur = phi ptr [ %i.up, %bb.dk ], [ %i.uq, %bb.dl ]
  store ptr %i.ur, ptr %i.ul, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i449

Vec_IntGrow.exit11.sink.split.i.i449:             ; preds = %bb.dm, %Vec_IntGrow.exit.i.i453
  %spec.select.sink.i.i450 = phi i32 [ %spec.select.i.i446, %bb.dm ], [ 16, %Vec_IntGrow.exit.i.i453 ]
  store i32 %spec.select.sink.i.i450, ptr %i.ty, align 8, !tbaa !44
  %.pre.i451 = load i32, ptr %i.tz, align 4, !tbaa !15
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i449, %bb.di, %bb.dd
  %i.us = phi i32 [ %i.ua, %bb.dd ], [ %i.ua, %bb.di ], [ %.pre.i451, %Vec_IntGrow.exit11.sink.split.i.i449 ] ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !16 ; 6 uses
  %i.uv = add nsw i32 %i.us, 1
  store i32 %i.uv, ptr %i.tz, align 4, !tbaa !15
  %i.uw = sext i32 %i.us to i64
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.uu, i64 %i.uw
  store i32 0, ptr %i.ux, align 4, !tbaa !17
  %i.uy = load i32, ptr %i.tz, align 4, !tbaa !15 ; 4 uses
  %.011.i441 = add i32 %i.uy, -1                  ; 3 uses
  %i.uz = icmp sgt i32 %i.uy, 1
  br i1 %i.uz, label %.lr.ph.preheader.i, label %Vec_IntInsert.exit

.lr.ph.preheader.i:                               ; preds = %Vec_IntPush.exit.i
  %i.va = zext i32 %.011.i441 to i64              ; 3 uses
  %2 = zext nneg i32 %i.uy to i64                 ; 3 uses
  %3 = icmp ne i32 %.011.i441, 0
  %.neg = sext i1 %3 to i64
  %i.vb = zext nneg i32 %i.uy to i64
  %4 = add nsw i64 %.neg, %i.vb                   ; 3 uses
  %min.iters.check1106 = icmp ult i64 %4, 8
  br i1 %min.iters.check1106, label %.lr.ph.i443.preheader, label %vector.ph1107

vector.ph1107:                                    ; preds = %.lr.ph.preheader.i
  %n.vec1108 = and i64 %4, -8                     ; 4 uses
  %i.vc = sub nsw i64 %2, %n.vec1108
  %5 = sub nsw i64 %i.va, %n.vec1108
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %vector.ph1107
  %index1110 = phi i64 [ 0, %vector.ph1107 ], [ %index.next1113, %vector.body1109 ] ; 3 uses
  %i.vd = sub i64 %2, %index1110
  %i.ve = sub i64 %i.va, %index1110
  %i.vf = getelementptr [4 x i8], ptr %i.uu, i64 %i.vd ; 2 uses
  %i.vg = getelementptr i8, ptr %i.vf, i64 -20
  %i.vh = getelementptr i8, ptr %i.vf, i64 -36
  %wide.load1111 = load <4 x i32>, ptr %i.vg, align 4, !tbaa !17
  %wide.load1112 = load <4 x i32>, ptr %i.vh, align 4, !tbaa !17
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.ve ; 2 uses
  %i.vj = getelementptr inbounds i8, ptr %i.vi, i64 -12
  %i.vk = getelementptr inbounds i8, ptr %i.vi, i64 -28
  store <4 x i32> %wide.load1111, ptr %i.vj, align 4, !tbaa !17
  store <4 x i32> %wide.load1112, ptr %i.vk, align 4, !tbaa !17
  %index.next1113 = add nuw i64 %index1110, 8     ; 2 uses
  %i.vl = icmp eq i64 %index.next1113, %n.vec1108
  br i1 %i.vl, label %middle.block1114, label %vector.body1109, !llvm.loop !235

middle.block1114:                                 ; preds = %vector.body1109
  %cmp.n1115 = icmp eq i64 %4, %n.vec1108
  br i1 %cmp.n1115, label %Vec_IntInsert.exit, label %.lr.ph.i443.preheader

.lr.ph.i443.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block1114
  %indvars.iv16.i.ph = phi i64 [ %2, %.lr.ph.preheader.i ], [ %i.vc, %middle.block1114 ]
  %indvars.iv.i444.ph = phi i64 [ %i.va, %.lr.ph.preheader.i ], [ %5, %middle.block1114 ]
  br label %.lr.ph.i443

.lr.ph.i443:                                      ; preds = %.lr.ph.i443.preheader, %.lr.ph.i443
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %.lr.ph.i443 ], [ %indvars.iv16.i.ph, %.lr.ph.i443.preheader ] ; 2 uses
  %indvars.iv.i444 = phi i64 [ %indvars.iv.next.i445, %.lr.ph.i443 ], [ %indvars.iv.i444.ph, %.lr.ph.i443.preheader ] ; 3 uses
  %i.vm = getelementptr [4 x i8], ptr %i.uu, i64 %indvars.iv16.i
  %i.vn = getelementptr i8, ptr %i.vm, i64 -8
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !17
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %indvars.iv.i444
  store i32 %i.vo, ptr %i.vp, align 4, !tbaa !17
  %indvars.iv.next.i445 = add nsw i64 %indvars.iv.i444, -1
  %i.vq = icmp samesign ugt i64 %indvars.iv.i444, 1
  %indvars.iv.next17.i = add nsw i64 %indvars.iv16.i, -1
  br i1 %i.vq, label %.lr.ph.i443, label %Vec_IntInsert.exit, !llvm.loop !236

Vec_IntInsert.exit:                               ; preds = %.lr.ph.i443, %middle.block1114, %Vec_IntPush.exit.i
  %.0.lcssa.i442 = phi i32 [ %.011.i441, %Vec_IntPush.exit.i ], [ 0, %middle.block1114 ], [ 0, %.lr.ph.i443 ]
  %i.vr = sext i32 %.0.lcssa.i442 to i64
  %i.vs = getelementptr inbounds [4 x i8], ptr %i.uu, i64 %i.vr
  store i32 %i.tv, ptr %i.vs, align 4, !tbaa !17
  %i.vt = getelementptr inbounds nuw [16 x i8], ptr %.val329, i64 %indvars.iv702 ; 6 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 4 ; 4 uses
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !15 ; 7 uses
  %i.vw = load i32, ptr %i.vt, align 8, !tbaa !44
  %i.vx = icmp eq i32 %i.vv, %i.vw
  br i1 %i.vx, label %bb.dn, label %Vec_IntPush.exit.i454

bb.dn:                                            ; preds = %Vec_IntInsert.exit
  %i.vy = icmp slt i32 %i.vv, 16
  br i1 %i.vy, label %bb.do, label %bb.dr

bb.do:                                            ; preds = %bb.dn
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vt, i64 8 ; 2 uses
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !16 ; 2 uses
  %.not9.i.i.i469 = icmp eq ptr %i.wa, null
  br i1 %.not9.i.i.i469, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.wb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.wa, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i470

bb.dq:                                            ; preds = %bb.do
  %i.wc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i470

Vec_IntGrow.exit.i.i470:                          ; preds = %bb.dq, %bb.dp
  %i.wd = phi ptr [ %i.wb, %bb.dp ], [ %i.wc, %bb.dq ]
  store ptr %i.wd, ptr %i.vz, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i466

bb.dr:                                            ; preds = %bb.dn
  %i.we = icmp samesign ult i32 %i.vv, 1073741823
  %i.wf = shl nuw nsw i32 %i.vv, 1
  %spec.select.i.i463 = select i1 %i.we, i32 %i.wf, i32 2147483647 ; 3 uses
  %.not.i9.i.i464 = icmp samesign ult i32 %i.vv, %spec.select.i.i463
  br i1 %.not.i9.i.i464, label %bb.ds, label %Vec_IntPush.exit.i454

bb.ds:                                            ; preds = %bb.dr
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vt, i64 8 ; 2 uses
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !16 ; 2 uses
  %.not9.i10.i.i465 = icmp eq ptr %i.wh, null
  %i.wi = zext nneg i32 %spec.select.i.i463 to i64
  %i.wj = shl nuw nsw i64 %i.wi, 2                ; 2 uses
  br i1 %.not9.i10.i.i465, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.wk = tail call ptr @realloc(ptr noundef nonnull %i.wh, i64 noundef %i.wj) #24
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.wl = tail call noalias ptr @malloc(i64 noundef %i.wj) #23
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.wm = phi ptr [ %i.wk, %bb.dt ], [ %i.wl, %bb.du ]
  store ptr %i.wm, ptr %i.wg, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i466

Vec_IntGrow.exit11.sink.split.i.i466:             ; preds = %bb.dv, %Vec_IntGrow.exit.i.i470
  %spec.select.sink.i.i467 = phi i32 [ %spec.select.i.i463, %bb.dv ], [ 16, %Vec_IntGrow.exit.i.i470 ]
  store i32 %spec.select.sink.i.i467, ptr %i.vt, align 8, !tbaa !44
  %.pre.i468 = load i32, ptr %i.vu, align 4, !tbaa !15
  br label %Vec_IntPush.exit.i454

Vec_IntPush.exit.i454:                            ; preds = %Vec_IntGrow.exit11.sink.split.i.i466, %bb.dr, %Vec_IntInsert.exit
  %i.wn = phi i32 [ %i.vv, %Vec_IntInsert.exit ], [ %i.vv, %bb.dr ], [ %.pre.i468, %Vec_IntGrow.exit11.sink.split.i.i466 ] ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !16 ; 8 uses
  %i.wq = add nsw i32 %i.wn, 1
  store i32 %i.wq, ptr %i.vu, align 4, !tbaa !15
  %i.wr = sext i32 %i.wn to i64
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.wp, i64 %i.wr
  store i32 0, ptr %i.ws, align 4, !tbaa !17
  %i.wt = load i32, ptr %i.vu, align 4, !tbaa !15 ; 4 uses
  %.011.i455 = add i32 %i.wt, -1                  ; 3 uses
  %i.wu = icmp sgt i32 %i.wt, 1
  br i1 %i.wu, label %.lr.ph.preheader.i457, label %.sink.split

.lr.ph.preheader.i457:                            ; preds = %Vec_IntPush.exit.i454
  %i.wv = zext i32 %.011.i455 to i64              ; 3 uses
  %6 = zext nneg i32 %i.wt to i64                 ; 3 uses
  %7 = icmp ne i32 %.011.i455, 0
  %.neg1134 = sext i1 %7 to i64
  %i.ww = zext nneg i32 %i.wt to i64
  %8 = add nsw i64 %.neg1134, %i.ww               ; 3 uses
  %min.iters.check1093 = icmp ult i64 %8, 8
  br i1 %min.iters.check1093, label %.lr.ph.i458.preheader, label %vector.ph1094

vector.ph1094:                                    ; preds = %.lr.ph.preheader.i457
  %n.vec1095 = and i64 %8, -8                     ; 4 uses
  %i.wx = sub nsw i64 %6, %n.vec1095
  %9 = sub nsw i64 %i.wv, %n.vec1095
  br label %vector.body1096

vector.body1096:                                  ; preds = %vector.body1096, %vector.ph1094
  %index1097 = phi i64 [ 0, %vector.ph1094 ], [ %index.next1100, %vector.body1096 ] ; 3 uses
  %i.wy = sub i64 %6, %index1097
  %i.wz = sub i64 %i.wv, %index1097
  %i.xa = getelementptr [4 x i8], ptr %i.wp, i64 %i.wy ; 2 uses
  %i.xb = getelementptr i8, ptr %i.xa, i64 -20
  %i.xc = getelementptr i8, ptr %i.xa, i64 -36
  %wide.load1098 = load <4 x i32>, ptr %i.xb, align 4, !tbaa !17
  %wide.load1099 = load <4 x i32>, ptr %i.xc, align 4, !tbaa !17
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %i.wz ; 2 uses
  %i.xe = getelementptr inbounds i8, ptr %i.xd, i64 -12
  %i.xf = getelementptr inbounds i8, ptr %i.xd, i64 -28
  store <4 x i32> %wide.load1098, ptr %i.xe, align 4, !tbaa !17
  store <4 x i32> %wide.load1099, ptr %i.xf, align 4, !tbaa !17
  %index.next1100 = add nuw i64 %index1097, 8     ; 2 uses
  %i.xg = icmp eq i64 %index.next1100, %n.vec1095
  br i1 %i.xg, label %middle.block1101, label %vector.body1096, !llvm.loop !237

middle.block1101:                                 ; preds = %vector.body1096
  %cmp.n1102 = icmp eq i64 %8, %n.vec1095
  br i1 %cmp.n1102, label %.sink.split, label %.lr.ph.i458.preheader

.lr.ph.i458.preheader:                            ; preds = %.lr.ph.preheader.i457, %middle.block1101
  %indvars.iv16.i459.ph = phi i64 [ %6, %.lr.ph.preheader.i457 ], [ %i.wx, %middle.block1101 ]
  %indvars.iv.i460.ph = phi i64 [ %i.wv, %.lr.ph.preheader.i457 ], [ %9, %middle.block1101 ]
  br label %.lr.ph.i458

.lr.ph.i458:                                      ; preds = %.lr.ph.i458.preheader, %.lr.ph.i458
  %indvars.iv16.i459 = phi i64 [ %indvars.iv.next17.i462, %.lr.ph.i458 ], [ %indvars.iv16.i459.ph, %.lr.ph.i458.preheader ] ; 2 uses
  %indvars.iv.i460 = phi i64 [ %indvars.iv.next.i461, %.lr.ph.i458 ], [ %indvars.iv.i460.ph, %.lr.ph.i458.preheader ] ; 3 uses
  %i.xh = getelementptr [4 x i8], ptr %i.wp, i64 %indvars.iv16.i459
  %i.xi = getelementptr i8, ptr %i.xh, i64 -8
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !17
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv.i460
  store i32 %i.xj, ptr %i.xk, align 4, !tbaa !17
  %indvars.iv.next.i461 = add nsw i64 %indvars.iv.i460, -1
  %i.xl = icmp samesign ugt i64 %indvars.iv.i460, 1
  %indvars.iv.next17.i462 = add nsw i64 %indvars.iv16.i459, -1
  br i1 %i.xl, label %.lr.ph.i458, label %.sink.split, !llvm.loop !238

bb.dw:                                            ; preds = %bb.dc
  %i.xm = sext i32 %i.tk to i64
  %.not.i472 = icmp slt i64 %indvars.iv702, %i.xm
  br i1 %.not.i472, label %bb.ec, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.xn = shl nsw i32 %i.tk, 1
  %i.xo = trunc i64 %indvars.iv702 to i32
  %i.xp = add i32 %i.xo, 1                        ; 4 uses
  %i.xq = tail call noundef i32 @llvm.smax.i32(i32 %i.xn, i32 %i.xp) ; 7 uses
  %.not.i.i473 = icmp slt i32 %i.ti, %i.xq
  br i1 %.not.i.i473, label %bb.dy, label %Vec_WecGrow.exit.i474

bb.dy:                                            ; preds = %bb.dx
  %.not13.i.i485 = icmp eq ptr %i.tj, null
  %i.xr = zext nneg i32 %i.xq to i64
  %i.xs = shl nuw nsw i64 %i.xr, 4                ; 2 uses
  br i1 %.not13.i.i485, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.xt = tail call ptr @realloc(ptr noundef nonnull %i.tj, i64 noundef %i.xs) #24
  %.pre.i.i486 = load i32, ptr %i.fc, align 8, !tbaa !51
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.xu = tail call noalias ptr @malloc(i64 noundef %i.xs) #23
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.xv = phi i32 [ %.pre.i.i486, %bb.dz ], [ %i.ti, %bb.ea ] ; 2 uses
  %i.xw = phi ptr [ %i.xt, %bb.dz ], [ %i.xu, %bb.ea ] ; 6 uses
  store ptr %i.xw, ptr %i.fg, align 8, !tbaa !52
  %i.xx = sext i32 %i.xv to i64
  %i.xy = getelementptr inbounds [16 x i8], ptr %i.xw, i64 %i.xx
  %i.xz = sub nsw i32 %i.xq, %i.xv
  %i.ya = sext i32 %i.xz to i64
  %i.yb = shl nsw i64 %i.ya, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.xy, i8 0, i64 %i.yb, i1 false)
  store i32 %i.xq, ptr %i.fc, align 8, !tbaa !51
  br label %Vec_WecGrow.exit.i474

Vec_WecGrow.exit.i474:                            ; preds = %bb.eb, %bb.dx
  %.val.i507838 = phi ptr [ %i.xw, %bb.eb ], [ %.val.i507842, %bb.dx ]
  %i.yc = phi i32 [ %i.xq, %bb.eb ], [ %i.te, %bb.dx ]
  %.val329819 = phi ptr [ %i.xw, %bb.eb ], [ %.val329, %bb.dx ]
  %.val.i491802 = phi ptr [ %i.xw, %bb.eb ], [ %.val330, %bb.dx ]
  %i.yd = phi i32 [ %i.xq, %bb.eb ], [ %i.tg, %bb.dx ]
  %.val.i475797 = phi ptr [ %i.xw, %bb.eb ], [ %i.tj, %bb.dx ]
  %i.ye = phi i32 [ %i.xq, %bb.eb ], [ %i.ti, %bb.dx ] ; 4 uses
  store i32 %i.xp, ptr %i.ff, align 4, !tbaa !53
  br label %bb.ec

bb.ec:                                            ; preds = %Vec_WecGrow.exit.i474, %bb.dw
  %.val.i507841 = phi ptr [ %.val.i507838, %Vec_WecGrow.exit.i474 ], [ %.val.i507842, %bb.dw ] ; 2 uses
  %i.yf = phi i32 [ %i.yc, %Vec_WecGrow.exit.i474 ], [ %i.te, %bb.dw ] ; 2 uses
  %i.yg = phi i32 [ %i.xp, %Vec_WecGrow.exit.i474 ], [ %i.tf, %bb.dw ]
  %.val329822 = phi ptr [ %.val329819, %Vec_WecGrow.exit.i474 ], [ %.val329, %bb.dw ] ; 2 uses
  %.val.i491805 = phi ptr [ %.val.i491802, %Vec_WecGrow.exit.i474 ], [ %.val330, %bb.dw ] ; 2 uses
  %i.yh = phi i32 [ %i.yd, %Vec_WecGrow.exit.i474 ], [ %i.tg, %bb.dw ] ; 3 uses
  %i.yi = phi i32 [ %i.xp, %Vec_WecGrow.exit.i474 ], [ %i.th, %bb.dw ] ; 3 uses
  %i.yj = phi ptr [ %.val.i475797, %Vec_WecGrow.exit.i474 ], [ %i.tj, %bb.dw ] ; 2 uses
  %i.yk = phi i32 [ %i.ye, %Vec_WecGrow.exit.i474 ], [ %i.ti, %bb.dw ]
  %i.yl = phi i32 [ %i.ye, %Vec_WecGrow.exit.i474 ], [ %i.tl, %bb.dw ]
  %i.ym = phi i32 [ %i.ye, %Vec_WecGrow.exit.i474 ], [ %i.tm, %bb.dw ]
  %i.yn = phi i32 [ %i.ye, %Vec_WecGrow.exit.i474 ], [ %i.tp, %bb.dw ]
  %i.yo = getelementptr inbounds nuw [16 x i8], ptr %i.yj, i64 %indvars.iv702 ; 6 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 4 ; 3 uses
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !15 ; 7 uses
  %i.yr = load i32, ptr %i.yo, align 8, !tbaa !44
  %i.ys = icmp eq i32 %i.yq, %i.yr
  br i1 %i.ys, label %bb.ed, label %Vec_WecPush.exit487

bb.ed:                                            ; preds = %bb.ec
  %i.yt = icmp slt i32 %i.yq, 16
  br i1 %i.yt, label %bb.ee, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yo, i64 8 ; 2 uses
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !16 ; 2 uses
  %.not9.i.i.i483 = icmp eq ptr %i.yv, null
  br i1 %.not9.i.i.i483, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.yw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.yv, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i.i484

bb.eg:                                            ; preds = %bb.ee
  %i.yx = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i484

Vec_IntGrow.exit.i.i484:                          ; preds = %bb.eg, %bb.ef
  %i.yy = phi ptr [ %i.yw, %bb.ef ], [ %i.yx, %bb.eg ]
  store ptr %i.yy, ptr %i.yu, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i480

bb.eh:                                            ; preds = %bb.ed
  %i.yz = icmp samesign ult i32 %i.yq, 1073741823
  %i.za = shl nuw nsw i32 %i.yq, 1
  %spec.select.i.i477 = select i1 %i.yz, i32 %i.za, i32 2147483647 ; 3 uses
  %.not.i9.i.i478 = icmp samesign ult i32 %i.yq, %spec.select.i.i477
  br i1 %.not.i9.i.i478, label %bb.ei, label %Vec_WecPush.exit487

bb.ei:                                            ; preds = %bb.eh
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yo, i64 8 ; 2 uses
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !16 ; 2 uses
  %.not9.i10.i.i479 = icmp eq ptr %i.zc, null
  %i.zd = zext nneg i32 %spec.select.i.i477 to i64
  %i.ze = shl nuw nsw i64 %i.zd, 2                ; 2 uses
  br i1 %.not9.i10.i.i479, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.zf = tail call ptr @realloc(ptr noundef nonnull %i.zc, i64 noundef %i.ze) #24
  br label %bb.el

bb.ek:                                            ; preds = %bb.ei
  %i.zg = tail call noalias ptr @malloc(i64 noundef %i.ze) #23
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.zh = phi ptr [ %i.zf, %bb.ej ], [ %i.zg, %bb.ek ]
  store ptr %i.zh, ptr %i.zb, align 8, !tbaa !16
  br label %Vec_IntGrow.exit11.sink.split.i.i480

Vec_IntGrow.exit11.sink.split.i.i480:             ; preds = %bb.el, %Vec_IntGrow.exit.i.i484
  %spec.select.sink.i.i481 = phi i32 [ %spec.select.i.i477, %bb.el ], [ 16, %Vec_IntGrow.exit.i.i484 ]
  store i32 %spec.select.sink.i.i481, ptr %i.yo, align 8, !tbaa !44
  %.pre.i482 = load i32, ptr %i.yp, align 4, !tbaa !15
  br label %Vec_WecPush.exit487

Vec_WecPush.exit487:                              ; preds = %bb.ec, %bb.eh, %Vec_IntGrow.exit11.sink.split.i.i480
  %i.zi = phi i32 [ %i.yq, %bb.ec ], [ %i.yq, %bb.eh ], [ %.pre.i482, %Vec_IntGrow.exit11.sink.split.i.i480 ] ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !16
  %i.zl = add nsw i32 %i.zi, 1
  store i32 %i.zl, ptr %i.yp, align 4, !tbaa !15
  %i.zm = sext i32 %i.zi to i64
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.zk, i64 %i.zm
  store i32 %i.tw, ptr %i.zn, align 4, !tbaa !17
  %i.zo = sext i32 %i.yi to i64
  %.not.i488 = icmp slt i64 %indvars.iv702, %i.zo
  br i1 %.not.i488, label %bb.eo, label %bb.em

bb.em:                                            ; preds = %Vec_WecPush.exit487
  %i.zp = shl nsw i32 %i.yi, 1
  %i.zq = trunc i64 %indvars.iv702 to i32
  %i.zr = add i32 %i.zq, 1                        ; 4 uses
  %i.zs = tail call noundef i32 @llvm.smax.i32(i32 %i.zp, i32 %i.zr) ; 6 uses
  %.not.i.i489 = icmp slt i32 %i.yh, %i.zs
  br i1 %.not.i.i489, label %bb.en, label %Vec_WecGrow.exit.i490

bb.en:                                            ; preds = %bb.em
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = shl nuw nsw i64 %i.zt, 4
  %i.zv = tail call ptr @realloc(ptr noundef nonnull %i.yj, i64 noundef %i.zu) #24 ; 5 uses
  %.pre.i.i502 = load i32, ptr %i.fc, align 8, !tbaa !51 ; 2 uses
  store ptr %i.zv, ptr %i.fg, align 8, !tbaa !52
  %i.zw = sext i32 %.pre.i.i502 to i64
  %i.zx = getelementptr inbounds [16 x i8], ptr %i.zv, i64 %i.zw
  %i.zy = sub nsw i32 %i.zs, %.pre.i.i502
  %i.zz = sext i32 %i.zy to i64
  %i.aaa = shl nsw i64 %i.zz, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.zx, i8 0, i64 %i.aaa, i1 false)
  store i32 %i.zs, ptr %i.fc, align 8, !tbaa !51
  br label %Vec_WecGrow.exit.i490

Vec_WecGrow.exit.i490:                            ; preds = %bb.en, %bb.em
  %.val.i507839 = phi ptr [ %i.zv, %bb.en ], [ %.val.i507841, %bb.em ]
  %i.aab = phi i32 [ %i.zs, %bb.en ], [ %i.yf, %bb.em ]
  %.val329820 = phi ptr [ %i.zv, %bb.en ], [ %.val329822, %bb.em ]
  %.val.i491803 = phi ptr [ %i.zv, %bb.en ], [ %.val.i491805, %bb.em ]
  %i.aac = phi i32 [ %i.zs, %bb.en ], [ %i.yh, %bb.em ] ; 5 uses
  store i32 %i.zr, ptr %i.ff, align 4, !tbaa !53
  br label %bb.eo

bb.eo:                                            ; preds = %Vec_WecGrow.exit.i490, %Vec_WecPush.exit487
  %.val.i507840 = phi ptr [ %.val.i507839, %Vec_WecGrow.exit.i490 ], [ %.val.i507841, %Vec_WecPush.exit487 ]
  %i.aad = phi i32 [ %i.aab, %Vec_WecGrow.exit.i490 ], [ %i.yf, %Vec_WecPush.exit487 ]
  %i.aae = phi i32 [ %i.zr, %Vec_WecGrow.exit.i490 ], [ %i.yg, %Vec_WecPush.exit487 ]
  %.val329821 = phi ptr [ %.val329820, %Vec_WecGrow.exit.i490 ], [ %.val329822, %Vec_WecPush.exit487 ]
  %.val.i491 = phi ptr [ %.val.i491803, %Vec_WecGrow.exit.i490 ], [ %.val.i491805, %Vec_WecPush.exit487 ] ; 2 uses
  %i.aaf = phi i32 [ %i.aac, %Vec_WecGrow.exit.i490 ], [ %i.yh, %Vec_WecPush.exit487 ]
  %i.aag = phi i32 [ %i.zr, %Vec_WecGrow.exit.i490 ], [ %i.yi, %Vec_WecPush.exit487 ] ; 5 uses
  %i.aah = phi i32 [ %i.aac, %Vec_WecGrow.exit.i490 ], [ %i.yk, %Vec_WecPush.exit487 ]
  %i.aai = phi i32 [ %i.aac, %Vec_WecGrow.exit.i490 ], [ %i.yl, %Vec_WecPush.exit487 ]
  %i.aaj = phi i32 [ %i.aac, %Vec_WecGrow.exit.i490 ], [ %i.ym, %Vec_WecPush.exit487 ]
end_hunk_0
