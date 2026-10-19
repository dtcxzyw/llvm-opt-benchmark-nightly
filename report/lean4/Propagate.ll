Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Propagate?download=true
inline.NumInlined: 3021
inline.NumDeleted: 42
begin_hunk_0_@l_Lean_Meta_Grind_propagateAndUp:bb.a
  %.not.i622 = icmp eq i64 %i.bc, 0               ; 2 uses
  br i1 %.not.i622, label %bb.av, label %bb.au

bb.au:                                            ; preds = %lean_inc_ref.exit621
  %i.bd = lshr i64 %i.bb, 1
  %i.be = trunc i64 %i.bd to i32
  br label %lean_obj_tag.exit

bb.av:                                            ; preds = %lean_inc_ref.exit621
  %i.bf = getelementptr i8, ptr %i.ba, i64 4
  %.val.i = load i32, ptr %i.bf, align 4
  %i.bg = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.au, %bb.av
  %.0.i = phi i32 [ %i.be, %bb.au ], [ %i.bg, %bb.av ]
  %i.bh = icmp eq i32 %.0.i, 0
  br i1 %i.bh, label %bb.aw, label %bb.mm

bb.aw:                                            ; preds = %lean_obj_tag.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !12 ; 19 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = and i64 %i.bk, 1
  %.not.i537 = icmp eq i64 %i.bl, 0               ; 6 uses
  br i1 %.not.i537, label %bb.ax, label %lean_inc.exit538

bb.ax:                                            ; preds = %bb.aw
  %.val.i.i623 = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.bm = icmp sgt i32 %.val.i.i623, 0
  br i1 %i.bm, label %bb.ay, label %bb.az, !prof !15

bb.ay:                                            ; preds = %bb.ax
  %i.bn = add nuw i32 %.val.i.i623, 1
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !14
  br label %lean_inc.exit538

bb.az:                                            ; preds = %bb.ax
  %.not.i.i624 = icmp eq i32 %.val.i.i623, 0
  br i1 %.not.i.i624, label %lean_inc.exit538, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bo = atomicrmw sub ptr %i.bj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit538

lean_inc.exit538:                                 ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw
  %.val.i626 = load i32, ptr %i.ba, align 8, !tbaa !14 ; 4 uses
  %i.bp = icmp eq i32 %.val.i626, 1
  br i1 %i.bp, label %.preheader.i, label %bb.bf

.preheader.i:                                     ; preds = %lean_inc.exit538
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !12 ; 4 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 1
  %.not.i7.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i, label %bb.bb, label %lean_dec.exit.i

bb.bb:                                            ; preds = %.preheader.i
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !14 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.bc, label %bb.bd, !prof !15

bb.bc:                                            ; preds = %bb.bb
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.bd:                                            ; preds = %bb.bb
  %.not.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.be, %bb.bd, %bb.bc, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ba) #4
  br label %lean_dec_ref_known.exit

bb.bf:                                            ; preds = %lean_inc.exit538
  %i.bw = icmp sgt i32 %.val.i626, 1
  br i1 %i.bw, label %bb.bg, label %bb.bh, !prof !15

bb.bg:                                            ; preds = %bb.bf
  %i.bx = add nsw i32 %.val.i626, -1
  store i32 %i.bx, ptr %i.ba, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.bh:                                            ; preds = %bb.bf
  %.not.i.i627 = icmp eq i32 %.val.i626, 0
  br i1 %.not.i.i627, label %lean_dec_ref_known.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ba) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.bg, %bb.bh, %bb.bi
  %i.by = and i64 %i.bk, 510
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.bj, label %bb.kq

bb.bj:                                            ; preds = %lean_dec_ref_known.exit
  %.val.i.i629 = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.ca = icmp sgt i32 %.val.i.i629, 0
  br i1 %i.ca, label %bb.bk, label %bb.bl, !prof !15

bb.bk:                                            ; preds = %bb.bj
  %i.cb = add nuw i32 %.val.i.i629, 1
  store i32 %i.cb, ptr %i.n, align 4, !tbaa !14
  br label %lean_inc_ref.exit631

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i630 = icmp eq i32 %.val.i.i629, 0
  br i1 %.not.i.i630, label %lean_inc_ref.exit631, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cc = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit631

lean_inc_ref.exit631:                             ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.cd = tail call ptr @l_Lean_Meta_Grind_isEqTrue___redArg(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 11 uses
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = and i64 %i.ce, 1
  %.not.i632 = icmp eq i64 %i.cf, 0               ; 2 uses
  br i1 %.not.i632, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %lean_inc_ref.exit631
  %i.cg = lshr i64 %i.ce, 1
  %i.ch = trunc i64 %i.cg to i32
  br label %lean_obj_tag.exit635

bb.bo:                                            ; preds = %lean_inc_ref.exit631
  %i.ci = getelementptr i8, ptr %i.cd, i64 4
  %.val.i634 = load i32, ptr %i.ci, align 4
  %i.cj = lshr i32 %.val.i634, 24
  br label %lean_obj_tag.exit635

lean_obj_tag.exit635:                             ; preds = %bb.bn, %bb.bo
  %.0.i633 = phi i32 [ %i.ch, %bb.bn ], [ %i.cj, %bb.bo ]
  %i.ck = icmp eq i32 %.0.i633, 0
  br i1 %i.ck, label %bb.bp, label %bb.js

bb.bp:                                            ; preds = %lean_obj_tag.exit635
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !12 ; 7 uses
  %i.cn = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.co = and i64 %i.cn, 1
  %.not.i535 = icmp eq i64 %i.co, 0
  br i1 %.not.i535, label %bb.bq, label %lean_inc.exit536

bb.bq:                                            ; preds = %bb.bp
  %.val.i.i636 = load i32, ptr %i.cm, align 4, !tbaa !14 ; 3 uses
  %i.cp = icmp sgt i32 %.val.i.i636, 0
  br i1 %i.cp, label %bb.br, label %bb.bs, !prof !15

bb.br:                                            ; preds = %bb.bq
  %i.cq = add nuw i32 %.val.i.i636, 1
  store i32 %i.cq, ptr %i.cm, align 4, !tbaa !14
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  %.not.i.i637 = icmp eq i32 %.val.i.i636, 0
  br i1 %.not.i.i637, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.cr = atomicrmw sub ptr %i.cm, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.bu

lean_inc.exit536:                                 ; preds = %bb.bp
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cd)
  br label %lean_dec.exit603

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cd)
  %i.cs = load i32, ptr %i.cm, align 4, !tbaa !14 ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %bb.bv, label %bb.bw, !prof !15

bb.bv:                                            ; preds = %bb.bu
  %i.cu = add nsw i32 %i.cs, -1
  store i32 %i.cu, ptr %i.cm, align 4, !tbaa !14
  br label %lean_dec.exit603

bb.bw:                                            ; preds = %bb.bu
  %.not.i.i601 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i601, label %lean_dec.exit603, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #4
  br label %lean_dec.exit603

lean_dec.exit603:                                 ; preds = %bb.bv, %bb.bw, %bb.bx, %lean_inc.exit536
  %i.cv = and i64 %i.cn, 510
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.by, label %bb.ia

bb.by:                                            ; preds = %lean_dec.exit603
  br i1 %.not.i537, label %bb.bz, label %lean_dec.exit599

bb.bz:                                            ; preds = %bb.by
  %i.cx = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 1
  br i1 %i.cy, label %bb.ca, label %bb.cb, !prof !15

bb.ca:                                            ; preds = %bb.bz
  %i.cz = add nsw i32 %i.cx, -1
  store i32 %i.cz, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit599

bb.cb:                                            ; preds = %bb.bz
  %.not.i.i597 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i597, label %lean_dec.exit599, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit599

lean_dec.exit599:                                 ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.by
  %.val.i.i639 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.da = icmp sgt i32 %.val.i.i639, 0
  br i1 %i.da, label %bb.cd, label %bb.ce, !prof !15

bb.cd:                                            ; preds = %lean_dec.exit599
  %i.db = add nuw i32 %.val.i.i639, 1
  store i32 %i.db, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit641

bb.ce:                                            ; preds = %lean_dec.exit599
  %.not.i.i640 = icmp eq i32 %.val.i.i639, 0
  br i1 %.not.i.i640, label %lean_inc_ref.exit641, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.dc = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit641

lean_inc_ref.exit641:                             ; preds = %bb.cd, %bb.ce, %bb.cf
  %i.dd = tail call ptr @l_Lean_Meta_Grind_isEqFalse___redArg(ptr noundef nonnull %i.ae, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 11 uses
  %i.de = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.df = and i64 %i.de, 1
  %.not.i642 = icmp eq i64 %i.df, 0               ; 2 uses
  br i1 %.not.i642, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %lean_inc_ref.exit641
  %i.dg = lshr i64 %i.de, 1
  %i.dh = trunc i64 %i.dg to i32
  br label %lean_obj_tag.exit645

bb.ch:                                            ; preds = %lean_inc_ref.exit641
  %i.di = getelementptr i8, ptr %i.dd, i64 4
  %.val.i644 = load i32, ptr %i.di, align 4
  %i.dj = lshr i32 %.val.i644, 24
  br label %lean_obj_tag.exit645

lean_obj_tag.exit645:                             ; preds = %bb.cg, %bb.ch
  %.0.i643 = phi i32 [ %i.dh, %bb.cg ], [ %i.dj, %bb.ch ]
  %i.dk = icmp eq i32 %.0.i643, 0
  br i1 %i.dk, label %bb.ci, label %bb.hg

bb.ci:                                            ; preds = %lean_obj_tag.exit645
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !12 ; 7 uses
  %i.dn = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.do = and i64 %i.dn, 1
  %.not.i533 = icmp eq i64 %i.do, 0
  br i1 %.not.i533, label %bb.cj, label %lean_inc.exit534

bb.cj:                                            ; preds = %bb.ci
  %.val.i.i646 = load i32, ptr %i.dm, align 4, !tbaa !14 ; 3 uses
  %i.dp = icmp sgt i32 %.val.i.i646, 0
  br i1 %i.dp, label %bb.ck, label %bb.cl, !prof !15

bb.ck:                                            ; preds = %bb.cj
  %i.dq = add nuw i32 %.val.i.i646, 1
  store i32 %i.dq, ptr %i.dm, align 4, !tbaa !14
  br label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  %.not.i.i647 = icmp eq i32 %.val.i.i646, 0
  br i1 %.not.i.i647, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.dr = atomicrmw sub ptr %i.dm, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.cn

lean_inc.exit534:                                 ; preds = %bb.ci
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dd)
  br label %lean_dec.exit595

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dd)
  %i.ds = load i32, ptr %i.dm, align 4, !tbaa !14 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.co, label %bb.cp, !prof !15

bb.co:                                            ; preds = %bb.cn
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %i.dm, align 4, !tbaa !14
  br label %lean_dec.exit595

bb.cp:                                            ; preds = %bb.cn
  %.not.i.i593 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i593, label %lean_dec.exit595, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #4
  br label %lean_dec.exit595

lean_dec.exit595:                                 ; preds = %bb.co, %bb.cp, %bb.cq, %lean_inc.exit534
  %i.dv = and i64 %i.dn, 510
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.cr, label %bb.fz

bb.cr:                                            ; preds = %lean_dec.exit595
  %.val.i.i649 = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.dx = icmp sgt i32 %.val.i.i649, 0
  br i1 %i.dx, label %bb.cs, label %bb.ct, !prof !15

bb.cs:                                            ; preds = %bb.cr
  %i.dy = add nuw i32 %.val.i.i649, 1
  store i32 %i.dy, ptr %i.n, align 4, !tbaa !14
  br label %lean_inc_ref.exit651

bb.ct:                                            ; preds = %bb.cr
  %.not.i.i650 = icmp eq i32 %.val.i.i649, 0
  br i1 %.not.i.i650, label %lean_inc_ref.exit651, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.dz = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit651

lean_inc_ref.exit651:                             ; preds = %bb.cs, %bb.ct, %bb.cu
  %i.ea = tail call ptr @l_Lean_Meta_Grind_isEqFalse___redArg(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 14 uses
  %i.eb = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ec = and i64 %i.eb, 1
  %.not.i652 = icmp eq i64 %i.ec, 0               ; 3 uses
  br i1 %.not.i652, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %lean_inc_ref.exit651
  %i.ed = lshr i64 %i.eb, 1
  %i.ee = trunc i64 %i.ed to i32
  br label %lean_obj_tag.exit655

bb.cw:                                            ; preds = %lean_inc_ref.exit651
  %i.ef = getelementptr i8, ptr %i.ea, i64 4
  %.val.i654 = load i32, ptr %i.ef, align 4
  %i.eg = lshr i32 %.val.i654, 24
  br label %lean_obj_tag.exit655

lean_obj_tag.exit655:                             ; preds = %bb.cv, %bb.cw
  %.0.i653 = phi i32 [ %i.ee, %bb.cv ], [ %i.eg, %bb.cw ]
  %i.eh = icmp eq i32 %.0.i653, 0
  br i1 %i.eh, label %bb.cx, label %bb.ff

bb.cx:                                            ; preds = %lean_obj_tag.exit655
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !12 ; 7 uses
  %.val611 = load i32, ptr %i.ea, align 8, !tbaa !14
  %i.ek = icmp eq i32 %.val611, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.ej to i64               ; 2 uses
  %.pre756 = and i64 %.pre, 1                     ; 2 uses
  br i1 %i.ek, label %lean_dec.exit591, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.not.i531 = icmp eq i64 %.pre756, 0
  br i1 %.not.i531, label %bb.cz, label %lean_inc.exit532

bb.cz:                                            ; preds = %bb.cy
  %.val.i.i656 = load i32, ptr %i.ej, align 4, !tbaa !14 ; 3 uses
  %i.el = icmp sgt i32 %.val.i.i656, 0
  br i1 %i.el, label %bb.da, label %bb.db, !prof !15

bb.da:                                            ; preds = %bb.cz
  %i.em = add nuw i32 %.val.i.i656, 1
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !14
  br label %lean_inc.exit532

bb.db:                                            ; preds = %bb.cz
  %.not.i.i657 = icmp eq i32 %.val.i.i656, 0
  br i1 %.not.i.i657, label %lean_inc.exit532, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.en = atomicrmw sub ptr %i.ej, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit532

lean_inc.exit532:                                 ; preds = %bb.dc, %bb.db, %bb.da, %bb.cy
  br i1 %.not.i652, label %bb.dd, label %lean_dec.exit591

bb.dd:                                            ; preds = %lean_inc.exit532
  %i.eo = load i32, ptr %i.ea, align 8, !tbaa !14 ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %bb.de, label %bb.df, !prof !15

bb.de:                                            ; preds = %bb.dd
  %i.eq = add nsw i32 %i.eo, -1
  store i32 %i.eq, ptr %i.ea, align 8, !tbaa !14
  br label %lean_dec.exit591

bb.df:                                            ; preds = %bb.dd
  %.not.i.i589 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i589, label %lean_dec.exit591, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ea) #4
  br label %lean_dec.exit591

lean_dec.exit591:                                 ; preds = %bb.cx, %lean_inc.exit532, %bb.dg, %bb.df, %bb.de
  %.0406 = phi ptr [ inttoptr (i64 1 to ptr), %bb.de ], [ inttoptr (i64 1 to ptr), %lean_inc.exit532 ], [ inttoptr (i64 1 to ptr), %bb.dg ], [ inttoptr (i64 1 to ptr), %bb.df ], [ %i.ea, %bb.cx ] ; 4 uses
end_hunk_0
begin_hunk_1_@l_Lean_Meta_Grind_propagateAndUp:bb.a

lean_dec_ref.exit465:                             ; preds = %bb.hh, %bb.hi, %bb.hj
  %i.jx = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.jy = icmp sgt i32 %i.jx, 1
  br i1 %i.jy, label %bb.hk, label %bb.hl, !prof !15

bb.hk:                                            ; preds = %lean_dec_ref.exit465
  %i.jz = add nsw i32 %i.jx, -1
  store i32 %i.jz, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit463

bb.hl:                                            ; preds = %lean_dec_ref.exit465
  %.not.i462 = icmp eq i32 %i.jx, 0
  br i1 %.not.i462, label %lean_dec_ref.exit463, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit463

lean_dec_ref.exit463:                             ; preds = %bb.hk, %bb.hl, %bb.hm
  %i.ka = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.kb = icmp sgt i32 %i.ka, 1
  br i1 %i.kb, label %bb.hn, label %bb.ho, !prof !15

bb.hn:                                            ; preds = %lean_dec_ref.exit463
  %i.kc = add nsw i32 %i.ka, -1
  store i32 %i.kc, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit461

bb.ho:                                            ; preds = %lean_dec_ref.exit463
  %.not.i460 = icmp eq i32 %i.ka, 0
  br i1 %.not.i460, label %lean_dec_ref.exit461, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit461

lean_dec_ref.exit461:                             ; preds = %bb.hn, %bb.ho, %bb.hp
  %i.kd = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !12 ; 5 uses
  %.val607 = load i32, ptr %i.dd, align 8, !tbaa !14
  %i.kf = icmp eq i32 %.val607, 1
  br i1 %i.kf, label %lean_dec_ref.exit499.thread, label %bb.hq

bb.hq:                                            ; preds = %lean_dec_ref.exit461
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = and i64 %i.kg, 1
  %.not.i519 = icmp eq i64 %i.kh, 0
  br i1 %.not.i519, label %bb.hr, label %lean_inc.exit520

bb.hr:                                            ; preds = %bb.hq
  %.val.i.i692 = load i32, ptr %i.ke, align 4, !tbaa !14 ; 3 uses
  %i.ki = icmp sgt i32 %.val.i.i692, 0
  br i1 %i.ki, label %bb.hs, label %bb.ht, !prof !15

bb.hs:                                            ; preds = %bb.hr
  %i.kj = add nuw i32 %.val.i.i692, 1
  store i32 %i.kj, ptr %i.ke, align 4, !tbaa !14
  br label %lean_inc.exit520

bb.ht:                                            ; preds = %bb.hr
  %.not.i.i693 = icmp eq i32 %.val.i.i692, 0
  br i1 %.not.i.i693, label %lean_inc.exit520, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.kk = atomicrmw sub ptr %i.ke, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit520

lean_inc.exit520:                                 ; preds = %bb.hu, %bb.ht, %bb.hs, %bb.hq
  br i1 %.not.i642, label %bb.hv, label %bb.hz

bb.hv:                                            ; preds = %lean_inc.exit520
  %i.kl = load i32, ptr %i.dd, align 8, !tbaa !14 ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 1
  br i1 %i.km, label %bb.hw, label %bb.hx, !prof !15

bb.hw:                                            ; preds = %bb.hv
  %i.kn = add nsw i32 %i.kl, -1
  store i32 %i.kn, ptr %i.dd, align 8, !tbaa !14
  br label %bb.hz

bb.hx:                                            ; preds = %bb.hv
  %.not.i.i569 = icmp eq i32 %i.kl, 0
  br i1 %.not.i.i569, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #4
  br label %bb.hz

bb.hz:                                            ; preds = %lean_inc.exit520, %bb.hy, %bb.hx, %bb.hw
  %i.ko = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.ke, ptr %i.kp, align 8, !tbaa !12
  br label %lean_dec_ref.exit499.thread

bb.ia:                                            ; preds = %lean_dec.exit603
  %.val.i.i695 = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.kq = icmp sgt i32 %.val.i.i695, 0
  br i1 %i.kq, label %bb.ib, label %bb.ic, !prof !15

bb.ib:                                            ; preds = %bb.ia
  %i.kr = add nuw i32 %.val.i.i695, 1
  store i32 %i.kr, ptr %i.n, align 4, !tbaa !14
  br label %lean_inc_ref.exit697

bb.ic:                                            ; preds = %bb.ia
  %.not.i.i696 = icmp eq i32 %.val.i.i695, 0
  br i1 %.not.i.i696, label %lean_inc_ref.exit697, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.ks = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit697

lean_inc_ref.exit697:                             ; preds = %bb.ib, %bb.ic, %bb.id
  %i.kt = tail call ptr @l_Lean_Meta_Grind_mkEqTrueProof(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 10 uses
  %i.ku = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.kv = and i64 %i.ku, 1
  %.not.i698 = icmp eq i64 %i.kv, 0               ; 2 uses
  br i1 %.not.i698, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %lean_inc_ref.exit697
  %i.kw = lshr i64 %i.ku, 1
  %i.kx = trunc i64 %i.kw to i32
  br label %lean_obj_tag.exit701

bb.if:                                            ; preds = %lean_inc_ref.exit697
  %i.ky = getelementptr i8, ptr %i.kt, i64 4
  %.val.i700 = load i32, ptr %i.ky, align 4
  %i.kz = lshr i32 %.val.i700, 24
  br label %lean_obj_tag.exit701

lean_obj_tag.exit701:                             ; preds = %bb.ie, %bb.if
  %.0.i699 = phi i32 [ %i.kx, %bb.ie ], [ %i.kz, %bb.if ]
  %i.la = icmp eq i32 %.0.i699, 0
  br i1 %i.la, label %bb.ig, label %bb.iu

bb.ig:                                            ; preds = %lean_obj_tag.exit701
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !12 ; 5 uses
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = and i64 %i.ld, 1
  %.not.i517 = icmp eq i64 %i.le, 0
  br i1 %.not.i517, label %bb.ih, label %lean_inc.exit518

bb.ih:                                            ; preds = %bb.ig
  %.val.i.i702 = load i32, ptr %i.lc, align 4, !tbaa !14 ; 3 uses
  %i.lf = icmp sgt i32 %.val.i.i702, 0
  br i1 %i.lf, label %bb.ii, label %bb.ij, !prof !15

bb.ii:                                            ; preds = %bb.ih
  %i.lg = add nuw i32 %.val.i.i702, 1
  store i32 %i.lg, ptr %i.lc, align 4, !tbaa !14
  br label %lean_inc.exit518

bb.ij:                                            ; preds = %bb.ih
  %.not.i.i703 = icmp eq i32 %.val.i.i702, 0
  br i1 %.not.i.i703, label %lean_inc.exit518, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.lh = atomicrmw sub ptr %i.lc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit518

lean_inc.exit518:                                 ; preds = %bb.ik, %bb.ij, %bb.ii, %bb.ig
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.kt)
  %i.li = load atomic i32, ptr @l_Lean_Meta_Grind_propagateAndUp___closed__12_once seq_cst, align 4, !tbaa !17
  %i.lj = icmp eq i32 %i.li, 1
  br i1 %i.lj, label %bb.il, label %bb.im, !prof !15

bb.il:                                            ; preds = %lean_inc.exit518
  %i.lk = load ptr, ptr @l_Lean_Meta_Grind_propagateAndUp___closed__12, align 8, !tbaa !12
  br label %lean_obj_once.exit706

bb.im:                                            ; preds = %lean_inc.exit518
  %i.ll = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_Grind_propagateAndUp___closed__12, ptr noundef nonnull @l_Lean_Meta_Grind_propagateAndUp___closed__12_once, ptr noundef nonnull @_init_l_Lean_Meta_Grind_propagateAndUp___closed__12) #4
  br label %lean_obj_once.exit706

lean_obj_once.exit706:                            ; preds = %bb.il, %bb.im
  %.0.i705 = phi ptr [ %i.lk, %bb.il ], [ %i.ll, %bb.im ]
  %.val.i.i707 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.lm = icmp sgt i32 %.val.i.i707, 0
  br i1 %i.lm, label %bb.in, label %bb.io, !prof !15

bb.in:                                            ; preds = %lean_obj_once.exit706
  %i.ln = add nuw i32 %.val.i.i707, 1
  store i32 %i.ln, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit709

bb.io:                                            ; preds = %lean_obj_once.exit706
  %.not.i.i708 = icmp eq i32 %.val.i.i707, 0
  br i1 %.not.i.i708, label %lean_inc_ref.exit709, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.lo = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit709

lean_inc_ref.exit709:                             ; preds = %bb.in, %bb.io, %bb.ip
  %i.lp = tail call ptr @l_Lean_mkApp3(ptr noundef %.0.i705, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.n, ptr noundef %i.lc) #4
  br i1 %.not.i537, label %bb.iq, label %lean_dec.exit567

bb.iq:                                            ; preds = %lean_inc_ref.exit709
  %i.lq = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.lr = icmp sgt i32 %i.lq, 1
  br i1 %i.lr, label %bb.ir, label %bb.is, !prof !15

bb.ir:                                            ; preds = %bb.iq
  %i.ls = add nsw i32 %i.lq, -1
  store i32 %i.ls, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit567

bb.is:                                            ; preds = %bb.iq
  %.not.i.i565 = icmp eq i32 %i.lq, 0
  br i1 %.not.i.i565, label %lean_dec.exit567, label %bb.it

bb.it:                                            ; preds = %bb.is
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit567

lean_dec.exit567:                                 ; preds = %bb.ir, %bb.is, %bb.it, %lean_inc_ref.exit709
  %i.lt = tail call ptr @l_Lean_Meta_Grind_pushEqCore___redArg(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef %i.lp, i8 noundef zeroext 0, ptr noundef %1, ptr noundef %3, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4
  br label %lean_dec_ref.exit499.thread

bb.iu:                                            ; preds = %lean_obj_tag.exit701
  br i1 %.not.i537, label %bb.iv, label %lean_dec.exit563

bb.iv:                                            ; preds = %bb.iu
  %i.lu = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.lv = icmp sgt i32 %i.lu, 1
  br i1 %i.lv, label %bb.iw, label %bb.ix, !prof !15

bb.iw:                                            ; preds = %bb.iv
  %i.lw = add nsw i32 %i.lu, -1
  store i32 %i.lw, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit563

bb.ix:                                            ; preds = %bb.iv
  %.not.i.i561 = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i561, label %lean_dec.exit563, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit563

lean_dec.exit563:                                 ; preds = %bb.iw, %bb.ix, %bb.iy, %bb.iu
  %i.lx = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.ly = icmp sgt i32 %i.lx, 1
  br i1 %i.ly, label %bb.iz, label %bb.ja, !prof !15

bb.iz:                                            ; preds = %lean_dec.exit563
  %i.lz = add nsw i32 %i.lx, -1
  store i32 %i.lz, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit459

bb.ja:                                            ; preds = %lean_dec.exit563
  %.not.i458 = icmp eq i32 %i.lx, 0
  br i1 %.not.i458, label %lean_dec_ref.exit459, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit459

lean_dec_ref.exit459:                             ; preds = %bb.iz, %bb.ja, %bb.jb
  %i.ma = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.mb = icmp sgt i32 %i.ma, 1
  br i1 %i.mb, label %bb.jc, label %bb.jd, !prof !15

bb.jc:                                            ; preds = %lean_dec_ref.exit459
  %i.mc = add nsw i32 %i.ma, -1
  store i32 %i.mc, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit457

bb.jd:                                            ; preds = %lean_dec_ref.exit459
  %.not.i456 = icmp eq i32 %i.ma, 0
  br i1 %.not.i456, label %lean_dec_ref.exit457, label %bb.je

bb.je:                                            ; preds = %bb.jd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit457

lean_dec_ref.exit457:                             ; preds = %bb.jc, %bb.jd, %bb.je
  %i.md = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.me = icmp sgt i32 %i.md, 1
  br i1 %i.me, label %bb.jf, label %bb.jg, !prof !15

bb.jf:                                            ; preds = %lean_dec_ref.exit457
  %i.mf = add nsw i32 %i.md, -1
  store i32 %i.mf, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit455

bb.jg:                                            ; preds = %lean_dec_ref.exit457
  %.not.i454 = icmp eq i32 %i.md, 0
  br i1 %.not.i454, label %lean_dec_ref.exit455, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit455

lean_dec_ref.exit455:                             ; preds = %bb.jf, %bb.jg, %bb.jh
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !12 ; 5 uses
  %.val606 = load i32, ptr %i.kt, align 8, !tbaa !14
  %i.mi = icmp eq i32 %.val606, 1
  br i1 %i.mi, label %lean_dec_ref.exit499.thread, label %bb.ji

bb.ji:                                            ; preds = %lean_dec_ref.exit455
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = and i64 %i.mj, 1
  %.not.i515 = icmp eq i64 %i.mk, 0
  br i1 %.not.i515, label %bb.jj, label %lean_inc.exit516

bb.jj:                                            ; preds = %bb.ji
  %.val.i.i710 = load i32, ptr %i.mh, align 4, !tbaa !14 ; 3 uses
  %i.ml = icmp sgt i32 %.val.i.i710, 0
  br i1 %i.ml, label %bb.jk, label %bb.jl, !prof !15

bb.jk:                                            ; preds = %bb.jj
  %i.mm = add nuw i32 %.val.i.i710, 1
  store i32 %i.mm, ptr %i.mh, align 4, !tbaa !14
  br label %lean_inc.exit516

bb.jl:                                            ; preds = %bb.jj
  %.not.i.i711 = icmp eq i32 %.val.i.i710, 0
  br i1 %.not.i.i711, label %lean_inc.exit516, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.mn = atomicrmw sub ptr %i.mh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit516

lean_inc.exit516:                                 ; preds = %bb.jm, %bb.jl, %bb.jk, %bb.ji
  br i1 %.not.i698, label %bb.jn, label %bb.jr

bb.jn:                                            ; preds = %lean_inc.exit516
  %i.mo = load i32, ptr %i.kt, align 8, !tbaa !14 ; 3 uses
  %i.mp = icmp sgt i32 %i.mo, 1
  br i1 %i.mp, label %bb.jo, label %bb.jp, !prof !15

bb.jo:                                            ; preds = %bb.jn
  %i.mq = add nsw i32 %i.mo, -1
  store i32 %i.mq, ptr %i.kt, align 8, !tbaa !14
  br label %bb.jr

bb.jp:                                            ; preds = %bb.jn
  %.not.i.i557 = icmp eq i32 %i.mo, 0
  br i1 %.not.i.i557, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kt) #4
  br label %bb.jr

bb.jr:                                            ; preds = %lean_inc.exit516, %bb.jq, %bb.jp, %bb.jo
  %i.mr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store ptr %i.mh, ptr %i.ms, align 8, !tbaa !12
  br label %lean_dec_ref.exit499.thread

bb.js:                                            ; preds = %lean_obj_tag.exit635
  br i1 %.not.i537, label %bb.jt, label %lean_dec.exit555

bb.jt:                                            ; preds = %bb.js
  %i.mt = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.mu = icmp sgt i32 %i.mt, 1
  br i1 %i.mu, label %bb.ju, label %bb.jv, !prof !15

bb.ju:                                            ; preds = %bb.jt
  %i.mv = add nsw i32 %i.mt, -1
  store i32 %i.mv, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit555

bb.jv:                                            ; preds = %bb.jt
  %.not.i.i553 = icmp eq i32 %i.mt, 0
  br i1 %.not.i.i553, label %lean_dec.exit555, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit555

lean_dec.exit555:                                 ; preds = %bb.ju, %bb.jv, %bb.jw, %bb.js
  %i.mw = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.mx = icmp sgt i32 %i.mw, 1
  br i1 %i.mx, label %bb.jx, label %bb.jy, !prof !15

bb.jx:                                            ; preds = %lean_dec.exit555
  %i.my = add nsw i32 %i.mw, -1
  store i32 %i.my, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit453

bb.jy:                                            ; preds = %lean_dec.exit555
  %.not.i452 = icmp eq i32 %i.mw, 0
  br i1 %.not.i452, label %lean_dec_ref.exit453, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit453

lean_dec_ref.exit453:                             ; preds = %bb.jx, %bb.jy, %bb.jz
  %i.mz = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.na = icmp sgt i32 %i.mz, 1
  br i1 %i.na, label %bb.ka, label %bb.kb, !prof !15

bb.ka:                                            ; preds = %lean_dec_ref.exit453
  %i.nb = add nsw i32 %i.mz, -1
  store i32 %i.nb, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit451

bb.kb:                                            ; preds = %lean_dec_ref.exit453
  %.not.i450 = icmp eq i32 %i.mz, 0
  br i1 %.not.i450, label %lean_dec_ref.exit451, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit451

lean_dec_ref.exit451:                             ; preds = %bb.ka, %bb.kb, %bb.kc
  %i.nc = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.nd = icmp sgt i32 %i.nc, 1
  br i1 %i.nd, label %bb.kd, label %bb.ke, !prof !15

bb.kd:                                            ; preds = %lean_dec_ref.exit451
  %i.ne = add nsw i32 %i.nc, -1
  store i32 %i.ne, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit449

bb.ke:                                            ; preds = %lean_dec_ref.exit451
  %.not.i448 = icmp eq i32 %i.nc, 0
  br i1 %.not.i448, label %lean_dec_ref.exit449, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit449

lean_dec_ref.exit449:                             ; preds = %bb.kd, %bb.ke, %bb.kf
  %i.nf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !12 ; 5 uses
  %.val605 = load i32, ptr %i.cd, align 8, !tbaa !14
  %i.nh = icmp eq i32 %.val605, 1
  br i1 %i.nh, label %lean_dec_ref.exit499.thread, label %bb.kg

bb.kg:                                            ; preds = %lean_dec_ref.exit449
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = and i64 %i.ni, 1
  %.not.i513 = icmp eq i64 %i.nj, 0
  br i1 %.not.i513, label %bb.kh, label %lean_inc.exit514

bb.kh:                                            ; preds = %bb.kg
  %.val.i.i713 = load i32, ptr %i.ng, align 4, !tbaa !14 ; 3 uses
  %i.nk = icmp sgt i32 %.val.i.i713, 0
  br i1 %i.nk, label %bb.ki, label %bb.kj, !prof !15

bb.ki:                                            ; preds = %bb.kh
  %i.nl = add nuw i32 %.val.i.i713, 1
  store i32 %i.nl, ptr %i.ng, align 4, !tbaa !14
  br label %lean_inc.exit514

bb.kj:                                            ; preds = %bb.kh
  %.not.i.i714 = icmp eq i32 %.val.i.i713, 0
  br i1 %.not.i.i714, label %lean_inc.exit514, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.nm = atomicrmw sub ptr %i.ng, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit514

lean_inc.exit514:                                 ; preds = %bb.kk, %bb.kj, %bb.ki, %bb.kg
  br i1 %.not.i632, label %bb.kl, label %bb.kp

bb.kl:                                            ; preds = %lean_inc.exit514
  %i.nn = load i32, ptr %i.cd, align 8, !tbaa !14 ; 3 uses
  %i.no = icmp sgt i32 %i.nn, 1
  br i1 %i.no, label %bb.km, label %bb.kn, !prof !15

bb.km:                                            ; preds = %bb.kl
  %i.np = add nsw i32 %i.nn, -1
  store i32 %i.np, ptr %i.cd, align 8, !tbaa !14
  br label %bb.kp

bb.kn:                                            ; preds = %bb.kl
  %.not.i.i549 = icmp eq i32 %i.nn, 0
  br i1 %.not.i.i549, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #4
  br label %bb.kp

bb.kp:                                            ; preds = %lean_inc.exit514, %bb.ko, %bb.kn, %bb.km
  %i.nq = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store ptr %i.ng, ptr %i.nr, align 8, !tbaa !12
  br label %lean_dec_ref.exit499.thread

bb.kq:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i537, label %bb.kr, label %lean_dec.exit547

bb.kr:                                            ; preds = %bb.kq
  %i.ns = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.nt = icmp sgt i32 %i.ns, 1
  br i1 %i.nt, label %bb.ks, label %bb.kt, !prof !15

bb.ks:                                            ; preds = %bb.kr
  %i.nu = add nsw i32 %i.ns, -1
  store i32 %i.nu, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit547

bb.kt:                                            ; preds = %bb.kr
  %.not.i.i545 = icmp eq i32 %i.ns, 0
  br i1 %.not.i.i545, label %lean_dec.exit547, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit547

lean_dec.exit547:                                 ; preds = %bb.ks, %bb.kt, %bb.ku, %bb.kq
  %.val.i.i716 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.nv = icmp sgt i32 %.val.i.i716, 0
  br i1 %i.nv, label %bb.kv, label %bb.kw, !prof !15

bb.kv:                                            ; preds = %lean_dec.exit547
  %i.nw = add nuw i32 %.val.i.i716, 1
  store i32 %i.nw, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit718

bb.kw:                                            ; preds = %lean_dec.exit547
  %.not.i.i717 = icmp eq i32 %.val.i.i716, 0
  br i1 %.not.i.i717, label %lean_inc_ref.exit718, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.nx = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit718

lean_inc_ref.exit718:                             ; preds = %bb.kv, %bb.kw, %bb.kx
  %i.ny = tail call ptr @l_Lean_Meta_Grind_mkEqTrueProof(ptr noundef nonnull %i.ae, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 13 uses
  %i.nz = ptrtoint ptr %i.ny to i64               ; 2 uses
  %i.oa = and i64 %i.nz, 1
  %.not.i719 = icmp eq i64 %i.oa, 0               ; 2 uses
  br i1 %.not.i719, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %lean_inc_ref.exit718
  %i.ob = lshr i64 %i.nz, 1
  %i.oc = trunc i64 %i.ob to i32
  br label %lean_obj_tag.exit722

bb.kz:                                            ; preds = %lean_inc_ref.exit718
  %i.od = getelementptr i8, ptr %i.ny, i64 4
  %.val.i721 = load i32, ptr %i.od, align 4
  %i.oe = lshr i32 %.val.i721, 24
  br label %lean_obj_tag.exit722

lean_obj_tag.exit722:                             ; preds = %bb.ky, %bb.kz
  %.0.i720 = phi i32 [ %i.oc, %bb.ky ], [ %i.oe, %bb.kz ]
  %i.of = icmp eq i32 %.0.i720, 0
  br i1 %i.of, label %bb.la, label %bb.ls

bb.la:                                            ; preds = %lean_obj_tag.exit722
  %i.og = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !12 ; 5 uses
  %i.oi = ptrtoint ptr %i.oh to i64
  %i.oj = and i64 %i.oi, 1
  %.not.i511 = icmp eq i64 %i.oj, 0
  br i1 %.not.i511, label %bb.lb, label %lean_inc.exit512

bb.lb:                                            ; preds = %bb.la
  %.val.i.i723 = load i32, ptr %i.oh, align 4, !tbaa !14 ; 3 uses
  %i.ok = icmp sgt i32 %.val.i.i723, 0
  br i1 %i.ok, label %bb.lc, label %bb.ld, !prof !15

bb.lc:                                            ; preds = %bb.lb
  %i.ol = add nuw i32 %.val.i.i723, 1
  store i32 %i.ol, ptr %i.oh, align 4, !tbaa !14
end_hunk_1
begin_hunk_2_@l_Lean_Meta_Grind_propagateOrUp:bb.a
  %.not.i622 = icmp eq i64 %i.bc, 0               ; 2 uses
  br i1 %.not.i622, label %bb.av, label %bb.au

bb.au:                                            ; preds = %lean_inc_ref.exit621
  %i.bd = lshr i64 %i.bb, 1
  %i.be = trunc i64 %i.bd to i32
  br label %lean_obj_tag.exit

bb.av:                                            ; preds = %lean_inc_ref.exit621
  %i.bf = getelementptr i8, ptr %i.ba, i64 4
  %.val.i = load i32, ptr %i.bf, align 4
  %i.bg = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.au, %bb.av
  %.0.i = phi i32 [ %i.be, %bb.au ], [ %i.bg, %bb.av ]
  %i.bh = icmp eq i32 %.0.i, 0
  br i1 %i.bh, label %bb.aw, label %bb.mm

bb.aw:                                            ; preds = %lean_obj_tag.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !12 ; 19 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = and i64 %i.bk, 1
  %.not.i537 = icmp eq i64 %i.bl, 0               ; 6 uses
  br i1 %.not.i537, label %bb.ax, label %lean_inc.exit538

bb.ax:                                            ; preds = %bb.aw
  %.val.i.i623 = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.bm = icmp sgt i32 %.val.i.i623, 0
  br i1 %i.bm, label %bb.ay, label %bb.az, !prof !15

bb.ay:                                            ; preds = %bb.ax
  %i.bn = add nuw i32 %.val.i.i623, 1
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !14
  br label %lean_inc.exit538

bb.az:                                            ; preds = %bb.ax
  %.not.i.i624 = icmp eq i32 %.val.i.i623, 0
  br i1 %.not.i.i624, label %lean_inc.exit538, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bo = atomicrmw sub ptr %i.bj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit538

lean_inc.exit538:                                 ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw
  %.val.i626 = load i32, ptr %i.ba, align 8, !tbaa !14 ; 4 uses
  %i.bp = icmp eq i32 %.val.i626, 1
  br i1 %i.bp, label %.preheader.i, label %bb.bf

.preheader.i:                                     ; preds = %lean_inc.exit538
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !12 ; 4 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 1
  %.not.i7.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i, label %bb.bb, label %lean_dec.exit.i

bb.bb:                                            ; preds = %.preheader.i
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !14 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.bc, label %bb.bd, !prof !15

bb.bc:                                            ; preds = %bb.bb
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.bd:                                            ; preds = %bb.bb
  %.not.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.be, %bb.bd, %bb.bc, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ba) #4
  br label %lean_dec_ref_known.exit

bb.bf:                                            ; preds = %lean_inc.exit538
  %i.bw = icmp sgt i32 %.val.i626, 1
  br i1 %i.bw, label %bb.bg, label %bb.bh, !prof !15

bb.bg:                                            ; preds = %bb.bf
  %i.bx = add nsw i32 %.val.i626, -1
  store i32 %i.bx, ptr %i.ba, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.bh:                                            ; preds = %bb.bf
  %.not.i.i627 = icmp eq i32 %.val.i626, 0
  br i1 %.not.i.i627, label %lean_dec_ref_known.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ba) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.bg, %bb.bh, %bb.bi
  %i.by = and i64 %i.bk, 510
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.bj, label %bb.kq

bb.bj:                                            ; preds = %lean_dec_ref_known.exit
  %.val.i.i629 = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.ca = icmp sgt i32 %.val.i.i629, 0
  br i1 %i.ca, label %bb.bk, label %bb.bl, !prof !15

bb.bk:                                            ; preds = %bb.bj
  %i.cb = add nuw i32 %.val.i.i629, 1
  store i32 %i.cb, ptr %i.n, align 4, !tbaa !14
  br label %lean_inc_ref.exit631

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i630 = icmp eq i32 %.val.i.i629, 0
  br i1 %.not.i.i630, label %lean_inc_ref.exit631, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cc = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit631

lean_inc_ref.exit631:                             ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.cd = tail call ptr @l_Lean_Meta_Grind_isEqFalse___redArg(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 11 uses
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = and i64 %i.ce, 1
  %.not.i632 = icmp eq i64 %i.cf, 0               ; 2 uses
  br i1 %.not.i632, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %lean_inc_ref.exit631
  %i.cg = lshr i64 %i.ce, 1
  %i.ch = trunc i64 %i.cg to i32
  br label %lean_obj_tag.exit635

bb.bo:                                            ; preds = %lean_inc_ref.exit631
  %i.ci = getelementptr i8, ptr %i.cd, i64 4
  %.val.i634 = load i32, ptr %i.ci, align 4
  %i.cj = lshr i32 %.val.i634, 24
  br label %lean_obj_tag.exit635

lean_obj_tag.exit635:                             ; preds = %bb.bn, %bb.bo
  %.0.i633 = phi i32 [ %i.ch, %bb.bn ], [ %i.cj, %bb.bo ]
  %i.ck = icmp eq i32 %.0.i633, 0
  br i1 %i.ck, label %bb.bp, label %bb.js

bb.bp:                                            ; preds = %lean_obj_tag.exit635
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !12 ; 7 uses
  %i.cn = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.co = and i64 %i.cn, 1
  %.not.i535 = icmp eq i64 %i.co, 0
  br i1 %.not.i535, label %bb.bq, label %lean_inc.exit536

bb.bq:                                            ; preds = %bb.bp
  %.val.i.i636 = load i32, ptr %i.cm, align 4, !tbaa !14 ; 3 uses
  %i.cp = icmp sgt i32 %.val.i.i636, 0
  br i1 %i.cp, label %bb.br, label %bb.bs, !prof !15

bb.br:                                            ; preds = %bb.bq
  %i.cq = add nuw i32 %.val.i.i636, 1
  store i32 %i.cq, ptr %i.cm, align 4, !tbaa !14
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  %.not.i.i637 = icmp eq i32 %.val.i.i636, 0
  br i1 %.not.i.i637, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.cr = atomicrmw sub ptr %i.cm, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.bu

lean_inc.exit536:                                 ; preds = %bb.bp
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cd)
  br label %lean_dec.exit603

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cd)
  %i.cs = load i32, ptr %i.cm, align 4, !tbaa !14 ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %bb.bv, label %bb.bw, !prof !15

bb.bv:                                            ; preds = %bb.bu
  %i.cu = add nsw i32 %i.cs, -1
  store i32 %i.cu, ptr %i.cm, align 4, !tbaa !14
  br label %lean_dec.exit603

bb.bw:                                            ; preds = %bb.bu
  %.not.i.i601 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i601, label %lean_dec.exit603, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #4
  br label %lean_dec.exit603

lean_dec.exit603:                                 ; preds = %bb.bv, %bb.bw, %bb.bx, %lean_inc.exit536
  %i.cv = and i64 %i.cn, 510
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.by, label %bb.ia

bb.by:                                            ; preds = %lean_dec.exit603
  br i1 %.not.i537, label %bb.bz, label %lean_dec.exit599

bb.bz:                                            ; preds = %bb.by
  %i.cx = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 1
  br i1 %i.cy, label %bb.ca, label %bb.cb, !prof !15

bb.ca:                                            ; preds = %bb.bz
  %i.cz = add nsw i32 %i.cx, -1
  store i32 %i.cz, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit599

bb.cb:                                            ; preds = %bb.bz
  %.not.i.i597 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i597, label %lean_dec.exit599, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit599

lean_dec.exit599:                                 ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.by
  %.val.i.i639 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.da = icmp sgt i32 %.val.i.i639, 0
  br i1 %i.da, label %bb.cd, label %bb.ce, !prof !15

bb.cd:                                            ; preds = %lean_dec.exit599
  %i.db = add nuw i32 %.val.i.i639, 1
  store i32 %i.db, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit641

bb.ce:                                            ; preds = %lean_dec.exit599
  %.not.i.i640 = icmp eq i32 %.val.i.i639, 0
  br i1 %.not.i.i640, label %lean_inc_ref.exit641, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.dc = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit641

lean_inc_ref.exit641:                             ; preds = %bb.cd, %bb.ce, %bb.cf
  %i.dd = tail call ptr @l_Lean_Meta_Grind_isEqTrue___redArg(ptr noundef nonnull %i.ae, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 11 uses
  %i.de = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.df = and i64 %i.de, 1
  %.not.i642 = icmp eq i64 %i.df, 0               ; 2 uses
  br i1 %.not.i642, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %lean_inc_ref.exit641
  %i.dg = lshr i64 %i.de, 1
  %i.dh = trunc i64 %i.dg to i32
  br label %lean_obj_tag.exit645

bb.ch:                                            ; preds = %lean_inc_ref.exit641
  %i.di = getelementptr i8, ptr %i.dd, i64 4
  %.val.i644 = load i32, ptr %i.di, align 4
  %i.dj = lshr i32 %.val.i644, 24
  br label %lean_obj_tag.exit645

lean_obj_tag.exit645:                             ; preds = %bb.cg, %bb.ch
  %.0.i643 = phi i32 [ %i.dh, %bb.cg ], [ %i.dj, %bb.ch ]
  %i.dk = icmp eq i32 %.0.i643, 0
  br i1 %i.dk, label %bb.ci, label %bb.hg

bb.ci:                                            ; preds = %lean_obj_tag.exit645
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !12 ; 7 uses
  %i.dn = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.do = and i64 %i.dn, 1
  %.not.i533 = icmp eq i64 %i.do, 0
  br i1 %.not.i533, label %bb.cj, label %lean_inc.exit534

bb.cj:                                            ; preds = %bb.ci
  %.val.i.i646 = load i32, ptr %i.dm, align 4, !tbaa !14 ; 3 uses
  %i.dp = icmp sgt i32 %.val.i.i646, 0
  br i1 %i.dp, label %bb.ck, label %bb.cl, !prof !15

bb.ck:                                            ; preds = %bb.cj
  %i.dq = add nuw i32 %.val.i.i646, 1
  store i32 %i.dq, ptr %i.dm, align 4, !tbaa !14
  br label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  %.not.i.i647 = icmp eq i32 %.val.i.i646, 0
  br i1 %.not.i.i647, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.dr = atomicrmw sub ptr %i.dm, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.cn

lean_inc.exit534:                                 ; preds = %bb.ci
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dd)
  br label %lean_dec.exit595

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dd)
  %i.ds = load i32, ptr %i.dm, align 4, !tbaa !14 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.co, label %bb.cp, !prof !15

bb.co:                                            ; preds = %bb.cn
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %i.dm, align 4, !tbaa !14
  br label %lean_dec.exit595

bb.cp:                                            ; preds = %bb.cn
  %.not.i.i593 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i593, label %lean_dec.exit595, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #4
  br label %lean_dec.exit595

lean_dec.exit595:                                 ; preds = %bb.co, %bb.cp, %bb.cq, %lean_inc.exit534
  %i.dv = and i64 %i.dn, 510
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.cr, label %bb.fz

bb.cr:                                            ; preds = %lean_dec.exit595
  %.val.i.i649 = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.dx = icmp sgt i32 %.val.i.i649, 0
  br i1 %i.dx, label %bb.cs, label %bb.ct, !prof !15

bb.cs:                                            ; preds = %bb.cr
  %i.dy = add nuw i32 %.val.i.i649, 1
  store i32 %i.dy, ptr %i.n, align 4, !tbaa !14
  br label %lean_inc_ref.exit651

bb.ct:                                            ; preds = %bb.cr
  %.not.i.i650 = icmp eq i32 %.val.i.i649, 0
  br i1 %.not.i.i650, label %lean_inc_ref.exit651, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.dz = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit651

lean_inc_ref.exit651:                             ; preds = %bb.cs, %bb.ct, %bb.cu
  %i.ea = tail call ptr @l_Lean_Meta_Grind_isEqTrue___redArg(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 14 uses
  %i.eb = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ec = and i64 %i.eb, 1
  %.not.i652 = icmp eq i64 %i.ec, 0               ; 3 uses
  br i1 %.not.i652, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %lean_inc_ref.exit651
  %i.ed = lshr i64 %i.eb, 1
  %i.ee = trunc i64 %i.ed to i32
  br label %lean_obj_tag.exit655

bb.cw:                                            ; preds = %lean_inc_ref.exit651
  %i.ef = getelementptr i8, ptr %i.ea, i64 4
  %.val.i654 = load i32, ptr %i.ef, align 4
  %i.eg = lshr i32 %.val.i654, 24
  br label %lean_obj_tag.exit655

lean_obj_tag.exit655:                             ; preds = %bb.cv, %bb.cw
  %.0.i653 = phi i32 [ %i.ee, %bb.cv ], [ %i.eg, %bb.cw ]
  %i.eh = icmp eq i32 %.0.i653, 0
  br i1 %i.eh, label %bb.cx, label %bb.ff

bb.cx:                                            ; preds = %lean_obj_tag.exit655
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !12 ; 7 uses
  %.val611 = load i32, ptr %i.ea, align 8, !tbaa !14
  %i.ek = icmp eq i32 %.val611, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.ej to i64               ; 2 uses
  %.pre756 = and i64 %.pre, 1                     ; 2 uses
  br i1 %i.ek, label %lean_dec.exit591, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.not.i531 = icmp eq i64 %.pre756, 0
  br i1 %.not.i531, label %bb.cz, label %lean_inc.exit532

bb.cz:                                            ; preds = %bb.cy
  %.val.i.i656 = load i32, ptr %i.ej, align 4, !tbaa !14 ; 3 uses
  %i.el = icmp sgt i32 %.val.i.i656, 0
  br i1 %i.el, label %bb.da, label %bb.db, !prof !15

bb.da:                                            ; preds = %bb.cz
  %i.em = add nuw i32 %.val.i.i656, 1
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !14
  br label %lean_inc.exit532

bb.db:                                            ; preds = %bb.cz
  %.not.i.i657 = icmp eq i32 %.val.i.i656, 0
  br i1 %.not.i.i657, label %lean_inc.exit532, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.en = atomicrmw sub ptr %i.ej, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit532

lean_inc.exit532:                                 ; preds = %bb.dc, %bb.db, %bb.da, %bb.cy
  br i1 %.not.i652, label %bb.dd, label %lean_dec.exit591

bb.dd:                                            ; preds = %lean_inc.exit532
  %i.eo = load i32, ptr %i.ea, align 8, !tbaa !14 ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %bb.de, label %bb.df, !prof !15

bb.de:                                            ; preds = %bb.dd
  %i.eq = add nsw i32 %i.eo, -1
  store i32 %i.eq, ptr %i.ea, align 8, !tbaa !14
  br label %lean_dec.exit591

bb.df:                                            ; preds = %bb.dd
  %.not.i.i589 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i589, label %lean_dec.exit591, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ea) #4
  br label %lean_dec.exit591

lean_dec.exit591:                                 ; preds = %bb.cx, %lean_inc.exit532, %bb.dg, %bb.df, %bb.de
  %.0406 = phi ptr [ inttoptr (i64 1 to ptr), %bb.de ], [ inttoptr (i64 1 to ptr), %lean_inc.exit532 ], [ inttoptr (i64 1 to ptr), %bb.dg ], [ inttoptr (i64 1 to ptr), %bb.df ], [ %i.ea, %bb.cx ] ; 4 uses
end_hunk_2
begin_hunk_3_@l_Lean_Meta_Grind_propagateOrUp:bb.a

lean_dec_ref.exit465:                             ; preds = %bb.hh, %bb.hi, %bb.hj
  %i.jx = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.jy = icmp sgt i32 %i.jx, 1
  br i1 %i.jy, label %bb.hk, label %bb.hl, !prof !15

bb.hk:                                            ; preds = %lean_dec_ref.exit465
  %i.jz = add nsw i32 %i.jx, -1
  store i32 %i.jz, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit463

bb.hl:                                            ; preds = %lean_dec_ref.exit465
  %.not.i462 = icmp eq i32 %i.jx, 0
  br i1 %.not.i462, label %lean_dec_ref.exit463, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit463

lean_dec_ref.exit463:                             ; preds = %bb.hk, %bb.hl, %bb.hm
  %i.ka = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.kb = icmp sgt i32 %i.ka, 1
  br i1 %i.kb, label %bb.hn, label %bb.ho, !prof !15

bb.hn:                                            ; preds = %lean_dec_ref.exit463
  %i.kc = add nsw i32 %i.ka, -1
  store i32 %i.kc, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit461

bb.ho:                                            ; preds = %lean_dec_ref.exit463
  %.not.i460 = icmp eq i32 %i.ka, 0
  br i1 %.not.i460, label %lean_dec_ref.exit461, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit461

lean_dec_ref.exit461:                             ; preds = %bb.hn, %bb.ho, %bb.hp
  %i.kd = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !12 ; 5 uses
  %.val607 = load i32, ptr %i.dd, align 8, !tbaa !14
  %i.kf = icmp eq i32 %.val607, 1
  br i1 %i.kf, label %lean_dec_ref.exit499.thread, label %bb.hq

bb.hq:                                            ; preds = %lean_dec_ref.exit461
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = and i64 %i.kg, 1
  %.not.i519 = icmp eq i64 %i.kh, 0
  br i1 %.not.i519, label %bb.hr, label %lean_inc.exit520

bb.hr:                                            ; preds = %bb.hq
  %.val.i.i692 = load i32, ptr %i.ke, align 4, !tbaa !14 ; 3 uses
  %i.ki = icmp sgt i32 %.val.i.i692, 0
  br i1 %i.ki, label %bb.hs, label %bb.ht, !prof !15

bb.hs:                                            ; preds = %bb.hr
  %i.kj = add nuw i32 %.val.i.i692, 1
  store i32 %i.kj, ptr %i.ke, align 4, !tbaa !14
  br label %lean_inc.exit520

bb.ht:                                            ; preds = %bb.hr
  %.not.i.i693 = icmp eq i32 %.val.i.i692, 0
  br i1 %.not.i.i693, label %lean_inc.exit520, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.kk = atomicrmw sub ptr %i.ke, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit520

lean_inc.exit520:                                 ; preds = %bb.hu, %bb.ht, %bb.hs, %bb.hq
  br i1 %.not.i642, label %bb.hv, label %bb.hz

bb.hv:                                            ; preds = %lean_inc.exit520
  %i.kl = load i32, ptr %i.dd, align 8, !tbaa !14 ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 1
  br i1 %i.km, label %bb.hw, label %bb.hx, !prof !15

bb.hw:                                            ; preds = %bb.hv
  %i.kn = add nsw i32 %i.kl, -1
  store i32 %i.kn, ptr %i.dd, align 8, !tbaa !14
  br label %bb.hz

bb.hx:                                            ; preds = %bb.hv
  %.not.i.i569 = icmp eq i32 %i.kl, 0
  br i1 %.not.i.i569, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #4
  br label %bb.hz

bb.hz:                                            ; preds = %lean_inc.exit520, %bb.hy, %bb.hx, %bb.hw
  %i.ko = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.ke, ptr %i.kp, align 8, !tbaa !12
  br label %lean_dec_ref.exit499.thread

bb.ia:                                            ; preds = %lean_dec.exit603
  %.val.i.i695 = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.kq = icmp sgt i32 %.val.i.i695, 0
  br i1 %i.kq, label %bb.ib, label %bb.ic, !prof !15

bb.ib:                                            ; preds = %bb.ia
  %i.kr = add nuw i32 %.val.i.i695, 1
  store i32 %i.kr, ptr %i.n, align 4, !tbaa !14
  br label %lean_inc_ref.exit697

bb.ic:                                            ; preds = %bb.ia
  %.not.i.i696 = icmp eq i32 %.val.i.i695, 0
  br i1 %.not.i.i696, label %lean_inc_ref.exit697, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.ks = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit697

lean_inc_ref.exit697:                             ; preds = %bb.ib, %bb.ic, %bb.id
  %i.kt = tail call ptr @l_Lean_Meta_Grind_mkEqFalseProof(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 10 uses
  %i.ku = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.kv = and i64 %i.ku, 1
  %.not.i698 = icmp eq i64 %i.kv, 0               ; 2 uses
  br i1 %.not.i698, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %lean_inc_ref.exit697
  %i.kw = lshr i64 %i.ku, 1
  %i.kx = trunc i64 %i.kw to i32
  br label %lean_obj_tag.exit701

bb.if:                                            ; preds = %lean_inc_ref.exit697
  %i.ky = getelementptr i8, ptr %i.kt, i64 4
  %.val.i700 = load i32, ptr %i.ky, align 4
  %i.kz = lshr i32 %.val.i700, 24
  br label %lean_obj_tag.exit701

lean_obj_tag.exit701:                             ; preds = %bb.ie, %bb.if
  %.0.i699 = phi i32 [ %i.kx, %bb.ie ], [ %i.kz, %bb.if ]
  %i.la = icmp eq i32 %.0.i699, 0
  br i1 %i.la, label %bb.ig, label %bb.iu

bb.ig:                                            ; preds = %lean_obj_tag.exit701
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !12 ; 5 uses
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = and i64 %i.ld, 1
  %.not.i517 = icmp eq i64 %i.le, 0
  br i1 %.not.i517, label %bb.ih, label %lean_inc.exit518

bb.ih:                                            ; preds = %bb.ig
  %.val.i.i702 = load i32, ptr %i.lc, align 4, !tbaa !14 ; 3 uses
  %i.lf = icmp sgt i32 %.val.i.i702, 0
  br i1 %i.lf, label %bb.ii, label %bb.ij, !prof !15

bb.ii:                                            ; preds = %bb.ih
  %i.lg = add nuw i32 %.val.i.i702, 1
  store i32 %i.lg, ptr %i.lc, align 4, !tbaa !14
  br label %lean_inc.exit518

bb.ij:                                            ; preds = %bb.ih
  %.not.i.i703 = icmp eq i32 %.val.i.i702, 0
  br i1 %.not.i.i703, label %lean_inc.exit518, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.lh = atomicrmw sub ptr %i.lc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit518

lean_inc.exit518:                                 ; preds = %bb.ik, %bb.ij, %bb.ii, %bb.ig
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.kt)
  %i.li = load atomic i32, ptr @l_Lean_Meta_Grind_propagateOrUp___closed__10_once seq_cst, align 4, !tbaa !17
  %i.lj = icmp eq i32 %i.li, 1
  br i1 %i.lj, label %bb.il, label %bb.im, !prof !15

bb.il:                                            ; preds = %lean_inc.exit518
  %i.lk = load ptr, ptr @l_Lean_Meta_Grind_propagateOrUp___closed__10, align 8, !tbaa !12
  br label %lean_obj_once.exit706

bb.im:                                            ; preds = %lean_inc.exit518
  %i.ll = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_Grind_propagateOrUp___closed__10, ptr noundef nonnull @l_Lean_Meta_Grind_propagateOrUp___closed__10_once, ptr noundef nonnull @_init_l_Lean_Meta_Grind_propagateOrUp___closed__10) #4
  br label %lean_obj_once.exit706

lean_obj_once.exit706:                            ; preds = %bb.il, %bb.im
  %.0.i705 = phi ptr [ %i.lk, %bb.il ], [ %i.ll, %bb.im ]
  %.val.i.i707 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.lm = icmp sgt i32 %.val.i.i707, 0
  br i1 %i.lm, label %bb.in, label %bb.io, !prof !15

bb.in:                                            ; preds = %lean_obj_once.exit706
  %i.ln = add nuw i32 %.val.i.i707, 1
  store i32 %i.ln, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit709

bb.io:                                            ; preds = %lean_obj_once.exit706
  %.not.i.i708 = icmp eq i32 %.val.i.i707, 0
  br i1 %.not.i.i708, label %lean_inc_ref.exit709, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.lo = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit709

lean_inc_ref.exit709:                             ; preds = %bb.in, %bb.io, %bb.ip
  %i.lp = tail call ptr @l_Lean_mkApp3(ptr noundef %.0.i705, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.n, ptr noundef %i.lc) #4
  br i1 %.not.i537, label %bb.iq, label %lean_dec.exit567

bb.iq:                                            ; preds = %lean_inc_ref.exit709
  %i.lq = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.lr = icmp sgt i32 %i.lq, 1
  br i1 %i.lr, label %bb.ir, label %bb.is, !prof !15

bb.ir:                                            ; preds = %bb.iq
  %i.ls = add nsw i32 %i.lq, -1
  store i32 %i.ls, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit567

bb.is:                                            ; preds = %bb.iq
  %.not.i.i565 = icmp eq i32 %i.lq, 0
  br i1 %.not.i.i565, label %lean_dec.exit567, label %bb.it

bb.it:                                            ; preds = %bb.is
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit567

lean_dec.exit567:                                 ; preds = %bb.ir, %bb.is, %bb.it, %lean_inc_ref.exit709
  %i.lt = tail call ptr @l_Lean_Meta_Grind_pushEqCore___redArg(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef %i.lp, i8 noundef zeroext 0, ptr noundef %1, ptr noundef %3, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4
  br label %lean_dec_ref.exit499.thread

bb.iu:                                            ; preds = %lean_obj_tag.exit701
  br i1 %.not.i537, label %bb.iv, label %lean_dec.exit563

bb.iv:                                            ; preds = %bb.iu
  %i.lu = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.lv = icmp sgt i32 %i.lu, 1
  br i1 %i.lv, label %bb.iw, label %bb.ix, !prof !15

bb.iw:                                            ; preds = %bb.iv
  %i.lw = add nsw i32 %i.lu, -1
  store i32 %i.lw, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit563

bb.ix:                                            ; preds = %bb.iv
  %.not.i.i561 = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i561, label %lean_dec.exit563, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit563

lean_dec.exit563:                                 ; preds = %bb.iw, %bb.ix, %bb.iy, %bb.iu
  %i.lx = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.ly = icmp sgt i32 %i.lx, 1
  br i1 %i.ly, label %bb.iz, label %bb.ja, !prof !15

bb.iz:                                            ; preds = %lean_dec.exit563
  %i.lz = add nsw i32 %i.lx, -1
  store i32 %i.lz, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit459

bb.ja:                                            ; preds = %lean_dec.exit563
  %.not.i458 = icmp eq i32 %i.lx, 0
  br i1 %.not.i458, label %lean_dec_ref.exit459, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit459

lean_dec_ref.exit459:                             ; preds = %bb.iz, %bb.ja, %bb.jb
  %i.ma = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.mb = icmp sgt i32 %i.ma, 1
  br i1 %i.mb, label %bb.jc, label %bb.jd, !prof !15

bb.jc:                                            ; preds = %lean_dec_ref.exit459
  %i.mc = add nsw i32 %i.ma, -1
  store i32 %i.mc, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit457

bb.jd:                                            ; preds = %lean_dec_ref.exit459
  %.not.i456 = icmp eq i32 %i.ma, 0
  br i1 %.not.i456, label %lean_dec_ref.exit457, label %bb.je

bb.je:                                            ; preds = %bb.jd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit457

lean_dec_ref.exit457:                             ; preds = %bb.jc, %bb.jd, %bb.je
  %i.md = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.me = icmp sgt i32 %i.md, 1
  br i1 %i.me, label %bb.jf, label %bb.jg, !prof !15

bb.jf:                                            ; preds = %lean_dec_ref.exit457
  %i.mf = add nsw i32 %i.md, -1
  store i32 %i.mf, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit455

bb.jg:                                            ; preds = %lean_dec_ref.exit457
  %.not.i454 = icmp eq i32 %i.md, 0
  br i1 %.not.i454, label %lean_dec_ref.exit455, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit455

lean_dec_ref.exit455:                             ; preds = %bb.jf, %bb.jg, %bb.jh
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !12 ; 5 uses
  %.val606 = load i32, ptr %i.kt, align 8, !tbaa !14
  %i.mi = icmp eq i32 %.val606, 1
  br i1 %i.mi, label %lean_dec_ref.exit499.thread, label %bb.ji

bb.ji:                                            ; preds = %lean_dec_ref.exit455
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = and i64 %i.mj, 1
  %.not.i515 = icmp eq i64 %i.mk, 0
  br i1 %.not.i515, label %bb.jj, label %lean_inc.exit516

bb.jj:                                            ; preds = %bb.ji
  %.val.i.i710 = load i32, ptr %i.mh, align 4, !tbaa !14 ; 3 uses
  %i.ml = icmp sgt i32 %.val.i.i710, 0
  br i1 %i.ml, label %bb.jk, label %bb.jl, !prof !15

bb.jk:                                            ; preds = %bb.jj
  %i.mm = add nuw i32 %.val.i.i710, 1
  store i32 %i.mm, ptr %i.mh, align 4, !tbaa !14
  br label %lean_inc.exit516

bb.jl:                                            ; preds = %bb.jj
  %.not.i.i711 = icmp eq i32 %.val.i.i710, 0
  br i1 %.not.i.i711, label %lean_inc.exit516, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.mn = atomicrmw sub ptr %i.mh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit516

lean_inc.exit516:                                 ; preds = %bb.jm, %bb.jl, %bb.jk, %bb.ji
  br i1 %.not.i698, label %bb.jn, label %bb.jr

bb.jn:                                            ; preds = %lean_inc.exit516
  %i.mo = load i32, ptr %i.kt, align 8, !tbaa !14 ; 3 uses
  %i.mp = icmp sgt i32 %i.mo, 1
  br i1 %i.mp, label %bb.jo, label %bb.jp, !prof !15

bb.jo:                                            ; preds = %bb.jn
  %i.mq = add nsw i32 %i.mo, -1
  store i32 %i.mq, ptr %i.kt, align 8, !tbaa !14
  br label %bb.jr

bb.jp:                                            ; preds = %bb.jn
  %.not.i.i557 = icmp eq i32 %i.mo, 0
  br i1 %.not.i.i557, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kt) #4
  br label %bb.jr

bb.jr:                                            ; preds = %lean_inc.exit516, %bb.jq, %bb.jp, %bb.jo
  %i.mr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store ptr %i.mh, ptr %i.ms, align 8, !tbaa !12
  br label %lean_dec_ref.exit499.thread

bb.js:                                            ; preds = %lean_obj_tag.exit635
  br i1 %.not.i537, label %bb.jt, label %lean_dec.exit555

bb.jt:                                            ; preds = %bb.js
  %i.mt = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.mu = icmp sgt i32 %i.mt, 1
  br i1 %i.mu, label %bb.ju, label %bb.jv, !prof !15

bb.ju:                                            ; preds = %bb.jt
  %i.mv = add nsw i32 %i.mt, -1
  store i32 %i.mv, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit555

bb.jv:                                            ; preds = %bb.jt
  %.not.i.i553 = icmp eq i32 %i.mt, 0
  br i1 %.not.i.i553, label %lean_dec.exit555, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit555

lean_dec.exit555:                                 ; preds = %bb.ju, %bb.jv, %bb.jw, %bb.js
  %i.mw = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.mx = icmp sgt i32 %i.mw, 1
  br i1 %i.mx, label %bb.jx, label %bb.jy, !prof !15

bb.jx:                                            ; preds = %lean_dec.exit555
  %i.my = add nsw i32 %i.mw, -1
  store i32 %i.my, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit453

bb.jy:                                            ; preds = %lean_dec.exit555
  %.not.i452 = icmp eq i32 %i.mw, 0
  br i1 %.not.i452, label %lean_dec_ref.exit453, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit453

lean_dec_ref.exit453:                             ; preds = %bb.jx, %bb.jy, %bb.jz
  %i.mz = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.na = icmp sgt i32 %i.mz, 1
  br i1 %i.na, label %bb.ka, label %bb.kb, !prof !15

bb.ka:                                            ; preds = %lean_dec_ref.exit453
  %i.nb = add nsw i32 %i.mz, -1
  store i32 %i.nb, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit451

bb.kb:                                            ; preds = %lean_dec_ref.exit453
  %.not.i450 = icmp eq i32 %i.mz, 0
  br i1 %.not.i450, label %lean_dec_ref.exit451, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit451

lean_dec_ref.exit451:                             ; preds = %bb.ka, %bb.kb, %bb.kc
  %i.nc = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.nd = icmp sgt i32 %i.nc, 1
  br i1 %i.nd, label %bb.kd, label %bb.ke, !prof !15

bb.kd:                                            ; preds = %lean_dec_ref.exit451
  %i.ne = add nsw i32 %i.nc, -1
  store i32 %i.ne, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit449

bb.ke:                                            ; preds = %lean_dec_ref.exit451
  %.not.i448 = icmp eq i32 %i.nc, 0
  br i1 %.not.i448, label %lean_dec_ref.exit449, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit449

lean_dec_ref.exit449:                             ; preds = %bb.kd, %bb.ke, %bb.kf
  %i.nf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !12 ; 5 uses
  %.val605 = load i32, ptr %i.cd, align 8, !tbaa !14
  %i.nh = icmp eq i32 %.val605, 1
  br i1 %i.nh, label %lean_dec_ref.exit499.thread, label %bb.kg

bb.kg:                                            ; preds = %lean_dec_ref.exit449
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = and i64 %i.ni, 1
  %.not.i513 = icmp eq i64 %i.nj, 0
  br i1 %.not.i513, label %bb.kh, label %lean_inc.exit514

bb.kh:                                            ; preds = %bb.kg
  %.val.i.i713 = load i32, ptr %i.ng, align 4, !tbaa !14 ; 3 uses
  %i.nk = icmp sgt i32 %.val.i.i713, 0
  br i1 %i.nk, label %bb.ki, label %bb.kj, !prof !15

bb.ki:                                            ; preds = %bb.kh
  %i.nl = add nuw i32 %.val.i.i713, 1
  store i32 %i.nl, ptr %i.ng, align 4, !tbaa !14
  br label %lean_inc.exit514

bb.kj:                                            ; preds = %bb.kh
  %.not.i.i714 = icmp eq i32 %.val.i.i713, 0
  br i1 %.not.i.i714, label %lean_inc.exit514, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.nm = atomicrmw sub ptr %i.ng, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit514

lean_inc.exit514:                                 ; preds = %bb.kk, %bb.kj, %bb.ki, %bb.kg
  br i1 %.not.i632, label %bb.kl, label %bb.kp

bb.kl:                                            ; preds = %lean_inc.exit514
  %i.nn = load i32, ptr %i.cd, align 8, !tbaa !14 ; 3 uses
  %i.no = icmp sgt i32 %i.nn, 1
  br i1 %i.no, label %bb.km, label %bb.kn, !prof !15

bb.km:                                            ; preds = %bb.kl
  %i.np = add nsw i32 %i.nn, -1
  store i32 %i.np, ptr %i.cd, align 8, !tbaa !14
  br label %bb.kp

bb.kn:                                            ; preds = %bb.kl
  %.not.i.i549 = icmp eq i32 %i.nn, 0
  br i1 %.not.i.i549, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #4
  br label %bb.kp

bb.kp:                                            ; preds = %lean_inc.exit514, %bb.ko, %bb.kn, %bb.km
  %i.nq = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store ptr %i.ng, ptr %i.nr, align 8, !tbaa !12
  br label %lean_dec_ref.exit499.thread

bb.kq:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i537, label %bb.kr, label %lean_dec.exit547

bb.kr:                                            ; preds = %bb.kq
  %i.ns = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.nt = icmp sgt i32 %i.ns, 1
  br i1 %i.nt, label %bb.ks, label %bb.kt, !prof !15

bb.ks:                                            ; preds = %bb.kr
  %i.nu = add nsw i32 %i.ns, -1
  store i32 %i.nu, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit547

bb.kt:                                            ; preds = %bb.kr
  %.not.i.i545 = icmp eq i32 %i.ns, 0
  br i1 %.not.i.i545, label %lean_dec.exit547, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit547

lean_dec.exit547:                                 ; preds = %bb.ks, %bb.kt, %bb.ku, %bb.kq
  %.val.i.i716 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.nv = icmp sgt i32 %.val.i.i716, 0
  br i1 %i.nv, label %bb.kv, label %bb.kw, !prof !15

bb.kv:                                            ; preds = %lean_dec.exit547
  %i.nw = add nuw i32 %.val.i.i716, 1
  store i32 %i.nw, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit718

bb.kw:                                            ; preds = %lean_dec.exit547
  %.not.i.i717 = icmp eq i32 %.val.i.i716, 0
  br i1 %.not.i.i717, label %lean_inc_ref.exit718, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.nx = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit718

lean_inc_ref.exit718:                             ; preds = %bb.kv, %bb.kw, %bb.kx
  %i.ny = tail call ptr @l_Lean_Meta_Grind_mkEqFalseProof(ptr noundef nonnull %i.ae, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 13 uses
  %i.nz = ptrtoint ptr %i.ny to i64               ; 2 uses
  %i.oa = and i64 %i.nz, 1
  %.not.i719 = icmp eq i64 %i.oa, 0               ; 2 uses
  br i1 %.not.i719, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %lean_inc_ref.exit718
  %i.ob = lshr i64 %i.nz, 1
  %i.oc = trunc i64 %i.ob to i32
  br label %lean_obj_tag.exit722

bb.kz:                                            ; preds = %lean_inc_ref.exit718
  %i.od = getelementptr i8, ptr %i.ny, i64 4
  %.val.i721 = load i32, ptr %i.od, align 4
  %i.oe = lshr i32 %.val.i721, 24
  br label %lean_obj_tag.exit722

lean_obj_tag.exit722:                             ; preds = %bb.ky, %bb.kz
  %.0.i720 = phi i32 [ %i.oc, %bb.ky ], [ %i.oe, %bb.kz ]
  %i.of = icmp eq i32 %.0.i720, 0
  br i1 %i.of, label %bb.la, label %bb.ls

bb.la:                                            ; preds = %lean_obj_tag.exit722
  %i.og = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !12 ; 5 uses
  %i.oi = ptrtoint ptr %i.oh to i64
  %i.oj = and i64 %i.oi, 1
  %.not.i511 = icmp eq i64 %i.oj, 0
  br i1 %.not.i511, label %bb.lb, label %lean_inc.exit512

bb.lb:                                            ; preds = %bb.la
  %.val.i.i723 = load i32, ptr %i.oh, align 4, !tbaa !14 ; 3 uses
  %i.ok = icmp sgt i32 %.val.i.i723, 0
  br i1 %i.ok, label %bb.lc, label %bb.ld, !prof !15

bb.lc:                                            ; preds = %bb.lb
  %i.ol = add nuw i32 %.val.i.i723, 1
  store i32 %i.ol, ptr %i.oh, align 4, !tbaa !14
end_hunk_3
begin_hunk_4_@l___private_Init_While_0__whileM_erased___at___00__private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_propagateEqUp_spec__1_spec__2___redArg:bb.a
  store ptr %i.fm, ptr %i.ga, align 8, !tbaa !12
  %i.gb = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Meta_Grind_propagateEqUp_spec__0_spec__0___redArg(ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00__private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_propagateEqUp_spec__1_spec__2___redArg___closed__4_value, i8 noundef zeroext 0, ptr noundef %i.eq, ptr noundef nonnull %i.fn, i8 noundef zeroext 0, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16) ; 2 uses
  %.pre = ptrtoint ptr %i.gb to i64
  br label %bb.jn

bb.dn:                                            ; preds = %lean_obj_tag.exit538
  %i.gc = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.do, label %bb.dp, !prof !15

bb.do:                                            ; preds = %bb.dn
  %i.ge = add nsw i32 %i.gc, -1
  store i32 %i.ge, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit388

bb.dp:                                            ; preds = %bb.dn
  %.not.i387 = icmp eq i32 %i.gc, 0
  br i1 %.not.i387, label %lean_dec_ref.exit388, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #4
  br label %lean_dec_ref.exit388

lean_dec_ref.exit388:                             ; preds = %bb.do, %bb.dp, %bb.dq
  %i.gf = load i32, ptr %i.ay, align 4, !tbaa !14 ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %bb.dr, label %bb.ds, !prof !15

bb.dr:                                            ; preds = %lean_dec_ref.exit388
  %i.gh = add nsw i32 %i.gf, -1
  store i32 %i.gh, ptr %i.ay, align 4, !tbaa !14
  br label %lean_dec_ref.exit386

bb.ds:                                            ; preds = %lean_dec_ref.exit388
  %.not.i385 = icmp eq i32 %i.gf, 0
  br i1 %.not.i385, label %lean_dec_ref.exit386, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #4
  br label %lean_dec_ref.exit386

lean_dec_ref.exit386:                             ; preds = %bb.dr, %bb.ds, %bb.dt
  %i.gi = load i32, ptr %5, align 4, !tbaa !14    ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %bb.du, label %bb.dv, !prof !15

bb.du:                                            ; preds = %lean_dec_ref.exit386
  %i.gk = add nsw i32 %i.gi, -1
  store i32 %i.gk, ptr %5, align 4, !tbaa !14
  br label %lean_dec_ref.exit384

bb.dv:                                            ; preds = %lean_dec_ref.exit386
  %.not.i383 = icmp eq i32 %i.gi, 0
  br i1 %.not.i383, label %lean_dec_ref.exit384, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit384

lean_dec_ref.exit384:                             ; preds = %bb.du, %bb.dv, %bb.dw
  %i.gl = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 1
  br i1 %i.gm, label %bb.dx, label %bb.dy, !prof !15

bb.dx:                                            ; preds = %lean_dec_ref.exit384
  %i.gn = add nsw i32 %i.gl, -1
  store i32 %i.gn, ptr %0, align 4, !tbaa !14
  br label %bb.jn

bb.dy:                                            ; preds = %lean_dec_ref.exit384
  %.not.i381 = icmp eq i32 %i.gl, 0
  br i1 %.not.i381, label %bb.jn, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %bb.jn

bb.ea:                                            ; preds = %lean_obj_tag.exit515
  %i.go = load i32, ptr %i.ay, align 4, !tbaa !14 ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %bb.eb, label %bb.ec, !prof !15

bb.eb:                                            ; preds = %bb.ea
  %i.gq = add nsw i32 %i.go, -1
  store i32 %i.gq, ptr %i.ay, align 4, !tbaa !14
  br label %lean_dec_ref.exit380

bb.ec:                                            ; preds = %bb.ea
  %.not.i379 = icmp eq i32 %i.go, 0
  br i1 %.not.i379, label %lean_dec_ref.exit380, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #4
  br label %lean_dec_ref.exit380

lean_dec_ref.exit380:                             ; preds = %bb.eb, %bb.ec, %bb.ed
  br i1 %.not.i512, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %lean_dec_ref.exit380
  %i.gr = lshr i64 %i.cj, 1
  %i.gs = trunc i64 %i.gr to i32
  br label %lean_obj_tag.exit553

bb.ef:                                            ; preds = %lean_dec_ref.exit380
  %i.gt = getelementptr i8, ptr %i.ci, i64 4
  %.val.i552 = load i32, ptr %i.gt, align 4
  %i.gu = lshr i32 %.val.i552, 24
  br label %lean_obj_tag.exit553

lean_obj_tag.exit553:                             ; preds = %bb.ee, %bb.ef
  %.0.i551 = phi i32 [ %i.gs, %bb.ee ], [ %i.gu, %bb.ef ]
  %i.gv = icmp eq i32 %.0.i551, 0
  br i1 %i.gv, label %bb.eg, label %bb.ft

bb.eg:                                            ; preds = %lean_obj_tag.exit553
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !12 ; 10 uses
  %i.gy = ptrtoint ptr %i.gx to i64               ; 3 uses
  %i.gz = and i64 %i.gy, 1
  %.not.i410 = icmp eq i64 %i.gz, 0               ; 3 uses
  br i1 %.not.i410, label %bb.eh, label %lean_inc.exit411

bb.eh:                                            ; preds = %bb.eg
  %.val.i.i554 = load i32, ptr %i.gx, align 4, !tbaa !14 ; 3 uses
  %i.ha = icmp sgt i32 %.val.i.i554, 0
  br i1 %i.ha, label %bb.ei, label %bb.ej, !prof !15

bb.ei:                                            ; preds = %bb.eh
  %i.hb = add nuw i32 %.val.i.i554, 1
  store i32 %i.hb, ptr %i.gx, align 4, !tbaa !14
  br label %lean_inc.exit411

bb.ej:                                            ; preds = %bb.eh
  %.not.i.i555 = icmp eq i32 %.val.i.i554, 0
  br i1 %.not.i.i555, label %lean_inc.exit411, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.hc = atomicrmw sub ptr %i.gx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit411

lean_inc.exit411:                                 ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eg
  %.val.i557 = load i32, ptr %i.ci, align 8, !tbaa !14 ; 4 uses
  %i.hd = icmp eq i32 %.val.i557, 1
  br i1 %i.hd, label %.preheader.i560, label %bb.ep

.preheader.i560:                                  ; preds = %lean_inc.exit411
  %i.he = load ptr, ptr %i.gw, align 8, !tbaa !12 ; 4 uses
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = and i64 %i.hf, 1
  %.not.i7.i561 = icmp eq i64 %i.hg, 0
  br i1 %.not.i7.i561, label %bb.el, label %lean_dec.exit.i562

bb.el:                                            ; preds = %.preheader.i560
  %i.hh = load i32, ptr %i.he, align 4, !tbaa !14 ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, 1
  br i1 %i.hi, label %bb.em, label %bb.en, !prof !15

bb.em:                                            ; preds = %bb.el
  %i.hj = add nsw i32 %i.hh, -1
  store i32 %i.hj, ptr %i.he, align 4, !tbaa !14
  br label %lean_dec.exit.i562

bb.en:                                            ; preds = %bb.el
  %.not.i.i.i563 = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i.i563, label %lean_dec.exit.i562, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.he) #4
  br label %lean_dec.exit.i562

lean_dec.exit.i562:                               ; preds = %bb.eo, %bb.en, %bb.em, %.preheader.i560
  tail call void @lean_free_object(ptr noundef nonnull %i.ci) #4
  br label %lean_dec_ref_known.exit564

bb.ep:                                            ; preds = %lean_inc.exit411
  %i.hk = icmp sgt i32 %.val.i557, 1
  br i1 %i.hk, label %bb.eq, label %bb.er, !prof !15

bb.eq:                                            ; preds = %bb.ep
  %i.hl = add nsw i32 %.val.i557, -1
  store i32 %i.hl, ptr %i.ci, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit564

bb.er:                                            ; preds = %bb.ep
  %.not.i.i558 = icmp eq i32 %.val.i557, 0
  br i1 %.not.i.i558, label %lean_dec_ref_known.exit564, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #4
  br label %lean_dec_ref_known.exit564

lean_dec_ref_known.exit564:                       ; preds = %lean_dec.exit.i562, %bb.eq, %bb.er, %bb.es
  %i.hm = and i64 %i.gy, 510
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %lean_dec_ref_known.exit564
  br i1 %.not.i410, label %bb.eu, label %lean_dec.exit462

bb.eu:                                            ; preds = %bb.et
  %i.ho = load i32, ptr %i.gx, align 4, !tbaa !14 ; 3 uses
  %i.hp = icmp sgt i32 %i.ho, 1
  br i1 %i.hp, label %bb.ev, label %bb.ew, !prof !15

bb.ev:                                            ; preds = %bb.eu
  %i.hq = add nsw i32 %i.ho, -1
  store i32 %i.hq, ptr %i.gx, align 4, !tbaa !14
  br label %lean_dec.exit462

bb.ew:                                            ; preds = %bb.eu
  %.not.i.i460 = icmp eq i32 %i.ho, 0
  br i1 %.not.i.i460, label %lean_dec.exit462, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gx) #4
  br label %lean_dec.exit462

lean_dec.exit462:                                 ; preds = %bb.ev, %bb.ew, %bb.ex, %bb.et
  %i.hr = ptrtoint ptr %.0299 to i64
  %i.hs = and i64 %i.hr, 1
  %.not.i565 = icmp eq i64 %i.hs, 0
  br i1 %.not.i565, label %lean_del_object.exit.sink.split, label %lean_del_object.exit

bb.ey:                                            ; preds = %lean_dec_ref_known.exit564
  %i.ht = lshr i64 %i.gy, 1
  %i.hu = load i32, ptr %i.bd, align 4, !tbaa !14 ; 3 uses
  %i.hv = icmp sgt i32 %i.hu, 1
  br i1 %i.hv, label %bb.ez, label %bb.fa, !prof !15

bb.ez:                                            ; preds = %bb.ey
  %i.hw = add nsw i32 %i.hu, -1
  store i32 %i.hw, ptr %i.bd, align 4, !tbaa !14
  br label %lean_dec_ref.exit378

bb.fa:                                            ; preds = %bb.ey
  %.not.i377 = icmp eq i32 %i.hu, 0
  br i1 %.not.i377, label %lean_dec_ref.exit378, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bd) #4
  br label %lean_dec_ref.exit378

lean_dec_ref.exit378:                             ; preds = %bb.ez, %bb.fa, %bb.fb
  %i.hx = ptrtoint ptr %.0337 to i64
  %i.hy = and i64 %i.hx, 1
  %.not.i567 = icmp eq i64 %i.hy, 0
  br i1 %.not.i567, label %bb.fc, label %lean_del_object.exit568

bb.fc:                                            ; preds = %lean_dec_ref.exit378
  tail call void @lean_free_object(ptr noundef nonnull %.0337) #4
  br label %lean_del_object.exit568

lean_del_object.exit568:                          ; preds = %lean_dec_ref.exit378, %bb.fc
  %i.hz = load i32, ptr %5, align 4, !tbaa !14    ; 3 uses
  %i.ia = icmp sgt i32 %i.hz, 1
  br i1 %i.ia, label %bb.fd, label %bb.fe, !prof !15

bb.fd:                                            ; preds = %lean_del_object.exit568
  %i.ib = add nsw i32 %i.hz, -1
  store i32 %i.ib, ptr %5, align 4, !tbaa !14
  br label %lean_dec_ref.exit376

bb.fe:                                            ; preds = %lean_del_object.exit568
  %.not.i375 = icmp eq i32 %i.hz, 0
  br i1 %.not.i375, label %lean_dec_ref.exit376, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit376

lean_dec_ref.exit376:                             ; preds = %bb.fd, %bb.fe, %bb.ff
  %i.ic = load i32, ptr %2, align 4, !tbaa !14    ; 3 uses
  %i.id = icmp sgt i32 %i.ic, 1
  br i1 %i.id, label %bb.fg, label %bb.fh, !prof !15

bb.fg:                                            ; preds = %lean_dec_ref.exit376
  %i.ie = add nsw i32 %i.ic, -1
  store i32 %i.ie, ptr %2, align 4, !tbaa !14
  br label %lean_dec_ref.exit374

bb.fh:                                            ; preds = %lean_dec_ref.exit376
  %.not.i373 = icmp eq i32 %i.ic, 0
  br i1 %.not.i373, label %lean_dec_ref.exit374, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec_ref.exit374

lean_dec_ref.exit374:                             ; preds = %bb.fg, %bb.fh, %bb.fi
  %i.if = load i32, ptr %1, align 8, !tbaa !14    ; 3 uses
  %i.ig = icmp sgt i32 %i.if, 1
  br i1 %i.ig, label %bb.fj, label %bb.fk, !prof !15

bb.fj:                                            ; preds = %lean_dec_ref.exit374
  %i.ih = add nsw i32 %i.if, -1
  store i32 %i.ih, ptr %1, align 8, !tbaa !14
  br label %lean_dec_ref.exit372

bb.fk:                                            ; preds = %lean_dec_ref.exit374
  %.not.i371 = icmp eq i32 %i.if, 0
  br i1 %.not.i371, label %lean_dec_ref.exit372, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit372

lean_dec_ref.exit372:                             ; preds = %bb.fj, %bb.fk, %bb.fl
  %i.ii = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.ij = icmp sgt i32 %i.ii, 1
  br i1 %i.ij, label %bb.fm, label %bb.fn, !prof !15

bb.fm:                                            ; preds = %lean_dec_ref.exit372
  %i.ik = add nsw i32 %i.ii, -1
  store i32 %i.ik, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit370

bb.fn:                                            ; preds = %lean_dec_ref.exit372
  %.not.i369 = icmp eq i32 %i.ii, 0
  br i1 %.not.i369, label %lean_dec_ref.exit370, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit370

lean_dec_ref.exit370:                             ; preds = %bb.fm, %bb.fn, %bb.fo
  %i.il = trunc i64 %i.ht to i8                   ; 4 uses
  br i1 %.not.i410, label %bb.fp, label %.thread647

bb.fp:                                            ; preds = %lean_dec_ref.exit370
  %i.im = load i32, ptr %i.gx, align 4, !tbaa !14 ; 3 uses
  %i.in = icmp sgt i32 %i.im, 1
  br i1 %i.in, label %bb.fq, label %bb.fr, !prof !15

bb.fq:                                            ; preds = %bb.fp
  %i.io = add nsw i32 %i.im, -1
  store i32 %i.io, ptr %i.gx, align 4, !tbaa !14
  br label %.thread647

bb.fr:                                            ; preds = %bb.fp
  %.not.i.i456 = icmp eq i32 %i.im, 0
  br i1 %.not.i.i456, label %.thread647, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gx) #4
  br label %.thread647

bb.ft:                                            ; preds = %lean_obj_tag.exit553
  %i.ip = load i32, ptr %i.bd, align 4, !tbaa !14 ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.fu, label %bb.fv, !prof !15

bb.fu:                                            ; preds = %bb.ft
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %i.bd, align 4, !tbaa !14
  br label %lean_dec_ref.exit368

bb.fv:                                            ; preds = %bb.ft
  %.not.i367 = icmp eq i32 %i.ip, 0
  br i1 %.not.i367, label %lean_dec_ref.exit368, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bd) #4
  br label %lean_dec_ref.exit368

lean_dec_ref.exit368:                             ; preds = %bb.fu, %bb.fv, %bb.fw
  %i.is = ptrtoint ptr %.0337 to i64
  %i.it = and i64 %i.is, 1
  %.not.i569 = icmp eq i64 %i.it, 0
  br i1 %.not.i569, label %bb.fx, label %lean_del_object.exit570

bb.fx:                                            ; preds = %lean_dec_ref.exit368
  tail call void @lean_free_object(ptr noundef nonnull %.0337) #4
  br label %lean_del_object.exit570

lean_del_object.exit570:                          ; preds = %lean_dec_ref.exit368, %bb.fx
  %i.iu = ptrtoint ptr %.0299 to i64
  %i.iv = and i64 %i.iu, 1
  %.not.i571 = icmp eq i64 %i.iv, 0
  br i1 %.not.i571, label %bb.fy, label %lean_del_object.exit572

bb.fy:                                            ; preds = %lean_del_object.exit570
  tail call void @lean_free_object(ptr noundef nonnull %.0299) #4
  br label %lean_del_object.exit572

lean_del_object.exit572:                          ; preds = %lean_del_object.exit570, %bb.fy
  br i1 %.not.i418, label %bb.fz, label %lean_dec.exit454

bb.fz:                                            ; preds = %lean_del_object.exit572
  %i.iw = load i32, ptr %i.d, align 4, !tbaa !14  ; 3 uses
  %i.ix = icmp sgt i32 %i.iw, 1
  br i1 %i.ix, label %bb.ga, label %bb.gb, !prof !15

bb.ga:                                            ; preds = %bb.fz
  %i.iy = add nsw i32 %i.iw, -1
  store i32 %i.iy, ptr %i.d, align 4, !tbaa !14
  br label %lean_dec.exit454

bb.gb:                                            ; preds = %bb.fz
  %.not.i.i452 = icmp eq i32 %i.iw, 0
  br i1 %.not.i.i452, label %lean_dec.exit454, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #4
  br label %lean_dec.exit454

lean_dec.exit454:                                 ; preds = %bb.ga, %bb.gb, %bb.gc, %lean_del_object.exit572
  %i.iz = load i32, ptr %5, align 4, !tbaa !14    ; 3 uses
end_hunk_4
begin_hunk_5_@l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_propagateEqUp_spec__1___redArg:bb.a
  %i.fs = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Meta_Grind_propagateEqUp_spec__0_spec__0___redArg(ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00__private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_propagateEqUp_spec__1_spec__2___redArg___closed__4_value, i8 noundef zeroext 0, ptr noundef %i.eq, ptr noundef nonnull %i.fe, i8 noundef zeroext 0, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16) ; 2 uses
  %.pre = ptrtoint ptr %i.fs to i64
  br label %bb.je

bb.de:                                            ; preds = %lean_obj_tag.exit545
  %i.ft = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.fu = icmp sgt i32 %i.ft, 1
  br i1 %i.fu, label %bb.df, label %bb.dg, !prof !15

bb.df:                                            ; preds = %bb.de
  %i.fv = add nsw i32 %i.ft, -1
  store i32 %i.fv, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit394

bb.dg:                                            ; preds = %bb.de
  %.not.i393 = icmp eq i32 %i.ft, 0
  br i1 %.not.i393, label %lean_dec_ref.exit394, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #4
  br label %lean_dec_ref.exit394

lean_dec_ref.exit394:                             ; preds = %bb.df, %bb.dg, %bb.dh
  %i.fw = load i32, ptr %i.ax, align 4, !tbaa !14 ; 3 uses
  %i.fx = icmp sgt i32 %i.fw, 1
  br i1 %i.fx, label %bb.di, label %bb.dj, !prof !15

bb.di:                                            ; preds = %lean_dec_ref.exit394
  %i.fy = add nsw i32 %i.fw, -1
  store i32 %i.fy, ptr %i.ax, align 4, !tbaa !14
  br label %lean_dec_ref.exit392

bb.dj:                                            ; preds = %lean_dec_ref.exit394
  %.not.i391 = icmp eq i32 %i.fw, 0
  br i1 %.not.i391, label %lean_dec_ref.exit392, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref.exit392

lean_dec_ref.exit392:                             ; preds = %bb.di, %bb.dj, %bb.dk
  %i.fz = load i32, ptr %4, align 4, !tbaa !14    ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 1
  br i1 %i.ga, label %bb.dl, label %bb.dm, !prof !15

bb.dl:                                            ; preds = %lean_dec_ref.exit392
  %i.gb = add nsw i32 %i.fz, -1
  store i32 %i.gb, ptr %4, align 4, !tbaa !14
  br label %lean_dec_ref.exit390

bb.dm:                                            ; preds = %lean_dec_ref.exit392
  %.not.i389 = icmp eq i32 %i.fz, 0
  br i1 %.not.i389, label %lean_dec_ref.exit390, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit390

lean_dec_ref.exit390:                             ; preds = %bb.dl, %bb.dm, %bb.dn
  %i.gc = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.do, label %bb.dp, !prof !15

bb.do:                                            ; preds = %lean_dec_ref.exit390
  %i.ge = add nsw i32 %i.gc, -1
  store i32 %i.ge, ptr %0, align 4, !tbaa !14
  br label %bb.je

bb.dp:                                            ; preds = %lean_dec_ref.exit390
  %.not.i387 = icmp eq i32 %i.gc, 0
  br i1 %.not.i387, label %bb.je, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %bb.je

bb.dr:                                            ; preds = %lean_obj_tag.exit522
  %i.gf = load i32, ptr %i.ax, align 4, !tbaa !14 ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %bb.ds, label %bb.dt, !prof !15

bb.ds:                                            ; preds = %bb.dr
  %i.gh = add nsw i32 %i.gf, -1
  store i32 %i.gh, ptr %i.ax, align 4, !tbaa !14
  br label %lean_dec_ref.exit386

bb.dt:                                            ; preds = %bb.dr
  %.not.i385 = icmp eq i32 %i.gf, 0
  br i1 %.not.i385, label %lean_dec_ref.exit386, label %bb.du

bb.du:                                            ; preds = %bb.dt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref.exit386

lean_dec_ref.exit386:                             ; preds = %bb.ds, %bb.dt, %bb.du
  br i1 %.not.i519, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %lean_dec_ref.exit386
  %i.gi = lshr i64 %i.cj, 1
  %i.gj = trunc i64 %i.gi to i32
  br label %lean_obj_tag.exit552

bb.dw:                                            ; preds = %lean_dec_ref.exit386
  %i.gk = getelementptr i8, ptr %i.ci, i64 4
  %.val.i551 = load i32, ptr %i.gk, align 4
  %i.gl = lshr i32 %.val.i551, 24
  br label %lean_obj_tag.exit552

lean_obj_tag.exit552:                             ; preds = %bb.dv, %bb.dw
  %.0.i550 = phi i32 [ %i.gj, %bb.dv ], [ %i.gl, %bb.dw ]
  %i.gm = icmp eq i32 %.0.i550, 0
  br i1 %i.gm, label %bb.dx, label %bb.fk

bb.dx:                                            ; preds = %lean_obj_tag.exit552
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !12 ; 10 uses
  %i.gp = ptrtoint ptr %i.go to i64               ; 3 uses
  %i.gq = and i64 %i.gp, 1
  %.not.i416 = icmp eq i64 %i.gq, 0               ; 3 uses
  br i1 %.not.i416, label %bb.dy, label %lean_inc.exit417

bb.dy:                                            ; preds = %bb.dx
  %.val.i.i553 = load i32, ptr %i.go, align 4, !tbaa !14 ; 3 uses
  %i.gr = icmp sgt i32 %.val.i.i553, 0
  br i1 %i.gr, label %bb.dz, label %bb.ea, !prof !15

bb.dz:                                            ; preds = %bb.dy
  %i.gs = add nuw i32 %.val.i.i553, 1
  store i32 %i.gs, ptr %i.go, align 4, !tbaa !14
  br label %lean_inc.exit417

bb.ea:                                            ; preds = %bb.dy
  %.not.i.i554 = icmp eq i32 %.val.i.i553, 0
  br i1 %.not.i.i554, label %lean_inc.exit417, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.gt = atomicrmw sub ptr %i.go, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit417

lean_inc.exit417:                                 ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dx
  %.val.i556 = load i32, ptr %i.ci, align 8, !tbaa !14 ; 4 uses
  %i.gu = icmp eq i32 %.val.i556, 1
  br i1 %i.gu, label %.preheader.i559, label %bb.eg

.preheader.i559:                                  ; preds = %lean_inc.exit417
  %i.gv = load ptr, ptr %i.gn, align 8, !tbaa !12 ; 4 uses
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = and i64 %i.gw, 1
  %.not.i7.i560 = icmp eq i64 %i.gx, 0
  br i1 %.not.i7.i560, label %bb.ec, label %lean_dec.exit.i561

bb.ec:                                            ; preds = %.preheader.i559
  %i.gy = load i32, ptr %i.gv, align 4, !tbaa !14 ; 3 uses
  %i.gz = icmp sgt i32 %i.gy, 1
  br i1 %i.gz, label %bb.ed, label %bb.ee, !prof !15

bb.ed:                                            ; preds = %bb.ec
  %i.ha = add nsw i32 %i.gy, -1
  store i32 %i.ha, ptr %i.gv, align 4, !tbaa !14
  br label %lean_dec.exit.i561

bb.ee:                                            ; preds = %bb.ec
  %.not.i.i.i562 = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i.i562, label %lean_dec.exit.i561, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gv) #4
  br label %lean_dec.exit.i561

lean_dec.exit.i561:                               ; preds = %bb.ef, %bb.ee, %bb.ed, %.preheader.i559
  tail call void @lean_free_object(ptr noundef nonnull %i.ci) #4
  br label %lean_dec_ref_known.exit563

bb.eg:                                            ; preds = %lean_inc.exit417
  %i.hb = icmp sgt i32 %.val.i556, 1
  br i1 %i.hb, label %bb.eh, label %bb.ei, !prof !15

bb.eh:                                            ; preds = %bb.eg
  %i.hc = add nsw i32 %.val.i556, -1
  store i32 %i.hc, ptr %i.ci, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit563

bb.ei:                                            ; preds = %bb.eg
  %.not.i.i557 = icmp eq i32 %.val.i556, 0
  br i1 %.not.i.i557, label %lean_dec_ref_known.exit563, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #4
  br label %lean_dec_ref_known.exit563

lean_dec_ref_known.exit563:                       ; preds = %lean_dec.exit.i561, %bb.eh, %bb.ei, %bb.ej
  %i.hd = lshr i64 %i.gp, 1
  %i.he = and i64 %i.gp, 510
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %bb.ek, label %bb.ep

bb.ek:                                            ; preds = %lean_dec_ref_known.exit563
  br i1 %.not.i416, label %bb.el, label %lean_dec.exit468

bb.el:                                            ; preds = %bb.ek
  %i.hg = load i32, ptr %i.go, align 4, !tbaa !14 ; 3 uses
  %i.hh = icmp sgt i32 %i.hg, 1
  br i1 %i.hh, label %bb.em, label %bb.en, !prof !15

bb.em:                                            ; preds = %bb.el
  %i.hi = add nsw i32 %i.hg, -1
  store i32 %i.hi, ptr %i.go, align 4, !tbaa !14
  br label %lean_dec.exit468

bb.en:                                            ; preds = %bb.el
  %.not.i.i466 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i466, label %lean_dec.exit468, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.go) #4
  br label %lean_dec.exit468

lean_dec.exit468:                                 ; preds = %bb.em, %bb.en, %bb.eo, %bb.ek
  %i.hj = ptrtoint ptr %.0309 to i64
  %i.hk = and i64 %i.hj, 1
  %.not.i564 = icmp eq i64 %i.hk, 0
  br i1 %.not.i564, label %lean_del_object.exit.sink.split, label %lean_del_object.exit

bb.ep:                                            ; preds = %lean_dec_ref_known.exit563
  %i.hl = load i32, ptr %i.bc, align 4, !tbaa !14 ; 3 uses
  %i.hm = icmp sgt i32 %i.hl, 1
  br i1 %i.hm, label %bb.eq, label %bb.er, !prof !15

bb.eq:                                            ; preds = %bb.ep
  %i.hn = add nsw i32 %i.hl, -1
  store i32 %i.hn, ptr %i.bc, align 4, !tbaa !14
  br label %lean_dec_ref.exit384

bb.er:                                            ; preds = %bb.ep
  %.not.i383 = icmp eq i32 %i.hl, 0
  br i1 %.not.i383, label %lean_dec_ref.exit384, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bc) #4
  br label %lean_dec_ref.exit384

lean_dec_ref.exit384:                             ; preds = %bb.eq, %bb.er, %bb.es
  %i.ho = ptrtoint ptr %.0343 to i64
  %i.hp = and i64 %i.ho, 1
  %.not.i566 = icmp eq i64 %i.hp, 0
  br i1 %.not.i566, label %bb.et, label %lean_del_object.exit567

bb.et:                                            ; preds = %lean_dec_ref.exit384
  tail call void @lean_free_object(ptr noundef nonnull %.0343) #4
  br label %lean_del_object.exit567

lean_del_object.exit567:                          ; preds = %lean_dec_ref.exit384, %bb.et
  %i.hq = load i32, ptr %5, align 4, !tbaa !14    ; 3 uses
  %i.hr = icmp sgt i32 %i.hq, 1
  br i1 %i.hr, label %bb.eu, label %bb.ev, !prof !15

bb.eu:                                            ; preds = %lean_del_object.exit567
  %i.hs = add nsw i32 %i.hq, -1
  store i32 %i.hs, ptr %5, align 4, !tbaa !14
  br label %lean_dec_ref.exit382

bb.ev:                                            ; preds = %lean_del_object.exit567
  %.not.i381 = icmp eq i32 %i.hq, 0
  br i1 %.not.i381, label %lean_dec_ref.exit382, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit382

lean_dec_ref.exit382:                             ; preds = %bb.eu, %bb.ev, %bb.ew
  %i.ht = load i32, ptr %4, align 4, !tbaa !14    ; 3 uses
  %i.hu = icmp sgt i32 %i.ht, 1
  br i1 %i.hu, label %bb.ex, label %bb.ey, !prof !15

bb.ex:                                            ; preds = %lean_dec_ref.exit382
  %i.hv = add nsw i32 %i.ht, -1
  store i32 %i.hv, ptr %4, align 4, !tbaa !14
  br label %lean_dec_ref.exit380

bb.ey:                                            ; preds = %lean_dec_ref.exit382
  %.not.i379 = icmp eq i32 %i.ht, 0
  br i1 %.not.i379, label %lean_dec_ref.exit380, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit380

lean_dec_ref.exit380:                             ; preds = %bb.ex, %bb.ey, %bb.ez
  %i.hw = load i32, ptr %1, align 8, !tbaa !14    ; 3 uses
  %i.hx = icmp sgt i32 %i.hw, 1
  br i1 %i.hx, label %bb.fa, label %bb.fb, !prof !15

bb.fa:                                            ; preds = %lean_dec_ref.exit380
  %i.hy = add nsw i32 %i.hw, -1
  store i32 %i.hy, ptr %1, align 8, !tbaa !14
  br label %lean_dec_ref.exit378

bb.fb:                                            ; preds = %lean_dec_ref.exit380
  %.not.i377 = icmp eq i32 %i.hw, 0
  br i1 %.not.i377, label %lean_dec_ref.exit378, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit378

lean_dec_ref.exit378:                             ; preds = %bb.fa, %bb.fb, %bb.fc
  %i.hz = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.ia = icmp sgt i32 %i.hz, 1
  br i1 %i.ia, label %bb.fd, label %bb.fe, !prof !15

bb.fd:                                            ; preds = %lean_dec_ref.exit378
  %i.ib = add nsw i32 %i.hz, -1
  store i32 %i.ib, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit376

bb.fe:                                            ; preds = %lean_dec_ref.exit378
  %.not.i375 = icmp eq i32 %i.hz, 0
  br i1 %.not.i375, label %lean_dec_ref.exit376, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit376

lean_dec_ref.exit376:                             ; preds = %bb.fd, %bb.fe, %bb.ff
  %i.ic = trunc i64 %i.hd to i8                   ; 4 uses
  br i1 %.not.i416, label %bb.fg, label %.thread635

bb.fg:                                            ; preds = %lean_dec_ref.exit376
  %i.id = load i32, ptr %i.go, align 4, !tbaa !14 ; 3 uses
  %i.ie = icmp sgt i32 %i.id, 1
  br i1 %i.ie, label %bb.fh, label %bb.fi, !prof !15

bb.fh:                                            ; preds = %bb.fg
  %i.if = add nsw i32 %i.id, -1
  store i32 %i.if, ptr %i.go, align 4, !tbaa !14
  br label %.thread635

bb.fi:                                            ; preds = %bb.fg
  %.not.i.i462 = icmp eq i32 %i.id, 0
  br i1 %.not.i.i462, label %.thread635, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.go) #4
  br label %.thread635

bb.fk:                                            ; preds = %lean_obj_tag.exit552
  %i.ig = load i32, ptr %i.bc, align 4, !tbaa !14 ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %bb.fl, label %bb.fm, !prof !15

bb.fl:                                            ; preds = %bb.fk
  %i.ii = add nsw i32 %i.ig, -1
  store i32 %i.ii, ptr %i.bc, align 4, !tbaa !14
  br label %lean_dec_ref.exit374

bb.fm:                                            ; preds = %bb.fk
  %.not.i373 = icmp eq i32 %i.ig, 0
  br i1 %.not.i373, label %lean_dec_ref.exit374, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bc) #4
  br label %lean_dec_ref.exit374

lean_dec_ref.exit374:                             ; preds = %bb.fl, %bb.fm, %bb.fn
  %i.ij = ptrtoint ptr %.0343 to i64
  %i.ik = and i64 %i.ij, 1
  %.not.i568 = icmp eq i64 %i.ik, 0
  br i1 %.not.i568, label %bb.fo, label %lean_del_object.exit569

bb.fo:                                            ; preds = %lean_dec_ref.exit374
  tail call void @lean_free_object(ptr noundef nonnull %.0343) #4
  br label %lean_del_object.exit569

lean_del_object.exit569:                          ; preds = %lean_dec_ref.exit374, %bb.fo
  %i.il = ptrtoint ptr %.0309 to i64
  %i.im = and i64 %i.il, 1
  %.not.i570 = icmp eq i64 %i.im, 0
  br i1 %.not.i570, label %bb.fp, label %lean_del_object.exit571

bb.fp:                                            ; preds = %lean_del_object.exit569
  tail call void @lean_free_object(ptr noundef nonnull %.0309) #4
  br label %lean_del_object.exit571

lean_del_object.exit571:                          ; preds = %lean_del_object.exit569, %bb.fp
  br i1 %.not.i424, label %bb.fq, label %lean_dec.exit460

bb.fq:                                            ; preds = %lean_del_object.exit571
  %i.in = load i32, ptr %i.c, align 4, !tbaa !14  ; 3 uses
  %i.io = icmp sgt i32 %i.in, 1
  br i1 %i.io, label %bb.fr, label %bb.fs, !prof !15

bb.fr:                                            ; preds = %bb.fq
  %i.ip = add nsw i32 %i.in, -1
  store i32 %i.ip, ptr %i.c, align 4, !tbaa !14
  br label %lean_dec.exit460

bb.fs:                                            ; preds = %bb.fq
  %.not.i.i458 = icmp eq i32 %i.in, 0
  br i1 %.not.i.i458, label %lean_dec.exit460, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #4
  br label %lean_dec.exit460

lean_dec.exit460:                                 ; preds = %bb.fr, %bb.fs, %bb.ft, %lean_del_object.exit571
  %i.iq = load i32, ptr %5, align 4, !tbaa !14    ; 3 uses
  %i.ir = icmp sgt i32 %i.iq, 1
end_hunk_5
begin_hunk_6_@l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_propagateEqUp_spec__2___redArg:bb.a
  %i.bz = getelementptr i8, ptr %i.bu, i64 4
  %.val.i335 = load i32, ptr %i.bz, align 4
  %i.ca = lshr i32 %.val.i335, 24
  br label %lean_obj_tag.exit336

lean_obj_tag.exit336:                             ; preds = %bb.ba, %bb.bb
  %.0.i334 = phi i32 [ %i.by, %bb.ba ], [ %i.ca, %bb.bb ]
  %i.cb = icmp eq i32 %.0.i334, 0
  br i1 %i.cb, label %bb.bc, label %bb.dl

bb.bc:                                            ; preds = %lean_obj_tag.exit336
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !12 ; 14 uses
  %.val311 = load i32, ptr %i.bu, align 8, !tbaa !14
  %i.ce = icmp eq i32 %.val311, 1                 ; 2 uses
  br i1 %i.ce, label %lean_dec.exit289, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = and i64 %i.cf, 1
  %.not.i257 = icmp eq i64 %i.cg, 0
  br i1 %.not.i257, label %bb.be, label %lean_inc.exit258

bb.be:                                            ; preds = %bb.bd
  %.val.i.i337 = load i32, ptr %i.cd, align 4, !tbaa !14 ; 3 uses
  %i.ch = icmp sgt i32 %.val.i.i337, 0
  br i1 %i.ch, label %bb.bf, label %bb.bg, !prof !15

bb.bf:                                            ; preds = %bb.be
  %i.ci = add nuw i32 %.val.i.i337, 1
  store i32 %i.ci, ptr %i.cd, align 4, !tbaa !14
  br label %lean_inc.exit258

bb.bg:                                            ; preds = %bb.be
  %.not.i.i338 = icmp eq i32 %.val.i.i337, 0
  br i1 %.not.i.i338, label %lean_inc.exit258, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cj = atomicrmw sub ptr %i.cd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit258

lean_inc.exit258:                                 ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bd
  br i1 %.not.i333, label %bb.bi, label %lean_dec.exit289

bb.bi:                                            ; preds = %lean_inc.exit258
  %i.ck = load i32, ptr %i.bu, align 8, !tbaa !14 ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 1
  br i1 %i.cl, label %bb.bj, label %bb.bk, !prof !15

bb.bj:                                            ; preds = %bb.bi
  %i.cm = add nsw i32 %i.ck, -1
  store i32 %i.cm, ptr %i.bu, align 8, !tbaa !14
  br label %lean_dec.exit289

bb.bk:                                            ; preds = %bb.bi
  %.not.i.i287 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i287, label %lean_dec.exit289, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bu) #4
  br label %lean_dec.exit289

lean_dec.exit289:                                 ; preds = %lean_inc.exit258, %bb.bl, %bb.bk, %bb.bj, %bb.bc
  %.0210 = phi ptr [ %i.bu, %bb.bc ], [ inttoptr (i64 1 to ptr), %bb.bj ], [ inttoptr (i64 1 to ptr), %bb.bk ], [ inttoptr (i64 1 to ptr), %bb.bl ], [ inttoptr (i64 1 to ptr), %lean_inc.exit258 ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !12 ; 12 uses
  %.val310 = load i32, ptr %i.cd, align 8, !tbaa !14
  %i.cp = icmp eq i32 %.val310, 1                 ; 2 uses
  br i1 %i.cp, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %lean_dec.exit289
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !12 ; 4 uses
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 1
  %.not.i282 = icmp eq i64 %i.ct, 0
  br i1 %.not.i282, label %bb.bn, label %lean_dec.exit285

bb.bn:                                            ; preds = %bb.bm
  %i.cu = load i32, ptr %i.cr, align 4, !tbaa !14 ; 3 uses
  %i.cv = icmp sgt i32 %i.cu, 1
  br i1 %i.cv, label %bb.bo, label %bb.bp, !prof !15

bb.bo:                                            ; preds = %bb.bn
  %i.cw = add nsw i32 %i.cu, -1
  store i32 %i.cw, ptr %i.cr, align 4, !tbaa !14
  br label %lean_dec.exit285

bb.bp:                                            ; preds = %bb.bn
  %.not.i.i283 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i283, label %lean_dec.exit285, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cr) #4
  br label %lean_dec.exit285

bb.br:                                            ; preds = %lean_dec.exit289
  %i.cx = ptrtoint ptr %i.co to i64
  %i.cy = and i64 %i.cx, 1
  %.not.i255 = icmp eq i64 %i.cy, 0
  br i1 %.not.i255, label %bb.bs, label %lean_inc.exit256

bb.bs:                                            ; preds = %bb.br
  %.val.i.i340 = load i32, ptr %i.co, align 4, !tbaa !14 ; 3 uses
  %i.cz = icmp sgt i32 %.val.i.i340, 0
  br i1 %i.cz, label %bb.bt, label %bb.bu, !prof !15

bb.bt:                                            ; preds = %bb.bs
  %i.da = add nuw i32 %.val.i.i340, 1
  store i32 %i.da, ptr %i.co, align 4, !tbaa !14
  br label %lean_inc.exit256

bb.bu:                                            ; preds = %bb.bs
  %.not.i.i341 = icmp eq i32 %.val.i.i340, 0
  br i1 %.not.i.i341, label %lean_inc.exit256, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.db = atomicrmw sub ptr %i.co, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit256

lean_inc.exit256:                                 ; preds = %bb.br, %bb.bt, %bb.bu, %bb.bv
  %i.dc = load i32, ptr %i.cd, align 8, !tbaa !14 ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 1
  br i1 %i.dd, label %bb.bw, label %bb.bx, !prof !15

bb.bw:                                            ; preds = %lean_inc.exit256
  %i.de = add nsw i32 %i.dc, -1
  store i32 %i.de, ptr %i.cd, align 8, !tbaa !14
  br label %lean_dec.exit285

bb.bx:                                            ; preds = %lean_inc.exit256
  %.not.i.i279 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i279, label %lean_dec.exit285, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #4
  br label %lean_dec.exit285

lean_dec.exit285:                                 ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bm, %bb.bq, %bb.bp, %bb.bo
  %.0208 = phi ptr [ %i.cd, %bb.bm ], [ %i.cd, %bb.bo ], [ %i.cd, %bb.bp ], [ %i.cd, %bb.bq ], [ inttoptr (i64 1 to ptr), %bb.bw ], [ inttoptr (i64 1 to ptr), %bb.bx ], [ inttoptr (i64 1 to ptr), %bb.by ] ; 5 uses
  %i.df = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.dg = and i64 %i.df, 1
  %.not.i343 = icmp eq i64 %i.dg, 0
  br i1 %.not.i343, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %lean_dec.exit285
  %i.dh = lshr i64 %i.df, 1
  %i.di = trunc i64 %i.dh to i32
  br label %lean_obj_tag.exit346

bb.ca:                                            ; preds = %lean_dec.exit285
  %i.dj = getelementptr i8, ptr %i.co, i64 4
  %.val.i345 = load i32, ptr %i.dj, align 4
  %i.dk = lshr i32 %.val.i345, 24
  br label %lean_obj_tag.exit346

lean_obj_tag.exit346:                             ; preds = %bb.bz, %bb.ca
  %.0.i344 = phi i32 [ %i.di, %bb.bz ], [ %i.dk, %bb.ca ]
  %i.dl = icmp eq i32 %.0.i344, 0
  br i1 %i.dl, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %lean_obj_tag.exit346
  %i.dm = ptrtoint ptr %.0208 to i64
  %i.dn = and i64 %i.dm, 1
  %.not.i347 = icmp eq i64 %i.dn, 0
  br i1 %.not.i347, label %bb.cc, label %lean_del_object.exit

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_free_object(ptr noundef nonnull %.0208) #4
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.cb, %bb.cc
  %i.do = ptrtoint ptr %.0210 to i64
  %i.dp = and i64 %i.do, 1
  %.not.i348 = icmp eq i64 %i.dp, 0
  br i1 %.not.i348, label %bb.cd, label %lean_dec.exit293

bb.cd:                                            ; preds = %lean_del_object.exit
  tail call void @lean_free_object(ptr noundef nonnull %.0210) #4
  br label %lean_dec.exit293

bb.ce:                                            ; preds = %lean_obj_tag.exit346
  %i.dq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !12 ; 4 uses
  %i.ds = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.dt = and i64 %i.ds, 510
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.cf, label %bb.cq

bb.cf:                                            ; preds = %bb.ce
  %.val.i350 = load i32, ptr %i.co, align 8, !tbaa !14 ; 4 uses
  %i.dv = icmp eq i32 %.val.i350, 1
  br i1 %i.dv, label %.preheader.i, label %bb.ck

.preheader.i:                                     ; preds = %bb.cf
  %i.dw = and i64 %i.ds, 1
  %.not.i7.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i7.i, label %bb.cg, label %lean_dec.exit.i

bb.cg:                                            ; preds = %.preheader.i
  %i.dx = load i32, ptr %i.dr, align 4, !tbaa !14 ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 1
  br i1 %i.dy, label %bb.ch, label %bb.ci, !prof !15

bb.ch:                                            ; preds = %bb.cg
  %i.dz = add nsw i32 %i.dx, -1
  store i32 %i.dz, ptr %i.dr, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.ci:                                            ; preds = %bb.cg
  %.not.i.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dr) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.cj, %bb.ci, %bb.ch, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.co) #4
  br label %lean_dec_ref_known.exit

bb.ck:                                            ; preds = %bb.cf
  %i.ea = icmp sgt i32 %.val.i350, 1
  br i1 %i.ea, label %bb.cl, label %bb.cm, !prof !15

bb.cl:                                            ; preds = %bb.ck
  %i.eb = add nsw i32 %.val.i350, -1
  store i32 %i.eb, ptr %i.co, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.cm:                                            ; preds = %bb.ck
  %.not.i.i351 = icmp eq i32 %.val.i350, 0
  br i1 %.not.i.i351, label %lean_dec_ref_known.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.co) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.cl, %bb.cm, %bb.cn
  %i.ec = ptrtoint ptr %.0208 to i64
  %i.ed = and i64 %i.ec, 1
  %.not.i353 = icmp eq i64 %i.ed, 0
  br i1 %.not.i353, label %bb.co, label %lean_del_object.exit354

bb.co:                                            ; preds = %lean_dec_ref_known.exit
  tail call void @lean_free_object(ptr noundef nonnull %.0208) #4
  br label %lean_del_object.exit354

lean_del_object.exit354:                          ; preds = %lean_dec_ref_known.exit, %bb.co
  %i.ee = ptrtoint ptr %.0210 to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i355 = icmp eq i64 %i.ef, 0
  br i1 %.not.i355, label %bb.cp, label %lean_dec.exit293

bb.cp:                                            ; preds = %lean_del_object.exit354
  tail call void @lean_free_object(ptr noundef nonnull %.0210) #4
  br label %lean_dec.exit293

bb.cq:                                            ; preds = %bb.ce
  %i.eg = load i32, ptr %i.ax, align 4, !tbaa !14 ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 1
  br i1 %i.eh, label %bb.cr, label %bb.cs, !prof !15

bb.cr:                                            ; preds = %bb.cq
  %i.ei = add nsw i32 %i.eg, -1
  store i32 %i.ei, ptr %i.ax, align 4, !tbaa !14
  br label %lean_dec_ref.exit253

bb.cs:                                            ; preds = %bb.cq
  %.not.i252 = icmp eq i32 %i.eg, 0
  br i1 %.not.i252, label %lean_dec_ref.exit253, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref.exit253

lean_dec_ref.exit253:                             ; preds = %bb.cr, %bb.cs, %bb.ct
  %i.ej = ptrtoint ptr %.0212 to i64
  %i.ek = and i64 %i.ej, 1
  %.not.i357 = icmp eq i64 %i.ek, 0
  br i1 %.not.i357, label %bb.cu, label %lean_del_object.exit358

bb.cu:                                            ; preds = %lean_dec_ref.exit253
  tail call void @lean_free_object(ptr noundef nonnull %.0212) #4
  br label %lean_del_object.exit358

lean_del_object.exit358:                          ; preds = %lean_dec_ref.exit253, %bb.cu
  %i.el = ptrtoint ptr %.0203 to i64
  %i.em = and i64 %i.el, 1
  %.not.i359 = icmp eq i64 %i.em, 0
  br i1 %.not.i359, label %bb.cv, label %lean_del_object.exit360

bb.cv:                                            ; preds = %lean_del_object.exit358
  tail call void @lean_free_object(ptr noundef nonnull %.0203) #4
  br label %lean_del_object.exit360

lean_del_object.exit360:                          ; preds = %lean_del_object.exit358, %bb.cv
  %i.en = load i32, ptr %4, align 4, !tbaa !14    ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %bb.cw, label %bb.cx, !prof !15

bb.cw:                                            ; preds = %lean_del_object.exit360
  %i.ep = add nsw i32 %i.en, -1
  store i32 %i.ep, ptr %4, align 4, !tbaa !14
  br label %lean_dec_ref.exit251

bb.cx:                                            ; preds = %lean_del_object.exit360
  %.not.i250 = icmp eq i32 %i.en, 0
  br i1 %.not.i250, label %lean_dec_ref.exit251, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit251

lean_dec_ref.exit251:                             ; preds = %bb.cw, %bb.cx, %bb.cy
  %i.eq = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.er = icmp sgt i32 %i.eq, 1
  br i1 %i.er, label %bb.cz, label %bb.da, !prof !15

bb.cz:                                            ; preds = %lean_dec_ref.exit251
  %i.es = add nsw i32 %i.eq, -1
  store i32 %i.es, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit249

bb.da:                                            ; preds = %lean_dec_ref.exit251
  %.not.i248 = icmp eq i32 %i.eq, 0
  br i1 %.not.i248, label %lean_dec_ref.exit249, label %bb.db

bb.db:                                            ; preds = %bb.da
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit249

lean_dec_ref.exit249:                             ; preds = %bb.cz, %bb.da, %bb.db
  %i.et = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 1
  br i1 %i.eu, label %bb.dc, label %bb.dd, !prof !15

bb.dc:                                            ; preds = %lean_dec_ref.exit249
  %i.ev = add nsw i32 %i.et, -1
  store i32 %i.ev, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit247

bb.dd:                                            ; preds = %lean_dec_ref.exit249
  %.not.i246 = icmp eq i32 %i.et, 0
  br i1 %.not.i246, label %lean_dec_ref.exit247, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit247

lean_dec_ref.exit247:                             ; preds = %bb.dc, %bb.dd, %bb.de
  br i1 %i.cp, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %lean_dec_ref.exit247
  tail call void @lean_inc_heartbeat() #4
  %i.ew = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #4 ; 5 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.dg, label %lean_alloc_ctor.exit361

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit361:                          ; preds = %bb.df
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store i32 1, ptr %i.ew, align 4, !tbaa !14
  store i32 131096, ptr %i.ey, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.co, ptr %i.ez, align 8, !tbaa !12
  br label %bb.dh

bb.dh:                                            ; preds = %lean_dec_ref.exit247, %lean_alloc_ctor.exit361
  %.sink604 = phi ptr [ %i.ew, %lean_alloc_ctor.exit361 ], [ %.0208, %lean_dec_ref.exit247 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sink604, i64 16
  store ptr %i.c, ptr %i.fa, align 8, !tbaa !12
  br i1 %i.ce, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.fb = getelementptr inbounds nuw i8, ptr %.0210, i64 8
  store ptr %.sink604, ptr %i.fb, align 8, !tbaa !12
  br label %lean_del_object.exit349.thread

bb.dj:                                            ; preds = %bb.dh
  tail call void @lean_inc_heartbeat() #4
  %i.fc = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #4 ; 5 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.dk, label %lean_alloc_ctor.exit362

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit362:                          ; preds = %bb.dj
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i32 1, ptr %i.fc, align 4, !tbaa !14
  store i32 65552, ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %.sink604, ptr %i.ff, align 8, !tbaa !12
  br label %lean_del_object.exit349.thread

bb.dl:                                            ; preds = %lean_obj_tag.exit336
  %i.fg = load i32, ptr %i.ax, align 4, !tbaa !14 ; 3 uses
  %i.fh = icmp sgt i32 %i.fg, 1
  br i1 %i.fh, label %bb.dm, label %bb.dn, !prof !15

bb.dm:                                            ; preds = %bb.dl
  %i.fi = add nsw i32 %i.fg, -1
end_hunk_6
begin_hunk_7_@l_Lean_Meta_Grind_propagateEqUp:bb.a
lean_dec_ref.exit1924:                            ; preds = %bb.aag, %bb.aah, %bb.aai
  %i.agg = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !12 ; 5 uses
  %.val2431 = load i32, ptr %i.adn, align 8, !tbaa !14
  %i.agi = icmp eq i32 %.val2431, 1
  br i1 %i.agi, label %lean_dec.exit, label %bb.aaj

bb.aaj:                                           ; preds = %lean_dec_ref.exit1924
  %i.agj = ptrtoint ptr %i.agh to i64
  %i.agk = and i64 %i.agj, 1
  %.not.i2132 = icmp eq i64 %i.agk, 0
  br i1 %.not.i2132, label %bb.aak, label %lean_inc.exit2133

bb.aak:                                           ; preds = %bb.aaj
  %.val.i.i2721 = load i32, ptr %i.agh, align 4, !tbaa !14 ; 3 uses
  %i.agl = icmp sgt i32 %.val.i.i2721, 0
  br i1 %i.agl, label %bb.aal, label %bb.aam, !prof !15

bb.aal:                                           ; preds = %bb.aak
  %i.agm = add nuw i32 %.val.i.i2721, 1
  store i32 %i.agm, ptr %i.agh, align 4, !tbaa !14
  br label %lean_inc.exit2133

bb.aam:                                           ; preds = %bb.aak
  %.not.i.i2722 = icmp eq i32 %.val.i.i2721, 0
  br i1 %.not.i.i2722, label %lean_inc.exit2133, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.agn = atomicrmw sub ptr %i.agh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2133

lean_inc.exit2133:                                ; preds = %bb.aan, %bb.aam, %bb.aal, %bb.aaj
  br i1 %.not.i2701, label %bb.aao, label %bb.aas

bb.aao:                                           ; preds = %lean_inc.exit2133
  %i.ago = load i32, ptr %i.adn, align 8, !tbaa !14 ; 3 uses
  %i.agp = icmp sgt i32 %i.ago, 1
  br i1 %i.agp, label %bb.aap, label %bb.aaq, !prof !15

bb.aap:                                           ; preds = %bb.aao
  %i.agq = add nsw i32 %i.ago, -1
  store i32 %i.agq, ptr %i.adn, align 8, !tbaa !14
  br label %bb.aas

bb.aaq:                                           ; preds = %bb.aao
  %.not.i.i2320 = icmp eq i32 %i.ago, 0
  br i1 %.not.i.i2320, label %bb.aas, label %bb.aar

bb.aar:                                           ; preds = %bb.aaq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.adn) #4
  br label %bb.aas

bb.aas:                                           ; preds = %lean_inc.exit2133, %bb.aar, %bb.aaq, %bb.aap
  %i.agr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  store ptr %i.agh, ptr %i.ags, align 8, !tbaa !12
  br label %lean_dec.exit

lean_dec_ref.exit1980:                            ; preds = %bb.pi, %bb.ph, %bb.pg, %bb.iy, %bb.ix, %bb.iw, %bb.dw, %bb.dv, %bb.du, %bb.nh, %bb.gt, %bb.ds, %bb.pe, %bb.iu, %bb.tr, %bb.vq, %bb.vr, %bb.vs, %bb.vo
  %i.agt = tail call zeroext i8 @l_Lean_Expr_isConstOf(ptr noundef nonnull %i.ay, ptr noundef nonnull @l_Lean_Meta_Grind_propagateEqUp___closed__4_value) #4
  %i.agu = load i32, ptr %i.ay, align 4, !tbaa !14 ; 3 uses
  %i.agv = icmp sgt i32 %i.agu, 1
  br i1 %i.agv, label %bb.aat, label %bb.aau, !prof !15

bb.aat:                                           ; preds = %lean_dec_ref.exit1980
  %i.agw = add nsw i32 %i.agu, -1
  store i32 %i.agw, ptr %i.ay, align 4, !tbaa !14
  br label %lean_dec_ref.exit1922

bb.aau:                                           ; preds = %lean_dec_ref.exit1980
  %.not.i1921 = icmp eq i32 %i.agu, 0
  br i1 %.not.i1921, label %lean_dec_ref.exit1922, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #4
  br label %lean_dec_ref.exit1922

lean_dec_ref.exit1922:                            ; preds = %bb.aat, %bb.aau, %bb.aav
  %i.agx = icmp eq i8 %i.agt, 0
  %.val.i.i2724 = load i32, ptr %0, align 4, !tbaa !14 ; 5 uses
  %i.agy = icmp sgt i32 %.val.i.i2724, 0          ; 2 uses
  br i1 %i.agx, label %bb.aaw, label %bb.ako

bb.aaw:                                           ; preds = %lean_dec_ref.exit1922
  br i1 %i.agy, label %bb.aax, label %bb.aay, !prof !15

bb.aax:                                           ; preds = %bb.aaw
  %i.agz = add nuw i32 %.val.i.i2724, 1
  store i32 %i.agz, ptr %0, align 4, !tbaa !14
  br label %lean_inc_ref.exit2726

bb.aay:                                           ; preds = %bb.aaw
  %.not.i.i2725 = icmp eq i32 %.val.i.i2724, 0
  br i1 %.not.i.i2725, label %lean_inc_ref.exit2726, label %bb.aaz

bb.aaz:                                           ; preds = %bb.aay
  %i.aha = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2726

lean_inc_ref.exit2726:                            ; preds = %bb.aax, %bb.aay, %bb.aaz
  %i.ahb = tail call ptr @l_Lean_Meta_Grind_isEqFalse___redArg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 14 uses
  %i.ahc = ptrtoint ptr %i.ahb to i64             ; 2 uses
  %i.ahd = and i64 %i.ahc, 1
  %.not.i2727 = icmp eq i64 %i.ahd, 0             ; 3 uses
  br i1 %.not.i2727, label %bb.abb, label %bb.aba

bb.aba:                                           ; preds = %lean_inc_ref.exit2726
  %i.ahe = lshr i64 %i.ahc, 1
  %i.ahf = trunc i64 %i.ahe to i32
  br label %lean_obj_tag.exit2730

bb.abb:                                           ; preds = %lean_inc_ref.exit2726
  %i.ahg = getelementptr i8, ptr %i.ahb, i64 4
  %.val.i2729 = load i32, ptr %i.ahg, align 4
  %i.ahh = lshr i32 %.val.i2729, 24
  br label %lean_obj_tag.exit2730

lean_obj_tag.exit2730:                            ; preds = %bb.aba, %bb.abb
  %.0.i2728 = phi i32 [ %i.ahf, %bb.aba ], [ %i.ahh, %bb.abb ]
  %i.ahi = icmp eq i32 %.0.i2728, 0
  br i1 %i.ahi, label %bb.abc, label %bb.ajo

bb.abc:                                           ; preds = %lean_obj_tag.exit2730
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !12 ; 26 uses
  %.val2430 = load i32, ptr %i.ahb, align 8, !tbaa !14
  %i.ahl = icmp eq i32 %.val2430, 1               ; 2 uses
  %.pre2963 = ptrtoint ptr %i.ahk to i64          ; 9 uses
  br i1 %i.ahl, label %lean_dec.exit2318, label %bb.abd

bb.abd:                                           ; preds = %bb.abc
  %i.ahm = and i64 %.pre2963, 1
  %.not.i2130 = icmp eq i64 %i.ahm, 0
  br i1 %.not.i2130, label %bb.abe, label %lean_inc.exit2131

bb.abe:                                           ; preds = %bb.abd
  %.val.i.i2731 = load i32, ptr %i.ahk, align 4, !tbaa !14 ; 3 uses
  %i.ahn = icmp sgt i32 %.val.i.i2731, 0
  br i1 %i.ahn, label %bb.abf, label %bb.abg, !prof !15

bb.abf:                                           ; preds = %bb.abe
  %i.aho = add nuw i32 %.val.i.i2731, 1
  store i32 %i.aho, ptr %i.ahk, align 4, !tbaa !14
  br label %lean_inc.exit2131

bb.abg:                                           ; preds = %bb.abe
  %.not.i.i2732 = icmp eq i32 %.val.i.i2731, 0
  br i1 %.not.i.i2732, label %lean_inc.exit2131, label %bb.abh

bb.abh:                                           ; preds = %bb.abg
  %i.ahp = atomicrmw sub ptr %i.ahk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2131

lean_inc.exit2131:                                ; preds = %bb.abh, %bb.abg, %bb.abf, %bb.abd
  br i1 %.not.i2727, label %bb.abi, label %lean_dec.exit2318

bb.abi:                                           ; preds = %lean_inc.exit2131
  %i.ahq = load i32, ptr %i.ahb, align 8, !tbaa !14 ; 3 uses
  %i.ahr = icmp sgt i32 %i.ahq, 1
  br i1 %i.ahr, label %bb.abj, label %bb.abk, !prof !15

bb.abj:                                           ; preds = %bb.abi
  %i.ahs = add nsw i32 %i.ahq, -1
  store i32 %i.ahs, ptr %i.ahb, align 8, !tbaa !14
  br label %lean_dec.exit2318

bb.abk:                                           ; preds = %bb.abi
  %.not.i.i2316 = icmp eq i32 %i.ahq, 0
  br i1 %.not.i.i2316, label %lean_dec.exit2318, label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ahb) #4
  br label %lean_dec.exit2318

lean_dec.exit2318:                                ; preds = %bb.abc, %lean_inc.exit2131, %bb.abl, %bb.abk, %bb.abj
  %.01449 = phi ptr [ inttoptr (i64 1 to ptr), %bb.abj ], [ inttoptr (i64 1 to ptr), %lean_inc.exit2131 ], [ inttoptr (i64 1 to ptr), %bb.abl ], [ inttoptr (i64 1 to ptr), %bb.abk ], [ %i.ahb, %bb.abc ] ; 4 uses
  %i.aht = and i64 %.pre2963, 510
  %i.ahu = icmp eq i64 %i.aht, 0
  br i1 %i.ahu, label %bb.abm, label %bb.ais

bb.abm:                                           ; preds = %lean_dec.exit2318
  %i.ahv = ptrtoint ptr %.01449 to i64
  %i.ahw = and i64 %i.ahv, 1
  %.not.i2734 = icmp eq i64 %i.ahw, 0
  br i1 %.not.i2734, label %bb.abn, label %lean_del_object.exit

bb.abn:                                           ; preds = %bb.abm
  tail call void @lean_free_object(ptr noundef nonnull %.01449) #4
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.abm, %bb.abn
  %i.ahx = icmp eq i8 %.val2440, 0
  br i1 %i.ahx, label %bb.abo, label %bb.aci

bb.abo:                                           ; preds = %lean_del_object.exit
  %i.ahy = and i64 %.pre2963, 1
  %.not.i2311 = icmp eq i64 %i.ahy, 0
  br i1 %.not.i2311, label %bb.abp, label %lean_dec.exit2314

bb.abp:                                           ; preds = %bb.abo
  %i.ahz = load i32, ptr %i.ahk, align 4, !tbaa !14 ; 3 uses
  %i.aia = icmp sgt i32 %i.ahz, 1
  br i1 %i.aia, label %bb.abq, label %bb.abr, !prof !15

bb.abq:                                           ; preds = %bb.abp
  %i.aib = add nsw i32 %i.ahz, -1
  store i32 %i.aib, ptr %i.ahk, align 4, !tbaa !14
  br label %lean_dec.exit2314

bb.abr:                                           ; preds = %bb.abp
  %.not.i.i2312 = icmp eq i32 %i.ahz, 0
  br i1 %.not.i.i2312, label %lean_dec.exit2314, label %bb.abs

bb.abs:                                           ; preds = %bb.abr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ahk) #4
  br label %lean_dec.exit2314

lean_dec.exit2314:                                ; preds = %bb.abq, %bb.abr, %bb.abs, %bb.abo
  %i.aic = load i32, ptr %i.ev, align 4, !tbaa !14 ; 3 uses
  %i.aid = icmp sgt i32 %i.aic, 1
  br i1 %i.aid, label %bb.abt, label %bb.abu, !prof !15

bb.abt:                                           ; preds = %lean_dec.exit2314
  %i.aie = add nsw i32 %i.aic, -1
  store i32 %i.aie, ptr %i.ev, align 4, !tbaa !14
  br label %lean_dec_ref.exit1920

bb.abu:                                           ; preds = %lean_dec.exit2314
  %.not.i1919 = icmp eq i32 %i.aic, 0
  br i1 %.not.i1919, label %lean_dec_ref.exit1920, label %bb.abv

bb.abv:                                           ; preds = %bb.abu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec_ref.exit1920

lean_dec_ref.exit1920:                            ; preds = %bb.abt, %bb.abu, %bb.abv
  %i.aif = load i32, ptr %i.em, align 4, !tbaa !14 ; 3 uses
  %i.aig = icmp sgt i32 %i.aif, 1
  br i1 %i.aig, label %bb.abw, label %bb.abx, !prof !15

bb.abw:                                           ; preds = %lean_dec_ref.exit1920
  %i.aih = add nsw i32 %i.aif, -1
  store i32 %i.aih, ptr %i.em, align 4, !tbaa !14
  br label %lean_dec_ref.exit1918

bb.abx:                                           ; preds = %lean_dec_ref.exit1920
  %.not.i1917 = icmp eq i32 %i.aif, 0
  br i1 %.not.i1917, label %lean_dec_ref.exit1918, label %bb.aby

bb.aby:                                           ; preds = %bb.abx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #4
  br label %lean_dec_ref.exit1918

lean_dec_ref.exit1918:                            ; preds = %bb.abw, %bb.abx, %bb.aby
  %i.aii = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.aij = icmp sgt i32 %i.aii, 1
  br i1 %i.aij, label %bb.abz, label %bb.aca, !prof !15

bb.abz:                                           ; preds = %lean_dec_ref.exit1918
  %i.aik = add nsw i32 %i.aii, -1
  store i32 %i.aik, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit1916

bb.aca:                                           ; preds = %lean_dec_ref.exit1918
  %.not.i1915 = icmp eq i32 %i.aii, 0
  br i1 %.not.i1915, label %lean_dec_ref.exit1916, label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit1916

lean_dec_ref.exit1916:                            ; preds = %bb.abz, %bb.aca, %bb.acb
  %i.ail = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.aim = icmp sgt i32 %i.ail, 1
  br i1 %i.aim, label %bb.acc, label %bb.acd, !prof !15

bb.acc:                                           ; preds = %lean_dec_ref.exit1916
  %i.ain = add nsw i32 %i.ail, -1
  store i32 %i.ain, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit1914

bb.acd:                                           ; preds = %lean_dec_ref.exit1916
  %.not.i1913 = icmp eq i32 %i.ail, 0
  br i1 %.not.i1913, label %lean_dec_ref.exit1914, label %bb.ace

bb.ace:                                           ; preds = %bb.acd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit1914

lean_dec_ref.exit1914:                            ; preds = %bb.acc, %bb.acd, %bb.ace
  %i.aio = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.aip = icmp sgt i32 %i.aio, 1
  br i1 %i.aip, label %bb.acf, label %bb.acg, !prof !15

bb.acf:                                           ; preds = %lean_dec_ref.exit1914
  %i.aiq = add nsw i32 %i.aio, -1
  store i32 %i.aiq, ptr %0, align 4, !tbaa !14
  br label %bb.aww

bb.acg:                                           ; preds = %lean_dec_ref.exit1914
  %.not.i1911 = icmp eq i32 %i.aio, 0
  br i1 %.not.i1911, label %bb.aww, label %bb.ach

bb.ach:                                           ; preds = %bb.acg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %bb.aww

bb.aci:                                           ; preds = %lean_del_object.exit
  %i.air = icmp eq i8 %.val2439, 0
  br i1 %i.air, label %bb.acj, label %bb.add

bb.acj:                                           ; preds = %bb.aci
  %i.ais = and i64 %.pre2963, 1
  %.not.i2307 = icmp eq i64 %i.ais, 0
  br i1 %.not.i2307, label %bb.ack, label %lean_dec.exit2310

bb.ack:                                           ; preds = %bb.acj
  %i.ait = load i32, ptr %i.ahk, align 4, !tbaa !14 ; 3 uses
  %i.aiu = icmp sgt i32 %i.ait, 1
  br i1 %i.aiu, label %bb.acl, label %bb.acm, !prof !15

bb.acl:                                           ; preds = %bb.ack
  %i.aiv = add nsw i32 %i.ait, -1
  store i32 %i.aiv, ptr %i.ahk, align 4, !tbaa !14
  br label %lean_dec.exit2310

bb.acm:                                           ; preds = %bb.ack
  %.not.i.i2308 = icmp eq i32 %i.ait, 0
  br i1 %.not.i.i2308, label %lean_dec.exit2310, label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ahk) #4
  br label %lean_dec.exit2310

lean_dec.exit2310:                                ; preds = %bb.acl, %bb.acm, %bb.acn, %bb.acj
  %i.aiw = load i32, ptr %i.ev, align 4, !tbaa !14 ; 3 uses
  %i.aix = icmp sgt i32 %i.aiw, 1
  br i1 %i.aix, label %bb.aco, label %bb.acp, !prof !15

bb.aco:                                           ; preds = %lean_dec.exit2310
  %i.aiy = add nsw i32 %i.aiw, -1
  store i32 %i.aiy, ptr %i.ev, align 4, !tbaa !14
  br label %lean_dec_ref.exit1910

bb.acp:                                           ; preds = %lean_dec.exit2310
  %.not.i1909 = icmp eq i32 %i.aiw, 0
  br i1 %.not.i1909, label %lean_dec_ref.exit1910, label %bb.acq

bb.acq:                                           ; preds = %bb.acp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec_ref.exit1910

lean_dec_ref.exit1910:                            ; preds = %bb.aco, %bb.acp, %bb.acq
  %i.aiz = load i32, ptr %i.em, align 4, !tbaa !14 ; 3 uses
  %i.aja = icmp sgt i32 %i.aiz, 1
  br i1 %i.aja, label %bb.acr, label %bb.acs, !prof !15

bb.acr:                                           ; preds = %lean_dec_ref.exit1910
  %i.ajb = add nsw i32 %i.aiz, -1
  store i32 %i.ajb, ptr %i.em, align 4, !tbaa !14
  br label %lean_dec_ref.exit1908

bb.acs:                                           ; preds = %lean_dec_ref.exit1910
  %.not.i1907 = icmp eq i32 %i.aiz, 0
  br i1 %.not.i1907, label %lean_dec_ref.exit1908, label %bb.act

bb.act:                                           ; preds = %bb.acs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #4
  br label %lean_dec_ref.exit1908

lean_dec_ref.exit1908:                            ; preds = %bb.acr, %bb.acs, %bb.act
  %i.ajc = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.ajd = icmp sgt i32 %i.ajc, 1
  br i1 %i.ajd, label %bb.acu, label %bb.acv, !prof !15

bb.acu:                                           ; preds = %lean_dec_ref.exit1908
  %i.aje = add nsw i32 %i.ajc, -1
  store i32 %i.aje, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit1906

bb.acv:                                           ; preds = %lean_dec_ref.exit1908
  %.not.i1905 = icmp eq i32 %i.ajc, 0
  br i1 %.not.i1905, label %lean_dec_ref.exit1906, label %bb.acw

bb.acw:                                           ; preds = %bb.acv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit1906

lean_dec_ref.exit1906:                            ; preds = %bb.acu, %bb.acv, %bb.acw
  %i.ajf = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.ajg = icmp sgt i32 %i.ajf, 1
  br i1 %i.ajg, label %bb.acx, label %bb.acy, !prof !15

bb.acx:                                           ; preds = %lean_dec_ref.exit1906
  %i.ajh = add nsw i32 %i.ajf, -1
  store i32 %i.ajh, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit1904

bb.acy:                                           ; preds = %lean_dec_ref.exit1906
  %.not.i1903 = icmp eq i32 %i.ajf, 0
  br i1 %.not.i1903, label %lean_dec_ref.exit1904, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit1904

lean_dec_ref.exit1904:                            ; preds = %bb.acx, %bb.acy, %bb.acz
  %i.aji = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.ajj = icmp sgt i32 %i.aji, 1
  br i1 %i.ajj, label %bb.ada, label %bb.adb, !prof !15

bb.ada:                                           ; preds = %lean_dec_ref.exit1904
  %i.ajk = add nsw i32 %i.aji, -1
  store i32 %i.ajk, ptr %0, align 4, !tbaa !14
  br label %bb.aww

bb.adb:                                           ; preds = %lean_dec_ref.exit1904
  %.not.i1901 = icmp eq i32 %i.aji, 0
  br i1 %.not.i1901, label %bb.aww, label %bb.adc

bb.adc:                                           ; preds = %bb.adb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %bb.aww

bb.add:                                           ; preds = %bb.aci
  %i.ajl = tail call ptr @l_Lean_Expr_getAppFn(ptr noundef nonnull %i.em) #4 ; 4 uses
  %i.ajm = tail call ptr @l_Lean_Expr_getAppFn(ptr noundef nonnull %i.ev) #4 ; 4 uses
  %i.ajn = tail call zeroext i8 @lean_expr_eqv(ptr noundef %i.ajl, ptr noundef %i.ajm) #4
  %i.ajo = load i32, ptr %i.ajm, align 4, !tbaa !14 ; 3 uses
  %i.ajp = icmp sgt i32 %i.ajo, 1
  br i1 %i.ajp, label %bb.ade, label %bb.adf, !prof !15

bb.ade:                                           ; preds = %bb.add
  %i.ajq = add nsw i32 %i.ajo, -1
  store i32 %i.ajq, ptr %i.ajm, align 4, !tbaa !14
  br label %lean_dec_ref.exit1900

bb.adf:                                           ; preds = %bb.add
  %.not.i1899 = icmp eq i32 %i.ajo, 0
  br i1 %.not.i1899, label %lean_dec_ref.exit1900, label %bb.adg

bb.adg:                                           ; preds = %bb.adf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ajm) #4
  br label %lean_dec_ref.exit1900

lean_dec_ref.exit1900:                            ; preds = %bb.ade, %bb.adf, %bb.adg
  %i.ajr = load i32, ptr %i.ajl, align 4, !tbaa !14 ; 3 uses
  %i.ajs = icmp sgt i32 %i.ajr, 1
  br i1 %i.ajs, label %bb.adh, label %bb.adi, !prof !15

bb.adh:                                           ; preds = %lean_dec_ref.exit1900
  %i.ajt = add nsw i32 %i.ajr, -1
  store i32 %i.ajt, ptr %i.ajl, align 4, !tbaa !14
  br label %lean_dec_ref.exit1898

bb.adi:                                           ; preds = %lean_dec_ref.exit1900
  %.not.i1897 = icmp eq i32 %i.ajr, 0
  br i1 %.not.i1897, label %lean_dec_ref.exit1898, label %bb.adj

bb.adj:                                           ; preds = %bb.adi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ajl) #4
  br label %lean_dec_ref.exit1898

lean_dec_ref.exit1898:                            ; preds = %bb.adh, %bb.adi, %bb.adj
  %i.aju = icmp eq i8 %i.ajn, 0
  br i1 %i.aju, label %bb.adk, label %bb.ahy

bb.adk:                                           ; preds = %lean_dec_ref.exit1898
  %.val.i.i2735 = load i32, ptr %i.ev, align 4, !tbaa !14 ; 3 uses
  %i.ajv = icmp sgt i32 %.val.i.i2735, 0
  br i1 %i.ajv, label %bb.adl, label %bb.adm, !prof !15

bb.adl:                                           ; preds = %bb.adk
  %i.ajw = add nuw i32 %.val.i.i2735, 1
  store i32 %i.ajw, ptr %i.ev, align 4, !tbaa !14
  br label %lean_inc_ref.exit2737

bb.adm:                                           ; preds = %bb.adk
  %.not.i.i2736 = icmp eq i32 %.val.i.i2735, 0
  br i1 %.not.i.i2736, label %lean_inc_ref.exit2737, label %bb.adn

bb.adn:                                           ; preds = %bb.adm
  %i.ajx = atomicrmw sub ptr %i.ev, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2737

lean_inc_ref.exit2737:                            ; preds = %bb.adl, %bb.adm, %bb.adn
  %.val.i.i2738 = load i32, ptr %i.em, align 4, !tbaa !14 ; 3 uses
  %i.ajy = icmp sgt i32 %.val.i.i2738, 0
  br i1 %i.ajy, label %bb.ado, label %bb.adp, !prof !15

bb.ado:                                           ; preds = %lean_inc_ref.exit2737
  %i.ajz = add nuw i32 %.val.i.i2738, 1
  store i32 %i.ajz, ptr %i.em, align 4, !tbaa !14
  br label %lean_inc_ref.exit2740

bb.adp:                                           ; preds = %lean_inc_ref.exit2737
  %.not.i.i2739 = icmp eq i32 %.val.i.i2738, 0
  br i1 %.not.i.i2739, label %lean_inc_ref.exit2740, label %bb.adq

bb.adq:                                           ; preds = %bb.adp
  %i.aka = atomicrmw sub ptr %i.em, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2740

lean_inc_ref.exit2740:                            ; preds = %bb.ado, %bb.adp, %bb.adq
  %i.akb = tail call ptr @l_Lean_Meta_Grind_hasSameType(ptr noundef nonnull %i.em, ptr noundef nonnull %i.ev, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 11 uses
  %i.akc = ptrtoint ptr %i.akb to i64             ; 2 uses
  %i.akd = and i64 %i.akc, 1
  %.not.i2741 = icmp eq i64 %i.akd, 0             ; 2 uses
  br i1 %.not.i2741, label %bb.ads, label %bb.adr

bb.adr:                                           ; preds = %lean_inc_ref.exit2740
  %i.ake = lshr i64 %i.akc, 1
  %i.akf = trunc i64 %i.ake to i32
  br label %lean_obj_tag.exit2744

bb.ads:                                           ; preds = %lean_inc_ref.exit2740
  %i.akg = getelementptr i8, ptr %i.akb, i64 4
  %.val.i2743 = load i32, ptr %i.akg, align 4
  %i.akh = lshr i32 %.val.i2743, 24
  br label %lean_obj_tag.exit2744

lean_obj_tag.exit2744:                            ; preds = %bb.adr, %bb.ads
  %.0.i2742 = phi i32 [ %i.akf, %bb.adr ], [ %i.akh, %bb.ads ]
  %i.aki = icmp eq i32 %.0.i2742, 0
  br i1 %i.aki, label %bb.adt, label %bb.agu

bb.adt:                                           ; preds = %lean_obj_tag.exit2744
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  %i.akk = load ptr, ptr %i.akj, align 8, !tbaa !12 ; 7 uses
  %i.akl = ptrtoint ptr %i.akk to i64             ; 2 uses
  %i.akm = and i64 %i.akl, 1
  %.not.i2128 = icmp eq i64 %i.akm, 0
  br i1 %.not.i2128, label %bb.adu, label %lean_inc.exit2129

bb.adu:                                           ; preds = %bb.adt
  %.val.i.i2745 = load i32, ptr %i.akk, align 4, !tbaa !14 ; 3 uses
  %i.akn = icmp sgt i32 %.val.i.i2745, 0
  br i1 %i.akn, label %bb.adv, label %bb.adw, !prof !15

bb.adv:                                           ; preds = %bb.adu
  %i.ako = add nuw i32 %.val.i.i2745, 1
  store i32 %i.ako, ptr %i.akk, align 4, !tbaa !14
  br label %bb.ady

bb.adw:                                           ; preds = %bb.adu
  %.not.i.i2746 = icmp eq i32 %.val.i.i2745, 0
  br i1 %.not.i.i2746, label %bb.ady, label %bb.adx

bb.adx:                                           ; preds = %bb.adw
  %i.akp = atomicrmw sub ptr %i.akk, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.ady

lean_inc.exit2129:                                ; preds = %bb.adt
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.akb)
  br label %lean_dec.exit2306

bb.ady:                                           ; preds = %bb.adx, %bb.adw, %bb.adv
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.akb)
  %i.akq = load i32, ptr %i.akk, align 4, !tbaa !14 ; 3 uses
  %i.akr = icmp sgt i32 %i.akq, 1
  br i1 %i.akr, label %bb.adz, label %bb.aea, !prof !15

bb.adz:                                           ; preds = %bb.ady
  %i.aks = add nsw i32 %i.akq, -1
  store i32 %i.aks, ptr %i.akk, align 4, !tbaa !14
  br label %lean_dec.exit2306

bb.aea:                                           ; preds = %bb.ady
  %.not.i.i2304 = icmp eq i32 %i.akq, 0
  br i1 %.not.i.i2304, label %lean_dec.exit2306, label %bb.aeb

bb.aeb:                                           ; preds = %bb.aea
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.akk) #4
  br label %lean_dec.exit2306

lean_dec.exit2306:                                ; preds = %bb.adz, %bb.aea, %bb.aeb, %lean_inc.exit2129
  %i.akt = and i64 %i.akl, 510
  %i.aku = icmp eq i64 %i.akt, 0
  br i1 %i.aku, label %bb.aec, label %bb.afp

bb.aec:                                           ; preds = %lean_dec.exit2306
  %i.akv = load i32, ptr %i.ev, align 4, !tbaa !14 ; 3 uses
  %i.akw = icmp sgt i32 %i.akv, 1
  br i1 %i.akw, label %bb.aed, label %bb.aee, !prof !15

bb.aed:                                           ; preds = %bb.aec
  %i.akx = add nsw i32 %i.akv, -1
  store i32 %i.akx, ptr %i.ev, align 4, !tbaa !14
  br label %lean_dec_ref.exit1896

bb.aee:                                           ; preds = %bb.aec
  %.not.i1895 = icmp eq i32 %i.akv, 0
  br i1 %.not.i1895, label %lean_dec_ref.exit1896, label %bb.aef

bb.aef:                                           ; preds = %bb.aee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec_ref.exit1896

lean_dec_ref.exit1896:                            ; preds = %bb.aed, %bb.aee, %bb.aef
  %i.aky = load i32, ptr %i.em, align 4, !tbaa !14 ; 3 uses
  %i.akz = icmp sgt i32 %i.aky, 1
  br i1 %i.akz, label %bb.aeg, label %bb.aeh, !prof !15

bb.aeg:                                           ; preds = %lean_dec_ref.exit1896
  %i.ala = add nsw i32 %i.aky, -1
  store i32 %i.ala, ptr %i.em, align 4, !tbaa !14
  br label %lean_dec_ref.exit1894

bb.aeh:                                           ; preds = %lean_dec_ref.exit1896
  %.not.i1893 = icmp eq i32 %i.aky, 0
  br i1 %.not.i1893, label %lean_dec_ref.exit1894, label %bb.aei

bb.aei:                                           ; preds = %bb.aeh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #4
  br label %lean_dec_ref.exit1894

lean_dec_ref.exit1894:                            ; preds = %bb.aeg, %bb.aeh, %bb.aei
  %.val.i.i2748 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.alb = icmp sgt i32 %.val.i.i2748, 0
  br i1 %i.alb, label %bb.aej, label %bb.aek, !prof !15

bb.aej:                                           ; preds = %lean_dec_ref.exit1894
  %i.alc = add nuw i32 %.val.i.i2748, 1
  store i32 %i.alc, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit2750

bb.aek:                                           ; preds = %lean_dec_ref.exit1894
  %.not.i.i2749 = icmp eq i32 %.val.i.i2748, 0
  br i1 %.not.i.i2749, label %lean_inc_ref.exit2750, label %bb.ael

bb.ael:                                           ; preds = %bb.aek
  %i.ald = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2750

lean_inc_ref.exit2750:                            ; preds = %bb.aej, %bb.aek, %bb.ael
  %i.ale = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.alf, align 8, !tbaa !12
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ale, i64 16
  store ptr %i.ae, ptr %i.alg, align 8, !tbaa !12
  %i.alh = and i64 %.pre2963, 1
  %.not.i2299 = icmp eq i64 %i.alh, 0
  br i1 %.not.i2299, label %bb.aem, label %lean_dec.exit2302

bb.aem:                                           ; preds = %lean_inc_ref.exit2750
  %i.ali = load i32, ptr %i.ahk, align 4, !tbaa !14 ; 3 uses
  %i.alj = icmp sgt i32 %i.ali, 1
  br i1 %i.alj, label %bb.aen, label %bb.aeo, !prof !15

bb.aen:                                           ; preds = %bb.aem
  %i.alk = add nsw i32 %i.ali, -1
  store i32 %i.alk, ptr %i.ahk, align 4, !tbaa !14
  br label %lean_dec.exit2302

bb.aeo:                                           ; preds = %bb.aem
  %.not.i.i2300 = icmp eq i32 %i.ali, 0
  br i1 %.not.i.i2300, label %lean_dec.exit2302, label %bb.aep

bb.aep:                                           ; preds = %bb.aeo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ahk) #4
  br label %lean_dec.exit2302

lean_dec.exit2302:                                ; preds = %bb.aen, %bb.aeo, %bb.aep, %lean_inc_ref.exit2750
  %i.all = tail call ptr @l___private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_propagateEqUp_spec__2___redArg(ptr noundef nonnull %i.ae, ptr noundef %i.n, i8 noundef zeroext 0, i8 noundef zeroext %i.bd, ptr noundef nonnull %0, ptr noundef nonnull %i.ale, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) ; 13 uses
  %i.alm = ptrtoint ptr %i.all to i64             ; 2 uses
  %i.aln = and i64 %i.alm, 1
  %.not.i2751 = icmp eq i64 %i.aln, 0             ; 3 uses
  br i1 %.not.i2751, label %bb.aer, label %bb.aeq

bb.aeq:                                           ; preds = %lean_dec.exit2302
  %i.alo = lshr i64 %i.alm, 1
  %i.alp = trunc i64 %i.alo to i32
  br label %lean_obj_tag.exit2754

bb.aer:                                           ; preds = %lean_dec.exit2302
  %i.alq = getelementptr i8, ptr %i.all, i64 4
  %.val.i2753 = load i32, ptr %i.alq, align 4
  %i.alr = lshr i32 %.val.i2753, 24
  br label %lean_obj_tag.exit2754

lean_obj_tag.exit2754:                            ; preds = %bb.aeq, %bb.aer
  %.0.i2752 = phi i32 [ %i.alp, %bb.aeq ], [ %i.alr, %bb.aer ]
  %i.als = icmp eq i32 %.0.i2752, 0
  br i1 %i.als, label %bb.aes, label %bb.afe

bb.aes:                                           ; preds = %lean_obj_tag.exit2754
  %.val2429 = load i32, ptr %i.all, align 4, !tbaa !14 ; 4 uses
  %i.alt = icmp eq i32 %.val2429, 1
  br i1 %i.alt, label %bb.aet, label %bb.aey

bb.aet:                                           ; preds = %bb.aes
  %i.alu = getelementptr inbounds nuw i8, ptr %i.all, i64 8 ; 2 uses
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !12 ; 4 uses
  %i.alw = ptrtoint ptr %i.alv to i64
  %i.alx = and i64 %i.alw, 1
  %.not.i2295 = icmp eq i64 %i.alx, 0
  br i1 %.not.i2295, label %bb.aeu, label %bb.afd

bb.aeu:                                           ; preds = %bb.aet
  %i.aly = load i32, ptr %i.alv, align 4, !tbaa !14 ; 3 uses
  %i.alz = icmp sgt i32 %i.aly, 1
  br i1 %i.alz, label %bb.aev, label %bb.aew, !prof !15

bb.aev:                                           ; preds = %bb.aeu
  %i.ama = add nsw i32 %i.aly, -1
  store i32 %i.ama, ptr %i.alv, align 4, !tbaa !14
  br label %bb.afd

bb.aew:                                           ; preds = %bb.aeu
  %.not.i.i2296 = icmp eq i32 %i.aly, 0
  br i1 %.not.i.i2296, label %bb.afd, label %bb.aex

bb.aex:                                           ; preds = %bb.aew
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.alv) #4
  br label %bb.afd

bb.aey:                                           ; preds = %bb.aes
  br i1 %.not.i2751, label %bb.aez, label %lean_dec.exit2298

bb.aez:                                           ; preds = %bb.aey
  %i.amb = icmp sgt i32 %.val2429, 1
  br i1 %i.amb, label %bb.afa, label %bb.afb, !prof !15

bb.afa:                                           ; preds = %bb.aez
  %i.amc = add nsw i32 %.val2429, -1
  store i32 %i.amc, ptr %i.all, align 4, !tbaa !14
  br label %lean_dec.exit2298

bb.afb:                                           ; preds = %bb.aez
  %.not.i.i2292 = icmp eq i32 %.val2429, 0
  br i1 %.not.i.i2292, label %lean_dec.exit2298, label %bb.afc

bb.afc:                                           ; preds = %bb.afb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.all) #4
  br label %lean_dec.exit2298

bb.afd:                                           ; preds = %bb.aet, %bb.aex, %bb.aew, %bb.aev
  store ptr inttoptr (i64 1 to ptr), ptr %i.alu, align 8, !tbaa !12
  br label %lean_dec.exit

lean_dec.exit2298:                                ; preds = %bb.afa, %bb.afb, %bb.afc, %bb.aey
  %i.amd = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1) ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ame, align 8, !tbaa !12
  br label %lean_dec.exit

bb.afe:                                           ; preds = %lean_obj_tag.exit2754
  %i.amf = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !12 ; 5 uses
  %.val2428 = load i32, ptr %i.all, align 8, !tbaa !14
  %i.amh = icmp eq i32 %.val2428, 1
  br i1 %i.amh, label %lean_dec.exit, label %bb.aff

bb.aff:                                           ; preds = %bb.afe
  %i.ami = ptrtoint ptr %i.amg to i64
  %i.amj = and i64 %i.ami, 1
  %.not.i2126 = icmp eq i64 %i.amj, 0
  br i1 %.not.i2126, label %bb.afg, label %lean_inc.exit2127

bb.afg:                                           ; preds = %bb.aff
  %.val.i.i2755 = load i32, ptr %i.amg, align 4, !tbaa !14 ; 3 uses
  %i.amk = icmp sgt i32 %.val.i.i2755, 0
  br i1 %i.amk, label %bb.afh, label %bb.afi, !prof !15

bb.afh:                                           ; preds = %bb.afg
  %i.aml = add nuw i32 %.val.i.i2755, 1
  store i32 %i.aml, ptr %i.amg, align 4, !tbaa !14
  br label %lean_inc.exit2127

bb.afi:                                           ; preds = %bb.afg
  %.not.i.i2756 = icmp eq i32 %.val.i.i2755, 0
  br i1 %.not.i.i2756, label %lean_inc.exit2127, label %bb.afj

bb.afj:                                           ; preds = %bb.afi
  %i.amm = atomicrmw sub ptr %i.amg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2127

lean_inc.exit2127:                                ; preds = %bb.afj, %bb.afi, %bb.afh, %bb.aff
  br i1 %.not.i2751, label %bb.afk, label %bb.afo

bb.afk:                                           ; preds = %lean_inc.exit2127
  %i.amn = load i32, ptr %i.all, align 8, !tbaa !14 ; 3 uses
  %i.amo = icmp sgt i32 %i.amn, 1
  br i1 %i.amo, label %bb.afl, label %bb.afm, !prof !15

bb.afl:                                           ; preds = %bb.afk
  %i.amp = add nsw i32 %i.amn, -1
  store i32 %i.amp, ptr %i.all, align 8, !tbaa !14
  br label %bb.afo

bb.afm:                                           ; preds = %bb.afk
  %.not.i.i2288 = icmp eq i32 %i.amn, 0
  br i1 %.not.i.i2288, label %bb.afo, label %bb.afn

bb.afn:                                           ; preds = %bb.afm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.all) #4
  br label %bb.afo

bb.afo:                                           ; preds = %lean_inc.exit2127, %bb.afn, %bb.afm, %bb.afl
  %i.amq = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 8
  store ptr %i.amg, ptr %i.amr, align 8, !tbaa !12
  br label %lean_dec.exit

bb.afp:                                           ; preds = %lean_dec.exit2306
  %.val.i.i2758 = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.ams = icmp sgt i32 %.val.i.i2758, 0
  br i1 %i.ams, label %bb.afq, label %bb.afr, !prof !15

bb.afq:                                           ; preds = %bb.afp
  %i.amt = add nuw i32 %.val.i.i2758, 1
  store i32 %i.amt, ptr %i.n, align 4, !tbaa !14
  br label %lean_inc_ref.exit2760

bb.afr:                                           ; preds = %bb.afp
  %.not.i.i2759 = icmp eq i32 %.val.i.i2758, 0
  br i1 %.not.i.i2759, label %lean_inc_ref.exit2760, label %bb.afs

bb.afs:                                           ; preds = %bb.afr
  %i.amu = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2760

lean_inc_ref.exit2760:                            ; preds = %bb.afq, %bb.afr, %bb.afs
  %.val.i.i2761 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.amv = icmp sgt i32 %.val.i.i2761, 0
  br i1 %i.amv, label %bb.aft, label %bb.afu, !prof !15

bb.aft:                                           ; preds = %lean_inc_ref.exit2760
  %i.amw = add nuw i32 %.val.i.i2761, 1
  store i32 %i.amw, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit2763

bb.afu:                                           ; preds = %lean_inc_ref.exit2760
  %.not.i.i2762 = icmp eq i32 %.val.i.i2761, 0
  br i1 %.not.i.i2762, label %lean_inc_ref.exit2763, label %bb.afv

bb.afv:                                           ; preds = %bb.afu
  %i.amx = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit2763

lean_inc_ref.exit2763:                            ; preds = %bb.aft, %bb.afu, %bb.afv
  %i.amy = tail call ptr @l_Lean_Meta_mkEq(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.n, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 7 uses
  %i.amz = ptrtoint ptr %i.amy to i64             ; 5 uses
  %i.ana = and i64 %i.amz, 1
  %.not.i2764 = icmp eq i64 %i.ana, 0
  br i1 %.not.i2764, label %bb.afx, label %bb.afw

bb.afw:                                           ; preds = %lean_inc_ref.exit2763
  %i.anb = lshr i64 %i.amz, 1
  %i.anc = trunc i64 %i.anb to i32
  br label %lean_obj_tag.exit2767

bb.afx:                                           ; preds = %lean_inc_ref.exit2763
  %i.and = getelementptr i8, ptr %i.amy, i64 4
  %.val.i2766 = load i32, ptr %i.and, align 4
  %i.ane = lshr i32 %.val.i2766, 24
  br label %lean_obj_tag.exit2767

lean_obj_tag.exit2767:                            ; preds = %bb.afw, %bb.afx
  %.0.i2765 = phi i32 [ %i.anc, %bb.afw ], [ %i.ane, %bb.afx ]
  %i.anf = icmp eq i32 %.0.i2765, 0
  br i1 %i.anf, label %bb.afy, label %bb.agd

bb.afy:                                           ; preds = %lean_obj_tag.exit2767
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amy, i64 8
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !12 ; 5 uses
  %i.ani = ptrtoint ptr %i.anh to i64
  %i.anj = and i64 %i.ani, 1
  %.not.i2124 = icmp eq i64 %i.anj, 0
  br i1 %.not.i2124, label %bb.afz, label %lean_inc.exit2125

bb.afz:                                           ; preds = %bb.afy
  %.val.i.i2768 = load i32, ptr %i.anh, align 4, !tbaa !14 ; 3 uses
  %i.ank = icmp sgt i32 %.val.i.i2768, 0
  br i1 %i.ank, label %bb.aga, label %bb.agb, !prof !15

bb.aga:                                           ; preds = %bb.afz
  %i.anl = add nuw i32 %.val.i.i2768, 1
  store i32 %i.anl, ptr %i.anh, align 4, !tbaa !14
  br label %lean_inc.exit2125

bb.agb:                                           ; preds = %bb.afz
  %.not.i.i2769 = icmp eq i32 %.val.i.i2768, 0
  br i1 %.not.i.i2769, label %lean_inc.exit2125, label %bb.agc

bb.agc:                                           ; preds = %bb.agb
  %i.anm = atomicrmw sub ptr %i.anh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2125

lean_inc.exit2125:                                ; preds = %bb.agc, %bb.agb, %bb.aga, %bb.afy
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.amy)
  %i.ann = zext i8 %i.bd to i64
  %i.ano = shl nuw nsw i64 %i.ann, 1
  %i.anp = or disjoint i64 %i.ano, 1
  %i.anq = inttoptr i64 %i.anp to ptr
  %i.anr = tail call ptr @lean_alloc_object(i64 noundef 72) #4 ; 12 uses
  store i32 1, ptr %i.anr, align 4, !tbaa !14
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 4 ; 2 uses
  %i.ant = load i32, ptr %i.ans, align 4
  %i.anu = and i32 %i.ant, 65535
  %i.anv = or disjoint i32 %i.anu, -184549376
  store i32 %i.anv, ptr %i.ans, align 4
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anr, i64 8
  store ptr @l_Lean_Meta_Grind_propagateEqUp___lam__0___boxed, ptr %i.anw, align 8, !tbaa !12
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anr, i64 16
  store i16 18, ptr %i.anx, align 8, !tbaa !19
  %i.any = getelementptr inbounds nuw i8, ptr %i.anr, i64 18
  store i16 6, ptr %i.any, align 2, !tbaa !19
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anr, i64 24
  store ptr %i.ae, ptr %i.anz, align 8, !tbaa !12
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anr, i64 32
  store ptr %i.em, ptr %i.aoa, align 8, !tbaa !12
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anr, i64 40
  store ptr %i.n, ptr %i.aob, align 8, !tbaa !12
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anr, i64 48
  store ptr %i.ev, ptr %i.aoc, align 8, !tbaa !12
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anr, i64 56
  store ptr %i.ahk, ptr %i.aod, align 8, !tbaa !12
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anr, i64 64
  store ptr %i.anq, ptr %i.aoe, align 8, !tbaa !12
  %i.aof = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Meta_Grind_propagateEqUp_spec__0_spec__0___redArg(ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00__private_Init_While_0__whileM_erased___at___00Lean_Meta_Grind_propagateEqUp_spec__1_spec__2___redArg___closed__4_value, i8 noundef zeroext 0, ptr noundef %i.anh, ptr noundef nonnull %i.anr, i8 noundef zeroext 0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) ; 2 uses
  %.pre = ptrtoint ptr %i.aof to i64
  br label %lean_dec_ref.exit2082

bb.agd:                                           ; preds = %lean_obj_tag.exit2767
  %i.aog = and i64 %.pre2963, 1
  %.not.i2283 = icmp eq i64 %i.aog, 0
  br i1 %.not.i2283, label %bb.age, label %lean_dec.exit2286

bb.age:                                           ; preds = %bb.agd
  %i.aoh = load i32, ptr %i.ahk, align 4, !tbaa !14 ; 3 uses
  %i.aoi = icmp sgt i32 %i.aoh, 1
  br i1 %i.aoi, label %bb.agf, label %bb.agg, !prof !15

bb.agf:                                           ; preds = %bb.age
  %i.aoj = add nsw i32 %i.aoh, -1
  store i32 %i.aoj, ptr %i.ahk, align 4, !tbaa !14
  br label %lean_dec.exit2286

bb.agg:                                           ; preds = %bb.age
  %.not.i.i2284 = icmp eq i32 %i.aoh, 0
  br i1 %.not.i.i2284, label %lean_dec.exit2286, label %bb.agh

bb.agh:                                           ; preds = %bb.agg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ahk) #4
  br label %lean_dec.exit2286

lean_dec.exit2286:                                ; preds = %bb.agf, %bb.agg, %bb.agh, %bb.agd
  %i.aok = load i32, ptr %i.ev, align 4, !tbaa !14 ; 3 uses
  %i.aol = icmp sgt i32 %i.aok, 1
  br i1 %i.aol, label %bb.agi, label %bb.agj, !prof !15

bb.agi:                                           ; preds = %lean_dec.exit2286
  %i.aom = add nsw i32 %i.aok, -1
  store i32 %i.aom, ptr %i.ev, align 4, !tbaa !14
  br label %lean_dec_ref.exit1892

bb.agj:                                           ; preds = %lean_dec.exit2286
  %.not.i1891 = icmp eq i32 %i.aok, 0
  br i1 %.not.i1891, label %lean_dec_ref.exit1892, label %bb.agk

bb.agk:                                           ; preds = %bb.agj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec_ref.exit1892

lean_dec_ref.exit1892:                            ; preds = %bb.agi, %bb.agj, %bb.agk
  %i.aon = load i32, ptr %i.em, align 4, !tbaa !14 ; 3 uses
  %i.aoo = icmp sgt i32 %i.aon, 1
  br i1 %i.aoo, label %bb.agl, label %bb.agm, !prof !15

bb.agl:                                           ; preds = %lean_dec_ref.exit1892
  %i.aop = add nsw i32 %i.aon, -1
  store i32 %i.aop, ptr %i.em, align 4, !tbaa !14
  br label %lean_dec_ref.exit1890

bb.agm:                                           ; preds = %lean_dec_ref.exit1892
  %.not.i1889 = icmp eq i32 %i.aon, 0
  br i1 %.not.i1889, label %lean_dec_ref.exit1890, label %bb.agn

bb.agn:                                           ; preds = %bb.agm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #4
  br label %lean_dec_ref.exit1890

lean_dec_ref.exit1890:                            ; preds = %bb.agl, %bb.agm, %bb.agn
  %i.aoq = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.aor = icmp sgt i32 %i.aoq, 1
  br i1 %i.aor, label %bb.ago, label %bb.agp, !prof !15

bb.ago:                                           ; preds = %lean_dec_ref.exit1890
  %i.aos = add nsw i32 %i.aoq, -1
  store i32 %i.aos, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit1888

bb.agp:                                           ; preds = %lean_dec_ref.exit1890
  %.not.i1887 = icmp eq i32 %i.aoq, 0
  br i1 %.not.i1887, label %lean_dec_ref.exit1888, label %bb.agq

bb.agq:                                           ; preds = %bb.agp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit1888

lean_dec_ref.exit1888:                            ; preds = %bb.ago, %bb.agp, %bb.agq
  %i.aot = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.aou = icmp sgt i32 %i.aot, 1
  br i1 %i.aou, label %bb.agr, label %bb.ags, !prof !15

bb.agr:                                           ; preds = %lean_dec_ref.exit1888
  %i.aov = add nsw i32 %i.aot, -1
  store i32 %i.aov, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit2082

bb.ags:                                           ; preds = %lean_dec_ref.exit1888
  %.not.i1885 = icmp eq i32 %i.aot, 0
  br i1 %.not.i1885, label %lean_dec_ref.exit2082, label %bb.agt

bb.agt:                                           ; preds = %bb.ags
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit2082

bb.agu:                                           ; preds = %lean_obj_tag.exit2744
  %i.aow = and i64 %.pre2963, 1
  %.not.i2279 = icmp eq i64 %i.aow, 0
  br i1 %.not.i2279, label %bb.agv, label %lean_dec.exit2282

bb.agv:                                           ; preds = %bb.agu
  %i.aox = load i32, ptr %i.ahk, align 4, !tbaa !14 ; 3 uses
  %i.aoy = icmp sgt i32 %i.aox, 1
  br i1 %i.aoy, label %bb.agw, label %bb.agx, !prof !15

bb.agw:                                           ; preds = %bb.agv
  %i.aoz = add nsw i32 %i.aox, -1
  store i32 %i.aoz, ptr %i.ahk, align 4, !tbaa !14
  br label %lean_dec.exit2282

bb.agx:                                           ; preds = %bb.agv
  %.not.i.i2280 = icmp eq i32 %i.aox, 0
  br i1 %.not.i.i2280, label %lean_dec.exit2282, label %bb.agy

bb.agy:                                           ; preds = %bb.agx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ahk) #4
  br label %lean_dec.exit2282

lean_dec.exit2282:                                ; preds = %bb.agw, %bb.agx, %bb.agy, %bb.agu
  %i.apa = load i32, ptr %i.ev, align 4, !tbaa !14 ; 3 uses
  %i.apb = icmp sgt i32 %i.apa, 1
  br i1 %i.apb, label %bb.agz, label %bb.aha, !prof !15

bb.agz:                                           ; preds = %lean_dec.exit2282
  %i.apc = add nsw i32 %i.apa, -1
  store i32 %i.apc, ptr %i.ev, align 4, !tbaa !14
  br label %lean_dec_ref.exit1884

bb.aha:                                           ; preds = %lean_dec.exit2282
  %.not.i1883 = icmp eq i32 %i.apa, 0
  br i1 %.not.i1883, label %lean_dec_ref.exit1884, label %bb.ahb

bb.ahb:                                           ; preds = %bb.aha
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec_ref.exit1884

lean_dec_ref.exit1884:                            ; preds = %bb.agz, %bb.aha, %bb.ahb
  %i.apd = load i32, ptr %i.em, align 4, !tbaa !14 ; 3 uses
  %i.ape = icmp sgt i32 %i.apd, 1
  br i1 %i.ape, label %bb.ahc, label %bb.ahd, !prof !15

bb.ahc:                                           ; preds = %lean_dec_ref.exit1884
  %i.apf = add nsw i32 %i.apd, -1
  store i32 %i.apf, ptr %i.em, align 4, !tbaa !14
  br label %lean_dec_ref.exit1882

bb.ahd:                                           ; preds = %lean_dec_ref.exit1884
  %.not.i1881 = icmp eq i32 %i.apd, 0
  br i1 %.not.i1881, label %lean_dec_ref.exit1882, label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #4
  br label %lean_dec_ref.exit1882

lean_dec_ref.exit1882:                            ; preds = %bb.ahc, %bb.ahd, %bb.ahe
  %i.apg = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.aph = icmp sgt i32 %i.apg, 1
  br i1 %i.aph, label %bb.ahf, label %bb.ahg, !prof !15

bb.ahf:                                           ; preds = %lean_dec_ref.exit1882
  %i.api = add nsw i32 %i.apg, -1
  store i32 %i.api, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit1880

bb.ahg:                                           ; preds = %lean_dec_ref.exit1882
  %.not.i1879 = icmp eq i32 %i.apg, 0
  br i1 %.not.i1879, label %lean_dec_ref.exit1880, label %bb.ahh

bb.ahh:                                           ; preds = %bb.ahg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit1880

lean_dec_ref.exit1880:                            ; preds = %bb.ahf, %bb.ahg, %bb.ahh
  %i.apj = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.apk = icmp sgt i32 %i.apj, 1
  br i1 %i.apk, label %bb.ahi, label %bb.ahj, !prof !15

bb.ahi:                                           ; preds = %lean_dec_ref.exit1880
  %i.apl = add nsw i32 %i.apj, -1
  store i32 %i.apl, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit1878

bb.ahj:                                           ; preds = %lean_dec_ref.exit1880
  %.not.i1877 = icmp eq i32 %i.apj, 0
  br i1 %.not.i1877, label %lean_dec_ref.exit1878, label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit1878

lean_dec_ref.exit1878:                            ; preds = %bb.ahi, %bb.ahj, %bb.ahk
  %i.apm = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.apn = icmp sgt i32 %i.apm, 1
  br i1 %i.apn, label %bb.ahl, label %bb.ahm, !prof !15

bb.ahl:                                           ; preds = %lean_dec_ref.exit1878
  %i.apo = add nsw i32 %i.apm, -1
  store i32 %i.apo, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit1876

bb.ahm:                                           ; preds = %lean_dec_ref.exit1878
  %.not.i1875 = icmp eq i32 %i.apm, 0
  br i1 %.not.i1875, label %lean_dec_ref.exit1876, label %bb.ahn

bb.ahn:                                           ; preds = %bb.ahm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit1876

lean_dec_ref.exit1876:                            ; preds = %bb.ahl, %bb.ahm, %bb.ahn
  %i.app = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !12 ; 5 uses
  %.val2427 = load i32, ptr %i.akb, align 8, !tbaa !14
  %i.apr = icmp eq i32 %.val2427, 1
  br i1 %i.apr, label %lean_dec.exit, label %bb.aho

bb.aho:                                           ; preds = %lean_dec_ref.exit1876
  %i.aps = ptrtoint ptr %i.apq to i64
  %i.apt = and i64 %i.aps, 1
  %.not.i2122 = icmp eq i64 %i.apt, 0
  br i1 %.not.i2122, label %bb.ahp, label %lean_inc.exit2123

bb.ahp:                                           ; preds = %bb.aho
  %.val.i.i2771 = load i32, ptr %i.apq, align 4, !tbaa !14 ; 3 uses
  %i.apu = icmp sgt i32 %.val.i.i2771, 0
  br i1 %i.apu, label %bb.ahq, label %bb.ahr, !prof !15

bb.ahq:                                           ; preds = %bb.ahp
  %i.apv = add nuw i32 %.val.i.i2771, 1
  store i32 %i.apv, ptr %i.apq, align 4, !tbaa !14
  br label %lean_inc.exit2123

bb.ahr:                                           ; preds = %bb.ahp
  %.not.i.i2772 = icmp eq i32 %.val.i.i2771, 0
  br i1 %.not.i.i2772, label %lean_inc.exit2123, label %bb.ahs

bb.ahs:                                           ; preds = %bb.ahr
  %i.apw = atomicrmw sub ptr %i.apq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit2123

lean_inc.exit2123:                                ; preds = %bb.ahs, %bb.ahr, %bb.ahq, %bb.aho
  br i1 %.not.i2741, label %bb.aht, label %bb.ahx

bb.aht:                                           ; preds = %lean_inc.exit2123
  %i.apx = load i32, ptr %i.akb, align 8, !tbaa !14 ; 3 uses
  %i.apy = icmp sgt i32 %i.apx, 1
  br i1 %i.apy, label %bb.ahu, label %bb.ahv, !prof !15

bb.ahu:                                           ; preds = %bb.aht
  %i.apz = add nsw i32 %i.apx, -1
  store i32 %i.apz, ptr %i.akb, align 8, !tbaa !14
  br label %bb.ahx

bb.ahv:                                           ; preds = %bb.aht
  %.not.i.i2276 = icmp eq i32 %i.apx, 0
  br i1 %.not.i.i2276, label %bb.ahx, label %bb.ahw

bb.ahw:                                           ; preds = %bb.ahv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.akb) #4
  br label %bb.ahx

bb.ahx:                                           ; preds = %lean_inc.exit2123, %bb.ahw, %bb.ahv, %bb.ahu
  %i.aqa = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 8
  store ptr %i.apq, ptr %i.aqb, align 8, !tbaa !12
  br label %lean_dec.exit

bb.ahy:                                           ; preds = %lean_dec_ref.exit1898
  %i.aqc = and i64 %.pre2963, 1
  %.not.i2271 = icmp eq i64 %i.aqc, 0
  br i1 %.not.i2271, label %bb.ahz, label %lean_dec.exit2274

bb.ahz:                                           ; preds = %bb.ahy
  %i.aqd = load i32, ptr %i.ahk, align 4, !tbaa !14 ; 3 uses
  %i.aqe = icmp sgt i32 %i.aqd, 1
  br i1 %i.aqe, label %bb.aia, label %bb.aib, !prof !15

bb.aia:                                           ; preds = %bb.ahz
  %i.aqf = add nsw i32 %i.aqd, -1
  store i32 %i.aqf, ptr %i.ahk, align 4, !tbaa !14
  br label %lean_dec.exit2274

bb.aib:                                           ; preds = %bb.ahz
  %.not.i.i2272 = icmp eq i32 %i.aqd, 0
  br i1 %.not.i.i2272, label %lean_dec.exit2274, label %bb.aic

bb.aic:                                           ; preds = %bb.aib
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ahk) #4
  br label %lean_dec.exit2274

lean_dec.exit2274:                                ; preds = %bb.aia, %bb.aib, %bb.aic, %bb.ahy
  %i.aqg = load i32, ptr %i.ev, align 4, !tbaa !14 ; 3 uses
  %i.aqh = icmp sgt i32 %i.aqg, 1
  br i1 %i.aqh, label %bb.aid, label %bb.aie, !prof !15

bb.aid:                                           ; preds = %lean_dec.exit2274
  %i.aqi = add nsw i32 %i.aqg, -1
  store i32 %i.aqi, ptr %i.ev, align 4, !tbaa !14
  br label %lean_dec_ref.exit1874

bb.aie:                                           ; preds = %lean_dec.exit2274
  %.not.i1873 = icmp eq i32 %i.aqg, 0
  br i1 %.not.i1873, label %lean_dec_ref.exit1874, label %bb.aif

bb.aif:                                           ; preds = %bb.aie
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec_ref.exit1874

lean_dec_ref.exit1874:                            ; preds = %bb.aid, %bb.aie, %bb.aif
  %i.aqj = load i32, ptr %i.em, align 4, !tbaa !14 ; 3 uses
  %i.aqk = icmp sgt i32 %i.aqj, 1
  br i1 %i.aqk, label %bb.aig, label %bb.aih, !prof !15

bb.aig:                                           ; preds = %lean_dec_ref.exit1874
  %i.aql = add nsw i32 %i.aqj, -1
  store i32 %i.aql, ptr %i.em, align 4, !tbaa !14
  br label %lean_dec_ref.exit1872

bb.aih:                                           ; preds = %lean_dec_ref.exit1874
  %.not.i1871 = icmp eq i32 %i.aqj, 0
  br i1 %.not.i1871, label %lean_dec_ref.exit1872, label %bb.aii

bb.aii:                                           ; preds = %bb.aih
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #4
  br label %lean_dec_ref.exit1872

lean_dec_ref.exit1872:                            ; preds = %bb.aig, %bb.aih, %bb.aii
  %i.aqm = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.aqn = icmp sgt i32 %i.aqm, 1
  br i1 %i.aqn, label %bb.aij, label %bb.aik, !prof !15

bb.aij:                                           ; preds = %lean_dec_ref.exit1872
  %i.aqo = add nsw i32 %i.aqm, -1
  store i32 %i.aqo, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit1870

bb.aik:                                           ; preds = %lean_dec_ref.exit1872
  %.not.i1869 = icmp eq i32 %i.aqm, 0
  br i1 %.not.i1869, label %lean_dec_ref.exit1870, label %bb.ail

bb.ail:                                           ; preds = %bb.aik
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit1870

lean_dec_ref.exit1870:                            ; preds = %bb.aij, %bb.aik, %bb.ail
  %i.aqp = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.aqq = icmp sgt i32 %i.aqp, 1
  br i1 %i.aqq, label %bb.aim, label %bb.ain, !prof !15

bb.aim:                                           ; preds = %lean_dec_ref.exit1870
  %i.aqr = add nsw i32 %i.aqp, -1
  store i32 %i.aqr, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit1868

bb.ain:                                           ; preds = %lean_dec_ref.exit1870
  %.not.i1867 = icmp eq i32 %i.aqp, 0
  br i1 %.not.i1867, label %lean_dec_ref.exit1868, label %bb.aio

bb.aio:                                           ; preds = %bb.ain
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit1868

lean_dec_ref.exit1868:                            ; preds = %bb.aim, %bb.ain, %bb.aio
  %i.aqs = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.aqt = icmp sgt i32 %i.aqs, 1
  br i1 %i.aqt, label %bb.aip, label %bb.aiq, !prof !15

bb.aip:                                           ; preds = %lean_dec_ref.exit1868
  %i.aqu = add nsw i32 %i.aqs, -1
  store i32 %i.aqu, ptr %0, align 4, !tbaa !14
  br label %bb.aww

bb.aiq:                                           ; preds = %lean_dec_ref.exit1868
  %.not.i1865 = icmp eq i32 %i.aqs, 0
  br i1 %.not.i1865, label %bb.aww, label %bb.air

bb.air:                                           ; preds = %bb.aiq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %bb.aww

bb.ais:                                           ; preds = %lean_dec.exit2318
  %i.aqv = and i64 %.pre2963, 1
  %.not.i2267 = icmp eq i64 %i.aqv, 0
  br i1 %.not.i2267, label %bb.ait, label %lean_dec.exit2270

bb.ait:                                           ; preds = %bb.ais
  %i.aqw = load i32, ptr %i.ahk, align 4, !tbaa !14 ; 3 uses
  %i.aqx = icmp sgt i32 %i.aqw, 1
  br i1 %i.aqx, label %bb.aiu, label %bb.aiv, !prof !15

bb.aiu:                                           ; preds = %bb.ait
  %i.aqy = add nsw i32 %i.aqw, -1
  store i32 %i.aqy, ptr %i.ahk, align 4, !tbaa !14
  br label %lean_dec.exit2270

bb.aiv:                                           ; preds = %bb.ait
  %.not.i.i2268 = icmp eq i32 %i.aqw, 0
  br i1 %.not.i.i2268, label %lean_dec.exit2270, label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ahk) #4
  br label %lean_dec.exit2270

lean_dec.exit2270:                                ; preds = %bb.aiu, %bb.aiv, %bb.aiw, %bb.ais
  %i.aqz = load i32, ptr %i.ev, align 4, !tbaa !14 ; 3 uses
  %i.ara = icmp sgt i32 %i.aqz, 1
  br i1 %i.ara, label %bb.aix, label %bb.aiy, !prof !15

bb.aix:                                           ; preds = %lean_dec.exit2270
  %i.arb = add nsw i32 %i.aqz, -1
  store i32 %i.arb, ptr %i.ev, align 4, !tbaa !14
  br label %lean_dec_ref.exit1864

bb.aiy:                                           ; preds = %lean_dec.exit2270
  %.not.i1863 = icmp eq i32 %i.aqz, 0
  br i1 %.not.i1863, label %lean_dec_ref.exit1864, label %bb.aiz

bb.aiz:                                           ; preds = %bb.aiy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec_ref.exit1864

lean_dec_ref.exit1864:                            ; preds = %bb.aix, %bb.aiy, %bb.aiz
  %i.arc = load i32, ptr %i.em, align 4, !tbaa !14 ; 3 uses
  %i.ard = icmp sgt i32 %i.arc, 1
  br i1 %i.ard, label %bb.aja, label %bb.ajb, !prof !15

bb.aja:                                           ; preds = %lean_dec_ref.exit1864
  %i.are = add nsw i32 %i.arc, -1
  store i32 %i.are, ptr %i.em, align 4, !tbaa !14
  br label %lean_dec_ref.exit1862

bb.ajb:                                           ; preds = %lean_dec_ref.exit1864
  %.not.i1861 = icmp eq i32 %i.arc, 0
  br i1 %.not.i1861, label %lean_dec_ref.exit1862, label %bb.ajc

bb.ajc:                                           ; preds = %bb.ajb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #4
  br label %lean_dec_ref.exit1862

lean_dec_ref.exit1862:                            ; preds = %bb.aja, %bb.ajb, %bb.ajc
  %i.arf = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.arg = icmp sgt i32 %i.arf, 1
  br i1 %i.arg, label %bb.ajd, label %bb.aje, !prof !15

bb.ajd:                                           ; preds = %lean_dec_ref.exit1862
  %i.arh = add nsw i32 %i.arf, -1
  store i32 %i.arh, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit1860

bb.aje:                                           ; preds = %lean_dec_ref.exit1862
  %.not.i1859 = icmp eq i32 %i.arf, 0
  br i1 %.not.i1859, label %lean_dec_ref.exit1860, label %bb.ajf

bb.ajf:                                           ; preds = %bb.aje
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit1860

lean_dec_ref.exit1860:                            ; preds = %bb.ajd, %bb.aje, %bb.ajf
  %i.ari = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.arj = icmp sgt i32 %i.ari, 1
  br i1 %i.arj, label %bb.ajg, label %bb.ajh, !prof !15

bb.ajg:                                           ; preds = %lean_dec_ref.exit1860
  %i.ark = add nsw i32 %i.ari, -1
  store i32 %i.ark, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit1858

bb.ajh:                                           ; preds = %lean_dec_ref.exit1860
  %.not.i1857 = icmp eq i32 %i.ari, 0
  br i1 %.not.i1857, label %lean_dec_ref.exit1858, label %bb.aji

bb.aji:                                           ; preds = %bb.ajh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit1858

lean_dec_ref.exit1858:                            ; preds = %bb.ajg, %bb.ajh, %bb.aji
  %i.arl = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.arm = icmp sgt i32 %i.arl, 1
  br i1 %i.arm, label %bb.ajj, label %bb.ajk, !prof !15

end_hunk_7
begin_hunk_8_@l_Lean_Meta_Grind_propagateEqDown:bb.a
  %i.ry = icmp sgt i32 %i.rx, 1
  br i1 %i.ry, label %bb.os, label %bb.ot, !prof !15

bb.os:                                            ; preds = %lean_dec_ref.exit734
  %i.rz = add nsw i32 %i.rx, -1
  store i32 %i.rz, ptr %i.qe, align 4, !tbaa !14
  br label %lean_dec_ref.exit732

bb.ot:                                            ; preds = %lean_dec_ref.exit734
  %.not.i731 = icmp eq i32 %i.rx, 0
  br i1 %.not.i731, label %lean_dec_ref.exit732, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qe) #4
  br label %lean_dec_ref.exit732

lean_dec_ref.exit732:                             ; preds = %bb.os, %bb.ot, %bb.ou
  %i.sa = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.sb = icmp sgt i32 %i.sa, 1
  br i1 %i.sb, label %bb.ov, label %bb.ow, !prof !15

bb.ov:                                            ; preds = %lean_dec_ref.exit732
  %i.sc = add nsw i32 %i.sa, -1
  store i32 %i.sc, ptr %0, align 4, !tbaa !14
  br label %bb.td

bb.ow:                                            ; preds = %lean_dec_ref.exit732
  %.not.i729 = icmp eq i32 %i.sa, 0
  br i1 %.not.i729, label %bb.td, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %bb.td

bb.oy:                                            ; preds = %lean_dec_ref.exit736
  %i.sd = tail call ptr @l_Lean_Meta_Grind_isEqv___redArg(ptr noundef nonnull %i.qv, ptr noundef nonnull %i.qe, ptr noundef %1) #4 ; 14 uses
  %i.se = ptrtoint ptr %i.sd to i64               ; 2 uses
  %i.sf = and i64 %i.se, 1
  %.not.i1096 = icmp eq i64 %i.sf, 0              ; 3 uses
  br i1 %.not.i1096, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.sg = lshr i64 %i.se, 1
  %i.sh = trunc i64 %i.sg to i32
  br label %lean_obj_tag.exit1099

bb.pa:                                            ; preds = %bb.oy
  %i.si = getelementptr i8, ptr %i.sd, i64 4
  %.val.i1098 = load i32, ptr %i.si, align 4
  %i.sj = lshr i32 %.val.i1098, 24
  br label %lean_obj_tag.exit1099

lean_obj_tag.exit1099:                            ; preds = %bb.oz, %bb.pa
  %.0.i1097 = phi i32 [ %i.sh, %bb.oz ], [ %i.sj, %bb.pa ]
  %i.sk = icmp eq i32 %.0.i1097, 0
  br i1 %i.sk, label %bb.pb, label %bb.rp

bb.pb:                                            ; preds = %lean_obj_tag.exit1099
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !12 ; 13 uses
  %.val970 = load i32, ptr %i.sd, align 8, !tbaa !14
  %i.sn = icmp eq i32 %.val970, 1                 ; 2 uses
  %.pre1174 = ptrtoint ptr %i.sm to i64           ; 5 uses
  br i1 %i.sn, label %lean_dec.exit894, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.so = and i64 %.pre1174, 1
  %.not.i846 = icmp eq i64 %i.so, 0
  br i1 %.not.i846, label %bb.pd, label %lean_inc.exit847

bb.pd:                                            ; preds = %bb.pc
  %.val.i.i1100 = load i32, ptr %i.sm, align 4, !tbaa !14 ; 3 uses
  %i.sp = icmp sgt i32 %.val.i.i1100, 0
  br i1 %i.sp, label %bb.pe, label %bb.pf, !prof !15

bb.pe:                                            ; preds = %bb.pd
  %i.sq = add nuw i32 %.val.i.i1100, 1
  store i32 %i.sq, ptr %i.sm, align 4, !tbaa !14
  br label %lean_inc.exit847

bb.pf:                                            ; preds = %bb.pd
  %.not.i.i1101 = icmp eq i32 %.val.i.i1100, 0
  br i1 %.not.i.i1101, label %lean_inc.exit847, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.sr = atomicrmw sub ptr %i.sm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit847

lean_inc.exit847:                                 ; preds = %bb.pg, %bb.pf, %bb.pe, %bb.pc
  br i1 %.not.i1096, label %bb.ph, label %lean_dec.exit894

bb.ph:                                            ; preds = %lean_inc.exit847
  %i.ss = load i32, ptr %i.sd, align 8, !tbaa !14 ; 3 uses
  %i.st = icmp sgt i32 %i.ss, 1
  br i1 %i.st, label %bb.pi, label %bb.pj, !prof !15

bb.pi:                                            ; preds = %bb.ph
  %i.su = add nsw i32 %i.ss, -1
  store i32 %i.su, ptr %i.sd, align 8, !tbaa !14
  br label %lean_dec.exit894

bb.pj:                                            ; preds = %bb.ph
  %.not.i.i892 = icmp eq i32 %i.ss, 0
  br i1 %.not.i.i892, label %lean_dec.exit894, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sd) #4
  br label %lean_dec.exit894

lean_dec.exit894:                                 ; preds = %bb.pb, %lean_inc.exit847, %bb.pk, %bb.pj, %bb.pi
  %.0595 = phi ptr [ inttoptr (i64 1 to ptr), %bb.pi ], [ inttoptr (i64 1 to ptr), %lean_inc.exit847 ], [ inttoptr (i64 1 to ptr), %bb.pk ], [ inttoptr (i64 1 to ptr), %bb.pj ], [ %i.sd, %bb.pb ] ; 4 uses
  %i.sv = and i64 %.pre1174, 510
  %i.sw = icmp eq i64 %i.sv, 0
  br i1 %i.sw, label %bb.pl, label %bb.qz

bb.pl:                                            ; preds = %lean_dec.exit894
  %i.sx = ptrtoint ptr %.0595 to i64
  %i.sy = and i64 %i.sx, 1
  %.not.i1103 = icmp eq i64 %i.sy, 0
  br i1 %.not.i1103, label %bb.pm, label %lean_del_object.exit1104

bb.pm:                                            ; preds = %bb.pl
  tail call void @lean_free_object(ptr noundef nonnull %.0595) #4
  br label %lean_del_object.exit1104

lean_del_object.exit1104:                         ; preds = %bb.pl, %bb.pm
  %.val.i.i1105 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.sz = icmp sgt i32 %.val.i.i1105, 0
  br i1 %i.sz, label %bb.pn, label %bb.po, !prof !15

bb.pn:                                            ; preds = %lean_del_object.exit1104
  %i.ta = add nuw i32 %.val.i.i1105, 1
  store i32 %i.ta, ptr %0, align 4, !tbaa !14
  br label %lean_inc_ref.exit1107

bb.po:                                            ; preds = %lean_del_object.exit1104
  %.not.i.i1106 = icmp eq i32 %.val.i.i1105, 0
  br i1 %.not.i.i1106, label %lean_inc_ref.exit1107, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.tb = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1107

lean_inc_ref.exit1107:                            ; preds = %bb.pn, %bb.po, %bb.pp
  %i.tc = tail call ptr @l_Lean_Meta_Grind_mkEqTrueProof(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 10 uses
  %i.td = ptrtoint ptr %i.tc to i64               ; 2 uses
  %i.te = and i64 %i.td, 1
  %.not.i1108 = icmp eq i64 %i.te, 0              ; 2 uses
  br i1 %.not.i1108, label %bb.pr, label %bb.pq

bb.pq:                                            ; preds = %lean_inc_ref.exit1107
  %i.tf = lshr i64 %i.td, 1
  %i.tg = trunc i64 %i.tf to i32
  br label %lean_obj_tag.exit1111

bb.pr:                                            ; preds = %lean_inc_ref.exit1107
  %i.th = getelementptr i8, ptr %i.tc, i64 4
  %.val.i1110 = load i32, ptr %i.th, align 4
  %i.ti = lshr i32 %.val.i1110, 24
  br label %lean_obj_tag.exit1111

lean_obj_tag.exit1111:                            ; preds = %bb.pq, %bb.pr
  %.0.i1109 = phi i32 [ %i.tg, %bb.pq ], [ %i.ti, %bb.pr ]
  %i.tj = icmp eq i32 %.0.i1109, 0
  br i1 %i.tj, label %bb.ps, label %bb.qb

bb.ps:                                            ; preds = %lean_obj_tag.exit1111
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !12 ; 5 uses
  %i.tm = ptrtoint ptr %i.tl to i64
  %i.tn = and i64 %i.tm, 1
  %.not.i844 = icmp eq i64 %i.tn, 0
  br i1 %.not.i844, label %bb.pt, label %lean_inc.exit845

bb.pt:                                            ; preds = %bb.ps
  %.val.i.i1112 = load i32, ptr %i.tl, align 4, !tbaa !14 ; 3 uses
  %i.to = icmp sgt i32 %.val.i.i1112, 0
  br i1 %i.to, label %bb.pu, label %bb.pv, !prof !15

bb.pu:                                            ; preds = %bb.pt
  %i.tp = add nuw i32 %.val.i.i1112, 1
  store i32 %i.tp, ptr %i.tl, align 4, !tbaa !14
  br label %lean_inc.exit845

bb.pv:                                            ; preds = %bb.pt
  %.not.i.i1113 = icmp eq i32 %.val.i.i1112, 0
  br i1 %.not.i.i1113, label %lean_inc.exit845, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  %i.tq = atomicrmw sub ptr %i.tl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit845

lean_inc.exit845:                                 ; preds = %bb.pw, %bb.pv, %bb.pu, %bb.ps
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.tc)
  %i.tr = tail call ptr @l_Lean_Meta_mkOfEqTrueCore(ptr noundef nonnull %0, ptr noundef %i.tl) #4
  %i.ts = and i64 %.pre1174, 1
  %.not.i887 = icmp eq i64 %i.ts, 0
  br i1 %.not.i887, label %bb.px, label %lean_dec.exit890

bb.px:                                            ; preds = %lean_inc.exit845
  %i.tt = load i32, ptr %i.sm, align 4, !tbaa !14 ; 3 uses
  %i.tu = icmp sgt i32 %i.tt, 1
  br i1 %i.tu, label %bb.py, label %bb.pz, !prof !15

bb.py:                                            ; preds = %bb.px
  %i.tv = add nsw i32 %i.tt, -1
  store i32 %i.tv, ptr %i.sm, align 4, !tbaa !14
  br label %lean_dec.exit890

bb.pz:                                            ; preds = %bb.px
  %.not.i.i888 = icmp eq i32 %i.tt, 0
  br i1 %.not.i.i888, label %lean_dec.exit890, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sm) #4
  br label %lean_dec.exit890

lean_dec.exit890:                                 ; preds = %bb.py, %bb.pz, %bb.qa, %lean_inc.exit845
  %i.tw = tail call ptr @l_Lean_Meta_Grind_pushEqCore___redArg(ptr noundef nonnull %i.qv, ptr noundef nonnull %i.qe, ptr noundef %i.tr, i8 noundef zeroext 0, ptr noundef %1, ptr noundef %3, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4
  br label %lean_dec.exit

bb.qb:                                            ; preds = %lean_obj_tag.exit1111
  %i.tx = and i64 %.pre1174, 1
  %.not.i883 = icmp eq i64 %i.tx, 0
  br i1 %.not.i883, label %bb.qc, label %lean_dec.exit886

bb.qc:                                            ; preds = %bb.qb
  %i.ty = load i32, ptr %i.sm, align 4, !tbaa !14 ; 3 uses
  %i.tz = icmp sgt i32 %i.ty, 1
  br i1 %i.tz, label %bb.qd, label %bb.qe, !prof !15

bb.qd:                                            ; preds = %bb.qc
  %i.ua = add nsw i32 %i.ty, -1
  store i32 %i.ua, ptr %i.sm, align 4, !tbaa !14
  br label %lean_dec.exit886

bb.qe:                                            ; preds = %bb.qc
  %.not.i.i884 = icmp eq i32 %i.ty, 0
  br i1 %.not.i.i884, label %lean_dec.exit886, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sm) #4
  br label %lean_dec.exit886

lean_dec.exit886:                                 ; preds = %bb.qd, %bb.qe, %bb.qf, %bb.qb
  %i.ub = load i32, ptr %i.qv, align 4, !tbaa !14 ; 3 uses
  %i.uc = icmp sgt i32 %i.ub, 1
  br i1 %i.uc, label %bb.qg, label %bb.qh, !prof !15

bb.qg:                                            ; preds = %lean_dec.exit886
  %i.ud = add nsw i32 %i.ub, -1
  store i32 %i.ud, ptr %i.qv, align 4, !tbaa !14
  br label %lean_dec_ref.exit728

bb.qh:                                            ; preds = %lean_dec.exit886
  %.not.i727 = icmp eq i32 %i.ub, 0
  br i1 %.not.i727, label %lean_dec_ref.exit728, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qv) #4
  br label %lean_dec_ref.exit728

lean_dec_ref.exit728:                             ; preds = %bb.qg, %bb.qh, %bb.qi
  %i.ue = load i32, ptr %i.qe, align 4, !tbaa !14 ; 3 uses
  %i.uf = icmp sgt i32 %i.ue, 1
  br i1 %i.uf, label %bb.qj, label %bb.qk, !prof !15

bb.qj:                                            ; preds = %lean_dec_ref.exit728
  %i.ug = add nsw i32 %i.ue, -1
  store i32 %i.ug, ptr %i.qe, align 4, !tbaa !14
  br label %lean_dec_ref.exit726

bb.qk:                                            ; preds = %lean_dec_ref.exit728
  %.not.i725 = icmp eq i32 %i.ue, 0
  br i1 %.not.i725, label %lean_dec_ref.exit726, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qe) #4
  br label %lean_dec_ref.exit726

lean_dec_ref.exit726:                             ; preds = %bb.qj, %bb.qk, %bb.ql
  %i.uh = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.ui = icmp sgt i32 %i.uh, 1
  br i1 %i.ui, label %bb.qm, label %bb.qn, !prof !15

bb.qm:                                            ; preds = %lean_dec_ref.exit726
  %i.uj = add nsw i32 %i.uh, -1
  store i32 %i.uj, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit724

bb.qn:                                            ; preds = %lean_dec_ref.exit726
  %.not.i723 = icmp eq i32 %i.uh, 0
  br i1 %.not.i723, label %lean_dec_ref.exit724, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit724

lean_dec_ref.exit724:                             ; preds = %bb.qm, %bb.qn, %bb.qo
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !12 ; 5 uses
  %.val969 = load i32, ptr %i.tc, align 8, !tbaa !14
  %i.um = icmp eq i32 %.val969, 1
  br i1 %i.um, label %lean_dec.exit, label %bb.qp

bb.qp:                                            ; preds = %lean_dec_ref.exit724
  %i.un = ptrtoint ptr %i.ul to i64
  %i.uo = and i64 %i.un, 1
  %.not.i842 = icmp eq i64 %i.uo, 0
  br i1 %.not.i842, label %bb.qq, label %lean_inc.exit843

bb.qq:                                            ; preds = %bb.qp
  %.val.i.i1115 = load i32, ptr %i.ul, align 4, !tbaa !14 ; 3 uses
  %i.up = icmp sgt i32 %.val.i.i1115, 0
  br i1 %i.up, label %bb.qr, label %bb.qs, !prof !15

bb.qr:                                            ; preds = %bb.qq
  %i.uq = add nuw i32 %.val.i.i1115, 1
  store i32 %i.uq, ptr %i.ul, align 4, !tbaa !14
  br label %lean_inc.exit843

bb.qs:                                            ; preds = %bb.qq
  %.not.i.i1116 = icmp eq i32 %.val.i.i1115, 0
  br i1 %.not.i.i1116, label %lean_inc.exit843, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.ur = atomicrmw sub ptr %i.ul, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit843

lean_inc.exit843:                                 ; preds = %bb.qt, %bb.qs, %bb.qr, %bb.qp
  br i1 %.not.i1108, label %bb.qu, label %bb.qy

bb.qu:                                            ; preds = %lean_inc.exit843
  %i.us = load i32, ptr %i.tc, align 8, !tbaa !14 ; 3 uses
  %i.ut = icmp sgt i32 %i.us, 1
  br i1 %i.ut, label %bb.qv, label %bb.qw, !prof !15

bb.qv:                                            ; preds = %bb.qu
  %i.uu = add nsw i32 %i.us, -1
  store i32 %i.uu, ptr %i.tc, align 8, !tbaa !14
  br label %bb.qy

bb.qw:                                            ; preds = %bb.qu
  %.not.i.i880 = icmp eq i32 %i.us, 0
  br i1 %.not.i.i880, label %bb.qy, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.tc) #4
  br label %bb.qy

bb.qy:                                            ; preds = %lean_inc.exit843, %bb.qx, %bb.qw, %bb.qv
  %i.uv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  store ptr %i.ul, ptr %i.uw, align 8, !tbaa !12
  br label %lean_dec.exit

bb.qz:                                            ; preds = %lean_dec.exit894
  %i.ux = and i64 %.pre1174, 1
  %.not.i875 = icmp eq i64 %i.ux, 0
  br i1 %.not.i875, label %bb.ra, label %lean_dec.exit878

bb.ra:                                            ; preds = %bb.qz
  %i.uy = load i32, ptr %i.sm, align 4, !tbaa !14 ; 3 uses
  %i.uz = icmp sgt i32 %i.uy, 1
  br i1 %i.uz, label %bb.rb, label %bb.rc, !prof !15

bb.rb:                                            ; preds = %bb.ra
  %i.va = add nsw i32 %i.uy, -1
  store i32 %i.va, ptr %i.sm, align 4, !tbaa !14
  br label %lean_dec.exit878

bb.rc:                                            ; preds = %bb.ra
  %.not.i.i876 = icmp eq i32 %i.uy, 0
  br i1 %.not.i.i876, label %lean_dec.exit878, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sm) #4
  br label %lean_dec.exit878

lean_dec.exit878:                                 ; preds = %bb.rb, %bb.rc, %bb.rd, %bb.qz
  %i.vb = load i32, ptr %i.qv, align 4, !tbaa !14 ; 3 uses
  %i.vc = icmp sgt i32 %i.vb, 1
  br i1 %i.vc, label %bb.re, label %bb.rf, !prof !15

bb.re:                                            ; preds = %lean_dec.exit878
  %i.vd = add nsw i32 %i.vb, -1
  store i32 %i.vd, ptr %i.qv, align 4, !tbaa !14
  br label %lean_dec_ref.exit722

bb.rf:                                            ; preds = %lean_dec.exit878
  %.not.i721 = icmp eq i32 %i.vb, 0
  br i1 %.not.i721, label %lean_dec_ref.exit722, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qv) #4
  br label %lean_dec_ref.exit722

lean_dec_ref.exit722:                             ; preds = %bb.re, %bb.rf, %bb.rg
  %i.ve = load i32, ptr %i.qe, align 4, !tbaa !14 ; 3 uses
  %i.vf = icmp sgt i32 %i.ve, 1
  br i1 %i.vf, label %bb.rh, label %bb.ri, !prof !15

bb.rh:                                            ; preds = %lean_dec_ref.exit722
  %i.vg = add nsw i32 %i.ve, -1
  store i32 %i.vg, ptr %i.qe, align 4, !tbaa !14
  br label %lean_dec_ref.exit720

bb.ri:                                            ; preds = %lean_dec_ref.exit722
  %.not.i719 = icmp eq i32 %i.ve, 0
  br i1 %.not.i719, label %lean_dec_ref.exit720, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qe) #4
  br label %lean_dec_ref.exit720

lean_dec_ref.exit720:                             ; preds = %bb.rh, %bb.ri, %bb.rj
  %i.vh = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.vi = icmp sgt i32 %i.vh, 1
  br i1 %i.vi, label %bb.rk, label %bb.rl, !prof !15

bb.rk:                                            ; preds = %lean_dec_ref.exit720
  %i.vj = add nsw i32 %i.vh, -1
  store i32 %i.vj, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit718

bb.rl:                                            ; preds = %lean_dec_ref.exit720
  %.not.i717 = icmp eq i32 %i.vh, 0
  br i1 %.not.i717, label %lean_dec_ref.exit718, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit718

lean_dec_ref.exit718:                             ; preds = %bb.rk, %bb.rl, %bb.rm
end_hunk_8
begin_hunk_9_@l_Lean_Meta_Grind_propagateDIte:bb.a

bb.k:                                             ; preds = %bb.j
  %.val.i.i704 = load i32, ptr %i.ab, align 4, !tbaa !14 ; 3 uses
  %i.ae = icmp sgt i32 %.val.i.i704, 0
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !15

bb.l:                                             ; preds = %bb.k
  %i.af = add nuw i32 %.val.i.i704, 1
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !14
  br label %lean_inc.exit565

bb.m:                                             ; preds = %bb.k
  %.not.i.i705 = icmp eq i32 %.val.i.i704, 0
  br i1 %.not.i.i705, label %lean_inc.exit565, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = atomicrmw sub ptr %i.ab, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit565

lean_inc.exit565:                                 ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %.val.i707 = load i32, ptr %i.s, align 8, !tbaa !14 ; 4 uses
  %i.ah = icmp eq i32 %.val.i707, 1
  br i1 %i.ah, label %.preheader.i, label %bb.s

.preheader.i:                                     ; preds = %lean_inc.exit565
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !12 ; 4 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, 1
  %.not.i7.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i7.i, label %bb.o, label %lean_dec.exit.i

bb.o:                                             ; preds = %.preheader.i
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !14 ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1
  br i1 %i.am, label %bb.p, label %bb.q, !prof !15

bb.p:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.al, -1
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.q:                                             ; preds = %bb.o
  %.not.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ai) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.r, %bb.q, %bb.p, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.s) #4
  br label %lean_dec_ref_known.exit

bb.s:                                             ; preds = %lean_inc.exit565
  %i.ao = icmp sgt i32 %.val.i707, 1
  br i1 %i.ao, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %bb.s
  %i.ap = add nsw i32 %.val.i707, -1
  store i32 %i.ap, ptr %i.s, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.u:                                             ; preds = %bb.s
  %.not.i.i708 = icmp eq i32 %.val.i707, 0
  br i1 %.not.i.i708, label %lean_dec_ref_known.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.t, %bb.u, %bb.v
  %i.aq = and i64 %i.ac, 510
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.w, label %bb.jd

bb.w:                                             ; preds = %lean_dec_ref_known.exit
  %.val.i.i710 = load i32, ptr %i.o, align 4, !tbaa !14 ; 3 uses
  %i.as = icmp sgt i32 %.val.i.i710, 0
  br i1 %i.as, label %bb.x, label %bb.y, !prof !15

bb.x:                                             ; preds = %bb.w
  %i.at = add nuw i32 %.val.i.i710, 1
  store i32 %i.at, ptr %i.o, align 4, !tbaa !14
  br label %lean_inc_ref.exit712

bb.y:                                             ; preds = %bb.w
  %.not.i.i711 = icmp eq i32 %.val.i.i710, 0
  br i1 %.not.i.i711, label %lean_inc_ref.exit712, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.au = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit712

lean_inc_ref.exit712:                             ; preds = %bb.x, %bb.y, %bb.z
  %i.av = tail call ptr @l_Lean_Meta_Grind_isEqFalse___redArg(ptr noundef nonnull %i.o, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 14 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = and i64 %i.aw, 1
  %.not.i713 = icmp eq i64 %i.ax, 0               ; 3 uses
  br i1 %.not.i713, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %lean_inc_ref.exit712
  %i.ay = lshr i64 %i.aw, 1
  %i.az = trunc i64 %i.ay to i32
  br label %lean_obj_tag.exit716

bb.ab:                                            ; preds = %lean_inc_ref.exit712
  %i.ba = getelementptr i8, ptr %i.av, i64 4
  %.val.i715 = load i32, ptr %i.ba, align 4
  %i.bb = lshr i32 %.val.i715, 24
  br label %lean_obj_tag.exit716

lean_obj_tag.exit716:                             ; preds = %bb.aa, %bb.ab
  %.0.i714 = phi i32 [ %i.az, %bb.aa ], [ %i.bb, %bb.ab ]
  %i.bc = icmp eq i32 %.0.i714, 0
  br i1 %i.bc, label %bb.ac, label %bb.ia

bb.ac:                                            ; preds = %lean_obj_tag.exit716
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !12 ; 7 uses
  %.val700 = load i32, ptr %i.av, align 8, !tbaa !14
  %i.bf = icmp eq i32 %.val700, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.be to i64               ; 2 uses
  %.pre899 = and i64 %.pre, 1                     ; 2 uses
  br i1 %i.bf, label %lean_dec.exit690, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i562 = icmp eq i64 %.pre899, 0
  br i1 %.not.i562, label %bb.ae, label %lean_inc.exit563

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i717 = load i32, ptr %i.be, align 4, !tbaa !14 ; 3 uses
  %i.bg = icmp sgt i32 %.val.i.i717, 0
  br i1 %i.bg, label %bb.af, label %bb.ag, !prof !15

bb.af:                                            ; preds = %bb.ae
  %i.bh = add nuw i32 %.val.i.i717, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !14
  br label %lean_inc.exit563

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i718 = icmp eq i32 %.val.i.i717, 0
  br i1 %.not.i.i718, label %lean_inc.exit563, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bi = atomicrmw sub ptr %i.be, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit563

lean_inc.exit563:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad
  br i1 %.not.i713, label %bb.ai, label %lean_dec.exit690

bb.ai:                                            ; preds = %lean_inc.exit563
  %i.bj = load i32, ptr %i.av, align 8, !tbaa !14 ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.aj, label %bb.ak, !prof !15

bb.aj:                                            ; preds = %bb.ai
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %i.av, align 8, !tbaa !14
  br label %lean_dec.exit690

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i688 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i688, label %lean_dec.exit690, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.av) #4
  br label %lean_dec.exit690

lean_dec.exit690:                                 ; preds = %bb.ac, %lean_inc.exit563, %bb.al, %bb.ak, %bb.aj
  %.0439 = phi ptr [ inttoptr (i64 1 to ptr), %bb.aj ], [ inttoptr (i64 1 to ptr), %lean_inc.exit563 ], [ inttoptr (i64 1 to ptr), %bb.al ], [ inttoptr (i64 1 to ptr), %bb.ak ], [ %i.av, %bb.ac ] ; 4 uses
  %.not.i683 = icmp eq i64 %.pre899, 0
  br i1 %.not.i683, label %bb.am, label %lean_dec.exit686

bb.am:                                            ; preds = %lean_dec.exit690
  %i.bm = load i32, ptr %i.be, align 4, !tbaa !14 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.an, label %bb.ao, !prof !15

bb.an:                                            ; preds = %bb.am
  %i.bo = add nsw i32 %i.bm, -1
  store i32 %i.bo, ptr %i.be, align 4, !tbaa !14
  br label %lean_dec.exit686

bb.ao:                                            ; preds = %bb.am
  %.not.i.i684 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i684, label %lean_dec.exit686, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #4
  br label %lean_dec.exit686

lean_dec.exit686:                                 ; preds = %bb.an, %bb.ao, %bb.ap, %lean_dec.exit690
  %i.bp = and i64 %.pre, 510
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.aq, label %bb.bl

bb.aq:                                            ; preds = %lean_dec.exit686
  br i1 %.not.i564, label %bb.ar, label %lean_dec.exit682

bb.ar:                                            ; preds = %bb.aq
  %i.br = load i32, ptr %i.ab, align 4, !tbaa !14 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 1
  br i1 %i.bs, label %bb.as, label %bb.at, !prof !15

bb.as:                                            ; preds = %bb.ar
  %i.bt = add nsw i32 %i.br, -1
  store i32 %i.bt, ptr %i.ab, align 4, !tbaa !14
  br label %lean_dec.exit682

bb.at:                                            ; preds = %bb.ar
  %.not.i.i680 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i680, label %lean_dec.exit682, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #4
  br label %lean_dec.exit682

lean_dec.exit682:                                 ; preds = %bb.as, %bb.at, %bb.au, %bb.aq
  %i.bu = load i32, ptr %i.o, align 4, !tbaa !14  ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.av, label %bb.aw, !prof !15

bb.av:                                            ; preds = %lean_dec.exit682
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %i.o, align 4, !tbaa !14
  br label %lean_dec_ref.exit514

bb.aw:                                            ; preds = %lean_dec.exit682
  %.not.i513 = icmp eq i32 %i.bu, 0
  br i1 %.not.i513, label %lean_dec_ref.exit514, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #4
  br label %lean_dec_ref.exit514

lean_dec_ref.exit514:                             ; preds = %bb.av, %bb.aw, %bb.ax
  br i1 %.not.i1034, label %bb.ay, label %lean_dec.exit678

bb.ay:                                            ; preds = %lean_dec_ref.exit514
  %i.bx = load i32, ptr %.1.i4561032, align 4, !tbaa !14 ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 1
  br i1 %i.by, label %bb.az, label %bb.ba, !prof !15

bb.az:                                            ; preds = %bb.ay
  %i.bz = add nsw i32 %i.bx, -1
  store i32 %i.bz, ptr %.1.i4561032, align 4, !tbaa !14
  br label %lean_dec.exit678

bb.ba:                                            ; preds = %bb.ay
  %.not.i.i676 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i676, label %lean_dec.exit678, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i4561032) #4
  br label %lean_dec.exit678

lean_dec.exit678:                                 ; preds = %bb.az, %bb.ba, %bb.bb, %lean_dec_ref.exit514
  br i1 %.not.i691, label %bb.bc, label %lean_dec.exit674

bb.bc:                                            ; preds = %lean_dec.exit678
  %i.ca = load i32, ptr %i.a, align 4, !tbaa !14  ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 1
  br i1 %i.cb, label %bb.bd, label %bb.be, !prof !15

bb.bd:                                            ; preds = %bb.bc
  %i.cc = add nsw i32 %i.ca, -1
  store i32 %i.cc, ptr %i.a, align 4, !tbaa !14
  br label %lean_dec.exit674

bb.be:                                            ; preds = %bb.bc
  %.not.i.i672 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i672, label %lean_dec.exit674, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #4
  br label %lean_dec.exit674

lean_dec.exit674:                                 ; preds = %bb.bd, %bb.be, %bb.bf, %lean_dec.exit678
  %i.cd = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %bb.bg, label %bb.bh, !prof !15

bb.bg:                                            ; preds = %lean_dec.exit674
  %i.cf = add nsw i32 %i.cd, -1
  store i32 %i.cf, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit512

bb.bh:                                            ; preds = %lean_dec.exit674
  %.not.i511 = icmp eq i32 %i.cd, 0
  br i1 %.not.i511, label %lean_dec_ref.exit512, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit512

lean_dec_ref.exit512:                             ; preds = %bb.bg, %bb.bh, %bb.bi
  br i1 %i.bf, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %lean_dec_ref.exit512
  %i.cg = getelementptr inbounds nuw i8, ptr %.0439, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.cg, align 8, !tbaa !12
  br label %lean_dec_ref.exit508

bb.bk:                                            ; preds = %lean_dec_ref.exit512
  %i.ch = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1) ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ci, align 8, !tbaa !12
  br label %lean_dec_ref.exit508

bb.bl:                                            ; preds = %lean_dec.exit686
  %i.cj = ptrtoint ptr %.0439 to i64
  %i.ck = and i64 %i.cj, 1
  %.not.i720 = icmp eq i64 %i.ck, 0
  br i1 %.not.i720, label %bb.bm, label %lean_del_object.exit

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_free_object(ptr noundef nonnull %.0439) #4
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.bl, %bb.bm
  %.val.i.i721 = load i32, ptr %i.o, align 4, !tbaa !14 ; 3 uses
  %i.cl = icmp sgt i32 %.val.i.i721, 0
  br i1 %i.cl, label %bb.bn, label %bb.bo, !prof !15

bb.bn:                                            ; preds = %lean_del_object.exit
  %i.cm = add nuw i32 %.val.i.i721, 1
  store i32 %i.cm, ptr %i.o, align 4, !tbaa !14
  br label %lean_inc_ref.exit723

bb.bo:                                            ; preds = %lean_del_object.exit
  %.not.i.i722 = icmp eq i32 %.val.i.i721, 0
  br i1 %.not.i.i722, label %lean_inc_ref.exit723, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.cn = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit723

lean_inc_ref.exit723:                             ; preds = %bb.bn, %bb.bo, %bb.bp
  %i.co = tail call ptr @l_Lean_Meta_Grind_mkEqFalseProof(ptr noundef nonnull %i.o, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 10 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = and i64 %i.cp, 1
  %.not.i724 = icmp eq i64 %i.cq, 0               ; 2 uses
  br i1 %.not.i724, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %lean_inc_ref.exit723
  %i.cr = lshr i64 %i.cp, 1
  %i.cs = trunc i64 %i.cr to i32
  br label %lean_obj_tag.exit727

bb.br:                                            ; preds = %lean_inc_ref.exit723
  %i.ct = getelementptr i8, ptr %i.co, i64 4
  %.val.i726 = load i32, ptr %i.ct, align 4
  %i.cu = lshr i32 %.val.i726, 24
  br label %lean_obj_tag.exit727

lean_obj_tag.exit727:                             ; preds = %bb.bq, %bb.br
  %.0.i725 = phi i32 [ %i.cs, %bb.bq ], [ %i.cu, %bb.br ]
  %i.cv = icmp eq i32 %.0.i725, 0
  br i1 %i.cv, label %bb.bs, label %bb.gx

bb.bs:                                            ; preds = %lean_obj_tag.exit727
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !12 ; 12 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, 1
  %.not.i728 = icmp eq i64 %i.cz, 0               ; 3 uses
  br i1 %.not.i728, label %bb.bt, label %lean_inc_n.exit

bb.bt:                                            ; preds = %bb.bs
  %.val.i.i729 = load i32, ptr %i.cx, align 4, !tbaa !14 ; 3 uses
  %i.da = icmp sgt i32 %.val.i.i729, 0
  br i1 %i.da, label %bb.bu, label %bb.bv, !prof !15

bb.bu:                                            ; preds = %bb.bt
  %i.db = add nuw i32 %.val.i.i729, 2
  store i32 %i.db, ptr %i.cx, align 4, !tbaa !14
  br label %lean_inc_n.exit

bb.bv:                                            ; preds = %bb.bt
  %.not.i.i730 = icmp eq i32 %.val.i.i729, 0
  br i1 %.not.i.i730, label %lean_inc_n.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.dc = atomicrmw sub ptr %i.cx, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %bb.bs, %bb.bu, %bb.bv, %bb.bw
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.co)
  %i.dd = tail call ptr @l_Lean_Expr_getAppFn(ptr noundef %0) #4 ; 10 uses
  %i.de = load atomic i32, ptr @l_Lean_Meta_Grind_propagateIte___closed__0_once seq_cst, align 4, !tbaa !17
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %bb.bx, label %bb.by, !prof !15

bb.bx:                                            ; preds = %lean_inc_n.exit
  %i.dg = load ptr, ptr @l_Lean_Meta_Grind_propagateIte___closed__0, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.by:                                            ; preds = %lean_inc_n.exit
  %i.dh = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_Grind_propagateIte___closed__0, ptr noundef nonnull @l_Lean_Meta_Grind_propagateIte___closed__0_once, ptr noundef nonnull @_init_l_Lean_Meta_Grind_propagateIte___closed__0) #4
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.bx, %bb.by
  %.0.i731 = phi ptr [ %i.dg, %bb.bx ], [ %i.dh, %bb.by ]
  %i.di = tail call ptr @lean_mk_array(ptr noundef %i.a, ptr noundef %.0.i731) #4
  %.val.i.i732 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.dj = icmp sgt i32 %.val.i.i732, 0
  br i1 %i.dj, label %bb.bz, label %bb.ca, !prof !15
end_hunk_9
begin_hunk_10_@l_Lean_Meta_Grind_propagateDIte:bb.a
  %i.fa = add nuw i32 %.val.i.i759, 1
  store i32 %i.fa, ptr %2, align 4, !tbaa !14
  br label %lean_inc.exit553

bb.dg:                                            ; preds = %bb.de
  %.not.i.i760 = icmp eq i32 %.val.i.i759, 0
  br i1 %.not.i.i760, label %lean_inc.exit553, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.fb = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit553

lean_inc.exit553:                                 ; preds = %bb.dh, %bb.dg, %bb.df, %lean_inc_ref.exit758
  %i.fc = ptrtoint ptr %1 to i64
  %i.fd = and i64 %i.fc, 1
  %.not.i550 = icmp eq i64 %i.fd, 0
  br i1 %.not.i550, label %bb.di, label %lean_inc.exit551

bb.di:                                            ; preds = %lean_inc.exit553
  %.val.i.i762 = load i32, ptr %1, align 4, !tbaa !14 ; 3 uses
  %i.fe = icmp sgt i32 %.val.i.i762, 0
  br i1 %i.fe, label %bb.dj, label %bb.dk, !prof !15

bb.dj:                                            ; preds = %bb.di
  %i.ff = add nuw i32 %.val.i.i762, 1
  store i32 %i.ff, ptr %1, align 4, !tbaa !14
  br label %lean_inc.exit551

bb.dk:                                            ; preds = %bb.di
  %.not.i.i763 = icmp eq i32 %.val.i.i762, 0
  br i1 %.not.i.i763, label %lean_inc.exit551, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.fg = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit551

lean_inc.exit551:                                 ; preds = %bb.dl, %bb.dk, %bb.dj, %lean_inc.exit553
  %i.fh = tail call ptr @lean_grind_preprocess(ptr noundef %i.dq, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) #4 ; 10 uses
  %i.fi = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fj = and i64 %i.fi, 1
  %.not.i765 = icmp eq i64 %i.fj, 0               ; 2 uses
  br i1 %.not.i765, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %lean_inc.exit551
  %i.fk = lshr i64 %i.fi, 1
  %i.fl = trunc i64 %i.fk to i32
  br label %lean_obj_tag.exit768

bb.dn:                                            ; preds = %lean_inc.exit551
  %i.fm = getelementptr i8, ptr %i.fh, i64 4
  %.val.i767 = load i32, ptr %i.fm, align 4
  %i.fn = lshr i32 %.val.i767, 24
  br label %lean_obj_tag.exit768

lean_obj_tag.exit768:                             ; preds = %bb.dm, %bb.dn
  %.0.i766 = phi i32 [ %i.fl, %bb.dm ], [ %i.fn, %bb.dn ]
  %i.fo = icmp eq i32 %.0.i766, 0
  br i1 %i.fo, label %bb.do, label %bb.fv

bb.do:                                            ; preds = %lean_obj_tag.exit768
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !12 ; 6 uses
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = and i64 %i.fr, 1
  %.not.i548 = icmp eq i64 %i.fs, 0
  br i1 %.not.i548, label %bb.dp, label %lean_inc.exit549

bb.dp:                                            ; preds = %bb.do
  %.val.i.i769 = load i32, ptr %i.fq, align 4, !tbaa !14 ; 3 uses
  %i.ft = icmp sgt i32 %.val.i.i769, 0
  br i1 %i.ft, label %bb.dq, label %bb.dr, !prof !15

bb.dq:                                            ; preds = %bb.dp
  %i.fu = add nuw i32 %.val.i.i769, 1
  store i32 %i.fu, ptr %i.fq, align 4, !tbaa !14
  br label %lean_inc.exit549

bb.dr:                                            ; preds = %bb.dp
  %.not.i.i770 = icmp eq i32 %.val.i.i769, 0
  br i1 %.not.i.i770, label %lean_inc.exit549, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.fv = atomicrmw sub ptr %i.fq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit549

lean_inc.exit549:                                 ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.do
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.fh)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !12 ; 11 uses
  %.val.i.i772 = load i32, ptr %i.fx, align 4, !tbaa !14 ; 3 uses
  %i.fy = icmp sgt i32 %.val.i.i772, 0
  br i1 %i.fy, label %bb.dt, label %bb.du, !prof !15

bb.dt:                                            ; preds = %lean_inc.exit549
  %i.fz = add nuw i32 %.val.i.i772, 1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !14
  br label %lean_inc_ref.exit774

bb.du:                                            ; preds = %lean_inc.exit549
  %.not.i.i773 = icmp eq i32 %.val.i.i772, 0
  br i1 %.not.i.i773, label %lean_inc_ref.exit774, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ga = atomicrmw sub ptr %i.fx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit774

lean_inc_ref.exit774:                             ; preds = %bb.dt, %bb.du, %bb.dv
  %i.gb = tail call ptr @l_Lean_Meta_Simp_Result_getProof(ptr noundef nonnull %i.fq, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) #4 ; 10 uses
  %i.gc = ptrtoint ptr %i.gb to i64               ; 2 uses
  %i.gd = and i64 %i.gc, 1
  %.not.i775 = icmp eq i64 %i.gd, 0               ; 2 uses
  br i1 %.not.i775, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %lean_inc_ref.exit774
  %i.ge = lshr i64 %i.gc, 1
  %i.gf = trunc i64 %i.ge to i32
  br label %lean_obj_tag.exit778

bb.dx:                                            ; preds = %lean_inc_ref.exit774
  %i.gg = getelementptr i8, ptr %i.gb, i64 4
  %.val.i777 = load i32, ptr %i.gg, align 4
  %i.gh = lshr i32 %.val.i777, 24
  br label %lean_obj_tag.exit778

lean_obj_tag.exit778:                             ; preds = %bb.dw, %bb.dx
  %.0.i776 = phi i32 [ %i.gf, %bb.dw ], [ %i.gh, %bb.dx ]
  %i.gi = icmp eq i32 %.0.i776, 0
  br i1 %i.gi, label %bb.dy, label %bb.eq

bb.dy:                                            ; preds = %lean_obj_tag.exit778
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !12 ; 5 uses
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = and i64 %i.gl, 1
  %.not.i546 = icmp eq i64 %i.gm, 0
  br i1 %.not.i546, label %bb.dz, label %lean_inc.exit547

bb.dz:                                            ; preds = %bb.dy
  %.val.i.i779 = load i32, ptr %i.gk, align 4, !tbaa !14 ; 3 uses
  %i.gn = icmp sgt i32 %.val.i.i779, 0
  br i1 %i.gn, label %bb.ea, label %bb.eb, !prof !15

bb.ea:                                            ; preds = %bb.dz
  %i.go = add nuw i32 %.val.i.i779, 1
  store i32 %i.go, ptr %i.gk, align 4, !tbaa !14
  br label %lean_inc.exit547

bb.eb:                                            ; preds = %bb.dz
  %.not.i.i780 = icmp eq i32 %.val.i.i779, 0
  br i1 %.not.i.i780, label %lean_inc.exit547, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.gp = atomicrmw sub ptr %i.gk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit547

lean_inc.exit547:                                 ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dy
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.gb)
  %i.gq = tail call ptr @l_Lean_Expr_constLevels_x21(ptr noundef %i.dd) #4
  %i.gr = load i32, ptr %i.dd, align 4, !tbaa !14 ; 3 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.ed, label %bb.ee, !prof !15

bb.ed:                                            ; preds = %lean_inc.exit547
  %i.gt = add nsw i32 %i.gr, -1
  store i32 %i.gt, ptr %i.dd, align 4, !tbaa !14
  br label %lean_dec_ref.exit510

bb.ee:                                            ; preds = %lean_inc.exit547
  %.not.i509 = icmp eq i32 %i.gr, 0
  br i1 %.not.i509, label %lean_dec_ref.exit510, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #4
  br label %lean_dec_ref.exit510

lean_dec_ref.exit510:                             ; preds = %bb.ed, %bb.ee, %bb.ef
  %i.gu = tail call ptr @l_Lean_mkConst(ptr noundef nonnull @l_Lean_Meta_Grind_propagateDIte___closed__1_value, ptr noundef %i.gq) #4
  %i.gv = tail call ptr @l_Lean_mkAppRange(ptr noundef %i.gu, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 11 to ptr), ptr noundef %i.dm) #4
  %.val.i.i782 = load i32, ptr %i.fx, align 4, !tbaa !14 ; 3 uses
  %i.gw = icmp sgt i32 %.val.i.i782, 0
  br i1 %i.gw, label %bb.eg, label %bb.eh, !prof !15

bb.eg:                                            ; preds = %lean_dec_ref.exit510
  %i.gx = add nuw i32 %.val.i.i782, 1
  store i32 %i.gx, ptr %i.fx, align 4, !tbaa !14
  br label %lean_inc_ref.exit784

bb.eh:                                            ; preds = %lean_dec_ref.exit510
  %.not.i.i783 = icmp eq i32 %.val.i.i782, 0
  br i1 %.not.i.i783, label %lean_inc_ref.exit784, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.gy = atomicrmw sub ptr %i.fx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit784

lean_inc_ref.exit784:                             ; preds = %bb.eg, %bb.eh, %bb.ei
  %i.gz = tail call ptr @l_Lean_mkApp3(ptr noundef %i.gv, ptr noundef nonnull %i.fx, ptr noundef %i.cx, ptr noundef %i.gk) #4
  br i1 %.not.i564, label %bb.ej, label %lean_dec.exit670

bb.ej:                                            ; preds = %lean_inc_ref.exit784
  %i.ha = load i32, ptr %i.ab, align 4, !tbaa !14 ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, 1
  br i1 %i.hb, label %bb.ek, label %bb.el, !prof !15

bb.ek:                                            ; preds = %bb.ej
  %i.hc = add nsw i32 %i.ha, -1
  store i32 %i.hc, ptr %i.ab, align 4, !tbaa !14
  br label %lean_dec.exit670

bb.el:                                            ; preds = %bb.ej
  %.not.i.i668 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i668, label %lean_dec.exit670, label %bb.em

bb.em:                                            ; preds = %bb.el
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #4
  br label %lean_dec.exit670

lean_dec.exit670:                                 ; preds = %bb.ek, %bb.el, %bb.em, %lean_inc_ref.exit784
  %i.hd = tail call ptr @l___private_Lean_Meta_Tactic_Grind_Propagate_0__Lean_Meta_Grind_applyCongrFun(ptr noundef nonnull %0, ptr noundef nonnull %i.fx, ptr noundef %i.gz, ptr noundef nonnull inttoptr (i64 11 to ptr), ptr noundef %i.dm, i8 noundef zeroext 0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 3 uses
  %i.he = load i32, ptr %i.dm, align 4, !tbaa !14 ; 3 uses
  %i.hf = icmp sgt i32 %i.he, 1
  br i1 %i.hf, label %bb.en, label %bb.eo, !prof !15

bb.en:                                            ; preds = %lean_dec.exit670
  %i.hg = add nsw i32 %i.he, -1
  store i32 %i.hg, ptr %i.dm, align 4, !tbaa !14
  br label %lean_dec_ref.exit508

bb.eo:                                            ; preds = %lean_dec.exit670
  %.not.i507 = icmp eq i32 %i.he, 0
  br i1 %.not.i507, label %lean_dec_ref.exit508, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #4
  br label %lean_dec_ref.exit508

bb.eq:                                            ; preds = %lean_obj_tag.exit778
  %i.hh = load i32, ptr %i.fx, align 4, !tbaa !14 ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, 1
  br i1 %i.hi, label %bb.er, label %bb.es, !prof !15

bb.er:                                            ; preds = %bb.eq
  %i.hj = add nsw i32 %i.hh, -1
  store i32 %i.hj, ptr %i.fx, align 4, !tbaa !14
  br label %lean_dec_ref.exit506

bb.es:                                            ; preds = %bb.eq
  %.not.i505 = icmp eq i32 %i.hh, 0
  br i1 %.not.i505, label %lean_dec_ref.exit506, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fx) #4
  br label %lean_dec_ref.exit506

lean_dec_ref.exit506:                             ; preds = %bb.er, %bb.es, %bb.et
  %i.hk = load i32, ptr %i.dm, align 4, !tbaa !14 ; 3 uses
  %i.hl = icmp sgt i32 %i.hk, 1
  br i1 %i.hl, label %bb.eu, label %bb.ev, !prof !15

bb.eu:                                            ; preds = %lean_dec_ref.exit506
  %i.hm = add nsw i32 %i.hk, -1
  store i32 %i.hm, ptr %i.dm, align 4, !tbaa !14
  br label %lean_dec_ref.exit504

bb.ev:                                            ; preds = %lean_dec_ref.exit506
  %.not.i503 = icmp eq i32 %i.hk, 0
  br i1 %.not.i503, label %lean_dec_ref.exit504, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #4
  br label %lean_dec_ref.exit504

lean_dec_ref.exit504:                             ; preds = %bb.eu, %bb.ev, %bb.ew
  %i.hn = load i32, ptr %i.dd, align 4, !tbaa !14 ; 3 uses
  %i.ho = icmp sgt i32 %i.hn, 1
  br i1 %i.ho, label %bb.ex, label %bb.ey, !prof !15

bb.ex:                                            ; preds = %lean_dec_ref.exit504
  %i.hp = add nsw i32 %i.hn, -1
  store i32 %i.hp, ptr %i.dd, align 4, !tbaa !14
  br label %lean_dec_ref.exit502

bb.ey:                                            ; preds = %lean_dec_ref.exit504
  %.not.i501 = icmp eq i32 %i.hn, 0
  br i1 %.not.i501, label %lean_dec_ref.exit502, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #4
  br label %lean_dec_ref.exit502

lean_dec_ref.exit502:                             ; preds = %bb.ex, %bb.ey, %bb.ez
  br i1 %.not.i728, label %bb.fa, label %lean_dec.exit666

bb.fa:                                            ; preds = %lean_dec_ref.exit502
  %i.hq = load i32, ptr %i.cx, align 4, !tbaa !14 ; 3 uses
  %i.hr = icmp sgt i32 %i.hq, 1
  br i1 %i.hr, label %bb.fb, label %bb.fc, !prof !15

bb.fb:                                            ; preds = %bb.fa
  %i.hs = add nsw i32 %i.hq, -1
  store i32 %i.hs, ptr %i.cx, align 4, !tbaa !14
  br label %lean_dec.exit666

bb.fc:                                            ; preds = %bb.fa
  %.not.i.i664 = icmp eq i32 %i.hq, 0
  br i1 %.not.i.i664, label %lean_dec.exit666, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cx) #4
  br label %lean_dec.exit666

lean_dec.exit666:                                 ; preds = %bb.fb, %bb.fc, %bb.fd, %lean_dec_ref.exit502
  br i1 %.not.i564, label %bb.fe, label %lean_dec.exit662

bb.fe:                                            ; preds = %lean_dec.exit666
  %i.ht = load i32, ptr %i.ab, align 4, !tbaa !14 ; 3 uses
  %i.hu = icmp sgt i32 %i.ht, 1
  br i1 %i.hu, label %bb.ff, label %bb.fg, !prof !15

bb.ff:                                            ; preds = %bb.fe
  %i.hv = add nsw i32 %i.ht, -1
  store i32 %i.hv, ptr %i.ab, align 4, !tbaa !14
  br label %lean_dec.exit662

bb.fg:                                            ; preds = %bb.fe
  %.not.i.i660 = icmp eq i32 %i.ht, 0
  br i1 %.not.i.i660, label %lean_dec.exit662, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #4
  br label %lean_dec.exit662

lean_dec.exit662:                                 ; preds = %bb.ff, %bb.fg, %bb.fh, %lean_dec.exit666
  %i.hw = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.hx = icmp sgt i32 %i.hw, 1
  br i1 %i.hx, label %bb.fi, label %bb.fj, !prof !15

bb.fi:                                            ; preds = %lean_dec.exit662
  %i.hy = add nsw i32 %i.hw, -1
  store i32 %i.hy, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit500

bb.fj:                                            ; preds = %lean_dec.exit662
  %.not.i499 = icmp eq i32 %i.hw, 0
  br i1 %.not.i499, label %lean_dec_ref.exit500, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit500

lean_dec_ref.exit500:                             ; preds = %bb.fi, %bb.fj, %bb.fk
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !12 ; 5 uses
  %.val699 = load i32, ptr %i.gb, align 8, !tbaa !14
  %i.ib = icmp eq i32 %.val699, 1
  br i1 %i.ib, label %lean_dec_ref.exit508, label %bb.fl

bb.fl:                                            ; preds = %lean_dec_ref.exit500
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = and i64 %i.ic, 1
  %.not.i544 = icmp eq i64 %i.id, 0
  br i1 %.not.i544, label %bb.fm, label %lean_inc.exit545

bb.fm:                                            ; preds = %bb.fl
  %.val.i.i785 = load i32, ptr %i.ia, align 4, !tbaa !14 ; 3 uses
  %i.ie = icmp sgt i32 %.val.i.i785, 0
  br i1 %i.ie, label %bb.fn, label %bb.fo, !prof !15

bb.fn:                                            ; preds = %bb.fm
  %i.if = add nuw i32 %.val.i.i785, 1
  store i32 %i.if, ptr %i.ia, align 4, !tbaa !14
  br label %lean_inc.exit545

bb.fo:                                            ; preds = %bb.fm
  %.not.i.i786 = icmp eq i32 %.val.i.i785, 0
  br i1 %.not.i.i786, label %lean_inc.exit545, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ig = atomicrmw sub ptr %i.ia, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit545

lean_inc.exit545:                                 ; preds = %bb.fp, %bb.fo, %bb.fn, %bb.fl
  br i1 %.not.i775, label %bb.fq, label %bb.fu

bb.fq:                                            ; preds = %lean_inc.exit545
  %i.ih = load i32, ptr %i.gb, align 8, !tbaa !14 ; 3 uses
  %i.ii = icmp sgt i32 %i.ih, 1
  br i1 %i.ii, label %bb.fr, label %bb.fs, !prof !15

bb.fr:                                            ; preds = %bb.fq
  %i.ij = add nsw i32 %i.ih, -1
  store i32 %i.ij, ptr %i.gb, align 8, !tbaa !14
  br label %bb.fu

bb.fs:                                            ; preds = %bb.fq
  %.not.i.i656 = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i656, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gb) #4
  br label %bb.fu

bb.fu:                                            ; preds = %lean_inc.exit545, %bb.ft, %bb.fs, %bb.fr
  %i.ik = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.ia, ptr %i.il, align 8, !tbaa !12
  br label %lean_dec_ref.exit508

bb.fv:                                            ; preds = %lean_obj_tag.exit768
  %i.im = load i32, ptr %i.dm, align 4, !tbaa !14 ; 3 uses
  %i.in = icmp sgt i32 %i.im, 1
  br i1 %i.in, label %bb.fw, label %bb.fx, !prof !15

bb.fw:                                            ; preds = %bb.fv
  %i.io = add nsw i32 %i.im, -1
  store i32 %i.io, ptr %i.dm, align 4, !tbaa !14
  br label %lean_dec_ref.exit498

bb.fx:                                            ; preds = %bb.fv
  %.not.i497 = icmp eq i32 %i.im, 0
  br i1 %.not.i497, label %lean_dec_ref.exit498, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #4
  br label %lean_dec_ref.exit498

lean_dec_ref.exit498:                             ; preds = %bb.fw, %bb.fx, %bb.fy
  %i.ip = load i32, ptr %i.dd, align 4, !tbaa !14 ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.fz, label %bb.ga, !prof !15

bb.fz:                                            ; preds = %lean_dec_ref.exit498
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %i.dd, align 4, !tbaa !14
  br label %lean_dec_ref.exit496

bb.ga:                                            ; preds = %lean_dec_ref.exit498
  %.not.i495 = icmp eq i32 %i.ip, 0
  br i1 %.not.i495, label %lean_dec_ref.exit496, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #4
  br label %lean_dec_ref.exit496

lean_dec_ref.exit496:                             ; preds = %bb.fz, %bb.ga, %bb.gb
  br i1 %.not.i728, label %bb.gc, label %lean_dec.exit654

bb.gc:                                            ; preds = %lean_dec_ref.exit496
  %i.is = load i32, ptr %i.cx, align 4, !tbaa !14 ; 3 uses
  %i.it = icmp sgt i32 %i.is, 1
  br i1 %i.it, label %bb.gd, label %bb.ge, !prof !15

bb.gd:                                            ; preds = %bb.gc
  %i.iu = add nsw i32 %i.is, -1
  store i32 %i.iu, ptr %i.cx, align 4, !tbaa !14
  br label %lean_dec.exit654

bb.ge:                                            ; preds = %bb.gc
  %.not.i.i652 = icmp eq i32 %i.is, 0
  br i1 %.not.i.i652, label %lean_dec.exit654, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cx) #4
  br label %lean_dec.exit654

lean_dec.exit654:                                 ; preds = %bb.gd, %bb.ge, %bb.gf, %lean_dec_ref.exit496
  br i1 %.not.i564, label %bb.gg, label %lean_dec.exit650

bb.gg:                                            ; preds = %lean_dec.exit654
  %i.iv = load i32, ptr %i.ab, align 4, !tbaa !14 ; 3 uses
  %i.iw = icmp sgt i32 %i.iv, 1
  br i1 %i.iw, label %bb.gh, label %bb.gi, !prof !15

bb.gh:                                            ; preds = %bb.gg
  %i.ix = add nsw i32 %i.iv, -1
  store i32 %i.ix, ptr %i.ab, align 4, !tbaa !14
  br label %lean_dec.exit650

bb.gi:                                            ; preds = %bb.gg
  %.not.i.i648 = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i648, label %lean_dec.exit650, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #4
  br label %lean_dec.exit650

lean_dec.exit650:                                 ; preds = %bb.gh, %bb.gi, %bb.gj, %lean_dec.exit654
  %i.iy = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.iz = icmp sgt i32 %i.iy, 1
  br i1 %i.iz, label %bb.gk, label %bb.gl, !prof !15

bb.gk:                                            ; preds = %lean_dec.exit650
  %i.ja = add nsw i32 %i.iy, -1
  store i32 %i.ja, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit494

bb.gl:                                            ; preds = %lean_dec.exit650
  %.not.i493 = icmp eq i32 %i.iy, 0
  br i1 %.not.i493, label %lean_dec_ref.exit494, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit494

lean_dec_ref.exit494:                             ; preds = %bb.gk, %bb.gl, %bb.gm
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !12 ; 5 uses
  %.val698 = load i32, ptr %i.fh, align 8, !tbaa !14
  %i.jd = icmp eq i32 %.val698, 1
  br i1 %i.jd, label %lean_dec_ref.exit508, label %bb.gn

bb.gn:                                            ; preds = %lean_dec_ref.exit494
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = and i64 %i.je, 1
  %.not.i542 = icmp eq i64 %i.jf, 0
  br i1 %.not.i542, label %bb.go, label %lean_inc.exit543

bb.go:                                            ; preds = %bb.gn
  %.val.i.i788 = load i32, ptr %i.jc, align 4, !tbaa !14 ; 3 uses
  %i.jg = icmp sgt i32 %.val.i.i788, 0
  br i1 %i.jg, label %bb.gp, label %bb.gq, !prof !15

bb.gp:                                            ; preds = %bb.go
  %i.jh = add nuw i32 %.val.i.i788, 1
  store i32 %i.jh, ptr %i.jc, align 4, !tbaa !14
  br label %lean_inc.exit543

bb.gq:                                            ; preds = %bb.go
  %.not.i.i789 = icmp eq i32 %.val.i.i788, 0
  br i1 %.not.i.i789, label %lean_inc.exit543, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ji = atomicrmw sub ptr %i.jc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit543

lean_inc.exit543:                                 ; preds = %bb.gr, %bb.gq, %bb.gp, %bb.gn
  br i1 %.not.i765, label %bb.gs, label %bb.gw

bb.gs:                                            ; preds = %lean_inc.exit543
  %i.jj = load i32, ptr %i.fh, align 8, !tbaa !14 ; 3 uses
  %i.jk = icmp sgt i32 %i.jj, 1
  br i1 %i.jk, label %bb.gt, label %bb.gu, !prof !15

bb.gt:                                            ; preds = %bb.gs
  %i.jl = add nsw i32 %i.jj, -1
  store i32 %i.jl, ptr %i.fh, align 8, !tbaa !14
  br label %bb.gw

bb.gu:                                            ; preds = %bb.gs
  %.not.i.i644 = icmp eq i32 %i.jj, 0
  br i1 %.not.i.i644, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fh) #4
  br label %bb.gw

bb.gw:                                            ; preds = %lean_inc.exit543, %bb.gv, %bb.gu, %bb.gt
  %i.jm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store ptr %i.jc, ptr %i.jn, align 8, !tbaa !12
  br label %lean_dec_ref.exit508

bb.gx:                                            ; preds = %lean_obj_tag.exit727
  br i1 %.not.i564, label %bb.gy, label %lean_dec.exit642

bb.gy:                                            ; preds = %bb.gx
  %i.jo = load i32, ptr %i.ab, align 4, !tbaa !14 ; 3 uses
  %i.jp = icmp sgt i32 %i.jo, 1
  br i1 %i.jp, label %bb.gz, label %bb.ha, !prof !15

bb.gz:                                            ; preds = %bb.gy
  %i.jq = add nsw i32 %i.jo, -1
  store i32 %i.jq, ptr %i.ab, align 4, !tbaa !14
  br label %lean_dec.exit642

bb.ha:                                            ; preds = %bb.gy
  %.not.i.i640 = icmp eq i32 %i.jo, 0
  br i1 %.not.i.i640, label %lean_dec.exit642, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #4
  br label %lean_dec.exit642

lean_dec.exit642:                                 ; preds = %bb.gz, %bb.ha, %bb.hb, %bb.gx
  %i.jr = load i32, ptr %i.o, align 4, !tbaa !14  ; 3 uses
  %i.js = icmp sgt i32 %i.jr, 1
  br i1 %i.js, label %bb.hc, label %bb.hd, !prof !15

bb.hc:                                            ; preds = %lean_dec.exit642
  %i.jt = add nsw i32 %i.jr, -1
  store i32 %i.jt, ptr %i.o, align 4, !tbaa !14
  br label %lean_dec_ref.exit492

bb.hd:                                            ; preds = %lean_dec.exit642
  %.not.i491 = icmp eq i32 %i.jr, 0
  br i1 %.not.i491, label %lean_dec_ref.exit492, label %bb.he

bb.he:                                            ; preds = %bb.hd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #4
  br label %lean_dec_ref.exit492

lean_dec_ref.exit492:                             ; preds = %bb.hc, %bb.hd, %bb.he
  br i1 %.not.i1034, label %bb.hf, label %lean_dec.exit638

bb.hf:                                            ; preds = %lean_dec_ref.exit492
  %i.ju = load i32, ptr %.1.i4561032, align 4, !tbaa !14 ; 3 uses
  %i.jv = icmp sgt i32 %i.ju, 1
  br i1 %i.jv, label %bb.hg, label %bb.hh, !prof !15

bb.hg:                                            ; preds = %bb.hf
  %i.jw = add nsw i32 %i.ju, -1
  store i32 %i.jw, ptr %.1.i4561032, align 4, !tbaa !14
  br label %lean_dec.exit638

bb.hh:                                            ; preds = %bb.hf
  %.not.i.i636 = icmp eq i32 %i.ju, 0
  br i1 %.not.i.i636, label %lean_dec.exit638, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i4561032) #4
  br label %lean_dec.exit638

lean_dec.exit638:                                 ; preds = %bb.hg, %bb.hh, %bb.hi, %lean_dec_ref.exit492
  br i1 %.not.i691, label %bb.hj, label %lean_dec.exit634

bb.hj:                                            ; preds = %lean_dec.exit638
  %i.jx = load i32, ptr %i.a, align 4, !tbaa !14  ; 3 uses
  %i.jy = icmp sgt i32 %i.jx, 1
  br i1 %i.jy, label %bb.hk, label %bb.hl, !prof !15

bb.hk:                                            ; preds = %bb.hj
  %i.jz = add nsw i32 %i.jx, -1
  store i32 %i.jz, ptr %i.a, align 4, !tbaa !14
  br label %lean_dec.exit634

bb.hl:                                            ; preds = %bb.hj
  %.not.i.i632 = icmp eq i32 %i.jx, 0
  br i1 %.not.i.i632, label %lean_dec.exit634, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #4
  br label %lean_dec.exit634

lean_dec.exit634:                                 ; preds = %bb.hk, %bb.hl, %bb.hm, %lean_dec.exit638
  %i.ka = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.kb = icmp sgt i32 %i.ka, 1
  br i1 %i.kb, label %bb.hn, label %bb.ho, !prof !15

bb.hn:                                            ; preds = %lean_dec.exit634
  %i.kc = add nsw i32 %i.ka, -1
  store i32 %i.kc, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit490

bb.ho:                                            ; preds = %lean_dec.exit634
  %.not.i489 = icmp eq i32 %i.ka, 0
  br i1 %.not.i489, label %lean_dec_ref.exit490, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit490

lean_dec_ref.exit490:                             ; preds = %bb.hn, %bb.ho, %bb.hp
  %i.kd = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !12 ; 5 uses
  %.val697 = load i32, ptr %i.co, align 8, !tbaa !14
  %i.kf = icmp eq i32 %.val697, 1
  br i1 %i.kf, label %lean_dec_ref.exit508, label %bb.hq

bb.hq:                                            ; preds = %lean_dec_ref.exit490
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = and i64 %i.kg, 1
  %.not.i540 = icmp eq i64 %i.kh, 0
  br i1 %.not.i540, label %bb.hr, label %lean_inc.exit541

bb.hr:                                            ; preds = %bb.hq
  %.val.i.i791 = load i32, ptr %i.ke, align 4, !tbaa !14 ; 3 uses
  %i.ki = icmp sgt i32 %.val.i.i791, 0
  br i1 %i.ki, label %bb.hs, label %bb.ht, !prof !15

bb.hs:                                            ; preds = %bb.hr
  %i.kj = add nuw i32 %.val.i.i791, 1
  store i32 %i.kj, ptr %i.ke, align 4, !tbaa !14
  br label %lean_inc.exit541

bb.ht:                                            ; preds = %bb.hr
  %.not.i.i792 = icmp eq i32 %.val.i.i791, 0
  br i1 %.not.i.i792, label %lean_inc.exit541, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.kk = atomicrmw sub ptr %i.ke, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit541

lean_inc.exit541:                                 ; preds = %bb.hu, %bb.ht, %bb.hs, %bb.hq
  br i1 %.not.i724, label %bb.hv, label %bb.hz

bb.hv:                                            ; preds = %lean_inc.exit541
  %i.kl = load i32, ptr %i.co, align 8, !tbaa !14 ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 1
  br i1 %i.km, label %bb.hw, label %bb.hx, !prof !15

bb.hw:                                            ; preds = %bb.hv
  %i.kn = add nsw i32 %i.kl, -1
  store i32 %i.kn, ptr %i.co, align 8, !tbaa !14
  br label %bb.hz

bb.hx:                                            ; preds = %bb.hv
  %.not.i.i628 = icmp eq i32 %i.kl, 0
  br i1 %.not.i.i628, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.co) #4
  br label %bb.hz

bb.hz:                                            ; preds = %lean_inc.exit541, %bb.hy, %bb.hx, %bb.hw
  %i.ko = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.ke, ptr %i.kp, align 8, !tbaa !12
  br label %lean_dec_ref.exit508

bb.ia:                                            ; preds = %lean_obj_tag.exit716
  br i1 %.not.i564, label %bb.ib, label %lean_dec.exit626

bb.ib:                                            ; preds = %bb.ia
  %i.kq = load i32, ptr %i.ab, align 4, !tbaa !14 ; 3 uses
  %i.kr = icmp sgt i32 %i.kq, 1
  br i1 %i.kr, label %bb.ic, label %bb.id, !prof !15

bb.ic:                                            ; preds = %bb.ib
  %i.ks = add nsw i32 %i.kq, -1
  store i32 %i.ks, ptr %i.ab, align 4, !tbaa !14
  br label %lean_dec.exit626

bb.id:                                            ; preds = %bb.ib
  %.not.i.i624 = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i624, label %lean_dec.exit626, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #4
  br label %lean_dec.exit626

lean_dec.exit626:                                 ; preds = %bb.ic, %bb.id, %bb.ie, %bb.ia
  %i.kt = load i32, ptr %i.o, align 4, !tbaa !14  ; 3 uses
  %i.ku = icmp sgt i32 %i.kt, 1
  br i1 %i.ku, label %bb.if, label %bb.ig, !prof !15

bb.if:                                            ; preds = %lean_dec.exit626
  %i.kv = add nsw i32 %i.kt, -1
  store i32 %i.kv, ptr %i.o, align 4, !tbaa !14
  br label %lean_dec_ref.exit488

bb.ig:                                            ; preds = %lean_dec.exit626
  %.not.i487 = icmp eq i32 %i.kt, 0
  br i1 %.not.i487, label %lean_dec_ref.exit488, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #4
  br label %lean_dec_ref.exit488

lean_dec_ref.exit488:                             ; preds = %bb.if, %bb.ig, %bb.ih
  br i1 %.not.i1034, label %bb.ii, label %lean_dec.exit622

bb.ii:                                            ; preds = %lean_dec_ref.exit488
  %i.kw = load i32, ptr %.1.i4561032, align 4, !tbaa !14 ; 3 uses
  %i.kx = icmp sgt i32 %i.kw, 1
  br i1 %i.kx, label %bb.ij, label %bb.ik, !prof !15

bb.ij:                                            ; preds = %bb.ii
  %i.ky = add nsw i32 %i.kw, -1
  store i32 %i.ky, ptr %.1.i4561032, align 4, !tbaa !14
  br label %lean_dec.exit622

bb.ik:                                            ; preds = %bb.ii
  %.not.i.i620 = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i620, label %lean_dec.exit622, label %bb.il

bb.il:                                            ; preds = %bb.ik
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i4561032) #4
  br label %lean_dec.exit622

lean_dec.exit622:                                 ; preds = %bb.ij, %bb.ik, %bb.il, %lean_dec_ref.exit488
  br i1 %.not.i691, label %bb.im, label %lean_dec.exit618

bb.im:                                            ; preds = %lean_dec.exit622
  %i.kz = load i32, ptr %i.a, align 4, !tbaa !14  ; 3 uses
  %i.la = icmp sgt i32 %i.kz, 1
  br i1 %i.la, label %bb.in, label %bb.io, !prof !15

bb.in:                                            ; preds = %bb.im
  %i.lb = add nsw i32 %i.kz, -1
  store i32 %i.lb, ptr %i.a, align 4, !tbaa !14
  br label %lean_dec.exit618

bb.io:                                            ; preds = %bb.im
  %.not.i.i616 = icmp eq i32 %i.kz, 0
  br i1 %.not.i.i616, label %lean_dec.exit618, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #4
  br label %lean_dec.exit618

lean_dec.exit618:                                 ; preds = %bb.in, %bb.io, %bb.ip, %lean_dec.exit622
  %i.lc = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.ld = icmp sgt i32 %i.lc, 1
  br i1 %i.ld, label %bb.iq, label %bb.ir, !prof !15

bb.iq:                                            ; preds = %lean_dec.exit618
  %i.le = add nsw i32 %i.lc, -1
  store i32 %i.le, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit486

bb.ir:                                            ; preds = %lean_dec.exit618
  %.not.i485 = icmp eq i32 %i.lc, 0
  br i1 %.not.i485, label %lean_dec_ref.exit486, label %bb.is

bb.is:                                            ; preds = %bb.ir
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit486

lean_dec_ref.exit486:                             ; preds = %bb.iq, %bb.ir, %bb.is
  %i.lf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !12 ; 5 uses
  %.val696 = load i32, ptr %i.av, align 8, !tbaa !14
  %i.lh = icmp eq i32 %.val696, 1
  br i1 %i.lh, label %lean_dec_ref.exit508, label %bb.it

bb.it:                                            ; preds = %lean_dec_ref.exit486
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = and i64 %i.li, 1
  %.not.i538 = icmp eq i64 %i.lj, 0
  br i1 %.not.i538, label %bb.iu, label %lean_inc.exit539

bb.iu:                                            ; preds = %bb.it
  %.val.i.i794 = load i32, ptr %i.lg, align 4, !tbaa !14 ; 3 uses
  %i.lk = icmp sgt i32 %.val.i.i794, 0
  br i1 %i.lk, label %bb.iv, label %bb.iw, !prof !15

bb.iv:                                            ; preds = %bb.iu
  %i.ll = add nuw i32 %.val.i.i794, 1
  store i32 %i.ll, ptr %i.lg, align 4, !tbaa !14
  br label %lean_inc.exit539

bb.iw:                                            ; preds = %bb.iu
  %.not.i.i795 = icmp eq i32 %.val.i.i794, 0
  br i1 %.not.i.i795, label %lean_inc.exit539, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.lm = atomicrmw sub ptr %i.lg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit539

lean_inc.exit539:                                 ; preds = %bb.ix, %bb.iw, %bb.iv, %bb.it
  br i1 %.not.i713, label %bb.iy, label %bb.jc

bb.iy:                                            ; preds = %lean_inc.exit539
  %i.ln = load i32, ptr %i.av, align 8, !tbaa !14 ; 3 uses
  %i.lo = icmp sgt i32 %i.ln, 1
  br i1 %i.lo, label %bb.iz, label %bb.ja, !prof !15

bb.iz:                                            ; preds = %bb.iy
  %i.lp = add nsw i32 %i.ln, -1
  store i32 %i.lp, ptr %i.av, align 8, !tbaa !14
  br label %bb.jc

bb.ja:                                            ; preds = %bb.iy
  %.not.i.i612 = icmp eq i32 %i.ln, 0
  br i1 %.not.i.i612, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.av) #4
  br label %bb.jc

bb.jc:                                            ; preds = %lean_inc.exit539, %bb.jb, %bb.ja, %bb.iz
  %i.lq = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store ptr %i.lg, ptr %i.lr, align 8, !tbaa !12
  br label %lean_dec_ref.exit508

bb.jd:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i564, label %bb.je, label %lean_dec.exit610

bb.je:                                            ; preds = %bb.jd
  %i.ls = load i32, ptr %i.ab, align 4, !tbaa !14 ; 3 uses
  %i.lt = icmp sgt i32 %i.ls, 1
  br i1 %i.lt, label %bb.jf, label %bb.jg, !prof !15

bb.jf:                                            ; preds = %bb.je
  %i.lu = add nsw i32 %i.ls, -1
  store i32 %i.lu, ptr %i.ab, align 4, !tbaa !14
  br label %lean_dec.exit610

bb.jg:                                            ; preds = %bb.je
  %.not.i.i608 = icmp eq i32 %i.ls, 0
  br i1 %.not.i.i608, label %lean_dec.exit610, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #4
  br label %lean_dec.exit610

lean_dec.exit610:                                 ; preds = %bb.jf, %bb.jg, %bb.jh, %bb.jd
  %.val.i.i797 = load i32, ptr %i.o, align 4, !tbaa !14 ; 3 uses
  %i.lv = icmp sgt i32 %.val.i.i797, 0
  br i1 %i.lv, label %bb.ji, label %bb.jj, !prof !15

bb.ji:                                            ; preds = %lean_dec.exit610
  %i.lw = add nuw i32 %.val.i.i797, 1
  store i32 %i.lw, ptr %i.o, align 4, !tbaa !14
  br label %lean_inc_ref.exit799

bb.jj:                                            ; preds = %lean_dec.exit610
  %.not.i.i798 = icmp eq i32 %.val.i.i797, 0
  br i1 %.not.i.i798, label %lean_inc_ref.exit799, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.lx = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit799

lean_inc_ref.exit799:                             ; preds = %bb.ji, %bb.jj, %bb.jk
  %i.ly = tail call ptr @l_Lean_Meta_Grind_mkEqTrueProof(ptr noundef nonnull %i.o, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 13 uses
  %i.lz = ptrtoint ptr %i.ly to i64               ; 2 uses
  %i.ma = and i64 %i.lz, 1
  %.not.i800 = icmp eq i64 %i.ma, 0               ; 2 uses
  br i1 %.not.i800, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %lean_inc_ref.exit799
  %i.mb = lshr i64 %i.lz, 1
  %i.mc = trunc i64 %i.mb to i32
  br label %lean_obj_tag.exit803

bb.jm:                                            ; preds = %lean_inc_ref.exit799
  %i.md = getelementptr i8, ptr %i.ly, i64 4
  %.val.i802 = load i32, ptr %i.md, align 4
end_hunk_10
begin_hunk_11_@l_Lean_Meta_Grind_propagateDecideUp:bb.a

bb.ax:                                            ; preds = %bb.aw
  %.val.i.i468 = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.bm = icmp sgt i32 %.val.i.i468, 0
  br i1 %i.bm, label %bb.ay, label %bb.az, !prof !15

bb.ay:                                            ; preds = %bb.ax
  %i.bn = add nuw i32 %.val.i.i468, 1
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !14
  br label %lean_inc.exit389

bb.az:                                            ; preds = %bb.ax
  %.not.i.i469 = icmp eq i32 %.val.i.i468, 0
  br i1 %.not.i.i469, label %lean_inc.exit389, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bo = atomicrmw sub ptr %i.bj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit389

lean_inc.exit389:                                 ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw
  %.val.i471 = load i32, ptr %i.ba, align 8, !tbaa !14 ; 4 uses
  %i.bp = icmp eq i32 %.val.i471, 1
  br i1 %i.bp, label %.preheader.i, label %bb.bf

.preheader.i:                                     ; preds = %lean_inc.exit389
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !12 ; 4 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 1
  %.not.i7.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i, label %bb.bb, label %lean_dec.exit.i

bb.bb:                                            ; preds = %.preheader.i
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !14 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.bc, label %bb.bd, !prof !15

bb.bc:                                            ; preds = %bb.bb
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.bd:                                            ; preds = %bb.bb
  %.not.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.be, %bb.bd, %bb.bc, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ba) #4
  br label %lean_dec_ref_known.exit

bb.bf:                                            ; preds = %lean_inc.exit389
  %i.bw = icmp sgt i32 %.val.i471, 1
  br i1 %i.bw, label %bb.bg, label %bb.bh, !prof !15

bb.bg:                                            ; preds = %bb.bf
  %i.bx = add nsw i32 %.val.i471, -1
  store i32 %i.bx, ptr %i.ba, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.bh:                                            ; preds = %bb.bf
  %.not.i.i472 = icmp eq i32 %.val.i471, 0
  br i1 %.not.i.i472, label %lean_dec_ref_known.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ba) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.bg, %bb.bh, %bb.bi
  %i.by = and i64 %i.bk, 510
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.bj, label %bb.gq

bb.bj:                                            ; preds = %lean_dec_ref_known.exit
  %.val.i.i474 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.ca = icmp sgt i32 %.val.i.i474, 0
  br i1 %i.ca, label %bb.bk, label %bb.bl, !prof !15

bb.bk:                                            ; preds = %bb.bj
  %i.cb = add nuw i32 %.val.i.i474, 1
  store i32 %i.cb, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit476

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i475 = icmp eq i32 %.val.i.i474, 0
  br i1 %.not.i.i475, label %lean_inc_ref.exit476, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cc = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit476

lean_inc_ref.exit476:                             ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.cd = tail call ptr @l_Lean_Meta_Grind_isEqFalse___redArg(ptr noundef nonnull %i.ae, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 14 uses
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = and i64 %i.ce, 1
  %.not.i477 = icmp eq i64 %i.cf, 0               ; 3 uses
  br i1 %.not.i477, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %lean_inc_ref.exit476
  %i.cg = lshr i64 %i.ce, 1
  %i.ch = trunc i64 %i.cg to i32
  br label %lean_obj_tag.exit480

bb.bo:                                            ; preds = %lean_inc_ref.exit476
  %i.ci = getelementptr i8, ptr %i.cd, i64 4
  %.val.i479 = load i32, ptr %i.ci, align 4
  %i.cj = lshr i32 %.val.i479, 24
  br label %lean_obj_tag.exit480

lean_obj_tag.exit480:                             ; preds = %bb.bn, %bb.bo
  %.0.i478 = phi i32 [ %i.ch, %bb.bn ], [ %i.cj, %bb.bo ]
  %i.ck = icmp eq i32 %.0.i478, 0
  br i1 %i.ck, label %bb.bp, label %bb.fs

bb.bp:                                            ; preds = %lean_obj_tag.exit480
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !12 ; 7 uses
  %.val456 = load i32, ptr %i.cd, align 8, !tbaa !14
  %i.cn = icmp eq i32 %.val456, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.cm to i64               ; 2 uses
  %.pre557 = and i64 %.pre, 1                     ; 2 uses
  br i1 %i.cn, label %lean_dec.exit450, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not.i386 = icmp eq i64 %.pre557, 0
  br i1 %.not.i386, label %bb.br, label %lean_inc.exit387

bb.br:                                            ; preds = %bb.bq
  %.val.i.i481 = load i32, ptr %i.cm, align 4, !tbaa !14 ; 3 uses
  %i.co = icmp sgt i32 %.val.i.i481, 0
  br i1 %i.co, label %bb.bs, label %bb.bt, !prof !15

bb.bs:                                            ; preds = %bb.br
  %i.cp = add nuw i32 %.val.i.i481, 1
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !14
  br label %lean_inc.exit387

bb.bt:                                            ; preds = %bb.br
  %.not.i.i482 = icmp eq i32 %.val.i.i481, 0
  br i1 %.not.i.i482, label %lean_inc.exit387, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.cq = atomicrmw sub ptr %i.cm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit387

lean_inc.exit387:                                 ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq
  br i1 %.not.i477, label %bb.bv, label %lean_dec.exit450

bb.bv:                                            ; preds = %lean_inc.exit387
  %i.cr = load i32, ptr %i.cd, align 8, !tbaa !14 ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.bw, label %bb.bx, !prof !15

bb.bw:                                            ; preds = %bb.bv
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %i.cd, align 8, !tbaa !14
  br label %lean_dec.exit450

bb.bx:                                            ; preds = %bb.bv
  %.not.i.i448 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i448, label %lean_dec.exit450, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #4
  br label %lean_dec.exit450

lean_dec.exit450:                                 ; preds = %bb.bp, %lean_inc.exit387, %bb.by, %bb.bx, %bb.bw
  %.0289 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bw ], [ inttoptr (i64 1 to ptr), %lean_inc.exit387 ], [ inttoptr (i64 1 to ptr), %bb.by ], [ inttoptr (i64 1 to ptr), %bb.bx ], [ %i.cd, %bb.bp ] ; 4 uses
  %.not.i443 = icmp eq i64 %.pre557, 0
  br i1 %.not.i443, label %bb.bz, label %lean_dec.exit446

bb.bz:                                            ; preds = %lean_dec.exit450
  %i.cu = load i32, ptr %i.cm, align 4, !tbaa !14 ; 3 uses
  %i.cv = icmp sgt i32 %i.cu, 1
  br i1 %i.cv, label %bb.ca, label %bb.cb, !prof !15

bb.ca:                                            ; preds = %bb.bz
  %i.cw = add nsw i32 %i.cu, -1
  store i32 %i.cw, ptr %i.cm, align 4, !tbaa !14
  br label %lean_dec.exit446

bb.cb:                                            ; preds = %bb.bz
  %.not.i.i444 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i444, label %lean_dec.exit446, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #4
  br label %lean_dec.exit446

lean_dec.exit446:                                 ; preds = %bb.ca, %bb.cb, %bb.cc, %lean_dec.exit450
  %i.cx = and i64 %.pre, 510
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.cd, label %bb.ct

bb.cd:                                            ; preds = %lean_dec.exit446
  br i1 %.not.i388, label %bb.ce, label %lean_dec.exit442

bb.ce:                                            ; preds = %bb.cd
  %i.cz = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %bb.cf, label %bb.cg, !prof !15

bb.cf:                                            ; preds = %bb.ce
  %i.db = add nsw i32 %i.cz, -1
  store i32 %i.db, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit442

bb.cg:                                            ; preds = %bb.ce
  %.not.i.i440 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i440, label %lean_dec.exit442, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit442

lean_dec.exit442:                                 ; preds = %bb.cf, %bb.cg, %bb.ch, %bb.cd
  %i.dc = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 1
  br i1 %i.dd, label %bb.ci, label %bb.cj, !prof !15

bb.ci:                                            ; preds = %lean_dec.exit442
  %i.de = add nsw i32 %i.dc, -1
  store i32 %i.de, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit348

bb.cj:                                            ; preds = %lean_dec.exit442
  %.not.i347 = icmp eq i32 %i.dc, 0
  br i1 %.not.i347, label %lean_dec_ref.exit348, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit348

lean_dec_ref.exit348:                             ; preds = %bb.ci, %bb.cj, %bb.ck
  %i.df = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.dg = icmp sgt i32 %i.df, 1
  br i1 %i.dg, label %bb.cl, label %bb.cm, !prof !15

bb.cl:                                            ; preds = %lean_dec_ref.exit348
  %i.dh = add nsw i32 %i.df, -1
  store i32 %i.dh, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit346

bb.cm:                                            ; preds = %lean_dec_ref.exit348
  %.not.i345 = icmp eq i32 %i.df, 0
  br i1 %.not.i345, label %lean_dec_ref.exit346, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit346

lean_dec_ref.exit346:                             ; preds = %bb.cl, %bb.cm, %bb.cn
  %i.di = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 1
  br i1 %i.dj, label %bb.co, label %bb.cp, !prof !15

bb.co:                                            ; preds = %lean_dec_ref.exit346
  %i.dk = add nsw i32 %i.di, -1
  store i32 %i.dk, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit344

bb.cp:                                            ; preds = %lean_dec_ref.exit346
  %.not.i343 = icmp eq i32 %i.di, 0
  br i1 %.not.i343, label %lean_dec_ref.exit344, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit344

lean_dec_ref.exit344:                             ; preds = %bb.co, %bb.cp, %bb.cq
  br i1 %i.cn, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %lean_dec_ref.exit344
  %i.dl = getelementptr inbounds nuw i8, ptr %.0289, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.dl, align 8, !tbaa !12
  br label %lean_dec_ref.exit358.thread

bb.cs:                                            ; preds = %lean_dec_ref.exit344
  %i.dm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1) ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.dn, align 8, !tbaa !12
  br label %lean_dec_ref.exit358.thread

bb.ct:                                            ; preds = %lean_dec.exit446
  %i.do = ptrtoint ptr %.0289 to i64
  %i.dp = and i64 %i.do, 1
  %.not.i484 = icmp eq i64 %i.dp, 0
  br i1 %.not.i484, label %bb.cu, label %lean_del_object.exit

bb.cu:                                            ; preds = %bb.ct
  tail call void @lean_free_object(ptr noundef nonnull %.0289) #4
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.ct, %bb.cu
  %i.dq = tail call ptr @l_Lean_Meta_Sym_getBoolFalseExpr___redArg(ptr noundef %5) #4 ; 10 uses
  %i.dr = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.ds = and i64 %i.dr, 1
  %.not.i485 = icmp eq i64 %i.ds, 0               ; 2 uses
  br i1 %.not.i485, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %lean_del_object.exit
  %i.dt = lshr i64 %i.dr, 1
  %i.du = trunc i64 %i.dt to i32
  br label %lean_obj_tag.exit488

bb.cw:                                            ; preds = %lean_del_object.exit
  %i.dv = getelementptr i8, ptr %i.dq, i64 4
  %.val.i487 = load i32, ptr %i.dv, align 4
  %i.dw = lshr i32 %.val.i487, 24
  br label %lean_obj_tag.exit488

lean_obj_tag.exit488:                             ; preds = %bb.cv, %bb.cw
  %.0.i486 = phi i32 [ %i.du, %bb.cv ], [ %i.dw, %bb.cw ]
  %i.dx = icmp eq i32 %.0.i486, 0
  br i1 %i.dx, label %bb.cx, label %bb.eu

bb.cx:                                            ; preds = %lean_obj_tag.exit488
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !12 ; 8 uses
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = and i64 %i.ea, 1
  %.not.i384 = icmp eq i64 %i.eb, 0               ; 2 uses
  br i1 %.not.i384, label %bb.cy, label %lean_inc.exit385

bb.cy:                                            ; preds = %bb.cx
  %.val.i.i489 = load i32, ptr %i.dz, align 4, !tbaa !14 ; 3 uses
  %i.ec = icmp sgt i32 %.val.i.i489, 0
  br i1 %i.ec, label %bb.cz, label %bb.da, !prof !15

bb.cz:                                            ; preds = %bb.cy
  %i.ed = add nuw i32 %.val.i.i489, 1
  store i32 %i.ed, ptr %i.dz, align 4, !tbaa !14
  br label %lean_inc.exit385

bb.da:                                            ; preds = %bb.cy
  %.not.i.i490 = icmp eq i32 %.val.i.i489, 0
  br i1 %.not.i.i490, label %lean_inc.exit385, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ee = atomicrmw sub ptr %i.dz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit385

lean_inc.exit385:                                 ; preds = %bb.db, %bb.da, %bb.cz, %bb.cx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dq)
  %.val.i.i492 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.ef = icmp sgt i32 %.val.i.i492, 0
  br i1 %i.ef, label %bb.dc, label %bb.dd, !prof !15

bb.dc:                                            ; preds = %lean_inc.exit385
  %i.eg = add nuw i32 %.val.i.i492, 1
  store i32 %i.eg, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit494

bb.dd:                                            ; preds = %lean_inc.exit385
  %.not.i.i493 = icmp eq i32 %.val.i.i492, 0
  br i1 %.not.i.i493, label %lean_inc_ref.exit494, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.eh = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit494

lean_inc_ref.exit494:                             ; preds = %bb.dc, %bb.dd, %bb.de
  %i.ei = tail call ptr @l_Lean_Meta_Grind_mkEqFalseProof(ptr noundef nonnull %i.ae, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 10 uses
  %i.ej = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.ek = and i64 %i.ej, 1
  %.not.i495 = icmp eq i64 %i.ek, 0               ; 2 uses
  br i1 %.not.i495, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %lean_inc_ref.exit494
  %i.el = lshr i64 %i.ej, 1
  %i.em = trunc i64 %i.el to i32
  br label %lean_obj_tag.exit498

bb.dg:                                            ; preds = %lean_inc_ref.exit494
  %i.en = getelementptr i8, ptr %i.ei, i64 4
  %.val.i497 = load i32, ptr %i.en, align 4
  %i.eo = lshr i32 %.val.i497, 24
  br label %lean_obj_tag.exit498

lean_obj_tag.exit498:                             ; preds = %bb.df, %bb.dg
  %.0.i496 = phi i32 [ %i.em, %bb.df ], [ %i.eo, %bb.dg ]
  %i.ep = icmp eq i32 %.0.i496, 0
  br i1 %i.ep, label %bb.dh, label %bb.ds

bb.dh:                                            ; preds = %lean_obj_tag.exit498
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !12 ; 5 uses
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = and i64 %i.es, 1
  %.not.i382 = icmp eq i64 %i.et, 0
  br i1 %.not.i382, label %bb.di, label %lean_inc.exit383

bb.di:                                            ; preds = %bb.dh
  %.val.i.i499 = load i32, ptr %i.er, align 4, !tbaa !14 ; 3 uses
  %i.eu = icmp sgt i32 %.val.i.i499, 0
  br i1 %i.eu, label %bb.dj, label %bb.dk, !prof !15

bb.dj:                                            ; preds = %bb.di
  %i.ev = add nuw i32 %.val.i.i499, 1
  store i32 %i.ev, ptr %i.er, align 4, !tbaa !14
  br label %lean_inc.exit383

bb.dk:                                            ; preds = %bb.di
  %.not.i.i500 = icmp eq i32 %.val.i.i499, 0
  br i1 %.not.i.i500, label %lean_inc.exit383, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ew = atomicrmw sub ptr %i.er, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit383

lean_inc.exit383:                                 ; preds = %bb.dl, %bb.dk, %bb.dj, %bb.dh
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ei)
  %i.ex = load atomic i32, ptr @l_Lean_Meta_Grind_propagateDecideUp___closed__2_once seq_cst, align 4, !tbaa !17
  %i.ey = icmp eq i32 %i.ex, 1
  br i1 %i.ey, label %bb.dm, label %bb.dn, !prof !15

bb.dm:                                            ; preds = %lean_inc.exit383
  %i.ez = load ptr, ptr @l_Lean_Meta_Grind_propagateDecideUp___closed__2, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.dn:                                            ; preds = %lean_inc.exit383
  %i.fa = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_Grind_propagateDecideUp___closed__2, ptr noundef nonnull @l_Lean_Meta_Grind_propagateDecideUp___closed__2_once, ptr noundef nonnull @_init_l_Lean_Meta_Grind_propagateDecideUp___closed__2) #4
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.dm, %bb.dn
  %.0.i502 = phi ptr [ %i.ez, %bb.dm ], [ %i.fa, %bb.dn ]
  %i.fb = tail call ptr @l_Lean_mkApp3(ptr noundef %.0.i502, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.n, ptr noundef %i.er) #4
  br i1 %.not.i388, label %bb.do, label %lean_dec.exit438

bb.do:                                            ; preds = %lean_obj_once.exit
  %i.fc = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.fd = icmp sgt i32 %i.fc, 1
  br i1 %i.fd, label %bb.dp, label %bb.dq, !prof !15

bb.dp:                                            ; preds = %bb.do
  %i.fe = add nsw i32 %i.fc, -1
  store i32 %i.fe, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit438

bb.dq:                                            ; preds = %bb.do
  %.not.i.i436 = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i436, label %lean_dec.exit438, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit438

lean_dec.exit438:                                 ; preds = %bb.dp, %bb.dq, %bb.dr, %lean_obj_once.exit
  %i.ff = tail call ptr @l_Lean_Meta_Grind_pushEqCore___redArg(ptr noundef nonnull %0, ptr noundef %i.dz, ptr noundef %i.fb, i8 noundef zeroext 0, ptr noundef %1, ptr noundef %3, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4
  br label %lean_dec_ref.exit358.thread

bb.ds:                                            ; preds = %lean_obj_tag.exit498
  br i1 %.not.i384, label %bb.dt, label %lean_dec.exit434

bb.dt:                                            ; preds = %bb.ds
  %i.fg = load i32, ptr %i.dz, align 4, !tbaa !14 ; 3 uses
  %i.fh = icmp sgt i32 %i.fg, 1
  br i1 %i.fh, label %bb.du, label %bb.dv, !prof !15

bb.du:                                            ; preds = %bb.dt
  %i.fi = add nsw i32 %i.fg, -1
  store i32 %i.fi, ptr %i.dz, align 4, !tbaa !14
  br label %lean_dec.exit434

bb.dv:                                            ; preds = %bb.dt
  %.not.i.i432 = icmp eq i32 %i.fg, 0
  br i1 %.not.i.i432, label %lean_dec.exit434, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dz) #4
  br label %lean_dec.exit434

lean_dec.exit434:                                 ; preds = %bb.du, %bb.dv, %bb.dw, %bb.ds
  br i1 %.not.i388, label %bb.dx, label %lean_dec.exit430

bb.dx:                                            ; preds = %lean_dec.exit434
  %i.fj = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, 1
  br i1 %i.fk, label %bb.dy, label %bb.dz, !prof !15

bb.dy:                                            ; preds = %bb.dx
  %i.fl = add nsw i32 %i.fj, -1
  store i32 %i.fl, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit430

bb.dz:                                            ; preds = %bb.dx
  %.not.i.i428 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i428, label %lean_dec.exit430, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit430

lean_dec.exit430:                                 ; preds = %bb.dy, %bb.dz, %bb.ea, %lean_dec.exit434
  %i.fm = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.fn = icmp sgt i32 %i.fm, 1
  br i1 %i.fn, label %bb.eb, label %bb.ec, !prof !15

bb.eb:                                            ; preds = %lean_dec.exit430
  %i.fo = add nsw i32 %i.fm, -1
  store i32 %i.fo, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit342

bb.ec:                                            ; preds = %lean_dec.exit430
  %.not.i341 = icmp eq i32 %i.fm, 0
  br i1 %.not.i341, label %lean_dec_ref.exit342, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit342

lean_dec_ref.exit342:                             ; preds = %bb.eb, %bb.ec, %bb.ed
  %i.fp = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.fq = icmp sgt i32 %i.fp, 1
  br i1 %i.fq, label %bb.ee, label %bb.ef, !prof !15

bb.ee:                                            ; preds = %lean_dec_ref.exit342
  %i.fr = add nsw i32 %i.fp, -1
  store i32 %i.fr, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit340

bb.ef:                                            ; preds = %lean_dec_ref.exit342
  %.not.i339 = icmp eq i32 %i.fp, 0
  br i1 %.not.i339, label %lean_dec_ref.exit340, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit340

lean_dec_ref.exit340:                             ; preds = %bb.ee, %bb.ef, %bb.eg
  %i.fs = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 1
  br i1 %i.ft, label %bb.eh, label %bb.ei, !prof !15

bb.eh:                                            ; preds = %lean_dec_ref.exit340
  %i.fu = add nsw i32 %i.fs, -1
  store i32 %i.fu, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit338

bb.ei:                                            ; preds = %lean_dec_ref.exit340
  %.not.i337 = icmp eq i32 %i.fs, 0
  br i1 %.not.i337, label %lean_dec_ref.exit338, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit338

lean_dec_ref.exit338:                             ; preds = %bb.eh, %bb.ei, %bb.ej
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !12 ; 5 uses
  %.val455 = load i32, ptr %i.ei, align 8, !tbaa !14
  %i.fx = icmp eq i32 %.val455, 1
  br i1 %i.fx, label %lean_dec_ref.exit358.thread, label %bb.ek

bb.ek:                                            ; preds = %lean_dec_ref.exit338
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = and i64 %i.fy, 1
  %.not.i380 = icmp eq i64 %i.fz, 0
  br i1 %.not.i380, label %bb.el, label %lean_inc.exit381

bb.el:                                            ; preds = %bb.ek
  %.val.i.i503 = load i32, ptr %i.fw, align 4, !tbaa !14 ; 3 uses
  %i.ga = icmp sgt i32 %.val.i.i503, 0
  br i1 %i.ga, label %bb.em, label %bb.en, !prof !15

bb.em:                                            ; preds = %bb.el
  %i.gb = add nuw i32 %.val.i.i503, 1
  store i32 %i.gb, ptr %i.fw, align 4, !tbaa !14
  br label %lean_inc.exit381

bb.en:                                            ; preds = %bb.el
  %.not.i.i504 = icmp eq i32 %.val.i.i503, 0
  br i1 %.not.i.i504, label %lean_inc.exit381, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.gc = atomicrmw sub ptr %i.fw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit381

lean_inc.exit381:                                 ; preds = %bb.eo, %bb.en, %bb.em, %bb.ek
  br i1 %.not.i495, label %bb.ep, label %bb.et

bb.ep:                                            ; preds = %lean_inc.exit381
  %i.gd = load i32, ptr %i.ei, align 8, !tbaa !14 ; 3 uses
  %i.ge = icmp sgt i32 %i.gd, 1
  br i1 %i.ge, label %bb.eq, label %bb.er, !prof !15

bb.eq:                                            ; preds = %bb.ep
  %i.gf = add nsw i32 %i.gd, -1
  store i32 %i.gf, ptr %i.ei, align 8, !tbaa !14
  br label %bb.et

bb.er:                                            ; preds = %bb.ep
  %.not.i.i424 = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i424, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ei) #4
  br label %bb.et

bb.et:                                            ; preds = %lean_inc.exit381, %bb.es, %bb.er, %bb.eq
  %i.gg = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %i.fw, ptr %i.gh, align 8, !tbaa !12
  br label %lean_dec_ref.exit358.thread

bb.eu:                                            ; preds = %lean_obj_tag.exit488
  br i1 %.not.i388, label %bb.ev, label %lean_dec.exit422

bb.ev:                                            ; preds = %bb.eu
  %i.gi = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %bb.ew, label %bb.ex, !prof !15

bb.ew:                                            ; preds = %bb.ev
  %i.gk = add nsw i32 %i.gi, -1
  store i32 %i.gk, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit422

bb.ex:                                            ; preds = %bb.ev
  %.not.i.i420 = icmp eq i32 %i.gi, 0
  br i1 %.not.i.i420, label %lean_dec.exit422, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit422

lean_dec.exit422:                                 ; preds = %bb.ew, %bb.ex, %bb.ey, %bb.eu
  %i.gl = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 1
  br i1 %i.gm, label %bb.ez, label %bb.fa, !prof !15

bb.ez:                                            ; preds = %lean_dec.exit422
  %i.gn = add nsw i32 %i.gl, -1
  store i32 %i.gn, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit336

bb.fa:                                            ; preds = %lean_dec.exit422
  %.not.i335 = icmp eq i32 %i.gl, 0
  br i1 %.not.i335, label %lean_dec_ref.exit336, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit336

lean_dec_ref.exit336:                             ; preds = %bb.ez, %bb.fa, %bb.fb
  %i.go = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %bb.fc, label %bb.fd, !prof !15

bb.fc:                                            ; preds = %lean_dec_ref.exit336
  %i.gq = add nsw i32 %i.go, -1
  store i32 %i.gq, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit334

bb.fd:                                            ; preds = %lean_dec_ref.exit336
  %.not.i333 = icmp eq i32 %i.go, 0
  br i1 %.not.i333, label %lean_dec_ref.exit334, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit334

lean_dec_ref.exit334:                             ; preds = %bb.fc, %bb.fd, %bb.fe
  %i.gr = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.ff, label %bb.fg, !prof !15

bb.ff:                                            ; preds = %lean_dec_ref.exit334
  %i.gt = add nsw i32 %i.gr, -1
  store i32 %i.gt, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit332

bb.fg:                                            ; preds = %lean_dec_ref.exit334
  %.not.i331 = icmp eq i32 %i.gr, 0
  br i1 %.not.i331, label %lean_dec_ref.exit332, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit332

lean_dec_ref.exit332:                             ; preds = %bb.ff, %bb.fg, %bb.fh
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !12 ; 5 uses
  %.val454 = load i32, ptr %i.dq, align 8, !tbaa !14
  %i.gw = icmp eq i32 %.val454, 1
  br i1 %i.gw, label %lean_dec_ref.exit358.thread, label %bb.fi

bb.fi:                                            ; preds = %lean_dec_ref.exit332
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = and i64 %i.gx, 1
  %.not.i378 = icmp eq i64 %i.gy, 0
  br i1 %.not.i378, label %bb.fj, label %lean_inc.exit379

bb.fj:                                            ; preds = %bb.fi
  %.val.i.i506 = load i32, ptr %i.gv, align 4, !tbaa !14 ; 3 uses
  %i.gz = icmp sgt i32 %.val.i.i506, 0
  br i1 %i.gz, label %bb.fk, label %bb.fl, !prof !15

bb.fk:                                            ; preds = %bb.fj
  %i.ha = add nuw i32 %.val.i.i506, 1
  store i32 %i.ha, ptr %i.gv, align 4, !tbaa !14
  br label %lean_inc.exit379

bb.fl:                                            ; preds = %bb.fj
  %.not.i.i507 = icmp eq i32 %.val.i.i506, 0
  br i1 %.not.i.i507, label %lean_inc.exit379, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.hb = atomicrmw sub ptr %i.gv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit379

lean_inc.exit379:                                 ; preds = %bb.fm, %bb.fl, %bb.fk, %bb.fi
  br i1 %.not.i485, label %bb.fn, label %bb.fr

bb.fn:                                            ; preds = %lean_inc.exit379
  %i.hc = load i32, ptr %i.dq, align 8, !tbaa !14 ; 3 uses
  %i.hd = icmp sgt i32 %i.hc, 1
  br i1 %i.hd, label %bb.fo, label %bb.fp, !prof !15

bb.fo:                                            ; preds = %bb.fn
  %i.he = add nsw i32 %i.hc, -1
  store i32 %i.he, ptr %i.dq, align 8, !tbaa !14
  br label %bb.fr

bb.fp:                                            ; preds = %bb.fn
  %.not.i.i416 = icmp eq i32 %i.hc, 0
  br i1 %.not.i.i416, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dq) #4
  br label %bb.fr

bb.fr:                                            ; preds = %lean_inc.exit379, %bb.fq, %bb.fp, %bb.fo
  %i.hf = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr %i.gv, ptr %i.hg, align 8, !tbaa !12
  br label %lean_dec_ref.exit358.thread

bb.fs:                                            ; preds = %lean_obj_tag.exit480
  br i1 %.not.i388, label %bb.ft, label %lean_dec.exit414

bb.ft:                                            ; preds = %bb.fs
  %i.hh = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, 1
  br i1 %i.hi, label %bb.fu, label %bb.fv, !prof !15

bb.fu:                                            ; preds = %bb.ft
  %i.hj = add nsw i32 %i.hh, -1
  store i32 %i.hj, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit414

bb.fv:                                            ; preds = %bb.ft
  %.not.i.i412 = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i412, label %lean_dec.exit414, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit414

lean_dec.exit414:                                 ; preds = %bb.fu, %bb.fv, %bb.fw, %bb.fs
  %i.hk = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.hl = icmp sgt i32 %i.hk, 1
  br i1 %i.hl, label %bb.fx, label %bb.fy, !prof !15

bb.fx:                                            ; preds = %lean_dec.exit414
  %i.hm = add nsw i32 %i.hk, -1
  store i32 %i.hm, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit330

bb.fy:                                            ; preds = %lean_dec.exit414
  %.not.i329 = icmp eq i32 %i.hk, 0
  br i1 %.not.i329, label %lean_dec_ref.exit330, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit330

lean_dec_ref.exit330:                             ; preds = %bb.fx, %bb.fy, %bb.fz
  %i.hn = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.ho = icmp sgt i32 %i.hn, 1
  br i1 %i.ho, label %bb.ga, label %bb.gb, !prof !15

bb.ga:                                            ; preds = %lean_dec_ref.exit330
  %i.hp = add nsw i32 %i.hn, -1
  store i32 %i.hp, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit328

bb.gb:                                            ; preds = %lean_dec_ref.exit330
  %.not.i327 = icmp eq i32 %i.hn, 0
  br i1 %.not.i327, label %lean_dec_ref.exit328, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit328

lean_dec_ref.exit328:                             ; preds = %bb.ga, %bb.gb, %bb.gc
  %i.hq = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.hr = icmp sgt i32 %i.hq, 1
  br i1 %i.hr, label %bb.gd, label %bb.ge, !prof !15

bb.gd:                                            ; preds = %lean_dec_ref.exit328
  %i.hs = add nsw i32 %i.hq, -1
  store i32 %i.hs, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit326

bb.ge:                                            ; preds = %lean_dec_ref.exit328
  %.not.i325 = icmp eq i32 %i.hq, 0
  br i1 %.not.i325, label %lean_dec_ref.exit326, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit326

lean_dec_ref.exit326:                             ; preds = %bb.gd, %bb.ge, %bb.gf
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !12 ; 5 uses
  %.val453 = load i32, ptr %i.cd, align 8, !tbaa !14
  %i.hv = icmp eq i32 %.val453, 1
  br i1 %i.hv, label %lean_dec_ref.exit358.thread, label %bb.gg

bb.gg:                                            ; preds = %lean_dec_ref.exit326
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = and i64 %i.hw, 1
  %.not.i376 = icmp eq i64 %i.hx, 0
  br i1 %.not.i376, label %bb.gh, label %lean_inc.exit377

bb.gh:                                            ; preds = %bb.gg
  %.val.i.i509 = load i32, ptr %i.hu, align 4, !tbaa !14 ; 3 uses
  %i.hy = icmp sgt i32 %.val.i.i509, 0
  br i1 %i.hy, label %bb.gi, label %bb.gj, !prof !15

bb.gi:                                            ; preds = %bb.gh
  %i.hz = add nuw i32 %.val.i.i509, 1
  store i32 %i.hz, ptr %i.hu, align 4, !tbaa !14
  br label %lean_inc.exit377

bb.gj:                                            ; preds = %bb.gh
  %.not.i.i510 = icmp eq i32 %.val.i.i509, 0
  br i1 %.not.i.i510, label %lean_inc.exit377, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ia = atomicrmw sub ptr %i.hu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit377

lean_inc.exit377:                                 ; preds = %bb.gk, %bb.gj, %bb.gi, %bb.gg
  br i1 %.not.i477, label %bb.gl, label %bb.gp

bb.gl:                                            ; preds = %lean_inc.exit377
  %i.ib = load i32, ptr %i.cd, align 8, !tbaa !14 ; 3 uses
  %i.ic = icmp sgt i32 %i.ib, 1
  br i1 %i.ic, label %bb.gm, label %bb.gn, !prof !15

bb.gm:                                            ; preds = %bb.gl
  %i.id = add nsw i32 %i.ib, -1
  store i32 %i.id, ptr %i.cd, align 8, !tbaa !14
  br label %bb.gp

bb.gn:                                            ; preds = %bb.gl
  %.not.i.i408 = icmp eq i32 %i.ib, 0
  br i1 %.not.i.i408, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #4
  br label %bb.gp

bb.gp:                                            ; preds = %lean_inc.exit377, %bb.go, %bb.gn, %bb.gm
  %i.ie = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store ptr %i.hu, ptr %i.if, align 8, !tbaa !12
  br label %lean_dec_ref.exit358.thread

bb.gq:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i388, label %bb.gr, label %lean_dec.exit406

bb.gr:                                            ; preds = %bb.gq
  %i.ig = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %bb.gs, label %bb.gt, !prof !15

bb.gs:                                            ; preds = %bb.gr
  %i.ii = add nsw i32 %i.ig, -1
  store i32 %i.ii, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit406

bb.gt:                                            ; preds = %bb.gr
  %.not.i.i404 = icmp eq i32 %i.ig, 0
  br i1 %.not.i.i404, label %lean_dec.exit406, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit406

lean_dec.exit406:                                 ; preds = %bb.gs, %bb.gt, %bb.gu, %bb.gq
  %i.ij = tail call ptr @l_Lean_Meta_Sym_getBoolTrueExpr___redArg(ptr noundef %5) #4 ; 13 uses
  %i.ik = ptrtoint ptr %i.ij to i64               ; 2 uses
  %i.il = and i64 %i.ik, 1
  %.not.i512 = icmp eq i64 %i.il, 0               ; 2 uses
  br i1 %.not.i512, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %lean_dec.exit406
  %i.im = lshr i64 %i.ik, 1
  %i.in = trunc i64 %i.im to i32
  br label %lean_obj_tag.exit515

bb.gw:                                            ; preds = %lean_dec.exit406
  %i.io = getelementptr i8, ptr %i.ij, i64 4
  %.val.i514 = load i32, ptr %i.io, align 4
  %i.ip = lshr i32 %.val.i514, 24
  br label %lean_obj_tag.exit515

lean_obj_tag.exit515:                             ; preds = %bb.gv, %bb.gw
  %.0.i513 = phi i32 [ %i.in, %bb.gv ], [ %i.ip, %bb.gw ]
  %i.iq = icmp eq i32 %.0.i513, 0
  br i1 %i.iq, label %bb.gx, label %bb.iu

bb.gx:                                            ; preds = %lean_obj_tag.exit515
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !12 ; 8 uses
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = and i64 %i.it, 1
  %.not.i374 = icmp eq i64 %i.iu, 0               ; 2 uses
  br i1 %.not.i374, label %bb.gy, label %lean_inc.exit375

bb.gy:                                            ; preds = %bb.gx
  %.val.i.i516 = load i32, ptr %i.is, align 4, !tbaa !14 ; 3 uses
  %i.iv = icmp sgt i32 %.val.i.i516, 0
  br i1 %i.iv, label %bb.gz, label %bb.ha, !prof !15

bb.gz:                                            ; preds = %bb.gy
  %i.iw = add nuw i32 %.val.i.i516, 1
  store i32 %i.iw, ptr %i.is, align 4, !tbaa !14
  br label %lean_inc.exit375

bb.ha:                                            ; preds = %bb.gy
  %.not.i.i517 = icmp eq i32 %.val.i.i516, 0
  br i1 %.not.i.i517, label %lean_inc.exit375, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ix = atomicrmw sub ptr %i.is, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit375

lean_inc.exit375:                                 ; preds = %bb.hb, %bb.ha, %bb.gz, %bb.gx
  %.val.i519 = load i32, ptr %i.ij, align 8, !tbaa !14 ; 4 uses
  %i.iy = icmp eq i32 %.val.i519, 1
  br i1 %i.iy, label %.preheader.i522, label %bb.hg

.preheader.i522:                                  ; preds = %lean_inc.exit375
  %i.iz = load ptr, ptr %i.ir, align 8, !tbaa !12 ; 4 uses
  %i.ja = ptrtoint ptr %i.iz to i64
end_hunk_11
begin_hunk_12_@l_Lean_Meta_Grind_propagateBoolAndUp:bb.a
  %.not.i622 = icmp eq i64 %i.bc, 0               ; 2 uses
  br i1 %.not.i622, label %bb.av, label %bb.au

bb.au:                                            ; preds = %lean_inc_ref.exit621
  %i.bd = lshr i64 %i.bb, 1
  %i.be = trunc i64 %i.bd to i32
  br label %lean_obj_tag.exit

bb.av:                                            ; preds = %lean_inc_ref.exit621
  %i.bf = getelementptr i8, ptr %i.ba, i64 4
  %.val.i = load i32, ptr %i.bf, align 4
  %i.bg = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.au, %bb.av
  %.0.i = phi i32 [ %i.be, %bb.au ], [ %i.bg, %bb.av ]
  %i.bh = icmp eq i32 %.0.i, 0
  br i1 %i.bh, label %bb.aw, label %bb.mm

bb.aw:                                            ; preds = %lean_obj_tag.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !12 ; 19 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = and i64 %i.bk, 1
  %.not.i537 = icmp eq i64 %i.bl, 0               ; 6 uses
  br i1 %.not.i537, label %bb.ax, label %lean_inc.exit538

bb.ax:                                            ; preds = %bb.aw
  %.val.i.i623 = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.bm = icmp sgt i32 %.val.i.i623, 0
  br i1 %i.bm, label %bb.ay, label %bb.az, !prof !15

bb.ay:                                            ; preds = %bb.ax
  %i.bn = add nuw i32 %.val.i.i623, 1
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !14
  br label %lean_inc.exit538

bb.az:                                            ; preds = %bb.ax
  %.not.i.i624 = icmp eq i32 %.val.i.i623, 0
  br i1 %.not.i.i624, label %lean_inc.exit538, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bo = atomicrmw sub ptr %i.bj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit538

lean_inc.exit538:                                 ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw
  %.val.i626 = load i32, ptr %i.ba, align 8, !tbaa !14 ; 4 uses
  %i.bp = icmp eq i32 %.val.i626, 1
  br i1 %i.bp, label %.preheader.i, label %bb.bf

.preheader.i:                                     ; preds = %lean_inc.exit538
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !12 ; 4 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 1
  %.not.i7.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i, label %bb.bb, label %lean_dec.exit.i

bb.bb:                                            ; preds = %.preheader.i
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !14 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.bc, label %bb.bd, !prof !15

bb.bc:                                            ; preds = %bb.bb
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.bd:                                            ; preds = %bb.bb
  %.not.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.be, %bb.bd, %bb.bc, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ba) #4
  br label %lean_dec_ref_known.exit

bb.bf:                                            ; preds = %lean_inc.exit538
  %i.bw = icmp sgt i32 %.val.i626, 1
  br i1 %i.bw, label %bb.bg, label %bb.bh, !prof !15

bb.bg:                                            ; preds = %bb.bf
  %i.bx = add nsw i32 %.val.i626, -1
  store i32 %i.bx, ptr %i.ba, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.bh:                                            ; preds = %bb.bf
  %.not.i.i627 = icmp eq i32 %.val.i626, 0
  br i1 %.not.i.i627, label %lean_dec_ref_known.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ba) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.bg, %bb.bh, %bb.bi
  %i.by = and i64 %i.bk, 510
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.bj, label %bb.kq

bb.bj:                                            ; preds = %lean_dec_ref_known.exit
  %.val.i.i629 = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.ca = icmp sgt i32 %.val.i.i629, 0
  br i1 %i.ca, label %bb.bk, label %bb.bl, !prof !15

bb.bk:                                            ; preds = %bb.bj
  %i.cb = add nuw i32 %.val.i.i629, 1
  store i32 %i.cb, ptr %i.n, align 4, !tbaa !14
  br label %lean_inc_ref.exit631

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i630 = icmp eq i32 %.val.i.i629, 0
  br i1 %.not.i.i630, label %lean_inc_ref.exit631, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cc = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit631

lean_inc_ref.exit631:                             ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.cd = tail call ptr @l_Lean_Meta_Grind_isEqBoolTrue___redArg(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 11 uses
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = and i64 %i.ce, 1
  %.not.i632 = icmp eq i64 %i.cf, 0               ; 2 uses
  br i1 %.not.i632, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %lean_inc_ref.exit631
  %i.cg = lshr i64 %i.ce, 1
  %i.ch = trunc i64 %i.cg to i32
  br label %lean_obj_tag.exit635

bb.bo:                                            ; preds = %lean_inc_ref.exit631
  %i.ci = getelementptr i8, ptr %i.cd, i64 4
  %.val.i634 = load i32, ptr %i.ci, align 4
  %i.cj = lshr i32 %.val.i634, 24
  br label %lean_obj_tag.exit635

lean_obj_tag.exit635:                             ; preds = %bb.bn, %bb.bo
  %.0.i633 = phi i32 [ %i.ch, %bb.bn ], [ %i.cj, %bb.bo ]
  %i.ck = icmp eq i32 %.0.i633, 0
  br i1 %i.ck, label %bb.bp, label %bb.js

bb.bp:                                            ; preds = %lean_obj_tag.exit635
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !12 ; 7 uses
  %i.cn = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.co = and i64 %i.cn, 1
  %.not.i535 = icmp eq i64 %i.co, 0
  br i1 %.not.i535, label %bb.bq, label %lean_inc.exit536

bb.bq:                                            ; preds = %bb.bp
  %.val.i.i636 = load i32, ptr %i.cm, align 4, !tbaa !14 ; 3 uses
  %i.cp = icmp sgt i32 %.val.i.i636, 0
  br i1 %i.cp, label %bb.br, label %bb.bs, !prof !15

bb.br:                                            ; preds = %bb.bq
  %i.cq = add nuw i32 %.val.i.i636, 1
  store i32 %i.cq, ptr %i.cm, align 4, !tbaa !14
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  %.not.i.i637 = icmp eq i32 %.val.i.i636, 0
  br i1 %.not.i.i637, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.cr = atomicrmw sub ptr %i.cm, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.bu

lean_inc.exit536:                                 ; preds = %bb.bp
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cd)
  br label %lean_dec.exit603

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cd)
  %i.cs = load i32, ptr %i.cm, align 4, !tbaa !14 ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %bb.bv, label %bb.bw, !prof !15

bb.bv:                                            ; preds = %bb.bu
  %i.cu = add nsw i32 %i.cs, -1
  store i32 %i.cu, ptr %i.cm, align 4, !tbaa !14
  br label %lean_dec.exit603

bb.bw:                                            ; preds = %bb.bu
  %.not.i.i601 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i601, label %lean_dec.exit603, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #4
  br label %lean_dec.exit603

lean_dec.exit603:                                 ; preds = %bb.bv, %bb.bw, %bb.bx, %lean_inc.exit536
  %i.cv = and i64 %i.cn, 510
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.by, label %bb.ia

bb.by:                                            ; preds = %lean_dec.exit603
  br i1 %.not.i537, label %bb.bz, label %lean_dec.exit599

bb.bz:                                            ; preds = %bb.by
  %i.cx = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 1
  br i1 %i.cy, label %bb.ca, label %bb.cb, !prof !15

bb.ca:                                            ; preds = %bb.bz
  %i.cz = add nsw i32 %i.cx, -1
  store i32 %i.cz, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit599

bb.cb:                                            ; preds = %bb.bz
  %.not.i.i597 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i597, label %lean_dec.exit599, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit599

lean_dec.exit599:                                 ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.by
  %.val.i.i639 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.da = icmp sgt i32 %.val.i.i639, 0
  br i1 %i.da, label %bb.cd, label %bb.ce, !prof !15

bb.cd:                                            ; preds = %lean_dec.exit599
  %i.db = add nuw i32 %.val.i.i639, 1
  store i32 %i.db, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit641

bb.ce:                                            ; preds = %lean_dec.exit599
  %.not.i.i640 = icmp eq i32 %.val.i.i639, 0
  br i1 %.not.i.i640, label %lean_inc_ref.exit641, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.dc = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit641

lean_inc_ref.exit641:                             ; preds = %bb.cd, %bb.ce, %bb.cf
  %i.dd = tail call ptr @l_Lean_Meta_Grind_isEqBoolFalse___redArg(ptr noundef nonnull %i.ae, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 11 uses
  %i.de = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.df = and i64 %i.de, 1
  %.not.i642 = icmp eq i64 %i.df, 0               ; 2 uses
  br i1 %.not.i642, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %lean_inc_ref.exit641
  %i.dg = lshr i64 %i.de, 1
  %i.dh = trunc i64 %i.dg to i32
  br label %lean_obj_tag.exit645

bb.ch:                                            ; preds = %lean_inc_ref.exit641
  %i.di = getelementptr i8, ptr %i.dd, i64 4
  %.val.i644 = load i32, ptr %i.di, align 4
  %i.dj = lshr i32 %.val.i644, 24
  br label %lean_obj_tag.exit645

lean_obj_tag.exit645:                             ; preds = %bb.cg, %bb.ch
  %.0.i643 = phi i32 [ %i.dh, %bb.cg ], [ %i.dj, %bb.ch ]
  %i.dk = icmp eq i32 %.0.i643, 0
  br i1 %i.dk, label %bb.ci, label %bb.hg

bb.ci:                                            ; preds = %lean_obj_tag.exit645
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !12 ; 7 uses
  %i.dn = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.do = and i64 %i.dn, 1
  %.not.i533 = icmp eq i64 %i.do, 0
  br i1 %.not.i533, label %bb.cj, label %lean_inc.exit534

bb.cj:                                            ; preds = %bb.ci
  %.val.i.i646 = load i32, ptr %i.dm, align 4, !tbaa !14 ; 3 uses
  %i.dp = icmp sgt i32 %.val.i.i646, 0
  br i1 %i.dp, label %bb.ck, label %bb.cl, !prof !15

bb.ck:                                            ; preds = %bb.cj
  %i.dq = add nuw i32 %.val.i.i646, 1
  store i32 %i.dq, ptr %i.dm, align 4, !tbaa !14
  br label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  %.not.i.i647 = icmp eq i32 %.val.i.i646, 0
  br i1 %.not.i.i647, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.dr = atomicrmw sub ptr %i.dm, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.cn

lean_inc.exit534:                                 ; preds = %bb.ci
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dd)
  br label %lean_dec.exit595

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dd)
  %i.ds = load i32, ptr %i.dm, align 4, !tbaa !14 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.co, label %bb.cp, !prof !15

bb.co:                                            ; preds = %bb.cn
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %i.dm, align 4, !tbaa !14
  br label %lean_dec.exit595

bb.cp:                                            ; preds = %bb.cn
  %.not.i.i593 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i593, label %lean_dec.exit595, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #4
  br label %lean_dec.exit595

lean_dec.exit595:                                 ; preds = %bb.co, %bb.cp, %bb.cq, %lean_inc.exit534
  %i.dv = and i64 %i.dn, 510
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.cr, label %bb.fz

bb.cr:                                            ; preds = %lean_dec.exit595
  %.val.i.i649 = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.dx = icmp sgt i32 %.val.i.i649, 0
  br i1 %i.dx, label %bb.cs, label %bb.ct, !prof !15

bb.cs:                                            ; preds = %bb.cr
  %i.dy = add nuw i32 %.val.i.i649, 1
  store i32 %i.dy, ptr %i.n, align 4, !tbaa !14
  br label %lean_inc_ref.exit651

bb.ct:                                            ; preds = %bb.cr
  %.not.i.i650 = icmp eq i32 %.val.i.i649, 0
  br i1 %.not.i.i650, label %lean_inc_ref.exit651, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.dz = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit651

lean_inc_ref.exit651:                             ; preds = %bb.cs, %bb.ct, %bb.cu
  %i.ea = tail call ptr @l_Lean_Meta_Grind_isEqBoolFalse___redArg(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 14 uses
  %i.eb = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ec = and i64 %i.eb, 1
  %.not.i652 = icmp eq i64 %i.ec, 0               ; 3 uses
  br i1 %.not.i652, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %lean_inc_ref.exit651
  %i.ed = lshr i64 %i.eb, 1
  %i.ee = trunc i64 %i.ed to i32
  br label %lean_obj_tag.exit655

bb.cw:                                            ; preds = %lean_inc_ref.exit651
  %i.ef = getelementptr i8, ptr %i.ea, i64 4
  %.val.i654 = load i32, ptr %i.ef, align 4
  %i.eg = lshr i32 %.val.i654, 24
  br label %lean_obj_tag.exit655

lean_obj_tag.exit655:                             ; preds = %bb.cv, %bb.cw
  %.0.i653 = phi i32 [ %i.ee, %bb.cv ], [ %i.eg, %bb.cw ]
  %i.eh = icmp eq i32 %.0.i653, 0
  br i1 %i.eh, label %bb.cx, label %bb.ff

bb.cx:                                            ; preds = %lean_obj_tag.exit655
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !12 ; 7 uses
  %.val611 = load i32, ptr %i.ea, align 8, !tbaa !14
  %i.ek = icmp eq i32 %.val611, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.ej to i64               ; 2 uses
  %.pre756 = and i64 %.pre, 1                     ; 2 uses
  br i1 %i.ek, label %lean_dec.exit591, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.not.i531 = icmp eq i64 %.pre756, 0
  br i1 %.not.i531, label %bb.cz, label %lean_inc.exit532

bb.cz:                                            ; preds = %bb.cy
  %.val.i.i656 = load i32, ptr %i.ej, align 4, !tbaa !14 ; 3 uses
  %i.el = icmp sgt i32 %.val.i.i656, 0
  br i1 %i.el, label %bb.da, label %bb.db, !prof !15

bb.da:                                            ; preds = %bb.cz
  %i.em = add nuw i32 %.val.i.i656, 1
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !14
  br label %lean_inc.exit532

bb.db:                                            ; preds = %bb.cz
  %.not.i.i657 = icmp eq i32 %.val.i.i656, 0
  br i1 %.not.i.i657, label %lean_inc.exit532, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.en = atomicrmw sub ptr %i.ej, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit532

lean_inc.exit532:                                 ; preds = %bb.dc, %bb.db, %bb.da, %bb.cy
  br i1 %.not.i652, label %bb.dd, label %lean_dec.exit591

bb.dd:                                            ; preds = %lean_inc.exit532
  %i.eo = load i32, ptr %i.ea, align 8, !tbaa !14 ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %bb.de, label %bb.df, !prof !15

bb.de:                                            ; preds = %bb.dd
  %i.eq = add nsw i32 %i.eo, -1
  store i32 %i.eq, ptr %i.ea, align 8, !tbaa !14
  br label %lean_dec.exit591

bb.df:                                            ; preds = %bb.dd
  %.not.i.i589 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i589, label %lean_dec.exit591, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ea) #4
  br label %lean_dec.exit591

lean_dec.exit591:                                 ; preds = %bb.cx, %lean_inc.exit532, %bb.dg, %bb.df, %bb.de
  %.0406 = phi ptr [ inttoptr (i64 1 to ptr), %bb.de ], [ inttoptr (i64 1 to ptr), %lean_inc.exit532 ], [ inttoptr (i64 1 to ptr), %bb.dg ], [ inttoptr (i64 1 to ptr), %bb.df ], [ %i.ea, %bb.cx ] ; 4 uses
end_hunk_12
begin_hunk_13_@l_Lean_Meta_Grind_propagateBoolAndUp:bb.a

lean_dec_ref.exit465:                             ; preds = %bb.hh, %bb.hi, %bb.hj
  %i.jx = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.jy = icmp sgt i32 %i.jx, 1
  br i1 %i.jy, label %bb.hk, label %bb.hl, !prof !15

bb.hk:                                            ; preds = %lean_dec_ref.exit465
  %i.jz = add nsw i32 %i.jx, -1
  store i32 %i.jz, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit463

bb.hl:                                            ; preds = %lean_dec_ref.exit465
  %.not.i462 = icmp eq i32 %i.jx, 0
  br i1 %.not.i462, label %lean_dec_ref.exit463, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit463

lean_dec_ref.exit463:                             ; preds = %bb.hk, %bb.hl, %bb.hm
  %i.ka = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.kb = icmp sgt i32 %i.ka, 1
  br i1 %i.kb, label %bb.hn, label %bb.ho, !prof !15

bb.hn:                                            ; preds = %lean_dec_ref.exit463
  %i.kc = add nsw i32 %i.ka, -1
  store i32 %i.kc, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit461

bb.ho:                                            ; preds = %lean_dec_ref.exit463
  %.not.i460 = icmp eq i32 %i.ka, 0
  br i1 %.not.i460, label %lean_dec_ref.exit461, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit461

lean_dec_ref.exit461:                             ; preds = %bb.hn, %bb.ho, %bb.hp
  %i.kd = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !12 ; 5 uses
  %.val607 = load i32, ptr %i.dd, align 8, !tbaa !14
  %i.kf = icmp eq i32 %.val607, 1
  br i1 %i.kf, label %lean_dec_ref.exit499.thread, label %bb.hq

bb.hq:                                            ; preds = %lean_dec_ref.exit461
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = and i64 %i.kg, 1
  %.not.i519 = icmp eq i64 %i.kh, 0
  br i1 %.not.i519, label %bb.hr, label %lean_inc.exit520

bb.hr:                                            ; preds = %bb.hq
  %.val.i.i692 = load i32, ptr %i.ke, align 4, !tbaa !14 ; 3 uses
  %i.ki = icmp sgt i32 %.val.i.i692, 0
  br i1 %i.ki, label %bb.hs, label %bb.ht, !prof !15

bb.hs:                                            ; preds = %bb.hr
  %i.kj = add nuw i32 %.val.i.i692, 1
  store i32 %i.kj, ptr %i.ke, align 4, !tbaa !14
  br label %lean_inc.exit520

bb.ht:                                            ; preds = %bb.hr
  %.not.i.i693 = icmp eq i32 %.val.i.i692, 0
  br i1 %.not.i.i693, label %lean_inc.exit520, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.kk = atomicrmw sub ptr %i.ke, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit520

lean_inc.exit520:                                 ; preds = %bb.hu, %bb.ht, %bb.hs, %bb.hq
  br i1 %.not.i642, label %bb.hv, label %bb.hz

bb.hv:                                            ; preds = %lean_inc.exit520
  %i.kl = load i32, ptr %i.dd, align 8, !tbaa !14 ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 1
  br i1 %i.km, label %bb.hw, label %bb.hx, !prof !15

bb.hw:                                            ; preds = %bb.hv
  %i.kn = add nsw i32 %i.kl, -1
  store i32 %i.kn, ptr %i.dd, align 8, !tbaa !14
  br label %bb.hz

bb.hx:                                            ; preds = %bb.hv
  %.not.i.i569 = icmp eq i32 %i.kl, 0
  br i1 %.not.i.i569, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #4
  br label %bb.hz

bb.hz:                                            ; preds = %lean_inc.exit520, %bb.hy, %bb.hx, %bb.hw
  %i.ko = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.ke, ptr %i.kp, align 8, !tbaa !12
  br label %lean_dec_ref.exit499.thread

bb.ia:                                            ; preds = %lean_dec.exit603
  %.val.i.i695 = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.kq = icmp sgt i32 %.val.i.i695, 0
  br i1 %i.kq, label %bb.ib, label %bb.ic, !prof !15

bb.ib:                                            ; preds = %bb.ia
  %i.kr = add nuw i32 %.val.i.i695, 1
  store i32 %i.kr, ptr %i.n, align 4, !tbaa !14
  br label %lean_inc_ref.exit697

bb.ic:                                            ; preds = %bb.ia
  %.not.i.i696 = icmp eq i32 %.val.i.i695, 0
  br i1 %.not.i.i696, label %lean_inc_ref.exit697, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.ks = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit697

lean_inc_ref.exit697:                             ; preds = %bb.ib, %bb.ic, %bb.id
  %i.kt = tail call ptr @l_Lean_Meta_Grind_mkEqBoolTrueProof(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 10 uses
  %i.ku = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.kv = and i64 %i.ku, 1
  %.not.i698 = icmp eq i64 %i.kv, 0               ; 2 uses
  br i1 %.not.i698, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %lean_inc_ref.exit697
  %i.kw = lshr i64 %i.ku, 1
  %i.kx = trunc i64 %i.kw to i32
  br label %lean_obj_tag.exit701

bb.if:                                            ; preds = %lean_inc_ref.exit697
  %i.ky = getelementptr i8, ptr %i.kt, i64 4
  %.val.i700 = load i32, ptr %i.ky, align 4
  %i.kz = lshr i32 %.val.i700, 24
  br label %lean_obj_tag.exit701

lean_obj_tag.exit701:                             ; preds = %bb.ie, %bb.if
  %.0.i699 = phi i32 [ %i.kx, %bb.ie ], [ %i.kz, %bb.if ]
  %i.la = icmp eq i32 %.0.i699, 0
  br i1 %i.la, label %bb.ig, label %bb.iu

bb.ig:                                            ; preds = %lean_obj_tag.exit701
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !12 ; 5 uses
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = and i64 %i.ld, 1
  %.not.i517 = icmp eq i64 %i.le, 0
  br i1 %.not.i517, label %bb.ih, label %lean_inc.exit518

bb.ih:                                            ; preds = %bb.ig
  %.val.i.i702 = load i32, ptr %i.lc, align 4, !tbaa !14 ; 3 uses
  %i.lf = icmp sgt i32 %.val.i.i702, 0
  br i1 %i.lf, label %bb.ii, label %bb.ij, !prof !15

bb.ii:                                            ; preds = %bb.ih
  %i.lg = add nuw i32 %.val.i.i702, 1
  store i32 %i.lg, ptr %i.lc, align 4, !tbaa !14
  br label %lean_inc.exit518

bb.ij:                                            ; preds = %bb.ih
  %.not.i.i703 = icmp eq i32 %.val.i.i702, 0
  br i1 %.not.i.i703, label %lean_inc.exit518, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.lh = atomicrmw sub ptr %i.lc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit518

lean_inc.exit518:                                 ; preds = %bb.ik, %bb.ij, %bb.ii, %bb.ig
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.kt)
  %i.li = load atomic i32, ptr @l_Lean_Meta_Grind_propagateBoolAndUp___closed__7_once seq_cst, align 4, !tbaa !17
  %i.lj = icmp eq i32 %i.li, 1
  br i1 %i.lj, label %bb.il, label %bb.im, !prof !15

bb.il:                                            ; preds = %lean_inc.exit518
  %i.lk = load ptr, ptr @l_Lean_Meta_Grind_propagateBoolAndUp___closed__7, align 8, !tbaa !12
  br label %lean_obj_once.exit706

bb.im:                                            ; preds = %lean_inc.exit518
  %i.ll = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_Grind_propagateBoolAndUp___closed__7, ptr noundef nonnull @l_Lean_Meta_Grind_propagateBoolAndUp___closed__7_once, ptr noundef nonnull @_init_l_Lean_Meta_Grind_propagateBoolAndUp___closed__7) #4
  br label %lean_obj_once.exit706

lean_obj_once.exit706:                            ; preds = %bb.il, %bb.im
  %.0.i705 = phi ptr [ %i.lk, %bb.il ], [ %i.ll, %bb.im ]
  %.val.i.i707 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.lm = icmp sgt i32 %.val.i.i707, 0
  br i1 %i.lm, label %bb.in, label %bb.io, !prof !15

bb.in:                                            ; preds = %lean_obj_once.exit706
  %i.ln = add nuw i32 %.val.i.i707, 1
  store i32 %i.ln, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit709

bb.io:                                            ; preds = %lean_obj_once.exit706
  %.not.i.i708 = icmp eq i32 %.val.i.i707, 0
  br i1 %.not.i.i708, label %lean_inc_ref.exit709, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.lo = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit709

lean_inc_ref.exit709:                             ; preds = %bb.in, %bb.io, %bb.ip
  %i.lp = tail call ptr @l_Lean_mkApp3(ptr noundef %.0.i705, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.n, ptr noundef %i.lc) #4
  br i1 %.not.i537, label %bb.iq, label %lean_dec.exit567

bb.iq:                                            ; preds = %lean_inc_ref.exit709
  %i.lq = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.lr = icmp sgt i32 %i.lq, 1
  br i1 %i.lr, label %bb.ir, label %bb.is, !prof !15

bb.ir:                                            ; preds = %bb.iq
  %i.ls = add nsw i32 %i.lq, -1
  store i32 %i.ls, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit567

bb.is:                                            ; preds = %bb.iq
  %.not.i.i565 = icmp eq i32 %i.lq, 0
  br i1 %.not.i.i565, label %lean_dec.exit567, label %bb.it

bb.it:                                            ; preds = %bb.is
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit567

lean_dec.exit567:                                 ; preds = %bb.ir, %bb.is, %bb.it, %lean_inc_ref.exit709
  %i.lt = tail call ptr @l_Lean_Meta_Grind_pushEqCore___redArg(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef %i.lp, i8 noundef zeroext 0, ptr noundef %1, ptr noundef %3, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4
  br label %lean_dec_ref.exit499.thread

bb.iu:                                            ; preds = %lean_obj_tag.exit701
  br i1 %.not.i537, label %bb.iv, label %lean_dec.exit563

bb.iv:                                            ; preds = %bb.iu
  %i.lu = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.lv = icmp sgt i32 %i.lu, 1
  br i1 %i.lv, label %bb.iw, label %bb.ix, !prof !15

bb.iw:                                            ; preds = %bb.iv
  %i.lw = add nsw i32 %i.lu, -1
  store i32 %i.lw, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit563

bb.ix:                                            ; preds = %bb.iv
  %.not.i.i561 = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i561, label %lean_dec.exit563, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit563

lean_dec.exit563:                                 ; preds = %bb.iw, %bb.ix, %bb.iy, %bb.iu
  %i.lx = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.ly = icmp sgt i32 %i.lx, 1
  br i1 %i.ly, label %bb.iz, label %bb.ja, !prof !15

bb.iz:                                            ; preds = %lean_dec.exit563
  %i.lz = add nsw i32 %i.lx, -1
  store i32 %i.lz, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit459

bb.ja:                                            ; preds = %lean_dec.exit563
  %.not.i458 = icmp eq i32 %i.lx, 0
  br i1 %.not.i458, label %lean_dec_ref.exit459, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit459

lean_dec_ref.exit459:                             ; preds = %bb.iz, %bb.ja, %bb.jb
  %i.ma = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.mb = icmp sgt i32 %i.ma, 1
  br i1 %i.mb, label %bb.jc, label %bb.jd, !prof !15

bb.jc:                                            ; preds = %lean_dec_ref.exit459
  %i.mc = add nsw i32 %i.ma, -1
  store i32 %i.mc, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit457

bb.jd:                                            ; preds = %lean_dec_ref.exit459
  %.not.i456 = icmp eq i32 %i.ma, 0
  br i1 %.not.i456, label %lean_dec_ref.exit457, label %bb.je

bb.je:                                            ; preds = %bb.jd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit457

lean_dec_ref.exit457:                             ; preds = %bb.jc, %bb.jd, %bb.je
  %i.md = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.me = icmp sgt i32 %i.md, 1
  br i1 %i.me, label %bb.jf, label %bb.jg, !prof !15

bb.jf:                                            ; preds = %lean_dec_ref.exit457
  %i.mf = add nsw i32 %i.md, -1
  store i32 %i.mf, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit455

bb.jg:                                            ; preds = %lean_dec_ref.exit457
  %.not.i454 = icmp eq i32 %i.md, 0
  br i1 %.not.i454, label %lean_dec_ref.exit455, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit455

lean_dec_ref.exit455:                             ; preds = %bb.jf, %bb.jg, %bb.jh
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !12 ; 5 uses
  %.val606 = load i32, ptr %i.kt, align 8, !tbaa !14
  %i.mi = icmp eq i32 %.val606, 1
  br i1 %i.mi, label %lean_dec_ref.exit499.thread, label %bb.ji

bb.ji:                                            ; preds = %lean_dec_ref.exit455
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = and i64 %i.mj, 1
  %.not.i515 = icmp eq i64 %i.mk, 0
  br i1 %.not.i515, label %bb.jj, label %lean_inc.exit516

bb.jj:                                            ; preds = %bb.ji
  %.val.i.i710 = load i32, ptr %i.mh, align 4, !tbaa !14 ; 3 uses
  %i.ml = icmp sgt i32 %.val.i.i710, 0
  br i1 %i.ml, label %bb.jk, label %bb.jl, !prof !15

bb.jk:                                            ; preds = %bb.jj
  %i.mm = add nuw i32 %.val.i.i710, 1
  store i32 %i.mm, ptr %i.mh, align 4, !tbaa !14
  br label %lean_inc.exit516

bb.jl:                                            ; preds = %bb.jj
  %.not.i.i711 = icmp eq i32 %.val.i.i710, 0
  br i1 %.not.i.i711, label %lean_inc.exit516, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.mn = atomicrmw sub ptr %i.mh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit516

lean_inc.exit516:                                 ; preds = %bb.jm, %bb.jl, %bb.jk, %bb.ji
  br i1 %.not.i698, label %bb.jn, label %bb.jr

bb.jn:                                            ; preds = %lean_inc.exit516
  %i.mo = load i32, ptr %i.kt, align 8, !tbaa !14 ; 3 uses
  %i.mp = icmp sgt i32 %i.mo, 1
  br i1 %i.mp, label %bb.jo, label %bb.jp, !prof !15

bb.jo:                                            ; preds = %bb.jn
  %i.mq = add nsw i32 %i.mo, -1
  store i32 %i.mq, ptr %i.kt, align 8, !tbaa !14
  br label %bb.jr

bb.jp:                                            ; preds = %bb.jn
  %.not.i.i557 = icmp eq i32 %i.mo, 0
  br i1 %.not.i.i557, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kt) #4
  br label %bb.jr

bb.jr:                                            ; preds = %lean_inc.exit516, %bb.jq, %bb.jp, %bb.jo
  %i.mr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store ptr %i.mh, ptr %i.ms, align 8, !tbaa !12
  br label %lean_dec_ref.exit499.thread

bb.js:                                            ; preds = %lean_obj_tag.exit635
  br i1 %.not.i537, label %bb.jt, label %lean_dec.exit555

bb.jt:                                            ; preds = %bb.js
  %i.mt = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.mu = icmp sgt i32 %i.mt, 1
  br i1 %i.mu, label %bb.ju, label %bb.jv, !prof !15

bb.ju:                                            ; preds = %bb.jt
  %i.mv = add nsw i32 %i.mt, -1
  store i32 %i.mv, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit555

bb.jv:                                            ; preds = %bb.jt
  %.not.i.i553 = icmp eq i32 %i.mt, 0
  br i1 %.not.i.i553, label %lean_dec.exit555, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit555

lean_dec.exit555:                                 ; preds = %bb.ju, %bb.jv, %bb.jw, %bb.js
  %i.mw = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.mx = icmp sgt i32 %i.mw, 1
  br i1 %i.mx, label %bb.jx, label %bb.jy, !prof !15

bb.jx:                                            ; preds = %lean_dec.exit555
  %i.my = add nsw i32 %i.mw, -1
  store i32 %i.my, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit453

bb.jy:                                            ; preds = %lean_dec.exit555
  %.not.i452 = icmp eq i32 %i.mw, 0
  br i1 %.not.i452, label %lean_dec_ref.exit453, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit453

lean_dec_ref.exit453:                             ; preds = %bb.jx, %bb.jy, %bb.jz
  %i.mz = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.na = icmp sgt i32 %i.mz, 1
  br i1 %i.na, label %bb.ka, label %bb.kb, !prof !15

bb.ka:                                            ; preds = %lean_dec_ref.exit453
  %i.nb = add nsw i32 %i.mz, -1
  store i32 %i.nb, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit451

bb.kb:                                            ; preds = %lean_dec_ref.exit453
  %.not.i450 = icmp eq i32 %i.mz, 0
  br i1 %.not.i450, label %lean_dec_ref.exit451, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit451

lean_dec_ref.exit451:                             ; preds = %bb.ka, %bb.kb, %bb.kc
  %i.nc = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.nd = icmp sgt i32 %i.nc, 1
  br i1 %i.nd, label %bb.kd, label %bb.ke, !prof !15

bb.kd:                                            ; preds = %lean_dec_ref.exit451
  %i.ne = add nsw i32 %i.nc, -1
  store i32 %i.ne, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit449

bb.ke:                                            ; preds = %lean_dec_ref.exit451
  %.not.i448 = icmp eq i32 %i.nc, 0
  br i1 %.not.i448, label %lean_dec_ref.exit449, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit449

lean_dec_ref.exit449:                             ; preds = %bb.kd, %bb.ke, %bb.kf
  %i.nf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !12 ; 5 uses
  %.val605 = load i32, ptr %i.cd, align 8, !tbaa !14
  %i.nh = icmp eq i32 %.val605, 1
  br i1 %i.nh, label %lean_dec_ref.exit499.thread, label %bb.kg

bb.kg:                                            ; preds = %lean_dec_ref.exit449
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = and i64 %i.ni, 1
  %.not.i513 = icmp eq i64 %i.nj, 0
  br i1 %.not.i513, label %bb.kh, label %lean_inc.exit514

bb.kh:                                            ; preds = %bb.kg
  %.val.i.i713 = load i32, ptr %i.ng, align 4, !tbaa !14 ; 3 uses
  %i.nk = icmp sgt i32 %.val.i.i713, 0
  br i1 %i.nk, label %bb.ki, label %bb.kj, !prof !15

bb.ki:                                            ; preds = %bb.kh
  %i.nl = add nuw i32 %.val.i.i713, 1
  store i32 %i.nl, ptr %i.ng, align 4, !tbaa !14
  br label %lean_inc.exit514

bb.kj:                                            ; preds = %bb.kh
  %.not.i.i714 = icmp eq i32 %.val.i.i713, 0
  br i1 %.not.i.i714, label %lean_inc.exit514, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.nm = atomicrmw sub ptr %i.ng, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit514

lean_inc.exit514:                                 ; preds = %bb.kk, %bb.kj, %bb.ki, %bb.kg
  br i1 %.not.i632, label %bb.kl, label %bb.kp

bb.kl:                                            ; preds = %lean_inc.exit514
  %i.nn = load i32, ptr %i.cd, align 8, !tbaa !14 ; 3 uses
  %i.no = icmp sgt i32 %i.nn, 1
  br i1 %i.no, label %bb.km, label %bb.kn, !prof !15

bb.km:                                            ; preds = %bb.kl
  %i.np = add nsw i32 %i.nn, -1
  store i32 %i.np, ptr %i.cd, align 8, !tbaa !14
  br label %bb.kp

bb.kn:                                            ; preds = %bb.kl
  %.not.i.i549 = icmp eq i32 %i.nn, 0
  br i1 %.not.i.i549, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #4
  br label %bb.kp

bb.kp:                                            ; preds = %lean_inc.exit514, %bb.ko, %bb.kn, %bb.km
  %i.nq = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store ptr %i.ng, ptr %i.nr, align 8, !tbaa !12
  br label %lean_dec_ref.exit499.thread

bb.kq:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i537, label %bb.kr, label %lean_dec.exit547

bb.kr:                                            ; preds = %bb.kq
  %i.ns = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.nt = icmp sgt i32 %i.ns, 1
  br i1 %i.nt, label %bb.ks, label %bb.kt, !prof !15

bb.ks:                                            ; preds = %bb.kr
  %i.nu = add nsw i32 %i.ns, -1
  store i32 %i.nu, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit547

bb.kt:                                            ; preds = %bb.kr
  %.not.i.i545 = icmp eq i32 %i.ns, 0
  br i1 %.not.i.i545, label %lean_dec.exit547, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit547

lean_dec.exit547:                                 ; preds = %bb.ks, %bb.kt, %bb.ku, %bb.kq
  %.val.i.i716 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.nv = icmp sgt i32 %.val.i.i716, 0
  br i1 %i.nv, label %bb.kv, label %bb.kw, !prof !15

bb.kv:                                            ; preds = %lean_dec.exit547
  %i.nw = add nuw i32 %.val.i.i716, 1
  store i32 %i.nw, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit718

bb.kw:                                            ; preds = %lean_dec.exit547
  %.not.i.i717 = icmp eq i32 %.val.i.i716, 0
  br i1 %.not.i.i717, label %lean_inc_ref.exit718, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.nx = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit718

lean_inc_ref.exit718:                             ; preds = %bb.kv, %bb.kw, %bb.kx
  %i.ny = tail call ptr @l_Lean_Meta_Grind_mkEqBoolTrueProof(ptr noundef nonnull %i.ae, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 13 uses
  %i.nz = ptrtoint ptr %i.ny to i64               ; 2 uses
  %i.oa = and i64 %i.nz, 1
  %.not.i719 = icmp eq i64 %i.oa, 0               ; 2 uses
  br i1 %.not.i719, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %lean_inc_ref.exit718
  %i.ob = lshr i64 %i.nz, 1
  %i.oc = trunc i64 %i.ob to i32
  br label %lean_obj_tag.exit722

bb.kz:                                            ; preds = %lean_inc_ref.exit718
  %i.od = getelementptr i8, ptr %i.ny, i64 4
  %.val.i721 = load i32, ptr %i.od, align 4
  %i.oe = lshr i32 %.val.i721, 24
  br label %lean_obj_tag.exit722

lean_obj_tag.exit722:                             ; preds = %bb.ky, %bb.kz
  %.0.i720 = phi i32 [ %i.oc, %bb.ky ], [ %i.oe, %bb.kz ]
  %i.of = icmp eq i32 %.0.i720, 0
  br i1 %i.of, label %bb.la, label %bb.ls

bb.la:                                            ; preds = %lean_obj_tag.exit722
  %i.og = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !12 ; 5 uses
  %i.oi = ptrtoint ptr %i.oh to i64
  %i.oj = and i64 %i.oi, 1
  %.not.i511 = icmp eq i64 %i.oj, 0
  br i1 %.not.i511, label %bb.lb, label %lean_inc.exit512

bb.lb:                                            ; preds = %bb.la
  %.val.i.i723 = load i32, ptr %i.oh, align 4, !tbaa !14 ; 3 uses
  %i.ok = icmp sgt i32 %.val.i.i723, 0
  br i1 %i.ok, label %bb.lc, label %bb.ld, !prof !15

bb.lc:                                            ; preds = %bb.lb
  %i.ol = add nuw i32 %.val.i.i723, 1
  store i32 %i.ol, ptr %i.oh, align 4, !tbaa !14
end_hunk_13
begin_hunk_14_@l_Lean_Meta_Grind_propagateBoolOrUp:bb.a
  %.not.i622 = icmp eq i64 %i.bc, 0               ; 2 uses
  br i1 %.not.i622, label %bb.av, label %bb.au

bb.au:                                            ; preds = %lean_inc_ref.exit621
  %i.bd = lshr i64 %i.bb, 1
  %i.be = trunc i64 %i.bd to i32
  br label %lean_obj_tag.exit

bb.av:                                            ; preds = %lean_inc_ref.exit621
  %i.bf = getelementptr i8, ptr %i.ba, i64 4
  %.val.i = load i32, ptr %i.bf, align 4
  %i.bg = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.au, %bb.av
  %.0.i = phi i32 [ %i.be, %bb.au ], [ %i.bg, %bb.av ]
  %i.bh = icmp eq i32 %.0.i, 0
  br i1 %i.bh, label %bb.aw, label %bb.mm

bb.aw:                                            ; preds = %lean_obj_tag.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !12 ; 19 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = and i64 %i.bk, 1
  %.not.i537 = icmp eq i64 %i.bl, 0               ; 6 uses
  br i1 %.not.i537, label %bb.ax, label %lean_inc.exit538

bb.ax:                                            ; preds = %bb.aw
  %.val.i.i623 = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.bm = icmp sgt i32 %.val.i.i623, 0
  br i1 %i.bm, label %bb.ay, label %bb.az, !prof !15

bb.ay:                                            ; preds = %bb.ax
  %i.bn = add nuw i32 %.val.i.i623, 1
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !14
  br label %lean_inc.exit538

bb.az:                                            ; preds = %bb.ax
  %.not.i.i624 = icmp eq i32 %.val.i.i623, 0
  br i1 %.not.i.i624, label %lean_inc.exit538, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bo = atomicrmw sub ptr %i.bj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit538

lean_inc.exit538:                                 ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw
  %.val.i626 = load i32, ptr %i.ba, align 8, !tbaa !14 ; 4 uses
  %i.bp = icmp eq i32 %.val.i626, 1
  br i1 %i.bp, label %.preheader.i, label %bb.bf

.preheader.i:                                     ; preds = %lean_inc.exit538
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !12 ; 4 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, 1
  %.not.i7.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i7.i, label %bb.bb, label %lean_dec.exit.i

bb.bb:                                            ; preds = %.preheader.i
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !14 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.bc, label %bb.bd, !prof !15

bb.bc:                                            ; preds = %bb.bb
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.bd:                                            ; preds = %bb.bb
  %.not.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.be, %bb.bd, %bb.bc, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ba) #4
  br label %lean_dec_ref_known.exit

bb.bf:                                            ; preds = %lean_inc.exit538
  %i.bw = icmp sgt i32 %.val.i626, 1
  br i1 %i.bw, label %bb.bg, label %bb.bh, !prof !15

bb.bg:                                            ; preds = %bb.bf
  %i.bx = add nsw i32 %.val.i626, -1
  store i32 %i.bx, ptr %i.ba, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.bh:                                            ; preds = %bb.bf
  %.not.i.i627 = icmp eq i32 %.val.i626, 0
  br i1 %.not.i.i627, label %lean_dec_ref_known.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ba) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.bg, %bb.bh, %bb.bi
  %i.by = and i64 %i.bk, 510
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.bj, label %bb.kq

bb.bj:                                            ; preds = %lean_dec_ref_known.exit
  %.val.i.i629 = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.ca = icmp sgt i32 %.val.i.i629, 0
  br i1 %i.ca, label %bb.bk, label %bb.bl, !prof !15

bb.bk:                                            ; preds = %bb.bj
  %i.cb = add nuw i32 %.val.i.i629, 1
  store i32 %i.cb, ptr %i.n, align 4, !tbaa !14
  br label %lean_inc_ref.exit631

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i630 = icmp eq i32 %.val.i.i629, 0
  br i1 %.not.i.i630, label %lean_inc_ref.exit631, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cc = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit631

lean_inc_ref.exit631:                             ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.cd = tail call ptr @l_Lean_Meta_Grind_isEqBoolFalse___redArg(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 11 uses
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = and i64 %i.ce, 1
  %.not.i632 = icmp eq i64 %i.cf, 0               ; 2 uses
  br i1 %.not.i632, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %lean_inc_ref.exit631
  %i.cg = lshr i64 %i.ce, 1
  %i.ch = trunc i64 %i.cg to i32
  br label %lean_obj_tag.exit635

bb.bo:                                            ; preds = %lean_inc_ref.exit631
  %i.ci = getelementptr i8, ptr %i.cd, i64 4
  %.val.i634 = load i32, ptr %i.ci, align 4
  %i.cj = lshr i32 %.val.i634, 24
  br label %lean_obj_tag.exit635

lean_obj_tag.exit635:                             ; preds = %bb.bn, %bb.bo
  %.0.i633 = phi i32 [ %i.ch, %bb.bn ], [ %i.cj, %bb.bo ]
  %i.ck = icmp eq i32 %.0.i633, 0
  br i1 %i.ck, label %bb.bp, label %bb.js

bb.bp:                                            ; preds = %lean_obj_tag.exit635
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !12 ; 7 uses
  %i.cn = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.co = and i64 %i.cn, 1
  %.not.i535 = icmp eq i64 %i.co, 0
  br i1 %.not.i535, label %bb.bq, label %lean_inc.exit536

bb.bq:                                            ; preds = %bb.bp
  %.val.i.i636 = load i32, ptr %i.cm, align 4, !tbaa !14 ; 3 uses
  %i.cp = icmp sgt i32 %.val.i.i636, 0
  br i1 %i.cp, label %bb.br, label %bb.bs, !prof !15

bb.br:                                            ; preds = %bb.bq
  %i.cq = add nuw i32 %.val.i.i636, 1
  store i32 %i.cq, ptr %i.cm, align 4, !tbaa !14
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  %.not.i.i637 = icmp eq i32 %.val.i.i636, 0
  br i1 %.not.i.i637, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.cr = atomicrmw sub ptr %i.cm, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.bu

lean_inc.exit536:                                 ; preds = %bb.bp
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cd)
  br label %lean_dec.exit603

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cd)
  %i.cs = load i32, ptr %i.cm, align 4, !tbaa !14 ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %bb.bv, label %bb.bw, !prof !15

bb.bv:                                            ; preds = %bb.bu
  %i.cu = add nsw i32 %i.cs, -1
  store i32 %i.cu, ptr %i.cm, align 4, !tbaa !14
  br label %lean_dec.exit603

bb.bw:                                            ; preds = %bb.bu
  %.not.i.i601 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i601, label %lean_dec.exit603, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #4
  br label %lean_dec.exit603

lean_dec.exit603:                                 ; preds = %bb.bv, %bb.bw, %bb.bx, %lean_inc.exit536
  %i.cv = and i64 %i.cn, 510
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.by, label %bb.ia

bb.by:                                            ; preds = %lean_dec.exit603
  br i1 %.not.i537, label %bb.bz, label %lean_dec.exit599

bb.bz:                                            ; preds = %bb.by
  %i.cx = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 1
  br i1 %i.cy, label %bb.ca, label %bb.cb, !prof !15

bb.ca:                                            ; preds = %bb.bz
  %i.cz = add nsw i32 %i.cx, -1
  store i32 %i.cz, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit599

bb.cb:                                            ; preds = %bb.bz
  %.not.i.i597 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i597, label %lean_dec.exit599, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit599

lean_dec.exit599:                                 ; preds = %bb.ca, %bb.cb, %bb.cc, %bb.by
  %.val.i.i639 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.da = icmp sgt i32 %.val.i.i639, 0
  br i1 %i.da, label %bb.cd, label %bb.ce, !prof !15

bb.cd:                                            ; preds = %lean_dec.exit599
  %i.db = add nuw i32 %.val.i.i639, 1
  store i32 %i.db, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit641

bb.ce:                                            ; preds = %lean_dec.exit599
  %.not.i.i640 = icmp eq i32 %.val.i.i639, 0
  br i1 %.not.i.i640, label %lean_inc_ref.exit641, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.dc = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit641

lean_inc_ref.exit641:                             ; preds = %bb.cd, %bb.ce, %bb.cf
  %i.dd = tail call ptr @l_Lean_Meta_Grind_isEqBoolTrue___redArg(ptr noundef nonnull %i.ae, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 11 uses
  %i.de = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.df = and i64 %i.de, 1
  %.not.i642 = icmp eq i64 %i.df, 0               ; 2 uses
  br i1 %.not.i642, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %lean_inc_ref.exit641
  %i.dg = lshr i64 %i.de, 1
  %i.dh = trunc i64 %i.dg to i32
  br label %lean_obj_tag.exit645

bb.ch:                                            ; preds = %lean_inc_ref.exit641
  %i.di = getelementptr i8, ptr %i.dd, i64 4
  %.val.i644 = load i32, ptr %i.di, align 4
  %i.dj = lshr i32 %.val.i644, 24
  br label %lean_obj_tag.exit645

lean_obj_tag.exit645:                             ; preds = %bb.cg, %bb.ch
  %.0.i643 = phi i32 [ %i.dh, %bb.cg ], [ %i.dj, %bb.ch ]
  %i.dk = icmp eq i32 %.0.i643, 0
  br i1 %i.dk, label %bb.ci, label %bb.hg

bb.ci:                                            ; preds = %lean_obj_tag.exit645
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !12 ; 7 uses
  %i.dn = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.do = and i64 %i.dn, 1
  %.not.i533 = icmp eq i64 %i.do, 0
  br i1 %.not.i533, label %bb.cj, label %lean_inc.exit534

bb.cj:                                            ; preds = %bb.ci
  %.val.i.i646 = load i32, ptr %i.dm, align 4, !tbaa !14 ; 3 uses
  %i.dp = icmp sgt i32 %.val.i.i646, 0
  br i1 %i.dp, label %bb.ck, label %bb.cl, !prof !15

bb.ck:                                            ; preds = %bb.cj
  %i.dq = add nuw i32 %.val.i.i646, 1
  store i32 %i.dq, ptr %i.dm, align 4, !tbaa !14
  br label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  %.not.i.i647 = icmp eq i32 %.val.i.i646, 0
  br i1 %.not.i.i647, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.dr = atomicrmw sub ptr %i.dm, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.cn

lean_inc.exit534:                                 ; preds = %bb.ci
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dd)
  br label %lean_dec.exit595

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dd)
  %i.ds = load i32, ptr %i.dm, align 4, !tbaa !14 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.co, label %bb.cp, !prof !15

bb.co:                                            ; preds = %bb.cn
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %i.dm, align 4, !tbaa !14
  br label %lean_dec.exit595

bb.cp:                                            ; preds = %bb.cn
  %.not.i.i593 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i593, label %lean_dec.exit595, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #4
  br label %lean_dec.exit595

lean_dec.exit595:                                 ; preds = %bb.co, %bb.cp, %bb.cq, %lean_inc.exit534
  %i.dv = and i64 %i.dn, 510
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.cr, label %bb.fz

bb.cr:                                            ; preds = %lean_dec.exit595
  %.val.i.i649 = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.dx = icmp sgt i32 %.val.i.i649, 0
  br i1 %i.dx, label %bb.cs, label %bb.ct, !prof !15

bb.cs:                                            ; preds = %bb.cr
  %i.dy = add nuw i32 %.val.i.i649, 1
  store i32 %i.dy, ptr %i.n, align 4, !tbaa !14
  br label %lean_inc_ref.exit651

bb.ct:                                            ; preds = %bb.cr
  %.not.i.i650 = icmp eq i32 %.val.i.i649, 0
  br i1 %.not.i.i650, label %lean_inc_ref.exit651, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.dz = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit651

lean_inc_ref.exit651:                             ; preds = %bb.cs, %bb.ct, %bb.cu
  %i.ea = tail call ptr @l_Lean_Meta_Grind_isEqBoolTrue___redArg(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef %5, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 14 uses
  %i.eb = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ec = and i64 %i.eb, 1
  %.not.i652 = icmp eq i64 %i.ec, 0               ; 3 uses
  br i1 %.not.i652, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %lean_inc_ref.exit651
  %i.ed = lshr i64 %i.eb, 1
  %i.ee = trunc i64 %i.ed to i32
  br label %lean_obj_tag.exit655

bb.cw:                                            ; preds = %lean_inc_ref.exit651
  %i.ef = getelementptr i8, ptr %i.ea, i64 4
  %.val.i654 = load i32, ptr %i.ef, align 4
  %i.eg = lshr i32 %.val.i654, 24
  br label %lean_obj_tag.exit655

lean_obj_tag.exit655:                             ; preds = %bb.cv, %bb.cw
  %.0.i653 = phi i32 [ %i.ee, %bb.cv ], [ %i.eg, %bb.cw ]
  %i.eh = icmp eq i32 %.0.i653, 0
  br i1 %i.eh, label %bb.cx, label %bb.ff

bb.cx:                                            ; preds = %lean_obj_tag.exit655
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !12 ; 7 uses
  %.val611 = load i32, ptr %i.ea, align 8, !tbaa !14
  %i.ek = icmp eq i32 %.val611, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.ej to i64               ; 2 uses
  %.pre756 = and i64 %.pre, 1                     ; 2 uses
  br i1 %i.ek, label %lean_dec.exit591, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.not.i531 = icmp eq i64 %.pre756, 0
  br i1 %.not.i531, label %bb.cz, label %lean_inc.exit532

bb.cz:                                            ; preds = %bb.cy
  %.val.i.i656 = load i32, ptr %i.ej, align 4, !tbaa !14 ; 3 uses
  %i.el = icmp sgt i32 %.val.i.i656, 0
  br i1 %i.el, label %bb.da, label %bb.db, !prof !15

bb.da:                                            ; preds = %bb.cz
  %i.em = add nuw i32 %.val.i.i656, 1
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !14
  br label %lean_inc.exit532

bb.db:                                            ; preds = %bb.cz
  %.not.i.i657 = icmp eq i32 %.val.i.i656, 0
  br i1 %.not.i.i657, label %lean_inc.exit532, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.en = atomicrmw sub ptr %i.ej, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit532

lean_inc.exit532:                                 ; preds = %bb.dc, %bb.db, %bb.da, %bb.cy
  br i1 %.not.i652, label %bb.dd, label %lean_dec.exit591

bb.dd:                                            ; preds = %lean_inc.exit532
  %i.eo = load i32, ptr %i.ea, align 8, !tbaa !14 ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %bb.de, label %bb.df, !prof !15

bb.de:                                            ; preds = %bb.dd
  %i.eq = add nsw i32 %i.eo, -1
  store i32 %i.eq, ptr %i.ea, align 8, !tbaa !14
  br label %lean_dec.exit591

bb.df:                                            ; preds = %bb.dd
  %.not.i.i589 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i589, label %lean_dec.exit591, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ea) #4
  br label %lean_dec.exit591

lean_dec.exit591:                                 ; preds = %bb.cx, %lean_inc.exit532, %bb.dg, %bb.df, %bb.de
  %.0406 = phi ptr [ inttoptr (i64 1 to ptr), %bb.de ], [ inttoptr (i64 1 to ptr), %lean_inc.exit532 ], [ inttoptr (i64 1 to ptr), %bb.dg ], [ inttoptr (i64 1 to ptr), %bb.df ], [ %i.ea, %bb.cx ] ; 4 uses
end_hunk_14
begin_hunk_15_@l_Lean_Meta_Grind_propagateBoolOrUp:bb.a

lean_dec_ref.exit465:                             ; preds = %bb.hh, %bb.hi, %bb.hj
  %i.jx = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.jy = icmp sgt i32 %i.jx, 1
  br i1 %i.jy, label %bb.hk, label %bb.hl, !prof !15

bb.hk:                                            ; preds = %lean_dec_ref.exit465
  %i.jz = add nsw i32 %i.jx, -1
  store i32 %i.jz, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit463

bb.hl:                                            ; preds = %lean_dec_ref.exit465
  %.not.i462 = icmp eq i32 %i.jx, 0
  br i1 %.not.i462, label %lean_dec_ref.exit463, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit463

lean_dec_ref.exit463:                             ; preds = %bb.hk, %bb.hl, %bb.hm
  %i.ka = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.kb = icmp sgt i32 %i.ka, 1
  br i1 %i.kb, label %bb.hn, label %bb.ho, !prof !15

bb.hn:                                            ; preds = %lean_dec_ref.exit463
  %i.kc = add nsw i32 %i.ka, -1
  store i32 %i.kc, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit461

bb.ho:                                            ; preds = %lean_dec_ref.exit463
  %.not.i460 = icmp eq i32 %i.ka, 0
  br i1 %.not.i460, label %lean_dec_ref.exit461, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit461

lean_dec_ref.exit461:                             ; preds = %bb.hn, %bb.ho, %bb.hp
  %i.kd = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !12 ; 5 uses
  %.val607 = load i32, ptr %i.dd, align 8, !tbaa !14
  %i.kf = icmp eq i32 %.val607, 1
  br i1 %i.kf, label %lean_dec_ref.exit499.thread, label %bb.hq

bb.hq:                                            ; preds = %lean_dec_ref.exit461
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = and i64 %i.kg, 1
  %.not.i519 = icmp eq i64 %i.kh, 0
  br i1 %.not.i519, label %bb.hr, label %lean_inc.exit520

bb.hr:                                            ; preds = %bb.hq
  %.val.i.i692 = load i32, ptr %i.ke, align 4, !tbaa !14 ; 3 uses
  %i.ki = icmp sgt i32 %.val.i.i692, 0
  br i1 %i.ki, label %bb.hs, label %bb.ht, !prof !15

bb.hs:                                            ; preds = %bb.hr
  %i.kj = add nuw i32 %.val.i.i692, 1
  store i32 %i.kj, ptr %i.ke, align 4, !tbaa !14
  br label %lean_inc.exit520

bb.ht:                                            ; preds = %bb.hr
  %.not.i.i693 = icmp eq i32 %.val.i.i692, 0
  br i1 %.not.i.i693, label %lean_inc.exit520, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.kk = atomicrmw sub ptr %i.ke, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit520

lean_inc.exit520:                                 ; preds = %bb.hu, %bb.ht, %bb.hs, %bb.hq
  br i1 %.not.i642, label %bb.hv, label %bb.hz

bb.hv:                                            ; preds = %lean_inc.exit520
  %i.kl = load i32, ptr %i.dd, align 8, !tbaa !14 ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 1
  br i1 %i.km, label %bb.hw, label %bb.hx, !prof !15

bb.hw:                                            ; preds = %bb.hv
  %i.kn = add nsw i32 %i.kl, -1
  store i32 %i.kn, ptr %i.dd, align 8, !tbaa !14
  br label %bb.hz

bb.hx:                                            ; preds = %bb.hv
  %.not.i.i569 = icmp eq i32 %i.kl, 0
  br i1 %.not.i.i569, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #4
  br label %bb.hz

bb.hz:                                            ; preds = %lean_inc.exit520, %bb.hy, %bb.hx, %bb.hw
  %i.ko = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.ke, ptr %i.kp, align 8, !tbaa !12
  br label %lean_dec_ref.exit499.thread

bb.ia:                                            ; preds = %lean_dec.exit603
  %.val.i.i695 = load i32, ptr %i.n, align 4, !tbaa !14 ; 3 uses
  %i.kq = icmp sgt i32 %.val.i.i695, 0
  br i1 %i.kq, label %bb.ib, label %bb.ic, !prof !15

bb.ib:                                            ; preds = %bb.ia
  %i.kr = add nuw i32 %.val.i.i695, 1
  store i32 %i.kr, ptr %i.n, align 4, !tbaa !14
  br label %lean_inc_ref.exit697

bb.ic:                                            ; preds = %bb.ia
  %.not.i.i696 = icmp eq i32 %.val.i.i695, 0
  br i1 %.not.i.i696, label %lean_inc_ref.exit697, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.ks = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit697

lean_inc_ref.exit697:                             ; preds = %bb.ib, %bb.ic, %bb.id
  %i.kt = tail call ptr @l_Lean_Meta_Grind_mkEqBoolFalseProof(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 10 uses
  %i.ku = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.kv = and i64 %i.ku, 1
  %.not.i698 = icmp eq i64 %i.kv, 0               ; 2 uses
  br i1 %.not.i698, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %lean_inc_ref.exit697
  %i.kw = lshr i64 %i.ku, 1
  %i.kx = trunc i64 %i.kw to i32
  br label %lean_obj_tag.exit701

bb.if:                                            ; preds = %lean_inc_ref.exit697
  %i.ky = getelementptr i8, ptr %i.kt, i64 4
  %.val.i700 = load i32, ptr %i.ky, align 4
  %i.kz = lshr i32 %.val.i700, 24
  br label %lean_obj_tag.exit701

lean_obj_tag.exit701:                             ; preds = %bb.ie, %bb.if
  %.0.i699 = phi i32 [ %i.kx, %bb.ie ], [ %i.kz, %bb.if ]
  %i.la = icmp eq i32 %.0.i699, 0
  br i1 %i.la, label %bb.ig, label %bb.iu

bb.ig:                                            ; preds = %lean_obj_tag.exit701
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !12 ; 5 uses
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = and i64 %i.ld, 1
  %.not.i517 = icmp eq i64 %i.le, 0
  br i1 %.not.i517, label %bb.ih, label %lean_inc.exit518

bb.ih:                                            ; preds = %bb.ig
  %.val.i.i702 = load i32, ptr %i.lc, align 4, !tbaa !14 ; 3 uses
  %i.lf = icmp sgt i32 %.val.i.i702, 0
  br i1 %i.lf, label %bb.ii, label %bb.ij, !prof !15

bb.ii:                                            ; preds = %bb.ih
  %i.lg = add nuw i32 %.val.i.i702, 1
  store i32 %i.lg, ptr %i.lc, align 4, !tbaa !14
  br label %lean_inc.exit518

bb.ij:                                            ; preds = %bb.ih
  %.not.i.i703 = icmp eq i32 %.val.i.i702, 0
  br i1 %.not.i.i703, label %lean_inc.exit518, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.lh = atomicrmw sub ptr %i.lc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit518

lean_inc.exit518:                                 ; preds = %bb.ik, %bb.ij, %bb.ii, %bb.ig
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.kt)
  %i.li = load atomic i32, ptr @l_Lean_Meta_Grind_propagateBoolOrUp___closed__7_once seq_cst, align 4, !tbaa !17
  %i.lj = icmp eq i32 %i.li, 1
  br i1 %i.lj, label %bb.il, label %bb.im, !prof !15

bb.il:                                            ; preds = %lean_inc.exit518
  %i.lk = load ptr, ptr @l_Lean_Meta_Grind_propagateBoolOrUp___closed__7, align 8, !tbaa !12
  br label %lean_obj_once.exit706

bb.im:                                            ; preds = %lean_inc.exit518
  %i.ll = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_Grind_propagateBoolOrUp___closed__7, ptr noundef nonnull @l_Lean_Meta_Grind_propagateBoolOrUp___closed__7_once, ptr noundef nonnull @_init_l_Lean_Meta_Grind_propagateBoolOrUp___closed__7) #4
  br label %lean_obj_once.exit706

lean_obj_once.exit706:                            ; preds = %bb.il, %bb.im
  %.0.i705 = phi ptr [ %i.lk, %bb.il ], [ %i.ll, %bb.im ]
  %.val.i.i707 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.lm = icmp sgt i32 %.val.i.i707, 0
  br i1 %i.lm, label %bb.in, label %bb.io, !prof !15

bb.in:                                            ; preds = %lean_obj_once.exit706
  %i.ln = add nuw i32 %.val.i.i707, 1
  store i32 %i.ln, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit709

bb.io:                                            ; preds = %lean_obj_once.exit706
  %.not.i.i708 = icmp eq i32 %.val.i.i707, 0
  br i1 %.not.i.i708, label %lean_inc_ref.exit709, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.lo = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit709

lean_inc_ref.exit709:                             ; preds = %bb.in, %bb.io, %bb.ip
  %i.lp = tail call ptr @l_Lean_mkApp3(ptr noundef %.0.i705, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.n, ptr noundef %i.lc) #4
  br i1 %.not.i537, label %bb.iq, label %lean_dec.exit567

bb.iq:                                            ; preds = %lean_inc_ref.exit709
  %i.lq = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.lr = icmp sgt i32 %i.lq, 1
  br i1 %i.lr, label %bb.ir, label %bb.is, !prof !15

bb.ir:                                            ; preds = %bb.iq
  %i.ls = add nsw i32 %i.lq, -1
  store i32 %i.ls, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit567

bb.is:                                            ; preds = %bb.iq
  %.not.i.i565 = icmp eq i32 %i.lq, 0
  br i1 %.not.i.i565, label %lean_dec.exit567, label %bb.it

bb.it:                                            ; preds = %bb.is
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit567

lean_dec.exit567:                                 ; preds = %bb.ir, %bb.is, %bb.it, %lean_inc_ref.exit709
  %i.lt = tail call ptr @l_Lean_Meta_Grind_pushEqCore___redArg(ptr noundef nonnull %0, ptr noundef nonnull %i.ae, ptr noundef %i.lp, i8 noundef zeroext 0, ptr noundef %1, ptr noundef %3, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4
  br label %lean_dec_ref.exit499.thread

bb.iu:                                            ; preds = %lean_obj_tag.exit701
  br i1 %.not.i537, label %bb.iv, label %lean_dec.exit563

bb.iv:                                            ; preds = %bb.iu
  %i.lu = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.lv = icmp sgt i32 %i.lu, 1
  br i1 %i.lv, label %bb.iw, label %bb.ix, !prof !15

bb.iw:                                            ; preds = %bb.iv
  %i.lw = add nsw i32 %i.lu, -1
  store i32 %i.lw, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit563

bb.ix:                                            ; preds = %bb.iv
  %.not.i.i561 = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i561, label %lean_dec.exit563, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit563

lean_dec.exit563:                                 ; preds = %bb.iw, %bb.ix, %bb.iy, %bb.iu
  %i.lx = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.ly = icmp sgt i32 %i.lx, 1
  br i1 %i.ly, label %bb.iz, label %bb.ja, !prof !15

bb.iz:                                            ; preds = %lean_dec.exit563
  %i.lz = add nsw i32 %i.lx, -1
  store i32 %i.lz, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit459

bb.ja:                                            ; preds = %lean_dec.exit563
  %.not.i458 = icmp eq i32 %i.lx, 0
  br i1 %.not.i458, label %lean_dec_ref.exit459, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit459

lean_dec_ref.exit459:                             ; preds = %bb.iz, %bb.ja, %bb.jb
  %i.ma = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.mb = icmp sgt i32 %i.ma, 1
  br i1 %i.mb, label %bb.jc, label %bb.jd, !prof !15

bb.jc:                                            ; preds = %lean_dec_ref.exit459
  %i.mc = add nsw i32 %i.ma, -1
  store i32 %i.mc, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit457

bb.jd:                                            ; preds = %lean_dec_ref.exit459
  %.not.i456 = icmp eq i32 %i.ma, 0
  br i1 %.not.i456, label %lean_dec_ref.exit457, label %bb.je

bb.je:                                            ; preds = %bb.jd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit457

lean_dec_ref.exit457:                             ; preds = %bb.jc, %bb.jd, %bb.je
  %i.md = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.me = icmp sgt i32 %i.md, 1
  br i1 %i.me, label %bb.jf, label %bb.jg, !prof !15

bb.jf:                                            ; preds = %lean_dec_ref.exit457
  %i.mf = add nsw i32 %i.md, -1
  store i32 %i.mf, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit455

bb.jg:                                            ; preds = %lean_dec_ref.exit457
  %.not.i454 = icmp eq i32 %i.md, 0
  br i1 %.not.i454, label %lean_dec_ref.exit455, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit455

lean_dec_ref.exit455:                             ; preds = %bb.jf, %bb.jg, %bb.jh
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !12 ; 5 uses
  %.val606 = load i32, ptr %i.kt, align 8, !tbaa !14
  %i.mi = icmp eq i32 %.val606, 1
  br i1 %i.mi, label %lean_dec_ref.exit499.thread, label %bb.ji

bb.ji:                                            ; preds = %lean_dec_ref.exit455
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = and i64 %i.mj, 1
  %.not.i515 = icmp eq i64 %i.mk, 0
  br i1 %.not.i515, label %bb.jj, label %lean_inc.exit516

bb.jj:                                            ; preds = %bb.ji
  %.val.i.i710 = load i32, ptr %i.mh, align 4, !tbaa !14 ; 3 uses
  %i.ml = icmp sgt i32 %.val.i.i710, 0
  br i1 %i.ml, label %bb.jk, label %bb.jl, !prof !15

bb.jk:                                            ; preds = %bb.jj
  %i.mm = add nuw i32 %.val.i.i710, 1
  store i32 %i.mm, ptr %i.mh, align 4, !tbaa !14
  br label %lean_inc.exit516

bb.jl:                                            ; preds = %bb.jj
  %.not.i.i711 = icmp eq i32 %.val.i.i710, 0
  br i1 %.not.i.i711, label %lean_inc.exit516, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.mn = atomicrmw sub ptr %i.mh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit516

lean_inc.exit516:                                 ; preds = %bb.jm, %bb.jl, %bb.jk, %bb.ji
  br i1 %.not.i698, label %bb.jn, label %bb.jr

bb.jn:                                            ; preds = %lean_inc.exit516
  %i.mo = load i32, ptr %i.kt, align 8, !tbaa !14 ; 3 uses
  %i.mp = icmp sgt i32 %i.mo, 1
  br i1 %i.mp, label %bb.jo, label %bb.jp, !prof !15

bb.jo:                                            ; preds = %bb.jn
  %i.mq = add nsw i32 %i.mo, -1
  store i32 %i.mq, ptr %i.kt, align 8, !tbaa !14
  br label %bb.jr

bb.jp:                                            ; preds = %bb.jn
  %.not.i.i557 = icmp eq i32 %i.mo, 0
  br i1 %.not.i.i557, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kt) #4
  br label %bb.jr

bb.jr:                                            ; preds = %lean_inc.exit516, %bb.jq, %bb.jp, %bb.jo
  %i.mr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store ptr %i.mh, ptr %i.ms, align 8, !tbaa !12
  br label %lean_dec_ref.exit499.thread

bb.js:                                            ; preds = %lean_obj_tag.exit635
  br i1 %.not.i537, label %bb.jt, label %lean_dec.exit555

bb.jt:                                            ; preds = %bb.js
  %i.mt = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.mu = icmp sgt i32 %i.mt, 1
  br i1 %i.mu, label %bb.ju, label %bb.jv, !prof !15

bb.ju:                                            ; preds = %bb.jt
  %i.mv = add nsw i32 %i.mt, -1
  store i32 %i.mv, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit555

bb.jv:                                            ; preds = %bb.jt
  %.not.i.i553 = icmp eq i32 %i.mt, 0
  br i1 %.not.i.i553, label %lean_dec.exit555, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit555

lean_dec.exit555:                                 ; preds = %bb.ju, %bb.jv, %bb.jw, %bb.js
  %i.mw = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.mx = icmp sgt i32 %i.mw, 1
  br i1 %i.mx, label %bb.jx, label %bb.jy, !prof !15

bb.jx:                                            ; preds = %lean_dec.exit555
  %i.my = add nsw i32 %i.mw, -1
  store i32 %i.my, ptr %i.ae, align 4, !tbaa !14
  br label %lean_dec_ref.exit453

bb.jy:                                            ; preds = %lean_dec.exit555
  %.not.i452 = icmp eq i32 %i.mw, 0
  br i1 %.not.i452, label %lean_dec_ref.exit453, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit453

lean_dec_ref.exit453:                             ; preds = %bb.jx, %bb.jy, %bb.jz
  %i.mz = load i32, ptr %i.n, align 4, !tbaa !14  ; 3 uses
  %i.na = icmp sgt i32 %i.mz, 1
  br i1 %i.na, label %bb.ka, label %bb.kb, !prof !15

bb.ka:                                            ; preds = %lean_dec_ref.exit453
  %i.nb = add nsw i32 %i.mz, -1
  store i32 %i.nb, ptr %i.n, align 4, !tbaa !14
  br label %lean_dec_ref.exit451

bb.kb:                                            ; preds = %lean_dec_ref.exit453
  %.not.i450 = icmp eq i32 %i.mz, 0
  br i1 %.not.i450, label %lean_dec_ref.exit451, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit451

lean_dec_ref.exit451:                             ; preds = %bb.ka, %bb.kb, %bb.kc
  %i.nc = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.nd = icmp sgt i32 %i.nc, 1
  br i1 %i.nd, label %bb.kd, label %bb.ke, !prof !15

bb.kd:                                            ; preds = %lean_dec_ref.exit451
  %i.ne = add nsw i32 %i.nc, -1
  store i32 %i.ne, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit449

bb.ke:                                            ; preds = %lean_dec_ref.exit451
  %.not.i448 = icmp eq i32 %i.nc, 0
  br i1 %.not.i448, label %lean_dec_ref.exit449, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec_ref.exit449

lean_dec_ref.exit449:                             ; preds = %bb.kd, %bb.ke, %bb.kf
  %i.nf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !12 ; 5 uses
  %.val605 = load i32, ptr %i.cd, align 8, !tbaa !14
  %i.nh = icmp eq i32 %.val605, 1
  br i1 %i.nh, label %lean_dec_ref.exit499.thread, label %bb.kg

bb.kg:                                            ; preds = %lean_dec_ref.exit449
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = and i64 %i.ni, 1
  %.not.i513 = icmp eq i64 %i.nj, 0
  br i1 %.not.i513, label %bb.kh, label %lean_inc.exit514

bb.kh:                                            ; preds = %bb.kg
  %.val.i.i713 = load i32, ptr %i.ng, align 4, !tbaa !14 ; 3 uses
  %i.nk = icmp sgt i32 %.val.i.i713, 0
  br i1 %i.nk, label %bb.ki, label %bb.kj, !prof !15

bb.ki:                                            ; preds = %bb.kh
  %i.nl = add nuw i32 %.val.i.i713, 1
  store i32 %i.nl, ptr %i.ng, align 4, !tbaa !14
  br label %lean_inc.exit514

bb.kj:                                            ; preds = %bb.kh
  %.not.i.i714 = icmp eq i32 %.val.i.i713, 0
  br i1 %.not.i.i714, label %lean_inc.exit514, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.nm = atomicrmw sub ptr %i.ng, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit514

lean_inc.exit514:                                 ; preds = %bb.kk, %bb.kj, %bb.ki, %bb.kg
  br i1 %.not.i632, label %bb.kl, label %bb.kp

bb.kl:                                            ; preds = %lean_inc.exit514
  %i.nn = load i32, ptr %i.cd, align 8, !tbaa !14 ; 3 uses
  %i.no = icmp sgt i32 %i.nn, 1
  br i1 %i.no, label %bb.km, label %bb.kn, !prof !15

bb.km:                                            ; preds = %bb.kl
  %i.np = add nsw i32 %i.nn, -1
  store i32 %i.np, ptr %i.cd, align 8, !tbaa !14
  br label %bb.kp

bb.kn:                                            ; preds = %bb.kl
  %.not.i.i549 = icmp eq i32 %i.nn, 0
  br i1 %.not.i.i549, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #4
  br label %bb.kp

bb.kp:                                            ; preds = %lean_inc.exit514, %bb.ko, %bb.kn, %bb.km
  %i.nq = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1) ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store ptr %i.ng, ptr %i.nr, align 8, !tbaa !12
  br label %lean_dec_ref.exit499.thread

bb.kq:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i537, label %bb.kr, label %lean_dec.exit547

bb.kr:                                            ; preds = %bb.kq
  %i.ns = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.nt = icmp sgt i32 %i.ns, 1
  br i1 %i.nt, label %bb.ks, label %bb.kt, !prof !15

bb.ks:                                            ; preds = %bb.kr
  %i.nu = add nsw i32 %i.ns, -1
  store i32 %i.nu, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit547

bb.kt:                                            ; preds = %bb.kr
  %.not.i.i545 = icmp eq i32 %i.ns, 0
  br i1 %.not.i.i545, label %lean_dec.exit547, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #4
  br label %lean_dec.exit547

lean_dec.exit547:                                 ; preds = %bb.ks, %bb.kt, %bb.ku, %bb.kq
  %.val.i.i716 = load i32, ptr %i.ae, align 4, !tbaa !14 ; 3 uses
  %i.nv = icmp sgt i32 %.val.i.i716, 0
  br i1 %i.nv, label %bb.kv, label %bb.kw, !prof !15

bb.kv:                                            ; preds = %lean_dec.exit547
  %i.nw = add nuw i32 %.val.i.i716, 1
  store i32 %i.nw, ptr %i.ae, align 4, !tbaa !14
  br label %lean_inc_ref.exit718

bb.kw:                                            ; preds = %lean_dec.exit547
  %.not.i.i717 = icmp eq i32 %.val.i.i716, 0
  br i1 %.not.i.i717, label %lean_inc_ref.exit718, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.nx = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit718

lean_inc_ref.exit718:                             ; preds = %bb.kv, %bb.kw, %bb.kx
  %i.ny = tail call ptr @l_Lean_Meta_Grind_mkEqBoolFalseProof(ptr noundef nonnull %i.ae, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #4 ; 13 uses
  %i.nz = ptrtoint ptr %i.ny to i64               ; 2 uses
  %i.oa = and i64 %i.nz, 1
  %.not.i719 = icmp eq i64 %i.oa, 0               ; 2 uses
  br i1 %.not.i719, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %lean_inc_ref.exit718
  %i.ob = lshr i64 %i.nz, 1
  %i.oc = trunc i64 %i.ob to i32
  br label %lean_obj_tag.exit722

bb.kz:                                            ; preds = %lean_inc_ref.exit718
  %i.od = getelementptr i8, ptr %i.ny, i64 4
  %.val.i721 = load i32, ptr %i.od, align 4
  %i.oe = lshr i32 %.val.i721, 24
  br label %lean_obj_tag.exit722

lean_obj_tag.exit722:                             ; preds = %bb.ky, %bb.kz
  %.0.i720 = phi i32 [ %i.oc, %bb.ky ], [ %i.oe, %bb.kz ]
  %i.of = icmp eq i32 %.0.i720, 0
  br i1 %i.of, label %bb.la, label %bb.ls

bb.la:                                            ; preds = %lean_obj_tag.exit722
  %i.og = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !12 ; 5 uses
  %i.oi = ptrtoint ptr %i.oh to i64
  %i.oj = and i64 %i.oi, 1
  %.not.i511 = icmp eq i64 %i.oj, 0
  br i1 %.not.i511, label %bb.lb, label %lean_inc.exit512

bb.lb:                                            ; preds = %bb.la
  %.val.i.i723 = load i32, ptr %i.oh, align 4, !tbaa !14 ; 3 uses
  %i.ok = icmp sgt i32 %.val.i.i723, 0
  br i1 %i.ok, label %bb.lc, label %bb.ld, !prof !15

bb.lc:                                            ; preds = %bb.lb
  %i.ol = add nuw i32 %.val.i.i723, 1
  store i32 %i.ol, ptr %i.oh, align 4, !tbaa !14
end_hunk_15
