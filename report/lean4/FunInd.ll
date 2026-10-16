Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/FunInd?download=true
inline.NumInlined: 24124
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumUnrolled: 55
begin_hunk_0_@l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12:bb.a
  br label %lean_dec.exit840

bb.pd:                                            ; preds = %bb.pb
  %.not.i.i838 = icmp eq i32 %i.xo, 0
  br i1 %.not.i.i838, label %lean_dec.exit840, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.wd) #9
  br label %lean_dec.exit840

lean_dec.exit840:                                 ; preds = %bb.pc, %bb.pd, %bb.pe
  br i1 %.not.i710, label %lean_dec.exit840.thread, label %lean_dec.exit836

lean_dec.exit840.thread:                          ; preds = %lean_nat_sub.exit657, %lean_dec.exit840
  %.1.i65612121216 = phi ptr [ %i.xn, %lean_dec.exit840 ], [ %i.xm, %lean_nat_sub.exit657 ] ; 3 uses
  %i.xr = load i32, ptr %i.wk, align 4, !tbaa !11 ; 3 uses
  %i.xs = icmp sgt i32 %i.xr, 1
  br i1 %i.xs, label %bb.pf, label %bb.pg, !prof !16

bb.pf:                                            ; preds = %lean_dec.exit840.thread
  %i.xt = add nsw i32 %i.xr, -1
  store i32 %i.xt, ptr %i.wk, align 4, !tbaa !11
  br label %lean_dec.exit836

bb.pg:                                            ; preds = %lean_dec.exit840.thread
  %.not.i.i834 = icmp eq i32 %i.xr, 0
  br i1 %.not.i.i834, label %lean_dec.exit836, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.wk) #9
  br label %lean_dec.exit836

lean_dec.exit836:                                 ; preds = %bb.oz, %bb.pa, %bb.pf, %bb.pg, %bb.ph, %lean_dec.exit840
  %.1.i65612121215 = phi ptr [ %i.xn, %lean_dec.exit840 ], [ %.1.i65612121216, %bb.pf ], [ %.1.i65612121216, %bb.ph ], [ %.1.i65612121216, %bb.pg ], [ inttoptr (i64 1 to ptr), %bb.oz ], [ %i.xl, %bb.pa ]
  br i1 %.not.i706, label %lean_nat_sub.exit, label %bb.pi, !prof !9

bb.pi:                                            ; preds = %lean_dec.exit836
  br i1 %.not.i708, label %lean_nat_sub.exit.thread1221, label %bb.pj, !prof !9

lean_nat_sub.exit.thread1221:                     ; preds = %bb.pi
  %i.xu = tail call ptr @lean_nat_big_sub(ptr noundef %i.wy, ptr noundef %i.wr) #9
  br label %bb.pl

bb.pj:                                            ; preds = %bb.pi
  %i.xv = lshr i64 %i.wz, 1                       ; 2 uses
  %i.xw = lshr i64 %i.ws, 1                       ; 2 uses
  %i.xx = icmp samesign ult i64 %i.xv, %i.xw
  br i1 %i.xx, label %lean_dec.exit828, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.xy = sub nuw nsw i64 %i.xv, %i.xw
  %i.xz = shl nuw i64 %i.xy, 1
  %i.ya = or disjoint i64 %i.xz, 1
  %i.yb = inttoptr i64 %i.ya to ptr
  br label %lean_dec.exit828

lean_nat_sub.exit:                                ; preds = %lean_dec.exit836
  %i.yc = tail call ptr @lean_nat_big_sub(ptr noundef %i.wy, ptr noundef %i.wr) #9 ; 2 uses
  br i1 %.not.i708, label %bb.pl, label %lean_dec.exit832.thread

bb.pl:                                            ; preds = %lean_nat_sub.exit.thread1221, %lean_nat_sub.exit
  %i.yd = phi ptr [ %i.xu, %lean_nat_sub.exit.thread1221 ], [ %i.yc, %lean_nat_sub.exit ] ; 2 uses
  %i.ye = load i32, ptr %i.wr, align 4, !tbaa !11 ; 3 uses
  %i.yf = icmp sgt i32 %i.ye, 1
  br i1 %i.yf, label %bb.pm, label %bb.pn, !prof !16

bb.pm:                                            ; preds = %bb.pl
  %i.yg = add nsw i32 %i.ye, -1
  store i32 %i.yg, ptr %i.wr, align 4, !tbaa !11
  br label %lean_dec.exit832

bb.pn:                                            ; preds = %bb.pl
  %.not.i.i830 = icmp eq i32 %i.ye, 0
  br i1 %.not.i.i830, label %lean_dec.exit832, label %bb.po

bb.po:                                            ; preds = %bb.pn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.wr) #9
  br label %lean_dec.exit832

lean_dec.exit832:                                 ; preds = %bb.pm, %bb.pn, %bb.po
  br i1 %.not.i706, label %lean_dec.exit832.thread, label %lean_dec.exit828

lean_dec.exit832.thread:                          ; preds = %lean_nat_sub.exit, %lean_dec.exit832
  %.1.i12201224 = phi ptr [ %i.yd, %lean_dec.exit832 ], [ %i.yc, %lean_nat_sub.exit ] ; 3 uses
  %i.yh = load i32, ptr %i.wy, align 4, !tbaa !11 ; 3 uses
  %i.yi = icmp sgt i32 %i.yh, 1
  br i1 %i.yi, label %bb.pp, label %bb.pq, !prof !16

bb.pp:                                            ; preds = %lean_dec.exit832.thread
  %i.yj = add nsw i32 %i.yh, -1
  store i32 %i.yj, ptr %i.wy, align 4, !tbaa !11
  br label %lean_dec.exit828

bb.pq:                                            ; preds = %lean_dec.exit832.thread
  %.not.i.i826 = icmp eq i32 %i.yh, 0
  br i1 %.not.i.i826, label %lean_dec.exit828, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.wy) #9
  br label %lean_dec.exit828

lean_dec.exit828:                                 ; preds = %bb.pj, %bb.pk, %bb.pp, %bb.pq, %bb.pr, %lean_dec.exit832
  %.1.i12201223 = phi ptr [ %i.yd, %lean_dec.exit832 ], [ %.1.i12201224, %bb.pp ], [ %.1.i12201224, %bb.pr ], [ %.1.i12201224, %bb.pq ], [ inttoptr (i64 1 to ptr), %bb.pj ], [ %i.yb, %bb.pk ]
  %i.yk = load atomic i32, ptr @l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__1_once seq_cst, align 4, !tbaa !20
  %i.yl = icmp eq i32 %i.yk, 1
  br i1 %i.yl, label %bb.ps, label %bb.pt, !prof !16

bb.ps:                                            ; preds = %lean_dec.exit828
  %i.ym = load ptr, ptr @l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__1, align 8, !tbaa !15
  br label %lean_obj_once.exit1179

bb.pt:                                            ; preds = %lean_dec.exit828
  %i.yn = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__1, ptr noundef nonnull @l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__1_once, ptr noundef nonnull @_init_l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__1) #9
  br label %lean_obj_once.exit1179

lean_obj_once.exit1179:                           ; preds = %bb.ps, %bb.pt
  %.0.i1178 = phi ptr [ %i.ym, %bb.ps ], [ %i.yn, %bb.pt ]
  %i.yo = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 6, i32 noundef 0) ; 7 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  store ptr %.1.i65612121215, ptr %i.yp, align 8, !tbaa !15
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  store ptr %.1.i12201223, ptr %i.yq, align 8, !tbaa !15
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  store ptr %i.vl, ptr %i.yr, align 8, !tbaa !15
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yo, i64 32
  store ptr %l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__2_value., ptr %i.ys, align 8, !tbaa !15
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 40
  store ptr %i.up, ptr %i.yt, align 8, !tbaa !15
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yo, i64 48
  store ptr %.0.i1178, ptr %i.yu, align 8, !tbaa !15
  %i.yv = tail call ptr @lean_array_mk(ptr noundef %i.ad) #9
  %i.yw = tail call ptr @l_Subarray_copy___redArg(ptr noundef nonnull %i.tu) #9
  %i.yx = tail call ptr @l_Subarray_copy___redArg(ptr noundef nonnull %i.ud) #9
  %i.yy = tail call ptr @l_Subarray_copy___redArg(ptr noundef %i.abn) #9
  %i.yz = tail call ptr @l_Subarray_copy___redArg(ptr noundef %i.aby) #9
  %i.za = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 9 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  store ptr %i.yo, ptr %i.zb, align 8, !tbaa !15
  %i.zc = getelementptr inbounds nuw i8, ptr %i.za, i64 16
  store ptr %i.w, ptr %i.zc, align 8, !tbaa !15
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 24
  store ptr %i.yv, ptr %i.zd, align 8, !tbaa !15
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 32
  store ptr %i.yw, ptr %i.ze, align 8, !tbaa !15
  %i.zf = getelementptr inbounds nuw i8, ptr %i.za, i64 40
  store ptr %i.tw, ptr %i.zf, align 8, !tbaa !15
  %i.zg = getelementptr inbounds nuw i8, ptr %i.za, i64 48
  store ptr %i.yx, ptr %i.zg, align 8, !tbaa !15
  %i.zh = getelementptr inbounds nuw i8, ptr %i.za, i64 56
  store ptr %i.yy, ptr %i.zh, align 8, !tbaa !15
  %i.zi = getelementptr inbounds nuw i8, ptr %i.za, i64 64
  store ptr %i.yz, ptr %i.zi, align 8, !tbaa !15
  br i1 %i.mw, label %bb.pu, label %bb.pv

bb.pu:                                            ; preds = %lean_obj_once.exit1179
  %i.zj = getelementptr inbounds nuw i8, ptr %.0613, i64 4 ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4
  %i.zl = and i32 %i.zk, 16777215
  %i.zm = or disjoint i32 %i.zl, 16777216
  store i32 %i.zm, ptr %i.zj, align 4
  br label %bb.pw

bb.pv:                                            ; preds = %lean_obj_once.exit1179
  %i.zn = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %bb.pu
  %.sink1463 = phi ptr [ %i.zn, %bb.pv ], [ %.0613, %bb.pu ] ; 3 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.sink1463, i64 8
  store ptr %i.za, ptr %i.zo, align 8, !tbaa !15
  br i1 %i.vo, label %bb.px, label %bb.py

bb.px:                                            ; preds = %bb.pw
  %i.zp = getelementptr inbounds nuw i8, ptr %.0600, i64 8
  store ptr %.sink1463, ptr %i.zp, align 8, !tbaa !15
  br label %bb.pz

bb.py:                                            ; preds = %bb.pw
  %i.zq = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  store ptr %.sink1463, ptr %i.zr, align 8, !tbaa !15
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  store ptr %i.vn, ptr %i.zs, align 8, !tbaa !15
  br label %bb.pz

bb.pz:                                            ; preds = %bb.py, %bb.px
  %.0597 = phi ptr [ %.0600, %bb.px ], [ %i.zq, %bb.py ] ; 2 uses
  br i1 %i.vb, label %lean_dec_ref.exit694.thread.sink.split, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.zt = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec_ref.exit694.thread.sink.split

bb.qb:                                            ; preds = %lean_obj_tag.exit1191
  %i.zu = ptrtoint ptr %l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__2_value. to i64
  %i.zv = and i64 %i.zu, 1
  %.not.i821 = icmp eq i64 %i.zv, 0
  br i1 %.not.i821, label %bb.qc, label %lean_dec.exit824

bb.qc:                                            ; preds = %bb.qb
  %i.zw = load i32, ptr %l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__2_value., align 4, !tbaa !11 ; 3 uses
  %i.zx = icmp sgt i32 %i.zw, 1
  br i1 %i.zx, label %bb.qd, label %bb.qe, !prof !16

bb.qd:                                            ; preds = %bb.qc
  %i.zy = add nsw i32 %i.zw, -1
  store i32 %i.zy, ptr %l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__2_value., align 4, !tbaa !11
  br label %lean_dec.exit824

bb.qe:                                            ; preds = %bb.qc
  %.not.i.i822 = icmp eq i32 %i.zw, 0
  br i1 %.not.i.i822, label %lean_dec.exit824, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__2_value.) #9
  br label %lean_dec.exit824

lean_dec.exit824:                                 ; preds = %bb.qd, %bb.qe, %bb.qf, %bb.qb
  %i.zz = load i32, ptr %i.aby, align 4, !tbaa !11 ; 3 uses
  %i.aaa = icmp sgt i32 %i.zz, 1
  br i1 %i.aaa, label %bb.qg, label %bb.qh, !prof !16

bb.qg:                                            ; preds = %lean_dec.exit824
  %i.aab = add nsw i32 %i.zz, -1
  store i32 %i.aab, ptr %i.aby, align 4, !tbaa !11
  br label %lean_dec_ref.exit684

bb.qh:                                            ; preds = %lean_dec.exit824
  %.not.i683 = icmp eq i32 %i.zz, 0
  br i1 %.not.i683, label %lean_dec_ref.exit684, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aby) #9
  br label %lean_dec_ref.exit684

lean_dec_ref.exit684:                             ; preds = %bb.qg, %bb.qh, %bb.qi
  %i.aac = load i32, ptr %i.abn, align 4, !tbaa !11 ; 3 uses
  %i.aad = icmp sgt i32 %i.aac, 1
  br i1 %i.aad, label %bb.qj, label %bb.qk, !prof !16

bb.qj:                                            ; preds = %lean_dec_ref.exit684
  %i.aae = add nsw i32 %i.aac, -1
  store i32 %i.aae, ptr %i.abn, align 4, !tbaa !11
  br label %lean_dec_ref.exit682

bb.qk:                                            ; preds = %lean_dec_ref.exit684
  %.not.i681 = icmp eq i32 %i.aac, 0
  br i1 %.not.i681, label %lean_dec_ref.exit682, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.abn) #9
  br label %lean_dec_ref.exit682

lean_dec_ref.exit682:                             ; preds = %bb.qj, %bb.qk, %bb.ql
  %i.aaf = load i32, ptr %i.up, align 4, !tbaa !11 ; 3 uses
  %i.aag = icmp sgt i32 %i.aaf, 1
  br i1 %i.aag, label %bb.qm, label %bb.qn, !prof !16

bb.qm:                                            ; preds = %lean_dec_ref.exit682
  %i.aah = add nsw i32 %i.aaf, -1
  store i32 %i.aah, ptr %i.up, align 4, !tbaa !11
  br label %lean_dec_ref.exit680

bb.qn:                                            ; preds = %lean_dec_ref.exit682
  %.not.i679 = icmp eq i32 %i.aaf, 0
  br i1 %.not.i679, label %lean_dec_ref.exit680, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.up) #9
  br label %lean_dec_ref.exit680

lean_dec_ref.exit680:                             ; preds = %bb.qm, %bb.qn, %bb.qo
  %i.aai = load i32, ptr %i.ud, align 4, !tbaa !11 ; 3 uses
  %i.aaj = icmp sgt i32 %i.aai, 1
  br i1 %i.aaj, label %bb.qp, label %bb.qq, !prof !16

bb.qp:                                            ; preds = %lean_dec_ref.exit680
  %i.aak = add nsw i32 %i.aai, -1
  store i32 %i.aak, ptr %i.ud, align 4, !tbaa !11
  br label %lean_dec_ref.exit678

bb.qq:                                            ; preds = %lean_dec_ref.exit680
  %.not.i677 = icmp eq i32 %i.aai, 0
  br i1 %.not.i677, label %lean_dec_ref.exit678, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ud) #9
  br label %lean_dec_ref.exit678

lean_dec_ref.exit678:                             ; preds = %bb.qp, %bb.qq, %bb.qr
  %i.aal = ptrtoint ptr %i.tw to i64
  %i.aam = and i64 %i.aal, 1
  %.not.i817 = icmp eq i64 %i.aam, 0
  br i1 %.not.i817, label %bb.qs, label %lean_dec.exit820

bb.qs:                                            ; preds = %lean_dec_ref.exit678
  %i.aan = load i32, ptr %i.tw, align 4, !tbaa !11 ; 3 uses
  %i.aao = icmp sgt i32 %i.aan, 1
  br i1 %i.aao, label %bb.qt, label %bb.qu, !prof !16

bb.qt:                                            ; preds = %bb.qs
  %i.aap = add nsw i32 %i.aan, -1
  store i32 %i.aap, ptr %i.tw, align 4, !tbaa !11
  br label %lean_dec.exit820

bb.qu:                                            ; preds = %bb.qs
  %.not.i.i818 = icmp eq i32 %i.aan, 0
  br i1 %.not.i.i818, label %lean_dec.exit820, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.tw) #9
  br label %lean_dec.exit820

lean_dec.exit820:                                 ; preds = %bb.qt, %bb.qu, %bb.qv, %lean_dec_ref.exit678
  %i.aaq = load i32, ptr %i.tu, align 4, !tbaa !11 ; 3 uses
  %i.aar = icmp sgt i32 %i.aaq, 1
  br i1 %i.aar, label %bb.qw, label %bb.qx, !prof !16

bb.qw:                                            ; preds = %lean_dec.exit820
  %i.aas = add nsw i32 %i.aaq, -1
  store i32 %i.aas, ptr %i.tu, align 4, !tbaa !11
  br label %lean_dec_ref.exit676

bb.qx:                                            ; preds = %lean_dec.exit820
  %.not.i675 = icmp eq i32 %i.aaq, 0
  br i1 %.not.i675, label %lean_dec_ref.exit676, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.tu) #9
  br label %lean_dec_ref.exit676

lean_dec_ref.exit676:                             ; preds = %bb.qw, %bb.qx, %bb.qy
  %i.aat = ptrtoint ptr %.0613 to i64
  %i.aau = and i64 %i.aat, 1
  %.not.i1180 = icmp eq i64 %i.aau, 0
  br i1 %.not.i1180, label %bb.qz, label %lean_del_object.exit1181

bb.qz:                                            ; preds = %lean_dec_ref.exit676
  tail call void @lean_free_object(ptr noundef nonnull %.0613) #9
  br label %lean_del_object.exit1181

lean_del_object.exit1181:                         ; preds = %lean_dec_ref.exit676, %bb.qz
  br i1 %.not.i762, label %bb.ra, label %lean_dec.exit816

bb.ra:                                            ; preds = %lean_del_object.exit1181
  %i.aav = load i32, ptr %i.ad, align 4, !tbaa !11 ; 3 uses
  %i.aaw = icmp sgt i32 %i.aav, 1
  br i1 %i.aaw, label %bb.rb, label %bb.rc, !prof !16

bb.rb:                                            ; preds = %bb.ra
  %i.aax = add nsw i32 %i.aav, -1
  store i32 %i.aax, ptr %i.ad, align 4, !tbaa !11
  br label %lean_dec.exit816

bb.rc:                                            ; preds = %bb.ra
  %.not.i.i814 = icmp eq i32 %i.aav, 0
  br i1 %.not.i.i814, label %lean_dec.exit816, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ad) #9
  br label %lean_dec.exit816

lean_dec.exit816:                                 ; preds = %bb.rb, %bb.rc, %bb.rd, %lean_del_object.exit1181
  br i1 %.not.i1026, label %bb.re, label %lean_dec.exit812

bb.re:                                            ; preds = %lean_dec.exit816
  %i.aay = load i32, ptr %i.w, align 4, !tbaa !11 ; 3 uses
  %i.aaz = icmp sgt i32 %i.aay, 1
  br i1 %i.aaz, label %bb.rf, label %bb.rg, !prof !16

bb.rf:                                            ; preds = %bb.re
  %i.aba = add nsw i32 %i.aay, -1
  store i32 %i.aba, ptr %i.w, align 4, !tbaa !11
  br label %lean_dec.exit812

bb.rg:                                            ; preds = %bb.re
  %.not.i.i810 = icmp eq i32 %i.aay, 0
  br i1 %.not.i.i810, label %lean_dec.exit812, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #9
  br label %lean_dec.exit812

lean_dec.exit812:                                 ; preds = %bb.rf, %bb.rg, %bb.rh, %lean_dec.exit816
  %i.abb = getelementptr inbounds nuw i8, ptr %i.acs, i64 8
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !15 ; 5 uses
  %.val1014 = load i32, ptr %i.acs, align 8, !tbaa !11
  %i.abd = icmp eq i32 %.val1014, 1
  br i1 %i.abd, label %lean_dec_ref.exit694.thread, label %bb.ri

bb.ri:                                            ; preds = %lean_dec.exit812
  %i.abe = ptrtoint ptr %i.abc to i64
  %i.abf = and i64 %i.abe, 1
  %.not.i704 = icmp eq i64 %i.abf, 0
  br i1 %.not.i704, label %bb.rj, label %lean_inc.exit705

bb.rj:                                            ; preds = %bb.ri
  %.val.i.i1182 = load i32, ptr %i.abc, align 4, !tbaa !11 ; 3 uses
  %i.abg = icmp sgt i32 %.val.i.i1182, 0
  br i1 %i.abg, label %bb.rk, label %bb.rl, !prof !16

bb.rk:                                            ; preds = %bb.rj
  %i.abh = add nuw i32 %.val.i.i1182, 1
  store i32 %i.abh, ptr %i.abc, align 4, !tbaa !11
  br label %lean_inc.exit705

bb.rl:                                            ; preds = %bb.rj
end_hunk_0
begin_hunk_1_@l_Lean_addTrace___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_rwLetWith_spec__0___boxed:bb.a
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %5, align 4, !tbaa !11
  br label %lean_dec.exit17

bb.d:                                             ; preds = %bb.b
  %.not.i.i15 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i15, label %lean_dec.exit17, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #9
  br label %lean_dec.exit17

lean_dec.exit17:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %i.g = load i32, ptr %4, align 4, !tbaa !11     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %lean_dec.exit17
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %4, align 4, !tbaa !11
  br label %lean_dec_ref.exit12

bb.g:                                             ; preds = %lean_dec.exit17
  %.not.i11 = icmp eq i32 %i.g, 0
  br i1 %.not.i11, label %lean_dec_ref.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #9
  br label %lean_dec_ref.exit12

lean_dec_ref.exit12:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = and i64 %i.j, 1
  %.not.i13 = icmp eq i64 %i.k, 0
  br i1 %.not.i13, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit12
  %i.l = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %3, align 4, !tbaa !11
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.j, %bb.k, %bb.l, %lean_dec_ref.exit12
  %i.o = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #9
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_rwLetWith(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i8 @l_Lean_Expr_isLet(ptr noundef %1) #9
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %lean_dec.exit210.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @l_Lean_Expr_letValue_x21(ptr noundef %1) #9
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i, 1
  store i32 %i.e, ptr %0, align 4, !tbaa !11
  br label %lean_inc_ref.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i217 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i217, label %lean_inc_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %i.g = tail call ptr @l_Lean_Meta_isExprDefEq(ptr noundef %i.c, ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #9 ; 14 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 1
  %.not.i218 = icmp eq i64 %i.i, 0                ; 3 uses
  br i1 %.not.i218, label %bb.g, label %bb.f

bb.f:                                             ; preds = %lean_inc_ref.exit
  %i.j = lshr i64 %i.h, 1
  %i.k = trunc i64 %i.j to i32
  br label %lean_obj_tag.exit

bb.g:                                             ; preds = %lean_inc_ref.exit
  %i.l = getelementptr i8, ptr %i.g, i64 4
  %.val.i = load i32, ptr %i.l, align 4
  %i.m = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.k, %bb.f ], [ %i.m, %bb.g ]
  %i.n = icmp eq i32 %.0.i, 0
  br i1 %i.n, label %bb.h, label %bb.ao

bb.h:                                             ; preds = %lean_obj_tag.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 10 uses
  %.val216 = load i32, ptr %i.g, align 8, !tbaa !11
  %i.q = icmp eq i32 %.val216, 1                  ; 2 uses
  %.pre = ptrtoint ptr %i.p to i64                ; 5 uses
  br i1 %i.q, label %lean_dec.exit214, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = and i64 %.pre, 1
  %.not.i196 = icmp eq i64 %i.r, 0
  br i1 %.not.i196, label %bb.j, label %lean_inc.exit197

bb.j:                                             ; preds = %bb.i
  %.val.i.i219 = load i32, ptr %i.p, align 4, !tbaa !11 ; 3 uses
  %i.s = icmp sgt i32 %.val.i.i219, 0
  br i1 %i.s, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.t = add nuw i32 %.val.i.i219, 1
  store i32 %i.t, ptr %i.p, align 4, !tbaa !11
  br label %lean_inc.exit197

bb.l:                                             ; preds = %bb.j
  %.not.i.i220 = icmp eq i32 %.val.i.i219, 0
  br i1 %.not.i.i220, label %lean_inc.exit197, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = atomicrmw sub ptr %i.p, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit197

lean_inc.exit197:                                 ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  br i1 %.not.i218, label %bb.n, label %lean_dec.exit214

bb.n:                                             ; preds = %lean_inc.exit197
  %i.v = load i32, ptr %i.g, align 8, !tbaa !11   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %bb.n
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.g, align 8, !tbaa !11
  br label %lean_dec.exit214

bb.p:                                             ; preds = %bb.n
  %.not.i.i212 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i212, label %lean_dec.exit214, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.g) #9
  br label %lean_dec.exit214

lean_dec.exit214:                                 ; preds = %bb.h, %lean_inc.exit197, %bb.q, %bb.p, %bb.o
  %.0178 = phi ptr [ inttoptr (i64 1 to ptr), %bb.o ], [ inttoptr (i64 1 to ptr), %lean_inc.exit197 ], [ inttoptr (i64 1 to ptr), %bb.q ], [ inttoptr (i64 1 to ptr), %bb.p ], [ %i.g, %bb.h ] ; 3 uses
  %i.y = lshr i64 %.pre, 1
  %i.z = and i64 %.pre, 510
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.r, label %bb.x

bb.r:                                             ; preds = %lean_dec.exit214
  %i.ab = ptrtoint ptr %.0178 to i64
  %i.ac = and i64 %i.ab, 1
  %.not.i222 = icmp eq i64 %i.ac, 0
  br i1 %.not.i222, label %bb.s, label %lean_del_object.exit

bb.s:                                             ; preds = %bb.r
  tail call void @lean_free_object(ptr noundef nonnull %.0178) #9
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.r, %bb.s
  %i.ad = and i64 %.pre, 1
  %.not.i207 = icmp eq i64 %i.ad, 0
  br i1 %.not.i207, label %bb.t, label %lean_dec.exit210.thread

bb.t:                                             ; preds = %lean_del_object.exit
  %i.ae = load i32, ptr %i.p, align 4, !tbaa !11  ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.u, label %bb.v, !prof !16

bb.u:                                             ; preds = %bb.t
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %i.p, align 4, !tbaa !11
  br label %lean_dec.exit210.thread

bb.v:                                             ; preds = %bb.t
  %.not.i.i208 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i208, label %lean_dec.exit210.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #9
  br label %lean_dec.exit210.thread

bb.x:                                             ; preds = %lean_dec.exit214
  %i.ah = tail call ptr @l_Lean_Expr_letBody_x21(ptr noundef %1) #9 ; 4 uses
  %i.ai = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.y, label %bb.z, !prof !16

bb.y:                                             ; preds = %bb.x
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit192

bb.z:                                             ; preds = %bb.x
  %.not.i191 = icmp eq i32 %i.ai, 0
  br i1 %.not.i191, label %lean_dec_ref.exit192, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec_ref.exit192

lean_dec_ref.exit192:                             ; preds = %bb.y, %bb.z, %bb.aa
  %i.al = tail call ptr @lean_expr_instantiate1(ptr noundef %i.ah, ptr noundef nonnull %0) #9
  %i.am = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %bb.ab, label %bb.ac, !prof !16

bb.ab:                                            ; preds = %lean_dec_ref.exit192
  %i.ao = add nsw i32 %i.am, -1
  store i32 %i.ao, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit190

bb.ac:                                            ; preds = %lean_dec_ref.exit192
  %.not.i189 = icmp eq i32 %i.am, 0
  br i1 %.not.i189, label %lean_dec_ref.exit190, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref.exit190

lean_dec_ref.exit190:                             ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.ap = load i32, ptr %i.ah, align 4, !tbaa !11 ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.ae, label %bb.af, !prof !16

bb.ae:                                            ; preds = %lean_dec_ref.exit190
  %i.ar = add nsw i32 %i.ap, -1
  store i32 %i.ar, ptr %i.ah, align 4, !tbaa !11
  br label %lean_dec_ref.exit188

bb.af:                                            ; preds = %lean_dec_ref.exit190
  %.not.i187 = icmp eq i32 %i.ap, 0
  br i1 %.not.i187, label %lean_dec_ref.exit188, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ah) #9
  br label %lean_dec_ref.exit188

lean_dec_ref.exit188:                             ; preds = %bb.ae, %bb.af, %bb.ag
  tail call void @lean_inc_heartbeat() #9
  %i.as = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #9 ; 8 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.ah, label %lean_alloc_ctor.exit

bb.ah:                                            ; preds = %lean_dec_ref.exit188
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec_ref.exit188
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store i64 0, ptr %i.av, align 8, !tbaa !13
  store i32 1, ptr %i.as, align 8, !tbaa !11
  store i32 131104, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.al, ptr %i.aw, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.ax, align 8, !tbaa !15
  %i.ay = trunc i64 %i.y to i8
  %i.az = and i64 %.pre, 1
  %.not.i203 = icmp eq i64 %i.az, 0
  br i1 %.not.i203, label %bb.ai, label %lean_dec.exit206

bb.ai:                                            ; preds = %lean_alloc_ctor.exit
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !11  ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.aj, label %bb.ak, !prof !16

bb.aj:                                            ; preds = %bb.ai
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %i.p, align 4, !tbaa !11
  br label %lean_dec.exit206

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i204 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i204, label %lean_dec.exit206, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #9
  br label %lean_dec.exit206

lean_dec.exit206:                                 ; preds = %bb.aj, %bb.ak, %bb.al, %lean_alloc_ctor.exit
  store i8 %i.ay, ptr %i.av, align 8, !tbaa !21
  br i1 %i.q, label %lean_dec.exit210.sink.split, label %bb.am

bb.am:                                            ; preds = %lean_dec.exit206
  tail call void @lean_inc_heartbeat() #9
  %i.bd = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.an, label %lean_dec.exit210.sink.split.sink.split

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.ao:                                            ; preds = %lean_obj_tag.exit
  %i.bf = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.ap, label %bb.aq, !prof !16

bb.ap:                                            ; preds = %bb.ao
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit186

bb.aq:                                            ; preds = %bb.ao
  %.not.i185 = icmp eq i32 %i.bf, 0
  br i1 %.not.i185, label %lean_dec_ref.exit186, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec_ref.exit186

lean_dec_ref.exit186:                             ; preds = %bb.ap, %bb.aq, %bb.ar
  %i.bi = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %bb.as, label %bb.at, !prof !16

bb.as:                                            ; preds = %lean_dec_ref.exit186
  %i.bk = add nsw i32 %i.bi, -1
  store i32 %i.bk, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit184

bb.at:                                            ; preds = %lean_dec_ref.exit186
  %.not.i183 = icmp eq i32 %i.bi, 0
  br i1 %.not.i183, label %lean_dec_ref.exit184, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref.exit184

lean_dec_ref.exit184:                             ; preds = %bb.as, %bb.at, %bb.au
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !15 ; 5 uses
  %.val215 = load i32, ptr %i.g, align 8, !tbaa !11
  %i.bn = icmp eq i32 %.val215, 1
  br i1 %i.bn, label %lean_dec.exit210, label %bb.av

bb.av:                                            ; preds = %lean_dec_ref.exit184
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = and i64 %i.bo, 1
  %.not.i194 = icmp eq i64 %i.bp, 0
  br i1 %.not.i194, label %bb.aw, label %lean_inc.exit195

bb.aw:                                            ; preds = %bb.av
  %.val.i.i224 = load i32, ptr %i.bm, align 4, !tbaa !11 ; 3 uses
  %i.bq = icmp sgt i32 %.val.i.i224, 0
  br i1 %i.bq, label %bb.ax, label %bb.ay, !prof !16

bb.ax:                                            ; preds = %bb.aw
  %i.br = add nuw i32 %.val.i.i224, 1
  store i32 %i.br, ptr %i.bm, align 4, !tbaa !11
  br label %lean_inc.exit195

bb.ay:                                            ; preds = %bb.aw
  %.not.i.i225 = icmp eq i32 %.val.i.i224, 0
  br i1 %.not.i.i225, label %lean_inc.exit195, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bs = atomicrmw sub ptr %i.bm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit195

lean_inc.exit195:                                 ; preds = %bb.az, %bb.ay, %bb.ax, %bb.av
  br i1 %.not.i218, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %lean_inc.exit195
  %i.bt = load i32, ptr %i.g, align 8, !tbaa !11  ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.bb, label %bb.bc, !prof !16

bb.bb:                                            ; preds = %bb.ba
  %i.bv = add nsw i32 %i.bt, -1
end_hunk_1
begin_hunk_2_@l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_buildInductionBody_spec__4:bb.a
  br i1 %i.abn, label %bb.rw, label %bb.rx, !prof !16

bb.rw:                                            ; preds = %lean_dec.exit1012.thread
  %i.abo = add nsw i32 %i.abm, -1
  store i32 %i.abo, ptr %i.aaf, align 4, !tbaa !11
  br label %lean_dec.exit1008

bb.rx:                                            ; preds = %lean_dec.exit1012.thread
  %.not.i.i1006 = icmp eq i32 %i.abm, 0
  br i1 %.not.i.i1006, label %lean_dec.exit1008, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aaf) #9
  br label %lean_dec.exit1008

lean_dec.exit1008:                                ; preds = %bb.rq, %bb.rr, %bb.rw, %bb.rx, %bb.ry, %lean_dec.exit1012
  %.1.i80414421445 = phi ptr [ %i.abi, %lean_dec.exit1012 ], [ %.1.i80414421446, %bb.rw ], [ %.1.i80414421446, %bb.ry ], [ %.1.i80414421446, %bb.rx ], [ inttoptr (i64 1 to ptr), %bb.rq ], [ %i.abg, %bb.rr ]
  br i1 %.not.i856, label %lean_nat_sub.exit, label %bb.rz, !prof !9

bb.rz:                                            ; preds = %lean_dec.exit1008
  br i1 %.not.i858, label %lean_nat_sub.exit.thread1451, label %bb.sa, !prof !9

lean_nat_sub.exit.thread1451:                     ; preds = %bb.rz
  %i.abp = tail call ptr @lean_nat_big_sub(ptr noundef %i.aat, ptr noundef %i.aam) #9
  br label %bb.sc

bb.sa:                                            ; preds = %bb.rz
  %i.abq = lshr i64 %i.aau, 1                     ; 2 uses
  %i.abr = lshr i64 %i.aan, 1                     ; 2 uses
  %i.abs = icmp samesign ult i64 %i.abq, %i.abr
  br i1 %i.abs, label %lean_dec.exit1000, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.abt = sub nuw nsw i64 %i.abq, %i.abr
  %i.abu = shl nuw i64 %i.abt, 1
  %i.abv = or disjoint i64 %i.abu, 1
  %i.abw = inttoptr i64 %i.abv to ptr
  br label %lean_dec.exit1000

lean_nat_sub.exit:                                ; preds = %lean_dec.exit1008
  %i.abx = tail call ptr @lean_nat_big_sub(ptr noundef %i.aat, ptr noundef %i.aam) #9 ; 2 uses
  br i1 %.not.i858, label %bb.sc, label %lean_dec.exit1004.thread

bb.sc:                                            ; preds = %lean_nat_sub.exit.thread1451, %lean_nat_sub.exit
  %i.aby = phi ptr [ %i.abp, %lean_nat_sub.exit.thread1451 ], [ %i.abx, %lean_nat_sub.exit ] ; 2 uses
  %i.abz = load i32, ptr %i.aam, align 4, !tbaa !11 ; 3 uses
  %i.aca = icmp sgt i32 %i.abz, 1
  br i1 %i.aca, label %bb.sd, label %bb.se, !prof !16

bb.sd:                                            ; preds = %bb.sc
  %i.acb = add nsw i32 %i.abz, -1
  store i32 %i.acb, ptr %i.aam, align 4, !tbaa !11
  br label %lean_dec.exit1004

bb.se:                                            ; preds = %bb.sc
  %.not.i.i1002 = icmp eq i32 %i.abz, 0
  br i1 %.not.i.i1002, label %lean_dec.exit1004, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aam) #9
  br label %lean_dec.exit1004

lean_dec.exit1004:                                ; preds = %bb.sd, %bb.se, %bb.sf
  br i1 %.not.i856, label %lean_dec.exit1004.thread, label %lean_dec.exit1000

lean_dec.exit1004.thread:                         ; preds = %lean_nat_sub.exit, %lean_dec.exit1004
  %.1.i14501454 = phi ptr [ %i.aby, %lean_dec.exit1004 ], [ %i.abx, %lean_nat_sub.exit ] ; 3 uses
  %i.acc = load i32, ptr %i.aat, align 4, !tbaa !11 ; 3 uses
  %i.acd = icmp sgt i32 %i.acc, 1
  br i1 %i.acd, label %bb.sg, label %bb.sh, !prof !16

bb.sg:                                            ; preds = %lean_dec.exit1004.thread
  %i.ace = add nsw i32 %i.acc, -1
  store i32 %i.ace, ptr %i.aat, align 4, !tbaa !11
  br label %lean_dec.exit1000

bb.sh:                                            ; preds = %lean_dec.exit1004.thread
  %.not.i.i998 = icmp eq i32 %i.acc, 0
  br i1 %.not.i.i998, label %lean_dec.exit1000, label %bb.si

bb.si:                                            ; preds = %bb.sh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aat) #9
  br label %lean_dec.exit1000

lean_dec.exit1000:                                ; preds = %bb.sa, %bb.sb, %bb.sg, %bb.sh, %bb.si, %lean_dec.exit1004
  %.1.i14501453 = phi ptr [ %i.aby, %lean_dec.exit1004 ], [ %.1.i14501454, %bb.sg ], [ %.1.i14501454, %bb.si ], [ %.1.i14501454, %bb.sh ], [ inttoptr (i64 1 to ptr), %bb.sa ], [ %i.abw, %bb.sb ]
  %i.acf = load atomic i32, ptr @l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__1_once seq_cst, align 4, !tbaa !20
  %i.acg = icmp eq i32 %i.acf, 1
  br i1 %i.acg, label %bb.sj, label %bb.sk, !prof !16

bb.sj:                                            ; preds = %lean_dec.exit1000
  %i.ach = load ptr, ptr @l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__1, align 8, !tbaa !15
  br label %lean_obj_once.exit1405

bb.sk:                                            ; preds = %lean_dec.exit1000
  %i.aci = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__1, ptr noundef nonnull @l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__1_once, ptr noundef nonnull @_init_l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__1) #9
  br label %lean_obj_once.exit1405

lean_obj_once.exit1405:                           ; preds = %bb.sj, %bb.sk
  %.0.i1404 = phi ptr [ %i.ach, %bb.sj ], [ %i.aci, %bb.sk ]
  %i.acj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 6, i32 noundef 0) ; 7 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  store ptr %.1.i80414421445, ptr %i.ack, align 8, !tbaa !15
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acj, i64 16
  store ptr %.1.i14501453, ptr %i.acl, align 8, !tbaa !15
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acj, i64 24
  store ptr %i.zg, ptr %i.acm, align 8, !tbaa !15
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acj, i64 32
  store ptr %l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__2_value., ptr %i.acn, align 8, !tbaa !15
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acj, i64 40
  store ptr %i.xs, ptr %i.aco, align 8, !tbaa !15
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acj, i64 48
  store ptr %.0.i1404, ptr %i.acp, align 8, !tbaa !15
  %i.acq = tail call ptr @lean_array_mk(ptr noundef %i.ai) #9
  %i.acr = tail call ptr @l_Subarray_copy___redArg(ptr noundef nonnull %i.wx) #9
  %i.acs = tail call ptr @l_Subarray_copy___redArg(ptr noundef nonnull %i.xg) #9
  %i.act = tail call ptr @l_Subarray_copy___redArg(ptr noundef %i.afm) #9
  %i.acu = tail call ptr @l_Subarray_copy___redArg(ptr noundef %i.afx) #9
  %i.acv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 9 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  store ptr %i.acj, ptr %i.acw, align 8, !tbaa !15
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  store ptr %i.ab, ptr %i.acx, align 8, !tbaa !15
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acv, i64 24
  store ptr %i.acq, ptr %i.acy, align 8, !tbaa !15
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acv, i64 32
  store ptr %i.acr, ptr %i.acz, align 8, !tbaa !15
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acv, i64 40
  store ptr %i.wz, ptr %i.ada, align 8, !tbaa !15
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acv, i64 48
  store ptr %i.acs, ptr %i.adb, align 8, !tbaa !15
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acv, i64 56
  store ptr %i.act, ptr %i.adc, align 8, !tbaa !15
  %i.add = getelementptr inbounds nuw i8, ptr %i.acv, i64 64
  store ptr %i.acu, ptr %i.add, align 8, !tbaa !15
  br i1 %i.pc, label %bb.sl, label %bb.sm

bb.sl:                                            ; preds = %lean_obj_once.exit1405
  %i.ade = getelementptr inbounds nuw i8, ptr %.0759, i64 4 ; 2 uses
  %i.adf = load i32, ptr %i.ade, align 4
  %i.adg = and i32 %i.adf, 16777215
  %i.adh = or disjoint i32 %i.adg, 16777216
  store i32 %i.adh, ptr %i.ade, align 4
  br label %bb.sn

bb.sm:                                            ; preds = %lean_obj_once.exit1405
  %i.adi = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %bb.sn

bb.sn:                                            ; preds = %bb.sm, %bb.sl
  %.sink1714 = phi ptr [ %i.adi, %bb.sm ], [ %.0759, %bb.sl ] ; 3 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.sink1714, i64 8
  store ptr %i.acv, ptr %i.adj, align 8, !tbaa !15
  br i1 %i.zj, label %bb.so, label %bb.sp

bb.so:                                            ; preds = %bb.sn
  %i.adk = getelementptr inbounds nuw i8, ptr %.0739, i64 8
  store ptr %.sink1714, ptr %i.adk, align 8, !tbaa !15
  br label %bb.sq

bb.sp:                                            ; preds = %bb.sn
  %i.adl = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  store ptr %.sink1714, ptr %i.adm, align 8, !tbaa !15
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adl, i64 16
  store ptr %i.zi, ptr %i.adn, align 8, !tbaa !15
  br label %bb.sq

bb.sq:                                            ; preds = %bb.sp, %bb.so
  %.0736 = phi ptr [ %.0739, %bb.so ], [ %i.adl, %bb.sp ] ; 2 uses
  br i1 %i.yr, label %bb.sr, label %bb.ss

bb.sr:                                            ; preds = %bb.sq
  %i.ado = getelementptr inbounds nuw i8, ptr %.0741, i64 8
  store ptr %.0736, ptr %i.ado, align 8, !tbaa !15
  br label %bb.st

bb.ss:                                            ; preds = %bb.sq
  %i.adp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 8
  store ptr %.0736, ptr %i.adq, align 8, !tbaa !15
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adp, i64 16
  store ptr %i.yq, ptr %i.adr, align 8, !tbaa !15
  br label %bb.st

bb.st:                                            ; preds = %bb.ss, %bb.sr
  %.0735 = phi ptr [ %.0741, %bb.sr ], [ %i.adp, %bb.ss ] ; 2 uses
  br i1 %i.ye, label %lean_dec_ref.exit842.thread.sink.split, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.ads = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec_ref.exit842.thread.sink.split

bb.sv:                                            ; preds = %lean_obj_tag.exit1417
  %i.adt = ptrtoint ptr %l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__2_value. to i64
  %i.adu = and i64 %i.adt, 1
  %.not.i993 = icmp eq i64 %i.adu, 0
  br i1 %.not.i993, label %bb.sw, label %lean_dec.exit996

bb.sw:                                            ; preds = %bb.sv
  %i.adv = load i32, ptr %l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__2_value., align 4, !tbaa !11 ; 3 uses
  %i.adw = icmp sgt i32 %i.adv, 1
  br i1 %i.adw, label %bb.sx, label %bb.sy, !prof !16

bb.sx:                                            ; preds = %bb.sw
  %i.adx = add nsw i32 %i.adv, -1
  store i32 %i.adx, ptr %l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__2_value., align 4, !tbaa !11
  br label %lean_dec.exit996

bb.sy:                                            ; preds = %bb.sw
  %.not.i.i994 = icmp eq i32 %i.adv, 0
  br i1 %.not.i.i994, label %lean_dec.exit996, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %l_Lean_Meta_matchMatcherApp_x3f___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect_spec__12___closed__2_value.) #9
  br label %lean_dec.exit996

lean_dec.exit996:                                 ; preds = %bb.sx, %bb.sy, %bb.sz, %bb.sv
  %i.ady = load i32, ptr %i.afx, align 4, !tbaa !11 ; 3 uses
  %i.adz = icmp sgt i32 %i.ady, 1
  br i1 %i.adz, label %bb.ta, label %bb.tb, !prof !16

bb.ta:                                            ; preds = %lean_dec.exit996
  %i.aea = add nsw i32 %i.ady, -1
  store i32 %i.aea, ptr %i.afx, align 4, !tbaa !11
  br label %lean_dec_ref.exit832

bb.tb:                                            ; preds = %lean_dec.exit996
  %.not.i831 = icmp eq i32 %i.ady, 0
  br i1 %.not.i831, label %lean_dec_ref.exit832, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.afx) #9
  br label %lean_dec_ref.exit832

lean_dec_ref.exit832:                             ; preds = %bb.ta, %bb.tb, %bb.tc
  %i.aeb = load i32, ptr %i.afm, align 4, !tbaa !11 ; 3 uses
  %i.aec = icmp sgt i32 %i.aeb, 1
  br i1 %i.aec, label %bb.td, label %bb.te, !prof !16

bb.td:                                            ; preds = %lean_dec_ref.exit832
  %i.aed = add nsw i32 %i.aeb, -1
  store i32 %i.aed, ptr %i.afm, align 4, !tbaa !11
  br label %lean_dec_ref.exit830

bb.te:                                            ; preds = %lean_dec_ref.exit832
  %.not.i829 = icmp eq i32 %i.aeb, 0
  br i1 %.not.i829, label %lean_dec_ref.exit830, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.afm) #9
  br label %lean_dec_ref.exit830

lean_dec_ref.exit830:                             ; preds = %bb.td, %bb.te, %bb.tf
  %i.aee = load i32, ptr %i.xs, align 4, !tbaa !11 ; 3 uses
  %i.aef = icmp sgt i32 %i.aee, 1
  br i1 %i.aef, label %bb.tg, label %bb.th, !prof !16

bb.tg:                                            ; preds = %lean_dec_ref.exit830
  %i.aeg = add nsw i32 %i.aee, -1
  store i32 %i.aeg, ptr %i.xs, align 4, !tbaa !11
  br label %lean_dec_ref.exit828

bb.th:                                            ; preds = %lean_dec_ref.exit830
  %.not.i827 = icmp eq i32 %i.aee, 0
  br i1 %.not.i827, label %lean_dec_ref.exit828, label %bb.ti

bb.ti:                                            ; preds = %bb.th
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.xs) #9
  br label %lean_dec_ref.exit828

lean_dec_ref.exit828:                             ; preds = %bb.tg, %bb.th, %bb.ti
  %i.aeh = load i32, ptr %i.xg, align 4, !tbaa !11 ; 3 uses
  %i.aei = icmp sgt i32 %i.aeh, 1
  br i1 %i.aei, label %bb.tj, label %bb.tk, !prof !16

bb.tj:                                            ; preds = %lean_dec_ref.exit828
  %i.aej = add nsw i32 %i.aeh, -1
  store i32 %i.aej, ptr %i.xg, align 4, !tbaa !11
  br label %lean_dec_ref.exit826

bb.tk:                                            ; preds = %lean_dec_ref.exit828
  %.not.i825 = icmp eq i32 %i.aeh, 0
  br i1 %.not.i825, label %lean_dec_ref.exit826, label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.xg) #9
  br label %lean_dec_ref.exit826

lean_dec_ref.exit826:                             ; preds = %bb.tj, %bb.tk, %bb.tl
  %i.aek = ptrtoint ptr %i.wz to i64
  %i.ael = and i64 %i.aek, 1
  %.not.i989 = icmp eq i64 %i.ael, 0
  br i1 %.not.i989, label %bb.tm, label %lean_dec.exit992

bb.tm:                                            ; preds = %lean_dec_ref.exit826
  %i.aem = load i32, ptr %i.wz, align 4, !tbaa !11 ; 3 uses
  %i.aen = icmp sgt i32 %i.aem, 1
  br i1 %i.aen, label %bb.tn, label %bb.to, !prof !16

bb.tn:                                            ; preds = %bb.tm
  %i.aeo = add nsw i32 %i.aem, -1
  store i32 %i.aeo, ptr %i.wz, align 4, !tbaa !11
  br label %lean_dec.exit992

bb.to:                                            ; preds = %bb.tm
  %.not.i.i990 = icmp eq i32 %i.aem, 0
  br i1 %.not.i.i990, label %lean_dec.exit992, label %bb.tp

bb.tp:                                            ; preds = %bb.to
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.wz) #9
  br label %lean_dec.exit992

lean_dec.exit992:                                 ; preds = %bb.tn, %bb.to, %bb.tp, %lean_dec_ref.exit826
  %i.aep = load i32, ptr %i.wx, align 4, !tbaa !11 ; 3 uses
  %i.aeq = icmp sgt i32 %i.aep, 1
  br i1 %i.aeq, label %bb.tq, label %bb.tr, !prof !16

bb.tq:                                            ; preds = %lean_dec.exit992
  %i.aer = add nsw i32 %i.aep, -1
  store i32 %i.aer, ptr %i.wx, align 4, !tbaa !11
  br label %lean_dec_ref.exit824

bb.tr:                                            ; preds = %lean_dec.exit992
  %.not.i823 = icmp eq i32 %i.aep, 0
  br i1 %.not.i823, label %lean_dec_ref.exit824, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.wx) #9
  br label %lean_dec_ref.exit824

lean_dec_ref.exit824:                             ; preds = %bb.tq, %bb.tr, %bb.ts
  %i.aes = ptrtoint ptr %.0759 to i64
  %i.aet = and i64 %i.aes, 1
  %.not.i1406 = icmp eq i64 %i.aet, 0
  br i1 %.not.i1406, label %bb.tt, label %lean_del_object.exit1407

bb.tt:                                            ; preds = %lean_dec_ref.exit824
  tail call void @lean_free_object(ptr noundef nonnull %.0759) #9
  br label %lean_del_object.exit1407

lean_del_object.exit1407:                         ; preds = %lean_dec_ref.exit824, %bb.tt
  br i1 %.not.i926, label %bb.tu, label %lean_dec.exit988

bb.tu:                                            ; preds = %lean_del_object.exit1407
  %i.aeu = load i32, ptr %i.ai, align 4, !tbaa !11 ; 3 uses
  %i.aev = icmp sgt i32 %i.aeu, 1
  br i1 %i.aev, label %bb.tv, label %bb.tw, !prof !16

bb.tv:                                            ; preds = %bb.tu
  %i.aew = add nsw i32 %i.aeu, -1
  store i32 %i.aew, ptr %i.ai, align 4, !tbaa !11
  br label %lean_dec.exit988

bb.tw:                                            ; preds = %bb.tu
  %.not.i.i986 = icmp eq i32 %i.aeu, 0
  br i1 %.not.i.i986, label %lean_dec.exit988, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ai) #9
  br label %lean_dec.exit988

lean_dec.exit988:                                 ; preds = %bb.tv, %bb.tw, %bb.tx, %lean_del_object.exit1407
  br i1 %.not.i1227, label %bb.ty, label %lean_dec.exit984

bb.ty:                                            ; preds = %lean_dec.exit988
  %i.aex = load i32, ptr %i.ab, align 4, !tbaa !11 ; 3 uses
  %i.aey = icmp sgt i32 %i.aex, 1
  br i1 %i.aey, label %bb.tz, label %bb.ua, !prof !16

bb.tz:                                            ; preds = %bb.ty
  %i.aez = add nsw i32 %i.aex, -1
  store i32 %i.aez, ptr %i.ab, align 4, !tbaa !11
  br label %lean_dec.exit984

bb.ua:                                            ; preds = %bb.ty
  %.not.i.i982 = icmp eq i32 %i.aex, 0
  br i1 %.not.i.i982, label %lean_dec.exit984, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #9
  br label %lean_dec.exit984

lean_dec.exit984:                                 ; preds = %bb.tz, %bb.ua, %bb.ub, %lean_dec.exit988
  %i.afa = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !15 ; 5 uses
  %.val1211 = load i32, ptr %i.agr, align 8, !tbaa !11
  %i.afc = icmp eq i32 %.val1211, 1
  br i1 %i.afc, label %lean_dec_ref.exit842.thread, label %bb.uc

bb.uc:                                            ; preds = %lean_dec.exit984
  %i.afd = ptrtoint ptr %i.afb to i64
  %i.afe = and i64 %i.afd, 1
  %.not.i854 = icmp eq i64 %i.afe, 0
  br i1 %.not.i854, label %bb.ud, label %lean_inc.exit855

bb.ud:                                            ; preds = %bb.uc
  %.val.i.i1408 = load i32, ptr %i.afb, align 4, !tbaa !11 ; 3 uses
  %i.aff = icmp sgt i32 %.val.i.i1408, 0
  br i1 %i.aff, label %bb.ue, label %bb.uf, !prof !16

bb.ue:                                            ; preds = %bb.ud
  %i.afg = add nuw i32 %.val.i.i1408, 1
  store i32 %i.afg, ptr %i.afb, align 4, !tbaa !11
  br label %lean_inc.exit855

bb.uf:                                            ; preds = %bb.ud
end_hunk_2
begin_hunk_3_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_deriveCases_spec__3:bb.a
bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cs) #9
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.bm, %bb.bl, %bb.bk, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.bx) #9
  br label %lean_dec_ref_known.exit

bb.bn:                                            ; preds = %lean_inc.exit155
  %i.cy = icmp sgt i32 %.val.i207, 1
  br i1 %i.cy, label %bb.bo, label %bb.bp, !prof !16

bb.bo:                                            ; preds = %bb.bn
  %i.cz = add nsw i32 %.val.i207, -1
  store i32 %i.cz, ptr %i.bx, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.bp:                                            ; preds = %bb.bn
  %.not.i.i208 = icmp eq i32 %.val.i207, 0
  br i1 %.not.i.i208, label %lean_dec_ref_known.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #9
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.bo, %bb.bp, %bb.bq
  br i1 %i.by, label %.sink.split, label %bb.br

bb.br:                                            ; preds = %lean_dec_ref_known.exit
  tail call void @lean_inc_heartbeat() #9
  %i.da = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.bs, label %.sink.split.sink.split

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.bt:                                            ; preds = %lean_obj_tag.exit203
  %i.dc = ptrtoint ptr %.0150 to i64
  %i.dd = and i64 %i.dc, 1
  %.not.i212 = icmp eq i64 %i.dd, 0
  br i1 %.not.i212, label %bb.bu, label %lean_del_object.exit213

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_free_object(ptr noundef nonnull %.0150) #9
  br label %lean_del_object.exit213

lean_del_object.exit213:                          ; preds = %bb.bt, %bb.bu
  %i.de = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !15 ; 8 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = and i64 %i.dg, 1
  %.not.i152 = icmp eq i64 %i.dh, 0
  br i1 %.not.i152, label %bb.bv, label %lean_inc.exit153

bb.bv:                                            ; preds = %lean_del_object.exit213
  %.val.i.i214 = load i32, ptr %i.df, align 4, !tbaa !11 ; 3 uses
  %i.di = icmp sgt i32 %.val.i.i214, 0
  br i1 %i.di, label %bb.bw, label %bb.bx, !prof !16

bb.bw:                                            ; preds = %bb.bv
  %i.dj = add nuw i32 %.val.i.i214, 1
  store i32 %i.dj, ptr %i.df, align 4, !tbaa !11
  br label %lean_inc.exit153

bb.bx:                                            ; preds = %bb.bv
  %.not.i.i215 = icmp eq i32 %.val.i.i214, 0
  br i1 %.not.i.i215, label %lean_inc.exit153, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.dk = atomicrmw sub ptr %i.df, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit153

lean_inc.exit153:                                 ; preds = %bb.by, %bb.bx, %bb.bw, %lean_del_object.exit213
  %.val.i217 = load i32, ptr %i.bx, align 8, !tbaa !11 ; 4 uses
  %i.dl = icmp eq i32 %.val.i217, 1
  br i1 %i.dl, label %.preheader.i220, label %bb.cd

.preheader.i220:                                  ; preds = %lean_inc.exit153
  %i.dm = load ptr, ptr %i.de, align 8, !tbaa !15 ; 4 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = and i64 %i.dn, 1
  %.not.i7.i222 = icmp eq i64 %i.do, 0
  br i1 %.not.i7.i222, label %bb.bz, label %lean_dec.exit.i223

bb.bz:                                            ; preds = %.preheader.i220
  %i.dp = load i32, ptr %i.dm, align 4, !tbaa !11 ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, 1
  br i1 %i.dq, label %bb.ca, label %bb.cb, !prof !16

bb.ca:                                            ; preds = %bb.bz
  %i.dr = add nsw i32 %i.dp, -1
  store i32 %i.dr, ptr %i.dm, align 4, !tbaa !11
  br label %lean_dec.exit.i223

bb.cb:                                            ; preds = %bb.bz
  %.not.i.i.i227 = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i227, label %lean_dec.exit.i223, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #9
  br label %lean_dec.exit.i223

lean_dec.exit.i223:                               ; preds = %bb.cc, %bb.cb, %bb.ca, %.preheader.i220
  tail call void @lean_free_object(ptr noundef nonnull %i.bx) #9
  br label %.thread

bb.cd:                                            ; preds = %lean_inc.exit153
  %i.ds = icmp sgt i32 %.val.i217, 1
  br i1 %i.ds, label %bb.ce, label %bb.cf, !prof !16

bb.ce:                                            ; preds = %bb.cd
  %i.dt = add nsw i32 %.val.i217, -1
  store i32 %i.dt, ptr %i.bx, align 8, !tbaa !11
  br label %.thread

bb.cf:                                            ; preds = %bb.cd
  %.not.i.i218 = icmp eq i32 %.val.i217, 0
  br i1 %.not.i.i218, label %.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #9
  br label %.thread

bb.ch:                                            ; preds = %lean_obj_tag.exit
  br i1 %i.by, label %bb.dm, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.du = ptrtoint ptr %i.bx to i64
  %i.dv = and i64 %i.du, 1
  %.not.i151 = icmp eq i64 %i.dv, 0
  br i1 %.not.i151, label %bb.cj, label %lean_inc.exit

bb.cj:                                            ; preds = %bb.ci
  %.val.i.i229 = load i32, ptr %i.bx, align 4, !tbaa !11 ; 3 uses
  %i.dw = icmp sgt i32 %.val.i.i229, 0
  br i1 %i.dw, label %bb.ck, label %bb.cl, !prof !16

bb.ck:                                            ; preds = %bb.cj
  %i.dx = add nuw i32 %.val.i.i229, 1
  store i32 %i.dx, ptr %i.bx, align 4, !tbaa !11
  br label %lean_inc.exit

bb.cl:                                            ; preds = %bb.cj
  %.not.i.i230 = icmp eq i32 %.val.i.i229, 0
  br i1 %.not.i.i230, label %lean_inc.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.dy = atomicrmw sub ptr %i.bx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.ci
  br i1 %.not.i195, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %lean_inc.exit
  %i.dz = load i32, ptr %i.bo, align 8, !tbaa !11 ; 3 uses
  %i.ea = icmp sgt i32 %i.dz, 1
  br i1 %i.ea, label %bb.co, label %bb.cp, !prof !16

bb.co:                                            ; preds = %bb.cn
  %i.eb = add nsw i32 %i.dz, -1
  store i32 %i.eb, ptr %i.bo, align 8, !tbaa !11
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cn
  %.not.i.i164 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i164, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bo) #9
  br label %bb.cr

bb.cr:                                            ; preds = %lean_inc.exit, %bb.cq, %bb.cp, %bb.co
  tail call void @lean_inc_heartbeat() #9
  %i.ec = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.cs, label %.sink.split.sink.split

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.ct:                                            ; preds = %.split
  %i.ee = lshr i64 %i.aj, 1                       ; 2 uses
  %.val.i234 = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ef = icmp ult i64 %i.ee, %.val.i234
  br i1 %i.ef, label %bb.cu, label %.thread.i

bb.cu:                                            ; preds = %bb.ct
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ee
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !15
  br label %lean_array_get_borrowed.exit

.thread.i:                                        ; preds = %lean_nat_lt.exit, %bb.ct
  %i.ei = and i64 %i.ad, 1
  %.not.i.i235 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i235, label %bb.cv, label %lean_inc.exit.i236

bb.cv:                                            ; preds = %.thread.i
  %.val.i.i.i237 = load i32, ptr %i.ac, align 4, !tbaa !11 ; 3 uses
  %i.ej = icmp sgt i32 %.val.i.i.i237, 0
  br i1 %i.ej, label %bb.cw, label %bb.cx, !prof !16

bb.cw:                                            ; preds = %bb.cv
  %i.ek = add nuw i32 %.val.i.i.i237, 1
  store i32 %i.ek, ptr %i.ac, align 4, !tbaa !11
  br label %lean_inc.exit.i236

bb.cx:                                            ; preds = %bb.cv
  %.not.i.i.i238 = icmp eq i32 %.val.i.i.i237, 0
  br i1 %.not.i.i.i238, label %lean_inc.exit.i236, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.el = atomicrmw sub ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i236

lean_inc.exit.i236:                               ; preds = %bb.cy, %bb.cx, %bb.cw, %.thread.i
  %i.em = tail call ptr @lean_array_get_panic(ptr noundef %i.ac) #9
  br label %lean_array_get_borrowed.exit

lean_array_get_borrowed.exit:                     ; preds = %bb.cu, %lean_inc.exit.i236
  %.1.i = phi ptr [ %i.em, %lean_inc.exit.i236 ], [ %i.eh, %bb.cu ]
  %i.en = ptrtoint ptr %.1.i to i64
  %i.eo = and i64 %i.en, 510
  %i.ep = icmp eq i64 %i.eo, 0
  %. = select i1 %i.ep, ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 3 to ptr)
  %i.eq = tail call ptr @lean_array_push(ptr noundef %i.k, ptr noundef nonnull %.) #9 ; 2 uses
  br i1 %.not.i183, label %bb.df, label %bb.dc, !prof !9

bb.cz:                                            ; preds = %lean_dec.exit182
  %i.er = ptrtoint ptr %.0141 to i64
  %i.es = and i64 %i.er, 1
  %.not.i239 = icmp eq i64 %i.es, 0
  br i1 %.not.i239, label %bb.da, label %lean_del_object.exit240

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_free_object(ptr noundef nonnull %.0141) #9
  br label %lean_del_object.exit240

lean_del_object.exit240:                          ; preds = %bb.cz, %bb.da
  %i.et = tail call ptr @lean_array_push(ptr noundef %i.k, ptr noundef nonnull inttoptr (i64 5 to ptr)) #9
  tail call void @lean_inc_heartbeat() #9
  %i.eu = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #9 ; 6 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.db, label %lean_alloc_ctor.exit241

bb.db:                                            ; preds = %lean_del_object.exit240
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit241:                          ; preds = %lean_del_object.exit240
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 1, ptr %i.eu, align 4, !tbaa !11
  store i32 131096, ptr %i.ew, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.et, ptr %i.ex, align 8, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store ptr %i.m, ptr %i.ey, align 8, !tbaa !15
  br label %.thread

bb.dc:                                            ; preds = %lean_array_get_borrowed.exit
  %i.ez = lshr i64 %i.aj, 1
  %i.fa = add nuw i64 %i.ez, 1                    ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, -1
  br i1 %i.fb, label %bb.dd, label %bb.de, !prof !16

bb.dd:                                            ; preds = %bb.dc
  %i.fc = shl nuw i64 %i.fa, 1
  %i.fd = or disjoint i64 %i.fc, 1
  %i.fe = inttoptr i64 %i.fd to ptr
  br label %lean_dec.exit

bb.de:                                            ; preds = %bb.dc
  %i.ff = tail call ptr @lean_big_usize_to_nat(i64 noundef -9223372036854775808) #9
  br label %lean_dec.exit

bb.df:                                            ; preds = %lean_array_get_borrowed.exit
  %i.fg = tail call ptr @lean_nat_big_add(ptr noundef %i.m, ptr noundef nonnull inttoptr (i64 3 to ptr)) #9 ; 3 uses
  %i.fh = load i32, ptr %i.m, align 4, !tbaa !11  ; 3 uses
  %i.fi = icmp sgt i32 %i.fh, 1
  br i1 %i.fi, label %bb.dg, label %bb.dh, !prof !16

bb.dg:                                            ; preds = %bb.df
  %i.fj = add nsw i32 %i.fh, -1
  store i32 %i.fj, ptr %i.m, align 4, !tbaa !11
  br label %lean_dec.exit

bb.dh:                                            ; preds = %bb.df
  %.not.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.dd, %bb.de, %bb.dg, %bb.dh, %bb.di
  %.0.i251 = phi ptr [ %i.fg, %bb.dg ], [ %i.fg, %bb.di ], [ %i.fg, %bb.dh ], [ %i.ff, %bb.de ], [ %i.fe, %bb.dd ] ; 2 uses
  br i1 %i.n, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %lean_dec.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.0141, i64 16
  store ptr %.0.i251, ptr %i.fl, align 8, !tbaa !15
  store ptr %i.eq, ptr %i.fk, align 8, !tbaa !15
  br label %.thread

bb.dk:                                            ; preds = %lean_dec.exit
  tail call void @lean_inc_heartbeat() #9
  %i.fm = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #9 ; 6 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.dl, label %lean_alloc_ctor.exit243

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit243:                          ; preds = %bb.dk
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 1, ptr %i.fm, align 4, !tbaa !11
  store i32 131096, ptr %i.fo, align 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.eq, ptr %i.fp, align 8, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %.0.i251, ptr %i.fq, align 8, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %bb.cg, %lean_dec.exit.i223, %bb.ce, %bb.cf, %lean_alloc_ctor.exit243, %bb.dj, %lean_alloc_ctor.exit241
  %.4132256 = phi ptr [ %i.eu, %lean_alloc_ctor.exit241 ], [ %i.fm, %lean_alloc_ctor.exit243 ], [ %.0141, %bb.dj ], [ %i.df, %bb.cf ], [ %i.df, %bb.ce ], [ %i.df, %lean_dec.exit.i223 ], [ %i.df, %bb.cg ] ; 2 uses
  %i.fr = add nuw i64 %.0123282, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.fr, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

.sink.split.sink.split:                           ; preds = %bb.cr, %bb.br, %._crit_edge
  %.sink324 = phi ptr [ %i.h, %._crit_edge ], [ %i.da, %bb.br ], [ %i.ec, %bb.cr ] ; 3 uses
  %.sink = phi i32 [ 65552, %._crit_edge ], [ 65552, %bb.br ], [ 16842768, %bb.cr ]
  %.0125.lcssa.sink.ph = phi ptr [ %.0125.lcssa, %._crit_edge ], [ %i.cl, %bb.br ], [ %i.bx, %bb.cr ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.sink324, i64 4
  store i32 1, ptr %.sink324, align 4, !tbaa !11
  store i32 %.sink, ptr %i.fs, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %lean_dec_ref_known.exit
  %.sink321 = phi ptr [ %.0150, %lean_dec_ref_known.exit ], [ %.sink324, %.sink.split.sink.split ] ; 2 uses
  %.0125.lcssa.sink = phi ptr [ %i.cl, %lean_dec_ref_known.exit ], [ %.0125.lcssa.sink.ph, %.sink.split.sink.split ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.sink321, i64 8
  store ptr %.0125.lcssa.sink, ptr %i.ft, align 8, !tbaa !15
  br label %bb.dm

bb.dm:                                            ; preds = %.sink.split, %bb.ch
  %.7.ph = phi ptr [ %i.bo, %bb.ch ], [ %.sink321, %.sink.split ]
  ret ptr %.7.ph
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_deriveCases_spec__3___closed__2() #1 {
bb.a:
  %i.a = tail call ptr @l_mkPanicMessageWithDecl(ptr noundef nonnull @l___private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_foldAndCollect___lam__17___closed__0_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_deriveCases_spec__3___closed__0_value, ptr noundef nonnull inttoptr (i64 2925 to ptr), ptr noundef nonnull inttoptr (i64 17 to ptr), ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_deriveCases_spec__3___closed__1_value) #9
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_deriveCases_spec__3___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val38 = load i64, ptr %i.a, align 8, !tbaa !13
  %i.b = load i32, ptr %2, align 8, !tbaa !11     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 8, !tbaa !11
  br label %lean_dec.exit37

bb.c:                                             ; preds = %bb.a
  %.not.i.i35 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i35, label %lean_dec.exit37, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #9
  br label %lean_dec.exit37

lean_dec.exit37:                                  ; preds = %bb.b, %bb.c, %bb.d
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !13
  %i.f = load i32, ptr %3, align 8, !tbaa !11     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %lean_dec.exit37
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 8, !tbaa !11
  br label %lean_dec.exit33

bb.f:                                             ; preds = %lean_dec.exit37
  %.not.i.i31 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i31, label %lean_dec.exit33, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec.exit33

lean_dec.exit33:                                  ; preds = %bb.e, %bb.f, %bb.g
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_FunInd_0__Lean_Tactic_FunInd_deriveCases_spec__3(ptr noundef %0, ptr noundef %1, i64 noundef %.val38, i64 noundef %.val, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %i.j = ptrtoint ptr %8 to i64
  %i.k = and i64 %i.j, 1
end_hunk_3
