Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/LibrarySearch?download=true
inline.NumInlined: 1611
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@l_Lean_Elab_LibrarySearch_exact_x3f___lam__2:bb.a

bb.bz:                                            ; preds = %lean_inc.exit831
  %i.fd = add nsw i32 %i.fb, -1
  store i32 %i.fd, ptr %i.el, align 8, !tbaa !15
  br label %lean_dec.exit695

bb.ca:                                            ; preds = %lean_inc.exit831
  %.not.i707 = icmp eq i32 %i.fb, 0
  br i1 %.not.i707, label %lean_dec.exit695, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.el) #4
  br label %lean_dec.exit695

lean_dec.exit695:                                 ; preds = %bb.bz, %bb.ca, %bb.cb, %lean_dec.exit697
  %.0578 = phi ptr [ %i.el, %lean_dec.exit697 ], [ inttoptr (i64 1 to ptr), %bb.cb ], [ inttoptr (i64 1 to ptr), %bb.ca ], [ inttoptr (i64 1 to ptr), %bb.bz ] ; 9 uses
  %i.fe = icmp eq i8 %6, 0                        ; 2 uses
  br i1 %i.fe, label %.critedge, label %bb.cc

bb.cc:                                            ; preds = %lean_dec.exit695
  %i.ff = icmp eq i8 %i.ag, 0
  br i1 %i.ff, label %bb.cd, label %lean_nat_eq.exit858

bb.cd:                                            ; preds = %bb.cc
  %i.fg = ptrtoint ptr %.0578 to i64
  %i.fh = and i64 %i.fg, 1
  %.not.i921 = icmp eq i64 %i.fh, 0
  br i1 %.not.i921, label %bb.ce, label %lean_del_object.exit

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_free_object(ptr noundef nonnull %.0578) #4
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.cd, %bb.ce
  %i.fi = ptrtoint ptr %i.ep to i64
  %i.fj = and i64 %i.fi, 1
  %.not.i692 = icmp eq i64 %i.fj, 0
  br i1 %.not.i692, label %bb.cf, label %lean_dec.exit693

bb.cf:                                            ; preds = %lean_del_object.exit
  %i.fk = load i32, ptr %i.ep, align 4, !tbaa !15 ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 1
  br i1 %i.fl, label %bb.cg, label %bb.ch, !prof !11

bb.cg:                                            ; preds = %bb.cf
  %i.fm = add nsw i32 %i.fk, -1
  store i32 %i.fm, ptr %i.ep, align 4, !tbaa !15
  br label %lean_dec.exit693

bb.ch:                                            ; preds = %bb.cf
  %.not.i709 = icmp eq i32 %i.fk, 0
  br i1 %.not.i709, label %lean_dec.exit693, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ep) #4
  br label %lean_dec.exit693

lean_dec.exit693:                                 ; preds = %bb.ci, %bb.ch, %bb.cg, %lean_del_object.exit
  %i.fn = ptrtoint ptr %i.en to i64
  %i.fo = and i64 %i.fn, 1
  %.not.i690 = icmp eq i64 %i.fo, 0
  br i1 %.not.i690, label %bb.cj, label %lean_dec.exit691

bb.cj:                                            ; preds = %lean_dec.exit693
  %i.fp = load i32, ptr %i.en, align 4, !tbaa !15 ; 3 uses
  %i.fq = icmp sgt i32 %i.fp, 1
  br i1 %i.fq, label %bb.ck, label %bb.cl, !prof !11

bb.ck:                                            ; preds = %bb.cj
  %i.fr = add nsw i32 %i.fp, -1
  store i32 %i.fr, ptr %i.en, align 4, !tbaa !15
  br label %lean_dec.exit691

bb.cl:                                            ; preds = %bb.cj
  %.not.i711 = icmp eq i32 %i.fp, 0
  br i1 %.not.i711, label %lean_dec.exit691, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.en) #4
  br label %lean_dec.exit691

lean_dec.exit691:                                 ; preds = %bb.cm, %bb.cl, %bb.ck, %lean_dec.exit693
  %i.fs = ptrtoint ptr %.0580 to i64
  %i.ft = and i64 %i.fs, 1
  %.not.i922 = icmp eq i64 %i.ft, 0
  br i1 %.not.i922, label %bb.cn, label %lean_del_object.exit923

bb.cn:                                            ; preds = %lean_dec.exit691
  tail call void @lean_free_object(ptr noundef nonnull %.0580) #4
  br label %lean_del_object.exit923

lean_del_object.exit923:                          ; preds = %lean_dec.exit691, %bb.cn
  %i.fu = ptrtoint ptr %5 to i64
  %i.fv = and i64 %i.fu, 1
  %.not.i688 = icmp eq i64 %i.fv, 0
  br i1 %.not.i688, label %bb.co, label %lean_dec.exit689

bb.co:                                            ; preds = %lean_del_object.exit923
  %i.fw = load i32, ptr %5, align 4, !tbaa !15    ; 3 uses
  %i.fx = icmp sgt i32 %i.fw, 1
  br i1 %i.fx, label %bb.cp, label %bb.cq, !prof !11

bb.cp:                                            ; preds = %bb.co
  %i.fy = add nsw i32 %i.fw, -1
  store i32 %i.fy, ptr %5, align 4, !tbaa !15
  br label %lean_dec.exit689

bb.cq:                                            ; preds = %bb.co
  %.not.i713 = icmp eq i32 %i.fw, 0
  br i1 %.not.i713, label %lean_dec.exit689, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec.exit689

lean_dec.exit689:                                 ; preds = %bb.cr, %bb.cq, %bb.cp, %lean_del_object.exit923
  %i.fz = load i32, ptr %4, align 4, !tbaa !15    ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 1
  br i1 %i.ga, label %bb.cs, label %bb.ct, !prof !11

bb.cs:                                            ; preds = %lean_dec.exit689
  %i.gb = add nsw i32 %i.fz, -1
  store i32 %i.gb, ptr %4, align 4, !tbaa !15
  br label %lean_dec_ref.exit818

bb.ct:                                            ; preds = %lean_dec.exit689
  %.not.i817 = icmp eq i32 %i.fz, 0
  br i1 %.not.i817, label %lean_dec_ref.exit818, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit818

lean_dec_ref.exit818:                             ; preds = %bb.cs, %bb.ct, %bb.cu
  %i.gc = ptrtoint ptr %3 to i64
  %i.gd = and i64 %i.gc, 1
  %.not.i686 = icmp eq i64 %i.gd, 0
  br i1 %.not.i686, label %bb.cv, label %lean_dec.exit687

bb.cv:                                            ; preds = %lean_dec_ref.exit818
  %i.ge = load i32, ptr %3, align 4, !tbaa !15    ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.cw, label %bb.cx, !prof !11

bb.cw:                                            ; preds = %bb.cv
  %i.gg = add nsw i32 %i.ge, -1
  store i32 %i.gg, ptr %3, align 4, !tbaa !15
  br label %lean_dec.exit687

bb.cx:                                            ; preds = %bb.cv
  %.not.i715 = icmp eq i32 %i.ge, 0
  br i1 %.not.i715, label %lean_dec.exit687, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec.exit687

lean_dec.exit687:                                 ; preds = %bb.cy, %bb.cx, %bb.cw, %lean_dec_ref.exit818
  br i1 %.not.i840, label %bb.cz, label %lean_dec.exit685

bb.cz:                                            ; preds = %lean_dec.exit687
  %i.gh = load i32, ptr %2, align 4, !tbaa !15    ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 1
  br i1 %i.gi, label %bb.da, label %bb.db, !prof !11

bb.da:                                            ; preds = %bb.cz
  %i.gj = add nsw i32 %i.gh, -1
  store i32 %i.gj, ptr %2, align 4, !tbaa !15
  br label %lean_dec.exit685

bb.db:                                            ; preds = %bb.cz
  %.not.i717 = icmp eq i32 %i.gh, 0
  br i1 %.not.i717, label %lean_dec.exit685, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit685

lean_dec.exit685:                                 ; preds = %bb.dc, %bb.db, %bb.da, %lean_dec.exit687
  %.val876 = load i64, ptr %i.ek, align 8, !tbaa !17
  %i.gk = load i32, ptr %i.ea, align 8, !tbaa !15 ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, 1
  br i1 %i.gl, label %bb.dd, label %bb.de, !prof !11

bb.dd:                                            ; preds = %lean_dec.exit685
  %i.gm = add nsw i32 %i.gk, -1
  store i32 %i.gm, ptr %i.ea, align 8, !tbaa !15
  br label %lean_nat_eq.exit

bb.de:                                            ; preds = %lean_dec.exit685
  %.not.i719 = icmp eq i32 %i.gk, 0
  br i1 %.not.i719, label %lean_nat_eq.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ea) #4
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.dd, %bb.de, %bb.df
  %.mask1016 = and i64 %.val876, 9223372036854775807
  %.not1017 = icmp eq i64 %.mask1016, 0
  %l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__9_value.l_Lean_logAt___at___00Lean_log___at___00Lean_logError___at___00Lean_Elab_LibrarySearch_exact_x3f_spec__9_spec__9_spec__11___redArg___closed__0_value = select i1 %.not1017, ptr @l_Lean_logAt___at___00Lean_log___at___00Lean_logError___at___00Lean_Elab_LibrarySearch_exact_x3f_spec__9_spec__9_spec__11___redArg___closed__0_value, ptr @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__9_value
  %i.gn = load atomic i32, ptr @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__8_once seq_cst, align 4, !tbaa !10
  %i.go = icmp eq i32 %i.gn, 1
  br i1 %i.go, label %bb.dg, label %bb.dh, !prof !11

bb.dg:                                            ; preds = %lean_nat_eq.exit
  %i.gp = load ptr, ptr @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__8, align 8, !tbaa !13
  br label %lean_inc_ref.exit927

bb.dh:                                            ; preds = %lean_nat_eq.exit
  %i.gq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__8, ptr noundef nonnull @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__8_once, ptr noundef nonnull @_init_l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__8) #4
  br label %lean_inc_ref.exit927

lean_inc_ref.exit927:                             ; preds = %bb.dg, %bb.dh
  %.0.i924 = phi ptr [ %i.gp, %bb.dg ], [ %i.gq, %bb.dh ]
  %i.gr = tail call ptr @l_Lean_stringToMessageData(ptr noundef nonnull %l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__9_value.l_Lean_logAt___at___00Lean_log___at___00Lean_logError___at___00Lean_Elab_LibrarySearch_exact_x3f_spec__9_spec__9_spec__11___redArg___closed__0_value) #4
  tail call void @lean_inc_heartbeat() #4
  %i.gs = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 6 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.di, label %lean_alloc_ctor.exit928

bb.di:                                            ; preds = %lean_inc_ref.exit927
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit928:                          ; preds = %lean_inc_ref.exit927
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i32 1, ptr %i.gs, align 4, !tbaa !15
  store i32 117571608, ptr %i.gu, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store ptr %.0.i924, ptr %i.gv, align 8, !tbaa !13
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store ptr %i.gr, ptr %i.gw, align 8, !tbaa !13
  %i.gx = tail call ptr @l_Lean_throwError___at___00Lean_Elab_LibrarySearch_exact_x3f_spec__11___redArg(ptr noundef nonnull %i.gs, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14)
  br label %lean_dec.exit

lean_dec.exit655:                                 ; preds = %bb.gn, %lean_dec.exit653, %bb.hq
  br i1 %i.fe, label %bb.dj, label %bb.em

bb.dj:                                            ; preds = %lean_dec.exit655
  %i.gy = getelementptr i8, ptr %i.ep, i64 8
  %.val869 = load i64, ptr %i.gy, align 8, !tbaa !17
  %i.gz = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Elab_LibrarySearch_exact_x3f_spec__8(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %i.ep, i64 noundef %.val869, i64 noundef 0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14) ; 7 uses
  %i.ha = load i32, ptr %i.ep, align 8, !tbaa !15 ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, 1
  br i1 %i.hb, label %bb.dk, label %bb.dl, !prof !11

bb.dk:                                            ; preds = %bb.dj
  %i.hc = add nsw i32 %i.ha, -1
  store i32 %i.hc, ptr %i.ep, align 8, !tbaa !15
  br label %lean_dec.exit681

bb.dl:                                            ; preds = %bb.dj
  %.not.i721 = icmp eq i32 %i.ha, 0
  br i1 %.not.i721, label %lean_dec.exit681, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ep) #4
  br label %lean_dec.exit681

lean_dec.exit681:                                 ; preds = %bb.dm, %bb.dl, %bb.dk
  %i.hd = ptrtoint ptr %i.gz to i64               ; 2 uses
  %i.he = and i64 %i.hd, 1
  %.not.i929 = icmp eq i64 %i.he, 0
  br i1 %.not.i929, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %lean_dec.exit681
  %i.hf = lshr i64 %i.hd, 1
  %i.hg = trunc i64 %i.hf to i32
  br label %lean_obj_tag.exit932

bb.do:                                            ; preds = %lean_dec.exit681
  %i.hh = getelementptr i8, ptr %i.gz, i64 4
  %.val.i931 = load i32, ptr %i.hh, align 4
  %i.hi = lshr i32 %.val.i931, 24
  br label %lean_obj_tag.exit932

lean_obj_tag.exit932:                             ; preds = %bb.dn, %bb.do
  %.0.i930 = phi i32 [ %i.hg, %bb.dn ], [ %i.hi, %bb.do ]
  %i.hj = icmp eq i32 %.0.i930, 0
  br i1 %i.hj, label %bb.dp, label %bb.ee

bb.dp:                                            ; preds = %lean_obj_tag.exit932
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.gz, i32 noundef 1)
  %.val875 = load i64, ptr %i.ek, align 8, !tbaa !17
  %i.hk = load i32, ptr %i.ea, align 8, !tbaa !15 ; 3 uses
  %i.hl = icmp sgt i32 %i.hk, 1
  br i1 %i.hl, label %bb.dq, label %bb.dr, !prof !11

bb.dq:                                            ; preds = %bb.dp
  %i.hm = add nsw i32 %i.hk, -1
  store i32 %i.hm, ptr %i.ea, align 8, !tbaa !15
  br label %lean_nat_eq.exit850

bb.dr:                                            ; preds = %bb.dp
  %.not.i723 = icmp eq i32 %i.hk, 0
  br i1 %.not.i723, label %lean_nat_eq.exit850, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ea) #4
  br label %lean_nat_eq.exit850

lean_nat_eq.exit850:                              ; preds = %bb.dq, %bb.dr, %bb.ds
  %.mask1019 = and i64 %.val875, 9223372036854775807
  %.not1020 = icmp eq i64 %.mask1019, 0
  br i1 %.not1020, label %bb.dt, label %lean_dec.exit677

bb.dt:                                            ; preds = %lean_nat_eq.exit850
  %i.hn = load atomic i32, ptr @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__4_once seq_cst, align 4, !tbaa !10
  %i.ho = icmp eq i32 %i.hn, 1
  br i1 %i.ho, label %bb.du, label %bb.dv, !prof !11

bb.du:                                            ; preds = %bb.dt
  %i.hp = load ptr, ptr @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit934

bb.dv:                                            ; preds = %bb.dt
  %i.hq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__4, ptr noundef nonnull @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__4_once, ptr noundef nonnull @_init_l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__4) #4
  br label %lean_obj_once.exit934

lean_obj_once.exit934:                            ; preds = %bb.du, %bb.dv
  %.0.i933 = phi ptr [ %i.hp, %bb.du ], [ %i.hq, %bb.dv ]
  %i.hr = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !13
  %i.ht = tail call noundef nonnull ptr @l_Lean_logAt___at___00Lean_log___at___00Lean_logError___at___00Lean_Elab_LibrarySearch_exact_x3f_spec__9_spec__9_spec__11___redArg(ptr noundef %i.hs, ptr noundef %.0.i933, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef readonly %11, ptr noundef %12, ptr noundef readonly %13, ptr noundef %14) ; 7 uses
  %i.hu = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.hv = and i64 %i.hu, 1
  %.not.i935 = icmp eq i64 %i.hv, 0
  br i1 %.not.i935, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %lean_obj_once.exit934
  %i.hw = lshr i64 %i.hu, 1
  %i.hx = trunc i64 %i.hw to i32
  br label %lean_obj_tag.exit938

bb.dx:                                            ; preds = %lean_obj_once.exit934
  %i.hy = getelementptr i8, ptr %i.ht, i64 4
  %.val.i937 = load i32, ptr %i.hy, align 4
  %i.hz = lshr i32 %.val.i937, 24
  br label %lean_obj_tag.exit938

lean_obj_tag.exit938:                             ; preds = %bb.dw, %bb.dx
  %.0.i936 = phi i32 [ %i.hx, %bb.dw ], [ %i.hz, %bb.dx ]
  %i.ia = icmp eq i32 %.0.i936, 0
  br i1 %i.ia, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %lean_obj_tag.exit938
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ht, i32 noundef 1)
  br label %lean_dec.exit677

bb.dz:                                            ; preds = %lean_obj_tag.exit938
  br i1 %.not.i840, label %bb.ea, label %lean_dec.exit

bb.ea:                                            ; preds = %bb.dz
  %i.ib = load i32, ptr %2, align 4, !tbaa !15    ; 3 uses
  %i.ic = icmp sgt i32 %i.ib, 1
  br i1 %i.ic, label %bb.eb, label %bb.ec, !prof !11

bb.eb:                                            ; preds = %bb.ea
  %i.id = add nsw i32 %i.ib, -1
  store i32 %i.id, ptr %2, align 4, !tbaa !15
  br label %lean_dec.exit

bb.ec:                                            ; preds = %bb.ea
  %.not.i725 = icmp eq i32 %i.ib, 0
  br i1 %.not.i725, label %lean_dec.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

bb.ee:                                            ; preds = %lean_obj_tag.exit932
  %i.ie = load i32, ptr %i.ea, align 8, !tbaa !15 ; 3 uses
  %i.if = icmp sgt i32 %i.ie, 1
  br i1 %i.if, label %bb.ef, label %bb.eg, !prof !11

bb.ef:                                            ; preds = %bb.ee
  %i.ig = add nsw i32 %i.ie, -1
  store i32 %i.ig, ptr %i.ea, align 8, !tbaa !15
  br label %lean_dec.exit675

bb.eg:                                            ; preds = %bb.ee
  %.not.i727 = icmp eq i32 %i.ie, 0
  br i1 %.not.i727, label %lean_dec.exit675, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ea) #4
  br label %lean_dec.exit675

lean_dec.exit675:                                 ; preds = %bb.eh, %bb.eg, %bb.ef
  br i1 %.not.i840, label %bb.ei, label %lean_dec.exit

bb.ei:                                            ; preds = %lean_dec.exit675
  %i.ih = load i32, ptr %2, align 4, !tbaa !15    ; 3 uses
  %i.ii = icmp sgt i32 %i.ih, 1
  br i1 %i.ii, label %bb.ej, label %bb.ek, !prof !11

bb.ej:                                            ; preds = %bb.ei
  %i.ij = add nsw i32 %i.ih, -1
  store i32 %i.ij, ptr %2, align 4, !tbaa !15
  br label %lean_dec.exit

bb.ek:                                            ; preds = %bb.ei
  %.not.i729 = icmp eq i32 %i.ih, 0
  br i1 %.not.i729, label %lean_dec.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

bb.em:                                            ; preds = %lean_dec.exit655
  %i.ik = ptrtoint ptr %i.ep to i64
  %i.il = and i64 %i.ik, 1
  %.not.i670 = icmp eq i64 %i.il, 0
  br i1 %.not.i670, label %bb.en, label %lean_dec.exit671
end_hunk_0
begin_hunk_1_@l_Lean_Elab_LibrarySearch_exact_x3f___lam__2:bb.a
  %.not.i.i979 = icmp eq i32 %.val.i.i978, 0
  br i1 %.not.i.i979, label %lean_inc.exit823, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.no = atomicrmw sub ptr %i.ni, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit823

lean_inc.exit823:                                 ; preds = %bb.it, %bb.is, %bb.ir, %bb.ip
  br i1 %.not.i957, label %bb.iu, label %bb.iy

bb.iu:                                            ; preds = %lean_inc.exit823
  %i.np = load i32, ptr %i.kb, align 8, !tbaa !15 ; 3 uses
  %i.nq = icmp sgt i32 %i.np, 1
  br i1 %i.nq, label %bb.iv, label %bb.iw, !prof !11

bb.iv:                                            ; preds = %bb.iu
  %i.nr = add nsw i32 %i.np, -1
  store i32 %i.nr, ptr %i.kb, align 8, !tbaa !15
  br label %bb.iy

bb.iw:                                            ; preds = %bb.iu
  %.not.i761 = icmp eq i32 %i.np, 0
  br i1 %.not.i761, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kb) #4
  br label %bb.iy

bb.iy:                                            ; preds = %lean_inc.exit823, %bb.iv, %bb.iw, %bb.ix
  %i.ns = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store ptr %i.ni, ptr %i.nt, align 8, !tbaa !13
  br label %lean_dec.exit

bb.iz:                                            ; preds = %lean_obj_tag.exit942
  %i.nu = ptrtoint ptr %i.ep to i64
  %i.nv = and i64 %i.nu, 1
  %.not.i638 = icmp eq i64 %i.nv, 0
  br i1 %.not.i638, label %bb.ja, label %lean_dec.exit639

bb.ja:                                            ; preds = %bb.iz
  %i.nw = load i32, ptr %i.ep, align 4, !tbaa !15 ; 3 uses
  %i.nx = icmp sgt i32 %i.nw, 1
  br i1 %i.nx, label %bb.jb, label %bb.jc, !prof !11

bb.jb:                                            ; preds = %bb.ja
  %i.ny = add nsw i32 %i.nw, -1
  store i32 %i.ny, ptr %i.ep, align 4, !tbaa !15
  br label %lean_dec.exit639

bb.jc:                                            ; preds = %bb.ja
  %.not.i763 = icmp eq i32 %i.nw, 0
  br i1 %.not.i763, label %lean_dec.exit639, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ep) #4
  br label %lean_dec.exit639

lean_dec.exit639:                                 ; preds = %bb.jd, %bb.jc, %bb.jb, %bb.iz
  %i.nz = ptrtoint ptr %i.en to i64
  %i.oa = and i64 %i.nz, 1
  %.not.i636 = icmp eq i64 %i.oa, 0
  br i1 %.not.i636, label %bb.je, label %lean_dec.exit637

bb.je:                                            ; preds = %lean_dec.exit639
  %i.ob = load i32, ptr %i.en, align 4, !tbaa !15 ; 3 uses
  %i.oc = icmp sgt i32 %i.ob, 1
  br i1 %i.oc, label %bb.jf, label %bb.jg, !prof !11

bb.jf:                                            ; preds = %bb.je
  %i.od = add nsw i32 %i.ob, -1
  store i32 %i.od, ptr %i.en, align 4, !tbaa !15
  br label %lean_dec.exit637

bb.jg:                                            ; preds = %bb.je
  %.not.i765 = icmp eq i32 %i.ob, 0
  br i1 %.not.i765, label %lean_dec.exit637, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.en) #4
  br label %lean_dec.exit637

lean_dec.exit637:                                 ; preds = %bb.jh, %bb.jg, %bb.jf, %lean_dec.exit639
  %i.oe = ptrtoint ptr %.0580 to i64
  %i.of = and i64 %i.oe, 1
  %.not.i981 = icmp eq i64 %i.of, 0
  br i1 %.not.i981, label %bb.ji, label %lean_del_object.exit982

bb.ji:                                            ; preds = %lean_dec.exit637
  tail call void @lean_free_object(ptr noundef nonnull %.0580) #4
  br label %lean_del_object.exit982

lean_del_object.exit982:                          ; preds = %bb.ji, %lean_dec.exit637
  %i.og = load i32, ptr %i.ea, align 8, !tbaa !15 ; 3 uses
  %i.oh = icmp sgt i32 %i.og, 1
  br i1 %i.oh, label %bb.jj, label %bb.jk, !prof !11

bb.jj:                                            ; preds = %lean_del_object.exit982
  %i.oi = add nsw i32 %i.og, -1
  store i32 %i.oi, ptr %i.ea, align 8, !tbaa !15
  br label %lean_dec.exit635

bb.jk:                                            ; preds = %lean_del_object.exit982
  %.not.i767 = icmp eq i32 %i.og, 0
  br i1 %.not.i767, label %lean_dec.exit635, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ea) #4
  br label %lean_dec.exit635

lean_dec.exit635:                                 ; preds = %bb.jl, %bb.jk, %bb.jj
  %i.oj = ptrtoint ptr %5 to i64
  %i.ok = and i64 %i.oj, 1
  %.not.i632 = icmp eq i64 %i.ok, 0
  br i1 %.not.i632, label %bb.jm, label %lean_dec.exit633

bb.jm:                                            ; preds = %lean_dec.exit635
  %i.ol = load i32, ptr %5, align 4, !tbaa !15    ; 3 uses
  %i.om = icmp sgt i32 %i.ol, 1
  br i1 %i.om, label %bb.jn, label %bb.jo, !prof !11

bb.jn:                                            ; preds = %bb.jm
  %i.on = add nsw i32 %i.ol, -1
  store i32 %i.on, ptr %5, align 4, !tbaa !15
  br label %lean_dec.exit633

bb.jo:                                            ; preds = %bb.jm
  %.not.i769 = icmp eq i32 %i.ol, 0
  br i1 %.not.i769, label %lean_dec.exit633, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec.exit633

lean_dec.exit633:                                 ; preds = %bb.jp, %bb.jo, %bb.jn, %lean_dec.exit635
  %i.oo = load i32, ptr %4, align 4, !tbaa !15    ; 3 uses
  %i.op = icmp sgt i32 %i.oo, 1
  br i1 %i.op, label %bb.jq, label %bb.jr, !prof !11

bb.jq:                                            ; preds = %lean_dec.exit633
  %i.oq = add nsw i32 %i.oo, -1
  store i32 %i.oq, ptr %4, align 4, !tbaa !15
  br label %lean_dec_ref.exit810

bb.jr:                                            ; preds = %lean_dec.exit633
  %.not.i809 = icmp eq i32 %i.oo, 0
  br i1 %.not.i809, label %lean_dec_ref.exit810, label %bb.js

bb.js:                                            ; preds = %bb.jr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit810

lean_dec_ref.exit810:                             ; preds = %bb.jq, %bb.jr, %bb.js
  %i.or = ptrtoint ptr %3 to i64
  %i.os = and i64 %i.or, 1
  %.not.i630 = icmp eq i64 %i.os, 0
  br i1 %.not.i630, label %bb.jt, label %lean_dec.exit631

bb.jt:                                            ; preds = %lean_dec_ref.exit810
  %i.ot = load i32, ptr %3, align 4, !tbaa !15    ; 3 uses
  %i.ou = icmp sgt i32 %i.ot, 1
  br i1 %i.ou, label %bb.ju, label %bb.jv, !prof !11

bb.ju:                                            ; preds = %bb.jt
  %i.ov = add nsw i32 %i.ot, -1
  store i32 %i.ov, ptr %3, align 4, !tbaa !15
  br label %lean_dec.exit631

bb.jv:                                            ; preds = %bb.jt
  %.not.i771 = icmp eq i32 %i.ot, 0
  br i1 %.not.i771, label %lean_dec.exit631, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec.exit631

lean_dec.exit631:                                 ; preds = %bb.jw, %bb.jv, %bb.ju, %lean_dec_ref.exit810
  br i1 %.not.i840, label %bb.jx, label %lean_dec.exit

bb.jx:                                            ; preds = %lean_dec.exit631
  %i.ow = load i32, ptr %2, align 4, !tbaa !15    ; 3 uses
  %i.ox = icmp sgt i32 %i.ow, 1
  br i1 %i.ox, label %bb.jy, label %bb.jz, !prof !11

bb.jy:                                            ; preds = %bb.jx
  %i.oy = add nsw i32 %i.ow, -1
  store i32 %i.oy, ptr %2, align 4, !tbaa !15
  br label %lean_dec.exit

bb.jz:                                            ; preds = %bb.jx
  %.not.i773 = icmp eq i32 %i.ow, 0
  br i1 %.not.i773, label %lean_dec.exit, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit

bb.kb:                                            ; preds = %bb.lf, %bb.lg, %bb.lh
  %.mask1014 = and i64 %.val872, 9223372036854775807
  %.not1015 = icmp eq i64 %.mask1014, 0
  %l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__9_value.l_Lean_logAt___at___00Lean_log___at___00Lean_logError___at___00Lean_Elab_LibrarySearch_exact_x3f_spec__9_spec__9_spec__11___redArg___closed__0_value601 = select i1 %.not1015, ptr @l_Lean_logAt___at___00Lean_log___at___00Lean_logError___at___00Lean_Elab_LibrarySearch_exact_x3f_spec__9_spec__9_spec__11___redArg___closed__0_value, ptr @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__9_value
  %i.oz = load atomic i32, ptr @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__8_once seq_cst, align 4, !tbaa !10
  %i.pa = icmp eq i32 %i.oz, 1
  br i1 %i.pa, label %bb.kc, label %bb.kd, !prof !11

bb.kc:                                            ; preds = %bb.kb
  %i.pb = load ptr, ptr @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__8, align 8, !tbaa !13
  br label %lean_obj_once.exit984

bb.kd:                                            ; preds = %bb.kb
  %i.pc = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__8, ptr noundef nonnull @l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__8_once, ptr noundef nonnull @_init_l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__8) #4
  br label %lean_obj_once.exit984

lean_obj_once.exit984:                            ; preds = %bb.kc, %bb.kd
  %.0.i983 = phi ptr [ %i.pb, %bb.kc ], [ %i.pc, %bb.kd ] ; 2 uses
  %15 = tail call ptr @l_Lean_stringToMessageData(ptr noundef nonnull %l_Lean_Elab_LibrarySearch_exact_x3f___lam__2___closed__9_value.l_Lean_logAt___at___00Lean_log___at___00Lean_logError___at___00Lean_Elab_LibrarySearch_exact_x3f_spec__9_spec__9_spec__11___redArg___closed__0_value601) #4 ; 2 uses
  br i1 %i.eq, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %lean_obj_once.exit984
  %i.pd = getelementptr inbounds nuw i8, ptr %.0578, i64 4 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 4
  %i.pf = and i32 %i.pe, 16777215
  %i.pg = or disjoint i32 %i.pf, 117440512
  store i32 %i.pg, ptr %i.pd, align 4
  %i.ph = getelementptr inbounds nuw i8, ptr %.0578, i64 8
  %i.pi = getelementptr inbounds nuw i8, ptr %.0578, i64 16
  store ptr %15, ptr %i.pi, align 8, !tbaa !13
  store ptr %.0.i983, ptr %i.ph, align 8, !tbaa !13
  br label %bb.kg

bb.kf:                                            ; preds = %lean_obj_once.exit984
  %i.pj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  store ptr %.0.i983, ptr %i.pk, align 8, !tbaa !13
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  store ptr %15, ptr %i.pl, align 8, !tbaa !13
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %bb.ke
  %.0497 = phi ptr [ %.0578, %bb.ke ], [ %i.pj, %bb.kf ]
  %i.pm = tail call ptr @l_Lean_throwError___at___00Lean_Elab_LibrarySearch_exact_x3f_spec__11___redArg(ptr noundef nonnull %.0497, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14)
  br label %lean_dec.exit

.critedge:                                        ; preds = %lean_dec.exit695
  %i.pn = ptrtoint ptr %.0578 to i64
  %i.po = and i64 %i.pn, 1
  %.not.i988 = icmp eq i64 %i.po, 0
  br i1 %.not.i988, label %lean_del_object.exit989.sink.split, label %lean_del_object.exit989

lean_nat_eq.exit858:                              ; preds = %bb.cc
  %i.pp = getelementptr i8, ptr %i.en, i64 8
  %.val873 = load i64, ptr %i.pp, align 8, !tbaa !17
  %.mask = and i64 %.val873, 9223372036854775807
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %lean_nat_eq.exit858
  %i.pq = ptrtoint ptr %.0578 to i64
  %i.pr = and i64 %i.pq, 1
  %.not.i992 = icmp eq i64 %i.pr, 0
  br i1 %.not.i992, label %lean_del_object.exit989.sink.split, label %lean_del_object.exit989

bb.ki:                                            ; preds = %lean_nat_eq.exit858
  %i.ps = load i32, ptr %i.en, align 8, !tbaa !15 ; 3 uses
  %i.pt = icmp sgt i32 %i.ps, 1
  br i1 %i.pt, label %bb.kj, label %bb.kk, !prof !11

bb.kj:                                            ; preds = %bb.ki
  %i.pu = add nsw i32 %i.ps, -1
  store i32 %i.pu, ptr %i.en, align 8, !tbaa !15
  br label %lean_dec.exit627

bb.kk:                                            ; preds = %bb.ki
  %.not.i775 = icmp eq i32 %i.ps, 0
  br i1 %.not.i775, label %lean_dec.exit627, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.en) #4
  br label %lean_dec.exit627

lean_dec.exit627:                                 ; preds = %bb.kl, %bb.kk, %bb.kj
  %i.pv = ptrtoint ptr %.0580 to i64
  %i.pw = and i64 %i.pv, 1
  %.not.i994 = icmp eq i64 %i.pw, 0
  br i1 %.not.i994, label %bb.km, label %lean_del_object.exit995

bb.km:                                            ; preds = %lean_dec.exit627
  tail call void @lean_free_object(ptr noundef nonnull %.0580) #4
  br label %lean_del_object.exit995

lean_del_object.exit995:                          ; preds = %bb.km, %lean_dec.exit627
  %i.px = load i32, ptr %i.ea, align 8, !tbaa !15 ; 3 uses
  %i.py = icmp sgt i32 %i.px, 1
  br i1 %i.py, label %bb.kn, label %bb.ko, !prof !11

bb.kn:                                            ; preds = %lean_del_object.exit995
  %i.pz = add nsw i32 %i.px, -1
  store i32 %i.pz, ptr %i.ea, align 8, !tbaa !15
  br label %lean_dec.exit625

bb.ko:                                            ; preds = %lean_del_object.exit995
  %.not.i777 = icmp eq i32 %i.px, 0
  br i1 %.not.i777, label %lean_dec.exit625, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ea) #4
  br label %lean_dec.exit625

lean_dec.exit625:                                 ; preds = %bb.kp, %bb.ko, %bb.kn
  %i.qa = ptrtoint ptr %5 to i64
  %i.qb = and i64 %i.qa, 1
  %.not.i622 = icmp eq i64 %i.qb, 0
  br i1 %.not.i622, label %bb.kq, label %lean_dec.exit623

bb.kq:                                            ; preds = %lean_dec.exit625
  %i.qc = load i32, ptr %5, align 4, !tbaa !15    ; 3 uses
  %i.qd = icmp sgt i32 %i.qc, 1
  br i1 %i.qd, label %bb.kr, label %bb.ks, !prof !11

bb.kr:                                            ; preds = %bb.kq
  %i.qe = add nsw i32 %i.qc, -1
  store i32 %i.qe, ptr %5, align 4, !tbaa !15
  br label %lean_dec.exit623

bb.ks:                                            ; preds = %bb.kq
  %.not.i779 = icmp eq i32 %i.qc, 0
  br i1 %.not.i779, label %lean_dec.exit623, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec.exit623

lean_dec.exit623:                                 ; preds = %bb.kt, %bb.ks, %bb.kr, %lean_dec.exit625
  %i.qf = load i32, ptr %4, align 4, !tbaa !15    ; 3 uses
  %i.qg = icmp sgt i32 %i.qf, 1
  br i1 %i.qg, label %bb.ku, label %bb.kv, !prof !11

bb.ku:                                            ; preds = %lean_dec.exit623
  %i.qh = add nsw i32 %i.qf, -1
  store i32 %i.qh, ptr %4, align 4, !tbaa !15
  br label %lean_dec_ref.exit808

bb.kv:                                            ; preds = %lean_dec.exit623
  %.not.i807 = icmp eq i32 %i.qf, 0
  br i1 %.not.i807, label %lean_dec_ref.exit808, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit808

lean_dec_ref.exit808:                             ; preds = %bb.ku, %bb.kv, %bb.kw
  %i.qi = ptrtoint ptr %3 to i64
  %i.qj = and i64 %i.qi, 1
  %.not.i620 = icmp eq i64 %i.qj, 0
  br i1 %.not.i620, label %bb.kx, label %lean_dec.exit621

bb.kx:                                            ; preds = %lean_dec_ref.exit808
  %i.qk = load i32, ptr %3, align 4, !tbaa !15    ; 3 uses
  %i.ql = icmp sgt i32 %i.qk, 1
  br i1 %i.ql, label %bb.ky, label %bb.kz, !prof !11

bb.ky:                                            ; preds = %bb.kx
  %i.qm = add nsw i32 %i.qk, -1
  store i32 %i.qm, ptr %3, align 4, !tbaa !15
  br label %lean_dec.exit621

bb.kz:                                            ; preds = %bb.kx
  %.not.i781 = icmp eq i32 %i.qk, 0
  br i1 %.not.i781, label %lean_dec.exit621, label %bb.la

bb.la:                                            ; preds = %bb.kz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec.exit621

lean_dec.exit621:                                 ; preds = %bb.la, %bb.kz, %bb.ky, %lean_dec_ref.exit808
  br i1 %.not.i840, label %bb.lb, label %lean_dec.exit619

bb.lb:                                            ; preds = %lean_dec.exit621
  %i.qn = load i32, ptr %2, align 4, !tbaa !15    ; 3 uses
  %i.qo = icmp sgt i32 %i.qn, 1
  br i1 %i.qo, label %bb.lc, label %bb.ld, !prof !11

bb.lc:                                            ; preds = %bb.lb
  %i.qp = add nsw i32 %i.qn, -1
  store i32 %i.qp, ptr %2, align 4, !tbaa !15
  br label %lean_dec.exit619

bb.ld:                                            ; preds = %bb.lb
  %.not.i783 = icmp eq i32 %i.qn, 0
  br i1 %.not.i783, label %lean_dec.exit619, label %bb.le

bb.le:                                            ; preds = %bb.ld
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec.exit619

lean_dec.exit619:                                 ; preds = %bb.le, %bb.ld, %bb.lc, %lean_dec.exit621
  %i.qq = getelementptr i8, ptr %i.ep, i64 8
  %.val872 = load i64, ptr %i.qq, align 8, !tbaa !17
  %i.qr = load i32, ptr %i.ep, align 8, !tbaa !15 ; 3 uses
  %i.qs = icmp sgt i32 %i.qr, 1
  br i1 %i.qs, label %bb.lf, label %bb.lg, !prof !11

bb.lf:                                            ; preds = %lean_dec.exit619
  %i.qt = add nsw i32 %i.qr, -1
  store i32 %i.qt, ptr %i.ep, align 8, !tbaa !15
  br label %bb.kb

bb.lg:                                            ; preds = %lean_dec.exit619
  %.not.i785 = icmp eq i32 %i.qr, 0
  br i1 %.not.i785, label %bb.kb, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ep) #4
  br label %bb.kb

bb.li:                                            ; preds = %lean_obj_tag.exit890
  %i.qu = ptrtoint ptr %5 to i64
  %i.qv = and i64 %i.qu, 1
  %.not.i614 = icmp eq i64 %i.qv, 0
  br i1 %.not.i614, label %bb.lj, label %lean_dec.exit615

bb.lj:                                            ; preds = %bb.li
  %i.qw = load i32, ptr %5, align 4, !tbaa !15    ; 3 uses
  %i.qx = icmp sgt i32 %i.qw, 1
  br i1 %i.qx, label %bb.lk, label %bb.ll, !prof !11

bb.lk:                                            ; preds = %bb.lj
  %i.qy = add nsw i32 %i.qw, -1
  store i32 %i.qy, ptr %5, align 4, !tbaa !15
  br label %lean_dec.exit615

bb.ll:                                            ; preds = %bb.lj
  %.not.i787 = icmp eq i32 %i.qw, 0
  br i1 %.not.i787, label %lean_dec.exit615, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
end_hunk_1
