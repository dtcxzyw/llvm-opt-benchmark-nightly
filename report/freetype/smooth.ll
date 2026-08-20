inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@gray_cubic_to:bb.a
  %i.k = load <2 x i64>, ptr %0, align 8, !tbaa !54
  %i.l = shl nsw <2 x i64> %i.k, splat (i64 2)    ; 2 uses
  store <2 x i64> %i.l, ptr %i.j, align 16, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !132  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.n, ptr %i.o, align 16, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !133  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %i.q, ptr %i.r, align 8, !tbaa !68
  %i.s = lshr i64 %i.d, 8
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !106  ; 4 uses
  %.not.i = icmp sgt i32 %i.v, %i.t
  %i.w = lshr i64 %i.h, 8
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %.not88.i = icmp sgt i32 %i.v, %i.x
  %or.cond10.i = select i1 %.not.i, i1 true, i1 %.not88.i
  %i.y = extractelement <2 x i64> %i.l, i64 1
  %.pre30.i = lshr i64 %i.y, 8
  %.pre31.i = trunc i64 %.pre30.i to i32          ; 2 uses
  br i1 %or.cond10.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.pre33.i = lshr i64 %i.q, 8
  %.pre35.i = trunc i64 %.pre33.i to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not89.i = icmp sgt i32 %i.v, %.pre31.i
  %i.z = lshr i64 %i.q, 8
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %.not90.i = icmp sgt i32 %i.v, %i.aa
  %or.cond.i = select i1 %.not89.i, i1 true, i1 %.not90.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %.pre-phi36.i = phi i32 [ %.pre35.i, %._crit_edge.i ], [ %i.aa, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !105 ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, %i.t
  %i.ae = icmp sgt i32 %i.ac, %i.x
  %or.cond13.i = select i1 %i.ad, i1 %i.ae, i1 false
  %i.af = icmp sgt i32 %i.ac, %.pre31.i
  %or.cond16.i = select i1 %or.cond13.i, i1 %i.af, i1 false
  %i.ag = icmp sgt i32 %i.ac, %.pre-phi36.i
  %or.cond19.i = select i1 %or.cond16.i, i1 %i.ag, i1 false
  br i1 %or.cond19.i, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.c, ptr %i.m, align 8, !tbaa !132
  store i64 %i.d, ptr %i.p, align 8, !tbaa !133
  br label %gray_render_cubic.exit

.preheader.i:                                     ; preds = %bb.c, %.backedge.i
  %i.ah = phi i64 [ %.pre22.i, %.backedge.i ], [ %i.n, %bb.c ] ; 4 uses
  %i.ai = phi i64 [ %.pre20.i, %.backedge.i ], [ %i.f, %bb.c ] ; 3 uses
  %i.aj = phi i64 [ %.pre.i, %.backedge.i ], [ %i.c, %bb.c ] ; 4 uses
  %.0.i = phi ptr [ %.0.be.i, %.backedge.i ], [ %4, %bb.c ] ; 22 uses
  %i.ak = shl nsw i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.neg.i = mul i64 %i.ai, -3
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.an = add i64 %i.ah, -129
  %i.ao = add i64 %i.an, %.neg.i
  %i.ap = add i64 %i.ao, %i.ak
  %i.aq = icmp ult i64 %i.ap, -257
  br i1 %i.aq, label %.preheader._crit_edge.i, label %bb.e

.preheader._crit_edge.i:                          ; preds = %.preheader.i
  %.phi.trans.insert23.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %.pre24.i = load i64, ptr %.phi.trans.insert23.i, align 8, !tbaa !68
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %.pre26.i = load i64, ptr %.phi.trans.insert25.i, align 8, !tbaa !68
  %.phi.trans.insert27.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %.pre28.i = load i64, ptr %.phi.trans.insert27.i, align 8, !tbaa !68
  br label %bb.j

bb.e:                                             ; preds = %.preheader.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !68 ; 6 uses
  %i.at = shl nsw i64 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !68 ; 4 uses
  %.neg91.i = mul i64 %i.av, -3
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !68 ; 5 uses
  %i.ay = add i64 %i.at, -129
  %i.az = add i64 %i.ay, %.neg91.i
  %i.ba = add i64 %i.az, %i.ax
  %i.bb = icmp ult i64 %i.ba, -257
  br i1 %i.bb, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !66
  %.neg92.i = mul i64 %i.bd, -3
  %i.be = shl nsw i64 %i.ah, 1
  %i.bf = add i64 %i.be, -129
  %i.bg = add i64 %i.bf, %i.aj
  %i.bh = add i64 %i.bg, %.neg92.i
  %i.bi = icmp ult i64 %i.bh, -257
  br i1 %i.bi, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !68
  %.neg93.i = mul i64 %i.bk, -3
  %i.bl = shl nsw i64 %i.ax, 1
  %i.bm = add i64 %i.as, -129
  %i.bn = add i64 %i.bm, %i.bl
  %i.bo = add i64 %i.bn, %.neg93.i
  %i.bp = icmp ult i64 %i.bo, -257
  br i1 %i.bp, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @gray_render_line(ptr noundef %3, i64 noundef %i.aj, i64 noundef %i.as)
  %i.bq = icmp eq ptr %.0.i, %4
  br i1 %i.bq, label %gray_render_cubic.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds i8, ptr %.0.i, i64 -48 ; 2 uses
  %.pre.pre.i = load i64, ptr %i.br, align 8, !tbaa !66
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.j, %bb.i
  %.pre.i = phi i64 [ %.pre.pre.i, %bb.i ], [ %i.ck, %bb.j ]
  %.0.be.i = phi ptr [ %i.br, %bb.i ], [ %i.am, %bb.j ] ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.be.i, i64 16
  %.pre20.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !66
  %.phi.trans.insert21.i = getelementptr inbounds nuw i8, ptr %.0.be.i, i64 48
  %.pre22.i = load i64, ptr %.phi.trans.insert21.i, align 8, !tbaa !66
  br label %.preheader.i

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e, %.preheader._crit_edge.i
  %i.bs = phi i64 [ %.pre28.i, %.preheader._crit_edge.i ], [ %i.av, %bb.e ], [ %i.av, %bb.f ], [ %i.av, %bb.g ] ; 2 uses
  %i.bt = phi i64 [ %.pre26.i, %.preheader._crit_edge.i ], [ %i.as, %bb.e ], [ %i.as, %bb.f ], [ %i.as, %bb.g ]
  %i.bu = phi i64 [ %.pre24.i, %.preheader._crit_edge.i ], [ %i.ax, %bb.e ], [ %i.ax, %bb.f ], [ %i.ax, %bb.g ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  store i64 %i.ah, ptr %i.bv, align 8, !tbaa !66
  %i.bw = add nsw i64 %i.aj, %i.ai                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !66 ; 2 uses
  %i.bz = add nsw i64 %i.by, %i.ai                ; 2 uses
  %i.ca = add nsw i64 %i.by, %i.ah                ; 2 uses
  %i.cb = ashr i64 %i.ca, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !66
  %i.cd = add nsw i64 %i.ca, %i.bz                ; 2 uses
  %i.ce = ashr i64 %i.cd, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !66
  %i.cg = ashr i64 %i.bw, 1
  store i64 %i.cg, ptr %i.al, align 8, !tbaa !66
  %i.ch = add nsw i64 %i.bz, %i.bw                ; 2 uses
  %i.ci = ashr i64 %i.ch, 2
  store i64 %i.ci, ptr %i.bx, align 8, !tbaa !66
  %i.cj = add nsw i64 %i.ch, %i.cd
  %i.ck = ashr i64 %i.cj, 3                       ; 2 uses
  store i64 %i.ck, ptr %i.am, align 8, !tbaa !66
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 104
  store i64 %i.bu, ptr %i.cm, align 8, !tbaa !68
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.co = add nsw i64 %i.bt, %i.bs                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !68 ; 2 uses
  %i.cr = add nsw i64 %i.cq, %i.bs                ; 2 uses
  %i.cs = add nsw i64 %i.cq, %i.bu                ; 2 uses
  %i.ct = ashr i64 %i.cs, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !68
  %i.cv = add nsw i64 %i.cs, %i.cr                ; 2 uses
  %i.cw = ashr i64 %i.cv, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !68
  %i.cy = ashr i64 %i.co, 1
  store i64 %i.cy, ptr %i.cn, align 8, !tbaa !68
  %i.cz = add nsw i64 %i.cr, %i.co                ; 2 uses
  %i.da = ashr i64 %i.cz, 2
  store i64 %i.da, ptr %i.cp, align 8, !tbaa !68
  %i.db = add nsw i64 %i.cz, %i.cv
  %i.dc = ashr i64 %i.db, 3
  store i64 %i.dc, ptr %i.cl, align 8, !tbaa !68
  br label %.backedge.i

gray_render_cubic.exit:                           ; preds = %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !118
  ret i32 %i.de
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @gray_render_line(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !133  ; 5 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %i.d = trunc i64 %i.c to i32                    ; 4 uses
  %i.e = lshr i64 %2, 8
  %i.f = trunc i64 %i.e to i32                    ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !106  ; 2 uses
  %.not = icmp sgt i32 %i.h, %i.d
  %.not185 = icmp sgt i32 %i.h, %i.f
  %or.cond191 = or i1 %.not185, %.not
  br i1 %or.cond191, label %bb.b, label %bb.ay

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !105  ; 6 uses
  %i.k = icmp sgt i32 %i.j, %i.d
  %i.l = icmp sgt i32 %i.j, %i.f
  %or.cond192 = and i1 %i.k, %i.l
  br i1 %or.cond192, label %bb.ay, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i64, ptr %i.m, align 8, !tbaa !132  ; 5 uses
  %i.o = lshr i64 %i.n, 8
  %i.p = trunc i64 %i.o to i32                    ; 8 uses
  %i.q = lshr i64 %1, 8
  %i.r = trunc i64 %i.q to i32                    ; 5 uses
  %i.s = trunc i64 %i.n to i32
  %i.t = and i32 %i.s, 255                        ; 6 uses
  %i.u = trunc i64 %i.b to i32
  %i.v = and i32 %i.u, 255                        ; 4 uses
  %i.w = sub nsw i64 %1, %i.n                     ; 3 uses
  %i.x = sub nsw i64 %2, %i.b                     ; 4 uses
  %i.y = icmp eq i32 %i.p, %i.r                   ; 2 uses
  %i.z = icmp eq i32 %i.d, %i.f                   ; 2 uses
  %or.cond193 = and i1 %i.z, %i.y
  br i1 %or.cond193, label %..loopexit_crit_edge, label %bb.d

..loopexit_crit_edge:                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre251 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !117
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.b
  br i1 %i.aa, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.ab = sub nsw i32 %i.f, %i.j                  ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !107
  %.not.i = icmp slt i32 %i.ab, %i.ae
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !109
  %.not44.i = icmp sgt i32 %i.ag, %i.r
  br i1 %.not44.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !98
  br label %gray_set_cell.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !104
  %i.al = zext nneg i32 %i.ab to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !108 ; 2 uses
  %.not45.i = icmp sgt i32 %i.ao, %i.r
  %i.ap = add nsw i32 %i.ao, -1
  %i.aq = select i1 %.not45.i, i32 %i.ap, i32 %i.r ; 4 uses
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !110 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !99 ; 2 uses
  %i.at = icmp sgt i32 %i.as, %i.aq
  br i1 %i.at, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %i.au = phi i32 [ %i.az, %bb.j ], [ %i.as, %bb.i ]
  %i.av = phi ptr [ %i.ay, %bb.j ], [ %i.ar, %bb.i ] ; 3 uses
  %i.aw = icmp eq i32 %i.au, %i.aq
  br i1 %i.aw, label %gray_set_cell.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !99 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, %i.aq
  br i1 %i.ba, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.i
  %.036.lcssa.i = phi ptr [ %i.am, %bb.i ], [ %i.bb, %._crit_edge.i.loopexit ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !116 ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !98
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 98, ptr %i.bh, align 4, !tbaa !118
  br label %gray_set_cell.exit

bb.l:                                             ; preds = %._crit_edge.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.bi, ptr %i.bc, align 8, !tbaa !116
  store i32 %i.aq, ptr %i.bd, align 8, !tbaa !99
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 0, ptr %i.bj, align 8, !tbaa !101
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 0, ptr %i.bk, align 4, !tbaa !102
  %i.bl = load ptr, ptr %.036.lcssa.i, align 8, !tbaa !110
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !103
  store ptr %i.bd, ptr %.036.lcssa.i, align 8, !tbaa !110
  br label %gray_set_cell.exit

gray_set_cell.exit:                               ; preds = %.lr.ph.i, %bb.h, %bb.k, %bb.l
  %.0.sink.i = phi ptr [ %i.ai, %bb.h ], [ %i.bd, %bb.k ], [ %i.bd, %bb.l ], [ %i.av, %.lr.ph.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.sink.i, ptr %i.bn, align 8, !tbaa !117
  br label %bb.ay

bb.m:                                             ; preds = %bb.d
  %i.bo = icmp eq i64 %1, %i.n
  br i1 %i.bo, label %bb.n, label %bb.ae

bb.n:                                             ; preds = %bb.m
  %i.bp = icmp sgt i64 %i.x, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  br i1 %i.bp, label %.preheader, label %.preheader223

.preheader223:                                    ; preds = %bb.n
  %.neg = mul nsw i32 %i.t, -2
  %3 = and i64 %i.c, 4294967295
  %.pre = load ptr, ptr %i.bq, align 8, !tbaa !117
  br label %bb.w

.preheader:                                       ; preds = %bb.n
  %i.by = shl nuw nsw i32 %i.t, 1
  %i.bz = sub nuw nsw i32 256, %i.v
  %4 = and i64 %i.c, 4294967295
  %.pre250 = load ptr, ptr %i.bq, align 8, !tbaa !117
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %gray_set_cell.exit204
  %i.ca = phi ptr [ %.pre250, %.preheader ], [ %.0.sink.i197, %gray_set_cell.exit204 ] ; 2 uses
  %indvars.iv251 = phi i64 [ %4, %.preheader ], [ %indvars.iv.next252, %gray_set_cell.exit204 ]
  %.0168 = phi i32 [ %i.bz, %.preheader ], [ 256, %gray_set_cell.exit204 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !102
  %i.cd = add i32 %i.cc, %.0168
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !102
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !101
  %i.cg = mul nuw nsw i32 %i.by, %.0168
  %i.ch = add i32 %i.cf, %i.cg
  store i32 %i.ch, ptr %i.ce, align 8, !tbaa !101
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 2 uses
  %indvars253 = trunc i64 %indvars.iv.next252 to i32 ; 2 uses
  %i.ci = sub nsw i32 %indvars253, %i.j           ; 3 uses
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = load i32, ptr %i.br, align 8, !tbaa !107
  %.not.i196 = icmp slt i32 %i.ci, %i.ck
  br i1 %.not.i196, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cl = load i32, ptr %i.bs, align 4, !tbaa !109
  %.not44.i198 = icmp sgt i32 %i.cl, %i.p
  br i1 %.not44.i198, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !98
  br label %gray_set_cell.exit204

bb.s:                                             ; preds = %bb.q
  %i.cn = load ptr, ptr %i.bt, align 8, !tbaa !104
  %i.co = zext nneg i32 %i.ci to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.bu, align 8, !tbaa !108 ; 2 uses
  %.not45.i199 = icmp sgt i32 %i.cq, %i.p
  %i.cr = add nsw i32 %i.cq, -1
  %i.cs = select i1 %.not45.i199, i32 %i.cr, i32 %i.p ; 4 uses
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !110 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !99 ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, %i.cs
  br i1 %i.cv, label %._crit_edge.i202, label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %bb.s, %bb.t
  %i.cw = phi i32 [ %i.db, %bb.t ], [ %i.cu, %bb.s ]
  %i.cx = phi ptr [ %i.da, %bb.t ], [ %i.ct, %bb.s ] ; 3 uses
  %i.cy = icmp eq i32 %i.cw, %i.cs
  br i1 %i.cy, label %gray_set_cell.exit204, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i200
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !110 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !99 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, %i.cs
  br i1 %i.dc, label %._crit_edge.i202.loopexit, label %.lr.ph.i200

._crit_edge.i202.loopexit:                        ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  br label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %._crit_edge.i202.loopexit, %bb.s
  %.036.lcssa.i203 = phi ptr [ %i.cp, %bb.s ], [ %i.dd, %._crit_edge.i202.loopexit ] ; 2 uses
  %i.de = load ptr, ptr %i.bv, align 8, !tbaa !116 ; 9 uses
  %i.df = load ptr, ptr %i.bw, align 8, !tbaa !98
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i202
  store i32 98, ptr %i.bx, align 4, !tbaa !118
  br label %gray_set_cell.exit204

bb.v:                                             ; preds = %._crit_edge.i202
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store ptr %i.dh, ptr %i.bv, align 8, !tbaa !116
  store i32 %i.cs, ptr %i.de, align 8, !tbaa !99
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 0, ptr %i.di, align 8, !tbaa !101
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 0, ptr %i.dj, align 4, !tbaa !102
  %i.dk = load ptr, ptr %.036.lcssa.i203, align 8, !tbaa !110
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !103
  store ptr %i.de, ptr %.036.lcssa.i203, align 8, !tbaa !110
  br label %gray_set_cell.exit204

gray_set_cell.exit204:                            ; preds = %.lr.ph.i200, %bb.r, %bb.u, %bb.v
  %.0.sink.i197 = phi ptr [ %i.cm, %bb.r ], [ %i.de, %bb.u ], [ %i.de, %bb.v ], [ %i.cx, %.lr.ph.i200 ] ; 3 uses
  store ptr %.0.sink.i197, ptr %i.bq, align 8, !tbaa !117
  %.not190 = icmp eq i32 %indvars253, %i.f
  br i1 %.not190, label %.loopexit, label %bb.o, !llvm.loop !136

bb.w:                                             ; preds = %.preheader223, %gray_set_cell.exit213
  %i.dm = phi ptr [ %.pre, %.preheader223 ], [ %.0.sink.i206, %gray_set_cell.exit213 ] ; 2 uses
  %indvars.iv = phi i64 [ %3, %.preheader223 ], [ %indvars.iv.next, %gray_set_cell.exit213 ]
  %.1169 = phi i32 [ %i.v, %.preheader223 ], [ 256, %gray_set_cell.exit213 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !102
  %i.dp = sub i32 %i.do, %.1169
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !102
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !101
  %.neg188 = mul nsw i32 %.neg, %.1169
  %i.ds = add i32 %i.dr, %.neg188
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !101
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.dt = sub nsw i32 %indvars, %i.j              ; 3 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dv = load i32, ptr %i.br, align 8, !tbaa !107
  %.not.i205 = icmp slt i32 %i.dt, %i.dv
  br i1 %.not.i205, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dw = load i32, ptr %i.bs, align 4, !tbaa !109
  %.not44.i207 = icmp sgt i32 %i.dw, %i.p
  br i1 %.not44.i207, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.dx = load ptr, ptr %i.bw, align 8, !tbaa !98
  br label %gray_set_cell.exit213

bb.aa:                                            ; preds = %bb.y
  %i.dy = load ptr, ptr %i.bt, align 8, !tbaa !104
  %i.dz = zext nneg i32 %i.dt to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.bu, align 8, !tbaa !108 ; 2 uses
  %.not45.i208 = icmp sgt i32 %i.eb, %i.p
  %i.ec = add nsw i32 %i.eb, -1
  %i.ed = select i1 %.not45.i208, i32 %i.ec, i32 %i.p ; 4 uses
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !110 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !99 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, %i.ed
  br i1 %i.eg, label %._crit_edge.i211, label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %bb.aa, %bb.ab
  %i.eh = phi i32 [ %i.em, %bb.ab ], [ %i.ef, %bb.aa ]
  %i.ei = phi ptr [ %i.el, %bb.ab ], [ %i.ee, %bb.aa ] ; 3 uses
  %i.ej = icmp eq i32 %i.eh, %i.ed
  br i1 %i.ej, label %gray_set_cell.exit213, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i209
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !110 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !99 ; 2 uses
  %i.en = icmp sgt i32 %i.em, %i.ed
  br i1 %i.en, label %._crit_edge.i211.loopexit, label %.lr.ph.i209

._crit_edge.i211.loopexit:                        ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  br label %._crit_edge.i211

._crit_edge.i211:                                 ; preds = %._crit_edge.i211.loopexit, %bb.aa
  %.036.lcssa.i212 = phi ptr [ %i.ea, %bb.aa ], [ %i.eo, %._crit_edge.i211.loopexit ] ; 2 uses
  %i.ep = load ptr, ptr %i.bv, align 8, !tbaa !116 ; 9 uses
  %i.eq = load ptr, ptr %i.bw, align 8, !tbaa !98
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i211
  store i32 98, ptr %i.bx, align 4, !tbaa !118
  br label %gray_set_cell.exit213

bb.ad:                                            ; preds = %._crit_edge.i211
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store ptr %i.es, ptr %i.bv, align 8, !tbaa !116
  store i32 %i.ed, ptr %i.ep, align 8, !tbaa !99
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 0, ptr %i.et, align 8, !tbaa !101
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i32 0, ptr %i.eu, align 4, !tbaa !102
  %i.ev = load ptr, ptr %.036.lcssa.i212, align 8, !tbaa !110
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !103
  store ptr %i.ep, ptr %.036.lcssa.i212, align 8, !tbaa !110
  br label %gray_set_cell.exit213

gray_set_cell.exit213:                            ; preds = %.lr.ph.i209, %bb.z, %bb.ac, %bb.ad
  %.0.sink.i206 = phi ptr [ %i.dx, %bb.z ], [ %i.ep, %bb.ac ], [ %i.ep, %bb.ad ], [ %i.ei, %.lr.ph.i209 ] ; 3 uses
  store ptr %.0.sink.i206, ptr %i.bq, align 8, !tbaa !117
  %.not189 = icmp eq i32 %indvars, %i.f
  br i1 %.not189, label %.loopexit, label %bb.w, !llvm.loop !137

bb.ae:                                            ; preds = %bb.m
  %i.ex = and i64 %i.b, 255
  %i.ey = mul nsw i64 %i.w, %i.ex
  %i.ez = and i64 %i.n, 255
  %i.fa = mul nsw i64 %i.ez, %i.x
  %i.fb = sub nsw i64 %i.ey, %i.fa
  br i1 %i.y, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fc = sdiv i64 4294967295, %i.w
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.fd = phi i64 [ %i.fc, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  br i1 %i.z, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fe = sdiv i64 4294967295, %i.x
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.ff = phi i64 [ %i.fe, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.fg = shl nsw i64 %i.w, 8                     ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.fi = shl nsw i64 %i.x, 8                     ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %bb.aj

bb.aj:                                            ; preds = %gray_set_cell.exit222, %bb.ai
  %.0176 = phi i32 [ %i.t, %bb.ai ], [ %.1177, %gray_set_cell.exit222 ] ; 4 uses
  %.2174 = phi i32 [ %i.v, %bb.ai ], [ %.3175, %gray_set_cell.exit222 ] ; 5 uses
  %.0170 = phi i32 [ %i.p, %bb.ai ], [ %.1171, %gray_set_cell.exit222 ] ; 4 uses
  %.2 = phi i32 [ %i.d, %bb.ai ], [ %.3, %gray_set_cell.exit222 ] ; 4 uses
  %.0 = phi i64 [ %i.fb, %bb.ai ], [ %.1, %gray_set_cell.exit222 ] ; 7 uses
  %i.fq = sub nsw i64 %.0, %i.fg                  ; 5 uses
  %i.fr = icmp sgt i64 %i.fq, 0
  %i.fs = icmp slt i64 %.0, 1
  %or.cond = and i1 %i.fs, %i.fr
  br i1 %or.cond, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ft = mul i64 %.0, %i.fd
  %i.fu = lshr i64 %i.ft, 32
  %i.fv = trunc nuw i64 %i.fu to i32              ; 2 uses
  %i.fw = sub nsw i64 %.0, %i.fi
  %i.fx = load ptr, ptr %i.fh, align 8, !tbaa !117 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !102
  %i.ga = sub nsw i32 %i.fv, %.2174               ; 2 uses
  %i.gb = add i32 %i.fz, %i.ga
  store i32 %i.gb, ptr %i.fy, align 4, !tbaa !102
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !101
  %i.ge = mul nsw i32 %i.ga, %.0176
  %i.gf = add i32 %i.gd, %i.ge
  store i32 %i.gf, ptr %i.gc, align 8, !tbaa !101
  %i.gg = add nsw i32 %.0170, -1
  br label %bb.aq

bb.al:                                            ; preds = %bb.aj
  %i.gh = add nsw i64 %i.fq, %i.fi                ; 2 uses
  %i.gi = icmp sgt i64 %i.gh, 0
  %i.gj = icmp slt i64 %i.fq, 1
  %or.cond194 = and i1 %i.gj, %i.gi
  br i1 %or.cond194, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gk = mul i64 %i.ff, %i.fq
  %i.gl = sub i64 0, %i.gk
  %i.gm = lshr i64 %i.gl, 32
  %i.gn = trunc nuw i64 %i.gm to i32              ; 2 uses
  %i.go = load ptr, ptr %i.fh, align 8, !tbaa !117 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !102
  %i.gr = sub nsw i32 256, %.2174                 ; 2 uses
  %i.gs = add i32 %i.gq, %i.gr
  store i32 %i.gs, ptr %i.gp, align 4, !tbaa !102
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !101
  %i.gv = add nsw i32 %.0176, %i.gn
  %i.gw = mul nsw i32 %i.gv, %i.gr
  %i.gx = add i32 %i.gu, %i.gw
  store i32 %i.gx, ptr %i.gt, align 8, !tbaa !101
  %i.gy = add nsw i32 %.2, 1
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.gz = add nsw i64 %.0, %i.fi                  ; 3 uses
  %i.ha = icmp sgt i64 %i.gz, -1
  %i.hb = icmp slt i64 %i.gh, 1
  %or.cond195 = and i1 %i.ha, %i.hb
  br i1 %or.cond195, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hc = mul i64 %i.gz, %i.fd
  %i.hd = lshr i64 %i.hc, 32
  %i.he = trunc nuw i64 %i.hd to i32              ; 2 uses
  %i.hf = load ptr, ptr %i.fh, align 8, !tbaa !117 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !102
  %i.hi = sub nsw i32 %i.he, %.2174               ; 2 uses
  %i.hj = add i32 %i.hh, %i.hi
  store i32 %i.hj, ptr %i.hg, align 4, !tbaa !102
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !101
  %i.hm = add nsw i32 %.0176, 256
  %i.hn = mul nsw i32 %i.hi, %i.hm
  %i.ho = add i32 %i.hl, %i.hn
  store i32 %i.ho, ptr %i.hk, align 8, !tbaa !101
  %i.hp = add nsw i32 %.0170, 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.hq = mul i64 %i.ff, %.0
  %i.hr = sub i64 0, %i.hq
  %i.hs = lshr i64 %i.hr, 32
  %i.ht = trunc nuw i64 %i.hs to i32              ; 2 uses
  %i.hu = add nsw i64 %.0, %i.fg
  %i.hv = load ptr, ptr %i.fh, align 8, !tbaa !117 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !102
  %i.hy = sub i32 %i.hx, %.2174
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !102
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !101
  %i.ib = add nsw i32 %.0176, %i.ht
  %i.ic = mul i32 %i.ib, %.2174
  %i.id = sub i32 %i.ia, %i.ic
  store i32 %i.id, ptr %i.hz, align 8, !tbaa !101
  %i.ie = add nsw i32 %.2, -1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.am, %bb.ap, %bb.ao, %bb.ak
  %.1177 = phi i32 [ 256, %bb.ak ], [ %i.gn, %bb.am ], [ 0, %bb.ao ], [ %i.ht, %bb.ap ] ; 2 uses
  %.3175 = phi i32 [ %i.fv, %bb.ak ], [ 0, %bb.am ], [ %i.he, %bb.ao ], [ 256, %bb.ap ] ; 2 uses
  %.1171 = phi i32 [ %i.gg, %bb.ak ], [ %.0170, %bb.am ], [ %i.hp, %bb.ao ], [ %.0170, %bb.ap ] ; 5 uses
  %.3 = phi i32 [ %.2, %bb.ak ], [ %i.gy, %bb.am ], [ %.2, %bb.ao ], [ %i.ie, %bb.ap ] ; 3 uses
  %.1 = phi i64 [ %i.fw, %bb.ak ], [ %i.fq, %bb.am ], [ %i.gz, %bb.ao ], [ %i.hu, %bb.ap ]
  %i.if = sub nsw i32 %.3, %i.j                   ; 3 uses
  %i.ig = icmp slt i32 %i.if, 0
  br i1 %i.ig, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ih = load i32, ptr %i.fj, align 8, !tbaa !107
  %.not.i214 = icmp slt i32 %i.if, %i.ih
  br i1 %.not.i214, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ii = load i32, ptr %i.fk, align 4, !tbaa !109
  %.not44.i216 = icmp slt i32 %.1171, %i.ii
  br i1 %.not44.i216, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.ij = load ptr, ptr %i.fo, align 8, !tbaa !98
  br label %gray_set_cell.exit222

bb.au:                                            ; preds = %bb.as
  %i.ik = load ptr, ptr %i.fl, align 8, !tbaa !104
  %i.il = zext nneg i32 %i.if to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.il ; 2 uses
  %i.in = load i32, ptr %i.fm, align 8, !tbaa !108 ; 2 uses
  %.not45.i217 = icmp slt i32 %.1171, %i.in
  %i.io = add nsw i32 %i.in, -1
  %i.ip = select i1 %.not45.i217, i32 %i.io, i32 %.1171 ; 4 uses
  %i.iq = load ptr, ptr %i.im, align 8, !tbaa !110 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !99 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, %i.ip
  br i1 %i.is, label %._crit_edge.i220, label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %bb.au, %bb.av
  %i.it = phi i32 [ %i.iy, %bb.av ], [ %i.ir, %bb.au ]
  %i.iu = phi ptr [ %i.ix, %bb.av ], [ %i.iq, %bb.au ] ; 3 uses
  %i.iv = icmp eq i32 %i.it, %i.ip
  br i1 %i.iv, label %gray_set_cell.exit222, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i218
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !110 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !99 ; 2 uses
  %i.iz = icmp sgt i32 %i.iy, %i.ip
  br i1 %i.iz, label %._crit_edge.i220.loopexit, label %.lr.ph.i218

._crit_edge.i220.loopexit:                        ; preds = %bb.av
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  br label %._crit_edge.i220

._crit_edge.i220:                                 ; preds = %._crit_edge.i220.loopexit, %bb.au
  %.036.lcssa.i221 = phi ptr [ %i.im, %bb.au ], [ %i.ja, %._crit_edge.i220.loopexit ] ; 2 uses
  %i.jb = load ptr, ptr %i.fn, align 8, !tbaa !116 ; 9 uses
  %i.jc = load ptr, ptr %i.fo, align 8, !tbaa !98
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %bb.aw, label %bb.ax
end_hunk_0
