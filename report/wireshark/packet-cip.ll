Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-cip?download=true
inline.NumInlined: 204
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@dissect_cip_class_cm:bb.a
  %i.se = getelementptr inbounds nuw i8, ptr %4, i64 38
  store i16 0, ptr %i.se, align 2
  %i.sf = load i32, ptr @hf_cip_epath, align 4
  %i.sg = call ptr @proto_tree_add_item(ptr noundef %i.ry, i32 noundef %i.sf, ptr noundef %0, i32 noundef %i.rw, i32 noundef %i.rq, i32 noundef 0), !inline_history !10 ; 2 uses
  %.not.i.i.i339.i = icmp eq ptr %i.sg, null
  br i1 %.not.i.i.i339.i, label %proto_item_set_hidden.exit.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.sh = getelementptr i8, ptr %i.sg, i64 40
  %i.si = load ptr, ptr %i.sh, align 8            ; 2 uses
  %.not5.i.i.i340.i = icmp eq ptr %i.si, null
  br i1 %.not5.i.i.i340.i, label %proto_item_set_hidden.exit.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.sj = getelementptr i8, ptr %i.si, i64 28     ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4
  %i.sl = or i32 %i.sk, 1
  store i32 %i.sl, ptr %i.sj, align 4
  br label %proto_item_set_hidden.exit.i.i.i

proto_item_set_hidden.exit.i.i.i:                 ; preds = %bb.cj, %bb.ci, %bb.ch
  %.not.i341.i = icmp eq i8 %i.ro, 0
  br i1 %.not.i341.i, label %dissect_epath.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %proto_item_set_hidden.exit.i.i.i
  %i.sm = call i32 @dissect_cip_segment_single(ptr noundef %1, ptr noundef %0, i32 noundef %i.rw, ptr noundef %i.ry, ptr noundef %i.rz, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %4, ptr noundef null, i32 noundef 1, ptr noundef null, i1 noundef zeroext false), !inline_history !10 ; 2 uses
  %i.sn = icmp eq i32 %i.sm, 0
  br i1 %i.sn, label %dissect_epath.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i
  %i.so = phi i32 [ %i.ss, %.lr.ph.i.i.i ], [ %i.sm, %.lr.ph.i.preheader.i.i ]
  %.03139.i33.i.i = phi i32 [ %i.sp, %.lr.ph.i.i.i ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.sp = add nuw nsw i32 %.03139.i33.i.i, %i.so  ; 3 uses
  %i.sq = icmp samesign ult i32 %i.sp, %i.rq
  br i1 %i.sq, label %.lr.ph.i.i.i, label %dissect_epath.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.rz, ptr noundef nonnull @.str.172), !inline_history !10
  %i.sr = add nuw nsw i32 %i.sp, %i.rw
  %i.ss = call i32 @dissect_cip_segment_single(ptr noundef %1, ptr noundef %0, i32 noundef %i.sr, ptr noundef %i.ry, ptr noundef %i.rz, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull %4, ptr noundef null, i32 noundef 1, ptr noundef null, i1 noundef zeroext false), !inline_history !10 ; 2 uses
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %dissect_epath.exit.i.i, label %.lr.ph.i.i

dissect_epath.exit.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i, %.lr.ph.i.preheader.i.i, %proto_item_set_hidden.exit.i.i.i
  %i.su = getelementptr i8, ptr %1, i64 80
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = getelementptr i8, ptr %i.sv, i64 53
  %i.sx = load i16, ptr %i.sw, align 1
  %i.sy = and i16 %i.sx, 8
  %.not.i.i342.i = icmp eq i16 %i.sy, 0
  br i1 %.not.i.i342.i, label %bb.ck, label %save_route_connection_path.exit.i.i

bb.ck:                                            ; preds = %dissect_epath.exit.i.i
  %i.sz = call ptr @wmem_file_scope()
  %i.ta = load i32, ptr @proto_cip, align 4
  %i.tb = call ptr @p_get_proto_data(ptr noundef %i.sz, ptr noundef %1, i32 noundef %i.ta, i32 noundef 0) ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.tb, null
  br i1 %.not10.i.i.i, label %save_route_connection_path.exit.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.tc = call ptr @wmem_file_scope()
  %i.td = zext nneg i32 %i.rq to i64              ; 2 uses
  %i.te = call noalias ptr @wmem_alloc(ptr noundef %i.tc, i64 noundef %i.td) #18 ; 2 uses
  %i.tf = getelementptr i8, ptr %i.tb, i64 32
  store ptr %i.te, ptr %i.tf, align 8
  %i.tg = getelementptr i8, ptr %i.tb, i64 24
  store i32 %i.rp, ptr %i.tg, align 8
  %i.th = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef %i.te, i32 noundef range(i32 8, 66054) %i.rw, i64 noundef %i.td) ; 0 uses
  br label %save_route_connection_path.exit.i.i

save_route_connection_path.exit.i.i:              ; preds = %bb.cl, %bb.ck, %dissect_epath.exit.i.i
  call void @enip_close_cip_connection(ptr noundef %1, ptr noundef nonnull %5)
  %i.ti = call ptr @wmem_file_scope()
  %i.tj = load i32, ptr @proto_enip, align 4
  %i.tk = call ptr @p_get_proto_data(ptr noundef %i.ti, ptr noundef %1, i32 noundef %i.tj, i32 noundef 1) ; 10 uses
  %.not.i30.i.i = icmp eq ptr %i.tk, null
  br i1 %.not.i30.i.i, label %dissect_cip_cm_fwd_close_req.exit.i, label %bb.cm

bb.cm:                                            ; preds = %save_route_connection_path.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8
  %i.tl = load i32, ptr @ett_connection_info, align 4
  %i.tm = call ptr @proto_tree_add_subtree(ptr noundef %i.qf, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.tl, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.3755) ; 8 uses
  %i.tn = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i.i31.i.i = icmp eq ptr %i.tn, null
  br i1 %.not.i.i31.i.i, label %proto_item_set_generated.exit.i.i343.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.to = getelementptr i8, ptr %i.tn, i64 40
  %i.tp = load ptr, ptr %i.to, align 8            ; 2 uses
  %.not5.i.i32.i.i = icmp eq ptr %i.tp, null
  br i1 %.not5.i.i32.i.i, label %proto_item_set_generated.exit.i.i343.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.tq = getelementptr i8, ptr %i.tp, i64 28     ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4
  %i.ts = or i32 %i.tr, 2
  store i32 %i.ts, ptr %i.tq, align 4
  br label %proto_item_set_generated.exit.i.i343.i

proto_item_set_generated.exit.i.i343.i:           ; preds = %bb.co, %bb.cn, %bb.cm
  %i.tt = call ptr @wmem_file_scope()
  %i.tu = load i32, ptr @proto_enip, align 4
  %i.tv = call ptr @p_get_proto_data(ptr noundef %i.tt, ptr noundef %1, i32 noundef %i.tu, i32 noundef 1) ; 2 uses
  %.not.i44.i.i.i = icmp eq ptr %i.tv, null
  br i1 %.not.i44.i.i.i, label %mark_cip_connection.exit.i.i346.i, label %bb.cp

bb.cp:                                            ; preds = %proto_item_set_generated.exit.i.i343.i
  %i.tw = load i32, ptr @hf_cip_connection, align 4
  %i.tx = getelementptr i8, ptr %i.tv, i64 264
  %i.ty = load i32, ptr %i.tx, align 8
  %i.tz = call ptr @proto_tree_add_uint(ptr noundef %i.tm, i32 noundef %i.tw, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ty) ; 2 uses
  %.not.i.i.i.i344.i = icmp eq ptr %i.tz, null
  br i1 %.not.i.i.i.i344.i, label %mark_cip_connection.exit.i.i346.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ua = getelementptr i8, ptr %i.tz, i64 40
  %i.ub = load ptr, ptr %i.ua, align 8            ; 2 uses
  %.not5.i.i.i.i345.i = icmp eq ptr %i.ub, null
  br i1 %.not5.i.i.i.i345.i, label %mark_cip_connection.exit.i.i346.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.uc = getelementptr i8, ptr %i.ub, i64 28     ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 4
  %i.ue = or i32 %i.ud, 2
  store i32 %i.ue, ptr %i.uc, align 4
  br label %mark_cip_connection.exit.i.i346.i

mark_cip_connection.exit.i.i346.i:                ; preds = %bb.cr, %bb.cq, %bb.cp, %proto_item_set_generated.exit.i.i343.i
  call void @display_fwd_open_connection_path(ptr noundef nonnull %i.tk, ptr noundef %i.tm, ptr noundef %0, ptr noundef %1)
  %i.uf = load i32, ptr @hf_cip_fwd_open_in, align 4
  %i.ug = getelementptr i8, ptr %i.tk, i64 104
  %i.uh = load i32, ptr %i.ug, align 8
  %i.ui = call ptr @proto_tree_add_uint(ptr noundef %i.tm, i32 noundef %i.uf, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.uh) ; 2 uses
  %.not.i45.i.i.i = icmp eq ptr %i.ui, null
  br i1 %.not.i45.i.i.i, label %proto_item_set_generated.exit47.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %mark_cip_connection.exit.i.i346.i
  %i.uj = getelementptr i8, ptr %i.ui, i64 40
  %i.uk = load ptr, ptr %i.uj, align 8            ; 2 uses
  %.not5.i46.i.i.i = icmp eq ptr %i.uk, null
  br i1 %.not5.i46.i.i.i, label %proto_item_set_generated.exit47.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ul = getelementptr i8, ptr %i.uk, i64 28     ; 2 uses
  %i.um = load i32, ptr %i.ul, align 4
  %i.un = or i32 %i.um, 2
  store i32 %i.un, ptr %i.ul, align 4
  br label %proto_item_set_generated.exit47.i.i.i

proto_item_set_generated.exit47.i.i.i:            ; preds = %bb.ct, %bb.cs, %mark_cip_connection.exit.i.i346.i
  %i.uo = load i32, ptr @hf_cip_cm_ot_api, align 4
  %i.up = getelementptr i8, ptr %i.tk, i64 172
  %i.uq = load i32, ptr %i.up, align 4
  %i.ur = call ptr @proto_tree_add_uint(ptr noundef %i.tm, i32 noundef %i.uo, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.uq) ; 2 uses
  %.not.i48.i.i.i = icmp eq ptr %i.ur, null
  br i1 %.not.i48.i.i.i, label %proto_item_set_generated.exit50.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %proto_item_set_generated.exit47.i.i.i
  %i.us = getelementptr i8, ptr %i.ur, i64 40
  %i.ut = load ptr, ptr %i.us, align 8            ; 2 uses
  %.not5.i49.i.i.i = icmp eq ptr %i.ut, null
  br i1 %.not5.i49.i.i.i, label %proto_item_set_generated.exit50.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.uu = getelementptr i8, ptr %i.ut, i64 28     ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 4
  %i.uw = or i32 %i.uv, 2
  store i32 %i.uw, ptr %i.uu, align 4
  br label %proto_item_set_generated.exit50.i.i.i

proto_item_set_generated.exit50.i.i.i:            ; preds = %bb.cv, %bb.cu, %proto_item_set_generated.exit47.i.i.i
  %i.ux = load i32, ptr @hf_cip_cm_to_api, align 4
  %i.uy = getelementptr i8, ptr %i.tk, i64 244
  %i.uz = load i32, ptr %i.uy, align 4
  %i.va = call ptr @proto_tree_add_uint(ptr noundef %i.tm, i32 noundef %i.ux, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.uz) ; 2 uses
  %.not.i51.i.i.i = icmp eq ptr %i.va, null
  br i1 %.not.i51.i.i.i, label %proto_item_set_generated.exit53.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %proto_item_set_generated.exit50.i.i.i
  %i.vb = getelementptr i8, ptr %i.va, i64 40
  %i.vc = load ptr, ptr %i.vb, align 8            ; 2 uses
  %.not5.i52.i.i.i = icmp eq ptr %i.vc, null
  br i1 %.not5.i52.i.i.i, label %proto_item_set_generated.exit53.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.vd = getelementptr i8, ptr %i.vc, i64 28     ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 4
  %i.vf = or i32 %i.ve, 2
  store i32 %i.vf, ptr %i.vd, align 4
  br label %proto_item_set_generated.exit53.i.i.i

proto_item_set_generated.exit53.i.i.i:            ; preds = %bb.cx, %bb.cw, %proto_item_set_generated.exit50.i.i.i
  %i.vg = getelementptr i8, ptr %i.tk, i64 168
  %i.vh = load i32, ptr %i.vg, align 8
  %i.vi = getelementptr i8, ptr %i.tk, i64 12
  %i.vj = load i32, ptr %i.vi, align 4
  %i.vk = uitofp i32 %i.vj to float               ; 2 uses
  %i.vl = getelementptr i8, ptr %i.tk, i64 240
  %i.vm = load i32, ptr %i.vl, align 8
  %i.vn = uitofp i32 %i.vm to float
  %i.vo = uitofp i32 %i.vh to float
  %i.vp = insertelement <2 x float> poison, float %i.vo, i64 0
  %i.vq = insertelement <2 x float> %i.vp, float %i.vn, i64 1
  %i.vr = fdiv nnan <2 x float> %i.vq, splat (float 1.000000e+03) ; 2 uses
  %i.vs = extractelement <2 x float> %i.vr, i64 0
  %i.vt = fmul float %i.vs, %i.vk
  %i.vu = extractelement <2 x float> %i.vr, i64 1
  %i.vv = fmul float %i.vu, %i.vk
  %i.vw = load i32, ptr @hf_cip_cm_ot_timeout, align 4
  %i.vx = call ptr @proto_tree_add_float(ptr noundef %i.tm, i32 noundef %i.vw, ptr noundef %0, i32 noundef 0, i32 noundef 0, float noundef %i.vt) ; 2 uses
  %.not.i54.i.i.i = icmp eq ptr %i.vx, null
  br i1 %.not.i54.i.i.i, label %proto_item_set_generated.exit56.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %proto_item_set_generated.exit53.i.i.i
  %i.vy = getelementptr i8, ptr %i.vx, i64 40
  %i.vz = load ptr, ptr %i.vy, align 8            ; 2 uses
  %.not5.i55.i.i.i = icmp eq ptr %i.vz, null
  br i1 %.not5.i55.i.i.i, label %proto_item_set_generated.exit56.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.wa = getelementptr i8, ptr %i.vz, i64 28     ; 2 uses
  %i.wb = load i32, ptr %i.wa, align 4
  %i.wc = or i32 %i.wb, 2
  store i32 %i.wc, ptr %i.wa, align 4
  br label %proto_item_set_generated.exit56.i.i.i

proto_item_set_generated.exit56.i.i.i:            ; preds = %bb.cz, %bb.cy, %proto_item_set_generated.exit53.i.i.i
  %i.wd = load i32, ptr @hf_cip_cm_to_timeout, align 4
  %i.we = call ptr @proto_tree_add_float(ptr noundef %i.tm, i32 noundef %i.wd, ptr noundef %0, i32 noundef 0, i32 noundef 0, float noundef %i.vv) ; 2 uses
  %.not.i57.i.i.i = icmp eq ptr %i.we, null
  br i1 %.not.i57.i.i.i, label %proto_item_set_generated.exit59.i.i.i, label %bb.da

bb.da:                                            ; preds = %proto_item_set_generated.exit56.i.i.i
  %i.wf = getelementptr i8, ptr %i.we, i64 40
  %i.wg = load ptr, ptr %i.wf, align 8            ; 2 uses
  %.not5.i58.i.i.i = icmp eq ptr %i.wg, null
  br i1 %.not5.i58.i.i.i, label %proto_item_set_generated.exit59.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.wh = getelementptr i8, ptr %i.wg, i64 28     ; 2 uses
  %i.wi = load i32, ptr %i.wh, align 4
  %i.wj = or i32 %i.wi, 2
  store i32 %i.wj, ptr %i.wh, align 4
  br label %proto_item_set_generated.exit59.i.i.i

proto_item_set_generated.exit59.i.i.i:            ; preds = %bb.db, %bb.da, %proto_item_set_generated.exit56.i.i.i
  %i.wk = getelementptr i8, ptr %i.tk, i64 16     ; 3 uses
  %i.wl = load i8, ptr %i.wk, align 8, !range !8, !noundef !9
  %i.wm = trunc nuw i8 %i.wl to i1
  br i1 %i.wm, label %bb.dc, label %proto_item_set_generated.exit62.i.i.i

bb.dc:                                            ; preds = %proto_item_set_generated.exit59.i.i.i
  %i.wn = load i32, ptr @hf_cip_safety_nte_ms, align 4
  %i.wo = getelementptr i8, ptr %i.tk, i64 48
  %i.wp = load float, ptr %i.wo, align 8
  %i.wq = call ptr @proto_tree_add_float(ptr noundef %i.tm, i32 noundef %i.wn, ptr noundef %0, i32 noundef 0, i32 noundef 0, float noundef %i.wp) ; 2 uses
  %.not.i60.i.i.i = icmp eq ptr %i.wq, null
  br i1 %.not.i60.i.i.i, label %proto_item_set_generated.exit62.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.wr = getelementptr i8, ptr %i.wq, i64 40
  %i.ws = load ptr, ptr %i.wr, align 8            ; 2 uses
  %.not5.i61.i.i.i = icmp eq ptr %i.ws, null
  br i1 %.not5.i61.i.i.i, label %proto_item_set_generated.exit62.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wt = getelementptr i8, ptr %i.ws, i64 28     ; 2 uses
  %i.wu = load i32, ptr %i.wt, align 4
  %i.wv = or i32 %i.wu, 2
  store i32 %i.wv, ptr %i.wt, align 4
  br label %proto_item_set_generated.exit62.i.i.i

proto_item_set_generated.exit62.i.i.i:            ; preds = %bb.de, %bb.dd, %bb.dc, %proto_item_set_generated.exit59.i.i.i
  %i.ww = load i8, ptr %i.wk, align 8, !range !8, !noundef !9
  %i.wx = trunc nuw i8 %i.ww to i1
  br i1 %i.wx, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %proto_item_set_generated.exit62.i.i.i
  %i.wy = load ptr, ptr %i.cd, align 8
  call void @col_append_str(ptr noundef %i.wy, i32 noundef 25, ptr noundef nonnull @.str.3235)
  call void @add_safety_data_type_to_info_column(ptr noundef %1, i32 noundef 1, ptr noundef %i.wk)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %proto_item_set_generated.exit62.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %dissect_cip_cm_fwd_close_req.exit.i

dissect_cip_cm_fwd_close_req.exit.i:              ; preds = %bb.dg, %save_route_connection_path.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.dv

bb.dh:                                            ; preds = %bb.cd
  %i.wz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef range(i32 2, 513) %i.qd)
  %i.xa = and i8 %i.wz, 15
  %i.xb = load i32, ptr @hf_cip_cm_priority, align 4
  %i.xc = call ptr @proto_tree_add_item(ptr noundef %i.qf, i32 noundef %i.xb, ptr noundef %0, i32 noundef range(i32 2, 513) %i.qd, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.xd = load i32, ptr @hf_cip_cm_tick_time, align 4
  %i.xe = call ptr @proto_tree_add_item(ptr noundef %i.qf, i32 noundef %i.xd, ptr noundef %0, i32 noundef range(i32 2, 513) %i.qd, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.xf = add nuw nsw i32 %i.qa, 3                ; 2 uses
  %i.xg = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.xf)
  %i.xh = load i32, ptr @hf_cip_cm_timeout_tick, align 4
  %i.xi = call ptr @proto_tree_add_item(ptr noundef %i.qf, i32 noundef %i.xh, ptr noundef %0, i32 noundef %i.xf, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.xj = zext nneg i8 %i.xa to i32
  %i.xk = zext i8 %i.xg to i32
  %i.xl = shl nuw nsw i32 %i.xk, %i.xj
  %i.xm = load i32, ptr @hf_cip_cm_timeout, align 4
  %i.xn = call ptr @proto_tree_add_uint(ptr noundef %i.qf, i32 noundef %i.xm, ptr noundef %0, i32 noundef range(i32 2, 513) %i.qd, i32 noundef 2, i32 noundef %i.xl) ; 0 uses
  %i.xo = add nuw nsw i32 %i.qa, 4                ; 2 uses
  %i.xp = call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.xo) ; 2 uses
  %i.xq = load i32, ptr @hf_cip_cm_msg_req_size, align 4
  %i.xr = call ptr @proto_tree_add_item(ptr noundef %i.qf, i32 noundef %i.xq, ptr noundef %0, i32 noundef %i.xo, i32 noundef 2, i32 noundef -2147483648) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.xs = add nuw nsw i32 %i.qa, 6                ; 4 uses
  %i.xt = zext i16 %i.xp to i32                   ; 5 uses
  %i.xu = load i32, ptr @ett_cm_mes_req, align 4
  %i.xv = call ptr @proto_tree_add_subtree(ptr noundef %i.qf, ptr noundef %0, i32 noundef %i.xs, i32 noundef %i.xt, i32 noundef %i.xu, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3757)
  %i.xw = load ptr, ptr %i.cd, align 8
  call void @col_append_str(ptr noundef %i.xw, i32 noundef 25, ptr noundef nonnull @.str.180)
  %i.xx = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.xs, i32 noundef %i.xt)
  %i.xy = call ptr @wmem_file_scope()
  %i.xz = load i32, ptr @proto_cip, align 4
  %i.ya = call ptr @p_get_proto_data(ptr noundef %i.xy, ptr noundef %1, i32 noundef %i.xz, i32 noundef 0) ; 2 uses
  %.not.i347.i = icmp eq ptr %i.ya, null
  br i1 %.not.i347.i, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.yb = getelementptr i8, ptr %i.ya, i64 40     ; 2 uses
  %i.yc = load ptr, ptr %i.yb, align 8            ; 2 uses
  %i.yd = icmp eq ptr %i.yc, null
  br i1 %i.yd, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ye = call ptr @wmem_file_scope()
  %i.yf = call noalias dereferenceable_or_null(64) ptr @wmem_alloc0(ptr noundef %i.ye, i64 noundef 64) #18 ; 2 uses
  store ptr %i.yf, ptr %i.yb, align 8
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %.058.i.i = phi ptr [ %i.yf, %bb.dj ], [ null, %bb.dh ], [ %i.yc, %bb.di ]
  %i.yg = load ptr, ptr %i.a, align 8
  call void @dissect_cip_data(ptr noundef %i.xv, ptr noundef %i.xx, i32 noundef 0, ptr noundef %1, ptr noundef %.058.i.i, ptr noundef %i.yg, i1 noundef zeroext false)
  %i.yh = and i32 %i.xt, 1
  %.not61.i.i = icmp eq i32 %i.yh, 0
  br i1 %.not61.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.yi = load i32, ptr @hf_cip_pad8, align 4
  %i.yj = add nuw nsw i32 %i.xs, %i.xt
  %i.yk = call ptr @proto_tree_add_item(ptr noundef %i.qf, i32 noundef %i.yi, ptr noundef %0, i32 noundef %i.yj, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.yl = add i16 %i.xp, 1
  %.pre.i.i = zext i16 %i.yl to i32
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.pre-phi.i.i = phi i32 [ %.pre.i.i, %bb.dl ], [ %i.xt, %bb.dk ] ; 3 uses
  %i.ym = add nuw nsw i32 %.pre-phi.i.i, %i.xs    ; 2 uses
  %i.yn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ym) ; 2 uses
  %i.yo = zext i8 %i.yn to i32                    ; 2 uses
  %i.yp = shl nuw nsw i32 %i.yo, 1                ; 4 uses
  %i.yq = load i32, ptr @hf_cip_cm_route_path_size, align 4
  %i.yr = call ptr @proto_tree_add_item(ptr noundef %i.qf, i32 noundef %i.yq, ptr noundef %0, i32 noundef %i.ym, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.ys = load i32, ptr @hf_cip_reserved8, align 4
  %i.yt = add nuw nsw i32 %i.qa, 7
  %i.yu = add nuw nsw i32 %i.yt, %.pre-phi.i.i
  %i.yv = call ptr @proto_tree_add_item(ptr noundef %i.qf, i32 noundef %i.ys, ptr noundef %0, i32 noundef %i.yu, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.yw = add nuw nsw i32 %i.qa, 8
  %i.yx = add nuw nsw i32 %i.yw, %.pre-phi.i.i    ; 5 uses
  %i.yy = load i32, ptr @ett_path, align 4
  %i.yz = call ptr @proto_tree_add_subtree(ptr noundef %i.qf, ptr noundef %0, i32 noundef %i.yx, i32 noundef %i.yp, i32 noundef %i.yy, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.3758) ; 3 uses
  %i.za = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.zb = load i32, ptr @hf_cip_epath, align 4
  %i.zc = call ptr @proto_tree_add_item(ptr noundef %i.yz, i32 noundef %i.zb, ptr noundef %0, i32 noundef %i.yx, i32 noundef %i.yp, i32 noundef 0), !inline_history !10 ; 2 uses
  %.not.i.i.i348.i = icmp eq ptr %i.zc, null
  br i1 %.not.i.i.i348.i, label %proto_item_set_hidden.exit.i.i350.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.zd = getelementptr i8, ptr %i.zc, i64 40
  %i.ze = load ptr, ptr %i.zd, align 8            ; 2 uses
  %.not5.i.i.i349.i = icmp eq ptr %i.ze, null
  br i1 %.not5.i.i.i349.i, label %proto_item_set_hidden.exit.i.i350.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.zf = getelementptr i8, ptr %i.ze, i64 28     ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4
  %i.zh = or i32 %i.zg, 1
  store i32 %i.zh, ptr %i.zf, align 4
  br label %proto_item_set_hidden.exit.i.i350.i

proto_item_set_hidden.exit.i.i350.i:              ; preds = %bb.do, %bb.dn, %bb.dm
  %.not62.i.i = icmp eq i8 %i.yn, 0
  br i1 %.not62.i.i, label %dissect_epath.exit.i353.i, label %.lr.ph.i.preheader.i351.i

.lr.ph.i.preheader.i351.i:                        ; preds = %proto_item_set_hidden.exit.i.i350.i
  %i.zi = call i32 @dissect_cip_segment_single(ptr noundef %1, ptr noundef %0, i32 noundef %i.yx, ptr noundef %i.yz, ptr noundef %i.za, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, i1 noundef zeroext false), !inline_history !10 ; 2 uses
  %i.zj = icmp eq i32 %i.zi, 0
  br i1 %i.zj, label %dissect_epath.exit.i353.i, label %.lr.ph.i352.i

.lr.ph.i352.i:                                    ; preds = %.lr.ph.i.preheader.i351.i, %.lr.ph.i.i357.i
  %i.zk = phi i32 [ %i.zo, %.lr.ph.i.i357.i ], [ %i.zi, %.lr.ph.i.preheader.i351.i ]
  %.03139.i63.i.i = phi i32 [ %i.zl, %.lr.ph.i.i357.i ], [ 0, %.lr.ph.i.preheader.i351.i ]
end_hunk_0
