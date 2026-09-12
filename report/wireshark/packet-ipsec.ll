Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ipsec?download=true
inline.NumInlined: 24
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@dissect_esp:bb.a
  %i.sv = icmp eq i32 %i.sr, 1
  %i.sw = select i1 %i.sv, ptr @.str.138, ptr @.str.212
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.su, ptr noundef nonnull @.str.211, i32 noundef %i.sr, ptr noundef nonnull %i.sw)
  %i.sx = add nsw i32 %.1421643, -1               ; 2 uses
  %i.sy = call zeroext i8 @tvb_get_uint8(ptr noundef %i.se, i32 noundef %i.sx)
  %i.sz = zext i8 %i.sy to i32                    ; 5 uses
  %i.ta = load ptr, ptr @ip_dissector_table, align 8
  %i.tb = call ptr @dissector_get_uint_handle(ptr noundef %i.ta, i32 noundef %i.sz) ; 3 uses
  %.not491 = icmp eq ptr %i.tb, null
  br i1 %.not491, label %.critedge501, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.tc = getelementptr i8, ptr %1, i64 296       ; 3 uses
  %i.td = load i32, ptr %i.tc, align 8
  store i32 %i.sz, ptr %i.tc, align 8
  %i.te = call ptr @tvb_new_subset_length(ptr noundef %i.se, i32 noundef 0, i32 noundef %i.sr) ; 4 uses
  %i.tf = load i32, ptr @exported_pdu_tap, align 4
  %i.tg = call zeroext i1 @have_tap_listener(i32 noundef %i.tf)
  br i1 %i.tg, label %bb.ew, label %export_ipsec_pdu.exit

bb.ew:                                            ; preds = %bb.ev
  %i.th = call ptr @dissector_handle_get_dissector_name(ptr noundef nonnull %i.tb)
  %i.ti = call ptr @export_pdu_create_common_tags(ptr noundef %1, ptr noundef %i.th, i16 noundef zeroext 12) ; 4 uses
  %i.tj = call i32 @tvb_captured_length(ptr noundef %i.te)
  %i.tk = getelementptr i8, ptr %i.ti, i64 16
  store i32 %i.tj, ptr %i.tk, align 8
  %i.tl = call i32 @tvb_reported_length(ptr noundef %i.te)
  %i.tm = getelementptr i8, ptr %i.ti, i64 20
  store i32 %i.tl, ptr %i.tm, align 4
  %i.tn = getelementptr i8, ptr %i.ti, i64 24
  store ptr %i.te, ptr %i.tn, align 8
  %i.to = load i32, ptr @exported_pdu_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.to, ptr noundef %1, ptr noundef %i.ti)
  br label %export_ipsec_pdu.exit

export_ipsec_pdu.exit:                            ; preds = %bb.ev, %bb.ew
  %i.tp = call i32 @call_dissector(ptr noundef nonnull %i.tb, ptr noundef %i.te, ptr noundef %1, ptr noundef %2) ; 0 uses
  store i32 %i.td, ptr %i.tc, align 8
  %.not492 = icmp eq ptr %i.sl, null
  br i1 %.not492, label %.thread652, label %bb.ex

bb.ex:                                            ; preds = %export_ipsec_pdu.exit
  %.not493 = icmp eq i8 %i.so, 0
  br i1 %.not493, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.tq = load i32, ptr @hf_esp_pad, align 4
  %i.tr = call ptr @proto_tree_add_item(ptr noundef nonnull %i.sl, i32 noundef %i.tq, ptr noundef %i.se, i32 noundef %i.sr, i32 noundef %i.sp, i32 noundef 0) ; 0 uses
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.ts = load i32, ptr @hf_esp_pad_len, align 4
  %i.tt = call ptr @proto_tree_add_uint(ptr noundef nonnull %i.sl, i32 noundef %i.ts, ptr noundef %i.se, i32 noundef %i.sm, i32 noundef 1, i32 noundef %i.sp) ; 0 uses
  %i.tu = load i32, ptr @hf_esp_protocol, align 4
  %i.tv = call ptr @ipprotostr(i32 noundef %i.sz)
  %i.tw = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %i.sl, i32 noundef %i.tu, ptr noundef %i.se, i32 noundef %i.sx, i32 noundef 1, i32 noundef %i.sz, ptr noundef nonnull @.str.213, ptr noundef %i.tv, i32 noundef %i.sz) ; 0 uses
  br label %.thread652

.critedge501:                                     ; preds = %.thread, %bb.eu, %bb.et
  %i.tx = call ptr @tvb_new_subset_length(ptr noundef %i.se, i32 noundef 0, i32 noundef %.1421643) ; 4 uses
  %i.ty = load ptr, ptr @data_handle, align 8
  %i.tz = load i32, ptr @exported_pdu_tap, align 4
  %i.ua = call zeroext i1 @have_tap_listener(i32 noundef %i.tz)
  br i1 %i.ua, label %bb.fa, label %export_ipsec_pdu.exit507

bb.fa:                                            ; preds = %.critedge501
  %i.ub = call ptr @dissector_handle_get_dissector_name(ptr noundef %i.ty)
  %i.uc = call ptr @export_pdu_create_common_tags(ptr noundef %1, ptr noundef %i.ub, i16 noundef zeroext 12) ; 4 uses
  %i.ud = call i32 @tvb_captured_length(ptr noundef %i.tx)
  %i.ue = getelementptr i8, ptr %i.uc, i64 16
  store i32 %i.ud, ptr %i.ue, align 8
  %i.uf = call i32 @tvb_reported_length(ptr noundef %i.tx)
  %i.ug = getelementptr i8, ptr %i.uc, i64 20
  store i32 %i.uf, ptr %i.ug, align 4
  %i.uh = getelementptr i8, ptr %i.uc, i64 24
  store ptr %i.tx, ptr %i.uh, align 8
  %i.ui = load i32, ptr @exported_pdu_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.ui, ptr noundef %1, ptr noundef %i.uc)
  br label %export_ipsec_pdu.exit507

export_ipsec_pdu.exit507:                         ; preds = %.critedge501, %bb.fa
  %i.uj = load ptr, ptr @data_handle, align 8
  %i.uk = call i32 @call_dissector(ptr noundef %i.uj, ptr noundef %i.tx, ptr noundef %1, ptr noundef %i.sl) ; 0 uses
  br label %.thread652

.thread652:                                       ; preds = %.critedge, %bb.es, %export_ipsec_pdu.exit, %bb.ez, %export_ipsec_pdu.exit507
  %.2448 = phi ptr [ %.0446, %bb.ez ], [ %.0446, %export_ipsec_pdu.exit ], [ %.0446, %export_ipsec_pdu.exit507 ], [ %.0446, %bb.es ], [ null, %.critedge ] ; 4 uses
  %.2441 = phi i1 [ false, %bb.ez ], [ false, %export_ipsec_pdu.exit ], [ false, %export_ipsec_pdu.exit507 ], [ false, %bb.es ], [ %.0439, %.critedge ]
  %.3427 = phi i32 [ %i.mr, %bb.ez ], [ %i.mr, %export_ipsec_pdu.exit ], [ %i.mr, %export_ipsec_pdu.exit507 ], [ %i.mr, %bb.es ], [ 8, %.critedge ] ; 4 uses
  %.4419 = phi i32 [ %.2417, %bb.ez ], [ %.2417, %export_ipsec_pdu.exit ], [ %.2417, %export_ipsec_pdu.exit507 ], [ %.2417, %bb.es ], [ %.1416, %.critedge ] ; 6 uses
  %.4408 = phi i1 [ %.3407645, %bb.ez ], [ %.3407645, %export_ipsec_pdu.exit ], [ %.3407645, %export_ipsec_pdu.exit507 ], [ %.1405, %bb.es ], [ %.1405, %.critedge ] ; 4 uses
  %.4403 = phi i1 [ %.3402646, %bb.ez ], [ %.3402646, %export_ipsec_pdu.exit ], [ %.3402646, %export_ipsec_pdu.exit507 ], [ %.1400, %bb.es ], [ %.1400, %.critedge ] ; 4 uses
  %.4 = phi ptr [ %.3647, %bb.ez ], [ %.3647, %export_ipsec_pdu.exit ], [ %.3647, %export_ipsec_pdu.exit507 ], [ %.1, %bb.es ], [ %.1, %.critedge ] ; 4 uses
  %i.ul = load i8, ptr @g_esp_enable_encryption_decode, align 1, !range !6, !noundef !7
  %i.um = trunc nuw i8 %i.ul to i1
  %.not14 = xor i1 %i.um, true
  %i.un = load i8, ptr @g_esp_enable_authentication_check, align 1, !range !6
  %i.uo = trunc nuw i8 %i.un to i1
  %or.cond16 = select i1 %.not14, i1 %i.uo, i1 false
  br i1 %or.cond16, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %.thread652
  %i.up = icmp sgt i32 %i.cs, %.4419
  br i1 %i.up, label %bb.fc, label %.thread699

bb.fc:                                            ; preds = %bb.fb
  %i.uq = sub nsw i32 %i.cs, %.4419
  %i.ur = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 8, i32 noundef %i.uq) ; 4 uses
  %i.us = load ptr, ptr @data_handle, align 8
  %i.ut = load i32, ptr @exported_pdu_tap, align 4
  %i.uu = call zeroext i1 @have_tap_listener(i32 noundef %i.ut)
  br i1 %i.uu, label %bb.fd, label %export_ipsec_pdu.exit508

bb.fd:                                            ; preds = %bb.fc
  %i.uv = call ptr @dissector_handle_get_dissector_name(ptr noundef %i.us)
  %i.uw = call ptr @export_pdu_create_common_tags(ptr noundef %1, ptr noundef %i.uv, i16 noundef zeroext 12) ; 4 uses
  %i.ux = call i32 @tvb_captured_length(ptr noundef %i.ur)
  %i.uy = getelementptr i8, ptr %i.uw, i64 16
  store i32 %i.ux, ptr %i.uy, align 8
  %i.uz = call i32 @tvb_reported_length(ptr noundef %i.ur)
  %i.va = getelementptr i8, ptr %i.uw, i64 20
  store i32 %i.uz, ptr %i.va, align 4
  %i.vb = getelementptr i8, ptr %i.uw, i64 24
  store ptr %i.ur, ptr %i.vb, align 8
  %i.vc = load i32, ptr @exported_pdu_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.vc, ptr noundef %1, ptr noundef %i.uw)
  br label %export_ipsec_pdu.exit508

export_ipsec_pdu.exit508:                         ; preds = %bb.fc, %bb.fd
  %i.vd = load ptr, ptr @data_handle, align 8
  %i.ve = call i32 @call_dissector(ptr noundef %i.vd, ptr noundef %i.ur, ptr noundef %1, ptr noundef %i.m) ; 0 uses
  br label %.thread699

bb.fe:                                            ; preds = %.thread652
  br i1 %.2441, label %._crit_edge802, label %.thread699

._crit_edge802:                                   ; preds = %bb.fe
  %.pre803 = load i8, ptr @g_esp_enable_null_encryption_decode_heuristic, align 1, !range !6
  br label %bb.ff

bb.ff:                                            ; preds = %._crit_edge802, %.thread652.thread
  %i.vf = phi i8 [ %i.rz, %.thread652.thread ], [ %.pre803, %._crit_edge802 ]
  %.0584678695 = phi i8 [ %.1585.lcssa, %.thread652.thread ], [ %i.fs, %._crit_edge802 ] ; 2 uses
  %.2448679694 = phi ptr [ null, %.thread652.thread ], [ %.2448, %._crit_edge802 ] ; 2 uses
  %.3427681693 = phi i32 [ 8, %.thread652.thread ], [ %.3427, %._crit_edge802 ]
  %.4419682692 = phi i32 [ 0, %.thread652.thread ], [ %.4419, %._crit_edge802 ]
  %.4408684691 = phi i1 [ false, %.thread652.thread ], [ %.4408, %._crit_edge802 ] ; 2 uses
  %.4403686690 = phi i1 [ false, %.thread652.thread ], [ %.4403, %._crit_edge802 ] ; 2 uses
  %.4688689 = phi ptr [ null, %.thread652.thread ], [ %.4, %._crit_edge802 ] ; 2 uses
  %i.vg = trunc nuw i8 %i.vf to i1
  br i1 %i.vg, label %.thread848, label %esp_null_heur.exit.thread868

.thread848:                                       ; preds = %.thread664, %bb.ff
  %.4688689867 = phi ptr [ %.4688689, %bb.ff ], [ null, %.thread664 ] ; 3 uses
  %.4403686690865 = phi i1 [ %.4403686690, %bb.ff ], [ false, %.thread664 ] ; 3 uses
  %.4408684691863 = phi i1 [ %.4408684691, %bb.ff ], [ false, %.thread664 ] ; 3 uses
  %.3427681693861 = phi i32 [ %.3427681693, %bb.ff ], [ 8, %.thread664 ] ; 2 uses
  %.2448679694859 = phi ptr [ %.2448679694, %bb.ff ], [ null, %.thread664 ] ; 3 uses
  %.0584678695857 = phi i8 [ %.0584678695, %bb.ff ], [ 32, %.thread664 ] ; 3 uses
  %i.vh = call i32 @tvb_reported_length(ptr noundef %0) ; 2 uses
  %i.vi = getelementptr i8, ptr %1, i64 296       ; 4 uses
  br label %bb.fg

bb.fg:                                            ; preds = %esp_padding_override.exit.thread.i, %.thread848
  %indvars.iv.i = phi i64 [ 0, %.thread848 ], [ %indvars.iv.next.i, %esp_padding_override.exit.thread.i ]
  %i.vj = phi i32 [ 12, %.thread848 ], [ %i.xh, %esp_padding_override.exit.thread.i ] ; 5 uses
  %i.vk = add i32 %i.vj, 2                        ; 2 uses
  %.not80.i = icmp slt i32 %i.vh, %i.vk
  br i1 %.not80.i, label %esp_padding_override.exit.thread.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.vl = sub i32 %i.vh, %i.vk                    ; 9 uses
  %i.vm = call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %i.vl, i32 noundef 2)
  br i1 %i.vm, label %bb.fi, label %esp_padding_override.exit.thread.i

bb.fi:                                            ; preds = %bb.fh
  %i.vn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.vl) ; 3 uses
  %i.vo = zext i8 %i.vn to i32                    ; 8 uses
  %i.vp = add i32 %i.vl, 1                        ; 2 uses
  %i.vq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.vp)
  %i.vr = zext i8 %i.vq to i32                    ; 5 uses
  %i.vs = load ptr, ptr @ip_dissector_table, align 8
  %i.vt = call ptr @dissector_get_uint_handle(ptr noundef %i.vs, i32 noundef %i.vr) ; 3 uses
  %i.vu = icmp eq ptr %i.vt, null
  %i.vv = add nuw nsw i32 %i.vo, 8
  %i.vw = icmp sgt i32 %i.vv, %i.vl
  %or.cond.i510 = select i1 %i.vu, i1 true, i1 %i.vw
  br i1 %or.cond.i510, label %esp_padding_override.exit.thread.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.fi
  %exitcond.not.i.not929 = icmp eq i8 %i.vn, 0
  br i1 %exitcond.not.i.not929, label %.critedge.i, label %.lr.ph932

.preheader.i:                                     ; preds = %.lr.ph932
  %exitcond.not.i.not = icmp eq i32 %i.vx, %i.vo
  br i1 %exitcond.not.i.not, label %.critedge.i, label %.lr.ph932, !llvm.loop !39

.lr.ph932:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.0.i930 = phi i32 [ %i.vx, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.vx = add nuw nsw i32 %.0.i930, 1             ; 3 uses
  %i.vy = sub i32 %i.vl, %i.vx
  %i.vz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.vy)
  %i.wa = zext i8 %i.vz to i32
  %i.wb = sub nuw nsw i32 %i.vo, %.0.i930
  %.not81.i = icmp eq i32 %i.wb, %i.wa
  br i1 %.not81.i, label %.preheader.i, label %bb.fj, !llvm.loop !39

bb.fj:                                            ; preds = %.lr.ph932
  %i.wc = load i32, ptr @g_esp_padding_type, align 4
  switch i32 %i.wc, label %esp_padding_override.exit.thread.i [
    i32 2, label %.critedge.i
    i32 1, label %.preheader.i.i511.preheader
  ]

.preheader.i.i511:                                ; preds = %.preheader.i.i511.preheader
  %exitcond.not.i.i = icmp eq i32 %i.wd, %i.vo
  br i1 %exitcond.not.i.i, label %.critedge.i, label %.preheader.i.i511.preheader, !llvm.loop !40

.preheader.i.i511.preheader:                      ; preds = %bb.fj, %.preheader.i.i511
  %.07.i.i933 = phi i32 [ %i.wd, %.preheader.i.i511 ], [ 0, %bb.fj ]
  %i.wd = add nuw nsw i32 %.07.i.i933, 1          ; 3 uses
  %i.we = sub nsw i32 %i.vl, %i.wd
  %i.wf = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.we)
  %.not.i.i512 = icmp eq i8 %i.wf, 0
  br i1 %.not.i.i512, label %.preheader.i.i511, label %esp_padding_override.exit.thread.i, !llvm.loop !40

.critedge.i:                                      ; preds = %.preheader.i, %.preheader.i.i511, %.preheader.i.preheader, %bb.fj
  %exitcond.not.i.not908 = phi i1 [ true, %.preheader.i.preheader ], [ false, %bb.fj ], [ false, %.preheader.i.i511 ], [ true, %.preheader.i ]
  %i.wg = load i32, ptr %i.vi, align 8            ; 2 uses
  store i32 %i.vr, ptr %i.vi, align 8
  %i.wh = add nsw i32 %i.vl, -8
  %i.wi = sub nsw i32 %i.wh, %i.vo
  %i.wj = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef 8, i32 noundef %i.wi) ; 4 uses
  %i.wk = call ptr @proto_tree_get_parent_tree(ptr noundef %i.m)
  %i.wl = call i32 @call_dissector_only(ptr noundef nonnull %i.vt, ptr noundef %i.wj, ptr noundef %1, ptr noundef %i.wk, ptr noundef null)
  %i.wm = icmp eq i32 %i.wl, 0
  br i1 %i.wm, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.critedge.i
  store i32 %i.wg, ptr %i.vi, align 8
  br label %esp_padding_override.exit.thread.i

bb.fl:                                            ; preds = %.critedge.i
  %i.wn = load i32, ptr @exported_pdu_tap, align 4
  %i.wo = call zeroext i1 @have_tap_listener(i32 noundef %i.wn)
  br i1 %i.wo, label %bb.fm, label %export_ipsec_pdu.exit.i

bb.fm:                                            ; preds = %bb.fl
  %i.wp = call ptr @dissector_handle_get_dissector_name(ptr noundef nonnull %i.vt)
  %i.wq = call ptr @export_pdu_create_common_tags(ptr noundef %1, ptr noundef %i.wp, i16 noundef zeroext 12) ; 4 uses
  %i.wr = call i32 @tvb_captured_length(ptr noundef %i.wj)
  %i.ws = getelementptr i8, ptr %i.wq, i64 16
  store i32 %i.wr, ptr %i.ws, align 8
  %i.wt = call i32 @tvb_reported_length(ptr noundef %i.wj)
  %i.wu = getelementptr i8, ptr %i.wq, i64 20
  store i32 %i.wt, ptr %i.wu, align 4
  %i.wv = getelementptr i8, ptr %i.wq, i64 24
  store ptr %i.wj, ptr %i.wv, align 8
  %i.ww = load i32, ptr @exported_pdu_tap, align 4
  call void @tap_queue_packet(i32 noundef %i.ww, ptr noundef %1, ptr noundef %i.wq)
  br label %export_ipsec_pdu.exit.i

export_ipsec_pdu.exit.i:                          ; preds = %bb.fm, %bb.fl
  store i32 %i.wg, ptr %i.vi, align 8
  %.not83.i = icmp eq ptr %i.m, null
  br i1 %.not83.i, label %esp_null_heur.exit.thread, label %bb.fn

bb.fn:                                            ; preds = %export_ipsec_pdu.exit.i
  %.not84.i = icmp eq i8 %i.vn, 0
  br i1 %.not84.i, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.wx = load i32, ptr @hf_esp_pad, align 4
  %i.wy = sub nsw i32 %i.vl, %i.vo
  %i.wz = call ptr @proto_tree_add_item(ptr noundef nonnull %i.m, i32 noundef %i.wx, ptr noundef %0, i32 noundef %i.wy, i32 noundef %i.vo, i32 noundef 0)
  br i1 %exitcond.not.i.not908, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.xa = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.wz, ptr noundef nonnull @ei_esp_pad_bogus) ; 0 uses
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fn
  %i.xb = load i32, ptr @hf_esp_pad_len, align 4
  %i.xc = call ptr @proto_tree_add_uint(ptr noundef nonnull %i.m, i32 noundef %i.xb, ptr noundef %0, i32 noundef %i.vl, i32 noundef 1, i32 noundef %i.vo) ; 0 uses
  %i.xd = load i32, ptr @hf_esp_protocol, align 4
  %i.xe = call ptr @ipprotostr(i32 noundef %i.vr)
  %i.xf = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef nonnull %i.m, i32 noundef %i.xd, ptr noundef %0, i32 noundef %i.vp, i32 noundef 1, i32 noundef %i.vr, ptr noundef nonnull @.str.213, ptr noundef %i.xe, i32 noundef %i.vr) ; 0 uses
  br label %esp_null_heur.exit

esp_padding_override.exit.thread.i:               ; preds = %.preheader.i.i511.preheader, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.xg = getelementptr [4 x i8], ptr @esp_null_heur.icv_lengths, i64 %indvars.iv.next.i
  %i.xh = load i32, ptr %i.xg, align 4            ; 2 uses
  %.not.i509 = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %.not.i509, label %esp_null_heur.exit, label %bb.fg, !llvm.loop !41

esp_null_heur.exit:                               ; preds = %esp_padding_override.exit.thread.i, %bb.fq
  %.5 = phi i32 [ %i.vj, %bb.fq ], [ %i.xh, %esp_padding_override.exit.thread.i ] ; 2 uses
  %.not494 = icmp eq i32 %.5, -1
  br i1 %.not494, label %.thread699, label %esp_null_heur.exit.thread868

esp_null_heur.exit.thread:                        ; preds = %export_ipsec_pdu.exit.i
  %.not494697 = icmp eq i32 %i.vj, -1
  %i.xi = sub i32 %i.cr, %i.vj
  %spec.select734 = select i1 %.not494697, i32 %.3427681693861, i32 %i.xi
  br label %.thread699

esp_null_heur.exit.thread868:                     ; preds = %bb.ff, %esp_null_heur.exit
  %.5882 = phi i32 [ %.5, %esp_null_heur.exit ], [ %.4419682692, %bb.ff ] ; 7 uses
  %.0584678695856881 = phi i8 [ %.0584678695857, %esp_null_heur.exit ], [ %.0584678695, %bb.ff ] ; 3 uses
  %.2448679694858880 = phi ptr [ %.2448679694859, %esp_null_heur.exit ], [ %.2448679694, %bb.ff ]
  %.4408684691862879 = phi i1 [ %.4408684691863, %esp_null_heur.exit ], [ %.4408684691, %bb.ff ] ; 3 uses
  %.4403686690864878 = phi i1 [ %.4403686690865, %esp_null_heur.exit ], [ %.4403686690, %bb.ff ] ; 3 uses
  %.4688689866877 = phi ptr [ %.4688689867, %esp_null_heur.exit ], [ %.4688689, %bb.ff ] ; 3 uses
  %i.xj = sub i32 %i.cr, %.5882                   ; 6 uses
  %.not495 = icmp eq ptr %i.m, null
  br i1 %.not495, label %.thread699, label %bb.fr

bb.fr:                                            ; preds = %esp_null_heur.exit.thread868
  %i.xk = call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %i.xj, i32 noundef %.5882)
  %i.xl = load i32, ptr @hf_esp_icv, align 4      ; 2 uses
  br i1 %i.xk, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.xm = call ptr @proto_tree_add_item(ptr noundef nonnull %i.m, i32 noundef %i.xl, ptr noundef %0, i32 noundef %i.xj, i32 noundef %.5882, i32 noundef 0)
  br label %.thread699

bb.ft:                                            ; preds = %bb.fr
  %i.xn = call i32 @tvb_captured_length(ptr noundef %0)
  %.neg = sub i32 %.5882, %i.cr
  %i.xo = add i32 %.neg, %i.xn
  %i.xp = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef nonnull %i.m, i32 noundef %i.xl, ptr noundef %0, i32 noundef %i.xj, i32 noundef %i.xo, ptr noundef null, ptr noundef nonnull @.str.214)
  br label %.thread699

.thread699:                                       ; preds = %esp_null_heur.exit.thread, %bb.fe, %esp_null_heur.exit.thread868, %bb.ft, %bb.fs, %esp_null_heur.exit, %bb.fb, %export_ipsec_pdu.exit508
  %.4687 = phi ptr [ %.4, %export_ipsec_pdu.exit508 ], [ %.4, %bb.fb ], [ %.4688689866877, %bb.fs ], [ %.4688689866877, %bb.ft ], [ %.4688689866877, %esp_null_heur.exit.thread868 ], [ %.4688689867, %esp_null_heur.exit ], [ %.4, %bb.fe ], [ %.4688689867, %esp_null_heur.exit.thread ]
  %.4403685 = phi i1 [ %.4403, %export_ipsec_pdu.exit508 ], [ %.4403, %bb.fb ], [ %.4403686690864878, %bb.fs ], [ %.4403686690864878, %bb.ft ], [ %.4403686690864878, %esp_null_heur.exit.thread868 ], [ %.4403686690865, %esp_null_heur.exit ], [ %.4403, %bb.fe ], [ %.4403686690865, %esp_null_heur.exit.thread ]
  %.4408683 = phi i1 [ %.4408, %export_ipsec_pdu.exit508 ], [ %.4408, %bb.fb ], [ %.4408684691862879, %bb.fs ], [ %.4408684691862879, %bb.ft ], [ %.4408684691862879, %esp_null_heur.exit.thread868 ], [ %.4408684691863, %esp_null_heur.exit ], [ %.4408, %bb.fe ], [ %.4408684691863, %esp_null_heur.exit.thread ]
  %.0584677 = phi i8 [ %i.fs, %export_ipsec_pdu.exit508 ], [ %i.fs, %bb.fb ], [ %.0584678695856881, %bb.fs ], [ %.0584678695856881, %bb.ft ], [ %.0584678695856881, %esp_null_heur.exit.thread868 ], [ %.0584678695857, %esp_null_heur.exit ], [ %i.fs, %bb.fe ], [ %.0584678695857, %esp_null_heur.exit.thread ]
  %.3449 = phi ptr [ %.2448, %export_ipsec_pdu.exit508 ], [ %.2448, %bb.fb ], [ %i.xm, %bb.fs ], [ %i.xp, %bb.ft ], [ %.2448679694858880, %esp_null_heur.exit.thread868 ], [ %.2448679694859, %esp_null_heur.exit ], [ %.2448, %bb.fe ], [ %.2448679694859, %esp_null_heur.exit.thread ] ; 5 uses
  %.4428 = phi i32 [ %.3427, %export_ipsec_pdu.exit508 ], [ %.3427, %bb.fb ], [ %i.xj, %bb.fs ], [ %i.xj, %bb.ft ], [ %i.xj, %esp_null_heur.exit.thread868 ], [ %.3427681693861, %esp_null_heur.exit ], [ %.3427, %bb.fe ], [ %spec.select734, %esp_null_heur.exit.thread ] ; 2 uses
  %.6 = phi i32 [ %.4419, %export_ipsec_pdu.exit508 ], [ %.4419, %bb.fb ], [ %.5882, %bb.fs ], [ %.5882, %bb.ft ], [ %.5882, %esp_null_heur.exit.thread868 ], [ -1, %esp_null_heur.exit ], [ %.4419, %bb.fe ], [ %i.vj, %esp_null_heur.exit.thread ] ; 2 uses
  %.not496 = icmp eq ptr %.3449, null
  br i1 %.not496, label %.sink.split, label %bb.fu

bb.fu:                                            ; preds = %.thread699
  %i.xq = load i32, ptr @ett_esp_icv, align 4
  %i.xr = call ptr @proto_item_add_subtree(ptr noundef nonnull %.3449, i32 noundef %i.xq) ; 2 uses
  br i1 %.4408683, label %bb.fv, label %bb.gb

bb.fv:                                            ; preds = %bb.fu
  br i1 %.4403685, label %bb.fw, label %bb.ga

bb.fw:                                            ; preds = %bb.fv
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %.3449, ptr noundef nonnull @.str.215)
  %i.xs = icmp eq i8 %.0584677, 64
  %i.xt = load i8, ptr @g_esp_do_sequence_analysis, align 1, !range !6
  %i.xu = trunc nuw i8 %i.xt to i1
  %or.cond20 = select i1 %i.xs, i1 %i.xu, i1 false
  br i1 %or.cond20, label %bb.fx, label %bb.gc

bb.fx:                                            ; preds = %bb.fw
  %i.xv = load ptr, ptr @esp_sequence_analysis_hash, align 8
  %i.xw = load i32, ptr %i.b, align 4
  %i.xx = zext i32 %i.xw to i64
  %i.xy = inttoptr i64 %i.xx to ptr
  %i.xz = call ptr @wmem_map_lookup(ptr noundef %i.xv, ptr noundef %i.xy) ; 3 uses
  %.not497 = icmp eq ptr %i.xz, null
  br i1 %.not497, label %bb.gc, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ya = load i32, ptr %i.xz, align 4
  %.not498 = icmp eq i32 %i.ya, 0
  br i1 %.not498, label %bb.fz, label %bb.gc

bb.fz:                                            ; preds = %bb.fy
  %i.yb = load i32, ptr %i.f, align 4
  store i32 %i.yb, ptr %i.xz, align 4
  br label %bb.gc

bb.ga:                                            ; preds = %bb.fv
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %.3449, ptr noundef nonnull @.str.216, ptr noundef %.4687)
  br label %bb.gc

bb.gb:                                            ; preds = %bb.fu
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef nonnull %.3449, ptr noundef nonnull @.str.217)
  br label %bb.gc

bb.gc:                                            ; preds = %bb.fx, %bb.fy, %bb.fz, %bb.ga, %bb.fw, %bb.gb
  %.0382 = phi i64 [ 0, %bb.gb ], [ 1, %bb.fw ], [ 0, %bb.ga ], [ 1, %bb.fz ], [ 1, %bb.fy ], [ 1, %bb.fx ]
  %.0 = phi i64 [ 0, %bb.gb ], [ 0, %bb.fw ], [ 1, %bb.ga ], [ 0, %bb.fz ], [ 0, %bb.fy ], [ 0, %bb.fx ]
  %i.yc = load i32, ptr @hf_esp_icv_good, align 4
  %i.yd = call ptr @proto_tree_add_boolean(ptr noundef %i.xr, i32 noundef %i.yc, ptr noundef %0, i32 noundef %.4428, i32 noundef %.6, i64 noundef %.0382) ; 2 uses
  %.not.i513 = icmp eq ptr %i.yd, null
  br i1 %.not.i513, label %proto_item_set_generated.exit, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ye = getelementptr i8, ptr %i.yd, i64 40
  %i.yf = load ptr, ptr %i.ye, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.yf, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.yg = getelementptr i8, ptr %i.yf, i64 28     ; 2 uses
  %i.yh = load i32, ptr %i.yg, align 4
  %i.yi = or i32 %i.yh, 2
  store i32 %i.yi, ptr %i.yg, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.gc, %bb.gd, %bb.ge
  %i.yj = load i32, ptr @hf_esp_icv_bad, align 4
  %i.yk = call ptr @proto_tree_add_boolean(ptr noundef %i.xr, i32 noundef %i.yj, ptr noundef %0, i32 noundef %.4428, i32 noundef %.6, i64 noundef %.0) ; 2 uses
  %.not.i514 = icmp eq ptr %i.yk, null
  br i1 %.not.i514, label %.sink.split, label %bb.gf

bb.gf:                                            ; preds = %proto_item_set_generated.exit
  %i.yl = getelementptr i8, ptr %i.yk, i64 40
  %i.ym = load ptr, ptr %i.yl, align 8            ; 2 uses
  %.not5.i515 = icmp eq ptr %i.ym, null
  br i1 %.not5.i515, label %.sink.split, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.yn = getelementptr i8, ptr %i.ym, i64 28     ; 2 uses
  %i.yo = load i32, ptr %i.yn, align 4
  %i.yp = or i32 %i.yo, 2
  store i32 %i.yp, ptr %i.yn, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %.thread699, %proto_item_set_generated.exit, %bb.gf, %bb.gg, %.thread664, %.thread652.thread, %show_esp_sequence_info.exit
  %i.yq = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.gh

bb.gh:                                            ; preds = %.sink.split, %bb.cw, %bb.cu
  %.0383 = phi i32 [ %i.cr, %bb.cu ], [ %i.cr, %bb.cw ], [ %i.yq, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret i32 %.0383
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ah(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @col_set_str(ptr noundef %i.c, i32 noundef 35, ptr noundef nonnull @.str.102)
  %i.d = load ptr, ptr %i.b, align 8
  tail call void @col_clear(ptr noundef %i.d, i32 noundef 25)
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 2                  ; 2 uses
  %i.j = add nuw nsw i32 %i.i, 8                  ; 4 uses
  %.not = icmp eq i8 %i.g, 0
  %i.k = add nsw i32 %i.i, -4
  %i.l = select i1 %.not, i32 0, i32 %i.k
  %i.m = tail call ptr @p_ipv6_pinfo_select_root(ptr noundef %1, ptr noundef %2)
  %i.n = tail call ptr @p_ipv6_pinfo_add_len(ptr noundef %1, i32 noundef %i.j) ; 0 uses
  %i.o = load i32, ptr @proto_ah, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.o, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 2 uses
  %i.q = load i32, ptr @ett_ah, align 4
  %i.r = tail call ptr @proto_item_add_subtree(ptr noundef %i.p, i32 noundef %i.q) ; 6 uses
  %i.s = load i32, ptr @hf_ah_next_header, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.s, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_ah_length, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.u, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.v, ptr noundef nonnull @.str.227, i32 noundef %i.j)
  %i.w = load i32, ptr @hf_ah_reserved, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.r, i32 noundef %i.w, ptr noundef %0, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
end_hunk_0
