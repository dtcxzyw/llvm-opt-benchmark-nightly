Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000dec?download=true
inline.NumInlined: 106
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@jpeg2000_decode_frame:bb.a
  %.not212.i = icmp eq i8 %i.ud, 0
  br i1 %.not212.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ue = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ue, i32 noundef 16, ptr noundef nonnull @.str.23) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.dp:                                            ; preds = %bb.dn, %bb.dm, %bb.dl
  %i.uf = icmp samesign ult i32 %i.rp, 2
  br i1 %i.uf, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.ug = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ug, i32 noundef 16, ptr noundef nonnull @.str.51) #10
  br label %get_coc.exit.i

bb.dr:                                            ; preds = %bb.dp
  %i.uh = getelementptr inbounds nuw i8, ptr %i.nw, i64 5 ; 2 uses
  store ptr %i.uh, ptr %i.f, align 8, !tbaa !42
  %i.ui = load i8, ptr %i.rh, align 1, !tbaa !43  ; 2 uses
  %i.uj = zext i8 %i.ui to i32                    ; 2 uses
  %i.uk = load i32, ptr %i.nb, align 4, !tbaa !57 ; 2 uses
  %.not.i230.i = icmp sgt i32 %i.uk, %i.uj
  br i1 %.not.i230.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ul = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ul, i32 noundef 16, ptr noundef nonnull @.str.52, i32 noundef %i.uj, i32 noundef %i.uk) #10
  br label %get_coc.exit.i

bb.dt:                                            ; preds = %bb.dr
  %i.um = zext i8 %i.ui to i64                    ; 2 uses
  %i.un = getelementptr inbounds nuw [88 x i8], ptr %.0178441.i, i64 %i.um ; 3 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 11 ; 2 uses
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !63
  %i.uq = getelementptr inbounds nuw i8, ptr %i.nw, i64 6
  store ptr %i.uq, ptr %i.f, align 8, !tbaa !42
  %i.ur = load i8, ptr %i.uh, align 1, !tbaa !43
  %i.us = and i8 %i.up, 6
  %i.ut = or i8 %i.ur, %i.us
  store i8 %i.ut, ptr %i.uo, align 1, !tbaa !63
  %i.uu = tail call fastcc i32 @get_cox(ptr noundef nonnull %i.d, ptr noundef %i.un) ; 2 uses
  %i.uv = icmp slt i32 %i.uu, 0
  br i1 %i.uv, label %get_coc.exit.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.uw = getelementptr inbounds nuw i8, ptr %.0169444.i, i64 %i.um ; 2 uses
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !43
  %i.uy = or i8 %i.ux, 1
  store i8 %i.uy, ptr %i.uw, align 1, !tbaa !43
  %i.uz = getelementptr inbounds nuw i8, ptr %i.un, i64 84
  store i8 1, ptr %i.uz, align 4, !tbaa !158
  br label %get_coc.exit.i

bb.dv:                                            ; preds = %bb.ci
  %i.va = icmp eq i8 %.0166445.i, 1
  br i1 %i.va, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.vb = load i8, ptr %i.na, align 8, !tbaa !60
  %.not209.i = icmp eq i8 %i.vb, 0
  br i1 %.not209.i, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.vc = load i8, ptr %i.mz, align 1, !tbaa !155
  %.not210.i = icmp eq i8 %i.vc, 0
  br i1 %.not210.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.vd = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vd, i32 noundef 16, ptr noundef nonnull @.str.24) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.dz:                                            ; preds = %bb.dx, %bb.dw, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.ve = icmp samesign ult i32 %i.rp, 5
  br i1 %i.ve, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.vf = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vf, i32 noundef 16, ptr noundef nonnull @.str.61) #10
  br label %get_cod.exit.i

bb.eb:                                            ; preds = %bb.dz
  %i.vg = getelementptr inbounds nuw i8, ptr %i.nw, i64 5 ; 2 uses
  store ptr %i.vg, ptr %i.f, align 8, !tbaa !42
  %i.vh = load i8, ptr %i.rh, align 1, !tbaa !43
  store i8 %i.vh, ptr %i.nk, align 1, !tbaa !63
  %i.vi = getelementptr inbounds nuw i8, ptr %i.nw, i64 6 ; 2 uses
  store ptr %i.vi, ptr %i.f, align 8, !tbaa !42
  %i.vj = load i8, ptr %i.vg, align 1, !tbaa !43
  store i8 %i.vj, ptr %i.nl, align 1, !tbaa !159
  %i.vk = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 2 uses
  store ptr %i.vk, ptr %i.f, align 8, !tbaa !42
  %i.vl = load i16, ptr %i.vi, align 1, !tbaa !43
  %i.vm = lshr i16 %i.vl, 8
  %i.vn = trunc nuw i16 %i.vm to i8
  store i8 %i.vn, ptr %i.nm, align 4, !tbaa !160
  %i.vo = getelementptr inbounds nuw i8, ptr %i.nw, i64 9
  store ptr %i.vo, ptr %i.f, align 8, !tbaa !42
  %i.vp = load i8, ptr %i.vk, align 1, !tbaa !43  ; 3 uses
  %i.vq = zext i8 %i.vp to i32
  store i8 %i.vp, ptr %i.nn, align 1, !tbaa !64
  %.not.i232.i = icmp eq i8 %i.vp, 0
  br i1 %.not.i232.i, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.vr = load i32, ptr %i.nb, align 4, !tbaa !57 ; 2 uses
  %i.vs = icmp slt i32 %i.vr, 3
  br i1 %i.vs, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.vt = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.vt, i32 noundef 16, ptr noundef nonnull @.str.62, i32 noundef %i.vq, i32 noundef %i.vr) #10
  br label %get_cod.exit.i

bb.ee:                                            ; preds = %bb.ec, %bb.eb
  %i.vu = call fastcc i32 @get_cox(ptr noundef nonnull %i.d, ptr noundef nonnull %6) ; 2 uses
  %i.vv = icmp slt i32 %i.vu, 0
  br i1 %i.vv, label %get_cod.exit.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  store i8 1, ptr %i.no, align 4, !tbaa !158
  %i.vw = load i32, ptr %i.nb, align 4, !tbaa !57 ; 2 uses
  %i.vx = icmp sgt i32 %i.vw, 0
  br i1 %i.vx, label %.lr.ph.i.i, label %get_cod.exit.i

.lr.ph.i.i:                                       ; preds = %bb.ef, %bb.eh
  %i.vy = phi i32 [ %i.wd, %bb.eh ], [ %i.vw, %bb.ef ]
  %indvars.iv.i233.i = phi i64 [ %indvars.iv.next.i234.i, %bb.eh ], [ 0, %bb.ef ] ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.0169444.i, i64 %indvars.iv.i233.i
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !43
  %i.wb = and i8 %i.wa, 1
  %.not22.i.i = icmp eq i8 %i.wb, 0
  br i1 %.not22.i.i, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.lr.ph.i.i
  %i.wc = getelementptr inbounds nuw [88 x i8], ptr %.0178441.i, i64 %indvars.iv.i233.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.wc, ptr noundef nonnull align 4 dereferenceable(88) %6, i64 88, i1 false)
  %.pre.i.i = load i32, ptr %i.nb, align 4, !tbaa !57
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %.lr.ph.i.i
  %i.wd = phi i32 [ %i.vy, %.lr.ph.i.i ], [ %.pre.i.i, %bb.eg ] ; 2 uses
  %indvars.iv.next.i234.i = add nuw nsw i64 %indvars.iv.i233.i, 1 ; 2 uses
  %i.we = sext i32 %i.wd to i64
  %i.wf = icmp slt i64 %indvars.iv.next.i234.i, %i.we
  br i1 %i.wf, label %.lr.ph.i.i, label %get_cod.exit.i, !llvm.loop !135

get_cod.exit.i:                                   ; preds = %bb.eh, %bb.ef, %bb.ee, %bb.ed, %bb.ea
  %.018.i.i = phi i32 [ -1094995529, %bb.ea ], [ -1094995529, %bb.ed ], [ %i.vu, %bb.ee ], [ 0, %bb.ef ], [ 0, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %get_coc.exit.i

bb.ei:                                            ; preds = %bb.ci
  %i.wg = icmp eq i8 %.0166445.i, 1
  br i1 %i.wg, label %bb.ej, label %bb.em

bb.ej:                                            ; preds = %bb.ei
  %i.wh = load i8, ptr %i.na, align 8, !tbaa !60
  %.not205.i = icmp eq i8 %i.wh, 0
  br i1 %.not205.i, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.wi = load i8, ptr %i.mz, align 1, !tbaa !155
  %.not206.i = icmp eq i8 %i.wi, 0
  br i1 %.not206.i, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.wj = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.wj, i32 noundef 16, ptr noundef nonnull @.str.25) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.em:                                            ; preds = %bb.ek, %bb.ej, %bb.ei
  %i.wk = load i32, ptr %i.nb, align 4, !tbaa !57 ; 2 uses
  %i.wl = icmp slt i32 %i.wk, 257
  br i1 %i.wl, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.wm = icmp slt i64 %i.ro, 1
  br i1 %i.wm, label %bytestream2_get_byte.exit30.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wn = getelementptr inbounds nuw i8, ptr %i.nw, i64 5 ; 2 uses
  store ptr %i.wn, ptr %i.f, align 8, !tbaa !42
  %i.wo = load i8, ptr %i.rh, align 1, !tbaa !43
  %i.wp = zext i8 %i.wo to i32
  br label %bytestream2_get_byte.exit30.i.i

bb.ep:                                            ; preds = %bb.em
  %i.wq = getelementptr inbounds nuw i8, ptr %i.nw, i64 6 ; 2 uses
  store ptr %i.wq, ptr %i.f, align 8, !tbaa !42
  %i.wr = load i16, ptr %i.rh, align 1, !tbaa !43
  %i.ws = tail call i16 @llvm.bswap.i16(i16 %i.wr)
  %i.wt = zext i16 %i.ws to i32
  br label %bytestream2_get_byte.exit30.i.i

bytestream2_get_byte.exit30.i.i:                  ; preds = %bb.ep, %bb.eo, %bb.en
  %i.wu = phi ptr [ %i.wn, %bb.eo ], [ %i.wq, %bb.ep ], [ %i.nu, %bb.en ] ; 3 uses
  %i.wv = phi i32 [ %i.wp, %bb.eo ], [ %i.wt, %bb.ep ], [ 0, %bb.en ] ; 2 uses
  %7 = zext nneg i32 %i.wv to i64                 ; 2 uses
  %i.ww = ptrtoint ptr %i.wu to i64
  %i.wx = sub i64 %i.rm, %i.ww
  %i.wy = icmp slt i64 %i.wx, 1
  br i1 %i.wy, label %bytestream2_get_byte.exit28.thread.i.i, label %bytestream2_get_byte.exit28.i.i

bytestream2_get_byte.exit28.thread.i.i:           ; preds = %bytestream2_get_byte.exit30.i.i
  store ptr %i.nu, ptr %i.f, align 8, !tbaa !38
  br label %bb.er

bytestream2_get_byte.exit28.i.i:                  ; preds = %bytestream2_get_byte.exit30.i.i
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wu, i64 1 ; 2 uses
  store ptr %i.wz, ptr %i.f, align 8, !tbaa !42
  %i.xa = load i8, ptr %i.wu, align 1, !tbaa !43
  %.not.i236.i = icmp eq i8 %i.xa, 0
  br i1 %.not.i236.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bytestream2_get_byte.exit28.i.i
  %i.xb = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xb, i32 noundef 16, ptr noundef nonnull @.str.63) #10
  br label %get_rgn.exit.i

bb.er:                                            ; preds = %bytestream2_get_byte.exit28.i.i, %bytestream2_get_byte.exit28.thread.i.i
  %i.xc = phi ptr [ %i.nu, %bytestream2_get_byte.exit28.thread.i.i ], [ %i.wz, %bytestream2_get_byte.exit28.i.i ] ; 6 uses
  %i.xd = icmp slt i32 %i.wv, %i.wk
  br i1 %i.xd, label %bb.es, label %get_rgn.exit.i

bb.es:                                            ; preds = %bb.er
  %i.xe = load i32, ptr %i.q, align 4, !tbaa !41  ; 2 uses
  %i.xf = icmp eq i32 %i.xe, -1
  br i1 %i.xf, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.xg = ptrtoint ptr %i.xc to i64
  %i.xh = sub i64 %i.rm, %i.xg
  %i.xi = icmp slt i64 %i.xh, 1
  br i1 %i.xi, label %bytestream2_get_byte.exit26.thread.i.i, label %bytestream2_get_byte.exit26.i.i

bytestream2_get_byte.exit26.thread.i.i:           ; preds = %bb.et
  store ptr %i.nu, ptr %i.f, align 8, !tbaa !38
  br label %bb.eu

bytestream2_get_byte.exit26.i.i:                  ; preds = %bb.et
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xc, i64 1
  store ptr %i.xj, ptr %i.f, align 8, !tbaa !42
  %i.xk = load i8, ptr %i.xc, align 1, !tbaa !43  ; 2 uses
  %i.xl = icmp ugt i8 %i.xk, 30
  br i1 %i.xl, label %get_rgn.exit.i, label %bb.eu

bb.eu:                                            ; preds = %bytestream2_get_byte.exit26.i.i, %bytestream2_get_byte.exit26.thread.i.i
  %.0.i2534.i.i = phi i8 [ 0, %bytestream2_get_byte.exit26.thread.i.i ], [ %i.xk, %bytestream2_get_byte.exit26.i.i ]
  %i.xm = getelementptr inbounds nuw i8, ptr %i.ni, i64 %7
  store i8 %.0.i2534.i.i, ptr %i.xm, align 1, !tbaa !43
  br label %get_rgn.exit.i

bb.ev:                                            ; preds = %bb.es
  %i.xn = load ptr, ptr %i.mv, align 8, !tbaa !48
  %i.xo = sext i32 %i.xe to i64
  %i.xp = getelementptr inbounds [4016 x i8], ptr %i.xn, i64 %i.xo ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 3992
  %i.xr = load i16, ptr %i.xq, align 8, !tbaa !52
  %.not24.i.i = icmp eq i16 %i.xr, 0
  br i1 %.not24.i.i, label %bb.ew, label %get_rgn.exit.i

bb.ew:                                            ; preds = %bb.ev
  %i.xs = ptrtoint ptr %i.xc to i64
  %i.xt = sub i64 %i.rm, %i.xs
  %i.xu = icmp slt i64 %i.xt, 1
  br i1 %i.xu, label %bytestream2_get_byte.exit.thread.i.i, label %bytestream2_get_byte.exit.i.i

bytestream2_get_byte.exit.thread.i.i:             ; preds = %bb.ew
  store ptr %i.nu, ptr %i.f, align 8, !tbaa !38
  br label %bb.ex

bytestream2_get_byte.exit.i.i:                    ; preds = %bb.ew
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xc, i64 1
  store ptr %i.xv, ptr %i.f, align 8, !tbaa !42
  %i.xw = load i8, ptr %i.xc, align 1, !tbaa !43  ; 2 uses
  %i.xx = icmp ugt i8 %i.xw, 30
  br i1 %i.xx, label %get_rgn.exit.i, label %bb.ex

bb.ex:                                            ; preds = %bytestream2_get_byte.exit.i.i, %bytestream2_get_byte.exit.thread.i.i
  %.0.i36.i.i = phi i8 [ 0, %bytestream2_get_byte.exit.thread.i.i ], [ %i.xw, %bytestream2_get_byte.exit.i.i ]
  %i.xy = load ptr, ptr %i.xp, align 8, !tbaa !65
  %i.xz = getelementptr inbounds nuw [408 x i8], ptr %i.xy, i64 %7
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 400
  store i8 %.0.i36.i.i, ptr %i.ya, align 8, !tbaa !70
  br label %get_rgn.exit.i

get_rgn.exit.i:                                   ; preds = %bb.ex, %bytestream2_get_byte.exit.i.i, %bb.ev, %bb.eu, %bytestream2_get_byte.exit26.i.i, %bb.er, %bb.eq
  %.1.i.i = phi i32 [ -1094995529, %bb.eq ], [ 0, %bb.eu ], [ -1094995529, %bb.ev ], [ -1163346256, %bytestream2_get_byte.exit.i.i ], [ -1163346256, %bytestream2_get_byte.exit26.i.i ], [ 0, %bb.ex ], [ -1094995529, %bb.er ] ; 2 uses
  %i.yb = load i8, ptr %i.nj, align 2, !tbaa !154
  %.not207.i = icmp eq i8 %i.yb, 0
  br i1 %.not207.i, label %bb.ey, label %get_coc.exit.i

bb.ey:                                            ; preds = %get_rgn.exit.i
  %i.yc = load i8, ptr %i.na, align 8, !tbaa !60
  %.not208.i = icmp eq i8 %i.yc, 0
  br i1 %.not208.i, label %get_coc.exit.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.yd = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.yd, i32 noundef 16, ptr noundef nonnull @.str.26) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.fa:                                            ; preds = %bb.ci
  %i.ye = icmp eq i8 %.0166445.i, 1
  br i1 %i.ye, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.yf = load i8, ptr %i.na, align 8, !tbaa !60
  %.not203.i = icmp eq i8 %i.yf, 0
  br i1 %.not203.i, label %bb.fe, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.yg = load i8, ptr %i.mz, align 1, !tbaa !155
  %.not204.i = icmp eq i8 %i.yg, 0
  br i1 %.not204.i, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.yh = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.yh, i32 noundef 16, ptr noundef nonnull @.str.27) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.fe:                                            ; preds = %bb.fc, %bb.fb, %bb.fa
  %i.yi = icmp eq i32 %i.rp, 0
  br i1 %i.yi, label %get_coc.exit.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.yj = getelementptr inbounds nuw i8, ptr %i.nw, i64 5
  store ptr %i.yj, ptr %i.f, align 8, !tbaa !42
  %i.yk = load i8, ptr %i.rh, align 1, !tbaa !43  ; 2 uses
  %i.yl = zext i8 %i.yk to i32                    ; 2 uses
  %i.ym = load i32, ptr %i.nb, align 4, !tbaa !57 ; 2 uses
  %.not.i237.i = icmp sgt i32 %i.ym, %i.yl
  br i1 %.not.i237.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.yn = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.yn, i32 noundef 16, ptr noundef nonnull @.str.52, i32 noundef %i.yl, i32 noundef %i.ym) #10
  br label %get_coc.exit.i

bb.fh:                                            ; preds = %bb.ff
  %i.yo = zext i8 %i.yk to i64                    ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.0169444.i, i64 %i.yo ; 2 uses
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !43
  %i.yr = or i8 %i.yq, 2
  store i8 %i.yr, ptr %i.yp, align 1, !tbaa !43
  %i.ys = add nsw i32 %i.rk, -1
  %i.yt = getelementptr inbounds nuw [300 x i8], ptr %.0175442.i, i64 %i.yo
  %i.yu = tail call fastcc i32 @get_qcx(ptr noundef nonnull %i.d, i32 noundef %i.ys, ptr noundef %i.yt)
  br label %get_coc.exit.i

bb.fi:                                            ; preds = %bb.ci
  %i.yv = icmp eq i8 %.0166445.i, 1
  br i1 %i.yv, label %bb.fj, label %bb.fm

bb.fj:                                            ; preds = %bb.fi
  %i.yw = load i8, ptr %i.na, align 8, !tbaa !60
  %.not201.i = icmp eq i8 %i.yw, 0
  br i1 %.not201.i, label %bb.fm, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.yx = load i8, ptr %i.mz, align 1, !tbaa !155
  %.not202.i = icmp eq i8 %i.yx, 0
  br i1 %.not202.i, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.yy = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.yy, i32 noundef 16, ptr noundef nonnull @.str.28) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.fm:                                            ; preds = %bb.fk, %bb.fj, %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(300) %5, i8 0, i64 300, i1 false)
  %i.yz = call fastcc i32 @get_qcx(ptr noundef nonnull %i.d, i32 noundef range(i32 2, -2147483648) %i.rk, ptr noundef nonnull %5) ; 2 uses
  %i.za = icmp slt i32 %i.yz, 0
  br i1 %i.za, label %get_qcd.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.fm
  %i.zb = load i32, ptr %i.nb, align 4, !tbaa !57 ; 2 uses
  %i.zc = icmp sgt i32 %i.zb, 0
  br i1 %i.zc, label %.lr.ph.i239.i, label %get_qcd.exit.i

.lr.ph.i239.i:                                    ; preds = %.preheader.i.i, %bb.fo
  %i.zd = phi i32 [ %i.zi, %bb.fo ], [ %i.zb, %.preheader.i.i ]
  %indvars.iv.i240.i = phi i64 [ %indvars.iv.next.i242.i, %bb.fo ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.0169444.i, i64 %indvars.iv.i240.i
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !43
  %i.zg = and i8 %i.zf, 2
  %.not.i241.i = icmp eq i8 %i.zg, 0
  br i1 %.not.i241.i, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %.lr.ph.i239.i
  %i.zh = getelementptr inbounds nuw [300 x i8], ptr %.0175442.i, i64 %indvars.iv.i240.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(300) %i.zh, ptr noundef nonnull align 2 dereferenceable(300) %5, i64 300, i1 false)
  %.pre.i243.i = load i32, ptr %i.nb, align 4, !tbaa !57
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %.lr.ph.i239.i
  %i.zi = phi i32 [ %i.zd, %.lr.ph.i239.i ], [ %.pre.i243.i, %bb.fn ] ; 2 uses
  %indvars.iv.next.i242.i = add nuw nsw i64 %indvars.iv.i240.i, 1 ; 2 uses
  %i.zj = sext i32 %i.zi to i64
  %i.zk = icmp slt i64 %indvars.iv.next.i242.i, %i.zj
  br i1 %i.zk, label %.lr.ph.i239.i, label %get_qcd.exit.i, !llvm.loop !136

get_qcd.exit.i:                                   ; preds = %bb.fo, %.preheader.i.i, %bb.fm
  %.010.i.i = phi i32 [ %i.yz, %bb.fm ], [ 0, %.preheader.i.i ], [ 0, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %get_coc.exit.i

bb.fp:                                            ; preds = %bb.ci
  %i.zl = icmp eq i8 %.0166445.i, 1
  br i1 %i.zl, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.zm = load i8, ptr %i.na, align 8, !tbaa !60
  %.not199.i = icmp eq i8 %i.zm, 0
  br i1 %.not199.i, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.zn = load i8, ptr %i.mz, align 1, !tbaa !155
  %.not200.i = icmp eq i8 %i.zn, 0
  br i1 %.not200.i, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.zo = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.zo, i32 noundef 16, ptr noundef nonnull @.str.29) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.ft:                                            ; preds = %bb.fr, %bb.fq, %bb.fp
  %i.zp = load i32, ptr %i.nb, align 4, !tbaa !57 ; 3 uses
  %i.zq = icmp sgt i32 %i.zp, 257                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(328) %4, i8 0, i64 328, i1 false)
  %i.zr = icmp samesign ult i32 %i.rp, 5
  %i.zs = select i1 %i.zq, i32 11, i32 9
  %i.zt = icmp samesign ugt i32 %i.zs, %i.rk
  %or.cond.i244.i = select i1 %i.zr, i1 true, i1 %i.zt
  br i1 %or.cond.i244.i, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.zu = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.zu, i32 noundef 16, ptr noundef nonnull @.str.64) #10
  br label %get_poc.exit.i

bb.fv:                                            ; preds = %bb.ft
  br i1 %i.zq, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.zv = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.zv, ptr noundef nonnull @.str.65) #10
  br label %get_poc.exit.i

bb.fx:                                            ; preds = %bb.fv
  %.lhs.trunc.i = trunc nuw i32 %i.rq to i16
  %i.zw = udiv i16 %.lhs.trunc.i, 7               ; 2 uses
  %.zext.i = zext nneg i16 %i.zw to i32           ; 4 uses
  store i32 %.zext.i, ptr %i.nh, align 4, !tbaa !161
  %i.zx = icmp ugt i16 %i.rj, 232
  br i1 %i.zx, label %bb.fy, label %.lr.ph.i245.i

.lr.ph.i245.i:                                    ; preds = %bb.fx
  %wide.trip.count.i.i = zext nneg i16 %i.zw to i64 ; 2 uses
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.zy = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.zy, ptr noundef nonnull @.str.66, i32 noundef %.zext.i) #10
  br label %get_poc.exit.i

bb.fz:                                            ; preds = %bb.gb, %.lr.ph.i245.i
  %indvars.iv.i246.i = phi i64 [ 0, %.lr.ph.i245.i ], [ %indvars.iv.next.i247.i, %bb.gb ] ; 3 uses
  %i.zz = phi ptr [ %i.rh, %.lr.ph.i245.i ], [ %i.aar, %bb.gb ] ; 7 uses
  %i.aaa = getelementptr inbounds nuw [10 x i8], ptr %4, i64 %indvars.iv.i246.i ; 6 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zz, i64 1 ; 2 uses
  store ptr %i.aab, ptr %i.f, align 8, !tbaa !42
  %i.aac = load i8, ptr %i.zz, align 1, !tbaa !43 ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aaa, i64 6
  store i8 %i.aac, ptr %i.aad, align 2, !tbaa !163
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zz, i64 2 ; 2 uses
  store ptr %i.aae, ptr %i.f, align 8, !tbaa !42
  %i.aaf = load i8, ptr %i.aab, align 1, !tbaa !43 ; 2 uses
  %i.aag = zext i8 %i.aaf to i16                  ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaa, i64 2
end_hunk_0
