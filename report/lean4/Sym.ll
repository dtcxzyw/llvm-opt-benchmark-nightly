Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Sym?download=true
inline.NumInlined: 3122
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@l___private_Lean_Elab_Tactic_Grind_Sym_0__Lean_Elab_Tactic_Grind_addExtraTheorems___lam__1:bb.a

bb.ap:                                            ; preds = %bb.an
  %.not.i.i567 = icmp eq i32 %.val.i.i566, 0
  br i1 %.not.i.i567, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bc = atomicrmw sub ptr %i.ax, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.ar

lean_inc.exit522:                                 ; preds = %bb.am
  %i.bd = lshr i64 %i.ay, 1
  %i.be = trunc i64 %i.bd to i32
  br label %lean_obj_tag.exit572

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.bf = getelementptr i8, ptr %i.ax, i64 4
  %.val.i571 = load i32, ptr %i.bf, align 4
  %i.bg = lshr i32 %.val.i571, 24
  br label %lean_obj_tag.exit572

lean_obj_tag.exit572:                             ; preds = %lean_inc.exit522, %bb.ar
  %.0.i570 = phi i32 [ %i.be, %lean_inc.exit522 ], [ %i.bg, %bb.ar ]
  %i.bh = icmp eq i32 %.0.i570, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  br i1 %i.bh, label %bb.as, label %bb.dz

bb.as:                                            ; preds = %lean_obj_tag.exit572
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !16
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.at, label %bb.ci

bb.at:                                            ; preds = %bb.as
  %.val.i573 = load i32, ptr %i.ao, align 8, !tbaa !12 ; 4 uses
  %i.bl = icmp eq i32 %.val.i573, 1
  br i1 %i.bl, label %.preheader.i, label %bb.ay

.preheader.i:                                     ; preds = %bb.at
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 4 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = and i64 %i.bn, 1
  %.not.i.i574 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i574, label %bb.au, label %lean_dec.exit.i

bb.au:                                            ; preds = %.preheader.i
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !12 ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %bb.av, label %bb.aw, !prof !13

bb.av:                                            ; preds = %bb.au
  %i.br = add nsw i32 %i.bp, -1
  store i32 %i.br, ptr %i.bm, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.aw:                                            ; preds = %bb.au
  %.not.i7.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bm) #5
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.ax, %bb.aw, %bb.av, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ao) #5
  br label %lean_dec_ref_known.exit

bb.ay:                                            ; preds = %bb.at
  %i.bs = icmp sgt i32 %.val.i573, 1
  br i1 %i.bs, label %bb.az, label %bb.ba, !prof !13

bb.az:                                            ; preds = %bb.ay
  %i.bt = add nsw i32 %.val.i573, -1
  store i32 %i.bt, ptr %i.ao, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.ba:                                            ; preds = %bb.ay
  %.not.i8.i = icmp eq i32 %.val.i573, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #5
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.az, %bb.ba, %bb.bb
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16  ; 2 uses
  %.val.i575 = load i32, ptr %i.ax, align 4, !tbaa !12 ; 4 uses
  %i.bw = icmp eq i32 %.val.i575, 1
  br i1 %i.bw, label %.preheader.i577, label %bb.bc

.preheader.i577:                                  ; preds = %lean_dec_ref_known.exit
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #5
  br label %lean_dec_ref_known.exit579

bb.bc:                                            ; preds = %lean_dec_ref_known.exit
  %i.bx = icmp sgt i32 %.val.i575, 1
  br i1 %i.bx, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.by = add nsw i32 %.val.i575, -1
  store i32 %i.by, ptr %i.ax, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit579

bb.be:                                            ; preds = %bb.bc
  %.not.i8.i576 = icmp eq i32 %.val.i575, 0
  br i1 %.not.i8.i576, label %lean_dec_ref_known.exit579, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #5
  br label %lean_dec_ref_known.exit579

lean_dec_ref_known.exit579:                       ; preds = %.preheader.i577, %bb.bd, %bb.be, %bb.bf
  %i.bz = tail call ptr @lean_apply_12(ptr noundef %1, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11, ptr noundef nonnull inttoptr (i64 1 to ptr)) #5 ; 16 uses
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not.i580 = icmp eq i64 %i.cb, 0               ; 2 uses
  br i1 %.not.i580, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %lean_dec_ref_known.exit579
  %i.cc = lshr i64 %i.ca, 1
  %i.cd = trunc i64 %i.cc to i32
  br label %lean_obj_tag.exit583

bb.bh:                                            ; preds = %lean_dec_ref_known.exit579
  %i.ce = getelementptr i8, ptr %i.bz, i64 4
  %.val.i582 = load i32, ptr %i.ce, align 4
  %i.cf = lshr i32 %.val.i582, 24
  br label %lean_obj_tag.exit583

lean_obj_tag.exit583:                             ; preds = %bb.bg, %bb.bh
  %.0.i581 = phi i32 [ %i.cd, %bb.bg ], [ %i.cf, %bb.bh ]
  %i.cg = icmp eq i32 %.0.i581, 0
  br i1 %i.cg, label %bb.bi, label %lean_dec.exit376

bb.bi:                                            ; preds = %lean_obj_tag.exit583
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !10 ; 15 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = and i64 %i.cj, 1
  %.not.i519 = icmp eq i64 %i.ck, 0
  br i1 %.not.i519, label %bb.bj, label %lean_inc.exit520.thread

bb.bj:                                            ; preds = %bb.bi
  %.val.i.i584 = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.cl = icmp sgt i32 %.val.i.i584, 0
  br i1 %i.cl, label %bb.bk, label %bb.bl, !prof !13

bb.bk:                                            ; preds = %bb.bj
  %i.cm = add nuw i32 %.val.i.i584, 1
  store i32 %i.cm, ptr %i.ci, align 4, !tbaa !12
  br label %lean_inc.exit520

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i585 = icmp eq i32 %.val.i.i584, 0
  br i1 %.not.i.i585, label %lean_inc.exit520, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cn = atomicrmw sub ptr %i.ci, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit520

lean_inc.exit520:                                 ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.co = icmp eq i8 %i.bv, 0
  br i1 %i.co, label %bb.bn, label %lean_obj_tag.exit590

lean_inc.exit520.thread:                          ; preds = %bb.bi
  %i.cp = icmp eq i8 %i.bv, 0
  br i1 %i.cp, label %lean_dec.exit376, label %lean_obj_tag.exit590.thread

bb.bn:                                            ; preds = %lean_inc.exit520
  %i.cq = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.bo, label %bb.bp, !prof !13

bb.bo:                                            ; preds = %bb.bn
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %i.ci, align 4, !tbaa !12
  br label %lean_dec.exit376

bb.bp:                                            ; preds = %bb.bn
  %.not.i377 = icmp eq i32 %i.cq, 0
  br i1 %.not.i377, label %lean_dec.exit376, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #5
  br label %lean_dec.exit376

lean_obj_tag.exit590:                             ; preds = %lean_inc.exit520
  %i.ct = getelementptr i8, ptr %i.ci, i64 4
  %.val.i589 = load i32, ptr %i.ct, align 4
  %i.cu = icmp ult i32 %.val.i589, 16777216
  %.0311.in.v = select i1 %i.cu, i64 9, i64 25
  %.0311.in = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0311.in.v
  %.0311 = load i8, ptr %.0311.in, align 1, !tbaa !16
  %i.cv = icmp eq i8 %.0311, 0
  br i1 %i.cv, label %bb.br, label %bb.ce

lean_obj_tag.exit590.thread:                      ; preds = %lean_inc.exit520.thread
  %i.cw = and i64 %i.cj, 8589934590
  %i.cx = icmp eq i64 %i.cw, 0
  %.0311.in.v813 = select i1 %i.cx, i64 9, i64 25
  %.0311.in814 = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0311.in.v813
  %.0311815 = load i8, ptr %.0311.in814, align 1, !tbaa !16
  %i.cy = icmp eq i8 %.0311815, 0
  br i1 %i.cy, label %bb.br, label %lean_dec.exit376

bb.br:                                            ; preds = %lean_obj_tag.exit590.thread, %lean_obj_tag.exit590
  %.val537 = load i32, ptr %i.bz, align 8, !tbaa !12 ; 4 uses
  %i.cz = icmp eq i32 %.val537, 1
  br i1 %i.cz, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.da = load ptr, ptr %i.ch, align 8, !tbaa !10 ; 4 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = and i64 %i.db, 1
  %.not.i373 = icmp eq i64 %i.dc, 0
  br i1 %.not.i373, label %bb.bt, label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !12 ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.bu, label %bb.bv, !prof !13

bb.bu:                                            ; preds = %bb.bt
  %i.df = add nsw i32 %i.dd, -1
  store i32 %i.df, ptr %i.da, align 4, !tbaa !12
  br label %bb.cc

bb.bv:                                            ; preds = %bb.bt
  %.not.i378 = icmp eq i32 %i.dd, 0
  br i1 %.not.i378, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.da) #5
  br label %bb.cc

bb.bx:                                            ; preds = %bb.br
  br i1 %.not.i580, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.dg = icmp sgt i32 %.val537, 1
  br i1 %i.dg, label %bb.bz, label %bb.ca, !prof !13

bb.bz:                                            ; preds = %bb.by
  %i.dh = add nsw i32 %.val537, -1
  store i32 %i.dh, ptr %i.bz, align 8, !tbaa !12
  br label %bb.cd

bb.ca:                                            ; preds = %bb.by
  %.not.i380 = icmp eq i32 %.val537, 0
  br i1 %.not.i380, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bz) #5
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bs, %bb.bu, %bb.bv, %bb.bw
  %i.di = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ci) #5
  store ptr %i.di, ptr %i.ch, align 8, !tbaa !10
  br label %lean_dec.exit376

bb.cd:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  %i.dj = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ci) #5
  %i.dk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !10
  br label %lean_dec.exit376

bb.ce:                                            ; preds = %lean_obj_tag.exit590
  %i.dm = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %bb.cf, label %bb.cg, !prof !13

bb.cf:                                            ; preds = %bb.ce
  %i.do = add nsw i32 %i.dm, -1
  store i32 %i.do, ptr %i.ci, align 4, !tbaa !12
  br label %lean_dec.exit376

bb.cg:                                            ; preds = %bb.ce
  %.not.i382 = icmp eq i32 %i.dm, 0
  br i1 %.not.i382, label %lean_dec.exit376, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #5
  br label %lean_dec.exit376

bb.ci:                                            ; preds = %bb.as
  %.val.i591 = load i32, ptr %i.ax, align 4, !tbaa !12 ; 4 uses
  %i.dp = icmp eq i32 %.val.i591, 1
  br i1 %i.dp, label %.preheader.i593, label %bb.cj

.preheader.i593:                                  ; preds = %bb.ci
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #5
  br label %lean_dec_ref_known.exit595

bb.cj:                                            ; preds = %bb.ci
  %i.dq = icmp sgt i32 %.val.i591, 1
  br i1 %i.dq, label %bb.ck, label %bb.cl, !prof !13

bb.ck:                                            ; preds = %bb.cj
  %i.dr = add nsw i32 %.val.i591, -1
  store i32 %i.dr, ptr %i.ax, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit595

bb.cl:                                            ; preds = %bb.cj
  %.not.i8.i592 = icmp eq i32 %.val.i591, 0
  br i1 %.not.i8.i592, label %lean_dec_ref_known.exit595, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #5
  br label %lean_dec_ref_known.exit595

lean_dec_ref_known.exit595:                       ; preds = %.preheader.i593, %bb.ck, %bb.cl, %bb.cm
  br i1 %.not.i531, label %bb.cn, label %lean_dec.exit368

bb.cn:                                            ; preds = %lean_dec_ref_known.exit595
  %i.ds = load i32, ptr %11, align 4, !tbaa !12   ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.co, label %bb.cp, !prof !13

bb.co:                                            ; preds = %bb.cn
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %11, align 4, !tbaa !12
  br label %lean_dec.exit368

bb.cp:                                            ; preds = %bb.cn
  %.not.i384 = icmp eq i32 %i.ds, 0
  br i1 %.not.i384, label %lean_dec.exit368, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #5
  br label %lean_dec.exit368

lean_dec.exit368:                                 ; preds = %bb.cq, %bb.cp, %bb.co, %lean_dec_ref_known.exit595
  %i.dv = load i32, ptr %10, align 4, !tbaa !12   ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, 1
  br i1 %i.dw, label %bb.cr, label %bb.cs, !prof !13

bb.cr:                                            ; preds = %lean_dec.exit368
  %i.dx = add nsw i32 %i.dv, -1
  store i32 %i.dx, ptr %10, align 4, !tbaa !12
  br label %lean_dec_ref.exit499

bb.cs:                                            ; preds = %lean_dec.exit368
  %.not.i498 = icmp eq i32 %i.dv, 0
  br i1 %.not.i498, label %lean_dec_ref.exit499, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #5
  br label %lean_dec_ref.exit499

lean_dec_ref.exit499:                             ; preds = %bb.cr, %bb.cs, %bb.ct
  br i1 %.not.i529, label %bb.cu, label %lean_dec.exit366

bb.cu:                                            ; preds = %lean_dec_ref.exit499
  %i.dy = load i32, ptr %9, align 4, !tbaa !12    ; 3 uses
  %i.dz = icmp sgt i32 %i.dy, 1
  br i1 %i.dz, label %bb.cv, label %bb.cw, !prof !13

bb.cv:                                            ; preds = %bb.cu
  %i.ea = add nsw i32 %i.dy, -1
  store i32 %i.ea, ptr %9, align 4, !tbaa !12
  br label %lean_dec.exit366

bb.cw:                                            ; preds = %bb.cu
  %.not.i386 = icmp eq i32 %i.dy, 0
  br i1 %.not.i386, label %lean_dec.exit366, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #5
  br label %lean_dec.exit366

lean_dec.exit366:                                 ; preds = %bb.cx, %bb.cw, %bb.cv, %lean_dec_ref.exit499
  %i.eb = load i32, ptr %8, align 4, !tbaa !12    ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 1
  br i1 %i.ec, label %bb.cy, label %bb.cz, !prof !13

bb.cy:                                            ; preds = %lean_dec.exit366
  %i.ed = add nsw i32 %i.eb, -1
  store i32 %i.ed, ptr %8, align 4, !tbaa !12
  br label %lean_dec_ref.exit497

bb.cz:                                            ; preds = %lean_dec.exit366
  %.not.i496 = icmp eq i32 %i.eb, 0
  br i1 %.not.i496, label %lean_dec_ref.exit497, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #5
  br label %lean_dec_ref.exit497

lean_dec_ref.exit497:                             ; preds = %bb.cy, %bb.cz, %bb.da
  br i1 %.not.i527, label %bb.db, label %lean_dec.exit364

bb.db:                                            ; preds = %lean_dec_ref.exit497
  %i.ee = load i32, ptr %7, align 4, !tbaa !12    ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, 1
  br i1 %i.ef, label %bb.dc, label %bb.dd, !prof !13

bb.dc:                                            ; preds = %bb.db
  %i.eg = add nsw i32 %i.ee, -1
  store i32 %i.eg, ptr %7, align 4, !tbaa !12
  br label %lean_dec.exit364

end_hunk_0
begin_hunk_1_@l___private_Lean_Elab_Tactic_Grind_Sym_0__Lean_Elab_Tactic_Grind_mkSimpDefaultMethods___lam__1:bb.a

bb.j:                                             ; preds = %bb.h
  %.not.i.i518 = icmp eq i32 %.val.i.i517, 0
  br i1 %.not.i.i518, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.l

lean_inc.exit510:                                 ; preds = %bb.g
  %i.s = lshr i64 %i.n, 1
  %i.t = trunc i64 %i.s to i32
  br label %lean_obj_tag.exit523

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.u = getelementptr i8, ptr %i.m, i64 4
  %.val.i522 = load i32, ptr %i.u, align 4
  %i.v = lshr i32 %.val.i522, 24
  br label %lean_obj_tag.exit523

lean_obj_tag.exit523:                             ; preds = %lean_inc.exit510, %bb.l
  %.0.i521 = phi i32 [ %i.t, %lean_inc.exit510 ], [ %i.v, %bb.l ]
  %i.w = icmp eq i32 %.0.i521, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  br i1 %i.w, label %bb.m, label %bb.ct

bb.m:                                             ; preds = %lean_obj_tag.exit523
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %bb.bc

bb.n:                                             ; preds = %bb.m
  %.val.i524 = load i32, ptr %i.d, align 8, !tbaa !12 ; 4 uses
  %i.aa = icmp eq i32 %.val.i524, 1
  br i1 %i.aa, label %.preheader.i, label %bb.s

.preheader.i:                                     ; preds = %bb.n
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !10  ; 4 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, 1
  %.not.i.i525 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i525, label %bb.o, label %lean_dec.exit.i

bb.o:                                             ; preds = %.preheader.i
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !12 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.q:                                             ; preds = %bb.o
  %.not.i7.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #5
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.r, %bb.q, %bb.p, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.d) #5
  br label %lean_dec_ref_known.exit

bb.s:                                             ; preds = %bb.n
  %i.ah = icmp sgt i32 %.val.i524, 1
  br i1 %i.ah, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ai = add nsw i32 %.val.i524, -1
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.u:                                             ; preds = %bb.s
  %.not.i8.i = icmp eq i32 %.val.i524, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #5
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.t, %bb.u, %bb.v
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16  ; 2 uses
  %.val.i526 = load i32, ptr %i.m, align 4, !tbaa !12 ; 4 uses
  %i.al = icmp eq i32 %.val.i526, 1
  br i1 %i.al, label %.preheader.i528, label %bb.w

.preheader.i528:                                  ; preds = %lean_dec_ref_known.exit
  tail call void @lean_free_object(ptr noundef nonnull %i.m) #5
  br label %lean_dec_ref_known.exit530

bb.w:                                             ; preds = %lean_dec_ref_known.exit
  %i.am = icmp sgt i32 %.val.i526, 1
  br i1 %i.am, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.an = add nsw i32 %.val.i526, -1
  store i32 %i.an, ptr %i.m, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit530

bb.y:                                             ; preds = %bb.w
  %.not.i8.i527 = icmp eq i32 %.val.i526, 0
  br i1 %.not.i8.i527, label %lean_dec_ref_known.exit530, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #5
  br label %lean_dec_ref_known.exit530

lean_dec_ref_known.exit530:                       ; preds = %.preheader.i528, %bb.x, %bb.y, %bb.z
  %i.ao = tail call ptr @lean_apply_12(ptr noundef %1, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull inttoptr (i64 1 to ptr)) #5 ; 16 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = and i64 %i.ap, 1
  %.not.i531 = icmp eq i64 %i.aq, 0               ; 2 uses
  br i1 %.not.i531, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %lean_dec_ref_known.exit530
  %i.ar = lshr i64 %i.ap, 1
  %i.as = trunc i64 %i.ar to i32
  br label %lean_obj_tag.exit534

bb.ab:                                            ; preds = %lean_dec_ref_known.exit530
  %i.at = getelementptr i8, ptr %i.ao, i64 4
  %.val.i533 = load i32, ptr %i.at, align 4
  %i.au = lshr i32 %.val.i533, 24
  br label %lean_obj_tag.exit534

lean_obj_tag.exit534:                             ; preds = %bb.aa, %bb.ab
  %.0.i532 = phi i32 [ %i.as, %bb.aa ], [ %i.au, %bb.ab ]
  %i.av = icmp eq i32 %.0.i532, 0
  br i1 %i.av, label %bb.ac, label %lean_dec.exit364

bb.ac:                                            ; preds = %lean_obj_tag.exit534
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 15 uses
  %i.ay = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.az = and i64 %i.ay, 1
  %.not.i507 = icmp eq i64 %i.az, 0
  br i1 %.not.i507, label %bb.ad, label %lean_inc.exit508.thread

bb.ad:                                            ; preds = %bb.ac
  %.val.i.i535 = load i32, ptr %i.ax, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %.val.i.i535, 0
  br i1 %i.ba, label %bb.ae, label %bb.af, !prof !13

bb.ae:                                            ; preds = %bb.ad
  %i.bb = add nuw i32 %.val.i.i535, 1
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !12
  br label %lean_inc.exit508

bb.af:                                            ; preds = %bb.ad
  %.not.i.i536 = icmp eq i32 %.val.i.i535, 0
  br i1 %.not.i.i536, label %lean_inc.exit508, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bc = atomicrmw sub ptr %i.ax, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit508

lean_inc.exit508:                                 ; preds = %bb.ag, %bb.af, %bb.ae
  %i.bd = icmp eq i8 %i.ak, 0
  br i1 %i.bd, label %bb.ah, label %lean_obj_tag.exit541

lean_inc.exit508.thread:                          ; preds = %bb.ac
  %i.be = icmp eq i8 %i.ak, 0
  br i1 %i.be, label %lean_dec.exit364, label %lean_obj_tag.exit541.thread

bb.ah:                                            ; preds = %lean_inc.exit508
  %i.bf = load i32, ptr %i.ax, align 4, !tbaa !12 ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %bb.ah
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %i.ax, align 4, !tbaa !12
  br label %lean_dec.exit364

bb.aj:                                            ; preds = %bb.ah
  %.not.i365 = icmp eq i32 %i.bf, 0
  br i1 %.not.i365, label %lean_dec.exit364, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #5
  br label %lean_dec.exit364

lean_obj_tag.exit541:                             ; preds = %lean_inc.exit508
  %i.bi = getelementptr i8, ptr %i.ax, i64 4
  %.val.i540 = load i32, ptr %i.bi, align 4
  %i.bj = icmp ult i32 %.val.i540, 16777216
  %.0299.in.v = select i1 %i.bj, i64 9, i64 25
  %.0299.in = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0299.in.v
  %.0299 = load i8, ptr %.0299.in, align 1, !tbaa !16
  %i.bk = icmp eq i8 %.0299, 0
  br i1 %i.bk, label %bb.al, label %bb.ay

lean_obj_tag.exit541.thread:                      ; preds = %lean_inc.exit508.thread
  %i.bl = and i64 %i.ay, 8589934590
  %i.bm = icmp eq i64 %i.bl, 0
  %.0299.in.v764 = select i1 %i.bm, i64 9, i64 25
  %.0299.in765 = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0299.in.v764
  %.0299766 = load i8, ptr %.0299.in765, align 1, !tbaa !16
  %i.bn = icmp eq i8 %.0299766, 0
  br i1 %i.bn, label %bb.al, label %lean_dec.exit364

bb.al:                                            ; preds = %lean_obj_tag.exit541.thread, %lean_obj_tag.exit541
  %.val515 = load i32, ptr %i.ao, align 8, !tbaa !12 ; 4 uses
  %i.bo = icmp eq i32 %.val515, 1
  br i1 %i.bo, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.bp = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 4 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = and i64 %i.bq, 1
  %.not.i361 = icmp eq i64 %i.br, 0
  br i1 %.not.i361, label %bb.an, label %bb.aw

bb.an:                                            ; preds = %bb.am
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !12 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ao, label %bb.ap, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.bp, align 4, !tbaa !12
  br label %bb.aw

bb.ap:                                            ; preds = %bb.an
  %.not.i366 = icmp eq i32 %i.bs, 0
  br i1 %.not.i366, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bp) #5
  br label %bb.aw

bb.ar:                                            ; preds = %bb.al
  br i1 %.not.i531, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.bv = icmp sgt i32 %.val515, 1
  br i1 %i.bv, label %bb.at, label %bb.au, !prof !13

bb.at:                                            ; preds = %bb.as
  %i.bw = add nsw i32 %.val515, -1
  store i32 %i.bw, ptr %i.ao, align 8, !tbaa !12
  br label %bb.ax

bb.au:                                            ; preds = %bb.as
  %.not.i368 = icmp eq i32 %.val515, 0
  br i1 %.not.i368, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #5
  br label %bb.ax

bb.aw:                                            ; preds = %bb.am, %bb.ao, %bb.ap, %bb.aq
  %i.bx = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ax) #5
  store ptr %i.bx, ptr %i.aw, align 8, !tbaa !10
  br label %lean_dec.exit364

bb.ax:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.ar
  %i.by = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ax) #5
  %i.bz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !10
  br label %lean_dec.exit364

bb.ay:                                            ; preds = %lean_obj_tag.exit541
  %i.cb = load i32, ptr %i.ax, align 4, !tbaa !12 ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %bb.az, label %bb.ba, !prof !13

bb.az:                                            ; preds = %bb.ay
  %i.cd = add nsw i32 %i.cb, -1
  store i32 %i.cd, ptr %i.ax, align 4, !tbaa !12
  br label %lean_dec.exit364

bb.ba:                                            ; preds = %bb.ay
  %.not.i370 = icmp eq i32 %i.cb, 0
  br i1 %.not.i370, label %lean_dec.exit364, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #5
  br label %lean_dec.exit364

bb.bc:                                            ; preds = %bb.m
  %.val.i542 = load i32, ptr %i.m, align 4, !tbaa !12 ; 4 uses
  %i.ce = icmp eq i32 %.val.i542, 1
  br i1 %i.ce, label %.preheader.i544, label %bb.bd

.preheader.i544:                                  ; preds = %bb.bc
  tail call void @lean_free_object(ptr noundef nonnull %i.m) #5
  br label %lean_dec_ref_known.exit546

bb.bd:                                            ; preds = %bb.bc
  %i.cf = icmp sgt i32 %.val.i542, 1
  br i1 %i.cf, label %bb.be, label %bb.bf, !prof !13

bb.be:                                            ; preds = %bb.bd
  %i.cg = add nsw i32 %.val.i542, -1
  store i32 %i.cg, ptr %i.m, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit546

bb.bf:                                            ; preds = %bb.bd
  %.not.i8.i543 = icmp eq i32 %.val.i542, 0
  br i1 %.not.i8.i543, label %lean_dec_ref_known.exit546, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #5
  br label %lean_dec_ref_known.exit546

lean_dec_ref_known.exit546:                       ; preds = %.preheader.i544, %bb.be, %bb.bf, %bb.bg
  %i.ch = ptrtoint ptr %11 to i64
  %i.ci = and i64 %i.ch, 1
  %.not.i355 = icmp eq i64 %i.ci, 0
  br i1 %.not.i355, label %bb.bh, label %lean_dec.exit356

bb.bh:                                            ; preds = %lean_dec_ref_known.exit546
  %i.cj = load i32, ptr %11, align 4, !tbaa !12   ; 3 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %bb.bi, label %bb.bj, !prof !13

bb.bi:                                            ; preds = %bb.bh
  %i.cl = add nsw i32 %i.cj, -1
  store i32 %i.cl, ptr %11, align 4, !tbaa !12
  br label %lean_dec.exit356

bb.bj:                                            ; preds = %bb.bh
  %.not.i372 = icmp eq i32 %i.cj, 0
  br i1 %.not.i372, label %lean_dec.exit356, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #5
  br label %lean_dec.exit356

lean_dec.exit356:                                 ; preds = %bb.bk, %bb.bj, %bb.bi, %lean_dec_ref_known.exit546
  %i.cm = load i32, ptr %10, align 4, !tbaa !12   ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %bb.bl, label %bb.bm, !prof !13

bb.bl:                                            ; preds = %lean_dec.exit356
  %i.co = add nsw i32 %i.cm, -1
  store i32 %i.co, ptr %10, align 4, !tbaa !12
  br label %lean_dec_ref.exit487

bb.bm:                                            ; preds = %lean_dec.exit356
  %.not.i486 = icmp eq i32 %i.cm, 0
  br i1 %.not.i486, label %lean_dec_ref.exit487, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #5
  br label %lean_dec_ref.exit487

lean_dec_ref.exit487:                             ; preds = %bb.bl, %bb.bm, %bb.bn
  %i.cp = ptrtoint ptr %9 to i64
  %i.cq = and i64 %i.cp, 1
  %.not.i353 = icmp eq i64 %i.cq, 0
  br i1 %.not.i353, label %bb.bo, label %lean_dec.exit354

bb.bo:                                            ; preds = %lean_dec_ref.exit487
  %i.cr = load i32, ptr %9, align 4, !tbaa !12    ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.bp, label %bb.bq, !prof !13

bb.bp:                                            ; preds = %bb.bo
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %9, align 4, !tbaa !12
  br label %lean_dec.exit354

bb.bq:                                            ; preds = %bb.bo
  %.not.i374 = icmp eq i32 %i.cr, 0
  br i1 %.not.i374, label %lean_dec.exit354, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #5
  br label %lean_dec.exit354

lean_dec.exit354:                                 ; preds = %bb.br, %bb.bq, %bb.bp, %lean_dec_ref.exit487
  %i.cu = load i32, ptr %8, align 4, !tbaa !12    ; 3 uses
  %i.cv = icmp sgt i32 %i.cu, 1
  br i1 %i.cv, label %bb.bs, label %bb.bt, !prof !13

bb.bs:                                            ; preds = %lean_dec.exit354
  %i.cw = add nsw i32 %i.cu, -1
  store i32 %i.cw, ptr %8, align 4, !tbaa !12
  br label %lean_dec_ref.exit485

bb.bt:                                            ; preds = %lean_dec.exit354
  %.not.i484 = icmp eq i32 %i.cu, 0
  br i1 %.not.i484, label %lean_dec_ref.exit485, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #5
  br label %lean_dec_ref.exit485

lean_dec_ref.exit485:                             ; preds = %bb.bs, %bb.bt, %bb.bu
  %i.cx = ptrtoint ptr %7 to i64
  %i.cy = and i64 %i.cx, 1
  %.not.i351 = icmp eq i64 %i.cy, 0
  br i1 %.not.i351, label %bb.bv, label %lean_dec.exit352

bb.bv:                                            ; preds = %lean_dec_ref.exit485
end_hunk_1
begin_hunk_2_@l___private_Lean_Elab_Tactic_Grind_Sym_0__Lean_Elab_Tactic_Grind_mkSimpDefaultMethods___lam__2:bb.a

bb.j:                                             ; preds = %bb.h
  %.not.i.i520 = icmp eq i32 %.val.i.i519, 0
  br i1 %.not.i.i520, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.l

lean_inc.exit512:                                 ; preds = %bb.g
  %i.s = lshr i64 %i.n, 1
  %i.t = trunc i64 %i.s to i32
  br label %lean_obj_tag.exit525

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.u = getelementptr i8, ptr %i.m, i64 4
  %.val.i524 = load i32, ptr %i.u, align 4
  %i.v = lshr i32 %.val.i524, 24
  br label %lean_obj_tag.exit525

lean_obj_tag.exit525:                             ; preds = %lean_inc.exit512, %bb.l
  %.0.i523 = phi i32 [ %i.t, %lean_inc.exit512 ], [ %i.v, %bb.l ]
  %i.w = icmp eq i32 %.0.i523, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  br i1 %i.w, label %bb.m, label %bb.ct

bb.m:                                             ; preds = %lean_obj_tag.exit525
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %bb.bc

bb.n:                                             ; preds = %bb.m
  %.val.i526 = load i32, ptr %i.d, align 8, !tbaa !12 ; 4 uses
  %i.aa = icmp eq i32 %.val.i526, 1
  br i1 %i.aa, label %.preheader.i, label %bb.s

.preheader.i:                                     ; preds = %bb.n
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !10  ; 4 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, 1
  %.not.i.i527 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i527, label %bb.o, label %lean_dec.exit.i

bb.o:                                             ; preds = %.preheader.i
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !12 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.q:                                             ; preds = %bb.o
  %.not.i7.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ab) #5
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.r, %bb.q, %bb.p, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.d) #5
  br label %lean_dec_ref_known.exit

bb.s:                                             ; preds = %bb.n
  %i.ah = icmp sgt i32 %.val.i526, 1
  br i1 %i.ah, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ai = add nsw i32 %.val.i526, -1
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.u:                                             ; preds = %bb.s
  %.not.i8.i = icmp eq i32 %.val.i526, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #5
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.t, %bb.u, %bb.v
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !16  ; 2 uses
  %.val.i528 = load i32, ptr %i.m, align 4, !tbaa !12 ; 4 uses
  %i.al = icmp eq i32 %.val.i528, 1
  br i1 %i.al, label %.preheader.i530, label %bb.w

.preheader.i530:                                  ; preds = %lean_dec_ref_known.exit
  tail call void @lean_free_object(ptr noundef nonnull %i.m) #5
  br label %lean_dec_ref_known.exit532

bb.w:                                             ; preds = %lean_dec_ref_known.exit
  %i.am = icmp sgt i32 %.val.i528, 1
  br i1 %i.am, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.an = add nsw i32 %.val.i528, -1
  store i32 %i.an, ptr %i.m, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit532

bb.y:                                             ; preds = %bb.w
  %.not.i8.i529 = icmp eq i32 %.val.i528, 0
  br i1 %.not.i8.i529, label %lean_dec_ref_known.exit532, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #5
  br label %lean_dec_ref_known.exit532

lean_dec_ref_known.exit532:                       ; preds = %.preheader.i530, %bb.x, %bb.y, %bb.z
  %i.ao = tail call ptr @lean_apply_12(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull inttoptr (i64 1 to ptr)) #5 ; 16 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.aq = and i64 %i.ap, 1
  %.not.i533 = icmp eq i64 %i.aq, 0               ; 2 uses
  br i1 %.not.i533, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %lean_dec_ref_known.exit532
  %i.ar = lshr i64 %i.ap, 1
  %i.as = trunc i64 %i.ar to i32
  br label %lean_obj_tag.exit536

bb.ab:                                            ; preds = %lean_dec_ref_known.exit532
  %i.at = getelementptr i8, ptr %i.ao, i64 4
  %.val.i535 = load i32, ptr %i.at, align 4
  %i.au = lshr i32 %.val.i535, 24
  br label %lean_obj_tag.exit536

lean_obj_tag.exit536:                             ; preds = %bb.aa, %bb.ab
  %.0.i534 = phi i32 [ %i.as, %bb.aa ], [ %i.au, %bb.ab ]
  %i.av = icmp eq i32 %.0.i534, 0
  br i1 %i.av, label %bb.ac, label %lean_dec.exit366

bb.ac:                                            ; preds = %lean_obj_tag.exit536
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 15 uses
  %i.ay = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.az = and i64 %i.ay, 1
  %.not.i509 = icmp eq i64 %i.az, 0
  br i1 %.not.i509, label %bb.ad, label %lean_inc.exit510.thread

bb.ad:                                            ; preds = %bb.ac
  %.val.i.i537 = load i32, ptr %i.ax, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %.val.i.i537, 0
  br i1 %i.ba, label %bb.ae, label %bb.af, !prof !13

bb.ae:                                            ; preds = %bb.ad
  %i.bb = add nuw i32 %.val.i.i537, 1
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !12
  br label %lean_inc.exit510

bb.af:                                            ; preds = %bb.ad
  %.not.i.i538 = icmp eq i32 %.val.i.i537, 0
  br i1 %.not.i.i538, label %lean_inc.exit510, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bc = atomicrmw sub ptr %i.ax, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit510

lean_inc.exit510:                                 ; preds = %bb.ag, %bb.af, %bb.ae
  %i.bd = icmp eq i8 %i.ak, 0
  br i1 %i.bd, label %bb.ah, label %lean_obj_tag.exit543

lean_inc.exit510.thread:                          ; preds = %bb.ac
  %i.be = icmp eq i8 %i.ak, 0
  br i1 %i.be, label %lean_dec.exit366, label %lean_obj_tag.exit543.thread

bb.ah:                                            ; preds = %lean_inc.exit510
  %i.bf = load i32, ptr %i.ax, align 4, !tbaa !12 ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 1
  br i1 %i.bg, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %bb.ah
  %i.bh = add nsw i32 %i.bf, -1
  store i32 %i.bh, ptr %i.ax, align 4, !tbaa !12
  br label %lean_dec.exit366

bb.aj:                                            ; preds = %bb.ah
  %.not.i367 = icmp eq i32 %i.bf, 0
  br i1 %.not.i367, label %lean_dec.exit366, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #5
  br label %lean_dec.exit366

lean_obj_tag.exit543:                             ; preds = %lean_inc.exit510
  %i.bi = getelementptr i8, ptr %i.ax, i64 4
  %.val.i542 = load i32, ptr %i.bi, align 4
  %i.bj = icmp ult i32 %.val.i542, 16777216
  %.0301.in.v = select i1 %i.bj, i64 9, i64 25
  %.0301.in = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0301.in.v
  %.0301 = load i8, ptr %.0301.in, align 1, !tbaa !16
  %i.bk = icmp eq i8 %.0301, 0
  br i1 %i.bk, label %bb.al, label %bb.ay

lean_obj_tag.exit543.thread:                      ; preds = %lean_inc.exit510.thread
  %i.bl = and i64 %i.ay, 8589934590
  %i.bm = icmp eq i64 %i.bl, 0
  %.0301.in.v766 = select i1 %i.bm, i64 9, i64 25
  %.0301.in767 = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.0301.in.v766
  %.0301768 = load i8, ptr %.0301.in767, align 1, !tbaa !16
  %i.bn = icmp eq i8 %.0301768, 0
  br i1 %i.bn, label %bb.al, label %lean_dec.exit366

bb.al:                                            ; preds = %lean_obj_tag.exit543.thread, %lean_obj_tag.exit543
  %.val517 = load i32, ptr %i.ao, align 8, !tbaa !12 ; 4 uses
  %i.bo = icmp eq i32 %.val517, 1
  br i1 %i.bo, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.bp = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 4 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = and i64 %i.bq, 1
  %.not.i363 = icmp eq i64 %i.br, 0
  br i1 %.not.i363, label %bb.an, label %bb.aw

bb.an:                                            ; preds = %bb.am
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !12 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ao, label %bb.ap, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.bp, align 4, !tbaa !12
  br label %bb.aw

bb.ap:                                            ; preds = %bb.an
  %.not.i368 = icmp eq i32 %i.bs, 0
  br i1 %.not.i368, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bp) #5
  br label %bb.aw

bb.ar:                                            ; preds = %bb.al
  br i1 %.not.i533, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.bv = icmp sgt i32 %.val517, 1
  br i1 %i.bv, label %bb.at, label %bb.au, !prof !13

bb.at:                                            ; preds = %bb.as
  %i.bw = add nsw i32 %.val517, -1
  store i32 %i.bw, ptr %i.ao, align 8, !tbaa !12
  br label %bb.ax

bb.au:                                            ; preds = %bb.as
  %.not.i370 = icmp eq i32 %.val517, 0
  br i1 %.not.i370, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #5
  br label %bb.ax

bb.aw:                                            ; preds = %bb.am, %bb.ao, %bb.ap, %bb.aq
  %i.bx = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ax) #5
  store ptr %i.bx, ptr %i.aw, align 8, !tbaa !10
  br label %lean_dec.exit366

bb.ax:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.ar
  %i.by = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ax) #5
  %i.bz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !10
  br label %lean_dec.exit366

bb.ay:                                            ; preds = %lean_obj_tag.exit543
  %i.cb = load i32, ptr %i.ax, align 4, !tbaa !12 ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %bb.az, label %bb.ba, !prof !13

bb.az:                                            ; preds = %bb.ay
  %i.cd = add nsw i32 %i.cb, -1
  store i32 %i.cd, ptr %i.ax, align 4, !tbaa !12
  br label %lean_dec.exit366

bb.ba:                                            ; preds = %bb.ay
  %.not.i372 = icmp eq i32 %i.cb, 0
  br i1 %.not.i372, label %lean_dec.exit366, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #5
  br label %lean_dec.exit366

bb.bc:                                            ; preds = %bb.m
  %.val.i544 = load i32, ptr %i.m, align 4, !tbaa !12 ; 4 uses
  %i.ce = icmp eq i32 %.val.i544, 1
  br i1 %i.ce, label %.preheader.i546, label %bb.bd

.preheader.i546:                                  ; preds = %bb.bc
  tail call void @lean_free_object(ptr noundef nonnull %i.m) #5
  br label %lean_dec_ref_known.exit548

bb.bd:                                            ; preds = %bb.bc
  %i.cf = icmp sgt i32 %.val.i544, 1
  br i1 %i.cf, label %bb.be, label %bb.bf, !prof !13

bb.be:                                            ; preds = %bb.bd
  %i.cg = add nsw i32 %.val.i544, -1
  store i32 %i.cg, ptr %i.m, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit548

bb.bf:                                            ; preds = %bb.bd
  %.not.i8.i545 = icmp eq i32 %.val.i544, 0
  br i1 %.not.i8.i545, label %lean_dec_ref_known.exit548, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #5
  br label %lean_dec_ref_known.exit548

lean_dec_ref_known.exit548:                       ; preds = %.preheader.i546, %bb.be, %bb.bf, %bb.bg
  %i.ch = ptrtoint ptr %10 to i64
  %i.ci = and i64 %i.ch, 1
  %.not.i357 = icmp eq i64 %i.ci, 0
  br i1 %.not.i357, label %bb.bh, label %lean_dec.exit358

bb.bh:                                            ; preds = %lean_dec_ref_known.exit548
  %i.cj = load i32, ptr %10, align 4, !tbaa !12   ; 3 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %bb.bi, label %bb.bj, !prof !13

bb.bi:                                            ; preds = %bb.bh
  %i.cl = add nsw i32 %i.cj, -1
  store i32 %i.cl, ptr %10, align 4, !tbaa !12
  br label %lean_dec.exit358

bb.bj:                                            ; preds = %bb.bh
  %.not.i374 = icmp eq i32 %i.cj, 0
  br i1 %.not.i374, label %lean_dec.exit358, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #5
  br label %lean_dec.exit358

lean_dec.exit358:                                 ; preds = %bb.bk, %bb.bj, %bb.bi, %lean_dec_ref_known.exit548
  %i.cm = load i32, ptr %9, align 4, !tbaa !12    ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %bb.bl, label %bb.bm, !prof !13

bb.bl:                                            ; preds = %lean_dec.exit358
  %i.co = add nsw i32 %i.cm, -1
  store i32 %i.co, ptr %9, align 4, !tbaa !12
  br label %lean_dec_ref.exit489

bb.bm:                                            ; preds = %lean_dec.exit358
  %.not.i488 = icmp eq i32 %i.cm, 0
  br i1 %.not.i488, label %lean_dec_ref.exit489, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #5
  br label %lean_dec_ref.exit489

lean_dec_ref.exit489:                             ; preds = %bb.bl, %bb.bm, %bb.bn
  %i.cp = ptrtoint ptr %8 to i64
  %i.cq = and i64 %i.cp, 1
  %.not.i355 = icmp eq i64 %i.cq, 0
  br i1 %.not.i355, label %bb.bo, label %lean_dec.exit356

bb.bo:                                            ; preds = %lean_dec_ref.exit489
  %i.cr = load i32, ptr %8, align 4, !tbaa !12    ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.bp, label %bb.bq, !prof !13

bb.bp:                                            ; preds = %bb.bo
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %8, align 4, !tbaa !12
  br label %lean_dec.exit356

bb.bq:                                            ; preds = %bb.bo
  %.not.i376 = icmp eq i32 %i.cr, 0
  br i1 %.not.i376, label %lean_dec.exit356, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #5
  br label %lean_dec.exit356

lean_dec.exit356:                                 ; preds = %bb.br, %bb.bq, %bb.bp, %lean_dec_ref.exit489
  %i.cu = load i32, ptr %7, align 4, !tbaa !12    ; 3 uses
  %i.cv = icmp sgt i32 %i.cu, 1
  br i1 %i.cv, label %bb.bs, label %bb.bt, !prof !13

bb.bs:                                            ; preds = %lean_dec.exit356
  %i.cw = add nsw i32 %i.cu, -1
  store i32 %i.cw, ptr %7, align 4, !tbaa !12
  br label %lean_dec_ref.exit487

bb.bt:                                            ; preds = %lean_dec.exit356
  %.not.i486 = icmp eq i32 %i.cu, 0
  br i1 %.not.i486, label %lean_dec_ref.exit487, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #5
  br label %lean_dec_ref.exit487

lean_dec_ref.exit487:                             ; preds = %bb.bs, %bb.bt, %bb.bu
  %i.cx = ptrtoint ptr %6 to i64
  %i.cy = and i64 %i.cx, 1
  %.not.i353 = icmp eq i64 %i.cy, 0
  br i1 %.not.i353, label %bb.bv, label %lean_dec.exit354

bb.bv:                                            ; preds = %lean_dec_ref.exit487
end_hunk_2
begin_hunk_3_@l_Std_DHashMap_Internal_AssocList_get_x3f___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00__private_Lean_Elab_Tactic_Grind_Sym_0__Lean_Elab_Tactic_Grind_evalSymSimp_spec__2_spec__5___redArg___boxed:bb.a

bb.q:                                             ; preds = %lean_dec.exit
  %.not.i6 = icmp eq i32 %i.ad, 0
  br i1 %.not.i6, label %lean_dec_ref.exit7, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit7

lean_dec_ref.exit7:                               ; preds = %bb.p, %bb.q, %bb.r
  ret ptr %.2.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00__private_Lean_Elab_Tactic_Grind_Sym_0__Lean_Elab_Tactic_Grind_evalSymSimp_spec__2___redArg(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val = load i64, ptr %i.c, align 8, !tbaa !15
  %i.d = and i64 %.val, 9223372036854775807
  %i.e = tail call i64 @l_Lean_Elab_Tactic_Grind_instHashableSimpCacheKey_hash(ptr noundef %1) #5 ; 2 uses
  %i.f = lshr i64 %i.e, 32
  %i.g = xor i64 %i.f, %i.e                       ; 2 uses
  %i.h = lshr i64 %i.g, 16
  %i.i = xor i64 %i.h, %i.g
  %i.j = add nsw i64 %i.d, -1
  %i.k = and i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.015.i = phi ptr [ %i.n, %bb.a ], [ %i.aa, %bb.e ] ; 5 uses
  %i.o = ptrtoint ptr %.015.i to i64              ; 2 uses
  %i.p = and i64 %i.o, 1
  %.not.i17.i = icmp eq i64 %i.p, 0
  br i1 %.not.i17.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = lshr i64 %i.o, 1
  %i.r = trunc i64 %i.q to i32
  br label %lean_obj_tag.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %.015.i, i64 4
  %.val.i.i = load i32, ptr %i.s, align 4
  %i.t = lshr i32 %.val.i.i, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.r, %bb.c ], [ %i.t, %bb.d ]
  %i.u = icmp eq i32 %.0.i.i, 0
  br i1 %i.u, label %l_Std_DHashMap_Internal_AssocList_get_x3f___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00__private_Lean_Elab_Tactic_Grind_Sym_0__Lean_Elab_Tactic_Grind_evalSymSimp_spec__2_spec__5___redArg.exit, label %bb.e

bb.e:                                             ; preds = %lean_obj_tag.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !10   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.015.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !10
  %i.ab = tail call zeroext i8 @l_Lean_Elab_Tactic_Grind_instBEqSimpCacheKey_beq(ptr noundef %i.w, ptr noundef %1) #5
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %bb.g, label %lean_inc.exit.i

bb.g:                                             ; preds = %bb.f
  %.val.i.i.i = load i32, ptr %i.y, align 4, !tbaa !12 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.af, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.ag = add nuw i32 %.val.i.i.i, 1
  store i32 %i.ag, ptr %i.y, align 4, !tbaa !12
  br label %lean_inc.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = atomicrmw sub ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  tail call void @lean_inc_heartbeat() #5
  %i.ai = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %lean_inc.exit.i
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

.thread.i:                                        ; preds = %lean_inc.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !12
  store i32 16842768, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.y, ptr %i.al, align 8, !tbaa !10
  br label %l_Std_DHashMap_Internal_AssocList_get_x3f___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00__private_Lean_Elab_Tactic_Grind_Sym_0__Lean_Elab_Tactic_Grind_evalSymSimp_spec__2_spec__5___redArg.exit

l_Std_DHashMap_Internal_AssocList_get_x3f___at___00Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00__private_Lean_Elab_Tactic_Grind_Sym_0__Lean_Elab_Tactic_Grind_evalSymSimp_spec__2_spec__5___redArg.exit: ; preds = %lean_obj_tag.exit.i, %.thread.i
  %.2.i = phi ptr [ %i.ai, %.thread.i ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i ]
  ret ptr %.2.i
}

declare i64 @l_Lean_Elab_Tactic_Grind_instHashableSimpCacheKey_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00__private_Lean_Elab_Tactic_Grind_Sym_0__Lean_Elab_Tactic_Grind_evalSymSimp_spec__2___redArg___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Std_DHashMap_Internal_Raw_u2080_Const_get_x3f___at___00__private_Lean_Elab_Tactic_Grind_Sym_0__Lean_Elab_Tactic_Grind_evalSymSimp_spec__2___redArg(ptr noundef %0, ptr noundef %1)
  %i.b = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit6

bb.c:                                             ; preds = %bb.a
  %.not.i5 = icmp eq i32 %i.b, 0
  br i1 %.not.i5, label %lean_dec_ref.exit6, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit6

lean_dec_ref.exit6:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.e = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec_ref.exit6
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.f:                                             ; preds = %lean_dec_ref.exit6
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Elab_Tactic_Grind_Sym_0__Lean_Elab_Tactic_Grind_evalSymSimp_spec__4(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not122 = icmp eq i64 %3, %4
  br i1 %.not122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = zext i8 %1 to i64
  %i.c = shl nuw nsw i64 %i.b, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = zext i8 %0 to i64
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = or disjoint i64 %i.g, 1
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ao
  %.070124 = phi i64 [ %3, %.lr.ph ], [ %i.bj, %bb.ao ] ; 2 uses
  %.072123 = phi ptr [ %5, %.lr.ph ], [ %.4, %bb.ao ] ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.072123, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10   ; 7 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.m = and i64 %i.l, 510
  %i.n = icmp eq i64 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %.072123, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10   ; 10 uses
  %.072.val105 = load i32, ptr %.072123, align 8, !tbaa !12
  %i.q = icmp eq i32 %.072.val105, 1              ; 3 uses
  br i1 %i.n, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.r = and i64 %i.l, 1
  %.not.i91 = icmp eq i64 %i.r, 0
  br i1 %.not.i91, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.k, align 4, !tbaa !12   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.k, align 4, !tbaa !12
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %.not.i93 = icmp eq i32 %i.s, 0
  br i1 %.not.i93, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #5
  br label %bb.q

bb.i:                                             ; preds = %bb.c
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = and i64 %i.v, 1
  %.not.i103 = icmp eq i64 %i.w, 0
  br i1 %.not.i103, label %bb.j, label %lean_inc.exit104

bb.j:                                             ; preds = %bb.i
  %.val.i.i = load i32, ptr %i.p, align 4, !tbaa !12 ; 3 uses
  %i.x = icmp sgt i32 %.val.i.i, 0
  br i1 %i.x, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.y = add nuw i32 %.val.i.i, 1
  store i32 %i.y, ptr %i.p, align 4, !tbaa !12
  br label %lean_inc.exit104

bb.l:                                             ; preds = %bb.j
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit104, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = atomicrmw sub ptr %i.p, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit104

lean_inc.exit104:                                 ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  %i.aa = load i32, ptr %.072123, align 8, !tbaa !12 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %lean_inc.exit104
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %.072123, align 8, !tbaa !12
  br label %bb.r

bb.o:                                             ; preds = %lean_inc.exit104
  %.not.i94 = icmp eq i32 %i.aa, 0
  br i1 %.not.i94, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.072123) #5
  br label %bb.r

bb.q:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store ptr %i.i, ptr %i.j, align 8, !tbaa !10
  br label %bb.ao

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n
  tail call void @lean_inc_heartbeat() #5
  %i.ad = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.s, label %lean_alloc_ctor.exit

bb.s:                                             ; preds = %bb.r
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.r
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 1, ptr %i.ad, align 4, !tbaa !12
  store i32 131096, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.i, ptr %i.ag, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.p, ptr %i.ah, align 8, !tbaa !10
  br label %bb.ao

bb.t:                                             ; preds = %bb.b
  br i1 %i.q, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ai = and i64 %i.l, 1
  %.not.i87 = icmp eq i64 %i.ai, 0
  br i1 %.not.i87, label %bb.v, label %lean_dec.exit88

bb.v:                                             ; preds = %bb.u
  %i.aj = load i32, ptr %i.k, align 4, !tbaa !12  ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %i.k, align 4, !tbaa !12
  br label %lean_dec.exit88

bb.x:                                             ; preds = %bb.v
  %.not.i96 = icmp eq i32 %i.aj, 0
  br i1 %.not.i96, label %lean_dec.exit88, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #5
  br label %lean_dec.exit88

bb.z:                                             ; preds = %bb.t
  %i.am = ptrtoint ptr %i.p to i64
  %i.an = and i64 %i.am, 1
  %.not.i101 = icmp eq i64 %i.an, 0
  br i1 %.not.i101, label %bb.aa, label %lean_inc.exit102

bb.aa:                                            ; preds = %bb.z
  %.val.i.i106 = load i32, ptr %i.p, align 4, !tbaa !12 ; 3 uses
  %i.ao = icmp sgt i32 %.val.i.i106, 0
  br i1 %i.ao, label %bb.ab, label %bb.ac, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.ap = add nuw i32 %.val.i.i106, 1
  store i32 %i.ap, ptr %i.p, align 4, !tbaa !12
  br label %lean_inc.exit102

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i107 = icmp eq i32 %.val.i.i106, 0
  br i1 %.not.i.i107, label %lean_inc.exit102, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aq = atomicrmw sub ptr %i.p, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit102

lean_inc.exit102:                                 ; preds = %bb.z, %bb.ab, %bb.ac, %bb.ad
  %i.ar = load i32, ptr %.072123, align 8, !tbaa !12 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.ae, label %bb.af, !prof !13

bb.ae:                                            ; preds = %lean_inc.exit102
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %.072123, align 8, !tbaa !12
  br label %lean_dec.exit88

bb.af:                                            ; preds = %lean_inc.exit102
  %.not.i98 = icmp eq i32 %i.ar, 0
  br i1 %.not.i98, label %lean_dec.exit88, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.072123) #5
  br label %lean_dec.exit88

lean_dec.exit88:                                  ; preds = %bb.ae, %bb.af, %bb.ag, %bb.u, %bb.w, %bb.x, %bb.y
  %.078 = phi ptr [ %.072123, %bb.u ], [ %.072123, %bb.y ], [ %.072123, %bb.x ], [ %.072123, %bb.w ], [ inttoptr (i64 1 to ptr), %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.af ], [ inttoptr (i64 1 to ptr), %bb.ae ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.070124
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !10 ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aw, 1
  %.not.i100 = icmp eq i64 %i.ax, 0
  br i1 %.not.i100, label %bb.ah, label %lean_inc.exit

bb.ah:                                            ; preds = %lean_dec.exit88
  %.val.i.i109 = load i32, ptr %i.av, align 4, !tbaa !12 ; 3 uses
  %i.ay = icmp sgt i32 %.val.i.i109, 0
  br i1 %i.ay, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %bb.ah
  %i.az = add nuw i32 %.val.i.i109, 1
  store i32 %i.az, ptr %i.av, align 4, !tbaa !12
  br label %lean_inc.exit

bb.aj:                                            ; preds = %bb.ah
  %.not.i.i110 = icmp eq i32 %.val.i.i109, 0
  br i1 %.not.i.i110, label %lean_inc.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ba = atomicrmw sub ptr %i.av, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ak, %bb.aj, %bb.ai, %lean_dec.exit88
  %i.bb = tail call ptr @lean_array_push(ptr noundef %i.p, ptr noundef %i.av) #5 ; 2 uses
  br i1 %i.q, label %bb.al, label %bb.am

bb.al:                                            ; preds = %lean_inc.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %.078, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.078, i64 16
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !10
  store ptr %i.e, ptr %i.bc, align 8, !tbaa !10
  br label %bb.ao

bb.am:                                            ; preds = %lean_inc.exit
  tail call void @lean_inc_heartbeat() #5
  %i.be = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.an, label %lean_alloc_ctor.exit112

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit112:                          ; preds = %bb.am
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 1, ptr %i.be, align 4, !tbaa !12
  store i32 131096, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.e, ptr %i.bh, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bb, ptr %i.bi, align 8, !tbaa !10
end_hunk_3
