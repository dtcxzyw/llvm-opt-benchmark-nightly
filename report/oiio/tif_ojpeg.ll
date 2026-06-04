inline.NumInlined: 64
inline.NumDeleted: 29
begin_hunk_0_@OJPEGReadHeaderInfoSec:bb.a
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 328 ; 3 uses
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !160
  %i.ub = icmp eq i64 %i.ua, 0
  br i1 %i.ub, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %._crit_edge235
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecTablesDcTable.module, ptr noundef nonnull @.str.29) #13
  br label %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread

bb.ff:                                            ; preds = %._crit_edge235
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ty, i64 1616
  store i8 0, ptr %i.uc, align 8, !tbaa !99
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ty, i64 268 ; 2 uses
  %i.ue = load i8, ptr %i.ud, align 4, !tbaa !87  ; 2 uses
  %.not98.i = icmp eq i8 %i.ue, 0
  br i1 %.not98.i, label %.loopexit, label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %bb.ff
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ty, i64 408
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ty, i64 500 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.um = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.un = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.uo = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ft, %.lr.ph95.i
  %indvars.iv310 = phi i32 [ %indvars.iv.next311, %bb.ft ], [ -1, %.lr.ph95.i ] ; 2 uses
  %i.up = phi i8 [ %i.wy, %bb.ft ], [ %i.ue, %.lr.ph95.i ]
  %indvars.iv.i127 = phi i64 [ %indvars.iv.next.i136, %bb.ft ], [ 0, %.lr.ph95.i ] ; 7 uses
  %i.uq = phi i32 [ %i.wz, %bb.ft ], [ 0, %.lr.ph95.i ]
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv.i127 ; 2 uses
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !160 ; 4 uses
  %.not.i128 = icmp eq i64 %i.us, 0
  br i1 %.not.i128, label %bb.fs, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ut = icmp eq i64 %indvars.iv.i127, 0
  br i1 %i.ut, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.uu = getelementptr i8, ptr %i.ur, i64 -8
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !160
  %.not83.i129 = icmp eq i64 %i.us, %i.uv
  br i1 %.not83.i129, label %bb.fs, label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.uw = icmp samesign ugt i32 %i.uq, 1
  br i1 %i.uw, label %.lr.ph.i137.preheader, label %._crit_edge.i130

.lr.ph.i137.preheader:                            ; preds = %bb.fj
  %wide.trip.count312 = zext i32 %indvars.iv310 to i64
  br label %.lr.ph.i137

bb.fk:                                            ; preds = %.lr.ph.i137
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count312
  br i1 %exitcond313.not, label %._crit_edge.i130, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.preheader, %bb.fk
  %indvars.iv307 = phi i64 [ 0, %.lr.ph.i137.preheader ], [ %indvars.iv.next308, %bb.fk ] ; 2 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv307
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !160
  %i.uz = icmp eq i64 %i.us, %i.uy
  br i1 %i.uz, label %bb.fl, label %bb.fk

bb.fl:                                            ; preds = %.lr.ph.i137
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecTablesDcTable.module, ptr noundef nonnull @.str.31) #13
  br label %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread

._crit_edge.i130:                                 ; preds = %bb.fk, %bb.fj
  %i.va = load ptr, ptr %i.uf, align 8, !tbaa !192
  %i.vb = load ptr, ptr %i.ug, align 8, !tbaa !181
  %i.vc = call i64 %i.va(ptr noundef %i.vb, i64 noundef %i.us, i32 noundef 0) #13, !inline_history !203 ; 0 uses
  %i.vd = load ptr, ptr %i.uh, align 8, !tbaa !194
  %i.ve = load ptr, ptr %i.ug, align 8, !tbaa !181
  %i.vf = call i64 %i.vd(ptr noundef %i.ve, ptr noundef nonnull %i.a, i64 noundef 16) #13, !inline_history !203
  %i.vg = and i64 %i.vf, 4294967295
  %.not84.i131 = icmp eq i64 %i.vg, 16
  br i1 %.not84.i131, label %.preheader.preheader.i, label %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread

.preheader.preheader.i:                           ; preds = %._crit_edge.i130
  %i.vh = load <12 x i8>, ptr %i.a, align 16, !tbaa !101
  %i.vi = load i8, ptr %i.ul, align 4, !tbaa !101
  %i.vj = zext i8 %i.vi to i32
  %i.vk = load i8, ptr %i.um, align 1, !tbaa !101
  %i.vl = zext i8 %i.vk to i32
  %i.vm = load i8, ptr %i.un, align 2, !tbaa !101
  %i.vn = zext i8 %i.vm to i32
  %i.vo = zext <12 x i8> %i.vh to <12 x i32>
  %i.vp = call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %i.vo)
  %op.rdx = add nuw nsw i32 %i.vp, %i.vj
  %op.rdx574 = add nuw nsw i32 %i.vl, %i.vn
  %op.rdx575 = add nuw nsw i32 %op.rdx, %op.rdx574
  %i.vq = load i8, ptr %i.uo, align 1, !tbaa !101
  %i.vr = zext i8 %i.vq to i32
  %i.vs = add nuw nsw i32 %op.rdx575, %i.vr       ; 4 uses
  %i.vt = add nuw nsw i32 %i.vs, 25               ; 2 uses
  %i.vu = zext nneg i32 %i.vt to i64
  %i.vv = call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.vu) #13 ; 12 uses
  %i.vw = icmp eq ptr %i.vv, null
  br i1 %i.vw, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.preheader.preheader.i
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecTablesDcTable.module, ptr noundef nonnull @.str.19) #13
  br label %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread

bb.fn:                                            ; preds = %.preheader.preheader.i
  %i.vx = zext nneg i32 %i.vs to i64
  store i32 %i.vt, ptr %i.vv, align 4, !tbaa !3
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  store i8 -1, ptr %i.vy, align 4, !tbaa !101
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vv, i64 5
  store i8 -60, ptr %i.vz, align 1, !tbaa !101
  %i.wa = add nuw nsw i32 %i.vs, 19               ; 2 uses
  %i.wb = lshr i32 %i.wa, 8
  %i.wc = trunc nuw nsw i32 %i.wb to i8
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vv, i64 6
  store i8 %i.wc, ptr %i.wd, align 2, !tbaa !101
  %i.we = trunc i32 %i.wa to i8
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vv, i64 7
  store i8 %i.we, ptr %i.wf, align 1, !tbaa !101
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.wh = trunc nuw i64 %indvars.iv.i127 to i8    ; 2 uses
  store i8 %i.wh, ptr %i.wg, align 4, !tbaa !101
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vv, i64 9
  %i.wj = load <8 x i8>, ptr %i.a, align 16, !tbaa !101
  store <8 x i8> %i.wj, ptr %i.wi, align 1, !tbaa !101
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vv, i64 17
  %i.wl = load <8 x i8>, ptr %i.uk, align 8, !tbaa !101
  store <8 x i8> %i.wl, ptr %i.wk, align 1, !tbaa !101
  %i.wm = load ptr, ptr %i.uh, align 8, !tbaa !194
  %i.wn = load ptr, ptr %i.ug, align 8, !tbaa !181
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vv, i64 25
  %i.wp = call i64 %i.wm(ptr noundef %i.wn, ptr noundef nonnull %i.wo, i64 noundef %i.vx) #13, !inline_history !203
  %i.wq = trunc i64 %i.wp to i32
  %.not85.i134 = icmp eq i32 %i.vs, %i.wq
  br i1 %.not85.i134, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.vv) #13
  br label %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread

bb.fp:                                            ; preds = %bb.fn
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv.i127 ; 2 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !138 ; 2 uses
  %.not86.i = icmp eq ptr %i.ws, null
  br i1 %.not86.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ws) #13
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  store ptr %i.vv, ptr %i.wr, align 8, !tbaa !138
  %i.wt = shl i8 %i.wh, 4
  %i.wu = getelementptr inbounds nuw i8, ptr %i.uj, i64 %indvars.iv.i127
  store i8 %i.wt, ptr %i.wu, align 1, !tbaa !101
  %.pre.i135 = load i8, ptr %i.ud, align 4, !tbaa !87
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fi, %bb.fg
  %i.wv = getelementptr i8, ptr %i.uj, i64 %indvars.iv.i127 ; 2 uses
  %i.ww = getelementptr i8, ptr %i.wv, i64 -1
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !101
  store i8 %i.wx, ptr %i.wv, align 1, !tbaa !101
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.wy = phi i8 [ %.pre.i135, %bb.fr ], [ %i.up, %bb.fs ] ; 2 uses
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i127, 1 ; 3 uses
  %i.wz = trunc nuw i64 %indvars.iv.next.i136 to i32
  %i.xa = zext i8 %i.wy to i64
  %i.xb = icmp samesign ult i64 %indvars.iv.next.i136, %i.xa
  %indvars.iv.next311 = add nsw i32 %indvars.iv310, 1
  br i1 %i.xb, label %bb.fg, label %.loopexit

OJPEGReadHeaderInfoSecTablesDcTable.exit.thread:  ; preds = %._crit_edge.i130, %bb.fe, %bb.fl, %bb.fo, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %OJPEGReadBytePeek.exit.thread

.loopexit:                                        ; preds = %bb.ft, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.xc = call fastcc i32 @OJPEGReadHeaderInfoSecTablesAcTable(ptr noundef %0)
  %i.xd = icmp eq i32 %i.xc, 0
  br i1 %i.xd, label %OJPEGReadBytePeek.exit.thread, label %.preheader

.preheader:                                       ; preds = %.loopexit
  %i.xe = load i8, ptr %i.qy, align 4, !tbaa !87  ; 4 uses
  %i.xf = icmp ugt i8 %i.xe, 1
  br i1 %i.xf, label %iter.check556, label %OJPEGReadBytePeek.exit.thread

iter.check556:                                    ; preds = %.preheader
  %i.xg = getelementptr inbounds nuw i8, ptr %i.e, i64 497 ; 2 uses
  %i.xh = zext i8 %i.xe to i64                    ; 2 uses
  %i.xi = add nsw i64 %i.xh, -1                   ; 5 uses
  %min.iters.check540 = icmp ult i8 %i.xe, 5
  br i1 %min.iters.check540, label %vec.epilog.scalar.ph557.preheader, label %vector.main.loop.iter.check541

vector.main.loop.iter.check541:                   ; preds = %iter.check556
  %min.iters.check542 = icmp ult i8 %i.xe, 33
  br i1 %min.iters.check542, label %vec.epilog.ph560, label %vector.ph543

vector.ph543:                                     ; preds = %vector.main.loop.iter.check541
  %n.mod.vf544 = and i64 %i.xi, 28
  %n.vec545 = and i64 %i.xi, -32                  ; 9 uses
  %i.xj = or disjoint i64 %n.vec545, 1            ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.e, i64 498
  %i.xl = getelementptr inbounds nuw i8, ptr %i.e, i64 514
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %i.xk, align 2, !tbaa !101
  store <16 x i8> <i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32>, ptr %i.xl, align 2, !tbaa !101
  %i.xm = icmp eq i64 %n.vec545, 32
  br i1 %i.xm, label %middle.block552, label %vector.body546.1

vector.body546.1:                                 ; preds = %vector.ph543
  %i.xn = getelementptr inbounds nuw i8, ptr %i.e, i64 530
  %i.xo = getelementptr inbounds nuw i8, ptr %i.e, i64 546
  store <16 x i8> <i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48>, ptr %i.xn, align 2, !tbaa !101
  store <16 x i8> <i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63, i8 64>, ptr %i.xo, align 2, !tbaa !101
  %i.xp = icmp eq i64 %n.vec545, 64
  br i1 %i.xp, label %middle.block552, label %vector.body546.2

vector.body546.2:                                 ; preds = %vector.body546.1
  %i.xq = getelementptr inbounds nuw i8, ptr %i.e, i64 562
  %i.xr = getelementptr inbounds nuw i8, ptr %i.e, i64 578
  store <16 x i8> <i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79, i8 80>, ptr %i.xq, align 2, !tbaa !101
  store <16 x i8> <i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95, i8 96>, ptr %i.xr, align 2, !tbaa !101
  %i.xs = icmp eq i64 %n.vec545, 96
  br i1 %i.xs, label %middle.block552, label %vector.body546.3

vector.body546.3:                                 ; preds = %vector.body546.2
  %i.xt = getelementptr inbounds nuw i8, ptr %i.e, i64 594
  %i.xu = getelementptr inbounds nuw i8, ptr %i.e, i64 610
  store <16 x i8> <i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112>, ptr %i.xt, align 2, !tbaa !101
  store <16 x i8> <i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127, i8 -128>, ptr %i.xu, align 2, !tbaa !101
  %i.xv = icmp eq i64 %n.vec545, 128
  br i1 %i.xv, label %middle.block552, label %vector.body546.4

vector.body546.4:                                 ; preds = %vector.body546.3
  %i.xw = getelementptr inbounds nuw i8, ptr %i.e, i64 626
  %i.xx = getelementptr inbounds nuw i8, ptr %i.e, i64 642
  store <16 x i8> <i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113, i8 -112>, ptr %i.xw, align 2, !tbaa !101
  store <16 x i8> <i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97, i8 -96>, ptr %i.xx, align 2, !tbaa !101
  %i.xy = icmp eq i64 %n.vec545, 160
  br i1 %i.xy, label %middle.block552, label %vector.body546.5

vector.body546.5:                                 ; preds = %vector.body546.4
  %i.xz = getelementptr inbounds nuw i8, ptr %i.e, i64 658
  %i.ya = getelementptr inbounds nuw i8, ptr %i.e, i64 674
  store <16 x i8> <i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80>, ptr %i.xz, align 2, !tbaa !101
  store <16 x i8> <i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65, i8 -64>, ptr %i.ya, align 2, !tbaa !101
  %i.yb = icmp eq i64 %n.vec545, 192
  br i1 %i.yb, label %middle.block552, label %vector.body546.6

vector.body546.6:                                 ; preds = %vector.body546.5
  %i.yc = getelementptr inbounds nuw i8, ptr %i.e, i64 690
  %i.yd = getelementptr inbounds nuw i8, ptr %i.e, i64 706
  store <16 x i8> <i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49, i8 -48>, ptr %i.yc, align 2, !tbaa !101
  store <16 x i8> <i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33, i8 -32>, ptr %i.yd, align 2, !tbaa !101
  br label %middle.block552

middle.block552:                                  ; preds = %vector.body546.6, %vector.body546.5, %vector.body546.4, %vector.body546.3, %vector.body546.2, %vector.body546.1, %vector.ph543
  %cmp.n553 = icmp eq i64 %i.xi, %n.vec545
  br i1 %cmp.n553, label %OJPEGReadBytePeek.exit.thread, label %vec.epilog.iter.check558

vec.epilog.iter.check558:                         ; preds = %middle.block552
  %min.epilog.iters.check559 = icmp eq i64 %n.mod.vf544, 0
  br i1 %min.epilog.iters.check559, label %vec.epilog.scalar.ph557.preheader, label %vec.epilog.ph560, !prof !195

vec.epilog.ph560:                                 ; preds = %vector.main.loop.iter.check541, %vec.epilog.iter.check558
  %vec.epilog.resume.val554 = phi i64 [ %n.vec545, %vec.epilog.iter.check558 ], [ 0, %vector.main.loop.iter.check541 ]
  %bc.resume.val555 = phi i64 [ %i.xj, %vec.epilog.iter.check558 ], [ 1, %vector.main.loop.iter.check541 ]
  %n.vec562 = and i64 %i.xi, -4                   ; 3 uses
  %i.ye = or disjoint i64 %n.vec562, 1
  %i.yf = trunc i64 %bc.resume.val555 to i8
  %broadcast.splatinsert563 = insertelement <4 x i8> poison, i8 %i.yf, i64 0
  %broadcast.splat564 = shufflevector <4 x i8> %broadcast.splatinsert563, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction565 = add <4 x i8> %broadcast.splat564, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body566

vec.epilog.vector.body566:                        ; preds = %vec.epilog.vector.body566, %vec.epilog.ph560
  %index567 = phi i64 [ %vec.epilog.resume.val554, %vec.epilog.ph560 ], [ %index.next569, %vec.epilog.vector.body566 ] ; 2 uses
  %vec.ind568 = phi <4 x i8> [ %induction565, %vec.epilog.ph560 ], [ %vec.ind.next570, %vec.epilog.vector.body566 ] ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xg, i64 %index567
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 1
  store <4 x i8> %vec.ind568, ptr %i.yh, align 1, !tbaa !101
  %index.next569 = add nuw i64 %index567, 4       ; 2 uses
  %vec.ind.next570 = add <4 x i8> %vec.ind568, splat (i8 4)
  %i.yi = icmp eq i64 %index.next569, %n.vec562
  br i1 %i.yi, label %vec.epilog.middle.block571, label %vec.epilog.vector.body566, !llvm.loop !204

vec.epilog.middle.block571:                       ; preds = %vec.epilog.vector.body566
  %cmp.n572 = icmp eq i64 %i.xi, %n.vec562
  br i1 %cmp.n572, label %OJPEGReadBytePeek.exit.thread, label %vec.epilog.scalar.ph557.preheader

vec.epilog.scalar.ph557.preheader:                ; preds = %iter.check556, %vec.epilog.iter.check558, %vec.epilog.middle.block571
  %indvars.iv314.ph = phi i64 [ 1, %iter.check556 ], [ %i.xj, %vec.epilog.iter.check558 ], [ %i.ye, %vec.epilog.middle.block571 ]
  br label %vec.epilog.scalar.ph557

vec.epilog.scalar.ph557:                          ; preds = %vec.epilog.scalar.ph557.preheader, %vec.epilog.scalar.ph557
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %vec.epilog.scalar.ph557 ], [ %indvars.iv314.ph, %vec.epilog.scalar.ph557.preheader ] ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xg, i64 %indvars.iv314
  %i.yk = trunc nuw i64 %indvars.iv314 to i8
  store i8 %i.yk, ptr %i.yj, align 1, !tbaa !101
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %i.yl = icmp samesign ult i64 %indvars.iv.next315, %i.xh
  br i1 %i.yl, label %vec.epilog.scalar.ph557, label %OJPEGReadBytePeek.exit.thread, !llvm.loop !205

OJPEGReadBytePeek.exit.thread:                    ; preds = %bb.bj, %bb.bh, %bb.aj, %bb.al, %bb.ah, %bb.af, %bb.z, %bb.ab, %bb.r, %bb.p, %bb.j, %bb.ej, %bb.m, %vec.epilog.scalar.ph557, %middle.block552, %vec.epilog.middle.block571, %.preheader, %bb.ey, %bb.ew, %bb.ev, %bb.eo, %bb.bm, %bb.cc, %bb.by, %bb.bw, %bb.br, %bb.bl, %bb.ce, %bb.ao, %bb.bb, %bb.aw, %bb.au, %bb.an, %bb.bc, %bb.ad, %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread, %OJPEGReadHeaderInfoSecStreamSof.exit.thread, %OJPEGReadSkip.exit.thread164.thread, %.loopexit, %OJPEGReadSkip.exit.thread164, %bb.el, %bb.ek, %bb.t, %bb.u, %bb.em
  %.071 = phi i32 [ 1, %bb.ek ], [ 0, %bb.el ], [ 1, %OJPEGReadSkip.exit.thread164 ], [ 0, %bb.ce ], [ 0, %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread ], [ 0, %.loopexit ], [ 1, %OJPEGReadSkip.exit.thread164.thread ], [ 0, %bb.em ], [ 0, %bb.bl ], [ 0, %bb.m ], [ 0, %bb.t ], [ 0, %bb.br ], [ 0, %bb.bw ], [ 0, %bb.by ], [ 0, %OJPEGReadHeaderInfoSecStreamSof.exit.thread ], [ 0, %bb.cc ], [ 0, %bb.u ], [ 0, %bb.ey ], [ 0, %bb.bm ], [ 0, %bb.ad ], [ 1, %.preheader ], [ 0, %bb.eo ], [ 0, %bb.ev ], [ 0, %bb.bc ], [ 0, %bb.an ], [ 0, %bb.au ], [ 0, %bb.aw ], [ 0, %bb.bb ], [ 0, %bb.ao ], [ 0, %bb.ew ], [ 1, %middle.block552 ], [ 1, %vec.epilog.scalar.ph557 ], [ 1, %vec.epilog.middle.block571 ], [ 0, %bb.bh ], [ 0, %bb.al ], [ 0, %bb.af ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 0, %bb.p ], [ 1, %bb.ej ], [ 0, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.r ], [ 0, %bb.j ], [ 0, %bb.bj ]
  ret i32 %.071
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @OJPEGReadByte(ptr noundef %0, ptr noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !95
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %0)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.h = load i8, ptr %i.g, align 1, !tbaa !101
  store i8 %i.h, ptr %1, align 1, !tbaa !101
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.f, align 8, !tbaa !100
  %i.k = load i16, ptr %i.a, align 8, !tbaa !95
  %i.l = add i16 %i.k, -1
  store i16 %i.l, ptr %i.a, align 8, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @OJPEGReadWord(ptr noundef %0, ptr noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 6 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %0)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %OJPEGReadByte.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i16, ptr %i.a, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.f = phi i16 [ %.pre, %._crit_edge ], [ %i.b, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100  ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !100
  %i.k = add i16 %i.f, -1
  store i16 %i.k, ptr %i.a, align 8, !tbaa !95
  %i.l = zext i8 %i.i to i16
  %i.m = shl nuw i16 %i.l, 8
  store i16 %i.m, ptr %1, align 2, !tbaa !163
  %i.n = load i16, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.o = icmp eq i16 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %0)
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %OJPEGReadByte.exit.thread, label %._crit_edge12

._crit_edge12:                                    ; preds = %bb.d
  %.pre13 = load ptr, ptr %i.g, align 8, !tbaa !100
  %.pre14 = load i16, ptr %i.a, align 8, !tbaa !95
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge12, %bb.c
  %i.r = phi i16 [ %.pre14, %._crit_edge12 ], [ %i.n, %bb.c ]
  %i.s = phi ptr [ %.pre13, %._crit_edge12 ], [ %i.j, %bb.c ] ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !101
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.u, ptr %i.g, align 8, !tbaa !100
  %i.v = add i16 %i.r, -1
  store i16 %i.v, ptr %i.a, align 8, !tbaa !95
  %i.w = load i16, ptr %1, align 2, !tbaa !163
  %i.x = zext i8 %i.t to i16
  %i.y = or i16 %i.w, %i.x
  store i16 %i.y, ptr %1, align 2, !tbaa !163
  br label %OJPEGReadByte.exit.thread

OJPEGReadByte.exit.thread:                        ; preds = %bb.d, %bb.b, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @OJPEGReadSkip(ptr noundef captures(none) %0, i16 noundef zeroext range(i16 1, -2) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !95   ; 3 uses
  %spec.select = tail call i16 @llvm.umin.i16(i16 %1, i16 %i.b) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = zext i16 %spec.select to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store ptr %i.f, ptr %i.c, align 8, !tbaa !100
  %i.g = sub i16 %i.b, %spec.select
  store i16 %i.g, ptr %i.a, align 8, !tbaa !95
  %.not.not = icmp ugt i16 %1, %i.b
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = sub i16 %1, %spec.select
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !97   ; 2 uses
  %spec.select2122 = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.i) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !94
  %i.n = add i64 %i.m, %spec.select2122
  store i64 %i.n, ptr %i.l, align 8, !tbaa !94
  %i.o = sub i64 %i.k, %spec.select2122
  store i64 %i.o, ptr %i.j, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store i8 0, ptr %i.p, align 8, !tbaa !99
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @OJPEGReadHeaderInfoSecStreamSos(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 475
  %i.d = load i8, ptr %i.c, align 1, !tbaa !186
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamSos.module, ptr noundef nonnull @.str.28) #13
  br label %OJPEGReadSkip.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1632 ; 15 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !95   ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.b)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %OJPEGReadSkip.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i16, ptr %i.f, align 8, !tbaa !95
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.c
  %i.k = phi i16 [ %.pre.i, %._crit_edge.i ], [ %i.g, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1640 ; 12 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100  ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.l, align 8, !tbaa !100
  %i.p = add i16 %i.k, -1                         ; 3 uses
  store i16 %i.p, ptr %i.f, align 8, !tbaa !95
  %i.q = zext i8 %i.n to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = icmp eq i16 %i.p, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.b)
  %i.u = icmp eq i32 %i.t, 0
end_hunk_0
