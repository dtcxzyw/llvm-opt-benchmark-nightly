Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/MatchEqs?download=true
inline.NumInlined: 3942
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__8___redArg___lam__1:bb.a
bb.db:                                            ; preds = %bb.da
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit628

lean_dec_ref.exit628:                             ; preds = %bb.cz, %bb.da, %bb.db
  %i.fc = load i32, ptr %8, align 4, !tbaa !11    ; 3 uses
  %i.fd = icmp sgt i32 %i.fc, 1
  br i1 %i.fd, label %bb.dc, label %bb.dd, !prof !16

bb.dc:                                            ; preds = %lean_dec_ref.exit628
  %i.fe = add nsw i32 %i.fc, -1
  store i32 %i.fe, ptr %8, align 4, !tbaa !11
  br label %lean_dec_ref.exit626

bb.dd:                                            ; preds = %lean_dec_ref.exit628
  %.not.i625 = icmp eq i32 %i.fc, 0
  br i1 %.not.i625, label %lean_dec_ref.exit626, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #7
  br label %lean_dec_ref.exit626

lean_dec_ref.exit626:                             ; preds = %bb.dc, %bb.dd, %bb.de
  %i.ff = load i32, ptr %6, align 4, !tbaa !11    ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 1
  br i1 %i.fg, label %bb.df, label %bb.dg, !prof !16

bb.df:                                            ; preds = %lean_dec_ref.exit626
  %i.fh = add nsw i32 %i.ff, -1
  store i32 %i.fh, ptr %6, align 4, !tbaa !11
  br label %lean_dec_ref.exit624

bb.dg:                                            ; preds = %lean_dec_ref.exit626
  %.not.i623 = icmp eq i32 %i.ff, 0
  br i1 %.not.i623, label %lean_dec_ref.exit624, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #7
  br label %lean_dec_ref.exit624

lean_dec_ref.exit624:                             ; preds = %bb.df, %bb.dg, %bb.dh
  %i.fi = ptrtoint ptr %5 to i64
  %i.fj = and i64 %i.fi, 1
  %.not.i458 = icmp eq i64 %i.fj, 0
  br i1 %.not.i458, label %bb.di, label %lean_dec.exit459

bb.di:                                            ; preds = %lean_dec_ref.exit624
  %i.fk = load i32, ptr %5, align 4, !tbaa !11    ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 1
  br i1 %i.fl, label %bb.dj, label %bb.dk, !prof !16

bb.dj:                                            ; preds = %bb.di
  %i.fm = add nsw i32 %i.fk, -1
  store i32 %i.fm, ptr %5, align 4, !tbaa !11
  br label %lean_dec.exit459

bb.dk:                                            ; preds = %bb.di
  %.not.i487 = icmp eq i32 %i.fk, 0
  br i1 %.not.i487, label %lean_dec.exit459, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit459

lean_dec.exit459:                                 ; preds = %bb.dl, %bb.dk, %bb.dj, %lean_dec_ref.exit624
  %i.fn = load i32, ptr %4, align 4, !tbaa !11    ; 3 uses
  %i.fo = icmp sgt i32 %i.fn, 1
  br i1 %i.fo, label %bb.dm, label %bb.dn, !prof !16

bb.dm:                                            ; preds = %lean_dec.exit459
  %i.fp = add nsw i32 %i.fn, -1
  store i32 %i.fp, ptr %4, align 4, !tbaa !11
  br label %lean_dec_ref.exit622

bb.dn:                                            ; preds = %lean_dec.exit459
  %.not.i621 = icmp eq i32 %i.fn, 0
  br i1 %.not.i621, label %lean_dec_ref.exit622, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec_ref.exit622

lean_dec_ref.exit622:                             ; preds = %bb.dm, %bb.dn, %bb.do
  %i.fq = ptrtoint ptr %2 to i64
  %i.fr = and i64 %i.fq, 1
  %.not.i456 = icmp eq i64 %i.fr, 0
  br i1 %.not.i456, label %bb.dp, label %lean_dec.exit457

bb.dp:                                            ; preds = %lean_dec_ref.exit622
  %i.fs = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 1
  br i1 %i.ft, label %bb.dq, label %bb.dr, !prof !16

bb.dq:                                            ; preds = %bb.dp
  %i.fu = add nsw i32 %i.fs, -1
  store i32 %i.fu, ptr %2, align 4, !tbaa !11
  br label %lean_dec.exit457

bb.dr:                                            ; preds = %bb.dp
  %.not.i489 = icmp eq i32 %i.fs, 0
  br i1 %.not.i489, label %lean_dec.exit457, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit457

lean_dec.exit457:                                 ; preds = %bb.ds, %bb.dr, %bb.dq, %lean_dec_ref.exit622
  %i.fv = ptrtoint ptr %0 to i64
  %i.fw = and i64 %i.fv, 1
  %.not.i454 = icmp eq i64 %i.fw, 0
  br i1 %.not.i454, label %bb.dt, label %lean_dec.exit455

bb.dt:                                            ; preds = %lean_dec.exit457
  %i.fx = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, 1
  br i1 %i.fy, label %bb.du, label %bb.dv, !prof !16

bb.du:                                            ; preds = %bb.dt
  %i.fz = add nsw i32 %i.fx, -1
  store i32 %i.fz, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit455

bb.dv:                                            ; preds = %bb.dt
  %.not.i491 = icmp eq i32 %i.fx, 0
  br i1 %.not.i491, label %lean_dec.exit455, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit455

lean_dec.exit455:                                 ; preds = %bb.dw, %bb.dv, %bb.du, %lean_dec.exit457
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !15 ; 5 uses
  %.val678 = load i32, ptr %i.ck, align 8, !tbaa !11
  %i.gc = icmp eq i32 %.val678, 1
  br i1 %i.gc, label %lean_dec_ref_known.exit717, label %bb.dx

bb.dx:                                            ; preds = %lean_dec.exit455
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = and i64 %i.gd, 1
  %.not.i658 = icmp eq i64 %i.ge, 0
  br i1 %.not.i658, label %bb.dy, label %lean_inc.exit659

bb.dy:                                            ; preds = %bb.dx
  %.val.i.i718 = load i32, ptr %i.gb, align 4, !tbaa !11 ; 3 uses
  %i.gf = icmp sgt i32 %.val.i.i718, 0
  br i1 %i.gf, label %bb.dz, label %bb.ea, !prof !16

bb.dz:                                            ; preds = %bb.dy
  %i.gg = add nuw i32 %.val.i.i718, 1
  store i32 %i.gg, ptr %i.gb, align 4, !tbaa !11
  br label %lean_inc.exit659

bb.ea:                                            ; preds = %bb.dy
  %.not.i.i719 = icmp eq i32 %.val.i.i718, 0
  br i1 %.not.i.i719, label %lean_inc.exit659, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.gh = atomicrmw add ptr %i.gb, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit659

lean_inc.exit659:                                 ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dx
  br i1 %.not.i704, label %bb.ec, label %bb.eg

bb.ec:                                            ; preds = %lean_inc.exit659
  %i.gi = load i32, ptr %i.ck, align 8, !tbaa !11 ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %bb.ed, label %bb.ee, !prof !16

bb.ed:                                            ; preds = %bb.ec
  %i.gk = add nsw i32 %i.gi, -1
  store i32 %i.gk, ptr %i.ck, align 8, !tbaa !11
  br label %bb.eg

bb.ee:                                            ; preds = %bb.ec
  %.not.i493 = icmp eq i32 %i.gi, 0
  br i1 %.not.i493, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ck) #7
  br label %bb.eg

bb.eg:                                            ; preds = %lean_inc.exit659, %bb.ed, %bb.ee, %bb.ef
  tail call void @lean_inc_heartbeat() #7
  %i.gl = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.eh, label %lean_alloc_ctor.exit721

bb.eh:                                            ; preds = %bb.eg
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit721:                          ; preds = %bb.eg
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 1, ptr %i.gl, align 4, !tbaa !11
  store i32 16842768, ptr %i.gn, align 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr %i.gb, ptr %i.go, align 8, !tbaa !15
  br label %lean_dec_ref_known.exit717

.thread:                                          ; preds = %.split994, %lean_nat_eq.exit671, %.split.a, %bb.mw, %lean_nat_eq.exit
  %.0369 = phi i8 [ %i.tb, %lean_nat_eq.exit ], [ 0, %bb.mw ], [ 0, %lean_nat_eq.exit671 ], [ 0, %.split.a ], [ 0, %.split994 ]
  %i.gp = load atomic i32, ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__8___redArg___lam__1___closed__3_once seq_cst, align 4, !tbaa !19
  %i.gq = icmp eq i32 %i.gp, 1
  br i1 %i.gq, label %bb.ei, label %bb.ej, !prof !16

bb.ei:                                            ; preds = %.thread
  %i.gr = load ptr, ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__8___redArg___lam__1___closed__3, align 8, !tbaa !15
  br label %lean_obj_once.exit723

bb.ej:                                            ; preds = %.thread
  %i.gs = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__8___redArg___lam__1___closed__3, ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__8___redArg___lam__1___closed__3_once, ptr noundef nonnull @_init_l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__8___redArg___lam__1___closed__3) #7
  br label %lean_obj_once.exit723

lean_obj_once.exit723:                            ; preds = %bb.ei, %bb.ej
  %.0.i722 = phi ptr [ %i.gr, %bb.ei ], [ %i.gs, %bb.ej ]
  %.val.i.i724 = load i32, ptr %i.ab, align 4, !tbaa !11 ; 3 uses
  %i.gt = icmp sgt i32 %.val.i.i724, 0
  br i1 %i.gt, label %bb.ek, label %bb.el, !prof !16

bb.ek:                                            ; preds = %lean_obj_once.exit723
  %i.gu = add nuw i32 %.val.i.i724, 1
  store i32 %i.gu, ptr %i.ab, align 4, !tbaa !11
  br label %lean_inc_ref.exit726

bb.el:                                            ; preds = %lean_obj_once.exit723
  %.not.i.i725 = icmp eq i32 %.val.i.i724, 0
  br i1 %.not.i.i725, label %lean_inc_ref.exit726, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.gv = atomicrmw add ptr %i.ab, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit726

lean_inc_ref.exit726:                             ; preds = %bb.ek, %bb.el, %bb.em
  %i.gw = tail call ptr @l_Array_reverse___redArg(ptr noundef nonnull %i.ab) #7 ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  %.val685 = load i64, ptr %i.gx, align 8, !tbaa !13
  %i.gy = shl i64 %.val685, 1
  %i.gz = or disjoint i64 %i.gy, 1
  %i.ha = inttoptr i64 %i.gz to ptr
  br i1 %.not803, label %bb.en, label %lean_inc.exit657

bb.en:                                            ; preds = %lean_inc_ref.exit726
  %.val.i.i727 = load i32, ptr %5, align 4, !tbaa !11 ; 3 uses
  %i.hb = icmp sgt i32 %.val.i.i727, 0
  br i1 %i.hb, label %bb.eo, label %bb.ep, !prof !16

bb.eo:                                            ; preds = %bb.en
  %i.hc = add nuw i32 %.val.i.i727, 1
  store i32 %i.hc, ptr %5, align 4, !tbaa !11
  br label %lean_inc.exit657

bb.ep:                                            ; preds = %bb.en
  %.not.i.i728 = icmp eq i32 %.val.i.i727, 0
  br i1 %.not.i.i728, label %lean_inc.exit657, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.hd = atomicrmw add ptr %5, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit657

lean_inc.exit657:                                 ; preds = %bb.eq, %bb.ep, %bb.eo, %lean_inc_ref.exit726
  %i.he = tail call ptr @l_Array_toSubarray___redArg(ptr noundef nonnull %i.gw, ptr noundef %5, ptr noundef nonnull %i.ha) #7
  %.val.i.i730 = load i32, ptr %6, align 4, !tbaa !11 ; 3 uses
  %i.hf = icmp sgt i32 %.val.i.i730, 0
  br i1 %i.hf, label %bb.er, label %bb.es, !prof !16

bb.er:                                            ; preds = %lean_inc.exit657
  %i.hg = add nuw i32 %.val.i.i730, 1
  store i32 %i.hg, ptr %6, align 4, !tbaa !11
  br label %lean_inc_ref.exit732

bb.es:                                            ; preds = %lean_inc.exit657
  %.not.i.i731 = icmp eq i32 %.val.i.i730, 0
  br i1 %.not.i.i731, label %lean_inc_ref.exit732, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.hh = atomicrmw add ptr %6, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit732

lean_inc_ref.exit732:                             ; preds = %bb.er, %bb.es, %bb.et
  %i.hi = tail call ptr @l___private_Init_WFExtrinsicFix_0__WellFounded_opaqueFix_u2082___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__6___redArg(ptr noundef nonnull %6, ptr noundef nonnull %4)
  %i.hj = tail call ptr @l_Array_reverse___redArg(ptr noundef %i.hi) #7 ; 5 uses
  tail call void @lean_inc_heartbeat() #7
  %i.hk = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.eu, label %lean_alloc_ctor.exit733

bb.eu:                                            ; preds = %lean_inc_ref.exit732
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit733:                          ; preds = %lean_inc_ref.exit732
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store i32 1, ptr %i.hk, align 4, !tbaa !11
  store i32 131096, ptr %i.hm, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store ptr %.0.i722, ptr %i.hn, align 8, !tbaa !15
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store ptr %i.he, ptr %i.ho, align 8, !tbaa !15
  %i.hp = getelementptr i8, ptr %i.hj, i64 8
  %.val679 = load i64, ptr %i.hp, align 8, !tbaa !13
  %i.hq = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__7(ptr noundef %i.hj, i64 noundef %.val679, i64 noundef 0, ptr noundef nonnull %i.hk, ptr noundef %24, ptr noundef %25, ptr noundef nonnull %26, ptr noundef %27) ; 13 uses
  %i.hr = load i32, ptr %i.hj, align 8, !tbaa !11 ; 3 uses
  %i.hs = icmp sgt i32 %i.hr, 1
  br i1 %i.hs, label %bb.ev, label %bb.ew, !prof !16

bb.ev:                                            ; preds = %lean_alloc_ctor.exit733
  %i.ht = add nsw i32 %i.hr, -1
  store i32 %i.ht, ptr %i.hj, align 8, !tbaa !11
  br label %lean_dec_ref.exit620

bb.ew:                                            ; preds = %lean_alloc_ctor.exit733
  %.not.i619 = icmp eq i32 %i.hr, 0
  br i1 %.not.i619, label %lean_dec_ref.exit620, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hj) #7
  br label %lean_dec_ref.exit620

lean_dec_ref.exit620:                             ; preds = %bb.ev, %bb.ew, %bb.ex
  %i.hu = ptrtoint ptr %i.hq to i64               ; 2 uses
  %i.hv = and i64 %i.hu, 1
  %.not.i734 = icmp eq i64 %i.hv, 0               ; 2 uses
  br i1 %.not.i734, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %lean_dec_ref.exit620
  %i.hw = lshr i64 %i.hu, 1
  %i.hx = trunc i64 %i.hw to i32
  br label %lean_obj_tag.exit737

bb.ez:                                            ; preds = %lean_dec_ref.exit620
  %i.hy = getelementptr i8, ptr %i.hq, i64 4
  %.val.i736 = load i32, ptr %i.hy, align 4
  %i.hz = lshr i32 %.val.i736, 24
  br label %lean_obj_tag.exit737

lean_obj_tag.exit737:                             ; preds = %bb.ey, %bb.ez
  %.0.i735 = phi i32 [ %i.hx, %bb.ey ], [ %i.hz, %bb.ez ]
  %i.ia = icmp eq i32 %.0.i735, 0
  br i1 %i.ia, label %bb.fa, label %bb.ju

bb.fa:                                            ; preds = %lean_obj_tag.exit737
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !15 ; 8 uses
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = and i64 %i.id, 1
  %.not.i654 = icmp eq i64 %i.ie, 0               ; 2 uses
  br i1 %.not.i654, label %bb.fb, label %lean_inc.exit655

bb.fb:                                            ; preds = %bb.fa
  %.val.i.i738 = load i32, ptr %i.ic, align 4, !tbaa !11 ; 3 uses
  %i.if = icmp sgt i32 %.val.i.i738, 0
  br i1 %i.if, label %bb.fc, label %bb.fd, !prof !16

bb.fc:                                            ; preds = %bb.fb
  %i.ig = add nuw i32 %.val.i.i738, 1
  store i32 %i.ig, ptr %i.ic, align 4, !tbaa !11
  br label %lean_inc.exit655

bb.fd:                                            ; preds = %bb.fb
  %.not.i.i739 = icmp eq i32 %.val.i.i738, 0
  br i1 %.not.i.i739, label %lean_inc.exit655, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ih = atomicrmw add ptr %i.ic, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit655

lean_inc.exit655:                                 ; preds = %bb.fe, %bb.fd, %bb.fc, %bb.fa
  %.val.i741 = load i32, ptr %i.hq, align 8, !tbaa !11 ; 4 uses
  %i.ii = icmp eq i32 %.val.i741, 1
  br i1 %i.ii, label %.preheader.i743, label %bb.fj

.preheader.i743:                                  ; preds = %lean_inc.exit655
  %i.ij = load ptr, ptr %i.ib, align 8, !tbaa !15 ; 4 uses
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = and i64 %i.ik, 1
  %.not.i.i745 = icmp eq i64 %i.il, 0
  br i1 %.not.i.i745, label %bb.ff, label %lean_dec.exit.i746

bb.ff:                                            ; preds = %.preheader.i743
  %i.im = load i32, ptr %i.ij, align 4, !tbaa !11 ; 3 uses
  %i.in = icmp sgt i32 %i.im, 1
  br i1 %i.in, label %bb.fg, label %bb.fh, !prof !16

bb.fg:                                            ; preds = %bb.ff
  %i.io = add nsw i32 %i.im, -1
  store i32 %i.io, ptr %i.ij, align 4, !tbaa !11
  br label %lean_dec.exit.i746

bb.fh:                                            ; preds = %bb.ff
  %.not.i7.i749 = icmp eq i32 %i.im, 0
  br i1 %.not.i7.i749, label %lean_dec.exit.i746, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ij) #7
  br label %lean_dec.exit.i746

lean_dec.exit.i746:                               ; preds = %bb.fi, %bb.fh, %bb.fg, %.preheader.i743
  tail call void @lean_free_object(ptr noundef nonnull %i.hq) #7
  br label %lean_dec_ref_known.exit750

end_hunk_0
begin_hunk_1_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__8___redArg___lam__1:bb.a

bb.ln:                                            ; preds = %bb.lm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #7
  br label %lean_dec.exit419

lean_dec.exit419:                                 ; preds = %bb.ln, %bb.lm, %bb.ll, %lean_dec_ref.exit584
  %i.rm = load i32, ptr %9, align 4, !tbaa !11    ; 3 uses
  %i.rn = icmp sgt i32 %i.rm, 1
  br i1 %i.rn, label %bb.lo, label %bb.lp, !prof !16

bb.lo:                                            ; preds = %lean_dec.exit419
  %i.ro = add nsw i32 %i.rm, -1
  store i32 %i.ro, ptr %9, align 4, !tbaa !11
  br label %lean_dec_ref.exit582

bb.lp:                                            ; preds = %lean_dec.exit419
  %.not.i581 = icmp eq i32 %i.rm, 0
  br i1 %.not.i581, label %lean_dec_ref.exit582, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit582

lean_dec_ref.exit582:                             ; preds = %bb.lo, %bb.lp, %bb.lq
  %i.rp = load i32, ptr %8, align 4, !tbaa !11    ; 3 uses
  %i.rq = icmp sgt i32 %i.rp, 1
  br i1 %i.rq, label %bb.lr, label %bb.ls, !prof !16

bb.lr:                                            ; preds = %lean_dec_ref.exit582
  %i.rr = add nsw i32 %i.rp, -1
  store i32 %i.rr, ptr %8, align 4, !tbaa !11
  br label %lean_dec_ref.exit580

bb.ls:                                            ; preds = %lean_dec_ref.exit582
  %.not.i579 = icmp eq i32 %i.rp, 0
  br i1 %.not.i579, label %lean_dec_ref.exit580, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #7
  br label %lean_dec_ref.exit580

lean_dec_ref.exit580:                             ; preds = %bb.lr, %bb.ls, %bb.lt
  %i.rs = load i32, ptr %6, align 4, !tbaa !11    ; 3 uses
  %i.rt = icmp sgt i32 %i.rs, 1
  br i1 %i.rt, label %bb.lu, label %bb.lv, !prof !16

bb.lu:                                            ; preds = %lean_dec_ref.exit580
  %i.ru = add nsw i32 %i.rs, -1
  store i32 %i.ru, ptr %6, align 4, !tbaa !11
  br label %lean_dec_ref.exit578

bb.lv:                                            ; preds = %lean_dec_ref.exit580
  %.not.i577 = icmp eq i32 %i.rs, 0
  br i1 %.not.i577, label %lean_dec_ref.exit578, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #7
  br label %lean_dec_ref.exit578

lean_dec_ref.exit578:                             ; preds = %bb.lu, %bb.lv, %bb.lw
  br i1 %.not803, label %bb.lx, label %lean_dec.exit417

bb.lx:                                            ; preds = %lean_dec_ref.exit578
  %i.rv = load i32, ptr %5, align 4, !tbaa !11    ; 3 uses
  %i.rw = icmp sgt i32 %i.rv, 1
  br i1 %i.rw, label %bb.ly, label %bb.lz, !prof !16

bb.ly:                                            ; preds = %bb.lx
  %i.rx = add nsw i32 %i.rv, -1
  store i32 %i.rx, ptr %5, align 4, !tbaa !11
  br label %lean_dec.exit417

bb.lz:                                            ; preds = %bb.lx
  %.not.i529 = icmp eq i32 %i.rv, 0
  br i1 %.not.i529, label %lean_dec.exit417, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit417

lean_dec.exit417:                                 ; preds = %bb.ma, %bb.lz, %bb.ly, %lean_dec_ref.exit578
  %i.ry = ptrtoint ptr %2 to i64
  %i.rz = and i64 %i.ry, 1
  %.not.i414 = icmp eq i64 %i.rz, 0
  br i1 %.not.i414, label %bb.mb, label %lean_dec.exit415

bb.mb:                                            ; preds = %lean_dec.exit417
  %i.sa = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.sb = icmp sgt i32 %i.sa, 1
  br i1 %i.sb, label %bb.mc, label %bb.md, !prof !16

bb.mc:                                            ; preds = %bb.mb
  %i.sc = add nsw i32 %i.sa, -1
  store i32 %i.sc, ptr %2, align 4, !tbaa !11
  br label %lean_dec.exit415

bb.md:                                            ; preds = %bb.mb
  %.not.i531 = icmp eq i32 %i.sa, 0
  br i1 %.not.i531, label %lean_dec.exit415, label %bb.me

bb.me:                                            ; preds = %bb.md
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit415

lean_dec.exit415:                                 ; preds = %bb.me, %bb.md, %bb.mc, %lean_dec.exit417
  %i.sd = ptrtoint ptr %0 to i64
  %i.se = and i64 %i.sd, 1
  %.not.i412 = icmp eq i64 %i.se, 0
  br i1 %.not.i412, label %bb.mf, label %lean_dec.exit413

bb.mf:                                            ; preds = %lean_dec.exit415
  %i.sf = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.sg = icmp sgt i32 %i.sf, 1
  br i1 %i.sg, label %bb.mg, label %bb.mh, !prof !16

bb.mg:                                            ; preds = %bb.mf
  %i.sh = add nsw i32 %i.sf, -1
  store i32 %i.sh, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit413

bb.mh:                                            ; preds = %bb.mf
  %.not.i533 = icmp eq i32 %i.sf, 0
  br i1 %.not.i533, label %lean_dec.exit413, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit413

lean_dec.exit413:                                 ; preds = %bb.mi, %bb.mh, %bb.mg, %lean_dec.exit415
  %i.si = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !15 ; 5 uses
  %.val676 = load i32, ptr %i.hq, align 8, !tbaa !11
  %i.sk = icmp eq i32 %.val676, 1
  br i1 %i.sk, label %lean_dec_ref_known.exit717, label %bb.mj

bb.mj:                                            ; preds = %lean_dec.exit413
  %i.sl = ptrtoint ptr %i.sj to i64
  %i.sm = and i64 %i.sl, 1
  %.not.i646 = icmp eq i64 %i.sm, 0
  br i1 %.not.i646, label %bb.mk, label %lean_inc.exit647

bb.mk:                                            ; preds = %bb.mj
  %.val.i.i782 = load i32, ptr %i.sj, align 4, !tbaa !11 ; 3 uses
  %i.sn = icmp sgt i32 %.val.i.i782, 0
  br i1 %i.sn, label %bb.ml, label %bb.mm, !prof !16

bb.ml:                                            ; preds = %bb.mk
  %i.so = add nuw i32 %.val.i.i782, 1
  store i32 %i.so, ptr %i.sj, align 4, !tbaa !11
  br label %lean_inc.exit647

bb.mm:                                            ; preds = %bb.mk
  %.not.i.i783 = icmp eq i32 %.val.i.i782, 0
  br i1 %.not.i.i783, label %lean_inc.exit647, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.sp = atomicrmw add ptr %i.sj, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit647

lean_inc.exit647:                                 ; preds = %bb.mn, %bb.mm, %bb.ml, %bb.mj
  br i1 %.not.i734, label %bb.mo, label %bb.ms

bb.mo:                                            ; preds = %lean_inc.exit647
  %i.sq = load i32, ptr %i.hq, align 8, !tbaa !11 ; 3 uses
  %i.sr = icmp sgt i32 %i.sq, 1
  br i1 %i.sr, label %bb.mp, label %bb.mq, !prof !16

bb.mp:                                            ; preds = %bb.mo
  %i.ss = add nsw i32 %i.sq, -1
  store i32 %i.ss, ptr %i.hq, align 8, !tbaa !11
  br label %bb.ms

bb.mq:                                            ; preds = %bb.mo
  %.not.i535 = icmp eq i32 %i.sq, 0
  br i1 %.not.i535, label %bb.ms, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hq) #7
  br label %bb.ms

bb.ms:                                            ; preds = %lean_inc.exit647, %bb.mp, %bb.mq, %bb.mr
  tail call void @lean_inc_heartbeat() #7
  %i.st = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.su = icmp eq ptr %i.st, null
  br i1 %i.su, label %bb.mt, label %lean_alloc_ctor.exit785

bb.mt:                                            ; preds = %bb.ms
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit785:                          ; preds = %bb.ms
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 4
  store i32 1, ptr %i.st, align 4, !tbaa !11
  store i32 16842768, ptr %i.sv, align 4
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  store ptr %i.sj, ptr %i.sw, align 8, !tbaa !15
  br label %lean_dec_ref_known.exit717

bb.mu:                                            ; preds = %.split994, %bb.mw
  %i.sx = ptrtoint ptr %18 to i64
  %28 = and i64 %i.tg, 1
  %i.sy = and i64 %28, %i.sx
  %or.cond.not = icmp eq i64 %i.sy, 0
  br i1 %or.cond.not, label %.critedge.i667, label %bb.mv, !prof !17

bb.mv:                                            ; preds = %bb.mu
  %i.sz = icmp eq ptr %18, %5
  br label %lean_nat_eq.exit

.critedge.i667:                                   ; preds = %bb.mu
  %i.ta = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %18, ptr noundef %5) #7
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.mv, %.critedge.i667
  %.0.i = phi i1 [ %i.sz, %bb.mv ], [ %i.ta, %.critedge.i667 ]
  %i.tb = zext i1 %.0.i to i8
  br label %.thread

lean_dec_ref_known.exit717.thread:                ; preds = %bb.bd, %bb.bc, %lean_dec.exit.i713, %bb.be, %lean_obj_once.exit698, %lean_dec_ref_known.exit
  %i.tc = getelementptr i8, ptr %19, i64 8        ; 2 uses
  %.val682 = load i64, ptr %i.tc, align 8, !tbaa !13
  %i.td = shl i64 %.val682, 1
  %i.te = or disjoint i64 %i.td, 1
  %i.tf = inttoptr i64 %i.te to ptr               ; 2 uses
  %i.tg = ptrtoint ptr %5 to i64                  ; 2 uses
  %i.th = and i64 %i.tg, 1
  %.not803 = icmp eq i64 %i.th, 0                 ; 4 uses
  br i1 %.not803, label %lean_nat_eq.exit671, label %.split.a, !prof !9

.split.a:                                         ; preds = %lean_dec_ref_known.exit717.thread
  %i.ti = icmp eq ptr %5, %i.tf
  br i1 %i.ti, label %.split994, label %.thread

lean_nat_eq.exit671:                              ; preds = %lean_dec_ref_known.exit717.thread
  %i.tj = tail call zeroext i1 @lean_nat_big_eq(ptr noundef nonnull %i.tf, ptr noundef %5) #7
  br i1 %i.tj, label %bb.mw, label %.thread

.split994:                                        ; preds = %.split.a
  %i.tk = getelementptr i8, ptr %i.at, i64 8
  %.val681 = load i64, ptr %i.tk, align 8, !tbaa !13
  %i.tl = shl i64 %.val681, 1
  %i.tm = or disjoint i64 %i.tl, 1
  %i.tn = inttoptr i64 %i.tm to ptr
  %i.to = icmp eq ptr %5, %i.tn
  br i1 %i.to, label %bb.mu, label %.thread

bb.mw:                                            ; preds = %lean_nat_eq.exit671
  %i.tp = getelementptr i8, ptr %i.at, i64 8
  %.val681993 = load i64, ptr %i.tp, align 8, !tbaa !13
  %i.tq = shl i64 %.val681993, 1
  %i.tr = or disjoint i64 %i.tq, 1
  %i.ts = inttoptr i64 %i.tr to ptr
  %i.tt = tail call zeroext i1 @lean_nat_big_eq(ptr noundef nonnull %i.ts, ptr noundef %5) #7
  br i1 %i.tt, label %bb.mu, label %.thread

bb.mx:                                            ; preds = %lean_obj_tag.exit
  %i.tu = load i32, ptr %i.ab, align 4, !tbaa !11 ; 3 uses
  %i.tv = icmp sgt i32 %i.tu, 1
  br i1 %i.tv, label %bb.my, label %bb.mz, !prof !16

bb.my:                                            ; preds = %bb.mx
  %i.tw = add nsw i32 %i.tu, -1
  store i32 %i.tw, ptr %i.ab, align 4, !tbaa !11
  br label %lean_dec_ref.exit576

bb.mz:                                            ; preds = %bb.mx
  %.not.i575 = icmp eq i32 %i.tu, 0
  br i1 %.not.i575, label %lean_dec_ref.exit576, label %bb.na

bb.na:                                            ; preds = %bb.mz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #7
  br label %lean_dec_ref.exit576

lean_dec_ref.exit576:                             ; preds = %bb.my, %bb.mz, %bb.na
  %i.tx = load i32, ptr %22, align 4, !tbaa !11   ; 3 uses
  %i.ty = icmp sgt i32 %i.tx, 1
  br i1 %i.ty, label %bb.nb, label %bb.nc, !prof !16

bb.nb:                                            ; preds = %lean_dec_ref.exit576
  %i.tz = add nsw i32 %i.tx, -1
  store i32 %i.tz, ptr %22, align 4, !tbaa !11
  br label %lean_dec_ref.exit574

bb.nc:                                            ; preds = %lean_dec_ref.exit576
  %.not.i573 = icmp eq i32 %i.tx, 0
  br i1 %.not.i573, label %lean_dec_ref.exit574, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %22) #7
  br label %lean_dec_ref.exit574

lean_dec_ref.exit574:                             ; preds = %bb.nb, %bb.nc, %bb.nd
  %i.ua = load i32, ptr %21, align 4, !tbaa !11   ; 3 uses
  %i.ub = icmp sgt i32 %i.ua, 1
  br i1 %i.ub, label %bb.ne, label %bb.nf, !prof !16

bb.ne:                                            ; preds = %lean_dec_ref.exit574
  %i.uc = add nsw i32 %i.ua, -1
  store i32 %i.uc, ptr %21, align 4, !tbaa !11
  br label %lean_dec_ref.exit572

bb.nf:                                            ; preds = %lean_dec_ref.exit574
  %.not.i571 = icmp eq i32 %i.ua, 0
  br i1 %.not.i571, label %lean_dec_ref.exit572, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %21) #7
  br label %lean_dec_ref.exit572

lean_dec_ref.exit572:                             ; preds = %bb.ne, %bb.nf, %bb.ng
  %i.ud = load i32, ptr %19, align 4, !tbaa !11   ; 3 uses
  %i.ue = icmp sgt i32 %i.ud, 1
  br i1 %i.ue, label %bb.nh, label %bb.ni, !prof !16

bb.nh:                                            ; preds = %lean_dec_ref.exit572
  %i.uf = add nsw i32 %i.ud, -1
  store i32 %i.uf, ptr %19, align 4, !tbaa !11
  br label %lean_dec_ref.exit570

bb.ni:                                            ; preds = %lean_dec_ref.exit572
  %.not.i569 = icmp eq i32 %i.ud, 0
  br i1 %.not.i569, label %lean_dec_ref.exit570, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %19) #7
  br label %lean_dec_ref.exit570

lean_dec_ref.exit570:                             ; preds = %bb.nh, %bb.ni, %bb.nj
  %i.ug = load i32, ptr %17, align 4, !tbaa !11   ; 3 uses
  %i.uh = icmp sgt i32 %i.ug, 1
  br i1 %i.uh, label %bb.nk, label %bb.nl, !prof !16

bb.nk:                                            ; preds = %lean_dec_ref.exit570
  %i.ui = add nsw i32 %i.ug, -1
  store i32 %i.ui, ptr %17, align 4, !tbaa !11
  br label %lean_dec_ref.exit568

bb.nl:                                            ; preds = %lean_dec_ref.exit570
  %.not.i567 = icmp eq i32 %i.ug, 0
  br i1 %.not.i567, label %lean_dec_ref.exit568, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %17) #7
  br label %lean_dec_ref.exit568

lean_dec_ref.exit568:                             ; preds = %bb.nk, %bb.nl, %bb.nm
  %i.uj = ptrtoint ptr %16 to i64
  %i.uk = and i64 %i.uj, 1
  %.not.i408 = icmp eq i64 %i.uk, 0
  br i1 %.not.i408, label %bb.nn, label %lean_dec.exit409

bb.nn:                                            ; preds = %lean_dec_ref.exit568
  %i.ul = load i32, ptr %16, align 4, !tbaa !11   ; 3 uses
  %i.um = icmp sgt i32 %i.ul, 1
  br i1 %i.um, label %bb.no, label %bb.np, !prof !16

bb.no:                                            ; preds = %bb.nn
  %i.un = add nsw i32 %i.ul, -1
  store i32 %i.un, ptr %16, align 4, !tbaa !11
  br label %lean_dec.exit409

bb.np:                                            ; preds = %bb.nn
  %.not.i537 = icmp eq i32 %i.ul, 0
  br i1 %.not.i537, label %lean_dec.exit409, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %16) #7
  br label %lean_dec.exit409

lean_dec.exit409:                                 ; preds = %bb.nq, %bb.np, %bb.no, %lean_dec_ref.exit568
  %i.uo = ptrtoint ptr %15 to i64
  %i.up = and i64 %i.uo, 1
  %.not.i406 = icmp eq i64 %i.up, 0
  br i1 %.not.i406, label %bb.nr, label %lean_dec.exit407

bb.nr:                                            ; preds = %lean_dec.exit409
  %i.uq = load i32, ptr %15, align 4, !tbaa !11   ; 3 uses
  %i.ur = icmp sgt i32 %i.uq, 1
  br i1 %i.ur, label %bb.ns, label %bb.nt, !prof !16

bb.ns:                                            ; preds = %bb.nr
  %i.us = add nsw i32 %i.uq, -1
  store i32 %i.us, ptr %15, align 4, !tbaa !11
  br label %lean_dec.exit407

bb.nt:                                            ; preds = %bb.nr
  %.not.i539 = icmp eq i32 %i.uq, 0
  br i1 %.not.i539, label %lean_dec.exit407, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %15) #7
  br label %lean_dec.exit407

lean_dec.exit407:                                 ; preds = %bb.nu, %bb.nt, %bb.ns, %lean_dec.exit409
  %i.ut = ptrtoint ptr %14 to i64
  %i.uu = and i64 %i.ut, 1
  %.not.i404 = icmp eq i64 %i.uu, 0
  br i1 %.not.i404, label %bb.nv, label %lean_dec.exit405

bb.nv:                                            ; preds = %lean_dec.exit407
  %i.uv = load i32, ptr %14, align 4, !tbaa !11   ; 3 uses
  %i.uw = icmp sgt i32 %i.uv, 1
  br i1 %i.uw, label %bb.nw, label %bb.nx, !prof !16

bb.nw:                                            ; preds = %bb.nv
  %i.ux = add nsw i32 %i.uv, -1
  store i32 %i.ux, ptr %14, align 4, !tbaa !11
  br label %lean_dec.exit405

bb.nx:                                            ; preds = %bb.nv
  %.not.i541 = icmp eq i32 %i.uv, 0
  br i1 %.not.i541, label %lean_dec.exit405, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %14) #7
  br label %lean_dec.exit405

lean_dec.exit405:                                 ; preds = %bb.ny, %bb.nx, %bb.nw, %lean_dec.exit407
  %i.uy = ptrtoint ptr %13 to i64
  %i.uz = and i64 %i.uy, 1
  %.not.i402 = icmp eq i64 %i.uz, 0
  br i1 %.not.i402, label %bb.nz, label %lean_dec.exit403

bb.nz:                                            ; preds = %lean_dec.exit405
  %i.va = load i32, ptr %13, align 4, !tbaa !11   ; 3 uses
  %i.vb = icmp sgt i32 %i.va, 1
end_hunk_1
begin_hunk_2_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__8___redArg___boxed:bb.a
bb.p:                                             ; preds = %lean_dec_ref.exit53
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !11  ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 1
  br i1 %i.bd, label %bb.q, label %bb.r, !prof !16

bb.q:                                             ; preds = %bb.p
  %i.be = add nsw i32 %i.bc, -1
  store i32 %i.be, ptr %i.a, align 4, !tbaa !11
  br label %lean_dec.exit

bb.r:                                             ; preds = %bb.p
  %.not.i50 = icmp eq i32 %i.bc, 0
  br i1 %.not.i50, label %lean_dec.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit53
  ret ptr %i.aj
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go___lam__1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr nofree noundef readonly captures(none) %16, ptr noundef %17, ptr nofree readnone captures(none) %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i598 = icmp eq i64 %i.b, 0                ; 3 uses
  br i1 %.not.i598, label %bb.b, label %lean_inc.exit599

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %2, align 4, !tbaa !11 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %2, align 4, !tbaa !11
  br label %lean_inc.exit599

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit599, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %2, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit599

lean_inc.exit599:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.val.i.i610 = load i32, ptr %17, align 4, !tbaa !11 ; 3 uses
  %i.f = icmp sgt i32 %.val.i.i610, 0
  br i1 %i.f, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %lean_inc.exit599
  %i.g = add nuw i32 %.val.i.i610, 1
  store i32 %i.g, ptr %17, align 4, !tbaa !11
  br label %lean_inc_ref.exit612

bb.g:                                             ; preds = %lean_inc.exit599
  %.not.i.i611 = icmp eq i32 %.val.i.i610, 0
  br i1 %.not.i.i611, label %lean_inc_ref.exit612, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = atomicrmw add ptr %17, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit612

lean_inc_ref.exit612:                             ; preds = %bb.f, %bb.g, %bb.h
  %i.i = tail call ptr @l_Array_toSubarray___redArg(ptr noundef nonnull %17, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %2) #7
  %i.j = tail call ptr @l_Lean_Meta_Match_MatcherInfo_getMotivePos(ptr noundef %3) #7 ; 4 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not.i613 = icmp eq i64 %i.l, 0                ; 2 uses
  br i1 %.not.i613, label %lean_array_uget.exit.i, label %bb.i

bb.i:                                             ; preds = %lean_inc_ref.exit612
  %i.m = lshr i64 %i.k, 1                         ; 2 uses
  %i.n = getelementptr i8, ptr %17, i64 8
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !13
  %i.o = icmp ult i64 %i.m, %.val.i
  br i1 %i.o, label %bb.j, label %lean_array_uget.exit.i

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 8 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, 1
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %bb.k, label %lean_array_get.exit.thread

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i = load i32, ptr %i.r, align 4, !tbaa !11 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.u, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.v = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.v, ptr %i.r, align 4, !tbaa !11
  br label %lean_array_get.exit.thread

bb.m:                                             ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %lean_array_get.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = atomicrmw add ptr %i.r, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_array_get.exit.thread

lean_array_uget.exit.i:                           ; preds = %bb.i, %lean_inc_ref.exit612
  %i.x = ptrtoint ptr %4 to i64
  %i.y = and i64 %i.x, 1
  %.not.i.i614 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i614, label %bb.o, label %lean_array_get.exit

bb.o:                                             ; preds = %lean_array_uget.exit.i
  %.val.i.i.i = load i32, ptr %4, align 4, !tbaa !11 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.z, label %bb.p, label %bb.q, !prof !16

bb.p:                                             ; preds = %bb.o
  %i.aa = add nuw i32 %.val.i.i.i, 1
  store i32 %i.aa, ptr %4, align 4, !tbaa !11
  br label %lean_array_get.exit

bb.q:                                             ; preds = %bb.o
  %.not.i.i11.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i11.i, label %lean_array_get.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = atomicrmw add ptr %4, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_array_get.exit

lean_array_get.exit:                              ; preds = %lean_array_uget.exit.i, %bb.p, %bb.q, %bb.r
  %i.ac = tail call ptr @lean_array_get_panic(ptr noundef %4) #7 ; 4 uses
  br i1 %.not.i613, label %bb.s, label %lean_array_get.exit.thread

bb.s:                                             ; preds = %lean_array_get.exit
  %i.ad = load i32, ptr %i.j, align 4, !tbaa !11  ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.t, label %bb.u, !prof !16

bb.t:                                             ; preds = %bb.s
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %i.j, align 4, !tbaa !11
  br label %lean_array_get.exit.thread

bb.u:                                             ; preds = %bb.s
  %.not.i456 = icmp eq i32 %i.ad, 0
  br i1 %.not.i456, label %lean_array_get.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #7
  br label %lean_array_get.exit.thread

lean_array_get.exit.thread:                       ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %lean_array_get.exit, %bb.t, %bb.u, %bb.v
  %.1.i615994 = phi ptr [ %i.ac, %bb.v ], [ %i.ac, %lean_array_get.exit ], [ %i.ac, %bb.t ], [ %i.ac, %bb.u ], [ %i.r, %bb.j ], [ %i.r, %bb.l ], [ %i.r, %bb.m ], [ %i.r, %bb.n ]
  %i.ag = getelementptr i8, ptr %17, i64 8
  %.val609 = load i64, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %i.ah = shl i64 %.val609, 1
  %i.ai = or disjoint i64 %i.ah, 1
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = tail call ptr @l_Lean_Meta_Match_MatcherInfo_numAlts(ptr noundef %3) #7 ; 5 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = and i64 %i.al, 1
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %bb.y, label %bb.w, !prof !9

bb.w:                                             ; preds = %lean_array_get.exit.thread
  %i.an = and i64 %.val609, 9223372036854775807   ; 2 uses
  %i.ao = lshr i64 %i.al, 1                       ; 2 uses
  %i.ap = icmp samesign ult i64 %i.an, %i.ao
  br i1 %i.ap, label %lean_dec.exit453, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = sub nuw nsw i64 %i.an, %i.ao
  %i.ar = shl nuw i64 %i.aq, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = inttoptr i64 %i.as to ptr
  br label %lean_dec.exit453

bb.y:                                             ; preds = %lean_array_get.exit.thread
  %i.au = tail call ptr @lean_nat_big_sub(ptr noundef nonnull %i.aj, ptr noundef %i.ak) #7 ; 3 uses
  %i.av = load i32, ptr %i.ak, align 4, !tbaa !11 ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %bb.z, label %bb.aa, !prof !16

bb.z:                                             ; preds = %bb.y
  %i.ax = add nsw i32 %i.av, -1
  store i32 %i.ax, ptr %i.ak, align 4, !tbaa !11
  br label %lean_dec.exit453

bb.aa:                                            ; preds = %bb.y
  %.not.i457 = icmp eq i32 %i.av, 0
  br i1 %.not.i457, label %lean_dec.exit453, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ak) #7
  br label %lean_dec.exit453

lean_dec.exit453:                                 ; preds = %bb.x, %bb.w, %bb.ab, %bb.aa, %bb.z
  %.1.i361996 = phi ptr [ %i.au, %bb.ab ], [ %i.au, %bb.z ], [ %i.au, %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.w ], [ %i.at, %bb.x ] ; 8 uses
  %i.ay = ptrtoint ptr %.1.i361996 to i64
  %i.az = and i64 %i.ay, 1
  %.not.i603 = icmp eq i64 %i.az, 0
  br i1 %.not.i603, label %lean_nat_le.exit, label %lean_nat_le.exit.thread, !prof !9

lean_nat_le.exit:                                 ; preds = %lean_dec.exit453
  %i.ba = tail call zeroext i1 @lean_nat_big_le(ptr noundef %.1.i361996, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  br i1 %i.ba, label %bb.ac, label %lean_dec.exit451

lean_nat_le.exit.thread:                          ; preds = %lean_dec.exit453
  %.not814 = icmp ugt ptr %.1.i361996, inttoptr (i64 1 to ptr)
  %spec.select = select i1 %.not814, ptr %.1.i361996, ptr inttoptr (i64 1 to ptr)
  br label %lean_dec.exit451

bb.ac:                                            ; preds = %lean_nat_le.exit
  %i.bb = load i32, ptr %.1.i361996, align 4, !tbaa !11 ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.ad, label %bb.ae, !prof !16

bb.ad:                                            ; preds = %bb.ac
  %i.bd = add nsw i32 %i.bb, -1
  store i32 %i.bd, ptr %.1.i361996, align 4, !tbaa !11
  br label %lean_dec.exit451

bb.ae:                                            ; preds = %bb.ac
  %.not.i459 = icmp eq i32 %i.bb, 0
  br i1 %.not.i459, label %lean_dec.exit451, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i361996) #7
  br label %lean_dec.exit451

bb.ag:                                            ; preds = %lean_dec.exit405, %bb.iw, %bb.lc, %bb.le, %lean_dec.exit417, %bb.ld, %bb.iy, %bb.ix
  %i.be = load atomic i32, ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go___lam__1___closed__3_once seq_cst, align 4, !tbaa !19
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.ah, label %bb.ai, !prof !16

bb.ah:                                            ; preds = %bb.ag
  %i.bg = load ptr, ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go___lam__1___closed__3, align 8, !tbaa !15
  br label %lean_obj_once.exit

bb.ai:                                            ; preds = %bb.ag
  %i.bh = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go___lam__1___closed__3, ptr noundef nonnull @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go___lam__1___closed__3_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go___lam__1___closed__3) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.ah, %bb.ai
  %.0.i616 = phi ptr [ %i.bg, %bb.ah ], [ %i.bh, %bb.ai ]
  %i.bi = tail call ptr @lean_panic_fn_borrowed(ptr noundef nonnull @l_panic___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__3___closed__0_value, ptr noundef %.0.i616) #7
  %i.bj = ptrtoint ptr %22 to i64
  %i.bk = and i64 %i.bj, 1
  %.not.i12.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i12.i, label %bb.aj, label %lean_inc.exit13.i

bb.aj:                                            ; preds = %lean_obj_once.exit
  %.val.i.i.i619 = load i32, ptr %22, align 4, !tbaa !11 ; 3 uses
  %i.bl = icmp sgt i32 %.val.i.i.i619, 0
  br i1 %i.bl, label %bb.ak, label %bb.al, !prof !16

bb.ak:                                            ; preds = %bb.aj
  %i.bm = add nuw i32 %.val.i.i.i619, 1
  store i32 %i.bm, ptr %22, align 4, !tbaa !11
  br label %lean_inc.exit13.i

bb.al:                                            ; preds = %bb.aj
  %.not.i.i.i620 = icmp eq i32 %.val.i.i.i619, 0
  br i1 %.not.i.i.i620, label %lean_inc.exit13.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = atomicrmw add ptr %22, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit13.i

lean_inc.exit13.i:                                ; preds = %bb.am, %bb.al, %bb.ak, %lean_obj_once.exit
  %.val.i.i14.i = load i32, ptr %21, align 4, !tbaa !11 ; 3 uses
  %i.bo = icmp sgt i32 %.val.i.i14.i, 0
  br i1 %i.bo, label %bb.an, label %bb.ao, !prof !16

bb.an:                                            ; preds = %lean_inc.exit13.i
  %i.bp = add nuw i32 %.val.i.i14.i, 1
  store i32 %i.bp, ptr %21, align 4, !tbaa !11
  br label %lean_inc_ref.exit16.i

bb.ao:                                            ; preds = %lean_inc.exit13.i
  %.not.i.i15.i = icmp eq i32 %.val.i.i14.i, 0
  br i1 %.not.i.i15.i, label %lean_inc_ref.exit16.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bq = atomicrmw add ptr %21, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit16.i

lean_inc_ref.exit16.i:                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.br = ptrtoint ptr %20 to i64
  %i.bs = and i64 %i.br, 1
  %.not.i.i617 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i617, label %bb.aq, label %lean_inc.exit.i618

bb.aq:                                            ; preds = %lean_inc_ref.exit16.i
  %.val.i.i17.i = load i32, ptr %20, align 4, !tbaa !11 ; 3 uses
  %i.bt = icmp sgt i32 %.val.i.i17.i, 0
  br i1 %i.bt, label %bb.ar, label %bb.as, !prof !16

bb.ar:                                            ; preds = %bb.aq
  %i.bu = add nuw i32 %.val.i.i17.i, 1
  store i32 %i.bu, ptr %20, align 4, !tbaa !11
  br label %lean_inc.exit.i618

bb.as:                                            ; preds = %bb.aq
  %.not.i.i18.i = icmp eq i32 %.val.i.i17.i, 0
  br i1 %.not.i.i18.i, label %lean_inc.exit.i618, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bv = atomicrmw add ptr %20, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i618

lean_inc.exit.i618:                               ; preds = %bb.at, %bb.as, %bb.ar, %lean_inc_ref.exit16.i
  %.val.i.i20.i = load i32, ptr %19, align 4, !tbaa !11 ; 3 uses
  %i.bw = icmp sgt i32 %.val.i.i20.i, 0
  br i1 %i.bw, label %bb.au, label %bb.av, !prof !16

bb.au:                                            ; preds = %lean_inc.exit.i618
  %i.bx = add nuw i32 %.val.i.i20.i, 1
  store i32 %i.bx, ptr %19, align 4, !tbaa !11
  br label %l_panic___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__3.exit

bb.av:                                            ; preds = %lean_inc.exit.i618
  %.not.i.i21.i = icmp eq i32 %.val.i.i20.i, 0
  br i1 %.not.i.i21.i, label %l_panic___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__3.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.by = atomicrmw add ptr %19, i32 -1 monotonic, align 4 ; 0 uses
  br label %l_panic___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__3.exit

l_panic___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_getEquationsForImpl_go_spec__3.exit: ; preds = %bb.au, %bb.av, %bb.aw
  %i.bz = tail call ptr @lean_apply_5(ptr noundef %i.bi, ptr noundef nonnull %19, ptr noundef %20, ptr noundef nonnull %21, ptr noundef %22, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  br label %lean_dec_ref_known.exit.thread

lean_dec_ref_known.exit.thread778:                ; preds = %lean_dec.exit.i, %bb.bl, %bb.bm, %bb.bn, %lean_dec.exit427
  tail call void @lean_inc_heartbeat() #7
  %i.ca = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #7 ; 7 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ax, label %lean_alloc_ctor.exit

bb.ax:                                            ; preds = %lean_dec_ref_known.exit.thread778
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec_ref_known.exit.thread778
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 1, ptr %i.ca, align 4, !tbaa !11
  store i32 196640, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.hy, ptr %i.cd, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %0, ptr %i.ce, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store ptr %i.jh, ptr %i.cf, align 8, !tbaa !15
  %i.cg = tail call ptr @l_Lean_Meta_Match_registerMatchEqns___redArg(ptr noundef %1, ptr noundef nonnull %i.ca, ptr noundef %22) #7
  br label %lean_dec_ref_known.exit.thread

bb.ay:                                            ; preds = %lean_dec.exit381, %lean_dec.exit429, %bb.qb, %bb.qa, %bb.pz, %bb.gm, %bb.gl, %bb.gk
  %.3350.ph = phi i8 [ 1, %bb.gk ], [ 1, %bb.gl ], [ 1, %bb.gm ], [ %i.jq, %bb.pz ], [ %i.jq, %bb.qa ], [ %i.jq, %bb.qb ], [ 1, %lean_dec.exit429 ], [ %i.jq, %lean_dec.exit381 ]
  br i1 %.not.i588, label %bb.az, label %lean_inc.exit597

bb.az:                                            ; preds = %bb.ay
  %.val.i.i621 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.ch = icmp sgt i32 %.val.i.i621, 0
  br i1 %i.ch, label %bb.ba, label %bb.bb, !prof !16

bb.ba:                                            ; preds = %bb.az
  %i.ci = add nuw i32 %.val.i.i621, 1
  store i32 %i.ci, ptr %1, align 4, !tbaa !11
  br label %lean_inc.exit597

bb.bb:                                            ; preds = %bb.az
  %.not.i.i622 = icmp eq i32 %.val.i.i621, 0
  br i1 %.not.i.i622, label %lean_inc.exit597, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cj = atomicrmw add ptr %1, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit597

lean_inc.exit597:                                 ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %i.ck = tail call ptr @l_Lean_Meta_Match_withMkMatcherInput___redArg(ptr noundef %1, i8 noundef zeroext %.3350.ph, ptr noundef %14, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22) #7 ; 11 uses
  %i.cl = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cm = and i64 %i.cl, 1
  %.not.i624 = icmp eq i64 %i.cm, 0
  br i1 %.not.i624, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %lean_inc.exit597
  %i.cn = lshr i64 %i.cl, 1
  %i.co = trunc i64 %i.cn to i32
  br label %lean_obj_tag.exit

bb.be:                                            ; preds = %lean_inc.exit597
  %i.cp = getelementptr i8, ptr %i.ck, i64 4
  %.val.i626 = load i32, ptr %i.cp, align 4
  %i.cq = lshr i32 %.val.i626, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.bd, %bb.be
  %.0.i625 = phi i32 [ %i.co, %bb.bd ], [ %i.cq, %bb.be ]
end_hunk_2
begin_hunk_3_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_genMatchCongrEqnsImpl_go_spec__5___redArg___boxed:bb.a

bb.q:                                             ; preds = %bb.p
  %i.be = add nsw i32 %i.bc, -1
  store i32 %i.be, ptr %i.a, align 4, !tbaa !11
  br label %lean_dec.exit

bb.r:                                             ; preds = %bb.p
  %.not.i50 = icmp eq i32 %i.bc, 0
  br i1 %.not.i50, label %lean_dec.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit53
  ret ptr %i.aj
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_genMatchCongrEqnsImpl_go___lam__1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree readnone captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i159 = icmp eq i64 %i.f, 0                ; 2 uses
  br i1 %.not.i159, label %bb.b, label %lean_inc.exit160

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !11 ; 3 uses
  %i.g = icmp sgt i32 %.val.i.i, 0
  br i1 %i.g, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i32 %.val.i.i, 1
  store i32 %i.h, ptr %i.b, align 4, !tbaa !11
  br label %lean_inc.exit160

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit160, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = atomicrmw add ptr %i.b, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit160

lean_inc.exit160:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %.val.i.i166 = load i32, ptr %7, align 4, !tbaa !11 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i166, 0
  br i1 %i.j, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %lean_inc.exit160
  %i.k = add nuw i32 %.val.i.i166, 1
  store i32 %i.k, ptr %7, align 4, !tbaa !11
  br label %lean_inc_ref.exit168

bb.g:                                             ; preds = %lean_inc.exit160
  %.not.i.i167 = icmp eq i32 %.val.i.i166, 0
  br i1 %.not.i.i167, label %lean_inc_ref.exit168, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = atomicrmw add ptr %7, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit168

lean_inc_ref.exit168:                             ; preds = %bb.f, %bb.g, %bb.h
  %i.m = tail call ptr @l_Array_toSubarray___redArg(ptr noundef nonnull %7, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.b) #7 ; 2 uses
  %i.n = tail call ptr @l_Lean_Meta_Match_MatcherInfo_getMotivePos(ptr noundef nonnull %0) #7 ; 4 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = and i64 %i.o, 1
  %.not.i169 = icmp eq i64 %i.p, 0                ; 2 uses
  br i1 %.not.i169, label %lean_array_uget.exit.i, label %bb.i

bb.i:                                             ; preds = %lean_inc_ref.exit168
  %i.q = lshr i64 %i.o, 1                         ; 2 uses
  %i.r = getelementptr i8, ptr %7, i64 8
  %.val.i = load i64, ptr %i.r, align 8, !tbaa !13
  %i.s = icmp ult i64 %i.q, %.val.i
  br i1 %i.s, label %bb.j, label %lean_array_uget.exit.i

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15   ; 8 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, 1
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %bb.k, label %lean_array_get.exit.thread

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i = load i32, ptr %i.v, align 4, !tbaa !11 ; 3 uses
  %i.y = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.y, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.z = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.z, ptr %i.v, align 4, !tbaa !11
  br label %lean_array_get.exit.thread

bb.m:                                             ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %lean_array_get.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = atomicrmw add ptr %i.v, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_array_get.exit.thread

lean_array_uget.exit.i:                           ; preds = %bb.i, %lean_inc_ref.exit168
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = and i64 %i.ab, 1
  %.not.i.i170 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i170, label %bb.o, label %lean_array_get.exit

bb.o:                                             ; preds = %lean_array_uget.exit.i
  %.val.i.i.i = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.ad = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.ad, label %bb.p, label %bb.q, !prof !16

bb.p:                                             ; preds = %bb.o
  %i.ae = add nuw i32 %.val.i.i.i, 1
  store i32 %i.ae, ptr %1, align 4, !tbaa !11
  br label %lean_array_get.exit

bb.q:                                             ; preds = %bb.o
  %.not.i.i11.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i11.i, label %lean_array_get.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = atomicrmw add ptr %1, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_array_get.exit

lean_array_get.exit:                              ; preds = %lean_array_uget.exit.i, %bb.p, %bb.q, %bb.r
  %i.ag = tail call ptr @lean_array_get_panic(ptr noundef %1) #7 ; 4 uses
  br i1 %.not.i169, label %bb.s, label %lean_array_get.exit.thread

bb.s:                                             ; preds = %lean_array_get.exit
  %i.ah = load i32, ptr %i.n, align 4, !tbaa !11  ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.t, label %bb.u, !prof !16

bb.t:                                             ; preds = %bb.s
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %i.n, align 4, !tbaa !11
  br label %lean_array_get.exit.thread

bb.u:                                             ; preds = %bb.s
  %.not.i135 = icmp eq i32 %i.ah, 0
  br i1 %.not.i135, label %lean_array_get.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #7
  br label %lean_array_get.exit.thread

lean_array_get.exit.thread:                       ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %lean_array_get.exit, %bb.t, %bb.u, %bb.v
  %.1.i171235 = phi ptr [ %i.ag, %bb.v ], [ %i.ag, %lean_array_get.exit ], [ %i.ag, %bb.t ], [ %i.ag, %bb.u ], [ %i.v, %bb.j ], [ %i.v, %bb.l ], [ %i.v, %bb.m ], [ %i.v, %bb.n ] ; 2 uses
  %i.ak = getelementptr i8, ptr %7, i64 8
  %.val165 = load i64, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %i.al = shl i64 %.val165, 1
  %i.am = or disjoint i64 %i.al, 1
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = tail call ptr @l_Lean_Meta_Match_MatcherInfo_numAlts(ptr noundef nonnull %0) #7 ; 5 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = and i64 %i.ap, 1
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.y, label %bb.w, !prof !9

bb.w:                                             ; preds = %lean_array_get.exit.thread
  %i.ar = and i64 %.val165, 9223372036854775807   ; 2 uses
  %i.as = lshr i64 %i.ap, 1                       ; 2 uses
  %i.at = icmp samesign ult i64 %i.ar, %i.as
  br i1 %i.at, label %lean_dec.exit132, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = sub nuw nsw i64 %i.ar, %i.as
  %i.av = shl nuw i64 %i.au, 1
  %i.aw = or disjoint i64 %i.av, 1
  %i.ax = inttoptr i64 %i.aw to ptr
  br label %lean_dec.exit132

bb.y:                                             ; preds = %lean_array_get.exit.thread
  %i.ay = tail call ptr @lean_nat_big_sub(ptr noundef nonnull %i.an, ptr noundef %i.ao) #7 ; 3 uses
  %i.az = load i32, ptr %i.ao, align 4, !tbaa !11 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.z, label %bb.aa, !prof !16

bb.z:                                             ; preds = %bb.y
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.ao, align 4, !tbaa !11
  br label %lean_dec.exit132

bb.aa:                                            ; preds = %bb.y
  %.not.i136 = icmp eq i32 %i.az, 0
  br i1 %.not.i136, label %lean_dec.exit132, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #7
  br label %lean_dec.exit132

lean_dec.exit132:                                 ; preds = %bb.x, %bb.w, %bb.ab, %bb.aa, %bb.z
  %.1.i116237 = phi ptr [ %i.ay, %bb.ab ], [ %i.ay, %bb.z ], [ %i.ay, %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.w ], [ %i.ax, %bb.x ] ; 8 uses
  %i.bc = ptrtoint ptr %.1.i116237 to i64
  %i.bd = and i64 %i.bc, 1
  %.not.i161 = icmp eq i64 %i.bd, 0
  br i1 %.not.i161, label %lean_nat_le.exit, label %lean_nat_le.exit.thread, !prof !9

lean_nat_le.exit:                                 ; preds = %lean_dec.exit132
  %i.be = tail call zeroext i1 @lean_nat_big_le(ptr noundef %.1.i116237, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  br i1 %i.be, label %bb.ac, label %lean_dec.exit130

lean_nat_le.exit.thread:                          ; preds = %lean_dec.exit132
  %.not206 = icmp ugt ptr %.1.i116237, inttoptr (i64 1 to ptr)
  %spec.select = select i1 %.not206, ptr %.1.i116237, ptr inttoptr (i64 1 to ptr)
  br label %lean_dec.exit130

bb.ac:                                            ; preds = %lean_nat_le.exit
  %i.bf = load i32, ptr %.1.i116237, align 4, !tbaa !11 ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.ad, label %bb.ae, !prof !16

bb.ad:                                            ; preds = %bb.ac
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %.1.i116237, align 4, !tbaa !11
  br label %lean_dec.exit130

bb.ae:                                            ; preds = %bb.ac
  %.not.i138 = icmp eq i32 %i.bf, 0
  br i1 %.not.i138, label %lean_dec.exit130, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i116237) #7
  br label %lean_dec.exit130

lean_dec.exit130:                                 ; preds = %lean_nat_le.exit.thread, %bb.ad, %bb.ae, %bb.af, %lean_nat_le.exit
  %.0107 = phi ptr [ %spec.select, %lean_nat_le.exit.thread ], [ %.1.i116237, %lean_nat_le.exit ], [ inttoptr (i64 1 to ptr), %bb.af ], [ inttoptr (i64 1 to ptr), %bb.ae ], [ inttoptr (i64 1 to ptr), %bb.ad ]
  %.val.i.i172 = load i32, ptr %7, align 8, !tbaa !11 ; 3 uses
  %i.bi = icmp sgt i32 %.val.i.i172, 0
  br i1 %i.bi, label %bb.ag, label %bb.ah, !prof !16

bb.ag:                                            ; preds = %lean_dec.exit130
  %i.bj = add nuw i32 %.val.i.i172, 1
  store i32 %i.bj, ptr %7, align 8, !tbaa !11
  br label %lean_inc_ref.exit174

bb.ah:                                            ; preds = %lean_dec.exit130
  %.not.i.i173 = icmp eq i32 %.val.i.i172, 0
  br i1 %.not.i.i173, label %lean_inc_ref.exit174, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bk = atomicrmw add ptr %7, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit174

lean_inc_ref.exit174:                             ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.bl = tail call ptr @l_Array_toSubarray___redArg(ptr noundef nonnull %7, ptr noundef %.0107, ptr noundef nonnull %i.an) #7 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !15 ; 9 uses
  %i.bo = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bp = and i64 %i.bo, 1
  %.not.i157 = icmp eq i64 %i.bp, 0               ; 3 uses
  br i1 %.not.i157, label %bb.aj, label %lean_inc.exit158

bb.aj:                                            ; preds = %lean_inc_ref.exit174
  %.val.i.i175 = load i32, ptr %i.bn, align 4, !tbaa !11 ; 3 uses
  %i.bq = icmp sgt i32 %.val.i.i175, 0
  br i1 %i.bq, label %bb.ak, label %bb.al, !prof !16

bb.ak:                                            ; preds = %bb.aj
  %i.br = add nuw i32 %.val.i.i175, 1
  store i32 %i.br, ptr %i.bn, align 4, !tbaa !11
  br label %lean_inc.exit158

bb.al:                                            ; preds = %bb.aj
  %.not.i.i176 = icmp eq i32 %.val.i.i175, 0
  br i1 %.not.i.i176, label %lean_inc.exit158, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bs = atomicrmw add ptr %i.bn, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit158

lean_inc.exit158:                                 ; preds = %bb.am, %bb.al, %bb.ak, %lean_inc_ref.exit174
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !15 ; 9 uses
  %i.bv = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bw = and i64 %i.bv, 1
  %.not.i155 = icmp eq i64 %i.bw, 0               ; 3 uses
  br i1 %.not.i155, label %bb.an, label %lean_inc.exit156

bb.an:                                            ; preds = %lean_inc.exit158
  %.val.i.i178 = load i32, ptr %i.bu, align 4, !tbaa !11 ; 3 uses
  %i.bx = icmp sgt i32 %.val.i.i178, 0
  br i1 %i.bx, label %bb.ao, label %bb.ap, !prof !16

bb.ao:                                            ; preds = %bb.an
  %i.by = add nuw i32 %.val.i.i178, 1
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !11
  br label %lean_inc.exit156

bb.ap:                                            ; preds = %bb.an
  %.not.i.i179 = icmp eq i32 %.val.i.i178, 0
  br i1 %.not.i.i179, label %lean_inc.exit156, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bz = atomicrmw add ptr %i.bu, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit156

lean_inc.exit156:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %lean_inc.exit158
  br i1 %.not.i159, label %.critedge.i109, label %bb.ar, !prof !9

bb.ar:                                            ; preds = %lean_inc.exit156
  %i.ca = lshr i64 %i.e, 1
  %i.cb = add nuw i64 %i.ca, 1                    ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, -1
  br i1 %i.cc, label %bb.as, label %bb.at, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.cd = shl nuw i64 %i.cb, 1
  %i.ce = or disjoint i64 %i.cd, 1
  %i.cf = inttoptr i64 %i.ce to ptr
  br label %lean_nat_add.exit111

bb.at:                                            ; preds = %bb.ar
  %i.cg = tail call ptr @lean_big_usize_to_nat(i64 noundef -9223372036854775808) #7
  br label %lean_nat_add.exit111

.critedge.i109:                                   ; preds = %lean_inc.exit156
  %i.ch = tail call ptr @lean_nat_big_add(ptr noundef %i.b, ptr noundef nonnull inttoptr (i64 3 to ptr)) #7
  br label %lean_nat_add.exit111

lean_nat_add.exit111:                             ; preds = %bb.at, %bb.as, %.critedge.i109
  %.0.i110 = phi ptr [ %i.ch, %.critedge.i109 ], [ %i.cf, %bb.as ], [ %i.cg, %bb.at ] ; 3 uses
  %i.ci = ptrtoint ptr %.0.i110 to i64            ; 2 uses
  %i.cj = and i64 %i.ci, 1
  %.not.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i, label %.critedge.i, label %bb.au, !prof !9

bb.au:                                            ; preds = %lean_nat_add.exit111
  %i.ck = ptrtoint ptr %i.d to i64                ; 2 uses
  %i.cl = and i64 %i.ck, 1
  %.not207 = icmp eq i64 %i.cl, 0
  br i1 %.not207, label %.critedge.i, label %bb.av, !prof !9

bb.av:                                            ; preds = %bb.au
  %i.cm = lshr i64 %i.ci, 1
  %i.cn = lshr i64 %i.ck, 1
  %i.co = add nuw i64 %i.cm, %i.cn                ; 3 uses
  %i.cp = icmp sgt i64 %i.co, -1
  br i1 %i.cp, label %bb.aw, label %bb.ax, !prof !16

bb.aw:                                            ; preds = %bb.av
  %i.cq = shl nuw i64 %i.co, 1
  %i.cr = or disjoint i64 %i.cq, 1
  %i.cs = inttoptr i64 %i.cr to ptr
  br label %lean_nat_add.exit

bb.ax:                                            ; preds = %bb.av
  %i.ct = tail call ptr @lean_big_usize_to_nat(i64 noundef %i.co) #7
  br label %lean_nat_add.exit

.critedge.i:                                      ; preds = %bb.au, %lean_nat_add.exit111
  %i.cu = tail call ptr @lean_nat_big_add(ptr noundef %.0.i110, ptr noundef %i.d) #7
  br label %lean_nat_add.exit

lean_nat_add.exit:                                ; preds = %bb.ax, %bb.aw, %.critedge.i
  %.0.i = phi ptr [ %i.cu, %.critedge.i ], [ %i.cs, %bb.aw ], [ %i.ct, %bb.ax ]
  br i1 %.not.i155, label %lean_nat_sub.exit, label %bb.ay, !prof !9

bb.ay:                                            ; preds = %lean_nat_add.exit
  br i1 %.not.i157, label %lean_nat_sub.exit.thread197, label %bb.az, !prof !9

lean_nat_sub.exit.thread197:                      ; preds = %bb.ay
  %i.cv = tail call ptr @lean_nat_big_sub(ptr noundef %i.bu, ptr noundef %i.bn) #7
  br label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.cw = lshr i64 %i.bv, 1                       ; 2 uses
  %i.cx = lshr i64 %i.bo, 1                       ; 2 uses
  %i.cy = icmp samesign ult i64 %i.cw, %i.cx
  br i1 %i.cy, label %lean_dec.exit126, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cz = sub nuw nsw i64 %i.cw, %i.cx
  %i.da = shl nuw i64 %i.cz, 1
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = inttoptr i64 %i.db to ptr
  br label %lean_dec.exit126

lean_nat_sub.exit:                                ; preds = %lean_nat_add.exit
  %i.dd = tail call ptr @lean_nat_big_sub(ptr noundef %i.bu, ptr noundef %i.bn) #7 ; 2 uses
  br i1 %.not.i157, label %bb.bb, label %lean_dec.exit128.thread

bb.bb:                                            ; preds = %lean_nat_sub.exit.thread197, %lean_nat_sub.exit
  %i.de = phi ptr [ %i.cv, %lean_nat_sub.exit.thread197 ], [ %i.dd, %lean_nat_sub.exit ] ; 2 uses
  %i.df = load i32, ptr %i.bn, align 4, !tbaa !11 ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 1
  br i1 %i.dg, label %bb.bc, label %bb.bd, !prof !16

bb.bc:                                            ; preds = %bb.bb
  %i.dh = add nsw i32 %i.df, -1
  store i32 %i.dh, ptr %i.bn, align 4, !tbaa !11
  br label %lean_dec.exit128

end_hunk_3
begin_hunk_4_@l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0_00___x40_Lean_Meta_Match_MatchEqs_136844199____hygCtx___hyg_2____boxed:bb.a

bb.g:                                             ; preds = %bb.e
  %.not.i7.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i7.i.i, label %lean_dec.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #7
  br label %lean_dec.exit.i.i

lean_dec.exit.i.i:                                ; preds = %bb.h, %bb.g, %bb.f, %.preheader.i.i
  tail call void @lean_free_object(ptr noundef nonnull %i.a) #7
  br label %l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0_00___x40_Lean_Meta_Match_MatchEqs_136844199____hygCtx___hyg_2_.exit

bb.i:                                             ; preds = %bb.d
  %i.q = icmp sgt i32 %.val.i6.i, 1
  br i1 %i.q, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.r = add nsw i32 %.val.i6.i, -1
  store i32 %i.r, ptr %i.a, align 4, !tbaa !11
  br label %l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0_00___x40_Lean_Meta_Match_MatchEqs_136844199____hygCtx___hyg_2_.exit

bb.k:                                             ; preds = %bb.i
  %.not.i8.i.i = icmp eq i32 %.val.i6.i, 0
  br i1 %.not.i8.i.i, label %l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0_00___x40_Lean_Meta_Match_MatchEqs_136844199____hygCtx___hyg_2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #7
  br label %l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0_00___x40_Lean_Meta_Match_MatchEqs_136844199____hygCtx___hyg_2_.exit

l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0_00___x40_Lean_Meta_Match_MatchEqs_136844199____hygCtx___hyg_2_.exit: ; preds = %lean_obj_tag.exit.i, %lean_dec.exit.i.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi i64 [ 1, %lean_obj_tag.exit.i ], [ 3, %lean_dec.exit.i.i ], [ 3, %bb.j ], [ 3, %bb.k ], [ 3, %bb.l ]
  %i.s = inttoptr i64 %.0.i to ptr
  ret ptr %i.s
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn_00___x40_Lean_Meta_Match_MatchEqs_136844199____hygCtx___hyg_2_() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_registerReservedNamePredicate(ptr noundef nonnull @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___closed__0_00___x40_Lean_Meta_Match_MatchEqs_136844199____hygCtx___hyg_2__value) #7
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn_00___x40_Lean_Meta_Match_MatchEqs_136844199____hygCtx___hyg_2____boxed(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_registerReservedNamePredicate(ptr noundef nonnull @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___closed__0_00___x40_Lean_Meta_Match_MatchEqs_136844199____hygCtx___hyg_2__value) #7
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0_00___x40_Lean_Meta_Match_MatchEqs_2767730534____hygCtx___hyg_2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @lean_st_ref_get(ptr noundef %3) #7 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 4 uses
  %.val.i.i = load i32, ptr %i.c, align 4, !tbaa !11 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %.val.i.i, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !11
  br label %lean_inc_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = atomicrmw add ptr %i.c, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.d, %bb.c, %bb.b
  %i.g = load i32, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %lean_inc_ref.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !11
  br label %lean_dec.exit152

bb.f:                                             ; preds = %lean_inc_ref.exit
  %.not.i153 = icmp eq i32 %i.g, 0
  br i1 %.not.i153, label %lean_dec.exit152, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #7
  br label %lean_dec.exit152

lean_dec.exit152:                                 ; preds = %bb.g, %bb.f, %bb.e
  %i.j = tail call ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_isMatchCongrEqName_x3f(ptr noundef nonnull %i.c, ptr noundef %1) ; 10 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not.i187 = icmp eq i64 %i.l, 0
  br i1 %.not.i187, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %lean_dec.exit152
  %i.m = getelementptr i8, ptr %i.j, i64 4
  %.val.i = load i32, ptr %i.m, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.n = icmp eq i32 %.mask, 16777216
  br i1 %i.n, label %bb.h, label %bb.db

lean_obj_tag.exit.thread:                         ; preds = %lean_dec.exit152
  %i.o = and i64 %i.k, 8589934590
  %i.p = icmp eq i64 %i.o, 2
  br i1 %i.p, label %bb.h, label %lean_dec.exit134

bb.h:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15   ; 5 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, 1
  %.not.i183 = icmp eq i64 %i.t, 0
  br i1 %.not.i183, label %bb.i, label %lean_inc.exit184

bb.i:                                             ; preds = %bb.h
  %.val.i.i188 = load i32, ptr %i.r, align 4, !tbaa !11 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i188, 0
  br i1 %i.u, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.v = add nuw i32 %.val.i.i188, 1
  store i32 %i.v, ptr %i.r, align 4, !tbaa !11
  br label %lean_inc.exit184

bb.k:                                             ; preds = %bb.i
  %.not.i.i189 = icmp eq i32 %.val.i.i188, 0
  br i1 %.not.i.i189, label %lean_inc.exit184, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = atomicrmw add ptr %i.r, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit184

lean_inc.exit184:                                 ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %.val.i191 = load i32, ptr %i.j, align 8, !tbaa !11 ; 4 uses
  %i.x = icmp eq i32 %.val.i191, 1
  br i1 %i.x, label %.preheader.i, label %bb.q

.preheader.i:                                     ; preds = %lean_inc.exit184
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !15   ; 4 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, 1
  %.not.i.i192 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i192, label %bb.m, label %lean_dec.exit.i

bb.m:                                             ; preds = %.preheader.i
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !11  ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.n, label %bb.o, !prof !16

bb.n:                                             ; preds = %bb.m
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.o:                                             ; preds = %bb.m
  %.not.i7.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.y) #7
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.p, %bb.o, %bb.n, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.j) #7
  br label %lean_dec_ref_known.exit

bb.q:                                             ; preds = %lean_inc.exit184
  %i.ae = icmp sgt i32 %.val.i191, 1
  br i1 %i.ae, label %bb.r, label %bb.s, !prof !16

bb.r:                                             ; preds = %bb.q
  %i.af = add nsw i32 %.val.i191, -1
  store i32 %i.af, ptr %i.j, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.s:                                             ; preds = %bb.q
  %.not.i8.i = icmp eq i32 %.val.i191, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #7
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.r, %bb.s, %bb.t
  %i.ag = load atomic i32, ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__2_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2__once seq_cst, align 4, !tbaa !19
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.u, label %bb.v, !prof !16

bb.u:                                             ; preds = %lean_dec_ref_known.exit
  %i.ai = load ptr, ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__2_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2_, align 8, !tbaa !15
  br label %lean_dec_ref.exit175

bb.v:                                             ; preds = %lean_dec_ref_known.exit
  %i.aj = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__2_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2_, ptr noundef nonnull @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__2_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2__once, ptr noundef nonnull @_init_l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__2_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2_) #7
  br label %lean_dec_ref.exit175

lean_dec_ref.exit175:                             ; preds = %bb.u, %bb.v
  %.0.i193 = phi ptr [ %i.ai, %bb.u ], [ %i.aj, %bb.v ]
  %i.ak = tail call ptr @lean_alloc_object(i64 noundef 280) #7 ; 5 uses
  store i32 1, ptr %i.ak, align 4, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 65535
  %i.ao = or disjoint i32 %i.an, -167772160
  store i32 %i.ao, ptr %i.al, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 32, ptr %i.aq, align 8, !tbaa !13
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ak) #7
  %i.ar = load atomic i32, ptr @l_Lean_Meta_Match_proveCondEqThm___closed__3_once seq_cst, align 4, !tbaa !19
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.w, label %bb.x, !prof !16

bb.w:                                             ; preds = %lean_dec_ref.exit175
  %i.at = load ptr, ptr @l_Lean_Meta_Match_proveCondEqThm___closed__3, align 8, !tbaa !15
  br label %lean_obj_once.exit195

bb.x:                                             ; preds = %lean_dec_ref.exit175
  %i.au = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_Match_proveCondEqThm___closed__3, ptr noundef nonnull @l_Lean_Meta_Match_proveCondEqThm___closed__3_once, ptr noundef nonnull @_init_l_Lean_Meta_Match_proveCondEqThm___closed__3) #7
  br label %lean_obj_once.exit195

lean_obj_once.exit195:                            ; preds = %bb.w, %bb.x
  %.0.i194 = phi ptr [ %i.at, %bb.w ], [ %i.au, %bb.x ]
  %i.av = load atomic i32, ptr @l_Lean_Meta_Match_proveCondEqThm___closed__4_once seq_cst, align 4, !tbaa !19
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.y, label %bb.z, !prof !16

bb.y:                                             ; preds = %lean_obj_once.exit195
  %i.ax = load ptr, ptr @l_Lean_Meta_Match_proveCondEqThm___closed__4, align 8, !tbaa !15
  br label %lean_obj_once.exit197

bb.z:                                             ; preds = %lean_obj_once.exit195
  %i.ay = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_Match_proveCondEqThm___closed__4, ptr noundef nonnull @l_Lean_Meta_Match_proveCondEqThm___closed__4_once, ptr noundef nonnull @_init_l_Lean_Meta_Match_proveCondEqThm___closed__4) #7
  br label %lean_obj_once.exit197

lean_obj_once.exit197:                            ; preds = %bb.y, %bb.z
  %.0.i196 = phi ptr [ %i.ax, %bb.y ], [ %i.ay, %bb.z ]
  %i.az = ptrtoint ptr %0 to i64
  %i.ba = and i64 %i.az, 1
  %.not.i181 = icmp eq i64 %i.ba, 0
  br i1 %.not.i181, label %bb.aa, label %lean_inc.exit182

bb.aa:                                            ; preds = %lean_obj_once.exit197
  %.val.i.i198 = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.bb = icmp sgt i32 %.val.i.i198, 0
  br i1 %i.bb, label %bb.ab, label %bb.ac, !prof !16

bb.ab:                                            ; preds = %bb.aa
  %i.bc = add nuw i32 %.val.i.i198, 1
  store i32 %i.bc, ptr %0, align 4, !tbaa !11
  br label %lean_inc.exit182

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i199 = icmp eq i32 %.val.i.i198, 0
  br i1 %.not.i.i199, label %lean_inc.exit182, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bd = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit182

lean_inc.exit182:                                 ; preds = %bb.ad, %bb.ac, %bb.ab, %lean_obj_once.exit197
  tail call void @lean_inc_heartbeat() #7
  %i.be = tail call noalias ptr @mi_malloc_small(i64 noundef 72) #7 ; 12 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %lean_inc.exit182
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit182
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store i64 16777216, ptr %i.bh, align 8, !tbaa !13
  store i32 1, ptr %i.be, align 8, !tbaa !11
  store i32 458824, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.0.i193, ptr %i.bi, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %0, ptr %i.bj, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %.0.i196, ptr %i.bk, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__3_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2__value, ptr %i.bl, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.bm, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.bn, align 8, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %i.bo, align 8, !tbaa !15
  %i.bp = load atomic i32, ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__4_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2__once seq_cst, align 4, !tbaa !19
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %lean_alloc_ctor.exit
  %i.br = load ptr, ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__4_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2_, align 8, !tbaa !15
  br label %lean_obj_once.exit202

bb.ag:                                            ; preds = %lean_alloc_ctor.exit
  %i.bs = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__4_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2_, ptr noundef nonnull @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__4_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2__once, ptr noundef nonnull @_init_l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__4_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2_) #7
  br label %lean_obj_once.exit202

lean_obj_once.exit202:                            ; preds = %bb.af, %bb.ag
  %.0.i201 = phi ptr [ %i.br, %bb.af ], [ %i.bs, %bb.ag ]
  %i.bt = load atomic i32, ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__5_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2__once seq_cst, align 4, !tbaa !19
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.ah, label %bb.ai, !prof !16

bb.ah:                                            ; preds = %lean_obj_once.exit202
  %i.bv = load ptr, ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__5_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2_, align 8, !tbaa !15
  br label %lean_obj_once.exit204

bb.ai:                                            ; preds = %lean_obj_once.exit202
  %i.bw = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__5_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2_, ptr noundef nonnull @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__5_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2__once, ptr noundef nonnull @_init_l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__5_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2_) #7
  br label %lean_obj_once.exit204

lean_obj_once.exit204:                            ; preds = %bb.ah, %bb.ai
  %.0.i203 = phi ptr [ %i.bv, %bb.ah ], [ %i.bw, %bb.ai ]
  %i.bx = load atomic i32, ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__6_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2__once seq_cst, align 4, !tbaa !19
  %i.by = icmp eq i32 %i.bx, 1
  br i1 %i.by, label %bb.aj, label %bb.ak, !prof !16

bb.aj:                                            ; preds = %lean_obj_once.exit204
  %i.bz = load ptr, ptr @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__6_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2_, align 8, !tbaa !15
  br label %lean_obj_once.exit206

bb.ak:                                            ; preds = %lean_obj_once.exit204
  %i.ca = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__6_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2_, ptr noundef nonnull @l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__6_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2__once, ptr noundef nonnull @_init_l___private_Lean_Meta_Match_MatchEqs_0__Lean_Meta_Match_initFn___lam__0___closed__6_00___x40_Lean_Meta_Match_MatchEqs_3170112230____hygCtx___hyg_2_) #7
  br label %lean_obj_once.exit206

lean_obj_once.exit206:                            ; preds = %bb.aj, %bb.ak
  %.0.i205 = phi ptr [ %i.bz, %bb.aj ], [ %i.ca, %bb.ak ]
  tail call void @lean_inc_heartbeat() #7
  %i.cb = tail call noalias ptr @mi_malloc_small(i64 noundef 48) #7 ; 9 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.al, label %lean_alloc_ctor.exit207

bb.al:                                            ; preds = %lean_obj_once.exit206
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit207:                          ; preds = %lean_obj_once.exit206
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 1, ptr %i.cb, align 4, !tbaa !11
  store i32 327728, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %.0.i201, ptr %i.ce, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %.0.i203, ptr %i.cf, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %0, ptr %i.cg, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store ptr %.0.i194, ptr %i.ch, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store ptr %.0.i205, ptr %i.ci, align 8, !tbaa !15
  %i.cj = tail call ptr @lean_st_mk_ref(ptr noundef nonnull %i.cb) #7 ; 12 uses
  %i.ck = ptrtoint ptr %3 to i64
  %i.cl = and i64 %i.ck, 1
  %.not.i179 = icmp eq i64 %i.cl, 0
  br i1 %.not.i179, label %bb.am, label %lean_inc.exit180

bb.am:                                            ; preds = %lean_alloc_ctor.exit207
  %.val.i.i208 = load i32, ptr %3, align 4, !tbaa !11 ; 3 uses
  %i.cm = icmp sgt i32 %.val.i.i208, 0
  br i1 %i.cm, label %bb.an, label %bb.ao, !prof !16

bb.an:                                            ; preds = %bb.am
  %i.cn = add nuw i32 %.val.i.i208, 1
  store i32 %i.cn, ptr %3, align 4, !tbaa !11
  br label %lean_inc.exit180

bb.ao:                                            ; preds = %bb.am
  %.not.i.i209 = icmp eq i32 %.val.i.i208, 0
  br i1 %.not.i.i209, label %lean_inc.exit180, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.co = atomicrmw add ptr %3, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit180

lean_inc.exit180:                                 ; preds = %bb.ap, %bb.ao, %bb.an, %lean_alloc_ctor.exit207
  %.val.i.i211 = load i32, ptr %2, align 4, !tbaa !11 ; 3 uses
  %i.cp = icmp sgt i32 %.val.i.i211, 0
  br i1 %i.cp, label %bb.aq, label %bb.ar, !prof !16

bb.aq:                                            ; preds = %lean_inc.exit180
  %i.cq = add nuw i32 %.val.i.i211, 1
  store i32 %i.cq, ptr %2, align 4, !tbaa !11
  br label %lean_inc_ref.exit213

bb.ar:                                            ; preds = %lean_inc.exit180
  %.not.i.i212 = icmp eq i32 %.val.i.i211, 0
  br i1 %.not.i.i212, label %lean_inc_ref.exit213, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cr = atomicrmw add ptr %2, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit213
end_hunk_4
