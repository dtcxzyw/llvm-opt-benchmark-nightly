inline.NumInlined: 148
inline.NumDeleted: 44
begin_hunk_0_@pack_unpack_internal:bb.a
  br i1 %i.tf, label %.lr.ph1575, label %._crit_edge1576

.lr.ph1575:                                       ; preds = %bb.fe, %bb.fq
  %.218091573 = phi ptr [ %.25813, %bb.fq ], [ %i.sx, %bb.fe ] ; 5 uses
  %.268611572 = phi i64 [ %i.uu, %bb.fq ], [ %.25860, %bb.fe ] ; 2 uses
  %.19591571 = phi ptr [ %i.ut, %bb.fq ], [ %.09581579, %bb.fe ] ; 2 uses
  %i.tg = call i64 @llvm.umin.i64(i64 %.268611572, i64 3) ; 3 uses
  %i.th = icmp ult ptr %.218091573, %i.w
  br i1 %i.th, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %.lr.ph1575
  %i.ti = load i8, ptr %.218091573, align 1, !tbaa !15 ; 2 uses
  %i.tj = add i8 %i.ti, -32
  %or.cond1087 = icmp ult i8 %i.tj, 65
  br i1 %or.cond1087, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.tk = getelementptr i8, ptr %.218091573, i64 1
  %i.tl = shl i8 %i.ti, 2
  %i.tm = xor i8 %i.tl, -128
  %i.tn = zext i8 %i.tm to i64
  br label %bb.fh

bb.fh:                                            ; preds = %.lr.ph1575, %bb.ff, %bb.fg
  %.0955 = phi i64 [ %i.tn, %bb.fg ], [ 0, %bb.ff ], [ 0, %.lr.ph1575 ]
  %.22810 = phi ptr [ %i.tk, %bb.fg ], [ %.218091573, %bb.ff ], [ %.218091573, %.lr.ph1575 ] ; 5 uses
  %i.to = icmp ult ptr %.22810, %i.w
  br i1 %i.to, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %i.tp = load i8, ptr %.22810, align 1, !tbaa !15 ; 2 uses
  %i.tq = add i8 %i.tp, -32
  %or.cond1088 = icmp ult i8 %i.tq, 65
  br i1 %or.cond1088, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.tr = getelementptr i8, ptr %.22810, i64 1
  %i.ts = and i8 %i.tp, 63
  %i.tt = xor i8 %i.ts, 32
  %i.tu = zext nneg i8 %i.tt to i64
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fh, %bb.fi, %bb.fj
  %.0954 = phi i64 [ %i.tu, %bb.fj ], [ 0, %bb.fi ], [ 0, %bb.fh ] ; 2 uses
  %.23811 = phi ptr [ %i.tr, %bb.fj ], [ %.22810, %bb.fi ], [ %.22810, %bb.fh ] ; 5 uses
  %i.tv = icmp ult ptr %.23811, %i.w
  br i1 %i.tv, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  %i.tw = load i8, ptr %.23811, align 1, !tbaa !15 ; 2 uses
  %i.tx = add i8 %i.tw, -32
  %or.cond1089 = icmp ult i8 %i.tx, 65
  br i1 %or.cond1089, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.ty = getelementptr i8, ptr %.23811, i64 1
  %i.tz = and i8 %i.tw, 63
  %i.ua = xor i8 %i.tz, 32
  %i.ub = zext nneg i8 %i.ua to i64
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fk, %bb.fl, %bb.fm
  %.0953 = phi i64 [ %i.ub, %bb.fm ], [ 0, %bb.fl ], [ 0, %bb.fk ] ; 2 uses
  %.24812 = phi ptr [ %i.ty, %bb.fm ], [ %.23811, %bb.fl ], [ %.23811, %bb.fk ] ; 5 uses
  %i.uc = icmp ult ptr %.24812, %i.w
  br i1 %i.uc, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  %i.ud = load i8, ptr %.24812, align 1, !tbaa !15 ; 2 uses
  %i.ue = add i8 %i.ud, -32
  %or.cond1090 = icmp ult i8 %i.ue, 65
  br i1 %or.cond1090, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.uf = getelementptr i8, ptr %.24812, i64 1
  %i.ug = and i8 %i.ud, 63
  %i.uh = xor i8 %i.ug, 32
  %i.ui = zext nneg i8 %i.uh to i64
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fn, %bb.fo, %bb.fp
  %.0952 = phi i64 [ %i.ui, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ]
  %.25813 = phi ptr [ %i.uf, %bb.fp ], [ %.24812, %bb.fo ], [ %.24812, %bb.fn ] ; 2 uses
  %i.uj = lshr i64 %.0954, 4
  %i.uk = or i64 %i.uj, %.0955
  %i.ul = trunc nuw i64 %i.uk to i8
  store i8 %i.ul, ptr %i.f, align 1, !tbaa !15
  %i.um = shl nuw nsw i64 %.0954, 4
  %i.un = lshr i64 %.0953, 2
  %i.uo = or i64 %i.un, %i.um
  %i.up = trunc i64 %i.uo to i8
  store i8 %i.up, ptr %.1..sroa_idx, align 1, !tbaa !15
  %i.uq = shl nuw nsw i64 %.0953, 6
  %i.ur = or i64 %.0952, %i.uq
  %i.us = trunc i64 %i.ur to i8
  store i8 %i.us, ptr %.2..sroa_idx, align 1, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.19591571, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.f, i64 noundef range(i64 1, -9223372036854775808) %i.tg, i1 noundef false) #12
  %i.ut = getelementptr i8, ptr %.19591571, i64 %i.tg ; 2 uses
  %i.uu = sub nsw i64 %.268611572, %i.tg          ; 2 uses
  %i.uv = icmp sgt i64 %i.uu, 0
  br i1 %i.uv, label %.lr.ph1575, label %._crit_edge1576, !llvm.loop !68

._crit_edge1576:                                  ; preds = %bb.fq, %bb.fe
  %.1959.lcssa = phi ptr [ %.09581579, %bb.fe ], [ %i.ut, %bb.fq ]
  %.21809.lcssa = phi ptr [ %i.sx, %bb.fe ], [ %.25813, %bb.fq ] ; 6 uses
  %i.uw = icmp ult ptr %.21809.lcssa, %i.w
  br i1 %i.uw, label %bb.fr, label %bb.ft

bb.fr:                                            ; preds = %._crit_edge1576
  %i.ux = load i8, ptr %.21809.lcssa, align 1, !tbaa !15
  switch i8 %i.ux, label %bb.fs [
    i8 13, label %bb.ft
    i8 10, label %bb.ft
  ]

bb.fs:                                            ; preds = %bb.fr
  %i.uy = getelementptr i8, ptr %.21809.lcssa, i64 1
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fr, %bb.fs, %._crit_edge1576
  %.26814 = phi ptr [ %i.uy, %bb.fs ], [ %.21809.lcssa, %bb.fr ], [ %.21809.lcssa, %bb.fr ], [ %.21809.lcssa, %._crit_edge1576 ] ; 4 uses
  %i.uz = icmp ult ptr %.26814, %i.w
  br i1 %i.uz, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.va = load i8, ptr %.26814, align 1, !tbaa !15
  %i.vb = icmp eq i8 %i.va, 13
  %spec.select1091.idx = zext i1 %i.vb to i64
  %spec.select1091 = getelementptr i8, ptr %.26814, i64 %spec.select1091.idx
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.27815 = phi ptr [ %.26814, %bb.ft ], [ %spec.select1091, %bb.fu ] ; 4 uses
  %i.vc = icmp ult ptr %.27815, %i.w
  br i1 %i.vc, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.vd = load i8, ptr %.27815, align 1, !tbaa !15
  %i.ve = icmp eq i8 %i.vd, 10
  %spec.select1092.idx = zext i1 %i.ve to i64
  %spec.select1092 = getelementptr i8, ptr %.27815, i64 %spec.select1092.idx
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.28816 = phi ptr [ %.27815, %bb.fv ], [ %spec.select1092, %bb.fw ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.vf = icmp ult ptr %.28816, %i.w
  br i1 %i.vf, label %bb.fd, label %.critedge55, !llvm.loop !69

.critedge55:                                      ; preds = %bb.fx, %bb.fd, %RSTRING_PTR.exit1138
  %.0956.lcssa = phi i64 [ 0, %RSTRING_PTR.exit1138 ], [ %.09561580, %bb.fd ], [ %.1957, %bb.fx ]
  %.20808.lcssa = phi ptr [ %.07881675, %RSTRING_PTR.exit1138 ], [ %.208081581, %bb.fd ], [ %.28816, %bb.fx ] ; 2 uses
  call void @rb_str_set_len(i64 noundef %i.sm, i64 noundef %.0956.lcssa) #12
  br i1 %i.ao, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %.critedge55
  %i.vg = call i64 @rb_yield(i64 noundef %i.sm) #12 ; 0 uses
  br label %.thread1178

bb.fz:                                            ; preds = %.critedge55
  br i1 %i.ai, label %bb.ga, label %.thread1320

bb.ga:                                            ; preds = %bb.fz
  %i.vh = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.sm) #12 ; 0 uses
  br label %.thread1178

bb.gb:                                            ; preds = %bb.u
  %i.vi = ptrtoint ptr %.07881675 to i64
  %i.vj = sub i64 %i.an, %i.vi
  %i.vk = mul i64 %i.vj, 3
  %i.vl = add i64 %i.vk, 9
  %i.vm = sdiv i64 %i.vl, 4
  %i.vn = call i64 @rb_str_new(ptr noundef null, i64 noundef %i.vm) #12, !callees !42 ; 5 uses
  %i.vo = inttoptr i64 %i.vn to ptr               ; 3 uses
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !13
  %i.vq = and i64 %i.vp, 8192
  %.not.i1139 = icmp eq i64 %i.vq, 0
  %i.vr = getelementptr i8, ptr %i.vo, i64 24     ; 4 uses
  br i1 %.not.i1139, label %RSTRING_PTR.exit1140, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1140

RSTRING_PTR.exit1140:                             ; preds = %bb.gb, %bb.gc
  %i.vt = phi ptr [ %i.vs, %bb.gc ], [ %i.vr, %bb.gb ] ; 4 uses
  %i.vu = load i8, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 47), align 1, !tbaa !15
  %i.vv = icmp slt i8 %i.vu, 1
  br i1 %i.vv, label %.preheader1345.preheader, label %.loopexit

.preheader1345.preheader:                         ; preds = %RSTRING_PTR.exit1140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @pack_unpack_internal.b64_xtable, i8 -1, i64 256, i1 false), !tbaa !15
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 65), align 1, !tbaa !15
  store <8 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23>, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 81), align 1, !tbaa !15
  store i8 24, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 89), align 1, !tbaa !15
  store i8 25, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 90), align 2, !tbaa !15
  store <16 x i8> <i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41>, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 97), align 1, !tbaa !15
  store <8 x i8> <i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49>, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 113), align 1, !tbaa !15
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 121), align 1, !tbaa !15
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 122), align 2, !tbaa !15
  store i8 62, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 43), align 1, !tbaa !15
  store <11 x i8> <i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61>, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 47), align 1, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader1345.preheader, %RSTRING_PTR.exit1140
  %i.vw = icmp eq i64 %.0835, 0
  %i.vx = icmp ult ptr %.07881675, %i.w           ; 2 uses
  br i1 %i.vw, label %.preheader1342, label %.preheader1343

.preheader1343:                                   ; preds = %.loopexit
  br i1 %i.vx, label %.preheader1334, label %.thread1270

.preheader1342:                                   ; preds = %.loopexit
  br i1 %i.vx, label %.lr.ph1565, label %.thread1270

.lr.ph1565:                                       ; preds = %.preheader1342, %bb.gp
  %.298171564 = phi ptr [ %i.xg, %bb.gp ], [ %.07881675, %.preheader1342 ] ; 7 uses
  %.09051563 = phi ptr [ %i.ya, %bb.gp ], [ %i.vt, %.preheader1342 ] ; 9 uses
  %i.vy = getelementptr i8, ptr %.298171564, i64 1 ; 2 uses
  %i.vz = load i8, ptr %.298171564, align 1, !tbaa !15
  %i.wa = zext i8 %i.vz to i64
  %i.wb = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.wa
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !15  ; 2 uses
  %i.wd = sext i8 %i.wc to i32                    ; 3 uses
  %i.we = icmp uge ptr %i.vy, %i.w
  %i.wf = icmp eq i8 %i.wc, -1
  %or.cond57 = select i1 %i.we, i1 true, i1 %i.wf
  br i1 %or.cond57, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %.lr.ph1565
  %i.wg = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.wg, ptr noundef nonnull @.str.24) #13
  unreachable

bb.ge:                                            ; preds = %.lr.ph1565
  %i.wh = getelementptr i8, ptr %.298171564, i64 2 ; 3 uses
  %i.wi = load i8, ptr %i.vy, align 1, !tbaa !15
  %i.wj = zext i8 %i.wi to i64
  %i.wk = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.wj
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !15  ; 3 uses
  %i.wm = sext i8 %i.wl to i32                    ; 5 uses
  %i.wn = icmp uge ptr %i.wh, %i.w
  %i.wo = icmp eq i8 %i.wl, -1
  %or.cond59 = select i1 %i.wn, i1 true, i1 %i.wo
  br i1 %or.cond59, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.wp = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.wp, ptr noundef nonnull @.str.24) #13
  unreachable

bb.gg:                                            ; preds = %bb.ge
  %i.wq = load i8, ptr %i.wh, align 1, !tbaa !15  ; 2 uses
  %i.wr = icmp eq i8 %i.wq, 61
  br i1 %i.wr, label %bb.gh, label %bb.gk

bb.gh:                                            ; preds = %bb.gg
  %i.ws = getelementptr i8, ptr %.298171564, i64 4
  %i.wt = icmp eq ptr %i.ws, %i.w
  br i1 %i.wt, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.wu = getelementptr i8, ptr %.298171564, i64 3
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !15
  %i.ww = icmp eq i8 %i.wv, 61
  br i1 %i.ww, label %.thread1253, label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.wx = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.wx, ptr noundef nonnull @.str.24) #13
  unreachable

bb.gk:                                            ; preds = %bb.gg
  %i.wy = getelementptr i8, ptr %.298171564, i64 3 ; 3 uses
  %i.wz = zext i8 %i.wq to i64
  %i.xa = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !15  ; 4 uses
  %i.xc = sext i8 %i.xb to i32                    ; 2 uses
  %i.xd = icmp uge ptr %i.wy, %i.w
  %i.xe = icmp eq i8 %i.xb, -1
  %or.cond61 = select i1 %i.xd, i1 true, i1 %i.xe
  br i1 %or.cond61, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.xf = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.xf, ptr noundef nonnull @.str.24) #13
  unreachable

bb.gm:                                            ; preds = %bb.gk
  %i.xg = getelementptr i8, ptr %.298171564, i64 4 ; 4 uses
  %i.xh = icmp eq ptr %i.xg, %i.w
  %.pre1867 = load i8, ptr %i.wy, align 1, !tbaa !15 ; 2 uses
  %i.xi = icmp eq i8 %.pre1867, 61
  %or.cond2146 = select i1 %i.xh, i1 %i.xi, i1 false
  br i1 %or.cond2146, label %bb.gr, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.xj = zext i8 %.pre1867 to i64
  %i.xk = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.xj
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !15  ; 2 uses
  %i.xm = icmp eq i8 %i.xl, -1
  br i1 %i.xm, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.xn = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.xn, ptr noundef nonnull @.str.24) #13
  unreachable

bb.gp:                                            ; preds = %bb.gn
  %i.xo = shl nsw i32 %i.wd, 2
  %i.xp = lshr i32 %i.wm, 4
  %i.xq = or i32 %i.xp, %i.xo
  %i.xr = trunc i32 %i.xq to i8
  %i.xs = getelementptr i8, ptr %.09051563, i64 1
  store i8 %i.xr, ptr %.09051563, align 1, !tbaa !15
  %i.xt = shl nsw i32 %i.wm, 4
  %i.xu = lshr i32 %i.xc, 2
  %i.xv = or i32 %i.xu, %i.xt
  %i.xw = trunc i32 %i.xv to i8
  %i.xx = getelementptr i8, ptr %.09051563, i64 2
  store i8 %i.xw, ptr %i.xs, align 1, !tbaa !15
  %i.xy = shl i8 %i.xb, 6
  %i.xz = or i8 %i.xl, %i.xy
  %i.ya = getelementptr i8, ptr %.09051563, i64 3 ; 2 uses
  store i8 %i.xz, ptr %i.xx, align 1, !tbaa !15
  %i.yb = icmp ult ptr %i.xg, %i.w
  br i1 %i.yb, label %.lr.ph1565, label %.thread1270, !llvm.loop !70

.thread1253:                                      ; preds = %bb.gi
  %i.yc = shl nsw i32 %i.wd, 2
  %i.yd = lshr i32 %i.wm, 4
  %i.ye = or i32 %i.yc, %i.yd
  %i.yf = trunc i32 %i.ye to i8
  %i.yg = getelementptr i8, ptr %.09051563, i64 1
  store i8 %i.yf, ptr %.09051563, align 1, !tbaa !15
  %i.yh = and i8 %i.wl, 15
  %.not1045 = icmp eq i8 %i.yh, 0
  br i1 %.not1045, label %.thread1270, label %bb.gq

bb.gq:                                            ; preds = %.thread1253
  %i.yi = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.yi, ptr noundef nonnull @.str.24) #13
  unreachable

bb.gr:                                            ; preds = %bb.gm
  %i.yj = shl nsw i32 %i.wd, 2
  %i.yk = lshr i32 %i.wm, 4
  %i.yl = or i32 %i.yk, %i.yj
  %i.ym = trunc i32 %i.yl to i8
  %i.yn = getelementptr i8, ptr %.09051563, i64 1
  store i8 %i.ym, ptr %.09051563, align 1, !tbaa !15
  %i.yo = shl nsw i32 %i.wm, 4
  %i.yp = lshr i32 %i.xc, 2
  %i.yq = or i32 %i.yp, %i.yo
  %i.yr = trunc i32 %i.yq to i8
  %i.ys = getelementptr i8, ptr %.09051563, i64 2
  store i8 %i.yr, ptr %i.yn, align 1, !tbaa !15
  %i.yt = and i8 %i.xb, 3
  %.not1044 = icmp eq i8 %i.yt, 0
  br i1 %.not1044, label %.thread1270, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.yu = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.yu, ptr noundef nonnull @.str.24) #13
  unreachable

.preheader1334:                                   ; preds = %.preheader1343, %bb.ha
  %.318191557 = phi ptr [ %i.aae, %bb.ha ], [ %.07881675, %.preheader1343 ]
  %.19061556 = phi ptr [ %i.aap, %bb.ha ], [ %i.vt, %.preheader1343 ] ; 12 uses
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gt, %.preheader1334
  %.32820 = phi ptr [ %i.zc, %bb.gt ], [ %.318191557, %.preheader1334 ] ; 5 uses
  %i.yv = load i8, ptr %.32820, align 1, !tbaa !15
  %i.yw = zext i8 %i.yv to i64
  %i.yx = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.yw
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !15  ; 4 uses
  %i.yz = icmp eq i8 %i.yy, -1
  %i.za = icmp ult ptr %.32820, %i.w              ; 2 uses
  %i.zb = select i1 %i.yz, i1 %i.za, i1 false
  %i.zc = getelementptr i8, ptr %.32820, i64 1
  br i1 %i.zb, label %bb.gt, label %bb.gu, !llvm.loop !71

bb.gu:                                            ; preds = %bb.gt
  %i.zd = sext i8 %i.yy to i32                    ; 3 uses
  br i1 %i.za, label %.preheader1333, label %.thread1270

.preheader1333:                                   ; preds = %bb.gu, %.preheader1333
  %.32820.pn = phi ptr [ %.33821, %.preheader1333 ], [ %.32820, %bb.gu ]
  %.33821 = getelementptr i8, ptr %.32820.pn, i64 1 ; 6 uses
  %i.ze = load i8, ptr %.33821, align 1, !tbaa !15
  %i.zf = zext i8 %i.ze to i64
  %i.zg = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.zf
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !15  ; 4 uses
  %i.zi = icmp eq i8 %i.zh, -1
  %i.zj = icmp ult ptr %.33821, %i.w              ; 2 uses
  %i.zk = select i1 %i.zi, i1 %i.zj, i1 false
  br i1 %i.zk, label %.preheader1333, label %bb.gv, !llvm.loop !72

bb.gv:                                            ; preds = %.preheader1333
  %i.zl = sext i8 %i.zh to i32                    ; 5 uses
  br i1 %i.zj, label %.preheader, label %.thread1282
end_hunk_0
