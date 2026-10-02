Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vnc?download=true
inline.NumInlined: 533
inline.NumDeleted: 123
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@protocol_client_msg:bb.a
  br i1 %.not11.i, label %set_pixel_format.exit, label %bb.cq

bb.cq:                                            ; preds = %vnc_set_area_dirty.exit.i
  tail call fastcc void @vnc_desktop_resize_ext(ptr noundef nonnull %0, i32 noundef 0)
  br label %set_pixel_format.exit

bb.cr:                                            ; preds = %bb.c
  %i.rp = icmp eq i64 %2, 1
  br i1 %i.rp, label %bb.gh, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.rt = load i8, ptr %i.rs, align 1             ; 4 uses
  %i.ru = zext i8 %i.rt to i32
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 1
  %i.rx = tail call i32 @llvm.bswap.i32(i32 %i.rw) ; 4 uses
  %i.ry = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i241 = icmp eq i32 %i.ry, 0
  br i1 %.not.i241, label %trace_vnc_msg_client_key_event.exit, label %bb.ct, !prof !16

bb.ct:                                            ; preds = %bb.cs
  %i.rz = load i16, ptr @_TRACE_VNC_MSG_CLIENT_KEY_EVENT_DSTATE, align 2
  %.not3.i242 = icmp eq i16 %i.rz, 0
  br i1 %.not3.i242, label %trace_vnc_msg_client_key_event.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sa = load i32, ptr @qemu_loglevel, align 4
  %i.sb = and i32 %i.sa, 32768
  %.not4.i243 = icmp eq i32 %i.sb, 0
  br i1 %.not4.i243, label %trace_vnc_msg_client_key_event.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.75, ptr noundef nonnull %0, ptr noundef %i.rr, i32 noundef range(i32 0, 256) %i.ru, i32 noundef %i.rx) #25
  %.pre282 = load i8, ptr %i.rs, align 1
  %i.sc = load i32, ptr %i.rv, align 1
  %i.sd = tail call i32 @llvm.bswap.i32(i32 %i.sc)
  br label %trace_vnc_msg_client_key_event.exit

trace_vnc_msg_client_key_event.exit:              ; preds = %bb.cs, %bb.ct, %bb.cu, %bb.cv
  %.pre-phi323 = phi i32 [ %i.rx, %bb.cs ], [ %i.rx, %bb.ct ], [ %i.rx, %bb.cu ], [ %i.sd, %bb.cv ]
  %i.se = phi i8 [ %i.rt, %bb.cs ], [ %i.rt, %bb.ct ], [ %i.rt, %bb.cu ], [ %.pre282, %bb.cv ]
  %i.sf = icmp ne i8 %i.se, 0
  tail call fastcc void @key_event(ptr noundef nonnull %0, i1 noundef zeroext %i.sf, i32 noundef %.pre-phi323)
  br label %set_pixel_format.exit

bb.cw:                                            ; preds = %bb.c
  %i.sg = icmp eq i64 %2, 1
  br i1 %i.sg, label %bb.gh, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.si = load ptr, ptr %i.sh, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.sk = load i8, ptr %i.sj, align 1
  %i.sl = zext i8 %i.sk to i32                    ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.sn = load i8, ptr %i.sm, align 1             ; 4 uses
  %i.so = zext i8 %i.sn to i32
  %i.sp = shl nuw nsw i32 %i.so, 8
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.sr = load i8, ptr %i.sq, align 1             ; 4 uses
  %i.ss = zext i8 %i.sr to i32
  %i.st = or disjoint i32 %i.sp, %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.sv = load i8, ptr %i.su, align 1             ; 4 uses
  %i.sw = zext i8 %i.sv to i32
  %i.sx = shl nuw nsw i32 %i.sw, 8
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.sz = load i8, ptr %i.sy, align 1             ; 4 uses
  %i.ta = zext i8 %i.sz to i32
  %i.tb = or disjoint i32 %i.sx, %i.ta
  %i.tc = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i244 = icmp eq i32 %i.tc, 0
  br i1 %.not.i244, label %trace_vnc_msg_client_pointer_event.exit, label %bb.cy, !prof !16

bb.cy:                                            ; preds = %bb.cx
  %i.td = load i16, ptr @_TRACE_VNC_MSG_CLIENT_POINTER_EVENT_DSTATE, align 2
  %.not4.i245 = icmp eq i16 %i.td, 0
  br i1 %.not4.i245, label %trace_vnc_msg_client_pointer_event.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.te = load i32, ptr @qemu_loglevel, align 4
  %i.tf = and i32 %i.te, 32768
  %.not5.i246 = icmp eq i32 %i.tf, 0
  br i1 %.not5.i246, label %trace_vnc_msg_client_pointer_event.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.81, ptr noundef nonnull %0, ptr noundef %i.si, i32 noundef range(i32 0, 256) %i.sl, i32 noundef range(i32 0, 65536) %i.st, i32 noundef range(i32 0, 65536) %i.tb) #25
  %.pre = load i8, ptr %i.sj, align 1
  %.pre278 = load i8, ptr %i.sm, align 1
  %.pre279 = load i8, ptr %i.sq, align 1
  %.pre280 = load i8, ptr %i.su, align 1
  %.pre281 = load i8, ptr %i.sy, align 1
  %.pre324 = zext i8 %.pre to i32
  br label %trace_vnc_msg_client_pointer_event.exit

trace_vnc_msg_client_pointer_event.exit:          ; preds = %bb.cx, %bb.cy, %bb.cz, %bb.da
  %.pre-phi325 = phi i32 [ %i.sl, %bb.cx ], [ %i.sl, %bb.cy ], [ %i.sl, %bb.cz ], [ %.pre324, %bb.da ] ; 3 uses
  %i.tg = phi i8 [ %i.sz, %bb.cx ], [ %i.sz, %bb.cy ], [ %i.sz, %bb.cz ], [ %.pre281, %bb.da ]
  %i.th = phi i8 [ %i.sv, %bb.cx ], [ %i.sv, %bb.cy ], [ %i.sv, %bb.cz ], [ %.pre280, %bb.da ]
  %i.ti = phi i8 [ %i.sr, %bb.cx ], [ %i.sr, %bb.cy ], [ %i.sr, %bb.cz ], [ %.pre279, %bb.da ]
  %i.tj = phi i8 [ %i.sn, %bb.cx ], [ %i.sn, %bb.cy ], [ %i.sn, %bb.cz ], [ %.pre278, %bb.da ]
  %i.tk = zext i8 %i.tj to i16
  %i.tl = shl nuw i16 %i.tk, 8
  %i.tm = zext i8 %i.ti to i16
  %i.tn = or disjoint i16 %i.tl, %i.tm            ; 3 uses
  %i.to = zext i8 %i.th to i16
  %i.tp = shl nuw i16 %i.to, 8
  %i.tq = zext i8 %i.tg to i16
  %i.tr = or disjoint i16 %i.tp, %i.tq            ; 4 uses
  %i.ts = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 88
  %i.tu = load ptr, ptr %i.tt, align 8            ; 7 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 587152
  %i.tw = load ptr, ptr %i.tv, align 8
  %i.tx = tail call i32 @pixman_image_get_width(ptr noundef %i.tw) #25
  %i.ty = load ptr, ptr %i.q, align 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 587152
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = tail call i32 @pixman_image_get_height(ptr noundef %i.ua) #25
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 86468 ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 4            ; 2 uses
  %.not.i247 = icmp eq i32 %i.ud, %.pre-phi325
  br i1 %.not.i247, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %trace_vnc_msg_client_pointer_event.exit
  tail call void @qemu_input_update_buttons(ptr noundef %i.tu, ptr noundef nonnull @pointer_event.bmap, i32 noundef %i.ud, i32 noundef %.pre-phi325) #25
  store i32 %.pre-phi325, ptr %i.uc, align 4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %trace_vnc_msg_client_pointer_event.exit
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 86456
  %i.uf = load i32, ptr %i.ue, align 8
  %.not34.i = icmp eq i32 %i.uf, 0
  br i1 %.not34.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ug = zext i16 %i.tn to i32
  tail call void @qemu_input_queue_abs(ptr noundef %i.tu, i32 noundef 0, i32 noundef %i.ug, i32 noundef 0, i32 noundef %i.tx) #25
  %i.uh = zext i16 %i.tr to i32
  tail call void @qemu_input_queue_abs(ptr noundef %i.tu, i32 noundef 1, i32 noundef %i.uh, i32 noundef 0, i32 noundef %i.ub) #25
  br label %pointer_event.exit

bb.de:                                            ; preds = %bb.dc
  %i.ui = getelementptr i8, ptr %0, i64 86452
  %.val.i248 = load i32, ptr %i.ui, align 4
  %i.uj = and i32 %.val.i248, 8
  %.not35.i = icmp eq i32 %i.uj, 0
  br i1 %.not35.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.uk = zext i16 %i.tn to i32
  %i.ul = add nsw i32 %i.uk, -32767
  tail call void @qemu_input_queue_rel(ptr noundef %i.tu, i32 noundef 0, i32 noundef %i.ul) #25
  %i.um = zext i16 %i.tr to i32
  %i.un = add nsw i32 %i.um, -32767
  tail call void @qemu_input_queue_rel(ptr noundef %i.tu, i32 noundef 1, i32 noundef %i.un) #25
  br label %pointer_event.exit

bb.dg:                                            ; preds = %bb.de
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 86460 ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4            ; 2 uses
  %.not36.i = icmp eq i32 %i.up, -1
  %.pre.i249 = zext i16 %i.tn to i32              ; 2 uses
  br i1 %.not36.i, label %._crit_edge.i, label %bb.dh

._crit_edge.i:                                    ; preds = %bb.dg
  %.pre37.i = zext i16 %i.tr to i32
  br label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.uq = sub i32 %.pre.i249, %i.up
  tail call void @qemu_input_queue_rel(ptr noundef %i.tu, i32 noundef 0, i32 noundef %i.uq) #25
  %i.ur = zext i16 %i.tr to i32                   ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 86464
  %i.ut = load i32, ptr %i.us, align 8
  %i.uu = sub i32 %i.ur, %i.ut
  tail call void @qemu_input_queue_rel(ptr noundef %i.tu, i32 noundef 1, i32 noundef %i.uu) #25
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %._crit_edge.i
  %.pre-phi38.i = phi i32 [ %.pre37.i, %._crit_edge.i ], [ %i.ur, %bb.dh ]
  store i32 %.pre.i249, ptr %i.uo, align 4
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 86464
  store i32 %.pre-phi38.i, ptr %i.uv, align 8
  br label %pointer_event.exit

pointer_event.exit:                               ; preds = %bb.dd, %bb.df, %bb.di
  tail call void @qemu_input_event_sync() #25
  br label %set_pixel_format.exit

bb.dj:                                            ; preds = %bb.c
  %i.uw = icmp eq i64 %2, 1
  br i1 %i.uw, label %bb.gh, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %4 = load i32, ptr %i.ux, align 1               ; 2 uses
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)      ; 3 uses
  %i.uy = tail call i32 @llvm.abs.i32(i32 %5, i1 false) ; 6 uses
  %i.uz = icmp eq i64 %2, 8
  br i1 %i.uz, label %bb.dl, label %bb.dp

bb.dl:                                            ; preds = %bb.dk
  %i.va = icmp ugt i32 %i.uy, 1048576
  br i1 %i.va, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.58, i32 noundef %i.uy) #25
  tail call void @vnc_client_error(ptr noundef %0)
  br label %set_pixel_format.exit

bb.dn:                                            ; preds = %bb.dl
  %.not226 = icmp eq i32 %4, 0
  br i1 %.not226, label %.thread, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.vb = add nuw nsw i32 %i.uy, 8
  br label %bb.gh

bb.dp:                                            ; preds = %bb.dk
  %i.vc = icmp slt i32 %5, 0
  br i1 %i.vc, label %bb.dq, label %.thread

bb.dq:                                            ; preds = %bb.dp
  %i.vd = getelementptr i8, ptr %0, i64 86452
  %.val230 = load i32, ptr %i.vd, align 4
  %i.ve = and i32 %.val230, 16384
  %.not227 = icmp eq i32 %i.ve, 0
  br i1 %.not227, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.59) #25
  tail call void @vnc_client_error(ptr noundef nonnull %0)
  br label %set_pixel_format.exit

bb.ds:                                            ; preds = %bb.dq
  %i.vf = icmp ult i32 %i.uy, 4
  br i1 %i.vf, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.60) #25
  tail call void @vnc_client_error(ptr noundef nonnull %0)
  br label %set_pixel_format.exit

bb.du:                                            ; preds = %bb.ds
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vh = load ptr, ptr %i.vg, align 8
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.vj = load i32, ptr %i.vi, align 1
  %i.vk = tail call i32 @llvm.bswap.i32(i32 %i.vj)
  tail call fastcc void @trace_vnc_msg_client_cut_text_ext(ptr noundef nonnull %0, ptr noundef %i.vh, i32 noundef %i.uy, i32 noundef %i.vk)
  %i.vl = load i32, ptr %i.vi, align 1
  %i.vm = tail call i32 @llvm.bswap.i32(i32 %i.vl)
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 12
  tail call void @vnc_client_cut_text_ext(ptr noundef nonnull %0, i32 noundef %i.uy, i32 noundef %i.vm, ptr noundef nonnull %i.vn) #25
  br label %set_pixel_format.exit

.thread:                                          ; preds = %bb.dn, %bb.dp
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vp = load ptr, ptr %i.vo, align 8
  tail call fastcc void @trace_vnc_msg_client_cut_text(ptr noundef %0, ptr noundef %i.vp, i32 noundef %5)
  %i.vq = load i32, ptr %i.ux, align 1
  %i.vr = tail call i32 @llvm.bswap.i32(i32 %i.vq)
  %i.vs = zext i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @vnc_client_cut_text(ptr noundef %0, i64 noundef %i.vs, ptr noundef nonnull %i.vt) #25
  br label %set_pixel_format.exit

bb.dv:                                            ; preds = %bb.c
  %i.vu = getelementptr i8, ptr %0, i64 86452
  %.val229 = load i32, ptr %i.vu, align 4
  %i.vv = and i32 %.val229, 8192
  %.not224 = icmp eq i32 %i.vv, 0
  br i1 %.not224, label %bb.dw, label %bb.ea

bb.dw:                                            ; preds = %bb.dv
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.61) #25
  %i.vw = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i250 = icmp eq i32 %i.vw, 0
  br i1 %.not.i.i250, label %vnc_client_error.exit, label %bb.dx, !prof !16

bb.dx:                                            ; preds = %bb.dw
  %i.vx = load i16, ptr @_TRACE_VNC_CLIENT_PROTOCOL_ERROR_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.vx, 0
  br i1 %.not1.i.i, label %vnc_client_error.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.vy = load i32, ptr @qemu_loglevel, align 4
  %i.vz = and i32 %i.vy, 32768
  %.not2.i.i251 = icmp eq i32 %i.vz, 0
  br i1 %.not2.i.i251, label %vnc_client_error.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, ptr noundef nonnull %0) #25
  br label %vnc_client_error.exit

vnc_client_error.exit:                            ; preds = %bb.dw, %bb.dx, %bb.dy, %bb.dz
  tail call fastcc void @vnc_disconnect_start(ptr noundef nonnull %0)
  br label %set_pixel_format.exit

bb.ea:                                            ; preds = %bb.dv
  switch i64 %2, label %set_pixel_format.exit [
    i64 1, label %bb.gh
    i64 4, label %bb.eb
  ]

bb.eb:                                            ; preds = %bb.ea
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.wb = load i8, ptr %i.wa, align 1             ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.wd = load i8, ptr %i.wc, align 1             ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wf = load ptr, ptr %i.we, align 8
  %i.wg = zext i8 %i.wb to i32                    ; 2 uses
  %i.wh = zext i8 %i.wd to i32
  %i.wi = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i252 = icmp eq i32 %i.wi, 0
  br i1 %.not.i252, label %trace_vnc_msg_client_xvp.exit, label %bb.ec, !prof !16

bb.ec:                                            ; preds = %bb.eb
  %i.wj = load i16, ptr @_TRACE_VNC_MSG_CLIENT_XVP_DSTATE, align 2
  %.not3.i253 = icmp eq i16 %i.wj, 0
  br i1 %.not3.i253, label %trace_vnc_msg_client_xvp.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.wk = load i32, ptr @qemu_loglevel, align 4
  %i.wl = and i32 %i.wk, 32768
  %.not4.i254 = icmp eq i32 %i.wl, 0
  br i1 %.not4.i254, label %trace_vnc_msg_client_xvp.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.84, ptr noundef nonnull %0, ptr noundef %i.wf, i32 noundef range(i32 0, 256) %i.wg, i32 noundef range(i32 0, 256) %i.wh) #25
  br label %trace_vnc_msg_client_xvp.exit

trace_vnc_msg_client_xvp.exit:                    ; preds = %bb.eb, %bb.ec, %bb.ed, %bb.ee
  %.not225 = icmp eq i8 %i.wb, 1
  br i1 %.not225, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %trace_vnc_msg_client_xvp.exit
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.62, i32 noundef %i.wg) #25
  tail call void @vnc_client_error(ptr noundef nonnull %0)
  br label %set_pixel_format.exit

bb.eg:                                            ; preds = %trace_vnc_msg_client_xvp.exit
  switch i8 %i.wd, label %bb.ek [
    i8 2, label %bb.eh
    i8 3, label %bb.ei
    i8 4, label %bb.ej
  ]

bb.eh:                                            ; preds = %bb.eg
  tail call void @vnc_action_shutdown(ptr noundef nonnull %0) #25
  br label %set_pixel_format.exit

bb.ei:                                            ; preds = %bb.eg
  tail call fastcc void @send_xvp_message(ptr noundef nonnull %0, i32 noundef 0)
  br label %set_pixel_format.exit

bb.ej:                                            ; preds = %bb.eg
  tail call void @vnc_action_reset(ptr noundef nonnull %0) #25
  br label %set_pixel_format.exit

bb.ek:                                            ; preds = %bb.eg
  tail call fastcc void @send_xvp_message(ptr noundef nonnull %0, i32 noundef 0)
  br label %set_pixel_format.exit

bb.el:                                            ; preds = %bb.c
  %i.wm = icmp eq i64 %2, 1
  br i1 %i.wm, label %bb.gh, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.wo = load i8, ptr %i.wn, align 1             ; 2 uses
  switch i8 %i.wo, label %bb.fl [
    i8 0, label %bb.en
    i8 1, label %bb.ep
  ]

bb.en:                                            ; preds = %bb.em
  %i.wp = icmp eq i64 %2, 2
  br i1 %i.wp, label %bb.gh, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wr = load ptr, ptr %i.wq, align 8
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.wt = load i8, ptr %i.ws, align 1
  %i.wu = zext i8 %i.wt to i32
  %i.wv = shl nuw nsw i32 %i.wu, 8
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.wx = load i8, ptr %i.ww, align 1
  %i.wy = zext i8 %i.wx to i32
  %i.wz = or disjoint i32 %i.wv, %i.wy
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.xb = load i32, ptr %i.xa, align 1
  %i.xc = tail call i32 @llvm.bswap.i32(i32 %i.xb)
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.xe = load i32, ptr %i.xd, align 1
  %i.xf = tail call i32 @llvm.bswap.i32(i32 %i.xe)
  tail call fastcc void @trace_vnc_msg_client_ext_key_event(ptr noundef %0, ptr noundef %i.wr, i32 noundef %i.wz, i32 noundef %i.xc, i32 noundef %i.xf)
  %i.xg = load i8, ptr %i.ws, align 1
  %i.xh = load i8, ptr %i.ww, align 1
  %i.xi = or i8 %i.xh, %i.xg
  %i.xj = icmp ne i8 %i.xi, 0
  %i.xk = load i32, ptr %i.xa, align 1
  %i.xl = tail call i32 @llvm.bswap.i32(i32 %i.xk)
  %i.xm = load i32, ptr %i.xd, align 1
  %i.xn = tail call i32 @llvm.bswap.i32(i32 %i.xm)
  tail call fastcc void @ext_key_event(ptr noundef %0, i1 noundef zeroext %i.xj, i32 noundef %i.xl, i32 noundef %i.xn)
  br label %set_pixel_format.exit

bb.ep:                                            ; preds = %bb.em
  %i.xo = getelementptr i8, ptr %0, i64 86452
  %.val = load i32, ptr %i.xo, align 4
  %i.xp = and i32 %.val, 32768
  %.not = icmp eq i32 %i.xp, 0
  br i1 %.not, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.xr = load i8, ptr %i.xq, align 1
  %i.xs = zext i8 %i.xr to i32
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.63, i32 noundef %i.xs) #25
  tail call void @vnc_client_error(ptr noundef nonnull %0)
  br label %set_pixel_format.exit

bb.er:                                            ; preds = %bb.ep
  %i.xt = icmp eq i64 %2, 2
  br i1 %i.xt, label %bb.gh, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.xv = load i8, ptr %i.xu, align 1             ; 2 uses
  %i.xw = zext i8 %i.xv to i16
  %i.xx = shl nuw i16 %i.xw, 8
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.xz = load i8, ptr %i.xy, align 1
  %i.ya = zext i8 %i.xz to i16
  %i.yb = or disjoint i16 %i.xx, %i.ya
  switch i16 %i.yb, label %bb.fk [
    i16 0, label %bb.et
    i16 1, label %bb.eu
    i16 2, label %bb.ew
  ]

bb.et:                                            ; preds = %bb.es
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.yd = load ptr, ptr %i.yc, align 8
  tail call fastcc void @trace_vnc_msg_client_audio_enable(ptr noundef nonnull %0, ptr noundef %i.yd)
  tail call fastcc void @audio_add(ptr noundef nonnull %0)
  br label %set_pixel_format.exit

bb.eu:                                            ; preds = %bb.es
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.yf = load ptr, ptr %i.ye, align 8
  tail call fastcc void @trace_vnc_msg_client_audio_disable(ptr noundef nonnull %0, ptr noundef %i.yf)
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 86696 ; 2 uses
  %i.yh = load ptr, ptr %i.yg, align 8            ; 2 uses
  %.not.i255 = icmp eq ptr %i.yh, null
  br i1 %.not.i255, label %set_pixel_format.exit, label %bb.ev

end_hunk_0
begin_hunk_1_@vnc_dpy_switch:bb.a

bb.z:                                             ; preds = %vnc_set_area_dirty.exit67
  %i.et = getelementptr inbounds nuw i8, ptr %.079, i64 86704
  %i.eu = getelementptr inbounds nuw i8, ptr %.079, i64 86712
  %i.ev = load i32, ptr %i.eu, align 8
  %switch.tableidx = add i32 %i.ev, -2            ; 2 uses
  %i.ew = icmp ult i32 %switch.tableidx, 4
  br i1 %i.ew, label %switch.lookup, label %bb.aa

switch.lookup:                                    ; preds = %bb.z
  %i.ex = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.vnc_dpy_switch, i64 %i.ex
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.aa

bb.aa:                                            ; preds = %switch.lookup, %bb.z
  %.026.i69 = phi i32 [ %switch.ext, %switch.lookup ], [ 1, %bb.z ]
  %i.ey = load i32, ptr %i.et, align 8
  %i.ez = mul i32 %i.ey, %.026.i69
  %i.fa = getelementptr inbounds nuw i8, ptr %.079, i64 86708
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = mul i32 %i.ez, %i.fb
  %i.fd = sext i32 %i.fc to i64
  %i.fe = add i64 %i.eq, %i.fd
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %vnc_set_area_dirty.exit67
  %.0.i70 = phi i64 [ %i.fe, %bb.aa ], [ %i.eq, %vnc_set_area_dirty.exit67 ]
  %i.ff = call i64 @llvm.umax.i64(i64 %.0.i70, i64 1048576) ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.079, i64 86560 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8            ; 2 uses
  %.not29.i = icmp eq i64 %i.fh, %i.ff
  br i1 %.not29.i, label %vnc_update_throttle_offset.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fi = getelementptr inbounds nuw i8, ptr %.079, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = trunc i64 %i.ej to i32
  %i.fl = trunc i64 %i.el to i32
  %i.fm = zext i8 %i.eo to i32
  %i.fn = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i71 = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i71, label %vnc_update_throttle_offset.exit, label %bb.ad, !prof !16

bb.ad:                                            ; preds = %bb.ac
  %i.fo = load i16, ptr @_TRACE_VNC_CLIENT_THROTTLE_THRESHOLD_DSTATE, align 2
  %.not7.i.i = icmp eq i16 %i.fo, 0
  br i1 %.not7.i.i, label %vnc_update_throttle_offset.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fp = load i32, ptr @qemu_loglevel, align 4
  %i.fq = and i32 %i.fp, 32768
  %.not8.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not8.i.i, label %vnc_update_throttle_offset.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.104, ptr noundef nonnull %.079, ptr noundef %i.fj, i64 noundef %i.fh, i64 noundef %i.ff, i32 noundef %i.fk, i32 noundef %i.fl, i32 noundef range(i32 0, 256) %i.fm, ptr noundef %i.es) #25
  br label %vnc_update_throttle_offset.exit

vnc_update_throttle_offset.exit:                  ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af
  store i64 %i.ff, ptr %i.fg, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %.079, i64 103312
  %.0 = load ptr, ptr %i.fr, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %vnc_set_area_dirty.exit, label %bb.q, !llvm.loop !76

vnc_set_area_dirty.exit:                          ; preds = %vnc_update_throttle_offset.exit, %bb.l, %trace_vnc_server_dpy_recreate.exit, %trace_vnc_server_dpy_pageflip.exit
  ret void
}

declare zeroext i1 @qemu_pixman_check_format(ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal void @vnc_mouse_set(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, i1 zeroext %3) #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vnc_dpy_cursor_define(ptr nofree noundef captures(none) initializes((160, 164)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c) #25
  %i.d = tail call i32 @cursor_get_mono_bpl(ptr noundef %1) #25
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = zext i16 %i.f to i32
  %i.h = mul i32 %i.d, %i.g                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.h, ptr %i.i, align 8
  %i.j = sext i32 %i.h to i64
  %i.k = tail call noalias ptr @g_malloc0(i64 noundef %i.j) #24 ; 2 uses
  store ptr %i.k, ptr %i.b, align 8
  tail call void @cursor_get_mono_mask(ptr noundef %1, i32 noundef 0, ptr noundef %i.k) #25
  %.015 = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not16 = icmp eq ptr %.015, null
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.017 = phi ptr [ %.0, %.lr.ph ], [ %.015, %bb.a ] ; 2 uses
  tail call fastcc void @vnc_cursor_define(ptr noundef nonnull %.017)
  %i.l = getelementptr inbounds nuw i8, ptr %.017, i64 103312
  %.0 = load ptr, ptr %i.l, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #19

declare i64 @find_next_bit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @qemu_pixman_linebuf_create(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @pixman_image_get_format(ptr noundef) local_unnamed_addr #3

declare void @qemu_pixman_linebuf_fill(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vnc_job_new(ptr noundef) local_unnamed_addr #3

declare i64 @find_next_zero_bit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @vnc_job_add_rect(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @vnc_job_push(ptr noundef) local_unnamed_addr #3

declare ptr @pixman_image_ref(ptr noundef) local_unnamed_addr #3

declare i32 @cursor_get_mono_bpl(ptr noundef) local_unnamed_addr #3

declare void @cursor_get_mono_mask(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @qio_channel_socket_new() local_unnamed_addr #3

declare i32 @qio_channel_socket_connect_sync(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @error_printf(ptr noundef, ...) local_unnamed_addr #3

declare void @buffer_init(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare zeroext i1 @qio_channel_set_blocking(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare i32 @vncws_tls_handshake_io(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @vncws_handshake_io(ptr noundef, i32 noundef, ptr noundef) #3

declare ptr @qemu_bh_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @vnc_jobs_bh(ptr noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, 410936327799964859
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1550, ptr noundef nonnull @__PRETTY_FUNCTION__.vnc_jobs_bh) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @vnc_jobs_consume_buffer(ptr noundef nonnull %0) #25
  ret void
}

declare void @vnc_jobs_consume_buffer(ptr noundef) local_unnamed_addr #3

declare void @qemu_opts_set_id(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @qemu_add_opts(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.bitreverse.i8(i8) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.bitreverse.v4i8(<4 x i8>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.ctpop.v2i16(<2 x i16>) #20

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { cold noreturn nounwind }

!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{null}
!3 = distinct !{ptr @vnc_flush, null}
!4 = distinct !{!4, !15}
!5 = distinct !{!5, !15}
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!18 = !{!"auto-init"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = !{ptr @vnc_raw_send_framebuffer_update}
!26 = distinct !{null}
!27 = distinct !{!27, !15}
!28 = distinct !{null}
!29 = distinct !{null, null}
!30 = distinct !{null}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, i1 false, !"qemu_default_pixelformat"}
!45 = distinct !{!45, !44, !"qemu_default_pixelformat: argument 0"}
!46 = !{!45}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !19}
!49 = distinct !{null, null, null}
!50 = distinct !{null, null, ptr @vnc_flush, null}
!51 = distinct !{null, null, null}
!52 = distinct !{null, null, ptr @vnc_flush, null}
!53 = distinct !{!53, !15}
!54 = !{!"branch_weights", i32 1073205, i32 2146410443}
!55 = !{!"branch_weights", !"expected", i32 2273, i32 2147481375}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{null}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{null, null}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15}
!74 = distinct !{null, null}
!75 = distinct !{null, ptr @vnc_flush, null}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
end_hunk_1
