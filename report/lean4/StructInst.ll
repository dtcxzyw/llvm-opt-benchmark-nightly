Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/StructInst?download=true
inline.NumInlined: 15186
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumUnrolled: 94
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_filterMapM___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_synthOptParamFields_spec__12_spec__14:bb.a
  br i1 %i.av, label %bb.v, label %bb.w, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.aw = add nuw i32 %.val.i.i715, 1
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !12
  br label %lean_inc.exit641

bb.w:                                             ; preds = %bb.u
  %.not.i.i716 = icmp eq i32 %.val.i.i715, 0
  br i1 %.not.i.i716, label %lean_inc.exit641, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ax = atomicrmw sub ptr %i.ar, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit641

lean_inc.exit641:                                 ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %i.ay = ptrtoint ptr %i.ap to i64
  %i.az = and i64 %i.ay, 1
  %.not.i638 = icmp eq i64 %i.az, 0
  br i1 %.not.i638, label %bb.y, label %lean_inc.exit639

bb.y:                                             ; preds = %lean_inc.exit641
  %.val.i.i718 = load i32, ptr %i.ap, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %.val.i.i718, 0
  br i1 %i.ba, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.bb = add nuw i32 %.val.i.i718, 1
  store i32 %i.bb, ptr %i.ap, align 4, !tbaa !12
  br label %lean_inc.exit639

bb.aa:                                            ; preds = %bb.y
  %.not.i.i719 = icmp eq i32 %.val.i.i718, 0
  br i1 %.not.i.i719, label %lean_inc.exit639, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bc = atomicrmw sub ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit639

lean_inc.exit639:                                 ; preds = %lean_inc.exit641, %bb.z, %bb.aa, %bb.ab
  %i.bd = load i32, ptr %i.an, align 8, !tbaa !12 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 1
  br i1 %i.be, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %lean_inc.exit639
  %i.bf = add nsw i32 %i.bd, -1
  store i32 %i.bf, ptr %i.an, align 8, !tbaa !12
  br label %lean_dec.exit608

bb.ad:                                            ; preds = %lean_inc.exit639
  %.not.i647 = icmp eq i32 %i.bd, 0
  br i1 %.not.i647, label %lean_dec.exit608, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.an) #9
  br label %lean_dec.exit608

lean_dec.exit608:                                 ; preds = %bb.ac, %bb.ad, %bb.ae, %lean_dec.exit610
  %.0406 = phi ptr [ %i.an, %lean_dec.exit610 ], [ inttoptr (i64 1 to ptr), %bb.ae ], [ inttoptr (i64 1 to ptr), %bb.ad ], [ inttoptr (i64 1 to ptr), %bb.ac ] ; 20 uses
  %i.bg = tail call ptr @l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_isFieldNotSolved_x3f(ptr noundef %i.am, ptr poison, ptr noundef %6, ptr poison, ptr poison, ptr poison, ptr noundef %10, ptr poison, ptr poison) ; 13 uses
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = and i64 %i.bh, 1
  %.not.i721 = icmp eq i64 %i.bi, 0               ; 2 uses
  br i1 %.not.i721, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %lean_dec.exit608
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = trunc i64 %i.bj to i32
  br label %lean_obj_tag.exit

bb.ag:                                            ; preds = %lean_dec.exit608
  %i.bl = getelementptr i8, ptr %i.bg, i64 4
  %.val.i = load i32, ptr %i.bl, align 4
  %i.bm = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.af, %bb.ag
  %.0.i = phi i32 [ %i.bk, %bb.af ], [ %i.bm, %bb.ag ]
  %i.bn = icmp eq i32 %.0.i, 0
  br i1 %i.bn, label %bb.ah, label %bb.lw

bb.ah:                                            ; preds = %lean_obj_tag.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !10 ; 13 uses
  %i.bq = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.br = and i64 %i.bq, 1
  %.not.i636 = icmp eq i64 %i.br, 0               ; 3 uses
  br i1 %.not.i636, label %bb.ai, label %lean_inc.exit637

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i722 = load i32, ptr %i.bp, align 4, !tbaa !12 ; 3 uses
  %i.bs = icmp sgt i32 %.val.i.i722, 0
  br i1 %i.bs, label %bb.aj, label %bb.ak, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.bt = add nuw i32 %.val.i.i722, 1
  store i32 %i.bt, ptr %i.bp, align 4, !tbaa !12
  br label %lean_inc.exit637

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i723 = icmp eq i32 %.val.i.i722, 0
  br i1 %.not.i.i723, label %lean_inc.exit637, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bu = atomicrmw sub ptr %i.bp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit637

lean_inc.exit637:                                 ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah
  %.val.i725 = load i32, ptr %i.bg, align 8, !tbaa !12 ; 4 uses
  %i.bv = icmp eq i32 %.val.i725, 1
  br i1 %i.bv, label %.preheader.i, label %bb.aq

.preheader.i:                                     ; preds = %lean_inc.exit637
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !10 ; 4 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = and i64 %i.bx, 1
  %.not.i.i726 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i726, label %bb.am, label %lean_dec.exit.i

bb.am:                                            ; preds = %.preheader.i
  %i.bz = load i32, ptr %i.bw, align 4, !tbaa !12 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.an, label %bb.ao, !prof !13

bb.an:                                            ; preds = %bb.am
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.ao:                                            ; preds = %bb.am
  %.not.i7.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bw) #9
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.ap, %bb.ao, %bb.an, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.bg) #9
  br label %lean_dec_ref_known.exit

bb.aq:                                            ; preds = %lean_inc.exit637
  %i.cc = icmp sgt i32 %.val.i725, 1
  br i1 %i.cc, label %bb.ar, label %bb.as, !prof !13

bb.ar:                                            ; preds = %bb.aq
  %i.cd = add nsw i32 %.val.i725, -1
  store i32 %i.cd, ptr %i.bg, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.as:                                            ; preds = %bb.aq
  %.not.i8.i = icmp eq i32 %.val.i725, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #9
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.ar, %bb.as, %bb.at
  %i.ce = ptrtoint ptr %i.ar to i64               ; 7 uses
  %i.cf = lshr i64 %i.ce, 1
  %i.cg = and i64 %i.ce, 510
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.au, label %bb.bv

bb.au:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i636, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ci = lshr i64 %i.bq, 1
  %i.cj = trunc i64 %i.ci to i32
  br label %lean_obj_tag.exit730

bb.aw:                                            ; preds = %bb.au
  %i.ck = getelementptr i8, ptr %i.bp, i64 4
  %.val.i729 = load i32, ptr %i.ck, align 4
  %i.cl = lshr i32 %.val.i729, 24
  br label %lean_obj_tag.exit730

lean_obj_tag.exit730:                             ; preds = %bb.av, %bb.aw
  %.0.i728 = phi i32 [ %i.cj, %bb.av ], [ %i.cl, %bb.aw ]
  %i.cm = icmp eq i32 %.0.i728, 0
  br i1 %i.cm, label %bb.ax, label %bb.bm

bb.ax:                                            ; preds = %lean_obj_tag.exit730
  %i.cn = ptrtoint ptr %.0406 to i64
  %i.co = and i64 %i.cn, 1
  %.not.i731 = icmp eq i64 %i.co, 0
  br i1 %.not.i731, label %bb.ay, label %lean_del_object.exit

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_free_object(ptr noundef nonnull %.0406) #9
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.ax, %bb.ay
  %i.cp = and i64 %i.ce, 1
  %.not.i605 = icmp eq i64 %i.cp, 0
  br i1 %.not.i605, label %bb.az, label %lean_dec.exit606

bb.az:                                            ; preds = %lean_del_object.exit
  %i.cq = load i32, ptr %i.ar, align 512, !tbaa !12 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.ba, label %bb.bb, !prof !13

bb.ba:                                            ; preds = %bb.az
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %i.ar, align 512, !tbaa !12
  br label %lean_dec.exit606

bb.bb:                                            ; preds = %bb.az
  %.not.i649 = icmp eq i32 %i.cq, 0
  br i1 %.not.i649, label %lean_dec.exit606, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ar) #9
  br label %lean_dec.exit606

lean_dec.exit606:                                 ; preds = %bb.bc, %bb.bb, %bb.ba, %lean_del_object.exit
  %i.ct = ptrtoint ptr %i.ap to i64
  %i.cu = and i64 %i.ct, 1
  %.not.i603 = icmp eq i64 %i.cu, 0
  br i1 %.not.i603, label %bb.bd, label %lean_dec.exit604

bb.bd:                                            ; preds = %lean_dec.exit606
  %i.cv = load i32, ptr %i.ap, align 4, !tbaa !12 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 1
  br i1 %i.cw, label %bb.be, label %bb.bf, !prof !13

bb.be:                                            ; preds = %bb.bd
  %i.cx = add nsw i32 %i.cv, -1
  store i32 %i.cx, ptr %i.ap, align 4, !tbaa !12
  br label %lean_dec.exit604

bb.bf:                                            ; preds = %bb.bd
  %.not.i651 = icmp eq i32 %i.cv, 0
  br i1 %.not.i651, label %lean_dec.exit604, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ap) #9
  br label %lean_dec.exit604

lean_dec.exit604:                                 ; preds = %bb.bg, %bb.bf, %bb.be, %lean_dec.exit606
  %i.cy = ptrtoint ptr %.0401 to i64
  %i.cz = and i64 %i.cy, 1
  %.not.i732 = icmp eq i64 %i.cz, 0
  br i1 %.not.i732, label %bb.bh, label %lean_del_object.exit733

bb.bh:                                            ; preds = %lean_dec.exit604
  tail call void @lean_free_object(ptr noundef nonnull %.0401) #9
  br label %lean_del_object.exit733

lean_del_object.exit733:                          ; preds = %lean_dec.exit604, %bb.bh
  %i.da = ptrtoint ptr %i.am to i64
  %i.db = and i64 %i.da, 1
  %.not.i601 = icmp eq i64 %i.db, 0
  br i1 %.not.i601, label %bb.bi, label %bb.nf

bb.bi:                                            ; preds = %lean_del_object.exit733
  %i.dc = load i32, ptr %i.am, align 4, !tbaa !12 ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 1
  br i1 %i.dd, label %bb.bj, label %bb.bk, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.de = add nsw i32 %i.dc, -1
  store i32 %i.de, ptr %i.am, align 4, !tbaa !12
  br label %bb.nf

bb.bk:                                            ; preds = %bb.bi
  %.not.i653 = icmp eq i32 %i.dc, 0
  br i1 %.not.i653, label %bb.nf, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #9
  br label %bb.nf

bb.bm:                                            ; preds = %lean_obj_tag.exit730
  %.val.i734 = load i32, ptr %i.bp, align 4, !tbaa !12 ; 4 uses
  %i.df = icmp eq i32 %.val.i734, 1
  br i1 %i.df, label %.preheader.i736, label %bb.br

.preheader.i736:                                  ; preds = %bb.bm
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !10 ; 4 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = and i64 %i.di, 1
  %.not.i.i738 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i738, label %bb.bn, label %lean_dec.exit.i739

bb.bn:                                            ; preds = %.preheader.i736
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !12 ; 3 uses
  %i.dl = icmp sgt i32 %i.dk, 1
  br i1 %i.dl, label %bb.bo, label %bb.bp, !prof !13

bb.bo:                                            ; preds = %bb.bn
  %i.dm = add nsw i32 %i.dk, -1
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !12
  br label %lean_dec.exit.i739

bb.bp:                                            ; preds = %bb.bn
  %.not.i7.i743 = icmp eq i32 %i.dk, 0
  br i1 %.not.i7.i743, label %lean_dec.exit.i739, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dh) #9
  br label %lean_dec.exit.i739

lean_dec.exit.i739:                               ; preds = %bb.bq, %bb.bp, %bb.bo, %.preheader.i736
  tail call void @lean_free_object(ptr noundef nonnull %i.bp) #9
  br label %lean_dec_ref_known.exit744

bb.br:                                            ; preds = %bb.bm
  %i.dn = icmp sgt i32 %.val.i734, 1
  br i1 %i.dn, label %bb.bs, label %bb.bt, !prof !13

bb.bs:                                            ; preds = %bb.br
  %i.do = add nsw i32 %.val.i734, -1
  store i32 %i.do, ptr %i.bp, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit744

bb.bt:                                            ; preds = %bb.br
  %.not.i8.i735 = icmp eq i32 %.val.i734, 0
  br i1 %.not.i8.i735, label %lean_dec_ref_known.exit744, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bp) #9
  br label %lean_dec_ref_known.exit744

bb.bv:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i636, label %bb.bw, label %lean_dec_ref_known.exit744

bb.bw:                                            ; preds = %bb.bv
  %i.dp = load i32, ptr %i.bp, align 4, !tbaa !12 ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, 1
  br i1 %i.dq, label %bb.bx, label %bb.by, !prof !13

bb.bx:                                            ; preds = %bb.bw
  %i.dr = add nsw i32 %i.dp, -1
  store i32 %i.dr, ptr %i.bp, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit744

bb.by:                                            ; preds = %bb.bw
  %.not.i655 = icmp eq i32 %i.dp, 0
  br i1 %.not.i655, label %lean_dec_ref_known.exit744, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bp) #9
  br label %lean_dec_ref_known.exit744

lean_del_object.exit768:                          ; preds = %lean_alloc_ctor.exit811, %lean_alloc_ctor.exit833, %lean_alloc_ctor.exit764, %bb.dt
  %.0453 = phi ptr [ %i.gb, %lean_alloc_ctor.exit764 ], [ %.0406, %bb.dt ], [ %i.os, %lean_alloc_ctor.exit833 ], [ %i.ma, %lean_alloc_ctor.exit811 ]
  %i.ds = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_addStructFieldAux_spec__0___redArg(ptr noundef nonnull @l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_addStructFieldAux___closed__0_value, ptr noundef nonnull %.0453, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12) ; 13 uses
  %i.dt = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.du = and i64 %i.dt, 1
  %.not.i745 = icmp eq i64 %i.du, 0               ; 2 uses
  br i1 %.not.i745, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %lean_del_object.exit768
  %i.dv = lshr i64 %i.dt, 1
  %i.dw = trunc i64 %i.dv to i32
  br label %lean_obj_tag.exit748

bb.cb:                                            ; preds = %lean_del_object.exit768
  %i.dx = getelementptr i8, ptr %i.ds, i64 4
  %.val.i747 = load i32, ptr %i.dx, align 4
  %i.dy = lshr i32 %.val.i747, 24
  br label %lean_obj_tag.exit748

lean_obj_tag.exit748:                             ; preds = %bb.ca, %bb.cb
  %.0.i746 = phi i32 [ %i.dw, %bb.ca ], [ %i.dy, %bb.cb ]
  %i.dz = icmp eq i32 %.0.i746, 0
  br i1 %i.dz, label %bb.cc, label %bb.cl

bb.cc:                                            ; preds = %lean_obj_tag.exit748
  %.val.i749 = load i32, ptr %i.ds, align 4, !tbaa !12 ; 4 uses
  %i.ea = icmp eq i32 %.val.i749, 1
  br i1 %i.ea, label %.preheader.i751, label %bb.ch

.preheader.i751:                                  ; preds = %bb.cc
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !10 ; 4 uses
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = and i64 %i.ed, 1
  %.not.i.i753 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i753, label %bb.cd, label %lean_dec.exit.i754

bb.cd:                                            ; preds = %.preheader.i751
  %i.ef = load i32, ptr %i.ec, align 4, !tbaa !12 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.ce, label %bb.cf, !prof !13

bb.ce:                                            ; preds = %bb.cd
  %i.eh = add nsw i32 %i.ef, -1
  store i32 %i.eh, ptr %i.ec, align 4, !tbaa !12
  br label %lean_dec.exit.i754

bb.cf:                                            ; preds = %bb.cd
  %.not.i7.i758 = icmp eq i32 %i.ef, 0
  br i1 %.not.i7.i758, label %lean_dec.exit.i754, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ec) #9
  br label %lean_dec.exit.i754

lean_dec.exit.i754:                               ; preds = %bb.cg, %bb.cf, %bb.ce, %.preheader.i751
  tail call void @lean_free_object(ptr noundef nonnull %i.ds) #9
  br label %lean_dec.exit602

end_hunk_0
begin_hunk_1_@l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_filterMapM___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_synthOptParamFields_spec__16_spec__19:bb.a
  br i1 %.not.i.i750, label %lean_inc.exit666, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = atomicrmw sub ptr %i.au, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit666

lean_inc.exit666:                                 ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %i.bb = ptrtoint ptr %i.as to i64
  %i.bc = and i64 %i.bb, 1
  %.not.i663 = icmp eq i64 %i.bc, 0
  br i1 %.not.i663, label %bb.y, label %lean_inc.exit664

bb.y:                                             ; preds = %lean_inc.exit666
  %.val.i.i752 = load i32, ptr %i.as, align 4, !tbaa !12 ; 3 uses
  %i.bd = icmp sgt i32 %.val.i.i752, 0
  br i1 %i.bd, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.be = add nuw i32 %.val.i.i752, 1
  store i32 %i.be, ptr %i.as, align 4, !tbaa !12
  br label %lean_inc.exit664

bb.aa:                                            ; preds = %bb.y
  %.not.i.i753 = icmp eq i32 %.val.i.i752, 0
  br i1 %.not.i.i753, label %lean_inc.exit664, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bf = atomicrmw sub ptr %i.as, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit664

lean_inc.exit664:                                 ; preds = %lean_inc.exit666, %bb.z, %bb.aa, %bb.ab
  %i.bg = load i32, ptr %i.aq, align 8, !tbaa !12 ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %lean_inc.exit664
  %i.bi = add nsw i32 %i.bg, -1
  store i32 %i.bi, ptr %i.aq, align 8, !tbaa !12
  br label %lean_dec.exit631

bb.ad:                                            ; preds = %lean_inc.exit664
  %.not.i672 = icmp eq i32 %i.bg, 0
  br i1 %.not.i672, label %lean_dec.exit631, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aq) #9
  br label %lean_dec.exit631

lean_dec.exit631:                                 ; preds = %bb.ac, %bb.ad, %bb.ae, %lean_dec.exit633
  %.0435 = phi ptr [ %i.aq, %lean_dec.exit633 ], [ inttoptr (i64 1 to ptr), %bb.ae ], [ inttoptr (i64 1 to ptr), %bb.ad ], [ inttoptr (i64 1 to ptr), %bb.ac ] ; 22 uses
  %i.bj = tail call ptr @l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_isFieldNotSolved_x3f(ptr noundef %i.ap, ptr poison, ptr noundef %7, ptr poison, ptr poison, ptr poison, ptr noundef %11, ptr poison, ptr poison) ; 13 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = and i64 %i.bk, 1
  %.not.i755 = icmp eq i64 %i.bl, 0               ; 2 uses
  br i1 %.not.i755, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %lean_dec.exit631
  %i.bm = lshr i64 %i.bk, 1
  %i.bn = trunc i64 %i.bm to i32
  br label %lean_obj_tag.exit

bb.ag:                                            ; preds = %lean_dec.exit631
  %i.bo = getelementptr i8, ptr %i.bj, i64 4
  %.val.i = load i32, ptr %i.bo, align 4
  %i.bp = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.af, %bb.ag
  %.0.i756 = phi i32 [ %i.bn, %bb.af ], [ %i.bp, %bb.ag ]
  %i.bq = icmp eq i32 %.0.i756, 0
  br i1 %i.bq, label %bb.ah, label %bb.mc

bb.ah:                                            ; preds = %lean_obj_tag.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !10 ; 13 uses
  %i.bt = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bu = and i64 %i.bt, 1
  %.not.i661 = icmp eq i64 %i.bu, 0               ; 3 uses
  br i1 %.not.i661, label %bb.ai, label %lean_inc.exit662

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i757 = load i32, ptr %i.bs, align 4, !tbaa !12 ; 3 uses
  %i.bv = icmp sgt i32 %.val.i.i757, 0
  br i1 %i.bv, label %bb.aj, label %bb.ak, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.bw = add nuw i32 %.val.i.i757, 1
  store i32 %i.bw, ptr %i.bs, align 4, !tbaa !12
  br label %lean_inc.exit662

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i758 = icmp eq i32 %.val.i.i757, 0
  br i1 %.not.i.i758, label %lean_inc.exit662, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bx = atomicrmw sub ptr %i.bs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit662

lean_inc.exit662:                                 ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah
  %.val.i760 = load i32, ptr %i.bj, align 8, !tbaa !12 ; 4 uses
  %i.by = icmp eq i32 %.val.i760, 1
  br i1 %i.by, label %.preheader.i, label %bb.aq

.preheader.i:                                     ; preds = %lean_inc.exit662
  %i.bz = load ptr, ptr %i.br, align 8, !tbaa !10 ; 4 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = and i64 %i.ca, 1
  %.not.i.i761 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i761, label %bb.am, label %lean_dec.exit.i

bb.am:                                            ; preds = %.preheader.i
  %i.cc = load i32, ptr %i.bz, align 4, !tbaa !12 ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %bb.an, label %bb.ao, !prof !13

bb.an:                                            ; preds = %bb.am
  %i.ce = add nsw i32 %i.cc, -1
  store i32 %i.ce, ptr %i.bz, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.ao:                                            ; preds = %bb.am
  %.not.i7.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bz) #9
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.ap, %bb.ao, %bb.an, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.bj) #9
  br label %lean_dec_ref_known.exit

bb.aq:                                            ; preds = %lean_inc.exit662
  %i.cf = icmp sgt i32 %.val.i760, 1
  br i1 %i.cf, label %bb.ar, label %bb.as, !prof !13

bb.ar:                                            ; preds = %bb.aq
  %i.cg = add nsw i32 %.val.i760, -1
  store i32 %i.cg, ptr %i.bj, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.as:                                            ; preds = %bb.aq
  %.not.i8.i = icmp eq i32 %.val.i760, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #9
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.ar, %bb.as, %bb.at
  br i1 %.not.i738, label %.critedge.i, label %lean_nat_eq.exit, !prof !20

.critedge.i:                                      ; preds = %lean_dec_ref_known.exit
  %i.ch = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #9
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %lean_dec_ref_known.exit, %.critedge.i
  %.0.i = phi i1 [ %i.ch, %.critedge.i ], [ %i.d, %lean_dec_ref_known.exit ]
  %i.ci = zext i1 %.0.i to i8                     ; 2 uses
  %i.cj = ptrtoint ptr %i.au to i64               ; 8 uses
  %i.ck = lshr i64 %i.cj, 1
  %i.cl = and i64 %i.cj, 510
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.au, label %bb.ck

bb.au:                                            ; preds = %lean_nat_eq.exit
  br i1 %.not.i661, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cn = lshr i64 %i.bt, 1
  %i.co = trunc i64 %i.cn to i32
  br label %lean_obj_tag.exit765

bb.aw:                                            ; preds = %bb.au
  %i.cp = getelementptr i8, ptr %i.bs, i64 4
  %.val.i764 = load i32, ptr %i.cp, align 4
  %i.cq = lshr i32 %.val.i764, 24
  br label %lean_obj_tag.exit765

lean_obj_tag.exit765:                             ; preds = %bb.av, %bb.aw
  %.0.i763 = phi i32 [ %i.co, %bb.av ], [ %i.cq, %bb.aw ]
  %i.cr = icmp eq i32 %.0.i763, 0
  br i1 %i.cr, label %bb.ax, label %bb.bm

bb.ax:                                            ; preds = %lean_obj_tag.exit765
  %i.cs = ptrtoint ptr %.0435 to i64
  %i.ct = and i64 %i.cs, 1
  %.not.i766 = icmp eq i64 %i.ct, 0
  br i1 %.not.i766, label %bb.ay, label %lean_del_object.exit

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_free_object(ptr noundef nonnull %.0435) #9
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.ax, %bb.ay
  %i.cu = and i64 %i.cj, 1
  %.not.i628 = icmp eq i64 %i.cu, 0
  br i1 %.not.i628, label %bb.az, label %lean_dec.exit629

bb.az:                                            ; preds = %lean_del_object.exit
  %i.cv = load i32, ptr %i.au, align 512, !tbaa !12 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 1
  br i1 %i.cw, label %bb.ba, label %bb.bb, !prof !13

bb.ba:                                            ; preds = %bb.az
  %i.cx = add nsw i32 %i.cv, -1
  store i32 %i.cx, ptr %i.au, align 512, !tbaa !12
  br label %lean_dec.exit629

bb.bb:                                            ; preds = %bb.az
  %.not.i674 = icmp eq i32 %i.cv, 0
  br i1 %.not.i674, label %lean_dec.exit629, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #9
  br label %lean_dec.exit629

lean_dec.exit629:                                 ; preds = %bb.bc, %bb.bb, %bb.ba, %lean_del_object.exit
  %i.cy = ptrtoint ptr %i.as to i64
  %i.cz = and i64 %i.cy, 1
  %.not.i626 = icmp eq i64 %i.cz, 0
  br i1 %.not.i626, label %bb.bd, label %lean_dec.exit627

bb.bd:                                            ; preds = %lean_dec.exit629
  %i.da = load i32, ptr %i.as, align 4, !tbaa !12 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.be, label %bb.bf, !prof !13

bb.be:                                            ; preds = %bb.bd
  %i.dc = add nsw i32 %i.da, -1
  store i32 %i.dc, ptr %i.as, align 4, !tbaa !12
  br label %lean_dec.exit627

bb.bf:                                            ; preds = %bb.bd
  %.not.i676 = icmp eq i32 %i.da, 0
  br i1 %.not.i676, label %lean_dec.exit627, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #9
  br label %lean_dec.exit627

lean_dec.exit627:                                 ; preds = %bb.bg, %bb.bf, %bb.be, %lean_dec.exit629
  %i.dd = ptrtoint ptr %.0430 to i64
  %i.de = and i64 %i.dd, 1
  %.not.i767 = icmp eq i64 %i.de, 0
  br i1 %.not.i767, label %bb.bh, label %lean_del_object.exit768

bb.bh:                                            ; preds = %lean_dec.exit627
  tail call void @lean_free_object(ptr noundef nonnull %.0430) #9
  br label %lean_del_object.exit768

lean_del_object.exit768:                          ; preds = %lean_dec.exit627, %bb.bh
  %i.df = ptrtoint ptr %i.ap to i64
  %i.dg = and i64 %i.df, 1
  %.not.i624 = icmp eq i64 %i.dg, 0
  br i1 %.not.i624, label %bb.bi, label %lean_dec.exit577.thread1023

bb.bi:                                            ; preds = %lean_del_object.exit768
  %i.dh = load i32, ptr %i.ap, align 4, !tbaa !12 ; 3 uses
  %i.di = icmp sgt i32 %i.dh, 1
  br i1 %i.di, label %bb.bj, label %bb.bk, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.dj = add nsw i32 %i.dh, -1
  store i32 %i.dj, ptr %i.ap, align 4, !tbaa !12
  br label %lean_dec.exit577.thread1023

bb.bk:                                            ; preds = %bb.bi
  %.not.i678 = icmp eq i32 %i.dh, 0
  br i1 %.not.i678, label %lean_dec.exit577.thread1023, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ap) #9
  br label %lean_dec.exit577.thread1023

bb.bm:                                            ; preds = %lean_obj_tag.exit765
  %.val.i769 = load i32, ptr %i.bs, align 4, !tbaa !12 ; 4 uses
  %i.dk = icmp eq i32 %.val.i769, 1
  br i1 %i.dk, label %.preheader.i771, label %bb.br

.preheader.i771:                                  ; preds = %bb.bm
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !10 ; 4 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = and i64 %i.dn, 1
  %.not.i.i773 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i773, label %bb.bn, label %lean_dec.exit.i774

bb.bn:                                            ; preds = %.preheader.i771
  %i.dp = load i32, ptr %i.dm, align 4, !tbaa !12 ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, 1
  br i1 %i.dq, label %bb.bo, label %bb.bp, !prof !13

bb.bo:                                            ; preds = %bb.bn
  %i.dr = add nsw i32 %i.dp, -1
  store i32 %i.dr, ptr %i.dm, align 4, !tbaa !12
  br label %lean_dec.exit.i774

bb.bp:                                            ; preds = %bb.bn
  %.not.i7.i778 = icmp eq i32 %i.dp, 0
  br i1 %.not.i7.i778, label %lean_dec.exit.i774, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #9
  br label %lean_dec.exit.i774

lean_dec.exit.i774:                               ; preds = %bb.bq, %bb.bp, %bb.bo, %.preheader.i771
  tail call void @lean_free_object(ptr noundef nonnull %i.bs) #9
  br label %lean_dec_ref_known.exit779

bb.br:                                            ; preds = %bb.bm
  %i.ds = icmp sgt i32 %.val.i769, 1
  br i1 %i.ds, label %bb.bs, label %bb.bt, !prof !13

bb.bs:                                            ; preds = %bb.br
  %i.dt = add nsw i32 %.val.i769, -1
  store i32 %i.dt, ptr %i.bs, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit779

bb.bt:                                            ; preds = %bb.br
  %.not.i8.i770 = icmp eq i32 %.val.i769, 0
  br i1 %.not.i8.i770, label %lean_dec_ref_known.exit779, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bs) #9
  br label %lean_dec_ref_known.exit779

lean_dec_ref_known.exit779:                       ; preds = %lean_dec.exit.i774, %bb.bs, %bb.bt, %bb.bu
  br i1 %i.e, label %bb.bv, label %lean_dec.exit617

bb.bv:                                            ; preds = %lean_dec_ref_known.exit779
  %i.du = ptrtoint ptr %.0435 to i64
  %i.dv = and i64 %i.du, 1
  %.not.i780 = icmp eq i64 %i.dv, 0
  br i1 %.not.i780, label %bb.bw, label %lean_del_object.exit781

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_free_object(ptr noundef nonnull %.0435) #9
  br label %lean_del_object.exit781

lean_del_object.exit781:                          ; preds = %bb.bv, %bb.bw
  %i.dw = and i64 %i.cj, 1
  %.not.i622 = icmp eq i64 %i.dw, 0
  br i1 %.not.i622, label %bb.bx, label %lean_dec.exit623

bb.bx:                                            ; preds = %lean_del_object.exit781
  %i.dx = load i32, ptr %i.au, align 512, !tbaa !12 ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 1
  br i1 %i.dy, label %bb.by, label %bb.bz, !prof !13

bb.by:                                            ; preds = %bb.bx
  %i.dz = add nsw i32 %i.dx, -1
  store i32 %i.dz, ptr %i.au, align 512, !tbaa !12
  br label %lean_dec.exit623

bb.bz:                                            ; preds = %bb.bx
  %.not.i680 = icmp eq i32 %i.dx, 0
  br i1 %.not.i680, label %lean_dec.exit623, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #9
  br label %lean_dec.exit623

lean_dec.exit623:                                 ; preds = %bb.ca, %bb.bz, %bb.by, %lean_del_object.exit781
  %i.ea = ptrtoint ptr %i.as to i64
  %i.eb = and i64 %i.ea, 1
  %.not.i620 = icmp eq i64 %i.eb, 0
  br i1 %.not.i620, label %bb.cb, label %lean_dec.exit621

bb.cb:                                            ; preds = %lean_dec.exit623
  %i.ec = load i32, ptr %i.as, align 4, !tbaa !12 ; 3 uses
  %i.ed = icmp sgt i32 %i.ec, 1
  br i1 %i.ed, label %bb.cc, label %bb.cd, !prof !13

bb.cc:                                            ; preds = %bb.cb
  %i.ee = add nsw i32 %i.ec, -1
  store i32 %i.ee, ptr %i.as, align 4, !tbaa !12
  br label %lean_dec.exit621

bb.cd:                                            ; preds = %bb.cb
  %.not.i682 = icmp eq i32 %i.ec, 0
  br i1 %.not.i682, label %lean_dec.exit621, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #9
  br label %lean_dec.exit621

lean_dec.exit621:                                 ; preds = %bb.ce, %bb.cd, %bb.cc, %lean_dec.exit623
  %i.ef = ptrtoint ptr %.0430 to i64
  %i.eg = and i64 %i.ef, 1
  %.not.i782 = icmp eq i64 %i.eg, 0
  br i1 %.not.i782, label %bb.cf, label %lean_del_object.exit783

bb.cf:                                            ; preds = %lean_dec.exit621
  tail call void @lean_free_object(ptr noundef nonnull %.0430) #9
  br label %lean_del_object.exit783

lean_del_object.exit783:                          ; preds = %lean_dec.exit621, %bb.cf
  %i.eh = ptrtoint ptr %i.ap to i64
  %i.ei = and i64 %i.eh, 1
  %.not.i618 = icmp eq i64 %i.ei, 0
  br i1 %.not.i618, label %bb.cg, label %lean_dec.exit577.thread1023

bb.cg:                                            ; preds = %lean_del_object.exit783
  %i.ej = load i32, ptr %i.ap, align 4, !tbaa !12 ; 3 uses
  %i.ek = icmp sgt i32 %i.ej, 1
  br i1 %i.ek, label %bb.ch, label %bb.ci, !prof !13

bb.ch:                                            ; preds = %bb.cg
  %i.el = add nsw i32 %i.ej, -1
  store i32 %i.el, ptr %i.ap, align 4, !tbaa !12
  br label %lean_dec.exit577.thread1023

bb.ci:                                            ; preds = %bb.cg
  %.not.i684 = icmp eq i32 %i.ej, 0
  br i1 %.not.i684, label %lean_dec.exit577.thread1023, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ap) #9
  br label %lean_dec.exit577.thread1023

bb.ck:                                            ; preds = %lean_nat_eq.exit
  br i1 %.not.i661, label %bb.cl, label %lean_dec.exit617

bb.cl:                                            ; preds = %bb.ck
  %i.em = load i32, ptr %i.bs, align 4, !tbaa !12 ; 3 uses
  %i.en = icmp sgt i32 %i.em, 1
  br i1 %i.en, label %bb.cm, label %bb.cn, !prof !13

bb.cm:                                            ; preds = %bb.cl
  %i.eo = add nsw i32 %i.em, -1
  store i32 %i.eo, ptr %i.bs, align 4, !tbaa !12
  br label %lean_dec.exit617

bb.cn:                                            ; preds = %bb.cl
  %.not.i686 = icmp eq i32 %i.em, 0
  br i1 %.not.i686, label %lean_dec.exit617, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bs) #9
  br label %lean_dec.exit617

lean_alloc_ctor.exit805:                          ; preds = %lean_obj_once.exit874, %lean_obj_once.exit824, %bb.eo
  %.sink1670 = phi ptr [ %i.jv, %lean_obj_once.exit824 ], [ %i.hr, %bb.eo ], [ %i.oo, %lean_obj_once.exit874 ] ; 5 uses
  %.sink = phi ptr [ %i.nk, %lean_obj_once.exit824 ], [ %i.nk, %bb.eo ], [ %i.of, %lean_obj_once.exit874 ]
  %.0.i873.sink = phi ptr [ %.0.i823, %lean_obj_once.exit824 ], [ %.0459, %bb.eo ], [ %.0.i873, %lean_obj_once.exit874 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.sink1670, i64 4
  store i32 1, ptr %.sink1670, align 4, !tbaa !12
  store i32 117571608, ptr %i.ep, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %.sink1670, i64 8
  store ptr %.sink, ptr %i.eq, align 8, !tbaa !10
  %i.er = getelementptr inbounds nuw i8, ptr %.sink1670, i64 16
  store ptr %.0.i873.sink, ptr %i.er, align 8, !tbaa !10
  %i.es = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_addStructFieldAux_spec__0___redArg(ptr noundef nonnull @l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_addStructFieldAux___closed__0_value, ptr noundef nonnull %.sink1670, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13) ; 13 uses
  %i.et = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.eu = and i64 %i.et, 1
  %.not.i784 = icmp eq i64 %i.eu, 0               ; 2 uses
  br i1 %.not.i784, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %lean_alloc_ctor.exit805
  %i.ev = lshr i64 %i.et, 1
  %i.ew = trunc i64 %i.ev to i32
  br label %lean_obj_tag.exit787

bb.cq:                                            ; preds = %lean_alloc_ctor.exit805
  %i.ex = getelementptr i8, ptr %i.es, i64 4
  %.val.i786 = load i32, ptr %i.ex, align 4
  %i.ey = lshr i32 %.val.i786, 24
  br label %lean_obj_tag.exit787

lean_obj_tag.exit787:                             ; preds = %bb.cp, %bb.cq
  %.0.i785 = phi i32 [ %i.ew, %bb.cp ], [ %i.ey, %bb.cq ]
  %i.ez = icmp eq i32 %.0.i785, 0
  br i1 %i.ez, label %bb.cr, label %bb.da

bb.cr:                                            ; preds = %lean_obj_tag.exit787
  %.val.i788 = load i32, ptr %i.es, align 4, !tbaa !12 ; 4 uses
  %i.fa = icmp eq i32 %.val.i788, 1
  br i1 %i.fa, label %.preheader.i790, label %bb.cw

.preheader.i790:                                  ; preds = %bb.cr
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !10 ; 4 uses
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = and i64 %i.fd, 1
  %.not.i.i792 = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i792, label %bb.cs, label %lean_dec.exit.i793

bb.cs:                                            ; preds = %.preheader.i790
  %i.ff = load i32, ptr %i.fc, align 4, !tbaa !12 ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 1
  br i1 %i.fg, label %bb.ct, label %bb.cu, !prof !13

bb.ct:                                            ; preds = %bb.cs
  %i.fh = add nsw i32 %i.ff, -1
  store i32 %i.fh, ptr %i.fc, align 4, !tbaa !12
  br label %lean_dec.exit.i793

bb.cu:                                            ; preds = %bb.cs
  %.not.i7.i797 = icmp eq i32 %i.ff, 0
  br i1 %.not.i7.i797, label %lean_dec.exit.i793, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fc) #9
  br label %lean_dec.exit.i793

lean_dec.exit.i793:                               ; preds = %bb.cv, %bb.cu, %bb.ct, %.preheader.i790
  tail call void @lean_free_object(ptr noundef nonnull %i.es) #9
  br label %lean_dec.exit625

bb.cw:                                            ; preds = %bb.cr
  %i.fi = icmp sgt i32 %.val.i788, 1
  br i1 %i.fi, label %bb.cx, label %bb.cy, !prof !13

bb.cx:                                            ; preds = %bb.cw
  %i.fj = add nsw i32 %.val.i788, -1
  store i32 %i.fj, ptr %i.es, align 4, !tbaa !12
  br label %lean_dec.exit625

bb.cy:                                            ; preds = %bb.cw
  %.not.i8.i789 = icmp eq i32 %.val.i788, 0
  br i1 %.not.i8.i789, label %lean_dec.exit625, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.es) #9
  br label %lean_dec.exit625

bb.da:                                            ; preds = %lean_obj_tag.exit787
  br i1 %.not.i836, label %bb.db, label %lean_dec.exit615

bb.db:                                            ; preds = %bb.da
  %i.fk = load i32, ptr %.0505, align 4, !tbaa !12 ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 1
  br i1 %i.fl, label %bb.dc, label %bb.dd, !prof !13

bb.dc:                                            ; preds = %bb.db
  %i.fm = add nsw i32 %i.fk, -1
  store i32 %i.fm, ptr %.0505, align 4, !tbaa !12
  br label %lean_dec.exit615

bb.dd:                                            ; preds = %bb.db
  %.not.i688 = icmp eq i32 %i.fk, 0
  br i1 %.not.i688, label %lean_dec.exit615, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0505) #9
  br label %lean_dec.exit615

lean_dec.exit615:                                 ; preds = %bb.de, %bb.dd, %bb.dc, %bb.da
  %i.fn = and i64 %i.cj, 1
  %.not.i612 = icmp eq i64 %i.fn, 0
  br i1 %.not.i612, label %bb.df, label %lean_dec.exit613

end_hunk_1
begin_hunk_2_@l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Array_filterMapM___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_synthOptParamFields_spec__4_spec__5:bb.a
  %.not.i.i714 = icmp eq i32 %.val.i.i713, 0
  br i1 %.not.i.i714, label %lean_inc.exit638, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = atomicrmw sub ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit638

lean_inc.exit638:                                 ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %i.ba = ptrtoint ptr %i.ar to i64
  %i.bb = and i64 %i.ba, 1
  %.not.i635 = icmp eq i64 %i.bb, 0
  br i1 %.not.i635, label %bb.y, label %lean_inc.exit636

bb.y:                                             ; preds = %lean_inc.exit638
  %.val.i.i716 = load i32, ptr %i.ar, align 4, !tbaa !12 ; 3 uses
  %i.bc = icmp sgt i32 %.val.i.i716, 0
  br i1 %i.bc, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.bd = add nuw i32 %.val.i.i716, 1
  store i32 %i.bd, ptr %i.ar, align 4, !tbaa !12
  br label %lean_inc.exit636

bb.aa:                                            ; preds = %bb.y
  %.not.i.i717 = icmp eq i32 %.val.i.i716, 0
  br i1 %.not.i.i717, label %lean_inc.exit636, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.be = atomicrmw sub ptr %i.ar, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit636

lean_inc.exit636:                                 ; preds = %lean_inc.exit638, %bb.z, %bb.aa, %bb.ab
  %i.bf = load i32, ptr %i.ap, align 8, !tbaa !12 ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %lean_inc.exit636
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %i.ap, align 8, !tbaa !12
  br label %lean_dec.exit605

bb.ad:                                            ; preds = %lean_inc.exit636
  %.not.i644 = icmp eq i32 %i.bf, 0
  br i1 %.not.i644, label %lean_dec.exit605, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ap) #9
  br label %lean_dec.exit605

lean_dec.exit605:                                 ; preds = %bb.ac, %bb.ad, %bb.ae, %lean_dec.exit607
  %.0405 = phi ptr [ %i.ap, %lean_dec.exit607 ], [ inttoptr (i64 1 to ptr), %bb.ae ], [ inttoptr (i64 1 to ptr), %bb.ad ], [ inttoptr (i64 1 to ptr), %bb.ac ] ; 20 uses
  %i.bi = tail call ptr @l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_isFieldNotSolved_x3f(ptr noundef %i.ao, ptr poison, ptr noundef %6, ptr poison, ptr poison, ptr poison, ptr noundef %10, ptr poison, ptr poison) ; 13 uses
  %i.bj = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bk = and i64 %i.bj, 1
  %.not.i719 = icmp eq i64 %i.bk, 0               ; 2 uses
  br i1 %.not.i719, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %lean_dec.exit605
  %i.bl = lshr i64 %i.bj, 1
  %i.bm = trunc i64 %i.bl to i32
  br label %lean_obj_tag.exit

bb.ag:                                            ; preds = %lean_dec.exit605
  %i.bn = getelementptr i8, ptr %i.bi, i64 4
  %.val.i = load i32, ptr %i.bn, align 4
  %i.bo = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.af, %bb.ag
  %.0.i720 = phi i32 [ %i.bm, %bb.af ], [ %i.bo, %bb.ag ]
  %i.bp = icmp eq i32 %.0.i720, 0
  br i1 %i.bp, label %bb.ah, label %bb.lv

bb.ah:                                            ; preds = %lean_obj_tag.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !10 ; 13 uses
  %i.bs = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bt = and i64 %i.bs, 1
  %.not.i633 = icmp eq i64 %i.bt, 0               ; 3 uses
  br i1 %.not.i633, label %bb.ai, label %lean_inc.exit634

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i721 = load i32, ptr %i.br, align 4, !tbaa !12 ; 3 uses
  %i.bu = icmp sgt i32 %.val.i.i721, 0
  br i1 %i.bu, label %bb.aj, label %bb.ak, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.bv = add nuw i32 %.val.i.i721, 1
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !12
  br label %lean_inc.exit634

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i722 = icmp eq i32 %.val.i.i721, 0
  br i1 %.not.i.i722, label %lean_inc.exit634, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bw = atomicrmw sub ptr %i.br, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit634

lean_inc.exit634:                                 ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah
  %.val.i724 = load i32, ptr %i.bi, align 8, !tbaa !12 ; 4 uses
  %i.bx = icmp eq i32 %.val.i724, 1
  br i1 %i.bx, label %.preheader.i, label %bb.aq

.preheader.i:                                     ; preds = %lean_inc.exit634
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !10 ; 4 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = and i64 %i.bz, 1
  %.not.i.i725 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i725, label %bb.am, label %lean_dec.exit.i

bb.am:                                            ; preds = %.preheader.i
  %i.cb = load i32, ptr %i.by, align 4, !tbaa !12 ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %bb.an, label %bb.ao, !prof !13

bb.an:                                            ; preds = %bb.am
  %i.cd = add nsw i32 %i.cb, -1
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.ao:                                            ; preds = %bb.am
  %.not.i7.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.by) #9
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.ap, %bb.ao, %bb.an, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.bi) #9
  br label %lean_dec_ref_known.exit

bb.aq:                                            ; preds = %lean_inc.exit634
  %i.ce = icmp sgt i32 %.val.i724, 1
  br i1 %i.ce, label %bb.ar, label %bb.as, !prof !13

bb.ar:                                            ; preds = %bb.aq
  %i.cf = add nsw i32 %.val.i724, -1
  store i32 %i.cf, ptr %i.bi, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.as:                                            ; preds = %bb.aq
  %.not.i8.i = icmp eq i32 %.val.i724, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bi) #9
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.ar, %bb.as, %bb.at
  br i1 %.not.i702, label %.critedge.i, label %lean_nat_eq.exit, !prof !20

.critedge.i:                                      ; preds = %lean_dec_ref_known.exit
  %i.cg = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #9
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %lean_dec_ref_known.exit, %.critedge.i
  %.0.i = phi i1 [ %i.cg, %.critedge.i ], [ %i.d, %lean_dec_ref_known.exit ]
  %i.ch = ptrtoint ptr %i.at to i64               ; 7 uses
  %i.ci = lshr i64 %i.ch, 1
  %i.cj = and i64 %i.ch, 510
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.au, label %bb.bv

bb.au:                                            ; preds = %lean_nat_eq.exit
  br i1 %.not.i633, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cl = lshr i64 %i.bs, 1
  %i.cm = trunc i64 %i.cl to i32
  br label %lean_obj_tag.exit729

bb.aw:                                            ; preds = %bb.au
  %i.cn = getelementptr i8, ptr %i.br, i64 4
  %.val.i728 = load i32, ptr %i.cn, align 4
  %i.co = lshr i32 %.val.i728, 24
  br label %lean_obj_tag.exit729

lean_obj_tag.exit729:                             ; preds = %bb.av, %bb.aw
  %.0.i727 = phi i32 [ %i.cm, %bb.av ], [ %i.co, %bb.aw ]
  %i.cp = icmp eq i32 %.0.i727, 0
  br i1 %i.cp, label %bb.ax, label %bb.bm

bb.ax:                                            ; preds = %lean_obj_tag.exit729
  %i.cq = ptrtoint ptr %.0405 to i64
  %i.cr = and i64 %i.cq, 1
  %.not.i730 = icmp eq i64 %i.cr, 0
  br i1 %.not.i730, label %bb.ay, label %lean_del_object.exit

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_free_object(ptr noundef nonnull %.0405) #9
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.ax, %bb.ay
  %i.cs = and i64 %i.ch, 1
  %.not.i602 = icmp eq i64 %i.cs, 0
  br i1 %.not.i602, label %bb.az, label %lean_dec.exit603

bb.az:                                            ; preds = %lean_del_object.exit
  %i.ct = load i32, ptr %i.at, align 512, !tbaa !12 ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, 1
  br i1 %i.cu, label %bb.ba, label %bb.bb, !prof !13

bb.ba:                                            ; preds = %bb.az
  %i.cv = add nsw i32 %i.ct, -1
  store i32 %i.cv, ptr %i.at, align 512, !tbaa !12
  br label %lean_dec.exit603

bb.bb:                                            ; preds = %bb.az
  %.not.i646 = icmp eq i32 %i.ct, 0
  br i1 %.not.i646, label %lean_dec.exit603, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.at) #9
  br label %lean_dec.exit603

lean_dec.exit603:                                 ; preds = %bb.bc, %bb.bb, %bb.ba, %lean_del_object.exit
  %i.cw = ptrtoint ptr %i.ar to i64
  %i.cx = and i64 %i.cw, 1
  %.not.i600 = icmp eq i64 %i.cx, 0
  br i1 %.not.i600, label %bb.bd, label %lean_dec.exit601

bb.bd:                                            ; preds = %lean_dec.exit603
  %i.cy = load i32, ptr %i.ar, align 4, !tbaa !12 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, 1
  br i1 %i.cz, label %bb.be, label %bb.bf, !prof !13

bb.be:                                            ; preds = %bb.bd
  %i.da = add nsw i32 %i.cy, -1
  store i32 %i.da, ptr %i.ar, align 4, !tbaa !12
  br label %lean_dec.exit601

bb.bf:                                            ; preds = %bb.bd
  %.not.i648 = icmp eq i32 %i.cy, 0
  br i1 %.not.i648, label %lean_dec.exit601, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ar) #9
  br label %lean_dec.exit601

lean_dec.exit601:                                 ; preds = %bb.bg, %bb.bf, %bb.be, %lean_dec.exit603
  %i.db = ptrtoint ptr %.0400 to i64
  %i.dc = and i64 %i.db, 1
  %.not.i731 = icmp eq i64 %i.dc, 0
  br i1 %.not.i731, label %bb.bh, label %lean_del_object.exit732

bb.bh:                                            ; preds = %lean_dec.exit601
  tail call void @lean_free_object(ptr noundef nonnull %.0400) #9
  br label %lean_del_object.exit732

lean_del_object.exit732:                          ; preds = %lean_dec.exit601, %bb.bh
  %i.dd = ptrtoint ptr %i.ao to i64
  %i.de = and i64 %i.dd, 1
  %.not.i598 = icmp eq i64 %i.de, 0
  br i1 %.not.i598, label %bb.bi, label %lean_dec.exit559

bb.bi:                                            ; preds = %lean_del_object.exit732
  %i.df = load i32, ptr %i.ao, align 4, !tbaa !12 ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 1
  br i1 %i.dg, label %bb.bj, label %bb.bk, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.dh = add nsw i32 %i.df, -1
  store i32 %i.dh, ptr %i.ao, align 4, !tbaa !12
  br label %lean_dec.exit559

bb.bk:                                            ; preds = %bb.bi
  %.not.i650 = icmp eq i32 %i.df, 0
  br i1 %.not.i650, label %lean_dec.exit559, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #9
  br label %lean_dec.exit559

bb.bm:                                            ; preds = %lean_obj_tag.exit729
  %.val.i733 = load i32, ptr %i.br, align 4, !tbaa !12 ; 4 uses
  %i.di = icmp eq i32 %.val.i733, 1
  br i1 %i.di, label %.preheader.i735, label %bb.br

.preheader.i735:                                  ; preds = %bb.bm
  %i.dj = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !10 ; 4 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = and i64 %i.dl, 1
  %.not.i.i737 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i737, label %bb.bn, label %lean_dec.exit.i738

bb.bn:                                            ; preds = %.preheader.i735
  %i.dn = load i32, ptr %i.dk, align 4, !tbaa !12 ; 3 uses
  %i.do = icmp sgt i32 %i.dn, 1
  br i1 %i.do, label %bb.bo, label %bb.bp, !prof !13

bb.bo:                                            ; preds = %bb.bn
  %i.dp = add nsw i32 %i.dn, -1
  store i32 %i.dp, ptr %i.dk, align 4, !tbaa !12
  br label %lean_dec.exit.i738

bb.bp:                                            ; preds = %bb.bn
  %.not.i7.i742 = icmp eq i32 %i.dn, 0
  br i1 %.not.i7.i742, label %lean_dec.exit.i738, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dk) #9
  br label %lean_dec.exit.i738

lean_dec.exit.i738:                               ; preds = %bb.bq, %bb.bp, %bb.bo, %.preheader.i735
  tail call void @lean_free_object(ptr noundef nonnull %i.br) #9
  br label %lean_dec_ref_known.exit743

bb.br:                                            ; preds = %bb.bm
  %i.dq = icmp sgt i32 %.val.i733, 1
  br i1 %i.dq, label %bb.bs, label %bb.bt, !prof !13

bb.bs:                                            ; preds = %bb.br
  %i.dr = add nsw i32 %.val.i733, -1
  store i32 %i.dr, ptr %i.br, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit743

bb.bt:                                            ; preds = %bb.br
  %.not.i8.i734 = icmp eq i32 %.val.i733, 0
  br i1 %.not.i8.i734, label %lean_dec_ref_known.exit743, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #9
  br label %lean_dec_ref_known.exit743

bb.bv:                                            ; preds = %lean_nat_eq.exit
  br i1 %.not.i633, label %bb.bw, label %lean_dec_ref_known.exit743

bb.bw:                                            ; preds = %bb.bv
  %i.ds = load i32, ptr %i.br, align 4, !tbaa !12 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.bx, label %bb.by, !prof !13

bb.bx:                                            ; preds = %bb.bw
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %i.br, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit743

bb.by:                                            ; preds = %bb.bw
  %.not.i652 = icmp eq i32 %i.ds, 0
  br i1 %.not.i652, label %lean_dec_ref_known.exit743, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #9
  br label %lean_dec_ref_known.exit743

lean_del_object.exit767:                          ; preds = %lean_alloc_ctor.exit810, %lean_alloc_ctor.exit832, %lean_alloc_ctor.exit763, %bb.dt
  %.0452 = phi ptr [ %i.ge, %lean_alloc_ctor.exit763 ], [ %.0405, %bb.dt ], [ %i.ov, %lean_alloc_ctor.exit832 ], [ %i.md, %lean_alloc_ctor.exit810 ]
  %i.dv = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_addStructFieldAux_spec__0___redArg(ptr noundef nonnull @l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_addStructFieldAux___closed__0_value, ptr noundef nonnull %.0452, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12) ; 13 uses
  %i.dw = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dx = and i64 %i.dw, 1
  %.not.i744 = icmp eq i64 %i.dx, 0               ; 2 uses
  br i1 %.not.i744, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %lean_del_object.exit767
  %i.dy = lshr i64 %i.dw, 1
  %i.dz = trunc i64 %i.dy to i32
  br label %lean_obj_tag.exit747

bb.cb:                                            ; preds = %lean_del_object.exit767
  %i.ea = getelementptr i8, ptr %i.dv, i64 4
  %.val.i746 = load i32, ptr %i.ea, align 4
  %i.eb = lshr i32 %.val.i746, 24
  br label %lean_obj_tag.exit747

lean_obj_tag.exit747:                             ; preds = %bb.ca, %bb.cb
  %.0.i745 = phi i32 [ %i.dz, %bb.ca ], [ %i.eb, %bb.cb ]
  %i.ec = icmp eq i32 %.0.i745, 0
  br i1 %i.ec, label %bb.cc, label %bb.cl

bb.cc:                                            ; preds = %lean_obj_tag.exit747
  %.val.i748 = load i32, ptr %i.dv, align 4, !tbaa !12 ; 4 uses
  %i.ed = icmp eq i32 %.val.i748, 1
  br i1 %i.ed, label %.preheader.i750, label %bb.ch

.preheader.i750:                                  ; preds = %bb.cc
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !10 ; 4 uses
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = and i64 %i.eg, 1
  %.not.i.i752 = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i752, label %bb.cd, label %lean_dec.exit.i753

bb.cd:                                            ; preds = %.preheader.i750
  %i.ei = load i32, ptr %i.ef, align 4, !tbaa !12 ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.ce, label %bb.cf, !prof !13

bb.ce:                                            ; preds = %bb.cd
  %i.ek = add nsw i32 %i.ei, -1
  store i32 %i.ek, ptr %i.ef, align 4, !tbaa !12
  br label %lean_dec.exit.i753

bb.cf:                                            ; preds = %bb.cd
  %.not.i7.i757 = icmp eq i32 %i.ei, 0
  br i1 %.not.i7.i757, label %lean_dec.exit.i753, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ef) #9
  br label %lean_dec.exit.i753

lean_dec.exit.i753:                               ; preds = %bb.cg, %bb.cf, %bb.ce, %.preheader.i750
  tail call void @lean_free_object(ptr noundef nonnull %i.dv) #9
  br label %lean_dec.exit599

end_hunk_2
begin_hunk_3_@l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_processField___redArg___lam__0:bb.a
  %.not.i.i454 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i454, label %bb.bh, label %lean_dec.exit.i455

bb.bh:                                            ; preds = %.preheader.i452
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !12 ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %bb.bi, label %bb.bj, !prof !13

bb.bi:                                            ; preds = %bb.bh
  %i.cq = add nsw i32 %i.co, -1
  store i32 %i.cq, ptr %i.cl, align 4, !tbaa !12
  br label %lean_dec.exit.i455

bb.bj:                                            ; preds = %bb.bh
  %.not.i7.i459 = icmp eq i32 %i.co, 0
  br i1 %.not.i7.i459, label %lean_dec.exit.i455, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #9
  br label %lean_dec.exit.i455

lean_dec.exit.i455:                               ; preds = %bb.bk, %bb.bj, %bb.bi, %.preheader.i452
  tail call void @lean_free_object(ptr noundef nonnull %i.bv) #9
  br label %lean_dec_ref_known.exit460

bb.bl:                                            ; preds = %lean_inc.exit344
  %i.cr = icmp sgt i32 %.val.i450, 1
  br i1 %i.cr, label %bb.bm, label %bb.bn, !prof !13

bb.bm:                                            ; preds = %bb.bl
  %i.cs = add nsw i32 %.val.i450, -1
  store i32 %i.cs, ptr %i.bv, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit460

bb.bn:                                            ; preds = %bb.bl
  %.not.i8.i451 = icmp eq i32 %.val.i450, 0
  br i1 %.not.i8.i451, label %lean_dec_ref_known.exit460, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv) #9
  br label %lean_dec_ref_known.exit460

lean_dec_ref_known.exit460:                       ; preds = %lean_dec.exit.i455, %bb.bm, %bb.bn, %bb.bo
  %i.ct = and i64 %i.cf, 510
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.bp, label %bb.df

bb.bp:                                            ; preds = %lean_dec_ref_known.exit460
  br i1 %.not.i404, label %bb.bq, label %lean_dec.exit305

bb.bq:                                            ; preds = %bb.bp
  %i.cv = load i32, ptr %i.p, align 4, !tbaa !12  ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 1
  br i1 %i.cw, label %bb.br, label %bb.bs, !prof !13

bb.br:                                            ; preds = %bb.bq
  %i.cx = add nsw i32 %i.cv, -1
  store i32 %i.cx, ptr %i.p, align 4, !tbaa !12
  br label %lean_dec.exit305

bb.bs:                                            ; preds = %bb.bq
  %.not.i351 = icmp eq i32 %i.cv, 0
  br i1 %.not.i351, label %lean_dec.exit305, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #9
  br label %lean_dec.exit305

lean_dec.exit305:                                 ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bp
  %.val.i.i461 = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.cy = icmp sgt i32 %.val.i.i461, 0
  br i1 %i.cy, label %bb.bu, label %bb.bv, !prof !13

bb.bu:                                            ; preds = %lean_dec.exit305
  %i.cz = add nuw i32 %.val.i.i461, 1
  store i32 %i.cz, ptr %0, align 4, !tbaa !12
  br label %lean_inc_ref.exit463

bb.bv:                                            ; preds = %lean_dec.exit305
  %.not.i.i462 = icmp eq i32 %.val.i.i461, 0
  br i1 %.not.i.i462, label %lean_inc_ref.exit463, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.da = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit463

lean_inc_ref.exit463:                             ; preds = %bb.bu, %bb.bv, %bb.bw
  %i.db = tail call ptr @l_Lean_Meta_mkHasTypeButIsExpectedMsg___redArg(ptr noundef %i.bd, ptr noundef nonnull %0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_mkCtorHeader___closed__0_value) #9 ; 6 uses
  %i.dc = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.dd = and i64 %i.dc, 1
  %.not.i464 = icmp eq i64 %i.dd, 0
  br i1 %.not.i464, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %lean_inc_ref.exit463
  %i.de = lshr i64 %i.dc, 1
  %i.df = trunc i64 %i.de to i32
  br label %lean_obj_tag.exit467

bb.by:                                            ; preds = %lean_inc_ref.exit463
  %i.dg = getelementptr i8, ptr %i.db, i64 4
  %.val.i466 = load i32, ptr %i.dg, align 4
  %i.dh = lshr i32 %.val.i466, 24
  br label %lean_obj_tag.exit467

lean_obj_tag.exit467:                             ; preds = %bb.bx, %bb.by
  %.0.i465 = phi i32 [ %i.df, %bb.bx ], [ %i.dh, %bb.by ]
  %i.di = icmp eq i32 %.0.i465, 0
  br i1 %i.di, label %bb.bz, label %bb.cs

bb.bz:                                            ; preds = %lean_obj_tag.exit467
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !10 ; 5 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = and i64 %i.dl, 1
  %.not.i341 = icmp eq i64 %i.dm, 0
  br i1 %.not.i341, label %bb.ca, label %lean_inc.exit342

bb.ca:                                            ; preds = %bb.bz
  %.val.i.i468 = load i32, ptr %i.dk, align 4, !tbaa !12 ; 3 uses
  %i.dn = icmp sgt i32 %.val.i.i468, 0
  br i1 %i.dn, label %bb.cb, label %bb.cc, !prof !13

bb.cb:                                            ; preds = %bb.ca
  %i.do = add nuw i32 %.val.i.i468, 1
  store i32 %i.do, ptr %i.dk, align 4, !tbaa !12
  br label %lean_inc.exit342

bb.cc:                                            ; preds = %bb.ca
  %.not.i.i469 = icmp eq i32 %.val.i.i468, 0
  br i1 %.not.i.i469, label %lean_inc.exit342, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.dp = atomicrmw sub ptr %i.dk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit342

lean_inc.exit342:                                 ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.bz
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.db, i32 noundef 1)
  %i.dq = load atomic i32, ptr @l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_processField___redArg___lam__0___closed__1_once seq_cst, align 4, !tbaa !15
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %bb.ce, label %bb.cf, !prof !13

bb.ce:                                            ; preds = %lean_inc.exit342
  %i.ds = load ptr, ptr @l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_processField___redArg___lam__0___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.cf:                                            ; preds = %lean_inc.exit342
  %i.dt = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_processField___redArg___lam__0___closed__1, ptr noundef nonnull @l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_processField___redArg___lam__0___closed__1_once, ptr noundef nonnull @_init_l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_processField___redArg___lam__0___closed__1) #9
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.ce, %bb.cf
  %.0.i471 = phi ptr [ %i.ds, %bb.ce ], [ %i.dt, %bb.cf ]
  br i1 %.not.i349, label %bb.cg, label %lean_inc.exit340

bb.cg:                                            ; preds = %lean_obj_once.exit
  %.val.i.i472 = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.du = icmp sgt i32 %.val.i.i472, 0
  br i1 %i.du, label %bb.ch, label %bb.ci, !prof !13

bb.ch:                                            ; preds = %bb.cg
  %i.dv = add nuw i32 %.val.i.i472, 1
  store i32 %i.dv, ptr %1, align 4, !tbaa !12
  br label %lean_inc.exit340

bb.ci:                                            ; preds = %bb.cg
  %.not.i.i473 = icmp eq i32 %.val.i.i472, 0
  br i1 %.not.i.i473, label %lean_inc.exit340, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.dw = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit340

lean_inc.exit340:                                 ; preds = %bb.cj, %bb.ci, %bb.ch, %lean_obj_once.exit
  %i.dx = tail call ptr @l_Lean_MessageData_ofName(ptr noundef %1) #9
  %i.dy = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.0.i471, ptr %i.dz, align 8, !tbaa !10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !10
  %i.eb = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_expandFields_spec__3___closed__1_once seq_cst, align 4, !tbaa !15
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %bb.ck, label %bb.cl, !prof !13

bb.ck:                                            ; preds = %lean_inc.exit340
  %i.ed = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_expandFields_spec__3___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit476

bb.cl:                                            ; preds = %lean_inc.exit340
  %i.ee = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_expandFields_spec__3___closed__1, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_expandFields_spec__3___closed__1_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_expandFields_spec__3___closed__1) #9
  br label %lean_obj_once.exit476

lean_obj_once.exit476:                            ; preds = %bb.ck, %bb.cl
  %.0.i475 = phi ptr [ %i.ed, %bb.ck ], [ %i.ee, %bb.cl ]
  %i.ef = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.dy, ptr %i.eg, align 8, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store ptr %.0.i475, ptr %i.eh, align 8, !tbaa !10
  br i1 %.not.i343, label %bb.cm, label %lean_dec.exit303

bb.cm:                                            ; preds = %lean_obj_once.exit476
  %i.ei = load i32, ptr %i.ce, align 512, !tbaa !12 ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.cn, label %bb.co, !prof !13

bb.cn:                                            ; preds = %bb.cm
  %i.ek = add nsw i32 %i.ei, -1
  store i32 %i.ek, ptr %i.ce, align 512, !tbaa !12
  br label %lean_dec.exit303

bb.co:                                            ; preds = %bb.cm
  %.not.i352 = icmp eq i32 %i.ei, 0
  br i1 %.not.i352, label %lean_dec.exit303, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ce) #9
  br label %lean_dec.exit303

lean_dec.exit303:                                 ; preds = %bb.cp, %bb.co, %bb.cn, %lean_obj_once.exit476
  %i.el = tail call ptr @l_Lean_MessageData_ofConstName(ptr noundef %3, i8 noundef zeroext 0) #9
  %i.em = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.ef, ptr %i.en, align 8, !tbaa !10
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store ptr %i.el, ptr %i.eo, align 8, !tbaa !10
  %i.ep = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_synthOptParamFields_spec__5___closed__1_once seq_cst, align 4, !tbaa !15
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.cq, label %bb.cr, !prof !13

bb.cq:                                            ; preds = %lean_dec.exit303
  %i.er = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_synthOptParamFields_spec__5___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit478

bb.cr:                                            ; preds = %lean_dec.exit303
  %i.es = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_synthOptParamFields_spec__5___closed__1, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_synthOptParamFields_spec__5___closed__1_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_synthOptParamFields_spec__5___closed__1) #9
  br label %lean_obj_once.exit478

lean_obj_once.exit478:                            ; preds = %bb.cq, %bb.cr
  %.0.i477 = phi ptr [ %i.er, %bb.cq ], [ %i.es, %bb.cr ]
  %i.et = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.em, ptr %i.eu, align 8, !tbaa !10
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr %.0.i477, ptr %i.ev, align 8, !tbaa !10
  %i.ew = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.et, ptr %i.ex, align 8, !tbaa !10
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store ptr %i.dk, ptr %i.ey, align 8, !tbaa !10
  %i.ez = tail call ptr @l_Lean_throwError___at___00Lean_throwErrorAt___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_instantiateStructDefaultValueFn_x3f___at___00__private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_getFieldDefaultValue_x3f_spec__0_spec__0_spec__1_spec__4_spec__9_spec__12_spec__14___redArg(ptr noundef nonnull %i.ew, ptr noundef nonnull %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12)
  br label %lean_dec_ref_known.exit498

bb.cs:                                            ; preds = %lean_obj_tag.exit467
  br i1 %.not.i343, label %bb.ct, label %lean_dec.exit301

bb.ct:                                            ; preds = %bb.cs
  %i.fa = load i32, ptr %i.ce, align 512, !tbaa !12 ; 3 uses
  %i.fb = icmp sgt i32 %i.fa, 1
  br i1 %i.fb, label %bb.cu, label %bb.cv, !prof !13

bb.cu:                                            ; preds = %bb.ct
  %i.fc = add nsw i32 %i.fa, -1
  store i32 %i.fc, ptr %i.ce, align 512, !tbaa !12
  br label %lean_dec.exit301

bb.cv:                                            ; preds = %bb.ct
  %.not.i354 = icmp eq i32 %i.fa, 0
  br i1 %.not.i354, label %lean_dec.exit301, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ce) #9
  br label %lean_dec.exit301

lean_dec.exit301:                                 ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.cs
  %i.fd = ptrtoint ptr %3 to i64
  %i.fe = and i64 %i.fd, 1
  %.not.i298 = icmp eq i64 %i.fe, 0
  br i1 %.not.i298, label %bb.cx, label %lean_dec.exit299

bb.cx:                                            ; preds = %lean_dec.exit301
  %i.ff = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 1
  br i1 %i.fg, label %bb.cy, label %bb.cz, !prof !13

bb.cy:                                            ; preds = %bb.cx
  %i.fh = add nsw i32 %i.ff, -1
  store i32 %i.fh, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit299

bb.cz:                                            ; preds = %bb.cx
  %.not.i356 = icmp eq i32 %i.ff, 0
  br i1 %.not.i356, label %lean_dec.exit299, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec.exit299

lean_dec.exit299:                                 ; preds = %bb.da, %bb.cz, %bb.cy, %lean_dec.exit301
  %i.fi = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !10 ; 5 uses
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = and i64 %i.fk, 1
  %.not.i337 = icmp eq i64 %i.fl, 0
  br i1 %.not.i337, label %bb.db, label %lean_inc.exit338

bb.db:                                            ; preds = %lean_dec.exit299
  %.val.i.i479 = load i32, ptr %i.fj, align 4, !tbaa !12 ; 3 uses
  %i.fm = icmp sgt i32 %.val.i.i479, 0
  br i1 %i.fm, label %bb.dc, label %bb.dd, !prof !13

bb.dc:                                            ; preds = %bb.db
  %i.fn = add nuw i32 %.val.i.i479, 1
  store i32 %i.fn, ptr %i.fj, align 4, !tbaa !12
  br label %lean_inc.exit338

bb.dd:                                            ; preds = %bb.db
  %.not.i.i480 = icmp eq i32 %.val.i.i479, 0
  br i1 %.not.i.i480, label %lean_inc.exit338, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.fo = atomicrmw sub ptr %i.fj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit338

lean_inc.exit338:                                 ; preds = %bb.de, %bb.dd, %bb.dc, %lean_dec.exit299
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.db, i32 noundef 1)
  br label %lean_dec_ref_known.exit526

bb.df:                                            ; preds = %lean_dec_ref_known.exit460
  br i1 %.not.i343, label %bb.dg, label %lean_dec.exit297

bb.dg:                                            ; preds = %bb.df
  %i.fp = load i32, ptr %i.ce, align 4, !tbaa !12 ; 3 uses
  %i.fq = icmp sgt i32 %i.fp, 1
  br i1 %i.fq, label %bb.dh, label %bb.di, !prof !13

bb.dh:                                            ; preds = %bb.dg
  %i.fr = add nsw i32 %i.fp, -1
  store i32 %i.fr, ptr %i.ce, align 4, !tbaa !12
  br label %lean_dec.exit297

bb.di:                                            ; preds = %bb.dg
  %.not.i358 = icmp eq i32 %i.fp, 0
  br i1 %.not.i358, label %lean_dec.exit297, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ce) #9
  br label %lean_dec.exit297

lean_dec.exit297:                                 ; preds = %bb.dj, %bb.di, %bb.dh, %bb.df
  br i1 %.not.i425, label %bb.dk, label %lean_dec.exit295

bb.dk:                                            ; preds = %lean_dec.exit297
  %i.fs = load i32, ptr %i.bd, align 4, !tbaa !12 ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 1
  br i1 %i.ft, label %bb.dl, label %bb.dm, !prof !13

bb.dl:                                            ; preds = %bb.dk
  %i.fu = add nsw i32 %i.fs, -1
  store i32 %i.fu, ptr %i.bd, align 4, !tbaa !12
  br label %lean_dec.exit295

bb.dm:                                            ; preds = %bb.dk
  %.not.i360 = icmp eq i32 %i.fs, 0
  br i1 %.not.i360, label %lean_dec.exit295, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bd) #9
  br label %lean_dec.exit295

lean_dec.exit295:                                 ; preds = %bb.dn, %bb.dm, %bb.dl, %lean_dec.exit297
  %i.fv = ptrtoint ptr %3 to i64
  %i.fw = and i64 %i.fv, 1
  %.not.i292 = icmp eq i64 %i.fw, 0
  br i1 %.not.i292, label %bb.do, label %lean_dec.exit293

bb.do:                                            ; preds = %lean_dec.exit295
  %i.fx = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, 1
  br i1 %i.fy, label %bb.dp, label %bb.dq, !prof !13

bb.dp:                                            ; preds = %bb.do
  %i.fz = add nsw i32 %i.fx, -1
  store i32 %i.fz, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit293

bb.dq:                                            ; preds = %bb.do
  %.not.i362 = icmp eq i32 %i.fx, 0
  br i1 %.not.i362, label %lean_dec.exit293, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec.exit293

lean_dec.exit293:                                 ; preds = %bb.dr, %bb.dq, %bb.dp, %lean_dec.exit295
  br i1 %.not.i349, label %bb.ds, label %lean_inc.exit336

bb.ds:                                            ; preds = %lean_dec.exit293
  %.val.i.i482 = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.ga = icmp sgt i32 %.val.i.i482, 0
  br i1 %i.ga, label %bb.dt, label %bb.du, !prof !13

bb.dt:                                            ; preds = %bb.ds
  %i.gb = add nuw i32 %.val.i.i482, 1
  store i32 %i.gb, ptr %1, align 4, !tbaa !12
  br label %lean_inc.exit336

bb.du:                                            ; preds = %bb.ds
  %.not.i.i483 = icmp eq i32 %.val.i.i482, 0
  br i1 %.not.i.i483, label %lean_inc.exit336, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.gc = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit336

lean_inc.exit336:                                 ; preds = %bb.dv, %bb.du, %bb.dt, %lean_dec.exit293
  %i.gd = tail call ptr @l___private_Lean_Elab_StructInst_0__Lean_Elab_Term_StructInst_addStructFieldAux(ptr noundef %1, ptr noundef %i.p, ptr poison, ptr noundef %6, ptr poison, ptr poison, ptr noundef nonnull %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12)
  br label %lean_dec_ref_known.exit498

bb.dw:                                            ; preds = %lean_obj_tag.exit446
  br i1 %.not.i425, label %bb.dx, label %lean_dec.exit291

bb.dx:                                            ; preds = %bb.dw
  %i.ge = load i32, ptr %i.bd, align 4, !tbaa !12 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.dy, label %bb.dz, !prof !13

bb.dy:                                            ; preds = %bb.dx
  %i.gg = add nsw i32 %i.ge, -1
  store i32 %i.gg, ptr %i.bd, align 4, !tbaa !12
  br label %lean_dec.exit291

bb.dz:                                            ; preds = %bb.dx
  %.not.i364 = icmp eq i32 %i.ge, 0
  br i1 %.not.i364, label %lean_dec.exit291, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bd) #9
  br label %lean_dec.exit291

lean_dec.exit291:                                 ; preds = %bb.ea, %bb.dz, %bb.dy, %bb.dw
  br i1 %.not.i404, label %bb.eb, label %lean_dec.exit289

bb.eb:                                            ; preds = %lean_dec.exit291
  %i.gh = load i32, ptr %i.p, align 4, !tbaa !12  ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 1
  br i1 %i.gi, label %bb.ec, label %bb.ed, !prof !13

bb.ec:                                            ; preds = %bb.eb
  %i.gj = add nsw i32 %i.gh, -1
  store i32 %i.gj, ptr %i.p, align 4, !tbaa !12
  br label %lean_dec.exit289

bb.ed:                                            ; preds = %bb.eb
  %.not.i366 = icmp eq i32 %i.gh, 0
  br i1 %.not.i366, label %lean_dec.exit289, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #9
  br label %lean_dec.exit289

lean_dec.exit289:                                 ; preds = %bb.ee, %bb.ed, %bb.ec, %lean_dec.exit291
  %i.gk = ptrtoint ptr %3 to i64
  %i.gl = and i64 %i.gk, 1
end_hunk_3
