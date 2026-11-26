Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Watchdog?download=true
inline.NumInlined: 14664
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumUnrolled: 43
begin_hunk_0_@l_Lean_Server_Watchdog_mainLoop:bb.a

bb.dg:                                            ; preds = %lean_inc.exit519
  %i.fd = icmp sgt i32 %.val.i658, 1
  br i1 %i.fd, label %bb.dh, label %bb.di, !prof !11

bb.dh:                                            ; preds = %bb.dg
  %i.fe = add nsw i32 %.val.i658, -1
  store i32 %i.fe, ptr %i.bk, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit668

bb.di:                                            ; preds = %bb.dg
  %.not.i8.i659 = icmp eq i32 %.val.i658, 0
  br i1 %.not.i8.i659, label %lean_dec_ref_known.exit668, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bk) #12
  br label %lean_dec_ref_known.exit668

lean_dec_ref_known.exit668:                       ; preds = %lean_dec.exit.i663, %bb.dh, %bb.di, %bb.dj
  %i.ff = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Server_Watchdog_mainLoop___closed__7_value, ptr noundef nonnull %i.ei) #12
  %i.fg = load i32, ptr %i.ei, align 4, !tbaa !10 ; 3 uses
  %i.fh = icmp sgt i32 %i.fg, 1
  br i1 %i.fh, label %bb.dk, label %bb.dl, !prof !11

bb.dk:                                            ; preds = %lean_dec_ref_known.exit668
  %i.fi = add nsw i32 %i.fg, -1
  store i32 %i.fi, ptr %i.ei, align 4, !tbaa !10
  br label %lean_dec_ref.exit578

bb.dl:                                            ; preds = %lean_dec_ref_known.exit668
  %.not.i577 = icmp eq i32 %i.fg, 0
  br i1 %.not.i577, label %lean_dec_ref.exit578, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ei) #12
  br label %lean_dec_ref.exit578

lean_dec_ref.exit578:                             ; preds = %bb.dk, %bb.dl, %bb.dm
  %i.fj = tail call ptr @lean_string_append(ptr noundef %i.ff, ptr noundef nonnull @l_Lean_Server_Watchdog_instFromJsonCallHierarchyItemData_fromJson___closed__12_value) #12
  %i.fk = tail call ptr @lean_io_error_to_string(ptr noundef %i.eq) #12 ; 4 uses
  %i.fl = tail call ptr @lean_string_append(ptr noundef %i.fj, ptr noundef %i.fk) #12
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !10 ; 3 uses
  %i.fn = icmp sgt i32 %i.fm, 1
  br i1 %i.fn, label %bb.dn, label %bb.do, !prof !11

bb.dn:                                            ; preds = %lean_dec_ref.exit578
  %i.fo = add nsw i32 %i.fm, -1
  store i32 %i.fo, ptr %i.fk, align 4, !tbaa !10
  br label %lean_dec_ref.exit576

bb.do:                                            ; preds = %lean_dec_ref.exit578
  %.not.i575 = icmp eq i32 %i.fm, 0
  br i1 %.not.i575, label %lean_dec_ref.exit576, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fk) #12
  br label %lean_dec_ref.exit576

lean_dec_ref.exit576:                             ; preds = %bb.dn, %bb.do, %bb.dp
  %i.fp = tail call ptr @l_IO_throwServerError___redArg(ptr noundef %i.fl) #12
  br label %lean_dec.exit454.thread1098

bb.dq:                                            ; preds = %lean_obj_tag.exit612
  %i.fq = ptrtoint ptr %.0425 to i64
  %i.fr = and i64 %i.fq, 1
  %.not.i669 = icmp eq i64 %i.fr, 0
  br i1 %.not.i669, label %bb.dr, label %lean_del_object.exit670

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_free_object(ptr noundef nonnull %.0425) #12
  br label %lean_del_object.exit670

lean_del_object.exit670:                          ; preds = %bb.dq, %bb.dr
  %i.fs = load i32, ptr %.0371, align 4, !tbaa !10 ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 1
  br i1 %i.ft, label %bb.ds, label %bb.dt, !prof !11

bb.ds:                                            ; preds = %lean_del_object.exit670
  %i.fu = add nsw i32 %i.fs, -1
  store i32 %i.fu, ptr %.0371, align 4, !tbaa !10
  br label %lean_dec_ref.exit574

bb.dt:                                            ; preds = %lean_del_object.exit670
  %.not.i573 = icmp eq i32 %i.fs, 0
  br i1 %.not.i573, label %lean_dec_ref.exit574, label %bb.du

bb.du:                                            ; preds = %bb.dt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0371) #12
  br label %lean_dec_ref.exit574

lean_dec_ref.exit574:                             ; preds = %bb.ds, %bb.dt, %bb.du
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !14 ; 39 uses
  %.val.i.i671 = load i32, ptr %i.fw, align 4, !tbaa !10 ; 3 uses
  %i.fx = icmp sgt i32 %.val.i.i671, 0
  br i1 %i.fx, label %bb.dv, label %bb.dw, !prof !11

bb.dv:                                            ; preds = %lean_dec_ref.exit574
  %i.fy = add nuw i32 %.val.i.i671, 1
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !10
  br label %lean_inc_ref.exit673

bb.dw:                                            ; preds = %lean_dec_ref.exit574
  %.not.i.i672 = icmp eq i32 %.val.i.i671, 0
  br i1 %.not.i.i672, label %lean_inc_ref.exit673, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.fz = atomicrmw add ptr %i.fw, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit673

lean_inc_ref.exit673:                             ; preds = %bb.dv, %bb.dw, %bb.dx
  %.val.i674 = load i32, ptr %i.aq, align 8, !tbaa !10 ; 4 uses
  %i.ga = icmp eq i32 %.val.i674, 1
  br i1 %i.ga, label %.preheader.i676, label %bb.ec

.preheader.i676:                                  ; preds = %lean_inc_ref.exit673
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !14 ; 4 uses
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = and i64 %i.gc, 1
  %.not.i.i678 = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i678, label %bb.dy, label %lean_dec.exit.i679

bb.dy:                                            ; preds = %.preheader.i676
  %i.ge = load i32, ptr %i.gb, align 4, !tbaa !10 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.dz, label %bb.ea, !prof !11

bb.dz:                                            ; preds = %bb.dy
  %i.gg = add nsw i32 %i.ge, -1
  store i32 %i.gg, ptr %i.gb, align 4, !tbaa !10
  br label %lean_dec.exit.i679

bb.ea:                                            ; preds = %bb.dy
  %.not.i7.i683 = icmp eq i32 %i.ge, 0
  br i1 %.not.i7.i683, label %lean_dec.exit.i679, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gb) #12
  br label %lean_dec.exit.i679

lean_dec.exit.i679:                               ; preds = %bb.eb, %bb.ea, %bb.dz, %.preheader.i676
  tail call void @lean_free_object(ptr noundef nonnull %i.aq) #12
  br label %lean_dec_ref_known.exit684

bb.ec:                                            ; preds = %lean_inc_ref.exit673
  %i.gh = icmp sgt i32 %.val.i674, 1
  br i1 %i.gh, label %bb.ed, label %bb.ee, !prof !11

bb.ed:                                            ; preds = %bb.ec
  %i.gi = add nsw i32 %.val.i674, -1
  store i32 %i.gi, ptr %i.aq, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit684

bb.ee:                                            ; preds = %bb.ec
  %.not.i8.i675 = icmp eq i32 %.val.i674, 0
  br i1 %.not.i8.i675, label %lean_dec_ref_known.exit684, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aq) #12
  br label %lean_dec_ref_known.exit684

lean_dec_ref_known.exit684:                       ; preds = %bb.ef, %bb.ee, %bb.ed, %lean_dec.exit.i679
  %i.gj = getelementptr i8, ptr %i.fw, i64 4
  %.val.i687 = load i32, ptr %i.gj, align 4
  %i.gk = lshr i32 %.val.i687, 24
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 9 uses
  %trunc = trunc nuw i32 %i.gk to i8
  switch i8 %trunc, label %bb.oj [
    i8 0, label %bb.eg
    i8 1, label %bb.ir
    i8 2, label %bb.mc
  ]

bb.eg:                                            ; preds = %lean_dec_ref_known.exit684
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !14 ; 12 uses
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = and i64 %i.gn, 1
  %.not.i516 = icmp eq i64 %i.go, 0               ; 3 uses
  br i1 %.not.i516, label %bb.eh, label %lean_inc.exit517

bb.eh:                                            ; preds = %bb.eg
  %.val.i.i689 = load i32, ptr %i.gm, align 4, !tbaa !10 ; 3 uses
  %i.gp = icmp sgt i32 %.val.i.i689, 0
  br i1 %i.gp, label %bb.ei, label %bb.ej, !prof !11

bb.ei:                                            ; preds = %bb.eh
  %i.gq = add nuw i32 %.val.i.i689, 1
  store i32 %i.gq, ptr %i.gm, align 4, !tbaa !10
  br label %lean_inc.exit517

bb.ej:                                            ; preds = %bb.eh
  %.not.i.i690 = icmp eq i32 %.val.i.i689, 0
  br i1 %.not.i.i690, label %lean_inc.exit517, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.gr = atomicrmw add ptr %i.gm, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit517

lean_inc.exit517:                                 ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eg
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !14 ; 13 uses
  %.val.i.i692 = load i32, ptr %i.gt, align 4, !tbaa !10 ; 3 uses
  %i.gu = icmp sgt i32 %.val.i.i692, 0
  br i1 %i.gu, label %bb.el, label %bb.em, !prof !11

bb.el:                                            ; preds = %lean_inc.exit517
  %i.gv = add nuw i32 %.val.i.i692, 1
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !10
  br label %lean_inc_ref.exit694

bb.em:                                            ; preds = %lean_inc.exit517
  %.not.i.i693 = icmp eq i32 %.val.i.i692, 0
  br i1 %.not.i.i693, label %lean_inc_ref.exit694, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.gw = atomicrmw add ptr %i.gt, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit694

lean_inc_ref.exit694:                             ; preds = %bb.el, %bb.em, %bb.en
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !14 ; 16 uses
  %i.gz = ptrtoint ptr %i.gy to i64               ; 2 uses
  %i.ha = and i64 %i.gz, 1
  %.not.i514 = icmp eq i64 %i.ha, 0               ; 3 uses
  br i1 %.not.i514, label %bb.eo, label %lean_inc.exit515

bb.eo:                                            ; preds = %lean_inc_ref.exit694
  %.val.i.i695 = load i32, ptr %i.gy, align 4, !tbaa !10 ; 3 uses
  %i.hb = icmp sgt i32 %.val.i.i695, 0
  br i1 %i.hb, label %bb.ep, label %bb.eq, !prof !11

bb.ep:                                            ; preds = %bb.eo
  %i.hc = add nuw i32 %.val.i.i695, 1
  store i32 %i.hc, ptr %i.gy, align 4, !tbaa !10
  br label %lean_inc.exit515

bb.eq:                                            ; preds = %bb.eo
  %.not.i.i696 = icmp eq i32 %.val.i.i695, 0
  br i1 %.not.i.i696, label %lean_inc.exit515, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.hd = atomicrmw add ptr %i.gy, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit515

lean_inc.exit515:                                 ; preds = %bb.er, %bb.eq, %bb.ep, %lean_inc_ref.exit694
  %.val.i698 = load i32, ptr %i.fw, align 8, !tbaa !10 ; 4 uses
  %i.he = icmp eq i32 %.val.i698, 1
  br i1 %i.he, label %.preheader.i700.preheader, label %bb.fe

.preheader.i700.preheader:                        ; preds = %lean_inc.exit515
  %i.hf = load ptr, ptr %i.gl, align 8, !tbaa !14 ; 4 uses
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = and i64 %i.hg, 1
  %.not.i.i702 = icmp eq i64 %i.hh, 0
  br i1 %.not.i.i702, label %bb.es, label %lean_dec.exit.i703

bb.es:                                            ; preds = %.preheader.i700.preheader
  %i.hi = load i32, ptr %i.hf, align 4, !tbaa !10 ; 3 uses
  %i.hj = icmp sgt i32 %i.hi, 1
  br i1 %i.hj, label %bb.et, label %bb.eu, !prof !11

bb.et:                                            ; preds = %bb.es
  %i.hk = add nsw i32 %i.hi, -1
  store i32 %i.hk, ptr %i.hf, align 4, !tbaa !10
  br label %lean_dec.exit.i703

bb.eu:                                            ; preds = %bb.es
  %.not.i7.i707 = icmp eq i32 %i.hi, 0
  br i1 %.not.i7.i707, label %lean_dec.exit.i703, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hf) #12
  br label %lean_dec.exit.i703

lean_dec.exit.i703:                               ; preds = %bb.ev, %bb.eu, %bb.et, %.preheader.i700.preheader
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !14 ; 4 uses
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = and i64 %i.hn, 1
  %.not.i.i702.1 = icmp eq i64 %i.ho, 0
  br i1 %.not.i.i702.1, label %bb.ew, label %lean_dec.exit.i703.1

bb.ew:                                            ; preds = %lean_dec.exit.i703
  %i.hp = load i32, ptr %i.hm, align 4, !tbaa !10 ; 3 uses
  %i.hq = icmp sgt i32 %i.hp, 1
  br i1 %i.hq, label %bb.ez, label %bb.ex, !prof !11

bb.ex:                                            ; preds = %bb.ew
  %.not.i7.i707.1 = icmp eq i32 %i.hp, 0
  br i1 %.not.i7.i707.1, label %lean_dec.exit.i703.1, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hm) #12
  br label %lean_dec.exit.i703.1

bb.ez:                                            ; preds = %bb.ew
  %i.hr = add nsw i32 %i.hp, -1
  store i32 %i.hr, ptr %i.hm, align 4, !tbaa !10
  br label %lean_dec.exit.i703.1

lean_dec.exit.i703.1:                             ; preds = %bb.ez, %bb.ey, %bb.ex, %lean_dec.exit.i703
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !14 ; 4 uses
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = and i64 %i.hu, 1
  %.not.i.i702.2 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i702.2, label %bb.fa, label %lean_dec.exit.i703.2

bb.fa:                                            ; preds = %lean_dec.exit.i703.1
  %i.hw = load i32, ptr %i.ht, align 4, !tbaa !10 ; 3 uses
  %i.hx = icmp sgt i32 %i.hw, 1
  br i1 %i.hx, label %bb.fd, label %bb.fb, !prof !11

bb.fb:                                            ; preds = %bb.fa
  %.not.i7.i707.2 = icmp eq i32 %i.hw, 0
  br i1 %.not.i7.i707.2, label %lean_dec.exit.i703.2, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ht) #12
  br label %lean_dec.exit.i703.2

bb.fd:                                            ; preds = %bb.fa
  %i.hy = add nsw i32 %i.hw, -1
  store i32 %i.hy, ptr %i.ht, align 4, !tbaa !10
  br label %lean_dec.exit.i703.2

lean_dec.exit.i703.2:                             ; preds = %bb.fd, %bb.fc, %bb.fb, %lean_dec.exit.i703.1
  tail call void @lean_free_object(ptr noundef nonnull %i.fw) #12
  br label %lean_dec_ref_known.exit708

bb.fe:                                            ; preds = %lean_inc.exit515
  %i.hz = icmp sgt i32 %.val.i698, 1
  br i1 %i.hz, label %bb.ff, label %bb.fg, !prof !11

bb.ff:                                            ; preds = %bb.fe
  %i.ia = add nsw i32 %.val.i698, -1
  store i32 %i.ia, ptr %i.fw, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit708

bb.fg:                                            ; preds = %bb.fe
  %.not.i8.i699 = icmp eq i32 %.val.i698, 0
  br i1 %.not.i8.i699, label %lean_dec_ref_known.exit708, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fw) #12
  br label %lean_dec_ref_known.exit708

lean_dec_ref_known.exit708:                       ; preds = %lean_dec.exit.i703.2, %bb.ff, %bb.fg, %bb.fh
  %i.ib = icmp eq ptr %i.gt, @l_Lean_Server_Watchdog_mainLoop___closed__8_value
  br i1 %i.ib, label %lean_string_dec_eq.exit.thread1065, label %bb.fi

bb.fi:                                            ; preds = %lean_dec_ref_known.exit708
  %i.ic = getelementptr i8, ptr %i.gt, i64 8
  %.val7.i.i = load i64, ptr %i.ic, align 8, !tbaa !17
  %i.id = icmp eq i64 %.val7.i.i, 9
  br i1 %i.id, label %lean_string_dec_eq.exit, label %lean_string_dec_eq.exit.thread

lean_string_dec_eq.exit:                          ; preds = %bb.fi
  %i.ie = tail call zeroext i1 @lean_string_eq_cold(ptr noundef nonnull %i.gt, ptr noundef nonnull @l_Lean_Server_Watchdog_mainLoop___closed__8_value) #12
  br i1 %i.ie, label %lean_string_dec_eq.exit.thread1065, label %lean_string_dec_eq.exit.thread

lean_string_dec_eq.exit.thread:                   ; preds = %bb.fi, %lean_string_dec_eq.exit
  br i1 %.not.i514, label %lean_obj_tag.exit712, label %lean_obj_tag.exit712.thread

lean_obj_tag.exit712:                             ; preds = %lean_string_dec_eq.exit.thread
  %i.if = getelementptr i8, ptr %i.gy, i64 4
  %.val.i711 = load i32, ptr %i.if, align 4
  %.mask = and i32 %.val.i711, -16777216
  %i.ig = icmp eq i32 %.mask, 16777216
  br i1 %i.ig, label %bb.fj, label %bb.hi

lean_obj_tag.exit712.thread:                      ; preds = %lean_string_dec_eq.exit.thread
  %i.ih = and i64 %i.gz, 8589934590
  %i.ii = icmp eq i64 %i.ih, 2
  br i1 %i.ii, label %bb.fj, label %lean_dec.exit470

bb.fj:                                            ; preds = %lean_obj_tag.exit712.thread, %lean_obj_tag.exit712
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !14 ; 5 uses
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = and i64 %i.il, 1
  %.not.i512 = icmp eq i64 %i.im, 0
  br i1 %.not.i512, label %bb.fk, label %lean_inc.exit513

bb.fk:                                            ; preds = %bb.fj
  %.val.i.i713 = load i32, ptr %i.ik, align 4, !tbaa !10 ; 3 uses
  %i.in = icmp sgt i32 %.val.i.i713, 0
  br i1 %i.in, label %bb.fl, label %bb.fm, !prof !11

bb.fl:                                            ; preds = %bb.fk
  %i.io = add nuw i32 %.val.i.i713, 1
  store i32 %i.io, ptr %i.ik, align 4, !tbaa !10
  br label %lean_inc.exit513

bb.fm:                                            ; preds = %bb.fk
  %.not.i.i714 = icmp eq i32 %.val.i.i713, 0
  br i1 %.not.i.i714, label %lean_inc.exit513, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.ip = atomicrmw add ptr %i.ik, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit513
end_hunk_0
begin_hunk_1_@l_Lean_Server_Watchdog_mainLoop:bb.a
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = and i64 %i.kc, 1
  %.not.i510 = icmp eq i64 %i.kd, 0
  br i1 %.not.i510, label %bb.gk, label %lean_inc.exit511

bb.gk:                                            ; preds = %bb.gj
  %.val.i.i746 = load i32, ptr %i.kb, align 4, !tbaa !10 ; 3 uses
  %i.ke = icmp sgt i32 %.val.i.i746, 0
  br i1 %i.ke, label %bb.gl, label %bb.gm, !prof !11

bb.gl:                                            ; preds = %bb.gk
  %i.kf = add nuw i32 %.val.i.i746, 1
  store i32 %i.kf, ptr %i.kb, align 4, !tbaa !10
  br label %lean_inc.exit511

bb.gm:                                            ; preds = %bb.gk
  %.not.i.i747 = icmp eq i32 %.val.i.i746, 0
  br i1 %.not.i.i747, label %lean_inc.exit511, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.kg = atomicrmw add ptr %i.kb, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit511

lean_inc.exit511:                                 ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gj
  %.val.i749 = load i32, ptr %i.js, align 8, !tbaa !10 ; 4 uses
  %i.kh = icmp eq i32 %.val.i749, 1
  br i1 %i.kh, label %.preheader.i751, label %bb.gs

.preheader.i751:                                  ; preds = %lean_inc.exit511
  %i.ki = load ptr, ptr %i.ka, align 8, !tbaa !14 ; 4 uses
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = and i64 %i.kj, 1
  %.not.i.i753 = icmp eq i64 %i.kk, 0
  br i1 %.not.i.i753, label %bb.go, label %lean_dec.exit.i754

bb.go:                                            ; preds = %.preheader.i751
  %i.kl = load i32, ptr %i.ki, align 4, !tbaa !10 ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 1
  br i1 %i.km, label %bb.gp, label %bb.gq, !prof !11

bb.gp:                                            ; preds = %bb.go
  %i.kn = add nsw i32 %i.kl, -1
  store i32 %i.kn, ptr %i.ki, align 4, !tbaa !10
  br label %lean_dec.exit.i754

bb.gq:                                            ; preds = %bb.go
  %.not.i7.i758 = icmp eq i32 %i.kl, 0
  br i1 %.not.i7.i758, label %lean_dec.exit.i754, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ki) #12
  br label %lean_dec.exit.i754

lean_dec.exit.i754:                               ; preds = %bb.gr, %bb.gq, %bb.gp, %.preheader.i751
  tail call void @lean_free_object(ptr noundef nonnull %i.js) #12
  br label %lean_dec.exit454.backedge

bb.gs:                                            ; preds = %lean_inc.exit511
  %i.ko = icmp sgt i32 %.val.i749, 1
  br i1 %i.ko, label %bb.gt, label %bb.gu, !prof !11

bb.gt:                                            ; preds = %bb.gs
  %i.kp = add nsw i32 %.val.i749, -1
  store i32 %i.kp, ptr %i.js, align 8, !tbaa !10
  br label %lean_dec.exit454.backedge

bb.gu:                                            ; preds = %bb.gs
  %.not.i8.i750 = icmp eq i32 %.val.i749, 0
  br i1 %.not.i8.i750, label %lean_dec.exit454.backedge, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.js) #12
  br label %lean_dec.exit454.backedge

bb.gw:                                            ; preds = %lean_obj_tag.exit745
  %.val600 = load i32, ptr %i.js, align 8, !tbaa !10
  %i.kq = icmp eq i32 %.val600, 1
  br i1 %i.kq, label %lean_dec.exit454.thread1098, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.kr = ptrtoint ptr %i.kb to i64
  %i.ks = and i64 %i.kr, 1
  %.not.i508 = icmp eq i64 %i.ks, 0
  br i1 %.not.i508, label %bb.gy, label %lean_inc.exit509

bb.gy:                                            ; preds = %bb.gx
  %.val.i.i760 = load i32, ptr %i.kb, align 4, !tbaa !10 ; 3 uses
  %i.kt = icmp sgt i32 %.val.i.i760, 0
  br i1 %i.kt, label %bb.gz, label %bb.ha, !prof !11

bb.gz:                                            ; preds = %bb.gy
  %i.ku = add nuw i32 %.val.i.i760, 1
  store i32 %i.ku, ptr %i.kb, align 4, !tbaa !10
  br label %lean_inc.exit509

bb.ha:                                            ; preds = %bb.gy
  %.not.i.i761 = icmp eq i32 %.val.i.i760, 0
  br i1 %.not.i.i761, label %lean_inc.exit509, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.kv = atomicrmw add ptr %i.kb, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit509

lean_inc.exit509:                                 ; preds = %bb.hb, %bb.ha, %bb.gz, %bb.gx
  br i1 %.not.i742, label %bb.hc, label %bb.hg

bb.hc:                                            ; preds = %lean_inc.exit509
  %i.kw = load i32, ptr %i.js, align 8, !tbaa !10 ; 3 uses
  %i.kx = icmp sgt i32 %i.kw, 1
  br i1 %i.kx, label %bb.hd, label %bb.he, !prof !11

bb.hd:                                            ; preds = %bb.hc
  %i.ky = add nsw i32 %i.kw, -1
  store i32 %i.ky, ptr %i.js, align 8, !tbaa !10
  br label %bb.hg

bb.he:                                            ; preds = %bb.hc
  %.not.i529 = icmp eq i32 %i.kw, 0
  br i1 %.not.i529, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.js) #12
  br label %bb.hg

bb.hg:                                            ; preds = %lean_inc.exit509, %bb.hd, %bb.he, %bb.hf
  tail call void @lean_inc_heartbeat() #12
  %i.kz = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #12 ; 5 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %bb.hh, label %lean_alloc_ctor.exit763

bb.hh:                                            ; preds = %bb.hg
  tail call void @lean_internal_panic_out_of_memory() #13
  unreachable

lean_alloc_ctor.exit763:                          ; preds = %bb.hg
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  store i32 1, ptr %i.kz, align 4, !tbaa !10
  store i32 16842768, ptr %i.lb, align 4
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store ptr %i.kb, ptr %i.lc, align 8, !tbaa !14
  br label %lean_dec.exit454.thread1098

bb.hi:                                            ; preds = %lean_obj_tag.exit712
  %i.ld = load i32, ptr %i.gy, align 4, !tbaa !10 ; 3 uses
  %i.le = icmp sgt i32 %i.ld, 1
  br i1 %i.le, label %bb.hj, label %bb.hk, !prof !11

bb.hj:                                            ; preds = %bb.hi
  %i.lf = add nsw i32 %i.ld, -1
  store i32 %i.lf, ptr %i.gy, align 4, !tbaa !10
  br label %lean_dec.exit470

bb.hk:                                            ; preds = %bb.hi
  %.not.i531 = icmp eq i32 %i.ld, 0
  br i1 %.not.i531, label %lean_dec.exit470, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #12
  br label %lean_dec.exit470

lean_dec.exit470:                                 ; preds = %lean_obj_tag.exit712.thread, %bb.hl, %bb.hk, %bb.hj
  %i.lg = load i32, ptr %i.gt, align 4, !tbaa !10 ; 3 uses
  %i.lh = icmp sgt i32 %i.lg, 1
  br i1 %i.lh, label %bb.hm, label %bb.hn, !prof !11

bb.hm:                                            ; preds = %lean_dec.exit470
  %i.li = add nsw i32 %i.lg, -1
  store i32 %i.li, ptr %i.gt, align 4, !tbaa !10
  br label %lean_dec_ref.exit572

bb.hn:                                            ; preds = %lean_dec.exit470
  %.not.i571 = icmp eq i32 %i.lg, 0
  br i1 %.not.i571, label %lean_dec_ref.exit572, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gt) #12
  br label %lean_dec_ref.exit572

lean_dec_ref.exit572:                             ; preds = %bb.hm, %bb.hn, %bb.ho
  br i1 %.not.i516, label %bb.hp, label %bb.sf

bb.hp:                                            ; preds = %lean_dec_ref.exit572
  %i.lj = load i32, ptr %i.gm, align 4, !tbaa !10 ; 3 uses
  %i.lk = icmp sgt i32 %i.lj, 1
  br i1 %i.lk, label %bb.hq, label %bb.hr, !prof !11

bb.hq:                                            ; preds = %bb.hp
  %i.ll = add nsw i32 %i.lj, -1
  store i32 %i.ll, ptr %i.gm, align 4, !tbaa !10
  br label %bb.sf

bb.hr:                                            ; preds = %bb.hp
  %.not.i533 = icmp eq i32 %i.lj, 0
  br i1 %.not.i533, label %bb.sf, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gm) #12
  br label %bb.sf

lean_string_dec_eq.exit.thread1065:               ; preds = %lean_dec_ref_known.exit708, %lean_string_dec_eq.exit
  br i1 %.not.i514, label %bb.ht, label %lean_dec.exit466

bb.ht:                                            ; preds = %lean_string_dec_eq.exit.thread1065
  %i.lm = load i32, ptr %i.gy, align 4, !tbaa !10 ; 3 uses
  %i.ln = icmp sgt i32 %i.lm, 1
  br i1 %i.ln, label %bb.hu, label %bb.hv, !prof !11

bb.hu:                                            ; preds = %bb.ht
  %i.lo = add nsw i32 %i.lm, -1
  store i32 %i.lo, ptr %i.gy, align 4, !tbaa !10
  br label %lean_dec.exit466

bb.hv:                                            ; preds = %bb.ht
  %.not.i535 = icmp eq i32 %i.lm, 0
  br i1 %.not.i535, label %lean_dec.exit466, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #12
  br label %lean_dec.exit466

lean_dec.exit466:                                 ; preds = %bb.hw, %bb.hv, %bb.hu, %lean_string_dec_eq.exit.thread1065
  %i.lp = load i32, ptr %i.gt, align 4, !tbaa !10 ; 3 uses
  %i.lq = icmp sgt i32 %i.lp, 1
  br i1 %i.lq, label %bb.hx, label %bb.hy, !prof !11

bb.hx:                                            ; preds = %lean_dec.exit466
  %i.lr = add nsw i32 %i.lp, -1
  store i32 %i.lr, ptr %i.gt, align 4, !tbaa !10
  br label %lean_dec_ref.exit570

bb.hy:                                            ; preds = %lean_dec.exit466
  %.not.i569 = icmp eq i32 %i.lp, 0
  br i1 %.not.i569, label %lean_dec_ref.exit570, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gt) #12
  br label %lean_dec_ref.exit570

lean_dec_ref.exit570:                             ; preds = %bb.hx, %bb.hy, %bb.hz
  %i.ls = tail call ptr @l_Lean_Server_Watchdog_shutdown(ptr noundef nonnull %1) ; 11 uses
  %i.lt = ptrtoint ptr %i.ls to i64               ; 2 uses
  %i.lu = and i64 %i.lt, 1
  %.not.i764 = icmp eq i64 %i.lu, 0
  br i1 %.not.i764, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %lean_dec_ref.exit570
  %i.lv = lshr i64 %i.lt, 1
  %i.lw = trunc i64 %i.lv to i32
  br label %lean_obj_tag.exit767

bb.ib:                                            ; preds = %lean_dec_ref.exit570
  %i.lx = getelementptr i8, ptr %i.ls, i64 4
  %.val.i766 = load i32, ptr %i.lx, align 4
  %i.ly = lshr i32 %.val.i766, 24
  br label %lean_obj_tag.exit767

lean_obj_tag.exit767:                             ; preds = %bb.ia, %bb.ib
  %.0.i765 = phi i32 [ %i.lw, %bb.ia ], [ %i.ly, %bb.ib ]
  %i.lz = icmp eq i32 %.0.i765, 0
  br i1 %i.lz, label %bb.ic, label %bb.im

bb.ic:                                            ; preds = %lean_obj_tag.exit767
  %.val.i768 = load i32, ptr %i.ls, align 4, !tbaa !10 ; 4 uses
  %i.ma = icmp eq i32 %.val.i768, 1
  br i1 %i.ma, label %.preheader.i770, label %bb.ih

.preheader.i770:                                  ; preds = %bb.ic
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !14 ; 4 uses
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = and i64 %i.md, 1
  %.not.i.i772 = icmp eq i64 %i.me, 0
  br i1 %.not.i.i772, label %bb.id, label %lean_dec.exit.i773

bb.id:                                            ; preds = %.preheader.i770
  %i.mf = load i32, ptr %i.mc, align 4, !tbaa !10 ; 3 uses
  %i.mg = icmp sgt i32 %i.mf, 1
  br i1 %i.mg, label %bb.ie, label %bb.if, !prof !11

bb.ie:                                            ; preds = %bb.id
  %i.mh = add nsw i32 %i.mf, -1
  store i32 %i.mh, ptr %i.mc, align 4, !tbaa !10
  br label %lean_dec.exit.i773

bb.if:                                            ; preds = %bb.id
  %.not.i7.i777 = icmp eq i32 %i.mf, 0
  br i1 %.not.i7.i777, label %lean_dec.exit.i773, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mc) #12
  br label %lean_dec.exit.i773

lean_dec.exit.i773:                               ; preds = %bb.ig, %bb.if, %bb.ie, %.preheader.i770
  tail call void @lean_free_object(ptr noundef nonnull %i.ls) #12
  br label %lean_dec_ref_known.exit778

bb.ih:                                            ; preds = %bb.ic
  %i.mi = icmp sgt i32 %.val.i768, 1
  br i1 %i.mi, label %bb.ii, label %bb.ij, !prof !11

bb.ii:                                            ; preds = %bb.ih
  %i.mj = add nsw i32 %.val.i768, -1
  store i32 %i.mj, ptr %i.ls, align 4, !tbaa !10
  br label %lean_dec_ref_known.exit778

bb.ij:                                            ; preds = %bb.ih
  %.not.i8.i769 = icmp eq i32 %.val.i768, 0
  br i1 %.not.i8.i769, label %lean_dec_ref_known.exit778, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ls) #12
  br label %lean_dec_ref_known.exit778

lean_dec_ref_known.exit778:                       ; preds = %lean_dec.exit.i773, %bb.ii, %bb.ij, %bb.ik
  tail call void @lean_inc_heartbeat() #12
  %i.mk = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #12 ; 6 uses
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %bb.il, label %lean_alloc_ctor.exit779

bb.il:                                            ; preds = %lean_dec_ref_known.exit778
  tail call void @lean_internal_panic_out_of_memory() #13
  unreachable

lean_alloc_ctor.exit779:                          ; preds = %lean_dec_ref_known.exit778
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  store i32 1, ptr %i.mk, align 4, !tbaa !10
  store i32 33685528, ptr %i.mm, align 4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store ptr %i.gm, ptr %i.mn, align 8, !tbaa !14
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.mo, align 8, !tbaa !14
  %i.mp = tail call ptr @l_Lean_Server_Watchdog_writeMessage(ptr noundef nonnull %i.mk, ptr noundef nonnull %1)
  br label %lean_dec.exit454.thread1098

bb.im:                                            ; preds = %lean_obj_tag.exit767
  br i1 %.not.i516, label %bb.in, label %lean_dec.exit454.thread1098

bb.in:                                            ; preds = %bb.im
  %i.mq = load i32, ptr %i.gm, align 4, !tbaa !10 ; 3 uses
  %i.mr = icmp sgt i32 %i.mq, 1
  br i1 %i.mr, label %bb.io, label %bb.ip, !prof !11

bb.io:                                            ; preds = %bb.in
  %i.ms = add nsw i32 %i.mq, -1
  store i32 %i.ms, ptr %i.gm, align 4, !tbaa !10
  br label %lean_dec.exit454.thread1098

bb.ip:                                            ; preds = %bb.in
  %.not.i537 = icmp eq i32 %i.mq, 0
  br i1 %.not.i537, label %lean_dec.exit454.thread1098, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gm) #12
  br label %lean_dec.exit454.thread1098

bb.ir:                                            ; preds = %lean_dec_ref_known.exit684
  %i.mt = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !14 ; 13 uses
  %i.mv = ptrtoint ptr %i.mu to i64               ; 2 uses
  %i.mw = and i64 %i.mv, 1
  %.not.i506 = icmp eq i64 %i.mw, 0               ; 2 uses
  br i1 %.not.i506, label %bb.is, label %lean_inc.exit507

bb.is:                                            ; preds = %bb.ir
  %.val.i.i780 = load i32, ptr %i.mu, align 4, !tbaa !10 ; 3 uses
  %i.mx = icmp sgt i32 %.val.i.i780, 0
  br i1 %i.mx, label %bb.it, label %bb.iu, !prof !11

bb.it:                                            ; preds = %bb.is
  %i.my = add nuw i32 %.val.i.i780, 1
  store i32 %i.my, ptr %i.mu, align 4, !tbaa !10
  br label %bb.iw

bb.iu:                                            ; preds = %bb.is
  %.not.i.i781 = icmp eq i32 %.val.i.i780, 0
  br i1 %.not.i.i781, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.mz = atomicrmw add ptr %i.mu, i32 -1 monotonic, align 4 ; 0 uses
  br label %bb.iw

lean_inc.exit507:                                 ; preds = %bb.ir
  %i.na = lshr i64 %i.mv, 1
  %i.nb = trunc i64 %i.na to i32
  br label %lean_obj_tag.exit786

bb.iw:                                            ; preds = %bb.iv, %bb.iu, %bb.it
  %i.nc = getelementptr i8, ptr %i.mu, i64 4
  %.val.i785 = load i32, ptr %i.nc, align 4
  %i.nd = lshr i32 %.val.i785, 24
  br label %lean_obj_tag.exit786

lean_obj_tag.exit786:                             ; preds = %lean_inc.exit507, %bb.iw
  %.0.i784 = phi i32 [ %i.nb, %lean_inc.exit507 ], [ %i.nd, %bb.iw ]
  %i.ne = icmp eq i32 %.0.i784, 1
  br i1 %i.ne, label %bb.ix, label %bb.ll

bb.ix:                                            ; preds = %lean_obj_tag.exit786
  %i.nf = load ptr, ptr %i.gl, align 8, !tbaa !14 ; 4 uses
  %.val.i.i787 = load i32, ptr %i.nf, align 4, !tbaa !10 ; 3 uses
  %i.ng = icmp sgt i32 %.val.i.i787, 0
  br i1 %i.ng, label %bb.iy, label %bb.iz, !prof !11

bb.iy:                                            ; preds = %bb.ix
  %i.nh = add nuw i32 %.val.i.i787, 1
  store i32 %i.nh, ptr %i.nf, align 4, !tbaa !10
  br label %lean_inc_ref.exit789

bb.iz:                                            ; preds = %bb.ix
  %.not.i.i788 = icmp eq i32 %.val.i.i787, 0
  br i1 %.not.i.i788, label %lean_inc_ref.exit789, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.ni = atomicrmw add ptr %i.nf, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit789

lean_inc_ref.exit789:                             ; preds = %bb.iy, %bb.iz, %bb.ja
  %.val.i790 = load i32, ptr %i.fw, align 8, !tbaa !10 ; 4 uses
  %i.nj = icmp eq i32 %.val.i790, 1
  br i1 %i.nj, label %.preheader.i792.preheader, label %bb.jj

.preheader.i792.preheader:                        ; preds = %lean_inc_ref.exit789
  %i.nk = load ptr, ptr %i.gl, align 8, !tbaa !14 ; 4 uses
  %i.nl = ptrtoint ptr %i.nk to i64
  %i.nm = and i64 %i.nl, 1
  %.not.i.i794 = icmp eq i64 %i.nm, 0
  br i1 %.not.i.i794, label %bb.jb, label %lean_dec.exit.i795

bb.jb:                                            ; preds = %.preheader.i792.preheader
  %i.nn = load i32, ptr %i.nk, align 4, !tbaa !10 ; 3 uses
  %i.no = icmp sgt i32 %i.nn, 1
  br i1 %i.no, label %bb.jc, label %bb.jd, !prof !11

bb.jc:                                            ; preds = %bb.jb
  %i.np = add nsw i32 %i.nn, -1
  store i32 %i.np, ptr %i.nk, align 4, !tbaa !10
end_hunk_1
