inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6LibRaw21identify_finetune_dcrEPcxx:bb.a
bb.gc:                                            ; preds = %bb.gb
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !237 ; 2 uses
  %i.tp = add i16 %i.to, -1
  %or.cond362.not = icmp ult i16 %i.tp, %i.ro
  br i1 %or.cond362.not, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %bb.gc
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.tr = load i16, ptr %i.tq, align 4, !tbaa !239 ; 2 uses
  %i.ts = add i16 %i.tr, -1
  %or.cond416.not = icmp ult i16 %i.ts, %i.rg
  br i1 %or.cond416.not, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.tu = load i16, ptr %i.tt, align 8, !tbaa !240 ; 2 uses
  store i16 %i.tu, ptr %i.rm, align 8, !tbaa !167
  %i.tv = load i16, ptr %i.tm, align 2, !tbaa !241 ; 2 uses
  store i16 %i.tv, ptr %i.ru, align 2, !tbaa !177
  store i16 %i.to, ptr %i.rp, align 2, !tbaa !164
  store i16 %i.tr, ptr %i.rh, align 4, !tbaa !165
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ft, %bb.ga, %bb.gb, %bb.ge, %bb.gd, %bb.gc, %bb.fw, %bb.fx, %bb.fz, %bb.fy, %bb.fv, %bb.ex, %bb.ey, %bb.ez, %bb.fp, %bb.fq, %bb.fc, %bb.fd, %bb.fe, %bb.fb, %bb.fi, %bb.fj, %bb.fk, %bb.fh, %bb.fg, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fr, %bb.fs, %bb.ew
  %i.tw = phi i16 [ %i.rt, %bb.ft ], [ %i.rt, %bb.ga ], [ %i.rt, %bb.gb ], [ %i.tv, %bb.ge ], [ %i.rt, %bb.gd ], [ %i.rt, %bb.gc ], [ 34, %bb.fw ], [ 0, %bb.fx ], [ 32, %bb.fz ], [ %i.rt, %bb.fy ], [ %i.rt, %bb.fv ], [ %i.rt, %bb.ex ], [ 0, %bb.ey ], [ 4, %bb.ez ], [ 0, %bb.fp ], [ 0, %bb.fq ], [ %i.rt, %bb.fc ], [ %i.rt, %bb.fd ], [ %i.sf, %bb.fe ], [ 0, %bb.fb ], [ %i.rt, %bb.fi ], [ %i.rt, %bb.fj ], [ %i.sr, %bb.fk ], [ 630, %bb.fh ], [ 0, %bb.fg ], [ 624, %bb.fo ], [ 624, %bb.fn ], [ 0, %bb.fm ], [ %i.rt, %bb.fl ], [ 0, %bb.fr ], [ 0, %bb.fs ], [ %i.rt, %bb.ew ]
  %i.tx = phi i16 [ %i.rl, %bb.ft ], [ %i.rl, %bb.ga ], [ %i.rl, %bb.gb ], [ %i.tu, %bb.ge ], [ %i.rl, %bb.gd ], [ %i.rl, %bb.gc ], [ %i.rl, %bb.fw ], [ %i.rl, %bb.fx ], [ 8, %bb.fz ], [ %i.rl, %bb.fy ], [ 6, %bb.fv ], [ %i.rl, %bb.ex ], [ %i.rl, %bb.ey ], [ %i.rl, %bb.ez ], [ 0, %bb.fp ], [ 0, %bb.fq ], [ %i.rl, %bb.fc ], [ %i.rl, %bb.fd ], [ %i.se, %bb.fe ], [ 6, %bb.fb ], [ %i.rl, %bb.fi ], [ %i.rl, %bb.fj ], [ %i.sq, %bb.fk ], [ 0, %bb.fh ], [ 6, %bb.fg ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 6, %bb.fm ], [ 0, %bb.fl ], [ 2, %bb.fr ], [ 2, %bb.fs ], [ %i.rl, %bb.ew ]
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 381828
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !221
  %.not208 = icmp eq i32 %i.tz, 0
  br i1 %.not208, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !160
  %i.uc = trunc i32 %i.ub to i16
  %i.ud = mul i16 %i.ro, %i.uc
  store i16 %i.ud, ptr %i.rn, align 2, !tbaa !162
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !85
  %i.ug = icmp eq i32 %i.uf, 9
  br i1 %i.ug, label %.preheader, label %.loopexit473

.preheader:                                       ; preds = %bb.gh
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.ui = zext i16 %i.tx to i32                   ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 2 uses
  %i.uk = zext i16 %i.tw to i64                   ; 2 uses
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gi, %.preheader
  %indvars.iv512 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next513.1, %bb.gi ] ; 6 uses
  %.lhs.trunc = trunc i64 %indvars.iv512 to i8
  %i.ul = udiv i8 %.lhs.trunc, 6
  %.zext = zext nneg i8 %i.ul to i32
  %i.um = add nuw nsw i32 %i.ui, %.zext
  %i.un = add nuw nsw i64 %indvars.iv512, %i.uk
  %i.uo = trunc nsw i64 %i.un to i32
  %i.up = insertelement <2 x i32> poison, i32 %i.um, i64 0
  %i.uq = insertelement <2 x i32> %i.up, i32 %i.uo, i64 1
  %i.ur = urem <2 x i32> %i.uq, splat (i32 6)     ; 2 uses
  %i.us = extractelement <2 x i32> %i.ur, i64 0
  %i.ut = zext nneg i32 %i.us to i64
  %i.uu = getelementptr inbounds nuw [6 x i8], ptr %i.uh, i64 %i.ut
  %i.uv = extractelement <2 x i32> %i.ur, i64 1
  %i.uw = zext nneg i32 %i.uv to i64
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.uw
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !82
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uj, i64 %indvars.iv512
  store i8 %i.uy, ptr %i.uz, align 2, !tbaa !82
  %indvars.iv.next513 = or disjoint i64 %indvars.iv512, 1 ; 2 uses
  %.lhs.trunc.1 = trunc i64 %indvars.iv512 to i8
  %i.va = udiv i8 %.lhs.trunc.1, 6
  %.zext.1 = zext nneg i8 %i.va to i32
  %i.vb = add nuw nsw i32 %i.ui, %.zext.1
  %i.vc = add nuw nsw i64 %indvars.iv.next513, %i.uk
  %i.vd = trunc nsw i64 %i.vc to i32
  %i.ve = insertelement <2 x i32> poison, i32 %i.vb, i64 0
  %i.vf = insertelement <2 x i32> %i.ve, i32 %i.vd, i64 1
  %i.vg = urem <2 x i32> %i.vf, splat (i32 6)     ; 2 uses
  %i.vh = extractelement <2 x i32> %i.vg, i64 0
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = getelementptr inbounds nuw [6 x i8], ptr %i.uh, i64 %i.vi
  %i.vk = extractelement <2 x i32> %i.vg, i64 1
  %i.vl = zext nneg i32 %i.vk to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.vl
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !82
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uj, i64 %indvars.iv.next513
  store i8 %i.vn, ptr %i.vo, align 1, !tbaa !82
  %indvars.iv.next513.1 = add nuw nsw i64 %indvars.iv512, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next513.1, 36
  br i1 %exitcond.not.1, label %.loopexit473, label %bb.gi, !llvm.loop !242

bb.gj:                                            ; preds = %bb.ej
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.vq = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vp, ptr noundef nonnull dereferenceable(8) @.str.125) #20
  %.not176 = icmp eq i32 %i.vq, 0
  br i1 %.not176, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 1711, ptr %i.vr, align 4, !tbaa !165
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 2312, ptr %i.vs, align 2, !tbaa !164
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 2336, ptr %i.vt, align 2, !tbaa !162
  br label %bb.hc

bb.gl:                                            ; preds = %bb.gj
  %i.vu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vp, ptr noundef nonnull dereferenceable(8) @.str.126) #20
  %.not177 = icmp eq i32 %i.vu, 0
  br i1 %.not177, label %bb.gz, label %.loopexit473

bb.gm:                                            ; preds = %bb.ej
  %i.vv = icmp eq i64 %2, 5869568
  br i1 %i.vv, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 381860
  store i32 30, ptr %i.vw, align 4, !tbaa !183
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 3746
  %i.vy = load i16, ptr %i.vx, align 2, !tbaa !243
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 768416 ; 2 uses
  switch i16 %i.vy, label %bb.gq [
    i16 82, label %.sink.split588
    i16 89, label %bb.gp
  ]

bb.gp:                                            ; preds = %bb.go
  br label %.sink.split588

bb.gq:                                            ; preds = %bb.go
  %.unpack166 = load i64, ptr %i.vz, align 8, !tbaa !153
  %.not169 = icmp eq i64 %.unpack166, 0
  br i1 %.not169, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 4095, ptr %i.wa, align 8, !tbaa !90
  br label %.sink.split588

.sink.split588:                                   ; preds = %bb.go, %bb.gr, %bb.gp
  %.sink589 = phi i64 [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %bb.gp ], [ ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), %bb.gr ], [ ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), %bb.go ]
  store i64 %.sink589, ptr %i.vz, align 8, !tbaa !153
  %.repack171 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  store i64 0, ptr %.repack171, align 8, !tbaa !153
  br label %bb.gs

bb.gs:                                            ; preds = %.sink.split588, %bb.gq
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 3748
  %i.wc = load i16, ptr %i.wb, align 4, !tbaa !244
  switch i16 %i.wc, label %bb.gu [
    i16 4, label %.sink.split590
    i16 1, label %bb.gt
  ]

bb.gt:                                            ; preds = %bb.gs
  br label %.sink.split590

.sink.split590:                                   ; preds = %bb.gs, %bb.gt
  %.sink591 = phi i32 [ -1802201964, %bb.gt ], [ 1229539657, %bb.gs ]
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %.sink591, ptr %i.wd, align 8, !tbaa !85
  br label %bb.gu

bb.gu:                                            ; preds = %.sink.split590, %bb.gs
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %i.wf = load i16, ptr %i.we, align 8, !tbaa !245 ; 2 uses
  %.not173 = icmp eq i16 %i.wf, 0
  br i1 %.not173, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 3742
  %i.wh = load i16, ptr %i.wg, align 2, !tbaa !246
  %.not174 = icmp eq i16 %i.wh, 0
  br i1 %.not174, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.wi = zext i16 %i.wf to i32
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 381836
  store i32 %i.wi, ptr %i.wj, align 4, !tbaa !166
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv, %bb.gu
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.wl = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.wk, ptr noundef nonnull dereferenceable(9) @.str.127, i64 noundef 8) #20
  %.not175 = icmp eq i32 %i.wl, 0
  br i1 %.not175, label %bb.gy, label %.loopexit473

bb.gy:                                            ; preds = %bb.gx
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.wn = load i8, ptr %i.wm, align 4, !tbaa !82
  switch i8 %i.wn, label %bb.hb [
    i8 52, label %.sink.split593
    i8 53, label %bb.gz
    i8 54, label %bb.ha
  ]

bb.gz:                                            ; preds = %bb.gy, %bb.gl
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 1956, ptr %i.wo, align 4, !tbaa !165
  br label %.sink.split593

bb.ha:                                            ; preds = %bb.gy
  br label %.sink.split593

.sink.split593:                                   ; preds = %bb.gy, %bb.ha, %bb.gz
  %.sink599 = phi i64 [ 22, %bb.gz ], [ 20, %bb.ha ], [ 20, %bb.gy ]
  %.sink597 = phi i16 [ 2607, %bb.gz ], [ 2136, %bb.ha ], [ 1716, %bb.gy ]
  %.sink596 = phi i64 [ 18, %bb.gz ], [ 22, %bb.ha ], [ 22, %bb.gy ]
  %.sink594 = phi i16 [ 2624, %bb.gz ], [ 2848, %bb.ha ], [ 2304, %bb.gy ]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink599
  store i16 %.sink597, ptr %5, align 2, !tbaa !88
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 %.sink596
  store i16 %.sink594, ptr %i.wp, align 2, !tbaa !88
  br label %bb.hb

bb.hb:                                            ; preds = %.sink.split593, %bb.gy
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 381760 ; 2 uses
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !152
  %i.ws = add nsw i64 %i.wr, 14
  store i64 %i.ws, ptr %i.wq, align 8, !tbaa !152
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.wt, align 8, !tbaa !85
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.gk
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 768416
  store i64 ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), ptr %i.wu, align 8, !tbaa !153
  %.repack178 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  store i64 0, ptr %.repack178, align 8, !tbaa !153
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 991, ptr %i.wv, align 8, !tbaa !90
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 19789, ptr %i.ww, align 8, !tbaa !124
  br label %.loopexit473

bb.hd:                                            ; preds = %bb.ej
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !162 ; 4 uses
  %i.xa = icmp eq i16 %i.wz, 4704
  br i1 %i.xa, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 8, ptr %i.xb, align 8, !tbaa !167
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 8, ptr %i.xd, align 2, !tbaa !177
  %i.xe = load <2 x i16>, ptr %i.xc, align 4, !tbaa !88
  %i.xf = add <2 x i16> %i.xe, <i16 -8, i16 -16>
  store <2 x i16> %i.xf, ptr %i.xc, align 4, !tbaa !88
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 381860
  store i32 32, ptr %i.xg, align 4, !tbaa !183
  br label %.loopexit473

bb.hf:                                            ; preds = %bb.hd
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.xi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.xh, ptr noundef nonnull dereferenceable(7) @.str.128) #20
  %.not154 = icmp eq i32 %i.xi, 0
  br i1 %.not154, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x i16> <i16 3634, i16 5456, i16 38, i16 92>, ptr %i.xj, align 4, !tbaa !88
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.xk, align 8, !tbaa !85
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 3, ptr %i.xl, align 4, !tbaa !119
  br label %.loopexit473

bb.hh:                                            ; preds = %bb.hf
  %i.xm = load i16, ptr %i.wx, align 8, !tbaa !163
  %i.xn = icmp eq i16 %i.xm, 3714
  br i1 %i.xn, label %bb.hi, label %bb.hl

bb.hi:                                            ; preds = %bb.hh
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i16 18, ptr %i.xo, align 8, !tbaa !167
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.xq = load i16, ptr %i.xp, align 4, !tbaa !165
  %i.xr = add i16 %i.xq, -18
  store i16 %i.xr, ptr %i.xp, align 4, !tbaa !165
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 5536, ptr %i.xs, align 2, !tbaa !164
  %i.xt = add i16 %i.wz, -5536
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  store i16 %i.xt, ptr %i.xu, align 2, !tbaa !177
  %.not165 = icmp eq i16 %i.wz, 5600
  br i1 %.not165, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  store i16 0, ptr %i.xo, align 8, !tbaa !167
  store i16 0, ptr %i.xu, align 2, !tbaa !177
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.xv, align 8, !tbaa !85
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 3, ptr %i.xw, align 4, !tbaa !119
  br label %.loopexit473

bb.hl:                                            ; preds = %bb.hh
  switch i16 %i.wz, label %bb.hv [
    i16 5632, label %bb.hm
    i16 5664, label %bb.ho
    i16 6496, label %bb.hp
  ]

bb.hm:                                            ; preds = %bb.hl
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 18761, ptr %i.xx, align 8, !tbaa !124
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 3694, ptr %i.xy, align 4, !tbaa !165
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 2, ptr %i.xz, align 8, !tbaa !167
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 381836
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !166 ; 2 uses
  %i.yc = trunc i32 %i.yb to i16                  ; 2 uses
  %i.yd = add i16 %i.yc, 32
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %i.yd, ptr %i.ye, align 2, !tbaa !177
  %i.yf = sub i16 5542, %i.yc
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.yf, ptr %i.yg, align 2, !tbaa !164
  %i.yh = icmp eq i32 %i.yb, 12
  br i1 %i.yh, label %bb.hn, label %.loopexit473

bb.hn:                                            ; preds = %bb.hm
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 381860
  store i32 80, ptr %i.yi, align 4, !tbaa !183
  br label %.loopexit473

bb.ho:                                            ; preds = %bb.hl
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 17, ptr %i.yj, align 8, !tbaa !167
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.yl = load i16, ptr %i.yk, align 4, !tbaa !165
  %i.ym = add i16 %i.yl, -17
  store i16 %i.ym, ptr %i.yk, align 4, !tbaa !165
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 96, ptr %i.yn, align 2, !tbaa !177
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 5544, ptr %i.yo, align 2, !tbaa !164
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1229539657, ptr %i.yp, align 8, !tbaa !85
  br label %.loopexit473

bb.hp:                                            ; preds = %bb.hl
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.yq, align 8, !tbaa !85
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 8, !tbaa !109
  %.not160 = icmp eq i32 %i.ys, 0
  br i1 %.not160, label %bb.hq, label %.loopexit473

bb.hq:                                            ; preds = %bb.hp
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 136672
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !83
  %.not161 = icmp eq i32 %i.yu, 0
  br i1 %.not161, label %bb.hr, label %.loopexit473

bb.hr:                                            ; preds = %bb.hq
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !83
  %.not162 = icmp eq i32 %i.yw, 0
  br i1 %.not162, label %bb.hs, label %.loopexit473

bb.hs:                                            ; preds = %bb.hr
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.yy = load i32, ptr %i.yx, align 8, !tbaa !83
  %.not163 = icmp eq i32 %i.yy, 0
  br i1 %.not163, label %bb.ht, label %.loopexit473

bb.ht:                                            ; preds = %bb.hs
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !83
  %.not164 = icmp eq i32 %i.za, 0
  br i1 %.not164, label %bb.hu, label %.loopexit473

bb.hu:                                            ; preds = %bb.ht
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 381836
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !166
  %i.zd = add i32 %i.zc, -7
  %i.ze = shl nuw i32 1, %i.zd
  store i32 %i.ze, ptr %i.yr, align 8, !tbaa !109
  br label %.loopexit473

bb.hv:                                            ; preds = %bb.hl
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.zg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.zf, ptr noundef nonnull dereferenceable(4) @.str.129) #20
  %.not155 = icmp eq i32 %i.zg, 0
  br i1 %.not155, label %bb.hw, label %bb.hy

bb.hw:                                            ; preds = %bb.hv
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 18761, ptr %i.zh, align 8, !tbaa !124
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i16 2, ptr %i.zj, align 8, !tbaa !167
  %i.zk = load <2 x i16>, ptr %i.zi, align 4, !tbaa !88 ; 2 uses
  %i.zl = add <2 x i16> %i.zk, <i16 -20, i16 -6>  ; 2 uses
  store <2 x i16> %i.zl, ptr %i.zi, align 4, !tbaa !88
  %i.zm = extractelement <2 x i16> %i.zl, i64 1
  %i.zn = icmp ugt i16 %i.zm, 3682
  br i1 %i.zn, label %bb.hx, label %.loopexit473

bb.hx:                                            ; preds = %bb.hw
  %i.zo = add <2 x i16> %i.zk, <i16 -30, i16 -52>
  store <2 x i16> %i.zo, ptr %i.zi, align 4, !tbaa !88
  store i16 8, ptr %i.zj, align 8, !tbaa !167
end_hunk_0
