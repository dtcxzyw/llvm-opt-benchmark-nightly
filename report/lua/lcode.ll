Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lcode?download=true
inline.NumInlined: 205
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@luaK_dischargevars:bb.a
freereg.exit.i58:                                 ; preds = %bb.x, %bb.w
  %i.de = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.df = zext i8 %i.de to i32
  %.not.i11.i59 = icmp slt i32 %i.cy, %i.df
  br i1 %.not.i11.i59, label %freeregs.exit60, label %freereg.exit12.sink.split.i56

bb.y:                                             ; preds = %bb.v
  %i.dg = zext i8 %i.da to i32
  %.not.i13.i53 = icmp samesign ult i32 %i.cy, %i.dg
  br i1 %.not.i13.i53, label %freereg.exit14.i54, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !66
  %i.dj = add i8 %i.di, -1
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !66
  br label %freereg.exit14.i54

freereg.exit14.i54:                               ; preds = %bb.z, %bb.y
  %i.dk = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %.not.i15.i55 = icmp ult i8 %i.cv, %i.dk
  br i1 %.not.i15.i55, label %freeregs.exit60, label %freereg.exit12.sink.split.i56

freereg.exit12.sink.split.i56:                    ; preds = %freereg.exit14.i54, %freereg.exit.i58
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !66
  %i.dn = add i8 %i.dm, -1
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !66
  br label %freeregs.exit60

freeregs.exit60:                                  ; preds = %freereg.exit.i58, %freereg.exit14.i54, %freereg.exit12.sink.split.i56
  %i.do = load i8, ptr %i.cu, align 2, !tbaa !25
  %i.dp = zext i8 %i.do to i32
  %i.dq = load i16, ptr %i.ct, align 8, !tbaa !25
  %i.dr = zext i16 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dp, 16
  %i.dt = shl i32 %i.dr, 24
  %i.du = or disjoint i32 %i.ds, %i.dt
  %i.dv = or disjoint i32 %i.du, 81
  %i.dw = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.dv)
  store i32 %i.dw, ptr %i.ct, align 8, !tbaa !25
  store i32 20, ptr %1, align 8, !tbaa !24
  br label %const2exp.exit

bb.aa:                                            ; preds = %bb.a
  store i32 8, ptr %1, align 8, !tbaa !24
  %i.dx = load ptr, ptr %0, align 8, !tbaa !47
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !56
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !25
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !57
  %i.ef = lshr i32 %i.ee, 7
  %i.eg = and i32 %i.ef, 255
  store i32 %i.eg, ptr %i.ea, align 8, !tbaa !25
  br label %const2exp.exit

bb.ab:                                            ; preds = %bb.a
  %i.eh = load ptr, ptr %0, align 8, !tbaa !47
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !56
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !25
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !57
  %i.ep = and i32 %i.eo, 16777215
  %i.eq = or disjoint i32 %i.ep, 33554432
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !57
  store i32 20, ptr %1, align 8, !tbaa !24
  br label %const2exp.exit

const2exp.exit:                                   ; preds = %bb.a, %bb.ab, %bb.aa, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %freeregs.exit60, %freeregs.exit, %freereg.exit52, %freereg.exit, %bb.l, %bb.k, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2nextreg(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  %i.b = icmp eq i32 %i.a, 8
  br i1 %i.b, label %bb.b, label %freeexp.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %i.e = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.f = zext i8 %i.e to i32
  %.not.i.i = icmp slt i32 %i.d, %i.f
  br i1 %.not.i.i, label %freeexp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !66
  %i.i = add i8 %i.h, -1
  store i8 %i.i, ptr %i.g, align 1, !tbaa !66
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %bb.a, %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66    ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i8, ptr %i.m, align 4, !tbaa !67
  %.not = icmp ult i8 %i.k, %i.n
  br i1 %.not, label %luaK_reserveregs.exit, label %bb.d

bb.d:                                             ; preds = %freeexp.exit
  %i.o = zext i8 %i.k to i32
  %i.p = add nuw nsw i32 %i.o, 1                  ; 2 uses
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.q = trunc i32 %i.p to i8
  %i.r = load ptr, ptr %0, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i8 %i.q, ptr %i.s, align 4, !tbaa !67
  %.pre.i = load i8, ptr %i.j, align 1, !tbaa !66
  br label %luaK_reserveregs.exit

luaK_reserveregs.exit:                            ; preds = %freeexp.exit, %bb.d
  %i.t = phi i8 [ %i.k, %freeexp.exit ], [ %.pre.i, %bb.d ]
  %i.u = add i8 %i.t, 1                           ; 2 uses
  store i8 %i.u, ptr %i.j, align 1, !tbaa !66
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -1
  tail call fastcc void @exp2reg(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.w)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exp2reg(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  tail call fastcc void @discharge2reg(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  %i.b = icmp eq i32 %i.a, 19
  br i1 %i.b, label %bb.b, label %luaK_concat.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25   ; 3 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %luaK_concat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.i = getelementptr i8, ptr %.val.i, i64 64
  %.val.val.i = load ptr, ptr %i.i, align 8, !tbaa !56 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %i.c, align 8, !tbaa !57
  br label %luaK_concat.exit

bb.e:                                             ; preds = %bb.e, %.preheader.i
  %.0.i = phi i32 [ %i.q, %bb.e ], [ %i.g, %.preheader.i ] ; 3 uses
  %i.j = sext i32 %.0.i to i64                    ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !57   ; 2 uses
  %i.m = lshr i32 %i.l, 7
  %i.n = add nsw i32 %i.m, -16777215              ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  %i.p = add nuw nsw i32 %.0.i, 1
  %i.q = add nsw i32 %i.p, %i.n                   ; 2 uses
  %.not13.i = icmp eq i32 %i.q, -1
  %.not.i = select i1 %i.o, i1 true, i1 %.not13.i
  br i1 %.not.i, label %bb.f, label %bb.e

bb.f:                                             ; preds = %bb.e
  %.neg.i.i = xor i32 %.0.i, -1
  %i.r = add i32 %i.e, %.neg.i.i                  ; 2 uses
  %i.s = add i32 %i.r, 16777215
  %or.cond.i.i = icmp ult i32 %i.s, 33554432
  br i1 %or.cond.i.i, label %fixjump.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35
  tail call void @luaX_syntaxerror(ptr noundef %i.u, ptr noundef nonnull @.str.4) #12
  unreachable

fixjump.exit.i:                                   ; preds = %bb.f
  %i.v = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.j
  %i.w = and i32 %i.l, 127
  %i.x = shl i32 %i.r, 7
  %i.y = add i32 %i.x, 2147483520
  %i.z = or disjoint i32 %i.y, %i.w
  store i32 %i.z, ptr %i.v, align 4, !tbaa !57
  br label %luaK_concat.exit

luaK_concat.exit:                                 ; preds = %fixjump.exit.i, %bb.d, %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !22 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23 ; 4 uses
  %.not = icmp eq i32 %i.ab, %i.ad
  br i1 %.not, label %bb.q, label %bb.h

bb.h:                                             ; preds = %luaK_concat.exit
  %.not12.i = icmp eq i32 %i.ab, -1
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %.val10.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.ae = getelementptr i8, ptr %.val10.i, i64 64
  %.val10.val.i = load ptr, ptr %i.ae, align 8, !tbaa !56
  br label %bb.i

bb.i:                                             ; preds = %select.unfold.i, %.lr.ph.i
  %.0713.i = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.aw, %select.unfold.i ] ; 3 uses
  %i.af = sext i32 %.0713.i to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val10.val.i, i64 %i.af ; 3 uses
  %i.ah = icmp sgt i32 %.0713.i, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !57 ; 2 uses
  %i.ak = and i32 %i.aj, 127
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !25
  %i.ao = and i8 %i.an, 16
  %.not.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i, label %bb.k, label %getjumpcontrol.exit.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre.i = load i32, ptr %i.ag, align 4, !tbaa !57
  br label %getjumpcontrol.exit.i

getjumpcontrol.exit.i:                            ; preds = %bb.k, %bb.j
  %i.ap = phi i32 [ %.pre.i, %bb.k ], [ %i.aj, %bb.j ]
  %i.aq = and i32 %i.ap, 127
  %.not9.not.i = icmp eq i32 %i.aq, 67
  br i1 %.not9.not.i, label %select.unfold.i, label %need_value.exit

select.unfold.i:                                  ; preds = %getjumpcontrol.exit.i
  %i.ar = load i32, ptr %i.ag, align 4, !tbaa !57
  %i.as = lshr i32 %i.ar, 7
  %i.at = add nsw i32 %i.as, -16777215            ; 2 uses
  %i.au = icmp eq i32 %i.at, -1
  %i.av = add nuw nsw i32 %.0713.i, 1
  %i.aw = add nsw i32 %i.av, %i.at                ; 2 uses
  %.not15.i = icmp eq i32 %i.aw, -1
  %.not.i40 = select i1 %i.au, i1 true, i1 %.not15.i
  br i1 %.not.i40, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %select.unfold.i, %bb.h
  %.not12.i41 = icmp eq i32 %i.ad, -1
  br i1 %.not12.i41, label %need_value.exit54.thread, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.loopexit
  %.val10.i43 = load ptr, ptr %0, align 8, !tbaa !47
  %i.ax = getelementptr i8, ptr %.val10.i43, i64 64
  %.val10.val.i44 = load ptr, ptr %i.ax, align 8, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %select.unfold.i50, %.lr.ph.i42
  %.0713.i45 = phi i32 [ %i.ad, %.lr.ph.i42 ], [ %i.bp, %select.unfold.i50 ] ; 3 uses
  %i.ay = sext i32 %.0713.i45 to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %.val10.val.i44, i64 %i.ay ; 3 uses
  %i.ba = icmp sgt i32 %.0713.i45, 0
  br i1 %i.ba, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !57 ; 2 uses
  %i.bd = and i32 %i.bc, 127
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !25
  %i.bh = and i8 %i.bg, 16
  %.not.i.i53 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i53, label %bb.n, label %getjumpcontrol.exit.i47

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre.i46 = load i32, ptr %i.az, align 4, !tbaa !57
  br label %getjumpcontrol.exit.i47

getjumpcontrol.exit.i47:                          ; preds = %bb.n, %bb.m
  %i.bi = phi i32 [ %.pre.i46, %bb.n ], [ %i.bc, %bb.m ]
  %i.bj = and i32 %i.bi, 127
  %.not9.not.i48 = icmp eq i32 %i.bj, 67
  br i1 %.not9.not.i48, label %select.unfold.i50, label %need_value.exit

select.unfold.i50:                                ; preds = %getjumpcontrol.exit.i47
  %i.bk = load i32, ptr %i.az, align 4, !tbaa !57
  %i.bl = lshr i32 %i.bk, 7
  %i.bm = add nsw i32 %i.bl, -16777215            ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  %i.bo = add nuw nsw i32 %.0713.i45, 1
  %i.bp = add nsw i32 %i.bo, %i.bm                ; 2 uses
  %.not15.i51 = icmp eq i32 %i.bp, -1
  %.not.i52 = select i1 %i.bn, i1 true, i1 %.not15.i51
  br i1 %.not.i52, label %need_value.exit54.thread, label %bb.l

need_value.exit:                                  ; preds = %getjumpcontrol.exit.i, %getjumpcontrol.exit.i47
  %i.bq = load i32, ptr %1, align 8, !tbaa !24
  %i.br = icmp eq i32 %i.bq, 19
  br i1 %i.br, label %bb.p, label %bb.o

bb.o:                                             ; preds = %need_value.exit
  %i.bs = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef 2147483448)
  br label %bb.p

bb.p:                                             ; preds = %need_value.exit, %bb.o
  %i.bt = phi i32 [ %i.bs, %bb.o ], [ -1, %need_value.exit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !45
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !46
  %i.bx = shl i32 %2, 7                           ; 2 uses
  %i.by = or disjoint i32 %i.bx, 6
  %i.bz = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.by)
  %i.ca = load i32, ptr %i.bu, align 8, !tbaa !45
  store i32 %i.ca, ptr %i.bw, align 4, !tbaa !46
  %i.cb = or disjoint i32 %i.bx, 7
  %i.cc = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.cb)
  %i.cd = load i32, ptr %i.bu, align 8, !tbaa !45 ; 3 uses
  store i32 %i.cd, ptr %i.bw, align 4, !tbaa !46
  tail call fastcc void @patchlistaux(ptr noundef readonly %0, i32 noundef %i.bt, i32 noundef %i.cd, i32 noundef 255, i32 noundef %i.cd)
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !23
  br label %need_value.exit54.thread

need_value.exit54.thread:                         ; preds = %select.unfold.i50, %.loopexit, %bb.p
  %i.ce = phi i32 [ %.pre, %bb.p ], [ -1, %.loopexit ], [ %i.ad, %select.unfold.i50 ]
  %.036 = phi i32 [ %i.bz, %bb.p ], [ -1, %.loopexit ], [ -1, %select.unfold.i50 ]
  %.0 = phi i32 [ %i.cc, %bb.p ], [ -1, %.loopexit ], [ -1, %select.unfold.i50 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !45 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !46
  tail call fastcc void @patchlistaux(ptr noundef %0, i32 noundef %i.ce, i32 noundef %i.cg, i32 noundef %2, i32 noundef %.036)
  %i.ci = load i32, ptr %i.aa, align 8, !tbaa !22
  tail call fastcc void @patchlistaux(ptr noundef %0, i32 noundef %i.ci, i32 noundef %i.cg, i32 noundef %2, i32 noundef %.0)
  br label %bb.q

bb.q:                                             ; preds = %need_value.exit54.thread, %luaK_concat.exit
  store i64 -1, ptr %i.aa, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %2, ptr %i.cj, align 8, !tbaa !25
  store i32 8, ptr %1, align 8, !tbaa !24
  ret void
}

declare hidden zeroext i8 @luaY_nvarstack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2anyregup(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.a, label %bb.c [
    i32 12, label %bb.b
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23
  %.not7 = icmp eq i32 %i.c, %i.e
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_exp2val(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  %i.b = icmp eq i32 %i.a, 19
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %.not = icmp eq i32 %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_storevar(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !24
  switch i32 %i.a, label %bb.o [
    i32 9, label %bb.b
    i32 12, label %bb.e
    i32 16, label %bb.f
    i32 17, label %bb.h
    i32 18, label %bb.j
    i32 15, label %bb.l
    i32 14, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 8, !tbaa !24
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %bb.c, label %freeexp.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25
  %i.f = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.g = zext i8 %i.f to i32
  %.not.i.i = icmp slt i32 %i.e, %i.g
  br i1 %.not.i.i, label %freeexp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !66
  %i.j = add i8 %i.i, -1
  store i8 %i.j, ptr %i.h, align 1, !tbaa !66
  br label %freeexp.exit

freeexp.exit:                                     ; preds = %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !25
  %i.m = zext i8 %i.l to i32
  tail call fastcc void @exp2reg(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %i.m)
  br label %freeexp.exit40

bb.e:                                             ; preds = %bb.a
  %i.n = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !25
  %i.q = shl i32 %i.n, 7
  %i.r = shl i32 %i.p, 16
  %i.s = or i32 %i.q, %i.r
  %i.t = or disjoint i32 %i.s, 10
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.w = load i8, ptr %i.v, align 2, !tbaa !25
  %i.x = zext i8 %i.w to i32
  %i.y = load i16, ptr %i.u, align 8, !tbaa !25
  %i.z = sext i16 %i.y to i32
  %i.aa = tail call fastcc i32 @luaK_exp2K(ptr noundef %0, ptr noundef %2)
  %.not.i.i29 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i29, label %bb.g, label %codeABRK.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %codeABRK.exit

codeABRK.exit:                                    ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ 0, %bb.g ], [ 32768, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !25
  %i.ae = shl nuw nsw i32 %i.x, 7
  %i.af = shl nsw i32 %i.z, 16
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = shl i32 %i.ad, 24
  %i.ai = or disjoint i32 %.0.i.i, %i.ag
  %i.aj = or i32 %i.ai, %i.ah
  %i.ak = or disjoint i32 %i.aj, 15
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.an = load i8, ptr %i.am, align 2, !tbaa !25
  %i.ao = zext i8 %i.an to i32
  %i.ap = load i16, ptr %i.al, align 8, !tbaa !25
  %i.aq = sext i16 %i.ap to i32
  %i.ar = tail call fastcc i32 @luaK_exp2K(ptr noundef %0, ptr noundef %2)
  %.not.i.i30 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i30, label %bb.i, label %codeABRK.exit32

bb.i:                                             ; preds = %bb.h
  %i.as = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %codeABRK.exit32

codeABRK.exit32:                                  ; preds = %bb.h, %bb.i
  %.0.i.i31 = phi i32 [ 0, %bb.i ], [ 32768, %bb.h ]
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !25
  %i.av = shl nuw nsw i32 %i.ao, 7
  %i.aw = shl nsw i32 %i.aq, 16
  %i.ax = or disjoint i32 %i.aw, %i.av
  %i.ay = shl i32 %i.au, 24
  %i.az = or disjoint i32 %.0.i.i31, %i.ax
  %i.ba = or i32 %i.az, %i.ay
  %i.bb = or disjoint i32 %i.ba, 17
  br label %.sink.split

bb.j:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !25
  %i.bf = zext i8 %i.be to i32
  %i.bg = load i16, ptr %i.bc, align 8, !tbaa !25
  %i.bh = sext i16 %i.bg to i32
  %i.bi = tail call fastcc i32 @luaK_exp2K(ptr noundef %0, ptr noundef %2)
  %.not.i.i33 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i33, label %bb.k, label %codeABRK.exit35

bb.k:                                             ; preds = %bb.j
  %i.bj = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2) ; 0 uses
  br label %codeABRK.exit35

codeABRK.exit35:                                  ; preds = %bb.j, %bb.k
  %.0.i.i34 = phi i32 [ 0, %bb.k ], [ 32768, %bb.j ]
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !25
  %i.bm = shl nuw nsw i32 %i.bf, 7
  %i.bn = shl nsw i32 %i.bh, 16
  %i.bo = or disjoint i32 %i.bn, %i.bm
  %i.bp = shl i32 %i.bl, 24
  %i.bq = or disjoint i32 %.0.i.i34, %i.bo
  %i.br = or i32 %i.bq, %i.bp
  %i.bs = or disjoint i32 %i.br, 18
  br label %.sink.split

bb.l:                                             ; preds = %bb.a
  %i.bt = load ptr, ptr %0, align 8, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 11 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !68
  %i.bw = or i8 %i.bv, 2
end_hunk_0
begin_hunk_1_@luaK_indexed:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23
  %.not.i.not.i = icmp eq i32 %i.bs, %i.bu
  br i1 %.not.i.not.i, label %isCint.exit, label %isCint.exit.thread

isCint.exit:                                      ; preds = %isKint.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !25 ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, 255
  br i1 %i.bx, label %isCint.exit.thread, label %bb.l

bb.l:                                             ; preds = %isCint.exit
  %i.by = trunc nuw nsw i64 %i.bw to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.by, ptr %i.bz, align 8, !tbaa !25
  br label %bb.m

isCint.exit.thread:                               ; preds = %bb.h, %bb.i, %bb.j, %isKstr.exit43, %isKint.exit.i, %isCint.exit
  %i.ca = call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %2)
  %i.cb = trunc i32 %i.ca to i16
  %i.cc = and i16 %i.cb, 255
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.cc, ptr %i.cd, align 8, !tbaa !25
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %isCint.exit.thread, %bb.l, %bb.e, %thread-pre-split.thread
  %.sink = phi i32 [ 18, %bb.k ], [ 14, %isCint.exit.thread ], [ 17, %bb.l ], [ 15, %bb.e ], [ 16, %thread-pre-split.thread ]
  %.05664 = phi i32 [ %.056, %bb.k ], [ %.056, %isCint.exit.thread ], [ %.056, %bb.l ], [ %.056, %bb.e ], [ %.05665, %thread-pre-split.thread ]
  store i32 %.sink, ptr %1, align 8, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.05664, ptr %i.ce, align 4, !tbaa !25
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 0, ptr %i.cf, align 1, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_prefix(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %2)
  switch i32 %1, label %codenot.exit [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 3, label %bb.c
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = add nuw nsw i32 %1, 12
  %i.b = tail call fastcc i32 @constfolding(ptr noundef %0, i32 noundef %i.a, ptr noundef %2, ptr noundef nonnull @luaK_prefix.ef)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %codenot.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = add nuw nsw i32 %1, 49
  %i.d = tail call i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2)
  %i.e = load i32, ptr %2, align 8, !tbaa !24
  %i.f = icmp eq i32 %i.e, 8
  br i1 %i.f, label %bb.d, label %codeunexpval.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.j = zext i8 %i.i to i32
  %.not.i.i.i = icmp slt i32 %i.h, %i.j
  br i1 %.not.i.i.i, label %codeunexpval.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !66
  %i.m = add i8 %i.l, -1
  store i8 %i.m, ptr %i.k, align 1, !tbaa !66
  br label %codeunexpval.exit

codeunexpval.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  %i.n = shl i32 %i.d, 16
  %i.o = or i32 %i.n, %i.c
  %i.p = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !25
  store i32 20, ptr %2, align 8, !tbaa !24
  tail call void @luaK_fixline(ptr noundef %0, i32 noundef %3)
  br label %codenot.exit

bb.f:                                             ; preds = %bb.a
  %i.r = load i32, ptr %2, align 8, !tbaa !24
  switch i32 %i.r, label %bb.o [
    i32 1, label %bb.g
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.h
    i32 6, label %bb.h
    i32 7, label %bb.h
    i32 2, label %bb.h
    i32 19, label %bb.i
    i32 8, label %discharge2anyreg.exit.thread.i
    i32 20, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  store i32 2, ptr %2, align 8, !tbaa !24
  br label %bb.o

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  store i32 3, ptr %2, align 8, !tbaa !24
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %.val.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.s = getelementptr i8, ptr %2, i64 8
  %.val21.i = load i32, ptr %i.s, align 8, !tbaa !25 ; 2 uses
  %i.t = getelementptr i8, ptr %.val.i, i64 64
  %.val.val.i = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.u = sext i32 %.val21.i to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.u ; 3 uses
  %i.w = icmp sgt i32 %.val21.i, 0
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !57   ; 2 uses
  %i.z = and i32 %i.y, 127
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25
  %i.ad = and i8 %i.ac, 16
  %.not.i.i.i11 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i11, label %bb.k, label %negatecondition.exit.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre.i.i = load i32, ptr %i.v, align 4, !tbaa !57
  br label %negatecondition.exit.i

negatecondition.exit.i:                           ; preds = %bb.k, %bb.j
  %i.ae = phi i32 [ %.pre.i.i, %bb.k ], [ %i.y, %bb.j ]
  %.0.i.i.i = phi ptr [ %i.v, %bb.k ], [ %i.x, %bb.j ]
  %i.af = xor i32 %i.ae, 32768
  store i32 %i.af, ptr %.0.i.i.i, align 4, !tbaa !57
  br label %bb.o

bb.l:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !66  ; 3 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !67
  %.not5.i.i = icmp ult i8 %i.ah, %i.ak
  br i1 %.not5.i.i, label %discharge2anyreg.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = zext i8 %i.ah to i32
  %i.am = add nuw nsw i32 %i.al, 1                ; 2 uses
  tail call void @luaY_checklimit(ptr noundef nonnull %0, i32 noundef %i.am, i32 noundef 255, ptr noundef nonnull @.str.2) #11
  %i.an = trunc i32 %i.am to i8
  %i.ao = load ptr, ptr %0, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i8 %i.an, ptr %i.ap, align 4, !tbaa !67
  %.pre.i.i.i = load i8, ptr %i.ag, align 1, !tbaa !66
  br label %discharge2anyreg.exit.i

discharge2anyreg.exit.i:                          ; preds = %bb.m, %bb.l
  %i.aq = phi i8 [ %i.ah, %bb.l ], [ %.pre.i.i.i, %bb.m ]
  %i.ar = add i8 %i.aq, 1                         ; 2 uses
  store i8 %i.ar, ptr %i.ag, align 1, !tbaa !66
  %i.as = zext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -1
  tail call fastcc void @discharge2reg(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.at)
  %.pre.i = load i32, ptr %2, align 8, !tbaa !24
  %i.au = icmp eq i32 %.pre.i, 8
  br i1 %i.au, label %discharge2anyreg.exit.thread.i, label %freeexp.exit.i

discharge2anyreg.exit.thread.i:                   ; preds = %discharge2anyreg.exit.i, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !25
  %i.ax = tail call zeroext i8 @luaY_nvarstack(ptr noundef %0) #11
  %i.ay = zext i8 %i.ax to i32
  %.not.i.i22.i = icmp slt i32 %i.aw, %i.ay
  br i1 %.not.i.i22.i, label %freeexp.exit.i, label %bb.n

bb.n:                                             ; preds = %discharge2anyreg.exit.thread.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !66
  %i.bb = add i8 %i.ba, -1
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !66
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.n, %discharge2anyreg.exit.thread.i, %discharge2anyreg.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %i.be = shl i32 %i.bd, 16
  %i.bf = or disjoint i32 %i.be, 51
  %i.bg = tail call range(i32 -2147483648, 2147483647) i32 @luaK_code(ptr noundef %0, i32 noundef %i.bf)
  store i32 %i.bg, ptr %i.bc, align 8, !tbaa !25
  store i32 20, ptr %2, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %freeexp.exit.i, %negatecondition.exit.i, %bb.h, %bb.g, %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !23
  %4 = freeze i32 %i.bi                           ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !22
  %5 = freeze i32 %i.bk                           ; 3 uses
  %6 = zext i32 %4 to i64
  %7 = zext i32 %5 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or disjoint i64 %8, %6
  store i64 %9, ptr %i.bj, align 8
  %.not6.i.i = icmp eq i32 %5, -1
  br i1 %.not6.i.i, label %removevalues.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %.val4.i.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.bl = getelementptr i8, ptr %.val4.i.i, i64 64
  %.val4.val.i.i = load ptr, ptr %i.bl, align 8, !tbaa !56
  br label %bb.p

bb.p:                                             ; preds = %patchtestreg.exit.i.i, %.lr.ph.i.i
  %.07.i.i = phi i32 [ %5, %.lr.ph.i.i ], [ %i.ch, %patchtestreg.exit.i.i ] ; 3 uses
  %i.bm = sext i32 %.07.i.i to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %.val4.val.i.i, i64 %i.bm ; 4 uses
  %i.bo = icmp sgt i32 %.07.i.i, 0
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !57 ; 2 uses
  %i.br = and i32 %i.bq, 127
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !25
  %i.bv = and i8 %i.bu, 16
  %.not.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %getjumpcontrol.exit.i.i.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre.i.i23.i = load i32, ptr %i.bn, align 4, !tbaa !57
  br label %getjumpcontrol.exit.i.i.i

getjumpcontrol.exit.i.i.i:                        ; preds = %bb.r, %bb.q
  %i.bw = phi i32 [ %.pre.i.i23.i, %bb.r ], [ %i.bq, %bb.q ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.bp, %bb.q ]
  %i.bx = and i32 %i.bw, 127
  %.not.i.i24.i = icmp eq i32 %i.bx, 67
  br i1 %.not.i.i24.i, label %bb.s, label %patchtestreg.exit.i.i

bb.s:                                             ; preds = %getjumpcontrol.exit.i.i.i
  %i.by = lshr i32 %i.bw, 9
  %i.bz = and i32 %i.by, 32640
  %i.ca = and i32 %i.bw, 32834
  %i.cb = or disjoint i32 %i.bz, %i.ca
  store i32 %i.cb, ptr %.0.i.i.i.i, align 4, !tbaa !57
  br label %patchtestreg.exit.i.i

patchtestreg.exit.i.i:                            ; preds = %bb.s, %getjumpcontrol.exit.i.i.i
  %i.cc = load i32, ptr %i.bn, align 4, !tbaa !57
  %i.cd = lshr i32 %i.cc, 7
  %i.ce = add nsw i32 %i.cd, -16777215            ; 2 uses
  %i.cf = icmp eq i32 %i.ce, -1
  %i.cg = add nuw nsw i32 %.07.i.i, 1
  %i.ch = add nsw i32 %i.cg, %i.ce                ; 2 uses
  %.not8.i.i = icmp eq i32 %i.ch, -1
  %.not.i25.i = select i1 %i.cf, i1 true, i1 %.not8.i.i
  br i1 %.not.i25.i, label %removevalues.exitthread-pre-split.i, label %bb.p

removevalues.exitthread-pre-split.i:              ; preds = %patchtestreg.exit.i.i
  %.pr.i = load i32, ptr %i.bj, align 8, !tbaa !22
  br label %removevalues.exit.i

removevalues.exit.i:                              ; preds = %removevalues.exitthread-pre-split.i, %bb.o
  %i.ci = phi i32 [ %.pr.i, %removevalues.exitthread-pre-split.i ], [ %4, %bb.o ] ; 2 uses
  %.not6.i26.i = icmp eq i32 %i.ci, -1
  br i1 %.not6.i26.i, label %codenot.exit, label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %removevalues.exit.i
  %.val4.i28.i = load ptr, ptr %0, align 8, !tbaa !47
  %i.cj = getelementptr i8, ptr %.val4.i28.i, i64 64
  %.val4.val.i29.i = load ptr, ptr %i.cj, align 8, !tbaa !56
  br label %bb.t

bb.t:                                             ; preds = %patchtestreg.exit.i35.i, %.lr.ph.i27.i
  %.07.i30.i = phi i32 [ %i.ci, %.lr.ph.i27.i ], [ %i.df, %patchtestreg.exit.i35.i ] ; 3 uses
  %i.ck = sext i32 %.07.i30.i to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %.val4.val.i29.i, i64 %i.ck ; 4 uses
  %i.cm = icmp sgt i32 %.07.i30.i, 0
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -4 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !57 ; 2 uses
  %i.cp = and i32 %i.co, 127
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @luaP_opmodes, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !25
  %i.ct = and i8 %i.cs, 16
  %.not.i.i.i38.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i38.i, label %bb.v, label %getjumpcontrol.exit.i.i32.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre.i.i31.i = load i32, ptr %i.cl, align 4, !tbaa !57
  br label %getjumpcontrol.exit.i.i32.i

getjumpcontrol.exit.i.i32.i:                      ; preds = %bb.v, %bb.u
  %i.cu = phi i32 [ %.pre.i.i31.i, %bb.v ], [ %i.co, %bb.u ] ; 3 uses
  %.0.i.i.i33.i = phi ptr [ %i.cl, %bb.v ], [ %i.cn, %bb.u ]
  %i.cv = and i32 %i.cu, 127
  %.not.i.i34.i = icmp eq i32 %i.cv, 67
  br i1 %.not.i.i34.i, label %bb.w, label %patchtestreg.exit.i35.i

bb.w:                                             ; preds = %getjumpcontrol.exit.i.i32.i
  %i.cw = lshr i32 %i.cu, 9
  %i.cx = and i32 %i.cw, 32640
  %i.cy = and i32 %i.cu, 32834
  %i.cz = or disjoint i32 %i.cx, %i.cy
  store i32 %i.cz, ptr %.0.i.i.i33.i, align 4, !tbaa !57
  br label %patchtestreg.exit.i35.i

patchtestreg.exit.i35.i:                          ; preds = %bb.w, %getjumpcontrol.exit.i.i32.i
  %i.da = load i32, ptr %i.cl, align 4, !tbaa !57
  %i.db = lshr i32 %i.da, 7
  %i.dc = add nsw i32 %i.db, -16777215            ; 2 uses
  %i.dd = icmp eq i32 %i.dc, -1
  %i.de = add nuw nsw i32 %.07.i30.i, 1
  %i.df = add nsw i32 %i.de, %i.dc                ; 2 uses
  %.not8.i36.i = icmp eq i32 %i.df, -1
  %.not.i37.i = select i1 %i.dd, i1 true, i1 %.not8.i36.i
  br i1 %.not.i37.i, label %codenot.exit, label %bb.t

codenot.exit:                                     ; preds = %patchtestreg.exit.i35.i, %removevalues.exit.i, %bb.a, %bb.b, %codeunexpval.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @constfolding(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.TValue, align 8             ; 6 uses
  %5 = alloca %struct.TValue, align 8             ; 6 uses
  %6 = alloca %struct.TValue, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23
  %.not.i = icmp eq i32 %i.c, %i.e
  br i1 %.not.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %2, align 8, !tbaa !24
  switch i32 %i.f, label %.critedge [
    i32 6, label %bb.d
    i32 5, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink.i = phi i8 [ 19, %bb.c ], [ 3, %bb.b ]
  %storemerge.i.in = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %storemerge.i = load double, ptr %storemerge.i.in, align 8, !tbaa !25
  store double %storemerge.i, ptr %4, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %.sink.i, ptr %i.g, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23
  %.not.i19 = icmp eq i32 %i.i, %i.k
  br i1 %.not.i19, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %3, align 8, !tbaa !24
  switch i32 %i.l, label %.critedge [
    i32 6, label %bb.g
    i32 5, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.m = phi i1 [ false, %bb.f ], [ true, %bb.e ]
  %i.n = phi i8 [ 19, %bb.f ], [ 3, %bb.e ]
  %storemerge.i22.in = getelementptr inbounds nuw i8, ptr %3, i64 8
  %storemerge.i22 = load double, ptr %storemerge.i22.in, align 8, !tbaa !25 ; 3 uses
  store double %storemerge.i22, ptr %5, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %i.n, ptr %i.o, align 8, !tbaa !44
  switch i32 %1, label %validop.exit.thread [
    i32 7, label %bb.h
    i32 8, label %bb.h
    i32 9, label %bb.h
    i32 10, label %bb.h
    i32 11, label %bb.h
    i32 13, label %bb.h
    i32 5, label %.split
    i32 6, label %.split
    i32 3, label %.split
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.p = call i32 @luaV_tointegerns(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 0) #11
  %.not.i26 = icmp eq i32 %i.p, 0
  br i1 %.not.i26, label %validop.exit.thread33, label %validop.exit

validop.exit.thread33:                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.critedge

.split:                                           ; preds = %bb.g, %bb.g, %bb.g
  %i.q = bitcast double %storemerge.i22 to i64
  %i.r = sitofp i64 %i.q to double
  %i.s = select i1 %i.m, double %i.r, double %storemerge.i22
  %i.t = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.t, label %.critedge, label %validop.exit.thread

validop.exit:                                     ; preds = %bb.h
  %i.u = call i32 @luaV_tointegerns(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i32 noundef 0) #11
  %.not = icmp eq i32 %i.u, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %.not, label %.critedge, label %validop.exit.thread

validop.exit.thread:                              ; preds = %.split, %bb.g, %validop.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = call i32 @luaO_rawarith(ptr noundef %i.y, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #11 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !44
  %i.ac = icmp eq i8 %i.ab, 3
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %validop.exit.thread
  store i32 6, ptr %2, align 8, !tbaa !24
  %i.ad = load i64, ptr %6, align 8, !tbaa !25
  store i64 %i.ad, ptr %storemerge.i.in, align 8, !tbaa !25
  br label %.critedge

bb.j:                                             ; preds = %validop.exit.thread
  %i.ae = load double, ptr %6, align 8, !tbaa !25 ; 2 uses
  %or.cond = fcmp ueq double %i.ae, 0.000000e+00
  br i1 %or.cond, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 5, ptr %2, align 8, !tbaa !24
  store double %i.ae, ptr %storemerge.i.in, align 8, !tbaa !25
  br label %.critedge

.critedge:                                        ; preds = %validop.exit.thread33, %.split, %bb.d, %bb.e, %bb.a, %bb.b, %bb.i, %bb.k, %bb.j, %validop.exit
  %.1 = phi i32 [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %validop.exit ], [ 0, %bb.a ], [ 1, %bb.k ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %.split ], [ 0, %validop.exit.thread33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @luaK_infix(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @luaK_dischargevars(ptr noundef %0, ptr noundef %2)
  switch i32 %1, label %tonumeral.exit [
    i32 19, label %bb.b
    i32 20, label %bb.c
    i32 12, label %bb.l
    i32 0, label %bb.p
end_hunk_1
