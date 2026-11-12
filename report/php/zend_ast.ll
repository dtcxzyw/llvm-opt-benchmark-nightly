Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_ast?download=true
inline.NumInlined: 91
inline.NumDeleted: 13
begin_hunk_0_@zend_ast_export_ex:bb.a

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.0.i1254 = phi i64 [ 6, %bb.ev ], [ %i.uf, %bb.ew ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1254) #14
  %.pre2696 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2697 = getelementptr inbounds nuw i8, ptr %.pre2696, i64 16
  %.pre2698 = load i64, ptr %.phi.trans.insert2697, align 8, !tbaa !64
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.uh = phi i64 [ %i.ue, %bb.ew ], [ %.pre2698, %bb.ex ]
  %i.ui = phi ptr [ %i.uc, %bb.ew ], [ %.pre2696, %bb.ex ]
  %.1.i1255 = phi i64 [ %i.uf, %bb.ew ], [ %.0.i1254, %bb.ex ]
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.uh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.uk, ptr noundef nonnull align 1 dereferenceable(6) @.str.29, i64 6, i1 false)
  %i.ul = load ptr, ptr %0, align 8, !tbaa !117
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  store i64 %.1.i1255, ptr %i.um, align 8, !tbaa !64
  br label %.loopexit

bb.ez:                                            ; preds = %bb.b
  %i.un = getelementptr inbounds nuw i8, ptr %.02093, i64 8
  %i.uo = getelementptr inbounds nuw i8, ptr %.02093, i64 16
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !72 ; 2 uses
  %.not820 = icmp eq ptr %i.up, null
  br i1 %.not820, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  tail call fastcc void @zend_ast_export_attributes(ptr noundef %0, ptr noundef nonnull %i.up, i32 noundef %3, i1 noundef zeroext true)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.uq = getelementptr inbounds nuw i8, ptr %.02093, i64 2
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !71
  %i.us = zext i16 %i.ur to i32
  tail call fastcc void @zend_ast_export_visibility(ptr noundef %0, i32 noundef %i.us, i32 noundef 2)
  %i.ut = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i1247 = icmp eq ptr %i.ut, null
  br i1 %.not.i1247, label %bb.fd, label %bb.fc, !prof !22

bb.fc:                                            ; preds = %bb.fb
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !64 ; 2 uses
  %i.uw = add i64 %i.uv, 6                        ; 3 uses
  %i.ux = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1248 = icmp ult i64 %i.uw, %i.ux
  br i1 %.not12.i1248, label %smart_str_alloc.exit1251, label %bb.fd, !prof !112

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.0.i1249 = phi i64 [ 6, %bb.fb ], [ %i.uw, %bb.fc ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1249) #14
  %.pre2692 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2693 = getelementptr inbounds nuw i8, ptr %.pre2692, i64 16
  %.pre2694 = load i64, ptr %.phi.trans.insert2693, align 8, !tbaa !64
  br label %smart_str_alloc.exit1251

smart_str_alloc.exit1251:                         ; preds = %bb.fc, %bb.fd
  %i.uy = phi i64 [ %i.uv, %bb.fc ], [ %.pre2694, %bb.fd ]
  %i.uz = phi ptr [ %i.ut, %bb.fc ], [ %.pre2692, %bb.fd ]
  %.1.i1250 = phi i64 [ %i.uw, %bb.fc ], [ %.0.i1249, %bb.fd ]
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 24
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.uy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.vb, ptr noundef nonnull align 1 dereferenceable(6) @.str.29, i64 6, i1 false)
  %i.vc = load ptr, ptr %0, align 8, !tbaa !117
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  store i64 %.1.i1250, ptr %i.vd, align 8, !tbaa !64
  %i.ve = getelementptr inbounds nuw i8, ptr %.02093, i64 24
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !72 ; 2 uses
  %.not821 = icmp eq ptr %i.vf, null
  br i1 %.not821, label %bb.fh, label %bb.fe

bb.fe:                                            ; preds = %smart_str_alloc.exit1251
  tail call fastcc void @zend_ast_export_type(ptr noundef %0, ptr noundef nonnull %i.vf, i32 noundef %3)
  %i.vg = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i1480 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i1480, label %bb.fg, label %bb.ff, !prof !22

bb.ff:                                            ; preds = %bb.fe
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !64
  %i.vj = add i64 %i.vi, 1                        ; 3 uses
  %i.vk = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1481 = icmp ult i64 %i.vj, %i.vk
  br i1 %.not12.i.i1481, label %smart_str_appendc_ex.exit1484, label %bb.fg, !prof !112

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.0.i.i1482 = phi i64 [ 1, %bb.fe ], [ %i.vj, %bb.ff ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1482) #14
  %.pre2695 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1484

smart_str_appendc_ex.exit1484:                    ; preds = %bb.ff, %bb.fg
  %i.vl = phi ptr [ %i.vg, %bb.ff ], [ %.pre2695, %bb.fg ]
  %.1.i.i1483 = phi i64 [ %i.vj, %bb.ff ], [ %.0.i.i1482, %bb.fg ] ; 2 uses
  %i.vm = getelementptr i8, ptr %i.vl, i64 23
  %i.vn = getelementptr i8, ptr %i.vm, i64 %.1.i.i1483
  store i8 32, ptr %i.vn, align 1, !tbaa !47
  %i.vo = load ptr, ptr %0, align 8, !tbaa !117
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  store i64 %.1.i.i1483, ptr %i.vp, align 8, !tbaa !64
  br label %bb.fh

bb.fh:                                            ; preds = %smart_str_appendc_ex.exit1484, %smart_str_alloc.exit1251
  %i.vq = load ptr, ptr %i.un, align 8, !tbaa !72
  br label %.loopexit

bb.fi:                                            ; preds = %bb.b
  tail call fastcc void @zend_ast_export_name_list_ex(ptr noundef %0, ptr noundef nonnull %.02093, i32 noundef %3, ptr noundef nonnull @.str.30)
  br label %zend_ast_export_list_ex.exit

bb.fj:                                            ; preds = %bb.b
  %i.vr = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i1242 = icmp eq ptr %i.vr, null
  br i1 %.not.i1242, label %bb.fl, label %bb.fk, !prof !22

bb.fk:                                            ; preds = %bb.fj
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !64 ; 2 uses
  %i.vu = add i64 %i.vt, 4                        ; 3 uses
  %i.vv = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1243 = icmp ult i64 %i.vu, %i.vv
  br i1 %.not12.i1243, label %smart_str_alloc.exit1246, label %bb.fl, !prof !112

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.0.i1244 = phi i64 [ 4, %bb.fj ], [ %i.vu, %bb.fk ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1244) #14
  %.pre2683 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2684 = getelementptr inbounds nuw i8, ptr %.pre2683, i64 16
  %.pre2685 = load i64, ptr %.phi.trans.insert2684, align 8, !tbaa !64
  br label %smart_str_alloc.exit1246

smart_str_alloc.exit1246:                         ; preds = %bb.fk, %bb.fl
  %i.vw = phi i64 [ %i.vt, %bb.fk ], [ %.pre2685, %bb.fl ]
  %i.vx = phi ptr [ %i.vr, %bb.fk ], [ %.pre2683, %bb.fl ]
  %.1.i1245 = phi i64 [ %i.vu, %bb.fk ], [ %.0.i1244, %bb.fl ] ; 5 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.vw
  store i32 543519605, ptr %i.vz, align 1
  %i.wa = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  store i64 %.1.i1245, ptr %i.wb, align 8, !tbaa !64
  %i.wc = getelementptr inbounds nuw i8, ptr %.02093, i64 2
  %i.wd = load i16, ptr %i.wc, align 2, !tbaa !71
  switch i16 %i.wd, label %.loopexit [
    i16 310, label %bb.fm
    i16 312, label %bb.fo
  ]

bb.fm:                                            ; preds = %smart_str_alloc.exit1246
  %i.we = add i64 %.1.i1245, 9                    ; 3 uses
  %i.wf = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1238 = icmp ult i64 %i.we, %i.wf
  br i1 %.not12.i1238, label %smart_str_alloc.exit1241, label %bb.fn, !prof !112

bb.fn:                                            ; preds = %bb.fm
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.we) #14
  %.pre2689 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2690 = getelementptr inbounds nuw i8, ptr %.pre2689, i64 16
  %.pre2691 = load i64, ptr %.phi.trans.insert2690, align 8, !tbaa !64
  br label %smart_str_alloc.exit1241

smart_str_alloc.exit1241:                         ; preds = %bb.fm, %bb.fn
  %i.wg = phi i64 [ %.1.i1245, %bb.fm ], [ %.pre2691, %bb.fn ]
  %i.wh = phi ptr [ %i.wa, %bb.fm ], [ %.pre2689, %bb.fn ]
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.wg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.wj, ptr noundef nonnull align 1 dereferenceable(9) @.str.18, i64 9, i1 false)
  %i.wk = load ptr, ptr %0, align 8, !tbaa !117
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  store i64 %i.we, ptr %i.wl, align 8, !tbaa !64
  br label %.loopexit

bb.fo:                                            ; preds = %smart_str_alloc.exit1246
  %i.wm = add i64 %.1.i1245, 6                    ; 3 uses
  %i.wn = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1233 = icmp ult i64 %i.wm, %i.wn
  br i1 %.not12.i1233, label %smart_str_alloc.exit1236, label %bb.fp, !prof !112

bb.fp:                                            ; preds = %bb.fo
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.wm) #14
  %.pre2686 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2687 = getelementptr inbounds nuw i8, ptr %.pre2686, i64 16
  %.pre2688 = load i64, ptr %.phi.trans.insert2687, align 8, !tbaa !64
  br label %smart_str_alloc.exit1236

smart_str_alloc.exit1236:                         ; preds = %bb.fo, %bb.fp
  %i.wo = phi i64 [ %.1.i1245, %bb.fo ], [ %.pre2688, %bb.fp ]
  %i.wp = phi ptr [ %i.wa, %bb.fo ], [ %.pre2686, %bb.fp ]
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 24
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.wo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.wr, ptr noundef nonnull align 1 dereferenceable(6) @.str.29, i64 6, i1 false)
  %i.ws = load ptr, ptr %0, align 8, !tbaa !117
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  store i64 %i.wm, ptr %i.wt, align 8, !tbaa !64
  br label %.loopexit

switch.lookup:                                    ; preds = %bb.b
  %i.wu = getelementptr inbounds nuw i8, ptr %.02093, i64 2
  %i.wv = load i16, ptr %i.wu, align 2, !tbaa !71
  %switch.tableidx = add nsw i16 %i.wv, -346
  br label %.loopexit1831.sink.split

switch.lookup3752:                                ; preds = %bb.b
  %i.ww = getelementptr inbounds nuw i8, ptr %.02093, i64 2
  %i.wx = load i16, ptr %i.ww, align 2, !tbaa !71
  %i.wy = and i16 %i.wx, -257
  %switch.tableidx3751 = add nsw i16 %i.wy, -7
  br label %.loopexit1831.sink.split

bb.fq:                                            ; preds = %bb.b
  %i.wz = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i1485 = icmp eq ptr %i.wz, null
  br i1 %.not.i.i1485, label %bb.fs, label %bb.fr, !prof !22

bb.fr:                                            ; preds = %bb.fq
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !64
  %i.xc = add i64 %i.xb, 1                        ; 3 uses
  %i.xd = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1486 = icmp ult i64 %i.xc, %i.xd
  br i1 %.not12.i.i1486, label %smart_str_appendc_ex.exit1489, label %bb.fs, !prof !112

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.0.i.i1487 = phi i64 [ 1, %bb.fq ], [ %i.xc, %bb.fr ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1487) #14
  %.pre2679 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1489

smart_str_appendc_ex.exit1489:                    ; preds = %bb.fr, %bb.fs
  %i.xe = phi ptr [ %i.wz, %bb.fr ], [ %.pre2679, %bb.fs ]
  %.1.i.i1488 = phi i64 [ %i.xc, %bb.fr ], [ %.0.i.i1487, %bb.fs ] ; 2 uses
  %i.xf = getelementptr i8, ptr %i.xe, i64 23
  %i.xg = getelementptr i8, ptr %i.xf, i64 %.1.i.i1488
  store i8 36, ptr %i.xg, align 1, !tbaa !47
  %i.xh = load ptr, ptr %0, align 8, !tbaa !117
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  store i64 %.1.i.i1488, ptr %i.xi, align 8, !tbaa !64
  %i.xj = getelementptr inbounds nuw i8, ptr %.02093, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_var(ptr noundef %0, ptr noundef %i.xk, i32 noundef %3)
  br label %zend_ast_export_list_ex.exit

bb.ft:                                            ; preds = %bb.b
  %i.xl = getelementptr inbounds nuw i8, ptr %.02093, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ns_name(ptr noundef %0, ptr noundef %i.xm, i32 noundef %3)
  br label %zend_ast_export_list_ex.exit

bb.fu:                                            ; preds = %bb.b
  %i.xn = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i1227 = icmp eq ptr %i.xn, null
  br i1 %.not.i1227, label %bb.fw, label %bb.fv, !prof !22

bb.fv:                                            ; preds = %bb.fu
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !64 ; 2 uses
  %i.xq = add i64 %i.xp, 3                        ; 3 uses
  %i.xr = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i1228 = icmp ult i64 %i.xq, %i.xr
  br i1 %.not12.i1228, label %smart_str_alloc.exit1231, label %bb.fw, !prof !112

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.0.i1229 = phi i64 [ 3, %bb.fu ], [ %i.xq, %bb.fv ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i1229) #14
  %.pre2676 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2677 = getelementptr inbounds nuw i8, ptr %.pre2676, i64 16
  %.pre2678 = load i64, ptr %.phi.trans.insert2677, align 8, !tbaa !64
  br label %smart_str_alloc.exit1231

smart_str_alloc.exit1231:                         ; preds = %bb.fv, %bb.fw
  %i.xs = phi i64 [ %i.xp, %bb.fv ], [ %.pre2678, %bb.fw ]
  %i.xt = phi ptr [ %i.xn, %bb.fv ], [ %.pre2676, %bb.fw ]
  %.1.i1230 = phi i64 [ %i.xq, %bb.fv ], [ %.0.i1229, %bb.fw ]
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.xs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.xv, ptr noundef nonnull align 1 dereferenceable(3) @.str.44, i64 3, i1 false)
  %i.xw = load ptr, ptr %0, align 8, !tbaa !117
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 16
  store i64 %.1.i1230, ptr %i.xx, align 8, !tbaa !64
  %i.xy = getelementptr inbounds nuw i8, ptr %.02093, i64 8
  br label %.backedge

.backedge:                                        ; preds = %smart_str_alloc.exit1231, %smart_str_appendc_ex.exit1509, %smart_str_alloc.exit1006, %smart_str_appendc_ex.exit1779, %smart_str_alloc.exit866
  %.0.be.in = phi ptr [ %i.xy, %smart_str_alloc.exit1231 ], [ %i.cms, %smart_str_appendc_ex.exit1779 ], [ %i.aah, %smart_str_appendc_ex.exit1509 ], [ %i.cnn, %smart_str_alloc.exit866 ], [ %i.bnn, %smart_str_alloc.exit1006 ]
  %.0.be = load ptr, ptr %.0.be.in, align 8, !tbaa !72 ; 2 uses
  %.not = icmp eq ptr %.0.be, null
  br i1 %.not, label %zend_ast_export_list_ex.exit, label %bb.b

switch.lookup3756:                                ; preds = %bb.b
  %i.xz = getelementptr inbounds nuw i8, ptr %.02093, i64 2
  %i.ya = load i16, ptr %i.xz, align 2, !tbaa !71
  %i.yb = sext i16 %i.ya to i64
  %i.yc = getelementptr [8 x i8], ptr @switch.table.zend_ast_export_ex.3, i64 %i.yb
  %switch.gep3757 = getelementptr i8, ptr %i.yc, i64 -8
  %switch.load3758 = load ptr, ptr %switch.gep3757, align 8
  br label %bb.uw

bb.fx:                                            ; preds = %bb.b
  %i.yd = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i1490 = icmp eq ptr %i.yd, null
  br i1 %.not.i.i1490, label %bb.fz, label %bb.fy, !prof !22

bb.fy:                                            ; preds = %bb.fx
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  %i.yf = load i64, ptr %i.ye, align 8, !tbaa !64
  %i.yg = add i64 %i.yf, 1                        ; 3 uses
  %i.yh = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1491 = icmp ult i64 %i.yg, %i.yh
  br i1 %.not12.i.i1491, label %smart_str_appendc_ex.exit1494, label %bb.fz, !prof !112

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %.0.i.i1492 = phi i64 [ 1, %bb.fx ], [ %i.yg, %bb.fy ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1492) #14
  %.pre2661 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1494

smart_str_appendc_ex.exit1494:                    ; preds = %bb.fy, %bb.fz
  %i.yi = phi ptr [ %i.yd, %bb.fy ], [ %.pre2661, %bb.fz ]
  %.1.i.i1493 = phi i64 [ %i.yg, %bb.fy ], [ %.0.i.i1492, %bb.fz ] ; 2 uses
  %i.yj = getelementptr i8, ptr %i.yi, i64 23
  %i.yk = getelementptr i8, ptr %i.yj, i64 %.1.i.i1493
  store i8 96, ptr %i.yk, align 1, !tbaa !47
  %i.yl = load ptr, ptr %0, align 8, !tbaa !117
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  store i64 %.1.i.i1493, ptr %i.ym, align 8, !tbaa !64
  %i.yn = getelementptr inbounds nuw i8, ptr %.02093, i64 8
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !72 ; 3 uses
  %i.yp = load i16, ptr %i.yo, align 8, !tbaa !70 ; 2 uses
  %i.yq = icmp eq i16 %i.yp, 130
  br i1 %i.yq, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %smart_str_appendc_ex.exit1494
  tail call fastcc void @zend_ast_export_encaps_list(ptr noundef %0, i8 noundef signext 96, ptr noundef nonnull %i.yo, i32 noundef %3)
  br label %bb.gc

bb.gb:                                            ; preds = %smart_str_appendc_ex.exit1494
  %i.yr = icmp eq i16 %i.yp, 64
  tail call void @llvm.assume(i1 %i.yr)
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !47
  tail call fastcc void @zend_ast_export_qstr(ptr noundef %0, i8 noundef signext 96, ptr noundef %i.yt)
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.yu = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i1495 = icmp eq ptr %i.yu, null
  br i1 %.not.i.i1495, label %bb.ge, label %bb.gd, !prof !22

bb.gd:                                            ; preds = %bb.gc
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !64
  %i.yx = add i64 %i.yw, 1                        ; 3 uses
  %i.yy = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1496 = icmp ult i64 %i.yx, %i.yy
  br i1 %.not12.i.i1496, label %smart_str_appendc_ex.exit1499, label %bb.ge, !prof !112

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.0.i.i1497 = phi i64 [ 1, %bb.gc ], [ %i.yx, %bb.gd ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1497) #14
  %.pre2662 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1499

smart_str_appendc_ex.exit1499:                    ; preds = %bb.gd, %bb.ge
  %i.yz = phi ptr [ %i.yu, %bb.gd ], [ %.pre2662, %bb.ge ]
  %.1.i.i1498 = phi i64 [ %i.yx, %bb.gd ], [ %.0.i.i1497, %bb.ge ] ; 2 uses
  %i.za = getelementptr i8, ptr %i.yz, i64 23
  %i.zb = getelementptr i8, ptr %i.za, i64 %.1.i.i1498
  store i8 96, ptr %i.zb, align 1, !tbaa !47
  %i.zc = load ptr, ptr %0, align 8, !tbaa !117
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  store i64 %.1.i.i1498, ptr %i.zd, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

switch.lookup3759:                                ; preds = %bb.b
  %i.ze = getelementptr inbounds nuw i8, ptr %.02093, i64 2
  %i.zf = load i16, ptr %i.ze, align 2, !tbaa !71
  %i.zg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.zf, i1 true)
  %i.zh = zext nneg i16 %i.zg to i64
  %switch.gep3760 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.zend_ast_export_ex.4, i64 %i.zh
  %switch.load3761 = load ptr, ptr %switch.gep3760, align 8
  br label %.loopexit1829

bb.gf:                                            ; preds = %bb.b
  %i.zi = getelementptr inbounds nuw i8, ptr %.02093, i64 2
  %i.zj = load i16, ptr %i.zi, align 2, !tbaa !71
  %i.zk = icmp eq i16 %i.zj, 13
  %.str.64..str.65 = select i1 %i.zk, ptr @.str.64, ptr @.str.65
  br label %bb.uw

bb.gg:                                            ; preds = %bb.b
  br label %bb.uw

bb.gh:                                            ; preds = %bb.b
  br label %bb.vv

bb.gi:                                            ; preds = %bb.b
  %i.zl = getelementptr inbounds nuw i8, ptr %.02093, i64 8
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_name(ptr noundef %0, ptr noundef %i.zm, i32 noundef 0, i32 noundef %3)
  %i.zn = load ptr, ptr %0, align 8, !tbaa !117   ; 3 uses
  %.not.i.i1500 = icmp eq ptr %i.zn, null
  br i1 %.not.i.i1500, label %bb.gk, label %bb.gj, !prof !22

bb.gj:                                            ; preds = %bb.gi
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !64
  %i.zq = add i64 %i.zp, 1                        ; 3 uses
  %i.zr = load i64, ptr %i.a, align 8, !tbaa !118
end_hunk_0
begin_hunk_1_@zend_ast_export_ex:bb.a
bb.vm:                                            ; preds = %bb.vl
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.ckg) #14
  %.pre2660 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1764

smart_str_appendc_ex.exit1764:                    ; preds = %bb.vl, %bb.vm
  %i.cki = phi ptr [ %i.cke, %bb.vl ], [ %.pre2660, %bb.vm ]
  %i.ckj = getelementptr i8, ptr %i.cki, i64 23
  %i.ckk = getelementptr i8, ptr %i.ckj, i64 %i.ckg
  store i8 41, ptr %i.ckk, align 1, !tbaa !47
  %i.ckl = load ptr, ptr %0, align 8, !tbaa !117
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckl, i64 16
  store i64 %i.ckg, ptr %i.ckm, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

.critedge851:                                     ; preds = %.loopexit1830
  %i.ckn = getelementptr inbounds nuw i8, ptr %.02093, i64 8
  %i.cko = load ptr, ptr %i.ckn, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.cko, i32 noundef 241, i32 noundef %3)
  %i.ckp = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i = icmp eq ptr %i.ckp, null
  br i1 %.not.i, label %bb.vo, label %bb.vn, !prof !22

bb.vn:                                            ; preds = %.critedge851
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.ckp, i64 16
  %i.ckr = load i64, ptr %i.ckq, align 8, !tbaa !64 ; 2 uses
  %i.cks = add i64 %i.ckr, 2                      ; 3 uses
  %i.ckt = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i = icmp ult i64 %i.cks, %i.ckt
  br i1 %.not12.i, label %smart_str_alloc.exit, label %bb.vo, !prof !112

bb.vo:                                            ; preds = %bb.vn, %.critedge851
  %.0.i = phi i64 [ 2, %.critedge851 ], [ %i.cks, %bb.vn ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i) #14
  %.pre2653 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2654 = getelementptr inbounds nuw i8, ptr %.pre2653, i64 16
  %.pre2655 = load i64, ptr %.phi.trans.insert2654, align 8, !tbaa !64
  br label %smart_str_alloc.exit

smart_str_alloc.exit:                             ; preds = %bb.vn, %bb.vo
  %i.cku = phi i64 [ %i.ckr, %bb.vn ], [ %.pre2655, %bb.vo ]
  %i.ckv = phi ptr [ %i.ckp, %bb.vn ], [ %.pre2653, %bb.vo ]
  %.1.i = phi i64 [ %i.cks, %bb.vn ], [ %.0.i, %bb.vo ]
  %i.ckw = getelementptr inbounds nuw i8, ptr %i.ckv, i64 24
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.ckw, i64 %i.cku
  %i.cky = load i16, ptr %.2751, align 1
  store i16 %i.cky, ptr %i.ckx, align 1
  %i.ckz = load ptr, ptr %0, align 8, !tbaa !117
  %i.cla = getelementptr inbounds nuw i8, ptr %i.ckz, i64 16
  store i64 %.1.i, ptr %i.cla, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

.loopexit1829.loopexit:                           ; preds = %bb.b
  br label %.loopexit1829

.loopexit1829.loopexit3779:                       ; preds = %bb.b
  br label %.loopexit1829

.loopexit1829:                                    ; preds = %bb.b, %.loopexit1829.loopexit3779, %switch.lookup3759, %.loopexit1829.loopexit
  %.3752 = phi ptr [ @.str.55, %.loopexit1829.loopexit ], [ @.str.56, %.loopexit1829.loopexit3779 ], [ %switch.load3761, %switch.lookup3759 ], [ @.str.69, %bb.b ] ; 2 uses
  %i.clb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.3752) #16 ; 3 uses
  %i.clc = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i877 = icmp eq ptr %i.clc, null
  br i1 %.not.i877, label %bb.vq, label %bb.vp, !prof !22

bb.vp:                                            ; preds = %.loopexit1829
  %i.cld = getelementptr inbounds nuw i8, ptr %i.clc, i64 16
  %i.cle = load i64, ptr %i.cld, align 8, !tbaa !64 ; 2 uses
  %i.clf = add i64 %i.cle, %i.clb                 ; 3 uses
  %i.clg = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i878 = icmp ult i64 %i.clf, %i.clg
  br i1 %.not12.i878, label %bb.vr, label %bb.vq, !prof !112

bb.vq:                                            ; preds = %bb.vp, %.loopexit1829
  %.0.i879 = phi i64 [ %i.clb, %.loopexit1829 ], [ %i.clf, %bb.vp ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i879) #14
  %.pre2663 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2664 = getelementptr inbounds nuw i8, ptr %.pre2663, i64 16
  %.pre2665 = load i64, ptr %.phi.trans.insert2664, align 8, !tbaa !64
  br label %bb.vr

bb.vr:                                            ; preds = %bb.vq, %bb.vp
  %i.clh = phi i64 [ %i.cle, %bb.vp ], [ %.pre2665, %bb.vq ]
  %i.cli = phi ptr [ %i.clc, %bb.vp ], [ %.pre2663, %bb.vq ]
  %.1.i880 = phi i64 [ %i.clf, %bb.vp ], [ %.0.i879, %bb.vq ] ; 2 uses
  %i.clj = getelementptr inbounds nuw i8, ptr %i.cli, i64 24
  %i.clk = getelementptr inbounds nuw i8, ptr %i.clj, i64 %i.clh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.clk, ptr nonnull align 1 %.3752, i64 %i.clb, i1 false)
  %i.cll = load ptr, ptr %0, align 8, !tbaa !117  ; 2 uses
  %i.clm = getelementptr inbounds nuw i8, ptr %i.cll, i64 16
  store i64 %.1.i880, ptr %i.clm, align 8, !tbaa !64
  %i.cln = add i64 %.1.i880, 1                    ; 4 uses
  %i.clo = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1766 = icmp ult i64 %i.cln, %i.clo
  br i1 %.not12.i.i1766, label %smart_str_appendc_ex.exit1769, label %bb.vs, !prof !112

bb.vs:                                            ; preds = %bb.vr
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.cln) #14
  %.pre2666 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1769

smart_str_appendc_ex.exit1769:                    ; preds = %bb.vr, %bb.vs
  %i.clp = phi ptr [ %i.cll, %bb.vr ], [ %.pre2666, %bb.vs ]
  %i.clq = getelementptr i8, ptr %i.clp, i64 23
  %i.clr = getelementptr i8, ptr %i.clq, i64 %i.cln
  store i8 40, ptr %i.clr, align 1, !tbaa !47
  %i.cls = load ptr, ptr %0, align 8, !tbaa !117
  %i.clt = getelementptr inbounds nuw i8, ptr %i.cls, i64 16
  store i64 %i.cln, ptr %i.clt, align 8, !tbaa !64
  %i.clu = getelementptr inbounds nuw i8, ptr %.02093, i64 8
  %i.clv = load ptr, ptr %i.clu, align 8, !tbaa !72
  tail call fastcc void @zend_ast_export_ex(ptr noundef %0, ptr noundef %i.clv, i32 noundef 0, i32 noundef %3)
  %i.clw = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i.i1770 = icmp eq ptr %i.clw, null
  br i1 %.not.i.i1770, label %bb.vu, label %bb.vt, !prof !22

bb.vt:                                            ; preds = %smart_str_appendc_ex.exit1769
  %i.clx = getelementptr inbounds nuw i8, ptr %i.clw, i64 16
  %i.cly = load i64, ptr %i.clx, align 8, !tbaa !64
  %i.clz = add i64 %i.cly, 1                      ; 3 uses
  %i.cma = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1771 = icmp ult i64 %i.clz, %i.cma
  br i1 %.not12.i.i1771, label %smart_str_appendc_ex.exit1774, label %bb.vu, !prof !112

bb.vu:                                            ; preds = %bb.vt, %smart_str_appendc_ex.exit1769
  %.0.i.i1772 = phi i64 [ 1, %smart_str_appendc_ex.exit1769 ], [ %i.clz, %bb.vt ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i1772) #14
  %.pre2667 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1774

smart_str_appendc_ex.exit1774:                    ; preds = %bb.vt, %bb.vu
  %i.cmb = phi ptr [ %i.clw, %bb.vt ], [ %.pre2667, %bb.vu ]
  %.1.i.i1773 = phi i64 [ %i.clz, %bb.vt ], [ %.0.i.i1772, %bb.vu ] ; 2 uses
  %i.cmc = getelementptr i8, ptr %i.cmb, i64 23
  %i.cmd = getelementptr i8, ptr %i.cmc, i64 %.1.i.i1773
  store i8 41, ptr %i.cmd, align 1, !tbaa !47
  %i.cme = load ptr, ptr %0, align 8, !tbaa !117
  %i.cmf = getelementptr inbounds nuw i8, ptr %i.cme, i64 16
  store i64 %.1.i.i1773, ptr %i.cmf, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

bb.vv:                                            ; preds = %bb.b, %bb.gu, %bb.gt, %bb.gp, %bb.go, %bb.gh
  %.4 = phi ptr [ @.str.76, %bb.gu ], [ @.str.70, %bb.gh ], [ @.str.72, %bb.go ], [ @.str.73, %bb.gp ], [ @.str.75, %bb.gt ], [ @.str.68, %bb.b ] ; 2 uses
  %i.cmg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.4) #16 ; 3 uses
  %i.cmh = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i872 = icmp eq ptr %i.cmh, null
  br i1 %.not.i872, label %bb.vx, label %bb.vw, !prof !22

bb.vw:                                            ; preds = %bb.vv
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.cmh, i64 16
  %i.cmj = load i64, ptr %i.cmi, align 8, !tbaa !64 ; 2 uses
  %i.cmk = add i64 %i.cmj, %i.cmg                 ; 3 uses
  %i.cml = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i873 = icmp ult i64 %i.cmk, %i.cml
  br i1 %.not12.i873, label %smart_str_alloc.exit876, label %bb.vx, !prof !112

bb.vx:                                            ; preds = %bb.vw, %bb.vv
  %.0.i874 = phi i64 [ %i.cmg, %bb.vv ], [ %i.cmk, %bb.vw ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i874) #14
  %.pre2649 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2650 = getelementptr inbounds nuw i8, ptr %.pre2649, i64 16
  %.pre2651 = load i64, ptr %.phi.trans.insert2650, align 8, !tbaa !64
  br label %smart_str_alloc.exit876

smart_str_alloc.exit876:                          ; preds = %bb.vw, %bb.vx
  %i.cmm = phi i64 [ %i.cmj, %bb.vw ], [ %.pre2651, %bb.vx ]
  %i.cmn = phi ptr [ %i.cmh, %bb.vw ], [ %.pre2649, %bb.vx ]
  %.1.i875 = phi i64 [ %i.cmk, %bb.vw ], [ %.0.i874, %bb.vx ] ; 2 uses
  %i.cmo = getelementptr inbounds nuw i8, ptr %i.cmn, i64 24
  %i.cmp = getelementptr inbounds nuw i8, ptr %i.cmo, i64 %i.cmm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cmp, ptr nonnull align 1 %.4, i64 %i.cmg, i1 false)
  %i.cmq = load ptr, ptr %0, align 8, !tbaa !117  ; 2 uses
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.cmq, i64 16
  store i64 %.1.i875, ptr %i.cmr, align 8, !tbaa !64
  %i.cms = getelementptr inbounds nuw i8, ptr %.02093, i64 8 ; 2 uses
  %i.cmt = load ptr, ptr %i.cms, align 8, !tbaa !72
  %.not819 = icmp eq ptr %i.cmt, null
  br i1 %.not819, label %zend_ast_export_list_ex.exit, label %bb.vy

bb.vy:                                            ; preds = %smart_str_alloc.exit876
  %i.cmu = add i64 %.1.i875, 1                    ; 4 uses
  %i.cmv = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i.i1776 = icmp ult i64 %i.cmu, %i.cmv
  br i1 %.not12.i.i1776, label %smart_str_appendc_ex.exit1779, label %bb.vz, !prof !112

bb.vz:                                            ; preds = %bb.vy
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %i.cmu) #14
  %.pre2652 = load ptr, ptr %0, align 8, !tbaa !117
  br label %smart_str_appendc_ex.exit1779

smart_str_appendc_ex.exit1779:                    ; preds = %bb.vy, %bb.vz
  %i.cmw = phi ptr [ %i.cmq, %bb.vy ], [ %.pre2652, %bb.vz ]
  %i.cmx = getelementptr i8, ptr %i.cmw, i64 23
  %i.cmy = getelementptr i8, ptr %i.cmx, i64 %i.cmu
  store i8 32, ptr %i.cmy, align 1, !tbaa !47
  %i.cmz = load ptr, ptr %0, align 8, !tbaa !117
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cmz, i64 16
  store i64 %i.cmu, ptr %i.cna, align 8, !tbaa !64
  br label %.backedge

.loopexit1831.sink.split:                         ; preds = %switch.lookup, %switch.lookup3752
  %switch.tableidx3751.sink = phi i16 [ %switch.tableidx3751, %switch.lookup3752 ], [ %switch.tableidx, %switch.lookup ]
  %switch.table.zend_ast_export_ex.2.sink = phi ptr [ @switch.table.zend_ast_export_ex.2, %switch.lookup3752 ], [ @switch.table.zend_ast_export_ex, %switch.lookup ]
  %4 = zext nneg i16 %switch.tableidx3751.sink to i64
  %switch.gep3753 = getelementptr inbounds nuw [8 x i8], ptr %switch.table.zend_ast_export_ex.2.sink, i64 %4
  %switch.load3754 = load ptr, ptr %switch.gep3753, align 8
  br label %.loopexit1831

.loopexit1831:                                    ; preds = %bb.b, %.loopexit1831.sink.split
  %.5 = phi ptr [ %switch.load3754, %.loopexit1831.sink.split ], [ @.str.71, %bb.b ] ; 2 uses
  %i.cnb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.5) #16 ; 3 uses
  %i.cnc = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i867 = icmp eq ptr %i.cnc, null
  br i1 %.not.i867, label %bb.wb, label %bb.wa, !prof !22

bb.wa:                                            ; preds = %.loopexit1831
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.cnc, i64 16
  %i.cne = load i64, ptr %i.cnd, align 8, !tbaa !64 ; 2 uses
  %i.cnf = add i64 %i.cne, %i.cnb                 ; 3 uses
  %i.cng = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i868 = icmp ult i64 %i.cnf, %i.cng
  br i1 %.not12.i868, label %smart_str_alloc.exit871, label %bb.wb, !prof !112

bb.wb:                                            ; preds = %bb.wa, %.loopexit1831
  %.0.i869 = phi i64 [ %i.cnb, %.loopexit1831 ], [ %i.cnf, %bb.wa ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i869) #14
  %.pre2680 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2681 = getelementptr inbounds nuw i8, ptr %.pre2680, i64 16
  %.pre2682 = load i64, ptr %.phi.trans.insert2681, align 8, !tbaa !64
  br label %smart_str_alloc.exit871

smart_str_alloc.exit871:                          ; preds = %bb.wa, %bb.wb
  %i.cnh = phi i64 [ %i.cne, %bb.wa ], [ %.pre2682, %bb.wb ]
  %i.cni = phi ptr [ %i.cnc, %bb.wa ], [ %.pre2680, %bb.wb ]
  %.1.i870 = phi i64 [ %i.cnf, %bb.wa ], [ %.0.i869, %bb.wb ]
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cni, i64 24
  %i.cnk = getelementptr inbounds nuw i8, ptr %i.cnj, i64 %i.cnh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cnk, ptr nonnull align 1 %.5, i64 %i.cnb, i1 false)
  %i.cnl = load ptr, ptr %0, align 8, !tbaa !117
  %i.cnm = getelementptr inbounds nuw i8, ptr %i.cnl, i64 16
  store i64 %.1.i870, ptr %i.cnm, align 8, !tbaa !64
  br label %zend_ast_export_list_ex.exit

zend_ast_export_name.exit:                        ; preds = %.thread1816, %bb.nx, %.thread1815, %bb.kq
  %i.cnn = getelementptr inbounds nuw i8, ptr %.02093, i64 16 ; 2 uses
  %i.cno = load ptr, ptr %i.cnn, align 8, !tbaa !72
  %.not811 = icmp eq ptr %i.cno, null
  br i1 %.not811, label %zend_ast_export_list_ex.exit, label %bb.wc

bb.wc:                                            ; preds = %zend_ast_export_name.exit
  %i.cnp = load ptr, ptr %0, align 8, !tbaa !117  ; 3 uses
  %.not.i862 = icmp eq ptr %i.cnp, null
  br i1 %.not.i862, label %bb.we, label %bb.wd, !prof !22

bb.wd:                                            ; preds = %bb.wc
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.cnp, i64 16
  %i.cnr = load i64, ptr %i.cnq, align 8, !tbaa !64 ; 2 uses
  %i.cns = add i64 %i.cnr, 3                      ; 3 uses
  %i.cnt = load i64, ptr %i.a, align 8, !tbaa !118
  %.not12.i863 = icmp ult i64 %i.cns, %i.cnt
  br i1 %.not12.i863, label %smart_str_alloc.exit866, label %bb.we, !prof !112

bb.we:                                            ; preds = %bb.wd, %bb.wc
  %.0.i864 = phi i64 [ 3, %bb.wc ], [ %i.cns, %bb.wd ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i864) #14
  %.pre2565 = load ptr, ptr %0, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert2566 = getelementptr inbounds nuw i8, ptr %.pre2565, i64 16
  %.pre2567 = load i64, ptr %.phi.trans.insert2566, align 8, !tbaa !64
  br label %smart_str_alloc.exit866

smart_str_alloc.exit866:                          ; preds = %bb.wd, %bb.we
  %i.cnu = phi i64 [ %i.cnr, %bb.wd ], [ %.pre2567, %bb.we ]
  %i.cnv = phi ptr [ %i.cnp, %bb.wd ], [ %.pre2565, %bb.we ]
  %.1.i865 = phi i64 [ %i.cns, %bb.wd ], [ %.0.i864, %bb.we ]
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.cnv, i64 24
  %i.cnx = getelementptr inbounds nuw i8, ptr %i.cnw, i64 %i.cnu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cnx, ptr noundef nonnull align 1 dereferenceable(3) @.str.82, i64 3, i1 false)
  %i.cny = load ptr, ptr %0, align 8, !tbaa !117
  %i.cnz = getelementptr inbounds nuw i8, ptr %i.cny, i64 16
  store i64 %.1.i865, ptr %i.cnz, align 8, !tbaa !64
  br label %.backedge

zend_ast_export_list_ex.exit:                     ; preds = %smart_str_alloc.exit936, %tailrecurse.backedge, %.backedge, %smart_str_alloc.exit876, %zend_ast_export_name.exit, %bb.dx, %bb.dj, %bb.dg, %bb.a, %bb.dw, %.loopexit, %.thread1803, %smart_str_appendc_ex.exit1764, %smart_str_alloc.exit, %smart_str_appendc_ex.exit1754, %smart_str_appendc_ex.exit1744, %bb.c, %smart_str_appendl.exit1381, %smart_str_appendc_ex.exit, %smart_str_appendl.exit1376, %smart_str_appendc_ex.exit1449, %smart_str_appendc_ex.exit1459, %smart_str_appendc_ex.exit1469, %bb.du, %bb.dv, %smart_str_appendc_ex.exit1474, %bb.fi, %smart_str_appendc_ex.exit1489, %bb.ft, %smart_str_appendc_ex.exit1499, %smart_str_appendc_ex.exit1504, %smart_str_alloc.exit1226, %smart_str_appendc_ex.exit1519, %smart_str_alloc.exit1221, %smart_str_alloc.exit1216, %smart_str_appendc_ex.exit1539, %smart_str_appendc_ex.exit1549, %smart_str_alloc.exit1211, %smart_str_alloc.exit1206, %smart_str_alloc.exit1201, %smart_str_alloc.exit1181, %smart_str_appendc_ex.exit1589, %smart_str_appendc_ex.exit1594, %smart_str_appendc_ex.exit1599, %smart_str_appendc_ex.exit1604, %bb.mh, %smart_str_appendc_ex.exit1609, %smart_str_alloc.exit1081, %bb.oq, %smart_str_appendc_ex.exit1664, %smart_str_appendc_ex.exit1674, %smart_str_appendc_ex.exit1689, %smart_str_alloc.exit956, %smart_str_appendc_ex.exit1729, %smart_str_appendc_ex.exit1734, %smart_str_appendc_ex.exit1439, %smart_str_appendc_ex.exit1444, %smart_str_alloc.exit1321, %smart_str_appendc_ex.exit1574, %bb.jj, %smart_str_appendc_ex.exit1584, %bb.ke, %smart_str_appendc_ex.exit1624, %smart_str_appendc_ex.exit1619, %bb.nr, %bb.nq, %smart_str_appendc_ex.exit1639, %smart_str_appendc_ex.exit1634, %smart_str_appendc_ex.exit1649, %smart_str_alloc.exit1031, %smart_str_appendc_ex.exit1654, %bb.pv, %smart_str_appendc_ex.exit1684, %bb.rf, %bb.ta, %bb.sz, %smart_str_appendc_ex.exit1434, %smart_str_alloc.exit1331, %smart_str_alloc.exit871, %smart_str_appendc_ex.exit1774
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @zend_ast_with_attributes(ptr nofree noundef captures(ret: address, provenance) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !70
  switch i16 %i.a, label %bb.k [
    i16 68, label %bb.b
    i16 69, label %bb.b
    i16 70, label %bb.b
    i16 72, label %bb.b
    i16 73, label %bb.b
    i16 71, label %bb.c
    i16 774, label %bb.d
    i16 1536, label %bb.e
    i16 1026, label %bb.e
    i16 776, label %bb.f
    i16 139, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.b, align 8, !tbaa !72
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.c, align 8, !tbaa !72
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.d, align 8, !tbaa !72
  br label %bb.l

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.e, align 8, !tbaa !72
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.f, align 8, !tbaa !72
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !85   ; 5 uses
  %i.i = icmp ugt i32 %i.h, 3
  %i.j = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 4, 0) %i.h)
  %i.k = icmp samesign ult i32 %i.j, 2
  %or.cond.i = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.h, label %zend_ast_list_add.exit

bb.h:                                             ; preds = %bb.g
  %i.l = zext i32 %i.h to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, 16
  %i.o = shl i32 %i.h, 1
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 456), align 8, !tbaa !17 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20   ; 3 uses
  %i.t = add nuw nsw i64 %i.q, 16                 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.w, %i.x
  %.not.i.i.i.i = icmp ugt i64 %i.t, %i.y
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  store ptr %i.z, ptr %i.r, align 8, !tbaa !20
  br label %zend_ast_realloc.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aa = add nuw nsw i64 %i.q, 40
  %i.ab = ptrtoint ptr %i.r to i64
  %i.ac = sub i64 %i.w, %i.ab
  %..i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.ac) ; 2 uses
  %i.ad = tail call noalias ptr @_emalloc(i64 noundef %..i.i.i.i) #13 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.t
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.r, ptr %i.ai, align 8, !tbaa !23
  store ptr %i.ad, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 456), align 8, !tbaa !17
  br label %zend_ast_realloc.exit.i

zend_ast_realloc.exit.i:                          ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.i ], [ %i.ae, %bb.j ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(1) %0, i64 range(i64 16, 34359738377) %i.n, i1 false)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !85
  br label %zend_ast_list_add.exit

zend_ast_list_add.exit:                           ; preds = %bb.g, %zend_ast_realloc.exit.i
  %i.aj = phi i32 [ %.pre.i, %zend_ast_realloc.exit.i ], [ %i.h, %bb.g ] ; 2 uses
  %.0.i = phi ptr [ %.0.i.i.i.i, %zend_ast_realloc.exit.i ], [ %0, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.am = add i32 %i.aj, 1
  store i32 %i.am, ptr %i.al, align 8, !tbaa !85
  %i.an = zext i32 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  store ptr %1, ptr %i.ao, align 8, !tbaa !72
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  unreachable

bb.l:                                             ; preds = %zend_ast_list_add.exit, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %0, %bb.b ], [ %0, %bb.c ], [ %0, %bb.d ], [ %0, %bb.e ], [ %0, %bb.f ], [ %.0.i, %zend_ast_list_add.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @rc_dtor_func(ptr noundef) local_unnamed_addr #2

end_hunk_1
