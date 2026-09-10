Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 286
loop-unroll.NumUnrolled: 485
begin_hunk_0_@_ZNK2OT12VarComponent11get_path_atERKNS_17hb_varc_context_tEj10hb_array_tIKiE14hb_transform_tIfES4_IKhEPNS_17hb_scalar_cache_tE:bb.a
bb.cj:                                            ; preds = %bb.ci, %bb.cg
  %.14 = phi ptr [ %i.vh, %bb.ci ], [ %.13, %bb.cg ] ; 4 uses
  %i.vi = and i32 %.0.i327, 64
  %.not314 = icmp eq i32 %i.vi, 0                 ; 4 uses
  br i1 %.not314, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.vj = ptrtoint ptr %.14 to i64
  %i.vk = sub i64 %i.ad, %i.vj
  %i.vl = and i64 %i.vk, 4294967294
  %i.vm = icmp eq i64 %i.vl, 0
  br i1 %i.vm, label %.thread562, label %bb.cl, !prof !267

bb.cl:                                            ; preds = %bb.ck
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.vn = load i16, ptr %.14, align 1, !tbaa !283
  %i.vo = call noundef i16 @llvm.bswap.i16(i16 %i.vn)
  %i.vp = sitofp i16 %i.vo to float
  store float %i.vp, ptr %i.um, align 8, !tbaa !312
  %i.vq = getelementptr inbounds nuw i8, ptr %.14, i64 2
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj
  %.15 = phi ptr [ %i.vq, %bb.cl ], [ %.14, %bb.cj ] ; 4 uses
  %i.vr = and i32 %.0.i327, 256
  %.not315 = icmp eq i32 %i.vr, 0                 ; 4 uses
  br i1 %.not315, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.vs = ptrtoint ptr %.15 to i64
  %i.vt = sub i64 %i.ad, %i.vs
  %i.vu = and i64 %i.vt, 4294967294
  %i.vv = icmp eq i64 %i.vu, 0
  br i1 %i.vv, label %.thread562, label %bb.co, !prof !267

bb.co:                                            ; preds = %bb.cn
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.vw = load i16, ptr %.15, align 1, !tbaa !283
  %i.vx = call noundef i16 @llvm.bswap.i16(i16 %i.vw)
  %i.vy = sitofp i16 %i.vx to float
  store float %i.vy, ptr %i.un, align 4, !tbaa !2121
  %i.vz = getelementptr inbounds nuw i8, ptr %.15, i64 2
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cm
  %.16 = phi ptr [ %i.vz, %bb.co ], [ %.15, %bb.cm ] ; 4 uses
  %i.wa = and i32 %.0.i327, 512
  %.not316 = icmp eq i32 %i.wa, 0                 ; 5 uses
  br i1 %.not316, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.wb = ptrtoint ptr %.16 to i64
  %i.wc = sub i64 %i.ad, %i.wb
  %i.wd = and i64 %i.wc, 4294967294
  %i.we = icmp eq i64 %i.wd, 0
  br i1 %i.we, label %.thread562, label %bb.cr, !prof !267

bb.cr:                                            ; preds = %bb.cq
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.wf = load i16, ptr %.16, align 1, !tbaa !283
  %i.wg = call noundef i16 @llvm.bswap.i16(i16 %i.wf)
  %i.wh = sitofp i16 %i.wg to float
  store float %i.wh, ptr %i.uo, align 16, !tbaa !2118
  %i.wi = getelementptr inbounds nuw i8, ptr %.16, i64 2
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cp
  %.17 = phi ptr [ %i.wi, %bb.cr ], [ %.16, %bb.cp ] ; 4 uses
  %i.wj = and i32 %.0.i327, 8192
  %.not317 = icmp eq i32 %i.wj, 0                 ; 4 uses
  br i1 %.not317, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.wk = ptrtoint ptr %.17 to i64
  %i.wl = sub i64 %i.ad, %i.wk
  %i.wm = and i64 %i.wl, 4294967294
  %i.wn = icmp eq i64 %i.wm, 0
  br i1 %i.wn, label %.thread562, label %bb.cu, !prof !267

bb.cu:                                            ; preds = %bb.ct
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.wo = load i16, ptr %.17, align 1, !tbaa !283
  %i.wp = call noundef i16 @llvm.bswap.i16(i16 %i.wo)
  %i.wq = sitofp i16 %i.wp to float
  store float %i.wq, ptr %i.up, align 4, !tbaa !313
  %i.wr = getelementptr inbounds nuw i8, ptr %.17, i64 2
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %.18 = phi ptr [ %i.wr, %bb.cu ], [ %.17, %bb.cs ] ; 4 uses
  %i.ws = and i32 %.0.i327, 16384
  %.not318 = icmp eq i32 %i.ws, 0                 ; 4 uses
  br i1 %.not318, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.wt = ptrtoint ptr %.18 to i64
  %i.wu = sub i64 %i.ad, %i.wt
  %i.wv = and i64 %i.wu, 4294967294
  %i.ww = icmp eq i64 %i.wv, 0
  br i1 %i.ww, label %.thread562, label %bb.cx, !prof !267

bb.cx:                                            ; preds = %bb.cw
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.wx = load i16, ptr %.18, align 1, !tbaa !283
  %i.wy = call noundef i16 @llvm.bswap.i16(i16 %i.wx)
  %i.wz = sitofp i16 %i.wy to float
  %i.xa = getelementptr inbounds nuw i8, ptr %12, i64 24
  store float %i.wz, ptr %i.xa, align 8, !tbaa !314
  %i.xb = getelementptr inbounds nuw i8, ptr %.18, i64 2
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cv
  %.19 = phi ptr [ %i.xb, %bb.cx ], [ %.18, %bb.cv ] ; 4 uses
  %i.xc = and i32 %.0.i327, 1024
  %.not319 = icmp eq i32 %i.xc, 0                 ; 3 uses
  br i1 %.not319, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xd = ptrtoint ptr %.19 to i64
  %i.xe = sub i64 %i.ad, %i.xd
  %i.xf = and i64 %i.xe, 4294967294
  %i.xg = icmp eq i64 %i.xf, 0
  br i1 %i.xg, label %.thread562, label %bb.da, !prof !267

bb.da:                                            ; preds = %bb.cz
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.xh = load i16, ptr %.19, align 1, !tbaa !283
  %i.xi = call noundef i16 @llvm.bswap.i16(i16 %i.xh)
  %i.xj = sitofp i16 %i.xi to float
  %i.xk = getelementptr inbounds nuw i8, ptr %12, i64 28
  store float %i.xj, ptr %i.xk, align 4, !tbaa !2122
  %i.xl = getelementptr inbounds nuw i8, ptr %.19, i64 2
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cy
  %.20 = phi ptr [ %i.xl, %bb.da ], [ %.19, %bb.cy ] ; 4 uses
  %i.xm = and i32 %.0.i327, 2048
  %.not320 = icmp eq i32 %i.xm, 0                 ; 3 uses
  br i1 %.not320, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.xn = ptrtoint ptr %.20 to i64
  %i.xo = sub i64 %i.ad, %i.xn
  %i.xp = and i64 %i.xo, 4294967294
  %i.xq = icmp eq i64 %i.xp, 0
  br i1 %i.xq, label %.thread562, label %bb.dd, !prof !267

bb.dd:                                            ; preds = %bb.dc
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.xr = load i16, ptr %.20, align 1, !tbaa !283
  %i.xs = call noundef i16 @llvm.bswap.i16(i16 %i.xr)
  %i.xt = sitofp i16 %i.xs to float
  %i.xu = getelementptr inbounds nuw i8, ptr %12, i64 32
  store float %i.xt, ptr %i.xu, align 16, !tbaa !2123
  %i.xv = getelementptr inbounds nuw i8, ptr %.20, i64 2
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.db
  %.21 = phi ptr [ %i.xv, %bb.dd ], [ %.20, %bb.db ] ; 2 uses
  %i.xw = and i32 %.0.i327, -32768                ; 2 uses
  %.not321627 = icmp eq i32 %i.xw, 0
  br i1 %.not321627, label %._crit_edge, label %.lr.ph630

.lr.ph630:                                        ; preds = %bb.de, %.thread550
  %.22629 = phi ptr [ %i.yh, %.thread550 ], [ %.21, %bb.de ] ; 3 uses
  %.0281628 = phi i32 [ %i.yj, %.thread550 ], [ %i.xw, %bb.de ] ; 2 uses
  %i.xx = ptrtoint ptr %.22629 to i64
  %i.xy = sub i64 %i.ad, %i.xx
  %i.xz = trunc i64 %i.xy to i32                  ; 2 uses
  %i.ya = icmp eq i32 %i.xz, 0
  br i1 %i.ya, label %.thread562, label %bb.df, !prof !267

bb.df:                                            ; preds = %.lr.ph630
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.yb = load i8, ptr %.22629, align 1, !tbaa !280 ; 4 uses
  %i.yc = icmp sgt i8 %i.yb, -1
  br i1 %i.yc, label %.thread550, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.yd = icmp samesign ult i8 %i.yb, -64
  br i1 %i.yd, label %_ZNK2OT11HBUINT32VAR8get_sizeEv.exit367, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ye = icmp samesign ult i8 %i.yb, -32
  br i1 %i.ye, label %_ZNK2OT11HBUINT32VAR8get_sizeEv.exit367, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.yf = icmp samesign ult i8 %i.yb, -16
  %..i365 = select i1 %i.yf, i64 4, i64 5
  br label %_ZNK2OT11HBUINT32VAR8get_sizeEv.exit367

_ZNK2OT11HBUINT32VAR8get_sizeEv.exit367:          ; preds = %bb.dg, %bb.dh, %bb.di
  %.0.i366 = phi i64 [ 3, %bb.dh ], [ %..i365, %bb.di ], [ 2, %bb.dg ] ; 2 uses
  %i.yg = trunc nuw nsw i64 %.0.i366 to i32
  %.not323 = icmp ult i32 %i.xz, %i.yg
  br i1 %.not323, label %.thread562, label %.thread550, !prof !267

.thread550:                                       ; preds = %_ZNK2OT11HBUINT32VAR8get_sizeEv.exit367, %bb.df
  %.0.i366547554 = phi i64 [ 1, %bb.df ], [ %.0.i366, %_ZNK2OT11HBUINT32VAR8get_sizeEv.exit367 ]
  %i.yh = getelementptr inbounds nuw i8, ptr %.22629, i64 %.0.i366547554 ; 2 uses
  %i.yi = add i32 %.0281628, -32768
  %i.yj = and i32 %i.yi, %.0281628                ; 2 uses
  %.not321 = icmp eq i32 %i.yj, 0
  br i1 %.not321, label %._crit_edge, label %.lr.ph630, !llvm.loop !2103

._crit_edge:                                      ; preds = %.thread550, %bb.de
  %.22.lcssa = phi ptr [ %.21, %bb.de ], [ %i.yh, %.thread550 ] ; 2 uses
  br i1 %.1287, label %bb.dj, label %bb.fu

bb.dj:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #63
  %i.yk = load i32, ptr %i.fy, align 4, !tbaa !296
  %.not580 = icmp eq i32 %i.yk, 0
  br i1 %.not580, label %.thread574, label %bb.dk

.thread574:                                       ; preds = %bb.dj
  %i.yl = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ym = getelementptr inbounds nuw i8, ptr %13, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %13, i8 0, i64 20, i1 false)
  br label %_ZN2OT14coord_setter_tC2E10hb_array_tIKiE.exit

bb.dk:                                            ; preds = %bb.dj
  %.sroa.3.8.extract.trunc.i = trunc i64 %.sroa.8.0 to i32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(276) %13, i8 0, i64 16, i1 false)
  %i.yn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store i32 %.sroa.3.8.extract.trunc.i, ptr %i.yn, align 8, !tbaa !317
  %i.yo = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 5 uses
  %i.yp = icmp ult i32 %.sroa.3.8.extract.trunc.i, 65
  br i1 %i.yp, label %bb.dl, label %.preheader.i

bb.dl:                                            ; preds = %bb.dk
  %i.yq = shl i64 %.sroa.8.0, 2
  %i.yr = and i64 %i.yq, 508                      ; 2 uses
  %.not.i.i377 = icmp eq i64 %i.yr, 0
  br i1 %.not.i.i377, label %_ZN2OT14coord_setter_tC2E10hb_array_tIKiE.exit, label %bb.dm, !prof !318

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yo, ptr readonly align 1 %.sroa.0398.0, i64 %i.yr, i1 false), !alias.scope !2124
  br label %_ZN2OT14coord_setter_tC2E10hb_array_tIKiE.exit

.preheader.i:                                     ; preds = %bb.dk, %.preheader.i
  %.043.i = phi i32 [ %i.yu, %.preheader.i ], [ 0, %bb.dk ] ; 2 uses
  %i.ys = lshr i32 %.043.i, 1
  %i.yt = add i32 %.043.i, 8
  %i.yu = add i32 %i.yt, %i.ys                    ; 5 uses
  %i.yv = icmp ult i32 %i.yu, %.sroa.3.8.extract.trunc.i
  br i1 %i.yv, label %.preheader.i, label %.thread.i, !llvm.loop !0

.thread.i:                                        ; preds = %.preheader.i
  %i.yw = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.yx = icmp ugt i32 %i.yu, 1073741823
  br i1 %i.yx, label %_ZN11hb_vector_tIiLb0EE5allocEjb.exit.thread, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i, !prof !267

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i: ; preds = %.thread.i
  %i.yy = shl nuw i32 %i.yu, 2
  %i.yz = zext i32 %i.yy to i64
  %malloc = call ptr @malloc(i64 %i.yz)           ; 3 uses
  %.not22.i = icmp eq ptr %malloc, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIiLb0EE5allocEjb.exit.thread, label %bb.dn, !prof !319

_ZN11hb_vector_tIiLb0EE5allocEjb.exit.thread:     ; preds = %.thread.i, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i
  store i32 -1, ptr %13, align 8, !tbaa !320
  br label %_ZN2OT14coord_setter_tC2E10hb_array_tIKiE.exit

bb.dn:                                            ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i
  %i.za = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %malloc, ptr %i.za, align 8, !tbaa !321
  store i32 %i.yu, ptr %13, align 8, !tbaa !320
  %i.zb = shl i64 %.sroa.8.0, 2
  %i.zc = and i64 %i.zb, 4294967292               ; 2 uses
  %.not.i.i.i.i376 = icmp eq i64 %i.zc, 0
  br i1 %.not.i.i.i.i376, label %_ZN11hb_vector_tIiLb0EE10copy_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKiE.exit.i.i, label %bb.do, !prof !267

bb.do:                                            ; preds = %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %malloc, ptr readonly align 1 %.sroa.0398.0, i64 %i.zc, i1 false), !alias.scope !2125
  br label %_ZN11hb_vector_tIiLb0EE10copy_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKiE.exit.i.i

_ZN11hb_vector_tIiLb0EE10copy_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKiE.exit.i.i: ; preds = %bb.do, %bb.dn
  store i32 %.sroa.3.8.extract.trunc.i, ptr %i.yw, align 4, !tbaa !322
  br label %_ZN2OT14coord_setter_tC2E10hb_array_tIKiE.exit

_ZN2OT14coord_setter_tC2E10hb_array_tIKiE.exit:   ; preds = %_ZN11hb_vector_tIiLb0EE5allocEjb.exit.thread, %.thread574, %bb.dl, %bb.dm, %_ZN11hb_vector_tIiLb0EE10copy_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKiE.exit.i.i
  %i.zd = phi ptr [ %i.yo, %bb.dl ], [ %i.yo, %bb.dm ], [ %i.yo, %_ZN11hb_vector_tIiLb0EE5allocEjb.exit.thread ], [ %i.yo, %_ZN11hb_vector_tIiLb0EE10copy_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKiE.exit.i.i ], [ %i.ym, %.thread574 ]
  %i.ze = phi ptr [ %i.yn, %bb.dl ], [ %i.yn, %bb.dm ], [ %i.yn, %_ZN11hb_vector_tIiLb0EE5allocEjb.exit.thread ], [ %i.yn, %_ZN11hb_vector_tIiLb0EE10copy_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKiE.exit.i.i ], [ %i.yl, %.thread574 ]
  %i.zf = load i32, ptr %i.fy, align 4, !tbaa !296 ; 2 uses
  %.not637 = icmp eq i32 %i.zf, 0
  br i1 %.not637, label %._crit_edge634.thread, label %.lr.ph633

.lr.ph633:                                        ; preds = %_ZN2OT14coord_setter_tC2E10hb_array_tIKiE.exit
  %i.zg = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.zh = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  br label %bb.dp

._crit_edge634:                                   ; preds = %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.zi = icmp eq i32 %i.zx, 0
  br i1 %i.zi, label %._crit_edge634.thread, label %bb.du

bb.dp:                                            ; preds = %.lr.ph633, %_ZN11hb_vector_tIjLb0EEixEi.exit
  %i.zj = phi i32 [ %i.zf, %.lr.ph633 ], [ %i.zx, %_ZN11hb_vector_tIjLb0EEixEi.exit ]
  %indvars.iv664 = phi i64 [ 0, %.lr.ph633 ], [ %indvars.iv.next665, %_ZN11hb_vector_tIjLb0EEixEi.exit ] ; 5 uses
  %i.zk = load i32, ptr %i.ga, align 4, !tbaa !298
  %i.zl = zext i32 %i.zk to i64
  %.not.i378 = icmp samesign ult i64 %indvars.iv664, %i.zl
  br i1 %.not.i378, label %bb.dr, label %bb.dq, !prof !268

bb.dq:                                            ; preds = %bb.dp
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit

bb.dr:                                            ; preds = %bb.dp
  %i.zm = load ptr, ptr %i.zg, align 8, !tbaa !301
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv664
  %.pre669 = load float, ptr %i.zn, align 4, !tbaa !304
  %i.zo = fadd float %.pre669, 5.000000e-01
  %i.zp = call float @llvm.floor.f32(float %i.zo)
  %i.zq = fptosi float %i.zp to i32
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit

_ZN11hb_vector_tIfLb0EEixEi.exit:                 ; preds = %bb.dq, %bb.dr
  %i.zr = phi i32 [ 0, %bb.dq ], [ %i.zq, %bb.dr ]
  %i.zs = zext i32 %i.zj to i64
  %.not.i380 = icmp samesign ult i64 %indvars.iv664, %i.zs
  br i1 %.not.i380, label %bb.dt, label %bb.ds, !prof !268

bb.ds:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

bb.dt:                                            ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit
  %i.zt = load ptr, ptr %i.zh, align 8, !tbaa !323
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %indvars.iv664
  %.pre670 = load i32, ptr %i.zu, align 4, !tbaa !324
  br label %_ZN11hb_vector_tIjLb0EEixEi.exit

_ZN11hb_vector_tIjLb0EEixEi.exit:                 ; preds = %bb.ds, %bb.dt
  %i.zv = phi i32 [ 0, %bb.ds ], [ %.pre670, %bb.dt ]
  %i.zw = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2OT14coord_setter_tixEj(ptr noundef nonnull align 8 dereferenceable(276) %13, i32 noundef %i.zv)
  store i32 %i.zr, ptr %i.zw, align 4, !tbaa !324
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1 ; 2 uses
  %i.zx = load i32, ptr %i.fy, align 4, !tbaa !296 ; 3 uses
  %i.zy = zext i32 %i.zx to i64
  %i.zz = icmp samesign ult i64 %indvars.iv.next665, %i.zy
  br i1 %i.zz, label %bb.dp, label %._crit_edge634, !llvm.loop !2110

bb.du:                                            ; preds = %._crit_edge634
  %i.aaa = load i32, ptr %i.ze, align 8, !tbaa !317 ; 2 uses
  %i.aab = icmp ult i32 %i.aaa, 65                ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aad = load ptr, ptr %i.aac, align 8
  %i.aae = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.aaf = load i32, ptr %i.aae, align 4
  %.pn3.i = select i1 %i.aab, ptr %i.zd, ptr %i.aad
  %.sroa.2.8.insert.ext.i.pn.in.i = select i1 %i.aab, i32 %i.aaa, i32 %i.aaf
  %.sroa.2.8.insert.ext.i.pn.i = zext i32 %.sroa.2.8.insert.ext.i.pn.in.i to i64
  br label %._crit_edge634.thread

._crit_edge634.thread:                            ; preds = %_ZN2OT14coord_setter_tC2E10hb_array_tIKiE.exit, %bb.du, %._crit_edge634
  %.sroa.8.1 = phi i64 [ %.sroa.2.8.insert.ext.i.pn.i, %bb.du ], [ %.sroa.8.0, %._crit_edge634 ], [ %.sroa.8.0, %_ZN2OT14coord_setter_tC2E10hb_array_tIKiE.exit ] ; 2 uses
  %.sroa.0398.1 = phi ptr [ %.pn3.i, %bb.du ], [ %.sroa.0398.0, %._crit_edge634 ], [ %.sroa.0398.0, %_ZN2OT14coord_setter_tC2E10hb_array_tIKiE.exit ] ; 2 uses
  %.not322 = icmp ne i32 %.1284, -1
  %i.aag = icmp ne i32 %.sroa.7.8.extract.trunc, 0
  %or.cond579 = select i1 %.not322, i1 %i.aag, i1 false
  br i1 %or.cond579, label %bb.dv, label %bb.fg

bb.dv:                                            ; preds = %._crit_edge634.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  br i1 %.not312, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aah = load float, ptr %12, align 16, !tbaa !2119
  store float %i.aah, ptr %i.a, align 16, !tbaa !304
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.0263 = phi i32 [ 1, %bb.dw ], [ 0, %bb.dv ]   ; 3 uses
  br i1 %.not313, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.aai = load float, ptr %i.ul, align 4, !tbaa !2120
  %i.aaj = add nuw nsw i32 %.0263, 1
  %i.aak = zext nneg i32 %.0263 to i64
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aak
  store float %i.aai, ptr %i.aal, align 4, !tbaa !304
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.1264 = phi i32 [ %i.aaj, %bb.dy ], [ %.0263, %bb.dx ] ; 3 uses
  br i1 %.not314, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.aam = load float, ptr %i.um, align 8, !tbaa !312
  %i.aan = add nuw nsw i32 %.1264, 1
  %i.aao = zext nneg i32 %.1264 to i64
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aao
  store float %i.aam, ptr %i.aap, align 4, !tbaa !304
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.2265 = phi i32 [ %i.aan, %bb.ea ], [ %.1264, %bb.dz ] ; 3 uses
  br i1 %.not315, label %bb.ed, label %bb.ec

end_hunk_0
