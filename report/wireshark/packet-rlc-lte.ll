Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-rlc-lte?download=true
inline.NumInlined: 100
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_rlc_lte_common:bb.a

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  call void @proto_item_set_len(ptr noundef %i.or, i32 noundef %i.uf)
  %i.um = load i32, ptr @global_rlc_lte_am_sequence_analysis, align 4 ; 2 uses
  %i.un = icmp eq i32 %i.um, 1
  br i1 %i.un, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.uo = call ptr @wmem_file_scope()
  %i.up = load i32, ptr @proto_mac_lte, align 4
  %i.uq = call ptr @p_get_proto_data(ptr noundef %i.uo, ptr noundef %1, i32 noundef %i.up, i32 noundef 0)
  %.not123.i.i = icmp eq ptr %i.uq, null
  br i1 %.not123.i.i, label %thread-pre-split.i.i, label %bb.dr

thread-pre-split.i.i:                             ; preds = %bb.do
  %.pr132.i.i = load i32, ptr @global_rlc_lte_am_sequence_analysis, align 4
  br label %bb.dp

bb.dp:                                            ; preds = %thread-pre-split.i.i, %bb.dn
  %i.ur = phi i32 [ %.pr132.i.i, %thread-pre-split.i.i ], [ %i.um, %bb.dn ]
  %i.us = icmp eq i32 %i.ur, 2
  br i1 %i.us, label %bb.dq, label %dissect_rlc_lte_am_status_pdu.exit.i

bb.dq:                                            ; preds = %bb.dp
  %i.ut = call ptr @wmem_file_scope()
  %i.uu = load i32, ptr @proto_mac_lte, align 4
  %i.uv = call ptr @p_get_proto_data(ptr noundef %i.ut, ptr noundef %1, i32 noundef %i.uu, i32 noundef 0)
  %i.uw = icmp eq ptr %i.uv, null
  br i1 %i.uw, label %bb.dr, label %dissect_rlc_lte_am_status_pdu.exit.i

bb.dr:                                            ; preds = %bb.dq, %bb.do
  %i.ux = load i8, ptr %i.au, align 1
  %i.uy = call zeroext i1 @is_mac_lte_frame_retx(ptr noundef %1, i8 noundef zeroext %i.ux)
  br i1 %i.uy, label %dissect_rlc_lte_am_status_pdu.exit.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.uz = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.va = load ptr, ptr %i.uz, align 8
  %i.vb = getelementptr i8, ptr %i.va, i64 53
  %i.vc = load i16, ptr %i.vb, align 1
  %i.vd = and i16 %i.vc, 8
  %.not.i127.i.i = icmp eq i16 %i.vd, 0
  br i1 %.not.i127.i.i, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ve = load ptr, ptr @repeated_nack_report_hash, align 8
  %i.vf = getelementptr i8, ptr %1, i64 20
  %i.vg = load i32, ptr %i.vf, align 4
  store i32 %i.vg, ptr @get_report_hash_key.key, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.vh = load i16, ptr %i.ci, align 2
  %i.vi = shl i16 %i.vh, 10
  %i.vj = and i16 %i.vi, 3072
  %i.vk = zext nneg i16 %i.vj to i32              ; 2 uses
  store i32 %i.vk, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.vl = load i16, ptr %i.ew, align 4
  %i.vm = and i16 %i.vl, 31
  %i.vn = zext nneg i16 %i.vm to i32
  %i.vo = shl nuw nsw i32 %i.vn, 12
  %i.vp = or disjoint i32 %i.vo, %i.vk            ; 2 uses
  store i32 %i.vp, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.vq = load i8, ptr %i.au, align 1
  %i.vr = and i8 %i.vq, 1
  %i.vs = zext nneg i8 %i.vr to i32
  %i.vt = shl nuw nsw i32 %i.vs, 17
  %i.vu = or disjoint i32 %i.vt, %i.vp
  store i32 %i.vu, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.vv = call ptr @wmem_map_lookup(ptr noundef %i.ve, ptr noundef @get_report_hash_key.key) ; 2 uses
  %.not79.i.i.i = icmp eq ptr %i.vv, null
  br i1 %.not79.i.i.i, label %checkChannelRepeatedNACKInfo.exit.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call fastcc void @addChannelRepeatedNACKInfo(ptr noundef nonnull %i.vv, ptr noundef nonnull readonly %i.ag, ptr noundef %1, ptr noundef %i.ot, ptr noundef %0)
  br label %checkChannelRepeatedNACKInfo.exit.i.i

bb.dv:                                            ; preds = %bb.ds
  %i.vw = load i16, ptr %i.bm, align 4
  %i.vx = zext i16 %i.vw to i32
  %i.vy = load i16, ptr %i.ci, align 2
  %i.vz = and i16 %i.vy, 7
  %i.wa = zext nneg i16 %i.vz to i32
  %i.wb = shl nuw nsw i32 %i.wa, 16
  %i.wc = or disjoint i32 %i.wb, %i.vx
  %i.wd = load i16, ptr %i.ew, align 4
  %i.we = and i16 %i.wd, 31
  %i.wf = zext nneg i16 %i.we to i32
  %i.wg = shl nuw nsw i32 %i.wf, 19
  %i.wh = or disjoint i32 %i.wc, %i.wg
  %i.wi = load i8, ptr %i.au, align 1
  %i.wj = and i8 %i.wi, 1
  %i.wk = zext nneg i8 %i.wj to i32
  %i.wl = shl nuw nsw i32 %i.wk, 24
  %i.wm = or disjoint i32 %i.wh, %i.wl
  store i32 %i.wm, ptr %5, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 noundef 0, i64 noundef 1024, i1 noundef false) #15
  %i.wn = load ptr, ptr @repeated_nack_channel_hash, align 8
  %i.wo = call ptr @wmem_map_lookup(ptr noundef %i.wn, ptr noundef nonnull %5) ; 2 uses
  %i.wp = icmp eq ptr %i.wo, null
  br i1 %i.wp, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.wq = call ptr @wmem_file_scope()
  %i.wr = call noalias dereferenceable_or_null(4) ptr @wmem_alloc(ptr noundef %i.wq, i64 noundef 4) #16 ; 2 uses
  %i.ws = call ptr @wmem_file_scope()
  %i.wt = call noalias dereferenceable_or_null(1032) ptr @wmem_alloc0(ptr noundef %i.ws, i64 noundef 1032) #16 ; 2 uses
  %i.wu = load i32, ptr %5, align 4
  store i32 %i.wu, ptr %i.wr, align 1
  %i.wv = load ptr, ptr @repeated_nack_channel_hash, align 8
  %i.ww = call ptr @wmem_map_insert(ptr noundef %i.wv, ptr noundef %i.wr, ptr noundef %i.wt) ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.069.i.i.i = phi ptr [ %i.wt, %bb.dw ], [ %i.wo, %bb.dv ] ; 9 uses
  %i.wx = load i16, ptr %.069.i.i.i, align 4      ; 2 uses
  %.not97.i.i.i = icmp eq i16 %i.wx, 0
  %.phi.trans.insert = getelementptr i8, ptr %i.x, i64 48
  %.pre = load i16, ptr %.phi.trans.insert, align 8 ; 6 uses
  br i1 %.not97.i.i.i, label %._crit_edge88.i.i.i, label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.dx
  %.not98.i.i.i = icmp eq i16 %.pre, 0
  %i.wy = getelementptr i8, ptr %.069.i.i.i, i64 2
  br i1 %.not98.i.i.i, label %._crit_edge.i.i.i.thread, label %.preheader.us.preheader.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %.preheader.lr.ph.i.i.i
  store i16 0, ptr %.069.i.i.i, align 4
  br label %bb.ed

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader.lr.ph.i.i.i
  %narrow83.i.i.i = call i16 @llvm.umin.i16(i16 %.pre, i16 512)
  %wide.trip.count104.i.i.i = zext i16 %i.wx to i64
  %wide.trip.count.i.i.i = zext nneg i16 %narrow83.i.i.i to i64
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %indvars.iv102.i.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i.i ], [ %indvars.iv.next103.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %.06786.us.i.i.i = phi i16 [ 0, %.preheader.us.preheader.i.i.i ], [ %.2.us.i.i.i, %._crit_edge.us.i.i.i ]
  %i.wz = getelementptr [2 x i8], ptr %i.wy, i64 %indvars.iv102.i.i.i
  %i.xa = load i16, ptr %i.wz, align 2            ; 3 uses
  %i.xb = zext i16 %i.xa to i32
  br label %bb.dy

bb.dy:                                            ; preds = %bb.eb, %.preheader.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.eb ] ; 2 uses
  %.16884.us.i.i.i = phi i16 [ %.06786.us.i.i.i, %.preheader.us.i.i.i ], [ %.2.us.i.i.i, %bb.eb ] ; 5 uses
  %i.xc = getelementptr [4 x i8], ptr %i.py, i64 %indvars.iv.i.i.i
  %i.xd = load i32, ptr %i.xc, align 4
  %i.xe = icmp eq i32 %i.xd, %i.xb
  br i1 %i.xe, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.xf = icmp eq i16 %.16884.us.i.i.i, 0
  br i1 %i.xf, label %._crit_edge112.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.xg = zext i16 %.16884.us.i.i.i to i64        ; 2 uses
  %i.xh = getelementptr [2 x i8], ptr %i.a, i64 %i.xg
  %i.xi = getelementptr i8, ptr %i.xh, i64 -2
  %i.xj = load i16, ptr %i.xi, align 2
  %.not78.us.i.i.i = icmp eq i16 %i.xj, %i.xa
  br i1 %.not78.us.i.i.i, label %bb.eb, label %._crit_edge112.i.i.i

._crit_edge112.i.i.i:                             ; preds = %bb.ea, %bb.dz
  %.pre-phi.i.i.i = phi i64 [ %i.xg, %bb.ea ], [ 0, %bb.dz ]
  %i.xk = add i16 %.16884.us.i.i.i, 1
  %i.xl = getelementptr [2 x i8], ptr %i.a, i64 %.pre-phi.i.i.i
  store i16 %i.xa, ptr %i.xl, align 2
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge112.i.i.i, %bb.ea, %bb.dy
  %.2.us.i.i.i = phi i16 [ %i.xk, %._crit_edge112.i.i.i ], [ %.16884.us.i.i.i, %bb.ea ], [ %.16884.us.i.i.i, %bb.dy ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.us.i.i.i, label %bb.dy, !llvm.loop !20

._crit_edge.us.i.i.i:                             ; preds = %bb.eb
  %indvars.iv.next103.i.i.i = add nuw nsw i64 %indvars.iv102.i.i.i, 1 ; 2 uses
  %exitcond105.not.i.i.i = icmp eq i64 %indvars.iv.next103.i.i.i, %wide.trip.count104.i.i.i
  br i1 %exitcond105.not.i.i.i, label %._crit_edge88.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !21

._crit_edge88.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %bb.dx
  %.067.lcssa.i.i.i = phi i16 [ 0, %bb.dx ], [ %.2.us.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  store i16 0, ptr %.069.i.i.i, align 4
  %.not99.i.i.i = icmp eq i16 %.pre, 0            ; 2 uses
  br i1 %.not99.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge88.i.i.i
  %i.xm = getelementptr i8, ptr %.069.i.i.i, i64 2 ; 2 uses
  %narrow.i.i.i = call i16 @llvm.umin.i16(i16 %.pre, i16 512)
  %i.xn = zext nneg i16 %narrow.i.i.i to i64      ; 3 uses
  %min.iters.check = icmp ult i16 %.pre, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %i.xn, 1016                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %7 = trunc i64 %index to i16
  %8 = add i16 %7, 8
  %i.xo = getelementptr [4 x i8], ptr %i.py, i64 %index ; 2 uses
  %i.xp = getelementptr i8, ptr %i.xo, i64 16
  %wide.load = load <4 x i32>, ptr %i.xo, align 4
  %wide.load316 = load <4 x i32>, ptr %i.xp, align 4
  %i.xq = trunc <4 x i32> %wide.load to <4 x i16>
  %i.xr = trunc <4 x i32> %wide.load316 to <4 x i16>
  store i16 %8, ptr %.069.i.i.i, align 4
  %i.xs = getelementptr [2 x i8], ptr %i.xm, i64 %index ; 2 uses
  %i.xt = getelementptr i8, ptr %i.xs, i64 8
  store <4 x i16> %i.xq, ptr %i.xs, align 2
  store <4 x i16> %i.xr, ptr %i.xt, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xu = icmp eq i64 %index.next, %n.vec
  br i1 %i.xu, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.xn
  br i1 %cmp.n, label %._crit_edge.i.i.i.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv106.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv106.i.i.i = phi i64 [ %indvars.iv.next107.i.i.i, %scalar.ph ], [ %indvars.iv106.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.xv = getelementptr [4 x i8], ptr %i.py, i64 %indvars.iv106.i.i.i
  %i.xw = load i32, ptr %i.xv, align 4
  %i.xx = trunc i32 %i.xw to i16
  %indvars.iv.next107.i.i.i = add nuw nsw i64 %indvars.iv106.i.i.i, 1 ; 3 uses
  %i.xy = trunc nuw nsw i64 %indvars.iv.next107.i.i.i to i16
  store i16 %i.xy, ptr %.069.i.i.i, align 4
  %i.xz = getelementptr [2 x i8], ptr %i.xm, i64 %indvars.iv106.i.i.i
  store i16 %i.xx, ptr %i.xz, align 2
  %i.ya = icmp samesign ult i64 %indvars.iv.next107.i.i.i, %i.xn
  br i1 %i.ya, label %scalar.ph, label %._crit_edge.i.i.i.loopexit, !llvm.loop !23

._crit_edge.i.i.i.loopexit:                       ; preds = %scalar.ph, %middle.block
  %i.yb = call i16 @llvm.umin.i16(i16 %.pre, i16 512)
  %i.yc = shl nuw nsw i16 %i.yb, 1
  %i.yd = zext nneg i16 %i.yc to i64
  %i.ye = add nuw nsw i64 %i.yd, 8589934590
  %i.yf = and i64 %i.ye, 8589934590
  %i.yg = add nuw nsw i64 %i.yf, 2
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit, %._crit_edge88.i.i.i
  %narrow82.i.i.i = phi i64 [ 8589934592, %._crit_edge88.i.i.i ], [ %i.yg, %._crit_edge.i.i.i.loopexit ]
  %.not77.i.i.i = icmp eq i16 %.067.lcssa.i.i.i, 0
  br i1 %.not77.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge.i.i.i
  %i.yh = call ptr @wmem_file_scope()
  %i.yi = call noalias dereferenceable_or_null(1032) ptr @wmem_alloc(ptr noundef %i.yh, i64 noundef 1032) #16 ; 5 uses
  br i1 %.not99.i.i.i, label %._crit_edge96.i.i.i, label %.lr.ph95.i.i.i

.lr.ph95.i.i.i:                                   ; preds = %bb.ec
  %i.yj = getelementptr i8, ptr %i.yi, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 %i.yj, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 range(i64 0, 1025) %narrow82.i.i.i, i1 false)
  br label %._crit_edge96.i.i.i

._crit_edge96.i.i.i:                              ; preds = %.lr.ph95.i.i.i, %bb.ec
  store i16 %.067.lcssa.i.i.i, ptr %i.yi, align 4
  %i.yk = getelementptr i8, ptr %.069.i.i.i, i64 1028
  %i.yl = load i32, ptr %i.yk, align 4
  %i.ym = getelementptr i8, ptr %i.yi, i64 1028
  store i32 %i.yl, ptr %i.ym, align 4
  %i.yn = load ptr, ptr @repeated_nack_report_hash, align 8
  %i.yo = getelementptr i8, ptr %1, i64 20
  %i.yp = load i32, ptr %i.yo, align 4
  %i.yq = call ptr @wmem_file_scope()
  %i.yr = call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.yq, i64 noundef 8) #16 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr i8, ptr %i.yr, i64 4 ; 2 uses
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4
  store i32 %i.yp, ptr %i.yr, align 4
  %i.ys = load i16, ptr %i.ci, align 2
  %i.yt = shl i16 %i.ys, 10
  %i.yu = and i32 %.pre.i.i.i.i, -262144
  %i.yv = load i16, ptr %i.ew, align 4
  %i.yw = and i16 %i.yv, 31
  %i.yx = zext nneg i16 %i.yw to i32
  %i.yy = shl nuw nsw i32 %i.yx, 12
  %i.yz = and i16 %i.yt, 3072
  %.masked.i.i.i = zext nneg i16 %i.yz to i32
  %i.za = or disjoint i32 %i.yu, %.masked.i.i.i
  %i.zb = or disjoint i32 %i.za, %i.yy
  %i.zc = load i8, ptr %i.au, align 1
  %i.zd = and i8 %i.zc, 1
  %i.ze = zext nneg i8 %i.zd to i32
  %i.zf = shl nuw nsw i32 %i.ze, 17
  %i.zg = or disjoint i32 %i.zb, %i.zf
  store i32 %i.zg, ptr %.phi.trans.insert.i.i.i.i, align 4
  %i.zh = call ptr @wmem_map_insert(ptr noundef %i.yn, ptr noundef %i.yr, ptr noundef %i.yi) ; 0 uses
  call fastcc void @addChannelRepeatedNACKInfo(ptr noundef %i.yi, ptr noundef nonnull readonly %i.ag, ptr noundef %1, ptr noundef %i.ot, ptr noundef %0)
  br label %bb.ed

bb.ed:                                            ; preds = %._crit_edge.i.i.i.thread, %._crit_edge96.i.i.i, %._crit_edge.i.i.i
  %i.zi = getelementptr i8, ptr %1, i64 20
  %i.zj = load i32, ptr %i.zi, align 4
  %i.zk = getelementptr i8, ptr %.069.i.i.i, i64 1028
  store i32 %i.zj, ptr %i.zk, align 4
  br label %checkChannelRepeatedNACKInfo.exit.i.i

checkChannelRepeatedNACKInfo.exit.i.i:            ; preds = %bb.ed, %bb.du, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.zl = load i64, ptr %i.c, align 8             ; 2 uses
  %i.zm = trunc i64 %i.zl to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.zn = load ptr, ptr %i.uz, align 8
  %i.zo = getelementptr i8, ptr %i.zn, i64 53
  %i.zp = load i16, ptr %i.zo, align 1
  %i.zq = and i16 %i.zp, 8
  %.not.i128.i.i = icmp eq i16 %i.zq, 0
  br i1 %.not.i128.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %checkChannelRepeatedNACKInfo.exit.i.i
  %i.zr = load ptr, ptr @sequence_analysis_report_hash, align 8
  %i.zs = getelementptr i8, ptr %1, i64 20
  %i.zt = load i32, ptr %i.zs, align 4
  store i32 %i.zt, ptr @get_report_hash_key.key, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.zu = load i16, ptr %i.ci, align 2
  %i.zv = shl i16 %i.zu, 10
  %i.zw = and i16 %i.zv, 3072
  %i.zx = zext nneg i16 %i.zw to i32              ; 2 uses
  store i32 %i.zx, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.zy = load i16, ptr %i.ew, align 4
  %i.zz = and i16 %i.zy, 31
  %i.aaa = zext nneg i16 %i.zz to i32
  %i.aab = shl nuw nsw i32 %i.aaa, 12
  %i.aac = or disjoint i32 %i.aab, %i.zx          ; 2 uses
  store i32 %i.aac, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.aad = load i8, ptr %i.au, align 1
  %i.aae = and i8 %i.aad, 1
  %i.aaf = zext nneg i8 %i.aae to i32
  %i.aag = shl nuw nsw i32 %i.aaf, 17
  %i.aah = or disjoint i32 %i.aag, %i.aac
  store i32 %i.aah, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.aai = call ptr @wmem_map_lookup(ptr noundef %i.zr, ptr noundef @get_report_hash_key.key) ; 2 uses
  %.not37.i.i.i = icmp eq ptr %i.aai, null
  br i1 %.not37.i.i.i, label %checkChannelACKWindow.exit.i.i, label %checkChannelACKWindow.exit.sink.split.i.i

bb.ef:                                            ; preds = %checkChannelRepeatedNACKInfo.exit.i.i
  %i.aaj = load i16, ptr %i.bm, align 4
  %i.aak = zext i16 %i.aaj to i32
  %i.aal = load i16, ptr %i.ci, align 2
  %i.aam = and i16 %i.aal, 7
  %i.aan = zext nneg i16 %i.aam to i32
  %i.aao = shl nuw nsw i32 %i.aan, 16
  %i.aap = or disjoint i32 %i.aao, %i.aak
  %i.aaq = load i16, ptr %i.ew, align 4
  %i.aar = and i16 %i.aaq, 31
  %i.aas = zext nneg i16 %i.aar to i32
  %i.aat = shl nuw nsw i32 %i.aas, 19
  %i.aau = or disjoint i32 %i.aap, %i.aat
  %i.aav = load i8, ptr %i.au, align 1
  %i.aaw = icmp eq i8 %i.aav, 0
  %i.aax = select i1 %i.aaw, i32 16777216, i32 0
  %i.aay = or disjoint i32 %i.aau, %i.aax
  store i32 %i.aay, ptr %4, align 4
  %i.aaz = load ptr, ptr @sequence_analysis_channel_hash, align 8
  %i.aba = call ptr @wmem_map_lookup(ptr noundef %i.aaz, ptr noundef nonnull %4) ; 3 uses
  %i.abb = icmp eq ptr %i.aba, null
  br i1 %i.abb, label %checkChannelACKWindow.exit.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.abc = load i8, ptr %i.fs, align 1
  %i.abd = icmp eq i8 %i.abc, 16
  %i.abe = select i1 %i.abd, i32 65536, i32 1024  ; 3 uses
  %i.abf = getelementptr i8, ptr %i.aba, i64 2    ; 2 uses
  %i.abg = load i16, ptr %i.abf, align 2
  %i.abh = zext i16 %i.abg to i32
  %i.abi = trunc i64 %i.zl to i32
  %i.abj = and i32 %i.abi, 65535
  %reass.sub = sub nsw i32 %i.abh, %i.abj
  %i.abk = add nsw i32 %reass.sub, 1
  %i.abl = add nsw i32 %i.abk, %i.abe
  %i.abm = add nsw i32 %i.abe, -1
  %i.abn = and i32 %i.abl, %i.abm
  %i.abo = lshr exact i32 %i.abe, 1
  %i.abp = icmp samesign ugt i32 %i.abn, %i.abo
  br i1 %i.abp, label %bb.eh, label %checkChannelACKWindow.exit.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.abq = call ptr @wmem_file_scope()
  %i.abr = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.abq, i64 noundef 24) #16 ; 6 uses
  %i.abs = getelementptr i8, ptr %i.abr, i64 20
  store i32 5, ptr %i.abs, align 4
  %i.abt = getelementptr i8, ptr %i.aba, i64 4
  %i.abu = load i32, ptr %i.abt, align 4
  %i.abv = getelementptr i8, ptr %i.abr, i64 4
  store i32 %i.abu, ptr %i.abv, align 4
  %i.abw = load i16, ptr %i.abf, align 2
  %i.abx = getelementptr i8, ptr %i.abr, i64 2
  store i16 %i.abw, ptr %i.abx, align 2
  %i.aby = getelementptr i8, ptr %i.abr, i64 16
  store i16 %i.zm, ptr %i.aby, align 4
  %i.abz = load ptr, ptr @sequence_analysis_report_hash, align 8
  %i.aca = getelementptr i8, ptr %1, i64 20
  %i.acb = load i32, ptr %i.aca, align 4
  %i.acc = call ptr @wmem_file_scope()
  %i.acd = call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.acc, i64 noundef 8) #16 ; 3 uses
  %.phi.trans.insert.i.i129.i.i = getelementptr i8, ptr %i.acd, i64 4 ; 2 uses
  %.pre.i.i130.i.i = load i32, ptr %.phi.trans.insert.i.i129.i.i, align 4
  store i32 %i.acb, ptr %i.acd, align 4
  %i.ace = load i16, ptr %i.ci, align 2
  %i.acf = shl i16 %i.ace, 10
  %i.acg = and i32 %.pre.i.i130.i.i, -262144
  %i.ach = load i16, ptr %i.ew, align 4
  %i.aci = and i16 %i.ach, 31
  %i.acj = zext nneg i16 %i.aci to i32
  %i.ack = shl nuw nsw i32 %i.acj, 12
end_hunk_0
