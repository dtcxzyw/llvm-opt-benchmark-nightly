Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec07?download=true
inline.NumInlined: 75
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0_@If_Dec7MinimumBase:bb.a
  %.not.i.us.peel140 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.us.peel140, label %If_Dec7HasVar.exit.us.peel141, label %If_Dec7HasVar.exit.thread.us.peel143

If_Dec7HasVar.exit.us.peel141:                    ; preds = %.lr.ph.split.us.peel.next128
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %i.dl = lshr i64 %i.dk, 16
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = and i64 %i.dm, 281470681808895
  %.not190 = icmp eq i64 %i.dn, 0
  br i1 %.not190, label %bb.o, label %If_Dec7HasVar.exit.thread.us.peel143

If_Dec7HasVar.exit.thread.us.peel143:             ; preds = %If_Dec7HasVar.exit.us.peel141, %.lr.ph.split.us.peel.next128
  %i.do = or i32 %.1.us.peel135, 16
  %i.dp = add nuw nsw i32 %.121.us.peel134, 1
  br label %bb.o

bb.o:                                             ; preds = %If_Dec7HasVar.exit.thread.us.peel143, %If_Dec7HasVar.exit.us.peel141
  %.121.us.peel144 = phi i32 [ %i.dp, %If_Dec7HasVar.exit.thread.us.peel143 ], [ %.121.us.peel134, %If_Dec7HasVar.exit.us.peel141 ] ; 3 uses
  %.1.us.peel145 = phi i32 [ %i.do, %If_Dec7HasVar.exit.thread.us.peel143 ], [ %.1.us.peel135, %If_Dec7HasVar.exit.us.peel141 ] ; 3 uses
  %exitcond107.peel147.not = icmp eq i32 %2, 5
  br i1 %exitcond107.peel147.not, label %._crit_edge, label %.lr.ph.split.us.peel.next138

.lr.ph.split.us.peel.next138:                     ; preds = %bb.o
  %i.dq = lshr i64 %i.b, 32
  %i.dr = and i64 %i.b, 4294967295
  %.not.i.us.peel150 = icmp eq i64 %i.dq, %i.dr
  br i1 %.not.i.us.peel150, label %If_Dec7HasVar.exit.us.peel151, label %If_Dec7HasVar.exit.thread.us.peel153

If_Dec7HasVar.exit.us.peel151:                    ; preds = %.lr.ph.split.us.peel.next138
  %i.ds = load i64, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %i.dt = lshr i64 %i.ds, 32
  %i.du = and i64 %i.ds, 4294967295
  %.not191 = icmp eq i64 %i.dt, %i.du
  br i1 %.not191, label %bb.p, label %If_Dec7HasVar.exit.thread.us.peel153

If_Dec7HasVar.exit.thread.us.peel153:             ; preds = %If_Dec7HasVar.exit.us.peel151, %.lr.ph.split.us.peel.next138
  %i.dv = or i32 %.1.us.peel145, 32
  %i.dw = add nuw nsw i32 %.121.us.peel144, 1
  br label %bb.p

bb.p:                                             ; preds = %If_Dec7HasVar.exit.thread.us.peel153, %If_Dec7HasVar.exit.us.peel151
  %.121.us.peel154 = phi i32 [ %i.dw, %If_Dec7HasVar.exit.thread.us.peel153 ], [ %.121.us.peel144, %If_Dec7HasVar.exit.us.peel151 ] ; 2 uses
  %.1.us.peel155 = phi i32 [ %i.dv, %If_Dec7HasVar.exit.thread.us.peel153 ], [ %.1.us.peel145, %If_Dec7HasVar.exit.us.peel151 ] ; 3 uses
  %exitcond107.peel157.not = icmp eq i32 %2, 6
  br i1 %exitcond107.peel157.not, label %._crit_edge, label %If_Dec7HasVar.exit.us.peel161

If_Dec7HasVar.exit.us.peel161:                    ; preds = %bb.p
  %i.dx = load i64, ptr %i.c, align 8, !tbaa !12
  %.not192 = icmp ne i64 %i.b, %i.dx              ; 2 uses
  %i.dy = or i32 %.1.us.peel155, 64
  %i.dz = zext i1 %.not192 to i32
  %.121.us.peel164 = add nuw nsw i32 %.121.us.peel154, %i.dz ; 2 uses
  %.1.us.peel165 = select i1 %.not192, i32 %i.dy, i32 %.1.us.peel155 ; 2 uses
  %exitcond107.peel167.not = icmp eq i32 %2, 7
  br i1 %exitcond107.peel167.not, label %._crit_edge, label %.lr.ph.split.us.peel.next158

.lr.ph.split.us.peel.next158:                     ; preds = %If_Dec7HasVar.exit.us.peel161, %bb.q
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %bb.q ], [ 7, %If_Dec7HasVar.exit.us.peel161 ] ; 4 uses
  %.037.us = phi i32 [ %.1.us, %bb.q ], [ %.1.us.peel165, %If_Dec7HasVar.exit.us.peel161 ] ; 2 uses
  %.02036.us = phi i32 [ %.121.us, %bb.q ], [ %.121.us.peel164, %If_Dec7HasVar.exit.us.peel161 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv103
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !12 ; 3 uses
  %i.ec = and i64 %i.eb, %i.b
  %i.ed = trunc nuw nsw i64 %indvars.iv103 to i32
  %i.ee = shl nuw i32 1, %i.ed                    ; 2 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = lshr i64 %i.ec, %i.ef
  %i.eh = xor i64 %i.eb, -1                       ; 2 uses
  %i.ei = and i64 %i.b, %i.eh
  %.not.i.us = icmp eq i64 %i.eg, %i.ei
  br i1 %.not.i.us, label %If_Dec7HasVar.exit.us, label %If_Dec7HasVar.exit.thread.us

If_Dec7HasVar.exit.us:                            ; preds = %.lr.ph.split.us.peel.next158
  %i.ej = load i64, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %i.ek = and i64 %i.ej, %i.eb
  %i.el = lshr i64 %i.ek, %i.ef
  %i.em = and i64 %i.ej, %i.eh
  %.not193 = icmp eq i64 %i.el, %i.em
  br i1 %.not193, label %bb.q, label %If_Dec7HasVar.exit.us.If_Dec7HasVar.exit.thread.us_crit_edge

If_Dec7HasVar.exit.us.If_Dec7HasVar.exit.thread.us_crit_edge: ; preds = %If_Dec7HasVar.exit.us
  %.pre = trunc nuw nsw i64 %indvars.iv103 to i32
  %.pre169 = shl nuw i32 1, %.pre
  br label %If_Dec7HasVar.exit.thread.us

If_Dec7HasVar.exit.thread.us:                     ; preds = %If_Dec7HasVar.exit.us.If_Dec7HasVar.exit.thread.us_crit_edge, %.lr.ph.split.us.peel.next158
  %.pre-phi170 = phi i32 [ %.pre169, %If_Dec7HasVar.exit.us.If_Dec7HasVar.exit.thread.us_crit_edge ], [ %i.ee, %.lr.ph.split.us.peel.next158 ]
  %i.en = or i32 %.037.us, %.pre-phi170
  %i.eo = add nsw i32 %.02036.us, 1
  br label %bb.q

bb.q:                                             ; preds = %If_Dec7HasVar.exit.thread.us, %If_Dec7HasVar.exit.us
  %.121.us = phi i32 [ %i.eo, %If_Dec7HasVar.exit.thread.us ], [ %.02036.us, %If_Dec7HasVar.exit.us ] ; 2 uses
  %.1.us = phi i32 [ %i.en, %If_Dec7HasVar.exit.thread.us ], [ %.037.us, %If_Dec7HasVar.exit.us ] ; 2 uses
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge, label %.lr.ph.split.us.peel.next158, !llvm.loop !30

.lr.ph.split.peel.next92:                         ; preds = %bb.i, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 7, %bb.i ] ; 5 uses
  %.037 = phi i32 [ %.1, %bb.r ], [ %.1.peel99, %bb.i ] ; 2 uses
  %.02036 = phi i32 [ %.121, %bb.r ], [ %.121.peel98, %bb.i ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !12 ; 3 uses
  %i.er = and i64 %i.eq, %i.b
  %i.es = trunc nuw nsw i64 %indvars.iv to i32
  %i.et = shl nuw i32 1, %i.es                    ; 2 uses
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  %i.ev = lshr i64 %i.er, %i.eu
  %i.ew = xor i64 %i.eq, -1                       ; 2 uses
  %i.ex = and i64 %i.b, %i.ew
  %.not.i = icmp eq i64 %i.ev, %i.ex
  br i1 %.not.i, label %If_Dec7HasVar.exit, label %If_Dec7HasVar.exit.thread

If_Dec7HasVar.exit:                               ; preds = %.lr.ph.split.peel.next92
  %i.ey = load i64, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  %i.ez = and i64 %i.ey, %i.eq
  %i.fa = lshr i64 %i.ez, %i.eu
  %i.fb = and i64 %i.ey, %i.ew
  %.not185 = icmp eq i64 %i.fa, %i.fb
  br i1 %.not185, label %bb.r, label %If_Dec7HasVar.exit.If_Dec7HasVar.exit.thread_crit_edge

If_Dec7HasVar.exit.If_Dec7HasVar.exit.thread_crit_edge: ; preds = %If_Dec7HasVar.exit
  %.pre171 = trunc nuw nsw i64 %indvars.iv to i32
  %.pre173 = shl nuw i32 1, %.pre171
  br label %If_Dec7HasVar.exit.thread

If_Dec7HasVar.exit.thread:                        ; preds = %If_Dec7HasVar.exit.If_Dec7HasVar.exit.thread_crit_edge, %.lr.ph.split.peel.next92
  %.pre-phi174 = phi i32 [ %.pre173, %If_Dec7HasVar.exit.If_Dec7HasVar.exit.thread_crit_edge ], [ %i.et, %.lr.ph.split.peel.next92 ]
  %i.fc = or i32 %.037, %.pre-phi174
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !9
  %i.ff = sext i32 %.02036 to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ff
  store i32 %i.fe, ptr %i.fg, align 4, !tbaa !9
  %i.fh = add nsw i32 %.02036, 1
  br label %bb.r

bb.r:                                             ; preds = %If_Dec7HasVar.exit, %If_Dec7HasVar.exit.thread
  %.121 = phi i32 [ %i.fh, %If_Dec7HasVar.exit.thread ], [ %.02036, %If_Dec7HasVar.exit ] ; 2 uses
  %.1 = phi i32 [ %i.fc, %If_Dec7HasVar.exit.thread ], [ %.037, %If_Dec7HasVar.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count106
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.peel.next92, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.r, %bb.q, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %If_Dec7HasVar.exit.us.peel161, %bb.a
  %.020.lcssa = phi i32 [ 0, %bb.a ], [ %.121.us, %bb.q ], [ %.121.us.peel164, %If_Dec7HasVar.exit.us.peel161 ], [ %.121.us.peel, %bb.k ], [ %.121.us.peel114, %bb.l ], [ %.121.us.peel124, %bb.m ], [ %.121.us.peel134, %bb.n ], [ %.121.us.peel144, %bb.o ], [ %.121.us.peel154, %bb.p ], [ %.121.peel98, %bb.i ], [ %.121.peel, %bb.c ], [ %.121.peel48, %bb.d ], [ %.121.peel58, %bb.e ], [ %.121.peel68, %bb.f ], [ %.121.peel78, %bb.g ], [ %.121.peel88, %bb.h ], [ %.121, %bb.r ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1.us, %bb.q ], [ %.1.us.peel165, %If_Dec7HasVar.exit.us.peel161 ], [ %.121.us.peel, %bb.k ], [ %.1.us.peel115, %bb.l ], [ %.1.us.peel125, %bb.m ], [ %.1.us.peel135, %bb.n ], [ %.1.us.peel145, %bb.o ], [ %.1.us.peel155, %bb.p ], [ %.1.peel99, %bb.i ], [ %.121.peel, %bb.c ], [ %.1.peel49, %bb.d ], [ %.1.peel59, %bb.e ], [ %.1.peel69, %bb.f ], [ %.1.peel79, %bb.g ], [ %.1.peel89, %bb.h ], [ %.1, %bb.r ] ; 3 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  store i32 %.020.lcssa, ptr %3, align 4, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %i.fi = add nsw i32 %.0.lcssa, 1
  %i.fj = and i32 %i.fi, %.0.lcssa
  %i.fk = icmp ne i32 %i.fj, 0
  %or.cond = and i1 %i.a, %i.fk
  br i1 %or.cond, label %.lr.ph20.i, label %If_Dec7TruthShrink.exit

.lr.ph20.i:                                       ; preds = %bb.t
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph20.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i, %bb.y ] ; 3 uses
  %.018.i = phi i32 [ 0, %.lr.ph20.i ], [ %.1.i, %bb.y ] ; 4 uses
  %indvars25.i = trunc i64 %indvars.iv.i to i32   ; 2 uses
  %i.fl = shl nuw i32 1, %indvars25.i
  %i.fm = and i32 %i.fl, %.0.lcssa
  %.not.i29 = icmp eq i32 %i.fm, 0
  br i1 %.not.i29, label %bb.y, label %.preheader.i

.preheader.i:                                     ; preds = %bb.u
  %.not13.not14.i = icmp slt i32 %.018.i, %indvars25.i
  br i1 %.not13.not14.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.fn = sext i32 %.018.i to i64
  %i.fo = load <2 x i64>, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %If_Dec7SwapAdjacent.exit.i, %.lr.ph.i
  %indvars.iv22.i = phi i64 [ %indvars.iv.i, %.lr.ph.i ], [ %indvars.iv.next23.i, %If_Dec7SwapAdjacent.exit.i ]
  %i.fp = phi <2 x i64> [ %i.fo, %.lr.ph.i ], [ %i.gk, %If_Dec7SwapAdjacent.exit.i ] ; 6 uses
  %indvars.iv.next23.i = add nsw i64 %indvars.iv22.i, -1 ; 5 uses
  %i.fq = icmp eq i64 %indvars.iv.next23.i, 5
  br i1 %i.fq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fr = shl <2 x i64> %i.fp, splat (i64 32)
  %i.fs = lshr <2 x i64> %i.fp, splat (i64 32)
  %i.ft = shufflevector <2 x i64> %i.fr, <2 x i64> %i.fs, <2 x i32> <i32 1, i32 2>
  %i.fu = and <2 x i64> %i.fp, <i64 4294967295, i64 -4294967296>
  %i.fv = or disjoint <2 x i64> %i.fu, %i.ft
  br label %If_Dec7SwapAdjacent.exit.i

bb.x:                                             ; preds = %bb.v
  %i.fw = getelementptr inbounds [24 x i8], ptr @PMasks, i64 %indvars.iv.next23.i
  %i.fx = trunc nsw i64 %indvars.iv.next23.i to i32
  %i.fy = shl nuw i32 1, %i.fx
  %i.fz = zext i32 %i.fy to i64
  %4 = load <3 x i64>, ptr %i.fw, align 8, !tbaa !12 ; 3 uses
  %i.ga = shufflevector <3 x i64> %4, <3 x i64> poison, <2 x i32> zeroinitializer
  %i.gb = and <2 x i64> %i.ga, %i.fp
  %5 = shufflevector <3 x i64> %4, <3 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = and <2 x i64> %5, %i.fp
  %i.gd = insertelement <2 x i64> poison, i64 %i.fz, i64 0
  %i.ge = shufflevector <2 x i64> %i.gd, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gf = shl <2 x i64> %i.gc, %i.ge
  %i.gg = or <2 x i64> %i.gf, %i.gb
  %6 = shufflevector <3 x i64> %4, <3 x i64> poison, <2 x i32> <i32 2, i32 2>
  %i.gh = and <2 x i64> %6, %i.fp
  %i.gi = lshr <2 x i64> %i.gh, %i.ge
  %i.gj = or <2 x i64> %i.gg, %i.gi
  br label %If_Dec7SwapAdjacent.exit.i

If_Dec7SwapAdjacent.exit.i:                       ; preds = %bb.x, %bb.w
  %i.gk = phi <2 x i64> [ %i.fv, %bb.w ], [ %i.gj, %bb.x ] ; 2 uses
  %.not13.not.i = icmp sgt i64 %indvars.iv.next23.i, %i.fn
  br i1 %.not13.not.i, label %bb.v, label %._crit_edge.loopexit.i, !llvm.loop !32

._crit_edge.loopexit.i:                           ; preds = %If_Dec7SwapAdjacent.exit.i
  store <2 x i64> %i.gk, ptr %0, align 8, !tbaa !12
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.gl = add nsw i32 %.018.i, 1
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i, %bb.u
  %.1.i = phi i32 [ %i.gl, %._crit_edge.i ], [ %.018.i, %bb.u ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %If_Dec7TruthShrink.exit, label %bb.u, !llvm.loop !33

If_Dec7TruthShrink.exit:                          ; preds = %bb.y, %bb.t
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define i32 @If_Dec6PickBestMux(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.040 = phi i32 [ 1000, %bb.a ], [ %.1, %bb.e ] ; 3 uses
  %.02139 = phi i32 [ -1, %bb.a ], [ %.122, %bb.e ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = xor i64 %i.c, -1
  %i.e = and i64 %0, %i.d                         ; 2 uses
  %i.f = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.g = shl nuw nsw i32 1, %i.f
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = shl i64 %i.e, %i.h
  %i.j = or i64 %i.i, %i.e                        ; 14 uses
  %i.k = and i64 %i.j, 6148914691236517205
  %i.l = mul nuw i64 %i.k, 3
  %i.m = and i64 %i.j, -6148914691236517206       ; 2 uses
  %i.n = lshr exact i64 %i.m, 1
  %i.o = or disjoint i64 %i.n, %i.m
  %.not.i = icmp ne i64 %i.l, %i.o
  %i.p = zext i1 %.not.i to i32
  %i.q = and i64 %i.j, 3689348814741910323
  %i.r = mul nuw i64 %i.q, 5
  %i.s = and i64 %i.j, -3689348814741910324       ; 2 uses
  %i.t = lshr exact i64 %i.s, 2
  %i.u = or disjoint i64 %i.t, %i.s
  %.not.1.i = icmp ne i64 %i.r, %i.u
  %i.v = zext i1 %.not.1.i to i32
  %spec.select.1.i = add nuw nsw i32 %i.p, %i.v
  %i.w = and i64 %i.j, 1085102592571150095
  %i.x = mul nuw i64 %i.w, 17
  %i.y = and i64 %i.j, -1085102592571150096       ; 2 uses
  %i.z = lshr exact i64 %i.y, 4
  %i.aa = or disjoint i64 %i.z, %i.y
  %.not.2.i = icmp ne i64 %i.x, %i.aa
  %i.ab = zext i1 %.not.2.i to i32
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %i.ab
  %i.ac = and i64 %i.j, 71777214294589695
  %i.ad = mul nuw i64 %i.ac, 257
  %i.ae = and i64 %i.j, -71777214294589696        ; 2 uses
  %i.af = lshr exact i64 %i.ae, 8
  %i.ag = or disjoint i64 %i.af, %i.ae
  %.not.3.i = icmp ne i64 %i.ad, %i.ag
  %i.ah = zext i1 %.not.3.i to i32
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %i.ah
  %i.ai = and i64 %i.j, 281470681808895
  %i.aj = mul nuw i64 %i.ai, 65537
  %i.ak = and i64 %i.j, -281470681808896          ; 2 uses
  %i.al = lshr exact i64 %i.ak, 16
  %i.am = or disjoint i64 %i.al, %i.ak
  %.not.4.i = icmp ne i64 %i.aj, %i.am
  %i.an = zext i1 %.not.4.i to i32
  %spec.select.4.i = add nuw nsw i32 %spec.select.3.i, %i.an
  %i.ao = and i64 %i.j, 4294967295
  %i.ap = mul nuw i64 %i.ao, 4294967297
  %i.aq = and i64 %i.j, -4294967296
  %i.ar = lshr i64 %i.j, 32
  %i.as = or disjoint i64 %i.ar, %i.aq
  %.not.5.i = icmp ne i64 %i.ap, %i.as
  %i.at = zext i1 %.not.5.i to i32
  %spec.select.5.i = add nuw nsw i32 %spec.select.4.i, %i.at ; 2 uses
  %i.au = and i64 %i.c, %0                        ; 2 uses
  %i.av = lshr i64 %i.au, %i.h
  %i.aw = or i64 %i.av, %i.au                     ; 14 uses
  %i.ax = and i64 %i.aw, 6148914691236517205
  %i.ay = mul nuw i64 %i.ax, 3
  %i.az = and i64 %i.aw, -6148914691236517206     ; 2 uses
  %i.ba = lshr exact i64 %i.az, 1
  %i.bb = or disjoint i64 %i.ba, %i.az
  %.not.i27 = icmp ne i64 %i.ay, %i.bb
  %i.bc = zext i1 %.not.i27 to i32
  %i.bd = and i64 %i.aw, 3689348814741910323
  %i.be = mul nuw i64 %i.bd, 5
  %i.bf = and i64 %i.aw, -3689348814741910324     ; 2 uses
  %i.bg = lshr exact i64 %i.bf, 2
  %i.bh = or disjoint i64 %i.bg, %i.bf
  %.not.1.i28 = icmp ne i64 %i.be, %i.bh
  %i.bi = zext i1 %.not.1.i28 to i32
  %spec.select.1.i29 = add nuw nsw i32 %i.bc, %i.bi
  %i.bj = and i64 %i.aw, 1085102592571150095
  %i.bk = mul nuw i64 %i.bj, 17
  %i.bl = and i64 %i.aw, -1085102592571150096     ; 2 uses
  %i.bm = lshr exact i64 %i.bl, 4
  %i.bn = or disjoint i64 %i.bm, %i.bl
  %.not.2.i30 = icmp ne i64 %i.bk, %i.bn
  %i.bo = zext i1 %.not.2.i30 to i32
  %spec.select.2.i31 = add nuw nsw i32 %spec.select.1.i29, %i.bo
  %i.bp = and i64 %i.aw, 71777214294589695
  %i.bq = mul nuw i64 %i.bp, 257
  %i.br = and i64 %i.aw, -71777214294589696       ; 2 uses
  %i.bs = lshr exact i64 %i.br, 8
  %i.bt = or disjoint i64 %i.bs, %i.br
  %.not.3.i32 = icmp ne i64 %i.bq, %i.bt
  %i.bu = zext i1 %.not.3.i32 to i32
  %spec.select.3.i33 = add nuw nsw i32 %spec.select.2.i31, %i.bu
  %i.bv = and i64 %i.aw, 281470681808895
  %i.bw = mul nuw i64 %i.bv, 65537
  %i.bx = and i64 %i.aw, -281470681808896         ; 2 uses
  %i.by = lshr exact i64 %i.bx, 16
  %i.bz = or disjoint i64 %i.by, %i.bx
  %.not.4.i34 = icmp ne i64 %i.bw, %i.bz
  %i.ca = zext i1 %.not.4.i34 to i32
  %spec.select.4.i35 = add nuw nsw i32 %spec.select.3.i33, %i.ca
  %i.cb = and i64 %i.aw, 4294967295
  %i.cc = mul nuw i64 %i.cb, 4294967297
  %i.cd = and i64 %i.aw, -4294967296
  %i.ce = lshr i64 %i.aw, 32
  %i.cf = or disjoint i64 %i.ce, %i.cd
  %.not.5.i36 = icmp ne i64 %i.cc, %i.cf
  %i.cg = zext i1 %.not.5.i36 to i32
  %spec.select.5.i37 = add nuw nsw i32 %spec.select.4.i35, %i.cg ; 2 uses
  %i.ch = icmp samesign ult i32 %spec.select.5.i, 5
  %i.ci = icmp samesign ult i32 %spec.select.5.i37, 5
  %or.cond = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.cj = add nuw nsw i32 %spec.select.5.i, %spec.select.5.i37 ; 2 uses
  %i.ck = icmp sgt i32 %.040, %i.cj
  br i1 %i.ck, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.j, ptr %1, align 8, !tbaa !12
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.122 = phi i32 [ %i.f, %bb.d ], [ %.02139, %bb.c ], [ %.02139, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.cj, %bb.d ], [ %.040, %bb.c ], [ %.040, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !35

bb.f:                                             ; preds = %bb.e
  ret i32 %.122
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @If_Dec7PickBestMux(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %.068 = phi i32 [ 1000, %bb.a ], [ %.1, %bb.g ] ; 3 uses
  %.01967 = phi i32 [ -1, %bb.a ], [ %.120, %bb.g ] ; 2 uses
  %i.d = icmp eq i64 %indvars.iv, 6
  %i.e = load i64, ptr %0, align 8, !tbaa !12     ; 4 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  br label %If_Dec7Cofactor.exit28

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 8, !tbaa !12   ; 3 uses
  %i.i = xor i64 %i.h, -1                         ; 2 uses
  %i.j = and i64 %i.e, %i.i                       ; 2 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = shl nuw nsw i32 1, %i.k
  %i.m = zext nneg i32 %i.l to i64                ; 4 uses
  %i.n = shl i64 %i.j, %i.m
  %i.o = or i64 %i.n, %i.j
  %i.p = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
end_hunk_0
