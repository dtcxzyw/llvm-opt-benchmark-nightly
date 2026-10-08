Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lparser?download=true
inline.NumInlined: 267
inline.NumDeleted: 76
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@singlevaraux:bb.a
  %.val.val.i34 = load ptr, ptr %i.dc, align 8, !tbaa !48
  %.val.val.val.i35 = load ptr, ptr %.val.val.i34, align 8, !tbaa !54
  %i.dd = add nsw i32 %.val24.i, %i.cz
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [24 x i8], ptr %.val.val.val.i35, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 9
  br label %bb.x

bb.w:                                             ; preds = %allocupvalue.exit.i
  store i8 0, ptr %i.ct, align 8, !tbaa !92
  %i.dh = load i32, ptr %i.cu, align 8, !tbaa !55
  %i.di = trunc i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cp, i64 9
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !93
  %i.dk = load ptr, ptr %i.cq, align 8, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !88
  %i.dn = load i32, ptr %i.cu, align 8, !tbaa !55
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [16 x i8], ptr %i.dm, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.in.i = phi ptr [ %i.dg, %bb.v ], [ %i.dq, %bb.w ]
  %.sink.i31 = load i8, ptr %.sink.in.i, align 1, !tbaa !55
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  store i8 %.sink.i31, ptr %i.dr, align 2, !tbaa !94
  store ptr %1, ptr %i.cp, align 8, !tbaa !90
  %i.ds = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 9
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !57
  %i.dv = and i8 %i.du, 32
  %.not.i32 = icmp eq i8 %i.dv, 0
  br i1 %.not.i32, label %newupvalue.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !60
  %i.dy = and i8 %i.dx, 24
  %.not23.i = icmp eq i8 %i.dy, 0
  br i1 %.not23.i, label %newupvalue.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = load ptr, ptr %i.br, align 8, !tbaa !25
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !33
  tail call void @luaC_barrier_(ptr noundef %i.eb, ptr noundef nonnull %i.ds, ptr noundef nonnull %1) #10
  %.pre.i = load i8, ptr %i.bc, align 4, !tbaa !86
  br label %newupvalue.exit

newupvalue.exit:                                  ; preds = %bb.x, %bb.y, %bb.z
  %i.ec = phi i8 [ %i.cn, %bb.x ], [ %i.cn, %bb.y ], [ %.pre.i, %bb.z ]
  %i.ed = zext i8 %i.ec to i32
  %i.ee = add nsw i32 %i.ed, -1
  br label %.critedge

.critedge:                                        ; preds = %searchupvalue.exit, %newupvalue.exit
  %.025 = phi i32 [ %i.ee, %newupvalue.exit ], [ %i.bh, %searchupvalue.exit ]
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %i.ef, align 8, !tbaa !117
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 -1, ptr %i.eg, align 4, !tbaa !114
  store i32 12, ptr %2, align 8, !tbaa !113
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.025, ptr %i.eh, align 8, !tbaa !55
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.n, %markupval.exit, %bb.l, %.critedge, %bb.s
  ret void
}

; Function Attrs: noreturn
declare hidden void @luaK_semerror(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare hidden void @luaK_vapar2local(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 0) i32 @explist(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0), !inline_history !5 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !96
  %i.d = icmp eq i32 %i.c, 44
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.010 = phi i32 [ 1, %.lr.ph ], [ %i.h, %bb.b ]
  tail call void @luaX_next(ptr noundef nonnull %0) #10
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  tail call void @luaK_exp2nextreg(ptr noundef %i.f, ptr noundef nonnull %1) #10
  %i.g = tail call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0), !inline_history !5 ; 0 uses
  %i.h = add nuw nsw i32 %.010, 1                 ; 2 uses
  %i.i = load i32, ptr %i.b, align 8, !tbaa !96
  %i.j = icmp eq i32 %i.i, 44
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %.0.lcssa
}

declare hidden void @luaK_fixline(ptr noundef, i32 noundef) local_unnamed_addr #4

declare hidden i32 @luaK_getlabel(ptr noundef) local_unnamed_addr #4

declare hidden void @luaK_patchlist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @leaveblock(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !79   ; 4 uses
  %i.g = sext i16 %i.f to i32                     ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 64         ; 5 uses
  %i.i = getelementptr i8, ptr %i.d, i64 88       ; 3 uses
  %i.j = icmp sgt i16 %i.f, 0
  br i1 %i.j, label %.lr.ph.preheader, label %reglevel.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val8.i = load i32, ptr %i.h, align 8, !tbaa !47
  %.val.val.i = load ptr, ptr %i.i, align 8, !tbaa !48
  %.val.val.val.i = load ptr, ptr %.val.val.i, align 8, !tbaa !54
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.k = icmp sgt i32 %.06.i85, 1
  br i1 %i.k, label %.lr.ph, label %reglevel.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.06.i85 = phi i32 [ %i.l, %bb.b ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %i.l = add nsw i32 %.06.i85, -1                 ; 2 uses
  %i.m = add nsw i32 %.val8.i, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [24 x i8], ptr %.val.val.val.i, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !55
  %i.r = icmp ult i8 %i.q, 4
  br i1 %i.r, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.t = load i8, ptr %i.s, align 2, !tbaa !55
  %i.u = add i8 %i.t, 1
  br label %reglevel.exit

reglevel.exit:                                    ; preds = %bb.b, %bb.a, %.thread.i
  %.2.i = phi i8 [ %i.u, %.thread.i ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !84
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %reglevel.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.x = load i8, ptr %i.w, align 2, !tbaa !82
  %.not24 = icmp eq i8 %i.x, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = zext i8 %.2.i to i32
  %i.z = tail call i32 @luaK_codeABCk(ptr noundef nonnull %0, i32 noundef 54, i32 noundef %i.y, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10 ; 0 uses
  %.pre = load i16, ptr %i.e, align 8, !tbaa !79  ; 2 uses
  %.pre50 = load ptr, ptr %i.c, align 8, !tbaa !25
  %.pre54 = sext i16 %.pre to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %reglevel.exit
  %.pre-phi = phi i32 [ %.pre54, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %reglevel.exit ] ; 3 uses
  %i.aa = phi ptr [ %.pre50, %bb.d ], [ %i.d, %bb.c ], [ %i.d, %reglevel.exit ] ; 2 uses
  %i.ab = phi i16 [ %.pre, %bb.d ], [ %i.f, %bb.c ], [ %i.f, %reglevel.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 77
  store i8 %.2.i, ptr %i.ac, align 1, !tbaa !115
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !46 ; 3 uses
  %i.af = sext i16 %i.ae to i32
  %.neg.i = sub nsw i32 %.pre-phi, %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !63
  %i.ak = add i32 %.neg.i, %i.aj
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !63
  %i.al = icmp slt i16 %i.ab, %i.ae
  br i1 %i.al, label %.lr.ph.i, label %removevars.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.val6.i.i = load i32, ptr %i.h, align 8, !tbaa !47
  %.val.val.val.i.i = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = sext i16 %i.ae to i64
  %i.ao = sext i32 %.val6.i.i to i64
  %i.ap = sext i32 %.pre-phi to i64
  br label %bb.f

bb.f:                                             ; preds = %localdebuginfo.exit.thread.i, %.lr.ph.i
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %localdebuginfo.exit.thread.i ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, -1 ; 3 uses
  %i.aq = trunc nsw i64 %indvars.iv.next47 to i16
  store i16 %i.aq, ptr %i.ad, align 2, !tbaa !46
  %1 = getelementptr [24 x i8], ptr %.val.val.val.i.i, i64 %indvars.iv46
  %2 = getelementptr i8, ptr %1, i64 -24
  %gep = getelementptr [24 x i8], ptr %2, i64 %i.ao ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %gep, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !55
  %i.at = icmp ult i8 %i.as, 4
  br i1 %i.at, label %localdebuginfo.exit.i, label %localdebuginfo.exit.thread.i

localdebuginfo.exit.i:                            ; preds = %bb.f
  %i.au = load ptr, ptr %0, align 8, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %localdebuginfo.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %localdebuginfo.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %gep, i64 12
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !55
  %i.az = sext i16 %i.ay to i64
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.az
  %i.bb = load i32, ptr %i.am, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !214
  br label %localdebuginfo.exit.thread.i

localdebuginfo.exit.thread.i:                     ; preds = %bb.g, %localdebuginfo.exit.i, %bb.f
  %i.bd = icmp sgt i64 %indvars.iv.next47, %i.ap
  br i1 %i.bd, label %bb.f, label %removevars.exit

removevars.exit:                                  ; preds = %localdebuginfo.exit.thread.i, %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 19
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !78
  %i.bg = icmp eq i8 %i.bf, 2
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %removevars.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !132
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !64
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !48  ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.bn = tail call i32 @luaK_getlabel(ptr noundef %i.bk) #10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !126 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !33
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !127
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  %i.bu = tail call ptr @luaM_growaux_(ptr noundef %i.br, ptr noundef %i.bs, i32 noundef %i.bp, ptr noundef nonnull %i.bt, i32 noundef 24, i32 noundef 32767, ptr noundef nonnull @.str.17) #10 ; 2 uses
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !127
  %i.bv = sext i32 %i.bp to i64
  %i.bw = getelementptr inbounds [24 x i8], ptr %i.bu, i64 %i.bv ; 5 uses
  store ptr %i.bi, ptr %i.bw, align 8, !tbaa !122
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !125
  %i.by = load ptr, ptr %i.bj, align 8, !tbaa !64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 74
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i16 %i.ca, ptr %i.cb, align 8, !tbaa !128
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 18
  store i8 0, ptr %i.cc, align 2, !tbaa !129
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %i.bn, ptr %i.cd, align 8, !tbaa !130
  %i.ce = add nsw i32 %i.bp, 1
  store i32 %i.ce, ptr %i.bo, align 8, !tbaa !126
  %.pre51 = load ptr, ptr %i.c, align 8, !tbaa !25 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre51, i64 88
  %.pre52 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  %.pre53 = load i16, ptr %i.e, align 8, !tbaa !79 ; 2 uses
  %.pre55 = sext i16 %.pre53 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %removevars.exit
  %.pre-phi56 = phi i32 [ %.pre55, %bb.h ], [ %.pre-phi, %removevars.exit ] ; 2 uses
  %i.cf = phi i16 [ %.pre53, %bb.h ], [ %i.ab, %removevars.exit ] ; 10 uses
  %i.cg = phi ptr [ %.pre52, %bb.h ], [ %i.ah, %removevars.exit ] ; 9 uses
  %i.ch = phi ptr [ %.pre51, %bb.h ], [ %i.aa, %removevars.exit ] ; 3 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 88     ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.ck = icmp sgt i32 %.pre-phi56, 0
  br i1 %i.ck, label %.lr.ph87.preheader, label %reglevel.exit.i

.lr.ph87.preheader:                               ; preds = %bb.i
  %.val8.i.i = load i32, ptr %i.h, align 8, !tbaa !47
  %.val.val.val.i.i27 = load ptr, ptr %i.cg, align 8, !tbaa !54
  br label %.lr.ph87

bb.j:                                             ; preds = %.lr.ph87
  %i.cl = icmp sgt i32 %.06.i.i86, 1
  br i1 %i.cl, label %.lr.ph87, label %reglevel.exit.i

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %bb.j
  %.06.i.i86 = phi i32 [ %i.cm, %bb.j ], [ %.pre-phi56, %.lr.ph87.preheader ] ; 2 uses
  %i.cm = add nsw i32 %.06.i.i86, -1              ; 2 uses
  %i.cn = add nsw i32 %.val8.i.i, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [24 x i8], ptr %.val.val.val.i.i27, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 9
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !55
  %i.cs = icmp ult i8 %i.cr, 4
  br i1 %i.cs, label %.thread.i.i, label %bb.j

.thread.i.i:                                      ; preds = %.lr.ph87
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !55
  %i.cv = add i8 %i.cu, 1
  br label %reglevel.exit.i

reglevel.exit.i:                                  ; preds = %bb.j, %bb.i, %.thread.i.i
  %.2.i.i = phi i8 [ %i.cv, %.thread.i.i ], [ 0, %bb.i ], [ 0, %bb.j ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !81 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !126 ; 3 uses
  %i.da = icmp slt i32 %i.cx, %i.cz
  br i1 %i.da, label %.lr.ph.i25, label %solvegotos.exit

.lr.ph.i25:                                       ; preds = %reglevel.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 18 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.de = load i32, ptr %i.db, align 8, !tbaa !80
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !61
  %i.dh = icmp slt i32 %i.de, %i.dg
  br i1 %i.dh, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i25
  %i.di = load ptr, ptr %i.cj, align 8, !tbaa !127 ; 10 uses
  %i.dj = load i8, ptr %i.dc, align 2, !tbaa !82
  %.not27.us.i = icmp eq i8 %i.dj, 0
  %i.dk = sext i32 %i.cx to i64                   ; 5 uses
  %i.dl = sext i32 %i.cz to i64                   ; 4 uses
  br i1 %.not27.us.i, label %reglevel.exit40.thread.us.us.i.preheader, label %.lr.ph.split.us.split.i

reglevel.exit40.thread.us.us.i.preheader:         ; preds = %.lr.ph.split.us.i
  %i.dm = sub nsw i64 %i.dl, %i.dk
  %xtraiter = and i64 %i.dm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %reglevel.exit40.thread.us.us.i.prol.loopexit, label %reglevel.exit40.thread.us.us.i.prol

reglevel.exit40.thread.us.us.i.prol:              ; preds = %reglevel.exit40.thread.us.us.i.preheader, %reglevel.exit40.thread.us.us.i.prol
  %indvars.iv61.i.prol = phi i64 [ %indvars.iv.next62.i.prol, %reglevel.exit40.thread.us.us.i.prol ], [ %i.dk, %reglevel.exit40.thread.us.us.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %reglevel.exit40.thread.us.us.i.prol ], [ 0, %reglevel.exit40.thread.us.us.i.preheader ]
  %i.dn = getelementptr inbounds [24 x i8], ptr %i.di, i64 %indvars.iv61.i.prol
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i16 %i.cf, ptr %i.do, align 8, !tbaa !128
  %indvars.iv.next62.i.prol = add nsw i64 %indvars.iv61.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %reglevel.exit40.thread.us.us.i.prol.loopexit, label %reglevel.exit40.thread.us.us.i.prol, !llvm.loop !212

reglevel.exit40.thread.us.us.i.prol.loopexit:     ; preds = %reglevel.exit40.thread.us.us.i.prol, %reglevel.exit40.thread.us.us.i.preheader
  %indvars.iv61.i.unr = phi i64 [ %i.dk, %reglevel.exit40.thread.us.us.i.preheader ], [ %indvars.iv.next62.i.prol, %reglevel.exit40.thread.us.us.i.prol ]
  %i.dp = sub nsw i64 %i.dk, %i.dl
  %i.dq = icmp ugt i64 %i.dp, -8
  br i1 %i.dq, label %solvegotos.exit, label %reglevel.exit40.thread.us.us.i

reglevel.exit40.thread.us.us.i:                   ; preds = %reglevel.exit40.thread.us.us.i.prol.loopexit, %reglevel.exit40.thread.us.us.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i.7, %reglevel.exit40.thread.us.us.i ], [ %indvars.iv61.i.unr, %reglevel.exit40.thread.us.us.i.prol.loopexit ] ; 9 uses
  %i.dr = getelementptr inbounds [24 x i8], ptr %i.di, i64 %indvars.iv61.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i16 %i.cf, ptr %i.ds, align 8, !tbaa !128
  %i.dt = getelementptr [24 x i8], ptr %i.di, i64 %indvars.iv61.i
  %i.du = getelementptr i8, ptr %i.dt, i64 40
  store i16 %i.cf, ptr %i.du, align 8, !tbaa !128
  %i.dv = getelementptr [24 x i8], ptr %i.di, i64 %indvars.iv61.i
  %i.dw = getelementptr i8, ptr %i.dv, i64 64
  store i16 %i.cf, ptr %i.dw, align 8, !tbaa !128
  %i.dx = getelementptr [24 x i8], ptr %i.di, i64 %indvars.iv61.i
  %i.dy = getelementptr i8, ptr %i.dx, i64 88
  store i16 %i.cf, ptr %i.dy, align 8, !tbaa !128
  %i.dz = getelementptr [24 x i8], ptr %i.di, i64 %indvars.iv61.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 112
  store i16 %i.cf, ptr %i.ea, align 8, !tbaa !128
  %i.eb = getelementptr [24 x i8], ptr %i.di, i64 %indvars.iv61.i
  %i.ec = getelementptr i8, ptr %i.eb, i64 136
  store i16 %i.cf, ptr %i.ec, align 8, !tbaa !128
  %i.ed = getelementptr [24 x i8], ptr %i.di, i64 %indvars.iv61.i
  %i.ee = getelementptr i8, ptr %i.ed, i64 160
  store i16 %i.cf, ptr %i.ee, align 8, !tbaa !128
  %i.ef = getelementptr [24 x i8], ptr %i.di, i64 %indvars.iv61.i
  %i.eg = getelementptr i8, ptr %i.ef, i64 184
  store i16 %i.cf, ptr %i.eg, align 8, !tbaa !128
  %indvars.iv.next62.i.7 = add nsw i64 %indvars.iv61.i, 8 ; 2 uses
  %exitcond49.not.7 = icmp eq i64 %indvars.iv.next62.i.7, %i.dl
  br i1 %exitcond49.not.7, label %solvegotos.exit, label %reglevel.exit40.thread.us.us.i

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.split.us.i, %reglevel.exit40.thread.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %reglevel.exit40.thread.us.i ], [ %i.dk, %.lr.ph.split.us.i ] ; 2 uses
  %i.eh = getelementptr inbounds [24 x i8], ptr %i.di, i64 %indvars.iv.i ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %i.ej = load i16, ptr %i.ei, align 8, !tbaa !128 ; 2 uses
  %i.ek = icmp sgt i16 %i.ej, 0
  br i1 %i.ek, label %.lr.ph89, label %reglevel.exit40.thread.us.i

.lr.ph89:                                         ; preds = %.lr.ph.split.us.split.i
  %i.el = zext nneg i16 %i.ej to i32
  %.val8.i36.us.i = load i32, ptr %i.h, align 8, !tbaa !47
  %.val.val.val.i38.us.i = load ptr, ptr %i.cg, align 8, !tbaa !54
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.em = icmp sgt i32 %.06.i33.us.i88, 1
  br i1 %i.em, label %bb.l, label %reglevel.exit40.thread.us.i

bb.l:                                             ; preds = %.lr.ph89, %bb.k
  %.06.i33.us.i88 = phi i32 [ %i.el, %.lr.ph89 ], [ %i.en, %bb.k ] ; 2 uses
  %i.en = add nsw i32 %.06.i33.us.i88, -1         ; 2 uses
  %i.eo = add nsw i32 %.val8.i36.us.i, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [24 x i8], ptr %.val.val.val.i38.us.i, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 9
  %i.es = load i8, ptr %i.er, align 1, !tbaa !55
  %i.et = icmp ult i8 %i.es, 4
  br i1 %i.et, label %reglevel.exit40.us.i, label %bb.k

reglevel.exit40.us.i:                             ; preds = %bb.l
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 10
  %i.ev = load i8, ptr %i.eu, align 2, !tbaa !55
  %i.ew = add i8 %i.ev, 1
  %i.ex = icmp ugt i8 %i.ew, %.2.i.i
  br i1 %i.ex, label %bb.m, label %reglevel.exit40.thread.us.i

bb.m:                                             ; preds = %reglevel.exit40.us.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eh, i64 18
  store i8 1, ptr %i.ey, align 2, !tbaa !129
  br label %reglevel.exit40.thread.us.i

reglevel.exit40.thread.us.i:                      ; preds = %bb.k, %.lr.ph.split.us.split.i, %bb.m, %reglevel.exit40.us.i
  store i16 %i.cf, ptr %i.ei, align 8, !tbaa !128
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.dl
  br i1 %exitcond.not, label %solvegotos.exit, label %.lr.ph.split.us.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i25, %bb.aa
  %i.ez = phi i32 [ %i.ir, %bb.aa ], [ %i.cz, %.lr.ph.i25 ]
  %.050.i = phi i32 [ %.1.i, %bb.aa ], [ %i.cx, %.lr.ph.i25 ] ; 4 uses
  %i.fa = load ptr, ptr %i.cj, align 8, !tbaa !127
  %i.fb = sext i32 %.050.i to i64                 ; 3 uses
  %i.fc = getelementptr inbounds [24 x i8], ptr %i.fa, i64 %i.fb ; 4 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !122
  %i.fe = load i32, ptr %i.db, align 8, !tbaa !80 ; 2 uses
  %.val.i26 = load ptr, ptr %i.ci, align 8, !tbaa !48 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.val.i26, i64 40
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !61 ; 2 uses
  %i.fh = icmp slt i32 %i.fe, %i.fg
  br i1 %i.fh, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.val.i26, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !120
  %i.fk = sext i32 %i.fe to i64
  %wide.trip.count.i.i = sext i32 %i.fg to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.fk, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 2 uses
  %i.fl = getelementptr inbounds [24 x i8], ptr %i.fj, i64 %indvars.iv.i.i ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !122
  %.not.i.i = icmp eq ptr %i.fm, %i.fd
  br i1 %.not.i.i, label %findlabel.exit.i, label %bb.n

findlabel.exit.i:                                 ; preds = %bb.o
  %i.fn = load i8, ptr %i.dc, align 2, !tbaa !82
  %i.fo = load ptr, ptr %i.dd, align 8, !tbaa !64 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.i26, i64 16 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !127
  %i.fr = getelementptr inbounds [24 x i8], ptr %i.fq, i64 %i.fb ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load i16, ptr %i.fs, align 8, !tbaa !128 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fv = load i16, ptr %i.fu, align 8, !tbaa !128 ; 4 uses
  %i.fw = icmp slt i16 %i.ft, %i.fv
  br i1 %i.fw, label %bb.p, label %bb.q, !prof !16

bb.p:                                             ; preds = %findlabel.exit.i
  tail call fastcc void @jumpscopeerror(ptr noundef nonnull %i.ch, ptr noundef nonnull %i.fr) #9
  unreachable

bb.q:                                             ; preds = %findlabel.exit.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 18
  %i.fy = load i8, ptr %i.fx, align 2, !tbaa !129
  %.not.i29.i = icmp eq i8 %i.fy, 0
  br i1 %.not.i29.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fz = icmp slt i16 %i.fv, %i.ft
  %i.ga = icmp ne i8 %i.fn, 0
  %or.cond.i.i = and i1 %i.ga, %i.fz
  br i1 %or.cond.i.i, label %bb.s, label %._crit_edge42.i.i

._crit_edge42.i.i:                                ; preds = %bb.r
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !130
  br label %bb.v

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gb = getelementptr i8, ptr %i.fo, i64 16
  %i.gc = getelementptr i8, ptr %i.fo, i64 64
  %i.gd = icmp sgt i16 %i.fv, 0
  br i1 %i.gd, label %.lr.ph93, label %reglevel.exit.i.i

.lr.ph93:                                         ; preds = %bb.s
  %i.ge = zext nneg i16 %i.fv to i32
  %.val.i.i.i = load ptr, ptr %i.gb, align 8, !tbaa !25
  %.val8.i.i.i = load i32, ptr %i.gc, align 8, !tbaa !47
  %i.gf = getelementptr i8, ptr %.val.i.i.i, i64 88
  %.val.val.i.i.i = load ptr, ptr %i.gf, align 8, !tbaa !48
  %.val.val.val.i.i.i = load ptr, ptr %.val.val.i.i.i, align 8, !tbaa !54
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %i.gg = icmp sgt i32 %.06.i.i.i92, 1
  br i1 %i.gg, label %bb.u, label %reglevel.exit.i.i

bb.u:                                             ; preds = %.lr.ph93, %bb.t
  %.06.i.i.i92 = phi i32 [ %i.ge, %.lr.ph93 ], [ %i.gh, %bb.t ] ; 2 uses
  %i.gh = add nsw i32 %.06.i.i.i92, -1            ; 2 uses
  %i.gi = add nsw i32 %.val8.i.i.i, %i.gh
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [24 x i8], ptr %.val.val.val.i.i.i, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 9
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !55
  %i.gn = icmp ult i8 %i.gm, 4
  br i1 %i.gn, label %.thread.i.i.i, label %bb.t

.thread.i.i.i:                                    ; preds = %bb.u
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 10
  %i.gp = load i8, ptr %i.go, align 2, !tbaa !55
  %i.gq = add i8 %i.gp, 1
  %i.gr = zext i8 %i.gq to i32
  %i.gs = shl nuw nsw i32 %i.gr, 7
  %i.gt = or disjoint i32 %i.gs, 54
  br label %reglevel.exit.i.i

reglevel.exit.i.i:                                ; preds = %bb.t, %bb.s, %.thread.i.i.i
  %.2.i.i.i = phi i32 [ %i.gt, %.thread.i.i.i ], [ 54, %bb.s ], [ 54, %bb.t ]
  %i.gu = load ptr, ptr %i.fo, align 8, !tbaa !34
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 64
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !97 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 4 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !130
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.gz ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !111
  %i.hc = getelementptr i8, ptr %i.ha, i64 4
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !111
  %i.hd = load i32, ptr %i.gx, align 8, !tbaa !130
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.he
  store i32 %.2.i.i.i, ptr %i.hf, align 4, !tbaa !111
  %i.hg = load i32, ptr %i.gx, align 8, !tbaa !130
  %i.hh = add nsw i32 %i.hg, 1                    ; 2 uses
  store i32 %i.hh, ptr %i.gx, align 8, !tbaa !130
  br label %bb.v

bb.v:                                             ; preds = %reglevel.exit.i.i, %._crit_edge42.i.i
  %i.hi = phi i32 [ %.pre.i.i, %._crit_edge42.i.i ], [ %i.hh, %reglevel.exit.i.i ]
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !130
  tail call void @luaK_patchlist(ptr noundef %i.fo, i32 noundef %i.hi, i32 noundef %i.hk) #10
  %i.hl = getelementptr inbounds nuw i8, ptr %.val.i26, i64 24 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !126
  %i.hn = add nsw i32 %i.hm, -1                   ; 2 uses
  %i.ho = icmp slt i32 %.050.i, %i.hn
  br i1 %i.ho, label %.lr.ph.i30.i, label %closegoto.exit.i

.lr.ph.i30.i:                                     ; preds = %bb.v, %.lr.ph.i30.i
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i32.i, %.lr.ph.i30.i ], [ %i.fb, %bb.v ] ; 2 uses
  %i.hp = load ptr, ptr %i.fp, align 8, !tbaa !127
  %i.hq = getelementptr inbounds [24 x i8], ptr %i.hp, i64 %indvars.iv.i31.i ; 2 uses
  %indvars.iv.next.i32.i = add nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %3 = getelementptr i8, ptr %i.hq, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !217
  %i.hr = load i32, ptr %i.hl, align 8, !tbaa !126
  %i.hs = add nsw i32 %i.hr, -1                   ; 2 uses
  %i.ht = sext i32 %i.hs to i64
  %i.hu = icmp slt i64 %indvars.iv.next.i32.i, %i.ht
  br i1 %i.hu, label %.lr.ph.i30.i, label %closegoto.exit.i

closegoto.exit.i:                                 ; preds = %.lr.ph.i30.i, %bb.v
  %.lcssa.i.i = phi i32 [ %i.hn, %bb.v ], [ %i.hs, %.lr.ph.i30.i ]
  store i32 %.lcssa.i.i, ptr %i.hl, align 8, !tbaa !126
  %.pre.i = load i32, ptr %i.cy, align 8, !tbaa !126
  br label %bb.aa

.loopexit.i:                                      ; preds = %bb.n, %.lr.ph.split.i
  %i.hv = load i8, ptr %i.dc, align 2, !tbaa !82
  %.not27.i = icmp eq i8 %i.hv, 0
  br i1 %.not27.i, label %reglevel.exit40.thread.i, label %bb.w

bb.w:                                             ; preds = %.loopexit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.hx = load i16, ptr %i.hw, align 8, !tbaa !128 ; 2 uses
  %i.hy = icmp sgt i16 %i.hx, 0
  br i1 %i.hy, label %.lr.ph91, label %reglevel.exit40.thread.i

.lr.ph91:                                         ; preds = %bb.w
  %i.hz = zext nneg i16 %i.hx to i32
  %.val.i35.i = load ptr, ptr %i.c, align 8, !tbaa !25
  %.val8.i36.i = load i32, ptr %i.h, align 8, !tbaa !47
  %i.ia = getelementptr i8, ptr %.val.i35.i, i64 88
  %.val.val.i37.i = load ptr, ptr %i.ia, align 8, !tbaa !48
  %.val.val.val.i38.i = load ptr, ptr %.val.val.i37.i, align 8, !tbaa !54
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %i.ib = icmp sgt i32 %.06.i33.i90, 1
  br i1 %i.ib, label %bb.y, label %reglevel.exit40.thread.i

bb.y:                                             ; preds = %.lr.ph91, %bb.x
  %.06.i33.i90 = phi i32 [ %i.hz, %.lr.ph91 ], [ %i.ic, %bb.x ] ; 2 uses
  %i.ic = add nsw i32 %.06.i33.i90, -1            ; 2 uses
  %i.id = add nsw i32 %.val8.i36.i, %i.ic
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [24 x i8], ptr %.val.val.val.i38.i, i64 %i.ie ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 9
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !55
  %i.ii = icmp ult i8 %i.ih, 4
  br i1 %i.ii, label %reglevel.exit40.i, label %bb.x

reglevel.exit40.i:                                ; preds = %bb.y
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 10
  %i.ik = load i8, ptr %i.ij, align 2, !tbaa !55
  %i.il = add i8 %i.ik, 1
  %i.im = icmp ugt i8 %i.il, %.2.i.i
  br i1 %i.im, label %bb.z, label %reglevel.exit40.thread.i

bb.z:                                             ; preds = %reglevel.exit40.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.fc, i64 18
  store i8 1, ptr %i.in, align 2, !tbaa !129
  br label %reglevel.exit40.thread.i

reglevel.exit40.thread.i:                         ; preds = %bb.x, %bb.w, %bb.z, %reglevel.exit40.i, %.loopexit.i
  %i.io = load i16, ptr %i.e, align 8, !tbaa !79
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i16 %i.io, ptr %i.ip, align 8, !tbaa !128
  %i.iq = add nsw i32 %.050.i, 1
  br label %bb.aa

bb.aa:                                            ; preds = %reglevel.exit40.thread.i, %closegoto.exit.i
  %i.ir = phi i32 [ %.pre.i, %closegoto.exit.i ], [ %i.ez, %reglevel.exit40.thread.i ] ; 2 uses
  %.1.i = phi i32 [ %.050.i, %closegoto.exit.i ], [ %i.iq, %reglevel.exit40.thread.i ] ; 2 uses
  %i.is = icmp slt i32 %.1.i, %i.ir
  br i1 %i.is, label %.lr.ph.split.i, label %._crit_edge.loopexit.i, !llvm.loop !213

._crit_edge.loopexit.i:                           ; preds = %bb.aa
  %.pre64.i = load ptr, ptr %i.ci, align 8, !tbaa !48
  br label %solvegotos.exit

solvegotos.exit:                                  ; preds = %reglevel.exit40.thread.us.i, %reglevel.exit40.thread.us.us.i.prol.loopexit, %reglevel.exit40.thread.us.us.i, %reglevel.exit.i, %._crit_edge.loopexit.i
  %i.it = phi ptr [ %i.cg, %reglevel.exit40.thread.us.us.i.prol.loopexit ], [ %i.cg, %reglevel.exit.i ], [ %.pre64.i, %._crit_edge.loopexit.i ], [ %i.cg, %reglevel.exit40.thread.us.us.i ], [ %i.cg, %reglevel.exit40.thread.us.i ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !80
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  store i32 %i.iv, ptr %i.iw, align 8, !tbaa !61
  %i.ix = load ptr, ptr %i.b, align 8, !tbaa !84  ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %solvegotos.exit
  %i.iz = load i32, ptr %i.cw, align 4, !tbaa !81 ; 2 uses
  %i.ja = load ptr, ptr %i.i, align 8, !tbaa !48  ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !62
  %i.jd = icmp slt i32 %i.iz, %i.jc
  br i1 %i.jd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !219
  %i.jg = sext i32 %i.iz to i64
  %i.jh = getelementptr inbounds [24 x i8], ptr %i.jf, i64 %i.jg
  tail call fastcc void @undefgoto(ptr noundef nonnull %i.d, ptr noundef %i.jh) #9
  unreachable

bb.ad:                                            ; preds = %bb.ab, %solvegotos.exit
  store ptr %i.ix, ptr %i.a, align 8, !tbaa !73
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @undefgoto(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !122    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.c = load i8, ptr %i.b, align 1, !tbaa !123
  %i.d = icmp sgt i8 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !125
  tail call void (ptr, ptr, ...) @luaK_semerror(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %i.g, i32 noundef %i.i) #11
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @jumpscopeerror(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !128
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr i8, ptr %i.b, i64 64
  %.val12 = load i32, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.h, align 8, !tbaa !48
  %.val.val.val = load ptr, ptr %.val.val, align 8, !tbaa !54
  %i.i = add nsw i32 %.val12, %i.e
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [24 x i8], ptr %.val.val.val, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 11
  %i.o = load i8, ptr %i.n, align 1, !tbaa !123
  %i.p = icmp sgt i8 %i.o, -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !124
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.s = phi ptr [ %i.r, %bb.c ], [ @.str.18, %bb.a ], [ %i.q, %bb.b ]
  %i.t = load ptr, ptr %1, align 8, !tbaa !122    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !123
  %i.w = icmp sgt i8 %i.v, -1
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.z = phi ptr [ %i.y, %bb.e ], [ %i.x, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !125
  tail call void (ptr, ptr, ...) @luaK_semerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.19, ptr noundef %i.z, i32 noundef %i.ab, ptr noundef %i.s) #11
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @error_expected(ptr noundef nonnull %0, i32 noundef range(i32 40, 293) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = tail call ptr @luaX_token2str(ptr noundef nonnull %0, i32 noundef %1) #10
  %i.d = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.b, ptr noundef nonnull @.str.22, ptr noundef %i.c) #10
  tail call void @luaX_syntaxerror(ptr noundef nonnull %0, ptr noundef %i.d) #11
  unreachable
}

declare hidden ptr @luaX_token2str(ptr noundef, i32 noundef) local_unnamed_addr #4

declare hidden void @luaK_int(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
end_hunk_0
