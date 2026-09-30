Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/InlineCandidate?download=true
inline.NumInlined: 848
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@l_Lean_Compiler_LCNF_Simp_inlineCandidate_x3f:bb.a
  br label %lean_inc_ref.exit3042

bb.ou:                                            ; preds = %lean_inc_n.exit3039
  %.not.i.i3041 = icmp eq i32 %.val.i.i3040, 0
  br i1 %.not.i.i3041, label %lean_inc_ref.exit3042, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.wa = atomicrmw sub ptr %i.aox, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit3042

lean_inc_ref.exit3042:                            ; preds = %bb.ot, %bb.ou, %bb.ov
  %i.wb = tail call ptr @l_Lean_Compiler_LCNF_Decl_instantiateParamsLevelParams(i8 noundef zeroext 0, ptr noundef nonnull %i.aox, ptr noundef %.151739) #5
  %i.wc = tail call ptr @l_Lean_Compiler_LCNF_Code_instantiateValueLevelParams(ptr noundef nonnull %i.aqb, ptr noundef %i.vk, ptr noundef %.151739) #5
  %i.wd = tail call ptr @l_Lean_Compiler_LCNF_Decl_instantiateTypeLevelParams___redArg(ptr noundef nonnull %i.aox, ptr noundef %.151739) #5
  %i.we = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 4, i32 noundef 3) ; 8 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  store ptr %i.wb, ptr %i.wf, align 8, !tbaa !10
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  store ptr %i.wc, ptr %i.wg, align 8, !tbaa !10
  %i.wh = getelementptr inbounds nuw i8, ptr %i.we, i64 24
  store ptr %i.wd, ptr %i.wh, align 8, !tbaa !10
  %i.wi = getelementptr inbounds nuw i8, ptr %i.we, i64 32
  store ptr %.151758, ptr %i.wi, align 8, !tbaa !10
  %i.wj = getelementptr inbounds nuw i8, ptr %i.we, i64 40
  store i8 0, ptr %i.wj, align 8, !tbaa !20
  %i.wk = getelementptr inbounds nuw i8, ptr %i.we, i64 41
  store i8 %i.aqf, ptr %i.wk, align 1, !tbaa !20
  %i.wl = getelementptr inbounds nuw i8, ptr %i.we, i64 42
  store i8 %i.apz, ptr %i.wl, align 2, !tbaa !20
  %i.wm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  store ptr %i.we, ptr %i.wn, align 8, !tbaa !10
  br i1 %i.uz, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %lean_inc_ref.exit3042
  %i.wo = getelementptr inbounds nuw i8, ptr %.01574, i64 8
  store ptr %i.wm, ptr %i.wo, align 8, !tbaa !10
  br label %lean_dec.exit2669

bb.ox:                                            ; preds = %lean_inc_ref.exit3042
  %i.wp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  store ptr %i.wm, ptr %i.wq, align 8, !tbaa !10
  br label %lean_dec.exit2669

bb.oy:                                            ; preds = %lean_obj_tag.exit3032
  %i.wr = load i32, ptr %.151758, align 4, !tbaa !14 ; 3 uses
  %i.ws = icmp sgt i32 %i.wr, 1
  br i1 %i.ws, label %bb.oz, label %bb.pa, !prof !15

bb.oz:                                            ; preds = %bb.oy
  %i.wt = add nsw i32 %i.wr, -1
  store i32 %i.wt, ptr %.151758, align 4, !tbaa !14
  br label %lean_dec_ref.exit2291

bb.pa:                                            ; preds = %bb.oy
  %.not.i2290 = icmp eq i32 %i.wr, 0
  br i1 %.not.i2290, label %lean_dec_ref.exit2291, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.151758) #5
  br label %lean_dec_ref.exit2291

lean_dec_ref.exit2291:                            ; preds = %bb.oz, %bb.pa, %bb.pb
  %i.wu = load i32, ptr %i.apu, align 4, !tbaa !14 ; 3 uses
  %i.wv = icmp sgt i32 %i.wu, 1
  br i1 %i.wv, label %bb.pc, label %bb.pd, !prof !15

bb.pc:                                            ; preds = %lean_dec_ref.exit2291
  %i.ww = add nsw i32 %i.wu, -1
  store i32 %i.ww, ptr %i.apu, align 4, !tbaa !14
  br label %lean_dec_ref.exit2289

bb.pd:                                            ; preds = %lean_dec_ref.exit2291
  %.not.i2288 = icmp eq i32 %i.wu, 0
  br i1 %.not.i2288, label %lean_dec_ref.exit2289, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apu) #5
  br label %lean_dec_ref.exit2289

lean_dec_ref.exit2289:                            ; preds = %bb.pc, %bb.pd, %bb.pe
  %i.wx = ptrtoint ptr %.151739 to i64
  %i.wy = and i64 %i.wx, 1
  %.not.i2670 = icmp eq i64 %i.wy, 0
  br i1 %.not.i2670, label %bb.pf, label %lean_dec.exit2673

bb.pf:                                            ; preds = %lean_dec_ref.exit2289
  %i.wz = load i32, ptr %.151739, align 4, !tbaa !14 ; 3 uses
  %i.xa = icmp sgt i32 %i.wz, 1
  br i1 %i.xa, label %bb.pg, label %bb.ph, !prof !15

bb.pg:                                            ; preds = %bb.pf
  %i.xb = add nsw i32 %i.wz, -1
  store i32 %i.xb, ptr %.151739, align 4, !tbaa !14
  br label %lean_dec.exit2673

bb.ph:                                            ; preds = %bb.pf
  %.not.i.i2671 = icmp eq i32 %i.wz, 0
  br i1 %.not.i.i2671, label %lean_dec.exit2673, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.151739) #5
  br label %lean_dec.exit2673

lean_dec.exit2673:                                ; preds = %bb.pg, %bb.ph, %bb.pi, %lean_dec_ref.exit2289
  %i.xc = load i32, ptr %i.aqb, align 4, !tbaa !14 ; 3 uses
  %i.xd = icmp sgt i32 %i.xc, 1
  br i1 %i.xd, label %bb.pj, label %bb.pk, !prof !15

bb.pj:                                            ; preds = %lean_dec.exit2673
  %i.xe = add nsw i32 %i.xc, -1
  store i32 %i.xe, ptr %i.aqb, align 4, !tbaa !14
  br label %lean_dec_ref.exit2287

bb.pk:                                            ; preds = %lean_dec.exit2673
  %.not.i2286 = icmp eq i32 %i.xc, 0
  br i1 %.not.i2286, label %lean_dec_ref.exit2287, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqb) #5
  br label %lean_dec_ref.exit2287

lean_dec_ref.exit2287:                            ; preds = %bb.pj, %bb.pk, %bb.pl
  %i.xf = load i32, ptr %i.aox, align 8, !tbaa !14 ; 3 uses
  %i.xg = icmp sgt i32 %i.xf, 1
  br i1 %i.xg, label %bb.pm, label %bb.pn, !prof !15

bb.pm:                                            ; preds = %lean_dec_ref.exit2287
  %i.xh = add nsw i32 %i.xf, -1
  store i32 %i.xh, ptr %i.aox, align 8, !tbaa !14
  br label %lean_dec_ref.exit2285

bb.pn:                                            ; preds = %lean_dec_ref.exit2287
  %.not.i2284 = icmp eq i32 %i.xf, 0
  br i1 %.not.i2284, label %lean_dec_ref.exit2285, label %bb.po

bb.po:                                            ; preds = %bb.pn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aox) #5
  br label %lean_dec_ref.exit2285

lean_dec_ref.exit2285:                            ; preds = %bb.pm, %bb.pn, %bb.po
  %i.xi = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !10 ; 5 uses
  %.val2827 = load i32, ptr %i.ur, align 8, !tbaa !14
  %i.xk = icmp eq i32 %.val2827, 1
  br i1 %i.xk, label %lean_dec.exit2669, label %bb.pp

bb.pp:                                            ; preds = %lean_dec_ref.exit2285
  %i.xl = ptrtoint ptr %i.xj to i64
  %i.xm = and i64 %i.xl, 1
  %.not.i2377 = icmp eq i64 %i.xm, 0
  br i1 %.not.i2377, label %bb.pq, label %lean_inc.exit2378

bb.pq:                                            ; preds = %bb.pp
  %.val.i.i3043 = load i32, ptr %i.xj, align 4, !tbaa !14 ; 3 uses
  %i.xn = icmp sgt i32 %.val.i.i3043, 0
  br i1 %i.xn, label %bb.pr, label %bb.ps, !prof !15

bb.pr:                                            ; preds = %bb.pq
  %i.xo = add nuw i32 %.val.i.i3043, 1
  store i32 %i.xo, ptr %i.xj, align 4, !tbaa !14
  br label %lean_inc.exit2378

bb.ps:                                            ; preds = %bb.pq
  %.not.i.i3044 = icmp eq i32 %.val.i.i3043, 0
  br i1 %.not.i.i3044, label %lean_inc.exit2378, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.xp = atomicrmw sub ptr %i.xj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2378

lean_inc.exit2378:                                ; preds = %bb.pt, %bb.ps, %bb.pr, %bb.pp
  br i1 %.not.i3029, label %bb.pu, label %bb.py

bb.pu:                                            ; preds = %lean_inc.exit2378
  %i.xq = load i32, ptr %i.ur, align 8, !tbaa !14 ; 3 uses
  %i.xr = icmp sgt i32 %i.xq, 1
  br i1 %i.xr, label %bb.pv, label %bb.pw, !prof !15

bb.pv:                                            ; preds = %bb.pu
  %i.xs = add nsw i32 %i.xq, -1
  store i32 %i.xs, ptr %i.ur, align 8, !tbaa !14
  br label %bb.py

bb.pw:                                            ; preds = %bb.pu
  %.not.i.i2667 = icmp eq i32 %i.xq, 0
  br i1 %.not.i.i2667, label %bb.py, label %bb.px

bb.px:                                            ; preds = %bb.pw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ur) #5
  br label %bb.py

bb.py:                                            ; preds = %lean_inc.exit2378, %bb.px, %bb.pw, %bb.pv
  %i.xt = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  store ptr %i.xj, ptr %i.xu, align 8, !tbaa !10
  br label %lean_dec.exit2669

lean_dec_ref.exit2213:                            ; preds = %bb.xc, %bb.xb, %bb.wg, %bb.wh, %bb.abp
  %8 = icmp eq i8 %i.aqf, 0
  br i1 %8, label %lean_del_object.exit3064, label %bb.pz

bb.pz:                                            ; preds = %lean_dec_ref.exit2213
  %i.xv = tail call ptr @l_Lean_Compiler_LCNF_Decl_isCasesOnParam_x3f___redArg(ptr noundef nonnull %i.aox) #5 ; 11 uses
  %i.xw = ptrtoint ptr %i.xv to i64               ; 2 uses
  %i.xx = and i64 %i.xw, 1
  %.not.i3046 = icmp eq i64 %i.xx, 0              ; 2 uses
  br i1 %.not.i3046, label %lean_obj_tag.exit3049, label %lean_obj_tag.exit3049.thread

lean_obj_tag.exit3049:                            ; preds = %bb.pz
  %i.xy = getelementptr i8, ptr %i.xv, i64 4
  %.val.i3048 = load i32, ptr %i.xy, align 4
  %.mask3889 = and i32 %.val.i3048, -16777216
  %i.xz = icmp eq i32 %.mask3889, 16777216
  br i1 %i.xz, label %bb.qa, label %bb.tz

lean_obj_tag.exit3049.thread:                     ; preds = %bb.pz
  %i.ya = and i64 %i.xw, 8589934590
  %i.yb = icmp eq i64 %i.ya, 2
  br i1 %i.yb, label %bb.qa, label %lean_dec.exit2629

bb.qa:                                            ; preds = %lean_obj_tag.exit3049.thread, %lean_obj_tag.exit3049
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !10 ; 12 uses
  %.val2826 = load i32, ptr %i.xv, align 8, !tbaa !14
  %i.ye = icmp eq i32 %.val2826, 1                ; 2 uses
  %.pre3492 = ptrtoint ptr %i.yd to i64           ; 2 uses
  %.pre3494 = and i64 %.pre3492, 1                ; 2 uses
  br i1 %i.ye, label %lean_dec.exit2665, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %.not.i2375 = icmp eq i64 %.pre3494, 0
  br i1 %.not.i2375, label %bb.qc, label %lean_inc.exit2376

bb.qc:                                            ; preds = %bb.qb
  %.val.i.i3050 = load i32, ptr %i.yd, align 4, !tbaa !14 ; 3 uses
  %i.yf = icmp sgt i32 %.val.i.i3050, 0
  br i1 %i.yf, label %bb.qd, label %bb.qe, !prof !15

bb.qd:                                            ; preds = %bb.qc
  %i.yg = add nuw i32 %.val.i.i3050, 1
  store i32 %i.yg, ptr %i.yd, align 4, !tbaa !14
  br label %lean_inc.exit2376

bb.qe:                                            ; preds = %bb.qc
  %.not.i.i3051 = icmp eq i32 %.val.i.i3050, 0
  br i1 %.not.i.i3051, label %lean_inc.exit2376, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.yh = atomicrmw sub ptr %i.yd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2376

lean_inc.exit2376:                                ; preds = %bb.qf, %bb.qe, %bb.qd, %bb.qb
  br i1 %.not.i3046, label %bb.qg, label %lean_dec.exit2665

bb.qg:                                            ; preds = %lean_inc.exit2376
  %i.yi = load i32, ptr %i.xv, align 8, !tbaa !14 ; 3 uses
  %i.yj = icmp sgt i32 %i.yi, 1
  br i1 %i.yj, label %bb.qh, label %bb.qi, !prof !15

bb.qh:                                            ; preds = %bb.qg
  %i.yk = add nsw i32 %i.yi, -1
  store i32 %i.yk, ptr %i.xv, align 8, !tbaa !14
  br label %lean_dec.exit2665

bb.qi:                                            ; preds = %bb.qg
  %.not.i.i2663 = icmp eq i32 %i.yi, 0
  br i1 %.not.i.i2663, label %lean_dec.exit2665, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.xv) #5
  br label %lean_dec.exit2665

lean_dec.exit2665:                                ; preds = %bb.qa, %lean_inc.exit2376, %bb.qj, %bb.qi, %bb.qh
  %.01549 = phi ptr [ inttoptr (i64 1 to ptr), %bb.qh ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2376 ], [ inttoptr (i64 1 to ptr), %bb.qj ], [ inttoptr (i64 1 to ptr), %bb.qi ], [ %i.xv, %bb.qa ] ; 5 uses
  %i.yl = getelementptr i8, ptr %.151758, i64 8   ; 2 uses
  %.01467.val = load i64, ptr %i.yl, align 8, !tbaa !12
  %i.ym = shl i64 %.01467.val, 1
  %i.yn = or disjoint i64 %i.ym, 1
  %i.yo = inttoptr i64 %i.yn to ptr               ; 2 uses
  %.not.i2798 = icmp eq i64 %.pre3494, 0          ; 2 uses
  br i1 %.not.i2798, label %lean_nat_lt.exit, label %lean_nat_lt.exit.thread, !prof !21

lean_nat_lt.exit:                                 ; preds = %lean_dec.exit2665
  %i.yp = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.yd, ptr noundef nonnull %i.yo) #5
  br i1 %i.yp, label %bb.rg, label %bb.qk

lean_nat_lt.exit.thread:                          ; preds = %lean_dec.exit2665
  %.not3474 = icmp ult ptr %i.yd, %i.yo
  br i1 %.not3474, label %bb.rg, label %lean_dec.exit2661

bb.qk:                                            ; preds = %lean_nat_lt.exit
  %i.yq = load i32, ptr %i.yd, align 4, !tbaa !14 ; 3 uses
  %i.yr = icmp sgt i32 %i.yq, 1
  br i1 %i.yr, label %bb.ql, label %bb.qm, !prof !15

bb.ql:                                            ; preds = %bb.qk
  %i.ys = add nsw i32 %i.yq, -1
  store i32 %i.ys, ptr %i.yd, align 4, !tbaa !14
  br label %lean_dec.exit2661

bb.qm:                                            ; preds = %bb.qk
  %.not.i.i2659 = icmp eq i32 %i.yq, 0
  br i1 %.not.i.i2659, label %lean_dec.exit2661, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.yd) #5
  br label %lean_dec.exit2661

lean_dec.exit2661:                                ; preds = %lean_nat_lt.exit.thread, %bb.ql, %bb.qm, %bb.qn
  %i.yt = load i32, ptr %.151758, align 8, !tbaa !14 ; 3 uses
  %i.yu = icmp sgt i32 %i.yt, 1
  br i1 %i.yu, label %bb.qo, label %bb.qp, !prof !15

bb.qo:                                            ; preds = %lean_dec.exit2661
  %i.yv = add nsw i32 %i.yt, -1
  store i32 %i.yv, ptr %.151758, align 8, !tbaa !14
  br label %lean_dec_ref.exit2283

bb.qp:                                            ; preds = %lean_dec.exit2661
  %.not.i2282 = icmp eq i32 %i.yt, 0
  br i1 %.not.i2282, label %lean_dec_ref.exit2283, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.151758) #5
  br label %lean_dec_ref.exit2283

lean_dec_ref.exit2283:                            ; preds = %bb.qo, %bb.qp, %bb.qq
  %i.yw = load i32, ptr %i.apu, align 4, !tbaa !14 ; 3 uses
  %i.yx = icmp sgt i32 %i.yw, 1
  br i1 %i.yx, label %bb.qr, label %bb.qs, !prof !15

bb.qr:                                            ; preds = %lean_dec_ref.exit2283
  %i.yy = add nsw i32 %i.yw, -1
  store i32 %i.yy, ptr %i.apu, align 4, !tbaa !14
  br label %lean_dec_ref.exit2281

bb.qs:                                            ; preds = %lean_dec_ref.exit2283
  %.not.i2280 = icmp eq i32 %i.yw, 0
  br i1 %.not.i2280, label %lean_dec_ref.exit2281, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apu) #5
  br label %lean_dec_ref.exit2281

lean_dec_ref.exit2281:                            ; preds = %bb.qr, %bb.qs, %bb.qt
  %i.yz = load i32, ptr %i.aqb, align 4, !tbaa !14 ; 3 uses
  %i.za = icmp sgt i32 %i.yz, 1
  br i1 %i.za, label %bb.qu, label %bb.qv, !prof !15

bb.qu:                                            ; preds = %lean_dec_ref.exit2281
  %i.zb = add nsw i32 %i.yz, -1
  store i32 %i.zb, ptr %i.aqb, align 4, !tbaa !14
  br label %lean_dec_ref.exit2279

bb.qv:                                            ; preds = %lean_dec_ref.exit2281
  %.not.i2278 = icmp eq i32 %i.yz, 0
  br i1 %.not.i2278, label %lean_dec_ref.exit2279, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqb) #5
  br label %lean_dec_ref.exit2279

lean_dec_ref.exit2279:                            ; preds = %bb.qu, %bb.qv, %bb.qw
  %i.zc = ptrtoint ptr %.151739 to i64
  %i.zd = and i64 %i.zc, 1
  %.not.i2654 = icmp eq i64 %i.zd, 0
  br i1 %.not.i2654, label %bb.qx, label %lean_dec.exit2657

bb.qx:                                            ; preds = %lean_dec_ref.exit2279
  %i.ze = load i32, ptr %.151739, align 4, !tbaa !14 ; 3 uses
  %i.zf = icmp sgt i32 %i.ze, 1
  br i1 %i.zf, label %bb.qy, label %bb.qz, !prof !15

bb.qy:                                            ; preds = %bb.qx
  %i.zg = add nsw i32 %i.ze, -1
  store i32 %i.zg, ptr %.151739, align 4, !tbaa !14
  br label %lean_dec.exit2657

bb.qz:                                            ; preds = %bb.qx
  %.not.i.i2655 = icmp eq i32 %i.ze, 0
  br i1 %.not.i.i2655, label %lean_dec.exit2657, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.151739) #5
  br label %lean_dec.exit2657

lean_dec.exit2657:                                ; preds = %bb.qy, %bb.qz, %bb.ra, %lean_dec_ref.exit2279
  %i.zh = load i32, ptr %i.aox, align 8, !tbaa !14 ; 3 uses
  %i.zi = icmp sgt i32 %i.zh, 1
  br i1 %i.zi, label %bb.rb, label %bb.rc, !prof !15

bb.rb:                                            ; preds = %lean_dec.exit2657
  %i.zj = add nsw i32 %i.zh, -1
  store i32 %i.zj, ptr %i.aox, align 8, !tbaa !14
  br label %lean_dec_ref.exit2277

bb.rc:                                            ; preds = %lean_dec.exit2657
  %.not.i2276 = icmp eq i32 %i.zh, 0
  br i1 %.not.i2276, label %lean_dec_ref.exit2277, label %bb.rd

end_hunk_0
begin_hunk_1_@l_Lean_Compiler_LCNF_Simp_inlineCandidate_x3f:bb.a
  %.val2822 = load i32, ptr %i.aoa, align 8, !tbaa !14
  %i.aok = icmp eq i32 %.val2822, 1               ; 2 uses
  %.pre3484 = ptrtoint ptr %i.aoj to i64          ; 2 uses
  %.pre3486 = and i64 %.pre3484, 1                ; 2 uses
  br i1 %i.aok, label %lean_dec.exit2573, label %bb.acw

bb.acw:                                           ; preds = %bb.acv
  %.not.i2353 = icmp eq i64 %.pre3486, 0
  br i1 %.not.i2353, label %bb.acx, label %lean_inc.exit2354

bb.acx:                                           ; preds = %bb.acw
  %.val.i.i3153 = load i32, ptr %i.aoj, align 4, !tbaa !14 ; 3 uses
  %i.aol = icmp sgt i32 %.val.i.i3153, 0
  br i1 %i.aol, label %bb.acy, label %bb.acz, !prof !15

bb.acy:                                           ; preds = %bb.acx
  %i.aom = add nuw i32 %.val.i.i3153, 1
  store i32 %i.aom, ptr %i.aoj, align 4, !tbaa !14
  br label %lean_inc.exit2354

bb.acz:                                           ; preds = %bb.acx
  %.not.i.i3154 = icmp eq i32 %.val.i.i3153, 0
  br i1 %.not.i.i3154, label %lean_inc.exit2354, label %bb.ada

bb.ada:                                           ; preds = %bb.acz
  %i.aon = atomicrmw sub ptr %i.aoj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2354

lean_inc.exit2354:                                ; preds = %bb.ada, %bb.acz, %bb.acy, %bb.acw
  br i1 %.not.i3149, label %bb.adb, label %lean_dec.exit2573

bb.adb:                                           ; preds = %lean_inc.exit2354
  %i.aoo = load i32, ptr %i.aoa, align 8, !tbaa !14 ; 3 uses
  %i.aop = icmp sgt i32 %i.aoo, 1
  br i1 %i.aop, label %bb.adc, label %bb.add, !prof !15

bb.adc:                                           ; preds = %bb.adb
  %i.aoq = add nsw i32 %i.aoo, -1
  store i32 %i.aoq, ptr %i.aoa, align 8, !tbaa !14
  br label %lean_dec.exit2573

bb.add:                                           ; preds = %bb.adb
  %.not.i.i2571 = icmp eq i32 %i.aoo, 0
  br i1 %.not.i.i2571, label %lean_dec.exit2573, label %bb.ade

bb.ade:                                           ; preds = %bb.add
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aoa) #5
  br label %lean_dec.exit2573

lean_dec.exit2573:                                ; preds = %bb.acv, %lean_inc.exit2354, %bb.ade, %bb.add, %bb.adc
  %.01463 = phi ptr [ inttoptr (i64 1 to ptr), %bb.adc ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2354 ], [ inttoptr (i64 1 to ptr), %bb.ade ], [ inttoptr (i64 1 to ptr), %bb.add ], [ %i.aoa, %bb.acv ] ; 8 uses
  %.not.i3156 = icmp eq i64 %.pre3486, 0          ; 2 uses
  br i1 %.not.i3156, label %bb.adg, label %bb.adf

bb.adf:                                           ; preds = %lean_dec.exit2573
  %i.aor = lshr i64 %.pre3484, 1
  %i.aos = trunc i64 %i.aor to i32
  br label %lean_obj_tag.exit3159

bb.adg:                                           ; preds = %lean_dec.exit2573
  %i.aot = getelementptr i8, ptr %i.aoj, i64 4
  %.val.i3158 = load i32, ptr %i.aot, align 4
  %i.aou = lshr i32 %.val.i3158, 24
  br label %lean_obj_tag.exit3159

lean_obj_tag.exit3159:                            ; preds = %bb.adf, %bb.adg
  %.0.i3157 = phi i32 [ %i.aos, %bb.adf ], [ %i.aou, %bb.adg ]
  %i.aov = icmp eq i32 %.0.i3157, 1
  br i1 %i.aov, label %bb.adh, label %bb.afx

bb.adh:                                           ; preds = %lean_obj_tag.exit3159
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !10 ; 55 uses
  %i.aoy = ptrtoint ptr %i.aox to i64
  %i.aoz = and i64 %i.aoy, 1
  %.not.i2351 = icmp eq i64 %i.aoz, 0             ; 5 uses
  br i1 %.not.i2351, label %bb.adi, label %lean_inc.exit2352

bb.adi:                                           ; preds = %bb.adh
  %.val.i.i3160 = load i32, ptr %i.aox, align 4, !tbaa !14 ; 3 uses
  %i.apa = icmp sgt i32 %.val.i.i3160, 0
  br i1 %i.apa, label %bb.adj, label %bb.adk, !prof !15

bb.adj:                                           ; preds = %bb.adi
  %i.apb = add nuw i32 %.val.i.i3160, 1
  store i32 %i.apb, ptr %i.aox, align 4, !tbaa !14
  br label %lean_inc.exit2352

bb.adk:                                           ; preds = %bb.adi
  %.not.i.i3161 = icmp eq i32 %.val.i.i3160, 0
  br i1 %.not.i.i3161, label %lean_inc.exit2352, label %bb.adl

bb.adl:                                           ; preds = %bb.adk
  %i.apc = atomicrmw sub ptr %i.aox, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2352

lean_inc.exit2352:                                ; preds = %bb.adl, %bb.adk, %bb.adj, %bb.adh
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.aoj, i32 noundef 1)
  br i1 %.not.i2355, label %bb.adm, label %lean_dec.exit2569

bb.adm:                                           ; preds = %lean_inc.exit2352
  %i.apd = load i32, ptr %i.anj, align 4, !tbaa !14 ; 3 uses
  %i.ape = icmp sgt i32 %i.apd, 1
  br i1 %i.ape, label %bb.adn, label %bb.ado, !prof !15

bb.adn:                                           ; preds = %bb.adm
  %i.apf = add nsw i32 %i.apd, -1
  store i32 %i.apf, ptr %i.anj, align 4, !tbaa !14
  br label %lean_dec.exit2569

bb.ado:                                           ; preds = %bb.adm
  %.not.i.i2567 = icmp eq i32 %i.apd, 0
  br i1 %.not.i.i2567, label %lean_dec.exit2569, label %bb.adp

bb.adp:                                           ; preds = %bb.ado
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.anj) #5
  br label %lean_dec.exit2569

lean_dec.exit2569:                                ; preds = %bb.adn, %bb.ado, %bb.adp, %lean_inc.exit2352
  %i.apg = tail call zeroext i8 @l_Lean_Compiler_LCNF_Phase_toPurity(i8 noundef zeroext %i.anz) #5
  %i.aph = icmp eq i8 %i.apg, 0
  br i1 %i.aph, label %bb.adq, label %bb.afk

bb.adq:                                           ; preds = %lean_dec.exit2569
  %i.api = getelementptr inbounds nuw i8, ptr %i.aox, i64 8
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aox, i64 16
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !10 ; 3 uses
  %i.apl = ptrtoint ptr %i.apk to i64             ; 2 uses
  %i.apm = and i64 %i.apl, 1
  %.not.i3163 = icmp eq i64 %i.apm, 0
  br i1 %.not.i3163, label %bb.ads, label %bb.adr

bb.adr:                                           ; preds = %bb.adq
  %i.apn = lshr i64 %i.apl, 1
  %i.apo = trunc i64 %i.apn to i32
  br label %lean_obj_tag.exit3166

bb.ads:                                           ; preds = %bb.adq
  %i.app = getelementptr i8, ptr %i.apk, i64 4
  %.val.i3165 = load i32, ptr %i.app, align 4
  %i.apq = lshr i32 %.val.i3165, 24
  br label %lean_obj_tag.exit3166

lean_obj_tag.exit3166:                            ; preds = %bb.adr, %bb.ads
  %.0.i3164 = phi i32 [ %i.apo, %bb.adr ], [ %i.apq, %bb.ads ]
  %i.apr = icmp eq i32 %.0.i3164, 0
  br i1 %i.apr, label %bb.adt, label %bb.aew

bb.adt:                                           ; preds = %lean_obj_tag.exit3166
  %i.aps = ptrtoint ptr %.01463 to i64
  %i.apt = and i64 %i.aps, 1
  %.not.i3167 = icmp eq i64 %i.apt, 0
  br i1 %.not.i3167, label %bb.adu, label %lean_del_object.exit3168

bb.adu:                                           ; preds = %bb.adt
  tail call void @lean_free_object(ptr noundef nonnull %.01463) #5
  br label %lean_del_object.exit3168

lean_del_object.exit3168:                         ; preds = %bb.adt, %bb.adu
  %i.apu = load ptr, ptr %i.api, align 8, !tbaa !10 ; 38 uses
  %.val.i.i3169 = load i32, ptr %i.apu, align 4, !tbaa !14 ; 3 uses
  %i.apv = icmp sgt i32 %.val.i.i3169, 0
  br i1 %i.apv, label %bb.adv, label %bb.adw, !prof !15

bb.adv:                                           ; preds = %lean_del_object.exit3168
  %i.apw = add nuw i32 %.val.i.i3169, 1
  store i32 %i.apw, ptr %i.apu, align 4, !tbaa !14
  br label %lean_inc_ref.exit3171

bb.adw:                                           ; preds = %lean_del_object.exit3168
  %.not.i.i3170 = icmp eq i32 %.val.i.i3169, 0
  br i1 %.not.i.i3170, label %lean_inc_ref.exit3171, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.apx = atomicrmw sub ptr %i.apu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit3171

lean_inc_ref.exit3171:                            ; preds = %bb.adv, %bb.adw, %bb.adx
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aox, i64 32
  %i.apz = load i8, ptr %i.apy, align 8, !tbaa !20 ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apk, i64 8
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !10 ; 35 uses
  %.val.i3172 = load i32, ptr %i.aqb, align 4, !tbaa !14 ; 3 uses
  %i.aqc = icmp sgt i32 %.val.i3172, 0
  br i1 %i.aqc, label %bb.ady, label %bb.adz, !prof !15

bb.ady:                                           ; preds = %lean_inc_ref.exit3171
  %i.aqd = add nuw i32 %.val.i3172, 2
  store i32 %i.aqd, ptr %i.aqb, align 4, !tbaa !14
  br label %lean_inc_ref_n.exit

bb.adz:                                           ; preds = %lean_inc_ref.exit3171
  %.not.i3173 = icmp eq i32 %.val.i3172, 0
  br i1 %.not.i3173, label %lean_inc_ref_n.exit, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.aqe = atomicrmw sub ptr %i.aqb, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit

lean_inc_ref_n.exit:                              ; preds = %bb.ady, %bb.adz, %bb.aea
  %i.aqf = tail call zeroext i8 @l_Lean_Compiler_LCNF_Decl_inlineIfReduceAttr___redArg(ptr noundef nonnull %i.aox) #5 ; 4 uses
  %i.aqg = zext i8 %i.aqf to i64
  %i.aqh = shl nuw nsw i64 %i.aqg, 1
  %i.aqi = or disjoint i64 %i.aqh, 1
  %i.aqj = inttoptr i64 %i.aqi to ptr
  %i.aqk = zext i8 %i.amf to i64
  %i.aql = shl nuw nsw i64 %i.aqk, 1
  %i.aqm = or disjoint i64 %i.aql, 1
  %i.aqn = inttoptr i64 %i.aqm to ptr
  br i1 %.not.i2351, label %bb.aeb, label %lean_inc.exit2350

bb.aeb:                                           ; preds = %lean_inc_ref_n.exit
  %.val.i.i3174 = load i32, ptr %i.aox, align 8, !tbaa !14 ; 3 uses
  %i.aqo = icmp sgt i32 %.val.i.i3174, 0
  br i1 %i.aqo, label %bb.aec, label %bb.aed, !prof !15

bb.aec:                                           ; preds = %bb.aeb
  %i.aqp = add nuw i32 %.val.i.i3174, 1
  store i32 %i.aqp, ptr %i.aox, align 8, !tbaa !14
  br label %lean_inc.exit2350

bb.aed:                                           ; preds = %bb.aeb
  %.not.i.i3175 = icmp eq i32 %.val.i.i3174, 0
  br i1 %.not.i.i3175, label %lean_inc.exit2350, label %bb.aee

bb.aee:                                           ; preds = %bb.aed
  %i.aqq = atomicrmw sub ptr %i.aox, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2350

lean_inc.exit2350:                                ; preds = %bb.aee, %bb.aed, %bb.aec, %lean_inc_ref_n.exit
  %i.aqr = tail call ptr @lean_alloc_object(i64 noundef 64) #5 ; 24 uses
  store i32 1, ptr %i.aqr, align 4, !tbaa !14
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 4 ; 2 uses
  %i.aqt = load i32, ptr %i.aqs, align 4
  %i.aqu = and i32 %i.aqt, 65535
  %i.aqv = or disjoint i32 %i.aqu, -184549376
  store i32 %i.aqv, ptr %i.aqs, align 4
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqr, i64 8
  store ptr @l_Lean_Compiler_LCNF_Simp_inlineCandidate_x3f___lam__0___boxed, ptr %i.aqw, align 8, !tbaa !10
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqr, i64 16
  store i16 14, ptr %i.aqx, align 8, !tbaa !19
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqr, i64 18
  store i16 5, ptr %i.aqy, align 2, !tbaa !19
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqr, i64 24
  store ptr %i.aox, ptr %i.aqz, align 8, !tbaa !10
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqr, i64 32
  store ptr %i.aqj, ptr %i.ara, align 8, !tbaa !10
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqr, i64 40
  store ptr %i.aqb, ptr %i.arb, align 8, !tbaa !10
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqr, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.arc, align 8, !tbaa !10
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqr, i64 56
  store ptr %i.aqn, ptr %i.ard, align 8, !tbaa !10
  %i.are = icmp ne i8 %i.aqf, 0
  %i.arf = icmp eq i8 %i.apz, 0
  %or.cond = select i1 %i.are, i1 true, i1 %i.arf
  br i1 %or.cond, label %bb.ye, label %lean_dec_ref.exit2209

lean_dec_ref.exit2209:                            ; preds = %lean_inc.exit2350
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqr) #5
  %i.arg = load i32, ptr %i.aqb, align 4, !tbaa !14 ; 3 uses
  %i.arh = icmp sgt i32 %i.arg, 1
  br i1 %i.arh, label %bb.aef, label %bb.aeg, !prof !15

bb.aef:                                           ; preds = %lean_dec_ref.exit2209
  %i.ari = add nsw i32 %i.arg, -1
  store i32 %i.ari, ptr %i.aqb, align 4, !tbaa !14
  br label %lean_dec_ref.exit2207

bb.aeg:                                           ; preds = %lean_dec_ref.exit2209
  %.not.i2206 = icmp eq i32 %i.arg, 0
  br i1 %.not.i2206, label %lean_dec_ref.exit2207, label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqb) #5
  br label %lean_dec_ref.exit2207

lean_dec_ref.exit2207:                            ; preds = %bb.aef, %bb.aeg, %bb.aeh
  %i.arj = load i32, ptr %i.apu, align 4, !tbaa !14 ; 3 uses
  %i.ark = icmp sgt i32 %i.arj, 1
  br i1 %i.ark, label %bb.aei, label %bb.aej, !prof !15

bb.aei:                                           ; preds = %lean_dec_ref.exit2207
  %i.arl = add nsw i32 %i.arj, -1
  store i32 %i.arl, ptr %i.apu, align 4, !tbaa !14
  br label %lean_dec_ref.exit2205

bb.aej:                                           ; preds = %lean_dec_ref.exit2207
  %.not.i2204 = icmp eq i32 %i.arj, 0
  br i1 %.not.i2204, label %lean_dec_ref.exit2205, label %bb.aek

bb.aek:                                           ; preds = %bb.aej
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.apu) #5
  br label %lean_dec_ref.exit2205

lean_dec_ref.exit2205:                            ; preds = %bb.aei, %bb.aej, %bb.aek
  br i1 %.not.i2351, label %bb.ael, label %lean_dec.exit2565

bb.ael:                                           ; preds = %lean_dec_ref.exit2205
  %i.arm = load i32, ptr %i.aox, align 8, !tbaa !14 ; 3 uses
  %i.arn = icmp sgt i32 %i.arm, 1
  br i1 %i.arn, label %bb.aem, label %bb.aen, !prof !15

bb.aem:                                           ; preds = %bb.ael
  %i.aro = add nsw i32 %i.arm, -1
  store i32 %i.aro, ptr %i.aox, align 8, !tbaa !14
  br label %lean_dec.exit2565

bb.aen:                                           ; preds = %bb.ael
  %.not.i.i2563 = icmp eq i32 %i.arm, 0
  br i1 %.not.i.i2563, label %lean_dec.exit2565, label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aox) #5
  br label %lean_dec.exit2565

lean_dec.exit2565:                                ; preds = %bb.aem, %bb.aen, %bb.aeo, %lean_dec_ref.exit2205
  %i.arp = load i32, ptr %.151758, align 4, !tbaa !14 ; 3 uses
  %i.arq = icmp sgt i32 %i.arp, 1
  br i1 %i.arq, label %bb.aep, label %bb.aeq, !prof !15

bb.aep:                                           ; preds = %lean_dec.exit2565
  %i.arr = add nsw i32 %i.arp, -1
  store i32 %i.arr, ptr %.151758, align 4, !tbaa !14
  br label %lean_dec_ref.exit2203

bb.aeq:                                           ; preds = %lean_dec.exit2565
  %.not.i2202 = icmp eq i32 %i.arp, 0
  br i1 %.not.i2202, label %lean_dec_ref.exit2203, label %bb.aer

bb.aer:                                           ; preds = %bb.aeq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.151758) #5
  br label %lean_dec_ref.exit2203

lean_dec_ref.exit2203:                            ; preds = %bb.aep, %bb.aeq, %bb.aer
  %i.ars = ptrtoint ptr %.151739 to i64
  %i.art = and i64 %i.ars, 1
  %.not.i2558 = icmp eq i64 %i.art, 0
  br i1 %.not.i2558, label %bb.aes, label %lean_dec_ref.exit2219

bb.aes:                                           ; preds = %lean_dec_ref.exit2203
  %i.aru = load i32, ptr %.151739, align 4, !tbaa !14 ; 3 uses
  %i.arv = icmp sgt i32 %i.aru, 1
  br i1 %i.arv, label %bb.aet, label %bb.aeu, !prof !15

bb.aet:                                           ; preds = %bb.aes
  %i.arw = add nsw i32 %i.aru, -1
  store i32 %i.arw, ptr %.151739, align 4, !tbaa !14
  br label %lean_dec_ref.exit2219

bb.aeu:                                           ; preds = %bb.aes
  %.not.i.i2559 = icmp eq i32 %i.aru, 0
  br i1 %.not.i.i2559, label %lean_dec_ref.exit2219, label %bb.aev

bb.aev:                                           ; preds = %bb.aeu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.151739) #5
  br label %lean_dec_ref.exit2219

bb.aew:                                           ; preds = %lean_obj_tag.exit3166
  br i1 %.not.i2351, label %bb.aex, label %lean_dec.exit2557

bb.aex:                                           ; preds = %bb.aew
  %i.arx = load i32, ptr %i.aox, align 8, !tbaa !14 ; 3 uses
  %i.ary = icmp sgt i32 %i.arx, 1
  br i1 %i.ary, label %bb.aey, label %bb.aez, !prof !15

bb.aey:                                           ; preds = %bb.aex
  %i.arz = add nsw i32 %i.arx, -1
  store i32 %i.arz, ptr %i.aox, align 8, !tbaa !14
  br label %lean_dec.exit2557

bb.aez:                                           ; preds = %bb.aex
  %.not.i.i2555 = icmp eq i32 %i.arx, 0
  br i1 %.not.i.i2555, label %lean_dec.exit2557, label %bb.afa

bb.afa:                                           ; preds = %bb.aez
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aox) #5
  br label %lean_dec.exit2557

lean_dec.exit2557:                                ; preds = %bb.aey, %bb.aez, %bb.afa, %bb.aew
  %i.asa = load i32, ptr %.151758, align 4, !tbaa !14 ; 3 uses
  %i.asb = icmp sgt i32 %i.asa, 1
  br i1 %i.asb, label %bb.afb, label %bb.afc, !prof !15

bb.afb:                                           ; preds = %lean_dec.exit2557
  %i.asc = add nsw i32 %i.asa, -1
  store i32 %i.asc, ptr %.151758, align 4, !tbaa !14
  br label %lean_dec_ref.exit2201

bb.afc:                                           ; preds = %lean_dec.exit2557
  %.not.i2200 = icmp eq i32 %i.asa, 0
  br i1 %.not.i2200, label %lean_dec_ref.exit2201, label %bb.afd

bb.afd:                                           ; preds = %bb.afc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.151758) #5
  br label %lean_dec_ref.exit2201

lean_dec_ref.exit2201:                            ; preds = %bb.afb, %bb.afc, %bb.afd
  %i.asd = ptrtoint ptr %.151739 to i64
  %i.ase = and i64 %i.asd, 1
  %.not.i2550 = icmp eq i64 %i.ase, 0
  br i1 %.not.i2550, label %bb.afe, label %lean_dec.exit2553

bb.afe:                                           ; preds = %lean_dec_ref.exit2201
  %i.asf = load i32, ptr %.151739, align 4, !tbaa !14 ; 3 uses
  %i.asg = icmp sgt i32 %i.asf, 1
  br i1 %i.asg, label %bb.aff, label %bb.afg, !prof !15

bb.aff:                                           ; preds = %bb.afe
  %i.ash = add nsw i32 %i.asf, -1
  store i32 %i.ash, ptr %.151739, align 4, !tbaa !14
  br label %lean_dec.exit2553

bb.afg:                                           ; preds = %bb.afe
  %.not.i.i2551 = icmp eq i32 %i.asf, 0
  br i1 %.not.i.i2551, label %lean_dec.exit2553, label %bb.afh

bb.afh:                                           ; preds = %bb.afg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.151739) #5
  br label %lean_dec.exit2553

lean_dec.exit2553:                                ; preds = %bb.aff, %bb.afg, %bb.afh, %lean_dec_ref.exit2201
  br i1 %i.aok, label %bb.afi, label %bb.afj

bb.afi:                                           ; preds = %lean_dec.exit2553
  %i.asi = getelementptr inbounds nuw i8, ptr %.01463, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.asi, align 8, !tbaa !10
  br label %lean_dec.exit2669

bb.afj:                                           ; preds = %lean_dec.exit2553
  %i.asj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ask, align 8, !tbaa !10
  br label %lean_dec.exit2669

bb.afk:                                           ; preds = %lean_dec.exit2569
  br i1 %.not.i2351, label %bb.afl, label %lean_dec.exit2549

bb.afl:                                           ; preds = %bb.afk
  %i.asl = load i32, ptr %i.aox, align 4, !tbaa !14 ; 3 uses
  %i.asm = icmp sgt i32 %i.asl, 1
  br i1 %i.asm, label %bb.afm, label %bb.afn, !prof !15

bb.afm:                                           ; preds = %bb.afl
  %i.asn = add nsw i32 %i.asl, -1
  store i32 %i.asn, ptr %i.aox, align 4, !tbaa !14
  br label %lean_dec.exit2549

bb.afn:                                           ; preds = %bb.afl
  %.not.i.i2547 = icmp eq i32 %i.asl, 0
  br i1 %.not.i.i2547, label %lean_dec.exit2549, label %bb.afo

bb.afo:                                           ; preds = %bb.afn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aox) #5
end_hunk_1
