Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-nfs?download=true
inline.NumInlined: 366
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dissect_nfs4_cb_compound_reply:bb.a
  %i.ag = phi ptr [ %i.aa, %.thread108.i ], [ %i.af, %bb.d ] ; 7 uses
  %i.ah = phi ptr [ %i.y, %.thread108.i ], [ %i.ad, %bb.d ] ; 4 uses
  %.08391111.i = phi i32 [ 128, %.thread108.i ], [ %i.s, %bb.d ] ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.08391111.i to i64
  %i.ai = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.v) ; 7 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 4      ; 2 uses
  store i8 0, ptr %i.aj, align 4
  store i32 %i.ai, ptr %i.ag, align 8
  %i.ak = add i32 %i.ai, -16
  %or.cond.peel.i = icmp ult i32 %i.ak, -13
  %i.al = icmp ne i32 %i.ai, 10044                ; 2 uses
  %or.cond3.peel.i = and i1 %i.al, %or.cond.peel.i
  br i1 %or.cond3.peel.i, label %dissect_nfs4_cb_resp_op.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.am = load ptr, ptr %i.p, align 8
  %i.an = call ptr @val_to_str_ext_const(i32 noundef %i.ai, ptr noundef @names_nfs_cb_operation_ext, ptr noundef @.str.2254)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.am, i32 noundef 25, ptr noundef @.str.2505, i32 noundef 32, ptr noundef %i.an)
  %i.ao = load i32, ptr @hf_nfs4_cb_op, align 4
  %i.ap = call ptr @proto_tree_add_uint(ptr noundef %i.u, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.v, i32 noundef 4, i32 noundef %i.ai)
  %i.aq = add i32 %i.o, 8                         ; 2 uses
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = zext nneg i32 %i.ai to i64
  %i.as = getelementptr [8 x i8], ptr @nfs4_cb_operation_ett, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load ptr, ptr %i.at, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %ett_nfs4_illegal.sink.i = phi ptr [ %i.au, %bb.f ], [ @ett_nfs4_illegal, %bb.e ]
  %i.av = load i32, ptr %ett_nfs4_illegal.sink.i, align 4
  %i.aw = call ptr @proto_item_add_subtree(ptr noundef %i.ap, i32 noundef %i.av) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ax = load i32, ptr @hf_nfs4_status, align 4
  %i.ay = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.aw, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.aq, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.az = load i32, ptr @hf_nfs_status, align 4
  %i.ba = load i32, ptr %i.a, align 4
  %i.bb = call ptr @proto_tree_add_uint(ptr noundef %i.aw, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.aq, i32 noundef 4, i32 noundef %i.ba) ; 2 uses
  %.not.i.i.peel.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.peel.i, label %dissect_nfs4_status.exit.peel.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not5.i.i.peel.i = icmp eq ptr %i.bd, null
  br i1 %.not5.i.i.peel.i, label %dissect_nfs4_status.exit.peel.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr i8, ptr %i.bd, i64 28     ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = or i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4
  br label %dissect_nfs4_status.exit.peel.i

dissect_nfs4_status.exit.peel.i:                  ; preds = %bb.i, %bb.h, %bb.g
  %i.bh = load i32, ptr %i.a, align 4
  %i.bi = add i32 %i.o, 12                        ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not.peel.i = icmp eq i32 %i.bh, 0
  br i1 %.not.peel.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %dissect_nfs4_status.exit.peel.i
  store i8 1, ptr %i.aj, align 4
  br label %bb.n

bb.k:                                             ; preds = %dissect_nfs4_status.exit.peel.i
  switch i32 %i.ai, label %bb.n [
    i32 11, label %bb.m
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr @dissect_nfs4_fattrs.fattr_obj_type, align 4
  %i.bj = call fastcc i32 @dissect_nfs4_bitmap(ptr noundef %0, i32 noundef %i.bi, ptr noundef %1, ptr noundef %i.aw, ptr noundef %3, i32 noundef 3, i32 noundef -1, ptr noundef @dissect_nfs4_fattrs.bitmap_info, i32 noundef 1, ptr noundef null), !inline_history !0
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bk = load i32, ptr @hf_nfs4_sessionid, align 4
  %i.bl = call ptr @proto_tree_add_item(ptr noundef %i.aw, i32 noundef %i.bk, ptr noundef %0, i32 noundef %i.bi, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.bm = add i32 %i.o, 28
  %i.bn = load i32, ptr @hf_nfs4_seqid, align 4
  %i.bo = call i32 @dissect_rpc_uint32(ptr noundef %0, ptr noundef %i.aw, i32 noundef %i.bn, i32 noundef %i.bm)
  %i.bp = load i32, ptr @hf_nfs4_slotid, align 4
  %i.bq = call i32 @dissect_rpc_uint32(ptr noundef %0, ptr noundef %i.aw, i32 noundef %i.bp, i32 noundef %i.bo)
  %i.br = load i32, ptr @hf_nfs4_high_slotid, align 4
  %i.bs = call i32 @dissect_rpc_uint32(ptr noundef %0, ptr noundef %i.aw, i32 noundef %i.br, i32 noundef %i.bq)
  %i.bt = load i32, ptr @hf_nfs4_target_high_slotid, align 4
  %i.bu = call i32 @dissect_rpc_uint32(ptr noundef %0, ptr noundef %i.aw, i32 noundef %i.bt, i32 noundef %i.bs)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.1.peel.i = phi i32 [ %i.bi, %bb.j ], [ %i.bi, %bb.k ], [ %i.bu, %bb.m ], [ %i.bj, %bb.l ] ; 2 uses
  %exitcond.peel.not.i = icmp eq i32 %.08391111.i, 1
  br i1 %exitcond.peel.not.i, label %dissect_nfs4_cb_resp_op.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.n, %bb.x
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.x ], [ 1, %bb.n ] ; 3 uses
  %.094.i = phi i32 [ %.1.i, %bb.x ], [ %.1.peel.i, %bb.n ] ; 6 uses
  %i.bv = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.094.i) ; 7 uses
  %i.bw = getelementptr [16 x i8], ptr %i.ag, i64 %indvars.iv.i ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 4      ; 2 uses
  store i8 0, ptr %i.bx, align 4
  store i32 %i.bv, ptr %i.bw, align 8
  %i.by = add i32 %i.bv, -16
  %or.cond.i = icmp ult i32 %i.by, -13
  %i.bz = icmp ne i32 %i.bv, 10044                ; 2 uses
  %or.cond3.i = and i1 %i.bz, %or.cond.i
  br i1 %or.cond3.i, label %._crit_edge.loopexit.split.loop.exit.i, label %bb.o

bb.o:                                             ; preds = %.peel.next.i
  %i.ca = load ptr, ptr %i.p, align 8
  %i.cb = call ptr @val_to_str_ext_const(i32 noundef %i.bv, ptr noundef @names_nfs_cb_operation_ext, ptr noundef @.str.2254)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ca, i32 noundef 25, ptr noundef @.str.2505, i32 noundef 59, ptr noundef %i.cb)
  %i.cc = load i32, ptr @hf_nfs4_cb_op, align 4
  %i.cd = call ptr @proto_tree_add_uint(ptr noundef %i.u, i32 noundef %i.cc, ptr noundef %0, i32 noundef %.094.i, i32 noundef 4, i32 noundef %i.bv)
  %i.ce = add i32 %.094.i, 4                      ; 2 uses
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cf = zext nneg i32 %i.bv to i64
  %i.cg = getelementptr [8 x i8], ptr @nfs4_cb_operation_ett, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load ptr, ptr %i.ch, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink115.i = phi ptr [ %i.ci, %bb.p ], [ @ett_nfs4_illegal, %bb.o ]
  %i.cj = load i32, ptr %.sink115.i, align 4
  %i.ck = call ptr @proto_item_add_subtree(ptr noundef %i.cd, i32 noundef %i.cj) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.cl = load i32, ptr @hf_nfs4_status, align 4
  %i.cm = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ck, i32 noundef %i.cl, ptr noundef %0, i32 noundef %i.ce, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.cn = load i32, ptr @hf_nfs_status, align 4
  %i.co = load i32, ptr %i.a, align 4
  %i.cp = call ptr @proto_tree_add_uint(ptr noundef %i.ck, i32 noundef %i.cn, ptr noundef %0, i32 noundef %i.ce, i32 noundef 4, i32 noundef %i.co) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i, label %dissect_nfs4_status.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not5.i.i.i, label %dissect_nfs4_status.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr i8, ptr %i.cr, i64 28     ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = or i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 4
  br label %dissect_nfs4_status.exit.i

dissect_nfs4_status.exit.i:                       ; preds = %bb.s, %bb.r, %bb.q
  %i.cv = load i32, ptr %i.a, align 4
  %i.cw = add i32 %.094.i, 8                      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %dissect_nfs4_status.exit.i
  store i8 1, ptr %i.bx, align 4
  br label %bb.x

bb.u:                                             ; preds = %dissect_nfs4_status.exit.i
  switch i32 %i.bv, label %bb.x [
    i32 11, label %bb.w
    i32 3, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr @dissect_nfs4_fattrs.fattr_obj_type, align 4
  %i.cx = call fastcc i32 @dissect_nfs4_bitmap(ptr noundef %0, i32 noundef %i.cw, ptr noundef %1, ptr noundef %i.ck, ptr noundef %3, i32 noundef 3, i32 noundef -1, ptr noundef @dissect_nfs4_fattrs.bitmap_info, i32 noundef 1, ptr noundef null), !inline_history !0
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cy = load i32, ptr @hf_nfs4_sessionid, align 4
  %i.cz = call ptr @proto_tree_add_item(ptr noundef %i.ck, i32 noundef %i.cy, ptr noundef %0, i32 noundef %i.cw, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.da = add i32 %.094.i, 24
  %i.db = load i32, ptr @hf_nfs4_seqid, align 4
  %i.dc = call i32 @dissect_rpc_uint32(ptr noundef %0, ptr noundef %i.ck, i32 noundef %i.db, i32 noundef %i.da)
  %i.dd = load i32, ptr @hf_nfs4_slotid, align 4
  %i.de = call i32 @dissect_rpc_uint32(ptr noundef %0, ptr noundef %i.ck, i32 noundef %i.dd, i32 noundef %i.dc)
  %i.df = load i32, ptr @hf_nfs4_high_slotid, align 4
  %i.dg = call i32 @dissect_rpc_uint32(ptr noundef %0, ptr noundef %i.ck, i32 noundef %i.df, i32 noundef %i.de)
  %i.dh = load i32, ptr @hf_nfs4_target_high_slotid, align 4
  %i.di = call i32 @dissect_rpc_uint32(ptr noundef %0, ptr noundef %i.ck, i32 noundef %i.dh, i32 noundef %i.dg)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.1.i = phi i32 [ %i.cw, %bb.t ], [ %i.cw, %bb.u ], [ %i.di, %bb.w ], [ %i.cx, %bb.v ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %dissect_nfs4_cb_resp_op.exit, label %.peel.next.i, !llvm.loop !50

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %.peel.next.i
  %i.dj = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %dissect_nfs4_cb_resp_op.exit

dissect_nfs4_cb_resp_op.exit:                     ; preds = %bb.x, %bb.d, %.lr.ph.i, %bb.n, %._crit_edge.loopexit.split.loop.exit.i
  %i.dk = phi ptr [ %i.af, %bb.d ], [ %i.ag, %.lr.ph.i ], [ %i.ag, %bb.n ], [ %i.ag, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.ag, %bb.x ]
  %i.dl = phi ptr [ %i.ad, %bb.d ], [ %i.ah, %.lr.ph.i ], [ %i.ah, %bb.n ], [ %i.ah, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.ah, %bb.x ] ; 2 uses
  %.085.lcssa.i = phi i32 [ 0, %bb.d ], [ 0, %.lr.ph.i ], [ 1, %bb.n ], [ %i.dj, %._crit_edge.loopexit.split.loop.exit.i ], [ %.08391111.i, %bb.x ]
  %.0.lcssa.i = phi i32 [ %i.v, %bb.d ], [ %i.v, %.lr.ph.i ], [ %.1.peel.i, %bb.n ], [ %.094.i, %._crit_edge.loopexit.split.loop.exit.i ], [ %.1.i, %bb.x ]
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call noalias dereferenceable_or_null(64) ptr @wmem_alloc0(ptr noundef %i.dm, i64 noundef 64) #22 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(64) %i.dn, ptr noundef align 8 dereferenceable(64) %3, i64 64, i1 false)
  %i.do = load ptr, ptr %i.dl, align 8
  %i.dp = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.do, i64 noundef 24) #22 ; 4 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  store ptr %i.dk, ptr %i.dq, align 8
  store i32 %.085.lcssa.i, ptr %i.dp, align 8
  %i.dr = getelementptr i8, ptr %i.dp, i64 16
  store i32 0, ptr %i.dr, align 8
  %i.ds = getelementptr i8, ptr %i.dn, i64 56
  store ptr %i.dp, ptr %i.ds, align 8
  %i.dt = load i32, ptr @nfsv4_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.dt, ptr noundef %1, ptr noundef %i.dn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  ret i32 %.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_nfs4_write_response(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = load i32, ptr @hf_nfs4_callback_stateids, align 4
  %i.c = call ptr @proto_tree_add_item_ret_uint(ptr noundef %3, i32 noundef %i.b, ptr noundef %0, i32 noundef %2, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.d = add i32 %2, 4                            ; 2 uses
  %i.e = load i32, ptr @ett_nfs4_callback_stateids_sub, align 4
  %i.f = call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.e)
  %i.g = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.027 = phi i32 [ %i.m, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.02526 = phi i32 [ %i.l, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = load i32, ptr @hf_nfs4_callback_stateids_index, align 4
  %i.i = call ptr @proto_tree_add_uint(ptr noundef %i.f, i32 noundef %i.h, ptr noundef %0, i32 noundef %.02526, i32 noundef 4, i32 noundef %.027)
  %i.j = load i32, ptr @ett_nfs4_callback_stateids_sub, align 4
  %i.k = call ptr @proto_item_add_subtree(ptr noundef %i.i, i32 noundef %i.j)
  %i.l = call fastcc i32 @dissect_nfs4_stateid(ptr noundef %0, i32 noundef %.02526, ptr noundef %i.k, ptr noundef null) ; 2 uses
  %i.m = add nuw i32 %.027, 1                     ; 2 uses
  %i.n = load i32, ptr %i.a, align 4
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.025.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.l, %.lr.ph ]
  %i.p = load i32, ptr @hf_nfs4_length, align 4
  %i.q = call i32 @dissect_rpc_uint64(ptr noundef %0, ptr noundef %3, i32 noundef %i.p, i32 noundef %.025.lcssa) ; 3 uses
  %i.r = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.q) ; 3 uses
  %i.s = load i32, ptr @hf_nfs4_stable_how, align 4
  %i.t = getelementptr i8, ptr %1, i64 416
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call ptr @val_to_str(ptr noundef %i.u, i32 noundef %i.r, ptr noundef @names_stable_how4, ptr noundef @.str.2502)
  %i.w = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %3, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.q, i32 noundef 4, i32 noundef %i.r, ptr noundef @.str.2501, ptr noundef @.str.2512, ptr noundef %i.v, i32 noundef %i.r) ; 0 uses
  %i.x = add i32 %i.q, 4
  %i.y = load i32, ptr @hf_nfs4_verifier, align 4
  %i.z = call i32 @dissect_rpc_uint64(ptr noundef %0, ptr noundef %3, i32 noundef %i.y, i32 noundef %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %i.z
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_notify_add4(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %1)
  %i.b = add i32 %1, 4                            ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_nfs4_component, align 4
  %i.d = tail call i32 @dissect_rpc_string(ptr noundef %0, ptr noundef %3, ptr noundef %2, i32 noundef %i.c, i32 noundef %i.b, ptr noundef null)
  store i32 0, ptr @dissect_nfs4_fattrs.fattr_obj_type, align 4
  %i.e = tail call fastcc i32 @dissect_nfs4_bitmap(ptr noundef %0, i32 noundef %i.d, ptr noundef %3, ptr noundef %2, ptr noundef %4, i32 noundef -1, i32 noundef -1, ptr noundef @dissect_nfs4_fattrs.bitmap_info, i32 noundef 1, ptr noundef null), !inline_history !0
  %i.f = load i32, ptr @hf_nfs4_cookie, align 4
  %i.g = tail call i32 @dissect_rpc_uint64(ptr noundef %0, ptr noundef %2, i32 noundef %i.f, i32 noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.b, %bb.a ]
  %i.h = load i32, ptr @hf_nfs4_component, align 4
  %i.i = tail call i32 @dissect_rpc_string(ptr noundef %0, ptr noundef %3, ptr noundef %2, i32 noundef %i.h, i32 noundef %.0, ptr noundef null)
  store i32 0, ptr @dissect_nfs4_fattrs.fattr_obj_type, align 4
  %i.j = tail call fastcc i32 @dissect_nfs4_bitmap(ptr noundef %0, i32 noundef %i.i, ptr noundef %3, ptr noundef %2, ptr noundef %4, i32 noundef -1, i32 noundef -1, ptr noundef @dissect_nfs4_fattrs.bitmap_info, i32 noundef 1, ptr noundef null), !inline_history !0 ; 2 uses
  %i.k = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.j)
  %i.l = add i32 %i.j, 4                          ; 2 uses
  %.not32 = icmp eq i32 %i.k, 0
  br i1 %.not32, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr @hf_nfs4_cookie, align 4
  %i.n = tail call i32 @dissect_rpc_uint64(ptr noundef %0, ptr noundef %2, i32 noundef %i.m, i32 noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.n, %bb.d ], [ %i.l, %bb.c ]  ; 2 uses
  %i.o = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %.1)
  %i.p = add i32 %.1, 4                           ; 2 uses
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr @hf_nfs4_component, align 4
  %i.r = tail call i32 @dissect_rpc_string(ptr noundef %0, ptr noundef %3, ptr noundef %2, i32 noundef %i.q, i32 noundef %i.p, ptr noundef null)
  store i32 0, ptr @dissect_nfs4_fattrs.fattr_obj_type, align 4
  %i.s = tail call fastcc i32 @dissect_nfs4_bitmap(ptr noundef %0, i32 noundef %i.r, ptr noundef %3, ptr noundef %2, ptr noundef %4, i32 noundef -1, i32 noundef -1, ptr noundef @dissect_nfs4_fattrs.bitmap_info, i32 noundef 1, ptr noundef null), !inline_history !0
  %i.t = load i32, ptr @hf_nfs4_cookie, align 4
  %i.u = tail call i32 @dissect_rpc_uint64(ptr noundef %0, ptr noundef %2, i32 noundef %i.t, i32 noundef %i.s)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i32 [ %i.u, %bb.f ], [ %i.p, %bb.e ]
  %i.v = load i32, ptr @hf_nfs4_nad_last_entry, align 4
  %i.w = tail call i32 @dissect_rpc_bool(ptr noundef %0, ptr noundef %2, i32 noundef %i.v, i32 noundef %.2)
  ret i32 %i.w
}

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_throw(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_nfs4_sec_oid(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = load i32, ptr @hf_nfs4_sec_oid, align 4
  %i.b = tail call i32 @dissect_rpc_opaque_data(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %2, i32 noundef %i.a, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, ptr noundef @dissect_oid)
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_rpc_opaque_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef i32 @dissect_oid(ptr noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0) ; 3 uses
  %i.b = load i32, ptr @hf_nfs4_sec_oid, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef %i.a, i32 noundef 0) ; 0 uses
  %i.d = add i32 %1, 4
  %i.e = add i32 %i.d, %i.a
  %i.f = sub i32 0, %i.a
  %i.g = and i32 %i.f, 3
  %i.h = add i32 %i.e, %i.g
  ret i32 %i.h
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_nfs4_io_latency(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.nstime_t, align 8           ; 5 uses
  %5 = alloca %struct.nstime_t, align 8           ; 5 uses
  %i.a = load i32, ptr @ett_nfs4_io_latency, align 4
  %i.b = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef %i.a, ptr noundef null, ptr noundef @.str.2529, ptr noundef %3) ; 7 uses
  %i.c = load i32, ptr @hf_nfs4_ff_ops_requested, align 4
  %i.d = tail call i32 @dissect_rpc_uint64(ptr noundef %0, ptr noundef %i.b, i32 noundef %i.c, i32 noundef %1)
  %i.e = load i32, ptr @hf_nfs4_ff_bytes_requested, align 4
  %i.f = tail call i32 @dissect_rpc_uint64(ptr noundef %0, ptr noundef %i.b, i32 noundef %i.e, i32 noundef %i.d)
  %i.g = load i32, ptr @hf_nfs4_ff_ops_completed, align 4
  %i.h = tail call i32 @dissect_rpc_uint64(ptr noundef %0, ptr noundef %i.b, i32 noundef %i.g, i32 noundef %i.f)
  %i.i = load i32, ptr @hf_nfs4_ff_bytes_completed, align 4
  %i.j = tail call i32 @dissect_rpc_uint64(ptr noundef %0, ptr noundef %i.b, i32 noundef %i.i, i32 noundef %i.h)
  %i.k = load i32, ptr @hf_nfs4_ff_bytes_not_delivered, align 4
  %i.l = tail call i32 @dissect_rpc_uint64(ptr noundef %0, ptr noundef %i.b, i32 noundef %i.k, i32 noundef %i.j) ; 5 uses
  %i.m = load i32, ptr @ett_nfs4_io_time, align 4
  %i.n = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.b, ptr noundef %0, i32 noundef %i.l, i32 noundef 0, i32 noundef %i.m, ptr noundef null, ptr noundef @.str.1412, ptr noundef @.str.2530)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.o = tail call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %i.l)
  store i64 %i.o, ptr %5, align 8
  %i.p = add i32 %i.l, 8
  %i.q = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.q, ptr %i.r, align 8
  %i.s = load i32, ptr @hf_nfs4_time, align 4
  %i.t = call ptr @proto_tree_add_time(ptr noundef %i.n, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.l, i32 noundef 12, ptr noundef nonnull %5)
  %i.u = load i32, ptr @ett_nfs4_nfstime, align 4
  %i.v = call ptr @proto_item_add_subtree(ptr noundef %i.t, i32 noundef %i.u) ; 2 uses
  %i.w = load i32, ptr @hf_nfs4_time_seconds, align 4
  %i.x = call i32 @dissect_rpc_uint64(ptr noundef %0, ptr noundef %i.v, i32 noundef %i.w, i32 noundef %i.l)
  %i.y = load i32, ptr @hf_nfs4_time_nseconds, align 4
  %i.z = call i32 @dissect_rpc_uint32(ptr noundef %0, ptr noundef %i.v, i32 noundef %i.y, i32 noundef %i.x) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.aa = load i32, ptr @ett_nfs4_io_time, align 4
  %i.ab = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.b, ptr noundef %0, i32 noundef %i.z, i32 noundef 0, i32 noundef %i.aa, ptr noundef null, ptr noundef @.str.1412, ptr noundef @.str.2531)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ac = call i64 @tvb_get_ntoh64(ptr noundef %0, i32 noundef %i.z)
  store i64 %i.ac, ptr %4, align 8
  %i.ad = add i32 %i.z, 8
  %i.ae = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ae, ptr %i.af, align 8
  %i.ag = load i32, ptr @hf_nfs4_time, align 4
  %i.ah = call ptr @proto_tree_add_time(ptr noundef %i.ab, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.z, i32 noundef 12, ptr noundef nonnull %4)
  %i.ai = load i32, ptr @ett_nfs4_nfstime, align 4
  %i.aj = call ptr @proto_item_add_subtree(ptr noundef %i.ah, i32 noundef %i.ai) ; 2 uses
  %i.ak = load i32, ptr @hf_nfs4_time_seconds, align 4
  %i.al = call i32 @dissect_rpc_uint64(ptr noundef %0, ptr noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.z)
  %i.am = load i32, ptr @hf_nfs4_time_nseconds, align 4
end_hunk_0
