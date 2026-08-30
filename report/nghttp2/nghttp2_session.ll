Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_session?download=true
begin_hunk_0_@nghttp2_session_mem_send_internal:bb.a

bb.dl:                                            ; preds = %bb.dk
  %i.no = load i32, ptr %i.nj, align 8, !tbaa !44
  switch i32 %i.no, label %session_predicate_altsvc_send.exit.i [
    i32 5, label %session_prep_frame.exit.thread.thread
    i32 3, label %session_detach_stream_item.exit.fold.split.i
  ]

session_predicate_altsvc_send.exit.i:             ; preds = %bb.dl, %session_is_closing.exit.thread.i344.i
  tail call void @nghttp2_frame_pack_altsvc(ptr noundef nonnull %i.c, ptr noundef nonnull %.0.i236) #15
  br label %session_prep_frame.exit.thread.thread321

bb.dm:                                            ; preds = %bb.df
  %i.np = load i8, ptr %i.o, align 4, !tbaa !8    ; 2 uses
  %i.nq = and i8 %i.np, 1
  %.not.i.i349.i = icmp eq i8 %i.nq, 0
  br i1 %.not.i.i349.i, label %bb.dn, label %session_prep_frame.exit.thread.thread

bb.dn:                                            ; preds = %bb.dm
  %i.nr = and i8 %i.np, 2
  %.not.i.i.i350.i = icmp eq i8 %i.nr, 0
  br i1 %.not.i.i.i350.i, label %bb.do, label %session_is_closing.exit.i351.i

bb.do:                                            ; preds = %bb.dn
  %i.ns = tail call i64 @nghttp2_map_size(ptr noundef nonnull %0) #15
  %i.nt = load i64, ptr %i.p, align 8, !tbaa !134
  %i.nu = load i64, ptr %i.q, align 8, !tbaa !119
  %i.nv = add i64 %i.nu, %i.nt
  %.not4.i.i.i355.i = icmp eq i64 %i.ns, %i.nv
  br i1 %.not4.i.i.i355.i, label %nghttp2_session_want_read.exit.i.i356.i, label %session_predicate_origin_send.exit.i

nghttp2_session_want_read.exit.i.i356.i:          ; preds = %bb.do
  %i.nw = load i8, ptr %i.o, align 4, !tbaa !8
  %i.nx = and i8 %i.nw, 12
  %.not6.i.i357.i = icmp eq i8 %i.nx, 0
  br i1 %.not6.i.i357.i, label %session_predicate_origin_send.exit.i, label %session_is_closing.exit.i351.i

session_is_closing.exit.i351.i:                   ; preds = %nghttp2_session_want_read.exit.i.i356.i, %bb.dn
  %i.ny = tail call i32 @nghttp2_session_want_write(ptr noundef nonnull %0)
  %.fr.i352.i = freeze i32 %i.ny
  %.not.not.i353.i = icmp eq i32 %.fr.i352.i, 0
  br i1 %.not.not.i353.i, label %session_prep_frame.exit.thread.thread, label %session_predicate_origin_send.exit.i

session_predicate_origin_send.exit.i:             ; preds = %session_is_closing.exit.i351.i, %nghttp2_session_want_read.exit.i.i356.i, %bb.do
  %i.nz = tail call i32 @nghttp2_frame_pack_origin(ptr noundef nonnull %i.c, ptr noundef nonnull %.0.i236) #15
  br label %session_prep_frame.exit

bb.dp:                                            ; preds = %bb.df
  %i.oa = getelementptr inbounds nuw i8, ptr %.0.i236, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !106
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !153
  %i.od = load i8, ptr %i.o, align 4, !tbaa !8    ; 2 uses
  %i.oe = and i8 %i.od, 1
  %.not.i.i358.i = icmp eq i8 %i.oe, 0
  br i1 %.not.i.i358.i, label %bb.dq, label %session_prep_frame.exit.thread.thread

bb.dq:                                            ; preds = %bb.dp
  %i.of = and i8 %i.od, 2
  %.not.i.i.i360.i = icmp eq i8 %i.of, 0
  br i1 %.not.i.i.i360.i, label %bb.dr, label %session_is_closing.exit.i361.i

bb.dr:                                            ; preds = %bb.dq
  %i.og = tail call i64 @nghttp2_map_size(ptr noundef nonnull %0) #15
  %i.oh = load i64, ptr %i.p, align 8, !tbaa !134
  %i.oi = load i64, ptr %i.q, align 8, !tbaa !119
  %i.oj = add i64 %i.oi, %i.oh
  %.not4.i.i.i366.i = icmp eq i64 %i.og, %i.oj
  br i1 %.not4.i.i.i366.i, label %nghttp2_session_want_read.exit.i.i367.i, label %session_is_closing.exit.thread.i363.i

nghttp2_session_want_read.exit.i.i367.i:          ; preds = %bb.dr
  %i.ok = load i8, ptr %i.o, align 4, !tbaa !8
  %i.ol = and i8 %i.ok, 12
  %.not6.i.i368.i = icmp eq i8 %i.ol, 0
  br i1 %.not6.i.i368.i, label %session_is_closing.exit.thread.i363.i, label %session_is_closing.exit.i361.i

session_is_closing.exit.i361.i:                   ; preds = %nghttp2_session_want_read.exit.i.i367.i, %bb.dq
  %i.om = tail call i32 @nghttp2_session_want_write(ptr noundef nonnull %0)
  %.not.not.i362.i = icmp eq i32 %i.om, 0
  br i1 %.not.not.i362.i, label %session_prep_frame.exit.thread.thread, label %session_is_closing.exit.thread.i363.i

session_is_closing.exit.thread.i363.i:            ; preds = %session_is_closing.exit.i361.i, %nghttp2_session_want_read.exit.i.i367.i, %bb.dr
  %i.on = tail call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %i.oc) #15 ; 4 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %select.unfold431.i, label %bb.ds

bb.ds:                                            ; preds = %session_is_closing.exit.thread.i363.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 116
  %i.oq = load i8, ptr %i.op, align 4, !tbaa !40
  %i.or = and i8 %i.oq, 2
  %.not.i8.i364.i = icmp eq i8 %i.or, 0
  br i1 %.not.i8.i364.i, label %bb.dt, label %select.unfold431.i

bb.dt:                                            ; preds = %bb.ds
  %i.os = load i32, ptr %i.on, align 8, !tbaa !44
  switch i32 %i.os, label %bb.du [
    i32 5, label %select.unfold431.i
    i32 3, label %session_prep_frame.exit.thread.thread
  ]

bb.du:                                            ; preds = %bb.dt
  %i.ot = getelementptr inbounds nuw i8, ptr %i.on, i64 117
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !133
  %i.ov = and i8 %i.ou, 1
  %.not7.i.i = icmp eq i8 %i.ov, 0
  br i1 %.not7.i.i, label %select.unfold431.i, label %session_prep_frame.exit.thread.thread

select.unfold431.i:                               ; preds = %bb.du, %bb.dt, %bb.ds, %session_is_closing.exit.thread.i363.i
  tail call void @nghttp2_frame_pack_priority_update(ptr noundef nonnull %i.c, ptr noundef nonnull %.0.i236) #15
  br label %session_prep_frame.exit.thread.thread321

bb.dv:                                            ; preds = %bb.df
  tail call void @__assert_fail(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1, i32 noundef 2298, ptr noundef nonnull @__PRETTY_FUNCTION__.session_prep_frame) #16
  unreachable

session_detach_stream_item.exit.fold.split.i:     ; preds = %bb.dl, %bb.cr
  br label %session_prep_frame.exit.thread.thread

session_prep_frame.exit:                          ; preds = %bb.w, %.split.thread.i, %bb.n, %session_ob_data_remove.exit.i.i, %bb.x, %bb.av, %bb.aw, %session_is_closing.exit306.thread.i, %bb.bz, %bb.ca, %bb.ck, %session_predicate_origin_send.exit.i
  %.7.i = phi i32 [ %i.km, %bb.ck ], [ %phi.call381.i, %bb.n ], [ %phi.call381.i, %session_ob_data_remove.exit.i.i ], [ %phi.call381.i, %.split.thread.i ], [ %i.ka, %bb.ca ], [ %i.cu, %bb.w ], [ %i.gn, %bb.aw ], [ %i.cs, %bb.x ], [ %i.nz, %session_predicate_origin_send.exit.i ], [ %i.in, %session_is_closing.exit306.thread.i ], [ %i.jz, %bb.bz ], [ %i.gm, %bb.av ] ; 3 uses
  switch i32 %.7.i, label %session_prep_frame.exit.thread [
    i32 -526, label %.thread278
    i32 -508, label %.thread284.backedge
  ]

session_prep_frame.exit.thread:                   ; preds = %session_prep_frame.exit
  %i.ow = icmp slt i32 %.7.i, 0
  br i1 %i.ow, label %session_prep_frame.exit.thread.thread, label %session_prep_frame.exit.thread.thread321

session_prep_frame.exit.thread.thread:            ; preds = %bb.al, %session_predicate_for_stream_send.exit.i229, %bb.am, %session_is_closing.exit.thread.i.i227, %bb.ai, %session_is_closing.exit.i.i225, %bb.w, %bb.bi, %bb.bh, %bb.cr, %session_is_closing.exit.i, %session_is_closing.exit299.i, %session_is_closing.exit306.i, %bb.ci, %nghttp2_session_get_stream.exit310.i, %bb.ab, %session_predicate_headers_send.exit.i, %bb.bn, %session_predicate_push_promise_send.exit.i, %bb.dt, %session_is_closing.exit.i351.i, %session_is_closing.exit338.i, %bb.cv, %bb.du, %bb.z, %bb.au, %bb.dm, %session_is_closing.exit.i361.i, %bb.dp, %session_is_closing.exit.i.i, %bb.aa, %session_is_closing.exit.i.i281.i, %.thread405.i, %session_is_closing.exit.thread.i.i283.i, %bb.ar, %session_predicate_for_stream_send.exit.i285.i, %nghttp2_session_is_my_stream_id.exit.i286.i, %session_is_closing.exit.i.i315.i, %bb.bt, %session_is_closing.exit.thread.i.i317.i, %bb.bu, %bb.by, %session_predicate_for_stream_send.exit.i319.i, %bb.bx, %session_detach_stream_item.exit.fold.split.i, %bb.cq, %bb.cp, %state_reserved_local.exit.i.i, %bb.cm, %session_is_closing.exit.i326.i, %bb.dg, %bb.dl, %bb.dk, %bb.dj, %session_is_closing.exit.i342.i, %bb.da, %bb.db, %bb.bj, %session_prep_frame.exit.thread
  %.7.i247316.ph = phi i32 [ -530, %session_is_closing.exit.i.i225 ], [ -530, %bb.ai ], [ -512, %session_is_closing.exit.thread.i.i227 ], [ -516, %bb.am ], [ -505, %session_predicate_for_stream_send.exit.i229 ], [ -505, %bb.al ], [ -902, %bb.db ], [ -535, %bb.da ], [ -530, %session_is_closing.exit.i342.i ], [ -510, %bb.dj ], [ -510, %bb.dk ], [ -510, %bb.dl ], [ -530, %bb.dg ], [ -530, %session_is_closing.exit.i326.i ], [ -530, %bb.cm ], [ -514, %state_reserved_local.exit.i.i ], [ -510, %bb.cp ], [ -510, %bb.cq ], [ -511, %session_detach_stream_item.exit.fold.split.i ], [ -511, %bb.bx ], [ -528, %session_predicate_for_stream_send.exit.i319.i ], [ -516, %bb.by ], [ -530, %bb.bu ], [ -512, %session_is_closing.exit.thread.i.i317.i ], [ -510, %bb.bt ], [ -530, %session_is_closing.exit.i.i315.i ], [ -514, %nghttp2_session_is_my_stream_id.exit.i286.i ], [ -511, %session_predicate_for_stream_send.exit.i285.i ], [ -530, %bb.ar ], [ -512, %session_is_closing.exit.thread.i.i283.i ], [ -510, %.thread405.i ], [ -530, %session_is_closing.exit.i.i281.i ], [ -511, %bb.aa ], [ -516, %session_is_closing.exit.i.i ], [ -530, %bb.dp ], [ -530, %session_is_closing.exit.i361.i ], [ -530, %bb.dm ], [ -514, %bb.au ], [ -901, %bb.z ], [ -514, %bb.du ], [ -530, %bb.cv ], [ -530, %session_is_closing.exit338.i ], [ -530, %session_is_closing.exit.i351.i ], [ -511, %bb.dt ], [ -522, %session_predicate_push_promise_send.exit.i ], [ -530, %bb.bn ], [ -522, %session_predicate_headers_send.exit.i ], [ -516, %bb.ab ], [ -505, %nghttp2_session_get_stream.exit310.i ], [ -530, %bb.ci ], [ -530, %session_is_closing.exit306.i ], [ -530, %session_is_closing.exit299.i ], [ -530, %session_is_closing.exit.i ], [ -510, %bb.cr ], [ -510, %bb.bh ], [ -510, %bb.bi ], [ -521, %bb.w ], [ -510, %bb.bj ], [ %.7.i, %session_prep_frame.exit.thread ] ; 2 uses
  %.pr450 = load i8, ptr %i.aq, align 4, !tbaa !106 ; 2 uses
  %.not189 = icmp eq i8 %.pr450, 0
  br i1 %.not189, label %.thread257, label %session_prep_frame.exit.thread.thread.thread

session_prep_frame.exit.thread.thread.thread:     ; preds = %bb.be, %bb.bb, %session_prep_frame.exit.thread.thread
  %.7.i247316453 = phi i32 [ %.7.i247316.ph, %session_prep_frame.exit.thread.thread ], [ -530, %bb.bb ], [ -530, %bb.be ] ; 7 uses
  %i.ox = phi i8 [ %.pr450, %session_prep_frame.exit.thread.thread ], [ 2, %bb.bb ], [ 3, %bb.be ] ; 4 uses
  %i.oy = load ptr, ptr %i.ad, align 8, !tbaa !155 ; 2 uses
  %.not190 = icmp eq ptr %i.oy, null
  br i1 %.not190, label %.thread, label %bb.dw

bb.dw:                                            ; preds = %session_prep_frame.exit.thread.thread.thread
  %i.oz = icmp samesign ult i32 %.7.i247316453, -899
  %.not192 = icmp eq i8 %i.ox, 8
  %or.cond327 = or i1 %i.oz, %.not192
  br i1 %or.cond327, label %.thread, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.pa = icmp ne i8 %i.ox, 3
  %i.pb = icmp ne i32 %.7.i247316453, -510
  %or.cond = or i1 %i.pb, %i.pa
  br i1 %or.cond, label %bb.dy, label %.thread257

bb.dy:                                            ; preds = %bb.dx
  %i.pc = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.pd = tail call i32 %i.oy(ptr noundef nonnull %0, ptr noundef nonnull %.0.i236, i32 noundef %.7.i247316453, ptr noundef %i.pc) #15
  %.not193 = icmp eq i32 %i.pd, 0
  br i1 %.not193, label %..thread_crit_edge, label %bb.dz

..thread_crit_edge:                               ; preds = %bb.dy
  %.pr.pre = load i8, ptr %i.aq, align 4, !tbaa !106
  br label %.thread

bb.dz:                                            ; preds = %bb.dy
  tail call void @nghttp2_outbound_item_free(ptr noundef nonnull %.0.i236, ptr noundef nonnull %i.a) #15
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.a, ptr noundef nonnull %.0.i236) #15
  br label %.thread278

.thread:                                          ; preds = %..thread_crit_edge, %bb.dw, %session_prep_frame.exit.thread.thread.thread
  %.pr = phi i8 [ %i.ox, %session_prep_frame.exit.thread.thread.thread ], [ %i.ox, %bb.dw ], [ %.pr.pre, %..thread_crit_edge ]
  switch i8 %.pr, label %.thread257 [
    i8 1, label %bb.ea
    i8 5, label %bb.ed
  ]

bb.ea:                                            ; preds = %.thread
  %i.pe = getelementptr inbounds nuw i8, ptr %.0.i236, i64 56
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !106
  %i.pg = icmp eq i32 %i.pf, 0
  br i1 %i.pg, label %bb.eb, label %.thread257

bb.eb:                                            ; preds = %bb.ea
  %i.ph = getelementptr inbounds nuw i8, ptr %.0.i236, i64 8
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !106 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.0.i236, i64 132
  %i.pk = load i8, ptr %i.pj, align 4, !tbaa !106
  %.not194 = icmp eq i8 %i.pk, 0
  br i1 %.not194, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.pl = getelementptr inbounds nuw i8, ptr %.0.i236, i64 128
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !106
  br label %bb.ee

bb.ed:                                            ; preds = %.thread
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i236, i64 40
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !106
  br label %bb.ee

bb.ee:                                            ; preds = %bb.eb, %bb.ec, %bb.ed
  %.0163 = phi i32 [ 7, %bb.eb ], [ %i.pm, %bb.ec ], [ 2, %bb.ed ]
  %.0162 = phi i32 [ %i.pi, %bb.eb ], [ %i.pi, %bb.ec ], [ %i.po, %bb.ed ] ; 2 uses
  %.not195 = icmp eq i32 %.0162, 0
  br i1 %.not195, label %.thread257, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.pp = tail call i32 @nghttp2_session_close_stream(ptr noundef nonnull %0, i32 noundef %.0162, i32 noundef %.0163)
  br label %.thread257

.thread257:                                       ; preds = %bb.dx, %session_prep_frame.exit.thread.thread, %bb.ea, %.thread, %bb.ef, %bb.ee
  %.7.i247317 = phi i32 [ %.7.i247316453, %bb.ef ], [ %.7.i247316453, %bb.ee ], [ %.7.i247316453, %.thread ], [ %.7.i247316453, %bb.ea ], [ %.7.i247316.ph, %session_prep_frame.exit.thread.thread ], [ -510, %bb.dx ] ; 2 uses
  %.0164 = phi i32 [ %i.pp, %bb.ef ], [ 0, %bb.ee ], [ 0, %.thread ], [ 0, %bb.ea ], [ 0, %session_prep_frame.exit.thread.thread ], [ 0, %bb.dx ] ; 2 uses
  tail call void @nghttp2_outbound_item_free(ptr noundef nonnull %.0.i236, ptr noundef nonnull %i.a) #15
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.a, ptr noundef nonnull %.0.i236) #15
  %i.pq = load ptr, ptr %i.b, align 8, !tbaa !86
  tail call void @nghttp2_outbound_item_free(ptr noundef %i.pq, ptr noundef nonnull %i.a) #15
  %i.pr = load ptr, ptr %i.b, align 8, !tbaa !86
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.a, ptr noundef %i.pr) #15
  store ptr null, ptr %i.b, align 8, !tbaa !86
  tail call void @nghttp2_bufs_reset(ptr noundef nonnull %i.c) #15
  store i32 0, ptr %i.d, align 8, !tbaa !87
  %i.ps = icmp sgt i32 %.0164, -901
  br i1 %i.ps, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %.thread257
  %i.pt = sext i32 %.0164 to i64
  br label %.thread278

bb.eh:                                            ; preds = %.thread257
  %i.pu = icmp eq i32 %.7.i247317, -523
  br i1 %i.pu, label %bb.ei, label %nghttp2_session_terminate_session.exit

bb.ei:                                            ; preds = %bb.eh
  %i.pv = load i8, ptr %i.o, align 4, !tbaa !8
  %i.pw = and i8 %i.pv, 1
  %.not.i.i200 = icmp eq i8 %i.pw, 0
  br i1 %.not.i.i200, label %bb.ej, label %.thread284.backedge

.thread284.backedge:                              ; preds = %bb.ei, %bb.ek, %bb.fl, %select.unfold297, %bb.ew, %bb.fb, %nghttp2_session_terminate_session.exit, %session_prep_frame.exit, %bb.t, %bb.v, %.thread264, %bb.et, %.thread310, %.thread267, %bb.fq, %.thread284
  br label %.thread284

bb.ej:                                            ; preds = %bb.ei
  %i.px = load i32, ptr %i.ae, align 4, !tbaa !37
  store i32 15, ptr %i.af, align 8, !tbaa !38
  %i.py = tail call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.px, i32 noundef 2, ptr noundef null, i64 noundef 0, i8 noundef zeroext 1) ; 2 uses
  %.not17.i.i = icmp eq i32 %i.py, 0
  br i1 %.not17.i.i, label %bb.ek, label %nghttp2_session_terminate_session.exit

bb.ek:                                            ; preds = %bb.ej
  %i.pz = load i8, ptr %i.o, align 4, !tbaa !8
  %i.qa = or i8 %i.pz, 1
  store i8 %i.qa, ptr %i.o, align 4, !tbaa !8
  br label %.thread284.backedge

nghttp2_session_terminate_session.exit:           ; preds = %bb.ej, %bb.eh
  %.0152.a = phi i32 [ %.7.i247317, %bb.eh ], [ %i.py, %bb.ej ] ; 2 uses
  %i.qb = icmp sgt i32 %.0152.a, -901
  br i1 %i.qb, label %.thread284.backedge, label %.thread278.loopexit.split.loop.exit356

session_prep_frame.exit.thread.thread321:         ; preds = %bb.ba, %bb.cj, %session_predicate_window_update_send.exit.i, %bb.cl, %session_predicate_altsvc_send.exit.i, %nghttp2_session_get_stream.exit211, %select.unfold431.i, %bb.ax, %bb.de, %bb.u, %bb.cd, %session_is_closing.exit.thread.i, %session_prep_frame.exit.thread
  store ptr %.0.i236, ptr %i.b, align 8, !tbaa !86
  %i.qc = load ptr, ptr %i.c, align 8, !tbaa !148
  store ptr %i.qc, ptr %i.e, align 8, !tbaa !156
  %i.qd = load i8, ptr %i.aq, align 4, !tbaa !106
  %.not182 = icmp eq i8 %i.qd, 0
  br i1 %.not182, label %bb.es, label %bb.el

bb.el:                                            ; preds = %session_prep_frame.exit.thread.thread321
  %i.qe = load ptr, ptr %i.ac, align 8, !tbaa !157 ; 2 uses
  %.not.i201 = icmp eq ptr %i.qe, null
  br i1 %.not.i201, label %.thread264, label %session_call_before_frame_send.exit

session_call_before_frame_send.exit:              ; preds = %bb.el
  %i.qf = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.qg = tail call i32 %i.qe(ptr noundef nonnull %0, ptr noundef nonnull %.0.i236, ptr noundef %i.qf) #15, !inline_history !158
  switch i32 %i.qg, label %.thread278 [
    i32 -535, label %bb.em
    i32 0, label %.thread264
  ]

bb.em:                                            ; preds = %session_call_before_frame_send.exit
  %i.qh = load ptr, ptr %i.ad, align 8, !tbaa !155 ; 2 uses
  %.not185 = icmp eq ptr %i.qh, null
  br i1 %.not185, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.qi = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.qj = tail call i32 %i.qh(ptr noundef nonnull %0, ptr noundef nonnull %.0.i236, i32 noundef -535, ptr noundef %i.qi) #15
  %.not186 = icmp eq i32 %i.qj, 0
  br i1 %.not186, label %bb.eo, label %.thread278

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.qk = load i8, ptr %i.aq, align 4, !tbaa !106
  switch i8 %i.qk, label %.thread267 [
    i8 1, label %bb.ep
    i8 5, label %bb.eq
  ]

bb.ep:                                            ; preds = %bb.eo
  %i.ql = getelementptr inbounds nuw i8, ptr %.0.i236, i64 56
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !106
  %i.qn = icmp eq i32 %i.qm, 0
  br i1 %i.qn, label %bb.eq, label %.thread267

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  %.sink488 = phi i64 [ 8, %bb.ep ], [ 40, %bb.eo ]
  %.0166 = phi i32 [ 7, %bb.ep ], [ 2, %bb.eo ]
  %i.qo = getelementptr inbounds nuw i8, ptr %.0.i236, i64 %.sink488
  %.0165 = load i32, ptr %i.qo, align 8, !tbaa !106 ; 2 uses
  %.not187 = icmp eq i32 %.0165, 0
  br i1 %.not187, label %.thread267, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.qp = tail call i32 @nghttp2_session_close_stream(ptr noundef nonnull %0, i32 noundef %.0165, i32 noundef %.0166) ; 2 uses
  %i.qq = icmp sgt i32 %i.qp, -901
  br i1 %i.qq, label %.thread267, label %.thread278.loopexit.split.loop.exit362

bb.es:                                            ; preds = %session_prep_frame.exit.thread.thread321
  %i.qr = getelementptr inbounds nuw i8, ptr %.0.i236, i64 122
  %i.qs = load i8, ptr %i.qr, align 2, !tbaa !106
  %.not183 = icmp eq i8 %i.qs, 0
  br i1 %.not183, label %.thread264, label %bb.et

bb.et:                                            ; preds = %bb.es
  store i32 2, ptr %i.d, align 8, !tbaa !87
  br label %.thread284.backedge

.thread264:                                       ; preds = %session_call_before_frame_send.exit, %bb.el, %bb.es
  store i32 1, ptr %i.d, align 8, !tbaa !87
  br label %.thread284.backedge

.thread267:                                       ; preds = %bb.ep, %bb.eo, %bb.eq, %bb.er
  %i.qt = load ptr, ptr %i.b, align 8, !tbaa !86
  tail call void @nghttp2_outbound_item_free(ptr noundef %i.qt, ptr noundef nonnull %i.a) #15
  %i.qu = load ptr, ptr %i.b, align 8, !tbaa !86
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.a, ptr noundef %i.qu) #15
  store ptr null, ptr %i.b, align 8, !tbaa !86
  tail call void @nghttp2_bufs_reset(ptr noundef nonnull %i.c) #15
  store i32 0, ptr %i.d, align 8, !tbaa !87
  br label %.thread284.backedge

bb.eu:                                            ; preds = %.thread284
  %i.qv = load ptr, ptr %i.e, align 8, !tbaa !156 ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 24
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !152 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !150
  %i.ra = icmp eq ptr %i.qx, %i.qz
  br i1 %i.ra, label %bb.ev, label %bb.fc

bb.ev:                                            ; preds = %bb.eu
  br i1 %.not180, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call fastcc void @session_after_frame_sent2(ptr noundef nonnull %0)
  br label %.thread284.backedge

bb.ex:                                            ; preds = %bb.ev
  %i.rb = tail call fastcc i32 @session_after_frame_sent1(ptr noundef nonnull %0) ; 3 uses
  %i.rc = icmp slt i32 %i.rb, 0
  br i1 %i.rc, label %bb.ey, label %bb.fb

bb.ey:                                            ; preds = %bb.ex
  %i.rd = icmp samesign ugt i32 %i.rb, -901
  br i1 %i.rd, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 3025, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_session_mem_send_internal) #16
  unreachable

bb.fa:                                            ; preds = %bb.ey
  %i.re = sext i32 %i.rb to i64
  br label %.thread278

bb.fb:                                            ; preds = %bb.ex
  tail call fastcc void @session_after_frame_sent2(ptr noundef nonnull %0)
  br label %.thread284.backedge

bb.fc:                                            ; preds = %bb.eu
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qv, i64 24 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  store ptr %i.qx, ptr %1, align 8, !tbaa !138
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !150
  %i.ri = load ptr, ptr %i.rf, align 8, !tbaa !152 ; 2 uses
  %i.rj = ptrtoint ptr %i.rh to i64
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = sub i64 %i.rj, %i.rk                    ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rl
  store ptr %i.rm, ptr %i.rf, align 8, !tbaa !152
  br label %.thread278

bb.fd:                                            ; preds = %.thread284
  %i.rn = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8 ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !106
  %i.rq = tail call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %i.rp) #15 ; 7 uses
  %i.rr = icmp eq ptr %i.rq, null
  br i1 %i.rr, label %select.unfold297, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 116
  %i.rt = load i8, ptr %i.rs, align 4, !tbaa !40
  %i.ru = and i8 %i.rt, 2
  %.not.i203 = icmp eq i8 %i.ru, 0
  br i1 %.not.i203, label %bb.ff, label %select.unfold297

bb.ff:                                            ; preds = %bb.fe
end_hunk_0
begin_hunk_1_@nghttp2_session_update_recv_connection_window_size:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2652
  %i.c = load i32, ptr %i.b, align 4, !tbaa !52   ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !53   ; 3 uses
  %i.e = trunc i64 %1 to i32                      ; 3 uses
  %i.f = sub nsw i32 %i.c, %i.e
  %i.g = icmp sgt i32 %i.d, %i.f
  %i.h = sub nsw i32 2147483647, %i.e
  %i.i = icmp sgt i32 %i.d, %i.h
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond.i, label %adjust_recv_window_size.exit, label %bb.d

adjust_recv_window_size.exit:                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 3 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !8
  %i.l = and i8 %i.k, 1
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.b, label %nghttp2_session_terminate_session.exit

bb.b:                                             ; preds = %adjust_recv_window_size.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2620
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i32 15, ptr %i.o, align 8, !tbaa !38
  %i.p = tail call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.n, i32 noundef 3, ptr noundef null, i64 noundef 0, i8 noundef zeroext 1) ; 2 uses
  %.not17.i.i = icmp eq i32 %i.p, 0
  br i1 %.not17.i.i, label %bb.c, label %nghttp2_session_terminate_session.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.j, align 4, !tbaa !8
  %i.r = or i8 %i.q, 1
  store i8 %i.r, ptr %i.j, align 4, !tbaa !8
  br label %nghttp2_session_terminate_session.exit

bb.d:                                             ; preds = %bb.a
  %i.s = add nsw i32 %i.d, %i.e                   ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !53
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2724
  %i.u = load i32, ptr %i.t, align 4, !tbaa !65
  %i.v = and i32 %i.u, 1
  %.not15 = icmp eq i32 %i.v, 0
  br i1 %.not15, label %bb.e, label %nghttp2_session_terminate_session.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2741
  %i.x = load i8, ptr %i.w, align 1, !tbaa !114
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %nghttp2_session_terminate_session.exit

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @nghttp2_should_send_window_update(i32 noundef %i.c, i32 noundef %i.s) #15
  %.not16 = icmp eq i32 %i.z, 0
  br i1 %.not16, label %nghttp2_session_terminate_session.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %i.ac = tail call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.ab, i64 noundef 160) #15 ; 6 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %nghttp2_session_terminate_session.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @nghttp2_outbound_item_init(ptr noundef nonnull %i.ac) #15
  tail call void @nghttp2_frame_window_update_init(ptr noundef nonnull %i.ac, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %i.aa) #15
  %i.ae = tail call i32 @nghttp2_session_add_item(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %nghttp2_session_add_window_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @nghttp2_frame_window_update_free(ptr noundef nonnull %i.ac) #15
  tail call void @nghttp2_mem_free(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) #15
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_add_window_update.exit:           ; preds = %bb.h
  store i32 0, ptr %i.a, align 8, !tbaa !232
  br label %nghttp2_session_terminate_session.exit

nghttp2_session_terminate_session.exit:           ; preds = %bb.i, %bb.g, %bb.c, %bb.b, %adjust_recv_window_size.exit, %bb.d, %bb.e, %bb.f, %nghttp2_session_add_window_update.exit
  %.0 = phi i32 [ 0, %bb.d ], [ %i.p, %bb.b ], [ 0, %nghttp2_session_add_window_update.exit ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %adjust_recv_window_size.exit ], [ %i.ae, %bb.i ], [ -901, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_session_mem_recv(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @nghttp2_session_mem_recv2(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @nghttp2_session_mem_recv2(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.nghttp2_settings_entry, align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 14 uses
  %4 = alloca %struct.nghttp2_hd_nv, align 8      ; 17 uses
  %5 = alloca %struct.nghttp2_frame_hd, align 8   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1, i32 noundef 5440, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_session_mem_recv2) #16
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.0834 = phi ptr [ %1, %bb.a ], [ @static_in, %bb.b ] ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0834, i64 %2 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 17 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !8
  %i.j = and i8 %i.i, 2
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.e, label %nghttp2_session_want_read.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i64 @nghttp2_map_size(ptr noundef nonnull %0) #15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.m = load i64, ptr %i.l, align 8, !tbaa !134
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.o = load i64, ptr %i.n, align 8, !tbaa !119
  %i.p = add i64 %i.o, %i.m
  %.not4.i = icmp eq i64 %i.k, %i.p
  br i1 %.not4.i, label %nghttp2_session_want_read.exit, label %.critedge.preheader

nghttp2_session_want_read.exit:                   ; preds = %bb.e
  %i.q = load i8, ptr %i.h, align 4, !tbaa !8
  %i.r = and i8 %i.q, 12
  %.not1687 = icmp eq i8 %i.r, 0
  br i1 %.not1687, label %.critedge.preheader, label %nghttp2_session_want_read.exit.thread

.critedge.preheader:                              ; preds = %nghttp2_session_want_read.exit, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 115 uses
  %i.t = getelementptr i8, ptr %0, i64 736        ; 51 uses
  %i.u = ptrtoint ptr %i.f to i64                 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2416 ; 15 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 15 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2336 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 7 uses
  %i.af = getelementptr i8, ptr %0, i64 2724      ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2644 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2640 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2741 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2652 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 16 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 541 ; 31 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 44 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2464 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2620 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2600 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 18 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 12 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1964
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2739 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1904 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2184 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2708
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2742
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2732 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.thread1189
  %.1835 = phi ptr [ %.9843, %.thread1189 ], [ %.0834, %.critedge.preheader ] ; 50 uses
  %i.bz = load i32, ptr %i.s, align 8, !tbaa !90
  switch i32 %i.bz, label %.thread1189 [
    i32 0, label %bb.f
    i32 1, label %bb.i
    i32 2, label %bb.q
    i32 3, label %bb.ep
    i32 4, label %bb.ha
    i32 5, label %bb.ha
    i32 6, label %bb.lg
    i32 7, label %bb.lk
    i32 8, label %bb.lo
    i32 9, label %bb.mh
    i32 10, label %bb.mq
    i32 11, label %bb.mq
    i32 12, label %bb.nc
    i32 13, label %bb.od
    i32 14, label %bb.pp
    i32 15, label %nghttp2_session_want_read.exit.thread
    i32 18, label %bb.pz
    i32 16, label %bb.qk
    i32 17, label %bb.qt
  ]

bb.f:                                             ; preds = %.critedge
  %i.ca = load i64, ptr %i.t, align 8, !tbaa !91  ; 4 uses
  %i.cb = call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.ca) ; 3 uses
  %i.cc = sub i64 24, %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr @.str.45, i64 %i.cc
  %bcmp = call i32 @bcmp(ptr nonnull %i.cd, ptr %.1835, i64 %i.cb)
  %.not1035 = icmp eq i32 %bcmp, 0
  br i1 %.not1035, label %bb.g, label %nghttp2_session_want_read.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ce = sub i64 %i.ca, %i.cb
  store i64 %i.ce, ptr %i.t, align 8, !tbaa !91
  %i.cf = getelementptr inbounds nuw i8, ptr %.1835, i64 %i.cb ; 2 uses
  %.not1331 = icmp ugt i64 %i.ca, %2
  br i1 %.not1331, label %.thread1189, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  store i32 1, ptr %i.s, align 8, !tbaa !90
  br label %.thread1189

bb.i:                                             ; preds = %.critedge
  %i.cg = ptrtoint ptr %.1835 to i64
  %i.ch = sub i64 %i.u, %i.cg
  %i.ci = load ptr, ptr %i.ao, align 8, !tbaa !108
  %i.cj = load ptr, ptr %i.ap, align 8, !tbaa !233 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = call noundef i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cm) ; 2 uses
  %i.co = call ptr @nghttp2_cpymem(ptr noundef %i.cj, ptr noundef %.1835, i64 noundef %i.cn) #15 ; 2 uses
  store ptr %i.co, ptr %i.ap, align 8, !tbaa !233
  %i.cp = getelementptr inbounds nuw i8, ptr %.1835, i64 %i.cn ; 2 uses
  %i.cq = load ptr, ptr %i.ao, align 8, !tbaa !108
  %.not985 = icmp eq ptr %i.cq, %i.co
  br i1 %.not985, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %.0834 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  br label %nghttp2_session_want_read.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.cu = load ptr, ptr %i.aa, align 8, !tbaa !234 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !106
  %.not986 = icmp eq i8 %i.cw, 4
  br i1 %.not986, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !106
  %i.cz = and i8 %i.cy, 1
  %.not987 = icmp eq i8 %i.cz, 0
  br i1 %.not987, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.da = call i32 (ptr, i32, ptr, ...) @session_call_error_callback(ptr noundef nonnull %0, i32 noundef -536, ptr noundef nonnull @.str.46) ; 2 uses
  %i.db = icmp sgt i32 %i.da, -901
  br i1 %i.db, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dc = sext i32 %i.da to i64
  br label %nghttp2_session_want_read.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.dd = call i32 @nghttp2_session_terminate_session_with_reason(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.47) ; 2 uses
  %i.de = icmp sgt i32 %i.dd, -901
  %i.df = sext i32 %i.dd to i64
  %spec.select = select i1 %i.de, i64 %2, i64 %i.df
  br label %nghttp2_session_want_read.exit.thread

bb.p:                                             ; preds = %bb.l
  store i32 2, ptr %i.s, align 8, !tbaa !90
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge
  %.2836 = phi ptr [ %i.cp, %bb.p ], [ %.1835, %.critedge ] ; 3 uses
  %i.dg = ptrtoint ptr %.2836 to i64
  %i.dh = sub i64 %i.u, %i.dg
  %i.di = load ptr, ptr %i.ao, align 8, !tbaa !108
  %i.dj = load ptr, ptr %i.ap, align 8, !tbaa !233 ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = call noundef i64 @llvm.umin.i64(i64 %i.dh, i64 %i.dm) ; 2 uses
  %i.do = call ptr @nghttp2_cpymem(ptr noundef %i.dj, ptr noundef %.2836, i64 noundef %i.dn) #15 ; 2 uses
  store ptr %i.do, ptr %i.ap, align 8, !tbaa !233
  %i.dp = getelementptr inbounds nuw i8, ptr %.2836, i64 %i.dn ; 28 uses
  %i.dq = load ptr, ptr %i.ao, align 8, !tbaa !108
  %.not988 = icmp eq ptr %i.dq, %i.do
  br i1 %.not988, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %.0834 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  br label %nghttp2_session_want_read.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.du = load ptr, ptr %i.aa, align 8, !tbaa !234
  call void @nghttp2_frame_unpack_frame_hd(ptr noundef nonnull %i.c, ptr noundef %i.du) #15
  %i.dv = load i64, ptr %i.c, align 8, !tbaa !106 ; 16 uses
  store i64 %i.dv, ptr %i.t, align 8, !tbaa !91
  %i.dw = load i32, ptr %i.bs, align 4, !tbaa !189
  %i.dx = zext i32 %i.dw to i64
  %i.dy = icmp ugt i64 %i.dv, %i.dx
  br i1 %i.dy, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.dz = load i8, ptr %i.h, align 4, !tbaa !8
  %i.ea = and i8 %i.dz, 1
  %.not.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i, label %bb.u, label %nghttp2_session_terminate_session_with_reason.exit1108.thread

bb.u:                                             ; preds = %bb.t
  %i.eb = load i32, ptr %i.ar, align 4, !tbaa !37
  store i32 15, ptr %i.s, align 8, !tbaa !38
  %i.ec = call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.eb, i32 noundef 6, ptr noundef nonnull readonly @.str.48, i64 noundef 20, i8 noundef zeroext 1)
  %.fr2320 = freeze i32 %i.ec                     ; 3 uses
  %.not17.i.i = icmp eq i32 %.fr2320, 0
  br i1 %.not17.i.i, label %nghttp2_session_terminate_session_with_reason.exit1108.thread.sink.split, label %nghttp2_session_terminate_session_with_reason.exit

nghttp2_session_terminate_session_with_reason.exit: ; preds = %bb.u
  %i.ed = icmp sgt i32 %.fr2320, -901
  %i.ee = sext i32 %.fr2320 to i64
  br i1 %i.ed, label %nghttp2_session_terminate_session_with_reason.exit1108.thread, label %nghttp2_session_want_read.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.ef = load i8, ptr %i.bd, align 4, !tbaa !106 ; 3 uses
  switch i8 %i.ef, label %bb.ck [
    i8 0, label %bb.w
    i8 1, label %bb.ai
    i8 2, label %bb.bd
    i8 3, label %bb.bj
    i8 8, label %bb.bj
    i8 4, label %bb.bm
    i8 5, label %bb.bx
    i8 6, label %bb.cd
    i8 7, label %bb.cg
    i8 9, label %bb.cj
  ]

bb.w:                                             ; preds = %bb.v
  %i.eg = load i8, ptr %i.al, align 1, !tbaa !106
  %i.eh = and i8 %i.eg, 9
  store i8 %i.eh, ptr %i.al, align 1, !tbaa !106
  %i.ei = call fastcc i32 @session_on_data_received_fail_fast(ptr noundef nonnull %0) ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, -901
  br i1 %i.ej, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = sext i32 %i.ei to i64
  br label %nghttp2_session_want_read.exit.thread

bb.y:                                             ; preds = %bb.w
  %i.el = load i32, ptr %i.s, align 8, !tbaa !90
  %i.em = icmp eq i32 %i.el, 15
  br i1 %i.em, label %nghttp2_session_want_read.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = icmp eq i32 %i.ei, -104
  br i1 %i.en, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 14, ptr %i.s, align 8, !tbaa !90
  br label %.thread1189

bb.ab:                                            ; preds = %bb.z
  %i.eo = load i8, ptr %i.al, align 1, !tbaa !235 ; 2 uses
  %i.ep = and i8 %i.eo, 8
  %.not.i1058 = icmp eq i8 %i.ep, 0
  br i1 %.not.i1058, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eq = load i64, ptr %i.c, align 8, !tbaa !237
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %inbound_frame_handle_pad.exit, label %bb.ad

inbound_frame_handle_pad.exit:                    ; preds = %bb.ac
  %i.es = call i32 @nghttp2_session_terminate_session_with_reason(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.49) ; 2 uses
  %i.et = icmp sgt i32 %i.es, -901
  %i.eu = sext i32 %i.es to i64
  %spec.select1040 = select i1 %i.et, i64 %2, i64 %i.eu
  br label %nghttp2_session_want_read.exit.thread

bb.ad:                                            ; preds = %bb.ac
  call void @nghttp2_buf_reset(ptr noundef nonnull %i.bc) #15
  %i.ev = load ptr, ptr %i.ao, align 8, !tbaa !108
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  store ptr %i.ew, ptr %i.ao, align 8, !tbaa !108
  br label %.thread1193.sink.split

bb.ae:                                            ; preds = %bb.ab
  %i.ex = load i64, ptr %i.t, align 8, !tbaa !91
  %i.ey = icmp eq i64 %i.ex, 0
  %i.ez = and i8 %i.eo, 1
  %i.fa = icmp eq i8 %i.ez, 0
  %or.cond2317 = and i1 %i.ey, %i.fa
  br i1 %or.cond2317, label %bb.af, label %.thread1193.sink.split

bb.af:                                            ; preds = %bb.ae
  %i.fb = call fastcc i32 @session_update_glitch_ratelim(ptr noundef nonnull %0) ; 2 uses
  %.not1010 = icmp eq i32 %i.fb, 0
  br i1 %.not1010, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fc = sext i32 %i.fb to i64
  br label %nghttp2_session_want_read.exit.thread

end_hunk_1
begin_hunk_2_@nghttp2_session_mem_recv2:bb.a
bb.ft:                                            ; preds = %bb.fs
  %i.no = load ptr, ptr %i.aa, align 8, !tbaa !234
  %i.np = load i8, ptr %i.no, align 1, !tbaa !106
  %i.nq = zext i8 %i.np to i64                    ; 3 uses
  %i.nr = icmp ult i64 %i.lr, %i.nq
  br i1 %i.nr, label %inbound_frame_compute_pad.exit1079.thread, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ns = add nuw nsw i64 %i.nq, 1                ; 2 uses
  store i64 %i.ns, ptr %i.am, align 8, !tbaa !242
  %i.nt = add nuw nsw i64 %i.nq, 5
  %i.nu = add i64 %i.lr, 1
  %i.nv = icmp ugt i64 %i.nt, %i.nu
  br i1 %i.nv, label %inbound_frame_compute_pad.exit1079.thread, label %bb.fv

inbound_frame_compute_pad.exit1079.thread:        ; preds = %bb.ft, %bb.fu
  %i.nw = call i32 @nghttp2_session_terminate_session_with_reason(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.56) ; 2 uses
  %i.nx = icmp sgt i32 %i.nw, -901
  %i.ny = sext i32 %i.nw to i64
  %spec.select1047 = select i1 %i.nx, i64 %2, i64 %i.ny
  br label %nghttp2_session_want_read.exit.thread

bb.fv:                                            ; preds = %bb.fu
  store i64 %i.ns, ptr %i.ae, align 8, !tbaa !106
  store i32 3, ptr %i.s, align 8, !tbaa !90
  call void @nghttp2_buf_reset(ptr noundef nonnull %i.bc) #15
  %i.nz = load ptr, ptr %i.ao, align 8, !tbaa !108
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  store ptr %i.oa, ptr %i.ao, align 8, !tbaa !108
  br label %.thread1189

bb.fw:                                            ; preds = %bb.fs, %bb.fr
  %i.ob = load ptr, ptr %i.aa, align 8, !tbaa !234
  call void @nghttp2_frame_unpack_push_promise_payload(ptr noundef nonnull %i.c, ptr noundef %i.ob) #15
  %i.oc = call i32 @nghttp2_session_on_push_promise_received(ptr noundef nonnull %0, ptr noundef nonnull %i.c) ; 3 uses
  %i.od = icmp sgt i32 %i.oc, -901
  br i1 %i.od, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.oe = sext i32 %i.oc to i64
  br label %nghttp2_session_want_read.exit.thread

bb.fy:                                            ; preds = %bb.fw
  %i.of = load i32, ptr %i.s, align 8, !tbaa !90
  %i.og = icmp eq i32 %i.of, 15
  br i1 %i.og, label %nghttp2_session_want_read.exit.thread, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  switch i32 %i.oc, label %bb.gd [
    i32 -521, label %bb.ga
    i32 -103, label %bb.gc
  ]

bb.ga:                                            ; preds = %bb.fz
  %i.oh = load i32, ptr %i.bh, align 8, !tbaa !106
  %i.oi = call i32 @nghttp2_session_add_rst_stream_continue(ptr noundef nonnull %0, i32 noundef %i.oh, i32 noundef 2, i32 noundef 1) ; 2 uses
  %i.oj = icmp sgt i32 %i.oi, -901
  br i1 %i.oj, label %session_handle_invalid_stream2.exit1082.thread, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ok = sext i32 %i.oi to i64
  br label %nghttp2_session_want_read.exit.thread

session_handle_invalid_stream2.exit1082.thread:   ; preds = %bb.ga
  store i32 5, ptr %i.s, align 8, !tbaa !90
  br label %.thread1189

bb.gc:                                            ; preds = %bb.fz
  store i32 5, ptr %i.s, align 8, !tbaa !90
  br label %.thread1189

bb.gd:                                            ; preds = %bb.fz
  store i32 4, ptr %i.s, align 8, !tbaa !90
  br label %.thread1189

bb.ge:                                            ; preds = %bb.er
  %i.ol = load ptr, ptr %i.aa, align 8, !tbaa !234
  call void @nghttp2_frame_unpack_ping_payload(ptr noundef nonnull %i.c, ptr noundef %i.ol) #15
  %i.om = call i32 @nghttp2_session_on_ping_received(ptr noundef nonnull %0, ptr noundef nonnull %i.c) ; 2 uses
  %i.on = icmp sgt i32 %i.om, -901
  br i1 %i.on, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.oo = sext i32 %i.om to i64
  br label %nghttp2_session_want_read.exit.thread

bb.gg:                                            ; preds = %bb.ge
  %i.op = load i32, ptr %i.s, align 8, !tbaa !90
  %i.oq = icmp eq i32 %i.op, 15
  br i1 %i.oq, label %nghttp2_session_want_read.exit.thread, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1189

bb.gi:                                            ; preds = %bb.er
  %i.or = load i64, ptr %i.c, align 8, !tbaa !106
  %i.os = add i64 %i.or, -8                       ; 3 uses
  %.not972 = icmp eq i64 %i.os, 0
  br i1 %.not972, label %.thread1209, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ot = call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.g, i64 noundef %i.os) #15 ; 3 uses
  store ptr %i.ot, ptr %i.br, align 8, !tbaa !109
  %i.ou = icmp eq ptr %i.ot, null
  br i1 %i.ou, label %nghttp2_session_want_read.exit.thread, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @nghttp2_buf_wrap_init(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ot, i64 noundef %i.os) #15
  br label %.thread1209

.thread1209:                                      ; preds = %bb.gi, %bb.gk
  store i32 9, ptr %i.s, align 8, !tbaa !90
  br label %.thread1189

bb.gl:                                            ; preds = %bb.er
  %i.ov = load ptr, ptr %i.aa, align 8, !tbaa !234
  call void @nghttp2_frame_unpack_window_update_payload(ptr noundef nonnull %i.c, ptr noundef %i.ov) #15
  %i.ow = call i32 @nghttp2_session_on_window_update_received(ptr noundef nonnull %0, ptr noundef nonnull %i.c) ; 2 uses
  %i.ox = icmp sgt i32 %i.ow, -901
  br i1 %i.ox, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.oy = sext i32 %i.ow to i64
  br label %nghttp2_session_want_read.exit.thread

bb.gn:                                            ; preds = %bb.gl
  %i.oz = load i32, ptr %i.s, align 8, !tbaa !90
  %i.pa = icmp eq i32 %i.oz, 15
  br i1 %i.pa, label %nghttp2_session_want_read.exit.thread, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1189

bb.gp:                                            ; preds = %bb.er
  %i.pb = load ptr, ptr %i.aa, align 8, !tbaa !234
  %i.pc = call zeroext i16 @nghttp2_get_uint16(ptr noundef %i.pb) #15
  %i.pd = zext i16 %i.pc to i64
  %i.pe = load i64, ptr %i.t, align 8, !tbaa !91
  %i.pf = icmp ult i64 %i.pe, %i.pd
  br i1 %i.pf, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  store i32 7, ptr %i.s, align 8, !tbaa !90
  br label %.thread1189

bb.gr:                                            ; preds = %bb.gp
  %i.pg = load i64, ptr %i.c, align 8, !tbaa !106 ; 2 uses
  %i.ph = icmp ugt i64 %i.pg, 2
  br i1 %i.ph, label %bb.gs, label %bb.gu

bb.gs:                                            ; preds = %bb.gr
  %i.pi = add i64 %i.pg, -2
  %i.pj = call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.g, i64 noundef %i.pi) #15 ; 3 uses
  store ptr %i.pj, ptr %i.br, align 8, !tbaa !109
  %i.pk = icmp eq ptr %i.pj, null
  br i1 %i.pk, label %nghttp2_session_want_read.exit.thread, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.pl = load i64, ptr %i.c, align 8, !tbaa !106
  call void @nghttp2_buf_wrap_init(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.pj, i64 noundef %i.pl) #15
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gr
  store i32 16, ptr %i.s, align 8, !tbaa !90
  br label %.thread1189

bb.gv:                                            ; preds = %bb.er
  %i.pm = load ptr, ptr %i.aa, align 8, !tbaa !234 ; 2 uses
  %i.pn = ptrtoint ptr %i.lo to i64
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = sub i64 %i.pn, %i.po
  call void @nghttp2_frame_unpack_priority_update_payload(ptr noundef nonnull %i.c, ptr noundef %i.pm, i64 noundef %i.pp) #15
  %i.pq = call i32 @nghttp2_session_on_priority_update_received(ptr noundef nonnull %0, ptr noundef nonnull %i.c) ; 2 uses
  %i.pr = icmp sgt i32 %i.pq, -901
  br i1 %i.pr, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ps = sext i32 %i.pq to i64
  br label %nghttp2_session_want_read.exit.thread

bb.gx:                                            ; preds = %bb.gv
  %i.pt = load i32, ptr %i.s, align 8, !tbaa !90
  %i.pu = icmp eq i32 %i.pt, 15
  br i1 %i.pu, label %nghttp2_session_want_read.exit.thread, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1189

bb.gz:                                            ; preds = %bb.er
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1189

bb.ha:                                            ; preds = %.critedge, %.critedge
  %.val1057 = load i64, ptr %i.t, align 8, !tbaa !91 ; 2 uses
  %i.pv = ptrtoint ptr %.1835 to i64
  %i.pw = sub i64 %i.u, %i.pv
  %i.px = call noundef i64 @llvm.umin.i64(i64 %i.pw, i64 %.val1057) ; 9 uses
  %i.py = sub i64 %.val1057, %i.px                ; 2 uses
  %i.pz = load i64, ptr %i.am, align 8, !tbaa !242
  %i.qa = call i64 @nghttp2_frame_trail_padlen(ptr noundef nonnull %i.c, i64 noundef %i.pz) #15 ; 2 uses
  %i.qb = icmp ugt i64 %i.qa, %i.py
  %i.qc = sub nuw i64 %i.qa, %i.py                ; 2 uses
  %i.qd = icmp ult i64 %i.px, %i.qc
  %i.qe = sub nuw i64 %i.px, %i.qc
  %.0.i1083 = select i1 %i.qd, i64 -1, i64 %i.qe
  %.1.i = select i1 %i.qb, i64 %.0.i1083, i64 %i.px ; 2 uses
  %i.qf = icmp eq i64 %.1.i, -1
  %spec.store.select6 = select i1 %i.qf, i64 0, i64 %.1.i ; 6 uses
  %i.qg = load i64, ptr %i.am, align 8, !tbaa !242
  %i.qh = call i64 @nghttp2_frame_trail_padlen(ptr noundef nonnull %i.c, i64 noundef %i.qg) #15
  %i.qi = load i8, ptr %i.al, align 1, !tbaa !106
  %i.qj = and i8 %i.qi, 4
  %.not964 = icmp eq i8 %i.qj, 0
  br i1 %.not964, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.qk = load i64, ptr %i.t, align 8, !tbaa !91
  %i.ql = sub i64 %i.qk, %spec.store.select6
  %i.qm = icmp eq i64 %i.ql, %i.qh
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.qn = phi i1 [ false, %bb.ha ], [ %i.qm, %bb.hb ] ; 2 uses
  %i.qo = zext i1 %i.qn to i32                    ; 3 uses
  %i.qp = icmp sgt i64 %spec.store.select6, 0
  %i.qq = icmp eq i64 %spec.store.select6, 0
  %or.cond = select i1 %i.qq, i1 %i.qn, i1 false
  %or.cond1037 = select i1 %i.qp, i1 true, i1 %or.cond
  br i1 %or.cond1037, label %bb.hd, label %bb.jd

bb.hd:                                            ; preds = %bb.hc
  %i.qr = load i32, ptr %i.s, align 8, !tbaa !90
  %.not = icmp eq i32 %i.qr, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.qs = load i32, ptr %i.ak, align 8, !tbaa !106
  %i.qt = call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %i.qs) #15 ; 4 uses
  %i.qu = icmp eq ptr %i.qt, null
  br i1 %i.qu, label %nghttp2_session_get_stream.exit.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 116
  %i.qw = load i8, ptr %i.qv, align 4, !tbaa !40
  %i.qx = and i8 %i.qw, 2
  %.not.i.i1084 = icmp eq i8 %i.qx, 0
  br i1 %.not.i.i1084, label %bb.hf, label %nghttp2_session_get_stream.exit.i

bb.hf:                                            ; preds = %bb.he
  %i.qy = load i32, ptr %i.qt, align 8, !tbaa !44
  %i.qz = icmp eq i32 %i.qy, 5
  %spec.select.i.i = select i1 %i.qz, ptr null, ptr %i.qt
  br label %nghttp2_session_get_stream.exit.i

nghttp2_session_get_stream.exit.i:                ; preds = %bb.hf, %bb.he, %bb.hd
  %.0.i.i = phi ptr [ null, %bb.hd ], [ %spec.select.i.i, %bb.hf ], [ null, %bb.he ] ; 6 uses
  %i.ra = load i8, ptr %i.bd, align 4, !tbaa !106 ; 2 uses
  %i.rb = icmp eq i8 %i.ra, 5
  br i1 %i.rb, label %bb.hg, label %bb.hj

bb.hg:                                            ; preds = %nghttp2_session_get_stream.exit.i
  %i.rc = load i32, ptr %i.bh, align 8, !tbaa !106
  %i.rd = call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %i.rc) #15 ; 4 uses
  %i.re = icmp eq ptr %i.rd, null
  br i1 %i.re, label %nghttp2_session_get_stream.exit125.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 116
  %i.rg = load i8, ptr %i.rf, align 4, !tbaa !40
  %i.rh = and i8 %i.rg, 2
  %.not.i122.i = icmp eq i8 %i.rh, 0
  br i1 %.not.i122.i, label %bb.hi, label %nghttp2_session_get_stream.exit125.i

bb.hi:                                            ; preds = %bb.hh
  %i.ri = load i32, ptr %i.rd, align 8, !tbaa !44
  %i.rj = icmp eq i32 %i.ri, 5
  %spec.select.i124.i = select i1 %i.rj, ptr null, ptr %i.rd
  br label %nghttp2_session_get_stream.exit125.i

bb.hj:                                            ; preds = %nghttp2_session_get_stream.exit.i
  %.not.i126.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i126.i, label %nghttp2_session_get_stream.exit125.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %.not7.i.i = icmp eq i8 %i.ra, 1
  br i1 %.not7.i.i, label %bb.hl, label %nghttp2_session_get_stream.exit125.i

bb.hl:                                            ; preds = %bb.hk
  %i.rk = load i8, ptr %i.bf, align 1, !tbaa !39
  %.not8.i.i = icmp eq i8 %i.rk, 0
  %i.rl = load i32, ptr %i.bg, align 8, !tbaa !106
  %i.rm = icmp eq i32 %i.rl, 3                    ; 2 uses
  br i1 %.not8.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.rn = zext i1 %i.rm to i32
  br label %nghttp2_session_get_stream.exit125.i

bb.hn:                                            ; preds = %bb.hl
  br i1 %i.rm, label %bb.ho, label %nghttp2_session_get_stream.exit125.i

bb.ho:                                            ; preds = %bb.hn
  %i.ro = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 112
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !243
  %i.rq = lshr i32 %i.rp, 14
  %.lobit.i.i = and i32 %i.rq, 1
  %i.rr = xor i32 %.lobit.i.i, 1
  br label %nghttp2_session_get_stream.exit125.i

nghttp2_session_get_stream.exit125.i:             ; preds = %bb.ho, %bb.hn, %bb.hm, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg
  %.089.i = phi ptr [ null, %bb.hh ], [ null, %bb.hg ], [ %spec.select.i124.i, %bb.hi ], [ null, %bb.hj ], [ %.0.i.i, %bb.hk ], [ %.0.i.i, %bb.hm ], [ %.0.i.i, %bb.hn ], [ %.0.i.i, %bb.ho ]
  %.088.i = phi i32 [ 0, %bb.hh ], [ 0, %bb.hg ], [ 0, %bb.hi ], [ 0, %bb.hj ], [ 0, %bb.hk ], [ %i.rn, %bb.hm ], [ 0, %bb.hn ], [ %i.rr, %bb.ho ]
  %.089.fr.i = freeze ptr %.089.i                 ; 7 uses
  br i1 %.not, label %nghttp2_session_get_stream.exit125.split.i, label %nghttp2_session_get_stream.exit125.split.us.i

nghttp2_session_get_stream.exit125.split.us.i:    ; preds = %nghttp2_session_get_stream.exit125.i, %bb.hq
  %.51151 = phi i64 [ %i.rw, %bb.hq ], [ 0, %nghttp2_session_get_stream.exit125.i ] ; 2 uses
  %.095.us.i = phi i64 [ %i.rz, %bb.hq ], [ %spec.store.select6, %nghttp2_session_get_stream.exit125.i ] ; 2 uses
  %.094.us.i = phi ptr [ %i.sa, %bb.hq ], [ %.1835, %nghttp2_session_get_stream.exit125.i ] ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !53
  %i.rs = call i64 @nghttp2_hd_inflate_hd_nv(ptr noundef nonnull %i.bi, ptr noundef nonnull %4, ptr noundef nonnull %i.b, ptr noundef %.094.us.i, i64 noundef %.095.us.i, i32 noundef range(i32 0, 2) %i.qo) #15 ; 5 uses
  %i.rt = trunc i64 %i.rs to i32                  ; 2 uses
  %i.ru = icmp sgt i32 %i.rt, -901
  br i1 %i.ru, label %bb.hp, label %.loopexit.sink.split

bb.hp:                                            ; preds = %nghttp2_session_get_stream.exit125.split.us.i
  %i.rv = icmp slt i64 %i.rs, 0
  br i1 %i.rv, label %.split.us.i, label %session_call_on_header.exit.us.i

session_call_on_header.exit.us.i:                 ; preds = %bb.hp
  %i.rw = add i64 %i.rs, %.51151                  ; 3 uses
  %i.rx = load i32, ptr %i.b, align 4, !tbaa !53  ; 2 uses
  %i.ry = and i32 %i.rx, 1
  %.not111.us.i = icmp eq i32 %i.ry, 0
  br i1 %.not111.us.i, label %bb.hq, label %.split163.us.i

bb.hq:                                            ; preds = %session_call_on_header.exit.us.i
  %i.rz = sub i64 %.095.us.i, %i.rs               ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.094.us.i, i64 %i.rs
  %i.sb = and i32 %i.rx, 2
  %i.sc = icmp eq i32 %i.sb, 0
  %i.sd = icmp eq i64 %i.rz, 0
  %or.cond.us.i = and i1 %i.sd, %i.sc
  br i1 %or.cond.us.i, label %.sink.split, label %nghttp2_session_get_stream.exit125.split.us.i

nghttp2_session_get_stream.exit125.split.i:       ; preds = %nghttp2_session_get_stream.exit125.i
  %.not104.i = icmp eq ptr %.089.fr.i, null
  br i1 %.not104.i, label %nghttp2_session_get_stream.exit125.split.split.us.i, label %nghttp2_session_get_stream.exit125.split.split.i

nghttp2_session_get_stream.exit125.split.split.us.i: ; preds = %nghttp2_session_get_stream.exit125.split.i, %bb.hs
  %.41150 = phi i64 [ %i.si, %bb.hs ], [ 0, %nghttp2_session_get_stream.exit125.split.i ] ; 2 uses
  %.095.us165.i = phi i64 [ %i.sl, %bb.hs ], [ %spec.store.select6, %nghttp2_session_get_stream.exit125.split.i ] ; 2 uses
  %.094.us166.i = phi ptr [ %i.sm, %bb.hs ], [ %.1835, %nghttp2_session_get_stream.exit125.split.i ] ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !53
  %i.se = call i64 @nghttp2_hd_inflate_hd_nv(ptr noundef nonnull %i.bi, ptr noundef nonnull %4, ptr noundef nonnull %i.b, ptr noundef %.094.us166.i, i64 noundef %.095.us165.i, i32 noundef range(i32 0, 2) %i.qo) #15 ; 5 uses
  %i.sf = trunc i64 %i.se to i32                  ; 2 uses
  %i.sg = icmp sgt i32 %i.sf, -901
  br i1 %i.sg, label %bb.hr, label %.loopexit.sink.split

bb.hr:                                            ; preds = %nghttp2_session_get_stream.exit125.split.split.us.i
  %i.sh = icmp slt i64 %i.se, 0
  br i1 %i.sh, label %.split.us.i, label %session_call_on_header.exit.us167.i

session_call_on_header.exit.us167.i:              ; preds = %bb.hr
  %i.si = add i64 %i.se, %.41150                  ; 3 uses
  %i.sj = load i32, ptr %i.b, align 4, !tbaa !53  ; 2 uses
  %i.sk = and i32 %i.sj, 1
  %.not111.us168.i = icmp eq i32 %i.sk, 0
  br i1 %.not111.us168.i, label %bb.hs, label %.split163.us.i

bb.hs:                                            ; preds = %session_call_on_header.exit.us167.i
  %i.sl = sub i64 %.095.us165.i, %i.se            ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.094.us166.i, i64 %i.se
  %i.sn = and i32 %i.sj, 2
  %i.so = icmp eq i32 %i.sn, 0
  %i.sp = icmp eq i64 %i.sl, 0
  %or.cond.us169.i = and i1 %i.sp, %i.so
  br i1 %or.cond.us169.i, label %.sink.split, label %nghttp2_session_get_stream.exit125.split.split.us.i

nghttp2_session_get_stream.exit125.split.split.i: ; preds = %nghttp2_session_get_stream.exit125.split.i, %bb.it
  %.01146 = phi i64 [ %i.tl, %bb.it ], [ 0, %nghttp2_session_get_stream.exit125.split.i ] ; 2 uses
  %.095.i = phi i64 [ %i.tk, %bb.it ], [ %spec.store.select6, %nghttp2_session_get_stream.exit125.split.i ] ; 2 uses
  %.094.i = phi ptr [ %i.tj, %bb.it ], [ %.1835, %nghttp2_session_get_stream.exit125.split.i ] ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !53
  %i.sq = call i64 @nghttp2_hd_inflate_hd_nv(ptr noundef nonnull %i.bi, ptr noundef nonnull %4, ptr noundef nonnull %i.b, ptr noundef %.094.i, i64 noundef %.095.i, i32 noundef range(i32 0, 2) %i.qo) #15 ; 5 uses
  %i.sr = trunc i64 %i.sq to i32                  ; 2 uses
  %i.ss = icmp sgt i32 %i.sr, -901
  br i1 %i.ss, label %bb.ht, label %.loopexit.sink.split

bb.ht:                                            ; preds = %nghttp2_session_get_stream.exit125.split.split.i
  %i.st = icmp slt i64 %i.sq, 0
  br i1 %i.st, label %.split.us.i, label %bb.hz

.split.us.i:                                      ; preds = %bb.hp, %bb.ht, %bb.hr
  %.31149 = phi i64 [ %.41150, %bb.hr ], [ %.01146, %bb.ht ], [ %.51151, %bb.hp ] ; 3 uses
  %i.su = load i32, ptr %i.s, align 8, !tbaa !38
  %i.sv = icmp eq i32 %i.su, 4
  %i.sw = icmp ne ptr %.089.fr.i, null
  %or.cond3.i = and i1 %i.sw, %i.sv
end_hunk_2
begin_hunk_3_@nghttp2_session_mem_recv2:bb.a

session_handle_invalid_stream2.exit.i1095:        ; preds = %.thread89.i
  %i.aat = icmp sgt i32 %i.aap, -901
  br i1 %i.aat, label %session_handle_invalid_stream2.exit.thread.i1096, label %session_after_header_block_received.exit.thread1237

session_handle_invalid_stream2.exit.thread.i1096: ; preds = %session_handle_invalid_stream2.exit.i1095, %bb.kh, %bb.kg
  %i.aau = load i8, ptr %i.h, align 4, !tbaa !8
  %i.aav = and i8 %i.aau, 1
  %.not.i74.i = icmp eq i8 %i.aav, 0
  br i1 %.not.i74.i, label %bb.ki, label %bb.km

bb.ki:                                            ; preds = %session_handle_invalid_stream2.exit.thread.i1096
  %i.aaw = call i64 @nghttp2_time_now_sec() #15
  call void @nghttp2_ratelim_update(ptr noundef nonnull %i.aq, i64 noundef %i.aaw) #15
  %i.aax = call i32 @nghttp2_ratelim_drain(ptr noundef nonnull %i.aq, i64 noundef 1) #15
  %i.aay = icmp eq i32 %i.aax, 0
  br i1 %i.aay, label %bb.km, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.aaz = load i8, ptr %i.h, align 4, !tbaa !8
  %i.aba = and i8 %i.aaz, 1
  %.not.i.i.i.i = icmp eq i8 %i.aba, 0
  br i1 %.not.i.i.i.i, label %bb.kk, label %bb.km

bb.kk:                                            ; preds = %bb.kj
  %i.abb = load i32, ptr %i.ar, align 4, !tbaa !37
  store i32 15, ptr %i.s, align 8, !tbaa !38
  %i.abc = call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.abb, i32 noundef 11, ptr noundef null, i64 noundef 0, i8 noundef zeroext 1) ; 3 uses
  %.not17.i.i.i.i = icmp eq i32 %i.abc, 0
  br i1 %.not17.i.i.i.i, label %bb.kl, label %session_after_header_block_received.exit

bb.kl:                                            ; preds = %bb.kk
  %i.abd = load i8, ptr %i.h, align 4, !tbaa !8
  %i.abe = or i8 %i.abd, 1
  store i8 %i.abe, ptr %i.h, align 4, !tbaa !8
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kj, %bb.ki, %session_handle_invalid_stream2.exit.thread.i1096
  %i.abf = load i32, ptr %i.s, align 8, !tbaa !90
  %i.abg = icmp eq i32 %i.abf, 15
  br i1 %i.abg, label %nghttp2_session_want_read.exit.thread, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.abh = load i8, ptr %i.bd, align 4, !tbaa !106
  %i.abi = icmp eq i8 %i.abh, 1
  br i1 %i.abi, label %bb.ko, label %session_after_header_block_received.exit.thread.thread1328

bb.ko:                                            ; preds = %bb.kn
  %i.abj = load i8, ptr %i.al, align 1, !tbaa !106
  %i.abk = and i8 %i.abj, 1
  %.not67.i = icmp eq i8 %i.abk, 0
  br i1 %.not67.i, label %session_after_header_block_received.exit.thread, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  call void @nghttp2_stream_shutdown(ptr noundef nonnull %i.zj, i8 noundef zeroext 1) #15
  br label %session_after_header_block_received.exit.thread

.thread.i:                                        ; preds = %bb.kf, %bb.kd, %bb.jr, %bb.jq, %bb.jp, %bb.jn
  %i.abl = load ptr, ptr %i.y, align 8, !tbaa !177 ; 2 uses
  %.not.i76.i = icmp eq ptr %i.abl, null
  br i1 %.not.i76.i, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %.thread.i
  %i.abm = load ptr, ptr %i.z, align 8, !tbaa !89
  %i.abn = call i32 %i.abl(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef %i.abm) #15, !inline_history !259
  %.not7.i.i1093 = icmp eq i32 %i.abn, 0
  br i1 %.not7.i.i1093, label %bb.kr, label %session_after_header_block_received.exit.thread1237

bb.kr:                                            ; preds = %bb.kq, %.thread.i
  %i.abo = load i8, ptr %i.bd, align 4, !tbaa !106
  %.not64.i = icmp eq i8 %i.abo, 1
  br i1 %.not64.i, label %bb.ks, label %session_after_header_block_received.exit.thread

bb.ks:                                            ; preds = %bb.kr
  %i.abp = load i8, ptr %i.bf, align 1, !tbaa !39
  %.not.i78.i = icmp eq i8 %i.abp, 0
  br i1 %.not.i78.i, label %session_update_stream_priority.exit.thread.i.i, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %.val.i.i = load i32, ptr %i.af, align 4, !tbaa !65
  %i.abq = and i32 %.val.i.i, 4
  %.not19.not.i.i = icmp eq i32 %i.abq, 0
  br i1 %.not19.not.i.i, label %bb.ku, label %session_update_stream_priority.exit.thread.i.i

bb.ku:                                            ; preds = %bb.kt
  %i.abr = load i32, ptr %i.bg, align 8, !tbaa !106
  %i.abs = icmp eq i32 %i.abr, 0
  br i1 %i.abs, label %bb.kv, label %session_update_stream_priority.exit.thread.i.i

bb.kv:                                            ; preds = %bb.ku
  %i.abt = load i8, ptr %i.zl, align 4, !tbaa !40
  %i.abu = and i8 %i.abt, 32
  %.not20.i.i = icmp eq i8 %i.abu, 0
  br i1 %.not20.i.i, label %bb.kw, label %session_update_stream_priority.exit.thread.i.i

bb.kw:                                            ; preds = %bb.kv
  %i.abv = getelementptr inbounds nuw i8, ptr %i.zj, i64 112
  %i.abw = load i32, ptr %i.abv, align 8, !tbaa !243
  %i.abx = and i32 %i.abw, 65536
  %.not21.i.i = icmp eq i32 %i.abx, 0
  br i1 %.not21.i.i, label %session_update_stream_priority.exit.thread.i.i, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.aby = getelementptr inbounds nuw i8, ptr %i.zj, i64 121
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !260 ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.zj, i64 120 ; 3 uses
  %i.acb = load i8, ptr %i.aca, align 8, !tbaa !131 ; 2 uses
  %i.acc = icmp eq i8 %i.acb, %i.abz
  br i1 %i.acc, label %session_update_stream_priority.exit.thread.i.i, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.acd = getelementptr inbounds nuw i8, ptr %i.zj, i64 118 ; 2 uses
  %i.ace = load i8, ptr %i.acd, align 2, !tbaa !130
  switch i8 %i.ace, label %bb.kz [
    i8 0, label %bb.lc
    i8 1, label %bb.la
  ]

bb.kz:                                            ; preds = %bb.ky
  call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.1, i32 noundef 876, ptr noundef nonnull @__PRETTY_FUNCTION__.session_ob_data_remove) #16
  unreachable

bb.la:                                            ; preds = %bb.ky
  %i.acf = and i8 %i.acb, 127                     ; 2 uses
  %i.acg = icmp samesign ult i8 %i.acf, 8
  br i1 %i.acg, label %session_update_stream_priority.exit.i.i, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 880, ptr noundef nonnull @__PRETTY_FUNCTION__.session_ob_data_remove) #16
  unreachable

bb.lc:                                            ; preds = %bb.ky
  store i8 %i.abz, ptr %i.aca, align 8, !tbaa !131
  br label %session_update_stream_priority.exit.thread.i.i

session_update_stream_priority.exit.i.i:          ; preds = %bb.la
  %i.ach = zext nneg i8 %i.acf to i64
  %i.aci = getelementptr inbounds nuw [40 x i8], ptr %i.bq, i64 %i.ach
  %i.acj = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  call void @nghttp2_pq_remove(ptr noundef nonnull %i.aci, ptr noundef nonnull %i.acj) #15
  store i8 0, ptr %i.acd, align 2, !tbaa !130
  store i8 %i.abz, ptr %i.aca, align 8, !tbaa !131
  %i.ack = call fastcc i32 @session_ob_data_push(ptr noundef nonnull %0, ptr noundef nonnull %i.zj) ; 3 uses
  %.not22.i.i = icmp eq i32 %i.ack, 0
  br i1 %.not22.i.i, label %session_update_stream_priority.exit.thread.i.i, label %bb.ld

bb.ld:                                            ; preds = %session_update_stream_priority.exit.i.i
  %i.acl = icmp sgt i32 %i.ack, -901
  br i1 %i.acl, label %bb.le, label %session_after_header_block_received.exit.thread1237

bb.le:                                            ; preds = %bb.ld
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 3717, ptr noundef nonnull @__PRETTY_FUNCTION__.session_end_stream_headers_received) #16
  unreachable

session_update_stream_priority.exit.thread.i.i:   ; preds = %session_update_stream_priority.exit.i.i, %bb.lc, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks
  %i.acm = load i8, ptr %i.al, align 1, !tbaa !106
  %i.acn = and i8 %i.acm, 1
  %i.aco = icmp eq i8 %i.acn, 0
  br i1 %i.aco, label %session_after_header_block_received.exit.thread, label %bb.lf

bb.lf:                                            ; preds = %session_update_stream_priority.exit.thread.i.i
  call void @nghttp2_stream_shutdown(ptr noundef nonnull %i.zj, i8 noundef zeroext 1) #15
  %i.acp = getelementptr inbounds nuw i8, ptr %i.zj, i64 117
  %i.acq = load i8, ptr %i.acp, align 1, !tbaa !133
  %i.acr = and i8 %i.acq, 3
  %i.acs = icmp eq i8 %i.acr, 3
  br i1 %i.acs, label %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i, label %session_after_header_block_received.exit.thread

nghttp2_session_close_stream_if_shut_rdwr.exit.i.i: ; preds = %bb.lf
  %i.act = getelementptr inbounds nuw i8, ptr %i.zj, i64 80
  %i.acu = load i32, ptr %i.act, align 8, !tbaa !132
  %i.acv = call i32 @nghttp2_session_close_stream(ptr noundef nonnull %0, i32 noundef %i.acu, i32 noundef 0)
  %.fr.i.i = freeze i32 %i.acv                    ; 2 uses
  %i.acw = icmp sgt i32 %.fr.i.i, -901
  br i1 %i.acw, label %session_after_header_block_received.exit.thread, label %session_after_header_block_received.exit.thread1237

session_after_header_block_received.exit:         ; preds = %bb.kk
  %i.acx = icmp sgt i32 %i.abc, -901
  br i1 %i.acx, label %session_after_header_block_received.exit.thread, label %session_after_header_block_received.exit.thread1237

session_after_header_block_received.exit.thread1237: ; preds = %bb.kq, %bb.kh, %session_handle_invalid_stream2.exit.i1095, %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i, %session_after_header_block_received.exit, %bb.ld
  %.1.i10911240 = phi i32 [ %i.ack, %bb.ld ], [ %.fr.i.i, %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i ], [ %i.aap, %session_handle_invalid_stream2.exit.i1095 ], [ -902, %bb.kh ], [ -902, %bb.kq ], [ %i.abc, %session_after_header_block_received.exit ]
  %i.acy = sext i32 %.1.i10911240 to i64
  br label %nghttp2_session_want_read.exit.thread

session_after_header_block_received.exit.thread:  ; preds = %bb.lf, %nghttp2_session_close_stream_if_shut_rdwr.exit.i.i, %bb.jl, %bb.jk, %session_update_stream_priority.exit.thread.i.i, %bb.kr, %bb.ko, %bb.kp, %bb.jm, %bb.jm, %session_after_header_block_received.exit
  %.pr1327 = load i32, ptr %i.s, align 8, !tbaa !90
  %i.acz = icmp eq i32 %.pr1327, 15
  br i1 %i.acz, label %nghttp2_session_want_read.exit.thread, label %session_after_header_block_received.exit.thread.thread1328

session_after_header_block_received.exit.thread.thread1328: ; preds = %bb.kn, %session_after_header_block_received.exit.thread, %bb.jj
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  store i64 0, ptr %i.au, align 8, !tbaa !261
  br label %.thread1189

bb.lg:                                            ; preds = %.critedge
  %.val1056 = load i64, ptr %i.t, align 8, !tbaa !91 ; 3 uses
  %i.ada = ptrtoint ptr %.1835 to i64
  %i.adb = sub i64 %i.u, %i.ada                   ; 2 uses
  %i.adc = call noundef i64 @llvm.umin.i64(i64 %i.adb, i64 %.val1056) ; 2 uses
  %i.add = sub i64 %.val1056, %i.adc
  store i64 %i.add, ptr %i.t, align 8, !tbaa !91
  %i.ade = getelementptr inbounds nuw i8, ptr %.1835, i64 %i.adc ; 2 uses
  %.not963.not = icmp ugt i64 %.val1056, %i.adb
  br i1 %.not963.not, label %.thread1189, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.adf = load i8, ptr %i.bd, align 4, !tbaa !106
  switch i8 %i.adf, label %bb.lj [
    i8 1, label %bb.li
    i8 5, label %bb.li
    i8 9, label %bb.li
  ]

bb.li:                                            ; preds = %bb.lh, %bb.lh, %bb.lh
  store i8 1, ptr %i.be, align 4, !tbaa !262
  br label %bb.lj

bb.lj:                                            ; preds = %bb.lh, %bb.li
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1189

bb.lk:                                            ; preds = %.critedge
  %i.adg = call fastcc i32 @session_handle_frame_size_error(ptr noundef nonnull %0) ; 2 uses
  %i.adh = icmp sgt i32 %i.adg, -901
  br i1 %i.adh, label %bb.lm, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.adi = sext i32 %i.adg to i64
  br label %nghttp2_session_want_read.exit.thread

bb.lm:                                            ; preds = %bb.lk
  %i.adj = load i32, ptr %i.s, align 8, !tbaa !90
  %i.adk = icmp eq i32 %i.adj, 15
  br i1 %i.adk, label %nghttp2_session_want_read.exit.thread, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  call void @__assert_fail(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1, i32 noundef 6559, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_session_mem_recv2) #16
  unreachable

bb.lo:                                            ; preds = %.critedge
  %i.adl = ptrtoint ptr %.1835 to i64
  %i.adm = sub i64 %i.u, %i.adl
  %i.adn = load ptr, ptr %i.ao, align 8, !tbaa !108
  %i.ado = load ptr, ptr %i.ap, align 8, !tbaa !233 ; 2 uses
  %i.adp = ptrtoint ptr %i.adn to i64
  %i.adq = ptrtoint ptr %i.ado to i64
  %i.adr = sub i64 %i.adp, %i.adq
  %i.ads = call noundef i64 @llvm.umin.i64(i64 %i.adm, i64 %i.adr) ; 4 uses
  %i.adt = call ptr @nghttp2_cpymem(ptr noundef %i.ado, ptr noundef %.1835, i64 noundef %i.ads) #15 ; 2 uses
  store ptr %i.adt, ptr %i.ap, align 8, !tbaa !233
  %i.adu = load i64, ptr %i.t, align 8, !tbaa !91
  %i.adv = sub i64 %i.adu, %i.ads                 ; 2 uses
  store i64 %i.adv, ptr %i.t, align 8, !tbaa !91
  %i.adw = getelementptr inbounds nuw i8, ptr %.1835, i64 %i.ads ; 3 uses
  %i.adx = load ptr, ptr %i.ao, align 8, !tbaa !108
  %.not958 = icmp eq ptr %i.adx, %i.adt
  br i1 %.not958, label %bb.lp, label %.thread1189

bb.lp:                                            ; preds = %bb.lo
  %.not959 = icmp eq i64 %i.ads, 0
  br i1 %.not959, label %bb.lx, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ady = load ptr, ptr %i.aa, align 8, !tbaa !234
  call void @nghttp2_frame_unpack_settings_entry(ptr noundef nonnull %3, ptr noundef %i.ady) #15
  %i.adz = load i32, ptr %3, align 8, !tbaa !179  ; 2 uses
  switch i32 %i.adz, label %bb.lr [
    i32 1, label %bb.ls
    i32 2, label %bb.ls
    i32 3, label %bb.ls
    i32 4, label %bb.ls
    i32 5, label %bb.ls
    i32 6, label %bb.ls
    i32 8, label %bb.ls
    i32 9, label %bb.ls
  ]

bb.lr:                                            ; preds = %bb.lq
  %i.aea = load ptr, ptr %i.az, align 8, !tbaa !107
  %i.aeb = load i64, ptr %i.ay, align 8, !tbaa !263 ; 2 uses
  %i.aec = add i64 %i.aeb, 1
  store i64 %i.aec, ptr %i.ay, align 8, !tbaa !263
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %i.aeb
  %i.aee = load i64, ptr %3, align 8
  store i64 %i.aee, ptr %i.aed, align 4
  br label %inbound_frame_set_settings_entry.exit

bb.ls:                                            ; preds = %bb.lq, %bb.lq, %bb.lq, %bb.lq, %bb.lq, %bb.lq, %bb.lq, %bb.lq
  %i.aef = load i64, ptr %i.ay, align 8, !tbaa !263 ; 3 uses
  %.not.i1099 = icmp eq i64 %i.aef, 0
  %.pre1939 = load ptr, ptr %i.az, align 8, !tbaa !107 ; 4 uses
  br i1 %.not.i1099, label %.loopexit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ls, %bb.lt
  %.025.i = phi i64 [ %i.aej, %bb.lt ], [ 0, %bb.ls ] ; 5 uses
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %.pre1939, i64 %.025.i
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !179
  %i.aei = icmp eq i32 %i.aeh, %i.adz
  br i1 %i.aei, label %.loopexit.i, label %bb.lt

bb.lt:                                            ; preds = %.lr.ph.i
  %i.aej = add nuw i64 %.025.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aej, %i.aef
  br i1 %exitcond.not.i, label %.loopexit.thread.i, label %.lr.ph.i, !llvm.loop !264

.loopexit.i:                                      ; preds = %.lr.ph.i
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %.pre1939, i64 %.025.i
  %i.ael = load i64, ptr %3, align 8
  store i64 %i.ael, ptr %i.aek, align 4
  %.pre.i = load i64, ptr %i.ay, align 8, !tbaa !263
  %i.aem = icmp eq i64 %.025.i, %.pre.i
  br i1 %i.aem, label %.loopexit.i..loopexit.thread.i_crit_edge, label %bb.lu

.loopexit.i..loopexit.thread.i_crit_edge:         ; preds = %.loopexit.i
  %.pre = load ptr, ptr %i.az, align 8, !tbaa !107
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %bb.lt, %.loopexit.i..loopexit.thread.i_crit_edge, %bb.ls
  %i.aen = phi ptr [ %.pre, %.loopexit.i..loopexit.thread.i_crit_edge ], [ %.pre1939, %bb.ls ], [ %.pre1939, %bb.lt ]
  %i.aeo = phi i64 [ %.025.i, %.loopexit.i..loopexit.thread.i_crit_edge ], [ 0, %bb.ls ], [ %i.aef, %bb.lt ] ; 2 uses
  %i.aep = add i64 %i.aeo, 1
  store i64 %i.aep, ptr %i.ay, align 8, !tbaa !263
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %i.aen, i64 %i.aeo
  %i.aer = load i64, ptr %3, align 8
  store i64 %i.aer, ptr %i.aeq, align 4
  br label %bb.lu

bb.lu:                                            ; preds = %.loopexit.thread.i, %.loopexit.i
  %i.aes = load i32, ptr %3, align 8, !tbaa !179
  %i.aet = icmp eq i32 %i.aes, 1
  br i1 %i.aet, label %bb.lv, label %inbound_frame_set_settings_entry.exit

bb.lv:                                            ; preds = %bb.lu
  %i.aeu = load ptr, ptr %i.az, align 8, !tbaa !107
  %i.aev = load i64, ptr %i.ba, align 8, !tbaa !240
  %i.aew = getelementptr [8 x i8], ptr %i.aeu, i64 %i.aev
  %i.aex = load i32, ptr %i.bb, align 4, !tbaa !181 ; 2 uses
  %i.aey = getelementptr i8, ptr %i.aew, i64 -4   ; 2 uses
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !181
  %i.afa = icmp ult i32 %i.aex, %i.aez
  br i1 %i.afa, label %bb.lw, label %inbound_frame_set_settings_entry.exit

bb.lw:                                            ; preds = %bb.lv
  store i32 %i.aex, ptr %i.aey, align 4, !tbaa !181
  br label %inbound_frame_set_settings_entry.exit

inbound_frame_set_settings_entry.exit:            ; preds = %bb.lr, %bb.lu, %bb.lv, %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %.pre1940 = load i64, ptr %i.t, align 8, !tbaa !91
  br label %bb.lx

bb.lx:                                            ; preds = %inbound_frame_set_settings_entry.exit, %bb.lp
  %i.afb = phi i64 [ %.pre1940, %inbound_frame_set_settings_entry.exit ], [ %i.adv, %bb.lp ]
  %.not960 = icmp eq i64 %i.afb, 0
  br i1 %.not960, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  call void @nghttp2_buf_reset(ptr noundef nonnull %i.bc) #15
  %i.afc = load ptr, ptr %i.ao, align 8, !tbaa !108
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 6
  store ptr %i.afd, ptr %i.ao, align 8, !tbaa !108
  br label %.thread1189

bb.lz:                                            ; preds = %bb.lx
  %i.afe = load i64, ptr %i.ba, align 8, !tbaa !240 ; 2 uses
  %.not.i1100 = icmp eq i64 %i.afe, 0
  %.pre.i1101 = load ptr, ptr %i.az, align 8, !tbaa !107 ; 7 uses
  br i1 %.not.i1100, label %session_process_settings_frame.exit, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.aff = getelementptr [8 x i8], ptr %.pre.i1101, i64 %i.afe ; 2 uses
  %i.afg = getelementptr i8, ptr %i.aff, i64 -8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.aff, i64 -4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !53 ; 2 uses
  %i.afh = load <2 x i32>, ptr %i.afg, align 4, !tbaa !53
  %.not33.i = icmp eq i32 %.sroa.4.0.copyload.i, -1
  br i1 %.not33.i, label %session_process_settings_frame.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ma
  %i.afi = load i64, ptr %i.ay, align 8, !tbaa !263 ; 4 uses
  %.not40.i = icmp eq i64 %i.afi, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i1102

.lr.ph.i1102:                                     ; preds = %.preheader.i, %bb.mb
  %.039.i = phi i64 [ %i.afm, %bb.mb ], [ 0, %.preheader.i ] ; 4 uses
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i1101, i64 %.039.i
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !179
  %i.afl = icmp eq i32 %i.afk, 1
  br i1 %i.afl, label %bb.mc, label %bb.mb

bb.mb:                                            ; preds = %.lr.ph.i1102
  %i.afm = add nuw i64 %.039.i, 1                 ; 2 uses
  %exitcond.not.i1103 = icmp eq i64 %i.afm, %i.afi
  br i1 %exitcond.not.i1103, label %._crit_edge.i, label %.lr.ph.i1102, !llvm.loop !265

._crit_edge.i:                                    ; preds = %.preheader.i, %bb.mb
  call void @__assert_fail(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.1, i32 noundef 4555, ptr noundef nonnull @__PRETTY_FUNCTION__.session_process_settings_frame) #16
  unreachable

end_hunk_3
begin_hunk_4_@nghttp2_session_mem_recv2:bb.a
  br i1 %i.ajl, label %nghttp2_session_consume.exit.thread.thread, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.ajm = load i32, ptr %i.af, align 4, !tbaa !65
  %i.ajn = and i32 %i.ajm, 1
  %.not.i1113 = icmp eq i32 %i.ajn, 0
  br i1 %.not.i1113, label %nghttp2_session_consume.exit.thread, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.ajo = load i8, ptr %i.ai, align 1, !tbaa !114
  %i.ajp = load i32, ptr %i.aj, align 4, !tbaa !52
  %i.ajq = call fastcc i32 @session_update_consumed_size(ptr noundef nonnull %0, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, i8 noundef zeroext %i.ajo, i32 noundef 0, i64 noundef %i.aiw, i32 noundef %i.ajp) ; 2 uses
  %i.ajr = icmp sgt i32 %i.ajq, -901
  br i1 %i.ajr, label %bb.nk, label %nghttp2_session_consume.exit.thread1270

bb.nk:                                            ; preds = %bb.nj
  %i.ajs = call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %i.ajk) #15 ; 8 uses
  %i.ajt = icmp eq ptr %i.ajs, null
  br i1 %i.ajt, label %nghttp2_session_consume.exit.thread, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajs, i64 116
  %i.ajv = load i8, ptr %i.aju, align 4, !tbaa !40
  %i.ajw = and i8 %i.ajv, 2
  %.not.i.i1115 = icmp eq i8 %i.ajw, 0
  br i1 %.not.i.i1115, label %bb.nm, label %nghttp2_session_consume.exit.thread

bb.nm:                                            ; preds = %bb.nl
  %i.ajx = load i32, ptr %i.ajs, align 8, !tbaa !44
  %i.ajy = icmp eq i32 %i.ajx, 5
  br i1 %i.ajy, label %nghttp2_session_consume.exit.thread, label %nghttp2_session_consume.exit

nghttp2_session_consume.exit:                     ; preds = %bb.nm
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajs, i64 92
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajs, i64 88
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajs, i64 119
  %i.akc = load i8, ptr %i.akb, align 1, !tbaa !113
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajs, i64 80
  %i.ake = load i32, ptr %i.akd, align 8, !tbaa !132
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajs, i64 100
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !165
  %i.akh = call fastcc i32 @session_update_consumed_size(ptr noundef nonnull %0, ptr noundef nonnull %i.ajz, ptr noundef nonnull %i.aka, i8 noundef zeroext %i.akc, i32 noundef %i.ake, i64 noundef %i.aiw, i32 noundef %i.akg) ; 2 uses
  %i.aki = icmp sgt i32 %i.akh, -901
  br i1 %i.aki, label %nghttp2_session_consume.exit.thread, label %nghttp2_session_consume.exit.thread1270

nghttp2_session_consume.exit.thread1270:          ; preds = %bb.nj, %nghttp2_session_consume.exit
  %.0.i11141273 = phi i32 [ %i.akh, %nghttp2_session_consume.exit ], [ %i.ajq, %bb.nj ]
  %i.akj = sext i32 %.0.i11141273 to i64
  br label %nghttp2_session_want_read.exit.thread

nghttp2_session_consume.exit.thread:              ; preds = %bb.nm, %bb.nl, %bb.nk, %bb.ni, %nghttp2_session_consume.exit
  %.pr2068 = load i32, ptr %i.s, align 8, !tbaa !90
  %i.akk = icmp eq i32 %.pr2068, 15
  br i1 %i.akk, label %nghttp2_session_want_read.exit.thread, label %nghttp2_session_consume.exit.thread.thread

nghttp2_session_consume.exit.thread.thread:       ; preds = %bb.nh, %nghttp2_session_consume.exit.thread
  %i.akl = load i32, ptr %i.ak, align 8, !tbaa !106
  %i.akm = call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %i.akl) #15 ; 4 uses
  %i.akn = icmp eq ptr %i.akm, null
  br i1 %i.akn, label %nghttp2_session_get_stream.exit.thread, label %bb.nn

bb.nn:                                            ; preds = %nghttp2_session_consume.exit.thread.thread
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akm, i64 116
  %i.akp = load i8, ptr %i.ako, align 4, !tbaa !40
  %i.akq = and i8 %i.akp, 2
  %.not.i1117 = icmp eq i8 %i.akq, 0
  br i1 %.not.i1117, label %bb.no, label %nghttp2_session_get_stream.exit.thread

bb.no:                                            ; preds = %bb.nn
  %i.akr = load i32, ptr %i.akm, align 8, !tbaa !44
  %i.aks = icmp eq i32 %i.akr, 5
  br i1 %i.aks, label %nghttp2_session_get_stream.exit.thread, label %nghttp2_session_get_stream.exit

nghttp2_session_get_stream.exit:                  ; preds = %bb.no
  %i.akt = load i64, ptr %i.t, align 8, !tbaa !91
  %.not945 = icmp eq i64 %i.akt, 0
  br i1 %.not945, label %bb.np, label %bb.nq

bb.np:                                            ; preds = %nghttp2_session_get_stream.exit
  %i.aku = load i8, ptr %i.al, align 1, !tbaa !106
  %i.akv = and i8 %i.aku, 1
  %i.akw = xor i8 %i.akv, 1
  %i.akx = zext nneg i8 %i.akw to i32
  br label %bb.nq

bb.nq:                                            ; preds = %bb.np, %nghttp2_session_get_stream.exit
  %i.aky = phi i32 [ 1, %nghttp2_session_get_stream.exit ], [ %i.akx, %bb.np ]
  %i.akz = call i32 @nghttp2_session_update_recv_stream_window_size(ptr noundef nonnull %0, ptr noundef nonnull %i.akm, i64 noundef %i.aiw, i32 noundef %i.aky) ; 2 uses
  %i.ala = icmp sgt i32 %i.akz, -901
  br i1 %i.ala, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.alb = sext i32 %i.akz to i64
  br label %nghttp2_session_want_read.exit.thread

bb.ns:                                            ; preds = %bb.nq
  %i.alc = load i32, ptr %i.s, align 8, !tbaa !90
  %i.ald = icmp eq i32 %i.alc, 15
  br i1 %i.ald, label %nghttp2_session_want_read.exit.thread, label %nghttp2_session_get_stream.exit.thread

nghttp2_session_get_stream.exit.thread:           ; preds = %bb.no, %bb.nn, %nghttp2_session_consume.exit.thread.thread, %bb.ns
  %i.ale = load ptr, ptr %i.aa, align 8, !tbaa !234
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !106
  %i.alg = zext i8 %i.alf to i64                  ; 2 uses
  %i.alh = load i64, ptr %i.t, align 8, !tbaa !91 ; 2 uses
  %i.ali = icmp ult i64 %i.alh, %i.alg
  br i1 %i.ali, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %nghttp2_session_get_stream.exit.thread
  %i.alj = call i32 @nghttp2_session_terminate_session_with_reason(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.60) ; 2 uses
  %i.alk = icmp sgt i32 %i.alj, -901
  %i.all = sext i32 %i.alj to i64
  %spec.select1049 = select i1 %i.alk, i64 %2, i64 %i.all
  br label %nghttp2_session_want_read.exit.thread

bb.nu:                                            ; preds = %nghttp2_session_get_stream.exit.thread
  %i.alm = add nuw nsw i64 %i.alg, 1              ; 2 uses
  store i64 %i.alm, ptr %i.am, align 8, !tbaa !242
  store i64 %i.alm, ptr %i.ae, align 8, !tbaa !106
  %i.aln = icmp eq i64 %i.alh, 0
  br i1 %i.aln, label %bb.nv, label %bb.oc

bb.nv:                                            ; preds = %bb.nu
  %i.alo = load i8, ptr %i.al, align 1, !tbaa !106
  %i.alp = and i8 %i.alo, 1
  %i.alq = icmp eq i8 %i.alp, 0
  br i1 %i.alq, label %bb.nw, label %bb.oc

bb.nw:                                            ; preds = %bb.nv
  %i.alr = load i8, ptr %i.h, align 4, !tbaa !8
  %i.als = and i8 %i.alr, 1
  %.not.i1121 = icmp eq i8 %i.als, 0
  br i1 %.not.i1121, label %bb.nx, label %bb.ob

bb.nx:                                            ; preds = %bb.nw
  %i.alt = call i64 @nghttp2_time_now_sec() #15
  call void @nghttp2_ratelim_update(ptr noundef nonnull %i.aq, i64 noundef %i.alt) #15
  %i.alu = call i32 @nghttp2_ratelim_drain(ptr noundef nonnull %i.aq, i64 noundef 1) #15
  %i.alv = icmp eq i32 %i.alu, 0
  br i1 %i.alv, label %bb.ob, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.alw = load i8, ptr %i.h, align 4, !tbaa !8
  %i.alx = and i8 %i.alw, 1
  %.not.i.i.i1124 = icmp eq i8 %i.alx, 0
  br i1 %.not.i.i.i1124, label %bb.nz, label %bb.ob

bb.nz:                                            ; preds = %bb.ny
  %i.aly = load i32, ptr %i.ar, align 4, !tbaa !37
  store i32 15, ptr %i.s, align 8, !tbaa !38
  %i.alz = call i32 @nghttp2_session_add_goaway(ptr noundef nonnull %0, i32 noundef %i.aly, i32 noundef 11, ptr noundef null, i64 noundef 0, i8 noundef zeroext 1) ; 2 uses
  %.not17.i.i.i1125 = icmp eq i32 %i.alz, 0
  br i1 %.not17.i.i.i1125, label %bb.oa, label %session_update_glitch_ratelim.exit

bb.oa:                                            ; preds = %bb.nz
  %i.ama = load i8, ptr %i.h, align 4, !tbaa !8
  %i.amb = or i8 %i.ama, 1
  store i8 %i.amb, ptr %i.h, align 4, !tbaa !8
  br label %bb.ob

session_update_glitch_ratelim.exit:               ; preds = %bb.nz
  %i.amc = sext i32 %i.alz to i64
  br label %nghttp2_session_want_read.exit.thread

bb.ob:                                            ; preds = %bb.nx, %bb.nw, %bb.oa, %bb.ny
  %i.amd = load i32, ptr %i.s, align 8, !tbaa !90
  %i.ame = icmp eq i32 %i.amd, 15
  br i1 %i.ame, label %nghttp2_session_want_read.exit.thread, label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.nv, %bb.nu
  store i32 13, ptr %i.s, align 8, !tbaa !90
  br label %.thread1189

bb.od:                                            ; preds = %.critedge
  %i.amf = load i32, ptr %i.ak, align 8, !tbaa !106
  %i.amg = call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %i.amf) #15 ; 5 uses
  %i.amh = icmp eq ptr %i.amg, null
  br i1 %i.amh, label %select.unfold1279, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amg, i64 116
  %i.amj = load i8, ptr %i.ami, align 4, !tbaa !40
  %i.amk = and i8 %i.amj, 2
  %.not.i1126 = icmp eq i8 %i.amk, 0
  br i1 %.not.i1126, label %bb.of, label %select.unfold1279

bb.of:                                            ; preds = %bb.oe
  %i.aml = load i32, ptr %i.amg, align 8, !tbaa !44
  %i.amm = icmp eq i32 %i.aml, 5
  br i1 %i.amm, label %select.unfold1279, label %nghttp2_session_get_stream.exit1129

select.unfold1279:                                ; preds = %bb.of, %bb.od, %bb.oe
  store i32 14, ptr %i.s, align 8, !tbaa !90
  br label %.thread1189

nghttp2_session_get_stream.exit1129:              ; preds = %bb.of
  %.val1054 = load i64, ptr %i.t, align 8, !tbaa !91 ; 2 uses
  %i.amn = ptrtoint ptr %.1835 to i64
  %i.amo = sub i64 %i.u, %i.amn
  %i.amp = call noundef i64 @llvm.umin.i64(i64 %i.amo, i64 %.val1054) ; 9 uses
  %i.amq = sub i64 %.val1054, %i.amp              ; 2 uses
  store i64 %i.amq, ptr %i.t, align 8, !tbaa !91
  %i.amr = getelementptr inbounds nuw i8, ptr %.1835, i64 %i.amp ; 4 uses
  %.not926 = icmp eq i64 %i.amp, 0
  br i1 %.not926, label %bb.pk, label %bb.og

bb.og:                                            ; preds = %nghttp2_session_get_stream.exit1129
  %i.ams = call i32 @nghttp2_session_update_recv_connection_window_size(ptr noundef nonnull %0, i64 noundef %i.amp) ; 2 uses
  %i.amt = icmp sgt i32 %i.ams, -901
  br i1 %i.amt, label %bb.oi, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.amu = sext i32 %i.ams to i64
  br label %nghttp2_session_want_read.exit.thread

bb.oi:                                            ; preds = %bb.og
  %i.amv = load i32, ptr %i.s, align 8, !tbaa !90
  %i.amw = icmp eq i32 %i.amv, 15
  br i1 %i.amw, label %nghttp2_session_want_read.exit.thread, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.amx = load i64, ptr %i.t, align 8, !tbaa !91
  %.not928 = icmp eq i64 %i.amx, 0
  br i1 %.not928, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  %i.amy = load i8, ptr %i.al, align 1, !tbaa !106
  %i.amz = and i8 %i.amy, 1
  %i.ana = xor i8 %i.amz, 1
  %i.anb = zext nneg i8 %i.ana to i32
  br label %bb.ol

bb.ol:                                            ; preds = %bb.ok, %bb.oj
  %i.anc = phi i32 [ 1, %bb.oj ], [ %i.anb, %bb.ok ]
  %i.and = call i32 @nghttp2_session_update_recv_stream_window_size(ptr noundef nonnull %0, ptr noundef nonnull %i.amg, i64 noundef %i.amp, i32 noundef %i.anc) ; 2 uses
  %i.ane = icmp sgt i32 %i.and, -901
  br i1 %i.ane, label %bb.on, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.anf = sext i32 %i.and to i64
  br label %nghttp2_session_want_read.exit.thread

bb.on:                                            ; preds = %bb.ol
  %i.ang = load i32, ptr %i.s, align 8, !tbaa !90
  %i.anh = icmp eq i32 %i.ang, 15
  br i1 %i.anh, label %nghttp2_session_want_read.exit.thread, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.ani = load i64, ptr %i.t, align 8, !tbaa !91 ; 2 uses
  %i.anj = load i64, ptr %i.am, align 8, !tbaa !242
  %i.ank = call i64 @nghttp2_frame_trail_padlen(ptr noundef nonnull %i.c, i64 noundef %i.anj) #15 ; 2 uses
  %i.anl = icmp ugt i64 %i.ank, %i.ani
  %i.anm = sub nuw i64 %i.ank, %i.ani             ; 2 uses
  %i.ann = icmp ult i64 %i.amp, %i.anm
  %i.ano = sub nuw i64 %i.amp, %i.anm
  %.0.i1130 = select i1 %i.ann, i64 -1, i64 %i.ano
  %.1.i1131 = select i1 %i.anl, i64 %.0.i1130, i64 %i.amp ; 2 uses
  %i.anp = icmp eq i64 %.1.i1131, -1
  %spec.store.select = select i1 %i.anp, i64 0, i64 %.1.i1131 ; 5 uses
  %i.anq = sub nsw i64 %i.amp, %spec.store.select ; 2 uses
  %i.anr = icmp sgt i64 %i.anq, 0
  br i1 %i.anr, label %bb.op, label %bb.os

bb.op:                                            ; preds = %bb.oo
  %i.ans = load i32, ptr %i.ak, align 8, !tbaa !106
  %i.ant = call i32 @nghttp2_session_consume(ptr noundef nonnull %0, i32 noundef %i.ans, i64 noundef %i.anq) ; 2 uses
  %i.anu = icmp sgt i32 %i.ant, -901
  br i1 %i.anu, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.anv = sext i32 %i.ant to i64
  br label %nghttp2_session_want_read.exit.thread

bb.or:                                            ; preds = %bb.op
  %i.anw = load i32, ptr %i.s, align 8, !tbaa !90
  %i.anx = icmp eq i32 %i.anw, 15
  br i1 %i.anx, label %nghttp2_session_want_read.exit.thread, label %bb.os

bb.os:                                            ; preds = %bb.oo, %bb.or
  %i.any = icmp sgt i64 %spec.store.select, 0
  br i1 %i.any, label %bb.ot, label %.thread1288

bb.ot:                                            ; preds = %bb.os
  %.val = load i32, ptr %i.af, align 4, !tbaa !65
  %i.anz = and i32 %.val, 4
  %.not931.not = icmp eq i32 %i.anz, 0
  br i1 %.not931.not, label %bb.ou, label %bb.pe

bb.ou:                                            ; preds = %bb.ot
  %i.aoa = call i32 @nghttp2_http_on_data_chunk(ptr noundef nonnull %i.amg, i64 noundef %spec.store.select) #15
  %.not932 = icmp eq i32 %i.aoa, 0
  br i1 %.not932, label %bb.pe, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.aob = load i32, ptr %i.af, align 4, !tbaa !65
  %i.aoc = and i32 %i.aob, 1
  %.not935 = icmp eq i32 %i.aoc, 0
  br i1 %.not935, label %bb.oz, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.aod = load i8, ptr %i.ai, align 1, !tbaa !114
  %i.aoe = load i32, ptr %i.aj, align 4, !tbaa !52
  %i.aof = call fastcc i32 @session_update_consumed_size(ptr noundef nonnull %0, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, i8 noundef zeroext %i.aod, i32 noundef 0, i64 noundef %spec.store.select, i32 noundef %i.aoe) ; 2 uses
  %i.aog = icmp sgt i32 %i.aof, -901
  br i1 %i.aog, label %bb.oy, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.aoh = sext i32 %i.aof to i64
  br label %nghttp2_session_want_read.exit.thread

bb.oy:                                            ; preds = %bb.ow
  %i.aoi = load i32, ptr %i.s, align 8, !tbaa !90
  %i.aoj = icmp eq i32 %i.aoi, 14
  br i1 %i.aoj, label %nghttp2_session_want_read.exit.thread, label %bb.oz

bb.oz:                                            ; preds = %bb.oy, %bb.ov
  %i.aok = load i32, ptr %i.ak, align 8, !tbaa !106
  %i.aol = call fastcc i32 @session_handle_invalid_stream2(ptr noundef nonnull %0, i32 noundef %i.aok, ptr noundef nonnull %i.c, i32 noundef -505) ; 2 uses
  %i.aom = icmp sgt i32 %i.aol, -901
  br i1 %i.aom, label %bb.pb, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.aon = sext i32 %i.aol to i64
  br label %nghttp2_session_want_read.exit.thread

bb.pb:                                            ; preds = %bb.oz
  %i.aoo = call fastcc i32 @session_update_glitch_ratelim(ptr noundef nonnull %0) ; 2 uses
  %.not938 = icmp eq i32 %i.aoo, 0
  br i1 %.not938, label %bb.pd, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.aop = sext i32 %i.aoo to i64
  br label %nghttp2_session_want_read.exit.thread

bb.pd:                                            ; preds = %bb.pb
  %i.aoq = load i32, ptr %i.s, align 8, !tbaa !90
  %i.aor = icmp eq i32 %i.aoq, 15
  br i1 %i.aor, label %nghttp2_session_want_read.exit.thread, label %bb.pj

bb.pe:                                            ; preds = %bb.ou, %bb.ot
  %i.aos = load ptr, ptr %i.an, align 8, !tbaa !271 ; 2 uses
  %.not933 = icmp eq ptr %i.aos, null
  br i1 %.not933, label %.thread1288, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.aot = load i8, ptr %i.al, align 1, !tbaa !106
  %i.aou = load i32, ptr %i.ak, align 8, !tbaa !106
  %i.aov = load ptr, ptr %i.z, align 8, !tbaa !89
  %i.aow = call i32 %i.aos(ptr noundef nonnull %0, i8 noundef zeroext %i.aot, i32 noundef %i.aou, ptr noundef %.1835, i64 noundef %spec.store.select, ptr noundef %i.aov) #15 ; 2 uses
  %i.aox = icmp sgt i32 %i.aow, -901
  br i1 %i.aox, label %bb.pg, label %nghttp2_session_want_read.exit.thread

bb.pg:                                            ; preds = %bb.pf
  %i.aoy = load i32, ptr %i.s, align 8, !tbaa !90
  %i.aoz = icmp eq i32 %i.aoy, 15
  br i1 %i.aoz, label %nghttp2_session_want_read.exit.thread, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.apa = icmp eq i32 %i.aow, -526
  br i1 %i.apa, label %bb.pi, label %.thread1288

bb.pi:                                            ; preds = %bb.ph
  %i.apb = ptrtoint ptr %i.amr to i64
  %i.apc = ptrtoint ptr %.0834 to i64
  %i.apd = sub i64 %i.apb, %i.apc
  br label %nghttp2_session_want_read.exit.thread

.thread1288:                                      ; preds = %bb.pe, %bb.ph, %bb.os
  %.pr1292 = load i64, ptr %i.t, align 8, !tbaa !91
  br label %bb.pk

bb.pj:                                            ; preds = %bb.pd
  store i32 14, ptr %i.s, align 8, !tbaa !90
  br label %.thread1189

bb.pk:                                            ; preds = %.thread1288, %nghttp2_session_get_stream.exit1129
  %i.ape = phi i64 [ %.pr1292, %.thread1288 ], [ %i.amq, %nghttp2_session_get_stream.exit1129 ]
  %.not939 = icmp eq i64 %i.ape, 0
  br i1 %.not939, label %bb.pl, label %.thread1189

bb.pl:                                            ; preds = %bb.pk
  %i.apf = call i32 @nghttp2_session_on_data_received(ptr noundef nonnull %0, ptr noundef nonnull %i.c) ; 2 uses
  %i.apg = icmp sgt i32 %i.apf, -901
  br i1 %i.apg, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.aph = sext i32 %i.apf to i64
  br label %nghttp2_session_want_read.exit.thread

bb.pn:                                            ; preds = %bb.pl
  %i.api = load i32, ptr %i.s, align 8, !tbaa !90
  %i.apj = icmp eq i32 %i.api, 15
  br i1 %i.apj, label %nghttp2_session_want_read.exit.thread, label %bb.po

bb.po:                                            ; preds = %bb.pn
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1189

bb.pp:                                            ; preds = %.critedge
  %.val1053 = load i64, ptr %i.t, align 8, !tbaa !91 ; 2 uses
  %i.apk = ptrtoint ptr %.1835 to i64
  %i.apl = sub i64 %i.u, %i.apk
  %i.apm = call noundef i64 @llvm.umin.i64(i64 %i.apl, i64 %.val1053) ; 5 uses
  %i.apn = sub i64 %.val1053, %i.apm              ; 2 uses
  store i64 %i.apn, ptr %i.t, align 8, !tbaa !91
  %i.apo = getelementptr inbounds nuw i8, ptr %.1835, i64 %i.apm ; 2 uses
  %.not920 = icmp eq i64 %i.apm, 0
  br i1 %.not920, label %bb.px, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.app = call i32 @nghttp2_session_update_recv_connection_window_size(ptr noundef nonnull %0, i64 noundef %i.apm) ; 2 uses
  %i.apq = icmp sgt i32 %i.app, -901
  br i1 %i.apq, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.apr = sext i32 %i.app to i64
  br label %nghttp2_session_want_read.exit.thread

bb.ps:                                            ; preds = %bb.pq
  %i.aps = load i32, ptr %i.s, align 8, !tbaa !90
  %i.apt = icmp eq i32 %i.aps, 15
  br i1 %i.apt, label %nghttp2_session_want_read.exit.thread, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.apu = load i32, ptr %i.af, align 4, !tbaa !65
  %i.apv = and i32 %i.apu, 1
  %.not922 = icmp eq i32 %i.apv, 0
  br i1 %.not922, label %thread-pre-split1293, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.apw = load i8, ptr %i.ai, align 1, !tbaa !114
  %i.apx = load i32, ptr %i.aj, align 4, !tbaa !52
  %i.apy = call fastcc i32 @session_update_consumed_size(ptr noundef nonnull %0, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, i8 noundef zeroext %i.apw, i32 noundef 0, i64 noundef %i.apm, i32 noundef %i.apx) ; 2 uses
  %i.apz = icmp sgt i32 %i.apy, -901
  br i1 %i.apz, label %bb.pw, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.aqa = sext i32 %i.apy to i64
  br label %nghttp2_session_want_read.exit.thread

bb.pw:                                            ; preds = %bb.pu
  %i.aqb = load i32, ptr %i.s, align 8, !tbaa !90
  %i.aqc = icmp eq i32 %i.aqb, 15
  br i1 %i.aqc, label %nghttp2_session_want_read.exit.thread, label %thread-pre-split1293

thread-pre-split1293:                             ; preds = %bb.pw, %bb.pt
  %.pr1294 = load i64, ptr %i.t, align 8, !tbaa !91
  br label %bb.px

bb.px:                                            ; preds = %thread-pre-split1293, %bb.pp
  %i.aqd = phi i64 [ %.pr1294, %thread-pre-split1293 ], [ %i.apn, %bb.pp ]
  %.not924 = icmp eq i64 %i.aqd, 0
  br i1 %.not924, label %bb.py, label %.thread1189

bb.py:                                            ; preds = %bb.px
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1189

bb.pz:                                            ; preds = %.critedge
  %.val1052 = load i64, ptr %i.t, align 8, !tbaa !91 ; 2 uses
  %i.aqe = ptrtoint ptr %.1835 to i64
  %i.aqf = sub i64 %i.u, %i.aqe
  %i.aqg = call noundef i64 @llvm.umin.i64(i64 %i.aqf, i64 %.val1052) ; 4 uses
  %i.aqh = sub i64 %.val1052, %i.aqg              ; 3 uses
  store i64 %i.aqh, ptr %i.t, align 8, !tbaa !91
  %i.aqi = getelementptr inbounds nuw i8, ptr %.1835, i64 %i.aqg ; 3 uses
  %.not915 = icmp eq i64 %i.aqg, 0
  br i1 %.not915, label %thread-pre-split1304, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.aqj = load ptr, ptr %i.ac, align 8, !tbaa !272 ; 2 uses
  %.not.i1133 = icmp eq ptr %i.aqj, null
  br i1 %.not.i1133, label %thread-pre-split1304, label %session_call_on_extension_chunk_recv_callback.exit

session_call_on_extension_chunk_recv_callback.exit: ; preds = %bb.qa
  %i.aqk = load ptr, ptr %i.z, align 8, !tbaa !89
  %i.aql = call i32 %i.aqj(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef %.1835, i64 noundef range(i64 1, 0) %i.aqg, ptr noundef %i.aqk) #15, !inline_history !273 ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.aql, 0
  switch i32 %i.aql, label %nghttp2_session_want_read.exit.thread [
    i32 -535, label %bb.qb
    i32 0, label %bb.qb
  ]

bb.qb:                                            ; preds = %session_call_on_extension_chunk_recv_callback.exit, %session_call_on_extension_chunk_recv_callback.exit
  %i.aqm = load i32, ptr %i.s, align 8, !tbaa !90
  %i.aqn = icmp eq i32 %i.aqm, 15
  br i1 %i.aqn, label %nghttp2_session_want_read.exit.thread, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  br i1 %switch.selectcmp.i, label %.thread-pre-split1304_crit_edge, label %bb.qd

.thread-pre-split1304_crit_edge:                  ; preds = %bb.qc
  %.pr1305.pre = load i64, ptr %i.t, align 8, !tbaa !91
  br label %thread-pre-split1304

bb.qd:                                            ; preds = %bb.qc
  store i32 6, ptr %i.s, align 8, !tbaa !90
  br label %.thread1189

thread-pre-split1304:                             ; preds = %.thread-pre-split1304_crit_edge, %bb.qa, %bb.pz
  %i.aqo = phi i64 [ %i.aqh, %bb.pz ], [ %.pr1305.pre, %.thread-pre-split1304_crit_edge ], [ %i.aqh, %bb.qa ]
  %.not918 = icmp eq i64 %i.aqo, 0
  br i1 %.not918, label %bb.qe, label %.thread1189

bb.qe:                                            ; preds = %thread-pre-split1304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !49
  %i.aqp = load ptr, ptr %i.ad, align 8, !tbaa !241
  %i.aqq = load ptr, ptr %i.z, align 8, !tbaa !89
  %i.aqr = call i32 %i.aqp(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %i.aqq) #15, !inline_history !274
  switch i32 %i.aqr, label %session_call_unpack_extension_callback.exit.i [
    i32 -535, label %bb.qf
    i32 0, label %bb.qg
  ]

session_call_unpack_extension_callback.exit.i:    ; preds = %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %nghttp2_session_want_read.exit.thread

bb.qf:                                            ; preds = %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.qi

bb.qg:                                            ; preds = %bb.qe
  %i.aqs = load ptr, ptr %i.a, align 8, !tbaa !49
  store ptr %i.aqs, ptr %i.ae, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aqt = load ptr, ptr %i.y, align 8, !tbaa !177 ; 2 uses
  %.not.i.i1135 = icmp eq ptr %i.aqt, null
  br i1 %.not.i.i1135, label %bb.qi, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.aqu = load ptr, ptr %i.z, align 8, !tbaa !89
  %i.aqv = call i32 %i.aqt(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef %i.aqu) #15, !inline_history !275
  %.not7.i.i1136 = icmp eq i32 %i.aqv, 0
  br i1 %.not7.i.i1136, label %bb.qi, label %nghttp2_session_want_read.exit.thread

bb.qi:                                            ; preds = %bb.qg, %bb.qh, %bb.qf
  %i.aqw = load i32, ptr %i.s, align 8, !tbaa !90
  %i.aqx = icmp eq i32 %i.aqw, 15
  br i1 %i.aqx, label %nghttp2_session_want_read.exit.thread, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1189

bb.qk:                                            ; preds = %.critedge
  %.val1051 = load i64, ptr %i.t, align 8, !tbaa !91 ; 2 uses
  %i.aqy = ptrtoint ptr %.1835 to i64
  %i.aqz = sub i64 %i.u, %i.aqy
  %i.ara = call noundef i64 @llvm.umin.i64(i64 %i.aqz, i64 %.val1051) ; 4 uses
  %.not911 = icmp eq i64 %i.ara, 0
  br i1 %.not911, label %bb.qm, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.arb = load ptr, ptr %i.v, align 8, !tbaa !266
  %i.arc = call ptr @nghttp2_cpymem(ptr noundef %i.arb, ptr noundef %.1835, i64 noundef %i.ara) #15
  store ptr %i.arc, ptr %i.v, align 8, !tbaa !266
  %i.ard = load i64, ptr %i.t, align 8, !tbaa !91
  %i.are = sub i64 %i.ard, %i.ara                 ; 2 uses
  store i64 %i.are, ptr %i.t, align 8, !tbaa !91
  %i.arf = getelementptr inbounds nuw i8, ptr %.1835, i64 %i.ara
  br label %bb.qm

bb.qm:                                            ; preds = %bb.qk, %bb.ql
  %i.arg = phi i64 [ %i.are, %bb.ql ], [ %.val1051, %bb.qk ]
  %.7841 = phi ptr [ %i.arf, %bb.ql ], [ %.1835, %bb.qk ] ; 2 uses
  %.not912 = icmp eq i64 %i.arg, 0
  br i1 %.not912, label %bb.qp, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.arh = load ptr, ptr %i.w, align 8, !tbaa !267
  %i.ari = load ptr, ptr %i.v, align 8, !tbaa !266
  %.not914 = icmp eq ptr %i.arh, %i.ari
  br i1 %.not914, label %bb.qo, label %.thread1189

bb.qo:                                            ; preds = %bb.qn
  call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef 7032, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_session_mem_recv2) #16
  unreachable

bb.qp:                                            ; preds = %bb.qm
  %i.arj = load ptr, ptr %i.aa, align 8, !tbaa !234
  %i.ark = call zeroext i16 @nghttp2_get_uint16(ptr noundef %i.arj) #15
  %i.arl = zext i16 %i.ark to i64
  %i.arm = load ptr, ptr %i.x, align 8, !tbaa !268 ; 2 uses
  %i.arn = load ptr, ptr %i.v, align 8, !tbaa !266
  %i.aro = ptrtoint ptr %i.arn to i64
  %i.arp = ptrtoint ptr %i.arm to i64
  %i.arq = sub i64 %i.aro, %i.arp
  call void @nghttp2_frame_unpack_altsvc_payload(ptr noundef nonnull %i.c, i64 noundef %i.arl, ptr noundef %i.arm, i64 noundef %i.arq) #15
  call void @nghttp2_buf_wrap_init(ptr noundef nonnull %i.ab, ptr noundef null, i64 noundef 0) #15
  %i.arr = call range(i32 -902, 1) i32 @nghttp2_session_on_altsvc_received(ptr noundef nonnull %0, ptr noundef nonnull %i.c) ; 2 uses
  %i.ars = icmp sgt i32 %i.arr, -901
  br i1 %i.ars, label %bb.qr, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.art = sext i32 %i.arr to i64
  br label %nghttp2_session_want_read.exit.thread

bb.qr:                                            ; preds = %bb.qp
  %i.aru = load i32, ptr %i.s, align 8, !tbaa !90
  %i.arv = icmp eq i32 %i.aru, 15
  br i1 %i.arv, label %nghttp2_session_want_read.exit.thread, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1189

bb.qt:                                            ; preds = %.critedge
  %.val1050 = load i64, ptr %i.t, align 8, !tbaa !91 ; 2 uses
  %i.arw = ptrtoint ptr %.1835 to i64
  %i.arx = sub i64 %i.u, %i.arw
  %i.ary = call noundef i64 @llvm.umin.i64(i64 %i.arx, i64 %.val1050) ; 4 uses
  %.not907 = icmp eq i64 %i.ary, 0
  br i1 %.not907, label %bb.qv, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  %i.arz = load ptr, ptr %i.v, align 8, !tbaa !266
  %i.asa = call ptr @nghttp2_cpymem(ptr noundef %i.arz, ptr noundef %.1835, i64 noundef %i.ary) #15
  store ptr %i.asa, ptr %i.v, align 8, !tbaa !266
  %i.asb = load i64, ptr %i.t, align 8, !tbaa !91
  %i.asc = sub i64 %i.asb, %i.ary                 ; 2 uses
  store i64 %i.asc, ptr %i.t, align 8, !tbaa !91
  %i.asd = getelementptr inbounds nuw i8, ptr %.1835, i64 %i.ary
  br label %bb.qv

bb.qv:                                            ; preds = %bb.qt, %bb.qu
  %i.ase = phi i64 [ %i.asc, %bb.qu ], [ %.val1050, %bb.qt ]
  %.8842 = phi ptr [ %i.asd, %bb.qu ], [ %.1835, %bb.qt ] ; 2 uses
  %.not908 = icmp eq i64 %i.ase, 0
  %i.asf = load ptr, ptr %i.v, align 8, !tbaa !266 ; 2 uses
  br i1 %.not908, label %bb.qy, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.asg = load ptr, ptr %i.w, align 8, !tbaa !267
  %.not910 = icmp eq ptr %i.asg, %i.asf
  br i1 %.not910, label %bb.qx, label %.thread1189

bb.qx:                                            ; preds = %bb.qw
  call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1, i32 noundef 7065, ptr noundef nonnull @__PRETTY_FUNCTION__.nghttp2_session_mem_recv2) #16
  unreachable

bb.qy:                                            ; preds = %bb.qv
  %i.ash = load ptr, ptr %i.x, align 8, !tbaa !268 ; 2 uses
  %i.asi = ptrtoint ptr %i.asf to i64
  %i.asj = ptrtoint ptr %i.ash to i64
  %i.ask = sub i64 %i.asi, %i.asj
  %i.asl = call i32 @nghttp2_frame_unpack_origin_payload(ptr noundef nonnull %i.c, ptr noundef %i.ash, i64 noundef %i.ask, ptr noundef nonnull %i.g) #15 ; 3 uses
  %.not.i1138 = icmp eq i32 %i.asl, 0
  br i1 %.not.i1138, label %bb.qz, label %session_process_origin_frame.exit

bb.qz:                                            ; preds = %bb.qy
  %i.asm = load ptr, ptr %i.y, align 8, !tbaa !177 ; 2 uses
  %.not.i.i.i1141 = icmp eq ptr %i.asm, null
  br i1 %.not.i.i.i1141, label %session_process_origin_frame.exit.thread, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.asn = load ptr, ptr %i.z, align 8, !tbaa !89
  %i.aso = call i32 %i.asm(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef %i.asn) #15, !inline_history !276
  %.not7.i.i.i = icmp eq i32 %i.aso, 0
  br i1 %.not7.i.i.i, label %session_process_origin_frame.exit.thread, label %nghttp2_session_want_read.exit.thread

session_process_origin_frame.exit:                ; preds = %bb.qy
  %i.asp = icmp sgt i32 %i.asl, -901
  br i1 %i.asp, label %session_process_origin_frame.exit.thread, label %session_process_origin_frame.exit.thread1310.split.loop.exit1683

session_process_origin_frame.exit.thread1310.split.loop.exit1683: ; preds = %session_process_origin_frame.exit
  %i.asq = sext i32 %i.asl to i64
  br label %nghttp2_session_want_read.exit.thread

session_process_origin_frame.exit.thread:         ; preds = %bb.ra, %bb.qz, %session_process_origin_frame.exit
  %i.asr = load i32, ptr %i.s, align 8, !tbaa !90
  %i.ass = icmp eq i32 %i.asr, 15
  br i1 %i.ass, label %nghttp2_session_want_read.exit.thread, label %bb.rb

bb.rb:                                            ; preds = %session_process_origin_frame.exit.thread
  call fastcc void @session_inbound_frame_reset(ptr noundef nonnull %0)
  br label %.thread1189

.thread1189:                                      ; preds = %bb.my, %session_after_header_block_received.exit.thread.thread1328, %bb.ji, %bb.jh, %bb.je, %bb.eo, %bb.ch, %bb.ce, %bb.cb, %bb.bp, %bb.bk, %bb.be, %bb.an, %bb.aa, %bb.eg, %bb.eb, %bb.dx, %bb.di, %bb.dp, %bb.dc, %bb.da, %bb.cv, %bb.el, %bb.cp, %bb.pj, %bb.jc, %session_handle_invalid_stream2.exit1089.thread, %bb.jb, %.thread1209, %session_handle_invalid_stream2.exit.thread, %bb.bb, %bb.bc, %bb.em, %bb.em, %bb.em, %bb.em, %bb.em, %bb.qw, %bb.qn, %thread-pre-split1304, %bb.px, %bb.pk, %bb.nb, %bb.na, %bb.mk, %bb.lo, %bb.lg, %bb.ey, %bb.ez, %session_handle_invalid_stream2.exit1077.thread, %bb.fk, %bb.fl, %bb.fm, %bb.fq, %bb.fv, %session_handle_invalid_stream2.exit1082.thread, %bb.gc, %bb.gd, %bb.gh, %bb.go, %bb.gq, %bb.gu, %bb.gy, %bb.gz, %bb.g, %bb.h, %bb.rb, %bb.qs, %bb.qj, %bb.qd, %bb.py, %bb.po, %select.unfold1279, %bb.oc, %bb.mp, %bb.mg, %bb.ly, %bb.lj, %.critedge
  %.11862 = phi i32 [ 0, %.critedge ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.rb ], [ 0, %bb.gz ], [ 1, %bb.ey ], [ 0, %bb.ez ], [ 1, %session_handle_invalid_stream2.exit1077.thread ], [ 1, %bb.fk ], [ 1, %bb.fl ], [ 0, %bb.fm ], [ 0, %bb.fq ], [ 0, %session_after_header_block_received.exit.thread.thread1328 ], [ 0, %bb.fv ], [ 1, %session_handle_invalid_stream2.exit1082.thread ], [ 1, %bb.gc ], [ 1, %bb.gd ], [ 0, %bb.gh ], [ 1, %.thread1209 ], [ 0, %bb.go ], [ 1, %bb.gq ], [ 1, %bb.gu ], [ 0, %bb.gy ], [ %.2853.ph1195, %bb.eo ], [ 0, %bb.lg ], [ 0, %bb.lj ], [ 0, %bb.lo ], [ 0, %bb.ly ], [ 0, %bb.mg ], [ 0, %bb.mk ], [ 0, %bb.mp ], [ 1, %bb.na ], [ 1, %bb.nb ], [ 1, %bb.oc ], [ 0, %bb.pk ], [ 0, %bb.po ], [ 1, %bb.pj ], [ 1, %select.unfold1279 ], [ 0, %bb.px ], [ 0, %bb.py ], [ 1, %bb.qd ], [ 0, %thread-pre-split1304 ], [ 0, %bb.qj ], [ 0, %bb.qn ], [ 0, %bb.qs ], [ 0, %bb.qw ], [ 1, %bb.ch ], [ %.2853.ph.ph, %bb.em ], [ %.2853.ph.ph, %bb.em ], [ %.2853.ph.ph, %bb.em ], [ %.2853.ph.ph, %bb.em ], [ %.2853.ph.ph, %bb.em ], [ 1, %bb.bb ], [ 1, %bb.bc ], [ 1, %session_handle_invalid_stream2.exit.thread ], [ 0, %bb.jb ], [ 1, %bb.jc ], [ 1, %session_handle_invalid_stream2.exit1089.thread ], [ 1, %bb.cp ], [ 1, %bb.el ], [ 1, %bb.cv ], [ 1, %bb.da ], [ 1, %bb.dc ], [ 1, %bb.dp ], [ 1, %bb.di ], [ 1, %bb.dx ], [ 1, %bb.eb ], [ 1, %bb.eg ], [ 1, %bb.aa ], [ 1, %bb.an ], [ 1, %bb.be ], [ 1, %bb.bk ], [ 1, %bb.bp ], [ 1, %bb.cb ], [ 1, %bb.ce ], [ 0, %bb.je ], [ 0, %bb.jh ], [ 0, %bb.ji ], [ 1, %bb.my ]
  %.9843 = phi ptr [ %.1835, %.critedge ], [ %i.cf, %bb.h ], [ %i.cf, %bb.g ], [ %.8842, %bb.rb ], [ %i.lp, %bb.gz ], [ %i.lp, %bb.ey ], [ %i.lp, %bb.ez ], [ %i.lp, %session_handle_invalid_stream2.exit1077.thread ], [ %i.lp, %bb.fk ], [ %i.lp, %bb.fl ], [ %i.lp, %bb.fm ], [ %i.lp, %bb.fq ], [ %.4838, %session_after_header_block_received.exit.thread.thread1328 ], [ %i.lp, %bb.fv ], [ %i.lp, %session_handle_invalid_stream2.exit1082.thread ], [ %i.lp, %bb.gc ], [ %i.lp, %bb.gd ], [ %i.lp, %bb.gh ], [ %i.lp, %.thread1209 ], [ %i.lp, %bb.go ], [ %i.lp, %bb.gq ], [ %i.lp, %bb.gu ], [ %i.lp, %bb.gy ], [ %i.dp, %bb.eo ], [ %i.ade, %bb.lg ], [ %i.ade, %bb.lj ], [ %i.adw, %bb.lo ], [ %i.adw, %bb.ly ], [ %i.adw, %bb.mg ], [ %.6840, %bb.mk ], [ %.6840, %bb.mp ], [ %i.ahh, %bb.na ], [ %i.ahh, %bb.nb ], [ %i.aiy, %bb.oc ], [ %i.amr, %bb.pk ], [ %i.amr, %bb.po ], [ %i.amr, %bb.pj ], [ %.1835, %select.unfold1279 ], [ %i.apo, %bb.px ], [ %i.apo, %bb.py ], [ %i.aqi, %bb.qd ], [ %i.aqi, %thread-pre-split1304 ], [ %i.aqi, %bb.qj ], [ %.7841, %bb.qn ], [ %.7841, %bb.qs ], [ %.8842, %bb.qw ], [ %i.dp, %bb.ch ], [ %i.dp, %bb.em ], [ %i.dp, %bb.em ], [ %i.dp, %bb.em ], [ %i.dp, %bb.em ], [ %i.dp, %bb.em ], [ %i.dp, %bb.bb ], [ %i.dp, %bb.bc ], [ %i.dp, %session_handle_invalid_stream2.exit.thread ], [ %i.yq, %bb.jb ], [ %i.yq, %bb.jc ], [ %i.yp, %session_handle_invalid_stream2.exit1089.thread ], [ %i.dp, %bb.cp ], [ %i.dp, %bb.el ], [ %i.dp, %bb.cv ], [ %i.dp, %bb.da ], [ %i.dp, %bb.dc ], [ %i.dp, %bb.dp ], [ %i.dp, %bb.di ], [ %i.dp, %bb.dx ], [ %i.dp, %bb.eb ], [ %i.dp, %bb.eg ], [ %i.dp, %bb.aa ], [ %i.dp, %bb.an ], [ %i.dp, %bb.be ], [ %i.dp, %bb.bk ], [ %i.dp, %bb.bp ], [ %i.dp, %bb.cb ], [ %i.dp, %bb.ce ], [ %.4838, %bb.je ], [ %.4838, %bb.jh ], [ %.4838, %bb.ji ], [ %i.ahh, %bb.my ] ; 2 uses
  %.not1036 = icmp eq i32 %.11862, 0
  %i.ast = icmp eq ptr %.9843, %i.f
  %or.cond1038 = select i1 %.not1036, i1 %i.ast, i1 false
  br i1 %or.cond1038, label %nghttp2_session_want_read.exit.thread, label %.critedge

nghttp2_session_want_read.exit.thread:            ; preds = %bb.qh, %session_call_on_extension_chunk_recv_callback.exit, %bb.mz, %bb.en, %bb.aq, %bb.km, %bb.pf, %bb.pd, %bb.oy, %bb.or, %bb.on, %bb.oi, %bb.pg, %bb.iu, %session_after_header_block_received.exit.thread, %bb.bu, %bb.au, %bb.ar, %bb.ba, %bb.ah, %bb.y, %bb.dw, %bb.dr, %bb.cz, %bb.do, %bb.dh, %bb.cu, %bb.co, %bb.ee, %bb.bh, %bb.ek, %bb.bq, %bb.eo, %bb.gj, %session_process_origin_frame.exit.thread, %bb.qr, %bb.qi, %bb.qb, %.critedge, %bb.pw, %bb.ps, %bb.pn, %bb.ob, %bb.ns, %nghttp2_session_consume.exit.thread, %bb.ng, %bb.na, %bb.mw, %bb.mo, %bb.mf, %bb.gx, %bb.gs, %bb.gn, %bb.gg, %bb.fy, %bb.fp, %bb.fj, %bb.fd, %bb.f, %.thread1189, %bb.ra, %session_process_origin_frame.exit.thread1310.split.loop.exit1683, %nghttp2_session_terminate_session_with_reason.exit1108.thread, %nghttp2_session_terminate_session_with_reason.exit1108, %nghttp2_session_terminate_session_with_reason.exit, %session_call_unpack_extension_callback.exit.i, %bb.pi, %bb.pc, %bb.pa, %bb.ox, %bb.oq, %bb.om, %bb.oh, %.loopexit, %bb.iw, %bb.iy, %session_after_header_block_received.exit.thread1237, %bb.bt, %bb.bg, %bb.az, %bb.ax, %bb.at, %inbound_frame_handle_pad.exit, %inbound_frame_handle_pad.exit1069, %bb.ag, %bb.dz, %bb.x, %bb.cj, %bb.ed, %bb.dv, %bb.dg, %bb.dn, %bb.cy, %bb.ct, %bb.ej, %bb.cn, %inbound_frame_handle_pad.exit1062, %bb.r, %bb.d, %bb.nt, %inbound_frame_compute_pad.exit1079.thread, %inbound_frame_compute_pad.exit.thread, %bb.o, %bb.lm, %nghttp2_session_want_read.exit, %bb.qq, %bb.pv, %bb.pr, %bb.pm, %session_update_glitch_ratelim.exit, %bb.nr, %nghttp2_session_consume.exit.thread1270, %bb.nf, %bb.nd, %bb.mr, %bb.mn, %bb.me, %bb.ll, %bb.gw, %bb.gm, %bb.gf, %bb.gb, %bb.fx, %bb.fo, %bb.fi, %bb.fg, %bb.fc, %bb.eq, %bb.n, %bb.j
  %.11 = phi i64 [ %2, %nghttp2_session_terminate_session_with_reason.exit1108.thread ], [ %2, %nghttp2_session_want_read.exit ], [ %i.ct, %bb.j ], [ %i.dc, %bb.n ], [ %i.aoh, %bb.ox ], [ %i.gi, %bb.az ], [ %2, %bb.d ], [ %i.lv, %bb.eq ], [ %i.art, %bb.qq ], [ %spec.select, %bb.o ], [ %i.mt, %bb.fc ], [ %i.gg, %bb.ax ], [ %i.mz, %bb.fg ], [ %i.nb, %bb.fi ], [ %i.iu, %bb.cn ], [ %i.nh, %bb.fo ], [ %i.ga, %bb.at ], [ %spec.select1046, %inbound_frame_compute_pad.exit.thread ], [ %i.anf, %bb.om ], [ %i.oe, %bb.fx ], [ %i.ahw, %nghttp2_session_terminate_session_with_reason.exit1108 ], [ %i.ok, %bb.gb ], [ %i.oo, %bb.gf ], [ %i.anv, %bb.oq ], [ %i.aop, %bb.pc ], [ %i.oy, %bb.gm ], [ %spec.select1040, %inbound_frame_handle_pad.exit ], [ %spec.select1043, %inbound_frame_handle_pad.exit1069 ], [ %i.ps, %bb.gw ], [ %i.fc, %bb.ag ], [ %i.amu, %bb.oh ], [ %i.adi, %bb.ll ], [ %spec.select1041, %inbound_frame_handle_pad.exit1062 ], [ %i.afz, %bb.me ], [ %2, %bb.lm ], [ %i.agv, %bb.mn ], [ %i.asq, %session_process_origin_frame.exit.thread1310.split.loop.exit1683 ], [ %i.ahl, %bb.mr ], [ %spec.select1047, %inbound_frame_compute_pad.exit1079.thread ], [ %spec.select1045, %bb.dz ], [ %i.ek, %bb.x ], [ %i.aon, %bb.pa ], [ %spec.select1044, %bb.cj ], [ %i.aje, %bb.nd ], [ %i.ajh, %bb.nf ], [ %i.dt, %bb.r ], [ %i.akj, %nghttp2_session_consume.exit.thread1270 ], [ %i.kp, %bb.ed ], [ %i.alb, %bb.nr ], [ %spec.select1042, %bb.bt ], [ %i.ee, %nghttp2_session_terminate_session_with_reason.exit ], [ %i.kg, %bb.dv ], [ %i.amc, %session_update_glitch_ratelim.exit ], [ %spec.select1049, %bb.nt ], [ %i.acy, %session_after_header_block_received.exit.thread1237 ], [ %i.aph, %bb.pm ], [ %i.jp, %bb.dg ], [ %i.apr, %bb.pr ], [ -902, %session_call_unpack_extension_callback.exit.i ], [ %i.aqa, %bb.pv ], [ %i.xy, %.loopexit ], [ %i.jw, %bb.dn ], [ %i.yg, %bb.iw ], [ %i.jg, %bb.cy ], [ %i.yo, %bb.iy ], [ %i.jb, %bb.ct ], [ %i.apd, %bb.pi ], [ %i.kx, %bb.ej ], [ %i.gm, %bb.bg ], [ -902, %bb.ra ], [ %2, %session_process_origin_frame.exit.thread ], [ -903, %bb.f ], [ %2, %bb.qr ], [ %2, %bb.fd ], [ %2, %bb.fj ], [ %2, %bb.fp ], [ %2, %bb.fy ], [ %2, %bb.gg ], [ %2, %bb.gn ], [ -901, %bb.gs ], [ %2, %bb.gx ], [ %2, %bb.mf ], [ %2, %bb.mo ], [ %2, %bb.qi ], [ -902, %bb.en ], [ -905, %bb.mw ], [ %2, %bb.na ], [ %2, %bb.ng ], [ %2, %nghttp2_session_consume.exit.thread ], [ %2, %bb.ns ], [ %2, %bb.iu ], [ %2, %bb.ob ], [ %2, %bb.pn ], [ %2, %bb.ps ], [ %2, %bb.pw ], [ -902, %bb.mz ], [ %2, %.critedge ], [ -902, %session_call_on_extension_chunk_recv_callback.exit ], [ %2, %bb.qb ], [ -901, %bb.gj ], [ -901, %bb.bu ], [ %2, %bb.au ], [ %2, %bb.ar ], [ %2, %bb.ba ], [ %2, %bb.km ], [ %2, %bb.ah ], [ %2, %bb.y ], [ %2, %bb.dw ], [ -901, %bb.dr ], [ %2, %bb.cz ], [ %2, %bb.do ], [ %2, %bb.dh ], [ %2, %bb.cu ], [ %2, %bb.co ], [ %2, %bb.ee ], [ %2, %bb.bh ], [ %2, %bb.ek ], [ -902, %bb.aq ], [ -904, %bb.bq ], [ %2, %bb.eo ], [ %2, %session_after_header_block_received.exit.thread ], [ -902, %bb.pf ], [ %2, %bb.pd ], [ %2, %bb.oy ], [ %2, %bb.or ], [ %2, %bb.on ], [ %2, %bb.oi ], [ %2, %bb.pg ], [ -902, %bb.qh ], [ %2, %.thread1189 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i64 %.11
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @nghttp2_session_want_read(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !8
  %i.c = and i8 %i.b, 2
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @nghttp2_map_size(ptr noundef nonnull %0) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %i.f = load i64, ptr %i.e, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.h = load i64, ptr %i.g, align 8, !tbaa !119
  %i.i = add i64 %i.h, %i.f
  %.not4 = icmp eq i64 %i.d, %i.i
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.a, align 4, !tbaa !8
  %i.k = and i8 %i.j, 12
  %i.l = icmp eq i8 %i.k, 0
  %i.m = zext i1 %i.l to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.m, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -902, 1) i32 @session_call_error_callback(ptr noundef %0, i32 noundef range(i32 -536, -530) %1, ptr nofree noundef readonly captures(none) %2, ...) unnamed_addr #1 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2352 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !277
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !278
  %.not35 = icmp eq ptr %i.d, null
  br i1 %.not35, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 3 uses
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.f = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef %2, ptr noundef nonnull %3) #15 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i32 %i.f, 1
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = call ptr @nghttp2_mem_malloc(ptr noundef nonnull %i.e, i64 noundef %i.i) #15 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.l = call i32 @vsnprintf(ptr noundef nonnull %i.j, i64 noundef %i.i, ptr noundef %2, ptr noundef nonnull %3) #15 ; 3 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @nghttp2_mem_free(ptr noundef nonnull %i.e, ptr noundef nonnull %i.j) #15
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !278  ; 2 uses
  %.not36 = icmp eq ptr %i.o, null
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = zext nneg i32 %i.l to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89
  %i.s = call i32 %i.o(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.j, i64 noundef %i.p, ptr noundef %i.r) #15
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !277
  %i.u = zext nneg i32 %i.l to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !89
  %i.x = call i32 %i.t(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i64 noundef %i.u, ptr noundef %i.w) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.030.a = phi i32 [ %i.s, %bb.h ], [ %i.x, %bb.i ]
  call void @nghttp2_mem_free(ptr noundef nonnull %i.e, ptr noundef nonnull %i.j) #15
  %.not37 = icmp eq i32 %.030.a, 0
  %. = select i1 %.not37, i32 0, i32 -902
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d, %bb.c, %bb.b, %bb.f
  %.0 = phi i32 [ 0, %bb.b ], [ -901, %bb.c ], [ 0, %bb.f ], [ %., %bb.j ], [ -901, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.0
}

declare void @nghttp2_frame_unpack_frame_hd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @session_on_data_received_fail_fast(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load i32, ptr %i.a, align 8, !tbaa !106  ; 6 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %session_detect_idle_stream.exit.thread45, label %nghttp2_session_is_my_stream_id.exit.i

nghttp2_session_is_my_stream_id.exit.i:           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2739 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !39
  %i.f = trunc i32 %i.b to i1                     ; 2 uses
  %i.g = icmp eq i8 %i.e, 0
  %.not.i = xor i1 %i.g, %i.f
  br i1 %.not.i, label %session_is_new_peer_stream_id.exit.i, label %session_detect_idle_stream.exit

session_is_new_peer_stream_id.exit.i:             ; preds = %nghttp2_session_is_my_stream_id.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %i.i = load i32, ptr %i.h, align 8, !tbaa !124
  %.fr.i = freeze i32 %i.i
  %.not13.i = icmp slt i32 %.fr.i, %i.b
  br i1 %.not13.i, label %session_detect_idle_stream.exit.thread45, label %session_detect_idle_stream.exit.thread

session_detect_idle_stream.exit:                  ; preds = %nghttp2_session_is_my_stream_id.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !141
  %.not = icmp slt i32 %i.k, %i.b
  br i1 %.not, label %session_detect_idle_stream.exit.thread45, label %session_detect_idle_stream.exit.thread

session_detect_idle_stream.exit.thread:           ; preds = %session_is_new_peer_stream_id.exit.i, %session_detect_idle_stream.exit
  %i.l = tail call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %i.b) #15 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %session_detect_idle_stream.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 116
  %i.o = load i8, ptr %i.n, align 4, !tbaa !40
  %i.p = and i8 %i.o, 2
  %.not.i38 = icmp eq i8 %i.p, 0
  br i1 %.not.i38, label %bb.c, label %select.unfold

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.l, align 8, !tbaa !44   ; 3 uses
  %i.r = icmp eq i32 %i.q, 5
  br i1 %i.r, label %select.unfold, label %nghttp2_session_get_stream.exit

select.unfold:                                    ; preds = %bb.c, %session_detect_idle_stream.exit.thread, %bb.b
  %i.s = tail call ptr @nghttp2_map_find(ptr noundef nonnull %0, i32 noundef %i.b) #15 ; 2 uses
  %.not32 = icmp eq ptr %i.s, null
  br i1 %.not32, label %bb.j, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 117
  %i.u = load i8, ptr %i.t, align 1, !tbaa !133
  %i.v = and i8 %i.u, 1
  %.not33 = icmp eq i8 %i.v, 0
  br i1 %.not33, label %bb.j, label %session_detect_idle_stream.exit.thread45

nghttp2_session_get_stream.exit:                  ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 117
  %i.x = load i8, ptr %i.w, align 1, !tbaa !133
  %i.y = and i8 %i.x, 1
  %.not34 = icmp eq i8 %i.y, 0
  br i1 %.not34, label %nghttp2_session_is_my_stream_id.exit, label %session_detect_idle_stream.exit.thread45

nghttp2_session_is_my_stream_id.exit:             ; preds = %nghttp2_session_get_stream.exit
  %i.z = load i8, ptr %i.d, align 1, !tbaa !39
  %i.aa = icmp eq i8 %i.z, 0
  %.not35 = xor i1 %i.aa, %i.f
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nghttp2_session_is_my_stream_id.exit
  switch i32 %i.q, label %session_detect_idle_stream.exit.thread45 [
    i32 3, label %bb.j
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %nghttp2_session_is_my_stream_id.exit
  switch i32 %i.q, label %bb.g [
    i32 4, label %session_detect_idle_stream.exit.thread45
    i32 3, label %bb.j
  ]
end_hunk_4
