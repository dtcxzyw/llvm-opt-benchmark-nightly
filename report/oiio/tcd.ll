inline.NumInlined: 112
inline.NumDeleted: 33
begin_hunk_0_@opj_tcd_decode_tile:bb.a
  %i.xc = getelementptr inbounds nuw i8, ptr %.086110.i, i64 36
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !86
  %i.xe = zext i32 %i.xd to i64
  %i.xf = getelementptr inbounds nuw [192 x i8], ptr %i.xb, i64 %i.xe ; 8 uses
  %i.xg = load i32, ptr %i.o, align 8, !tbaa !155
  %.not90.i = icmp eq i32 %i.xg, 0
  br i1 %.not90.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 184
  %12 = load i32, ptr %i.xh, align 8, !tbaa !156
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 176
  %13 = load i32, ptr %i.xi, align 8, !tbaa !157
  %14 = sub i32 %12, %13
  %15 = getelementptr inbounds nuw i8, ptr %i.xf, i64 188
  %16 = load i32, ptr %15, align 4, !tbaa !252
  %17 = getelementptr inbounds nuw i8, ptr %i.xf, i64 180
  %18 = load i32, ptr %17, align 4, !tbaa !251
  %19 = sub i32 %16, %18
  %i.xj = getelementptr inbounds nuw i8, ptr %.074112.i, i64 80
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %20 = load i32, ptr %i.xk, align 8, !tbaa !100
  %21 = load i32, ptr %i.xf, align 8, !tbaa !97
  %22 = sub nsw i32 %20, %21                      ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %i.xf, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa !101
  %25 = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %26 = load i32, ptr %25, align 4, !tbaa !99
  %27 = sub nsw i32 %24, %26
  %i.xl = getelementptr inbounds nuw i8, ptr %.074112.i, i64 24
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !96
  %i.xn = add i32 %i.xm, -1
end_hunk_0
begin_hunk_1_@opj_tcd_decode_tile:bb.a
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !100
  %i.xs = load i32, ptr %i.xp, align 8, !tbaa !97
  %i.xt = add i32 %22, %i.xs
  %i.xu = sub i32 %i.xr, %i.xt
  %i.xv = getelementptr inbounds nuw i8, ptr %.074112.i, i64 48
  %i.xw = zext i32 %i.xu to i64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.084.i = phi i32 [ %22, %bb.ca ], [ %14, %bb.bz ] ; 8 uses
  %.083.i = phi i32 [ %27, %bb.ca ], [ %19, %bb.bz ] ; 3 uses
  %.078.in.i = phi ptr [ %i.xv, %bb.ca ], [ %i.xj, %bb.bz ]
  %.075.i = phi i64 [ %i.xw, %bb.ca ], [ 0, %bb.bz ] ; 2 uses
  %.078.i = load ptr, ptr %.078.in.i, align 8, !tbaa !265 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.086110.i, i64 32
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !194
end_hunk_1
begin_hunk_2_@opj_tcd_decode_tile:bb.a
bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.077.i = phi i32 [ %i.yd, %bb.cc ], [ 0, %bb.cd ] ; 10 uses
  %.076.i = phi i32 [ %i.ye, %bb.cc ], [ %i.yf, %bb.cd ] ; 6 uses
  %28 = icmp eq i32 %.084.i, 0
  %29 = icmp eq i32 %.083.i, 0
  %or.cond.i225 = select i1 %28, i1 true, i1 %29
  br i1 %or.cond.i225, label %.loopexit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
end_hunk_2
begin_hunk_3_@opj_tcd_decode_tile:bb.a
  br i1 %i.yi, label %.preheader.us.i.preheader, label %.preheader96.us.preheader.i

.preheader.us.i.preheader:                        ; preds = %bb.cf
  %i.yk = add i32 %.084.i, -1
  %i.yl = zext i32 %i.yk to i64
  %i.ym = shl nuw nsw i64 %i.yl, 2
  %i.yn = zext i32 %.084.i to i64                 ; 2 uses
  %min.iters.check402 = icmp ult i32 %.084.i, 8
  %n.vec405 = and i64 %i.yn, 4294967288           ; 4 uses
  %i.yo = shl nuw nsw i64 %n.vec405, 2
  %i.yp = trunc nuw i64 %n.vec405 to i32
end_hunk_3
begin_hunk_4_@opj_tcd_decode_tile:bb.a
.preheader96.us.preheader.i:                      ; preds = %bb.cf
  %i.yq = sext i32 %.077.i to i64
  %i.yr = zext nneg i32 %.076.i to i64
  br label %.preheader96.us.i

.preheader96.us.i:                                ; preds = %._crit_edge.us.i, %.preheader96.us.preheader.i
end_hunk_4
begin_hunk_5_@opj_tcd_decode_tile:bb.a
  store i32 %.076.sink.i, ptr %.4101.us.i, align 4, !tbaa !3
  %i.zc = getelementptr inbounds nuw i8, ptr %.4101.us.i, i64 4 ; 2 uses
  %i.zd = add nuw i32 %.182100.us.i, 1            ; 2 uses
  %exitcond.not.i226 = icmp eq i32 %i.zd, %.084.i
  br i1 %exitcond.not.i226, label %._crit_edge.us.i, label %bb.cg, !llvm.loop !266

._crit_edge.us.i:                                 ; preds = %bb.cj
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.zc, i64 %.075.i
  %i.zf = add nuw i32 %.180102.us.i, 1            ; 2 uses
  %exitcond123.not.i = icmp eq i32 %i.zf, %.083.i
  br i1 %exitcond123.not.i, label %.loopexit.i, label %.preheader96.us.i, !llvm.loop !267

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.us108.i
end_hunk_5
begin_hunk_6_@opj_tcd_decode_tile:bb.a
scalar.ph401.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i, %middle.block415
  %.2105.us.i.ph = phi ptr [ %.1107.us.i, %vector.memcheck ], [ %.1107.us.i, %.preheader.us.i ], [ %i.zh, %middle.block415 ] ; 4 uses
  %.081104.us.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.i ], [ %i.yp, %middle.block415 ] ; 4 uses
  %i.zt = sub i32 %.084.i, %.081104.us.i.ph
  %.neg = add i32 %.081104.us.i.ph, 1
  %xtraiter431 = and i32 %i.zt, 1
  %lcmp.mod432.not = icmp eq i32 %xtraiter431, 0
end_hunk_6
begin_hunk_7_@opj_tcd_decode_tile:bb.a
  %.lcssa420.unr = phi ptr [ poison, %scalar.ph401.preheader ], [ %i.zy, %scalar.ph401.prol ]
  %.2105.us.i.unr = phi ptr [ %.2105.us.i.ph, %scalar.ph401.preheader ], [ %i.zy, %scalar.ph401.prol ]
  %.081104.us.i.unr = phi i32 [ %.081104.us.i.ph, %scalar.ph401.preheader ], [ %i.zz, %scalar.ph401.prol ]
  %i.aaa = icmp eq i32 %.084.i, %.neg
  br i1 %i.aaa, label %._crit_edge.us108.i, label %scalar.ph401

scalar.ph401:                                     ; preds = %scalar.ph401.prol.loopexit, %scalar.ph401
end_hunk_7
begin_hunk_8_@opj_tcd_decode_tile:bb.a
  store i32 %.0.i.us.i.1, ptr %i.aaf, align 4, !tbaa !3
  %i.aak = getelementptr inbounds nuw i8, ptr %.2105.us.i, i64 8 ; 2 uses
  %i.aal = add nuw i32 %.081104.us.i, 2           ; 2 uses
  %exitcond124.not.i.1 = icmp eq i32 %i.aal, %.084.i
  br i1 %exitcond124.not.i.1, label %._crit_edge.us108.i, label %scalar.ph401, !llvm.loop !274

._crit_edge.us108.i:                              ; preds = %scalar.ph401.prol.loopexit, %scalar.ph401, %middle.block415
  %.lcssa373 = phi ptr [ %i.zh, %middle.block415 ], [ %.lcssa420.unr, %scalar.ph401.prol.loopexit ], [ %i.aak, %scalar.ph401 ]
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %.lcssa373, i64 %.075.i
  %i.aan = add nuw i32 %.079106.us.i, 1           ; 2 uses
  %exitcond125.not.i = icmp eq i32 %i.aan, %.083.i
  br i1 %exitcond125.not.i, label %.loopexit.i, label %.preheader.us.i, !llvm.loop !275

.loopexit.i:                                      ; preds = %._crit_edge.us.i, %._crit_edge.us108.i, %bb.ce, %bb.bx
end_hunk_8
begin_hunk_9_@opj_tcd_update_tile_data:bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %.0130206, i64 36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !86
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [192 x i8], ptr %i.ck, i64 %i.cn ; 8 uses
  %i.cp = load i32, ptr %i.ce, align 8, !tbaa !155
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %3 = load i32, ptr %i.cq, align 8, !tbaa !100
  %4 = load i32, ptr %i.co, align 8, !tbaa !97
  %5 = sub nsw i32 %3, %4                         ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %7 = load i32, ptr %6, align 4, !tbaa !101
  %8 = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %9 = load i32, ptr %8, align 4, !tbaa !99
  %10 = sub nsw i32 %7, %9
  %i.cr = getelementptr inbounds nuw i8, ptr %.0129207, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !96
  %i.ct = add i32 %i.cs, -1
end_hunk_9
begin_hunk_10_@opj_tcd_update_tile_data:bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !100
  %i.cy = load i32, ptr %i.cv, align 8, !tbaa !97
  %i.cz = add i32 %5, %i.cy
  %i.da = sub i32 %i.cx, %i.cz
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 184
  %11 = load i32, ptr %i.db, align 8, !tbaa !156
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 176
  %12 = load i32, ptr %i.dc, align 8, !tbaa !157
  %13 = sub i32 %11, %12
  %14 = getelementptr inbounds nuw i8, ptr %i.co, i64 188
  %15 = load i32, ptr %14, align 4, !tbaa !252
  %16 = getelementptr inbounds nuw i8, ptr %i.co, i64 180
  %17 = load i32, ptr %16, align 4, !tbaa !251
  %18 = sub i32 %15, %17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink = phi i64 [ 80, %bb.n ], [ 48, %bb.m ]
  %.0121 = phi i32 [ 0, %bb.n ], [ %i.da, %bb.m ] ; 5 uses
  %.0120 = phi i32 [ %13, %bb.n ], [ %5, %bb.m ]  ; 30 uses
  %.0119 = phi i32 [ %18, %bb.n ], [ %10, %bb.m ] ; 10 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0129207, i64 %.sink
  %.0118 = load ptr, ptr %i.dd, align 8, !tbaa !265 ; 6 uses
  %.not136 = icmp ne i32 %i.ci, 0
end_hunk_10
begin_hunk_11_@opj_tcd_update_tile_data:bb.a
  ]

.preheader153:                                    ; preds = %bb.o
  %.not212 = icmp eq i32 %.0119, 0
  br i1 %.not212, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader153
  %i.dg = zext i32 %.0120 to i64                  ; 6 uses
  %i.dh = shl nuw nsw i64 %i.dg, 2                ; 5 uses
  %i.di = add i32 %.0120, %.0121
  %i.dj = zext i32 %i.di to i64                   ; 5 uses
  %xtraiter = and i32 %.0119, 3                   ; 3 uses
  %i.dk = icmp ult i32 %.0119, 4
  br i1 %i.dk, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %.0119, -4
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %.0130206, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !194
  %.not138 = icmp eq i32 %i.dm, 0
  %.not219 = icmp eq i32 %.0119, 0                ; 2 uses
  br i1 %.not138, label %.preheader146, label %.preheader147

.preheader147:                                    ; preds = %bb.p
  br i1 %.not219, label %.loopexit, label %.preheader143.lr.ph

.preheader143.lr.ph:                              ; preds = %.preheader147
  %.not218 = icmp eq i32 %.0120, 0
  %i.dn = zext i32 %.0121 to i64
  br i1 %.not218, label %.loopexit, label %.preheader143.us.preheader

.preheader143.us.preheader:                       ; preds = %.preheader143.lr.ph
  %i.do = add i32 %.0120, -1
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = shl nuw nsw i64 %i.dp, 2
  %i.dr = zext i32 %.0120 to i64                  ; 2 uses
  %min.iters.check314 = icmp ult i32 %.0120, 8
  %n.vec317 = and i64 %i.dr, 4294967288           ; 5 uses
  %i.ds = shl nuw nsw i64 %n.vec317, 2
  %i.dt = trunc nuw i64 %n.vec317 to i32
end_hunk_11
begin_hunk_12_@opj_tcd_update_tile_data:bb.a
  %.1110184.us.ph = phi ptr [ %.0109190.us, %vector.memcheck305 ], [ %.0109190.us, %.preheader143.us ], [ %i.du, %middle.block325 ] ; 2 uses
  %.1114183.us.ph = phi ptr [ %.0113189.us, %vector.memcheck305 ], [ %.0113189.us, %.preheader143.us ], [ %i.dv, %middle.block325 ] ; 2 uses
  %.0131182.us.ph = phi i32 [ 0, %vector.memcheck305 ], [ 0, %.preheader143.us ], [ %i.dt, %middle.block325 ] ; 4 uses
  %i.ec = sub i32 %.0120, %.0131182.us.ph
  %xtraiter404 = and i32 %i.ec, 7                 ; 2 uses
  %lcmp.mod405.not = icmp eq i32 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %scalar.ph313.prol.loopexit, label %scalar.ph313.prol
end_hunk_12
begin_hunk_13_@opj_tcd_update_tile_data:bb.a
  %.1110184.us.unr = phi ptr [ %.1110184.us.ph, %scalar.ph313.preheader ], [ %i.ed, %scalar.ph313.prol ]
  %.1114183.us.unr = phi ptr [ %.1114183.us.ph, %scalar.ph313.preheader ], [ %i.eg, %scalar.ph313.prol ]
  %.0131182.us.unr = phi i32 [ %.0131182.us.ph, %scalar.ph313.preheader ], [ %i.eh, %scalar.ph313.prol ]
  %i.ei = sub i32 %.0131182.us.ph, %.0120
  %i.ej = icmp ugt i32 %i.ei, -8
  br i1 %i.ej, label %._crit_edge.us192, label %scalar.ph313

end_hunk_13
begin_hunk_14_@opj_tcd_update_tile_data:bb.a
  %i.fp = getelementptr inbounds nuw i8, ptr %.1114183.us, i64 8 ; 2 uses
  store i8 %i.fo, ptr %i.fl, align 1, !tbaa !31
  %i.fq = add nuw i32 %.0131182.us, 8             ; 2 uses
  %exitcond246.not.7 = icmp eq i32 %i.fq, %.0120
  br i1 %exitcond246.not.7, label %._crit_edge.us192, label %scalar.ph313, !llvm.loop !284

._crit_edge.us192:                                ; preds = %scalar.ph313.prol.loopexit, %scalar.ph313, %middle.block325
end_hunk_14
begin_hunk_15_@opj_tcd_update_tile_data:bb.a
  %.lcssa292 = phi ptr [ %i.dv, %middle.block325 ], [ %.lcssa388.unr, %scalar.ph313.prol.loopexit ], [ %i.fp, %scalar.ph313 ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.lcssa293, i64 %i.dn
  %i.fs = add nuw i32 %.0124188.us, 1             ; 2 uses
  %exitcond247.not = icmp eq i32 %i.fs, %.0119
  br i1 %exitcond247.not, label %.loopexit, label %.preheader143.us, !llvm.loop !285

.preheader146:                                    ; preds = %bb.p
  br i1 %.not219, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader146
  %.not220 = icmp eq i32 %.0120, 0
  %i.ft = zext i32 %.0121 to i64
  br i1 %.not220, label %.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.fu = add i32 %.0120, -1
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %i.fw = shl nuw nsw i64 %i.fv, 2
  %i.fx = zext i32 %.0120 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %.0120, 8
  %n.vec = and i64 %i.fx, 4294967288              ; 5 uses
  %i.fy = shl nuw nsw i64 %n.vec, 2
  %i.fz = trunc nuw i64 %n.vec to i32
end_hunk_15
begin_hunk_16_@opj_tcd_update_tile_data:bb.a
  %.3112196.us.ph = phi ptr [ %.2111202.us, %vector.memcheck ], [ %.2111202.us, %.preheader.us ], [ %i.ga, %middle.block ] ; 2 uses
  %.3116195.us.ph = phi ptr [ %.2115201.us, %vector.memcheck ], [ %.2115201.us, %.preheader.us ], [ %i.gb, %middle.block ] ; 2 uses
  %.1132194.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us ], [ %i.fz, %middle.block ] ; 4 uses
  %i.gi = sub i32 %.0120, %.1132194.us.ph
  %xtraiter407 = and i32 %i.gi, 7                 ; 2 uses
  %lcmp.mod408.not = icmp eq i32 %xtraiter407, 0
  br i1 %lcmp.mod408.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol
end_hunk_16
begin_hunk_17_@opj_tcd_update_tile_data:bb.a
  %.3112196.us.unr = phi ptr [ %.3112196.us.ph, %scalar.ph.preheader ], [ %i.gj, %scalar.ph.prol ]
  %.3116195.us.unr = phi ptr [ %.3116195.us.ph, %scalar.ph.preheader ], [ %i.gm, %scalar.ph.prol ]
  %.1132194.us.unr = phi i32 [ %.1132194.us.ph, %scalar.ph.preheader ], [ %i.gn, %scalar.ph.prol ]
  %i.go = sub i32 %.1132194.us.ph, %.0120
  %i.gp = icmp ugt i32 %i.go, -8
  br i1 %i.gp, label %._crit_edge.us204, label %scalar.ph

end_hunk_17
begin_hunk_18_@opj_tcd_update_tile_data:bb.a
  %i.hv = getelementptr inbounds nuw i8, ptr %.3116195.us, i64 8 ; 2 uses
  store i8 %i.hu, ptr %i.hr, align 1, !tbaa !31
  %i.hw = add nuw i32 %.1132194.us, 8             ; 2 uses
  %exitcond248.not.7 = icmp eq i32 %i.hw, %.0120
  br i1 %exitcond248.not.7, label %._crit_edge.us204, label %scalar.ph, !llvm.loop !293

._crit_edge.us204:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
end_hunk_18
begin_hunk_19_@opj_tcd_update_tile_data:bb.a
  %.lcssa294 = phi ptr [ %i.gb, %middle.block ], [ %.lcssa390.unr, %scalar.ph.prol.loopexit ], [ %i.hv, %scalar.ph ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.lcssa295, i64 %i.ft
  %i.hy = add nuw i32 %.1125200.us, 1             ; 2 uses
  %exitcond249.not = icmp eq i32 %i.hy, %.0119
  br i1 %exitcond249.not, label %.loopexit, label %.preheader.us, !llvm.loop !294

bb.q:                                             ; preds = %bb.o
  %i.hz = getelementptr inbounds nuw i8, ptr %.0130206, i64 32
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !194
  %.not137 = icmp eq i32 %i.ia, 0
  %.not215 = icmp eq i32 %.0119, 0                ; 2 uses
  br i1 %.not137, label %.preheader149, label %.preheader151

.preheader151:                                    ; preds = %bb.q
  br i1 %.not215, label %.loopexit, label %.preheader145.lr.ph

.preheader145.lr.ph:                              ; preds = %.preheader151
  %.not214 = icmp eq i32 %.0120, 0
  %i.ib = zext i32 %.0121 to i64
  br i1 %.not214, label %.loopexit, label %.preheader145.us.preheader

.preheader145.us.preheader:                       ; preds = %.preheader145.lr.ph
  %i.ic = add i32 %.0120, -1
  %i.id = zext i32 %i.ic to i64                   ; 2 uses
  %i.ie = shl nuw nsw i64 %i.id, 1
  %i.if = shl nuw nsw i64 %i.id, 2
  %i.ig = zext i32 %.0120 to i64                  ; 2 uses
  %min.iters.check364 = icmp ult i32 %.0120, 8
  %n.vec367 = and i64 %i.ig, 4294967288           ; 5 uses
  %i.ih = shl nuw nsw i64 %n.vec367, 1
  %i.ii = shl nuw nsw i64 %n.vec367, 2
end_hunk_19
begin_hunk_20_@opj_tcd_update_tile_data:bb.a
  %.1104161.us.ph = phi ptr [ %.0103167.us, %vector.memcheck355 ], [ %.0103167.us, %.preheader145.us ], [ %i.ik, %middle.block375 ] ; 2 uses
  %.1106160.us.ph = phi ptr [ %.0105166.us, %vector.memcheck355 ], [ %.0105166.us, %.preheader145.us ], [ %i.il, %middle.block375 ] ; 2 uses
  %.2133159.us.ph = phi i32 [ 0, %vector.memcheck355 ], [ 0, %.preheader145.us ], [ %i.ij, %middle.block375 ] ; 4 uses
  %i.it = sub i32 %.0120, %.2133159.us.ph
  %xtraiter399 = and i32 %i.it, 7                 ; 2 uses
  %lcmp.mod400.not = icmp eq i32 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %scalar.ph363.prol.loopexit, label %scalar.ph363.prol
end_hunk_20
begin_hunk_21_@opj_tcd_update_tile_data:bb.a
  %.1104161.us.unr = phi ptr [ %.1104161.us.ph, %scalar.ph363.preheader ], [ %i.ix, %scalar.ph363.prol ]
  %.1106160.us.unr = phi ptr [ %.1106160.us.ph, %scalar.ph363.preheader ], [ %i.iu, %scalar.ph363.prol ]
  %.2133159.us.unr = phi i32 [ %.2133159.us.ph, %scalar.ph363.preheader ], [ %i.iy, %scalar.ph363.prol ]
  %i.iz = sub i32 %.2133159.us.ph, %.0120
  %i.ja = icmp ugt i32 %i.iz, -8
  br i1 %i.ja, label %._crit_edge.us, label %scalar.ph363

end_hunk_21
begin_hunk_22_@opj_tcd_update_tile_data:bb.a
  store i16 %i.kf, ptr %i.kc, align 2
  %i.kg = getelementptr inbounds nuw i8, ptr %.1104161.us, i64 16 ; 2 uses
  %i.kh = add nuw i32 %.2133159.us, 8             ; 2 uses
  %exitcond242.not.7 = icmp eq i32 %i.kh, %.0120
  br i1 %exitcond242.not.7, label %._crit_edge.us, label %scalar.ph363, !llvm.loop !302

._crit_edge.us:                                   ; preds = %scalar.ph363.prol.loopexit, %scalar.ph363, %middle.block375
end_hunk_22
begin_hunk_23_@opj_tcd_update_tile_data:bb.a
  %.lcssa288 = phi ptr [ %i.ik, %middle.block375 ], [ %.lcssa384.unr, %scalar.ph363.prol.loopexit ], [ %i.kg, %scalar.ph363 ] ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.lcssa289, i64 %i.ib
  %i.kj = add nuw i32 %.2126165.us, 1             ; 2 uses
  %exitcond243.not = icmp eq i32 %i.kj, %.0119
  br i1 %exitcond243.not, label %.loopexit, label %.preheader145.us, !llvm.loop !303

.preheader149:                                    ; preds = %bb.q
  br i1 %.not215, label %.loopexit, label %.preheader144.lr.ph

.preheader144.lr.ph:                              ; preds = %.preheader149
  %.not216 = icmp eq i32 %.0120, 0
  %i.kk = zext i32 %.0121 to i64
  br i1 %.not216, label %.loopexit, label %.preheader144.us.preheader

.preheader144.us.preheader:                       ; preds = %.preheader144.lr.ph
  %i.kl = add i32 %.0120, -1
  %i.km = zext i32 %i.kl to i64                   ; 2 uses
  %i.kn = shl nuw nsw i64 %i.km, 1
  %i.ko = shl nuw nsw i64 %i.km, 2
  %i.kp = zext i32 %.0120 to i64                  ; 2 uses
  %min.iters.check339 = icmp ult i32 %.0120, 8
  %n.vec342 = and i64 %i.kp, 4294967288           ; 5 uses
  %i.kq = shl nuw nsw i64 %n.vec342, 1
  %i.kr = shl nuw nsw i64 %n.vec342, 2
end_hunk_23
begin_hunk_24_@opj_tcd_update_tile_data:bb.a
  %.3172.us.ph = phi ptr [ %.2178.us, %vector.memcheck330 ], [ %.2178.us, %.preheader144.us ], [ %i.kt, %middle.block350 ] ; 2 uses
  %.3108171.us.ph = phi ptr [ %.2107177.us, %vector.memcheck330 ], [ %.2107177.us, %.preheader144.us ], [ %i.ku, %middle.block350 ] ; 2 uses
  %.3134170.us.ph = phi i32 [ 0, %vector.memcheck330 ], [ 0, %.preheader144.us ], [ %i.ks, %middle.block350 ] ; 4 uses
  %i.lc = sub i32 %.0120, %.3134170.us.ph
  %xtraiter401 = and i32 %i.lc, 7                 ; 2 uses
  %lcmp.mod402.not = icmp eq i32 %xtraiter401, 0
  br i1 %lcmp.mod402.not, label %scalar.ph338.prol.loopexit, label %scalar.ph338.prol
end_hunk_24
begin_hunk_25_@opj_tcd_update_tile_data:bb.a
  %.3172.us.unr = phi ptr [ %.3172.us.ph, %scalar.ph338.preheader ], [ %i.lg, %scalar.ph338.prol ]
  %.3108171.us.unr = phi ptr [ %.3108171.us.ph, %scalar.ph338.preheader ], [ %i.ld, %scalar.ph338.prol ]
  %.3134170.us.unr = phi i32 [ %.3134170.us.ph, %scalar.ph338.preheader ], [ %i.lh, %scalar.ph338.prol ]
  %i.li = sub i32 %.3134170.us.ph, %.0120
  %i.lj = icmp ugt i32 %i.li, -8
  br i1 %i.lj, label %._crit_edge.us180, label %scalar.ph338

end_hunk_25
begin_hunk_26_@opj_tcd_update_tile_data:bb.a
  store i16 %i.mo, ptr %i.ml, align 2
  %i.mp = getelementptr inbounds nuw i8, ptr %.3172.us, i64 16 ; 2 uses
  %i.mq = add nuw i32 %.3134170.us, 8             ; 2 uses
  %exitcond244.not.7 = icmp eq i32 %i.mq, %.0120
  br i1 %exitcond244.not.7, label %._crit_edge.us180, label %scalar.ph338, !llvm.loop !311

._crit_edge.us180:                                ; preds = %scalar.ph338.prol.loopexit, %scalar.ph338, %middle.block350
end_hunk_26
begin_hunk_27_@opj_tcd_update_tile_data:bb.a
  %.lcssa290 = phi ptr [ %i.kt, %middle.block350 ], [ %.lcssa386.unr, %scalar.ph338.prol.loopexit ], [ %i.mp, %scalar.ph338 ] ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.lcssa291, i64 %i.kk
  %i.ms = add nuw i32 %.3127176.us, 1             ; 2 uses
  %exitcond245.not = icmp eq i32 %i.ms, %.0119
  br i1 %exitcond245.not, label %.loopexit, label %.preheader144.us, !llvm.loop !312

bb.r:                                             ; preds = %bb.r, %.lr.ph.new
end_hunk_27
