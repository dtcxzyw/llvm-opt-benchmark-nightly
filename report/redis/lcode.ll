inline.NumInlined: 107
inline.NumDeleted: 19
begin_hunk_0_@luaK_dischargevars:bb.a
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !40
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = and i32 %i.bn, 8388607
  %i.bp = or disjoint i32 %i.bo, 16777216
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !4
  store i32 11, ptr %1, align 8, !tbaa !54
  br label %luaK_setoneret.exit

luaK_setoneret.exit:                              ; preds = %bb.a, %bb.k, %bb.j, %freereg.exit23, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2nextreg(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !54
  %i.b = icmp eq i32 %i.a, 12
  br i1 %i.b, label %bb.b, label %freeexp.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = and i32 %i.d, 256
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %freeexp.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.g = load i8, ptr %i.f, align 2, !tbaa !19
  %i.h = zext i8 %i.g to i32
  %.not3.i.i = icmp slt i32 %i.d, %i.h
  br i1 %.not3.i.i, label %freeexp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !42
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !42   ; 3 uses
  %i.n = add nsw i32 %i.m, 1                      ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 115
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43
  %i.r = zext i8 %i.q to i32
  %.not = icmp slt i32 %i.m, %i.r
  br i1 %.not, label %luaK_reserveregs.exit, label %bb.e

bb.e:                                             ; preds = %freeexp.exit
  %i.s = icmp samesign ugt i32 %i.m, 248
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.u, ptr noundef nonnull @.str) #7
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !20
  %.pre.pre.i = load i32, ptr %i.l, align 4, !tbaa !42
  %.pre5.i = add nsw i32 %.pre.pre.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre4.pre-phi.i = phi i32 [ %.pre5.i, %bb.f ], [ %i.n, %bb.e ]
  %i.v = phi ptr [ %.pre.i.i, %bb.f ], [ %i.o, %bb.e ]
  %i.w = trunc i32 %i.n to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 115
  store i8 %i.w, ptr %i.x, align 1, !tbaa !43
  br label %luaK_reserveregs.exit

luaK_reserveregs.exit:                            ; preds = %freeexp.exit, %bb.g
  %.pre-phi.i = phi i32 [ %i.n, %freeexp.exit ], [ %.pre4.pre-phi.i, %bb.g ] ; 2 uses
  store i32 %.pre-phi.i, ptr %i.l, align 4, !tbaa !42
  %i.y = add nsw i32 %.pre-phi.i, -1
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.y)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exp2reg(ptr noundef captures(none) %0, ptr noundef captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  tail call fastcc void @discharge2reg(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %i.a = load i32, ptr %1, align 8, !tbaa !54
  %i.b = icmp eq i32 %i.a, 10
  br i1 %i.b, label %bb.b, label %luaK_concat.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !40   ; 3 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %luaK_concat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 8, !tbaa !4    ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.i, align 8, !tbaa !21 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %i.c, align 8, !tbaa !4
  br label %luaK_concat.exit

bb.e:                                             ; preds = %bb.e, %.preheader.i
  %.0.i = phi i32 [ %i.q, %bb.e ], [ %i.g, %.preheader.i ] ; 3 uses
  %i.j = sext i32 %.0.i to i64                    ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = lshr i32 %i.l, 14
  %i.n = add nsw i32 %i.m, -131071                ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  %i.p = add nuw nsw i32 %.0.i, 1
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  %.not13.i = icmp eq i32 %i.q, -1
  %.not.i = select i1 %i.o, i1 true, i1 %.not13.i
  br i1 %.not.i, label %bb.f, label %bb.e, !llvm.loop !38

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.j ; 2 uses
  %.neg.i.i = xor i32 %.0.i, -1
  %i.s = add i32 %i.e, %.neg.i.i                  ; 2 uses
  %i.t = add i32 %i.s, -131072
  %i.u = icmp ult i32 %i.t, -262143
  br i1 %i.u, label %bb.g, label %fixjump.exit.i

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.w, ptr noundef nonnull @.str.1) #7
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !4
  br label %fixjump.exit.i

fixjump.exit.i:                                   ; preds = %bb.g, %bb.f
  %i.x = phi i32 [ %i.l, %bb.f ], [ %.pre.i, %bb.g ]
  %i.y = and i32 %i.x, 16383
  %i.z = shl i32 %i.s, 14
  %i.aa = add i32 %i.z, 2147467264
  %i.ab = or disjoint i32 %i.y, %i.aa
  store i32 %i.ab, ptr %i.r, align 4, !tbaa !4
  br label %luaK_concat.exit

luaK_concat.exit:                                 ; preds = %fixjump.exit.i, %bb.d, %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !56 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !57 ; 3 uses
  %.not = icmp eq i32 %i.ad, %i.af
  br i1 %.not, label %bb.y, label %bb.h

bb.h:                                             ; preds = %luaK_concat.exit
  %.not13.i40 = icmp eq i32 %i.ad, -1
  br i1 %.not13.i40, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %.val10.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.ag = getelementptr i8, ptr %.val10.i, i64 24
  %.val10.val.i = load ptr, ptr %i.ag, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %select.unfold.i, %.lr.ph.i
  %.0814.i = phi i32 [ %i.ad, %.lr.ph.i ], [ %i.ax, %select.unfold.i ] ; 3 uses
  %i.ah = sext i32 %.0814.i to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val10.val.i, i64 %i.ah ; 3 uses
  %i.aj = icmp sgt i32 %.0814.i, 0
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %i.am = and i32 %i.al, 63
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !40
  %.not.i.i = icmp sgt i8 %i.ap, -1
  br i1 %.not.i.i, label %bb.k, label %getjumpcontrol.exit.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre.i41 = load i32, ptr %i.ai, align 4, !tbaa !4
  br label %getjumpcontrol.exit.i

getjumpcontrol.exit.i:                            ; preds = %bb.k, %bb.j
  %i.aq = phi i32 [ %.pre.i41, %bb.k ], [ %i.al, %bb.j ]
  %i.ar = and i32 %i.aq, 63
  %.not9.not.i = icmp eq i32 %i.ar, 27
  br i1 %.not9.not.i, label %select.unfold.i, label %need_value.exit

select.unfold.i:                                  ; preds = %getjumpcontrol.exit.i
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.at = lshr i32 %i.as, 14
  %i.au = add nsw i32 %i.at, -131071              ; 2 uses
  %i.av = icmp eq i32 %i.au, -1
  %i.aw = add nuw nsw i32 %.0814.i, 1
  %i.ax = add nsw i32 %i.aw, %i.au                ; 2 uses
  %.not16.i = icmp eq i32 %i.ax, -1
  %.not.i42 = select i1 %i.av, i1 true, i1 %.not16.i
  br i1 %.not.i42, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %select.unfold.i, %bb.h
  %.not13.i43 = icmp eq i32 %i.af, -1
  br i1 %.not13.i43, label %luaK_patchtohere.exit, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.loopexit
  %.val10.i45 = load ptr, ptr %0, align 8, !tbaa !20
  %i.ay = getelementptr i8, ptr %.val10.i45, i64 24
  %.val10.val.i46 = load ptr, ptr %i.ay, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %select.unfold.i52, %.lr.ph.i44
  %.0814.i47 = phi i32 [ %i.af, %.lr.ph.i44 ], [ %i.bp, %select.unfold.i52 ] ; 3 uses
  %i.az = sext i32 %.0814.i47 to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %.val10.val.i46, i64 %i.az ; 3 uses
  %i.bb = icmp sgt i32 %.0814.i47, 0
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4  ; 2 uses
  %i.be = and i32 %i.bd, 63
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !40
  %.not.i.i56.a = icmp sgt i8 %i.bh, -1
  br i1 %.not.i.i56.a, label %bb.n, label %getjumpcontrol.exit.i49

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre.i48 = load i32, ptr %i.ba, align 4, !tbaa !4
  br label %getjumpcontrol.exit.i49

getjumpcontrol.exit.i49:                          ; preds = %bb.n, %bb.m
  %i.bi = phi i32 [ %.pre.i48, %bb.n ], [ %i.bd, %bb.m ]
  %i.bj = and i32 %i.bi, 63
  %.not9.not.i50 = icmp eq i32 %i.bj, 27
  br i1 %.not9.not.i50, label %select.unfold.i52, label %need_value.exit

select.unfold.i52:                                ; preds = %getjumpcontrol.exit.i49
  %i.bk = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bl = lshr i32 %i.bk, 14
  %i.bm = add nsw i32 %i.bl, -131071              ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  %i.bo = add nuw nsw i32 %.0814.i47, 1
  %i.bp = add nsw i32 %i.bo, %i.bm                ; 2 uses
  %.not16.i54 = icmp eq i32 %i.bp, -1
  %.not.i55 = select i1 %i.bn, i1 true, i1 %.not16.i54
  br i1 %.not.i55, label %luaK_patchtohere.exit, label %bb.l

need_value.exit:                                  ; preds = %getjumpcontrol.exit.i, %getjumpcontrol.exit.i49
  %i.bq = load i32, ptr %1, align 8, !tbaa !54
  %i.br = icmp eq i32 %i.bq, 10
  br i1 %i.br, label %luaK_jump.exit, label %bb.o

bb.o:                                             ; preds = %need_value.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !37 ; 3 uses
  store i32 -1, ptr %i.bs, align 8, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !31
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !32
  %i.by = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef 2147450902, i32 noundef %i.bx) ; 4 uses
  %i.bz = icmp eq i32 %i.bt, -1
  br i1 %i.bz, label %luaK_jump.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = icmp eq i32 %i.by, -1
  br i1 %i.ca, label %luaK_jump.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.cb = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load ptr, ptr %i.cb, align 8, !tbaa !21 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.cj, %bb.q ], [ %i.by, %.preheader.i.i ] ; 3 uses
  %i.cc = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4  ; 2 uses
  %i.cf = lshr i32 %i.ce, 14
  %i.cg = add nsw i32 %i.cf, -131071              ; 2 uses
  %i.ch = icmp eq i32 %i.cg, -1
  %i.ci = add nuw nsw i32 %.0.i.i, 1
  %i.cj = add nsw i32 %i.ci, %i.cg                ; 2 uses
  %.not13.i.i = icmp eq i32 %i.cj, -1
  %.not.i.i58 = select i1 %i.ch, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i58, label %bb.r, label %bb.q, !llvm.loop !38

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.cc ; 2 uses
  %.neg.i.i.i = xor i32 %.0.i.i, -1
  %i.cl = add i32 %i.bt, %.neg.i.i.i              ; 2 uses
  %i.cm = add i32 %i.cl, -131072
  %i.cn = icmp ult i32 %i.cm, -262143
  br i1 %i.cn, label %bb.s, label %fixjump.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.bu, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.co, ptr noundef nonnull @.str.1) #7
  %.pre.i.i = load i32, ptr %i.ck, align 4, !tbaa !4
  br label %fixjump.exit.i.i

fixjump.exit.i.i:                                 ; preds = %bb.s, %bb.r
  %i.cp = phi i32 [ %i.ce, %bb.r ], [ %.pre.i.i, %bb.s ]
  %i.cq = and i32 %i.cp, 16383
  %i.cr = shl i32 %i.cl, 14
  %i.cs = add i32 %i.cr, 2147467264
  %i.ct = or disjoint i32 %i.cq, %i.cs
  store i32 %i.ct, ptr %i.ck, align 4, !tbaa !4
  br label %luaK_jump.exit

luaK_jump.exit:                                   ; preds = %fixjump.exit.i.i, %bb.p, %bb.o, %need_value.exit
  %i.cu = phi i32 [ -1, %need_value.exit ], [ %i.by, %bb.o ], [ %i.by, %fixjump.exit.i.i ], [ %i.bt, %bb.p ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !18
  %i.cy = shl i32 %2, 6                           ; 2 uses
  %i.cz = or i32 %i.cy, 16386
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !31
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !32
  %i.de = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.cz, i32 noundef %i.dd) ; 3 uses
  %i.df = load i32, ptr %i.cv, align 8, !tbaa !8
  store i32 %i.df, ptr %i.cx, align 4, !tbaa !18
  %i.dg = or i32 %i.cy, 8388610
  %i.dh = load ptr, ptr %i.da, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !32
  %i.dk = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.dg, i32 noundef %i.dj) ; 3 uses
  %i.dl = load i32, ptr %i.cv, align 8, !tbaa !8
  store i32 %i.dl, ptr %i.cx, align 4, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dn = icmp eq i32 %i.cu, -1
  br i1 %i.dn, label %luaK_patchtohere.exit, label %bb.t

bb.t:                                             ; preds = %luaK_jump.exit
  %i.do = load i32, ptr %i.dm, align 8, !tbaa !4  ; 2 uses
  %i.dp = icmp eq i32 %i.do, -1
  br i1 %i.dp, label %bb.u, label %.preheader.i.i60

.preheader.i.i60:                                 ; preds = %bb.t
  %.val.i.i61 = load ptr, ptr %0, align 8, !tbaa !20
  %i.dq = getelementptr i8, ptr %.val.i.i61, i64 24
  %.val.val.i.i62 = load ptr, ptr %i.dq, align 8, !tbaa !21 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.cu, ptr %i.dm, align 8, !tbaa !4
  br label %luaK_patchtohere.exit

bb.v:                                             ; preds = %bb.v, %.preheader.i.i60
  %.0.i.i63 = phi i32 [ %i.dy, %bb.v ], [ %i.do, %.preheader.i.i60 ] ; 3 uses
  %i.dr = sext i32 %.0.i.i63 to i64               ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %.val.val.i.i62, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4  ; 2 uses
  %i.du = lshr i32 %i.dt, 14
  %i.dv = add nsw i32 %i.du, -131071              ; 2 uses
  %i.dw = icmp eq i32 %i.dv, -1
  %i.dx = add nuw nsw i32 %.0.i.i63, 1
  %i.dy = add nsw i32 %i.dx, %i.dv                ; 2 uses
  %.not13.i.i64 = icmp eq i32 %i.dy, -1
  %.not.i.i65 = select i1 %i.dw, i1 true, i1 %.not13.i.i64
  br i1 %.not.i.i65, label %bb.w, label %bb.v, !llvm.loop !38

bb.w:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds [4 x i8], ptr %.val.val.i.i62, i64 %i.dr ; 2 uses
  %.neg.i.i.i66 = xor i32 %.0.i.i63, -1
  %i.ea = add i32 %i.cu, %.neg.i.i.i66            ; 2 uses
  %i.eb = add i32 %i.ea, -131072
  %i.ec = icmp ult i32 %i.eb, -262143
  br i1 %i.ec, label %bb.x, label %fixjump.exit.i.i67

bb.x:                                             ; preds = %bb.w
  %i.ed = load ptr, ptr %i.da, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.ed, ptr noundef nonnull @.str.1) #7
  %.pre.i.i68 = load i32, ptr %i.dz, align 4, !tbaa !4
  br label %fixjump.exit.i.i67

fixjump.exit.i.i67:                               ; preds = %bb.x, %bb.w
  %i.ee = phi i32 [ %i.dt, %bb.w ], [ %.pre.i.i68, %bb.x ]
  %i.ef = and i32 %i.ee, 16383
  %i.eg = shl i32 %i.ea, 14
  %i.eh = add i32 %i.eg, 2147467264
  %i.ei = or disjoint i32 %i.ef, %i.eh
  store i32 %i.ei, ptr %i.dz, align 4, !tbaa !4
  br label %luaK_patchtohere.exit

luaK_patchtohere.exit:                            ; preds = %select.unfold.i52, %.loopexit, %fixjump.exit.i.i67, %bb.u, %luaK_jump.exit
  %.036 = phi i32 [ %i.dk, %fixjump.exit.i.i67 ], [ %i.dk, %luaK_jump.exit ], [ %i.dk, %bb.u ], [ -1, %.loopexit ], [ -1, %select.unfold.i52 ]
  %.0 = phi i32 [ %i.de, %fixjump.exit.i.i67 ], [ %i.de, %luaK_jump.exit ], [ %i.de, %bb.u ], [ -1, %.loopexit ], [ -1, %select.unfold.i52 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !8  ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !18
  %i.em = load i32, ptr %i.ae, align 4, !tbaa !57
  tail call fastcc void @patchlistaux(ptr noundef %0, i32 noundef %i.em, i32 noundef %i.ek, i32 noundef %2, i32 noundef %.0)
  %i.en = load i32, ptr %i.ac, align 8, !tbaa !56
  tail call fastcc void @patchlistaux(ptr noundef %0, i32 noundef %i.en, i32 noundef %i.ek, i32 noundef %2, i32 noundef %.036)
  br label %bb.y

bb.y:                                             ; preds = %luaK_patchtohere.exit, %luaK_concat.exit
  store i32 -1, ptr %i.ac, align 8, !tbaa !56
  store i32 -1, ptr %i.ae, align 4, !tbaa !57
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %2, ptr %i.eo, align 8, !tbaa !40
  store i32 12, ptr %1, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaK_exp2anyreg(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !54
  %i.b = icmp eq i32 %i.a, 12
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !57
  %.not = icmp eq i32 %i.d, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.j = load i8, ptr %i.i, align 2, !tbaa !19
  %i.k = zext i8 %i.j to i32
  %.not16 = icmp slt i32 %i.h, %i.k
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.h)
  br label %bb.l
end_hunk_0
begin_hunk_1_@luaK_prefix:bb.a
bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !56
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %isnumeral.exit, label %codenot.exit.sink.split.sink.split

isnumeral.exit:                                   ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !57
  %.not = icmp eq i32 %i.j, -1
  br i1 %.not, label %codenot.exit.sink.split, label %codenot.exit.sink.split.sink.split

bb.d:                                             ; preds = %bb.a
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %2)
  %i.k = load i32, ptr %2, align 8, !tbaa !54
  switch i32 %i.k, label %bb.p [
    i32 1, label %bb.e
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.f
    i32 2, label %bb.f
    i32 10, label %bb.g
    i32 12, label %discharge2anyreg.exit.thread.i
    i32 11, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  store i32 2, ptr %2, align 8, !tbaa !54
  br label %bb.p

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d
  store i32 3, ptr %2, align 8, !tbaa !54
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %.val.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.l = getelementptr i8, ptr %2, i64 8
  %.val23.i = load i32, ptr %i.l, align 8, !tbaa !40 ; 2 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.n = sext i32 %.val23.i to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.n ; 3 uses
  %i.p = icmp sgt i32 %.val23.i, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %i.s = and i32 %i.r, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !40
  %.not.i.i.i = icmp sgt i8 %i.v, -1
  br i1 %.not.i.i.i, label %bb.i, label %invertjump.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre.i.i = load i32, ptr %i.o, align 4, !tbaa !4
  br label %invertjump.exit.i

invertjump.exit.i:                                ; preds = %bb.i, %bb.h
  %i.w = phi i32 [ %.pre.i.i, %bb.i ], [ %i.r, %bb.h ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.o, %bb.i ], [ %i.q, %bb.h ]
  %i.x = and i32 %i.w, -16321
  %i.y = and i32 %i.w, 16320
  %.not.i.i = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not.i.i, i32 64, i32 0
  %i.aa = or disjoint i32 %i.z, %i.x
  store i32 %i.aa, ptr %.0.i.i.i, align 4, !tbaa !4
  br label %bb.p

bb.j:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !42 ; 3 uses
  %i.ad = add nsw i32 %i.ac, 1                    ; 3 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 115
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !43
  %i.ah = zext i8 %i.ag to i32
  %.not5.i.i = icmp slt i32 %i.ac, %i.ah
  br i1 %.not5.i.i, label %discharge2anyreg.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp samesign ugt i32 %i.ac, 248
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31
  tail call void @luaX_syntaxerror(ptr noundef %i.ak, ptr noundef nonnull @.str) #7
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !20
  %.pre.pre.i.i.i = load i32, ptr %i.ab, align 4, !tbaa !42
  %.pre5.i.i.i = add nsw i32 %.pre.pre.i.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre4.pre-phi.i.i.i = phi i32 [ %.pre5.i.i.i, %bb.l ], [ %i.ad, %bb.k ]
  %i.al = phi ptr [ %.pre.i.i.i.i, %bb.l ], [ %i.ae, %bb.k ]
  %i.am = trunc i32 %i.ad to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 115
  store i8 %i.am, ptr %i.an, align 1, !tbaa !43
  br label %discharge2anyreg.exit.i

discharge2anyreg.exit.i:                          ; preds = %bb.m, %bb.j
  %.pre-phi.i.i.i = phi i32 [ %i.ad, %bb.j ], [ %.pre4.pre-phi.i.i.i, %bb.m ] ; 2 uses
  store i32 %.pre-phi.i.i.i, ptr %i.ab, align 4, !tbaa !42
  %i.ao = add nsw i32 %.pre-phi.i.i.i, -1
  tail call fastcc void @discharge2reg(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.ao)
  %.pre.i = load i32, ptr %2, align 8, !tbaa !54
  %i.ap = icmp eq i32 %.pre.i, 12
  br i1 %i.ap, label %discharge2anyreg.exit.thread.i, label %freeexp.exit.i

discharge2anyreg.exit.thread.i:                   ; preds = %discharge2anyreg.exit.i, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !40 ; 2 uses
  %i.as = and i32 %i.ar, 256
  %.not.i.i25.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i25.i, label %bb.n, label %freeexp.exit.i

bb.n:                                             ; preds = %discharge2anyreg.exit.thread.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.au = load i8, ptr %i.at, align 2, !tbaa !19
  %i.av = zext i8 %i.au to i32
  %.not3.i.i.i = icmp slt i32 %i.ar, %i.av
  br i1 %.not3.i.i.i, label %freeexp.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !42
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !42
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.o, %bb.n, %discharge2anyreg.exit.thread.i, %discharge2anyreg.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !40
  %i.bb = shl i32 %i.ba, 23
  %i.bc = or disjoint i32 %i.bb, 19
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !32
  %i.bh = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %i.bc, i32 noundef %i.bg)
  store i32 %i.bh, ptr %i.az, align 8, !tbaa !40
  store i32 11, ptr %2, align 8, !tbaa !54
  br label %bb.p

bb.p:                                             ; preds = %freeexp.exit.i, %invertjump.exit.i, %bb.f, %bb.e, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !57 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !56 ; 3 uses
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !57
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !56
  %.not7.i.i = icmp eq i32 %i.bl, -1
  br i1 %.not7.i.i, label %removevalues.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %.val4.i.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.bm = getelementptr i8, ptr %.val4.i.i, i64 24
  %.val4.val.i.i = load ptr, ptr %i.bm, align 8, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %patchtestreg.exit.i.i, %.lr.ph.i.i
  %.08.i.i = phi i32 [ %i.bl, %.lr.ph.i.i ], [ %i.ch, %patchtestreg.exit.i.i ] ; 3 uses
  %i.bn = sext i32 %.08.i.i to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.val4.val.i.i, i64 %i.bn ; 4 uses
  %i.bp = icmp sgt i32 %.08.i.i, 0
  br i1 %i.bp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4  ; 2 uses
  %i.bs = and i32 %i.br, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !40
  %.not.i.i.i.i = icmp sgt i8 %i.bv, -1
  br i1 %.not.i.i.i.i, label %bb.s, label %getjumpcontrol.exit.i.i.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre.i.i.i = load i32, ptr %i.bo, align 4, !tbaa !4
  br label %getjumpcontrol.exit.i.i.i

getjumpcontrol.exit.i.i.i:                        ; preds = %bb.s, %bb.r
  %i.bw = phi i32 [ %.pre.i.i.i, %bb.s ], [ %i.br, %bb.r ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.bo, %bb.s ], [ %i.bq, %bb.r ]
  %i.bx = and i32 %i.bw, 63
  %.not.i.i26.i = icmp eq i32 %i.bx, 27
  br i1 %.not.i.i26.i, label %bb.t, label %patchtestreg.exit.i.i

bb.t:                                             ; preds = %getjumpcontrol.exit.i.i.i
  %i.by = lshr i32 %i.bw, 17
  %i.bz = and i32 %i.by, 32704
  %i.ca = and i32 %i.bw, 8372250
  %i.cb = or i32 %i.bz, %i.ca
  store i32 %i.cb, ptr %.0.i.i.i.i, align 4, !tbaa !4
  br label %patchtestreg.exit.i.i

patchtestreg.exit.i.i:                            ; preds = %bb.t, %getjumpcontrol.exit.i.i.i
  %i.cc = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.cd = lshr i32 %i.cc, 14
  %i.ce = add nsw i32 %i.cd, -131071              ; 2 uses
  %i.cf = icmp eq i32 %i.ce, -1
  %i.cg = add nuw nsw i32 %.08.i.i, 1
  %i.ch = add nsw i32 %i.cg, %i.ce                ; 2 uses
  %.not9.i.i = icmp eq i32 %i.ch, -1
  %.not.i27.i = select i1 %i.cf, i1 true, i1 %.not9.i.i
  br i1 %.not.i27.i, label %removevalues.exitthread-pre-split.i, label %bb.q

removevalues.exitthread-pre-split.i:              ; preds = %patchtestreg.exit.i.i
  %.pr.i = load i32, ptr %i.bk, align 8, !tbaa !56
  br label %removevalues.exit.i

removevalues.exit.i:                              ; preds = %removevalues.exitthread-pre-split.i, %bb.p
  %i.ci = phi i32 [ %.pr.i, %removevalues.exitthread-pre-split.i ], [ %i.bj, %bb.p ] ; 2 uses
  %.not7.i28.i = icmp eq i32 %i.ci, -1
  br i1 %.not7.i28.i, label %codenot.exit, label %.lr.ph.i29.i

.lr.ph.i29.i:                                     ; preds = %removevalues.exit.i
  %.val4.i30.i = load ptr, ptr %0, align 8, !tbaa !20
  %i.cj = getelementptr i8, ptr %.val4.i30.i, i64 24
  %.val4.val.i31.i = load ptr, ptr %i.cj, align 8, !tbaa !21
  br label %bb.u

bb.u:                                             ; preds = %patchtestreg.exit.i37.i, %.lr.ph.i29.i
  %.08.i32.i = phi i32 [ %i.ci, %.lr.ph.i29.i ], [ %i.de, %patchtestreg.exit.i37.i ] ; 3 uses
  %i.ck = sext i32 %.08.i32.i to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %.val4.val.i31.i, i64 %i.ck ; 4 uses
  %i.cm = icmp sgt i32 %.08.i32.i, 0
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -4 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4  ; 2 uses
  %i.cp = and i32 %i.co, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !40
  %.not.i.i.i41.i = icmp sgt i8 %i.cs, -1
  br i1 %.not.i.i.i41.i, label %bb.w, label %getjumpcontrol.exit.i.i34.i

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pre.i.i33.i = load i32, ptr %i.cl, align 4, !tbaa !4
  br label %getjumpcontrol.exit.i.i34.i

getjumpcontrol.exit.i.i34.i:                      ; preds = %bb.w, %bb.v
  %i.ct = phi i32 [ %.pre.i.i33.i, %bb.w ], [ %i.co, %bb.v ] ; 3 uses
  %.0.i.i.i35.i = phi ptr [ %i.cl, %bb.w ], [ %i.cn, %bb.v ]
  %i.cu = and i32 %i.ct, 63
  %.not.i.i36.i = icmp eq i32 %i.cu, 27
  br i1 %.not.i.i36.i, label %bb.x, label %patchtestreg.exit.i37.i

bb.x:                                             ; preds = %getjumpcontrol.exit.i.i34.i
  %i.cv = lshr i32 %i.ct, 17
  %i.cw = and i32 %i.cv, 32704
  %i.cx = and i32 %i.ct, 8372250
  %i.cy = or i32 %i.cw, %i.cx
  store i32 %i.cy, ptr %.0.i.i.i35.i, align 4, !tbaa !4
  br label %patchtestreg.exit.i37.i

patchtestreg.exit.i37.i:                          ; preds = %bb.x, %getjumpcontrol.exit.i.i34.i
  %i.cz = load i32, ptr %i.cl, align 4, !tbaa !4
  %i.da = lshr i32 %i.cz, 14
  %i.db = add nsw i32 %i.da, -131071              ; 2 uses
  %i.dc = icmp eq i32 %i.db, -1
  %i.dd = add nuw nsw i32 %.08.i32.i, 1
  %i.de = add nsw i32 %i.dd, %i.db                ; 2 uses
  %.not9.i39.i = icmp eq i32 %i.de, -1
  %.not.i40.i = select i1 %i.dc, i1 true, i1 %.not9.i39.i
  br i1 %.not.i40.i, label %codenot.exit, label %bb.u

codenot.exit.sink.split.sink.split:               ; preds = %bb.a, %isnumeral.exit, %bb.c, %bb.b
  %.sink.ph = phi i32 [ 18, %isnumeral.exit ], [ 18, %bb.b ], [ 18, %bb.c ], [ 20, %bb.a ]
  %i.df = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %codenot.exit.sink.split

codenot.exit.sink.split:                          ; preds = %codenot.exit.sink.split.sink.split, %isnumeral.exit
  %.sink = phi i32 [ 18, %isnumeral.exit ], [ %.sink.ph, %codenot.exit.sink.split.sink.split ]
  call fastcc void @codearith(ptr noundef %0, i32 noundef %.sink, ptr noundef %2, ptr noundef nonnull %3)
  br label %codenot.exit

codenot.exit:                                     ; preds = %patchtestreg.exit.i37.i, %codenot.exit.sink.split, %removevalues.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codearith(ptr noundef captures(none) %0, i32 noundef range(i32 12, 22) %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !54
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %isnumeral.exit.i, label %bb.p

isnumeral.exit.i:                                 ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !57
  %.not.i = icmp eq i32 %i.g, -1
  br i1 %.not.i, label %bb.c, label %bb.p

bb.c:                                             ; preds = %isnumeral.exit.i
  %i.h = load i32, ptr %3, align 8, !tbaa !54
  %i.i = icmp eq i32 %i.h, 5
  br i1 %i.i, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !56
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %isnumeral.exit29.i, label %bb.p

isnumeral.exit29.i:                               ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !57
  %.not34.i = icmp eq i32 %i.n, -1
  br i1 %.not34.i, label %bb.e, label %bb.p

bb.e:                                             ; preds = %isnumeral.exit29.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !40 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !40 ; 9 uses
  switch i32 %1, label %constfolding.exit [
    i32 12, label %bb.f
    i32 13, label %bb.g
    i32 14, label %bb.h
    i32 15, label %bb.i
    i32 16, label %bb.k
    i32 17, label %bb.m
    i32 18, label %bb.n
    i32 20, label %.thread36
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = fadd double %i.p, %i.r
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.t = fsub double %i.p, %i.r
  br label %bb.o

bb.h:                                             ; preds = %bb.e
  %i.u = fmul double %i.p, %i.r
  br label %bb.o

bb.i:                                             ; preds = %bb.e
  %i.v = fcmp oeq double %i.r, 0.000000e+00
  br i1 %i.v, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = fdiv double %i.p, %i.r
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  %i.x = fcmp oeq double %i.r, 0.000000e+00
  br i1 %i.x, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = fdiv double %i.p, %i.r
  %i.z = tail call double @llvm.floor.f64(double %i.y)
  %i.aa = fneg double %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.r, double %i.p)
  br label %bb.o

bb.m:                                             ; preds = %bb.e
  %i.ac = tail call double @pow(double noundef %i.p, double noundef %i.r) #7, !tbaa !4
  br label %bb.o

bb.n:                                             ; preds = %bb.e
  %i.ad = fneg double %i.p
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.f
  %.0.i = phi double [ %i.ad, %bb.n ], [ %i.s, %bb.f ], [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.w, %bb.j ], [ %i.ab, %bb.l ], [ %i.ac, %bb.m ] ; 2 uses
  %i.ae = fcmp ord double %.0.i, 0.000000e+00
  br i1 %i.ae, label %constfolding.exit, label %bb.p

constfolding.exit:                                ; preds = %bb.e, %bb.o
  %.033.i = phi double [ %.0.i, %bb.o ], [ 0.000000e+00, %bb.e ]
  store double %.033.i, ptr %i.o, align 8, !tbaa !40
  br label %bb.ac

bb.p:                                             ; preds = %isnumeral.exit.i, %isnumeral.exit29.i, %bb.o, %bb.a, %bb.b, %bb.d, %bb.c
  switch i32 %1, label %.thread [
    i32 20, label %.thread36
    i32 18, label %.thread36
  ]

.thread:                                          ; preds = %bb.k, %bb.i, %bb.p
  %i.af = tail call i32 @luaK_exp2RK(ptr noundef %0, ptr noundef %3)
  br label %.thread36

.thread36:                                        ; preds = %bb.e, %bb.p, %bb.p, %.thread
  %i.ag = phi i32 [ %i.af, %.thread ], [ 0, %bb.p ], [ 0, %bb.p ], [ 0, %bb.e ] ; 2 uses
  %i.ah = tail call i32 @luaK_exp2RK(ptr noundef %0, ptr noundef nonnull %2) ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, %i.ag
  br i1 %i.ai, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.thread36
  %i.aj = load i32, ptr %2, align 8, !tbaa !54
  %i.ak = icmp eq i32 %i.aj, 12
  br i1 %i.ak, label %bb.r, label %freeexp.exit

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = and i32 %i.am, 256
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %bb.s, label %freeexp.exit

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !19
  %i.aq = zext i8 %i.ap to i32
  %.not3.i.i = icmp slt i32 %i.am, %i.aq
  br i1 %.not3.i.i, label %freeexp.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !42
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !42
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %i.au = load i32, ptr %3, align 8, !tbaa !54
  %i.av = icmp eq i32 %i.au, 12
  br i1 %i.av, label %bb.u, label %freeexp.exit27

bb.u:                                             ; preds = %freeexp.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !40 ; 2 uses
  %i.ay = and i32 %i.ax, 256
  %.not.i.i25 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i25, label %bb.v, label %freeexp.exit27

bb.v:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !19
  %i.bb = zext i8 %i.ba to i32
  %.not3.i.i26 = icmp slt i32 %i.ax, %i.bb
  br i1 %.not3.i.i26, label %freeexp.exit27, label %freeexp.exit27.sink.split

bb.w:                                             ; preds = %.thread36
  %i.bc = load i32, ptr %3, align 8, !tbaa !54
  %i.bd = icmp eq i32 %i.bc, 12
  br i1 %i.bd, label %bb.x, label %freeexp.exit30

bb.x:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !40 ; 2 uses
  %i.bg = and i32 %i.bf, 256
  %.not.i.i28 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i28, label %bb.y, label %freeexp.exit30

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !19
end_hunk_1
