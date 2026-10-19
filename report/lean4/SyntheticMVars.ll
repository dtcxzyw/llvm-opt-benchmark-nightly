Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/SyntheticMVars?download=true
inline.NumInlined: 8114
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_resumePostponed___lam__2:bb.a

bb.bb:                                            ; preds = %bb.az
  %i.cr = getelementptr i8, ptr %i.cm, i64 4
  %.val.i589 = load i32, ptr %i.cr, align 4
  %i.cs = lshr i32 %.val.i589, 24
  br label %lean_obj_tag.exit590

lean_obj_tag.exit590:                             ; preds = %bb.ba, %bb.bb
  %.0.i588 = phi i32 [ %i.cq, %bb.ba ], [ %i.cs, %bb.bb ]
  %i.ct = icmp eq i32 %.0.i588, 0
  br i1 %i.ct, label %bb.bc, label %bb.dp

bb.bc:                                            ; preds = %lean_obj_tag.exit590
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !10 ; 12 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, 1
  %.not.i591 = icmp eq i64 %i.cx, 0               ; 3 uses
  br i1 %.not.i591, label %bb.bd, label %lean_inc_n.exit

bb.bd:                                            ; preds = %bb.bc
  %.val.i.i592 = load i32, ptr %i.cv, align 4, !tbaa !13 ; 3 uses
  %i.cy = icmp sgt i32 %.val.i.i592, 0
  br i1 %i.cy, label %bb.be, label %bb.bf, !prof !14

bb.be:                                            ; preds = %bb.bd
  %i.cz = add nuw i32 %.val.i.i592, 2
  store i32 %i.cz, ptr %i.cv, align 4, !tbaa !13
  br label %lean_inc_n.exit

bb.bf:                                            ; preds = %bb.bd
  %.not.i.i593 = icmp eq i32 %.val.i.i592, 0
  br i1 %.not.i.i593, label %lean_inc_n.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.da = atomicrmw sub ptr %i.cv, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %bb.bc, %bb.be, %bb.bf, %bb.bg
  %.val.i594 = load i32, ptr %i.cm, align 8, !tbaa !13 ; 4 uses
  %i.db = icmp eq i32 %.val.i594, 1
  br i1 %i.db, label %.preheader.i596, label %bb.bl

.preheader.i596:                                  ; preds = %lean_inc_n.exit
  %i.dc = load ptr, ptr %i.cu, align 8, !tbaa !10 ; 4 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = and i64 %i.dd, 1
  %.not.i.i598 = icmp eq i64 %i.de, 0
  br i1 %.not.i.i598, label %bb.bh, label %lean_dec.exit.i599

bb.bh:                                            ; preds = %.preheader.i596
  %i.df = load i32, ptr %i.dc, align 4, !tbaa !13 ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 1
  br i1 %i.dg, label %bb.bi, label %bb.bj, !prof !14

bb.bi:                                            ; preds = %bb.bh
  %i.dh = add nsw i32 %i.df, -1
  store i32 %i.dh, ptr %i.dc, align 4, !tbaa !13
  br label %lean_dec.exit.i599

bb.bj:                                            ; preds = %bb.bh
  %.not.i7.i603 = icmp eq i32 %i.df, 0
  br i1 %.not.i7.i603, label %lean_dec.exit.i599, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dc) #7
  br label %lean_dec.exit.i599

lean_dec.exit.i599:                               ; preds = %bb.bk, %bb.bj, %bb.bi, %.preheader.i596
  tail call void @lean_free_object(ptr noundef nonnull %i.cm) #7
  br label %lean_dec_ref_known.exit604

bb.bl:                                            ; preds = %lean_inc_n.exit
  %i.di = icmp sgt i32 %.val.i594, 1
  br i1 %i.di, label %bb.bm, label %bb.bn, !prof !14

bb.bm:                                            ; preds = %bb.bl
  %i.dj = add nsw i32 %.val.i594, -1
  store i32 %i.dj, ptr %i.cm, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit604

bb.bn:                                            ; preds = %bb.bl
  %.not.i8.i595 = icmp eq i32 %.val.i594, 0
  br i1 %.not.i8.i595, label %lean_dec_ref_known.exit604, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec_ref_known.exit604

lean_dec_ref_known.exit604:                       ; preds = %lean_dec.exit.i599, %bb.bm, %bb.bn, %bb.bo
  %i.dk = tail call ptr @l_Lean_occursCheck___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_resumePostponed_spec__1(ptr noundef %0, ptr noundef %i.cv, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) ; 12 uses
  %i.dl = ptrtoint ptr %8 to i64
  %i.dm = and i64 %i.dl, 1
  %.not.i478 = icmp eq i64 %i.dm, 0
  br i1 %.not.i478, label %bb.bp, label %lean_dec.exit479

bb.bp:                                            ; preds = %lean_dec_ref_known.exit604
  %i.dn = load i32, ptr %8, align 4, !tbaa !13    ; 3 uses
  %i.do = icmp sgt i32 %i.dn, 1
  br i1 %i.do, label %bb.bq, label %bb.br, !prof !14

bb.bq:                                            ; preds = %bb.bp
  %i.dp = add nsw i32 %i.dn, -1
  store i32 %i.dp, ptr %8, align 4, !tbaa !13
  br label %lean_dec.exit479

bb.br:                                            ; preds = %bb.bp
  %.not.i491 = icmp eq i32 %i.dn, 0
  br i1 %.not.i491, label %lean_dec.exit479, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #7
  br label %lean_dec.exit479

lean_dec.exit479:                                 ; preds = %bb.bs, %bb.br, %bb.bq, %lean_dec_ref_known.exit604
  %i.dq = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.dr = and i64 %i.dq, 1
  %.not.i605 = icmp eq i64 %i.dr, 0               ; 2 uses
  br i1 %.not.i605, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %lean_dec.exit479
  %i.ds = lshr i64 %i.dq, 1
  %i.dt = trunc i64 %i.ds to i32
  br label %lean_obj_tag.exit608

bb.bu:                                            ; preds = %lean_dec.exit479
  %i.du = getelementptr i8, ptr %i.dk, i64 4
  %.val.i607 = load i32, ptr %i.du, align 4
  %i.dv = lshr i32 %.val.i607, 24
  br label %lean_obj_tag.exit608

lean_obj_tag.exit608:                             ; preds = %bb.bt, %bb.bu
  %.0.i606 = phi i32 [ %i.dt, %bb.bt ], [ %i.dv, %bb.bu ]
  %i.dw = icmp eq i32 %.0.i606, 0
  br i1 %i.dw, label %bb.bv, label %bb.dg

bb.bv:                                            ; preds = %lean_obj_tag.exit608
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !10 ; 9 uses
  %.val567 = load i32, ptr %i.dk, align 8, !tbaa !13
  %i.dz = icmp eq i32 %.val567, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.dy to i64               ; 3 uses
  br i1 %i.dz, label %lean_dec.exit477, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ea = and i64 %.pre, 1
  %.not.i409 = icmp eq i64 %i.ea, 0
  br i1 %.not.i409, label %bb.bx, label %lean_inc.exit410

bb.bx:                                            ; preds = %bb.bw
  %.val.i.i609 = load i32, ptr %i.dy, align 4, !tbaa !13 ; 3 uses
  %i.eb = icmp sgt i32 %.val.i.i609, 0
  br i1 %i.eb, label %bb.by, label %bb.bz, !prof !14

bb.by:                                            ; preds = %bb.bx
  %i.ec = add nuw i32 %.val.i.i609, 1
  store i32 %i.ec, ptr %i.dy, align 4, !tbaa !13
  br label %lean_inc.exit410

bb.bz:                                            ; preds = %bb.bx
  %.not.i.i610 = icmp eq i32 %.val.i.i609, 0
  br i1 %.not.i.i610, label %lean_inc.exit410, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ed = atomicrmw sub ptr %i.dy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit410

lean_inc.exit410:                                 ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bw
  br i1 %.not.i605, label %bb.cb, label %lean_dec.exit477

bb.cb:                                            ; preds = %lean_inc.exit410
  %i.ee = load i32, ptr %i.dk, align 8, !tbaa !13 ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, 1
  br i1 %i.ef, label %bb.cc, label %bb.cd, !prof !14

bb.cc:                                            ; preds = %bb.cb
  %i.eg = add nsw i32 %i.ee, -1
  store i32 %i.eg, ptr %i.dk, align 8, !tbaa !13
  br label %lean_dec.exit477

bb.cd:                                            ; preds = %bb.cb
  %.not.i493 = icmp eq i32 %i.ee, 0
  br i1 %.not.i493, label %lean_dec.exit477, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dk) #7
  br label %lean_dec.exit477

lean_dec.exit477:                                 ; preds = %bb.bv, %lean_inc.exit410, %bb.cc, %bb.cd, %bb.ce
  %.0387 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ce ], [ inttoptr (i64 1 to ptr), %lean_inc.exit410 ], [ inttoptr (i64 1 to ptr), %bb.cc ], [ inttoptr (i64 1 to ptr), %bb.cd ], [ %i.dk, %bb.bv ] ; 4 uses
  %i.eh = and i64 %.pre, 510
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.cf, label %bb.cu

bb.cf:                                            ; preds = %lean_dec.exit477
  %i.ej = and i64 %.pre, 1
  %.not.i474 = icmp eq i64 %i.ej, 0
  br i1 %.not.i474, label %bb.cg, label %lean_dec.exit475

bb.cg:                                            ; preds = %bb.cf
  %i.ek = load i32, ptr %i.dy, align 512, !tbaa !13 ; 3 uses
  %i.el = icmp sgt i32 %i.ek, 1
  br i1 %i.el, label %bb.ch, label %bb.ci, !prof !14

bb.ch:                                            ; preds = %bb.cg
  %i.em = add nsw i32 %i.ek, -1
  store i32 %i.em, ptr %i.dy, align 512, !tbaa !13
  br label %lean_dec.exit475

bb.ci:                                            ; preds = %bb.cg
  %.not.i495 = icmp eq i32 %i.ek, 0
  br i1 %.not.i495, label %lean_dec.exit475, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dy) #7
  br label %lean_dec.exit475

lean_dec.exit475:                                 ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cf
  br i1 %.not.i591, label %bb.ck, label %lean_dec.exit473

bb.ck:                                            ; preds = %lean_dec.exit475
  %i.en = load i32, ptr %i.cv, align 4, !tbaa !13 ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %bb.cl, label %bb.cm, !prof !14

bb.cl:                                            ; preds = %bb.ck
  %i.ep = add nsw i32 %i.en, -1
  store i32 %i.ep, ptr %i.cv, align 4, !tbaa !13
  br label %lean_dec.exit473

bb.cm:                                            ; preds = %bb.ck
  %.not.i497 = icmp eq i32 %i.en, 0
  br i1 %.not.i497, label %lean_dec.exit473, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cv) #7
  br label %lean_dec.exit473

lean_dec.exit473:                                 ; preds = %bb.cn, %bb.cm, %bb.cl, %lean_dec.exit475
  br i1 %.not.i417, label %bb.co, label %lean_dec.exit471

bb.co:                                            ; preds = %lean_dec.exit473
  %i.eq = load i32, ptr %0, align 4, !tbaa !13    ; 3 uses
  %i.er = icmp sgt i32 %i.eq, 1
  br i1 %i.er, label %bb.cp, label %bb.cq, !prof !14

bb.cp:                                            ; preds = %bb.co
  %i.es = add nsw i32 %i.eq, -1
  store i32 %i.es, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit471

bb.cq:                                            ; preds = %bb.co
  %.not.i499 = icmp eq i32 %i.eq, 0
  br i1 %.not.i499, label %lean_dec.exit471, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit471

lean_dec.exit471:                                 ; preds = %bb.cr, %bb.cq, %bb.cp, %lean_dec.exit473
  br i1 %i.dz, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %lean_dec.exit471
  %i.et = getelementptr inbounds nuw i8, ptr %.0387, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.et, align 8, !tbaa !10
  br label %lean_dec.exit431

bb.ct:                                            ; preds = %lean_dec.exit471
  %i.eu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ev, align 8, !tbaa !10
  br label %lean_dec.exit431

bb.cu:                                            ; preds = %lean_dec.exit477
  %i.ew = ptrtoint ptr %.0387 to i64
  %i.ex = and i64 %i.ew, 1
  %.not.i612 = icmp eq i64 %i.ex, 0
  br i1 %.not.i612, label %bb.cv, label %lean_del_object.exit

bb.cv:                                            ; preds = %bb.cu
  tail call void @lean_free_object(ptr noundef nonnull %.0387) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.cu, %bb.cv
  %i.ey = tail call ptr @l_Lean_MVarId_assign___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_resumePostponed_spec__2___redArg(ptr noundef %0, ptr noundef %i.cv, ptr noundef %6) ; 5 uses
  %.val566 = load i32, ptr %i.ey, align 4, !tbaa !13 ; 4 uses
  %i.ez = icmp eq i32 %.val566, 1
  br i1 %i.ez, label %bb.cw, label %bb.db

bb.cw:                                            ; preds = %lean_del_object.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !10 ; 4 uses
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = and i64 %i.fc, 1
  %.not.i468 = icmp eq i64 %i.fd, 0
  br i1 %.not.i468, label %bb.cx, label %bb.df

bb.cx:                                            ; preds = %bb.cw
  %i.fe = load i32, ptr %i.fb, align 4, !tbaa !13 ; 3 uses
  %i.ff = icmp sgt i32 %i.fe, 1
  br i1 %i.ff, label %bb.cy, label %bb.cz, !prof !14

bb.cy:                                            ; preds = %bb.cx
  %i.fg = add nsw i32 %i.fe, -1
  store i32 %i.fg, ptr %i.fb, align 4, !tbaa !13
  br label %bb.df

bb.cz:                                            ; preds = %bb.cx
  %.not.i501 = icmp eq i32 %i.fe, 0
  br i1 %.not.i501, label %bb.df, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fb) #7
  br label %bb.df

bb.db:                                            ; preds = %lean_del_object.exit
  %i.fh = icmp sgt i32 %.val566, 1
  br i1 %i.fh, label %bb.dc, label %bb.dd, !prof !14

bb.dc:                                            ; preds = %bb.db
  %i.fi = add nsw i32 %.val566, -1
  store i32 %i.fi, ptr %i.ey, align 4, !tbaa !13
  br label %lean_dec.exit469

bb.dd:                                            ; preds = %bb.db
  %.not.i503 = icmp eq i32 %.val566, 0
  br i1 %.not.i503, label %lean_dec.exit469, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ey) #7
  br label %lean_dec.exit469

bb.df:                                            ; preds = %bb.cw, %bb.cy, %bb.cz, %bb.da
  store ptr %i.dy, ptr %i.fa, align 8, !tbaa !10
  br label %lean_dec.exit431

lean_dec.exit469:                                 ; preds = %bb.de, %bb.dd, %bb.dc
  %i.fj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.dy, ptr %i.fk, align 8, !tbaa !10
  br label %lean_dec.exit431

bb.dg:                                            ; preds = %lean_obj_tag.exit608
  br i1 %.not.i591, label %bb.dh, label %lean_dec.exit465

bb.dh:                                            ; preds = %bb.dg
  %i.fl = load i32, ptr %i.cv, align 4, !tbaa !13 ; 3 uses
  %i.fm = icmp sgt i32 %i.fl, 1
  br i1 %i.fm, label %bb.di, label %bb.dj, !prof !14

bb.di:                                            ; preds = %bb.dh
  %i.fn = add nsw i32 %i.fl, -1
  store i32 %i.fn, ptr %i.cv, align 4, !tbaa !13
  br label %lean_dec.exit465

bb.dj:                                            ; preds = %bb.dh
  %.not.i505 = icmp eq i32 %i.fl, 0
  br i1 %.not.i505, label %lean_dec.exit465, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cv) #7
  br label %lean_dec.exit465

lean_dec.exit465:                                 ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dg
  br i1 %.not.i417, label %bb.dl, label %lean_dec.exit431

bb.dl:                                            ; preds = %lean_dec.exit465
  %i.fo = load i32, ptr %0, align 4, !tbaa !13    ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 1
  br i1 %i.fp, label %bb.dm, label %bb.dn, !prof !14

bb.dm:                                            ; preds = %bb.dl
  %i.fq = add nsw i32 %i.fo, -1
  store i32 %i.fq, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit431

bb.dn:                                            ; preds = %bb.dl
  %.not.i507 = icmp eq i32 %i.fo, 0
  br i1 %.not.i507, label %lean_dec.exit431, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit431

bb.dp:                                            ; preds = %lean_obj_tag.exit590
  %i.fr = ptrtoint ptr %8 to i64
  %i.fs = and i64 %i.fr, 1
  %.not.i460 = icmp eq i64 %i.fs, 0
  br i1 %.not.i460, label %bb.dq, label %lean_dec.exit461

bb.dq:                                            ; preds = %bb.dp
  %i.ft = load i32, ptr %8, align 4, !tbaa !13    ; 3 uses
  %i.fu = icmp sgt i32 %i.ft, 1
  br i1 %i.fu, label %bb.dr, label %bb.ds, !prof !14

bb.dr:                                            ; preds = %bb.dq
  %i.fv = add nsw i32 %i.ft, -1
  store i32 %i.fv, ptr %8, align 4, !tbaa !13
  br label %lean_dec.exit461

bb.ds:                                            ; preds = %bb.dq
  %.not.i509 = icmp eq i32 %i.ft, 0
  br i1 %.not.i509, label %lean_dec.exit461, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #7
  br label %lean_dec.exit461
end_hunk_0
begin_hunk_1_@l_Std_DTreeMap_Internal_Impl_forInStep___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio_synthesizeUsingDefault_spec__1:bb.a
bb.cm:                                            ; preds = %bb.cl
  %i.ec = add nsw i32 %i.ea, -1
  store i32 %i.ec, ptr %i.dx, align 4, !tbaa !13
  br label %lean_dec.exit182

bb.cn:                                            ; preds = %bb.cl
  %.not.i194 = icmp eq i32 %i.ea, 0
  br i1 %.not.i194, label %lean_dec.exit182, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dx) #7
  br label %lean_dec.exit182

bb.cp:                                            ; preds = %bb.cj
  br i1 %.not.i150, label %bb.cq, label %lean_dec.exit182

bb.cq:                                            ; preds = %bb.cp
  %i.ed = icmp sgt i32 %.val218, 1
  br i1 %i.ed, label %bb.cr, label %bb.cs, !prof !14

bb.cr:                                            ; preds = %bb.cq
  %i.ee = add nsw i32 %.val218, -1
  store i32 %i.ee, ptr %i.cc, align 4, !tbaa !13
  br label %lean_dec.exit182

bb.cs:                                            ; preds = %bb.cq
  %.not.i196 = icmp eq i32 %.val218, 0
  br i1 %.not.i196, label %lean_dec.exit182, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cc) #7
  br label %lean_dec.exit182

lean_dec.exit182:                                 ; preds = %bb.cp, %bb.cr, %bb.cs, %bb.ct, %bb.ck, %bb.cm, %bb.cn, %bb.co
  %.0136 = phi ptr [ %i.cc, %bb.ck ], [ %i.cc, %bb.co ], [ %i.cc, %bb.cn ], [ %i.cc, %bb.cm ], [ inttoptr (i64 1 to ptr), %bb.ct ], [ inttoptr (i64 1 to ptr), %bb.cs ], [ inttoptr (i64 1 to ptr), %bb.cr ], [ inttoptr (i64 1 to ptr), %bb.cp ] ; 5 uses
  br i1 %.not.i152, label %bb.cu, label %l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio.exit

bb.cu:                                            ; preds = %lean_dec.exit182
  %.val.i.i267 = load i32, ptr %0, align 4, !tbaa !13 ; 3 uses
  %i.ef = icmp sgt i32 %.val.i.i267, 0
  br i1 %i.ef, label %bb.cv, label %bb.cw, !prof !14

bb.cv:                                            ; preds = %bb.cu
  %i.eg = add nuw i32 %.val.i.i267, 1             ; 2 uses
  store i32 %i.eg, ptr %0, align 4, !tbaa !13
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  %.not.i.i268 = icmp eq i32 %.val.i.i267, 0
  br i1 %.not.i.i268, label %l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.eh = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  %.val.i.i.i.pr = load i32, ptr %0, align 4, !tbaa !13
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cv
  %.val.i.i.i = phi i32 [ %.val.i.i.i.pr, %bb.cx ], [ %i.eg, %bb.cv ] ; 3 uses
  %i.ei = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.ei, label %bb.cz, label %bb.da, !prof !22

bb.cz:                                            ; preds = %bb.cy
  %i.ej = add nuw i32 %.val.i.i.i, 1
  store i32 %i.ej, ptr %0, align 4, !tbaa !13
  br label %l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio.exit

bb.da:                                            ; preds = %bb.cy
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ek = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio.exit

l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio.exit: ; preds = %bb.cw, %lean_dec.exit182, %bb.cz, %bb.da, %bb.db
  %i.el = tail call ptr @lean_alloc_object(i64 noundef 40) #7, !inline_history !24 ; 8 uses
  store i32 1, ptr %i.el, align 4, !tbaa !13
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = and i32 %i.en, 65535
  %i.ep = or disjoint i32 %i.eo, -184549376
  store i32 %i.ep, ptr %i.em, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio___lam__0___boxed, ptr %i.eq, align 8, !tbaa !10
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i16 9, ptr %i.er, align 8, !tbaa !20
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 18
  store i16 2, ptr %i.es, align 2, !tbaa !20
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store ptr %0, ptr %i.et, align 8, !tbaa !10
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store ptr %i.l, ptr %i.eu, align 8, !tbaa !10
  %i.ev = tail call ptr @l_Lean_MVarId_withContext___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_resumePostponed_spec__6___redArg(ptr noundef %0, ptr noundef nonnull %i.el, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8), !inline_history !24 ; 13 uses
  %i.ew = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ex = and i64 %i.ew, 1
  %.not.i271 = icmp eq i64 %i.ex, 0               ; 2 uses
  br i1 %.not.i271, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio.exit
  %i.ey = lshr i64 %i.ew, 1
  %i.ez = trunc i64 %i.ey to i32
  br label %lean_obj_tag.exit274

bb.dd:                                            ; preds = %l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio.exit
  %i.fa = getelementptr i8, ptr %i.ev, i64 4
  %.val.i273 = load i32, ptr %i.fa, align 4
  %i.fb = lshr i32 %.val.i273, 24
  br label %lean_obj_tag.exit274

lean_obj_tag.exit274:                             ; preds = %bb.dc, %bb.dd
  %.0.i272 = phi i32 [ %i.ez, %bb.dc ], [ %i.fb, %bb.dd ]
  %i.fc = icmp eq i32 %.0.i272, 0
  br i1 %i.fc, label %bb.de, label %bb.ek

bb.de:                                            ; preds = %lean_obj_tag.exit274
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !10 ; 8 uses
  %i.ff = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fg = and i64 %i.ff, 1
  %.not.i144 = icmp eq i64 %i.fg, 0               ; 2 uses
  br i1 %.not.i144, label %bb.df, label %lean_inc.exit145

bb.df:                                            ; preds = %bb.de
  %.val.i.i275 = load i32, ptr %i.fe, align 4, !tbaa !13 ; 3 uses
  %i.fh = icmp sgt i32 %.val.i.i275, 0
  br i1 %i.fh, label %bb.dg, label %bb.dh, !prof !14

bb.dg:                                            ; preds = %bb.df
  %i.fi = add nuw i32 %.val.i.i275, 1
  store i32 %i.fi, ptr %i.fe, align 4, !tbaa !13
  br label %lean_inc.exit145

bb.dh:                                            ; preds = %bb.df
  %.not.i.i276 = icmp eq i32 %.val.i.i275, 0
  br i1 %.not.i.i276, label %lean_inc.exit145, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.fj = atomicrmw sub ptr %i.fe, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit145

lean_inc.exit145:                                 ; preds = %bb.di, %bb.dh, %bb.dg, %bb.de
  %.val.i278 = load i32, ptr %i.ev, align 8, !tbaa !13 ; 4 uses
  %i.fk = icmp eq i32 %.val.i278, 1
  br i1 %i.fk, label %.preheader.i280, label %bb.dn

.preheader.i280:                                  ; preds = %lean_inc.exit145
  %i.fl = load ptr, ptr %i.fd, align 8, !tbaa !10 ; 4 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = and i64 %i.fm, 1
  %.not.i.i282 = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i282, label %bb.dj, label %lean_dec.exit.i283

bb.dj:                                            ; preds = %.preheader.i280
  %i.fo = load i32, ptr %i.fl, align 4, !tbaa !13 ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 1
  br i1 %i.fp, label %bb.dk, label %bb.dl, !prof !14

bb.dk:                                            ; preds = %bb.dj
  %i.fq = add nsw i32 %i.fo, -1
  store i32 %i.fq, ptr %i.fl, align 4, !tbaa !13
  br label %lean_dec.exit.i283

bb.dl:                                            ; preds = %bb.dj
  %.not.i7.i287 = icmp eq i32 %i.fo, 0
  br i1 %.not.i7.i287, label %lean_dec.exit.i283, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fl) #7
  br label %lean_dec.exit.i283

lean_dec.exit.i283:                               ; preds = %bb.dm, %bb.dl, %bb.dk, %.preheader.i280
  tail call void @lean_free_object(ptr noundef nonnull %i.ev) #7
  br label %lean_dec_ref_known.exit288

bb.dn:                                            ; preds = %lean_inc.exit145
  %i.fr = icmp sgt i32 %.val.i278, 1
  br i1 %i.fr, label %bb.do, label %bb.dp, !prof !14

bb.do:                                            ; preds = %bb.dn
  %i.fs = add nsw i32 %.val.i278, -1
  store i32 %i.fs, ptr %i.ev, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit288

bb.dp:                                            ; preds = %bb.dn
  %.not.i8.i279 = icmp eq i32 %.val.i278, 0
  br i1 %.not.i8.i279, label %lean_dec_ref_known.exit288, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #7
  br label %lean_dec_ref_known.exit288

lean_dec_ref_known.exit288:                       ; preds = %lean_dec.exit.i283, %bb.do, %bb.dp, %bb.dq
  %i.ft = and i64 %i.ff, 510
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.dr, label %bb.dx

bb.dr:                                            ; preds = %lean_dec_ref_known.exit288
  br i1 %.not.i144, label %bb.ds, label %lean_dec.exit178

bb.ds:                                            ; preds = %bb.dr
  %i.fv = load i32, ptr %i.fe, align 512, !tbaa !13 ; 3 uses
  %i.fw = icmp sgt i32 %i.fv, 1
  br i1 %i.fw, label %bb.dt, label %bb.du, !prof !14

bb.dt:                                            ; preds = %bb.ds
  %i.fx = add nsw i32 %i.fv, -1
  store i32 %i.fx, ptr %i.fe, align 512, !tbaa !13
  br label %lean_dec.exit178

bb.du:                                            ; preds = %bb.ds
  %.not.i198 = icmp eq i32 %i.fv, 0
  br i1 %.not.i198, label %lean_dec.exit178, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fe) #7
  br label %lean_dec.exit178

lean_dec.exit178:                                 ; preds = %bb.dv, %bb.du, %bb.dt, %bb.dr
  %i.fy = ptrtoint ptr %.0136 to i64
  %i.fz = and i64 %i.fy, 1
  %.not.i289 = icmp eq i64 %i.fz, 0
  br i1 %.not.i289, label %bb.dw, label %.backedge

bb.dw:                                            ; preds = %lean_dec.exit178
  tail call void @lean_free_object(ptr noundef nonnull %.0136) #7
  br label %.backedge

.backedge:                                        ; preds = %bb.dw, %lean_dec.exit178
  br label %bb.b

bb.dx:                                            ; preds = %lean_dec_ref_known.exit288
  br i1 %.not.i154, label %bb.dy, label %lean_dec.exit176

bb.dy:                                            ; preds = %bb.dx
  %i.ga = load i32, ptr %i.z, align 4, !tbaa !13  ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 1
  br i1 %i.gb, label %bb.dz, label %bb.ea, !prof !14

bb.dz:                                            ; preds = %bb.dy
  %i.gc = add nsw i32 %i.ga, -1
  store i32 %i.gc, ptr %i.z, align 4, !tbaa !13
  br label %lean_dec.exit176

bb.ea:                                            ; preds = %bb.dy
  %.not.i200 = icmp eq i32 %i.ga, 0
  br i1 %.not.i200, label %lean_dec.exit176, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #7
  br label %lean_dec.exit176

lean_dec.exit176:                                 ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dx
  br i1 %.not.i152, label %bb.ec, label %lean_dec.exit174

bb.ec:                                            ; preds = %lean_dec.exit176
  %i.gd = load i32, ptr %0, align 4, !tbaa !13    ; 3 uses
  %i.ge = icmp sgt i32 %i.gd, 1
  br i1 %i.ge, label %bb.ed, label %bb.ee, !prof !14

bb.ed:                                            ; preds = %bb.ec
  %i.gf = add nsw i32 %i.gd, -1
  store i32 %i.gf, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit174

bb.ee:                                            ; preds = %bb.ec
  %.not.i202 = icmp eq i32 %i.gd, 0
  br i1 %.not.i202, label %lean_dec.exit174, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit174

lean_dec.exit174:                                 ; preds = %bb.ef, %bb.ee, %bb.ed, %lean_dec.exit176
  br i1 %i.dv, label %bb.ei, label %bb.eg

bb.eg:                                            ; preds = %lean_dec.exit174
  tail call void @lean_inc_heartbeat() #7
  %i.gg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.eh, label %lean_alloc_ctor.exit

bb.eh:                                            ; preds = %bb.eg
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.eg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i32 1, ptr %i.gg, align 4, !tbaa !13
  store i32 16842768, ptr %i.gi, align 4
  br label %bb.ei

bb.ei:                                            ; preds = %lean_dec.exit174, %lean_alloc_ctor.exit
  %.sink472 = phi ptr [ %i.gg, %lean_alloc_ctor.exit ], [ %.0136, %lean_dec.exit174 ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sink472, i64 8
  store ptr %i.fe, ptr %i.gj, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #7
  %i.gk = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.ej, label %lean_alloc_ctor.exit290

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit290:                          ; preds = %bb.ei
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store i32 1, ptr %i.gk, align 4, !tbaa !13
  store i32 131096, ptr %i.gm, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store ptr %.sink472, ptr %i.gn, align 8, !tbaa !10
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.go, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit266

bb.ek:                                            ; preds = %lean_obj_tag.exit274
  %i.gp = ptrtoint ptr %.0136 to i64
  %i.gq = and i64 %i.gp, 1
  %.not.i291 = icmp eq i64 %i.gq, 0
  br i1 %.not.i291, label %bb.el, label %lean_del_object.exit292

bb.el:                                            ; preds = %bb.ek
  tail call void @lean_free_object(ptr noundef nonnull %.0136) #7
  br label %lean_del_object.exit292

lean_del_object.exit292:                          ; preds = %bb.ek, %bb.el
  br i1 %.not.i154, label %bb.em, label %lean_dec.exit172

bb.em:                                            ; preds = %lean_del_object.exit292
  %i.gr = load i32, ptr %i.z, align 4, !tbaa !13  ; 3 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.en, label %bb.eo, !prof !14

bb.en:                                            ; preds = %bb.em
  %i.gt = add nsw i32 %i.gr, -1
  store i32 %i.gt, ptr %i.z, align 4, !tbaa !13
  br label %lean_dec.exit172

bb.eo:                                            ; preds = %bb.em
  %.not.i204 = icmp eq i32 %i.gr, 0
  br i1 %.not.i204, label %lean_dec.exit172, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #7
  br label %lean_dec.exit172

lean_dec.exit172:                                 ; preds = %bb.ep, %bb.eo, %bb.en, %lean_del_object.exit292
  br i1 %.not.i152, label %bb.eq, label %lean_dec.exit170

bb.eq:                                            ; preds = %lean_dec.exit172
  %i.gu = load i32, ptr %0, align 4, !tbaa !13    ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 1
  br i1 %i.gv, label %bb.er, label %bb.es, !prof !14

bb.er:                                            ; preds = %bb.eq
  %i.gw = add nsw i32 %i.gu, -1
  store i32 %i.gw, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit170

bb.es:                                            ; preds = %bb.eq
  %.not.i206 = icmp eq i32 %i.gu, 0
  br i1 %.not.i206, label %lean_dec.exit170, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit170

lean_dec.exit170:                                 ; preds = %bb.et, %bb.es, %bb.er, %lean_dec.exit172
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.ev, align 8, !tbaa !13
  %i.gz = icmp eq i32 %.val, 1
  br i1 %i.gz, label %.thread, label %bb.eu

bb.eu:                                            ; preds = %lean_dec.exit170
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = and i64 %i.ha, 1
  %.not.i = icmp eq i64 %i.hb, 0
  br i1 %.not.i, label %bb.ev, label %lean_inc.exit

bb.ev:                                            ; preds = %bb.eu
  %.val.i.i293 = load i32, ptr %i.gy, align 4, !tbaa !13 ; 3 uses
  %i.hc = icmp sgt i32 %.val.i.i293, 0
  br i1 %i.hc, label %bb.ew, label %bb.ex, !prof !14

bb.ew:                                            ; preds = %bb.ev
  %i.hd = add nuw i32 %.val.i.i293, 1
  store i32 %i.hd, ptr %i.gy, align 4, !tbaa !13
  br label %lean_inc.exit

bb.ex:                                            ; preds = %bb.ev
  %.not.i.i294 = icmp eq i32 %.val.i.i293, 0
  br i1 %.not.i.i294, label %lean_inc.exit, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.he = atomicrmw sub ptr %i.gy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ey, %bb.ex, %bb.ew, %bb.eu
  br i1 %.not.i271, label %bb.ez, label %bb.fd

bb.ez:                                            ; preds = %lean_inc.exit
  %i.hf = load i32, ptr %i.ev, align 8, !tbaa !13 ; 3 uses
  %i.hg = icmp sgt i32 %i.hf, 1
  br i1 %i.hg, label %bb.fa, label %bb.fb, !prof !14

bb.fa:                                            ; preds = %bb.ez
  %i.hh = add nsw i32 %i.hf, -1
end_hunk_1
begin_hunk_2_@l_List_forIn_x27_loop___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio_spec__4___redArg:.peel.begin

bb.c:                                             ; preds = %lean_obj_tag.exit.peel
  %i.l = load i32, ptr %3, align 4, !tbaa !13     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %.not.i121.peel = icmp eq i32 %i.l, 0
  br i1 %.not.i121.peel, label %lean_dec_ref.exit122.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec_ref.exit122.peel

bb.f:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %3, align 4, !tbaa !13
  br label %lean_dec_ref.exit122.peel

lean_dec_ref.exit122.peel:                        ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10   ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.b, %i.w
  %or.cond.not.peel = icmp eq i64 %i.x, 0
  br i1 %or.cond.not.peel, label %lean_nat_eq.exit.peel, label %.split, !prof !25

.split:                                           ; preds = %lean_dec_ref.exit122.peel
  %i.y = icmp eq ptr %i.v, %0
  br i1 %i.y, label %bb.g, label %lean_dec.exit105.peel.preheader

lean_nat_eq.exit.peel:                            ; preds = %lean_dec_ref.exit122.peel
  %i.z = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.v, ptr noundef %0) #7
  br i1 %i.z, label %bb.g, label %lean_dec.exit105.peel.preheader

bb.g:                                             ; preds = %.split, %lean_nat_eq.exit.peel
  %i.aa = ptrtoint ptr %i.t to i64
  %i.ab = and i64 %i.aa, 1
  %.not.i97.peel = icmp eq i64 %i.ab, 0
  br i1 %.not.i97.peel, label %bb.h, label %lean_inc.exit98.peel

bb.h:                                             ; preds = %bb.g
  %.val.i.i.peel = load i32, ptr %i.t, align 4, !tbaa !13 ; 3 uses
  %i.ac = icmp sgt i32 %.val.i.i.peel, 0
  br i1 %i.ac, label %bb.k, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %.not.i.i.peel = icmp eq i32 %.val.i.i.peel, 0
  br i1 %.not.i.i.peel, label %lean_inc.exit98.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = atomicrmw sub ptr %i.t, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit98.peel

bb.k:                                             ; preds = %bb.h
  %i.ae = add nuw i32 %.val.i.i.peel, 1
  store i32 %i.ae, ptr %i.t, align 4, !tbaa !13
  br label %lean_inc.exit98.peel

lean_inc.exit98.peel:                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  br i1 %.not.i95, label %bb.l, label %lean_inc.exit96.peel

bb.l:                                             ; preds = %lean_inc.exit98.peel
  %.val.i.i127.peel = load i32, ptr %1, align 4, !tbaa !13 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i127.peel, 0
  br i1 %i.af, label %bb.o, label %bb.m, !prof !14

bb.m:                                             ; preds = %bb.l
  %.not.i.i128.peel = icmp eq i32 %.val.i.i127.peel, 0
  br i1 %.not.i.i128.peel, label %lean_inc.exit96.peel, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit96.peel

bb.o:                                             ; preds = %bb.l
  %i.ah = add nuw i32 %.val.i.i127.peel, 1
  store i32 %i.ah, ptr %1, align 4, !tbaa !13
  br label %lean_inc.exit96.peel

lean_inc.exit96.peel:                             ; preds = %bb.o, %bb.n, %bb.m, %lean_inc.exit98.peel
  %i.ai = tail call ptr @lean_alloc_object(i64 noundef 40) #7, !inline_history !26 ; 8 uses
  store i32 1, ptr %i.ai, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 65535
  %i.am = or disjoint i32 %i.al, -184549376
  store i32 %i.am, ptr %i.aj, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio_synthesizeUsingDefaultInstance___lam__0___boxed, ptr %i.an, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i16 9, ptr %i.ao, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 18
  store i16 2, ptr %i.ap, align 2, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.t, ptr %i.aq, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %1, ptr %i.ar, align 8, !tbaa !10
  %i.as = tail call ptr @l_Lean_commitWhen___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio_synthesizePendingInstMVar_x27_spec__0(ptr noundef nonnull %i.ai, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9), !inline_history !26 ; 9 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.au = and i64 %i.at, 1
  %.not.i130.peel = icmp eq i64 %i.au, 0          ; 2 uses
  br i1 %.not.i130.peel, label %bb.q, label %bb.p

bb.p:                                             ; preds = %lean_inc.exit96.peel
  %i.av = lshr i64 %i.at, 1
  %i.aw = trunc i64 %i.av to i32
  br label %lean_obj_tag.exit133.peel

bb.q:                                             ; preds = %lean_inc.exit96.peel
  %i.ax = getelementptr i8, ptr %i.as, i64 4
  %.val.i132.peel = load i32, ptr %i.ax, align 4
  %i.ay = lshr i32 %.val.i132.peel, 24
  br label %lean_obj_tag.exit133.peel

lean_obj_tag.exit133.peel:                        ; preds = %bb.q, %bb.p
  %.0.i131.peel = phi i32 [ %i.aw, %bb.p ], [ %i.ay, %bb.q ]
  %i.az = icmp eq i32 %.0.i131.peel, 0
  br i1 %i.az, label %bb.r, label %.loopexit169

bb.r:                                             ; preds = %lean_obj_tag.exit133.peel
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !10 ; 8 uses
  %.val124.peel = load i32, ptr %i.as, align 8, !tbaa !13
  %i.bc = icmp eq i32 %.val124.peel, 1            ; 2 uses
  %.pre = ptrtoint ptr %i.bb to i64               ; 3 uses
  br i1 %i.bc, label %lean_dec.exit107.peel, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = and i64 %.pre, 1
  %.not.i93.peel = icmp eq i64 %i.bd, 0
  br i1 %.not.i93.peel, label %bb.t, label %lean_inc.exit94.peel

bb.t:                                             ; preds = %bb.s
  %.val.i.i134.peel = load i32, ptr %i.bb, align 4, !tbaa !13 ; 3 uses
  %i.be = icmp sgt i32 %.val.i.i134.peel, 0
  br i1 %i.be, label %bb.w, label %bb.u, !prof !14

bb.u:                                             ; preds = %bb.t
  %.not.i.i135.peel = icmp eq i32 %.val.i.i134.peel, 0
  br i1 %.not.i.i135.peel, label %lean_inc.exit94.peel, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = atomicrmw sub ptr %i.bb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit94.peel

bb.w:                                             ; preds = %bb.t
  %i.bg = add nuw i32 %.val.i.i134.peel, 1
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !13
  br label %lean_inc.exit94.peel

lean_inc.exit94.peel:                             ; preds = %bb.w, %bb.v, %bb.u, %bb.s
  br i1 %.not.i130.peel, label %bb.x, label %lean_dec.exit107.peel

bb.x:                                             ; preds = %lean_inc.exit94.peel
  %i.bh = load i32, ptr %i.as, align 8, !tbaa !13 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.aa, label %bb.y, !prof !14

bb.y:                                             ; preds = %bb.x
  %.not.i111.peel = icmp eq i32 %i.bh, 0
  br i1 %.not.i111.peel, label %lean_dec.exit107.peel, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #7
  br label %lean_dec.exit107.peel

bb.aa:                                            ; preds = %bb.x
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.as, align 8, !tbaa !13
  br label %lean_dec.exit107.peel

lean_dec.exit107.peel:                            ; preds = %bb.r, %bb.aa, %bb.z, %bb.y, %lean_inc.exit94.peel
  %.083.peel = phi ptr [ inttoptr (i64 1 to ptr), %lean_inc.exit94.peel ], [ inttoptr (i64 1 to ptr), %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.z ], [ inttoptr (i64 1 to ptr), %bb.y ], [ %i.as, %bb.r ] ; 3 uses
  %i.bk = and i64 %.pre, 510
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.ab, label %.loopexit170

bb.ab:                                            ; preds = %lean_dec.exit107.peel
  %i.bm = ptrtoint ptr %.083.peel to i64
  %i.bn = and i64 %i.bm, 1
  %.not.i137.peel = icmp eq i64 %i.bn, 0
  br i1 %.not.i137.peel, label %bb.ac, label %lean_del_object.exit.peel

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_free_object(ptr noundef nonnull %.083.peel) #7
  br label %lean_del_object.exit.peel

lean_del_object.exit.peel:                        ; preds = %bb.ac, %bb.ab
  %i.bo = and i64 %.pre, 1
  %.not.i104.peel = icmp eq i64 %i.bo, 0
  br i1 %.not.i104.peel, label %bb.ad, label %lean_dec.exit105.peel.preheader

bb.ad:                                            ; preds = %lean_del_object.exit.peel
  %i.bp = load i32, ptr %i.bb, align 512, !tbaa !13 ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %bb.ag, label %bb.ae, !prof !14

bb.ae:                                            ; preds = %bb.ad
  %.not.i113.peel = icmp eq i32 %i.bp, 0
  br i1 %.not.i113.peel, label %lean_dec.exit105.peel.preheader, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bb) #7
  br label %lean_dec.exit105.peel.preheader

bb.ag:                                            ; preds = %bb.ad
  %i.br = add nsw i32 %i.bp, -1
  store i32 %i.br, ptr %i.bb, align 512, !tbaa !13
  br label %lean_dec.exit105.peel.preheader

lean_dec.exit105.peel.preheader:                  ; preds = %.split, %bb.ag, %bb.af, %bb.ae, %lean_del_object.exit.peel, %lean_nat_eq.exit.peel
  br label %lean_dec.exit105.peel

lean_dec.exit105.peel:                            ; preds = %lean_dec.exit105.peel.backedge, %lean_dec.exit105.peel.preheader
  %.077 = phi ptr [ %i.r, %lean_dec.exit105.peel.preheader ], [ %i.ch, %lean_dec.exit105.peel.backedge ] ; 4 uses
  %i.bs = ptrtoint ptr %.077 to i64               ; 2 uses
  %i.bt = and i64 %i.bs, 1
  %.not.i125 = icmp eq i64 %i.bt, 0
  br i1 %.not.i125, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %lean_dec.exit105.peel
  %i.bu = lshr i64 %i.bs, 1
  %i.bv = trunc i64 %i.bu to i32
  br label %lean_obj_tag.exit

bb.ai:                                            ; preds = %lean_dec.exit105.peel
  %i.bw = getelementptr i8, ptr %.077, i64 4
  %.val.i = load i32, ptr %i.bw, align 4
  %i.bx = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.ah, %bb.ai
  %.0.i126 = phi i32 [ %i.bv, %bb.ah ], [ %i.bx, %bb.ai ]
  %i.by = icmp eq i32 %.0.i126, 0
  br i1 %i.by, label %.loopexit, label %lean_dec_ref.exit122

.loopexit:                                        ; preds = %lean_obj_tag.exit, %lean_obj_tag.exit.peel
  %.089.lcssa = phi ptr [ %3, %lean_obj_tag.exit.peel ], [ @l_List_forIn_x27_loop___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio_spec__4___redArg___closed__0_value, %lean_obj_tag.exit ]
  br i1 %.not.i95, label %bb.aj, label %lean_dec.exit109

bb.aj:                                            ; preds = %.loopexit
  %i.bz = load i32, ptr %1, align 4, !tbaa !13    ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.ak, label %bb.al, !prof !14

bb.ak:                                            ; preds = %bb.aj
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %1, align 4, !tbaa !13
  br label %lean_dec.exit109

bb.al:                                            ; preds = %bb.aj
  %.not.i110 = icmp eq i32 %i.bz, 0
  br i1 %.not.i110, label %lean_dec.exit109, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit109

lean_dec.exit109:                                 ; preds = %bb.am, %bb.al, %bb.ak, %.loopexit
  tail call void @lean_inc_heartbeat() #7
  %i.cc = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.an, label %lean_dec.exit105.thread.sink.split.sink.split

bb.an:                                            ; preds = %lean_dec.exit109
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_dec_ref.exit122:                             ; preds = %lean_obj_tag.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.077, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !10 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.077, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !10 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10 ; 3 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = and i64 %i.b, %i.cm
  %or.cond.not = icmp eq i64 %i.cn, 0
  br i1 %or.cond.not, label %lean_nat_eq.exit, label %.split194, !prof !25

.split194:                                        ; preds = %lean_dec_ref.exit122
  %i.co = icmp eq ptr %i.cl, %0
  br i1 %i.co, label %bb.ao, label %lean_dec.exit105.peel.backedge

lean_dec.exit105.peel.backedge:                   ; preds = %.split194, %lean_del_object.exit, %bb.bm, %bb.bn, %bb.bo, %lean_nat_eq.exit
  br label %lean_dec.exit105.peel, !llvm.loop !33

lean_nat_eq.exit:                                 ; preds = %lean_dec_ref.exit122
  %i.cp = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.cl, ptr noundef %0) #7
  br i1 %i.cp, label %bb.ao, label %lean_dec.exit105.peel.backedge

bb.ao:                                            ; preds = %.split194, %lean_nat_eq.exit
  %i.cq = ptrtoint ptr %i.cj to i64
  %i.cr = and i64 %i.cq, 1
  %.not.i97 = icmp eq i64 %i.cr, 0
  br i1 %.not.i97, label %bb.ap, label %lean_inc.exit98

bb.ap:                                            ; preds = %bb.ao
  %.val.i.i = load i32, ptr %i.cj, align 4, !tbaa !13 ; 3 uses
  %i.cs = icmp sgt i32 %.val.i.i, 0
  br i1 %i.cs, label %bb.aq, label %bb.ar, !prof !14

bb.aq:                                            ; preds = %bb.ap
  %i.ct = add nuw i32 %.val.i.i, 1
  store i32 %i.ct, ptr %i.cj, align 4, !tbaa !13
  br label %lean_inc.exit98

bb.ar:                                            ; preds = %bb.ap
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit98, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cu = atomicrmw sub ptr %i.cj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit98

lean_inc.exit98:                                  ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao
  br i1 %.not.i95, label %bb.at, label %lean_inc.exit96

bb.at:                                            ; preds = %lean_inc.exit98
  %.val.i.i127 = load i32, ptr %1, align 4, !tbaa !13 ; 3 uses
  %i.cv = icmp sgt i32 %.val.i.i127, 0
  br i1 %i.cv, label %bb.au, label %bb.av, !prof !14

bb.au:                                            ; preds = %bb.at
  %i.cw = add nuw i32 %.val.i.i127, 1
  store i32 %i.cw, ptr %1, align 4, !tbaa !13
  br label %lean_inc.exit96

bb.av:                                            ; preds = %bb.at
  %.not.i.i128 = icmp eq i32 %.val.i.i127, 0
  br i1 %.not.i.i128, label %lean_inc.exit96, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cx = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit96

lean_inc.exit96:                                  ; preds = %bb.aw, %bb.av, %bb.au, %lean_inc.exit98
  %i.cy = tail call ptr @lean_alloc_object(i64 noundef 40) #7, !inline_history !26 ; 8 uses
  store i32 1, ptr %i.cy, align 4, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = and i32 %i.da, 65535
  %i.dc = or disjoint i32 %i.db, -184549376
  store i32 %i.dc, ptr %i.cz, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio_synthesizeUsingDefaultInstance___lam__0___boxed, ptr %i.dd, align 8, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i16 9, ptr %i.de, align 8, !tbaa !20
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 18
  store i16 2, ptr %i.df, align 2, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.cj, ptr %i.dg, align 8, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr %1, ptr %i.dh, align 8, !tbaa !10
  %i.di = tail call ptr @l_Lean_commitWhen___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio_synthesizePendingInstMVar_x27_spec__0(ptr noundef nonnull %i.cy, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9), !inline_history !26 ; 9 uses
  %i.dj = ptrtoint ptr %i.di to i64               ; 3 uses
  %i.dk = and i64 %i.dj, 1
  %.not.i130 = icmp eq i64 %i.dk, 0               ; 2 uses
  br i1 %.not.i130, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %lean_inc.exit96
  %i.dl = lshr i64 %i.dj, 1
  %i.dm = trunc i64 %i.dl to i32
  br label %lean_obj_tag.exit133

bb.ay:                                            ; preds = %lean_inc.exit96
  %i.dn = getelementptr i8, ptr %i.di, i64 4
  %.val.i132 = load i32, ptr %i.dn, align 4
  %i.do = lshr i32 %.val.i132, 24
  br label %lean_obj_tag.exit133

lean_obj_tag.exit133:                             ; preds = %bb.ax, %bb.ay
  %.0.i131 = phi i32 [ %i.dm, %bb.ax ], [ %i.do, %bb.ay ]
  %i.dp = icmp eq i32 %.0.i131, 0
  br i1 %i.dp, label %bb.az, label %.loopexit169

bb.az:                                            ; preds = %lean_obj_tag.exit133
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !10 ; 8 uses
  %.val124 = load i32, ptr %i.di, align 8, !tbaa !13
  %i.ds = icmp eq i32 %.val124, 1                 ; 2 uses
  %.pre171 = ptrtoint ptr %i.dr to i64            ; 3 uses
  br i1 %i.ds, label %lean_dec.exit107, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dt = and i64 %.pre171, 1
  %.not.i93 = icmp eq i64 %i.dt, 0
  br i1 %.not.i93, label %bb.bb, label %lean_inc.exit94

bb.bb:                                            ; preds = %bb.ba
  %.val.i.i134 = load i32, ptr %i.dr, align 4, !tbaa !13 ; 3 uses
  %i.du = icmp sgt i32 %.val.i.i134, 0
  br i1 %i.du, label %bb.bc, label %bb.bd, !prof !14

bb.bc:                                            ; preds = %bb.bb
  %i.dv = add nuw i32 %.val.i.i134, 1
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !13
  br label %lean_inc.exit94

bb.bd:                                            ; preds = %bb.bb
  %.not.i.i135 = icmp eq i32 %.val.i.i134, 0
  br i1 %.not.i.i135, label %lean_inc.exit94, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dw = atomicrmw sub ptr %i.dr, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit94

lean_inc.exit94:                                  ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba
  br i1 %.not.i130, label %bb.bf, label %lean_dec.exit107

bb.bf:                                            ; preds = %lean_inc.exit94
  %i.dx = load i32, ptr %i.di, align 8, !tbaa !13 ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 1
  br i1 %i.dy, label %bb.bg, label %bb.bh, !prof !14

bb.bg:                                            ; preds = %bb.bf
  %i.dz = add nsw i32 %i.dx, -1
  store i32 %i.dz, ptr %i.di, align 8, !tbaa !13
  br label %lean_dec.exit107

bb.bh:                                            ; preds = %bb.bf
  %.not.i111 = icmp eq i32 %i.dx, 0
  br i1 %.not.i111, label %lean_dec.exit107, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.di) #7
  br label %lean_dec.exit107

lean_dec.exit107:                                 ; preds = %bb.az, %lean_inc.exit94, %bb.bg, %bb.bh, %bb.bi
  %.083 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bi ], [ inttoptr (i64 1 to ptr), %lean_inc.exit94 ], [ inttoptr (i64 1 to ptr), %bb.bg ], [ inttoptr (i64 1 to ptr), %bb.bh ], [ %i.di, %bb.az ] ; 3 uses
  %i.ea = and i64 %.pre171, 510
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.bj, label %.loopexit170

bb.bj:                                            ; preds = %lean_dec.exit107
  %i.ec = ptrtoint ptr %.083 to i64
  %i.ed = and i64 %i.ec, 1
  %.not.i137 = icmp eq i64 %i.ed, 0
  br i1 %.not.i137, label %bb.bk, label %lean_del_object.exit

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_free_object(ptr noundef nonnull %.083) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.bj, %bb.bk
  %i.ee = and i64 %.pre171, 1
  %.not.i104 = icmp eq i64 %i.ee, 0
  br i1 %.not.i104, label %bb.bl, label %lean_dec.exit105.peel.backedge

bb.bl:                                            ; preds = %lean_del_object.exit
  %i.ef = load i32, ptr %i.dr, align 512, !tbaa !13 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.bm, label %bb.bn, !prof !14

bb.bm:                                            ; preds = %bb.bl
  %i.eh = add nsw i32 %i.ef, -1
  store i32 %i.eh, ptr %i.dr, align 512, !tbaa !13
  br label %lean_dec.exit105.peel.backedge

bb.bn:                                            ; preds = %bb.bl
  %.not.i113 = icmp eq i32 %i.ef, 0
  br i1 %.not.i113, label %lean_dec.exit105.peel.backedge, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dr) #7
  br label %lean_dec.exit105.peel.backedge

.loopexit170:                                     ; preds = %lean_dec.exit107, %lean_dec.exit107.peel
  %.083.lcssa = phi ptr [ %.083.peel, %lean_dec.exit107.peel ], [ %.083, %lean_dec.exit107 ]
  %.lcssa167 = phi ptr [ %i.bb, %lean_dec.exit107.peel ], [ %i.dr, %lean_dec.exit107 ]
  %.lcssa166 = phi i1 [ %i.bc, %lean_dec.exit107.peel ], [ %i.ds, %lean_dec.exit107 ]
  br i1 %.not.i95, label %bb.bp, label %lean_dec.exit103

bb.bp:                                            ; preds = %.loopexit170
  %i.ei = load i32, ptr %1, align 4, !tbaa !13    ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.bq, label %bb.br, !prof !14

bb.bq:                                            ; preds = %bb.bp
  %i.ek = add nsw i32 %i.ei, -1
  store i32 %i.ek, ptr %1, align 4, !tbaa !13
  br label %lean_dec.exit103

bb.br:                                            ; preds = %bb.bp
  %.not.i115 = icmp eq i32 %i.ei, 0
  br i1 %.not.i115, label %lean_dec.exit103, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit103

lean_dec.exit103:                                 ; preds = %bb.bs, %bb.br, %bb.bq, %.loopexit170
  tail call void @lean_inc_heartbeat() #7
  %i.el = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.bt, label %lean_alloc_ctor.exit138

bb.bt:                                            ; preds = %lean_dec.exit103
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit138:                          ; preds = %lean_dec.exit103
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 1, ptr %i.el, align 4, !tbaa !13
  store i32 16842768, ptr %i.en, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %.lcssa167, ptr %i.eo, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #7
  %i.ep = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 7 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.bu, label %lean_alloc_ctor.exit139

bb.bu:                                            ; preds = %lean_alloc_ctor.exit138
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit139:                          ; preds = %lean_alloc_ctor.exit138
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i32 1, ptr %i.ep, align 4, !tbaa !13
  store i32 131096, ptr %i.er, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.el, ptr %i.es, align 8, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.et, align 8, !tbaa !10
  br i1 %.lcssa166, label %lean_dec.exit105.thread.sink.split, label %bb.bv

bb.bv:                                            ; preds = %lean_alloc_ctor.exit139
  tail call void @lean_inc_heartbeat() #7
  %i.eu = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.bw, label %lean_dec.exit105.thread.sink.split.sink.split

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

.loopexit169:                                     ; preds = %lean_obj_tag.exit133, %lean_obj_tag.exit133.peel
  %.lcssa164 = phi ptr [ %i.as, %lean_obj_tag.exit133.peel ], [ %i.di, %lean_obj_tag.exit133 ] ; 6 uses
  %.lcssa = phi i64 [ %i.at, %lean_obj_tag.exit133.peel ], [ %i.dj, %lean_obj_tag.exit133 ]
  br i1 %.not.i95, label %bb.bx, label %lean_dec.exit101

bb.bx:                                            ; preds = %.loopexit169
  %i.ew = load i32, ptr %1, align 4, !tbaa !13    ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 1
  br i1 %i.ex, label %bb.by, label %bb.bz, !prof !14

bb.by:                                            ; preds = %bb.bx
  %i.ey = add nsw i32 %i.ew, -1
  store i32 %i.ey, ptr %1, align 4, !tbaa !13
  br label %lean_dec.exit101

bb.bz:                                            ; preds = %bb.bx
  %.not.i117 = icmp eq i32 %i.ew, 0
  br i1 %.not.i117, label %lean_dec.exit101, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit101

lean_dec.exit101:                                 ; preds = %bb.ca, %bb.bz, %bb.by, %.loopexit169
  %i.ez = getelementptr inbounds nuw i8, ptr %.lcssa164, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %.lcssa164, align 8, !tbaa !13
  %i.fb = icmp eq i32 %.val, 1
  br i1 %i.fb, label %lean_dec.exit105.thread, label %bb.cb

bb.cb:                                            ; preds = %lean_dec.exit101
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = and i64 %i.fc, 1
  %.not.i = icmp eq i64 %i.fd, 0
  br i1 %.not.i, label %bb.cc, label %lean_inc.exit

bb.cc:                                            ; preds = %bb.cb
  %.val.i.i141 = load i32, ptr %i.fa, align 4, !tbaa !13 ; 3 uses
  %i.fe = icmp sgt i32 %.val.i.i141, 0
  br i1 %i.fe, label %bb.cd, label %bb.ce, !prof !14

bb.cd:                                            ; preds = %bb.cc
  %i.ff = add nuw i32 %.val.i.i141, 1
  store i32 %i.ff, ptr %i.fa, align 4, !tbaa !13
  br label %lean_inc.exit

bb.ce:                                            ; preds = %bb.cc
  %.not.i.i142 = icmp eq i32 %.val.i.i141, 0
  br i1 %.not.i.i142, label %lean_inc.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fg = atomicrmw sub ptr %i.fa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cb
  %i.fh = and i64 %.lcssa, 1
  %.not.i99 = icmp eq i64 %i.fh, 0
  br i1 %.not.i99, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %lean_inc.exit
  %i.fi = load i32, ptr %.lcssa164, align 8, !tbaa !13 ; 3 uses
  %i.fj = icmp sgt i32 %i.fi, 1
  br i1 %i.fj, label %bb.ch, label %bb.ci, !prof !14

bb.ch:                                            ; preds = %bb.cg
  %i.fk = add nsw i32 %i.fi, -1
  store i32 %i.fk, ptr %.lcssa164, align 8, !tbaa !13
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cg
  %.not.i119 = icmp eq i32 %i.fi, 0
  br i1 %.not.i119, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.lcssa164) #7
  br label %bb.ck

bb.ck:                                            ; preds = %lean_inc.exit, %bb.ch, %bb.ci, %bb.cj
  tail call void @lean_inc_heartbeat() #7
  %i.fl = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.cl, label %lean_dec.exit105.thread.sink.split.sink.split

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_dec.exit105.thread.sink.split.sink.split:    ; preds = %bb.ck, %bb.bv, %lean_dec.exit109
  %.sink207 = phi ptr [ %i.eu, %bb.bv ], [ %i.cc, %lean_dec.exit109 ], [ %i.fl, %bb.ck ] ; 3 uses
  %.sink204 = phi i32 [ 65552, %bb.bv ], [ 65552, %lean_dec.exit109 ], [ 16842768, %bb.ck ]
  %.sink.ph = phi ptr [ %i.ep, %bb.bv ], [ %.089.lcssa, %lean_dec.exit109 ], [ %i.fa, %bb.ck ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.sink207, i64 4
  store i32 1, ptr %.sink207, align 4, !tbaa !13
  store i32 %.sink204, ptr %i.fn, align 4
  br label %lean_dec.exit105.thread.sink.split

lean_dec.exit105.thread.sink.split:               ; preds = %lean_dec.exit105.thread.sink.split.sink.split, %lean_alloc_ctor.exit139
  %.sink = phi ptr [ %i.ep, %lean_alloc_ctor.exit139 ], [ %.sink.ph, %lean_dec.exit105.thread.sink.split.sink.split ]
  %.6.ph = phi ptr [ %.083.lcssa, %lean_alloc_ctor.exit139 ], [ %.sink207, %lean_dec.exit105.thread.sink.split.sink.split ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.6.ph, i64 8
  store ptr %.sink, ptr %i.fo, align 8, !tbaa !10
  br label %lean_dec.exit105.thread

lean_dec.exit105.thread:                          ; preds = %lean_dec.exit105.thread.sink.split, %lean_dec.exit101
  %.6 = phi ptr [ %.lcssa164, %lean_dec.exit101 ], [ %.6.ph, %lean_dec.exit105.thread.sink.split ]
  ret ptr %.6
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio___lam__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i188 = icmp eq i64 %i.b, 0                ; 6 uses
  br i1 %.not.i188, label %bb.b, label %lean_inc.exit189

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !13 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !14

end_hunk_2
begin_hunk_3_@l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSomeUsingDefaultPrio_visit:bb.a
bb.ft:                                            ; preds = %bb.fq
  %i.la = add nsw i32 %i.ky, -1
  store i32 %i.la, ptr %i.kv, align 4, !tbaa !13
  br label %lean_dec.exit.i515.10

lean_dec.exit.i515.10:                            ; preds = %bb.ft, %bb.fs, %bb.fr, %lean_dec.exit.i515.9
  %i.lb = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !10 ; 4 uses
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = and i64 %i.ld, 1
  %.not.i.i514.11 = icmp eq i64 %i.le, 0
  br i1 %.not.i.i514.11, label %bb.fu, label %lean_dec.exit.i515.11

bb.fu:                                            ; preds = %lean_dec.exit.i515.10
  %i.lf = load i32, ptr %i.lc, align 4, !tbaa !13 ; 3 uses
  %i.lg = icmp sgt i32 %i.lf, 1
  br i1 %i.lg, label %bb.fx, label %bb.fv, !prof !14

bb.fv:                                            ; preds = %bb.fu
  %.not.i7.i519.11 = icmp eq i32 %i.lf, 0
  br i1 %.not.i7.i519.11, label %lean_dec.exit.i515.11, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lc) #7
  br label %lean_dec.exit.i515.11

bb.fx:                                            ; preds = %bb.fu
  %i.lh = add nsw i32 %i.lf, -1
  store i32 %i.lh, ptr %i.lc, align 4, !tbaa !13
  br label %lean_dec.exit.i515.11

lean_dec.exit.i515.11:                            ; preds = %bb.fx, %bb.fw, %bb.fv, %lean_dec.exit.i515.10
  %i.li = getelementptr inbounds nuw i8, ptr %i.gn, i64 104
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !10 ; 4 uses
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = and i64 %i.lk, 1
  %.not.i.i514.12 = icmp eq i64 %i.ll, 0
  br i1 %.not.i.i514.12, label %bb.fy, label %lean_dec.exit.i515.12

bb.fy:                                            ; preds = %lean_dec.exit.i515.11
  %i.lm = load i32, ptr %i.lj, align 4, !tbaa !13 ; 3 uses
  %i.ln = icmp sgt i32 %i.lm, 1
  br i1 %i.ln, label %bb.gb, label %bb.fz, !prof !14

bb.fz:                                            ; preds = %bb.fy
  %.not.i7.i519.12 = icmp eq i32 %i.lm, 0
  br i1 %.not.i7.i519.12, label %lean_dec.exit.i515.12, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lj) #7
  br label %lean_dec.exit.i515.12

bb.gb:                                            ; preds = %bb.fy
  %i.lo = add nsw i32 %i.lm, -1
  store i32 %i.lo, ptr %i.lj, align 4, !tbaa !13
  br label %lean_dec.exit.i515.12

lean_dec.exit.i515.12:                            ; preds = %bb.gb, %bb.ga, %bb.fz, %lean_dec.exit.i515.11
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gn, i64 112
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !10 ; 4 uses
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = and i64 %i.lr, 1
  %.not.i.i514.13 = icmp eq i64 %i.ls, 0
  br i1 %.not.i.i514.13, label %bb.gc, label %lean_dec.exit.i515.13

bb.gc:                                            ; preds = %lean_dec.exit.i515.12
  %i.lt = load i32, ptr %i.lq, align 4, !tbaa !13 ; 3 uses
  %i.lu = icmp sgt i32 %i.lt, 1
  br i1 %i.lu, label %bb.gf, label %bb.gd, !prof !14

bb.gd:                                            ; preds = %bb.gc
  %.not.i7.i519.13 = icmp eq i32 %i.lt, 0
  br i1 %.not.i7.i519.13, label %lean_dec.exit.i515.13, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lq) #7
  br label %lean_dec.exit.i515.13

bb.gf:                                            ; preds = %bb.gc
  %i.lv = add nsw i32 %i.lt, -1
  store i32 %i.lv, ptr %i.lq, align 4, !tbaa !13
  br label %lean_dec.exit.i515.13

lean_dec.exit.i515.13:                            ; preds = %bb.gf, %bb.ge, %bb.gd, %lean_dec.exit.i515.12
  tail call void @lean_free_object(ptr noundef nonnull %i.gn) #7
  br label %lean_dec_ref_known.exit520

bb.gg:                                            ; preds = %l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefaultPrio.exit
  %i.lw = icmp sgt i32 %.val.i510, 1
  br i1 %i.lw, label %bb.gh, label %bb.gi, !prof !14

bb.gh:                                            ; preds = %bb.gg
  %i.lx = add nsw i32 %.val.i510, -1
  store i32 %i.lx, ptr %i.gn, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit520

bb.gi:                                            ; preds = %bb.gg
  %.not.i8.i511 = icmp eq i32 %.val.i510, 0
  br i1 %.not.i8.i511, label %lean_dec_ref_known.exit520, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gn) #7
  br label %lean_dec_ref_known.exit520

lean_dec_ref_known.exit520:                       ; preds = %lean_dec.exit.i515.13, %bb.gh, %bb.gi, %bb.gj
  %i.ly = ptrtoint ptr %i.ib to i64               ; 2 uses
  %i.lz = and i64 %i.ly, 1
  %.not.i521 = icmp eq i64 %i.lz, 0               ; 2 uses
  br i1 %.not.i521, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %lean_dec_ref_known.exit520
  %i.ma = lshr i64 %i.ly, 1
  %i.mb = trunc i64 %i.ma to i32
  br label %lean_obj_tag.exit524

bb.gl:                                            ; preds = %lean_dec_ref_known.exit520
  %i.mc = getelementptr i8, ptr %i.ib, i64 4
  %.val.i523 = load i32, ptr %i.mc, align 4
  %i.md = lshr i32 %.val.i523, 24
  br label %lean_obj_tag.exit524

lean_obj_tag.exit524:                             ; preds = %bb.gk, %bb.gl
  %.0.i522 = phi i32 [ %i.mb, %bb.gk ], [ %i.md, %bb.gl ]
  %i.me = icmp eq i32 %.0.i522, 0
  br i1 %i.me, label %bb.gm, label %bb.jb

bb.gm:                                            ; preds = %lean_obj_tag.exit524
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !10 ; 8 uses
  %.val424 = load i32, ptr %i.ib, align 8, !tbaa !13
  %i.mh = icmp eq i32 %.val424, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.mg to i64               ; 3 uses
  br i1 %i.mh, label %lean_dec.exit369, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.mi = and i64 %.pre, 1
  %.not.i303 = icmp eq i64 %i.mi, 0
  br i1 %.not.i303, label %bb.go, label %lean_inc.exit304

bb.go:                                            ; preds = %bb.gn
  %.val.i.i525 = load i32, ptr %i.mg, align 4, !tbaa !13 ; 3 uses
  %i.mj = icmp sgt i32 %.val.i.i525, 0
  br i1 %i.mj, label %bb.gp, label %bb.gq, !prof !14

bb.gp:                                            ; preds = %bb.go
  %i.mk = add nuw i32 %.val.i.i525, 1
  store i32 %i.mk, ptr %i.mg, align 4, !tbaa !13
  br label %lean_inc.exit304

bb.gq:                                            ; preds = %bb.go
  %.not.i.i526 = icmp eq i32 %.val.i.i525, 0
  br i1 %.not.i.i526, label %lean_inc.exit304, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ml = atomicrmw sub ptr %i.mg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit304

lean_inc.exit304:                                 ; preds = %bb.gr, %bb.gq, %bb.gp, %bb.gn
  br i1 %.not.i521, label %bb.gs, label %lean_dec.exit369

bb.gs:                                            ; preds = %lean_inc.exit304
  %i.mm = load i32, ptr %i.ib, align 8, !tbaa !13 ; 3 uses
  %i.mn = icmp sgt i32 %i.mm, 1
  br i1 %i.mn, label %bb.gt, label %bb.gu, !prof !14

bb.gt:                                            ; preds = %bb.gs
  %i.mo = add nsw i32 %i.mm, -1
  store i32 %i.mo, ptr %i.ib, align 8, !tbaa !13
  br label %lean_dec.exit369

bb.gu:                                            ; preds = %bb.gs
  %.not.i389 = icmp eq i32 %i.mm, 0
  br i1 %.not.i389, label %lean_dec.exit369, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ib) #7
  br label %lean_dec.exit369

lean_dec.exit369:                                 ; preds = %bb.gm, %lean_inc.exit304, %bb.gt, %bb.gu, %bb.gv
  %.0290 = phi ptr [ inttoptr (i64 1 to ptr), %bb.gv ], [ inttoptr (i64 1 to ptr), %lean_inc.exit304 ], [ inttoptr (i64 1 to ptr), %bb.gt ], [ inttoptr (i64 1 to ptr), %bb.gu ], [ %i.ib, %bb.gm ] ; 3 uses
  %i.mp = and i64 %.pre, 510
  %i.mq = icmp eq i64 %i.mp, 0
  br i1 %i.mq, label %bb.gw, label %bb.he

bb.gw:                                            ; preds = %lean_dec.exit369
  %i.mr = ptrtoint ptr %.0290 to i64
  %i.ms = and i64 %i.mr, 1
  %.not.i528 = icmp eq i64 %i.ms, 0
  br i1 %.not.i528, label %bb.gx, label %lean_del_object.exit

bb.gx:                                            ; preds = %bb.gw
  tail call void @lean_free_object(ptr noundef nonnull %.0290) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.gw, %bb.gx
  %i.mt = and i64 %.pre, 1
  %.not.i366 = icmp eq i64 %i.mt, 0
  br i1 %.not.i366, label %bb.gy, label %lean_dec.exit367

bb.gy:                                            ; preds = %lean_del_object.exit
  %i.mu = load i32, ptr %i.mg, align 512, !tbaa !13 ; 3 uses
  %i.mv = icmp sgt i32 %i.mu, 1
  br i1 %i.mv, label %bb.gz, label %bb.ha, !prof !14

bb.gz:                                            ; preds = %bb.gy
  %i.mw = add nsw i32 %i.mu, -1
  store i32 %i.mw, ptr %i.mg, align 512, !tbaa !13
  br label %lean_dec.exit367

bb.ha:                                            ; preds = %bb.gy
  %.not.i391 = icmp eq i32 %i.mu, 0
  br i1 %.not.i391, label %lean_dec.exit367, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mg) #7
  br label %lean_dec.exit367

lean_dec.exit367:                                 ; preds = %bb.hb, %bb.ha, %bb.gz, %lean_del_object.exit
  br i1 %i.ap, label %lean_dec.exit351, label %bb.hc

bb.hc:                                            ; preds = %lean_dec.exit367
  tail call void @lean_inc_heartbeat() #7
  %i.mx = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 2 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %bb.hd, label %lean_dec.exit351.sink.split

bb.hd:                                            ; preds = %bb.hc
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.he:                                            ; preds = %lean_dec.exit369
  %i.mz = ptrtoint ptr %.0273 to i64
  %i.na = and i64 %i.mz, 1
  %.not.i530 = icmp eq i64 %i.na, 0
  br i1 %.not.i530, label %bb.hf, label %lean_del_object.exit531

bb.hf:                                            ; preds = %bb.he
  tail call void @lean_free_object(ptr noundef nonnull %.0273) #7
  br label %lean_del_object.exit531

lean_del_object.exit531:                          ; preds = %bb.he, %bb.hf
  br i1 %.not.i305, label %bb.hg, label %lean_dec.exit365

bb.hg:                                            ; preds = %lean_del_object.exit531
  %i.nb = load i32, ptr %i.am, align 4, !tbaa !13 ; 3 uses
  %i.nc = icmp sgt i32 %i.nb, 1
  br i1 %i.nc, label %bb.hh, label %bb.hi, !prof !14

bb.hh:                                            ; preds = %bb.hg
  %i.nd = add nsw i32 %i.nb, -1
  store i32 %i.nd, ptr %i.am, align 4, !tbaa !13
  br label %lean_dec.exit365

bb.hi:                                            ; preds = %bb.hg
  %.not.i393 = icmp eq i32 %i.nb, 0
  br i1 %.not.i393, label %lean_dec.exit365, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #7
  br label %lean_dec.exit365

lean_dec.exit365:                                 ; preds = %bb.hj, %bb.hi, %bb.hh, %lean_del_object.exit531
  br i1 %.not.i307, label %bb.hk, label %lean_dec.exit363

bb.hk:                                            ; preds = %lean_dec.exit365
  %i.ne = load i32, ptr %0, align 4, !tbaa !13    ; 3 uses
  %i.nf = icmp sgt i32 %i.ne, 1
  br i1 %i.nf, label %bb.hl, label %bb.hm, !prof !14

bb.hl:                                            ; preds = %bb.hk
  %i.ng = add nsw i32 %i.ne, -1
  store i32 %i.ng, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit363

bb.hm:                                            ; preds = %bb.hk
  %.not.i395 = icmp eq i32 %i.ne, 0
  br i1 %.not.i395, label %lean_dec.exit363, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit363

lean_dec.exit363:                                 ; preds = %bb.hn, %bb.hm, %bb.hl, %lean_dec.exit365
  %i.nh = tail call ptr @lean_st_ref_take(ptr noundef %4) #7 ; 15 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !10 ; 5 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !10 ; 5 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 32
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !10 ; 5 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nh, i64 40
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !10 ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nh, i64 48
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !10 ; 5 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nh, i64 56
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !10 ; 5 uses
  %.val423 = load i32, ptr %i.nh, align 8, !tbaa !13
  %i.nu = icmp eq i32 %.val423, 1                 ; 2 uses
  br i1 %i.nu, label %bb.ho, label %bb.ht

bb.ho:                                            ; preds = %lean_dec.exit363
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !10 ; 4 uses
  %i.nx = ptrtoint ptr %i.nw to i64
  %i.ny = and i64 %i.nx, 1
  %.not.i360 = icmp eq i64 %i.ny, 0
  br i1 %.not.i360, label %bb.hp, label %lean_dec.exit361

bb.hp:                                            ; preds = %bb.ho
  %i.nz = load i32, ptr %i.nw, align 4, !tbaa !13 ; 3 uses
  %i.oa = icmp sgt i32 %i.nz, 1
  br i1 %i.oa, label %bb.hq, label %bb.hr, !prof !14

bb.hq:                                            ; preds = %bb.hp
  %i.ob = add nsw i32 %i.nz, -1
  store i32 %i.ob, ptr %i.nw, align 4, !tbaa !13
  br label %lean_dec.exit361

bb.hr:                                            ; preds = %bb.hp
  %.not.i397 = icmp eq i32 %i.nz, 0
  br i1 %.not.i397, label %lean_dec.exit361, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.nw) #7
  br label %lean_dec.exit361

bb.ht:                                            ; preds = %lean_dec.exit363
  %i.oc = ptrtoint ptr %i.nt to i64
  %i.od = and i64 %i.oc, 1
  %.not.i301 = icmp eq i64 %i.od, 0
  br i1 %.not.i301, label %bb.hu, label %lean_inc.exit302

bb.hu:                                            ; preds = %bb.ht
  %.val.i.i532 = load i32, ptr %i.nt, align 4, !tbaa !13 ; 3 uses
  %i.oe = icmp sgt i32 %.val.i.i532, 0
  br i1 %i.oe, label %bb.hv, label %bb.hw, !prof !14

bb.hv:                                            ; preds = %bb.hu
  %i.of = add nuw i32 %.val.i.i532, 1
  store i32 %i.of, ptr %i.nt, align 4, !tbaa !13
  br label %lean_inc.exit302

bb.hw:                                            ; preds = %bb.hu
  %.not.i.i533 = icmp eq i32 %.val.i.i532, 0
  br i1 %.not.i.i533, label %lean_inc.exit302, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.og = atomicrmw sub ptr %i.nt, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit302

lean_inc.exit302:                                 ; preds = %bb.hx, %bb.hw, %bb.hv, %bb.ht
  %i.oh = ptrtoint ptr %i.nr to i64
  %i.oi = and i64 %i.oh, 1
  %.not.i299 = icmp eq i64 %i.oi, 0
  br i1 %.not.i299, label %bb.hy, label %lean_inc.exit300

bb.hy:                                            ; preds = %lean_inc.exit302
  %.val.i.i535 = load i32, ptr %i.nr, align 4, !tbaa !13 ; 3 uses
  %i.oj = icmp sgt i32 %.val.i.i535, 0
  br i1 %i.oj, label %bb.hz, label %bb.ia, !prof !14

bb.hz:                                            ; preds = %bb.hy
  %i.ok = add nuw i32 %.val.i.i535, 1
  store i32 %i.ok, ptr %i.nr, align 4, !tbaa !13
  br label %lean_inc.exit300

bb.ia:                                            ; preds = %bb.hy
  %.not.i.i536 = icmp eq i32 %.val.i.i535, 0
  br i1 %.not.i.i536, label %lean_inc.exit300, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.ol = atomicrmw sub ptr %i.nr, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit300

lean_inc.exit300:                                 ; preds = %bb.ib, %bb.ia, %bb.hz, %lean_inc.exit302
  %i.om = ptrtoint ptr %i.np to i64
  %i.on = and i64 %i.om, 1
  %.not.i297 = icmp eq i64 %i.on, 0
  br i1 %.not.i297, label %bb.ic, label %lean_inc.exit298

bb.ic:                                            ; preds = %lean_inc.exit300
  %.val.i.i538 = load i32, ptr %i.np, align 4, !tbaa !13 ; 3 uses
  %i.oo = icmp sgt i32 %.val.i.i538, 0
  br i1 %i.oo, label %bb.id, label %bb.ie, !prof !14

bb.id:                                            ; preds = %bb.ic
  %i.op = add nuw i32 %.val.i.i538, 1
  store i32 %i.op, ptr %i.np, align 4, !tbaa !13
  br label %lean_inc.exit298

bb.ie:                                            ; preds = %bb.ic
  %.not.i.i539 = icmp eq i32 %.val.i.i538, 0
  br i1 %.not.i.i539, label %lean_inc.exit298, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.oq = atomicrmw sub ptr %i.np, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit298

lean_inc.exit298:                                 ; preds = %bb.if, %bb.ie, %bb.id, %lean_inc.exit300
  %i.or = ptrtoint ptr %i.nn to i64
  %i.os = and i64 %i.or, 1
  %.not.i295 = icmp eq i64 %i.os, 0
  br i1 %.not.i295, label %bb.ig, label %lean_inc.exit296

bb.ig:                                            ; preds = %lean_inc.exit298
  %.val.i.i541 = load i32, ptr %i.nn, align 4, !tbaa !13 ; 3 uses
  %i.ot = icmp sgt i32 %.val.i.i541, 0
end_hunk_3
begin_hunk_4_@l_Std_DTreeMap_Internal_Impl_forInStep___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeUsingDefault_spec__0:bb.a
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !10 ; 4 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = and i64 %i.dq, 1
  %.not.i160 = icmp eq i64 %i.dr, 0
  br i1 %.not.i160, label %bb.cd, label %lean_dec.exit161

bb.cd:                                            ; preds = %bb.cc
  %i.ds = load i32, ptr %i.dp, align 4, !tbaa !13 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.ce, label %bb.cf, !prof !14

bb.ce:                                            ; preds = %bb.cd
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %i.dp, align 4, !tbaa !13
  br label %lean_dec.exit161

bb.cf:                                            ; preds = %bb.cd
  %.not.i169 = icmp eq i32 %i.ds, 0
  br i1 %.not.i169, label %lean_dec.exit161, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dp) #7
  br label %lean_dec.exit161

bb.ch:                                            ; preds = %bb.cb
  br i1 %.not.i139, label %bb.ci, label %lean_dec.exit161

bb.ci:                                            ; preds = %bb.ch
  %i.dv = icmp sgt i32 %.val185, 1
  br i1 %i.dv, label %bb.cj, label %bb.ck, !prof !14

bb.cj:                                            ; preds = %bb.ci
  %i.dw = add nsw i32 %.val185, -1
  store i32 %i.dw, ptr %i.bx, align 4, !tbaa !13
  br label %lean_dec.exit161

bb.ck:                                            ; preds = %bb.ci
  %.not.i171 = icmp eq i32 %.val185, 0
  br i1 %.not.i171, label %lean_dec.exit161, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #7
  br label %lean_dec.exit161

lean_dec.exit161:                                 ; preds = %bb.ch, %bb.cj, %bb.ck, %bb.cl, %bb.cc, %bb.ce, %bb.cf, %bb.cg
  %.0127 = phi ptr [ %i.bx, %bb.cc ], [ %i.bx, %bb.cg ], [ %i.bx, %bb.cf ], [ %i.bx, %bb.ce ], [ inttoptr (i64 1 to ptr), %bb.cl ], [ inttoptr (i64 1 to ptr), %bb.ck ], [ inttoptr (i64 1 to ptr), %bb.cj ], [ inttoptr (i64 1 to ptr), %bb.ch ] ; 5 uses
  %i.dx = tail call ptr @lean_st_ref_get(ptr noundef %3) #7 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !10 ; 5 uses
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = and i64 %i.ea, 1
  %.not.i.i231 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i231, label %bb.cm, label %lean_inc.exit.i

bb.cm:                                            ; preds = %lean_dec.exit161
  %.val.i.i.i = load i32, ptr %i.dz, align 4, !tbaa !13 ; 3 uses
  %i.ec = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.ec, label %bb.cn, label %bb.co, !prof !14

bb.cn:                                            ; preds = %bb.cm
  %i.ed = add nuw i32 %.val.i.i.i, 1
  store i32 %i.ed, ptr %i.dz, align 4, !tbaa !13
  br label %lean_inc.exit.i

bb.co:                                            ; preds = %bb.cm
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc.exit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ee = atomicrmw sub ptr %i.dz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %lean_dec.exit161, %bb.cn, %bb.co, %bb.cp
  %i.ef = load i32, ptr %i.dx, align 8, !tbaa !13 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.cq, label %bb.cr, !prof !14

bb.cq:                                            ; preds = %lean_inc.exit.i
  %i.eh = add nsw i32 %i.ef, -1
  store i32 %i.eh, ptr %i.dx, align 8, !tbaa !13
  br label %l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSomeUsingDefaultPrio.exit

bb.cr:                                            ; preds = %lean_inc.exit.i
  %.not.i16.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i16.i, label %l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSomeUsingDefaultPrio.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dx) #7
  br label %l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSomeUsingDefaultPrio.exit

l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSomeUsingDefaultPrio.exit: ; preds = %bb.cq, %bb.cr, %bb.cs
  %i.ei = tail call ptr @l_List_reverse___redArg(ptr noundef %i.dz) #7
  %i.ej = tail call ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSomeUsingDefaultPrio_visit(ptr noundef %i.j, ptr noundef %i.ei, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef readonly %6, ptr noundef %7) ; 13 uses
  %i.ek = ptrtoint ptr %i.ej to i64               ; 2 uses
  %i.el = and i64 %i.ek, 1
  %.not.i233 = icmp eq i64 %i.el, 0               ; 2 uses
  br i1 %.not.i233, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSomeUsingDefaultPrio.exit
  %i.em = lshr i64 %i.ek, 1
  %i.en = trunc i64 %i.em to i32
  br label %lean_obj_tag.exit236

bb.cu:                                            ; preds = %l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSomeUsingDefaultPrio.exit
  %i.eo = getelementptr i8, ptr %i.ej, i64 4
  %.val.i235 = load i32, ptr %i.eo, align 4
  %i.ep = lshr i32 %.val.i235, 24
  br label %lean_obj_tag.exit236

lean_obj_tag.exit236:                             ; preds = %bb.ct, %bb.cu
  %.0.i234 = phi i32 [ %i.en, %bb.ct ], [ %i.ep, %bb.cu ]
  %i.eq = icmp eq i32 %.0.i234, 0
  br i1 %i.eq, label %bb.cv, label %bb.dx

bb.cv:                                            ; preds = %lean_obj_tag.exit236
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !10 ; 8 uses
  %i.et = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.eu = and i64 %i.et, 1
  %.not.i135 = icmp eq i64 %i.eu, 0               ; 2 uses
  br i1 %.not.i135, label %bb.cw, label %lean_inc.exit136

bb.cw:                                            ; preds = %bb.cv
  %.val.i.i237 = load i32, ptr %i.es, align 4, !tbaa !13 ; 3 uses
  %i.ev = icmp sgt i32 %.val.i.i237, 0
  br i1 %i.ev, label %bb.cx, label %bb.cy, !prof !14

bb.cx:                                            ; preds = %bb.cw
  %i.ew = add nuw i32 %.val.i.i237, 1
  store i32 %i.ew, ptr %i.es, align 4, !tbaa !13
  br label %lean_inc.exit136

bb.cy:                                            ; preds = %bb.cw
  %.not.i.i238 = icmp eq i32 %.val.i.i237, 0
  br i1 %.not.i.i238, label %lean_inc.exit136, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ex = atomicrmw sub ptr %i.es, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit136

lean_inc.exit136:                                 ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv
  %.val.i240 = load i32, ptr %i.ej, align 8, !tbaa !13 ; 4 uses
  %i.ey = icmp eq i32 %.val.i240, 1
  br i1 %i.ey, label %.preheader.i242, label %bb.de

.preheader.i242:                                  ; preds = %lean_inc.exit136
  %i.ez = load ptr, ptr %i.er, align 8, !tbaa !10 ; 4 uses
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = and i64 %i.fa, 1
  %.not.i.i244 = icmp eq i64 %i.fb, 0
  br i1 %.not.i.i244, label %bb.da, label %lean_dec.exit.i245

bb.da:                                            ; preds = %.preheader.i242
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !13 ; 3 uses
  %i.fd = icmp sgt i32 %i.fc, 1
  br i1 %i.fd, label %bb.db, label %bb.dc, !prof !14

bb.db:                                            ; preds = %bb.da
  %i.fe = add nsw i32 %i.fc, -1
  store i32 %i.fe, ptr %i.ez, align 4, !tbaa !13
  br label %lean_dec.exit.i245

bb.dc:                                            ; preds = %bb.da
  %.not.i7.i249 = icmp eq i32 %i.fc, 0
  br i1 %.not.i7.i249, label %lean_dec.exit.i245, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ez) #7
  br label %lean_dec.exit.i245

lean_dec.exit.i245:                               ; preds = %bb.dd, %bb.dc, %bb.db, %.preheader.i242
  tail call void @lean_free_object(ptr noundef nonnull %i.ej) #7
  br label %lean_dec_ref_known.exit250

bb.de:                                            ; preds = %lean_inc.exit136
  %i.ff = icmp sgt i32 %.val.i240, 1
  br i1 %i.ff, label %bb.df, label %bb.dg, !prof !14

bb.df:                                            ; preds = %bb.de
  %i.fg = add nsw i32 %.val.i240, -1
  store i32 %i.fg, ptr %i.ej, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit250

bb.dg:                                            ; preds = %bb.de
  %.not.i8.i241 = icmp eq i32 %.val.i240, 0
  br i1 %.not.i8.i241, label %lean_dec_ref_known.exit250, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ej) #7
  br label %lean_dec_ref_known.exit250

lean_dec_ref_known.exit250:                       ; preds = %lean_dec.exit.i245, %bb.df, %bb.dg, %bb.dh
  %i.fh = and i64 %i.et, 510
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.di, label %bb.do

bb.di:                                            ; preds = %lean_dec_ref_known.exit250
  br i1 %.not.i135, label %bb.dj, label %lean_dec.exit157

bb.dj:                                            ; preds = %bb.di
  %i.fj = load i32, ptr %i.es, align 512, !tbaa !13 ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, 1
  br i1 %i.fk, label %bb.dk, label %bb.dl, !prof !14

bb.dk:                                            ; preds = %bb.dj
  %i.fl = add nsw i32 %i.fj, -1
  store i32 %i.fl, ptr %i.es, align 512, !tbaa !13
  br label %lean_dec.exit157

bb.dl:                                            ; preds = %bb.dj
  %.not.i173 = icmp eq i32 %i.fj, 0
  br i1 %.not.i173, label %lean_dec.exit157, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.es) #7
  br label %lean_dec.exit157

lean_dec.exit157:                                 ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.di
  %i.fm = ptrtoint ptr %.0127 to i64
  %i.fn = and i64 %i.fm, 1
  %.not.i251 = icmp eq i64 %i.fn, 0
  br i1 %.not.i251, label %bb.dn, label %.backedge

bb.dn:                                            ; preds = %lean_dec.exit157
  tail call void @lean_free_object(ptr noundef nonnull %.0127) #7
  br label %.backedge

.backedge:                                        ; preds = %bb.dn, %lean_dec.exit157
  br label %bb.b

bb.do:                                            ; preds = %lean_dec_ref_known.exit250
  br i1 %.not.i141, label %bb.dp, label %lean_dec.exit155

bb.dp:                                            ; preds = %bb.do
  %i.fo = load i32, ptr %i.x, align 4, !tbaa !13  ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 1
  br i1 %i.fp, label %bb.dq, label %bb.dr, !prof !14

bb.dq:                                            ; preds = %bb.dp
  %i.fq = add nsw i32 %i.fo, -1
  store i32 %i.fq, ptr %i.x, align 4, !tbaa !13
  br label %lean_dec.exit155

bb.dr:                                            ; preds = %bb.dp
  %.not.i175 = icmp eq i32 %i.fo, 0
  br i1 %.not.i175, label %lean_dec.exit155, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #7
  br label %lean_dec.exit155

lean_dec.exit155:                                 ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.do
  br i1 %i.dn, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %lean_dec.exit155
  tail call void @lean_inc_heartbeat() #7
  %i.fr = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 4 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.du, label %lean_alloc_ctor.exit

bb.du:                                            ; preds = %bb.dt
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.dt
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 1, ptr %i.fr, align 4, !tbaa !13
  store i32 16842768, ptr %i.ft, align 4
  br label %bb.dv

bb.dv:                                            ; preds = %lean_dec.exit155, %lean_alloc_ctor.exit
  %.sink417 = phi ptr [ %i.fr, %lean_alloc_ctor.exit ], [ %.0127, %lean_dec.exit155 ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sink417, i64 8
  store ptr %i.es, ptr %i.fu, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #7
  %i.fv = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.dw, label %lean_alloc_ctor.exit252

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit252:                          ; preds = %bb.dv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 1, ptr %i.fv, align 4, !tbaa !13
  store i32 131096, ptr %i.fx, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %.sink417, ptr %i.fy, align 8, !tbaa !10
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.fz, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit230

bb.dx:                                            ; preds = %lean_obj_tag.exit236
  %i.ga = ptrtoint ptr %.0127 to i64
  %i.gb = and i64 %i.ga, 1
  %.not.i253 = icmp eq i64 %i.gb, 0
  br i1 %.not.i253, label %bb.dy, label %lean_del_object.exit254

bb.dy:                                            ; preds = %bb.dx
  tail call void @lean_free_object(ptr noundef nonnull %.0127) #7
  br label %lean_del_object.exit254

lean_del_object.exit254:                          ; preds = %bb.dx, %bb.dy
  br i1 %.not.i141, label %bb.dz, label %lean_dec.exit153

bb.dz:                                            ; preds = %lean_del_object.exit254
  %i.gc = load i32, ptr %i.x, align 4, !tbaa !13  ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.ea, label %bb.eb, !prof !14

bb.ea:                                            ; preds = %bb.dz
  %i.ge = add nsw i32 %i.gc, -1
  store i32 %i.ge, ptr %i.x, align 4, !tbaa !13
  br label %lean_dec.exit153

bb.eb:                                            ; preds = %bb.dz
  %.not.i177 = icmp eq i32 %i.gc, 0
  br i1 %.not.i177, label %lean_dec.exit153, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #7
  br label %lean_dec.exit153

lean_dec.exit153:                                 ; preds = %bb.ec, %bb.eb, %bb.ea, %lean_del_object.exit254
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.ej, align 8, !tbaa !13
  %i.gh = icmp eq i32 %.val, 1
  br i1 %i.gh, label %.thread, label %bb.ed

bb.ed:                                            ; preds = %lean_dec.exit153
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = and i64 %i.gi, 1
  %.not.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i, label %bb.ee, label %lean_inc.exit

bb.ee:                                            ; preds = %bb.ed
  %.val.i.i255 = load i32, ptr %i.gg, align 4, !tbaa !13 ; 3 uses
  %i.gk = icmp sgt i32 %.val.i.i255, 0
  br i1 %i.gk, label %bb.ef, label %bb.eg, !prof !14

bb.ef:                                            ; preds = %bb.ee
  %i.gl = add nuw i32 %.val.i.i255, 1
  store i32 %i.gl, ptr %i.gg, align 4, !tbaa !13
  br label %lean_inc.exit

bb.eg:                                            ; preds = %bb.ee
  %.not.i.i256 = icmp eq i32 %.val.i.i255, 0
  br i1 %.not.i.i256, label %lean_inc.exit, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.gm = atomicrmw sub ptr %i.gg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.ed
  br i1 %.not.i233, label %bb.ei, label %bb.em

bb.ei:                                            ; preds = %lean_inc.exit
  %i.gn = load i32, ptr %i.ej, align 8, !tbaa !13 ; 3 uses
  %i.go = icmp sgt i32 %i.gn, 1
  br i1 %i.go, label %bb.ej, label %bb.ek, !prof !14

bb.ej:                                            ; preds = %bb.ei
  %i.gp = add nsw i32 %i.gn, -1
  store i32 %i.gp, ptr %i.ej, align 8, !tbaa !13
  br label %bb.em

bb.ek:                                            ; preds = %bb.ei
  %.not.i179 = icmp eq i32 %i.gn, 0
  br i1 %.not.i179, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ej) #7
  br label %bb.em

bb.em:                                            ; preds = %lean_inc.exit, %bb.ej, %bb.ek, %bb.el
  tail call void @lean_inc_heartbeat() #7
  %i.gq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.en, label %lean_alloc_ctor.exit258

bb.en:                                            ; preds = %bb.em
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit258:                          ; preds = %bb.em
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store i32 1, ptr %i.gq, align 4, !tbaa !13
  store i32 16842768, ptr %i.gs, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %i.gg, ptr %i.gt, align 8, !tbaa !10
  br label %.thread

bb.eo:                                            ; preds = %lean_obj_tag.exit198
  br i1 %.not.i141, label %bb.ep, label %lean_dec.exit149

bb.ep:                                            ; preds = %bb.eo
  %i.gu = load i32, ptr %i.x, align 4, !tbaa !13  ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 1
  br i1 %i.gv, label %bb.eq, label %bb.er, !prof !14

bb.eq:                                            ; preds = %bb.ep
  %i.gw = add nsw i32 %i.gu, -1
  store i32 %i.gw, ptr %i.x, align 4, !tbaa !13
  br label %lean_dec.exit149

end_hunk_4
begin_hunk_5_@l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVar___lam__0:bb.a
  store ptr %i.ca, ptr %i.cm, align 8, !tbaa !10
  %i.cn = tail call ptr @l_Lean_Elab_pushInfoLeaf___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVar_spec__4(ptr noundef nonnull %.sink1246, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr noundef %11) ; 13 uses
  %i.co = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cp = and i64 %i.co, 1
  %.not.i872 = icmp eq i64 %i.cp, 0               ; 2 uses
  br i1 %.not.i872, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cq = lshr i64 %i.co, 1
  %i.cr = trunc i64 %i.cq to i32
  br label %lean_obj_tag.exit875

bb.ba:                                            ; preds = %bb.ay
  %i.cs = getelementptr i8, ptr %i.cn, i64 4
  %.val.i874 = load i32, ptr %i.cs, align 4
  %i.ct = lshr i32 %.val.i874, 24
  br label %lean_obj_tag.exit875

lean_obj_tag.exit875:                             ; preds = %bb.az, %bb.ba
  %.0.i873 = phi i32 [ %i.cr, %bb.az ], [ %i.ct, %bb.ba ]
  %i.cu = icmp eq i32 %.0.i873, 0
  br i1 %i.cu, label %bb.bb, label %bb.en

bb.bb:                                            ; preds = %lean_obj_tag.exit875
  %.val.i876 = load i32, ptr %i.cn, align 4, !tbaa !13 ; 4 uses
  %i.cv = icmp eq i32 %.val.i876, 1
  br i1 %i.cv, label %.preheader.i878, label %bb.bg

.preheader.i878:                                  ; preds = %bb.bb
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !10 ; 4 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, 1
  %.not.i.i880 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i880, label %bb.bc, label %lean_dec.exit.i881

bb.bc:                                            ; preds = %.preheader.i878
  %i.da = load i32, ptr %i.cx, align 4, !tbaa !13 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.bd, label %bb.be, !prof !14

bb.bd:                                            ; preds = %bb.bc
  %i.dc = add nsw i32 %i.da, -1
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !13
  br label %lean_dec.exit.i881

bb.be:                                            ; preds = %bb.bc
  %.not.i7.i885 = icmp eq i32 %i.da, 0
  br i1 %.not.i7.i885, label %lean_dec.exit.i881, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cx) #7
  br label %lean_dec.exit.i881

lean_dec.exit.i881:                               ; preds = %bb.bf, %bb.be, %bb.bd, %.preheader.i878
  tail call void @lean_free_object(ptr noundef nonnull %i.cn) #7
  br label %lean_dec_ref_known.exit886

bb.bg:                                            ; preds = %bb.bb
  %i.dd = icmp sgt i32 %.val.i876, 1
  br i1 %i.dd, label %bb.bh, label %bb.bi, !prof !14

bb.bh:                                            ; preds = %bb.bg
  %i.de = add nsw i32 %.val.i876, -1
  store i32 %i.de, ptr %i.cn, align 4, !tbaa !13
  br label %lean_dec_ref_known.exit886

bb.bi:                                            ; preds = %bb.bg
  %.not.i8.i877 = icmp eq i32 %.val.i876, 0
  br i1 %.not.i8.i877, label %lean_dec_ref_known.exit886, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cn) #7
  br label %lean_dec_ref_known.exit886

lean_dec_ref_known.exit886:                       ; preds = %lean_dec.exit.i881, %bb.bh, %bb.bi, %bb.bj
  %i.df = ptrtoint ptr %i.be to i64
  %i.dg = and i64 %i.df, 1
  %.not.i570 = icmp eq i64 %i.dg, 0               ; 3 uses
  br i1 %.not.i570, label %bb.bk, label %lean_inc.exit571

bb.bk:                                            ; preds = %lean_dec_ref_known.exit886
  %.val.i.i887 = load i32, ptr %i.be, align 4, !tbaa !13 ; 3 uses
  %i.dh = icmp sgt i32 %.val.i.i887, 0
  br i1 %i.dh, label %bb.bl, label %bb.bm, !prof !14

bb.bl:                                            ; preds = %bb.bk
  %i.di = add nuw i32 %.val.i.i887, 1
  store i32 %i.di, ptr %i.be, align 4, !tbaa !13
  br label %lean_inc.exit571

bb.bm:                                            ; preds = %bb.bk
  %.not.i.i888 = icmp eq i32 %.val.i.i887, 0
  br i1 %.not.i.i888, label %lean_inc.exit571, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dj = atomicrmw sub ptr %i.be, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit571

lean_inc.exit571:                                 ; preds = %bb.bn, %bb.bm, %bb.bl, %lean_dec_ref_known.exit886
  %i.dk = tail call ptr @l_Lean_occursCheck___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_resumePostponed_spec__1(ptr noundef %5, ptr noundef %i.be, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11) ; 9 uses
  br i1 %.not.i552, label %bb.bo, label %lean_dec.exit690

bb.bo:                                            ; preds = %lean_inc.exit571
  %i.dl = load i32, ptr %11, align 4, !tbaa !13   ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.bp, label %bb.bq, !prof !14

bb.bp:                                            ; preds = %bb.bo
  %i.dn = add nsw i32 %i.dl, -1
  store i32 %i.dn, ptr %11, align 4, !tbaa !13
  br label %lean_dec.exit690

bb.bq:                                            ; preds = %bb.bo
  %.not.i702 = icmp eq i32 %i.dl, 0
  br i1 %.not.i702, label %lean_dec.exit690, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #7
  br label %lean_dec.exit690

lean_dec.exit690:                                 ; preds = %bb.br, %bb.bq, %bb.bp, %lean_inc.exit571
  %i.do = load i32, ptr %10, align 4, !tbaa !13   ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 1
  br i1 %i.dp, label %bb.bs, label %bb.bt, !prof !14

bb.bs:                                            ; preds = %lean_dec.exit690
  %i.dq = add nsw i32 %i.do, -1
  store i32 %i.dq, ptr %10, align 4, !tbaa !13
  br label %lean_dec_ref.exit843

bb.bt:                                            ; preds = %lean_dec.exit690
  %.not.i842 = icmp eq i32 %i.do, 0
  br i1 %.not.i842, label %lean_dec_ref.exit843, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #7
  br label %lean_dec_ref.exit843

lean_dec_ref.exit843:                             ; preds = %bb.bs, %bb.bt, %bb.bu
  %i.dr = ptrtoint ptr %i.dk to i64               ; 2 uses
  %i.ds = and i64 %i.dr, 1
  %.not.i890 = icmp eq i64 %i.ds, 0
  br i1 %.not.i890, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %lean_dec_ref.exit843
  %i.dt = lshr i64 %i.dr, 1
  %i.du = trunc i64 %i.dt to i32
  br label %lean_obj_tag.exit893

bb.bw:                                            ; preds = %lean_dec_ref.exit843
  %i.dv = getelementptr i8, ptr %i.dk, i64 4
  %.val.i892 = load i32, ptr %i.dv, align 4
  %i.dw = lshr i32 %.val.i892, 24
  br label %lean_obj_tag.exit893

lean_obj_tag.exit893:                             ; preds = %bb.bv, %bb.bw
  %.0.i891 = phi i32 [ %i.du, %bb.bv ], [ %i.dw, %bb.bw ]
  %i.dx = icmp eq i32 %.0.i891, 0
  br i1 %i.dx, label %bb.bx, label %bb.ea

bb.bx:                                            ; preds = %lean_obj_tag.exit893
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !10 ; 12 uses
  %i.ea = ptrtoint ptr %i.dz to i64               ; 3 uses
  %i.eb = and i64 %i.ea, 1
  %.not.i568 = icmp eq i64 %i.eb, 0               ; 2 uses
  br i1 %.not.i568, label %bb.by, label %lean_inc.exit569.thread

bb.by:                                            ; preds = %bb.bx
  %.val.i.i894 = load i32, ptr %i.dz, align 4, !tbaa !13 ; 3 uses
  %i.ec = icmp sgt i32 %.val.i.i894, 0
  br i1 %i.ec, label %bb.bz, label %bb.ca, !prof !14

bb.bz:                                            ; preds = %bb.by
  %i.ed = add nuw i32 %.val.i.i894, 1
  store i32 %i.ed, ptr %i.dz, align 4, !tbaa !13
  br label %lean_inc.exit569

bb.ca:                                            ; preds = %bb.by
  %.not.i.i895 = icmp eq i32 %.val.i.i894, 0
  br i1 %.not.i.i895, label %lean_inc.exit569, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ee = atomicrmw sub ptr %i.dz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit569

lean_inc.exit569:                                 ; preds = %bb.cb, %bb.ca, %bb.bz
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dk, i32 noundef 1)
  %i.ef = and i64 %i.ea, 510
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %bb.cc, label %bb.cs

lean_inc.exit569.thread:                          ; preds = %bb.bx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dk, i32 noundef 1)
  %i.eh = and i64 %i.ea, 510
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %lean_dec.exit688, label %bb.cs

bb.cc:                                            ; preds = %lean_inc.exit569
  %i.ej = load i32, ptr %i.dz, align 512, !tbaa !13 ; 3 uses
  %i.ek = icmp sgt i32 %i.ej, 1
  br i1 %i.ek, label %bb.cd, label %bb.ce, !prof !14

bb.cd:                                            ; preds = %bb.cc
  %i.el = add nsw i32 %i.ej, -1
  store i32 %i.el, ptr %i.dz, align 512, !tbaa !13
  br label %lean_dec.exit688

bb.ce:                                            ; preds = %bb.cc
  %.not.i704 = icmp eq i32 %i.ej, 0
  br i1 %.not.i704, label %lean_dec.exit688, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dz) #7
  br label %lean_dec.exit688

lean_dec.exit688:                                 ; preds = %lean_inc.exit569.thread, %bb.cf, %bb.ce, %bb.cd
  br i1 %.not.i570, label %bb.cg, label %lean_dec.exit686

bb.cg:                                            ; preds = %lean_dec.exit688
  %i.em = load i32, ptr %i.be, align 4, !tbaa !13 ; 3 uses
  %i.en = icmp sgt i32 %i.em, 1
  br i1 %i.en, label %bb.ch, label %bb.ci, !prof !14

bb.ch:                                            ; preds = %bb.cg
  %i.eo = add nsw i32 %i.em, -1
  store i32 %i.eo, ptr %i.be, align 4, !tbaa !13
  br label %lean_dec.exit686

bb.ci:                                            ; preds = %bb.cg
  %.not.i706 = icmp eq i32 %i.em, 0
  br i1 %.not.i706, label %lean_dec.exit686, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #7
  br label %lean_dec.exit686

lean_dec.exit686:                                 ; preds = %bb.cj, %bb.ci, %bb.ch, %lean_dec.exit688
  br i1 %.not.i550, label %bb.ck, label %lean_dec.exit684

bb.ck:                                            ; preds = %lean_dec.exit686
  %i.ep = load i32, ptr %9, align 4, !tbaa !13    ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %bb.cl, label %bb.cm, !prof !14

bb.cl:                                            ; preds = %bb.ck
  %i.er = add nsw i32 %i.ep, -1
  store i32 %i.er, ptr %9, align 4, !tbaa !13
  br label %lean_dec.exit684

bb.cm:                                            ; preds = %bb.ck
  %.not.i708 = icmp eq i32 %i.ep, 0
  br i1 %.not.i708, label %lean_dec.exit684, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec.exit684

lean_dec.exit684:                                 ; preds = %bb.cn, %bb.cm, %bb.cl, %lean_dec.exit686
  %i.es = ptrtoint ptr %5 to i64
  %i.et = and i64 %i.es, 1
  %.not.i681 = icmp eq i64 %i.et, 0
  br i1 %.not.i681, label %bb.co, label %lean_dec.exit682

bb.co:                                            ; preds = %lean_dec.exit684
  %i.eu = load i32, ptr %5, align 4, !tbaa !13    ; 3 uses
  %i.ev = icmp sgt i32 %i.eu, 1
  br i1 %i.ev, label %bb.cp, label %bb.cq, !prof !14

bb.cp:                                            ; preds = %bb.co
  %i.ew = add nsw i32 %i.eu, -1
  store i32 %i.ew, ptr %5, align 4, !tbaa !13
  br label %lean_dec.exit682

bb.cq:                                            ; preds = %bb.co
  %.not.i710 = icmp eq i32 %i.eu, 0
  br i1 %.not.i710, label %lean_dec.exit682, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit682

bb.cs:                                            ; preds = %lean_inc.exit569.thread, %lean_inc.exit569
  %i.ex = tail call ptr @l_Lean_MVarId_assign___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_resumePostponed_spec__2___redArg(ptr noundef %5, ptr noundef %i.be, ptr noundef %9) ; 13 uses
  br i1 %.not.i550, label %bb.ct, label %lean_dec.exit680

bb.ct:                                            ; preds = %bb.cs
  %i.ey = load i32, ptr %9, align 4, !tbaa !13    ; 3 uses
  %i.ez = icmp sgt i32 %i.ey, 1
  br i1 %i.ez, label %bb.cu, label %bb.cv, !prof !14

bb.cu:                                            ; preds = %bb.ct
  %i.fa = add nsw i32 %i.ey, -1
  store i32 %i.fa, ptr %9, align 4, !tbaa !13
  br label %lean_dec.exit680

bb.cv:                                            ; preds = %bb.ct
  %.not.i712 = icmp eq i32 %i.ey, 0
  br i1 %.not.i712, label %lean_dec.exit680, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec.exit680

lean_dec.exit680:                                 ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.cs
  %i.fb = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fc = and i64 %i.fb, 1
  %.not.i897 = icmp eq i64 %i.fc, 0               ; 3 uses
  br i1 %.not.i897, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %lean_dec.exit680
  %i.fd = lshr i64 %i.fb, 1
  %i.fe = trunc i64 %i.fd to i32
  br label %lean_obj_tag.exit900

bb.cy:                                            ; preds = %lean_dec.exit680
  %i.ff = getelementptr i8, ptr %i.ex, i64 4
  %.val.i899 = load i32, ptr %i.ff, align 4
  %i.fg = lshr i32 %.val.i899, 24
  br label %lean_obj_tag.exit900

lean_obj_tag.exit900:                             ; preds = %bb.cx, %bb.cy
  %.0.i898 = phi i32 [ %i.fe, %bb.cx ], [ %i.fg, %bb.cy ]
  %i.fh = icmp eq i32 %.0.i898, 0
  br i1 %i.fh, label %bb.cz, label %bb.dl

bb.cz:                                            ; preds = %lean_obj_tag.exit900
  %.val849 = load i32, ptr %i.ex, align 4, !tbaa !13 ; 4 uses
  %i.fi = icmp eq i32 %.val849, 1
  br i1 %i.fi, label %bb.da, label %bb.df

bb.da:                                            ; preds = %bb.cz
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !10 ; 4 uses
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = and i64 %i.fl, 1
  %.not.i677 = icmp eq i64 %i.fm, 0
  br i1 %.not.i677, label %bb.db, label %bb.dk

bb.db:                                            ; preds = %bb.da
  %i.fn = load i32, ptr %i.fk, align 4, !tbaa !13 ; 3 uses
  %i.fo = icmp sgt i32 %i.fn, 1
  br i1 %i.fo, label %bb.dc, label %bb.dd, !prof !14

bb.dc:                                            ; preds = %bb.db
  %i.fp = add nsw i32 %i.fn, -1
  store i32 %i.fp, ptr %i.fk, align 4, !tbaa !13
  br label %bb.dk

bb.dd:                                            ; preds = %bb.db
  %.not.i714 = icmp eq i32 %i.fn, 0
  br i1 %.not.i714, label %bb.dk, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fk) #7
  br label %bb.dk

bb.df:                                            ; preds = %bb.cz
  br i1 %.not.i897, label %bb.dg, label %lean_dec.exit678

bb.dg:                                            ; preds = %bb.df
  %i.fq = icmp sgt i32 %.val849, 1
  br i1 %i.fq, label %bb.dh, label %bb.di, !prof !14

bb.dh:                                            ; preds = %bb.dg
  %i.fr = add nsw i32 %.val849, -1
  store i32 %i.fr, ptr %i.ex, align 4, !tbaa !13
  br label %lean_dec.exit678

bb.di:                                            ; preds = %bb.dg
  %.not.i716 = icmp eq i32 %.val849, 0
  br i1 %.not.i716, label %lean_dec.exit678, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ex) #7
  br label %lean_dec.exit678

bb.dk:                                            ; preds = %bb.da, %bb.dc, %bb.dd, %bb.de
  store ptr %i.dz, ptr %i.fj, align 8, !tbaa !10
  br label %lean_dec.exit682.thread

lean_dec.exit678:                                 ; preds = %bb.dj, %bb.di, %bb.dh, %bb.df
  %i.fs = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %i.dz, ptr %i.ft, align 8, !tbaa !10
  br label %lean_dec.exit682.thread

bb.dl:                                            ; preds = %lean_obj_tag.exit900
  br i1 %.not.i568, label %bb.dm, label %lean_dec.exit674

bb.dm:                                            ; preds = %bb.dl
  %i.fu = load i32, ptr %i.dz, align 4, !tbaa !13 ; 3 uses
  %i.fv = icmp sgt i32 %i.fu, 1
  br i1 %i.fv, label %bb.dn, label %bb.do, !prof !14

bb.dn:                                            ; preds = %bb.dm
  %i.fw = add nsw i32 %i.fu, -1
  store i32 %i.fw, ptr %i.dz, align 4, !tbaa !13
  br label %lean_dec.exit674

bb.do:                                            ; preds = %bb.dm
  %.not.i718 = icmp eq i32 %i.fu, 0
  br i1 %.not.i718, label %lean_dec.exit674, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dz) #7
end_hunk_5
begin_hunk_6_@l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVar___lam__0:bb.a

.preheader.i990:                                  ; preds = %lean_inc.exit547
  %i.ro = load ptr, ptr %i.rg, align 8, !tbaa !10 ; 4 uses
  %i.rp = ptrtoint ptr %i.ro to i64
  %i.rq = and i64 %i.rp, 1
  %.not.i.i992 = icmp eq i64 %i.rq, 0
  br i1 %.not.i.i992, label %bb.lw, label %lean_dec.exit.i993

bb.lw:                                            ; preds = %.preheader.i990
  %i.rr = load i32, ptr %i.ro, align 4, !tbaa !13 ; 3 uses
  %i.rs = icmp sgt i32 %i.rr, 1
  br i1 %i.rs, label %bb.lx, label %bb.ly, !prof !14

bb.lx:                                            ; preds = %bb.lw
  %i.rt = add nsw i32 %i.rr, -1
  store i32 %i.rt, ptr %i.ro, align 4, !tbaa !13
  br label %lean_dec.exit.i993

bb.ly:                                            ; preds = %bb.lw
  %.not.i7.i997 = icmp eq i32 %i.rr, 0
  br i1 %.not.i7.i997, label %lean_dec.exit.i993, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ro) #7
  br label %lean_dec.exit.i993

lean_dec.exit.i993:                               ; preds = %bb.lz, %bb.ly, %bb.lx, %.preheader.i990
  tail call void @lean_free_object(ptr noundef nonnull %i.oz) #7
  br label %lean_dec_ref_known.exit998

bb.ma:                                            ; preds = %lean_inc.exit547
  %i.ru = icmp sgt i32 %.val.i988, 1
  br i1 %i.ru, label %bb.mb, label %bb.mc, !prof !14

bb.mb:                                            ; preds = %bb.ma
  %i.rv = add nsw i32 %.val.i988, -1
  store i32 %i.rv, ptr %i.oz, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit998

bb.mc:                                            ; preds = %bb.ma
  %.not.i8.i989 = icmp eq i32 %.val.i988, 0
  br i1 %.not.i8.i989, label %lean_dec_ref_known.exit998, label %bb.md

bb.md:                                            ; preds = %bb.mc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oz) #7
  br label %lean_dec_ref_known.exit998

lean_dec_ref_known.exit998:                       ; preds = %lean_dec.exit.i993, %bb.mb, %bb.mc, %bb.md
  br i1 %.not.i546, label %bb.me, label %lean_dec.exit630

bb.me:                                            ; preds = %lean_dec_ref_known.exit998
  %i.rw = load i32, ptr %i.rh, align 4, !tbaa !13 ; 3 uses
  %i.rx = icmp sgt i32 %i.rw, 1
  br i1 %i.rx, label %bb.mf, label %bb.mg, !prof !14

bb.mf:                                            ; preds = %bb.me
  %i.ry = add nsw i32 %i.rw, -1
  store i32 %i.ry, ptr %i.rh, align 4, !tbaa !13
  br label %lean_dec.exit630

bb.mg:                                            ; preds = %bb.me
  %.not.i762 = icmp eq i32 %i.rw, 0
  br i1 %.not.i762, label %lean_dec.exit630, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.rh) #7
  br label %lean_dec.exit630

lean_dec.exit630:                                 ; preds = %bb.mh, %bb.mg, %bb.mf, %lean_dec_ref_known.exit998
  %i.rz = and i64 %i.ri, 510
  %i.sa = icmp eq i64 %i.rz, 0
  br i1 %i.sa, label %lean_dec.exit628, label %bb.mi

bb.mi:                                            ; preds = %lean_dec.exit630
  %.val.i.i999 = load i32, ptr %1, align 4, !tbaa !13 ; 3 uses
  %i.sb = icmp sgt i32 %.val.i.i999, 0
  br i1 %i.sb, label %bb.mj, label %bb.mk, !prof !14

bb.mj:                                            ; preds = %bb.mi
  %i.sc = add nuw i32 %.val.i.i999, 1
  store i32 %i.sc, ptr %1, align 4, !tbaa !13
  br label %lean_inc_ref.exit1001

bb.mk:                                            ; preds = %bb.mi
  %.not.i.i1000 = icmp eq i32 %.val.i.i999, 0
  br i1 %.not.i.i1000, label %lean_inc_ref.exit1001, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.sd = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1001

lean_inc_ref.exit1001:                            ; preds = %bb.mj, %bb.mk, %bb.ml
  %i.se = tail call ptr @l_Lean_occursCheck___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_resumePostponed_spec__1(ptr noundef %5, ptr noundef nonnull %1, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11) ; 10 uses
  %i.sf = ptrtoint ptr %i.se to i64               ; 2 uses
  %i.sg = and i64 %i.sf, 1
  %.not.i1002 = icmp eq i64 %i.sg, 0
  br i1 %.not.i1002, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %lean_inc_ref.exit1001
  %i.sh = lshr i64 %i.sf, 1
  %i.si = trunc i64 %i.sh to i32
  br label %lean_obj_tag.exit1005

bb.mn:                                            ; preds = %lean_inc_ref.exit1001
  %i.sj = getelementptr i8, ptr %i.se, i64 4
  %.val.i1004 = load i32, ptr %i.sj, align 4
  %i.sk = lshr i32 %.val.i1004, 24
  br label %lean_obj_tag.exit1005

lean_obj_tag.exit1005:                            ; preds = %bb.mm, %bb.mn
  %.0.i1003 = phi i32 [ %i.si, %bb.mm ], [ %i.sk, %bb.mn ]
  %i.sl = icmp eq i32 %.0.i1003, 0
  br i1 %i.sl, label %bb.mo, label %bb.pg

bb.mo:                                            ; preds = %lean_obj_tag.exit1005
  %i.sm = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 2 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !10 ; 12 uses
  %i.so = ptrtoint ptr %i.sn to i64               ; 2 uses
  %i.sp = and i64 %i.so, 1
  %.not.i544 = icmp eq i64 %i.sp, 0               ; 3 uses
  br i1 %.not.i544, label %bb.mp, label %lean_inc.exit545

bb.mp:                                            ; preds = %bb.mo
  %.val.i.i1006 = load i32, ptr %i.sn, align 4, !tbaa !13 ; 3 uses
  %i.sq = icmp sgt i32 %.val.i.i1006, 0
  br i1 %i.sq, label %bb.mq, label %bb.mr, !prof !14

bb.mq:                                            ; preds = %bb.mp
  %i.sr = add nuw i32 %.val.i.i1006, 1
  store i32 %i.sr, ptr %i.sn, align 4, !tbaa !13
  br label %lean_inc.exit545

bb.mr:                                            ; preds = %bb.mp
  %.not.i.i1007 = icmp eq i32 %.val.i.i1006, 0
  br i1 %.not.i.i1007, label %lean_inc.exit545, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.ss = atomicrmw sub ptr %i.sn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit545

lean_inc.exit545:                                 ; preds = %bb.ms, %bb.mr, %bb.mq, %bb.mo
  %.val.i1009 = load i32, ptr %i.se, align 8, !tbaa !13 ; 4 uses
  %i.st = icmp eq i32 %.val.i1009, 1
  br i1 %i.st, label %.preheader.i1011, label %bb.mx

.preheader.i1011:                                 ; preds = %lean_inc.exit545
  %i.su = load ptr, ptr %i.sm, align 8, !tbaa !10 ; 4 uses
  %i.sv = ptrtoint ptr %i.su to i64
  %i.sw = and i64 %i.sv, 1
  %.not.i.i1013 = icmp eq i64 %i.sw, 0
  br i1 %.not.i.i1013, label %bb.mt, label %lean_dec.exit.i1014

bb.mt:                                            ; preds = %.preheader.i1011
  %i.sx = load i32, ptr %i.su, align 4, !tbaa !13 ; 3 uses
  %i.sy = icmp sgt i32 %i.sx, 1
  br i1 %i.sy, label %bb.mu, label %bb.mv, !prof !14

bb.mu:                                            ; preds = %bb.mt
  %i.sz = add nsw i32 %i.sx, -1
  store i32 %i.sz, ptr %i.su, align 4, !tbaa !13
  br label %lean_dec.exit.i1014

bb.mv:                                            ; preds = %bb.mt
  %.not.i7.i1018 = icmp eq i32 %i.sx, 0
  br i1 %.not.i7.i1018, label %lean_dec.exit.i1014, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.su) #7
  br label %lean_dec.exit.i1014

lean_dec.exit.i1014:                              ; preds = %bb.mw, %bb.mv, %bb.mu, %.preheader.i1011
  tail call void @lean_free_object(ptr noundef nonnull %i.se) #7
  br label %lean_dec_ref_known.exit1019

bb.mx:                                            ; preds = %lean_inc.exit545
  %i.ta = icmp sgt i32 %.val.i1009, 1
  br i1 %i.ta, label %bb.my, label %bb.mz, !prof !14

bb.my:                                            ; preds = %bb.mx
  %i.tb = add nsw i32 %.val.i1009, -1
  store i32 %i.tb, ptr %i.se, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit1019

bb.mz:                                            ; preds = %bb.mx
  %.not.i8.i1010 = icmp eq i32 %.val.i1009, 0
  br i1 %.not.i8.i1010, label %lean_dec_ref_known.exit1019, label %bb.na

bb.na:                                            ; preds = %bb.mz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.se) #7
  br label %lean_dec_ref_known.exit1019

lean_dec_ref_known.exit1019:                      ; preds = %lean_dec.exit.i1014, %bb.my, %bb.mz, %bb.na
  %i.tc = and i64 %i.so, 510
  %i.td = icmp eq i64 %i.tc, 0
  br i1 %i.td, label %bb.nb, label %bb.ng

bb.nb:                                            ; preds = %lean_dec_ref_known.exit1019
  br i1 %.not.i544, label %bb.nc, label %lean_dec.exit628

bb.nc:                                            ; preds = %bb.nb
  %i.te = load i32, ptr %i.sn, align 512, !tbaa !13 ; 3 uses
  %i.tf = icmp sgt i32 %i.te, 1
  br i1 %i.tf, label %bb.nd, label %bb.ne, !prof !14

bb.nd:                                            ; preds = %bb.nc
  %i.tg = add nsw i32 %i.te, -1
  store i32 %i.tg, ptr %i.sn, align 512, !tbaa !13
  br label %lean_dec.exit628

bb.ne:                                            ; preds = %bb.nc
  %.not.i764 = icmp eq i32 %i.te, 0
  br i1 %.not.i764, label %lean_dec.exit628, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sn) #7
  br label %lean_dec.exit628

bb.ng:                                            ; preds = %lean_dec_ref_known.exit1019
  br i1 %.not.i552, label %bb.nh, label %lean_dec.exit626

bb.nh:                                            ; preds = %bb.ng
  %i.th = load i32, ptr %11, align 4, !tbaa !13   ; 3 uses
  %i.ti = icmp sgt i32 %i.th, 1
  br i1 %i.ti, label %bb.ni, label %bb.nj, !prof !14

bb.ni:                                            ; preds = %bb.nh
  %i.tj = add nsw i32 %i.th, -1
  store i32 %i.tj, ptr %11, align 4, !tbaa !13
  br label %lean_dec.exit626

bb.nj:                                            ; preds = %bb.nh
  %.not.i766 = icmp eq i32 %i.th, 0
  br i1 %.not.i766, label %lean_dec.exit626, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #7
  br label %lean_dec.exit626

lean_dec.exit626:                                 ; preds = %bb.nk, %bb.nj, %bb.ni, %bb.ng
  %i.tk = load i32, ptr %10, align 4, !tbaa !13   ; 3 uses
  %i.tl = icmp sgt i32 %i.tk, 1
  br i1 %i.tl, label %bb.nl, label %bb.nm, !prof !14

bb.nl:                                            ; preds = %lean_dec.exit626
  %i.tm = add nsw i32 %i.tk, -1
  store i32 %i.tm, ptr %10, align 4, !tbaa !13
  br label %lean_dec_ref.exit835

bb.nm:                                            ; preds = %lean_dec.exit626
  %.not.i834 = icmp eq i32 %i.tk, 0
  br i1 %.not.i834, label %lean_dec_ref.exit835, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #7
  br label %lean_dec_ref.exit835

lean_dec_ref.exit835:                             ; preds = %bb.nl, %bb.nm, %bb.nn
  %i.tn = ptrtoint ptr %4 to i64
  %i.to = and i64 %i.tn, 1
  %.not.i623 = icmp eq i64 %i.to, 0
  br i1 %.not.i623, label %bb.no, label %lean_dec.exit624

bb.no:                                            ; preds = %lean_dec_ref.exit835
  %i.tp = load i32, ptr %4, align 4, !tbaa !13    ; 3 uses
  %i.tq = icmp sgt i32 %i.tp, 1
  br i1 %i.tq, label %bb.np, label %bb.nq, !prof !14

bb.np:                                            ; preds = %bb.no
  %i.tr = add nsw i32 %i.tp, -1
  store i32 %i.tr, ptr %4, align 4, !tbaa !13
  br label %lean_dec.exit624

bb.nq:                                            ; preds = %bb.no
  %.not.i768 = icmp eq i32 %i.tp, 0
  br i1 %.not.i768, label %lean_dec.exit624, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit624

lean_dec.exit624:                                 ; preds = %bb.nr, %bb.nq, %bb.np, %lean_dec_ref.exit835
  %i.ts = ptrtoint ptr %3 to i64
  %i.tt = and i64 %i.ts, 1
  %.not.i621 = icmp eq i64 %i.tt, 0
  br i1 %.not.i621, label %bb.ns, label %lean_dec.exit622

bb.ns:                                            ; preds = %lean_dec.exit624
  %i.tu = load i32, ptr %3, align 4, !tbaa !13    ; 3 uses
  %i.tv = icmp sgt i32 %i.tu, 1
  br i1 %i.tv, label %bb.nt, label %bb.nu, !prof !14

bb.nt:                                            ; preds = %bb.ns
  %i.tw = add nsw i32 %i.tu, -1
  store i32 %i.tw, ptr %3, align 4, !tbaa !13
  br label %lean_dec.exit622

bb.nu:                                            ; preds = %bb.ns
  %.not.i770 = icmp eq i32 %i.tu, 0
  br i1 %.not.i770, label %lean_dec.exit622, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit622

lean_dec.exit622:                                 ; preds = %bb.nv, %bb.nu, %bb.nt, %lean_dec.exit624
  %i.tx = load i32, ptr %2, align 4, !tbaa !13    ; 3 uses
  %i.ty = icmp sgt i32 %i.tx, 1
  br i1 %i.ty, label %bb.nw, label %bb.nx, !prof !14

bb.nw:                                            ; preds = %lean_dec.exit622
  %i.tz = add nsw i32 %i.tx, -1
  store i32 %i.tz, ptr %2, align 4, !tbaa !13
  br label %lean_dec_ref.exit833

bb.nx:                                            ; preds = %lean_dec.exit622
  %.not.i832 = icmp eq i32 %i.tx, 0
  br i1 %.not.i832, label %lean_dec_ref.exit833, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec_ref.exit833

lean_dec_ref.exit833:                             ; preds = %bb.nw, %bb.nx, %bb.ny
  %i.ua = tail call ptr @l_Lean_MVarId_assign___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_resumePostponed_spec__2___redArg(ptr noundef %5, ptr noundef nonnull %1, ptr noundef %9) ; 13 uses
  br i1 %.not.i550, label %bb.nz, label %lean_dec.exit620

bb.nz:                                            ; preds = %lean_dec_ref.exit833
  %i.ub = load i32, ptr %9, align 4, !tbaa !13    ; 3 uses
  %i.uc = icmp sgt i32 %i.ub, 1
  br i1 %i.uc, label %bb.oa, label %bb.ob, !prof !14

bb.oa:                                            ; preds = %bb.nz
  %i.ud = add nsw i32 %i.ub, -1
  store i32 %i.ud, ptr %9, align 4, !tbaa !13
  br label %lean_dec.exit620

bb.ob:                                            ; preds = %bb.nz
  %.not.i772 = icmp eq i32 %i.ub, 0
  br i1 %.not.i772, label %lean_dec.exit620, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec.exit620

lean_dec.exit620:                                 ; preds = %bb.oc, %bb.ob, %bb.oa, %lean_dec_ref.exit833
  %i.ue = ptrtoint ptr %i.ua to i64               ; 2 uses
  %i.uf = and i64 %i.ue, 1
  %.not.i1020 = icmp eq i64 %i.uf, 0              ; 3 uses
  br i1 %.not.i1020, label %bb.oe, label %bb.od

bb.od:                                            ; preds = %lean_dec.exit620
  %i.ug = lshr i64 %i.ue, 1
  %i.uh = trunc i64 %i.ug to i32
  br label %lean_obj_tag.exit1023

bb.oe:                                            ; preds = %lean_dec.exit620
  %i.ui = getelementptr i8, ptr %i.ua, i64 4
  %.val.i1022 = load i32, ptr %i.ui, align 4
  %i.uj = lshr i32 %.val.i1022, 24
  br label %lean_obj_tag.exit1023

lean_obj_tag.exit1023:                            ; preds = %bb.od, %bb.oe
  %.0.i1021 = phi i32 [ %i.uh, %bb.od ], [ %i.uj, %bb.oe ]
  %i.uk = icmp eq i32 %.0.i1021, 0
  br i1 %i.uk, label %bb.of, label %bb.or

bb.of:                                            ; preds = %lean_obj_tag.exit1023
  %.val845 = load i32, ptr %i.ua, align 4, !tbaa !13 ; 4 uses
  %i.ul = icmp eq i32 %.val845, 1
  br i1 %i.ul, label %bb.og, label %bb.ol

bb.og:                                            ; preds = %bb.of
  %i.um = getelementptr inbounds nuw i8, ptr %i.ua, i64 8 ; 2 uses
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !10 ; 4 uses
  %i.uo = ptrtoint ptr %i.un to i64
  %i.up = and i64 %i.uo, 1
  %.not.i617 = icmp eq i64 %i.up, 0
  br i1 %.not.i617, label %bb.oh, label %bb.oq

bb.oh:                                            ; preds = %bb.og
  %i.uq = load i32, ptr %i.un, align 4, !tbaa !13 ; 3 uses
  %i.ur = icmp sgt i32 %i.uq, 1
  br i1 %i.ur, label %bb.oi, label %bb.oj, !prof !14

bb.oi:                                            ; preds = %bb.oh
  %i.us = add nsw i32 %i.uq, -1
  store i32 %i.us, ptr %i.un, align 4, !tbaa !13
  br label %bb.oq

bb.oj:                                            ; preds = %bb.oh
  %.not.i774 = icmp eq i32 %i.uq, 0
  br i1 %.not.i774, label %bb.oq, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.un) #7
  br label %bb.oq

bb.ol:                                            ; preds = %bb.of
  br i1 %.not.i1020, label %bb.om, label %lean_dec.exit618

bb.om:                                            ; preds = %bb.ol
  %i.ut = icmp sgt i32 %.val845, 1
  br i1 %i.ut, label %bb.on, label %bb.oo, !prof !14

bb.on:                                            ; preds = %bb.om
  %i.uu = add nsw i32 %.val845, -1
  store i32 %i.uu, ptr %i.ua, align 4, !tbaa !13
end_hunk_6
begin_hunk_7_@l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2:bb.a
bb.ex:                                            ; preds = %bb.ev
  %.not.i420 = icmp eq i32 %i.hr, 0
  br i1 %.not.i420, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gc) #7
  br label %bb.ez

bb.ez:                                            ; preds = %lean_inc.exit335, %bb.ew, %bb.ex, %bb.ey
  tail call void @lean_inc_heartbeat() #7
  %i.hu = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %bb.fa, label %lean_dec.exit348.thread639.sink.split

bb.fa:                                            ; preds = %bb.ez
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.fb:                                            ; preds = %lean_dec_ref.exit449, %bb.gn, %bb.go, %bb.gp, %bb.gd, %bb.gf, %bb.gg, %bb.gh
  %.0318 = trunc i64 %i.jm to i8                  ; 2 uses
  br i1 %i.az, label %bb.jn, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.hw = load atomic i32, ptr @l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__3_once seq_cst, align 4, !tbaa !18
  %i.hx = icmp eq i32 %i.hw, 1
  br i1 %i.hx, label %bb.fd, label %bb.fe, !prof !14

bb.fd:                                            ; preds = %bb.fc
  %i.hy = load ptr, ptr @l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit540

bb.fe:                                            ; preds = %bb.fc
  %i.hz = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__3, ptr noundef nonnull @l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__3_once, ptr noundef nonnull @_init_l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__3) #7
  br label %lean_obj_once.exit540

lean_obj_once.exit540:                            ; preds = %bb.fd, %bb.fe
  %.0.i539 = phi ptr [ %i.hy, %bb.fd ], [ %i.hz, %bb.fe ]
  %i.ia = tail call zeroext i8 @l___private_Lean_Util_Trace_0__Lean_checkTraceOption_go(ptr noundef %i.aw, ptr noundef nonnull %i.av, ptr noundef %.0.i539) #7
  %.not = icmp eq i8 %i.ia, 0
  br i1 %.not, label %bb.jn, label %bb.ff

bb.ff:                                            ; preds = %lean_obj_once.exit540
  %i.ib = icmp eq i8 %.0318, 0
  br i1 %i.ib, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  %i.ic = load atomic i32, ptr @l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__6_once seq_cst, align 4, !tbaa !18
  %i.id = icmp eq i32 %i.ic, 1
  br i1 %i.id, label %bb.fh, label %bb.fi, !prof !14

bb.fh:                                            ; preds = %bb.fg
  %i.ie = load ptr, ptr @l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__6, align 8, !tbaa !10
  br label %bb.dn

bb.fi:                                            ; preds = %bb.fg
  %i.if = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__6, ptr noundef nonnull @l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__6_once, ptr noundef nonnull @_init_l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__6) #7
  br label %bb.dn

bb.fj:                                            ; preds = %bb.ff
  %i.ig = load atomic i32, ptr @l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__9_once seq_cst, align 4, !tbaa !18
  %i.ih = icmp eq i32 %i.ig, 1
  br i1 %i.ih, label %bb.fk, label %bb.fl, !prof !14

bb.fk:                                            ; preds = %bb.fj
  %i.ii = load ptr, ptr @l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__9, align 8, !tbaa !10
  br label %bb.dn

bb.fl:                                            ; preds = %bb.fj
  %i.ij = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__9, ptr noundef nonnull @l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__9_once, ptr noundef nonnull @_init_l_List_filterAuxM___at___00__private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVarsStep_spec__2___closed__9) #7
  br label %bb.dn

lean_dec_ref_known.exit503.thread:                ; preds = %bb.bn, %bb.bm, %lean_dec.exit.i498, %bb.bo, %lean_obj_once.exit, %lean_dec_ref_known.exit
  %i.ik = ptrtoint ptr %i.m to i64
  %i.il = and i64 %i.ik, 1
  %.not.i332 = icmp eq i64 %i.il, 0               ; 5 uses
  br i1 %.not.i332, label %bb.fm, label %lean_inc.exit333

bb.fm:                                            ; preds = %lean_dec_ref_known.exit503.thread
  %.val.i.i545 = load i32, ptr %i.m, align 4, !tbaa !13 ; 3 uses
  %i.im = icmp sgt i32 %.val.i.i545, 0
  br i1 %i.im, label %bb.fn, label %bb.fo, !prof !14

bb.fn:                                            ; preds = %bb.fm
  %i.in = add nuw i32 %.val.i.i545, 1
  store i32 %i.in, ptr %i.m, align 4, !tbaa !13
  br label %lean_inc.exit333

bb.fo:                                            ; preds = %bb.fm
  %.not.i.i546 = icmp eq i32 %.val.i.i545, 0
  br i1 %.not.i.i546, label %lean_inc.exit333, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.io = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit333

lean_inc.exit333:                                 ; preds = %bb.fp, %bb.fo, %bb.fn, %lean_dec_ref_known.exit503.thread
  %i.ip = tail call ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_synthesizeSyntheticMVar(ptr noundef %i.m, i8 noundef zeroext %0, i8 noundef zeroext %1, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9) ; 18 uses
  %i.iq = ptrtoint ptr %i.ip to i64               ; 3 uses
  %i.ir = and i64 %i.iq, 1
  %.not.i548 = icmp eq i64 %i.ir, 0               ; 2 uses
  br i1 %.not.i548, label %lean_obj_tag.exit551, label %lean_obj_tag.exit551.thread

lean_obj_tag.exit551:                             ; preds = %lean_inc.exit333
  %i.is = getelementptr i8, ptr %i.ip, i64 4
  %.val.i550 = load i32, ptr %i.is, align 4
  %i.it = icmp ult i32 %.val.i550, 16777216
  br i1 %i.it, label %bb.fq, label %lean_obj_tag.exit569.thread

lean_obj_tag.exit551.thread:                      ; preds = %lean_inc.exit333
  %i.iu = and i64 %i.iq, 8589934590
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %bb.fq, label %lean_obj_tag.exit569

bb.fq:                                            ; preds = %lean_obj_tag.exit551.thread, %lean_obj_tag.exit551
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !10 ; 10 uses
  %i.iy = ptrtoint ptr %i.ix to i64               ; 3 uses
  %i.iz = and i64 %i.iy, 1
  %.not.i330 = icmp eq i64 %i.iz, 0               ; 3 uses
  br i1 %.not.i330, label %bb.fr, label %lean_inc.exit331

bb.fr:                                            ; preds = %bb.fq
  %.val.i.i552 = load i32, ptr %i.ix, align 4, !tbaa !13 ; 3 uses
  %i.ja = icmp sgt i32 %.val.i.i552, 0
  br i1 %i.ja, label %bb.fs, label %bb.ft, !prof !14

bb.fs:                                            ; preds = %bb.fr
  %i.jb = add nuw i32 %.val.i.i552, 1
  store i32 %i.jb, ptr %i.ix, align 4, !tbaa !13
  br label %lean_inc.exit331

bb.ft:                                            ; preds = %bb.fr
  %.not.i.i553 = icmp eq i32 %.val.i.i552, 0
  br i1 %.not.i.i553, label %lean_inc.exit331, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.jc = atomicrmw sub ptr %i.ix, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit331

lean_inc.exit331:                                 ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fq
  %.val.i555 = load i32, ptr %i.ip, align 8, !tbaa !13 ; 4 uses
  %i.jd = icmp eq i32 %.val.i555, 1
  br i1 %i.jd, label %.preheader.i557, label %bb.fz

.preheader.i557:                                  ; preds = %lean_inc.exit331
  %i.je = load ptr, ptr %i.iw, align 8, !tbaa !10 ; 4 uses
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = and i64 %i.jf, 1
  %.not.i.i559 = icmp eq i64 %i.jg, 0
  br i1 %.not.i.i559, label %bb.fv, label %lean_dec.exit.i560

bb.fv:                                            ; preds = %.preheader.i557
  %i.jh = load i32, ptr %i.je, align 4, !tbaa !13 ; 3 uses
  %i.ji = icmp sgt i32 %i.jh, 1
  br i1 %i.ji, label %bb.fw, label %bb.fx, !prof !14

bb.fw:                                            ; preds = %bb.fv
  %i.jj = add nsw i32 %i.jh, -1
  store i32 %i.jj, ptr %i.je, align 4, !tbaa !13
  br label %lean_dec.exit.i560

bb.fx:                                            ; preds = %bb.fv
  %.not.i7.i564 = icmp eq i32 %i.jh, 0
  br i1 %.not.i7.i564, label %lean_dec.exit.i560, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.je) #7
  br label %lean_dec.exit.i560

lean_dec.exit.i560:                               ; preds = %bb.fy, %bb.fx, %bb.fw, %.preheader.i557
  tail call void @lean_free_object(ptr noundef nonnull %i.ip) #7
  br label %lean_dec_ref_known.exit565

bb.fz:                                            ; preds = %lean_inc.exit331
  %i.jk = icmp sgt i32 %.val.i555, 1
  br i1 %i.jk, label %bb.ga, label %bb.gb, !prof !14

bb.ga:                                            ; preds = %bb.fz
  %i.jl = add nsw i32 %.val.i555, -1
  store i32 %i.jl, ptr %i.ip, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit565

bb.gb:                                            ; preds = %bb.fz
  %.not.i8.i556 = icmp eq i32 %.val.i555, 0
  br i1 %.not.i8.i556, label %lean_dec_ref_known.exit565, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ip) #7
  br label %lean_dec_ref_known.exit565

lean_dec_ref_known.exit565:                       ; preds = %lean_dec.exit.i560, %bb.ga, %bb.gb, %bb.gc
  %i.jm = lshr i64 %i.iy, 1
  %i.jn = and i64 %i.iy, 510
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %bb.gd, label %bb.gi

bb.gd:                                            ; preds = %lean_dec_ref_known.exit565
  br i1 %.not.i330, label %bb.ge, label %bb.fb

bb.ge:                                            ; preds = %bb.gd
  %i.jp = load i32, ptr %i.ix, align 512, !tbaa !13 ; 3 uses
  %i.jq = icmp sgt i32 %i.jp, 1
  br i1 %i.jq, label %bb.gf, label %bb.gg, !prof !14

bb.gf:                                            ; preds = %bb.ge
  %i.jr = add nsw i32 %i.jp, -1
  store i32 %i.jr, ptr %i.ix, align 512, !tbaa !13
  br label %bb.fb

bb.gg:                                            ; preds = %bb.ge
  %.not.i422 = icmp eq i32 %i.jp, 0
  br i1 %.not.i422, label %bb.fb, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ix) #7
  br label %bb.fb

bb.gi:                                            ; preds = %lean_dec_ref_known.exit565
  %i.js = tail call ptr @l___private_Lean_Elab_SyntheticMVars_0__Lean_Elab_Term_markAsResolved___redArg(ptr noundef %i.m, ptr noundef %5) ; 3 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !13 ; 3 uses
  %i.ju = icmp sgt i32 %i.jt, 1
  br i1 %i.ju, label %bb.gj, label %bb.gk, !prof !14

bb.gj:                                            ; preds = %bb.gi
  %i.jv = add nsw i32 %i.jt, -1
  store i32 %i.jv, ptr %i.js, align 4, !tbaa !13
  br label %lean_dec_ref.exit449

bb.gk:                                            ; preds = %bb.gi
  %.not.i448 = icmp eq i32 %i.jt, 0
  br i1 %.not.i448, label %lean_dec_ref.exit449, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.js) #7
  br label %lean_dec_ref.exit449

lean_dec_ref.exit449:                             ; preds = %bb.gj, %bb.gk, %bb.gl
  br i1 %.not.i330, label %bb.gm, label %bb.fb

bb.gm:                                            ; preds = %lean_dec_ref.exit449
  %i.jw = load i32, ptr %i.ix, align 4, !tbaa !13 ; 3 uses
  %i.jx = icmp sgt i32 %i.jw, 1
  br i1 %i.jx, label %bb.gn, label %bb.go, !prof !14

bb.gn:                                            ; preds = %bb.gm
  %i.jy = add nsw i32 %i.jw, -1
  store i32 %i.jy, ptr %i.ix, align 4, !tbaa !13
  br label %bb.fb

bb.go:                                            ; preds = %bb.gm
  %.not.i424 = icmp eq i32 %i.jw, 0
  br i1 %.not.i424, label %bb.fb, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ix) #7
  br label %bb.fb

lean_obj_tag.exit569:                             ; preds = %lean_obj_tag.exit551.thread
  %i.jz = and i64 %i.iq, 8589934590
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %bb.gq, label %lean_obj_tag.exit569.thread

bb.gq:                                            ; preds = %lean_obj_tag.exit569
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !10 ; 7 uses
  %i.kd = ptrtoint ptr %i.kc to i64               ; 2 uses
  %i.ke = and i64 %i.kd, 1
  %.not.i328 = icmp eq i64 %i.ke, 0               ; 2 uses
  br i1 %.not.i328, label %bb.gr, label %lean_inc.exit329

bb.gr:                                            ; preds = %bb.gq
  %.val.i.i570 = load i32, ptr %i.kc, align 4, !tbaa !13 ; 3 uses
  %i.kf = icmp sgt i32 %.val.i.i570, 0
  br i1 %i.kf, label %bb.gs, label %bb.gt, !prof !14

bb.gs:                                            ; preds = %bb.gr
  %i.kg = add nuw i32 %.val.i.i570, 1
  store i32 %i.kg, ptr %i.kc, align 4, !tbaa !13
  br label %lean_inc.exit329

bb.gt:                                            ; preds = %bb.gr
  %.not.i.i571 = icmp eq i32 %.val.i.i570, 0
  br i1 %.not.i.i571, label %lean_inc.exit329, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.kh = atomicrmw sub ptr %i.kc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit329

lean_inc.exit329:                                 ; preds = %bb.gu, %bb.gt, %bb.gs, %bb.gq
  %.val.i573 = load i32, ptr %i.ip, align 8, !tbaa !13 ; 4 uses
  %i.ki = icmp eq i32 %.val.i573, 1
  br i1 %i.ki, label %.preheader.i575, label %bb.gz

.preheader.i575:                                  ; preds = %lean_inc.exit329
  %i.kj = load ptr, ptr %i.kb, align 8, !tbaa !10 ; 4 uses
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = and i64 %i.kk, 1
  %.not.i.i577 = icmp eq i64 %i.kl, 0
  br i1 %.not.i.i577, label %bb.gv, label %lean_dec.exit.i578

bb.gv:                                            ; preds = %.preheader.i575
  %i.km = load i32, ptr %i.kj, align 4, !tbaa !13 ; 3 uses
  %i.kn = icmp sgt i32 %i.km, 1
  br i1 %i.kn, label %bb.gw, label %bb.gx, !prof !14

bb.gw:                                            ; preds = %bb.gv
  %i.ko = add nsw i32 %i.km, -1
  store i32 %i.ko, ptr %i.kj, align 4, !tbaa !13
  br label %lean_dec.exit.i578

bb.gx:                                            ; preds = %bb.gv
  %.not.i7.i582 = icmp eq i32 %i.km, 0
  br i1 %.not.i7.i582, label %lean_dec.exit.i578, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kj) #7
  br label %lean_dec.exit.i578

lean_dec.exit.i578:                               ; preds = %bb.gy, %bb.gx, %bb.gw, %.preheader.i575
  tail call void @lean_free_object(ptr noundef nonnull %i.ip) #7
  br label %lean_dec_ref_known.exit583

bb.gz:                                            ; preds = %lean_inc.exit329
  %i.kp = icmp sgt i32 %.val.i573, 1
  br i1 %i.kp, label %bb.ha, label %bb.hb, !prof !14

bb.ha:                                            ; preds = %bb.gz
  %i.kq = add nsw i32 %.val.i573, -1
  store i32 %i.kq, ptr %i.ip, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit583

bb.hb:                                            ; preds = %bb.gz
  %.not.i8.i574 = icmp eq i32 %.val.i573, 0
  br i1 %.not.i8.i574, label %lean_dec_ref_known.exit583, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ip) #7
  br label %lean_dec_ref_known.exit583

lean_dec_ref_known.exit583:                       ; preds = %lean_dec.exit.i578, %bb.ha, %bb.hb, %bb.hc
  br i1 %.not.i328, label %bb.hd, label %lean_dec.exit366

bb.hd:                                            ; preds = %lean_dec_ref_known.exit583
  %i.kr = load i32, ptr %i.kc, align 4, !tbaa !13 ; 3 uses
  %i.ks = icmp sgt i32 %i.kr, 1
  br i1 %i.ks, label %bb.he, label %bb.hf, !prof !14

bb.he:                                            ; preds = %bb.hd
  %i.kt = add nsw i32 %i.kr, -1
  store i32 %i.kt, ptr %i.kc, align 4, !tbaa !13
  br label %lean_dec.exit366

bb.hf:                                            ; preds = %bb.hd
  %.not.i426 = icmp eq i32 %i.kr, 0
  br i1 %.not.i426, label %lean_dec.exit366, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kc) #7
  br label %lean_dec.exit366

lean_dec.exit366:                                 ; preds = %bb.hg, %bb.hf, %bb.he, %lean_dec_ref_known.exit583
  %i.ku = and i64 %i.kd, 510
  %i.kv = icmp eq i64 %i.ku, 0
  br i1 %i.kv, label %bb.hh, label %lean_dec_ref_known.exit503

bb.hh:                                            ; preds = %lean_dec.exit366
  %i.kw = ptrtoint ptr %.0275 to i64
  %i.kx = and i64 %i.kw, 1
  %.not.i584 = icmp eq i64 %i.kx, 0
  br i1 %.not.i584, label %bb.hi, label %lean_del_object.exit585

bb.hi:                                            ; preds = %bb.hh
  tail call void @lean_free_object(ptr noundef nonnull %.0275) #7
  br label %lean_del_object.exit585

lean_del_object.exit585:                          ; preds = %bb.hh, %bb.hi
  br i1 %.not.i332, label %bb.hj, label %lean_dec.exit348.backedge

lean_dec.exit348.backedge:                        ; preds = %lean_del_object.exit585, %bb.hm, %bb.hl, %bb.hk, %lean_del_object.exit600, %bb.jr, %bb.js, %bb.jt, %lean_alloc_ctor.exit598, %bb.jk
  %.0269.be = phi ptr [ %.0269, %bb.jt ], [ %.0269, %bb.js ], [ %.0269, %bb.jr ], [ %.0269, %lean_del_object.exit600 ], [ %.0275, %bb.jk ], [ %i.ni, %lean_alloc_ctor.exit598 ], [ %.0269, %lean_del_object.exit585 ], [ %.0269, %bb.hk ], [ %.0269, %bb.hl ], [ %.0269, %bb.hm ]
  br label %lean_dec.exit348

bb.hj:                                            ; preds = %lean_del_object.exit585
  %i.ky = load i32, ptr %i.m, align 4, !tbaa !13  ; 3 uses
  %i.kz = icmp sgt i32 %i.ky, 1
  br i1 %i.kz, label %bb.hk, label %bb.hl, !prof !14

bb.hk:                                            ; preds = %bb.hj
  %i.la = add nsw i32 %i.ky, -1
  store i32 %i.la, ptr %i.m, align 4, !tbaa !13
  br label %lean_dec.exit348.backedge

bb.hl:                                            ; preds = %bb.hj
  %.not.i428 = icmp eq i32 %i.ky, 0
  br i1 %.not.i428, label %lean_dec.exit348.backedge, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #7
  br label %lean_dec.exit348.backedge

lean_obj_tag.exit569.thread:                      ; preds = %lean_obj_tag.exit551, %lean_obj_tag.exit569
  %i.lb = ptrtoint ptr %.0275 to i64
  %i.lc = and i64 %i.lb, 1
  %.not.i586 = icmp eq i64 %i.lc, 0
  br i1 %.not.i586, label %bb.hn, label %lean_del_object.exit587

bb.hn:                                            ; preds = %lean_obj_tag.exit569.thread
end_hunk_7
