inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_huffyuvdsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  store ptr @add_int16_c, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @add_hfyu_median_pred_int16_c, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @add_hfyu_left_pred_bgr32_c, ptr %i.b, align 8, !tbaa !13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add_int16_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = lshr i32 %2, 1
  %i.b = zext nneg i32 %i.a to i64
  %i.c = mul i64 %i.b, 281479271743489            ; 4 uses
  %i.d = add i64 %i.c, 281479271743489            ; 2 uses
  %i.e = add i32 %3, -4                           ; 2 uses
  %4 = zext i32 %i.e to i64                       ; 3 uses
  %.not27 = icmp slt i32 %3, 4
  br i1 %.not27, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = lshr i64 %4, 2
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 20
  br i1 %min.iters.check, label %.lr.ph.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.h = shl nuw nsw i64 %4, 1
  %i.i = and i64 %i.h, 8589934584
  %i.j = add nuw nsw i64 %i.i, 8                  ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.j
  %scevgep32 = getelementptr i8, ptr %1, i64 %i.j
  %bound0 = icmp ult ptr %0, %scevgep32
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 2147483644               ; 3 uses
  %i.k = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert33 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat34 = shufflevector <2 x i64> %broadcast.splatinsert33, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl nuw i64 %index, 2                    ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <2 x i64>, ptr %i.m, align 8, !tbaa !14, !alias.scope !16 ; 2 uses
  %wide.load35 = load <2 x i64>, ptr %i.n, align 8, !tbaa !14, !alias.scope !16 ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.l ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %wide.load36 = load <2 x i64>, ptr %i.o, align 8, !tbaa !14, !alias.scope !19, !noalias !16 ; 2 uses
  %wide.load37 = load <2 x i64>, ptr %i.p, align 8, !tbaa !14, !alias.scope !19, !noalias !16 ; 2 uses
  %i.q = and <2 x i64> %wide.load, %broadcast.splat
  %i.r = and <2 x i64> %wide.load35, %broadcast.splat
  %i.s = and <2 x i64> %wide.load36, %broadcast.splat
  %i.t = and <2 x i64> %wide.load37, %broadcast.splat
  %i.u = add <2 x i64> %i.s, %i.q
  %i.v = add <2 x i64> %i.t, %i.r
  %i.w = xor <2 x i64> %wide.load36, %wide.load
  %i.x = xor <2 x i64> %wide.load37, %wide.load35
  %i.y = and <2 x i64> %i.w, %broadcast.splat34
  %i.z = and <2 x i64> %i.x, %broadcast.splat34
  %i.aa = xor <2 x i64> %i.u, %i.y
  %i.ab = xor <2 x i64> %i.v, %i.z
  store <2 x i64> %i.aa, ptr %i.o, align 8, !tbaa !14, !alias.scope !19, !noalias !16
  store <2 x i64> %i.ab, ptr %i.p, align 8, !tbaa !14, !alias.scope !19, !noalias !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader72

.lr.ph.preheader72:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.028.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %middle.block ], [ %i.ch, %.lr.ph ] ; 9 uses
  %i.ad = sext i32 %3 to i64                      ; 6 uses
  %i.ae = icmp slt i64 %.0.lcssa, %i.ad
  br i1 %i.ae, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.af = sub i64 %i.ad, %.0.lcssa                ; 7 uses
  %min.iters.check47 = icmp ult i64 %i.af, 4
  br i1 %min.iters.check47, label %.lr.ph30.preheader, label %vector.memcheck38

vector.memcheck38:                                ; preds = %iter.check
  %i.ag = shl i64 %.0.lcssa, 1                    ; 2 uses
  %scevgep39 = getelementptr i8, ptr %0, i64 %i.ag
  %i.ah = shl nsw i64 %i.ad, 1                    ; 2 uses
  %scevgep40 = getelementptr i8, ptr %0, i64 %i.ah
  %scevgep41 = getelementptr i8, ptr %1, i64 %i.ag
  %scevgep42 = getelementptr i8, ptr %1, i64 %i.ah
  %bound043 = icmp ult ptr %scevgep39, %scevgep42
  %bound144 = icmp ult ptr %scevgep41, %scevgep40
  %found.conflict45 = and i1 %bound043, %bound144
  br i1 %found.conflict45, label %.lr.ph30.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck38
  %min.iters.check48 = icmp ult i64 %i.af, 16
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph49

vector.ph49:                                      ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.af, 12
  %n.vec50 = and i64 %i.af, -16                   ; 4 uses
  %i.aj = add i64 %.0.lcssa, %n.vec50
  %broadcast.splatinsert51 = insertelement <8 x i32> poison, i32 %2, i64 0
  %broadcast.splat52 = shufflevector <8 x i32> %broadcast.splatinsert51, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph49
  %index54 = phi i64 [ 0, %vector.ph49 ], [ %index.next59, %vector.body53 ] ; 2 uses
  %i.ak = add nuw i64 %.0.lcssa, %index54         ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load55 = load <8 x i16>, ptr %i.al, align 2, !tbaa !25, !alias.scope !27, !noalias !30
  %wide.load56 = load <8 x i16>, ptr %i.am, align 2, !tbaa !25, !alias.scope !27, !noalias !30
  %i.an = zext <8 x i16> %wide.load55 to <8 x i32>
  %i.ao = zext <8 x i16> %wide.load56 to <8 x i32>
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ak ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load57 = load <8 x i16>, ptr %i.ap, align 2, !tbaa !25, !alias.scope !30
  %wide.load58 = load <8 x i16>, ptr %i.aq, align 2, !tbaa !25, !alias.scope !30
  %i.ar = zext <8 x i16> %wide.load57 to <8 x i32>
  %i.as = zext <8 x i16> %wide.load58 to <8 x i32>
  %i.at = add nuw nsw <8 x i32> %i.ar, %i.an
  %i.au = add nuw nsw <8 x i32> %i.as, %i.ao
  %i.av = and <8 x i32> %i.at, %broadcast.splat52
  %i.aw = and <8 x i32> %i.au, %broadcast.splat52
  %i.ax = trunc <8 x i32> %i.av to <8 x i16>
  %i.ay = trunc <8 x i32> %i.aw to <8 x i16>
  store <8 x i16> %i.ax, ptr %i.al, align 2, !tbaa !25, !alias.scope !27, !noalias !30
  store <8 x i16> %i.ay, ptr %i.am, align 2, !tbaa !25, !alias.scope !27, !noalias !30
  %index.next59 = add nuw i64 %index54, 16        ; 2 uses
  %i.az = icmp eq i64 %index.next59, %n.vec50
  br i1 %i.az, label %middle.block60, label %vector.body53, !llvm.loop !32

middle.block60:                                   ; preds = %vector.body53
  %cmp.n61 = icmp eq i64 %i.af, %n.vec50
  br i1 %cmp.n61, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block60
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec50, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec63 = and i64 %i.af, -4                    ; 3 uses
  %i.ba = add i64 %.0.lcssa, %n.vec63
  %broadcast.splatinsert64 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat65 = shufflevector <4 x i32> %broadcast.splatinsert64, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next69, %vec.epilog.vector.body ] ; 2 uses
  %i.bb = add nuw i64 %.0.lcssa, %index66         ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bb ; 2 uses
  %wide.load67 = load <4 x i16>, ptr %i.bc, align 2, !tbaa !25, !alias.scope !27, !noalias !30
  %i.bd = zext <4 x i16> %wide.load67 to <4 x i32>
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bb
  %wide.load68 = load <4 x i16>, ptr %i.be, align 2, !tbaa !25, !alias.scope !30
  %i.bf = zext <4 x i16> %wide.load68 to <4 x i32>
  %i.bg = add nuw nsw <4 x i32> %i.bf, %i.bd
  %i.bh = and <4 x i32> %i.bg, %broadcast.splat65
  %i.bi = trunc <4 x i32> %i.bh to <4 x i16>
  store <4 x i16> %i.bi, ptr %i.bc, align 2, !tbaa !25, !alias.scope !27, !noalias !30
  %index.next69 = add nuw i64 %index66, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next69, %n.vec63
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n70 = icmp eq i64 %i.af, %n.vec63
  br i1 %cmp.n70, label %._crit_edge, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %vector.memcheck38, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.129.ph = phi i64 [ %.0.lcssa, %iter.check ], [ %.0.lcssa, %vector.memcheck38 ], [ %i.aj, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ] ; 6 uses
  %i.bk = sub i64 %i.ad, %.129.ph
  %xtraiter = and i64 %i.bk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph30.prol.loopexit, label %.lr.ph30.prol

.lr.ph30.prol:                                    ; preds = %.lr.ph30.preheader
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.129.ph ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !25
  %i.bn = zext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.129.ph
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !25
  %i.bq = zext i16 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bq, %i.bn
  %i.bs = and i32 %i.br, %2
  %i.bt = trunc i32 %i.bs to i16
  store i16 %i.bt, ptr %i.bl, align 2, !tbaa !25
  %i.bu = add nuw nsw i64 %.129.ph, 1
  br label %.lr.ph30.prol.loopexit

.lr.ph30.prol.loopexit:                           ; preds = %.lr.ph30.prol, %.lr.ph30.preheader
  %.129.unr = phi i64 [ %.129.ph, %.lr.ph30.preheader ], [ %i.bu, %.lr.ph30.prol ]
  %i.bv = add nsw i64 %i.ad, -1
  %i.bw = icmp eq i64 %.129.ph, %i.bv
  br i1 %i.bw, label %._crit_edge, label %.lr.ph30

.lr.ph:                                           ; preds = %.lr.ph.preheader72, %.lr.ph
  %.028 = phi i64 [ %i.ch, %.lr.ph ], [ %.028.ph, %.lr.ph.preheader72 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.028
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !14 ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.028 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !14 ; 2 uses
  %i.cb = and i64 %i.by, %i.c
  %i.cc = and i64 %i.ca, %i.c
  %i.cd = add i64 %i.cc, %i.cb
  %i.ce = xor i64 %i.ca, %i.by
  %i.cf = and i64 %i.ce, %i.d
  %i.cg = xor i64 %i.cd, %i.cf
  store i64 %i.cg, ptr %i.bz, align 8, !tbaa !14
  %i.ch = add nuw nsw i64 %.028, 4                ; 3 uses
  %.not = icmp samesign ugt i64 %i.ch, %4
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !35

.lr.ph30:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30
  %.129 = phi i64 [ %i.db, %.lr.ph30 ], [ %.129.unr, %.lr.ph30.prol.loopexit ] ; 4 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.129 ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !25
  %i.ck = zext i16 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.129
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !25
  %i.cn = zext i16 %i.cm to i32
  %i.co = add nuw nsw i32 %i.cn, %i.ck
  %i.cp = and i32 %i.co, %2
  %i.cq = trunc i32 %i.cp to i16
  store i16 %i.cq, ptr %i.ci, align 2, !tbaa !25
  %i.cr = add nuw nsw i64 %.129, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cr ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !25
  %i.cu = zext i16 %i.ct to i32
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cr
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !25
  %i.cx = zext i16 %i.cw to i32
  %i.cy = add nuw nsw i32 %i.cx, %i.cu
  %i.cz = and i32 %i.cy, %2
  %i.da = trunc i32 %i.cz to i16
  store i16 %i.da, ptr %i.cs, align 2, !tbaa !25
  %i.db = add nuw nsw i64 %.129, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.db, %i.ad
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph30, !llvm.loop !36

._crit_edge:                                      ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30, %middle.block60, %vec.epilog.middle.block, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add_hfyu_median_pred_int16_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) #1 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !37     ; 2 uses
  %i.b = load i32, ptr %6, align 4, !tbaa !37     ; 2 uses
  %i.c = icmp sgt i32 %4, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = and i32 %i.b, 65535
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = trunc i32 %i.b to i16
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.028 = phi i16 [ %i.d, %.lr.ph.preheader ], [ %i.g, %.lr.ph ]
  %.02427 = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.s, %.lr.ph ]
  %i.e = and i32 %.02427, 65535                   ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.g = load i16, ptr %i.f, align 2, !tbaa !25   ; 2 uses
  %i.h = zext i16 %i.g to i32                     ; 4 uses
  %i.i = zext i16 %.028 to i32
  %i.j = sub nsw i32 %i.e, %i.i
  %i.k = add nsw i32 %i.j, %i.h
  %i.l = and i32 %i.k, %3
  %..i = tail call i32 @llvm.umin.i32(i32 range(i32 0, 65536) %i.e, i32 range(i32 0, 65536) %i.h)
  %.20.i = tail call i32 @llvm.umax.i32(i32 range(i32 0, 65536) %i.e, i32 range(i32 0, 65536) %i.h)
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %.20.i)
  %i.n = tail call range(i32 0, 65536) i32 @llvm.smax.i32(i32 %i.m, i32 %..i)
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2, !tbaa !25
  %i.q = zext i16 %i.p to i32
  %i.r = add nuw nsw i32 %i.n, %i.q
  %i.s = and i32 %i.r, %3                         ; 3 uses
  %i.t = trunc i32 %i.s to i16
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.t, ptr %i.u, align 2, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %i.h, %.lr.ph ]
  %.024.lcssa = phi i32 [ %i.a, %.._crit_edge_crit_edge ], [ %i.s, %.lr.ph ]
  %i.v = and i32 %.024.lcssa, 65535
  store i32 %i.v, ptr %5, align 4, !tbaa !37
  store i32 %.pre-phi, ptr %6, align 4, !tbaa !37
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @add_hfyu_left_pred_bgr32_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #1 {
bb.a:
  %i.a = load <4 x i8>, ptr %3, align 1, !tbaa !39 ; 3 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.c = icmp ult i64 %2, 4
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, 9223372036854775804
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %i.d = phi <4 x i8> [ %i.a, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = shl nuw nsw i64 %indvars.iv, 2           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = load <4 x i8>, ptr %i.f, align 1, !tbaa !39
  %i.h = add <4 x i8> %i.g, %i.d                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  store <4 x i8> %i.h, ptr %i.i, align 1, !tbaa !39
  %indvars.iv.next = shl i64 %indvars.iv, 2
  %i.j = or disjoint i64 %indvars.iv.next, 4      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load <4 x i8>, ptr %i.k, align 1, !tbaa !39
  %i.m = add <4 x i8> %i.l, %i.h                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  store <4 x i8> %i.m, ptr %i.n, align 1, !tbaa !39
  %indvars.iv.next.1 = shl i64 %indvars.iv, 2
  %i.o = or disjoint i64 %indvars.iv.next.1, 8    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = load <4 x i8>, ptr %i.p, align 1, !tbaa !39
  %i.r = add <4 x i8> %i.q, %i.m                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  store <4 x i8> %i.r, ptr %i.s, align 1, !tbaa !39
  %indvars.iv.next.2 = shl i64 %indvars.iv, 2
  %i.t = or disjoint i64 %indvars.iv.next.2, 12   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.v = load <4 x i8>, ptr %i.u, align 1, !tbaa !39
  %i.w = add <4 x i8> %i.v, %i.r                  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  store <4 x i8> %i.w, ptr %i.x, align 1, !tbaa !39
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !40

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x i8> [ %i.a, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod60 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod60)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %i.y = phi <4 x i8> [ %i.ac, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.z = shl nuw nsw i64 %indvars.iv.epil, 2      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load <4 x i8>, ptr %i.aa, align 1, !tbaa !39
  %i.ac = add <4 x i8> %i.ab, %i.y                ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  store <4 x i8> %i.ac, ptr %i.ad, align 1, !tbaa !39
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !41

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.ae = phi <4 x i8> [ %i.a, %bb.a ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.epil ]
  store <4 x i8> %i.ae, ptr %3, align 1, !tbaa !39
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"HuffYUVDSPContext", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!10, !11, i64 16}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !22, !23, !24}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!26, !26, i64 0}
!26 = !{!"short", !7, i64 0}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !22, !23, !24}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = distinct !{!34, !22, !23, !24}
!35 = distinct !{!35, !22, !23}
!36 = distinct !{!36, !22, !23}
!37 = !{!6, !6, i64 0}
!38 = distinct !{!38, !22}
!39 = !{!7, !7, i64 0}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
