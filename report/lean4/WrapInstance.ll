Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/WrapInstance?download=true
inline.NumInlined: 7645
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__16___redArg___lam__1:bb.a
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.bs, %bb.br, %bb.bq, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.cd) #6
  br label %lean_dec_ref_known.exit

bb.bt:                                            ; preds = %lean_inc.exit598
  %i.cz = icmp sgt i32 %.val.i863, 1
  br i1 %i.cz, label %bb.bu, label %bb.bv, !prof !16

bb.bu:                                            ; preds = %bb.bt
  %i.da = add nsw i32 %.val.i863, -1
  store i32 %i.da, ptr %i.cd, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.bv:                                            ; preds = %bb.bt
  %.not.i8.i = icmp eq i32 %.val.i863, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.bu, %bb.bv, %bb.bw
  %.val.i.i865 = load i32, ptr %4, align 4, !tbaa !14 ; 3 uses
  %i.db = icmp sgt i32 %.val.i.i865, 0
  br i1 %i.db, label %bb.bx, label %bb.by, !prof !16

bb.bx:                                            ; preds = %lean_dec_ref_known.exit
  %i.dc = add nuw i32 %.val.i.i865, 1
  store i32 %i.dc, ptr %4, align 4, !tbaa !14
  br label %lean_inc_ref.exit867

bb.by:                                            ; preds = %lean_dec_ref_known.exit
  %.not.i.i866 = icmp eq i32 %.val.i.i865, 0
  br i1 %.not.i.i866, label %lean_inc_ref.exit867, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.dd = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit867

lean_inc_ref.exit867:                             ; preds = %bb.bx, %bb.by, %bb.bz
  %i.de = tail call ptr @l_Lean_Meta_isExprDefEq(ptr noundef nonnull %4, ptr noundef %i.cm, ptr noundef nonnull %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13) #6 ; 13 uses
  %i.df = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dg = and i64 %i.df, 1
  %.not.i868 = icmp eq i64 %i.dg, 0               ; 2 uses
  br i1 %.not.i868, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %lean_inc_ref.exit867
  %i.dh = lshr i64 %i.df, 1
  %i.di = trunc i64 %i.dh to i32
  br label %lean_obj_tag.exit871

bb.cb:                                            ; preds = %lean_inc_ref.exit867
  %i.dj = getelementptr i8, ptr %i.de, i64 4
  %.val.i870 = load i32, ptr %i.dj, align 4
  %i.dk = lshr i32 %.val.i870, 24
  br label %lean_obj_tag.exit871

lean_obj_tag.exit871:                             ; preds = %bb.ca, %bb.cb
  %.0.i869 = phi i32 [ %i.di, %bb.ca ], [ %i.dk, %bb.cb ]
  %i.dl = icmp eq i32 %.0.i869, 0
  br i1 %i.dl, label %bb.cc, label %bb.pa

bb.cc:                                            ; preds = %lean_obj_tag.exit871
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !10 ; 13 uses
  %i.do = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dp = and i64 %i.do, 1
  %.not.i595 = icmp eq i64 %i.dp, 0               ; 4 uses
  br i1 %.not.i595, label %bb.cd, label %lean_inc.exit596

bb.cd:                                            ; preds = %bb.cc
  %.val.i.i872 = load i32, ptr %i.dn, align 4, !tbaa !14 ; 3 uses
  %i.dq = icmp sgt i32 %.val.i.i872, 0
  br i1 %i.dq, label %bb.ce, label %bb.cf, !prof !16

bb.ce:                                            ; preds = %bb.cd
  %i.dr = add nuw i32 %.val.i.i872, 1
  store i32 %i.dr, ptr %i.dn, align 4, !tbaa !14
  br label %lean_inc.exit596

bb.cf:                                            ; preds = %bb.cd
  %.not.i.i873 = icmp eq i32 %.val.i.i872, 0
  br i1 %.not.i.i873, label %lean_inc.exit596, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ds = atomicrmw sub ptr %i.dn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit596

lean_inc.exit596:                                 ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cc
  %.val.i875 = load i32, ptr %i.de, align 8, !tbaa !14 ; 4 uses
  %i.dt = icmp eq i32 %.val.i875, 1
  br i1 %i.dt, label %.preheader.i877, label %bb.cl

.preheader.i877:                                  ; preds = %lean_inc.exit596
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !10 ; 4 uses
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = and i64 %i.dv, 1
  %.not.i.i879 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i879, label %bb.ch, label %lean_dec.exit.i880

bb.ch:                                            ; preds = %.preheader.i877
  %i.dx = load i32, ptr %i.du, align 4, !tbaa !14 ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 1
  br i1 %i.dy, label %bb.ci, label %bb.cj, !prof !16

bb.ci:                                            ; preds = %bb.ch
  %i.dz = add nsw i32 %i.dx, -1
  store i32 %i.dz, ptr %i.du, align 4, !tbaa !14
  br label %lean_dec.exit.i880

bb.cj:                                            ; preds = %bb.ch
  %.not.i7.i884 = icmp eq i32 %i.dx, 0
  br i1 %.not.i7.i884, label %lean_dec.exit.i880, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.du) #6
  br label %lean_dec.exit.i880

lean_dec.exit.i880:                               ; preds = %bb.ck, %bb.cj, %bb.ci, %.preheader.i877
  tail call void @lean_free_object(ptr noundef nonnull %i.de) #6
  br label %lean_dec_ref_known.exit885

bb.cl:                                            ; preds = %lean_inc.exit596
  %i.ea = icmp sgt i32 %.val.i875, 1
  br i1 %i.ea, label %bb.cm, label %bb.cn, !prof !16

bb.cm:                                            ; preds = %bb.cl
  %i.eb = add nsw i32 %.val.i875, -1
  store i32 %i.eb, ptr %i.de, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit885

bb.cn:                                            ; preds = %bb.cl
  %.not.i8.i876 = icmp eq i32 %.val.i875, 0
  br i1 %.not.i8.i876, label %lean_dec_ref_known.exit885, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.de) #6
  br label %lean_dec_ref_known.exit885

lean_dec_ref_known.exit885:                       ; preds = %lean_dec.exit.i880, %bb.cm, %bb.cn, %bb.co
  %i.ec = and i64 %i.do, 510
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.cp, label %bb.nj

bb.cp:                                            ; preds = %lean_dec_ref_known.exit885
  %i.ee = tail call ptr @l_Lean_mkAuxDeclName___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__1___redArg(ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__16___redArg___lam__1___closed__1_value, ptr noundef %13) ; 10 uses
  %i.ef = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.eg = and i64 %i.ef, 1
  %.not.i886 = icmp eq i64 %i.eg, 0               ; 2 uses
  br i1 %.not.i886, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.eh = lshr i64 %i.ef, 1
  %i.ei = trunc i64 %i.eh to i32
  br label %lean_obj_tag.exit889

bb.cr:                                            ; preds = %bb.cp
  %i.ej = getelementptr i8, ptr %i.ee, i64 4
  %.val.i888 = load i32, ptr %i.ej, align 4
  %i.ek = lshr i32 %.val.i888, 24
  br label %lean_obj_tag.exit889

lean_obj_tag.exit889:                             ; preds = %bb.cq, %bb.cr
  %.0.i887 = phi i32 [ %i.ei, %bb.cq ], [ %i.ek, %bb.cr ]
  %i.el = icmp eq i32 %.0.i887, 0
  br i1 %i.el, label %bb.cs, label %bb.mc

bb.cs:                                            ; preds = %lean_obj_tag.exit889
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !10 ; 30 uses
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = and i64 %i.eo, 1
  %.not.i890 = icmp eq i64 %i.ep, 0               ; 8 uses
  br i1 %.not.i890, label %bb.ct, label %lean_inc_n.exit

bb.ct:                                            ; preds = %bb.cs
  %.val.i.i891 = load i32, ptr %i.en, align 4, !tbaa !14 ; 3 uses
  %i.eq = icmp sgt i32 %.val.i.i891, 0
  br i1 %i.eq, label %bb.cu, label %bb.cv, !prof !16

bb.cu:                                            ; preds = %bb.ct
  %i.er = add nuw i32 %.val.i.i891, 2
  store i32 %i.er, ptr %i.en, align 4, !tbaa !14
  br label %lean_inc_n.exit

bb.cv:                                            ; preds = %bb.ct
  %.not.i.i892 = icmp eq i32 %.val.i.i891, 0
  br i1 %.not.i.i892, label %lean_inc_n.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.es = atomicrmw sub ptr %i.en, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %bb.cs, %bb.cu, %bb.cv, %bb.cw
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ee, i32 noundef 1)
  br i1 %.not.i595, label %bb.cx, label %lean_dec.exit695

bb.cx:                                            ; preds = %lean_inc_n.exit
  %i.et = load i32, ptr %i.dn, align 512, !tbaa !14 ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 1
  br i1 %i.eu, label %bb.cy, label %bb.cz, !prof !16

bb.cy:                                            ; preds = %bb.cx
  %i.ev = add nsw i32 %i.et, -1
  store i32 %i.ev, ptr %i.dn, align 512, !tbaa !14
  br label %lean_dec.exit695

bb.cz:                                            ; preds = %bb.cx
  %.not.i715 = icmp eq i32 %i.et, 0
  br i1 %.not.i715, label %lean_dec.exit695, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dn) #6
  br label %lean_dec.exit695

lean_dec.exit695:                                 ; preds = %bb.da, %bb.cz, %bb.cy, %lean_inc_n.exit
  %i.ew = tail call ptr @l_Lean_Meta_mkAuxDefinition(ptr noundef %i.en, ptr noundef nonnull %4, ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %5, ptr noundef nonnull %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13) #6 ; 10 uses
  %i.ex = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ey = and i64 %i.ex, 1
  %.not.i893 = icmp eq i64 %i.ey, 0               ; 2 uses
  br i1 %.not.i893, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %lean_dec.exit695
  %i.ez = lshr i64 %i.ex, 1
  %i.fa = trunc i64 %i.ez to i32
  br label %lean_obj_tag.exit896

bb.dc:                                            ; preds = %lean_dec.exit695
  %i.fb = getelementptr i8, ptr %i.ew, i64 4
  %.val.i895 = load i32, ptr %i.fb, align 4
  %i.fc = lshr i32 %.val.i895, 24
  br label %lean_obj_tag.exit896

lean_obj_tag.exit896:                             ; preds = %bb.db, %bb.dc
  %.0.i894 = phi i32 [ %i.fa, %bb.db ], [ %i.fc, %bb.dc ]
  %i.fd = icmp eq i32 %.0.i894, 0
  br i1 %i.fd, label %bb.dd, label %bb.ip

bb.dd:                                            ; preds = %lean_obj_tag.exit896
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !10 ; 5 uses
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = and i64 %i.fg, 1
  %.not.i593 = icmp eq i64 %i.fh, 0
  br i1 %.not.i593, label %bb.de, label %lean_inc.exit594

bb.de:                                            ; preds = %bb.dd
  %.val.i.i897 = load i32, ptr %i.ff, align 4, !tbaa !14 ; 3 uses
  %i.fi = icmp sgt i32 %.val.i.i897, 0
  br i1 %i.fi, label %bb.df, label %bb.dg, !prof !16

bb.df:                                            ; preds = %bb.de
  %i.fj = add nuw i32 %.val.i.i897, 1
  store i32 %i.fj, ptr %i.ff, align 4, !tbaa !14
  br label %lean_inc.exit594

bb.dg:                                            ; preds = %bb.de
  %.not.i.i898 = icmp eq i32 %.val.i.i897, 0
  br i1 %.not.i.i898, label %lean_inc.exit594, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.fk = atomicrmw sub ptr %i.ff, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit594

lean_inc.exit594:                                 ; preds = %bb.dh, %bb.dg, %bb.df, %bb.dd
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ew, i32 noundef 1)
  %i.fl = tail call ptr @l_Lean_MVarId_assign___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__6___redArg(ptr noundef %0, ptr noundef %i.ff, ptr noundef %11) ; 9 uses
  %i.fm = ptrtoint ptr %i.fl to i64               ; 2 uses
  %i.fn = and i64 %i.fm, 1
  %.not.i900 = icmp eq i64 %i.fn, 0               ; 2 uses
  br i1 %.not.i900, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %lean_inc.exit594
  %i.fo = lshr i64 %i.fm, 1
  %i.fp = trunc i64 %i.fo to i32
  br label %lean_obj_tag.exit903

bb.dj:                                            ; preds = %lean_inc.exit594
  %i.fq = getelementptr i8, ptr %i.fl, i64 4
  %.val.i902 = load i32, ptr %i.fq, align 4
  %i.fr = lshr i32 %.val.i902, 24
  br label %lean_obj_tag.exit903

lean_obj_tag.exit903:                             ; preds = %bb.di, %bb.dj
  %.0.i901 = phi i32 [ %i.fp, %bb.di ], [ %i.fr, %bb.dj ]
  %i.fs = icmp eq i32 %.0.i901, 0
  br i1 %i.fs, label %bb.dk, label %bb.hs

bb.dk:                                            ; preds = %lean_obj_tag.exit903
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.fl, i32 noundef 1)
  br i1 %.not.i890, label %bb.dl, label %lean_inc.exit592

bb.dl:                                            ; preds = %bb.dk
  %.val.i.i904 = load i32, ptr %i.en, align 4, !tbaa !14 ; 3 uses
  %i.ft = icmp sgt i32 %.val.i.i904, 0
  br i1 %i.ft, label %bb.dm, label %bb.dn, !prof !16

bb.dm:                                            ; preds = %bb.dl
  %i.fu = add nuw i32 %.val.i.i904, 1
  store i32 %i.fu, ptr %i.en, align 4, !tbaa !14
  br label %lean_inc.exit592

bb.dn:                                            ; preds = %bb.dl
  %.not.i.i905 = icmp eq i32 %.val.i.i904, 0
  br i1 %.not.i.i905, label %lean_inc.exit592, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.fv = atomicrmw sub ptr %i.en, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit592

lean_inc.exit592:                                 ; preds = %bb.do, %bb.dn, %bb.dm, %bb.dk
  %i.fw = tail call ptr @l_Lean_Meta_setInlineAttribute(ptr noundef %i.en, i8 noundef zeroext 0, ptr noundef nonnull %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13) #6 ; 9 uses
  %i.fx = ptrtoint ptr %i.fw to i64               ; 2 uses
  %i.fy = and i64 %i.fx, 1
  %.not.i907 = icmp eq i64 %i.fy, 0               ; 2 uses
  br i1 %.not.i907, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %lean_inc.exit592
  %i.fz = lshr i64 %i.fx, 1
  %i.ga = trunc i64 %i.fz to i32
  br label %lean_obj_tag.exit910

bb.dq:                                            ; preds = %lean_inc.exit592
  %i.gb = getelementptr i8, ptr %i.fw, i64 4
  %.val.i909 = load i32, ptr %i.gb, align 4
  %i.gc = lshr i32 %.val.i909, 24
  br label %lean_obj_tag.exit910

lean_obj_tag.exit910:                             ; preds = %bb.dp, %bb.dq
  %.0.i908 = phi i32 [ %i.ga, %bb.dp ], [ %i.gc, %bb.dq ]
  %i.gd = icmp eq i32 %.0.i908, 0
  br i1 %i.gd, label %bb.dr, label %bb.gv

bb.dr:                                            ; preds = %lean_obj_tag.exit910
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.fw, i32 noundef 1)
  %i.ge = icmp eq i8 %8, 0
  br i1 %i.ge, label %lean_dec.exit679, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.gf = tail call ptr @lean_st_ref_take(ptr noundef %13) #6 ; 17 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !10 ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !10 ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !10 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !10 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !10 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !10 ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !10 ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gf, i64 72
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !10 ; 5 uses
  %.val834 = load i32, ptr %i.gf, align 8, !tbaa !14
  %i.gw = icmp eq i32 %.val834, 1                 ; 2 uses
  br i1 %i.gw, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !10 ; 4 uses
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = and i64 %i.gz, 1
  %.not.i692 = icmp eq i64 %i.ha, 0
  br i1 %.not.i692, label %bb.du, label %lean_dec.exit693

bb.du:                                            ; preds = %bb.dt
  %i.hb = load i32, ptr %i.gy, align 4, !tbaa !14 ; 3 uses
  %i.hc = icmp sgt i32 %i.hb, 1
  br i1 %i.hc, label %bb.dv, label %bb.dw, !prof !16

bb.dv:                                            ; preds = %bb.du
  %i.hd = add nsw i32 %i.hb, -1
  store i32 %i.hd, ptr %i.gy, align 4, !tbaa !14
  br label %lean_dec.exit693

bb.dw:                                            ; preds = %bb.du
  %.not.i717 = icmp eq i32 %i.hb, 0
  br i1 %.not.i717, label %lean_dec.exit693, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gy) #6
  br label %lean_dec.exit693

bb.dy:                                            ; preds = %bb.ds
  %i.he = ptrtoint ptr %i.gv to i64
  %i.hf = and i64 %i.he, 1
  %.not.i589 = icmp eq i64 %i.hf, 0
  br i1 %.not.i589, label %bb.dz, label %lean_inc.exit590

bb.dz:                                            ; preds = %bb.dy
  %.val.i.i911 = load i32, ptr %i.gv, align 4, !tbaa !14 ; 3 uses
  %i.hg = icmp sgt i32 %.val.i.i911, 0
  br i1 %i.hg, label %bb.ea, label %bb.eb, !prof !16

bb.ea:                                            ; preds = %bb.dz
  %i.hh = add nuw i32 %.val.i.i911, 1
  store i32 %i.hh, ptr %i.gv, align 4, !tbaa !14
  br label %lean_inc.exit590

bb.eb:                                            ; preds = %bb.dz
  %.not.i.i912 = icmp eq i32 %.val.i.i911, 0
  br i1 %.not.i.i912, label %lean_inc.exit590, label %bb.ec
end_hunk_0
begin_hunk_1_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__16___redArg___lam__1:bb.a
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.os) #6
  br label %bb.kx

bb.kx:                                            ; preds = %lean_inc.exit558, %bb.ku, %bb.kv, %bb.kw
  %i.ql = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit697.sink.split

lean_dec.exit679:                                 ; preds = %bb.dr, %bb.gu
  %i.qm = icmp eq i8 %6, 0
  br i1 %i.qm, label %bb.jq, label %bb.ky

bb.ky:                                            ; preds = %lean_dec.exit679
  %i.qn = tail call ptr @lean_alloc_object(i64 noundef 32) #6 ; 5 uses
  store i32 1, ptr %i.qn, align 4, !tbaa !14
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 4 ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 4
  %i.qq = and i32 %i.qp, 65535
  %i.qr = or disjoint i32 %i.qq, -167772160
  store i32 %i.qr, ptr %i.qo, align 4
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store i64 0, ptr %i.qs, align 8, !tbaa !12
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store i64 1, ptr %i.qt, align 8, !tbaa !12
  br i1 %.not.i890, label %bb.kz, label %lean_inc.exit556

bb.kz:                                            ; preds = %bb.ky
  %.val.i.i969 = load i32, ptr %i.en, align 4, !tbaa !14 ; 3 uses
  %i.qu = icmp sgt i32 %.val.i.i969, 0
  br i1 %i.qu, label %bb.la, label %bb.lb, !prof !16

bb.la:                                            ; preds = %bb.kz
  %i.qv = add nuw i32 %.val.i.i969, 1
  store i32 %i.qv, ptr %i.en, align 4, !tbaa !14
  br label %lean_inc.exit556

bb.lb:                                            ; preds = %bb.kz
  %.not.i.i970 = icmp eq i32 %.val.i.i969, 0
  br i1 %.not.i.i970, label %lean_inc.exit556, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.qw = atomicrmw sub ptr %i.en, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit556

lean_inc.exit556:                                 ; preds = %bb.lc, %bb.lb, %bb.la, %bb.ky
  %i.qx = tail call ptr @lean_array_push(ptr noundef nonnull %i.qn, ptr noundef %i.en) #6
  %i.qy = tail call ptr @l_Lean_compileDecls(ptr noundef %i.qx, i8 noundef zeroext %7, ptr noundef nonnull %12, ptr noundef %13) #6 ; 9 uses
  %i.qz = ptrtoint ptr %i.qy to i64               ; 2 uses
  %i.ra = and i64 %i.qz, 1
  %.not.i972 = icmp eq i64 %i.ra, 0               ; 2 uses
  br i1 %.not.i972, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %lean_inc.exit556
  %i.rb = lshr i64 %i.qz, 1
  %i.rc = trunc i64 %i.rb to i32
  br label %lean_obj_tag.exit975

bb.le:                                            ; preds = %lean_inc.exit556
  %i.rd = getelementptr i8, ptr %i.qy, i64 4
  %.val.i974 = load i32, ptr %i.rd, align 4
  %i.re = lshr i32 %.val.i974, 24
  br label %lean_obj_tag.exit975

lean_obj_tag.exit975:                             ; preds = %bb.ld, %bb.le
  %.0.i973 = phi i32 [ %i.rc, %bb.ld ], [ %i.re, %bb.le ]
  %i.rf = icmp eq i32 %.0.i973, 0
  br i1 %i.rf, label %lean_dec.exit643, label %bb.lf

bb.lf:                                            ; preds = %lean_obj_tag.exit975
  br i1 %.not.i890, label %bb.lg, label %lean_dec.exit649

bb.lg:                                            ; preds = %bb.lf
  %i.rg = load i32, ptr %i.en, align 4, !tbaa !14 ; 3 uses
  %i.rh = icmp sgt i32 %i.rg, 1
  br i1 %i.rh, label %bb.lh, label %bb.li, !prof !16

bb.lh:                                            ; preds = %bb.lg
  %i.ri = add nsw i32 %i.rg, -1
  store i32 %i.ri, ptr %i.en, align 4, !tbaa !14
  br label %lean_dec.exit649

bb.li:                                            ; preds = %bb.lg
  %.not.i761 = icmp eq i32 %i.rg, 0
  br i1 %.not.i761, label %lean_dec.exit649, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.en) #6
  br label %lean_dec.exit649

lean_dec.exit649:                                 ; preds = %bb.lj, %bb.li, %bb.lh, %bb.lf
  %i.rj = ptrtoint ptr %3 to i64
  %i.rk = and i64 %i.rj, 1
  %.not.i646 = icmp eq i64 %i.rk, 0
  br i1 %.not.i646, label %bb.lk, label %lean_dec.exit647

bb.lk:                                            ; preds = %lean_dec.exit649
  %i.rl = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.rm = icmp sgt i32 %i.rl, 1
  br i1 %i.rm, label %bb.ll, label %bb.lm, !prof !16

bb.ll:                                            ; preds = %bb.lk
  %i.rn = add nsw i32 %i.rl, -1
  store i32 %i.rn, ptr %3, align 4, !tbaa !14
  br label %lean_dec.exit647

bb.lm:                                            ; preds = %bb.lk
  %.not.i763 = icmp eq i32 %i.rl, 0
  br i1 %.not.i763, label %lean_dec.exit647, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit647

lean_dec.exit647:                                 ; preds = %bb.ln, %bb.lm, %bb.ll, %lean_dec.exit649
  %i.ro = ptrtoint ptr %2 to i64
  %i.rp = and i64 %i.ro, 1
  %.not.i644 = icmp eq i64 %i.rp, 0
  br i1 %.not.i644, label %bb.lo, label %lean_dec.exit645

bb.lo:                                            ; preds = %lean_dec.exit647
  %i.rq = load i32, ptr %2, align 4, !tbaa !14    ; 3 uses
  %i.rr = icmp sgt i32 %i.rq, 1
  br i1 %i.rr, label %bb.lp, label %bb.lq, !prof !16

bb.lp:                                            ; preds = %bb.lo
  %i.rs = add nsw i32 %i.rq, -1
  store i32 %i.rs, ptr %2, align 4, !tbaa !14
  br label %lean_dec.exit645

bb.lq:                                            ; preds = %bb.lo
  %.not.i765 = icmp eq i32 %i.rq, 0
  br i1 %.not.i765, label %lean_dec.exit645, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec.exit645

lean_dec.exit645:                                 ; preds = %bb.lr, %bb.lq, %bb.lp, %lean_dec.exit647
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !10 ; 5 uses
  %.val827 = load i32, ptr %i.qy, align 8, !tbaa !14
  %i.rv = icmp eq i32 %.val827, 1
  br i1 %i.rv, label %lean_dec.exit697, label %bb.ls

bb.ls:                                            ; preds = %lean_dec.exit645
  %i.rw = ptrtoint ptr %i.ru to i64
  %i.rx = and i64 %i.rw, 1
  %.not.i553 = icmp eq i64 %i.rx, 0
  br i1 %.not.i553, label %bb.lt, label %lean_inc.exit554

bb.lt:                                            ; preds = %bb.ls
  %.val.i.i976 = load i32, ptr %i.ru, align 4, !tbaa !14 ; 3 uses
  %i.ry = icmp sgt i32 %.val.i.i976, 0
  br i1 %i.ry, label %bb.lu, label %bb.lv, !prof !16

bb.lu:                                            ; preds = %bb.lt
  %i.rz = add nuw i32 %.val.i.i976, 1
  store i32 %i.rz, ptr %i.ru, align 4, !tbaa !14
  br label %lean_inc.exit554

bb.lv:                                            ; preds = %bb.lt
  %.not.i.i977 = icmp eq i32 %.val.i.i976, 0
  br i1 %.not.i.i977, label %lean_inc.exit554, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.sa = atomicrmw sub ptr %i.ru, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit554

lean_inc.exit554:                                 ; preds = %bb.lw, %bb.lv, %bb.lu, %bb.ls
  br i1 %.not.i972, label %bb.lx, label %bb.mb

bb.lx:                                            ; preds = %lean_inc.exit554
  %i.sb = load i32, ptr %i.qy, align 8, !tbaa !14 ; 3 uses
  %i.sc = icmp sgt i32 %i.sb, 1
  br i1 %i.sc, label %bb.ly, label %bb.lz, !prof !16

bb.ly:                                            ; preds = %bb.lx
  %i.sd = add nsw i32 %i.sb, -1
  store i32 %i.sd, ptr %i.qy, align 8, !tbaa !14
  br label %bb.mb

bb.lz:                                            ; preds = %bb.lx
  %.not.i767 = icmp eq i32 %i.sb, 0
  br i1 %.not.i767, label %bb.mb, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qy) #6
  br label %bb.mb

bb.mb:                                            ; preds = %lean_inc.exit554, %bb.ly, %bb.lz, %bb.ma
  %i.se = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit697.sink.split

lean_dec.exit643:                                 ; preds = %lean_obj_tag.exit975
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.qy, i32 noundef 1)
  br label %bb.jq

bb.mc:                                            ; preds = %lean_obj_tag.exit889
  br i1 %.not.i595, label %bb.md, label %lean_dec.exit641

bb.md:                                            ; preds = %bb.mc
  %i.sf = load i32, ptr %i.dn, align 512, !tbaa !14 ; 3 uses
  %i.sg = icmp sgt i32 %i.sf, 1
  br i1 %i.sg, label %bb.me, label %bb.mf, !prof !16

bb.me:                                            ; preds = %bb.md
  %i.sh = add nsw i32 %i.sf, -1
  store i32 %i.sh, ptr %i.dn, align 512, !tbaa !14
  br label %lean_dec.exit641

bb.mf:                                            ; preds = %bb.md
  %.not.i769 = icmp eq i32 %i.sf, 0
  br i1 %.not.i769, label %lean_dec.exit641, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dn) #6
  br label %lean_dec.exit641

lean_dec.exit641:                                 ; preds = %bb.mg, %bb.mf, %bb.me, %bb.mc
  %i.si = load i32, ptr %4, align 4, !tbaa !14    ; 3 uses
  %i.sj = icmp sgt i32 %i.si, 1
  br i1 %i.sj, label %bb.mh, label %bb.mi, !prof !16

bb.mh:                                            ; preds = %lean_dec.exit641
  %i.sk = add nsw i32 %i.si, -1
  store i32 %i.sk, ptr %4, align 4, !tbaa !14
  br label %lean_dec_ref.exit820

bb.mi:                                            ; preds = %lean_dec.exit641
  %.not.i819 = icmp eq i32 %i.si, 0
  br i1 %.not.i819, label %lean_dec_ref.exit820, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec_ref.exit820

lean_dec_ref.exit820:                             ; preds = %bb.mh, %bb.mi, %bb.mj
  %i.sl = ptrtoint ptr %3 to i64
  %i.sm = and i64 %i.sl, 1
  %.not.i638 = icmp eq i64 %i.sm, 0
  br i1 %.not.i638, label %bb.mk, label %lean_dec.exit639

bb.mk:                                            ; preds = %lean_dec_ref.exit820
  %i.sn = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.so = icmp sgt i32 %i.sn, 1
  br i1 %i.so, label %bb.ml, label %bb.mm, !prof !16

bb.ml:                                            ; preds = %bb.mk
  %i.sp = add nsw i32 %i.sn, -1
  store i32 %i.sp, ptr %3, align 4, !tbaa !14
  br label %lean_dec.exit639

bb.mm:                                            ; preds = %bb.mk
  %.not.i771 = icmp eq i32 %i.sn, 0
  br i1 %.not.i771, label %lean_dec.exit639, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit639

lean_dec.exit639:                                 ; preds = %bb.mn, %bb.mm, %bb.ml, %lean_dec_ref.exit820
  %i.sq = ptrtoint ptr %2 to i64
  %i.sr = and i64 %i.sq, 1
  %.not.i636 = icmp eq i64 %i.sr, 0
  br i1 %.not.i636, label %bb.mo, label %lean_dec.exit637

bb.mo:                                            ; preds = %lean_dec.exit639
  %i.ss = load i32, ptr %2, align 4, !tbaa !14    ; 3 uses
  %i.st = icmp sgt i32 %i.ss, 1
  br i1 %i.st, label %bb.mp, label %bb.mq, !prof !16

bb.mp:                                            ; preds = %bb.mo
  %i.su = add nsw i32 %i.ss, -1
  store i32 %i.su, ptr %2, align 4, !tbaa !14
  br label %lean_dec.exit637

bb.mq:                                            ; preds = %bb.mo
  %.not.i773 = icmp eq i32 %i.ss, 0
  br i1 %.not.i773, label %lean_dec.exit637, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec.exit637

lean_dec.exit637:                                 ; preds = %bb.mr, %bb.mq, %bb.mp, %lean_dec.exit639
  %i.sv = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.sw = icmp sgt i32 %i.sv, 1
  br i1 %i.sw, label %bb.ms, label %bb.mt, !prof !16

bb.ms:                                            ; preds = %lean_dec.exit637
  %i.sx = add nsw i32 %i.sv, -1
  store i32 %i.sx, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit818

bb.mt:                                            ; preds = %lean_dec.exit637
  %.not.i817 = icmp eq i32 %i.sv, 0
  br i1 %.not.i817, label %lean_dec_ref.exit818, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit818

lean_dec_ref.exit818:                             ; preds = %bb.ms, %bb.mt, %bb.mu
  %i.sy = ptrtoint ptr %0 to i64
  %i.sz = and i64 %i.sy, 1
  %.not.i634 = icmp eq i64 %i.sz, 0
  br i1 %.not.i634, label %bb.mv, label %lean_dec.exit635

bb.mv:                                            ; preds = %lean_dec_ref.exit818
  %i.ta = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.tb = icmp sgt i32 %i.ta, 1
  br i1 %i.tb, label %bb.mw, label %bb.mx, !prof !16

bb.mw:                                            ; preds = %bb.mv
  %i.tc = add nsw i32 %i.ta, -1
  store i32 %i.tc, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit635

bb.mx:                                            ; preds = %bb.mv
  %.not.i775 = icmp eq i32 %i.ta, 0
  br i1 %.not.i775, label %lean_dec.exit635, label %bb.my

bb.my:                                            ; preds = %bb.mx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit635

lean_dec.exit635:                                 ; preds = %bb.my, %bb.mx, %bb.mw, %lean_dec_ref.exit818
  %i.td = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !10 ; 5 uses
  %.val826 = load i32, ptr %i.ee, align 8, !tbaa !14
  %i.tf = icmp eq i32 %.val826, 1
  br i1 %i.tf, label %lean_dec.exit697, label %bb.mz

bb.mz:                                            ; preds = %lean_dec.exit635
  %i.tg = ptrtoint ptr %i.te to i64
  %i.th = and i64 %i.tg, 1
  %.not.i551 = icmp eq i64 %i.th, 0
  br i1 %.not.i551, label %bb.na, label %lean_inc.exit552

bb.na:                                            ; preds = %bb.mz
  %.val.i.i979 = load i32, ptr %i.te, align 4, !tbaa !14 ; 3 uses
  %i.ti = icmp sgt i32 %.val.i.i979, 0
  br i1 %i.ti, label %bb.nb, label %bb.nc, !prof !16

bb.nb:                                            ; preds = %bb.na
  %i.tj = add nuw i32 %.val.i.i979, 1
  store i32 %i.tj, ptr %i.te, align 4, !tbaa !14
  br label %lean_inc.exit552

bb.nc:                                            ; preds = %bb.na
  %.not.i.i980 = icmp eq i32 %.val.i.i979, 0
  br i1 %.not.i.i980, label %lean_inc.exit552, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.tk = atomicrmw sub ptr %i.te, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit552

lean_inc.exit552:                                 ; preds = %bb.nd, %bb.nc, %bb.nb, %bb.mz
  br i1 %.not.i886, label %bb.ne, label %bb.ni

bb.ne:                                            ; preds = %lean_inc.exit552
  %i.tl = load i32, ptr %i.ee, align 8, !tbaa !14 ; 3 uses
  %i.tm = icmp sgt i32 %i.tl, 1
  br i1 %i.tm, label %bb.nf, label %bb.ng, !prof !16

bb.nf:                                            ; preds = %bb.ne
  %i.tn = add nsw i32 %i.tl, -1
  store i32 %i.tn, ptr %i.ee, align 8, !tbaa !14
  br label %bb.ni

bb.ng:                                            ; preds = %bb.ne
  %.not.i777 = icmp eq i32 %i.tl, 0
  br i1 %.not.i777, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ee) #6
  br label %bb.ni

bb.ni:                                            ; preds = %lean_inc.exit552, %bb.nf, %bb.ng, %bb.nh
  %i.to = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit697.sink.split

bb.nj:                                            ; preds = %lean_dec_ref_known.exit885
  br i1 %.not.i595, label %bb.nk, label %lean_dec.exit631

bb.nk:                                            ; preds = %bb.nj
  %i.tp = load i32, ptr %i.dn, align 4, !tbaa !14 ; 3 uses
  %i.tq = icmp sgt i32 %i.tp, 1
  br i1 %i.tq, label %bb.nl, label %bb.nm, !prof !16

bb.nl:                                            ; preds = %bb.nk
  %i.tr = add nsw i32 %i.tp, -1
  store i32 %i.tr, ptr %i.dn, align 4, !tbaa !14
  br label %lean_dec.exit631

bb.nm:                                            ; preds = %bb.nk
  %.not.i779 = icmp eq i32 %i.tp, 0
  br i1 %.not.i779, label %lean_dec.exit631, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dn) #6
  br label %lean_dec.exit631

lean_dec.exit631:                                 ; preds = %bb.nn, %bb.nm, %bb.nl, %bb.nj
  %i.ts = load i32, ptr %4, align 4, !tbaa !14    ; 3 uses
  %i.tt = icmp sgt i32 %i.ts, 1
  br i1 %i.tt, label %bb.no, label %bb.np, !prof !16

end_hunk_1
begin_hunk_2_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__8___redArg:bb.a
lean_dec.exit1727:                                ; preds = %bb.ch, %bb.ci, %bb.cj, %bb.bx, %bb.bz, %bb.ca, %bb.cb
  %.01252 = phi ptr [ %.01141, %bb.bx ], [ %.01141, %bb.cb ], [ %.01141, %bb.ca ], [ %.01141, %bb.bz ], [ inttoptr (i64 1 to ptr), %bb.cj ], [ inttoptr (i64 1 to ptr), %bb.ci ], [ inttoptr (i64 1 to ptr), %bb.ch ] ; 10 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aw
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !10 ; 57 uses
  br i1 %.not.i1471, label %bb.ck, label %lean_dec.exit1723

bb.ck:                                            ; preds = %lean_dec.exit1727
  %i.fi = load i32, ptr %i.dz, align 4, !tbaa !14 ; 3 uses
  %i.fj = icmp sgt i32 %i.fi, 1
  br i1 %i.fj, label %bb.cl, label %bb.cm, !prof !16

bb.cl:                                            ; preds = %bb.ck
  %i.fk = add nsw i32 %i.fi, -1
  store i32 %i.fk, ptr %i.dz, align 4, !tbaa !14
  br label %lean_dec.exit1723

bb.cm:                                            ; preds = %bb.ck
  %.not.i1743 = icmp eq i32 %i.fi, 0
  br i1 %.not.i1743, label %lean_dec.exit1723, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dz) #6
  br label %lean_dec.exit1723

lean_dec.exit1723:                                ; preds = %bb.cn, %bb.cm, %bb.cl, %lean_dec.exit1727
  %i.fl = and i64 %i.ea, 510
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %bb.co, label %bb.abt

bb.co:                                            ; preds = %lean_dec.exit1723
  br i1 %.not.i2085, label %bb.cp, label %lean_inc.exit1468

bb.cp:                                            ; preds = %bb.co
  %.val.i.i2120 = load i32, ptr %i.db, align 4, !tbaa !14 ; 3 uses
  %i.fn = icmp sgt i32 %.val.i.i2120, 0
  br i1 %i.fn, label %bb.cq, label %bb.cr, !prof !16

bb.cq:                                            ; preds = %bb.cp
  %i.fo = add nuw i32 %.val.i.i2120, 1
  store i32 %i.fo, ptr %i.db, align 4, !tbaa !14
  br label %lean_inc.exit1468

bb.cr:                                            ; preds = %bb.cp
  %.not.i.i2121 = icmp eq i32 %.val.i.i2120, 0
  br i1 %.not.i.i2121, label %lean_inc.exit1468, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.fp = atomicrmw sub ptr %i.db, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1468

lean_inc.exit1468:                                ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.co
  %i.fq = tail call ptr @l_Lean_Meta_isClass_x3f(ptr noundef %i.db, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14) #6 ; 14 uses
  %i.fr = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.fs = and i64 %i.fr, 1
  %.not.i2123 = icmp eq i64 %i.fs, 0              ; 3 uses
  br i1 %.not.i2123, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %lean_inc.exit1468
  %i.ft = lshr i64 %i.fr, 1
  %i.fu = trunc i64 %i.ft to i32
  br label %lean_obj_tag.exit2126

bb.cu:                                            ; preds = %lean_inc.exit1468
  %i.fv = getelementptr i8, ptr %i.fq, i64 4
  %.val.i2125 = load i32, ptr %i.fv, align 4
  %i.fw = lshr i32 %.val.i2125, 24
  br label %lean_obj_tag.exit2126

lean_obj_tag.exit2126:                            ; preds = %bb.ct, %bb.cu
  %.0.i2124 = phi i32 [ %i.fu, %bb.ct ], [ %i.fw, %bb.cu ]
  %i.fx = icmp eq i32 %.0.i2124, 0
  br i1 %i.fx, label %bb.cv, label %bb.aaf

bb.cv:                                            ; preds = %lean_obj_tag.exit2126
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !10 ; 10 uses
  %.val2067 = load i32, ptr %i.fq, align 8, !tbaa !14
  %i.ga = icmp eq i32 %.val2067, 1                ; 3 uses
  %.pre = ptrtoint ptr %i.fz to i64               ; 2 uses
  %.pre3435 = and i64 %.pre, 1                    ; 2 uses
  br i1 %i.ga, label %lean_dec.exit1721, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.not.i1465 = icmp eq i64 %.pre3435, 0
  br i1 %.not.i1465, label %bb.cx, label %lean_inc.exit1466

bb.cx:                                            ; preds = %bb.cw
  %.val.i.i2127 = load i32, ptr %i.fz, align 4, !tbaa !14 ; 3 uses
  %i.gb = icmp sgt i32 %.val.i.i2127, 0
  br i1 %i.gb, label %bb.cy, label %bb.cz, !prof !16

bb.cy:                                            ; preds = %bb.cx
  %i.gc = add nuw i32 %.val.i.i2127, 1
  store i32 %i.gc, ptr %i.fz, align 4, !tbaa !14
  br label %lean_inc.exit1466

bb.cz:                                            ; preds = %bb.cx
  %.not.i.i2128 = icmp eq i32 %.val.i.i2127, 0
  br i1 %.not.i.i2128, label %lean_inc.exit1466, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.gd = atomicrmw sub ptr %i.fz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1466

lean_inc.exit1466:                                ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cw
  br i1 %.not.i2123, label %bb.db, label %lean_dec.exit1721

bb.db:                                            ; preds = %lean_inc.exit1466
  %i.ge = load i32, ptr %i.fq, align 8, !tbaa !14 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.dc, label %bb.dd, !prof !16

bb.dc:                                            ; preds = %bb.db
  %i.gg = add nsw i32 %i.ge, -1
  store i32 %i.gg, ptr %i.fq, align 8, !tbaa !14
  br label %lean_dec.exit1721

bb.dd:                                            ; preds = %bb.db
  %.not.i1745 = icmp eq i32 %i.ge, 0
  br i1 %.not.i1745, label %lean_dec.exit1721, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fq) #6
  br label %lean_dec.exit1721

lean_dec.exit1721:                                ; preds = %bb.cv, %lean_inc.exit1466, %bb.dc, %bb.dd, %bb.de
  %.01261 = phi ptr [ inttoptr (i64 1 to ptr), %bb.de ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1466 ], [ inttoptr (i64 1 to ptr), %bb.dc ], [ inttoptr (i64 1 to ptr), %bb.dd ], [ %i.fq, %bb.cv ] ; 15 uses
  %.not.i2130 = icmp eq i64 %.pre3435, 0
  br i1 %.not.i2130, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %lean_dec.exit1721
  %i.gh = lshr i64 %.pre, 1
  %i.gi = trunc i64 %i.gh to i32
  br label %lean_obj_tag.exit2133

bb.dg:                                            ; preds = %lean_dec.exit1721
  %i.gj = getelementptr i8, ptr %i.fz, i64 4
  %.val.i2132 = load i32, ptr %i.gj, align 4
  %i.gk = lshr i32 %.val.i2132, 24
  br label %lean_obj_tag.exit2133

lean_obj_tag.exit2133:                            ; preds = %bb.df, %bb.dg
  %.0.i2131 = phi i32 [ %i.gi, %bb.df ], [ %i.gk, %bb.dg ]
  %i.gl = icmp eq i32 %.0.i2131, 0
  br i1 %i.gl, label %bb.dh, label %bb.pf

bb.dh:                                            ; preds = %lean_obj_tag.exit2133
  %i.gm = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.gn = and i64 %i.gm, 510
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.di, label %bb.od

bb.di:                                            ; preds = %bb.dh
  %i.gp = ptrtoint ptr %.01261 to i64
  %i.gq = and i64 %i.gp, 1
  %.not.i2134 = icmp eq i64 %i.gq, 0
  br i1 %.not.i2134, label %bb.dj, label %lean_del_object.exit

bb.dj:                                            ; preds = %bb.di
  tail call void @lean_free_object(ptr noundef nonnull %.01261) #6
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.di, %bb.dj
  %i.gr = ptrtoint ptr %.01252 to i64
  %i.gs = and i64 %i.gr, 1
  %.not.i2135 = icmp eq i64 %i.gs, 0
  br i1 %.not.i2135, label %bb.dk, label %lean_del_object.exit2136

bb.dk:                                            ; preds = %lean_del_object.exit
  tail call void @lean_free_object(ptr noundef nonnull %.01252) #6
  br label %lean_del_object.exit2136

lean_del_object.exit2136:                         ; preds = %lean_del_object.exit, %bb.dk
  %i.gt = load ptr, ptr %i.i, align 8, !tbaa !10
  br i1 %.not.i2085, label %bb.dl, label %lean_inc.exit1464

bb.dl:                                            ; preds = %lean_del_object.exit2136
  %.val.i.i2137 = load i32, ptr %i.db, align 4, !tbaa !14 ; 3 uses
  %i.gu = icmp sgt i32 %.val.i.i2137, 0
  br i1 %i.gu, label %bb.dm, label %bb.dn, !prof !16

bb.dm:                                            ; preds = %bb.dl
  %i.gv = add nuw i32 %.val.i.i2137, 1
  store i32 %i.gv, ptr %i.db, align 4, !tbaa !14
  br label %lean_inc.exit1464

bb.dn:                                            ; preds = %bb.dl
  %.not.i.i2138 = icmp eq i32 %.val.i.i2137, 0
  br i1 %.not.i.i2138, label %lean_inc.exit1464, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.gw = atomicrmw sub ptr %i.db, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1464

lean_inc.exit1464:                                ; preds = %bb.do, %bb.dn, %bb.dm, %lean_del_object.exit2136
  %i.gx = and i64 %i.gm, 1
  %.not.i1461 = icmp eq i64 %i.gx, 0              ; 4 uses
  br i1 %.not.i1461, label %bb.dp, label %lean_inc.exit1462

bb.dp:                                            ; preds = %lean_inc.exit1464
  %.val.i.i2140 = load i32, ptr %i.ep, align 512, !tbaa !14 ; 3 uses
  %i.gy = icmp sgt i32 %.val.i.i2140, 0
  br i1 %i.gy, label %bb.dq, label %bb.dr, !prof !16

bb.dq:                                            ; preds = %bb.dp
  %i.gz = add nuw i32 %.val.i.i2140, 1
  store i32 %i.gz, ptr %i.ep, align 512, !tbaa !14
  br label %lean_inc.exit1462

bb.dr:                                            ; preds = %bb.dp
  %.not.i.i2141 = icmp eq i32 %.val.i.i2140, 0
  br i1 %.not.i.i2141, label %lean_inc.exit1462, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ha = atomicrmw sub ptr %i.ep, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1462

lean_inc.exit1462:                                ; preds = %bb.ds, %bb.dr, %bb.dq, %lean_inc.exit1464
  %i.hb = ptrtoint ptr %i.fh to i64
  %i.hc = and i64 %i.hb, 1
  %.not.i1459 = icmp eq i64 %i.hc, 0              ; 5 uses
  br i1 %.not.i1459, label %bb.dt, label %lean_inc.exit1460

bb.dt:                                            ; preds = %lean_inc.exit1462
  %.val.i.i2143 = load i32, ptr %i.fh, align 4, !tbaa !14 ; 3 uses
  %i.hd = icmp sgt i32 %.val.i.i2143, 0
  br i1 %i.hd, label %bb.du, label %bb.dv, !prof !16

bb.du:                                            ; preds = %bb.dt
  %i.he = add nuw i32 %.val.i.i2143, 1
  store i32 %i.he, ptr %i.fh, align 4, !tbaa !14
  br label %lean_inc.exit1460

bb.dv:                                            ; preds = %bb.dt
  %.not.i.i2144 = icmp eq i32 %.val.i.i2143, 0
  br i1 %.not.i.i2144, label %lean_inc.exit1460, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.hf = atomicrmw sub ptr %i.fh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1460

lean_inc.exit1460:                                ; preds = %bb.dw, %bb.dv, %bb.du, %lean_inc.exit1462
  br i1 %.not.i1477, label %bb.dx, label %lean_inc.exit1458

bb.dx:                                            ; preds = %lean_inc.exit1460
  %.val.i.i2146 = load i32, ptr %i.az, align 4, !tbaa !14 ; 3 uses
  %i.hg = icmp sgt i32 %.val.i.i2146, 0
  br i1 %i.hg, label %bb.dy, label %bb.dz, !prof !16

bb.dy:                                            ; preds = %bb.dx
  %i.hh = add nuw i32 %.val.i.i2146, 1
  store i32 %i.hh, ptr %i.az, align 4, !tbaa !14
  br label %lean_inc.exit1458

bb.dz:                                            ; preds = %bb.dx
  %.not.i.i2147 = icmp eq i32 %.val.i.i2146, 0
  br i1 %.not.i.i2147, label %lean_inc.exit1458, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.hi = atomicrmw sub ptr %i.az, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1458

lean_inc.exit1458:                                ; preds = %bb.ea, %bb.dz, %bb.dy, %lean_inc.exit1460
  %i.hj = tail call ptr @lean_alloc_object(i64 noundef 104) #6 ; 31 uses
  store i32 1, ptr %i.hj, align 4, !tbaa !14
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = and i32 %i.hl, 65535
  %i.hn = or disjoint i32 %i.hm, -184549376
  store i32 %i.hn, ptr %i.hk, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__8___redArg___lam__1___boxed, ptr %i.ho, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store i16 16, ptr %i.hp, align 8, !tbaa !22
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 18
  store i16 10, ptr %i.hq, align 2, !tbaa !22
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  store ptr %i.az, ptr %i.hr, align 8, !tbaa !10
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store ptr %i.fh, ptr %i.hs, align 8, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.ht, align 8, !tbaa !10
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  store ptr %i.ep, ptr %i.hu, align 8, !tbaa !10
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  store ptr %i.db, ptr %i.hv, align 8, !tbaa !10
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hj, i64 64
  store ptr %i.t, ptr %i.hw, align 8, !tbaa !10
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hj, i64 72
  store ptr inttoptr (i64 3 to ptr), ptr %i.hx, align 8, !tbaa !10
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hj, i64 80
  store <2 x ptr> %i.z, ptr %i.hy, align 8, !tbaa !10
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hj, i64 96
  store ptr %i.ad, ptr %i.hz, align 8, !tbaa !10
  %i.ia = load ptr, ptr @l_Lean_Meta_backward_inferInstanceAs_wrap_reuseSubInstances, align 8, !tbaa !10
  %i.ib = tail call zeroext i8 @l_Lean_Option_get___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__0(ptr noundef %i.gt, ptr noundef %i.ia)
  %i.ic = icmp eq i8 %i.ib, 0
  br i1 %i.ic, label %bb.eb, label %bb.en

bb.eb:                                            ; preds = %lean_inc.exit1458
  %i.id = load i32, ptr %i.hj, align 8, !tbaa !14 ; 3 uses
  %i.ie = icmp sgt i32 %i.id, 1
  br i1 %i.ie, label %bb.ec, label %bb.ed, !prof !16

bb.ec:                                            ; preds = %bb.eb
  %i.if = add nsw i32 %i.id, -1
  store i32 %i.if, ptr %i.hj, align 8, !tbaa !14
  br label %lean_dec_ref.exit2046

bb.ed:                                            ; preds = %bb.eb
  %.not.i2045 = icmp eq i32 %i.id, 0
  br i1 %.not.i2045, label %lean_dec_ref.exit2046, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hj) #6
  br label %lean_dec_ref.exit2046

lean_dec_ref.exit2046:                            ; preds = %bb.ec, %bb.ed, %bb.ee
  br i1 %.not.i1473, label %bb.ef, label %lean_dec.exit1719

bb.ef:                                            ; preds = %lean_dec_ref.exit2046
  %i.ig = load i32, ptr %i.ce, align 4, !tbaa !14 ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %bb.eg, label %bb.eh, !prof !16

bb.eg:                                            ; preds = %bb.ef
  %i.ii = add nsw i32 %i.ig, -1
  store i32 %i.ii, ptr %i.ce, align 4, !tbaa !14
  br label %lean_dec.exit1719

bb.eh:                                            ; preds = %bb.ef
  %.not.i1747 = icmp eq i32 %i.ig, 0
  br i1 %.not.i1747, label %lean_dec.exit1719, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ce) #6
  br label %lean_dec.exit1719

lean_dec.exit1719:                                ; preds = %bb.ei, %bb.eh, %bb.eg, %lean_dec_ref.exit2046
  br i1 %.not.i1459, label %bb.ej, label %lean_inc.exit1456

bb.ej:                                            ; preds = %lean_dec.exit1719
  %.val.i.i2149 = load i32, ptr %i.fh, align 4, !tbaa !14 ; 3 uses
  %i.ij = icmp sgt i32 %.val.i.i2149, 0
  br i1 %i.ij, label %bb.ek, label %bb.el, !prof !16

bb.ek:                                            ; preds = %bb.ej
  %i.ik = add nuw i32 %.val.i.i2149, 1
  store i32 %i.ik, ptr %i.fh, align 4, !tbaa !14
  br label %lean_inc.exit1456

bb.el:                                            ; preds = %bb.ej
  %.not.i.i2150 = icmp eq i32 %.val.i.i2149, 0
  br i1 %.not.i.i2150, label %lean_inc.exit1456, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.il = atomicrmw sub ptr %i.fh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1456

lean_inc.exit1456:                                ; preds = %bb.em, %bb.el, %bb.ek, %lean_dec.exit1719
  %i.im = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__8___redArg___lam__1(ptr noundef %i.az, ptr noundef %i.fh, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.ep, ptr noundef %i.db, i8 noundef zeroext %5, i8 noundef zeroext 1, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %6, ptr nonnull poison, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14)
  br label %lean_dec.exit1661

bb.en:                                            ; preds = %lean_inc.exit1458
  br i1 %.not.i1473, label %bb.eo, label %lean_inc.exit1454

bb.eo:                                            ; preds = %bb.en
  %.val.i.i2152 = load i32, ptr %i.ce, align 4, !tbaa !14 ; 3 uses
  %i.in = icmp sgt i32 %.val.i.i2152, 0
  br i1 %i.in, label %bb.ep, label %bb.eq, !prof !16

bb.ep:                                            ; preds = %bb.eo
  %i.io = add nuw i32 %.val.i.i2152, 1
  store i32 %i.io, ptr %i.ce, align 4, !tbaa !14
  br label %lean_inc.exit1454

bb.eq:                                            ; preds = %bb.eo
  %.not.i.i2153 = icmp eq i32 %.val.i.i2152, 0
  br i1 %.not.i.i2153, label %lean_inc.exit1454, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ip = atomicrmw sub ptr %i.ce, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1454

lean_inc.exit1454:                                ; preds = %bb.er, %bb.eq, %bb.ep, %bb.en
  br i1 %.not.i1451, label %bb.es, label %lean_inc.exit1452

bb.es:                                            ; preds = %lean_inc.exit1454
  %.val.i.i2155 = load i32, ptr %7, align 4, !tbaa !14 ; 3 uses
  %i.iq = icmp sgt i32 %.val.i.i2155, 0
  br i1 %i.iq, label %bb.et, label %bb.eu, !prof !16

bb.et:                                            ; preds = %bb.es
  %i.ir = add nuw i32 %.val.i.i2155, 1
  store i32 %i.ir, ptr %7, align 4, !tbaa !14
  br label %lean_inc.exit1452

bb.eu:                                            ; preds = %bb.es
  %.not.i.i2156 = icmp eq i32 %.val.i.i2155, 0
  br i1 %.not.i.i2156, label %lean_inc.exit1452, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.is = atomicrmw sub ptr %7, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1452

lean_inc.exit1452:                                ; preds = %bb.ev, %bb.eu, %bb.et, %lean_inc.exit1454
  %i.it = tail call ptr @l___private_Lean_Meta_WrapInstance_0__Lean_Meta_getFieldOrigin(ptr noundef %7, ptr noundef %i.ce, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14) ; 10 uses
end_hunk_2
begin_hunk_3_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__16___redArg:bb.a
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = and i64 %i.ft, 1
  %.not.i1485 = icmp eq i64 %i.fu, 0
  br i1 %.not.i1485, label %bb.cq, label %lean_inc.exit1486

bb.cq:                                            ; preds = %bb.cp
  %.val.i.i2187 = load i32, ptr %i.fr, align 4, !tbaa !14 ; 3 uses
  %i.fv = icmp sgt i32 %.val.i.i2187, 0
  br i1 %i.fv, label %bb.cr, label %bb.cs, !prof !16

bb.cr:                                            ; preds = %bb.cq
  %i.fw = add nuw i32 %.val.i.i2187, 1
  store i32 %i.fw, ptr %i.fr, align 4, !tbaa !14
  br label %lean_inc.exit1486

bb.cs:                                            ; preds = %bb.cq
  %.not.i.i2188 = icmp eq i32 %.val.i.i2187, 0
  br i1 %.not.i.i2188, label %lean_inc.exit1486, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.fx = atomicrmw sub ptr %i.fr, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1486

lean_inc.exit1486:                                ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp
  br i1 %.not.i2183, label %bb.cu, label %lean_dec.exit1763

bb.cu:                                            ; preds = %lean_inc.exit1486
  %i.fy = load i32, ptr %i.fi, align 8, !tbaa !14 ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, 1
  br i1 %i.fz, label %bb.cv, label %bb.cw, !prof !16

bb.cv:                                            ; preds = %bb.cu
  %i.ga = add nsw i32 %i.fy, -1
  store i32 %i.ga, ptr %i.fi, align 8, !tbaa !14
  br label %lean_dec.exit1763

bb.cw:                                            ; preds = %bb.cu
  %.not.i1787 = icmp eq i32 %i.fy, 0
  br i1 %.not.i1787, label %lean_dec.exit1763, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fi) #6
  br label %lean_dec.exit1763

lean_dec.exit1763:                                ; preds = %lean_inc.exit1486, %bb.cv, %bb.cw, %bb.cx, %bb.co
  %.01291 = phi ptr [ %i.fi, %bb.co ], [ inttoptr (i64 1 to ptr), %bb.cx ], [ inttoptr (i64 1 to ptr), %bb.cw ], [ inttoptr (i64 1 to ptr), %bb.cv ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1486 ] ; 5 uses
  br i1 %.not.i2156, label %bb.cy, label %lean_inc.exit1484

bb.cy:                                            ; preds = %lean_dec.exit1763
  %.val.i.i2190 = load i32, ptr %i.da, align 4, !tbaa !14 ; 3 uses
  %i.gb = icmp sgt i32 %.val.i.i2190, 0
  br i1 %i.gb, label %bb.cz, label %bb.da, !prof !16

bb.cz:                                            ; preds = %bb.cy
  %i.gc = add nuw i32 %.val.i.i2190, 1
  store i32 %i.gc, ptr %i.da, align 4, !tbaa !14
  br label %lean_inc.exit1484

bb.da:                                            ; preds = %bb.cy
  %.not.i.i2191 = icmp eq i32 %.val.i.i2190, 0
  br i1 %.not.i.i2191, label %lean_inc.exit1484, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.gd = atomicrmw sub ptr %i.da, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1484

lean_inc.exit1484:                                ; preds = %bb.db, %bb.da, %bb.cz, %lean_dec.exit1763
  %i.ge = ptrtoint ptr %i.ej to i64               ; 3 uses
  %i.gf = and i64 %i.ge, 1
  %.not.i1481 = icmp eq i64 %i.gf, 0              ; 7 uses
  br i1 %.not.i1481, label %bb.dc, label %lean_inc.exit1482

bb.dc:                                            ; preds = %lean_inc.exit1484
  %.val.i.i2193 = load i32, ptr %i.ej, align 4, !tbaa !14 ; 3 uses
  %i.gg = icmp sgt i32 %.val.i.i2193, 0
  br i1 %i.gg, label %bb.dd, label %bb.de, !prof !16

bb.dd:                                            ; preds = %bb.dc
  %i.gh = add nuw i32 %.val.i.i2193, 1
  store i32 %i.gh, ptr %i.ej, align 4, !tbaa !14
  br label %lean_inc.exit1482

bb.de:                                            ; preds = %bb.dc
  %.not.i.i2194 = icmp eq i32 %.val.i.i2193, 0
  br i1 %.not.i.i2194, label %lean_inc.exit1482, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.gi = atomicrmw sub ptr %i.ej, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1482

lean_inc.exit1482:                                ; preds = %bb.df, %bb.de, %bb.dd, %lean_inc.exit1484
  %i.gj = ptrtoint ptr %i.fb to i64
  %i.gk = and i64 %i.gj, 1
  %.not.i1479 = icmp eq i64 %i.gk, 0              ; 8 uses
  br i1 %.not.i1479, label %bb.dg, label %lean_inc.exit1480

bb.dg:                                            ; preds = %lean_inc.exit1482
  %.val.i.i2196 = load i32, ptr %i.fb, align 4, !tbaa !14 ; 3 uses
  %i.gl = icmp sgt i32 %.val.i.i2196, 0
  br i1 %i.gl, label %bb.dh, label %bb.di, !prof !16

bb.dh:                                            ; preds = %bb.dg
  %i.gm = add nuw i32 %.val.i.i2196, 1
  store i32 %i.gm, ptr %i.fb, align 4, !tbaa !14
  br label %lean_inc.exit1480

bb.di:                                            ; preds = %bb.dg
  %.not.i.i2197 = icmp eq i32 %.val.i.i2196, 0
  br i1 %.not.i.i2197, label %lean_inc.exit1480, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.gn = atomicrmw sub ptr %i.fb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1480

lean_inc.exit1480:                                ; preds = %bb.dj, %bb.di, %bb.dh, %lean_inc.exit1482
  br i1 %.not.i1497, label %bb.dk, label %lean_inc.exit1478

bb.dk:                                            ; preds = %lean_inc.exit1480
  %.val.i.i2199 = load i32, ptr %i.ay, align 4, !tbaa !14 ; 3 uses
  %i.go = icmp sgt i32 %.val.i.i2199, 0
  br i1 %i.go, label %bb.dl, label %bb.dm, !prof !16

bb.dl:                                            ; preds = %bb.dk
  %i.gp = add nuw i32 %.val.i.i2199, 1
  store i32 %i.gp, ptr %i.ay, align 4, !tbaa !14
  br label %lean_inc.exit1478

bb.dm:                                            ; preds = %bb.dk
  %.not.i.i2200 = icmp eq i32 %.val.i.i2199, 0
  br i1 %.not.i.i2200, label %lean_inc.exit1478, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.gq = atomicrmw sub ptr %i.ay, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1478

lean_inc.exit1478:                                ; preds = %bb.dn, %bb.dm, %bb.dl, %lean_inc.exit1480
  %i.gr = tail call ptr @lean_alloc_object(i64 noundef 96) #6 ; 38 uses
  store i32 1, ptr %i.gr, align 4, !tbaa !14
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = and i32 %i.gt, 65535
  %i.gv = or disjoint i32 %i.gu, -184549376
  store i32 %i.gv, ptr %i.gs, align 4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__16___redArg___lam__1___boxed, ptr %i.gw, align 8, !tbaa !10
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store i16 15, ptr %i.gx, align 8, !tbaa !22
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 18
  store i16 9, ptr %i.gy, align 2, !tbaa !22
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  store ptr %i.ay, ptr %i.gz, align 8, !tbaa !10
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  store ptr %i.fb, ptr %i.ha, align 8, !tbaa !10
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.hb, align 8, !tbaa !10
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  store ptr %i.ej, ptr %i.hc, align 8, !tbaa !10
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 56
  store ptr %i.da, ptr %i.hd, align 8, !tbaa !10
  %i.he = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  store <2 x ptr> %i.n, ptr %i.he, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gr, i64 80
  store <2 x ptr> %i.t, ptr %i.hf, align 8, !tbaa !10
  %i.hg = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.hh = and i64 %i.hg, 1
  %.not.i2202 = icmp eq i64 %i.hh, 0
  br i1 %.not.i2202, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %lean_inc.exit1478
  %i.hi = lshr i64 %i.hg, 1
  %i.hj = trunc i64 %i.hi to i32
  br label %lean_obj_tag.exit2205

bb.dp:                                            ; preds = %lean_inc.exit1478
  %i.hk = getelementptr i8, ptr %i.fr, i64 4
  %.val.i2204 = load i32, ptr %i.hk, align 4
  %i.hl = lshr i32 %.val.i2204, 24
  br label %lean_obj_tag.exit2205

lean_obj_tag.exit2205:                            ; preds = %bb.do, %bb.dp
  %.0.i2203 = phi i32 [ %i.hj, %bb.do ], [ %i.hl, %bb.dp ]
  %i.hm = icmp eq i32 %.0.i2203, 0
  br i1 %i.hm, label %bb.dq, label %bb.dw

bb.dq:                                            ; preds = %lean_obj_tag.exit2205
  %i.hn = ptrtoint ptr %.01270 to i64
  %i.ho = and i64 %i.hn, 1
  %.not.i2206 = icmp eq i64 %i.ho, 0
  br i1 %.not.i2206, label %bb.dr, label %lean_del_object.exit

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_free_object(ptr noundef nonnull %.01270) #6
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.dq, %bb.dr
  %i.hp = and i64 %i.fc, 1
  %.not.i1760 = icmp eq i64 %i.hp, 0
  br i1 %.not.i1760, label %bb.ds, label %lean_dec.exit1761

bb.ds:                                            ; preds = %lean_del_object.exit
  %i.hq = load i32, ptr %i.dy, align 512, !tbaa !14 ; 3 uses
  %i.hr = icmp sgt i32 %i.hq, 1
  br i1 %i.hr, label %bb.dt, label %bb.du, !prof !16

bb.dt:                                            ; preds = %bb.ds
  %i.hs = add nsw i32 %i.hq, -1
  store i32 %i.hs, ptr %i.dy, align 512, !tbaa !14
  br label %lean_dec.exit1761

bb.du:                                            ; preds = %bb.ds
  %.not.i1789 = icmp eq i32 %i.hq, 0
  br i1 %.not.i1789, label %lean_dec.exit1761, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dy) #6
  br label %lean_dec.exit1761

bb.dw:                                            ; preds = %lean_obj_tag.exit2205
  %.val.i2207 = load i32, ptr %i.fr, align 4, !tbaa !14 ; 4 uses
  %i.ht = icmp eq i32 %.val.i2207, 1
  br i1 %i.ht, label %.preheader.i2209, label %bb.eb

.preheader.i2209:                                 ; preds = %bb.dw
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !10 ; 4 uses
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = and i64 %i.hw, 1
  %.not.i.i2211 = icmp eq i64 %i.hx, 0
  br i1 %.not.i.i2211, label %bb.dx, label %lean_dec.exit.i2212

bb.dx:                                            ; preds = %.preheader.i2209
  %i.hy = load i32, ptr %i.hv, align 4, !tbaa !14 ; 3 uses
  %i.hz = icmp sgt i32 %i.hy, 1
  br i1 %i.hz, label %bb.dy, label %bb.dz, !prof !16

bb.dy:                                            ; preds = %bb.dx
  %i.ia = add nsw i32 %i.hy, -1
  store i32 %i.ia, ptr %i.hv, align 4, !tbaa !14
  br label %lean_dec.exit.i2212

bb.dz:                                            ; preds = %bb.dx
  %.not.i7.i2216 = icmp eq i32 %i.hy, 0
  br i1 %.not.i7.i2216, label %lean_dec.exit.i2212, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hv) #6
  br label %lean_dec.exit.i2212

lean_dec.exit.i2212:                              ; preds = %bb.ea, %bb.dz, %bb.dy, %.preheader.i2209
  tail call void @lean_free_object(ptr noundef nonnull %i.fr) #6
  br label %lean_dec_ref_known.exit2217

bb.eb:                                            ; preds = %bb.dw
  %i.ib = icmp sgt i32 %.val.i2207, 1
  br i1 %i.ib, label %bb.ec, label %bb.ed, !prof !16

bb.ec:                                            ; preds = %bb.eb
  %i.ic = add nsw i32 %.val.i2207, -1
  store i32 %i.ic, ptr %i.fr, align 4, !tbaa !14
  br label %lean_dec_ref_known.exit2217

bb.ed:                                            ; preds = %bb.eb
  %.not.i8.i2208 = icmp eq i32 %.val.i2207, 0
  br i1 %.not.i8.i2208, label %lean_dec_ref_known.exit2217, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fr) #6
  br label %lean_dec_ref_known.exit2217

lean_dec_ref_known.exit2217:                      ; preds = %lean_dec.exit.i2212, %bb.ec, %bb.ed, %bb.ee
  br i1 %i.u, label %bb.ef, label %bb.el

bb.ef:                                            ; preds = %lean_dec_ref_known.exit2217
  %i.id = ptrtoint ptr %.01270 to i64
  %i.ie = and i64 %i.id, 1
  %.not.i2218 = icmp eq i64 %i.ie, 0
  br i1 %.not.i2218, label %bb.eg, label %lean_del_object.exit2219

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_free_object(ptr noundef nonnull %.01270) #6
  br label %lean_del_object.exit2219

lean_del_object.exit2219:                         ; preds = %bb.ef, %bb.eg
  %i.if = and i64 %i.fc, 1
  %.not.i1758 = icmp eq i64 %i.if, 0
  br i1 %.not.i1758, label %bb.eh, label %lean_dec.exit1761

bb.eh:                                            ; preds = %lean_del_object.exit2219
  %i.ig = load i32, ptr %i.dy, align 512, !tbaa !14 ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %bb.ei, label %bb.ej, !prof !16

bb.ei:                                            ; preds = %bb.eh
  %i.ii = add nsw i32 %i.ig, -1
  store i32 %i.ii, ptr %i.dy, align 512, !tbaa !14
  br label %lean_dec.exit1761

bb.ej:                                            ; preds = %bb.eh
  %.not.i1791 = icmp eq i32 %i.ig, 0
  br i1 %.not.i1791, label %lean_dec.exit1761, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dy) #6
  br label %lean_dec.exit1761

bb.el:                                            ; preds = %lean_dec_ref_known.exit2217
  %i.ij = load i32, ptr %i.gr, align 8, !tbaa !14 ; 3 uses
  %i.ik = icmp sgt i32 %i.ij, 1
  br i1 %i.ik, label %bb.em, label %bb.en, !prof !16

bb.em:                                            ; preds = %bb.el
  %i.il = add nsw i32 %i.ij, -1
  store i32 %i.il, ptr %i.gr, align 8, !tbaa !14
  br label %lean_dec_ref.exit2116

bb.en:                                            ; preds = %bb.el
  %.not.i2115 = icmp eq i32 %i.ij, 0
  br i1 %.not.i2115, label %lean_dec_ref.exit2116, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gr) #6
  br label %lean_dec_ref.exit2116

lean_dec_ref.exit2116:                            ; preds = %bb.em, %bb.en, %bb.eo
  %i.im = ptrtoint ptr %.01291 to i64
  %i.in = and i64 %i.im, 1
  %.not.i2220 = icmp eq i64 %i.in, 0
  br i1 %.not.i2220, label %bb.ep, label %lean_del_object.exit2221

bb.ep:                                            ; preds = %lean_dec_ref.exit2116
  tail call void @lean_free_object(ptr noundef nonnull %.01291) #6
  br label %lean_del_object.exit2221

lean_del_object.exit2221:                         ; preds = %lean_dec_ref.exit2116, %bb.ep
  %i.io = ptrtoint ptr %.01276 to i64
  %i.ip = and i64 %i.io, 1
  %.not.i2222 = icmp eq i64 %i.ip, 0
  br i1 %.not.i2222, label %bb.eq, label %lean_del_object.exit2223

bb.eq:                                            ; preds = %lean_del_object.exit2221
  tail call void @lean_free_object(ptr noundef nonnull %.01276) #6
  br label %lean_del_object.exit2223

lean_del_object.exit2223:                         ; preds = %lean_del_object.exit2221, %bb.eq
  br i1 %.not.i1493, label %bb.er, label %lean_dec.exit1757

bb.er:                                            ; preds = %lean_del_object.exit2223
  %i.iq = load i32, ptr %i.cd, align 4, !tbaa !14 ; 3 uses
  %i.ir = icmp sgt i32 %i.iq, 1
  br i1 %i.ir, label %bb.es, label %bb.et, !prof !16

bb.es:                                            ; preds = %bb.er
  %i.is = add nsw i32 %i.iq, -1
  store i32 %i.is, ptr %i.cd, align 4, !tbaa !14
  br label %lean_dec.exit1757

bb.et:                                            ; preds = %bb.er
  %.not.i1793 = icmp eq i32 %i.iq, 0
  br i1 %.not.i1793, label %lean_dec.exit1757, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #6
  br label %lean_dec.exit1757

lean_dec.exit1757:                                ; preds = %bb.eu, %bb.et, %bb.es, %lean_del_object.exit2223
  %i.it = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.iu = load ptr, ptr @l_Lean_Meta_backward_inferInstanceAs_wrap_reuseSubInstances, align 8, !tbaa !10
  %i.iv = tail call zeroext i8 @l_Lean_Option_get___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__0(ptr noundef %i.it, ptr noundef %i.iu)
  %i.iw = icmp eq i8 %i.iv, 0
  br i1 %i.iw, label %bb.ev, label %bb.fj

bb.ev:                                            ; preds = %lean_dec.exit1757
  %i.ix = ptrtoint ptr %.01270 to i64
  %i.iy = and i64 %i.ix, 1
  %.not.i2224 = icmp eq i64 %i.iy, 0
  br i1 %.not.i2224, label %bb.ew, label %lean_del_object.exit2225

bb.ew:                                            ; preds = %bb.ev
  tail call void @lean_free_object(ptr noundef nonnull %.01270) #6
  br label %lean_del_object.exit2225

lean_del_object.exit2225:                         ; preds = %bb.ev, %bb.ew
  %i.iz = and i64 %i.fc, 1
  %.not.i1754 = icmp eq i64 %i.iz, 0
  br i1 %.not.i1754, label %bb.ex, label %lean_dec.exit1755

bb.ex:                                            ; preds = %lean_del_object.exit2225
  %i.ja = load i32, ptr %i.dy, align 512, !tbaa !14 ; 3 uses
  %i.jb = icmp sgt i32 %i.ja, 1
  br i1 %i.jb, label %bb.ey, label %bb.ez, !prof !16

bb.ey:                                            ; preds = %bb.ex
  %i.jc = add nsw i32 %i.ja, -1
  store i32 %i.jc, ptr %i.dy, align 512, !tbaa !14
  br label %lean_dec.exit1755

bb.ez:                                            ; preds = %bb.ex
  %.not.i1795 = icmp eq i32 %i.ja, 0
  br i1 %.not.i1795, label %lean_dec.exit1755, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dy) #6
  br label %lean_dec.exit1755

lean_dec.exit1755:                                ; preds = %bb.fa, %bb.ez, %bb.ey, %lean_del_object.exit2225
  %i.jd = lshr i64 %i.ge, 1
  %i.je = trunc i64 %i.jd to i8
  br i1 %.not.i1481, label %bb.fb, label %lean_dec.exit1753

bb.fb:                                            ; preds = %lean_dec.exit1755
  %i.jf = load i32, ptr %i.ej, align 4, !tbaa !14 ; 3 uses
  %i.jg = icmp sgt i32 %i.jf, 1
  br i1 %i.jg, label %bb.fc, label %bb.fd, !prof !16

bb.fc:                                            ; preds = %bb.fb
  %i.jh = add nsw i32 %i.jf, -1
  store i32 %i.jh, ptr %i.ej, align 4, !tbaa !14
  br label %lean_dec.exit1753

bb.fd:                                            ; preds = %bb.fb
  %.not.i1797 = icmp eq i32 %i.jf, 0
  br i1 %.not.i1797, label %lean_dec.exit1753, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ej) #6
  br label %lean_dec.exit1753

lean_dec.exit1753:                                ; preds = %bb.fe, %bb.fd, %bb.fc, %lean_dec.exit1755
  br i1 %.not.i1479, label %bb.ff, label %lean_inc.exit1476

bb.ff:                                            ; preds = %lean_dec.exit1753
  %.val.i.i2226 = load i32, ptr %i.fb, align 4, !tbaa !14 ; 3 uses
  %i.ji = icmp sgt i32 %.val.i.i2226, 0
  br i1 %i.ji, label %bb.fg, label %bb.fh, !prof !16

bb.fg:                                            ; preds = %bb.ff
  %i.jj = add nuw i32 %.val.i.i2226, 1
  store i32 %i.jj, ptr %i.fb, align 4, !tbaa !14
  br label %lean_inc.exit1476

bb.fh:                                            ; preds = %bb.ff
  %.not.i.i2227 = icmp eq i32 %.val.i.i2226, 0
  br i1 %.not.i.i2227, label %lean_inc.exit1476, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.jk = atomicrmw sub ptr %i.fb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1476

lean_inc.exit1476:                                ; preds = %bb.fi, %bb.fh, %bb.fg, %lean_dec.exit1753
  %i.jl = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__16___redArg___lam__4(ptr noundef %i.ay, ptr noundef nonnull inttoptr (i64 1 to ptr), i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef %i.fb, ptr noundef %i.da, i8 noundef zeroext 0, i8 noundef zeroext %3, ptr nonnull poison, i8 noundef zeroext %i.je, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14)
  br label %lean_dec.exit1615

bb.fj:                                            ; preds = %lean_dec.exit1757
  br i1 %.not.i2156, label %bb.fk, label %lean_inc.exit1474

bb.fk:                                            ; preds = %bb.fj
  %.val.i.i2229 = load i32, ptr %i.da, align 4, !tbaa !14 ; 3 uses
  %i.jm = icmp sgt i32 %.val.i.i2229, 0
  br i1 %i.jm, label %bb.fl, label %bb.fm, !prof !16

bb.fl:                                            ; preds = %bb.fk
  %i.jn = add nuw i32 %.val.i.i2229, 1
  store i32 %i.jn, ptr %i.da, align 4, !tbaa !14
  br label %lean_inc.exit1474

bb.fm:                                            ; preds = %bb.fk
  %.not.i.i2230 = icmp eq i32 %.val.i.i2229, 0
  br i1 %.not.i.i2230, label %lean_inc.exit1474, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.jo = atomicrmw sub ptr %i.da, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1474

lean_inc.exit1474:                                ; preds = %bb.fn, %bb.fm, %bb.fl, %bb.fj
  %i.jp = tail call ptr @l_Lean_Meta_trySynthInstance(ptr noundef %i.da, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14) #6 ; 9 uses
  %i.jq = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.jr = and i64 %i.jq, 1
  %.not.i2232 = icmp eq i64 %i.jr, 0
  br i1 %.not.i2232, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %lean_inc.exit1474
  %i.js = lshr i64 %i.jq, 1
  %i.jt = trunc i64 %i.js to i32
  br label %lean_obj_tag.exit2235

bb.fp:                                            ; preds = %lean_inc.exit1474
  %i.ju = getelementptr i8, ptr %i.jp, i64 4
  %.val.i2234 = load i32, ptr %i.ju, align 4
  %i.jv = lshr i32 %.val.i2234, 24
  br label %lean_obj_tag.exit2235

lean_obj_tag.exit2235:                            ; preds = %bb.fo, %bb.fp
  %.0.i2233 = phi i32 [ %i.jt, %bb.fo ], [ %i.jv, %bb.fp ]
  %i.jw = icmp eq i32 %.0.i2233, 0
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !10 ; 17 uses
  %i.jz = ptrtoint ptr %i.jy to i64               ; 2 uses
  %i.ka = and i64 %i.jz, 1
  %.not.i1471 = icmp eq i64 %i.ka, 0              ; 2 uses
  br i1 %i.jw, label %bb.fq, label %bb.ks

bb.fq:                                            ; preds = %lean_obj_tag.exit2235
  br i1 %.not.i1471, label %bb.fr, label %lean_obj_tag.exit2242.thread

bb.fr:                                            ; preds = %bb.fq
  %.val.i.i2236 = load i32, ptr %i.jy, align 4, !tbaa !14 ; 3 uses
  %i.kb = icmp sgt i32 %.val.i.i2236, 0
  br i1 %i.kb, label %bb.fs, label %bb.ft, !prof !16

bb.fs:                                            ; preds = %bb.fr
  %i.kc = add nuw i32 %.val.i.i2236, 1
  store i32 %i.kc, ptr %i.jy, align 4, !tbaa !14
  br label %lean_obj_tag.exit2242

bb.ft:                                            ; preds = %bb.fr
  %.not.i.i2237 = icmp eq i32 %.val.i.i2236, 0
  br i1 %.not.i.i2237, label %lean_obj_tag.exit2242, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.kd = atomicrmw sub ptr %i.jy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_obj_tag.exit2242

lean_obj_tag.exit2242:                            ; preds = %bb.fs, %bb.ft, %bb.fu
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.jp, i32 noundef 1)
  %i.ke = getelementptr i8, ptr %i.jy, i64 4
  %.val.i2241 = load i32, ptr %i.ke, align 4
  %.mask = and i32 %.val.i2241, -16777216
  %i.kf = icmp eq i32 %.mask, 16777216
  br i1 %i.kf, label %bb.fv, label %bb.kn

lean_obj_tag.exit2242.thread:                     ; preds = %bb.fq
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.jp, i32 noundef 1)
  %i.kg = and i64 %i.jz, 8589934590
  %i.kh = icmp eq i64 %i.kg, 2
  br i1 %i.kh, label %bb.fv, label %lean_dec.exit1737

bb.fv:                                            ; preds = %lean_obj_tag.exit2242.thread, %lean_obj_tag.exit2242
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !10 ; 25 uses
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = and i64 %i.kk, 1
  %.not.i1469 = icmp eq i64 %i.kl, 0              ; 7 uses
  br i1 %.not.i1469, label %bb.fw, label %lean_inc.exit1470

bb.fw:                                            ; preds = %bb.fv
  %.val.i.i2243 = load i32, ptr %i.kj, align 4, !tbaa !14 ; 3 uses
  %i.km = icmp sgt i32 %.val.i.i2243, 0
  br i1 %i.km, label %bb.fx, label %bb.fy, !prof !16

bb.fx:                                            ; preds = %bb.fw
  %i.kn = add nuw i32 %.val.i.i2243, 1
  store i32 %i.kn, ptr %i.kj, align 4, !tbaa !14
  br label %lean_inc.exit1470

bb.fy:                                            ; preds = %bb.fw
  %.not.i.i2244 = icmp eq i32 %.val.i.i2243, 0
  br i1 %.not.i.i2244, label %lean_inc.exit1470, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ko = atomicrmw sub ptr %i.kj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1470

lean_inc.exit1470:                                ; preds = %bb.fz, %bb.fy, %bb.fx, %bb.fv
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.jy, i32 noundef 1)
  %i.kp = tail call ptr @l_Lean_Meta_Context_config(ptr noundef %11) #6 ; 8 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load <8 x i8>, ptr %i.kq, align 1, !tbaa !15
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !15
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 18
  %i.kv = load <8 x i8>, ptr %i.ku, align 1, !tbaa !15
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 26
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !15
  %.val2136 = load i32, ptr %i.kp, align 4, !tbaa !14 ; 4 uses
  %i.ky = icmp eq i32 %.val2136, 1                ; 2 uses
  br i1 %i.ky, label %lean_dec.exit1751, label %bb.ga

bb.ga:                                            ; preds = %lean_inc.exit1470
  %i.kz = icmp sgt i32 %.val2136, 1
  br i1 %i.kz, label %bb.gb, label %bb.gc, !prof !16

bb.gb:                                            ; preds = %bb.ga
  %i.la = add nsw i32 %.val2136, -1
  store i32 %i.la, ptr %i.kp, align 4, !tbaa !14
  br label %lean_dec.exit1751

bb.gc:                                            ; preds = %bb.ga
  %.not.i1799 = icmp eq i32 %.val2136, 0
  br i1 %.not.i1799, label %lean_dec.exit1751, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kp) #6
  br label %lean_dec.exit1751

end_hunk_3
begin_hunk_4_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__16___redArg:bb.a
  %i.qy = add nsw i32 %i.qw, -1
  store i32 %i.qy, ptr %i.kj, align 4, !tbaa !14
  br label %lean_dec.exit1741

bb.jy:                                            ; preds = %bb.jw
  %.not.i1809 = icmp eq i32 %i.qw, 0
  br i1 %.not.i1809, label %lean_dec.exit1741, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kj) #6
  br label %lean_dec.exit1741

lean_dec.exit1741:                                ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jv
  %i.qz = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !10 ; 5 uses
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = and i64 %i.rb, 1
  %.not.i1441 = icmp eq i64 %i.rc, 0
  br i1 %.not.i1441, label %bb.ka, label %lean_inc.exit1442

bb.ka:                                            ; preds = %lean_dec.exit1741
  %.val.i.i2307 = load i32, ptr %i.ra, align 4, !tbaa !14 ; 3 uses
  %i.rd = icmp sgt i32 %.val.i.i2307, 0
  br i1 %i.rd, label %bb.kb, label %bb.kc, !prof !16

bb.kb:                                            ; preds = %bb.ka
  %i.re = add nuw i32 %.val.i.i2307, 1
  store i32 %i.re, ptr %i.ra, align 4, !tbaa !14
  br label %lean_inc.exit1442

bb.kc:                                            ; preds = %bb.ka
  %.not.i.i2308 = icmp eq i32 %.val.i.i2307, 0
  br i1 %.not.i.i2308, label %lean_inc.exit1442, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.rf = atomicrmw sub ptr %i.ra, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1442

lean_inc.exit1442:                                ; preds = %bb.kd, %bb.kc, %bb.kb, %lean_dec.exit1741
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.om, i32 noundef 1)
  br label %lean_del_object.exit2279.thread

bb.ke:                                            ; preds = %lean_obj_tag.exit2274
  br i1 %.not.i1469, label %bb.kf, label %lean_dec.exit1739

bb.kf:                                            ; preds = %bb.ke
  %i.rg = load i32, ptr %i.kj, align 4, !tbaa !14 ; 3 uses
  %i.rh = icmp sgt i32 %i.rg, 1
  br i1 %i.rh, label %bb.kg, label %bb.kh, !prof !16

bb.kg:                                            ; preds = %bb.kf
  %i.ri = add nsw i32 %i.rg, -1
  store i32 %i.ri, ptr %i.kj, align 4, !tbaa !14
  br label %lean_dec.exit1739

bb.kh:                                            ; preds = %bb.kf
  %.not.i1811 = icmp eq i32 %i.rg, 0
  br i1 %.not.i1811, label %lean_dec.exit1739, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kj) #6
  br label %lean_dec.exit1739

lean_dec.exit1739:                                ; preds = %bb.ki, %bb.kh, %bb.kg, %bb.ke
  %i.rj = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !10 ; 5 uses
  %i.rl = ptrtoint ptr %i.rk to i64
  %i.rm = and i64 %i.rl, 1
  %.not.i1439 = icmp eq i64 %i.rm, 0
  br i1 %.not.i1439, label %bb.kj, label %lean_inc.exit1440

bb.kj:                                            ; preds = %lean_dec.exit1739
  %.val.i.i2310 = load i32, ptr %i.rk, align 4, !tbaa !14 ; 3 uses
  %i.rn = icmp sgt i32 %.val.i.i2310, 0
  br i1 %i.rn, label %bb.kk, label %bb.kl, !prof !16

bb.kk:                                            ; preds = %bb.kj
  %i.ro = add nuw i32 %.val.i.i2310, 1
  store i32 %i.ro, ptr %i.rk, align 4, !tbaa !14
  br label %lean_inc.exit1440

bb.kl:                                            ; preds = %bb.kj
  %.not.i.i2311 = icmp eq i32 %.val.i.i2310, 0
  br i1 %.not.i.i2311, label %lean_inc.exit1440, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.rp = atomicrmw sub ptr %i.rk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1440

lean_inc.exit1440:                                ; preds = %bb.km, %bb.kl, %bb.kk, %lean_dec.exit1739
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.nn, i32 noundef 1)
  br label %lean_del_object.exit2279.thread

bb.kn:                                            ; preds = %lean_obj_tag.exit2242
  %i.rq = load i32, ptr %i.jy, align 4, !tbaa !14 ; 3 uses
  %i.rr = icmp sgt i32 %i.rq, 1
  br i1 %i.rr, label %bb.ko, label %bb.kp, !prof !16

bb.ko:                                            ; preds = %bb.kn
  %i.rs = add nsw i32 %i.rq, -1
  store i32 %i.rs, ptr %i.jy, align 4, !tbaa !14
  br label %lean_dec.exit1737

bb.kp:                                            ; preds = %bb.kn
  %.not.i1813 = icmp eq i32 %i.rq, 0
  br i1 %.not.i1813, label %lean_dec.exit1737, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jy) #6
  br label %lean_dec.exit1737

lean_dec.exit1737:                                ; preds = %lean_obj_tag.exit2242.thread, %bb.kq, %bb.kp, %bb.ko
  %i.rt = ptrtoint ptr %.01270 to i64
  %i.ru = and i64 %i.rt, 1
  %.not.i2313 = icmp eq i64 %i.ru, 0
  br i1 %.not.i2313, label %bb.kr, label %lean_del_object.exit2333

bb.kr:                                            ; preds = %lean_dec.exit1737
  tail call void @lean_free_object(ptr noundef nonnull %.01270) #6
  br label %lean_del_object.exit2333

bb.ks:                                            ; preds = %lean_obj_tag.exit2235
  br i1 %.not.i1471, label %bb.kt, label %lean_inc.exit1438

bb.kt:                                            ; preds = %bb.ks
  %.val.i.i2315 = load i32, ptr %i.jy, align 4, !tbaa !14 ; 3 uses
  %i.rv = icmp sgt i32 %.val.i.i2315, 0
  br i1 %i.rv, label %bb.ku, label %bb.kv, !prof !16

bb.ku:                                            ; preds = %bb.kt
  %i.rw = add nuw i32 %.val.i.i2315, 1
  store i32 %i.rw, ptr %i.jy, align 4, !tbaa !14
  br label %lean_inc.exit1438

bb.kv:                                            ; preds = %bb.kt
  %.not.i.i2316 = icmp eq i32 %.val.i.i2315, 0
  br i1 %.not.i.i2316, label %lean_inc.exit1438, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.rx = atomicrmw sub ptr %i.jy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1438

lean_inc.exit1438:                                ; preds = %bb.kw, %bb.kv, %bb.ku, %bb.ks
  %.val.i2318 = load i32, ptr %i.jp, align 8, !tbaa !14 ; 4 uses
  %i.ry = icmp eq i32 %.val.i2318, 1
  br i1 %i.ry, label %.preheader.i2320, label %bb.lb

.preheader.i2320:                                 ; preds = %lean_inc.exit1438
  %i.rz = load ptr, ptr %i.jx, align 8, !tbaa !10 ; 4 uses
  %i.sa = ptrtoint ptr %i.rz to i64
  %i.sb = and i64 %i.sa, 1
  %.not.i.i2322 = icmp eq i64 %i.sb, 0
  br i1 %.not.i.i2322, label %bb.kx, label %lean_dec.exit.i2323

bb.kx:                                            ; preds = %.preheader.i2320
  %i.sc = load i32, ptr %i.rz, align 4, !tbaa !14 ; 3 uses
  %i.sd = icmp sgt i32 %i.sc, 1
  br i1 %i.sd, label %bb.ky, label %bb.kz, !prof !16

bb.ky:                                            ; preds = %bb.kx
  %i.se = add nsw i32 %i.sc, -1
  store i32 %i.se, ptr %i.rz, align 4, !tbaa !14
  br label %lean_dec.exit.i2323

bb.kz:                                            ; preds = %bb.kx
  %.not.i7.i2327 = icmp eq i32 %i.sc, 0
  br i1 %.not.i7.i2327, label %lean_dec.exit.i2323, label %bb.la

bb.la:                                            ; preds = %bb.kz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.rz) #6
  br label %lean_dec.exit.i2323

lean_dec.exit.i2323:                              ; preds = %bb.la, %bb.kz, %bb.ky, %.preheader.i2320
  tail call void @lean_free_object(ptr noundef nonnull %i.jp) #6
  br label %lean_del_object.exit2279.thread

bb.lb:                                            ; preds = %lean_inc.exit1438
  %i.sf = icmp sgt i32 %.val.i2318, 1
  br i1 %i.sf, label %bb.lc, label %bb.ld, !prof !16

bb.lc:                                            ; preds = %bb.lb
  %i.sg = add nsw i32 %.val.i2318, -1
  store i32 %i.sg, ptr %i.jp, align 8, !tbaa !14
  br label %lean_del_object.exit2279.thread

bb.ld:                                            ; preds = %bb.lb
  %.not.i8.i2319 = icmp eq i32 %.val.i2318, 0
  br i1 %.not.i8.i2319, label %lean_del_object.exit2279.thread, label %bb.le

bb.le:                                            ; preds = %bb.ld
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jp) #6
  br label %lean_del_object.exit2279.thread

lean_del_object.exit2333:                         ; preds = %lean_dec.exit1737, %lean_dec.exit1747, %bb.ic, %bb.kr, %bb.pj, %bb.lv, %lean_dec_ref.exit2114
  %.51309 = phi ptr [ %i.ej, %bb.lv ], [ %i.wt, %bb.pj ], [ %i.ej, %lean_dec_ref.exit2114 ], [ %i.ej, %bb.kr ], [ %i.ej, %bb.ic ], [ %i.ej, %lean_dec.exit1747 ], [ %i.ej, %lean_dec.exit1737 ] ; 4 uses
  %i.sh = and i64 %i.fc, 1
  %.not.i1734 = icmp eq i64 %i.sh, 0
  br i1 %.not.i1734, label %bb.lf, label %lean_dec.exit1735

bb.lf:                                            ; preds = %lean_del_object.exit2333
  %i.si = load i32, ptr %i.dy, align 512, !tbaa !14 ; 3 uses
  %i.sj = icmp sgt i32 %i.si, 1
  br i1 %i.sj, label %bb.lg, label %bb.lh, !prof !16

bb.lg:                                            ; preds = %bb.lf
  %i.sk = add nsw i32 %i.si, -1
  store i32 %i.sk, ptr %i.dy, align 512, !tbaa !14
  br label %lean_dec.exit1735

bb.lh:                                            ; preds = %bb.lf
  %.not.i1815 = icmp eq i32 %i.si, 0
  br i1 %.not.i1815, label %lean_dec.exit1735, label %bb.li

bb.li:                                            ; preds = %bb.lh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dy) #6
  br label %lean_dec.exit1735

lean_dec.exit1735:                                ; preds = %bb.li, %bb.lh, %bb.lg, %lean_del_object.exit2333
  %i.sl = ptrtoint ptr %.51309 to i64             ; 2 uses
  %i.sm = lshr i64 %i.sl, 1
  %i.sn = trunc i64 %i.sm to i8
  %i.so = and i64 %i.sl, 1
  %.not.i1732 = icmp eq i64 %i.so, 0
  br i1 %.not.i1732, label %bb.lj, label %lean_dec.exit1733

bb.lj:                                            ; preds = %lean_dec.exit1735
  %i.sp = load i32, ptr %.51309, align 4, !tbaa !14 ; 3 uses
  %i.sq = icmp sgt i32 %i.sp, 1
  br i1 %i.sq, label %bb.lk, label %bb.ll, !prof !16

bb.lk:                                            ; preds = %bb.lj
  %i.sr = add nsw i32 %i.sp, -1
  store i32 %i.sr, ptr %.51309, align 4, !tbaa !14
  br label %lean_dec.exit1733

bb.ll:                                            ; preds = %bb.lj
  %.not.i1817 = icmp eq i32 %i.sp, 0
  br i1 %.not.i1817, label %lean_dec.exit1733, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.51309) #6
  br label %lean_dec.exit1733

lean_dec.exit1733:                                ; preds = %bb.lm, %bb.ll, %bb.lk, %lean_dec.exit1735
  br i1 %.not.i1479, label %bb.ln, label %lean_inc.exit1436

bb.ln:                                            ; preds = %lean_dec.exit1733
  %.val.i.i2329 = load i32, ptr %i.fb, align 4, !tbaa !14 ; 3 uses
  %i.ss = icmp sgt i32 %.val.i.i2329, 0
  br i1 %i.ss, label %bb.lo, label %bb.lp, !prof !16

bb.lo:                                            ; preds = %bb.ln
  %i.st = add nuw i32 %.val.i.i2329, 1
  store i32 %i.st, ptr %i.fb, align 4, !tbaa !14
  br label %lean_inc.exit1436

bb.lp:                                            ; preds = %bb.ln
  %.not.i.i2330 = icmp eq i32 %.val.i.i2329, 0
  br i1 %.not.i.i2330, label %lean_inc.exit1436, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.su = atomicrmw sub ptr %i.fb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1436

lean_inc.exit1436:                                ; preds = %bb.lq, %bb.lp, %bb.lo, %lean_dec.exit1733
  %i.sv = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__16___redArg___lam__4(ptr noundef %i.ay, ptr noundef nonnull inttoptr (i64 1 to ptr), i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef %i.fb, ptr noundef %i.da, i8 noundef zeroext 0, i8 noundef zeroext %3, ptr poison, i8 noundef zeroext %i.sn, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14)
  br label %lean_dec.exit1615

bb.lr:                                            ; preds = %lean_inc_ref.exit2336
  %i.sw = load i32, ptr %.81321, align 4, !tbaa !14 ; 3 uses
  %i.sx = icmp sgt i32 %i.sw, 1
  br i1 %i.sx, label %bb.ls, label %bb.lt, !prof !16

bb.ls:                                            ; preds = %bb.lr
  %i.sy = add nsw i32 %i.sw, -1
  store i32 %i.sy, ptr %.81321, align 4, !tbaa !14
  br label %lean_dec_ref.exit2114

bb.lt:                                            ; preds = %bb.lr
  %.not.i2113 = icmp eq i32 %i.sw, 0
  br i1 %.not.i2113, label %lean_dec_ref.exit2114, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.81321) #6
  br label %lean_dec_ref.exit2114

lean_dec_ref.exit2114:                            ; preds = %bb.ls, %bb.lt, %bb.lu
  %i.sz = ptrtoint ptr %.01270 to i64
  %i.ta = and i64 %i.sz, 1
  %.not.i2332 = icmp eq i64 %i.ta, 0
  br i1 %.not.i2332, label %bb.lv, label %lean_del_object.exit2333

bb.lv:                                            ; preds = %lean_dec_ref.exit2114
  tail call void @lean_free_object(ptr noundef nonnull %.01270) #6
  br label %lean_del_object.exit2333

.critedge:                                        ; preds = %lean_del_object.exit2279.thread, %lean_inc_ref.exit2336
  br i1 %.not.i1481, label %bb.lw, label %lean_dec.exit1731

bb.lw:                                            ; preds = %.critedge
  %i.tb = load i32, ptr %i.ej, align 4, !tbaa !14 ; 3 uses
  %i.tc = icmp sgt i32 %i.tb, 1
  br i1 %i.tc, label %bb.lx, label %bb.ly, !prof !16

bb.lx:                                            ; preds = %bb.lw
  %i.td = add nsw i32 %i.tb, -1
  store i32 %i.td, ptr %i.ej, align 4, !tbaa !14
  br label %lean_dec.exit1731

bb.ly:                                            ; preds = %bb.lw
  %.not.i1819 = icmp eq i32 %i.tb, 0
  br i1 %.not.i1819, label %lean_dec.exit1731, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ej) #6
  br label %lean_dec.exit1731

lean_dec.exit1731:                                ; preds = %bb.lz, %bb.ly, %bb.lx, %.critedge
  %i.te = and i64 %i.fc, 1
  %.not.i1728 = icmp eq i64 %i.te, 0
  br i1 %.not.i1728, label %bb.ma, label %lean_dec.exit1729

bb.ma:                                            ; preds = %lean_dec.exit1731
  %i.tf = load i32, ptr %i.dy, align 4, !tbaa !14 ; 3 uses
  %i.tg = icmp sgt i32 %i.tf, 1
  br i1 %i.tg, label %bb.mb, label %bb.mc, !prof !16

bb.mb:                                            ; preds = %bb.ma
  %i.th = add nsw i32 %i.tf, -1
  store i32 %i.th, ptr %i.dy, align 4, !tbaa !14
  br label %lean_dec.exit1729

bb.mc:                                            ; preds = %bb.ma
  %.not.i1821 = icmp eq i32 %i.tf, 0
  br i1 %.not.i1821, label %lean_dec.exit1729, label %bb.md

bb.md:                                            ; preds = %bb.mc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dy) #6
  br label %lean_dec.exit1729

lean_dec.exit1729:                                ; preds = %bb.md, %bb.mc, %bb.mb, %lean_dec.exit1731
  br i1 %.not.i2156, label %bb.me, label %lean_dec.exit1727

bb.me:                                            ; preds = %lean_dec.exit1729
  %i.ti = load i32, ptr %i.da, align 4, !tbaa !14 ; 3 uses
  %i.tj = icmp sgt i32 %i.ti, 1
  br i1 %i.tj, label %bb.mf, label %bb.mg, !prof !16

bb.mf:                                            ; preds = %bb.me
  %i.tk = add nsw i32 %i.ti, -1
  store i32 %i.tk, ptr %i.da, align 4, !tbaa !14
  br label %lean_dec.exit1727

bb.mg:                                            ; preds = %bb.me
  %.not.i1823 = icmp eq i32 %i.ti, 0
  br i1 %.not.i1823, label %lean_dec.exit1727, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.da) #6
  br label %lean_dec.exit1727

lean_dec.exit1727:                                ; preds = %bb.mh, %bb.mg, %bb.mf, %lean_dec.exit1729
  br i1 %.not.i1497, label %bb.mi, label %lean_dec.exit1725

bb.mi:                                            ; preds = %lean_dec.exit1727
  %i.tl = load i32, ptr %i.ay, align 4, !tbaa !14 ; 3 uses
  %i.tm = icmp sgt i32 %i.tl, 1
  br i1 %i.tm, label %bb.mj, label %bb.mk, !prof !16

bb.mj:                                            ; preds = %bb.mi
  %i.tn = add nsw i32 %i.tl, -1
  store i32 %i.tn, ptr %i.ay, align 4, !tbaa !14
  br label %lean_dec.exit1725

bb.mk:                                            ; preds = %bb.mi
  %.not.i1825 = icmp eq i32 %i.tl, 0
  br i1 %.not.i1825, label %lean_dec.exit1725, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #6
  br label %lean_dec.exit1725

lean_dec.exit1725:                                ; preds = %bb.ml, %bb.mk, %bb.mj, %lean_dec.exit1727
  br i1 %.not.i2119, label %bb.mm, label %lean_dec.exit1723

bb.mm:                                            ; preds = %lean_dec.exit1725
  %i.to = load i32, ptr %.01158, align 4, !tbaa !14 ; 3 uses
  %i.tp = icmp sgt i32 %i.to, 1
  br i1 %i.tp, label %bb.mn, label %bb.mo, !prof !16

bb.mn:                                            ; preds = %bb.mm
  %i.tq = add nsw i32 %i.to, -1
  store i32 %i.tq, ptr %.01158, align 4, !tbaa !14
  br label %lean_dec.exit1723

bb.mo:                                            ; preds = %bb.mm
  %.not.i1827 = icmp eq i32 %i.to, 0
  br i1 %.not.i1827, label %lean_dec.exit1723, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01158) #6
  br label %lean_dec.exit1723

lean_dec.exit1723:                                ; preds = %bb.mp, %bb.mo, %bb.mn, %lean_dec.exit1725
  %i.tr = load i32, ptr %8, align 4, !tbaa !14    ; 3 uses
  %i.ts = icmp sgt i32 %i.tr, 1
  br i1 %i.ts, label %bb.mq, label %bb.mr, !prof !16

bb.mq:                                            ; preds = %lean_dec.exit1723
  %i.tt = add nsw i32 %i.tr, -1
  store i32 %i.tt, ptr %8, align 4, !tbaa !14
  br label %lean_dec_ref.exit2112

bb.mr:                                            ; preds = %lean_dec.exit1723
  %.not.i2111 = icmp eq i32 %i.tr, 0
  br i1 %.not.i2111, label %lean_dec_ref.exit2112, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #6
  br label %lean_dec_ref.exit2112

lean_dec_ref.exit2112:                            ; preds = %bb.mq, %bb.mr, %bb.ms
  br i1 %.not.i1417, label %bb.mt, label %lean_dec.exit1721

bb.mt:                                            ; preds = %lean_dec_ref.exit2112
  %i.tu = load i32, ptr %7, align 4, !tbaa !14    ; 3 uses
  %i.tv = icmp sgt i32 %i.tu, 1
  br i1 %i.tv, label %bb.mu, label %bb.mv, !prof !16

bb.mu:                                            ; preds = %bb.mt
  %i.tw = add nsw i32 %i.tu, -1
  store i32 %i.tw, ptr %7, align 4, !tbaa !14
  br label %lean_dec.exit1721

bb.mv:                                            ; preds = %bb.mt
  %.not.i1829 = icmp eq i32 %i.tu, 0
  br i1 %.not.i1829, label %lean_dec.exit1721, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec.exit1721

lean_dec.exit1721:                                ; preds = %bb.mw, %bb.mv, %bb.mu, %lean_dec_ref.exit2112
  br i1 %i.dz, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %lean_dec.exit1721
  %i.tx = getelementptr inbounds nuw i8, ptr %.01270, i64 4 ; 2 uses
  %i.ty = load i32, ptr %i.tx, align 4
  %i.tz = and i32 %i.ty, 16777215
  %i.ua = or disjoint i32 %i.tz, 16777216
  store i32 %i.ua, ptr %i.tx, align 4
  br label %lean_dec.exit1511.thread.sink.split

bb.my:                                            ; preds = %lean_dec.exit1721
  %i.ub = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit1511.thread.sink.split

lean_del_object.exit2279.thread:                  ; preds = %bb.le, %bb.ld, %bb.lc, %lean_dec.exit.i2323, %lean_inc.exit1442, %lean_inc.exit1444, %lean_inc.exit1440, %lean_inc.exit1426
  %.81321 = phi ptr [ %i.xk, %lean_inc.exit1426 ], [ %i.jy, %bb.le ], [ %i.jy, %bb.ld ], [ %i.jy, %bb.lc ], [ %i.jy, %lean_dec.exit.i2323 ], [ %i.ra, %lean_inc.exit1442 ], [ %i.qq, %lean_inc.exit1444 ], [ %i.rk, %lean_inc.exit1440 ] ; 10 uses
  %i.uc = tail call zeroext i8 @l_Lean_Exception_isInterrupt(ptr noundef %.81321) #6
  %i.ud = icmp eq i8 %i.uc, 0
  br i1 %i.ud, label %bb.mz, label %.critedge

bb.mz:                                            ; preds = %lean_del_object.exit2279.thread
  %.val.i.i2334 = load i32, ptr %.81321, align 4, !tbaa !14 ; 3 uses
  %i.ue = icmp sgt i32 %.val.i.i2334, 0
  br i1 %i.ue, label %bb.na, label %bb.nb, !prof !16

bb.na:                                            ; preds = %bb.mz
  %i.uf = add nuw i32 %.val.i.i2334, 1
  store i32 %i.uf, ptr %.81321, align 4, !tbaa !14
  br label %lean_inc_ref.exit2336

bb.nb:                                            ; preds = %bb.mz
  %.not.i.i2335 = icmp eq i32 %.val.i.i2334, 0
  br i1 %.not.i.i2335, label %lean_inc_ref.exit2336, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.ug = atomicrmw sub ptr %.81321, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2336

lean_inc_ref.exit2336:                            ; preds = %bb.na, %bb.nb, %bb.nc
  %i.uh = tail call zeroext i8 @l_Lean_Exception_isRuntime(ptr noundef nonnull %.81321) #6
  %i.ui = icmp eq i8 %i.uh, 0
  br i1 %i.ui, label %bb.lr, label %.critedge

lean_del_object.exit2279:                         ; preds = %lean_inc.exit1448, %bb.jj, %bb.jk, %bb.jl, %bb.ip, %bb.ir, %bb.is, %bb.it
  %i.uj = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__16___redArg___lam__0(ptr noundef %i.ay, ptr noundef %i.kj, i8 noundef zeroext 0, ptr poison, ptr nonnull poison, ptr noundef %12, ptr nonnull poison, ptr poison) ; 6 uses
  %i.uk = ptrtoint ptr %i.uj to i64               ; 2 uses
  %i.ul = and i64 %i.uk, 1
  %.not.i2337 = icmp eq i64 %i.ul, 0
  br i1 %.not.i2337, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %lean_del_object.exit2279
  %i.um = lshr i64 %i.uk, 1
  %i.un = trunc i64 %i.um to i32
  br label %lean_obj_tag.exit2340

bb.ne:                                            ; preds = %lean_del_object.exit2279
  %i.uo = getelementptr i8, ptr %i.uj, i64 4
  %.val.i2339 = load i32, ptr %i.uo, align 4
  %i.up = lshr i32 %.val.i2339, 24
  br label %lean_obj_tag.exit2340

lean_obj_tag.exit2340:                            ; preds = %bb.nd, %bb.ne
  %.0.i2338 = phi i32 [ %i.un, %bb.nd ], [ %i.up, %bb.ne ]
  %i.uq = icmp eq i32 %.0.i2338, 0
  br i1 %i.uq, label %bb.nf, label %bb.pk

bb.nf:                                            ; preds = %lean_obj_tag.exit2340
  br i1 %.not.i1481, label %bb.ng, label %lean_dec.exit1719

bb.ng:                                            ; preds = %bb.nf
  %i.ur = load i32, ptr %i.ej, align 4, !tbaa !14 ; 3 uses
  %i.us = icmp sgt i32 %i.ur, 1
  br i1 %i.us, label %bb.nh, label %bb.ni, !prof !16

bb.nh:                                            ; preds = %bb.ng
  %i.ut = add nsw i32 %i.ur, -1
  store i32 %i.ut, ptr %i.ej, align 4, !tbaa !14
  br label %lean_dec.exit1719

bb.ni:                                            ; preds = %bb.ng
  %.not.i1831 = icmp eq i32 %i.ur, 0
  br i1 %.not.i1831, label %lean_dec.exit1719, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ej) #6
  br label %lean_dec.exit1719

lean_dec.exit1719:                                ; preds = %bb.nj, %bb.ni, %bb.nh, %bb.nf
  %i.uu = ptrtoint ptr %.01270 to i64
  %i.uv = and i64 %i.uu, 1
  %.not.i2341 = icmp eq i64 %i.uv, 0
  br i1 %.not.i2341, label %bb.nk, label %lean_del_object.exit2342

bb.nk:                                            ; preds = %lean_dec.exit1719
  tail call void @lean_free_object(ptr noundef nonnull %.01270) #6
  br label %lean_del_object.exit2342

lean_del_object.exit2342:                         ; preds = %lean_dec.exit1719, %bb.nk
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !10 ; 15 uses
  %i.uy = ptrtoint ptr %i.ux to i64
  %i.uz = and i64 %i.uy, 1
  %.not.i1433 = icmp eq i64 %i.uz, 0              ; 3 uses
  br i1 %.not.i1433, label %bb.nl, label %lean_inc.exit1434

bb.nl:                                            ; preds = %lean_del_object.exit2342
  %.val.i.i2343 = load i32, ptr %i.ux, align 4, !tbaa !14 ; 3 uses
  %i.va = icmp sgt i32 %.val.i.i2343, 0
  br i1 %i.va, label %bb.nm, label %bb.nn, !prof !16

bb.nm:                                            ; preds = %bb.nl
  %i.vb = add nuw i32 %.val.i.i2343, 1
  store i32 %i.vb, ptr %i.ux, align 4, !tbaa !14
  br label %lean_inc.exit1434

bb.nn:                                            ; preds = %bb.nl
  %.not.i.i2344 = icmp eq i32 %.val.i.i2343, 0
  br i1 %.not.i.i2344, label %lean_inc.exit1434, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.vc = atomicrmw sub ptr %i.ux, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1434

lean_inc.exit1434:                                ; preds = %bb.no, %bb.nn, %bb.nm, %lean_del_object.exit2342
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.uj, i32 noundef 1)
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ux, i64 8 ; 3 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !10 ; 7 uses
  %i.vf = ptrtoint ptr %i.ve to i64               ; 2 uses
  %i.vg = and i64 %i.vf, 1
  %.not.i2346 = icmp eq i64 %i.vg, 0
  br i1 %.not.i2346, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %lean_inc.exit1434
  %i.vh = lshr i64 %i.vf, 1
  %i.vi = trunc i64 %i.vh to i32
  br label %lean_obj_tag.exit2349

bb.nq:                                            ; preds = %lean_inc.exit1434
  %i.vj = getelementptr i8, ptr %i.ve, i64 4
  %.val.i2348 = load i32, ptr %i.vj, align 4
  %i.vk = lshr i32 %.val.i2348, 24
  br label %lean_obj_tag.exit2349

lean_obj_tag.exit2349:                            ; preds = %bb.np, %bb.nq
  %.0.i2347 = phi i32 [ %i.vi, %bb.np ], [ %i.vk, %bb.nq ]
  %.not = icmp eq i32 %.0.i2347, 0
  br i1 %.not, label %bb.nr, label %bb.ot

bb.nr:                                            ; preds = %lean_obj_tag.exit2349
  %i.vl = and i64 %i.fc, 1
  %.not.i1716 = icmp eq i64 %i.vl, 0
  br i1 %.not.i1716, label %bb.ns, label %lean_dec.exit1717

bb.ns:                                            ; preds = %bb.nr
  %i.vm = load i32, ptr %i.dy, align 512, !tbaa !14 ; 3 uses
  %i.vn = icmp sgt i32 %i.vm, 1
  br i1 %i.vn, label %bb.nt, label %bb.nu, !prof !16

bb.nt:                                            ; preds = %bb.ns
  %i.vo = add nsw i32 %i.vm, -1
  store i32 %i.vo, ptr %i.dy, align 512, !tbaa !14
  br label %lean_dec.exit1717

bb.nu:                                            ; preds = %bb.ns
  %.not.i1833 = icmp eq i32 %i.vm, 0
  br i1 %.not.i1833, label %lean_dec.exit1717, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dy) #6
  br label %lean_dec.exit1717

lean_dec.exit1717:                                ; preds = %bb.nv, %bb.nu, %bb.nt, %bb.nr
  br i1 %.not.i2156, label %bb.nw, label %lean_dec.exit1715

bb.nw:                                            ; preds = %lean_dec.exit1717
  %i.vp = load i32, ptr %i.da, align 4, !tbaa !14 ; 3 uses
  %i.vq = icmp sgt i32 %i.vp, 1
  br i1 %i.vq, label %bb.nx, label %bb.ny, !prof !16

bb.nx:                                            ; preds = %bb.nw
  %i.vr = add nsw i32 %i.vp, -1
  store i32 %i.vr, ptr %i.da, align 4, !tbaa !14
  br label %lean_dec.exit1715

bb.ny:                                            ; preds = %bb.nw
  %.not.i1835 = icmp eq i32 %i.vp, 0
  br i1 %.not.i1835, label %lean_dec.exit1715, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.da) #6
  br label %lean_dec.exit1715

lean_dec.exit1715:                                ; preds = %bb.nz, %bb.ny, %bb.nx, %lean_dec.exit1717
  br i1 %.not.i1497, label %bb.oa, label %lean_dec.exit1713

bb.oa:                                            ; preds = %lean_dec.exit1715
  %i.vs = load i32, ptr %i.ay, align 4, !tbaa !14 ; 3 uses
  %i.vt = icmp sgt i32 %i.vs, 1
  br i1 %i.vt, label %bb.ob, label %bb.oc, !prof !16

bb.ob:                                            ; preds = %bb.oa
  %i.vu = add nsw i32 %i.vs, -1
  store i32 %i.vu, ptr %i.ay, align 4, !tbaa !14
  br label %lean_dec.exit1713

bb.oc:                                            ; preds = %bb.oa
  %.not.i1837 = icmp eq i32 %i.vs, 0
  br i1 %.not.i1837, label %lean_dec.exit1713, label %bb.od

bb.od:                                            ; preds = %bb.oc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #6
  br label %lean_dec.exit1713

lean_dec.exit1713:                                ; preds = %bb.od, %bb.oc, %bb.ob, %lean_dec.exit1715
  %i.vv = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !10 ; 5 uses
  %.val2135 = load i32, ptr %i.ux, align 8, !tbaa !14
  %i.vx = icmp eq i32 %.val2135, 1
  br i1 %i.vx, label %bb.oe, label %bb.oj

bb.oe:                                            ; preds = %lean_dec.exit1713
  %i.vy = load ptr, ptr %i.vd, align 8, !tbaa !10 ; 4 uses
  %i.vz = ptrtoint ptr %i.vy to i64
  %i.wa = and i64 %i.vz, 1
  %.not.i1710 = icmp eq i64 %i.wa, 0
  br i1 %.not.i1710, label %bb.of, label %bb.os

bb.of:                                            ; preds = %bb.oe
  %i.wb = load i32, ptr %i.vy, align 4, !tbaa !14 ; 3 uses
  %i.wc = icmp sgt i32 %i.wb, 1
  br i1 %i.wc, label %bb.og, label %bb.oh, !prof !16

bb.og:                                            ; preds = %bb.of
  %i.wd = add nsw i32 %i.wb, -1
  store i32 %i.wd, ptr %i.vy, align 4, !tbaa !14
  br label %bb.os

bb.oh:                                            ; preds = %bb.of
  %.not.i1839 = icmp eq i32 %i.wb, 0
  br i1 %.not.i1839, label %bb.os, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.vy) #6
  br label %bb.os

bb.oj:                                            ; preds = %lean_dec.exit1713
  %i.we = ptrtoint ptr %i.vw to i64
  %i.wf = and i64 %i.we, 1
  %.not.i1431 = icmp eq i64 %i.wf, 0
  br i1 %.not.i1431, label %bb.ok, label %lean_inc.exit1432

bb.ok:                                            ; preds = %bb.oj
  %.val.i.i2350 = load i32, ptr %i.vw, align 4, !tbaa !14 ; 3 uses
  %i.wg = icmp sgt i32 %.val.i.i2350, 0
  br i1 %i.wg, label %bb.ol, label %bb.om, !prof !16

bb.ol:                                            ; preds = %bb.ok
  %i.wh = add nuw i32 %.val.i.i2350, 1
  store i32 %i.wh, ptr %i.vw, align 4, !tbaa !14
  br label %lean_inc.exit1432

bb.om:                                            ; preds = %bb.ok
  %.not.i.i2351 = icmp eq i32 %.val.i.i2350, 0
  br i1 %.not.i.i2351, label %lean_inc.exit1432, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.wi = atomicrmw sub ptr %i.vw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1432

lean_inc.exit1432:                                ; preds = %bb.on, %bb.om, %bb.ol, %bb.oj
  br i1 %.not.i1433, label %bb.oo, label %lean_dec.exit1711

bb.oo:                                            ; preds = %lean_inc.exit1432
  %i.wj = load i32, ptr %i.ux, align 8, !tbaa !14 ; 3 uses
  %i.wk = icmp sgt i32 %i.wj, 1
  br i1 %i.wk, label %bb.op, label %bb.oq, !prof !16

bb.op:                                            ; preds = %bb.oo
  %i.wl = add nsw i32 %i.wj, -1
  store i32 %i.wl, ptr %i.ux, align 8, !tbaa !14
  br label %lean_dec.exit1711

bb.oq:                                            ; preds = %bb.oo
  %.not.i1841 = icmp eq i32 %i.wj, 0
  br i1 %.not.i1841, label %lean_dec.exit1711, label %bb.or

bb.or:                                            ; preds = %bb.oq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ux) #6
  br label %lean_dec.exit1711

bb.os:                                            ; preds = %bb.oe, %bb.og, %bb.oh, %bb.oi
  store ptr inttoptr (i64 1 to ptr), ptr %i.vd, align 8, !tbaa !10
  br label %lean_dec.exit1615.thread2711

lean_dec.exit1711:                                ; preds = %bb.or, %bb.oq, %bb.op, %lean_inc.exit1432
  %i.wm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.wn, align 8, !tbaa !10
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  store ptr %i.vw, ptr %i.wo, align 8, !tbaa !10
  br label %lean_dec.exit1615.thread2711

bb.ot:                                            ; preds = %lean_obj_tag.exit2349
  %.val.i.i2353 = load i32, ptr %i.ve, align 4, !tbaa !14 ; 3 uses
  %i.wp = icmp sgt i32 %.val.i.i2353, 0
  br i1 %i.wp, label %bb.ou, label %bb.ov, !prof !16

bb.ou:                                            ; preds = %bb.ot
  %i.wq = add nuw i32 %.val.i.i2353, 1
  store i32 %i.wq, ptr %i.ve, align 4, !tbaa !14
  br label %lean_inc_ref.exit2355

bb.ov:                                            ; preds = %bb.ot
  %.not.i.i2354 = icmp eq i32 %.val.i.i2353, 0
  br i1 %.not.i.i2354, label %lean_inc_ref.exit2355, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.wr = atomicrmw sub ptr %i.ve, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2355

lean_inc_ref.exit2355:                            ; preds = %bb.ou, %bb.ov, %bb.ow
  %i.ws = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !10 ; 5 uses
  %i.wu = ptrtoint ptr %i.wt to i64
  %i.wv = and i64 %i.wu, 1
  %.not.i1429 = icmp eq i64 %i.wv, 0
  br i1 %.not.i1429, label %bb.ox, label %lean_inc.exit1430

bb.ox:                                            ; preds = %lean_inc_ref.exit2355
  %.val.i.i2356 = load i32, ptr %i.wt, align 4, !tbaa !14 ; 3 uses
  %i.ww = icmp sgt i32 %.val.i.i2356, 0
  br i1 %i.ww, label %bb.oy, label %bb.oz, !prof !16

bb.oy:                                            ; preds = %bb.ox
  %i.wx = add nuw i32 %.val.i.i2356, 1
  store i32 %i.wx, ptr %i.wt, align 4, !tbaa !14
  br label %lean_inc.exit1430

bb.oz:                                            ; preds = %bb.ox
  %.not.i.i2357 = icmp eq i32 %.val.i.i2356, 0
  br i1 %.not.i.i2357, label %lean_inc.exit1430, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.wy = atomicrmw sub ptr %i.wt, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1430

lean_inc.exit1430:                                ; preds = %bb.pa, %bb.oz, %bb.oy, %lean_inc_ref.exit2355
  br i1 %.not.i1433, label %bb.pb, label %lean_dec.exit1707

bb.pb:                                            ; preds = %lean_inc.exit1430
  %i.wz = load i32, ptr %i.ux, align 8, !tbaa !14 ; 3 uses
  %i.xa = icmp sgt i32 %i.wz, 1
  br i1 %i.xa, label %bb.pc, label %bb.pd, !prof !16

bb.pc:                                            ; preds = %bb.pb
  %i.xb = add nsw i32 %i.wz, -1
  store i32 %i.xb, ptr %i.ux, align 8, !tbaa !14
  br label %lean_dec.exit1707

bb.pd:                                            ; preds = %bb.pb
  %.not.i1843 = icmp eq i32 %i.wz, 0
end_hunk_4
begin_hunk_5_@l_Lean_Expr_withAppAux___at___00Lean_Expr_withAppAux___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__17_spec__29:bb.a
  br label %lean_dec_ref.exit1576

lean_dec_ref.exit1576:                            ; preds = %bb.hn, %bb.ho, %bb.hp
  %i.me = load i32, ptr %.0917, align 4, !tbaa !14 ; 3 uses
  %i.mf = icmp sgt i32 %i.me, 1
  br i1 %i.mf, label %bb.hq, label %bb.hr, !prof !16

bb.hq:                                            ; preds = %lean_dec_ref.exit1576
  %i.mg = add nsw i32 %i.me, -1
  store i32 %i.mg, ptr %.0917, align 4, !tbaa !14
  br label %lean_dec_ref.exit1574

bb.hr:                                            ; preds = %lean_dec_ref.exit1576
  %.not.i1573 = icmp eq i32 %i.me, 0
  br i1 %.not.i1573, label %lean_dec_ref.exit1574, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0917) #6
  br label %lean_dec_ref.exit1574

lean_dec_ref.exit1574:                            ; preds = %bb.hq, %bb.hr, %bb.hs
  %i.mh = ptrtoint ptr %7 to i64
  %i.mi = and i64 %i.mh, 1
  %.not.i1350 = icmp eq i64 %i.mi, 0
  br i1 %.not.i1350, label %bb.ht, label %lean_dec.exit1351

bb.ht:                                            ; preds = %lean_dec_ref.exit1574
  %i.mj = load i32, ptr %7, align 4, !tbaa !14    ; 3 uses
  %i.mk = icmp sgt i32 %i.mj, 1
  br i1 %i.mk, label %bb.hu, label %bb.hv, !prof !16

bb.hu:                                            ; preds = %bb.ht
  %i.ml = add nsw i32 %i.mj, -1
  store i32 %i.ml, ptr %7, align 4, !tbaa !14
  br label %lean_dec.exit1351

bb.hv:                                            ; preds = %bb.ht
  %.not.i1395 = icmp eq i32 %i.mj, 0
  br i1 %.not.i1395, label %lean_dec.exit1351, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec.exit1351

lean_dec.exit1351:                                ; preds = %bb.hw, %bb.hv, %bb.hu, %lean_dec_ref.exit1574
  %i.mm = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !10 ; 7 uses
  %.val.i.i1758 = load i32, ptr %i.mn, align 4, !tbaa !14 ; 3 uses
  %i.mo = icmp sgt i32 %.val.i.i1758, 0
  br i1 %i.mo, label %bb.hx, label %bb.hy, !prof !16

bb.hx:                                            ; preds = %lean_dec.exit1351
  %i.mp = add nuw i32 %.val.i.i1758, 1
  store i32 %i.mp, ptr %i.mn, align 4, !tbaa !14
  br label %lean_inc_ref.exit1760

bb.hy:                                            ; preds = %lean_dec.exit1351
  %.not.i.i1759 = icmp eq i32 %.val.i.i1758, 0
  br i1 %.not.i.i1759, label %lean_inc_ref.exit1760, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.mq = atomicrmw sub ptr %i.mn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1760

lean_inc_ref.exit1760:                            ; preds = %bb.hx, %bb.hy, %bb.hz
  %i.mr = load i32, ptr %i.du, align 8, !tbaa !14 ; 3 uses
  %i.ms = icmp sgt i32 %i.mr, 1
  br i1 %i.ms, label %bb.ia, label %bb.ib, !prof !16

bb.ia:                                            ; preds = %lean_inc_ref.exit1760
  %i.mt = add nsw i32 %i.mr, -1
  store i32 %i.mt, ptr %i.du, align 8, !tbaa !14
  br label %lean_dec_ref.exit1572

bb.ib:                                            ; preds = %lean_inc_ref.exit1760
  %.not.i1571 = icmp eq i32 %i.mr, 0
  br i1 %.not.i1571, label %lean_dec_ref.exit1572, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.du) #6
  br label %lean_dec_ref.exit1572

lean_dec_ref.exit1572:                            ; preds = %bb.ia, %bb.ib, %bb.ic
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !10 ; 5 uses
  %i.mw = ptrtoint ptr %i.mv to i64
  %i.mx = and i64 %i.mw, 1
  %.not.i1237 = icmp eq i64 %i.mx, 0
  br i1 %.not.i1237, label %bb.id, label %lean_inc.exit1238

bb.id:                                            ; preds = %lean_dec_ref.exit1572
  %.val.i.i1761 = load i32, ptr %i.mv, align 4, !tbaa !14 ; 3 uses
  %i.my = icmp sgt i32 %.val.i.i1761, 0
  br i1 %i.my, label %bb.ie, label %bb.if, !prof !16

bb.ie:                                            ; preds = %bb.id
  %i.mz = add nuw i32 %.val.i.i1761, 1
  store i32 %i.mz, ptr %i.mv, align 4, !tbaa !14
  br label %lean_inc.exit1238

bb.if:                                            ; preds = %bb.id
  %.not.i.i1762 = icmp eq i32 %.val.i.i1761, 0
  br i1 %.not.i.i1762, label %lean_inc.exit1238, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.na = atomicrmw sub ptr %i.mv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1238

lean_inc.exit1238:                                ; preds = %bb.ig, %bb.if, %bb.ie, %lean_dec_ref.exit1572
  %i.nb = load i32, ptr %i.mn, align 8, !tbaa !14 ; 3 uses
  %i.nc = icmp sgt i32 %i.nb, 1
  br i1 %i.nc, label %bb.ih, label %bb.ii, !prof !16

bb.ih:                                            ; preds = %lean_inc.exit1238
  %i.nd = add nsw i32 %i.nb, -1
  store i32 %i.nd, ptr %i.mn, align 8, !tbaa !14
  br label %lean_dec_ref.exit1570

bb.ii:                                            ; preds = %lean_inc.exit1238
  %.not.i1569 = icmp eq i32 %i.nb, 0
  br i1 %.not.i1569, label %lean_dec_ref.exit1570, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mn) #6
  br label %lean_dec_ref.exit1570

lean_dec_ref.exit1570:                            ; preds = %bb.ih, %bb.ii, %bb.ij
  %i.ne = load atomic i32, ptr @l_Lean_Expr_withAppAux___at___00Lean_Expr_withAppAux___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__15_spec__26___closed__5_once seq_cst, align 4, !tbaa !18
  %i.nf = icmp eq i32 %i.ne, 1
  br i1 %i.nf, label %bb.ik, label %bb.il, !prof !16

bb.ik:                                            ; preds = %lean_dec_ref.exit1570
  %i.ng = load ptr, ptr @l_Lean_Expr_withAppAux___at___00Lean_Expr_withAppAux___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__15_spec__26___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit1765

bb.il:                                            ; preds = %lean_dec_ref.exit1570
  %i.nh = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Expr_withAppAux___at___00Lean_Expr_withAppAux___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__15_spec__26___closed__5, ptr noundef nonnull @l_Lean_Expr_withAppAux___at___00Lean_Expr_withAppAux___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__15_spec__26___closed__5_once, ptr noundef nonnull @_init_l_Lean_Expr_withAppAux___at___00Lean_Expr_withAppAux___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__15_spec__26___closed__5) #6
  br label %lean_obj_once.exit1765

lean_obj_once.exit1765:                           ; preds = %bb.ik, %bb.il
  %.0.i1764 = phi ptr [ %i.ng, %bb.ik ], [ %i.nh, %bb.il ] ; 2 uses
  %i.ni = tail call ptr @l_Lean_MessageData_ofExpr(ptr noundef nonnull %1) #6 ; 2 uses
  br i1 %i.ha, label %bb.im, label %bb.in

bb.im:                                            ; preds = %lean_obj_once.exit1765
  %i.nj = getelementptr inbounds nuw i8, ptr %.01155, i64 4 ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 4
  %i.nl = and i32 %i.nk, 16777215
  %i.nm = or disjoint i32 %i.nl, 117440512
  store i32 %i.nm, ptr %i.nj, align 4
  %i.nn = getelementptr inbounds nuw i8, ptr %.01155, i64 8
  %i.no = getelementptr inbounds nuw i8, ptr %.01155, i64 16
  store ptr %i.ni, ptr %i.no, align 8, !tbaa !10
  store ptr %.0.i1764, ptr %i.nn, align 8, !tbaa !10
  br label %bb.io

bb.in:                                            ; preds = %lean_obj_once.exit1765
  %i.np = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  store ptr %.0.i1764, ptr %i.nq, align 8, !tbaa !10
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  store ptr %i.ni, ptr %i.nr, align 8, !tbaa !10
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %.01142 = phi ptr [ %.01155, %bb.im ], [ %i.np, %bb.in ]
  %i.ns = load atomic i32, ptr @l_Lean_Expr_withAppAux___at___00Lean_Expr_withAppAux___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__15_spec__26___closed__7_once seq_cst, align 4, !tbaa !18
  %i.nt = icmp eq i32 %i.ns, 1
  br i1 %i.nt, label %bb.ip, label %bb.iq, !prof !16

bb.ip:                                            ; preds = %bb.io
  %i.nu = load ptr, ptr @l_Lean_Expr_withAppAux___at___00Lean_Expr_withAppAux___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__15_spec__26___closed__7, align 8, !tbaa !10
  br label %lean_obj_once.exit1767

bb.iq:                                            ; preds = %bb.io
  %i.nv = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Expr_withAppAux___at___00Lean_Expr_withAppAux___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__15_spec__26___closed__7, ptr noundef nonnull @l_Lean_Expr_withAppAux___at___00Lean_Expr_withAppAux___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__15_spec__26___closed__7_once, ptr noundef nonnull @_init_l_Lean_Expr_withAppAux___at___00Lean_Expr_withAppAux___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__15_spec__26___closed__7) #6
  br label %lean_obj_once.exit1767

lean_obj_once.exit1767:                           ; preds = %bb.ip, %bb.iq
  %.0.i1766 = phi ptr [ %i.nu, %bb.ip ], [ %i.nv, %bb.iq ]
  tail call void @lean_inc_heartbeat() #6
  %i.nw = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.nx = icmp eq ptr %i.nw, null
  br i1 %i.nx, label %bb.ir, label %lean_alloc_ctor.exit1768

bb.ir:                                            ; preds = %lean_obj_once.exit1767
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1768:                         ; preds = %lean_obj_once.exit1767
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  store i32 1, ptr %i.nw, align 4, !tbaa !14
  store i32 117571608, ptr %i.ny, align 4
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store ptr %.01142, ptr %i.nz, align 8, !tbaa !10
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store ptr %.0.i1766, ptr %i.oa, align 8, !tbaa !10
  br i1 %.not.i1239, label %bb.is, label %lean_dec.exit1349

bb.is:                                            ; preds = %lean_alloc_ctor.exit1768
  %i.ob = load i32, ptr %i.ld, align 512, !tbaa !14 ; 3 uses
  %i.oc = icmp sgt i32 %i.ob, 1
  br i1 %i.oc, label %bb.it, label %bb.iu, !prof !16

bb.it:                                            ; preds = %bb.is
  %i.od = add nsw i32 %i.ob, -1
  store i32 %i.od, ptr %i.ld, align 512, !tbaa !14
  br label %lean_dec.exit1349

bb.iu:                                            ; preds = %bb.is
  %.not.i1397 = icmp eq i32 %i.ob, 0
  br i1 %.not.i1397, label %lean_dec.exit1349, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ld) #6
  br label %lean_dec.exit1349

lean_dec.exit1349:                                ; preds = %bb.iv, %bb.iu, %bb.it, %lean_alloc_ctor.exit1768
  %i.oe = tail call ptr @l_Lean_MessageData_ofConstName(ptr noundef %i.mv, i8 noundef zeroext 0) #6
  tail call void @lean_inc_heartbeat() #6
  %i.of = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.og = icmp eq ptr %i.of, null
  br i1 %i.og, label %bb.iw, label %lean_alloc_ctor.exit1769

bb.iw:                                            ; preds = %lean_dec.exit1349
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1769:                         ; preds = %lean_dec.exit1349
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  store i32 1, ptr %i.of, align 4, !tbaa !14
  store i32 117571608, ptr %i.oh, align 4
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  store ptr %i.nw, ptr %i.oi, align 8, !tbaa !10
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store ptr %i.oe, ptr %i.oj, align 8, !tbaa !10
  %i.ok = load atomic i32, ptr @l_List_foldlM___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_getParentStructType_x3f_spec__1___closed__7_once seq_cst, align 4, !tbaa !18
  %i.ol = icmp eq i32 %i.ok, 1
  br i1 %i.ol, label %bb.ix, label %bb.iy, !prof !16

bb.ix:                                            ; preds = %lean_alloc_ctor.exit1769
  %i.om = load ptr, ptr @l_List_foldlM___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_getParentStructType_x3f_spec__1___closed__7, align 8, !tbaa !10
  br label %lean_obj_once.exit1771

bb.iy:                                            ; preds = %lean_alloc_ctor.exit1769
  %i.on = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_List_foldlM___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_getParentStructType_x3f_spec__1___closed__7, ptr noundef nonnull @l_List_foldlM___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_getParentStructType_x3f_spec__1___closed__7_once, ptr noundef nonnull @_init_l_List_foldlM___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_getParentStructType_x3f_spec__1___closed__7) #6
  br label %lean_obj_once.exit1771

lean_obj_once.exit1771:                           ; preds = %bb.ix, %bb.iy
  %.0.i1770 = phi ptr [ %i.om, %bb.ix ], [ %i.on, %bb.iy ]
  tail call void @lean_inc_heartbeat() #6
  %i.oo = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %bb.iz, label %lean_alloc_ctor.exit1772

bb.iz:                                            ; preds = %lean_obj_once.exit1771
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1772:                         ; preds = %lean_obj_once.exit1771
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  store i32 1, ptr %i.oo, align 4, !tbaa !14
  store i32 117571608, ptr %i.oq, align 4
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store ptr %i.of, ptr %i.or, align 8, !tbaa !10
  %i.os = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  store ptr %.0.i1770, ptr %i.os, align 8, !tbaa !10
  %i.ot = tail call ptr @l_Lean_throwError___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_getFieldOrigin_spec__1___redArg(ptr noundef nonnull %i.oo, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14) ; 6 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !10 ; 5 uses
  %.val1606 = load i32, ptr %i.ot, align 8, !tbaa !14
  %i.ow = icmp eq i32 %.val1606, 1
  br i1 %i.ow, label %lean_dec.exit1329.thread2119, label %bb.ja

bb.ja:                                            ; preds = %lean_alloc_ctor.exit1772
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = and i64 %i.ox, 1
  %.not.i1235 = icmp eq i64 %i.oy, 0
  br i1 %.not.i1235, label %bb.jb, label %lean_inc.exit1236

bb.jb:                                            ; preds = %bb.ja
  %.val.i.i1773 = load i32, ptr %i.ov, align 4, !tbaa !14 ; 3 uses
  %i.oz = icmp sgt i32 %.val.i.i1773, 0
  br i1 %i.oz, label %bb.jc, label %bb.jd, !prof !16

bb.jc:                                            ; preds = %bb.jb
  %i.pa = add nuw i32 %.val.i.i1773, 1
  store i32 %i.pa, ptr %i.ov, align 4, !tbaa !14
  br label %lean_inc.exit1236

bb.jd:                                            ; preds = %bb.jb
  %.not.i.i1774 = icmp eq i32 %.val.i.i1773, 0
  br i1 %.not.i.i1774, label %lean_inc.exit1236, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.pb = atomicrmw sub ptr %i.ov, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1236

lean_inc.exit1236:                                ; preds = %bb.ja, %bb.jc, %bb.jd, %bb.je
  %i.pc = load i32, ptr %i.ot, align 8, !tbaa !14 ; 3 uses
  %i.pd = icmp sgt i32 %i.pc, 1
  br i1 %i.pd, label %bb.jf, label %bb.jg, !prof !16

bb.jf:                                            ; preds = %lean_inc.exit1236
  %i.pe = add nsw i32 %i.pc, -1
  store i32 %i.pe, ptr %i.ot, align 8, !tbaa !14
  br label %bb.ji

bb.jg:                                            ; preds = %lean_inc.exit1236
  %.not.i1399 = icmp eq i32 %i.pc, 0
  br i1 %.not.i1399, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ot) #6
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jf, %bb.jg, %bb.jh
  %i.pf = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  store ptr %i.ov, ptr %i.pg, align 8, !tbaa !10
  br label %lean_dec.exit1329.thread2119

bb.jj:                                            ; preds = %lean_dec_ref_known.exit1753
  br i1 %.not.i1239, label %bb.jk, label %lean_dec.exit1345

bb.jk:                                            ; preds = %bb.jj
  %i.ph = load i32, ptr %i.ld, align 4, !tbaa !14 ; 3 uses
  %i.pi = icmp sgt i32 %i.ph, 1
  br i1 %i.pi, label %bb.jl, label %bb.jm, !prof !16

bb.jl:                                            ; preds = %bb.jk
  %i.pj = add nsw i32 %i.ph, -1
  store i32 %i.pj, ptr %i.ld, align 4, !tbaa !14
  br label %lean_dec.exit1345

bb.jm:                                            ; preds = %bb.jk
  %.not.i1401 = icmp eq i32 %i.ph, 0
  br i1 %.not.i1401, label %lean_dec.exit1345, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ld) #6
  br label %lean_dec.exit1345

lean_dec.exit1345:                                ; preds = %bb.jn, %bb.jm, %bb.jl, %bb.jj
  %i.pk = ptrtoint ptr %.01155 to i64
  %i.pl = and i64 %i.pk, 1
  %.not.i1776 = icmp eq i64 %i.pl, 0
  br i1 %.not.i1776, label %bb.jo, label %lean_dec.exit1347

bb.jo:                                            ; preds = %lean_dec.exit1345
  tail call void @lean_free_object(ptr noundef nonnull %.01155) #6
  br label %lean_dec.exit1347

bb.jp:                                            ; preds = %lean_obj_tag.exit1739
  %i.pm = ptrtoint ptr %.01153 to i64
  %i.pn = and i64 %i.pm, 1
  %.not.i1778 = icmp eq i64 %i.pn, 0
  br i1 %.not.i1778, label %bb.jq, label %lean_del_object.exit1779

bb.jq:                                            ; preds = %bb.jp
  tail call void @lean_free_object(ptr noundef nonnull %.01153) #6
  br label %lean_del_object.exit1779

lean_del_object.exit1779:                         ; preds = %bb.jp, %bb.jq
  %i.po = ptrtoint ptr %.01155 to i64
  %i.pp = and i64 %i.po, 1
  %.not.i1780 = icmp eq i64 %i.pp, 0
  br i1 %.not.i1780, label %bb.jr, label %lean_del_object.exit1781

bb.jr:                                            ; preds = %lean_del_object.exit1779
  tail call void @lean_free_object(ptr noundef nonnull %.01155) #6
  br label %lean_del_object.exit1781

lean_del_object.exit1781:                         ; preds = %bb.jr, %lean_del_object.exit1779
  %i.pq = load i32, ptr %i.gz, align 8, !tbaa !14 ; 3 uses
  %i.pr = icmp sgt i32 %i.pq, 1
  br i1 %i.pr, label %bb.js, label %bb.jt, !prof !16

bb.js:                                            ; preds = %lean_del_object.exit1781
  %i.ps = add nsw i32 %i.pq, -1
  store i32 %i.ps, ptr %i.gz, align 8, !tbaa !14
  br label %lean_dec.exit1343

bb.jt:                                            ; preds = %lean_del_object.exit1781
  %.not.i1403 = icmp eq i32 %i.pq, 0
  br i1 %.not.i1403, label %lean_dec.exit1343, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gz) #6
  br label %lean_dec.exit1343

lean_dec.exit1343:                                ; preds = %bb.ju, %bb.jt, %bb.js
  %i.pt = load i32, ptr %i.du, align 4, !tbaa !14 ; 3 uses
  %i.pu = icmp sgt i32 %i.pt, 1
  br i1 %i.pu, label %bb.jv, label %bb.jw, !prof !16

bb.jv:                                            ; preds = %lean_dec.exit1343
  %i.pv = add nsw i32 %i.pt, -1
  store i32 %i.pv, ptr %i.du, align 4, !tbaa !14
  br label %lean_dec_ref.exit1568

bb.jw:                                            ; preds = %lean_dec.exit1343
  %.not.i1567 = icmp eq i32 %i.pt, 0
  br i1 %.not.i1567, label %lean_dec_ref.exit1568, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.du) #6
end_hunk_5
begin_hunk_6_@l_Lean_Expr_withAppAux___at___00Lean_Expr_withAppAux___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__17_spec__29:bb.a

bb.ade:                                           ; preds = %lean_obj_tag.exit2014
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqt, i64 8 ; 2 uses
  %i.arc = load ptr, ptr %i.arb, align 8, !tbaa !10 ; 5 uses
  %i.ard = ptrtoint ptr %i.arc to i64
  %i.are = and i64 %i.ard, 1
  %.not.i1167 = icmp eq i64 %i.are, 0
  br i1 %.not.i1167, label %bb.adf, label %lean_inc.exit1168

bb.adf:                                           ; preds = %bb.ade
  %.val.i.i2015 = load i32, ptr %i.arc, align 4, !tbaa !14 ; 3 uses
  %i.arf = icmp sgt i32 %.val.i.i2015, 0
  br i1 %i.arf, label %bb.adg, label %bb.adh, !prof !16

bb.adg:                                           ; preds = %bb.adf
  %i.arg = add nuw i32 %.val.i.i2015, 1
  store i32 %i.arg, ptr %i.arc, align 4, !tbaa !14
  br label %lean_inc.exit1168

bb.adh:                                           ; preds = %bb.adf
  %.not.i.i2016 = icmp eq i32 %.val.i.i2015, 0
  br i1 %.not.i.i2016, label %lean_inc.exit1168, label %bb.adi

bb.adi:                                           ; preds = %bb.adh
  %i.arh = atomicrmw sub ptr %i.arc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1168

lean_inc.exit1168:                                ; preds = %bb.adi, %bb.adh, %bb.adg, %bb.ade
  %.val.i2018 = load i32, ptr %i.aqt, align 8, !tbaa !14 ; 4 uses
  %i.ari = icmp eq i32 %.val.i2018, 1
  br i1 %i.ari, label %.preheader.i2020, label %bb.adn

.preheader.i2020:                                 ; preds = %lean_inc.exit1168
  %i.arj = load ptr, ptr %i.arb, align 8, !tbaa !10 ; 4 uses
  %i.ark = ptrtoint ptr %i.arj to i64
  %i.arl = and i64 %i.ark, 1
  %.not.i.i2022 = icmp eq i64 %i.arl, 0
  br i1 %.not.i.i2022, label %bb.adj, label %lean_dec.exit.i2023

bb.adj:                                           ; preds = %.preheader.i2020
  %i.arm = load i32, ptr %i.arj, align 4, !tbaa !14 ; 3 uses
  %i.arn = icmp sgt i32 %i.arm, 1
  br i1 %i.arn, label %bb.adk, label %bb.adl, !prof !16

bb.adk:                                           ; preds = %bb.adj
  %i.aro = add nsw i32 %i.arm, -1
  store i32 %i.aro, ptr %i.arj, align 4, !tbaa !14
  br label %lean_dec.exit.i2023

bb.adl:                                           ; preds = %bb.adj
  %.not.i7.i2027 = icmp eq i32 %i.arm, 0
  br i1 %.not.i7.i2027, label %lean_dec.exit.i2023, label %bb.adm

bb.adm:                                           ; preds = %bb.adl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.arj) #6
  br label %lean_dec.exit.i2023

lean_dec.exit.i2023:                              ; preds = %bb.adm, %bb.adl, %bb.adk, %.preheader.i2020
  tail call void @lean_free_object(ptr noundef nonnull %i.aqt) #6
  br label %lean_dec_ref_known.exit2028

bb.adn:                                           ; preds = %lean_inc.exit1168
  %i.arp = icmp sgt i32 %.val.i2018, 1
  br i1 %i.arp, label %bb.ado, label %bb.adp, !prof !16

bb.ado:                                           ; preds = %bb.adn
  %i.arq = add nsw i32 %.val.i2018, -1
  store i32 %i.arq, ptr %i.aqt, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit2028

bb.adp:                                           ; preds = %bb.adn
  %.not.i8.i2019 = icmp eq i32 %.val.i2018, 0
  br i1 %.not.i8.i2019, label %lean_dec_ref_known.exit2028, label %bb.adq

bb.adq:                                           ; preds = %bb.adp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqt) #6
  br label %lean_dec_ref_known.exit2028

lean_dec_ref_known.exit2028:                      ; preds = %lean_dec.exit.i2023, %bb.ado, %bb.adp, %bb.adq
  %.val.i.i2029 = load i32, ptr %1, align 4, !tbaa !14 ; 3 uses
  %i.arr = icmp sgt i32 %.val.i.i2029, 0
  br i1 %i.arr, label %bb.adr, label %bb.ads, !prof !16

bb.adr:                                           ; preds = %lean_dec_ref_known.exit2028
  %i.ars = add nuw i32 %.val.i.i2029, 1
  store i32 %i.ars, ptr %1, align 4, !tbaa !14
  br label %lean_inc_ref.exit2031

bb.ads:                                           ; preds = %lean_dec_ref_known.exit2028
  %.not.i.i2030 = icmp eq i32 %.val.i.i2029, 0
  br i1 %.not.i.i2030, label %lean_inc_ref.exit2031, label %bb.adt

bb.adt:                                           ; preds = %bb.ads
  %i.art = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2031

lean_inc_ref.exit2031:                            ; preds = %bb.adr, %bb.ads, %bb.adt
  %i.aru = tail call ptr @l_Lean_Meta_isExprDefEq(ptr noundef nonnull %1, ptr noundef %i.arc, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14) #6 ; 14 uses
  %i.arv = ptrtoint ptr %i.aru to i64             ; 2 uses
  %i.arw = and i64 %i.arv, 1
  %.not.i2032 = icmp eq i64 %i.arw, 0             ; 3 uses
  br i1 %.not.i2032, label %bb.adv, label %bb.adu

bb.adu:                                           ; preds = %lean_inc_ref.exit2031
  %i.arx = lshr i64 %i.arv, 1
  %i.ary = trunc i64 %i.arx to i32
  br label %lean_obj_tag.exit2035

bb.adv:                                           ; preds = %lean_inc_ref.exit2031
  %i.arz = getelementptr i8, ptr %i.aru, i64 4
  %.val.i2034 = load i32, ptr %i.arz, align 4
  %i.asa = lshr i32 %.val.i2034, 24
  br label %lean_obj_tag.exit2035

lean_obj_tag.exit2035:                            ; preds = %bb.adu, %bb.adv
  %.0.i2033 = phi i32 [ %i.ary, %bb.adu ], [ %i.asa, %bb.adv ]
  %i.asb = icmp eq i32 %.0.i2033, 0
  br i1 %i.asb, label %bb.adw, label %bb.aim

bb.adw:                                           ; preds = %lean_obj_tag.exit2035
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aru, i64 8
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !10 ; 25 uses
  %.val1590 = load i32, ptr %i.aru, align 8, !tbaa !14
  %i.ase = icmp eq i32 %.val1590, 1               ; 2 uses
  %.pre = ptrtoint ptr %i.asd to i64              ; 9 uses
  br i1 %i.ase, label %lean_dec.exit1281, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.asf = and i64 %.pre, 1
  %.not.i1165 = icmp eq i64 %i.asf, 0
  br i1 %.not.i1165, label %bb.ady, label %lean_inc.exit1166

bb.ady:                                           ; preds = %bb.adx
  %.val.i.i2036 = load i32, ptr %i.asd, align 4, !tbaa !14 ; 3 uses
  %i.asg = icmp sgt i32 %.val.i.i2036, 0
  br i1 %i.asg, label %bb.adz, label %bb.aea, !prof !16

bb.adz:                                           ; preds = %bb.ady
  %i.ash = add nuw i32 %.val.i.i2036, 1
  store i32 %i.ash, ptr %i.asd, align 4, !tbaa !14
  br label %lean_inc.exit1166

bb.aea:                                           ; preds = %bb.ady
  %.not.i.i2037 = icmp eq i32 %.val.i.i2036, 0
  br i1 %.not.i.i2037, label %lean_inc.exit1166, label %bb.aeb

bb.aeb:                                           ; preds = %bb.aea
  %i.asi = atomicrmw sub ptr %i.asd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1166

lean_inc.exit1166:                                ; preds = %bb.aeb, %bb.aea, %bb.adz, %bb.adx
  br i1 %.not.i2032, label %bb.aec, label %lean_dec.exit1281

bb.aec:                                           ; preds = %lean_inc.exit1166
  %i.asj = load i32, ptr %i.aru, align 8, !tbaa !14 ; 3 uses
  %i.ask = icmp sgt i32 %i.asj, 1
  br i1 %i.ask, label %bb.aed, label %bb.aee, !prof !16

bb.aed:                                           ; preds = %bb.aec
  %i.asl = add nsw i32 %i.asj, -1
  store i32 %i.asl, ptr %i.aru, align 8, !tbaa !14
  br label %lean_dec.exit1281

bb.aee:                                           ; preds = %bb.aec
  %.not.i1465 = icmp eq i32 %i.asj, 0
  br i1 %.not.i1465, label %lean_dec.exit1281, label %bb.aef

bb.aef:                                           ; preds = %bb.aee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aru) #6
  br label %lean_dec.exit1281

lean_dec.exit1281:                                ; preds = %bb.adw, %lean_inc.exit1166, %bb.aed, %bb.aee, %bb.aef
  %.0932 = phi ptr [ inttoptr (i64 1 to ptr), %bb.aef ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1166 ], [ inttoptr (i64 1 to ptr), %bb.aed ], [ inttoptr (i64 1 to ptr), %bb.aee ], [ %i.aru, %bb.adw ] ; 4 uses
  %i.asm = and i64 %.pre, 510
  %i.asn = icmp eq i64 %i.asm, 0
  br i1 %i.asn, label %bb.aeg, label %bb.aia

bb.aeg:                                           ; preds = %lean_dec.exit1281
  %i.aso = ptrtoint ptr %.0932 to i64
  %i.asp = and i64 %i.aso, 1
  %.not.i2039 = icmp eq i64 %i.asp, 0
  br i1 %.not.i2039, label %bb.aeh, label %lean_del_object.exit2040

bb.aeh:                                           ; preds = %bb.aeg
  tail call void @lean_free_object(ptr noundef nonnull %.0932) #6
  br label %lean_del_object.exit2040

lean_del_object.exit2040:                         ; preds = %bb.aeg, %bb.aeh
  %i.asq = load ptr, ptr %i.abe, align 8, !tbaa !10 ; 2 uses
  %i.asr = load ptr, ptr @l_Lean_Meta_backward_inferInstanceAs_wrap_reuseSubInstances, align 8, !tbaa !10
  %i.ass = tail call zeroext i8 @l_Lean_Option_get___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__0(ptr noundef %i.asq, ptr noundef %i.asr)
  %i.ast = icmp eq i8 %i.ass, 0
  br i1 %i.ast, label %bb.aei, label %bb.aen

bb.aei:                                           ; preds = %lean_del_object.exit2040
  %i.asu = and i64 %.pre, 1
  %.not.i1278 = icmp eq i64 %i.asu, 0
  br i1 %.not.i1278, label %bb.aej, label %lean_dec.exit1279

bb.aej:                                           ; preds = %bb.aei
  %i.asv = load i32, ptr %i.asd, align 512, !tbaa !14 ; 3 uses
  %i.asw = icmp sgt i32 %i.asv, 1
  br i1 %i.asw, label %bb.aek, label %bb.ael, !prof !16

bb.aek:                                           ; preds = %bb.aej
  %i.asx = add nsw i32 %i.asv, -1
  store i32 %i.asx, ptr %i.asd, align 512, !tbaa !14
  br label %lean_dec.exit1279

bb.ael:                                           ; preds = %bb.aej
  %.not.i1467 = icmp eq i32 %i.asv, 0
  br i1 %.not.i1467, label %lean_dec.exit1279, label %bb.aem

bb.aem:                                           ; preds = %bb.ael
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.asd) #6
  br label %lean_dec.exit1279

bb.aen:                                           ; preds = %lean_del_object.exit2040
  %.val.i.i2041 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.asy = icmp sgt i32 %.val.i.i2041, 0
  br i1 %i.asy, label %bb.aeo, label %bb.aep, !prof !16

bb.aeo:                                           ; preds = %bb.aen
  %i.asz = add nuw i32 %.val.i.i2041, 1
  store i32 %i.asz, ptr %0, align 4, !tbaa !14
  br label %lean_inc_ref.exit2043

bb.aep:                                           ; preds = %bb.aen
  %.not.i.i2042 = icmp eq i32 %.val.i.i2041, 0
  br i1 %.not.i.i2042, label %lean_inc_ref.exit2043, label %bb.aeq

bb.aeq:                                           ; preds = %bb.aep
  %i.ata = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2043

lean_inc_ref.exit2043:                            ; preds = %bb.aeo, %bb.aep, %bb.aeq
  %i.atb = tail call ptr @l___private_Lean_Meta_WrapInstance_0__Lean_Meta_etaStructExpand_x3f(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14) ; 10 uses
  %i.atc = ptrtoint ptr %i.atb to i64             ; 2 uses
  %i.atd = and i64 %i.atc, 1
  %.not.i2044 = icmp eq i64 %i.atd, 0
  br i1 %.not.i2044, label %bb.aes, label %bb.aer

bb.aer:                                           ; preds = %lean_inc_ref.exit2043
  %i.ate = lshr i64 %i.atc, 1
  %i.atf = trunc i64 %i.ate to i32
  br label %lean_obj_tag.exit2047

bb.aes:                                           ; preds = %lean_inc_ref.exit2043
  %i.atg = getelementptr i8, ptr %i.atb, i64 4
  %.val.i2046 = load i32, ptr %i.atg, align 4
  %i.ath = lshr i32 %.val.i2046, 24
  br label %lean_obj_tag.exit2047

lean_obj_tag.exit2047:                            ; preds = %bb.aer, %bb.aes
  %.0.i2045 = phi i32 [ %i.atf, %bb.aer ], [ %i.ath, %bb.aes ]
  %i.ati = icmp eq i32 %.0.i2045, 0
  br i1 %i.ati, label %bb.aet, label %bb.ahp

bb.aet:                                           ; preds = %lean_obj_tag.exit2047
  %i.atj = getelementptr inbounds nuw i8, ptr %i.atb, i64 8 ; 2 uses
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !10 ; 13 uses
  %i.atl = ptrtoint ptr %i.atk to i64             ; 2 uses
  %i.atm = and i64 %i.atl, 1
  %.not.i1163 = icmp eq i64 %i.atm, 0             ; 2 uses
  br i1 %.not.i1163, label %bb.aeu, label %lean_inc.exit1164

bb.aeu:                                           ; preds = %bb.aet
  %.val.i.i2048 = load i32, ptr %i.atk, align 4, !tbaa !14 ; 3 uses
  %i.atn = icmp sgt i32 %.val.i.i2048, 0
  br i1 %i.atn, label %bb.aev, label %bb.aew, !prof !16

bb.aev:                                           ; preds = %bb.aeu
  %i.ato = add nuw i32 %.val.i.i2048, 1
  store i32 %i.ato, ptr %i.atk, align 4, !tbaa !14
  br label %lean_inc.exit1164

bb.aew:                                           ; preds = %bb.aeu
  %.not.i.i2049 = icmp eq i32 %.val.i.i2048, 0
  br i1 %.not.i.i2049, label %lean_inc.exit1164, label %bb.aex

bb.aex:                                           ; preds = %bb.aew
  %i.atp = atomicrmw sub ptr %i.atk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1164

lean_inc.exit1164:                                ; preds = %bb.aex, %bb.aew, %bb.aev, %bb.aet
  %.val.i2051 = load i32, ptr %i.atb, align 8, !tbaa !14 ; 4 uses
  %i.atq = icmp eq i32 %.val.i2051, 1
  br i1 %i.atq, label %.preheader.i2053, label %bb.afc

.preheader.i2053:                                 ; preds = %lean_inc.exit1164
  %i.atr = load ptr, ptr %i.atj, align 8, !tbaa !10 ; 4 uses
  %i.ats = ptrtoint ptr %i.atr to i64
  %i.att = and i64 %i.ats, 1
  %.not.i.i2055 = icmp eq i64 %i.att, 0
  br i1 %.not.i.i2055, label %bb.aey, label %lean_dec.exit.i2056

bb.aey:                                           ; preds = %.preheader.i2053
  %i.atu = load i32, ptr %i.atr, align 4, !tbaa !14 ; 3 uses
  %i.atv = icmp sgt i32 %i.atu, 1
  br i1 %i.atv, label %bb.aez, label %bb.afa, !prof !16

bb.aez:                                           ; preds = %bb.aey
  %i.atw = add nsw i32 %i.atu, -1
  store i32 %i.atw, ptr %i.atr, align 4, !tbaa !14
  br label %lean_dec.exit.i2056

bb.afa:                                           ; preds = %bb.aey
  %.not.i7.i2060 = icmp eq i32 %i.atu, 0
  br i1 %.not.i7.i2060, label %lean_dec.exit.i2056, label %bb.afb

bb.afb:                                           ; preds = %bb.afa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.atr) #6
  br label %lean_dec.exit.i2056

lean_dec.exit.i2056:                              ; preds = %bb.afb, %bb.afa, %bb.aez, %.preheader.i2053
  tail call void @lean_free_object(ptr noundef nonnull %i.atb) #6
  br label %lean_dec_ref_known.exit2061

bb.afc:                                           ; preds = %lean_inc.exit1164
  %i.atx = icmp sgt i32 %.val.i2051, 1
  br i1 %i.atx, label %bb.afd, label %bb.afe, !prof !16

bb.afd:                                           ; preds = %bb.afc
  %i.aty = add nsw i32 %.val.i2051, -1
  store i32 %i.aty, ptr %i.atb, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit2061

bb.afe:                                           ; preds = %bb.afc
  %.not.i8.i2052 = icmp eq i32 %.val.i2051, 0
  br i1 %.not.i8.i2052, label %lean_dec_ref_known.exit2061, label %bb.aff

bb.aff:                                           ; preds = %bb.afe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.atb) #6
  br label %lean_dec_ref_known.exit2061

lean_dec_ref_known.exit2061:                      ; preds = %lean_dec.exit.i2056, %bb.afd, %bb.afe, %bb.aff
  br i1 %.not.i1163, label %lean_obj_tag.exit2065, label %lean_obj_tag.exit2065.thread

lean_obj_tag.exit2065:                            ; preds = %lean_dec_ref_known.exit2061
  %i.atz = getelementptr i8, ptr %i.atk, i64 4
  %.val.i2064 = load i32, ptr %i.atz, align 4
  %.mask2440 = and i32 %.val.i2064, -16777216
  %i.aua = icmp eq i32 %.mask2440, 16777216
  br i1 %i.aua, label %bb.afg, label %bb.ahh

lean_obj_tag.exit2065.thread:                     ; preds = %lean_dec_ref_known.exit2061
  %i.aub = and i64 %i.atl, 8589934590
  %i.auc = icmp eq i64 %i.aub, 2
  br i1 %i.auc, label %bb.afg, label %lean_dec.exit1269

bb.afg:                                           ; preds = %lean_obj_tag.exit2065.thread, %lean_obj_tag.exit2065
  %i.aud = getelementptr inbounds nuw i8, ptr %i.atk, i64 8 ; 2 uses
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !10 ; 5 uses
  %i.auf = ptrtoint ptr %i.aue to i64
  %i.aug = and i64 %i.auf, 1
  %.not.i1161 = icmp eq i64 %i.aug, 0
  br i1 %.not.i1161, label %bb.afh, label %lean_inc.exit1162

bb.afh:                                           ; preds = %bb.afg
  %.val.i.i2066 = load i32, ptr %i.aue, align 4, !tbaa !14 ; 3 uses
  %i.auh = icmp sgt i32 %.val.i.i2066, 0
  br i1 %i.auh, label %bb.afi, label %bb.afj, !prof !16

bb.afi:                                           ; preds = %bb.afh
  %i.aui = add nuw i32 %.val.i.i2066, 1
  store i32 %i.aui, ptr %i.aue, align 4, !tbaa !14
  br label %lean_inc.exit1162

bb.afj:                                           ; preds = %bb.afh
  %.not.i.i2067 = icmp eq i32 %.val.i.i2066, 0
  br i1 %.not.i.i2067, label %lean_inc.exit1162, label %bb.afk

bb.afk:                                           ; preds = %bb.afj
  %i.auj = atomicrmw sub ptr %i.aue, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1162

lean_inc.exit1162:                                ; preds = %bb.afk, %bb.afj, %bb.afi, %bb.afg
  %.val.i2069 = load i32, ptr %i.atk, align 8, !tbaa !14 ; 4 uses
  %i.auk = icmp eq i32 %.val.i2069, 1
  br i1 %i.auk, label %.preheader.i2071, label %bb.afp

.preheader.i2071:                                 ; preds = %lean_inc.exit1162
  %i.aul = load ptr, ptr %i.aud, align 8, !tbaa !10 ; 4 uses
  %i.aum = ptrtoint ptr %i.aul to i64
  %i.aun = and i64 %i.aum, 1
  %.not.i.i2073 = icmp eq i64 %i.aun, 0
  br i1 %.not.i.i2073, label %bb.afl, label %lean_dec.exit.i2074

bb.afl:                                           ; preds = %.preheader.i2071
  %i.auo = load i32, ptr %i.aul, align 4, !tbaa !14 ; 3 uses
  %i.aup = icmp sgt i32 %i.auo, 1
  br i1 %i.aup, label %bb.afm, label %bb.afn, !prof !16

bb.afm:                                           ; preds = %bb.afl
  %i.auq = add nsw i32 %i.auo, -1
  store i32 %i.auq, ptr %i.aul, align 4, !tbaa !14
  br label %lean_dec.exit.i2074

bb.afn:                                           ; preds = %bb.afl
  %.not.i7.i2078 = icmp eq i32 %i.auo, 0
  br i1 %.not.i7.i2078, label %lean_dec.exit.i2074, label %bb.afo

bb.afo:                                           ; preds = %bb.afn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aul) #6
  br label %lean_dec.exit.i2074

lean_dec.exit.i2074:                              ; preds = %bb.afo, %bb.afn, %bb.afm, %.preheader.i2071
  tail call void @lean_free_object(ptr noundef nonnull %i.atk) #6
  br label %lean_dec_ref_known.exit2079

bb.afp:                                           ; preds = %lean_inc.exit1162
  %i.aur = icmp sgt i32 %.val.i2069, 1
  br i1 %i.aur, label %bb.afq, label %bb.afr, !prof !16

bb.afq:                                           ; preds = %bb.afp
  %i.aus = add nsw i32 %.val.i2069, -1
  store i32 %i.aus, ptr %i.atk, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit2079

bb.afr:                                           ; preds = %bb.afp
  %.not.i8.i2070 = icmp eq i32 %.val.i2069, 0
  br i1 %.not.i8.i2070, label %lean_dec_ref_known.exit2079, label %bb.afs

bb.afs:                                           ; preds = %bb.afr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.atk) #6
  br label %lean_dec_ref_known.exit2079

lean_dec_ref_known.exit2079:                      ; preds = %lean_dec.exit.i2074, %bb.afq, %bb.afr, %bb.afs
  %.val.i.i2080 = load i32, ptr %1, align 4, !tbaa !14 ; 3 uses
  %i.aut = icmp sgt i32 %.val.i.i2080, 0
  br i1 %i.aut, label %bb.aft, label %bb.afu, !prof !16

bb.aft:                                           ; preds = %lean_dec_ref_known.exit2079
  %i.auu = add nuw i32 %.val.i.i2080, 1
  store i32 %i.auu, ptr %1, align 4, !tbaa !14
  br label %lean_inc_ref.exit2082

bb.afu:                                           ; preds = %lean_dec_ref_known.exit2079
  %.not.i.i2081 = icmp eq i32 %.val.i.i2080, 0
  br i1 %.not.i.i2081, label %lean_inc_ref.exit2082, label %bb.afv

bb.afv:                                           ; preds = %bb.afu
  %i.auv = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2082

lean_inc_ref.exit2082:                            ; preds = %bb.aft, %bb.afu, %bb.afv
  %i.auw = tail call ptr @l___private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go(i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %i.aue, ptr noundef nonnull %1, i8 noundef zeroext %2, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14) ; 11 uses
  %i.aux = ptrtoint ptr %i.auw to i64             ; 2 uses
  %i.auy = and i64 %i.aux, 1
  %.not.i2083 = icmp eq i64 %i.auy, 0
  br i1 %.not.i2083, label %bb.afx, label %bb.afw

bb.afw:                                           ; preds = %lean_inc_ref.exit2082
  %i.auz = lshr i64 %i.aux, 1
  %i.ava = trunc i64 %i.auz to i32
  br label %lean_obj_tag.exit2086

bb.afx:                                           ; preds = %lean_inc_ref.exit2082
  %i.avb = getelementptr i8, ptr %i.auw, i64 4
  %.val.i2085 = load i32, ptr %i.avb, align 4
  %i.avc = lshr i32 %.val.i2085, 24
  br label %lean_obj_tag.exit2086

lean_obj_tag.exit2086:                            ; preds = %bb.afw, %bb.afx
  %.0.i2084 = phi i32 [ %i.ava, %bb.afw ], [ %i.avc, %bb.afx ]
  %i.avd = icmp eq i32 %.0.i2084, 0
  br i1 %i.avd, label %bb.afy, label %bb.agw

bb.afy:                                           ; preds = %lean_obj_tag.exit2086
  %i.ave = getelementptr inbounds nuw i8, ptr %i.auw, i64 8
  %i.avf = load ptr, ptr %i.ave, align 8, !tbaa !10 ; 9 uses
  %i.avg = ptrtoint ptr %i.avf to i64             ; 2 uses
  %i.avh = and i64 %i.avg, 1
  %.not.i1159 = icmp eq i64 %i.avh, 0
  br i1 %.not.i1159, label %bb.afz, label %lean_obj_tag.exit2093.thread

bb.afz:                                           ; preds = %bb.afy
  %.val.i.i2087 = load i32, ptr %i.avf, align 4, !tbaa !14 ; 3 uses
  %i.avi = icmp sgt i32 %.val.i.i2087, 0
  br i1 %i.avi, label %bb.aga, label %bb.agb, !prof !16

bb.aga:                                           ; preds = %bb.afz
  %i.avj = add nuw i32 %.val.i.i2087, 1
  store i32 %i.avj, ptr %i.avf, align 4, !tbaa !14
  br label %lean_obj_tag.exit2093

bb.agb:                                           ; preds = %bb.afz
  %.not.i.i2088 = icmp eq i32 %.val.i.i2087, 0
  br i1 %.not.i.i2088, label %lean_obj_tag.exit2093, label %bb.agc

bb.agc:                                           ; preds = %bb.agb
  %i.avk = atomicrmw sub ptr %i.avf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_obj_tag.exit2093

lean_obj_tag.exit2093:                            ; preds = %bb.aga, %bb.agb, %bb.agc
  %i.avl = getelementptr i8, ptr %i.avf, i64 4
  %.val.i2092 = load i32, ptr %i.avl, align 4
  %.mask2441 = and i32 %.val.i2092, -16777216
  %i.avm = icmp eq i32 %.mask2441, 16777216
  br i1 %i.avm, label %bb.agd, label %bb.ago

lean_obj_tag.exit2093.thread:                     ; preds = %bb.afy
  %i.avn = and i64 %i.avg, 8589934590
  %i.avo = icmp eq i64 %i.avn, 2
  br i1 %i.avo, label %bb.agd, label %.thread2436

.thread2436:                                      ; preds = %lean_obj_tag.exit2093.thread
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.auw, i32 noundef 1)
  br label %lean_dec.exit1275

bb.agd:                                           ; preds = %lean_obj_tag.exit2093.thread, %lean_obj_tag.exit2093
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.avf, i32 noundef 1)
  %i.avp = and i64 %.pre, 1
  %.not.i1276 = icmp eq i64 %i.avp, 0
  br i1 %.not.i1276, label %bb.age, label %lean_dec.exit1277

bb.age:                                           ; preds = %bb.agd
  %i.avq = load i32, ptr %i.asd, align 512, !tbaa !14 ; 3 uses
  %i.avr = icmp sgt i32 %i.avq, 1
  br i1 %i.avr, label %bb.agf, label %bb.agg, !prof !16

bb.agf:                                           ; preds = %bb.age
  %i.avs = add nsw i32 %i.avq, -1
  store i32 %i.avs, ptr %i.asd, align 512, !tbaa !14
  br label %lean_dec.exit1277

bb.agg:                                           ; preds = %bb.age
  %.not.i1469 = icmp eq i32 %i.avq, 0
  br i1 %.not.i1469, label %lean_dec.exit1277, label %bb.agh

bb.agh:                                           ; preds = %bb.agg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.asd) #6
  br label %lean_dec.exit1277

lean_dec.exit1277:                                ; preds = %bb.agh, %bb.agg, %bb.agf, %bb.agd
  %i.avt = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.avu = icmp sgt i32 %i.avt, 1
  br i1 %i.avu, label %bb.agi, label %bb.agj, !prof !16

bb.agi:                                           ; preds = %lean_dec.exit1277
  %i.avv = add nsw i32 %i.avt, -1
  store i32 %i.avv, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit1510

bb.agj:                                           ; preds = %lean_dec.exit1277
  %.not.i1509 = icmp eq i32 %i.avt, 0
  br i1 %.not.i1509, label %lean_dec_ref.exit1510, label %bb.agk

bb.agk:                                           ; preds = %bb.agj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit1510

lean_dec_ref.exit1510:                            ; preds = %bb.agi, %bb.agj, %bb.agk
  %i.avw = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.avx = icmp sgt i32 %i.avw, 1
  br i1 %i.avx, label %bb.agl, label %bb.agm, !prof !16

bb.agl:                                           ; preds = %lean_dec_ref.exit1510
  %i.avy = add nsw i32 %i.avw, -1
  store i32 %i.avy, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit1329.thread2119

bb.agm:                                           ; preds = %lean_dec_ref.exit1510
  %.not.i1507 = icmp eq i32 %i.avw, 0
  br i1 %.not.i1507, label %lean_dec.exit1329.thread2119, label %bb.agn

bb.agn:                                           ; preds = %bb.agm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit1329.thread2119

bb.ago:                                           ; preds = %lean_obj_tag.exit2093
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.auw, i32 noundef 1)
  %i.avz = load i32, ptr %i.avf, align 4, !tbaa !14 ; 3 uses
  %i.awa = icmp sgt i32 %i.avz, 1
  br i1 %i.awa, label %bb.agp, label %bb.agq, !prof !16

bb.agp:                                           ; preds = %bb.ago
  %i.awb = add nsw i32 %i.avz, -1
  store i32 %i.awb, ptr %i.avf, align 4, !tbaa !14
  br label %lean_dec.exit1275

bb.agq:                                           ; preds = %bb.ago
  %.not.i1471 = icmp eq i32 %i.avz, 0
  br i1 %.not.i1471, label %lean_dec.exit1275, label %bb.agr

bb.agr:                                           ; preds = %bb.agq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.avf) #6
  br label %lean_dec.exit1275

lean_dec.exit1275:                                ; preds = %.thread2436, %bb.agr, %bb.agq, %bb.agp
  %i.awc = and i64 %.pre, 1
  %.not.i1272 = icmp eq i64 %i.awc, 0
  br i1 %.not.i1272, label %bb.ags, label %lean_dec.exit1279

bb.ags:                                           ; preds = %lean_dec.exit1275
  %i.awd = load i32, ptr %i.asd, align 512, !tbaa !14 ; 3 uses
  %i.awe = icmp sgt i32 %i.awd, 1
  br i1 %i.awe, label %bb.agt, label %bb.agu, !prof !16

bb.agt:                                           ; preds = %bb.ags
  %i.awf = add nsw i32 %i.awd, -1
  store i32 %i.awf, ptr %i.asd, align 512, !tbaa !14
  br label %lean_dec.exit1279

bb.agu:                                           ; preds = %bb.ags
  %.not.i1473 = icmp eq i32 %i.awd, 0
  br i1 %.not.i1473, label %lean_dec.exit1279, label %bb.agv

bb.agv:                                           ; preds = %bb.agu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.asd) #6
  br label %lean_dec.exit1279

bb.agw:                                           ; preds = %lean_obj_tag.exit2086
  %i.awg = and i64 %.pre, 1
  %.not.i1270 = icmp eq i64 %i.awg, 0
  br i1 %.not.i1270, label %bb.agx, label %lean_dec.exit1271

bb.agx:                                           ; preds = %bb.agw
  %i.awh = load i32, ptr %i.asd, align 512, !tbaa !14 ; 3 uses
  %i.awi = icmp sgt i32 %i.awh, 1
  br i1 %i.awi, label %bb.agy, label %bb.agz, !prof !16

bb.agy:                                           ; preds = %bb.agx
  %i.awj = add nsw i32 %i.awh, -1
  store i32 %i.awj, ptr %i.asd, align 512, !tbaa !14
  br label %lean_dec.exit1271

bb.agz:                                           ; preds = %bb.agx
  %.not.i1475 = icmp eq i32 %i.awh, 0
  br i1 %.not.i1475, label %lean_dec.exit1271, label %bb.aha

bb.aha:                                           ; preds = %bb.agz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.asd) #6
  br label %lean_dec.exit1271

lean_dec.exit1271:                                ; preds = %bb.aha, %bb.agz, %bb.agy, %bb.agw
  %i.awk = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.awl = icmp sgt i32 %i.awk, 1
  br i1 %i.awl, label %bb.ahb, label %bb.ahc, !prof !16

bb.ahb:                                           ; preds = %lean_dec.exit1271
  %i.awm = add nsw i32 %i.awk, -1
  store i32 %i.awm, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit1506

bb.ahc:                                           ; preds = %lean_dec.exit1271
  %.not.i1505 = icmp eq i32 %i.awk, 0
  br i1 %.not.i1505, label %lean_dec_ref.exit1506, label %bb.ahd

bb.ahd:                                           ; preds = %bb.ahc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit1506

lean_dec_ref.exit1506:                            ; preds = %bb.ahb, %bb.ahc, %bb.ahd
  %i.awn = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.awo = icmp sgt i32 %i.awn, 1
  br i1 %i.awo, label %bb.ahe, label %bb.ahf, !prof !16

bb.ahe:                                           ; preds = %lean_dec_ref.exit1506
  %i.awp = add nsw i32 %i.awn, -1
  store i32 %i.awp, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit1329.thread2119

bb.ahf:                                           ; preds = %lean_dec_ref.exit1506
  %.not.i1503 = icmp eq i32 %i.awn, 0
  br i1 %.not.i1503, label %lean_dec.exit1329.thread2119, label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit1329.thread2119

bb.ahh:                                           ; preds = %lean_obj_tag.exit2065
  %i.awq = load i32, ptr %i.atk, align 4, !tbaa !14 ; 3 uses
  %i.awr = icmp sgt i32 %i.awq, 1
  br i1 %i.awr, label %bb.ahi, label %bb.ahj, !prof !16

bb.ahi:                                           ; preds = %bb.ahh
  %i.aws = add nsw i32 %i.awq, -1
  store i32 %i.aws, ptr %i.atk, align 4, !tbaa !14
  br label %lean_dec.exit1269

bb.ahj:                                           ; preds = %bb.ahh
  %.not.i1477 = icmp eq i32 %i.awq, 0
  br i1 %.not.i1477, label %lean_dec.exit1269, label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.atk) #6
  br label %lean_dec.exit1269

lean_dec.exit1269:                                ; preds = %lean_obj_tag.exit2065.thread, %bb.ahk, %bb.ahj, %bb.ahi
  %i.awt = and i64 %.pre, 1
  %.not.i1266 = icmp eq i64 %i.awt, 0
  br i1 %.not.i1266, label %bb.ahl, label %lean_dec.exit1279

bb.ahl:                                           ; preds = %lean_dec.exit1269
  %i.awu = load i32, ptr %i.asd, align 512, !tbaa !14 ; 3 uses
  %i.awv = icmp sgt i32 %i.awu, 1
  br i1 %i.awv, label %bb.ahm, label %bb.ahn, !prof !16

bb.ahm:                                           ; preds = %bb.ahl
  %i.aww = add nsw i32 %i.awu, -1
  store i32 %i.aww, ptr %i.asd, align 512, !tbaa !14
  br label %lean_dec.exit1279

bb.ahn:                                           ; preds = %bb.ahl
  %.not.i1479 = icmp eq i32 %i.awu, 0
  br i1 %.not.i1479, label %lean_dec.exit1279, label %bb.aho

bb.aho:                                           ; preds = %bb.ahn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.asd) #6
  br label %lean_dec.exit1279

bb.ahp:                                           ; preds = %lean_obj_tag.exit2047
  %i.awx = and i64 %.pre, 1
  %.not.i1264 = icmp eq i64 %i.awx, 0
  br i1 %.not.i1264, label %bb.ahq, label %lean_dec.exit1265

bb.ahq:                                           ; preds = %bb.ahp
  %i.awy = load i32, ptr %i.asd, align 512, !tbaa !14 ; 3 uses
  %i.awz = icmp sgt i32 %i.awy, 1
  br i1 %i.awz, label %bb.ahr, label %bb.ahs, !prof !16

bb.ahr:                                           ; preds = %bb.ahq
  %i.axa = add nsw i32 %i.awy, -1
  store i32 %i.axa, ptr %i.asd, align 512, !tbaa !14
  br label %lean_dec.exit1265

bb.ahs:                                           ; preds = %bb.ahq
  %.not.i1481 = icmp eq i32 %i.awy, 0
  br i1 %.not.i1481, label %lean_dec.exit1265, label %bb.aht

bb.aht:                                           ; preds = %bb.ahs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.asd) #6
  br label %lean_dec.exit1265

lean_dec.exit1265:                                ; preds = %bb.aht, %bb.ahs, %bb.ahr, %bb.ahp
  %i.axb = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.axc = icmp sgt i32 %i.axb, 1
  br i1 %i.axc, label %bb.ahu, label %bb.ahv, !prof !16

bb.ahu:                                           ; preds = %lean_dec.exit1265
  %i.axd = add nsw i32 %i.axb, -1
  store i32 %i.axd, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit1502

bb.ahv:                                           ; preds = %lean_dec.exit1265
  %.not.i1501 = icmp eq i32 %i.axb, 0
  br i1 %.not.i1501, label %lean_dec_ref.exit1502, label %bb.ahw

bb.ahw:                                           ; preds = %bb.ahv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit1502

lean_dec_ref.exit1502:                            ; preds = %bb.ahu, %bb.ahv, %bb.ahw
  %i.axe = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.axf = icmp sgt i32 %i.axe, 1
  br i1 %i.axf, label %bb.ahx, label %bb.ahy, !prof !16

bb.ahx:                                           ; preds = %lean_dec_ref.exit1502
  %i.axg = add nsw i32 %i.axe, -1
  store i32 %i.axg, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit1329.thread2119

bb.ahy:                                           ; preds = %lean_dec_ref.exit1502
  %.not.i1499 = icmp eq i32 %i.axe, 0
  br i1 %.not.i1499, label %lean_dec.exit1329.thread2119, label %bb.ahz

bb.ahz:                                           ; preds = %bb.ahy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit1329.thread2119

bb.aia:                                           ; preds = %lean_dec.exit1281
  %i.axh = and i64 %.pre, 1
  %.not.i1262 = icmp eq i64 %i.axh, 0
  br i1 %.not.i1262, label %bb.aib, label %lean_dec.exit1263

bb.aib:                                           ; preds = %bb.aia
  %i.axi = load i32, ptr %i.asd, align 4, !tbaa !14 ; 3 uses
  %i.axj = icmp sgt i32 %i.axi, 1
  br i1 %i.axj, label %bb.aic, label %bb.aid, !prof !16

bb.aic:                                           ; preds = %bb.aib
  %i.axk = add nsw i32 %i.axi, -1
  store i32 %i.axk, ptr %i.asd, align 4, !tbaa !14
  br label %lean_dec.exit1263

bb.aid:                                           ; preds = %bb.aib
  %.not.i1483 = icmp eq i32 %i.axi, 0
  br i1 %.not.i1483, label %lean_dec.exit1263, label %bb.aie

bb.aie:                                           ; preds = %bb.aid
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.asd) #6
  br label %lean_dec.exit1263

lean_dec.exit1263:                                ; preds = %bb.aie, %bb.aid, %bb.aic, %bb.aia
  %i.axl = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.axm = icmp sgt i32 %i.axl, 1
  br i1 %i.axm, label %bb.aif, label %bb.aig, !prof !16

bb.aif:                                           ; preds = %lean_dec.exit1263
  %i.axn = add nsw i32 %i.axl, -1
  store i32 %i.axn, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit1498

bb.aig:                                           ; preds = %lean_dec.exit1263
  %.not.i1497 = icmp eq i32 %i.axl, 0
  br i1 %.not.i1497, label %lean_dec_ref.exit1498, label %bb.aih

bb.aih:                                           ; preds = %bb.aig
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit1498

lean_dec_ref.exit1498:                            ; preds = %bb.aif, %bb.aig, %bb.aih
  tail call void @lean_inc_heartbeat() #6
  %i.axo = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 6 uses
  %i.axp = icmp eq ptr %i.axo, null
  br i1 %i.axp, label %bb.aii, label %lean_alloc_ctor.exit2094

bb.aii:                                           ; preds = %lean_dec_ref.exit1498
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit2094:                         ; preds = %lean_dec_ref.exit1498
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axo, i64 4
  store i32 1, ptr %i.axo, align 4, !tbaa !14
  store i32 16842768, ptr %i.axq, align 4
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axo, i64 8
  store ptr %0, ptr %i.axr, align 8, !tbaa !10
  br i1 %i.ase, label %bb.aij, label %bb.aik

bb.aij:                                           ; preds = %lean_alloc_ctor.exit2094
  %i.axs = getelementptr inbounds nuw i8, ptr %.0932, i64 8
  store ptr %i.axo, ptr %i.axs, align 8, !tbaa !10
  br label %lean_dec.exit1329.thread2119

bb.aik:                                           ; preds = %lean_alloc_ctor.exit2094
  tail call void @lean_inc_heartbeat() #6
  %i.axt = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.axu = icmp eq ptr %i.axt, null
  br i1 %i.axu, label %bb.ail, label %lean_alloc_ctor.exit2095

bb.ail:                                           ; preds = %bb.aik
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit2095:                         ; preds = %bb.aik
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axt, i64 4
  store i32 1, ptr %i.axt, align 4, !tbaa !14
  store i32 65552, ptr %i.axv, align 4
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axt, i64 8
  store ptr %i.axo, ptr %i.axw, align 8, !tbaa !10
  br label %lean_dec.exit1329.thread2119

bb.aim:                                           ; preds = %lean_obj_tag.exit2035
  %i.axx = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.axy = icmp sgt i32 %i.axx, 1
  br i1 %i.axy, label %bb.ain, label %bb.aio, !prof !16

bb.ain:                                           ; preds = %bb.aim
  %i.axz = add nsw i32 %i.axx, -1
  store i32 %i.axz, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit1496

bb.aio:                                           ; preds = %bb.aim
  %.not.i1495 = icmp eq i32 %i.axx, 0
  br i1 %.not.i1495, label %lean_dec_ref.exit1496, label %bb.aip

bb.aip:                                           ; preds = %bb.aio
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit1496

lean_dec_ref.exit1496:                            ; preds = %bb.ain, %bb.aio, %bb.aip
  %i.aya = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.ayb = icmp sgt i32 %i.aya, 1
  br i1 %i.ayb, label %bb.aiq, label %bb.air, !prof !16

bb.aiq:                                           ; preds = %lean_dec_ref.exit1496
  %i.ayc = add nsw i32 %i.aya, -1
  store i32 %i.ayc, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit1494

bb.air:                                           ; preds = %lean_dec_ref.exit1496
  %.not.i1493 = icmp eq i32 %i.aya, 0
  br i1 %.not.i1493, label %lean_dec_ref.exit1494, label %bb.ais

bb.ais:                                           ; preds = %bb.air
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit1494

lean_dec_ref.exit1494:                            ; preds = %bb.aiq, %bb.air, %bb.ais
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.aru, i64 8
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !10 ; 5 uses
  %.val1589 = load i32, ptr %i.aru, align 8, !tbaa !14
  %i.ayf = icmp eq i32 %.val1589, 1
  br i1 %i.ayf, label %lean_dec.exit1329.thread2119, label %bb.ait

bb.ait:                                           ; preds = %lean_dec_ref.exit1494
  %i.ayg = ptrtoint ptr %i.aye to i64
  %i.ayh = and i64 %i.ayg, 1
  %.not.i1157 = icmp eq i64 %i.ayh, 0
  br i1 %.not.i1157, label %bb.aiu, label %lean_inc.exit1158

bb.aiu:                                           ; preds = %bb.ait
  %.val.i.i2096 = load i32, ptr %i.aye, align 4, !tbaa !14 ; 3 uses
  %i.ayi = icmp sgt i32 %.val.i.i2096, 0
  br i1 %i.ayi, label %bb.aiv, label %bb.aiw, !prof !16

bb.aiv:                                           ; preds = %bb.aiu
  %i.ayj = add nuw i32 %.val.i.i2096, 1
  store i32 %i.ayj, ptr %i.aye, align 4, !tbaa !14
  br label %lean_inc.exit1158

bb.aiw:                                           ; preds = %bb.aiu
  %.not.i.i2097 = icmp eq i32 %.val.i.i2096, 0
  br i1 %.not.i.i2097, label %lean_inc.exit1158, label %bb.aix

bb.aix:                                           ; preds = %bb.aiw
  %i.ayk = atomicrmw sub ptr %i.aye, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1158

lean_inc.exit1158:                                ; preds = %bb.aix, %bb.aiw, %bb.aiv, %bb.ait
  br i1 %.not.i2032, label %bb.aiy, label %bb.ajc

bb.aiy:                                           ; preds = %lean_inc.exit1158
  %i.ayl = load i32, ptr %i.aru, align 8, !tbaa !14 ; 3 uses
end_hunk_6
begin_hunk_7_@l_Lean_Expr_withAppAux___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__17:bb.a

bb.aap:                                           ; preds = %lean_obj_tag.exit1935
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ann, i64 8 ; 2 uses
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !10 ; 5 uses
  %i.anx = ptrtoint ptr %i.anw to i64
  %i.any = and i64 %i.anx, 1
  %.not.i1167 = icmp eq i64 %i.any, 0
  br i1 %.not.i1167, label %bb.aaq, label %lean_inc.exit1168

bb.aaq:                                           ; preds = %bb.aap
  %.val.i.i1936 = load i32, ptr %i.anw, align 4, !tbaa !14 ; 3 uses
  %i.anz = icmp sgt i32 %.val.i.i1936, 0
  br i1 %i.anz, label %bb.aar, label %bb.aas, !prof !16

bb.aar:                                           ; preds = %bb.aaq
  %i.aoa = add nuw i32 %.val.i.i1936, 1
  store i32 %i.aoa, ptr %i.anw, align 4, !tbaa !14
  br label %lean_inc.exit1168

bb.aas:                                           ; preds = %bb.aaq
  %.not.i.i1937 = icmp eq i32 %.val.i.i1936, 0
  br i1 %.not.i.i1937, label %lean_inc.exit1168, label %bb.aat

bb.aat:                                           ; preds = %bb.aas
  %i.aob = atomicrmw sub ptr %i.anw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1168

lean_inc.exit1168:                                ; preds = %bb.aat, %bb.aas, %bb.aar, %bb.aap
  %.val.i1939 = load i32, ptr %i.ann, align 8, !tbaa !14 ; 4 uses
  %i.aoc = icmp eq i32 %.val.i1939, 1
  br i1 %i.aoc, label %.preheader.i1941, label %bb.aay

.preheader.i1941:                                 ; preds = %lean_inc.exit1168
  %i.aod = load ptr, ptr %i.anv, align 8, !tbaa !10 ; 4 uses
  %i.aoe = ptrtoint ptr %i.aod to i64
  %i.aof = and i64 %i.aoe, 1
  %.not.i.i1943 = icmp eq i64 %i.aof, 0
  br i1 %.not.i.i1943, label %bb.aau, label %lean_dec.exit.i1944

bb.aau:                                           ; preds = %.preheader.i1941
  %i.aog = load i32, ptr %i.aod, align 4, !tbaa !14 ; 3 uses
  %i.aoh = icmp sgt i32 %i.aog, 1
  br i1 %i.aoh, label %bb.aav, label %bb.aaw, !prof !16

bb.aav:                                           ; preds = %bb.aau
  %i.aoi = add nsw i32 %i.aog, -1
  store i32 %i.aoi, ptr %i.aod, align 4, !tbaa !14
  br label %lean_dec.exit.i1944

bb.aaw:                                           ; preds = %bb.aau
  %.not.i7.i1948 = icmp eq i32 %i.aog, 0
  br i1 %.not.i7.i1948, label %lean_dec.exit.i1944, label %bb.aax

bb.aax:                                           ; preds = %bb.aaw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aod) #6
  br label %lean_dec.exit.i1944

lean_dec.exit.i1944:                              ; preds = %bb.aax, %bb.aaw, %bb.aav, %.preheader.i1941
  tail call void @lean_free_object(ptr noundef nonnull %i.ann) #6
  br label %lean_dec_ref_known.exit1949

bb.aay:                                           ; preds = %lean_inc.exit1168
  %i.aoj = icmp sgt i32 %.val.i1939, 1
  br i1 %i.aoj, label %bb.aaz, label %bb.aba, !prof !16

bb.aaz:                                           ; preds = %bb.aay
  %i.aok = add nsw i32 %.val.i1939, -1
  store i32 %i.aok, ptr %i.ann, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit1949

bb.aba:                                           ; preds = %bb.aay
  %.not.i8.i1940 = icmp eq i32 %.val.i1939, 0
  br i1 %.not.i8.i1940, label %lean_dec_ref_known.exit1949, label %bb.abb

bb.abb:                                           ; preds = %bb.aba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ann) #6
  br label %lean_dec_ref_known.exit1949

lean_dec_ref_known.exit1949:                      ; preds = %lean_dec.exit.i1944, %bb.aaz, %bb.aba, %bb.abb
  %.val.i.i1950 = load i32, ptr %1, align 4, !tbaa !14 ; 3 uses
  %i.aol = icmp sgt i32 %.val.i.i1950, 0
  br i1 %i.aol, label %bb.abc, label %bb.abd, !prof !16

bb.abc:                                           ; preds = %lean_dec_ref_known.exit1949
  %i.aom = add nuw i32 %.val.i.i1950, 1
  store i32 %i.aom, ptr %1, align 4, !tbaa !14
  br label %lean_inc_ref.exit1952

bb.abd:                                           ; preds = %lean_dec_ref_known.exit1949
  %.not.i.i1951 = icmp eq i32 %.val.i.i1950, 0
  br i1 %.not.i.i1951, label %lean_inc_ref.exit1952, label %bb.abe

bb.abe:                                           ; preds = %bb.abd
  %i.aon = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1952

lean_inc_ref.exit1952:                            ; preds = %bb.abc, %bb.abd, %bb.abe
  %i.aoo = tail call ptr @l_Lean_Meta_isExprDefEq(ptr noundef nonnull %1, ptr noundef %i.anw, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14) #6 ; 14 uses
  %i.aop = ptrtoint ptr %i.aoo to i64             ; 2 uses
  %i.aoq = and i64 %i.aop, 1
  %.not.i1953 = icmp eq i64 %i.aoq, 0             ; 3 uses
  br i1 %.not.i1953, label %bb.abg, label %bb.abf

bb.abf:                                           ; preds = %lean_inc_ref.exit1952
  %i.aor = lshr i64 %i.aop, 1
  %i.aos = trunc i64 %i.aor to i32
  br label %lean_obj_tag.exit1956

bb.abg:                                           ; preds = %lean_inc_ref.exit1952
  %i.aot = getelementptr i8, ptr %i.aoo, i64 4
  %.val.i1955 = load i32, ptr %i.aot, align 4
  %i.aou = lshr i32 %.val.i1955, 24
  br label %lean_obj_tag.exit1956

lean_obj_tag.exit1956:                            ; preds = %bb.abf, %bb.abg
  %.0.i1954 = phi i32 [ %i.aos, %bb.abf ], [ %i.aou, %bb.abg ]
  %i.aov = icmp eq i32 %.0.i1954, 0
  br i1 %i.aov, label %bb.abh, label %bb.afg

bb.abh:                                           ; preds = %lean_obj_tag.exit1956
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aoo, i64 8
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !10 ; 25 uses
  %.val1582 = load i32, ptr %i.aoo, align 8, !tbaa !14
  %i.aoy = icmp eq i32 %.val1582, 1               ; 2 uses
  %.pre = ptrtoint ptr %i.aox to i64              ; 9 uses
  br i1 %i.aoy, label %lean_dec.exit1281, label %bb.abi

bb.abi:                                           ; preds = %bb.abh
  %i.aoz = and i64 %.pre, 1
  %.not.i1165 = icmp eq i64 %i.aoz, 0
  br i1 %.not.i1165, label %bb.abj, label %lean_inc.exit1166

bb.abj:                                           ; preds = %bb.abi
  %.val.i.i1957 = load i32, ptr %i.aox, align 4, !tbaa !14 ; 3 uses
  %i.apa = icmp sgt i32 %.val.i.i1957, 0
  br i1 %i.apa, label %bb.abk, label %bb.abl, !prof !16

bb.abk:                                           ; preds = %bb.abj
  %i.apb = add nuw i32 %.val.i.i1957, 1
  store i32 %i.apb, ptr %i.aox, align 4, !tbaa !14
  br label %lean_inc.exit1166

bb.abl:                                           ; preds = %bb.abj
  %.not.i.i1958 = icmp eq i32 %.val.i.i1957, 0
  br i1 %.not.i.i1958, label %lean_inc.exit1166, label %bb.abm

bb.abm:                                           ; preds = %bb.abl
  %i.apc = atomicrmw sub ptr %i.aox, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1166

lean_inc.exit1166:                                ; preds = %bb.abm, %bb.abl, %bb.abk, %bb.abi
  br i1 %.not.i1953, label %bb.abn, label %lean_dec.exit1281

bb.abn:                                           ; preds = %lean_inc.exit1166
  %i.apd = load i32, ptr %i.aoo, align 8, !tbaa !14 ; 3 uses
  %i.ape = icmp sgt i32 %i.apd, 1
  br i1 %i.ape, label %bb.abo, label %bb.abp, !prof !16

bb.abo:                                           ; preds = %bb.abn
  %i.apf = add nsw i32 %i.apd, -1
  store i32 %i.apf, ptr %i.aoo, align 8, !tbaa !14
  br label %lean_dec.exit1281

bb.abp:                                           ; preds = %bb.abn
  %.not.i1457 = icmp eq i32 %i.apd, 0
  br i1 %.not.i1457, label %lean_dec.exit1281, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aoo) #6
  br label %lean_dec.exit1281

lean_dec.exit1281:                                ; preds = %bb.abh, %lean_inc.exit1166, %bb.abo, %bb.abp, %bb.abq
  %.0946 = phi ptr [ inttoptr (i64 1 to ptr), %bb.abq ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1166 ], [ inttoptr (i64 1 to ptr), %bb.abo ], [ inttoptr (i64 1 to ptr), %bb.abp ], [ %i.aoo, %bb.abh ] ; 4 uses
  %i.apg = and i64 %.pre, 510
  %i.aph = icmp eq i64 %i.apg, 0
  br i1 %i.aph, label %bb.abr, label %bb.aev

bb.abr:                                           ; preds = %lean_dec.exit1281
  %i.api = ptrtoint ptr %.0946 to i64
  %i.apj = and i64 %i.api, 1
  %.not.i1960 = icmp eq i64 %i.apj, 0
  br i1 %.not.i1960, label %bb.abs, label %lean_del_object.exit1961

bb.abs:                                           ; preds = %bb.abr
  tail call void @lean_free_object(ptr noundef nonnull %.0946) #6
  br label %lean_del_object.exit1961

lean_del_object.exit1961:                         ; preds = %bb.abr, %bb.abs
  %i.apk = load ptr, ptr %i.zl, align 8, !tbaa !10 ; 2 uses
  %i.apl = load ptr, ptr @l_Lean_Meta_backward_inferInstanceAs_wrap_reuseSubInstances, align 8, !tbaa !10
  %i.apm = tail call zeroext i8 @l_Lean_Option_get___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__0(ptr noundef %i.apk, ptr noundef %i.apl)
  %i.apn = icmp eq i8 %i.apm, 0
  br i1 %i.apn, label %bb.abt, label %bb.aby

bb.abt:                                           ; preds = %lean_del_object.exit1961
  %i.apo = and i64 %.pre, 1
  %.not.i1278 = icmp eq i64 %i.apo, 0
  br i1 %.not.i1278, label %bb.abu, label %lean_dec.exit1279

bb.abu:                                           ; preds = %bb.abt
  %i.app = load i32, ptr %i.aox, align 512, !tbaa !14 ; 3 uses
  %i.apq = icmp sgt i32 %i.app, 1
  br i1 %i.apq, label %bb.abv, label %bb.abw, !prof !16

bb.abv:                                           ; preds = %bb.abu
  %i.apr = add nsw i32 %i.app, -1
  store i32 %i.apr, ptr %i.aox, align 512, !tbaa !14
  br label %lean_dec.exit1279

bb.abw:                                           ; preds = %bb.abu
  %.not.i1459 = icmp eq i32 %i.app, 0
  br i1 %.not.i1459, label %lean_dec.exit1279, label %bb.abx

bb.abx:                                           ; preds = %bb.abw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aox) #6
  br label %lean_dec.exit1279

bb.aby:                                           ; preds = %lean_del_object.exit1961
  %.val.i.i1962 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.aps = icmp sgt i32 %.val.i.i1962, 0
  br i1 %i.aps, label %bb.abz, label %bb.aca, !prof !16

bb.abz:                                           ; preds = %bb.aby
  %i.apt = add nuw i32 %.val.i.i1962, 1
  store i32 %i.apt, ptr %0, align 4, !tbaa !14
  br label %lean_inc_ref.exit1964

bb.aca:                                           ; preds = %bb.aby
  %.not.i.i1963 = icmp eq i32 %.val.i.i1962, 0
  br i1 %.not.i.i1963, label %lean_inc_ref.exit1964, label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  %i.apu = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1964

lean_inc_ref.exit1964:                            ; preds = %bb.abz, %bb.aca, %bb.acb
  %i.apv = tail call ptr @l___private_Lean_Meta_WrapInstance_0__Lean_Meta_etaStructExpand_x3f(ptr noundef nonnull %0, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14) ; 8 uses
  %i.apw = ptrtoint ptr %i.apv to i64             ; 2 uses
  %i.apx = and i64 %i.apw, 1
  %.not.i1965 = icmp eq i64 %i.apx, 0
  br i1 %.not.i1965, label %bb.acd, label %bb.acc

bb.acc:                                           ; preds = %lean_inc_ref.exit1964
  %i.apy = lshr i64 %i.apw, 1
  %i.apz = trunc i64 %i.apy to i32
  br label %lean_obj_tag.exit1968

bb.acd:                                           ; preds = %lean_inc_ref.exit1964
  %i.aqa = getelementptr i8, ptr %i.apv, i64 4
  %.val.i1967 = load i32, ptr %i.aqa, align 4
  %i.aqb = lshr i32 %.val.i1967, 24
  br label %lean_obj_tag.exit1968

lean_obj_tag.exit1968:                            ; preds = %bb.acc, %bb.acd
  %.0.i1966 = phi i32 [ %i.apz, %bb.acc ], [ %i.aqb, %bb.acd ]
  %i.aqc = icmp eq i32 %.0.i1966, 0
  br i1 %i.aqc, label %bb.ace, label %bb.aek

bb.ace:                                           ; preds = %lean_obj_tag.exit1968
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apv, i64 8
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !10 ; 10 uses
  %i.aqf = ptrtoint ptr %i.aqe to i64             ; 2 uses
  %i.aqg = and i64 %i.aqf, 1
  %.not.i1163 = icmp eq i64 %i.aqg, 0
  br i1 %.not.i1163, label %bb.acf, label %lean_obj_tag.exit1975.thread

bb.acf:                                           ; preds = %bb.ace
  %.val.i.i1969 = load i32, ptr %i.aqe, align 4, !tbaa !14 ; 3 uses
  %i.aqh = icmp sgt i32 %.val.i.i1969, 0
  br i1 %i.aqh, label %bb.acg, label %bb.ach, !prof !16

bb.acg:                                           ; preds = %bb.acf
  %i.aqi = add nuw i32 %.val.i.i1969, 1
  store i32 %i.aqi, ptr %i.aqe, align 4, !tbaa !14
  br label %lean_obj_tag.exit1975

bb.ach:                                           ; preds = %bb.acf
  %.not.i.i1970 = icmp eq i32 %.val.i.i1969, 0
  br i1 %.not.i.i1970, label %lean_obj_tag.exit1975, label %bb.aci

bb.aci:                                           ; preds = %bb.ach
  %i.aqj = atomicrmw sub ptr %i.aqe, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_obj_tag.exit1975

lean_obj_tag.exit1975:                            ; preds = %bb.acg, %bb.ach, %bb.aci
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.apv, i32 noundef 1)
  %i.aqk = getelementptr i8, ptr %i.aqe, i64 4
  %.val.i1974 = load i32, ptr %i.aqk, align 4
  %.mask2293 = and i32 %.val.i1974, -16777216
  %i.aql = icmp eq i32 %.mask2293, 16777216
  br i1 %i.aql, label %bb.acj, label %bb.aec

lean_obj_tag.exit1975.thread:                     ; preds = %bb.ace
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.apv, i32 noundef 1)
  %i.aqm = and i64 %i.aqf, 8589934590
  %i.aqn = icmp eq i64 %i.aqm, 2
  br i1 %i.aqn, label %bb.acj, label %lean_dec.exit1269

bb.acj:                                           ; preds = %lean_obj_tag.exit1975.thread, %lean_obj_tag.exit1975
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqe, i64 8
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !10 ; 5 uses
  %i.aqq = ptrtoint ptr %i.aqp to i64
  %i.aqr = and i64 %i.aqq, 1
  %.not.i1161 = icmp eq i64 %i.aqr, 0
  br i1 %.not.i1161, label %bb.ack, label %lean_inc.exit1162

bb.ack:                                           ; preds = %bb.acj
  %.val.i.i1976 = load i32, ptr %i.aqp, align 4, !tbaa !14 ; 3 uses
  %i.aqs = icmp sgt i32 %.val.i.i1976, 0
  br i1 %i.aqs, label %bb.acl, label %bb.acm, !prof !16

bb.acl:                                           ; preds = %bb.ack
  %i.aqt = add nuw i32 %.val.i.i1976, 1
  store i32 %i.aqt, ptr %i.aqp, align 4, !tbaa !14
  br label %lean_inc.exit1162

bb.acm:                                           ; preds = %bb.ack
  %.not.i.i1977 = icmp eq i32 %.val.i.i1976, 0
  br i1 %.not.i.i1977, label %lean_inc.exit1162, label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  %i.aqu = atomicrmw sub ptr %i.aqp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1162

lean_inc.exit1162:                                ; preds = %bb.acn, %bb.acm, %bb.acl, %bb.acj
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.aqe, i32 noundef 1)
  %.val.i.i1979 = load i32, ptr %1, align 4, !tbaa !14 ; 3 uses
  %i.aqv = icmp sgt i32 %.val.i.i1979, 0
  br i1 %i.aqv, label %bb.aco, label %bb.acp, !prof !16

bb.aco:                                           ; preds = %lean_inc.exit1162
  %i.aqw = add nuw i32 %.val.i.i1979, 1
  store i32 %i.aqw, ptr %1, align 4, !tbaa !14
  br label %lean_inc_ref.exit1981

bb.acp:                                           ; preds = %lean_inc.exit1162
  %.not.i.i1980 = icmp eq i32 %.val.i.i1979, 0
  br i1 %.not.i.i1980, label %lean_inc_ref.exit1981, label %bb.acq

bb.acq:                                           ; preds = %bb.acp
  %i.aqx = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1981

lean_inc_ref.exit1981:                            ; preds = %bb.aco, %bb.acp, %bb.acq
  %i.aqy = tail call ptr @l___private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go(i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %i.aqp, ptr noundef nonnull %1, i8 noundef zeroext %2, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14) ; 11 uses
  %i.aqz = ptrtoint ptr %i.aqy to i64             ; 2 uses
  %i.ara = and i64 %i.aqz, 1
  %.not.i1982 = icmp eq i64 %i.ara, 0
  br i1 %.not.i1982, label %bb.acs, label %bb.acr

bb.acr:                                           ; preds = %lean_inc_ref.exit1981
  %i.arb = lshr i64 %i.aqz, 1
  %i.arc = trunc i64 %i.arb to i32
  br label %lean_obj_tag.exit1985

bb.acs:                                           ; preds = %lean_inc_ref.exit1981
  %i.ard = getelementptr i8, ptr %i.aqy, i64 4
  %.val.i1984 = load i32, ptr %i.ard, align 4
  %i.are = lshr i32 %.val.i1984, 24
  br label %lean_obj_tag.exit1985

lean_obj_tag.exit1985:                            ; preds = %bb.acr, %bb.acs
  %.0.i1983 = phi i32 [ %i.arc, %bb.acr ], [ %i.are, %bb.acs ]
  %i.arf = icmp eq i32 %.0.i1983, 0
  br i1 %i.arf, label %bb.act, label %bb.adr

bb.act:                                           ; preds = %lean_obj_tag.exit1985
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8
  %i.arh = load ptr, ptr %i.arg, align 8, !tbaa !10 ; 9 uses
  %i.ari = ptrtoint ptr %i.arh to i64             ; 2 uses
  %i.arj = and i64 %i.ari, 1
  %.not.i1159 = icmp eq i64 %i.arj, 0
  br i1 %.not.i1159, label %bb.acu, label %lean_obj_tag.exit1992.thread

bb.acu:                                           ; preds = %bb.act
  %.val.i.i1986 = load i32, ptr %i.arh, align 4, !tbaa !14 ; 3 uses
  %i.ark = icmp sgt i32 %.val.i.i1986, 0
  br i1 %i.ark, label %bb.acv, label %bb.acw, !prof !16

bb.acv:                                           ; preds = %bb.acu
  %i.arl = add nuw i32 %.val.i.i1986, 1
  store i32 %i.arl, ptr %i.arh, align 4, !tbaa !14
  br label %lean_obj_tag.exit1992

bb.acw:                                           ; preds = %bb.acu
  %.not.i.i1987 = icmp eq i32 %.val.i.i1986, 0
  br i1 %.not.i.i1987, label %lean_obj_tag.exit1992, label %bb.acx

bb.acx:                                           ; preds = %bb.acw
  %i.arm = atomicrmw sub ptr %i.arh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_obj_tag.exit1992

lean_obj_tag.exit1992:                            ; preds = %bb.acv, %bb.acw, %bb.acx
  %i.arn = getelementptr i8, ptr %i.arh, i64 4
  %.val.i1991 = load i32, ptr %i.arn, align 4
  %.mask2294 = and i32 %.val.i1991, -16777216
  %.not2044 = icmp eq i32 %.mask2294, 16777216
  br i1 %.not2044, label %bb.acy, label %bb.adj

lean_obj_tag.exit1992.thread:                     ; preds = %bb.act
  %i.aro = and i64 %i.ari, 8589934590
  %.not20442288 = icmp eq i64 %i.aro, 2
  br i1 %.not20442288, label %bb.acy, label %.thread2289

.thread2289:                                      ; preds = %lean_obj_tag.exit1992.thread
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.aqy, i32 noundef 1)
  br label %lean_dec.exit1275

bb.acy:                                           ; preds = %lean_obj_tag.exit1992.thread, %lean_obj_tag.exit1992
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.arh, i32 noundef 1)
  %i.arp = and i64 %.pre, 1
  %.not.i1276 = icmp eq i64 %i.arp, 0
  br i1 %.not.i1276, label %bb.acz, label %lean_dec.exit1277

bb.acz:                                           ; preds = %bb.acy
  %i.arq = load i32, ptr %i.aox, align 512, !tbaa !14 ; 3 uses
  %i.arr = icmp sgt i32 %i.arq, 1
  br i1 %i.arr, label %bb.ada, label %bb.adb, !prof !16

bb.ada:                                           ; preds = %bb.acz
  %i.ars = add nsw i32 %i.arq, -1
  store i32 %i.ars, ptr %i.aox, align 512, !tbaa !14
  br label %lean_dec.exit1277

bb.adb:                                           ; preds = %bb.acz
  %.not.i1461 = icmp eq i32 %i.arq, 0
  br i1 %.not.i1461, label %lean_dec.exit1277, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aox) #6
  br label %lean_dec.exit1277

lean_dec.exit1277:                                ; preds = %bb.adc, %bb.adb, %bb.ada, %bb.acy
  %i.art = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.aru = icmp sgt i32 %i.art, 1
  br i1 %i.aru, label %bb.add, label %bb.ade, !prof !16

bb.add:                                           ; preds = %lean_dec.exit1277
  %i.arv = add nsw i32 %i.art, -1
  store i32 %i.arv, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit1502

bb.ade:                                           ; preds = %lean_dec.exit1277
  %.not.i1501 = icmp eq i32 %i.art, 0
  br i1 %.not.i1501, label %lean_dec_ref.exit1502, label %bb.adf

bb.adf:                                           ; preds = %bb.ade
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit1502

lean_dec_ref.exit1502:                            ; preds = %bb.add, %bb.ade, %bb.adf
  %i.arw = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.arx = icmp sgt i32 %i.arw, 1
  br i1 %i.arx, label %bb.adg, label %bb.adh, !prof !16

bb.adg:                                           ; preds = %lean_dec_ref.exit1502
  %i.ary = add nsw i32 %i.arw, -1
  store i32 %i.ary, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref_known.exit1833

bb.adh:                                           ; preds = %lean_dec_ref.exit1502
  %.not.i1499 = icmp eq i32 %i.arw, 0
  br i1 %.not.i1499, label %lean_dec_ref_known.exit1833, label %bb.adi

bb.adi:                                           ; preds = %bb.adh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref_known.exit1833

bb.adj:                                           ; preds = %lean_obj_tag.exit1992
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.aqy, i32 noundef 1)
  %i.arz = load i32, ptr %i.arh, align 4, !tbaa !14 ; 3 uses
  %i.asa = icmp sgt i32 %i.arz, 1
  br i1 %i.asa, label %bb.adk, label %bb.adl, !prof !16

bb.adk:                                           ; preds = %bb.adj
  %i.asb = add nsw i32 %i.arz, -1
  store i32 %i.asb, ptr %i.arh, align 4, !tbaa !14
  br label %lean_dec.exit1275

bb.adl:                                           ; preds = %bb.adj
  %.not.i1463 = icmp eq i32 %i.arz, 0
  br i1 %.not.i1463, label %lean_dec.exit1275, label %bb.adm

bb.adm:                                           ; preds = %bb.adl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.arh) #6
  br label %lean_dec.exit1275

lean_dec.exit1275:                                ; preds = %.thread2289, %bb.adm, %bb.adl, %bb.adk
  %i.asc = and i64 %.pre, 1
  %.not.i1272 = icmp eq i64 %i.asc, 0
  br i1 %.not.i1272, label %bb.adn, label %lean_dec.exit1279

bb.adn:                                           ; preds = %lean_dec.exit1275
  %i.asd = load i32, ptr %i.aox, align 512, !tbaa !14 ; 3 uses
  %i.ase = icmp sgt i32 %i.asd, 1
  br i1 %i.ase, label %bb.ado, label %bb.adp, !prof !16

bb.ado:                                           ; preds = %bb.adn
  %i.asf = add nsw i32 %i.asd, -1
  store i32 %i.asf, ptr %i.aox, align 512, !tbaa !14
  br label %lean_dec.exit1279

bb.adp:                                           ; preds = %bb.adn
  %.not.i1465 = icmp eq i32 %i.asd, 0
  br i1 %.not.i1465, label %lean_dec.exit1279, label %bb.adq

bb.adq:                                           ; preds = %bb.adp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aox) #6
  br label %lean_dec.exit1279

bb.adr:                                           ; preds = %lean_obj_tag.exit1985
  %i.asg = and i64 %.pre, 1
  %.not.i1270 = icmp eq i64 %i.asg, 0
  br i1 %.not.i1270, label %bb.ads, label %lean_dec.exit1271

bb.ads:                                           ; preds = %bb.adr
  %i.ash = load i32, ptr %i.aox, align 512, !tbaa !14 ; 3 uses
  %i.asi = icmp sgt i32 %i.ash, 1
  br i1 %i.asi, label %bb.adt, label %bb.adu, !prof !16

bb.adt:                                           ; preds = %bb.ads
  %i.asj = add nsw i32 %i.ash, -1
  store i32 %i.asj, ptr %i.aox, align 512, !tbaa !14
  br label %lean_dec.exit1271

bb.adu:                                           ; preds = %bb.ads
  %.not.i1467 = icmp eq i32 %i.ash, 0
  br i1 %.not.i1467, label %lean_dec.exit1271, label %bb.adv

bb.adv:                                           ; preds = %bb.adu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aox) #6
  br label %lean_dec.exit1271

lean_dec.exit1271:                                ; preds = %bb.adv, %bb.adu, %bb.adt, %bb.adr
  %i.ask = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.asl = icmp sgt i32 %i.ask, 1
  br i1 %i.asl, label %bb.adw, label %bb.adx, !prof !16

bb.adw:                                           ; preds = %lean_dec.exit1271
  %i.asm = add nsw i32 %i.ask, -1
  store i32 %i.asm, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit1498

bb.adx:                                           ; preds = %lean_dec.exit1271
  %.not.i1497 = icmp eq i32 %i.ask, 0
  br i1 %.not.i1497, label %lean_dec_ref.exit1498, label %bb.ady

bb.ady:                                           ; preds = %bb.adx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit1498

lean_dec_ref.exit1498:                            ; preds = %bb.adw, %bb.adx, %bb.ady
  %i.asn = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.aso = icmp sgt i32 %i.asn, 1
  br i1 %i.aso, label %bb.adz, label %bb.aea, !prof !16

bb.adz:                                           ; preds = %lean_dec_ref.exit1498
  %i.asp = add nsw i32 %i.asn, -1
  store i32 %i.asp, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref_known.exit1833

bb.aea:                                           ; preds = %lean_dec_ref.exit1498
  %.not.i1495 = icmp eq i32 %i.asn, 0
  br i1 %.not.i1495, label %lean_dec_ref_known.exit1833, label %bb.aeb

bb.aeb:                                           ; preds = %bb.aea
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref_known.exit1833

bb.aec:                                           ; preds = %lean_obj_tag.exit1975
  %i.asq = load i32, ptr %i.aqe, align 4, !tbaa !14 ; 3 uses
  %i.asr = icmp sgt i32 %i.asq, 1
  br i1 %i.asr, label %bb.aed, label %bb.aee, !prof !16

bb.aed:                                           ; preds = %bb.aec
  %i.ass = add nsw i32 %i.asq, -1
  store i32 %i.ass, ptr %i.aqe, align 4, !tbaa !14
  br label %lean_dec.exit1269

bb.aee:                                           ; preds = %bb.aec
  %.not.i1469 = icmp eq i32 %i.asq, 0
  br i1 %.not.i1469, label %lean_dec.exit1269, label %bb.aef

bb.aef:                                           ; preds = %bb.aee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqe) #6
  br label %lean_dec.exit1269

lean_dec.exit1269:                                ; preds = %lean_obj_tag.exit1975.thread, %bb.aef, %bb.aee, %bb.aed
  %i.ast = and i64 %.pre, 1
  %.not.i1266 = icmp eq i64 %i.ast, 0
  br i1 %.not.i1266, label %bb.aeg, label %lean_dec.exit1279

bb.aeg:                                           ; preds = %lean_dec.exit1269
  %i.asu = load i32, ptr %i.aox, align 512, !tbaa !14 ; 3 uses
  %i.asv = icmp sgt i32 %i.asu, 1
  br i1 %i.asv, label %bb.aeh, label %bb.aei, !prof !16

bb.aeh:                                           ; preds = %bb.aeg
  %i.asw = add nsw i32 %i.asu, -1
  store i32 %i.asw, ptr %i.aox, align 512, !tbaa !14
  br label %lean_dec.exit1279

bb.aei:                                           ; preds = %bb.aeg
  %.not.i1471 = icmp eq i32 %i.asu, 0
  br i1 %.not.i1471, label %lean_dec.exit1279, label %bb.aej

bb.aej:                                           ; preds = %bb.aei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aox) #6
  br label %lean_dec.exit1279

bb.aek:                                           ; preds = %lean_obj_tag.exit1968
  %i.asx = and i64 %.pre, 1
  %.not.i1264 = icmp eq i64 %i.asx, 0
  br i1 %.not.i1264, label %bb.ael, label %lean_dec.exit1265

bb.ael:                                           ; preds = %bb.aek
  %i.asy = load i32, ptr %i.aox, align 512, !tbaa !14 ; 3 uses
  %i.asz = icmp sgt i32 %i.asy, 1
  br i1 %i.asz, label %bb.aem, label %bb.aen, !prof !16

bb.aem:                                           ; preds = %bb.ael
  %i.ata = add nsw i32 %i.asy, -1
  store i32 %i.ata, ptr %i.aox, align 512, !tbaa !14
  br label %lean_dec.exit1265

bb.aen:                                           ; preds = %bb.ael
  %.not.i1473 = icmp eq i32 %i.asy, 0
  br i1 %.not.i1473, label %lean_dec.exit1265, label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aox) #6
  br label %lean_dec.exit1265

lean_dec.exit1265:                                ; preds = %bb.aeo, %bb.aen, %bb.aem, %bb.aek
  %i.atb = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.atc = icmp sgt i32 %i.atb, 1
  br i1 %i.atc, label %bb.aep, label %bb.aeq, !prof !16

bb.aep:                                           ; preds = %lean_dec.exit1265
  %i.atd = add nsw i32 %i.atb, -1
  store i32 %i.atd, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit1494

bb.aeq:                                           ; preds = %lean_dec.exit1265
  %.not.i1493 = icmp eq i32 %i.atb, 0
  br i1 %.not.i1493, label %lean_dec_ref.exit1494, label %bb.aer

bb.aer:                                           ; preds = %bb.aeq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit1494

lean_dec_ref.exit1494:                            ; preds = %bb.aep, %bb.aeq, %bb.aer
  %i.ate = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.atf = icmp sgt i32 %i.ate, 1
  br i1 %i.atf, label %bb.aes, label %bb.aet, !prof !16

bb.aes:                                           ; preds = %lean_dec_ref.exit1494
  %i.atg = add nsw i32 %i.ate, -1
  store i32 %i.atg, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref_known.exit1833

bb.aet:                                           ; preds = %lean_dec_ref.exit1494
  %.not.i1491 = icmp eq i32 %i.ate, 0
  br i1 %.not.i1491, label %lean_dec_ref_known.exit1833, label %bb.aeu

bb.aeu:                                           ; preds = %bb.aet
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref_known.exit1833

bb.aev:                                           ; preds = %lean_dec.exit1281
  %i.ath = and i64 %.pre, 1
  %.not.i1262 = icmp eq i64 %i.ath, 0
  br i1 %.not.i1262, label %bb.aew, label %lean_dec.exit1263

bb.aew:                                           ; preds = %bb.aev
  %i.ati = load i32, ptr %i.aox, align 4, !tbaa !14 ; 3 uses
  %i.atj = icmp sgt i32 %i.ati, 1
  br i1 %i.atj, label %bb.aex, label %bb.aey, !prof !16

bb.aex:                                           ; preds = %bb.aew
  %i.atk = add nsw i32 %i.ati, -1
  store i32 %i.atk, ptr %i.aox, align 4, !tbaa !14
  br label %lean_dec.exit1263

bb.aey:                                           ; preds = %bb.aew
  %.not.i1475 = icmp eq i32 %i.ati, 0
  br i1 %.not.i1475, label %lean_dec.exit1263, label %bb.aez

bb.aez:                                           ; preds = %bb.aey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aox) #6
  br label %lean_dec.exit1263

lean_dec.exit1263:                                ; preds = %bb.aez, %bb.aey, %bb.aex, %bb.aev
  %i.atl = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.atm = icmp sgt i32 %i.atl, 1
  br i1 %i.atm, label %bb.afa, label %bb.afb, !prof !16

bb.afa:                                           ; preds = %lean_dec.exit1263
  %i.atn = add nsw i32 %i.atl, -1
  store i32 %i.atn, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit1490

bb.afb:                                           ; preds = %lean_dec.exit1263
  %.not.i1489 = icmp eq i32 %i.atl, 0
  br i1 %.not.i1489, label %lean_dec_ref.exit1490, label %bb.afc

bb.afc:                                           ; preds = %bb.afb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit1490

lean_dec_ref.exit1490:                            ; preds = %bb.afa, %bb.afb, %bb.afc
  tail call void @lean_inc_heartbeat() #6
  %i.ato = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 6 uses
  %i.atp = icmp eq ptr %i.ato, null
  br i1 %i.atp, label %bb.afd, label %lean_alloc_ctor.exit1993

bb.afd:                                           ; preds = %lean_dec_ref.exit1490
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1993:                         ; preds = %lean_dec_ref.exit1490
  %i.atq = getelementptr inbounds nuw i8, ptr %i.ato, i64 4
  store i32 1, ptr %i.ato, align 4, !tbaa !14
  store i32 16842768, ptr %i.atq, align 4
  %i.atr = getelementptr inbounds nuw i8, ptr %i.ato, i64 8
  store ptr %0, ptr %i.atr, align 8, !tbaa !10
  br i1 %i.aoy, label %bb.afe, label %bb.aff

bb.afe:                                           ; preds = %lean_alloc_ctor.exit1993
  %i.ats = getelementptr inbounds nuw i8, ptr %.0946, i64 8
  store ptr %i.ato, ptr %i.ats, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit1833

bb.aff:                                           ; preds = %lean_alloc_ctor.exit1993
  %i.att = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 8
  store ptr %i.ato, ptr %i.atu, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit1833

bb.afg:                                           ; preds = %lean_obj_tag.exit1956
  %i.atv = load i32, ptr %1, align 4, !tbaa !14   ; 3 uses
  %i.atw = icmp sgt i32 %i.atv, 1
  br i1 %i.atw, label %bb.afh, label %bb.afi, !prof !16

bb.afh:                                           ; preds = %bb.afg
  %i.atx = add nsw i32 %i.atv, -1
  store i32 %i.atx, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit1488

bb.afi:                                           ; preds = %bb.afg
  %.not.i1487 = icmp eq i32 %i.atv, 0
  br i1 %.not.i1487, label %lean_dec_ref.exit1488, label %bb.afj

bb.afj:                                           ; preds = %bb.afi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit1488

lean_dec_ref.exit1488:                            ; preds = %bb.afh, %bb.afi, %bb.afj
  %i.aty = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.atz = icmp sgt i32 %i.aty, 1
  br i1 %i.atz, label %bb.afk, label %bb.afl, !prof !16

bb.afk:                                           ; preds = %lean_dec_ref.exit1488
  %i.aua = add nsw i32 %i.aty, -1
  store i32 %i.aua, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit1486

bb.afl:                                           ; preds = %lean_dec_ref.exit1488
  %.not.i1485 = icmp eq i32 %i.aty, 0
  br i1 %.not.i1485, label %lean_dec_ref.exit1486, label %bb.afm

bb.afm:                                           ; preds = %bb.afl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit1486

lean_dec_ref.exit1486:                            ; preds = %bb.afk, %bb.afl, %bb.afm
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aoo, i64 8
  %i.auc = load ptr, ptr %i.aub, align 8, !tbaa !10 ; 5 uses
  %.val1581 = load i32, ptr %i.aoo, align 8, !tbaa !14
  %i.aud = icmp eq i32 %.val1581, 1
  br i1 %i.aud, label %lean_dec_ref_known.exit1833, label %bb.afn

bb.afn:                                           ; preds = %lean_dec_ref.exit1486
  %i.aue = ptrtoint ptr %i.auc to i64
  %i.auf = and i64 %i.aue, 1
  %.not.i1157 = icmp eq i64 %i.auf, 0
  br i1 %.not.i1157, label %bb.afo, label %lean_inc.exit1158

bb.afo:                                           ; preds = %bb.afn
  %.val.i.i1994 = load i32, ptr %i.auc, align 4, !tbaa !14 ; 3 uses
  %i.aug = icmp sgt i32 %.val.i.i1994, 0
  br i1 %i.aug, label %bb.afp, label %bb.afq, !prof !16

bb.afp:                                           ; preds = %bb.afo
  %i.auh = add nuw i32 %.val.i.i1994, 1
  store i32 %i.auh, ptr %i.auc, align 4, !tbaa !14
  br label %lean_inc.exit1158

bb.afq:                                           ; preds = %bb.afo
  %.not.i.i1995 = icmp eq i32 %.val.i.i1994, 0
  br i1 %.not.i.i1995, label %lean_inc.exit1158, label %bb.afr

bb.afr:                                           ; preds = %bb.afq
  %i.aui = atomicrmw sub ptr %i.auc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1158

lean_inc.exit1158:                                ; preds = %bb.afr, %bb.afq, %bb.afp, %bb.afn
  br i1 %.not.i1953, label %bb.afs, label %bb.afw

bb.afs:                                           ; preds = %lean_inc.exit1158
  %i.auj = load i32, ptr %i.aoo, align 8, !tbaa !14 ; 3 uses
  %i.auk = icmp sgt i32 %i.auj, 1
  br i1 %i.auk, label %bb.aft, label %bb.afu, !prof !16

bb.aft:                                           ; preds = %bb.afs
  %i.aul = add nsw i32 %i.auj, -1
  store i32 %i.aul, ptr %i.aoo, align 8, !tbaa !14
  br label %bb.afw

bb.afu:                                           ; preds = %bb.afs
  %.not.i1477 = icmp eq i32 %i.auj, 0
  br i1 %.not.i1477, label %bb.afw, label %bb.afv

end_hunk_7
begin_hunk_8_@l_WellFounded_opaqueFix_u2083___at___00WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__14_spec__24___redArg:bb.a
  store i32 %i.fg, ptr %i.dy, align 4, !tbaa !14
  br label %lean_dec.exit1733

bb.cj:                                            ; preds = %bb.ch
  %.not.i1757 = icmp eq i32 %i.fe, 0
  br i1 %.not.i1757, label %lean_dec.exit1733, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dy) #6
  br label %lean_dec.exit1733

lean_dec.exit1733:                                ; preds = %bb.ck, %bb.cj, %bb.ci, %lean_dec.exit1737
  %i.fh = and i64 %i.fc, 510
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.cl, label %bb.acc

bb.cl:                                            ; preds = %lean_dec.exit1733
  br i1 %.not.i2102, label %bb.cm, label %lean_inc.exit1476

bb.cm:                                            ; preds = %bb.cl
  %.val.i.i2126 = load i32, ptr %i.da, align 4, !tbaa !14 ; 3 uses
  %i.fj = icmp sgt i32 %.val.i.i2126, 0
  br i1 %i.fj, label %bb.cn, label %bb.co, !prof !16

bb.cn:                                            ; preds = %bb.cm
  %i.fk = add nuw i32 %.val.i.i2126, 1
  store i32 %i.fk, ptr %i.da, align 4, !tbaa !14
  br label %lean_inc.exit1476

bb.co:                                            ; preds = %bb.cm
  %.not.i.i2127 = icmp eq i32 %.val.i.i2126, 0
  br i1 %.not.i.i2127, label %lean_inc.exit1476, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.fl = atomicrmw sub ptr %i.da, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1476

lean_inc.exit1476:                                ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cl
  %i.fm = tail call ptr @l_Lean_Meta_isClass_x3f(ptr noundef %i.da, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15) #6 ; 14 uses
  %i.fn = ptrtoint ptr %i.fm to i64               ; 2 uses
  %i.fo = and i64 %i.fn, 1
  %.not.i2129 = icmp eq i64 %i.fo, 0              ; 3 uses
  br i1 %.not.i2129, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %lean_inc.exit1476
  %i.fp = lshr i64 %i.fn, 1
  %i.fq = trunc i64 %i.fp to i32
  br label %lean_obj_tag.exit2132

bb.cr:                                            ; preds = %lean_inc.exit1476
  %i.fr = getelementptr i8, ptr %i.fm, i64 4
  %.val.i2131 = load i32, ptr %i.fr, align 4
  %i.fs = lshr i32 %.val.i2131, 24
  br label %lean_obj_tag.exit2132

lean_obj_tag.exit2132:                            ; preds = %bb.cq, %bb.cr
  %.0.i2130 = phi i32 [ %i.fq, %bb.cq ], [ %i.fs, %bb.cr ]
  %i.ft = icmp eq i32 %.0.i2130, 0
  br i1 %i.ft, label %bb.cs, label %bb.aan

bb.cs:                                            ; preds = %lean_obj_tag.exit2132
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !10 ; 10 uses
  %.val2083 = load i32, ptr %i.fm, align 8, !tbaa !14
  %i.fw = icmp eq i32 %.val2083, 1                ; 2 uses
  %.pre = ptrtoint ptr %i.fv to i64               ; 2 uses
  %.pre3503 = and i64 %.pre, 1                    ; 2 uses
  br i1 %i.fw, label %lean_dec.exit1731, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.not.i1473 = icmp eq i64 %.pre3503, 0
  br i1 %.not.i1473, label %bb.cu, label %lean_inc.exit1474

bb.cu:                                            ; preds = %bb.ct
  %.val.i.i2133 = load i32, ptr %i.fv, align 4, !tbaa !14 ; 3 uses
  %i.fx = icmp sgt i32 %.val.i.i2133, 0
  br i1 %i.fx, label %bb.cv, label %bb.cw, !prof !16

bb.cv:                                            ; preds = %bb.cu
  %i.fy = add nuw i32 %.val.i.i2133, 1
  store i32 %i.fy, ptr %i.fv, align 4, !tbaa !14
  br label %lean_inc.exit1474

bb.cw:                                            ; preds = %bb.cu
  %.not.i.i2134 = icmp eq i32 %.val.i.i2133, 0
  br i1 %.not.i.i2134, label %lean_inc.exit1474, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.fz = atomicrmw sub ptr %i.fv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1474

lean_inc.exit1474:                                ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.ct
  br i1 %.not.i2129, label %bb.cy, label %lean_dec.exit1731

bb.cy:                                            ; preds = %lean_inc.exit1474
  %i.ga = load i32, ptr %i.fm, align 8, !tbaa !14 ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 1
  br i1 %i.gb, label %bb.cz, label %bb.da, !prof !16

bb.cz:                                            ; preds = %bb.cy
  %i.gc = add nsw i32 %i.ga, -1
  store i32 %i.gc, ptr %i.fm, align 8, !tbaa !14
  br label %lean_dec.exit1731

bb.da:                                            ; preds = %bb.cy
  %.not.i1759 = icmp eq i32 %i.ga, 0
  br i1 %.not.i1759, label %lean_dec.exit1731, label %bb.db

bb.db:                                            ; preds = %bb.da
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fm) #6
  br label %lean_dec.exit1731

lean_dec.exit1731:                                ; preds = %bb.cs, %lean_inc.exit1474, %bb.cz, %bb.da, %bb.db
  %.01264 = phi ptr [ inttoptr (i64 1 to ptr), %bb.db ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1474 ], [ inttoptr (i64 1 to ptr), %bb.cz ], [ inttoptr (i64 1 to ptr), %bb.da ], [ %i.fm, %bb.cs ] ; 14 uses
  %.not.i2136 = icmp eq i64 %.pre3503, 0
  br i1 %.not.i2136, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %lean_dec.exit1731
  %i.gd = lshr i64 %.pre, 1
  %i.ge = trunc i64 %i.gd to i32
  br label %lean_obj_tag.exit2139

bb.dd:                                            ; preds = %lean_dec.exit1731
  %i.gf = getelementptr i8, ptr %i.fv, i64 4
  %.val.i2138 = load i32, ptr %i.gf, align 4
  %i.gg = lshr i32 %.val.i2138, 24
  br label %lean_obj_tag.exit2139

lean_obj_tag.exit2139:                            ; preds = %bb.dc, %bb.dd
  %.0.i2137 = phi i32 [ %i.ge, %bb.dc ], [ %i.gg, %bb.dd ]
  %i.gh = icmp eq i32 %.0.i2137, 0
  br i1 %i.gh, label %bb.de, label %bb.pl

bb.de:                                            ; preds = %lean_obj_tag.exit2139
  br i1 %i.i, label %bb.df, label %bb.pe

bb.df:                                            ; preds = %bb.de
  %i.gi = ptrtoint ptr %.01264 to i64
  %i.gj = and i64 %i.gi, 1
  %.not.i2140 = icmp eq i64 %i.gj, 0
  br i1 %.not.i2140, label %bb.dg, label %lean_del_object.exit

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_free_object(ptr noundef nonnull %.01264) #6
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.df, %bb.dg
  %i.gk = ptrtoint ptr %i.ej to i64               ; 2 uses
  %i.gl = and i64 %i.gk, 510
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %bb.dh, label %bb.oc

bb.dh:                                            ; preds = %lean_del_object.exit
  %i.gn = ptrtoint ptr %.01259 to i64
  %i.go = and i64 %i.gn, 1
  %.not.i2141 = icmp eq i64 %i.go, 0
  br i1 %.not.i2141, label %bb.di, label %lean_del_object.exit2142

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_free_object(ptr noundef nonnull %.01259) #6
  br label %lean_del_object.exit2142

lean_del_object.exit2142:                         ; preds = %bb.dh, %bb.di
  %i.gp = ptrtoint ptr %.01254 to i64
  %i.gq = and i64 %i.gp, 1
  %.not.i2143 = icmp eq i64 %i.gq, 0
  br i1 %.not.i2143, label %bb.dj, label %lean_del_object.exit2144

bb.dj:                                            ; preds = %lean_del_object.exit2142
  tail call void @lean_free_object(ptr noundef nonnull %.01254) #6
  br label %lean_del_object.exit2144

lean_del_object.exit2144:                         ; preds = %lean_del_object.exit2142, %bb.dj
  %i.gr = load ptr, ptr %i.j, align 8, !tbaa !10
  br i1 %.not.i2102, label %bb.dk, label %lean_inc.exit1472

bb.dk:                                            ; preds = %lean_del_object.exit2144
  %.val.i.i2145 = load i32, ptr %i.da, align 4, !tbaa !14 ; 3 uses
  %i.gs = icmp sgt i32 %.val.i.i2145, 0
  br i1 %i.gs, label %bb.dl, label %bb.dm, !prof !16

bb.dl:                                            ; preds = %bb.dk
  %i.gt = add nuw i32 %.val.i.i2145, 1
  store i32 %i.gt, ptr %i.da, align 4, !tbaa !14
  br label %lean_inc.exit1472

bb.dm:                                            ; preds = %bb.dk
  %.not.i.i2146 = icmp eq i32 %.val.i.i2145, 0
  br i1 %.not.i.i2146, label %lean_inc.exit1472, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.gu = atomicrmw sub ptr %i.da, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1472

lean_inc.exit1472:                                ; preds = %bb.dn, %bb.dm, %bb.dl, %lean_del_object.exit2144
  %i.gv = and i64 %i.gk, 1
  %.not.i1469 = icmp eq i64 %i.gv, 0              ; 4 uses
  br i1 %.not.i1469, label %bb.do, label %lean_inc.exit1470

bb.do:                                            ; preds = %lean_inc.exit1472
  %.val.i.i2148 = load i32, ptr %i.ej, align 512, !tbaa !14 ; 3 uses
  %i.gw = icmp sgt i32 %.val.i.i2148, 0
  br i1 %i.gw, label %bb.dp, label %bb.dq, !prof !16

bb.dp:                                            ; preds = %bb.do
  %i.gx = add nuw i32 %.val.i.i2148, 1
  store i32 %i.gx, ptr %i.ej, align 512, !tbaa !14
  br label %lean_inc.exit1470

bb.dq:                                            ; preds = %bb.do
  %.not.i.i2149 = icmp eq i32 %.val.i.i2148, 0
  br i1 %.not.i.i2149, label %lean_inc.exit1470, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.gy = atomicrmw sub ptr %i.ej, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1470

lean_inc.exit1470:                                ; preds = %bb.dr, %bb.dq, %bb.dp, %lean_inc.exit1472
  %i.gz = ptrtoint ptr %i.fb to i64
  %i.ha = and i64 %i.gz, 1
  %.not.i1467 = icmp eq i64 %i.ha, 0              ; 5 uses
  br i1 %.not.i1467, label %bb.ds, label %lean_inc.exit1468

bb.ds:                                            ; preds = %lean_inc.exit1470
  %.val.i.i2151 = load i32, ptr %i.fb, align 4, !tbaa !14 ; 3 uses
  %i.hb = icmp sgt i32 %.val.i.i2151, 0
  br i1 %i.hb, label %bb.dt, label %bb.du, !prof !16

bb.dt:                                            ; preds = %bb.ds
  %i.hc = add nuw i32 %.val.i.i2151, 1
  store i32 %i.hc, ptr %i.fb, align 4, !tbaa !14
  br label %lean_inc.exit1468

bb.du:                                            ; preds = %bb.ds
  %.not.i.i2152 = icmp eq i32 %.val.i.i2151, 0
  br i1 %.not.i.i2152, label %lean_inc.exit1468, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.hd = atomicrmw sub ptr %i.fb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1468

lean_inc.exit1468:                                ; preds = %bb.dv, %bb.du, %bb.dt, %lean_inc.exit1470
  br i1 %.not.i1485, label %bb.dw, label %lean_inc.exit1466

bb.dw:                                            ; preds = %lean_inc.exit1468
  %.val.i.i2154 = load i32, ptr %i.ay, align 4, !tbaa !14 ; 3 uses
  %i.he = icmp sgt i32 %.val.i.i2154, 0
  br i1 %i.he, label %bb.dx, label %bb.dy, !prof !16

bb.dx:                                            ; preds = %bb.dw
  %i.hf = add nuw i32 %.val.i.i2154, 1
  store i32 %i.hf, ptr %i.ay, align 4, !tbaa !14
  br label %lean_inc.exit1466

bb.dy:                                            ; preds = %bb.dw
  %.not.i.i2155 = icmp eq i32 %.val.i.i2154, 0
  br i1 %.not.i.i2155, label %lean_inc.exit1466, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.hg = atomicrmw sub ptr %i.ay, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1466

lean_inc.exit1466:                                ; preds = %bb.dz, %bb.dy, %bb.dx, %lean_inc.exit1468
  %i.hh = tail call ptr @lean_alloc_object(i64 noundef 104) #6 ; 30 uses
  store i32 1, ptr %i.hh, align 4, !tbaa !14
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = and i32 %i.hj, 65535
  %i.hl = or disjoint i32 %i.hk, -184549376
  store i32 %i.hl, ptr %i.hi, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__8___redArg___lam__1___boxed, ptr %i.hm, align 8, !tbaa !10
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store i16 16, ptr %i.hn, align 8, !tbaa !22
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 18
  store i16 10, ptr %i.ho, align 2, !tbaa !22
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  store ptr %i.ay, ptr %i.hp, align 8, !tbaa !10
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  store ptr %i.fb, ptr %i.hq, align 8, !tbaa !10
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.hr, align 8, !tbaa !10
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  store ptr %i.ej, ptr %i.hs, align 8, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  store ptr %i.da, ptr %i.ht, align 8, !tbaa !10
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.hu, align 8, !tbaa !10
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hh, i64 72
  store <2 x ptr> %i.w, ptr %i.hv, align 8, !tbaa !10
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hh, i64 88
  store <2 x ptr> %i.ac, ptr %i.hw, align 8, !tbaa !10
  %i.hx = load ptr, ptr @l_Lean_Meta_backward_inferInstanceAs_wrap_reuseSubInstances, align 8, !tbaa !10
  %i.hy = tail call zeroext i8 @l_Lean_Option_get___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__0(ptr noundef %i.gr, ptr noundef %i.hx)
  %i.hz = icmp eq i8 %i.hy, 0
  br i1 %i.hz, label %bb.ea, label %bb.em

bb.ea:                                            ; preds = %lean_inc.exit1466
  %i.ia = load i32, ptr %i.hh, align 8, !tbaa !14 ; 3 uses
  %i.ib = icmp sgt i32 %i.ia, 1
  br i1 %i.ib, label %bb.eb, label %bb.ec, !prof !16

bb.eb:                                            ; preds = %bb.ea
  %i.ic = add nsw i32 %i.ia, -1
  store i32 %i.ic, ptr %i.hh, align 8, !tbaa !14
  br label %lean_dec_ref.exit2062

bb.ec:                                            ; preds = %bb.ea
  %.not.i2061 = icmp eq i32 %i.ia, 0
  br i1 %.not.i2061, label %lean_dec_ref.exit2062, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hh) #6
  br label %lean_dec_ref.exit2062

lean_dec_ref.exit2062:                            ; preds = %bb.eb, %bb.ec, %bb.ed
  br i1 %.not.i1481, label %bb.ee, label %lean_dec.exit1729

bb.ee:                                            ; preds = %lean_dec_ref.exit2062
  %i.id = load i32, ptr %i.cd, align 4, !tbaa !14 ; 3 uses
  %i.ie = icmp sgt i32 %i.id, 1
  br i1 %i.ie, label %bb.ef, label %bb.eg, !prof !16

bb.ef:                                            ; preds = %bb.ee
  %i.if = add nsw i32 %i.id, -1
  store i32 %i.if, ptr %i.cd, align 4, !tbaa !14
  br label %lean_dec.exit1729

bb.eg:                                            ; preds = %bb.ee
  %.not.i1761 = icmp eq i32 %i.id, 0
  br i1 %.not.i1761, label %lean_dec.exit1729, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #6
  br label %lean_dec.exit1729

lean_dec.exit1729:                                ; preds = %bb.eh, %bb.eg, %bb.ef, %lean_dec_ref.exit2062
  br i1 %.not.i1467, label %bb.ei, label %lean_inc.exit1464

bb.ei:                                            ; preds = %lean_dec.exit1729
  %.val.i.i2157 = load i32, ptr %i.fb, align 4, !tbaa !14 ; 3 uses
  %i.ig = icmp sgt i32 %.val.i.i2157, 0
  br i1 %i.ig, label %bb.ej, label %bb.ek, !prof !16

bb.ej:                                            ; preds = %bb.ei
  %i.ih = add nuw i32 %.val.i.i2157, 1
  store i32 %i.ih, ptr %i.fb, align 4, !tbaa !14
  br label %lean_inc.exit1464

bb.ek:                                            ; preds = %bb.ei
  %.not.i.i2158 = icmp eq i32 %.val.i.i2157, 0
  br i1 %.not.i.i2158, label %lean_inc.exit1464, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ii = atomicrmw sub ptr %i.fb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1464

lean_inc.exit1464:                                ; preds = %bb.el, %bb.ek, %bb.ej, %lean_dec.exit1729
  %i.ij = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__8___redArg___lam__1(ptr noundef %i.ay, ptr noundef %i.fb, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.ej, ptr noundef %i.da, i8 noundef zeroext 0, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %7, ptr nonnull poison, ptr noundef %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15)
  br label %bb.asu

bb.em:                                            ; preds = %lean_inc.exit1466
  br i1 %.not.i1481, label %bb.en, label %lean_inc.exit1462

bb.en:                                            ; preds = %bb.em
  %.val.i.i2160 = load i32, ptr %i.cd, align 4, !tbaa !14 ; 3 uses
  %i.ik = icmp sgt i32 %.val.i.i2160, 0
  br i1 %i.ik, label %bb.eo, label %bb.ep, !prof !16

bb.eo:                                            ; preds = %bb.en
  %i.il = add nuw i32 %.val.i.i2160, 1
  store i32 %i.il, ptr %i.cd, align 4, !tbaa !14
  br label %lean_inc.exit1462

bb.ep:                                            ; preds = %bb.en
  %.not.i.i2161 = icmp eq i32 %.val.i.i2160, 0
  br i1 %.not.i.i2161, label %lean_inc.exit1462, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.im = atomicrmw sub ptr %i.cd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1462

lean_inc.exit1462:                                ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.em
  br i1 %.not.i1459, label %bb.er, label %lean_inc.exit1460

bb.er:                                            ; preds = %lean_inc.exit1462
  %.val.i.i2163 = load i32, ptr %8, align 4, !tbaa !14 ; 3 uses
  %i.in = icmp sgt i32 %.val.i.i2163, 0
  br i1 %i.in, label %bb.es, label %bb.et, !prof !16

bb.es:                                            ; preds = %bb.er
  %i.io = add nuw i32 %.val.i.i2163, 1
  store i32 %i.io, ptr %8, align 4, !tbaa !14
  br label %lean_inc.exit1460

bb.et:                                            ; preds = %bb.er
  %.not.i.i2164 = icmp eq i32 %.val.i.i2163, 0
  br i1 %.not.i.i2164, label %lean_inc.exit1460, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ip = atomicrmw sub ptr %8, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1460

lean_inc.exit1460:                                ; preds = %bb.eu, %bb.et, %bb.es, %lean_inc.exit1462
  %i.iq = tail call ptr @l___private_Lean_Meta_WrapInstance_0__Lean_Meta_getFieldOrigin(ptr noundef %8, ptr noundef %i.cd, ptr noundef %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15) ; 10 uses
  %i.ir = ptrtoint ptr %i.iq to i64               ; 2 uses
  %i.is = and i64 %i.ir, 1
end_hunk_8
begin_hunk_9_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__14___redArg:bb.a

bb.cm:                                            ; preds = %bb.cl
  %.val.i.i2135 = load i32, ptr %i.cb, align 4, !tbaa !14 ; 3 uses
  %i.el = icmp sgt i32 %.val.i.i2135, 0
  br i1 %i.el, label %bb.cn, label %bb.co, !prof !16

bb.cn:                                            ; preds = %bb.cm
  %i.em = add nuw i32 %.val.i.i2135, 1
  store i32 %i.em, ptr %i.cb, align 4, !tbaa !14
  br label %lean_inc.exit1484

bb.co:                                            ; preds = %bb.cm
  %.not.i.i2136 = icmp eq i32 %.val.i.i2135, 0
  br i1 %.not.i.i2136, label %lean_inc.exit1484, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.en = atomicrmw sub ptr %i.cb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1484

lean_inc.exit1484:                                ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cl
  %i.eo = tail call ptr @l_Lean_Meta_isClass_x3f(ptr noundef %i.cb, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15) #6 ; 14 uses
  %i.ep = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.eq = and i64 %i.ep, 1
  %.not.i2138 = icmp eq i64 %i.eq, 0              ; 3 uses
  br i1 %.not.i2138, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %lean_inc.exit1484
  %i.er = lshr i64 %i.ep, 1
  %i.es = trunc i64 %i.er to i32
  br label %lean_obj_tag.exit2141

bb.cr:                                            ; preds = %lean_inc.exit1484
  %i.et = getelementptr i8, ptr %i.eo, i64 4
  %.val.i2140 = load i32, ptr %i.et, align 4
  %i.eu = lshr i32 %.val.i2140, 24
  br label %lean_obj_tag.exit2141

lean_obj_tag.exit2141:                            ; preds = %bb.cq, %bb.cr
  %.0.i2139 = phi i32 [ %i.es, %bb.cq ], [ %i.eu, %bb.cr ]
  %i.ev = icmp eq i32 %.0.i2139, 0
  br i1 %i.ev, label %bb.cs, label %bb.zp

bb.cs:                                            ; preds = %lean_obj_tag.exit2141
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !10 ; 6 uses
  %.val2091 = load i32, ptr %i.eo, align 8, !tbaa !14
  %i.ey = icmp eq i32 %.val2091, 1                ; 2 uses
  %.pre = ptrtoint ptr %i.ex to i64               ; 2 uses
  %.pre2621 = and i64 %.pre, 1                    ; 2 uses
  br i1 %i.ey, label %lean_dec.exit1739, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.not.i1481 = icmp eq i64 %.pre2621, 0
  br i1 %.not.i1481, label %bb.cu, label %lean_inc.exit1482

bb.cu:                                            ; preds = %bb.ct
  %.val.i.i2142 = load i32, ptr %i.ex, align 4, !tbaa !14 ; 3 uses
  %i.ez = icmp sgt i32 %.val.i.i2142, 0
  br i1 %i.ez, label %bb.cv, label %bb.cw, !prof !16

bb.cv:                                            ; preds = %bb.cu
  %i.fa = add nuw i32 %.val.i.i2142, 1
  store i32 %i.fa, ptr %i.ex, align 4, !tbaa !14
  br label %lean_inc.exit1482

bb.cw:                                            ; preds = %bb.cu
  %.not.i.i2143 = icmp eq i32 %.val.i.i2142, 0
  br i1 %.not.i.i2143, label %lean_inc.exit1482, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.fb = atomicrmw sub ptr %i.ex, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1482

lean_inc.exit1482:                                ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.ct
  br i1 %.not.i2138, label %bb.cy, label %lean_dec.exit1739

bb.cy:                                            ; preds = %lean_inc.exit1482
  %i.fc = load i32, ptr %i.eo, align 8, !tbaa !14 ; 3 uses
  %i.fd = icmp sgt i32 %i.fc, 1
  br i1 %i.fd, label %bb.cz, label %bb.da, !prof !16

bb.cz:                                            ; preds = %bb.cy
  %i.fe = add nsw i32 %i.fc, -1
  store i32 %i.fe, ptr %i.eo, align 8, !tbaa !14
  br label %lean_dec.exit1739

bb.da:                                            ; preds = %bb.cy
  %.not.i1767 = icmp eq i32 %i.fc, 0
  br i1 %.not.i1767, label %lean_dec.exit1739, label %bb.db

bb.db:                                            ; preds = %bb.da
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eo) #6
  br label %lean_dec.exit1739

lean_dec.exit1739:                                ; preds = %bb.cs, %lean_inc.exit1482, %bb.cz, %bb.da, %bb.db
  %.01269 = phi ptr [ inttoptr (i64 1 to ptr), %bb.db ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1482 ], [ inttoptr (i64 1 to ptr), %bb.cz ], [ inttoptr (i64 1 to ptr), %bb.da ], [ %i.eo, %bb.cs ] ; 15 uses
  %.not.i2145 = icmp eq i64 %.pre2621, 0
  br i1 %.not.i2145, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %lean_dec.exit1739
  %i.ff = lshr i64 %.pre, 1
  %i.fg = trunc i64 %i.ff to i32
  br label %lean_obj_tag.exit2148

bb.dd:                                            ; preds = %lean_dec.exit1739
  %i.fh = getelementptr i8, ptr %i.ex, i64 4
  %.val.i2147 = load i32, ptr %i.fh, align 4
  %i.fi = lshr i32 %.val.i2147, 24
  br label %lean_obj_tag.exit2148

lean_obj_tag.exit2148:                            ; preds = %bb.dc, %bb.dd
  %.0.i2146 = phi i32 [ %i.fg, %bb.dc ], [ %i.fi, %bb.dd ]
  %i.fj = icmp eq i32 %.0.i2146, 0
  br i1 %i.fj, label %bb.de, label %bb.pm

bb.de:                                            ; preds = %lean_obj_tag.exit2148
  %i.fk = icmp eq i8 %6, 0
  br i1 %i.fk, label %bb.df, label %bb.pf

bb.df:                                            ; preds = %bb.de
  %i.fl = ptrtoint ptr %.01269 to i64
  %i.fm = and i64 %i.fl, 1
  %.not.i2149 = icmp eq i64 %i.fm, 0
  br i1 %.not.i2149, label %bb.dg, label %lean_del_object.exit

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_free_object(ptr noundef nonnull %.01269) #6
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.df, %bb.dg
  %i.fn = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.fo = and i64 %i.fn, 510
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %bb.dh, label %bb.oc

bb.dh:                                            ; preds = %lean_del_object.exit
  %i.fq = ptrtoint ptr %.01264 to i64
  %i.fr = and i64 %i.fq, 1
  %.not.i2150 = icmp eq i64 %i.fr, 0
  br i1 %.not.i2150, label %bb.di, label %lean_del_object.exit2151

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_free_object(ptr noundef nonnull %.01264) #6
  br label %lean_del_object.exit2151

lean_del_object.exit2151:                         ; preds = %bb.dh, %bb.di
  %i.fs = ptrtoint ptr %.01259 to i64
  %i.ft = and i64 %i.fs, 1
  %.not.i2152 = icmp eq i64 %i.ft, 0
  br i1 %.not.i2152, label %bb.dj, label %lean_del_object.exit2153

bb.dj:                                            ; preds = %lean_del_object.exit2151
  tail call void @lean_free_object(ptr noundef nonnull %.01259) #6
  br label %lean_del_object.exit2153

lean_del_object.exit2153:                         ; preds = %lean_del_object.exit2151, %bb.dj
  %i.fu = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !10
  %i.fw = zext i8 %3 to i64
  %i.fx = shl nuw nsw i64 %i.fw, 1
  %i.fy = or disjoint i64 %i.fx, 1
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = zext i8 %4 to i64
  %i.gb = shl nuw nsw i64 %i.ga, 1
  %i.gc = or disjoint i64 %i.gb, 1
  %i.gd = inttoptr i64 %i.gc to ptr
  %i.ge = zext i8 %5 to i64
  %i.gf = shl nuw nsw i64 %i.ge, 1
  %i.gg = or disjoint i64 %i.gf, 1
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = zext i8 %7 to i64
  %i.gj = shl nuw nsw i64 %i.gi, 1
  %i.gk = or disjoint i64 %i.gj, 1
  %i.gl = inttoptr i64 %i.gk to ptr
  br i1 %.not.i2111, label %bb.dk, label %lean_inc.exit1480

bb.dk:                                            ; preds = %lean_del_object.exit2153
  %.val.i.i2154 = load i32, ptr %i.cb, align 4, !tbaa !14 ; 3 uses
  %i.gm = icmp sgt i32 %.val.i.i2154, 0
  br i1 %i.gm, label %bb.dl, label %bb.dm, !prof !16

bb.dl:                                            ; preds = %bb.dk
  %i.gn = add nuw i32 %.val.i.i2154, 1
  store i32 %i.gn, ptr %i.cb, align 4, !tbaa !14
  br label %lean_inc.exit1480

bb.dm:                                            ; preds = %bb.dk
  %.not.i.i2155 = icmp eq i32 %.val.i.i2154, 0
  br i1 %.not.i.i2155, label %lean_inc.exit1480, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.go = atomicrmw sub ptr %i.cb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1480

lean_inc.exit1480:                                ; preds = %bb.dn, %bb.dm, %bb.dl, %lean_del_object.exit2153
  %i.gp = and i64 %i.fn, 1
  %.not.i1477 = icmp eq i64 %i.gp, 0              ; 4 uses
  br i1 %.not.i1477, label %bb.do, label %lean_inc.exit1478

bb.do:                                            ; preds = %lean_inc.exit1480
  %.val.i.i2157 = load i32, ptr %i.dk, align 512, !tbaa !14 ; 3 uses
  %i.gq = icmp sgt i32 %.val.i.i2157, 0
  br i1 %i.gq, label %bb.dp, label %bb.dq, !prof !16

bb.dp:                                            ; preds = %bb.do
  %i.gr = add nuw i32 %.val.i.i2157, 1
  store i32 %i.gr, ptr %i.dk, align 512, !tbaa !14
  br label %lean_inc.exit1478

bb.dq:                                            ; preds = %bb.do
  %.not.i.i2158 = icmp eq i32 %.val.i.i2157, 0
  br i1 %.not.i.i2158, label %lean_inc.exit1478, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.gs = atomicrmw sub ptr %i.dk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1478

lean_inc.exit1478:                                ; preds = %bb.dr, %bb.dq, %bb.dp, %lean_inc.exit1480
  %i.gt = ptrtoint ptr %i.ed to i64
  %i.gu = and i64 %i.gt, 1
  %.not.i1475 = icmp eq i64 %i.gu, 0              ; 5 uses
  br i1 %.not.i1475, label %bb.ds, label %lean_inc.exit1476

bb.ds:                                            ; preds = %lean_inc.exit1478
  %.val.i.i2160 = load i32, ptr %i.ed, align 4, !tbaa !14 ; 3 uses
  %i.gv = icmp sgt i32 %.val.i.i2160, 0
  br i1 %i.gv, label %bb.dt, label %bb.du, !prof !16

bb.dt:                                            ; preds = %bb.ds
  %i.gw = add nuw i32 %.val.i.i2160, 1
  store i32 %i.gw, ptr %i.ed, align 4, !tbaa !14
  br label %lean_inc.exit1476

bb.du:                                            ; preds = %bb.ds
  %.not.i.i2161 = icmp eq i32 %.val.i.i2160, 0
  br i1 %.not.i.i2161, label %lean_inc.exit1476, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.gx = atomicrmw sub ptr %i.ed, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1476

lean_inc.exit1476:                                ; preds = %bb.dv, %bb.du, %bb.dt, %lean_inc.exit1478
  br i1 %.not.i1493, label %bb.dw, label %lean_inc.exit1474

bb.dw:                                            ; preds = %lean_inc.exit1476
  %.val.i.i2163 = load i32, ptr %i.z, align 4, !tbaa !14 ; 3 uses
  %i.gy = icmp sgt i32 %.val.i.i2163, 0
  br i1 %i.gy, label %bb.dx, label %bb.dy, !prof !16

bb.dx:                                            ; preds = %bb.dw
  %i.gz = add nuw i32 %.val.i.i2163, 1
  store i32 %i.gz, ptr %i.z, align 4, !tbaa !14
  br label %lean_inc.exit1474

bb.dy:                                            ; preds = %bb.dw
  %.not.i.i2164 = icmp eq i32 %.val.i.i2163, 0
  br i1 %.not.i.i2164, label %lean_inc.exit1474, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ha = atomicrmw sub ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1474

lean_inc.exit1474:                                ; preds = %bb.dz, %bb.dy, %bb.dx, %lean_inc.exit1476
  %i.hb = tail call ptr @lean_alloc_object(i64 noundef 104) #6 ; 32 uses
  store i32 1, ptr %i.hb, align 4, !tbaa !14
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = and i32 %i.hd, 65535
  %i.hf = or disjoint i32 %i.he, -184549376
  store i32 %i.hf, ptr %i.hc, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__8___redArg___lam__1___boxed, ptr %i.hg, align 8, !tbaa !10
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i16 16, ptr %i.hh, align 8, !tbaa !22
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 18
  store i16 10, ptr %i.hi, align 2, !tbaa !22
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  store ptr %i.z, ptr %i.hj, align 8, !tbaa !10
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  store ptr %i.ed, ptr %i.hk, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.hl, align 8, !tbaa !10
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  store ptr %i.dk, ptr %i.hm, align 8, !tbaa !10
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  store ptr %i.cb, ptr %i.hn, align 8, !tbaa !10
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.ho, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hb, i64 72
  store ptr %i.fz, ptr %i.hp, align 8, !tbaa !10
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hb, i64 80
  store ptr %i.gd, ptr %i.hq, align 8, !tbaa !10
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hb, i64 88
  store ptr %i.gh, ptr %i.hr, align 8, !tbaa !10
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hb, i64 96
  store ptr %i.gl, ptr %i.hs, align 8, !tbaa !10
  %i.ht = load ptr, ptr @l_Lean_Meta_backward_inferInstanceAs_wrap_reuseSubInstances, align 8, !tbaa !10
  %i.hu = tail call zeroext i8 @l_Lean_Option_get___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__0(ptr noundef %i.fv, ptr noundef %i.ht)
  %i.hv = icmp eq i8 %i.hu, 0
  br i1 %i.hv, label %bb.ea, label %bb.em

bb.ea:                                            ; preds = %lean_inc.exit1474
  %i.hw = load i32, ptr %i.hb, align 8, !tbaa !14 ; 3 uses
  %i.hx = icmp sgt i32 %i.hw, 1
  br i1 %i.hx, label %bb.eb, label %bb.ec, !prof !16

bb.eb:                                            ; preds = %bb.ea
  %i.hy = add nsw i32 %i.hw, -1
  store i32 %i.hy, ptr %i.hb, align 8, !tbaa !14
  br label %lean_dec_ref.exit2070

bb.ec:                                            ; preds = %bb.ea
  %.not.i2069 = icmp eq i32 %i.hw, 0
  br i1 %.not.i2069, label %lean_dec_ref.exit2070, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hb) #6
  br label %lean_dec_ref.exit2070

lean_dec_ref.exit2070:                            ; preds = %bb.eb, %bb.ec, %bb.ed
  br i1 %.not.i1489, label %bb.ee, label %lean_dec.exit1737

bb.ee:                                            ; preds = %lean_dec_ref.exit2070
  %i.hz = load i32, ptr %i.be, align 4, !tbaa !14 ; 3 uses
  %i.ia = icmp sgt i32 %i.hz, 1
  br i1 %i.ia, label %bb.ef, label %bb.eg, !prof !16

bb.ef:                                            ; preds = %bb.ee
  %i.ib = add nsw i32 %i.hz, -1
  store i32 %i.ib, ptr %i.be, align 4, !tbaa !14
  br label %lean_dec.exit1737

bb.eg:                                            ; preds = %bb.ee
  %.not.i1769 = icmp eq i32 %i.hz, 0
  br i1 %.not.i1769, label %lean_dec.exit1737, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #6
  br label %lean_dec.exit1737

lean_dec.exit1737:                                ; preds = %bb.eh, %bb.eg, %bb.ef, %lean_dec_ref.exit2070
  br i1 %.not.i1475, label %bb.ei, label %lean_inc.exit1472

bb.ei:                                            ; preds = %lean_dec.exit1737
  %.val.i.i2166 = load i32, ptr %i.ed, align 4, !tbaa !14 ; 3 uses
  %i.ic = icmp sgt i32 %.val.i.i2166, 0
  br i1 %i.ic, label %bb.ej, label %bb.ek, !prof !16

bb.ej:                                            ; preds = %bb.ei
  %i.id = add nuw i32 %.val.i.i2166, 1
  store i32 %i.id, ptr %i.ed, align 4, !tbaa !14
  br label %lean_inc.exit1472

bb.ek:                                            ; preds = %bb.ei
  %.not.i.i2167 = icmp eq i32 %.val.i.i2166, 0
  br i1 %.not.i.i2167, label %lean_inc.exit1472, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ie = atomicrmw sub ptr %i.ed, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1472

lean_inc.exit1472:                                ; preds = %bb.el, %bb.ek, %bb.ej, %lean_dec.exit1737
  %i.if = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__8___redArg___lam__1(ptr noundef %i.z, ptr noundef %i.ed, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.dk, ptr noundef %i.cb, i8 noundef zeroext 0, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %7, ptr nonnull poison, ptr noundef %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15)
  br label %bb.aqv

bb.em:                                            ; preds = %lean_inc.exit1474
  br i1 %.not.i1489, label %bb.en, label %lean_inc.exit1470

bb.en:                                            ; preds = %bb.em
  %.val.i.i2169 = load i32, ptr %i.be, align 4, !tbaa !14 ; 3 uses
  %i.ig = icmp sgt i32 %.val.i.i2169, 0
  br i1 %i.ig, label %bb.eo, label %bb.ep, !prof !16

bb.eo:                                            ; preds = %bb.en
  %i.ih = add nuw i32 %.val.i.i2169, 1
  store i32 %i.ih, ptr %i.be, align 4, !tbaa !14
  br label %lean_inc.exit1470

bb.ep:                                            ; preds = %bb.en
  %.not.i.i2170 = icmp eq i32 %.val.i.i2169, 0
  br i1 %.not.i.i2170, label %lean_inc.exit1470, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ii = atomicrmw sub ptr %i.be, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1470

lean_inc.exit1470:                                ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.em
  %i.ij = ptrtoint ptr %8 to i64
  %i.ik = and i64 %i.ij, 1
  %.not.i1467 = icmp eq i64 %i.ik, 0              ; 6 uses
  br i1 %.not.i1467, label %bb.er, label %lean_inc.exit1468

bb.er:                                            ; preds = %lean_inc.exit1470
  %.val.i.i2172 = load i32, ptr %8, align 4, !tbaa !14 ; 3 uses
  %i.il = icmp sgt i32 %.val.i.i2172, 0
  br i1 %i.il, label %bb.es, label %bb.et, !prof !16

bb.es:                                            ; preds = %bb.er
  %i.im = add nuw i32 %.val.i.i2172, 1
  store i32 %i.im, ptr %8, align 4, !tbaa !14
  br label %lean_inc.exit1468

bb.et:                                            ; preds = %bb.er
  %.not.i.i2173 = icmp eq i32 %.val.i.i2172, 0
  br i1 %.not.i.i2173, label %lean_inc.exit1468, label %bb.eu

bb.eu:                                            ; preds = %bb.et
end_hunk_9
begin_hunk_10_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__14___redArg:bb.a
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store ptr %.0.i2215, ptr %i.ng, align 8, !tbaa !10
  %i.nh = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__2(ptr noundef nonnull @l___private_Lean_Meta_WrapInstance_0__Lean_Meta_initFn___closed__1_00___x40_Lean_Meta_WrapInstance_3246864463____hygCtx___hyg_2__value, ptr noundef nonnull %i.ne, ptr noundef %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15) ; 10 uses
  %i.ni = ptrtoint ptr %i.nh to i64               ; 2 uses
  %i.nj = and i64 %i.ni, 1
  %.not.i2217 = icmp eq i64 %i.nj, 0              ; 2 uses
  br i1 %.not.i2217, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %lean_obj_once.exit2216
  %i.nk = lshr i64 %i.ni, 1
  %i.nl = trunc i64 %i.nk to i32
  br label %lean_obj_tag.exit2220

bb.hp:                                            ; preds = %lean_obj_once.exit2216
  %i.nm = getelementptr i8, ptr %i.nh, i64 4
  %.val.i2219 = load i32, ptr %i.nm, align 4
  %i.nn = lshr i32 %.val.i2219, 24
  br label %lean_obj_tag.exit2220

lean_obj_tag.exit2220:                            ; preds = %bb.ho, %bb.hp
  %.0.i2218 = phi i32 [ %i.nl, %bb.ho ], [ %i.nn, %bb.hp ]
  %i.no = icmp eq i32 %.0.i2218, 0
  br i1 %i.no, label %bb.hq, label %bb.ig

bb.hq:                                            ; preds = %lean_obj_tag.exit2220
  %i.np = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !10 ; 4 uses
  %i.nr = ptrtoint ptr %i.nq to i64
  %i.ns = and i64 %i.nr, 1
  %.not.i1449 = icmp eq i64 %i.ns, 0
  br i1 %.not.i1449, label %bb.hr, label %lean_inc.exit1450

bb.hr:                                            ; preds = %bb.hq
  %.val.i.i2221 = load i32, ptr %i.nq, align 4, !tbaa !14 ; 3 uses
  %i.nt = icmp sgt i32 %.val.i.i2221, 0
  br i1 %i.nt, label %bb.hs, label %bb.ht, !prof !16

bb.hs:                                            ; preds = %bb.hr
  %i.nu = add nuw i32 %.val.i.i2221, 1
  store i32 %i.nu, ptr %i.nq, align 4, !tbaa !14
  br label %lean_inc.exit1450

bb.ht:                                            ; preds = %bb.hr
  %.not.i.i2222 = icmp eq i32 %.val.i.i2221, 0
  br i1 %.not.i.i2222, label %lean_inc.exit1450, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.nv = atomicrmw sub ptr %i.nq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1450

lean_inc.exit1450:                                ; preds = %bb.hu, %bb.ht, %bb.hs, %bb.hq
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.nh, i32 noundef 1)
  br i1 %.not.i1475, label %bb.hv, label %lean_inc.exit1448

bb.hv:                                            ; preds = %lean_inc.exit1450
  %.val.i.i2224 = load i32, ptr %i.ed, align 4, !tbaa !14 ; 3 uses
  %i.nw = icmp sgt i32 %.val.i.i2224, 0
  br i1 %i.nw, label %bb.hw, label %bb.hx, !prof !16

bb.hw:                                            ; preds = %bb.hv
  %i.nx = add nuw i32 %.val.i.i2224, 1
  store i32 %i.nx, ptr %i.ed, align 4, !tbaa !14
  br label %lean_inc.exit1448

bb.hx:                                            ; preds = %bb.hv
  %.not.i.i2225 = icmp eq i32 %.val.i.i2224, 0
  br i1 %.not.i.i2225, label %lean_inc.exit1448, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.ny = atomicrmw sub ptr %i.ed, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1448

lean_inc.exit1448:                                ; preds = %bb.hy, %bb.hx, %bb.hw, %lean_inc.exit1450
  %.val.i.i2227 = load i32, ptr %9, align 4, !tbaa !14 ; 3 uses
  %i.nz = icmp sgt i32 %.val.i.i2227, 0
  br i1 %i.nz, label %bb.hz, label %bb.ia, !prof !16

bb.hz:                                            ; preds = %lean_inc.exit1448
  %i.oa = add nuw i32 %.val.i.i2227, 1
  store i32 %i.oa, ptr %9, align 4, !tbaa !14
  br label %lean_inc_ref.exit2229

bb.ia:                                            ; preds = %lean_inc.exit1448
  %.not.i.i2228 = icmp eq i32 %.val.i.i2227, 0
  br i1 %.not.i.i2228, label %lean_inc_ref.exit2229, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.ob = atomicrmw sub ptr %9, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2229

lean_inc_ref.exit2229:                            ; preds = %bb.hz, %bb.ia, %bb.ib
  br i1 %.not.i1467, label %bb.ic, label %lean_inc.exit1446

bb.ic:                                            ; preds = %lean_inc_ref.exit2229
  %.val.i.i2230 = load i32, ptr %8, align 4, !tbaa !14 ; 3 uses
  %i.oc = icmp sgt i32 %.val.i.i2230, 0
  br i1 %i.oc, label %bb.id, label %bb.ie, !prof !16

bb.id:                                            ; preds = %bb.ic
  %i.od = add nuw i32 %.val.i.i2230, 1
  store i32 %i.od, ptr %8, align 4, !tbaa !14
  br label %lean_inc.exit1446

bb.ie:                                            ; preds = %bb.ic
  %.not.i.i2231 = icmp eq i32 %.val.i.i2230, 0
  br i1 %.not.i.i2231, label %lean_inc.exit1446, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.oe = atomicrmw sub ptr %8, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1446

lean_inc.exit1446:                                ; preds = %bb.if, %bb.ie, %bb.id, %lean_inc_ref.exit2229
  %i.of = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__14___redArg___lam__5(ptr noundef %8, ptr noundef %i.je, ptr noundef nonnull %9, ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__14_spec__24___redArg___closed__0_value, ptr noundef nonnull %i.hb, ptr noundef nonnull @l___private_Lean_Meta_WrapInstance_0__Lean_Meta_initFn___closed__1_00___x40_Lean_Meta_WrapInstance_3246864463____hygCtx___hyg_2__value, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.dk, ptr noundef %i.jg, ptr noundef %i.ed, ptr noundef nonnull %i.ku, ptr noundef %i.z, ptr poison, ptr noundef %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15)
  br label %bb.aqv

bb.ig:                                            ; preds = %lean_obj_tag.exit2220
  %i.og = load i32, ptr %i.ku, align 8, !tbaa !14 ; 3 uses
  %i.oh = icmp sgt i32 %i.og, 1
  br i1 %i.oh, label %bb.ih, label %bb.ii, !prof !16

bb.ih:                                            ; preds = %bb.ig
  %i.oi = add nsw i32 %i.og, -1
  store i32 %i.oi, ptr %i.ku, align 8, !tbaa !14
  br label %lean_dec_ref.exit2068

bb.ii:                                            ; preds = %bb.ig
  %.not.i2067 = icmp eq i32 %i.og, 0
  br i1 %.not.i2067, label %lean_dec_ref.exit2068, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ku) #6
  br label %lean_dec_ref.exit2068

lean_dec_ref.exit2068:                            ; preds = %bb.ih, %bb.ii, %bb.ij
  %i.oj = ptrtoint ptr %i.jg to i64
  %i.ok = and i64 %i.oj, 1
  %.not.i1726 = icmp eq i64 %i.ok, 0
  br i1 %.not.i1726, label %bb.ik, label %lean_dec.exit1727

bb.ik:                                            ; preds = %lean_dec_ref.exit2068
  %i.ol = load i32, ptr %i.jg, align 4, !tbaa !14 ; 3 uses
  %i.om = icmp sgt i32 %i.ol, 1
  br i1 %i.om, label %bb.il, label %bb.im, !prof !16

bb.il:                                            ; preds = %bb.ik
  %i.on = add nsw i32 %i.ol, -1
  store i32 %i.on, ptr %i.jg, align 4, !tbaa !14
  br label %lean_dec.exit1727

bb.im:                                            ; preds = %bb.ik
  %.not.i1779 = icmp eq i32 %i.ol, 0
  br i1 %.not.i1779, label %lean_dec.exit1727, label %bb.in

bb.in:                                            ; preds = %bb.im
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jg) #6
  br label %lean_dec.exit1727

lean_dec.exit1727:                                ; preds = %bb.in, %bb.im, %bb.il, %lean_dec_ref.exit2068
  br i1 %.not.i1457, label %bb.io, label %lean_dec.exit1725

bb.io:                                            ; preds = %lean_dec.exit1727
  %i.oo = load i32, ptr %i.je, align 4, !tbaa !14 ; 3 uses
  %i.op = icmp sgt i32 %i.oo, 1
  br i1 %i.op, label %bb.ip, label %bb.iq, !prof !16

bb.ip:                                            ; preds = %bb.io
  %i.oq = add nsw i32 %i.oo, -1
  store i32 %i.oq, ptr %i.je, align 4, !tbaa !14
  br label %lean_dec.exit1725

bb.iq:                                            ; preds = %bb.io
  %.not.i1781 = icmp eq i32 %i.oo, 0
  br i1 %.not.i1781, label %lean_dec.exit1725, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.je) #6
  br label %lean_dec.exit1725

lean_dec.exit1725:                                ; preds = %bb.ir, %bb.iq, %bb.ip, %lean_dec.exit1727
  %i.or = load i32, ptr %i.hb, align 8, !tbaa !14 ; 3 uses
  %i.os = icmp sgt i32 %i.or, 1
  br i1 %i.os, label %bb.is, label %bb.it, !prof !16

bb.is:                                            ; preds = %lean_dec.exit1725
  %i.ot = add nsw i32 %i.or, -1
  store i32 %i.ot, ptr %i.hb, align 8, !tbaa !14
  br label %lean_dec_ref.exit2066

bb.it:                                            ; preds = %lean_dec.exit1725
  %.not.i2065 = icmp eq i32 %i.or, 0
  br i1 %.not.i2065, label %lean_dec_ref.exit2066, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hb) #6
  br label %lean_dec_ref.exit2066

lean_dec_ref.exit2066:                            ; preds = %bb.is, %bb.it, %bb.iu
  br i1 %.not.i1477, label %bb.iv, label %lean_dec.exit1723

bb.iv:                                            ; preds = %lean_dec_ref.exit2066
  %i.ou = load i32, ptr %i.dk, align 512, !tbaa !14 ; 3 uses
  %i.ov = icmp sgt i32 %i.ou, 1
  br i1 %i.ov, label %bb.iw, label %bb.ix, !prof !16

bb.iw:                                            ; preds = %bb.iv
  %i.ow = add nsw i32 %i.ou, -1
  store i32 %i.ow, ptr %i.dk, align 512, !tbaa !14
  br label %lean_dec.exit1723

bb.ix:                                            ; preds = %bb.iv
  %.not.i1783 = icmp eq i32 %i.ou, 0
  br i1 %.not.i1783, label %lean_dec.exit1723, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dk) #6
  br label %lean_dec.exit1723

lean_dec.exit1723:                                ; preds = %bb.iy, %bb.ix, %bb.iw, %lean_dec_ref.exit2066
  br i1 %.not.i1493, label %bb.iz, label %lean_dec.exit1721

bb.iz:                                            ; preds = %lean_dec.exit1723
  %i.ox = load i32, ptr %i.z, align 4, !tbaa !14  ; 3 uses
  %i.oy = icmp sgt i32 %i.ox, 1
  br i1 %i.oy, label %bb.ja, label %bb.jb, !prof !16

bb.ja:                                            ; preds = %bb.iz
  %i.oz = add nsw i32 %i.ox, -1
  store i32 %i.oz, ptr %i.z, align 4, !tbaa !14
  br label %lean_dec.exit1721

bb.jb:                                            ; preds = %bb.iz
  %.not.i1785 = icmp eq i32 %i.ox, 0
  br i1 %.not.i1785, label %lean_dec.exit1721, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #6
  br label %lean_dec.exit1721

lean_dec.exit1721:                                ; preds = %bb.jc, %bb.jb, %bb.ja, %lean_dec.exit1723
  br i1 %.not.i2073, label %bb.jd, label %lean_dec.exit1719

bb.jd:                                            ; preds = %lean_dec.exit1721
  %i.pa = load i32, ptr %10, align 4, !tbaa !14   ; 3 uses
  %i.pb = icmp sgt i32 %i.pa, 1
  br i1 %i.pb, label %bb.je, label %bb.jf, !prof !16

bb.je:                                            ; preds = %bb.jd
  %i.pc = add nsw i32 %i.pa, -1
  store i32 %i.pc, ptr %10, align 4, !tbaa !14
  br label %lean_dec.exit1719

bb.jf:                                            ; preds = %bb.jd
  %.not.i1787 = icmp eq i32 %i.pa, 0
  br i1 %.not.i1787, label %lean_dec.exit1719, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #6
  br label %lean_dec.exit1719

lean_dec.exit1719:                                ; preds = %bb.jg, %bb.jf, %bb.je, %lean_dec.exit1721
  %i.pd = load i32, ptr %9, align 4, !tbaa !14    ; 3 uses
  %i.pe = icmp sgt i32 %i.pd, 1
  br i1 %i.pe, label %bb.jh, label %bb.ji, !prof !16

bb.jh:                                            ; preds = %lean_dec.exit1719
  %i.pf = add nsw i32 %i.pd, -1
  store i32 %i.pf, ptr %9, align 4, !tbaa !14
  br label %lean_dec_ref.exit2064

bb.ji:                                            ; preds = %lean_dec.exit1719
  %.not.i2063 = icmp eq i32 %i.pd, 0
  br i1 %.not.i2063, label %lean_dec_ref.exit2064, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #6
  br label %lean_dec_ref.exit2064

lean_dec_ref.exit2064:                            ; preds = %bb.jh, %bb.ji, %bb.jj
  br i1 %.not.i1467, label %bb.jk, label %lean_dec.exit1717

bb.jk:                                            ; preds = %lean_dec_ref.exit2064
  %i.pg = load i32, ptr %8, align 4, !tbaa !14    ; 3 uses
  %i.ph = icmp sgt i32 %i.pg, 1
  br i1 %i.ph, label %bb.jl, label %bb.jm, !prof !16

bb.jl:                                            ; preds = %bb.jk
  %i.pi = add nsw i32 %i.pg, -1
  store i32 %i.pi, ptr %8, align 4, !tbaa !14
  br label %lean_dec.exit1717

bb.jm:                                            ; preds = %bb.jk
  %.not.i1789 = icmp eq i32 %i.pg, 0
  br i1 %.not.i1789, label %lean_dec.exit1717, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #6
  br label %lean_dec.exit1717

lean_dec.exit1717:                                ; preds = %bb.jn, %bb.jm, %bb.jl, %lean_dec_ref.exit2064
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !10 ; 5 uses
  %.val2089 = load i32, ptr %i.nh, align 8, !tbaa !14
  %i.pl = icmp eq i32 %.val2089, 1
  br i1 %i.pl, label %lean_dec.exit, label %bb.jo

bb.jo:                                            ; preds = %lean_dec.exit1717
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = and i64 %i.pm, 1
  %.not.i1443 = icmp eq i64 %i.pn, 0
  br i1 %.not.i1443, label %bb.jp, label %lean_inc.exit1444

bb.jp:                                            ; preds = %bb.jo
  %.val.i.i2233 = load i32, ptr %i.pk, align 4, !tbaa !14 ; 3 uses
  %i.po = icmp sgt i32 %.val.i.i2233, 0
  br i1 %i.po, label %bb.jq, label %bb.jr, !prof !16

bb.jq:                                            ; preds = %bb.jp
  %i.pp = add nuw i32 %.val.i.i2233, 1
  store i32 %i.pp, ptr %i.pk, align 4, !tbaa !14
  br label %lean_inc.exit1444

bb.jr:                                            ; preds = %bb.jp
  %.not.i.i2234 = icmp eq i32 %.val.i.i2233, 0
  br i1 %.not.i.i2234, label %lean_inc.exit1444, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.pq = atomicrmw sub ptr %i.pk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1444

lean_inc.exit1444:                                ; preds = %bb.js, %bb.jr, %bb.jq, %bb.jo
  br i1 %.not.i2217, label %bb.jt, label %bb.jx

bb.jt:                                            ; preds = %lean_inc.exit1444
  %i.pr = load i32, ptr %i.nh, align 8, !tbaa !14 ; 3 uses
  %i.ps = icmp sgt i32 %i.pr, 1
  br i1 %i.ps, label %bb.ju, label %bb.jv, !prof !16

bb.ju:                                            ; preds = %bb.jt
  %i.pt = add nsw i32 %i.pr, -1
  store i32 %i.pt, ptr %i.nh, align 8, !tbaa !14
  br label %bb.jx

bb.jv:                                            ; preds = %bb.jt
  %.not.i1791 = icmp eq i32 %i.pr, 0
  br i1 %.not.i1791, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.nh) #6
  br label %bb.jx

bb.jx:                                            ; preds = %lean_inc.exit1444, %bb.ju, %bb.jv, %bb.jw
  %i.pu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  store ptr %i.pk, ptr %i.pv, align 8, !tbaa !10
  br label %lean_dec.exit

bb.jy:                                            ; preds = %lean_obj_tag.exit2191
  %i.pw = ptrtoint ptr %.01326 to i64
  %i.px = and i64 %i.pw, 1
  %.not.i2236 = icmp eq i64 %i.px, 0
  br i1 %.not.i2236, label %bb.jz, label %lean_del_object.exit2237

bb.jz:                                            ; preds = %bb.jy
  tail call void @lean_free_object(ptr noundef nonnull %.01326) #6
  br label %lean_del_object.exit2237

lean_del_object.exit2237:                         ; preds = %bb.jy, %bb.jz
  %i.py = ptrtoint ptr %i.jg to i64
  %i.pz = and i64 %i.py, 1
  %.not.i1712 = icmp eq i64 %i.pz, 0
  br i1 %.not.i1712, label %bb.ka, label %lean_dec.exit1713

bb.ka:                                            ; preds = %lean_del_object.exit2237
  %i.qa = load i32, ptr %i.jg, align 4, !tbaa !14 ; 3 uses
  %i.qb = icmp sgt i32 %i.qa, 1
  br i1 %i.qb, label %bb.kb, label %bb.kc, !prof !16

bb.kb:                                            ; preds = %bb.ka
  %i.qc = add nsw i32 %i.qa, -1
  store i32 %i.qc, ptr %i.jg, align 4, !tbaa !14
  br label %lean_dec.exit1713

bb.kc:                                            ; preds = %bb.ka
  %.not.i1793 = icmp eq i32 %i.qa, 0
  br i1 %.not.i1793, label %lean_dec.exit1713, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jg) #6
  br label %lean_dec.exit1713

lean_dec.exit1713:                                ; preds = %bb.kd, %bb.kc, %bb.kb, %lean_del_object.exit2237
  %i.qd = ptrtoint ptr %i.je to i64
  %i.qe = and i64 %i.qd, 1
  %.not.i1710 = icmp eq i64 %i.qe, 0
  br i1 %.not.i1710, label %bb.ke, label %lean_dec.exit1711

bb.ke:                                            ; preds = %lean_dec.exit1713
  %i.qf = load i32, ptr %i.je, align 4, !tbaa !14 ; 3 uses
  %i.qg = icmp sgt i32 %i.qf, 1
  br i1 %i.qg, label %bb.kf, label %bb.kg, !prof !16

bb.kf:                                            ; preds = %bb.ke
  %i.qh = add nsw i32 %i.qf, -1
  store i32 %i.qh, ptr %i.je, align 4, !tbaa !14
  br label %lean_dec.exit1711

bb.kg:                                            ; preds = %bb.ke
  %.not.i1795 = icmp eq i32 %i.qf, 0
  br i1 %.not.i1795, label %lean_dec.exit1711, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.je) #6
  br label %lean_dec.exit1711

lean_dec.exit1711:                                ; preds = %bb.kh, %bb.kg, %bb.kf, %lean_dec.exit1713
  %i.qi = load i32, ptr %i.hb, align 8, !tbaa !14 ; 3 uses
  %i.qj = icmp sgt i32 %i.qi, 1
  br i1 %i.qj, label %bb.ki, label %bb.kj, !prof !16

bb.ki:                                            ; preds = %lean_dec.exit1711
  %i.qk = add nsw i32 %i.qi, -1
  store i32 %i.qk, ptr %i.hb, align 8, !tbaa !14
  br label %lean_dec_ref.exit2062

bb.kj:                                            ; preds = %lean_dec.exit1711
  %.not.i2061 = icmp eq i32 %i.qi, 0
  br i1 %.not.i2061, label %lean_dec_ref.exit2062, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hb) #6
  br label %lean_dec_ref.exit2062

lean_dec_ref.exit2062:                            ; preds = %bb.ki, %bb.kj, %bb.kk
  br i1 %.not.i1477, label %bb.kl, label %lean_dec.exit1709

bb.kl:                                            ; preds = %lean_dec_ref.exit2062
  %i.ql = load i32, ptr %i.dk, align 512, !tbaa !14 ; 3 uses
  %i.qm = icmp sgt i32 %i.ql, 1
  br i1 %i.qm, label %bb.km, label %bb.kn, !prof !16

bb.km:                                            ; preds = %bb.kl
  %i.qn = add nsw i32 %i.ql, -1
  store i32 %i.qn, ptr %i.dk, align 512, !tbaa !14
  br label %lean_dec.exit1709

bb.kn:                                            ; preds = %bb.kl
  %.not.i1797 = icmp eq i32 %i.ql, 0
  br i1 %.not.i1797, label %lean_dec.exit1709, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dk) #6
  br label %lean_dec.exit1709

lean_dec.exit1709:                                ; preds = %bb.ko, %bb.kn, %bb.km, %lean_dec_ref.exit2062
  br i1 %.not.i1489, label %bb.kp, label %lean_dec.exit1707

bb.kp:                                            ; preds = %lean_dec.exit1709
  %i.qo = load i32, ptr %i.be, align 4, !tbaa !14 ; 3 uses
  %i.qp = icmp sgt i32 %i.qo, 1
  br i1 %i.qp, label %bb.kq, label %bb.kr, !prof !16

bb.kq:                                            ; preds = %bb.kp
  %i.qq = add nsw i32 %i.qo, -1
  store i32 %i.qq, ptr %i.be, align 4, !tbaa !14
  br label %lean_dec.exit1707

bb.kr:                                            ; preds = %bb.kp
  %.not.i1799 = icmp eq i32 %i.qo, 0
  br i1 %.not.i1799, label %lean_dec.exit1707, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #6
  br label %lean_dec.exit1707

lean_dec.exit1707:                                ; preds = %bb.ks, %bb.kr, %bb.kq, %lean_dec.exit1709
  br i1 %.not.i1493, label %bb.kt, label %lean_dec.exit1705

bb.kt:                                            ; preds = %lean_dec.exit1707
  %i.qr = load i32, ptr %i.z, align 4, !tbaa !14  ; 3 uses
  %i.qs = icmp sgt i32 %i.qr, 1
  br i1 %i.qs, label %bb.ku, label %bb.kv, !prof !16

bb.ku:                                            ; preds = %bb.kt
  %i.qt = add nsw i32 %i.qr, -1
  store i32 %i.qt, ptr %i.z, align 4, !tbaa !14
  br label %lean_dec.exit1705

bb.kv:                                            ; preds = %bb.kt
  %.not.i1801 = icmp eq i32 %i.qr, 0
  br i1 %.not.i1801, label %lean_dec.exit1705, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #6
  br label %lean_dec.exit1705

lean_dec.exit1705:                                ; preds = %bb.kw, %bb.kv, %bb.ku, %lean_dec.exit1707
  br i1 %.not.i2073, label %bb.kx, label %lean_dec.exit1703

bb.kx:                                            ; preds = %lean_dec.exit1705
  %i.qu = load i32, ptr %10, align 4, !tbaa !14   ; 3 uses
  %i.qv = icmp sgt i32 %i.qu, 1
  br i1 %i.qv, label %bb.ky, label %bb.kz, !prof !16

bb.ky:                                            ; preds = %bb.kx
  %i.qw = add nsw i32 %i.qu, -1
  store i32 %i.qw, ptr %10, align 4, !tbaa !14
  br label %lean_dec.exit1703

bb.kz:                                            ; preds = %bb.kx
  %.not.i1803 = icmp eq i32 %i.qu, 0
  br i1 %.not.i1803, label %lean_dec.exit1703, label %bb.la

bb.la:                                            ; preds = %bb.kz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #6
  br label %lean_dec.exit1703

lean_dec.exit1703:                                ; preds = %bb.la, %bb.kz, %bb.ky, %lean_dec.exit1705
  %i.qx = load i32, ptr %9, align 4, !tbaa !14    ; 3 uses
  %i.qy = icmp sgt i32 %i.qx, 1
  br i1 %i.qy, label %bb.lb, label %bb.lc, !prof !16

bb.lb:                                            ; preds = %lean_dec.exit1703
  %i.qz = add nsw i32 %i.qx, -1
  store i32 %i.qz, ptr %9, align 4, !tbaa !14
  br label %lean_dec_ref.exit2060

bb.lc:                                            ; preds = %lean_dec.exit1703
  %.not.i2059 = icmp eq i32 %i.qx, 0
  br i1 %.not.i2059, label %lean_dec_ref.exit2060, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #6
  br label %lean_dec_ref.exit2060

lean_dec_ref.exit2060:                            ; preds = %bb.lb, %bb.lc, %bb.ld
  br i1 %.not.i1467, label %bb.le, label %lean_dec.exit1701

bb.le:                                            ; preds = %lean_dec_ref.exit2060
  %i.ra = load i32, ptr %8, align 4, !tbaa !14    ; 3 uses
  %i.rb = icmp sgt i32 %i.ra, 1
  br i1 %i.rb, label %bb.lf, label %bb.lg, !prof !16

bb.lf:                                            ; preds = %bb.le
  %i.rc = add nsw i32 %i.ra, -1
  store i32 %i.rc, ptr %8, align 4, !tbaa !14
  br label %lean_dec.exit1701

bb.lg:                                            ; preds = %bb.le
  %.not.i1805 = icmp eq i32 %i.ra, 0
  br i1 %.not.i1805, label %lean_dec.exit1701, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #6
  br label %lean_dec.exit1701

lean_dec.exit1701:                                ; preds = %bb.lh, %bb.lg, %bb.lf, %lean_dec_ref.exit2060
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !10 ; 5 uses
  %.val2088 = load i32, ptr %i.ka, align 8, !tbaa !14
  %i.rf = icmp eq i32 %.val2088, 1
  br i1 %i.rf, label %lean_dec.exit, label %bb.li

bb.li:                                            ; preds = %lean_dec.exit1701
  %i.rg = ptrtoint ptr %i.re to i64
  %i.rh = and i64 %i.rg, 1
  %.not.i1441 = icmp eq i64 %i.rh, 0
  br i1 %.not.i1441, label %bb.lj, label %lean_inc.exit1442

bb.lj:                                            ; preds = %bb.li
  %.val.i.i2238 = load i32, ptr %i.re, align 4, !tbaa !14 ; 3 uses
  %i.ri = icmp sgt i32 %.val.i.i2238, 0
  br i1 %i.ri, label %bb.lk, label %bb.ll, !prof !16

bb.lk:                                            ; preds = %bb.lj
  %i.rj = add nuw i32 %.val.i.i2238, 1
  store i32 %i.rj, ptr %i.re, align 4, !tbaa !14
  br label %lean_inc.exit1442

bb.ll:                                            ; preds = %bb.lj
  %.not.i.i2239 = icmp eq i32 %.val.i.i2238, 0
  br i1 %.not.i.i2239, label %lean_inc.exit1442, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.rk = atomicrmw sub ptr %i.re, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1442

lean_inc.exit1442:                                ; preds = %bb.lm, %bb.ll, %bb.lk, %bb.li
  br i1 %.not.i2188, label %bb.ln, label %bb.lr

bb.ln:                                            ; preds = %lean_inc.exit1442
  %i.rl = load i32, ptr %i.ka, align 8, !tbaa !14 ; 3 uses
  %i.rm = icmp sgt i32 %i.rl, 1
  br i1 %i.rm, label %bb.lo, label %bb.lp, !prof !16

bb.lo:                                            ; preds = %bb.ln
  %i.rn = add nsw i32 %i.rl, -1
  store i32 %i.rn, ptr %i.ka, align 8, !tbaa !14
  br label %bb.lr

bb.lp:                                            ; preds = %bb.ln
  %.not.i1807 = icmp eq i32 %i.rl, 0
  br i1 %.not.i1807, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ka) #6
  br label %bb.lr

bb.lr:                                            ; preds = %lean_inc.exit1442, %bb.lo, %bb.lp, %bb.lq
  %i.ro = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  store ptr %i.re, ptr %i.rp, align 8, !tbaa !10
  br label %lean_dec.exit

bb.ls:                                            ; preds = %lean_dec.exit1735
  %i.rq = ptrtoint ptr %.01326 to i64
  %i.rr = and i64 %i.rq, 1
  %.not.i2241 = icmp eq i64 %i.rr, 0
  br i1 %.not.i2241, label %bb.lt, label %lean_del_object.exit2242

bb.lt:                                            ; preds = %bb.ls
  tail call void @lean_free_object(ptr noundef nonnull %.01326) #6
  br label %lean_del_object.exit2242

lean_del_object.exit2242:                         ; preds = %bb.ls, %bb.lt
  %i.rs = ptrtoint ptr %i.jg to i64
  %i.rt = and i64 %i.rs, 1
  %.not.i1696 = icmp eq i64 %i.rt, 0
  br i1 %.not.i1696, label %bb.lu, label %lean_dec.exit1697

bb.lu:                                            ; preds = %lean_del_object.exit2242
  %i.ru = load i32, ptr %i.jg, align 4, !tbaa !14 ; 3 uses
  %i.rv = icmp sgt i32 %i.ru, 1
  br i1 %i.rv, label %bb.lv, label %bb.lw, !prof !16

bb.lv:                                            ; preds = %bb.lu
  %i.rw = add nsw i32 %i.ru, -1
  store i32 %i.rw, ptr %i.jg, align 4, !tbaa !14
  br label %lean_dec.exit1697

bb.lw:                                            ; preds = %bb.lu
  %.not.i1809 = icmp eq i32 %i.ru, 0
  br i1 %.not.i1809, label %lean_dec.exit1697, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jg) #6
  br label %lean_dec.exit1697

lean_dec.exit1697:                                ; preds = %bb.lx, %bb.lw, %bb.lv, %lean_del_object.exit2242
  %i.rx = ptrtoint ptr %i.je to i64
  %i.ry = and i64 %i.rx, 1
  %.not.i1694 = icmp eq i64 %i.ry, 0
  br i1 %.not.i1694, label %bb.ly, label %lean_dec.exit1695

bb.ly:                                            ; preds = %lean_dec.exit1697
  %i.rz = load i32, ptr %i.je, align 4, !tbaa !14 ; 3 uses
  %i.sa = icmp sgt i32 %i.rz, 1
  br i1 %i.sa, label %bb.lz, label %bb.ma, !prof !16

bb.lz:                                            ; preds = %bb.ly
  %i.sb = add nsw i32 %i.rz, -1
  store i32 %i.sb, ptr %i.je, align 4, !tbaa !14
  br label %lean_dec.exit1695

bb.ma:                                            ; preds = %bb.ly
  %.not.i1811 = icmp eq i32 %i.rz, 0
  br i1 %.not.i1811, label %lean_dec.exit1695, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.je) #6
  br label %lean_dec.exit1695

lean_dec.exit1695:                                ; preds = %bb.mb, %bb.ma, %bb.lz, %lean_dec.exit1697
  %i.sc = load i32, ptr %i.hb, align 8, !tbaa !14 ; 3 uses
  %i.sd = icmp sgt i32 %i.sc, 1
  br i1 %i.sd, label %bb.mc, label %bb.md, !prof !16

bb.mc:                                            ; preds = %lean_dec.exit1695
  %i.se = add nsw i32 %i.sc, -1
  store i32 %i.se, ptr %i.hb, align 8, !tbaa !14
  br label %lean_dec_ref.exit2058

bb.md:                                            ; preds = %lean_dec.exit1695
  %.not.i2057 = icmp eq i32 %i.sc, 0
  br i1 %.not.i2057, label %lean_dec_ref.exit2058, label %bb.me

bb.me:                                            ; preds = %bb.md
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hb) #6
  br label %lean_dec_ref.exit2058

lean_dec_ref.exit2058:                            ; preds = %bb.mc, %bb.md, %bb.me
  br i1 %.not.i1489, label %bb.mf, label %lean_dec.exit1693

bb.mf:                                            ; preds = %lean_dec_ref.exit2058
  %i.sf = load i32, ptr %i.be, align 4, !tbaa !14 ; 3 uses
  %i.sg = icmp sgt i32 %i.sf, 1
  br i1 %i.sg, label %bb.mg, label %bb.mh, !prof !16

bb.mg:                                            ; preds = %bb.mf
  %i.sh = add nsw i32 %i.sf, -1
  store i32 %i.sh, ptr %i.be, align 4, !tbaa !14
  br label %lean_dec.exit1693

bb.mh:                                            ; preds = %bb.mf
  %.not.i1813 = icmp eq i32 %i.sf, 0
  br i1 %.not.i1813, label %lean_dec.exit1693, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #6
  br label %lean_dec.exit1693

lean_dec.exit1693:                                ; preds = %bb.mi, %bb.mh, %bb.mg, %lean_dec_ref.exit2058
  br i1 %.not.i1475, label %bb.mj, label %lean_inc.exit1440

bb.mj:                                            ; preds = %lean_dec.exit1693
  %.val.i.i2243 = load i32, ptr %i.ed, align 4, !tbaa !14 ; 3 uses
  %i.si = icmp sgt i32 %.val.i.i2243, 0
  br i1 %i.si, label %bb.mk, label %bb.ml, !prof !16

bb.mk:                                            ; preds = %bb.mj
  %i.sj = add nuw i32 %.val.i.i2243, 1
  store i32 %i.sj, ptr %i.ed, align 4, !tbaa !14
  br label %lean_inc.exit1440

bb.ml:                                            ; preds = %bb.mj
  %.not.i.i2244 = icmp eq i32 %.val.i.i2243, 0
  br i1 %.not.i.i2244, label %lean_inc.exit1440, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.sk = atomicrmw sub ptr %i.ed, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1440

lean_inc.exit1440:                                ; preds = %bb.mm, %bb.ml, %bb.mk, %lean_dec.exit1693
  %i.sl = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_WrapInstance_0__Lean_Meta_wrapInstance_go_spec__8___redArg___lam__1(ptr noundef %i.z, ptr noundef %i.ed, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.dk, ptr noundef %i.cb, i8 noundef zeroext 0, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %7, ptr nonnull poison, ptr noundef %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15)
  br label %bb.aqv

bb.mn:                                            ; preds = %lean_obj_tag.exit2178
  %i.sm = load i32, ptr %i.hb, align 8, !tbaa !14 ; 3 uses
  %i.sn = icmp sgt i32 %i.sm, 1
  br i1 %i.sn, label %bb.mo, label %bb.mp, !prof !16

bb.mo:                                            ; preds = %bb.mn
  %i.so = add nsw i32 %i.sm, -1
  store i32 %i.so, ptr %i.hb, align 8, !tbaa !14
  br label %lean_dec_ref.exit2056

bb.mp:                                            ; preds = %bb.mn
  %.not.i2055 = icmp eq i32 %i.sm, 0
  br i1 %.not.i2055, label %lean_dec_ref.exit2056, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hb) #6
  br label %lean_dec_ref.exit2056

lean_dec_ref.exit2056:                            ; preds = %bb.mo, %bb.mp, %bb.mq
  br i1 %.not.i1477, label %bb.mr, label %lean_dec.exit1691

bb.mr:                                            ; preds = %lean_dec_ref.exit2056
  %i.sp = load i32, ptr %i.dk, align 512, !tbaa !14 ; 3 uses
  %i.sq = icmp sgt i32 %i.sp, 1
  br i1 %i.sq, label %bb.ms, label %bb.mt, !prof !16

bb.ms:                                            ; preds = %bb.mr
  %i.sr = add nsw i32 %i.sp, -1
  store i32 %i.sr, ptr %i.dk, align 512, !tbaa !14
  br label %lean_dec.exit1691

bb.mt:                                            ; preds = %bb.mr
  %.not.i1815 = icmp eq i32 %i.sp, 0
  br i1 %.not.i1815, label %lean_dec.exit1691, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dk) #6
  br label %lean_dec.exit1691

lean_dec.exit1691:                                ; preds = %bb.mu, %bb.mt, %bb.ms, %lean_dec_ref.exit2056
  br i1 %.not.i2111, label %bb.mv, label %lean_dec.exit1689

bb.mv:                                            ; preds = %lean_dec.exit1691
  %i.ss = load i32, ptr %i.cb, align 4, !tbaa !14 ; 3 uses
  %i.st = icmp sgt i32 %i.ss, 1
  br i1 %i.st, label %bb.mw, label %bb.mx, !prof !16

bb.mw:                                            ; preds = %bb.mv
  %i.su = add nsw i32 %i.ss, -1
  store i32 %i.su, ptr %i.cb, align 4, !tbaa !14
  br label %lean_dec.exit1689

bb.mx:                                            ; preds = %bb.mv
  %.not.i1817 = icmp eq i32 %i.ss, 0
  br i1 %.not.i1817, label %lean_dec.exit1689, label %bb.my

bb.my:                                            ; preds = %bb.mx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cb) #6
  br label %lean_dec.exit1689

lean_dec.exit1689:                                ; preds = %bb.my, %bb.mx, %bb.mw, %lean_dec.exit1691
  br i1 %.not.i1489, label %bb.mz, label %lean_dec.exit1687

bb.mz:                                            ; preds = %lean_dec.exit1689
  %i.sv = load i32, ptr %i.be, align 4, !tbaa !14 ; 3 uses
  %i.sw = icmp sgt i32 %i.sv, 1
  br i1 %i.sw, label %bb.na, label %bb.nb, !prof !16

bb.na:                                            ; preds = %bb.mz
  %i.sx = add nsw i32 %i.sv, -1
  store i32 %i.sx, ptr %i.be, align 4, !tbaa !14
  br label %lean_dec.exit1687

bb.nb:                                            ; preds = %bb.mz
  %.not.i1819 = icmp eq i32 %i.sv, 0
  br i1 %.not.i1819, label %lean_dec.exit1687, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #6
  br label %lean_dec.exit1687

lean_dec.exit1687:                                ; preds = %bb.nc, %bb.nb, %bb.na, %lean_dec.exit1689
  br i1 %.not.i1493, label %bb.nd, label %lean_dec.exit1685

bb.nd:                                            ; preds = %lean_dec.exit1687
  %i.sy = load i32, ptr %i.z, align 4, !tbaa !14  ; 3 uses
  %i.sz = icmp sgt i32 %i.sy, 1
  br i1 %i.sz, label %bb.ne, label %bb.nf, !prof !16

bb.ne:                                            ; preds = %bb.nd
  %i.ta = add nsw i32 %i.sy, -1
  store i32 %i.ta, ptr %i.z, align 4, !tbaa !14
  br label %lean_dec.exit1685

bb.nf:                                            ; preds = %bb.nd
  %.not.i1821 = icmp eq i32 %i.sy, 0
  br i1 %.not.i1821, label %lean_dec.exit1685, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #6
  br label %lean_dec.exit1685

lean_dec.exit1685:                                ; preds = %bb.ng, %bb.nf, %bb.ne, %lean_dec.exit1687
  br i1 %.not.i2073, label %bb.nh, label %lean_dec.exit1683

bb.nh:                                            ; preds = %lean_dec.exit1685
  %i.tb = load i32, ptr %10, align 4, !tbaa !14   ; 3 uses
  %i.tc = icmp sgt i32 %i.tb, 1
  br i1 %i.tc, label %bb.ni, label %bb.nj, !prof !16

bb.ni:                                            ; preds = %bb.nh
  %i.td = add nsw i32 %i.tb, -1
  store i32 %i.td, ptr %10, align 4, !tbaa !14
  br label %lean_dec.exit1683

bb.nj:                                            ; preds = %bb.nh
  %.not.i1823 = icmp eq i32 %i.tb, 0
  br i1 %.not.i1823, label %lean_dec.exit1683, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #6
  br label %lean_dec.exit1683

lean_dec.exit1683:                                ; preds = %bb.nk, %bb.nj, %bb.ni, %lean_dec.exit1685
  %i.te = load i32, ptr %9, align 4, !tbaa !14    ; 3 uses
  %i.tf = icmp sgt i32 %i.te, 1
  br i1 %i.tf, label %bb.nl, label %bb.nm, !prof !16

bb.nl:                                            ; preds = %lean_dec.exit1683
  %i.tg = add nsw i32 %i.te, -1
  store i32 %i.tg, ptr %9, align 4, !tbaa !14
  br label %lean_dec_ref.exit2054

bb.nm:                                            ; preds = %lean_dec.exit1683
  %.not.i2053 = icmp eq i32 %i.te, 0
  br i1 %.not.i2053, label %lean_dec_ref.exit2054, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #6
  br label %lean_dec_ref.exit2054

lean_dec_ref.exit2054:                            ; preds = %bb.nl, %bb.nm, %bb.nn
  br i1 %.not.i1467, label %bb.no, label %lean_dec.exit1681

bb.no:                                            ; preds = %lean_dec_ref.exit2054
  %i.th = load i32, ptr %8, align 4, !tbaa !14    ; 3 uses
  %i.ti = icmp sgt i32 %i.th, 1
  br i1 %i.ti, label %bb.np, label %bb.nq, !prof !16

bb.np:                                            ; preds = %bb.no
  %i.tj = add nsw i32 %i.th, -1
  store i32 %i.tj, ptr %8, align 4, !tbaa !14
  br label %lean_dec.exit1681

bb.nq:                                            ; preds = %bb.no
  %.not.i1825 = icmp eq i32 %i.th, 0
  br i1 %.not.i1825, label %lean_dec.exit1681, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #6
  br label %lean_dec.exit1681

lean_dec.exit1681:                                ; preds = %bb.nr, %bb.nq, %bb.np, %lean_dec_ref.exit2054
  %i.tk = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !10 ; 5 uses
  %.val2087 = load i32, ptr %i.io, align 8, !tbaa !14
  %i.tm = icmp eq i32 %.val2087, 1
  br i1 %i.tm, label %lean_dec.exit, label %bb.ns

bb.ns:                                            ; preds = %lean_dec.exit1681
  %i.tn = ptrtoint ptr %i.tl to i64
  %i.to = and i64 %i.tn, 1
  %.not.i1437 = icmp eq i64 %i.to, 0
  br i1 %.not.i1437, label %bb.nt, label %lean_inc.exit1438

bb.nt:                                            ; preds = %bb.ns
  %.val.i.i2246 = load i32, ptr %i.tl, align 4, !tbaa !14 ; 3 uses
  %i.tp = icmp sgt i32 %.val.i.i2246, 0
  br i1 %i.tp, label %bb.nu, label %bb.nv, !prof !16

bb.nu:                                            ; preds = %bb.nt
  %i.tq = add nuw i32 %.val.i.i2246, 1
  store i32 %i.tq, ptr %i.tl, align 4, !tbaa !14
  br label %lean_inc.exit1438

bb.nv:                                            ; preds = %bb.nt
  %.not.i.i2247 = icmp eq i32 %.val.i.i2246, 0
  br i1 %.not.i.i2247, label %lean_inc.exit1438, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.tr = atomicrmw sub ptr %i.tl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1438

lean_inc.exit1438:                                ; preds = %bb.nw, %bb.nv, %bb.nu, %bb.ns
  br i1 %.not.i2175, label %bb.nx, label %bb.ob

bb.nx:                                            ; preds = %lean_inc.exit1438
  %i.ts = load i32, ptr %i.io, align 8, !tbaa !14 ; 3 uses
  %i.tt = icmp sgt i32 %i.ts, 1
  br i1 %i.tt, label %bb.ny, label %bb.nz, !prof !16

bb.ny:                                            ; preds = %bb.nx
  %i.tu = add nsw i32 %i.ts, -1
  store i32 %i.tu, ptr %i.io, align 8, !tbaa !14
  br label %bb.ob

bb.nz:                                            ; preds = %bb.nx
  %.not.i1827 = icmp eq i32 %i.ts, 0
  br i1 %.not.i1827, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.io) #6
  br label %bb.ob

bb.ob:                                            ; preds = %lean_inc.exit1438, %bb.ny, %bb.nz, %bb.oa
  %i.tv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  store ptr %i.tl, ptr %i.tw, align 8, !tbaa !10
  br label %lean_dec.exit

bb.oc:                                            ; preds = %lean_del_object.exit
  br i1 %.not.i2111, label %bb.od, label %lean_dec.exit1677

bb.od:                                            ; preds = %bb.oc
  %i.tx = load i32, ptr %i.cb, align 4, !tbaa !14 ; 3 uses
  %i.ty = icmp sgt i32 %i.tx, 1
  br i1 %i.ty, label %bb.oe, label %bb.of, !prof !16

bb.oe:                                            ; preds = %bb.od
end_hunk_10
