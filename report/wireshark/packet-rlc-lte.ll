Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-rlc-lte?download=true
inline.NumInlined: 100
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dissect_rlc_lte_common:bb.a
  br label %bb.dp

bb.dp:                                            ; preds = %thread-pre-split.i.i, %bb.dn
  %i.us = phi i32 [ %.pr132.i.i, %thread-pre-split.i.i ], [ %i.un, %bb.dn ]
  %i.ut = icmp eq i32 %i.us, 2
  br i1 %i.ut, label %bb.dq, label %dissect_rlc_lte_am_status_pdu.exit.i

bb.dq:                                            ; preds = %bb.dp
  %i.uu = call ptr @wmem_file_scope()
  %i.uv = load i32, ptr @proto_mac_lte, align 4
  %i.uw = call ptr @p_get_proto_data(ptr noundef %i.uu, ptr noundef %1, i32 noundef %i.uv, i32 noundef 0)
  %i.ux = icmp eq ptr %i.uw, null
  br i1 %i.ux, label %bb.dr, label %dissect_rlc_lte_am_status_pdu.exit.i

bb.dr:                                            ; preds = %bb.dq, %bb.do
  %i.uy = load i8, ptr %i.au, align 1
  %i.uz = call zeroext i1 @is_mac_lte_frame_retx(ptr noundef %1, i8 noundef zeroext %i.uy)
  br i1 %i.uz, label %dissect_rlc_lte_am_status_pdu.exit.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.va = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.vb = load ptr, ptr %i.va, align 8
  %i.vc = getelementptr i8, ptr %i.vb, i64 53
  %i.vd = load i16, ptr %i.vc, align 1
  %i.ve = and i16 %i.vd, 8
  %.not.i127.i.i = icmp eq i16 %i.ve, 0
  br i1 %.not.i127.i.i, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.vf = load ptr, ptr @repeated_nack_report_hash, align 8
  %i.vg = getelementptr i8, ptr %1, i64 20
  %i.vh = load i32, ptr %i.vg, align 4
  store i32 %i.vh, ptr @get_report_hash_key.key, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.vi = load i16, ptr %i.ci, align 2
  %i.vj = shl i16 %i.vi, 10
  %i.vk = and i16 %i.vj, 3072
  %i.vl = zext nneg i16 %i.vk to i32              ; 2 uses
  store i32 %i.vl, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.vm = load i16, ptr %i.ew, align 4
  %i.vn = and i16 %i.vm, 31
  %i.vo = zext nneg i16 %i.vn to i32
  %i.vp = shl nuw nsw i32 %i.vo, 12
  %i.vq = or disjoint i32 %i.vp, %i.vl            ; 2 uses
  store i32 %i.vq, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.vr = load i8, ptr %i.au, align 1
  %i.vs = and i8 %i.vr, 1
  %i.vt = zext nneg i8 %i.vs to i32
  %i.vu = shl nuw nsw i32 %i.vt, 17
  %i.vv = or disjoint i32 %i.vu, %i.vq
  store i32 %i.vv, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.vw = call ptr @wmem_map_lookup(ptr noundef %i.vf, ptr noundef nonnull @get_report_hash_key.key) ; 2 uses
  %.not79.i.i.i = icmp eq ptr %i.vw, null
  br i1 %.not79.i.i.i, label %checkChannelRepeatedNACKInfo.exit.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call fastcc void @addChannelRepeatedNACKInfo(ptr noundef nonnull %i.vw, ptr noundef nonnull readonly %i.ag, ptr noundef %1, ptr noundef %i.ou, ptr noundef %0)
  br label %checkChannelRepeatedNACKInfo.exit.i.i

bb.dv:                                            ; preds = %bb.ds
  %i.vx = load i16, ptr %i.bm, align 4
  %i.vy = zext i16 %i.vx to i32
  %i.vz = load i16, ptr %i.ci, align 2
  %i.wa = and i16 %i.vz, 7
  %i.wb = zext nneg i16 %i.wa to i32
  %i.wc = shl nuw nsw i32 %i.wb, 16
  %i.wd = or disjoint i32 %i.wc, %i.vy
  %i.we = load i16, ptr %i.ew, align 4
  %i.wf = and i16 %i.we, 31
  %i.wg = zext nneg i16 %i.wf to i32
  %i.wh = shl nuw nsw i32 %i.wg, 19
  %i.wi = or disjoint i32 %i.wd, %i.wh
  %i.wj = load i8, ptr %i.au, align 1
  %i.wk = and i8 %i.wj, 1
  %i.wl = zext nneg i8 %i.wk to i32
  %i.wm = shl nuw nsw i32 %i.wl, 24
  %i.wn = or disjoint i32 %i.wi, %i.wm
  store i32 %i.wn, ptr %5, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 noundef 0, i64 noundef 1024, i1 noundef false) #15
  %i.wo = load ptr, ptr @repeated_nack_channel_hash, align 8
  %i.wp = call ptr @wmem_map_lookup(ptr noundef %i.wo, ptr noundef nonnull %5) ; 2 uses
  %i.wq = icmp eq ptr %i.wp, null
  br i1 %i.wq, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.wr = call ptr @wmem_file_scope()
  %i.ws = call noalias dereferenceable_or_null(4) ptr @wmem_alloc(ptr noundef %i.wr, i64 noundef 4) #16 ; 2 uses
  %i.wt = call ptr @wmem_file_scope()
  %i.wu = call noalias dereferenceable_or_null(1032) ptr @wmem_alloc0(ptr noundef %i.wt, i64 noundef 1032) #16 ; 2 uses
  %i.wv = load i32, ptr %5, align 4
  store i32 %i.wv, ptr %i.ws, align 1
  %i.ww = load ptr, ptr @repeated_nack_channel_hash, align 8
  %i.wx = call ptr @wmem_map_insert(ptr noundef %i.ww, ptr noundef %i.ws, ptr noundef %i.wu) ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.069.i.i.i = phi ptr [ %i.wu, %bb.dw ], [ %i.wp, %bb.dv ] ; 11 uses
  %i.wy = load i16, ptr %.069.i.i.i, align 4      ; 2 uses
  %.not97.i.i.i = icmp eq i16 %i.wy, 0
  %.phi.trans.insert = getelementptr i8, ptr %i.x, i64 48
  %.pre = load i16, ptr %.phi.trans.insert, align 8 ; 6 uses
  br i1 %.not97.i.i.i, label %._crit_edge88.i.i.i, label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.dx
  %.not98.i.i.i = icmp eq i16 %.pre, 0
  %i.wz = getelementptr i8, ptr %.069.i.i.i, i64 2
  br i1 %.not98.i.i.i, label %._crit_edge.i.i.i.thread, label %.preheader.us.preheader.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %.preheader.lr.ph.i.i.i
  store i16 0, ptr %.069.i.i.i, align 4
  br label %bb.ed

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader.lr.ph.i.i.i
  %narrow83.i.i.i = call i16 @llvm.umin.i16(i16 %.pre, i16 512)
  %wide.trip.count104.i.i.i = zext i16 %i.wy to i64
  %wide.trip.count.i.i.i = zext nneg i16 %narrow83.i.i.i to i64
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %indvars.iv102.i.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i.i ], [ %indvars.iv.next103.i.i.i, %._crit_edge.us.i.i.i ] ; 2 uses
  %.06786.us.i.i.i = phi i16 [ 0, %.preheader.us.preheader.i.i.i ], [ %.2.us.i.i.i, %._crit_edge.us.i.i.i ]
  %i.xa = getelementptr [2 x i8], ptr %i.wz, i64 %indvars.iv102.i.i.i
  %i.xb = load i16, ptr %i.xa, align 2            ; 3 uses
  %i.xc = zext i16 %i.xb to i32
  br label %bb.dy

bb.dy:                                            ; preds = %bb.eb, %.preheader.us.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.us.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.eb ] ; 2 uses
  %.16884.us.i.i.i = phi i16 [ %.06786.us.i.i.i, %.preheader.us.i.i.i ], [ %.2.us.i.i.i, %bb.eb ] ; 5 uses
  %i.xd = getelementptr [4 x i8], ptr %i.pz, i64 %indvars.iv.i.i.i
  %i.xe = load i32, ptr %i.xd, align 4
  %i.xf = icmp eq i32 %i.xe, %i.xc
  br i1 %i.xf, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %bb.dy
  %i.xg = icmp eq i16 %.16884.us.i.i.i, 0
  br i1 %i.xg, label %._crit_edge112.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.xh = zext i16 %.16884.us.i.i.i to i64        ; 2 uses
  %i.xi = getelementptr [2 x i8], ptr %i.a, i64 %i.xh
  %i.xj = getelementptr i8, ptr %i.xi, i64 -2
  %i.xk = load i16, ptr %i.xj, align 2
  %.not78.us.i.i.i = icmp eq i16 %i.xk, %i.xb
  br i1 %.not78.us.i.i.i, label %bb.eb, label %._crit_edge112.i.i.i

._crit_edge112.i.i.i:                             ; preds = %bb.ea, %bb.dz
  %.pre-phi.i.i.i = phi i64 [ %i.xh, %bb.ea ], [ 0, %bb.dz ]
  %i.xl = add i16 %.16884.us.i.i.i, 1
  %i.xm = getelementptr [2 x i8], ptr %i.a, i64 %.pre-phi.i.i.i
  store i16 %i.xb, ptr %i.xm, align 2
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge112.i.i.i, %bb.ea, %bb.dy
  %.2.us.i.i.i = phi i16 [ %i.xl, %._crit_edge112.i.i.i ], [ %.16884.us.i.i.i, %bb.ea ], [ %.16884.us.i.i.i, %bb.dy ] ; 3 uses
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
  %i.xn = getelementptr i8, ptr %.069.i.i.i, i64 2 ; 4 uses
  %narrow.i.i.i = call i16 @llvm.umin.i16(i16 %.pre, i16 512)
  %i.xo = zext nneg i16 %narrow.i.i.i to i64      ; 5 uses
  %min.iters.check = icmp ult i16 %.pre, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i
  %i.xp = shl nuw nsw i64 %i.xo, 1
  %i.xq = getelementptr i8, ptr %.069.i.i.i, i64 %i.xp
  %scevgep = getelementptr i8, ptr %i.xq, i64 2
  %i.xr = shl nuw nsw i64 %i.xo, 2
  %i.xs = getelementptr i8, ptr %i.x, i64 %i.xr
  %scevgep316 = getelementptr i8, ptr %i.xs, i64 52 ; 2 uses
  %bound0 = icmp ult ptr %i.xn, %scevgep316
  %bound1 = icmp ult ptr %i.pz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0317 = icmp ult ptr %.069.i.i.i, %scevgep316
  %bound1318 = icmp ult ptr %i.pz, %i.xn
  %found.conflict319 = and i1 %bound0317, %bound1318
  %conflict.rdx = or i1 %found.conflict, %found.conflict319
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.xo, 1016                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.xt = getelementptr [4 x i8], ptr %i.pz, i64 %index ; 2 uses
  %i.xu = getelementptr i8, ptr %i.xt, i64 16
  %wide.load = load <4 x i32>, ptr %i.xt, align 4, !alias.scope !35
  %wide.load320 = load <4 x i32>, ptr %i.xu, align 4, !alias.scope !35
  %i.xv = trunc <4 x i32> %wide.load to <4 x i16>
  %i.xw = trunc <4 x i32> %wide.load320 to <4 x i16>
  %7 = bitcast <4 x i64> %vec.ind to <16 x i16>
  %8 = extractelement <16 x i16> %7, i64 12
  %9 = add i16 %8, 5
  store i16 %9, ptr %.069.i.i.i, align 4, !alias.scope !36, !noalias !35
  %i.xx = getelementptr [2 x i8], ptr %i.xn, i64 %index ; 2 uses
  %i.xy = getelementptr i8, ptr %i.xx, i64 8
  store <4 x i16> %i.xv, ptr %i.xx, align 2, !alias.scope !37, !noalias !35
  store <4 x i16> %i.xw, ptr %i.xy, align 2, !alias.scope !37, !noalias !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.xz = icmp eq i64 %index.next, %n.vec
  br i1 %i.xz, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.xo
  br i1 %cmp.n, label %._crit_edge.i.i.i.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i, %middle.block
  %indvars.iv106.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv106.i.i.i = phi i64 [ %indvars.iv.next107.i.i.i, %scalar.ph ], [ %indvars.iv106.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ya = getelementptr [4 x i8], ptr %i.pz, i64 %indvars.iv106.i.i.i
  %i.yb = load i32, ptr %i.ya, align 4
  %i.yc = trunc i32 %i.yb to i16
  %indvars.iv.next107.i.i.i = add nuw nsw i64 %indvars.iv106.i.i.i, 1 ; 3 uses
  %i.yd = trunc nuw nsw i64 %indvars.iv.next107.i.i.i to i16
  store i16 %i.yd, ptr %.069.i.i.i, align 4
  %i.ye = getelementptr [2 x i8], ptr %i.xn, i64 %indvars.iv106.i.i.i
  store i16 %i.yc, ptr %i.ye, align 2
  %i.yf = icmp samesign ult i64 %indvars.iv.next107.i.i.i, %i.xo
  br i1 %i.yf, label %scalar.ph, label %._crit_edge.i.i.i.loopexit, !llvm.loop !27

._crit_edge.i.i.i.loopexit:                       ; preds = %scalar.ph, %middle.block
  %i.yg = call i16 @llvm.umin.i16(i16 %.pre, i16 512)
  %i.yh = shl nuw nsw i16 %i.yg, 1
  %i.yi = zext nneg i16 %i.yh to i64
  %i.yj = add nuw nsw i64 %i.yi, 8589934590
  %i.yk = and i64 %i.yj, 8589934590
  %i.yl = add nuw nsw i64 %i.yk, 2
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit, %._crit_edge88.i.i.i
  %narrow82.i.i.i = phi i64 [ 8589934592, %._crit_edge88.i.i.i ], [ %i.yl, %._crit_edge.i.i.i.loopexit ]
  %.not77.i.i.i = icmp eq i16 %.067.lcssa.i.i.i, 0
  br i1 %.not77.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge.i.i.i
  %i.ym = call ptr @wmem_file_scope()
  %i.yn = call noalias dereferenceable_or_null(1032) ptr @wmem_alloc(ptr noundef %i.ym, i64 noundef 1032) #16 ; 5 uses
  br i1 %.not99.i.i.i, label %._crit_edge96.i.i.i, label %.lr.ph95.i.i.i

.lr.ph95.i.i.i:                                   ; preds = %bb.ec
  %i.yo = getelementptr i8, ptr %i.yn, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 %i.yo, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %narrow82.i.i.i, i1 false)
  br label %._crit_edge96.i.i.i

._crit_edge96.i.i.i:                              ; preds = %.lr.ph95.i.i.i, %bb.ec
  store i16 %.067.lcssa.i.i.i, ptr %i.yn, align 4
  %i.yp = getelementptr i8, ptr %.069.i.i.i, i64 1028
  %i.yq = load i32, ptr %i.yp, align 4
  %i.yr = getelementptr i8, ptr %i.yn, i64 1028
  store i32 %i.yq, ptr %i.yr, align 4
  %i.ys = load ptr, ptr @repeated_nack_report_hash, align 8
  %i.yt = getelementptr i8, ptr %1, i64 20
  %i.yu = load i32, ptr %i.yt, align 4
  %i.yv = call ptr @wmem_file_scope()
  %i.yw = call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.yv, i64 noundef 8) #16 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr i8, ptr %i.yw, i64 4 ; 2 uses
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4
  store i32 %i.yu, ptr %i.yw, align 4
  %i.yx = load i16, ptr %i.ci, align 2
  %i.yy = shl i16 %i.yx, 10
  %i.yz = and i32 %.pre.i.i.i.i, -262144
  %i.za = load i16, ptr %i.ew, align 4
  %i.zb = and i16 %i.za, 31
  %i.zc = zext nneg i16 %i.zb to i32
  %i.zd = shl nuw nsw i32 %i.zc, 12
  %i.ze = and i16 %i.yy, 3072
  %.masked.i.i.i = zext nneg i16 %i.ze to i32
  %i.zf = or disjoint i32 %i.yz, %.masked.i.i.i
  %i.zg = or disjoint i32 %i.zf, %i.zd
  %i.zh = load i8, ptr %i.au, align 1
  %i.zi = and i8 %i.zh, 1
  %i.zj = zext nneg i8 %i.zi to i32
  %i.zk = shl nuw nsw i32 %i.zj, 17
  %i.zl = or disjoint i32 %i.zg, %i.zk
  store i32 %i.zl, ptr %.phi.trans.insert.i.i.i.i, align 4
  %i.zm = call ptr @wmem_map_insert(ptr noundef %i.ys, ptr noundef %i.yw, ptr noundef %i.yn) ; 0 uses
  call fastcc void @addChannelRepeatedNACKInfo(ptr noundef %i.yn, ptr noundef nonnull readonly %i.ag, ptr noundef %1, ptr noundef %i.ou, ptr noundef %0)
  br label %bb.ed

bb.ed:                                            ; preds = %._crit_edge.i.i.i.thread, %._crit_edge96.i.i.i, %._crit_edge.i.i.i
  %i.zn = getelementptr i8, ptr %1, i64 20
  %i.zo = load i32, ptr %i.zn, align 4
  %i.zp = getelementptr i8, ptr %.069.i.i.i, i64 1028
  store i32 %i.zo, ptr %i.zp, align 4
  br label %checkChannelRepeatedNACKInfo.exit.i.i

checkChannelRepeatedNACKInfo.exit.i.i:            ; preds = %bb.ed, %bb.du, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.zq = load i64, ptr %i.c, align 8             ; 2 uses
  %i.zr = trunc i64 %i.zq to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.zs = load ptr, ptr %i.va, align 8
  %i.zt = getelementptr i8, ptr %i.zs, i64 53
  %i.zu = load i16, ptr %i.zt, align 1
  %i.zv = and i16 %i.zu, 8
  %.not.i128.i.i = icmp eq i16 %i.zv, 0
  br i1 %.not.i128.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %checkChannelRepeatedNACKInfo.exit.i.i
  %i.zw = load ptr, ptr @sequence_analysis_report_hash, align 8
  %i.zx = getelementptr i8, ptr %1, i64 20
  %i.zy = load i32, ptr %i.zx, align 4
  store i32 %i.zy, ptr @get_report_hash_key.key, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.zz = load i16, ptr %i.ci, align 2
  %i.aaa = shl i16 %i.zz, 10
  %i.aab = and i16 %i.aaa, 3072
  %i.aac = zext nneg i16 %i.aab to i32            ; 2 uses
  store i32 %i.aac, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.aad = load i16, ptr %i.ew, align 4
  %i.aae = and i16 %i.aad, 31
  %i.aaf = zext nneg i16 %i.aae to i32
  %i.aag = shl nuw nsw i32 %i.aaf, 12
  %i.aah = or disjoint i32 %i.aag, %i.aac         ; 2 uses
  store i32 %i.aah, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.aai = load i8, ptr %i.au, align 1
  %i.aaj = and i8 %i.aai, 1
  %i.aak = zext nneg i8 %i.aaj to i32
  %i.aal = shl nuw nsw i32 %i.aak, 17
  %i.aam = or disjoint i32 %i.aal, %i.aah
  store i32 %i.aam, ptr getelementptr inbounds nuw (i8, ptr @get_report_hash_key.key, i64 4), align 4
  %i.aan = call ptr @wmem_map_lookup(ptr noundef %i.zw, ptr noundef nonnull @get_report_hash_key.key) ; 2 uses
  %.not37.i.i.i = icmp eq ptr %i.aan, null
  br i1 %.not37.i.i.i, label %checkChannelACKWindow.exit.i.i, label %checkChannelACKWindow.exit.sink.split.i.i

bb.ef:                                            ; preds = %checkChannelRepeatedNACKInfo.exit.i.i
  %i.aao = load i16, ptr %i.bm, align 4
  %i.aap = zext i16 %i.aao to i32
  %i.aaq = load i16, ptr %i.ci, align 2
  %i.aar = and i16 %i.aaq, 7
  %i.aas = zext nneg i16 %i.aar to i32
  %i.aat = shl nuw nsw i32 %i.aas, 16
  %i.aau = or disjoint i32 %i.aat, %i.aap
  %i.aav = load i16, ptr %i.ew, align 4
  %i.aaw = and i16 %i.aav, 31
  %i.aax = zext nneg i16 %i.aaw to i32
  %i.aay = shl nuw nsw i32 %i.aax, 19
  %i.aaz = or disjoint i32 %i.aau, %i.aay
  %i.aba = load i8, ptr %i.au, align 1
  %i.abb = icmp eq i8 %i.aba, 0
  %i.abc = select i1 %i.abb, i32 16777216, i32 0
  %i.abd = or disjoint i32 %i.aaz, %i.abc
  store i32 %i.abd, ptr %4, align 4
  %i.abe = load ptr, ptr @sequence_analysis_channel_hash, align 8
  %i.abf = call ptr @wmem_map_lookup(ptr noundef %i.abe, ptr noundef nonnull %4) ; 3 uses
  %i.abg = icmp eq ptr %i.abf, null
  br i1 %i.abg, label %checkChannelACKWindow.exit.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.abh = load i8, ptr %i.fs, align 1
  %i.abi = icmp eq i8 %i.abh, 16
  %i.abj = select i1 %i.abi, i32 65536, i32 1024  ; 3 uses
  %i.abk = getelementptr i8, ptr %i.abf, i64 2    ; 2 uses
  %i.abl = load i16, ptr %i.abk, align 2
  %i.abm = zext i16 %i.abl to i32
  %i.abn = trunc i64 %i.zq to i32
  %i.abo = and i32 %i.abn, 65535
  %reass.sub = sub nsw i32 %i.abm, %i.abo
  %i.abp = add nsw i32 %reass.sub, 1
  %i.abq = add nsw i32 %i.abp, %i.abj
  %i.abr = add nsw i32 %i.abj, -1
  %i.abs = and i32 %i.abq, %i.abr
  %i.abt = lshr exact i32 %i.abj, 1
  %i.abu = icmp samesign ugt i32 %i.abs, %i.abt
  br i1 %i.abu, label %bb.eh, label %checkChannelACKWindow.exit.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.abv = call ptr @wmem_file_scope()
  %i.abw = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.abv, i64 noundef 24) #16 ; 6 uses
  %i.abx = getelementptr i8, ptr %i.abw, i64 20
  store i32 5, ptr %i.abx, align 4
  %i.aby = getelementptr i8, ptr %i.abf, i64 4
  %i.abz = load i32, ptr %i.aby, align 4
  %i.aca = getelementptr i8, ptr %i.abw, i64 4
  store i32 %i.abz, ptr %i.aca, align 4
  %i.acb = load i16, ptr %i.abk, align 2
  %i.acc = getelementptr i8, ptr %i.abw, i64 2
  store i16 %i.acb, ptr %i.acc, align 2
  %i.acd = getelementptr i8, ptr %i.abw, i64 16
  store i16 %i.zr, ptr %i.acd, align 4
  %i.ace = load ptr, ptr @sequence_analysis_report_hash, align 8
  %i.acf = getelementptr i8, ptr %1, i64 20
  %i.acg = load i32, ptr %i.acf, align 4
  %i.ach = call ptr @wmem_file_scope()
  %i.aci = call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.ach, i64 noundef 8) #16 ; 3 uses
  %.phi.trans.insert.i.i129.i.i = getelementptr i8, ptr %i.aci, i64 4 ; 2 uses
  %.pre.i.i130.i.i = load i32, ptr %.phi.trans.insert.i.i129.i.i, align 4
  store i32 %i.acg, ptr %i.aci, align 4
  %i.acj = load i16, ptr %i.ci, align 2
  %i.ack = shl i16 %i.acj, 10
  %i.acl = and i32 %.pre.i.i130.i.i, -262144
  %i.acm = load i16, ptr %i.ew, align 4
  %i.acn = and i16 %i.acm, 31
  %i.aco = zext nneg i16 %i.acn to i32
  %i.acp = shl nuw nsw i32 %i.aco, 12
end_hunk_0
