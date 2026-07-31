inline.NumInlined: 11
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@SharpYuvUpdateY = external local_unnamed_addr global ptr, align 8
@SharpYuvUpdateRGB = external local_unnamed_addr global ptr, align 8
@SharpYuvFilterRow = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @InitSharpYuvSSE2() local_unnamed_addr #0 {
bb.a:
  store ptr @SharpYuvUpdateY_SSE2, ptr @SharpYuvUpdateY, align 8, !tbaa !7
  store ptr @SharpYuvUpdateRGB_SSE2, ptr @SharpYuvUpdateRGB, align 8, !tbaa !7
  store ptr @SharpYuvFilterRow_SSE2, ptr @SharpYuvFilterRow, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i64 @SharpYuvUpdateY_SSE2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %notmask = shl nsw i32 -1, %4
  %i.a = xor i32 %notmask, -1                     ; 3 uses
  %i.b = trunc i32 %i.a to i16
  %i.c = insertelement <8 x i16> poison, i16 %i.b, i64 0
  %i.d = shufflevector <8 x i16> %i.c, <8 x i16> poison, <8 x i32> zeroinitializer
  %.not52 = icmp slt i32 %3, 8
  br i1 %.not52, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv64 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next65, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.f = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %i.s, %.lr.ph ]
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv64
  %i.h = load <8 x i16>, ptr %i.g, align 1, !tbaa !9
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv64
  %i.j = load <8 x i16>, ptr %i.i, align 1, !tbaa !9
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv64 ; 2 uses
  %i.l = load <8 x i16>, ptr %i.k, align 1, !tbaa !9
  %i.m = sub <8 x i16> %i.h, %i.j                 ; 3 uses
  %.lobit.i = ashr <8 x i16> %i.m, splat (i16 15)
  %i.n = add <8 x i16> %i.l, %i.m
  %i.o = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.n, <8 x i16> %i.d)
  %i.p = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.o, <8 x i16> zeroinitializer)
  %i.q = or <8 x i16> %.lobit.i, splat (i16 1)
  %i.r = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.m, <8 x i16> %i.q)
  store <8 x i16> %i.p, ptr %i.k, align 1, !tbaa !9
  %i.s = add <4 x i32> %i.r, %i.f                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.e
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %5 = add nuw i32 %3, 2147483640
  %i.t = and i32 %5, 2147483640
  %narrow = add nuw i32 %i.t, 8
  %i.u = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.s)
  %i.v = zext i32 %i.u to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.v, %._crit_edge.loopexit ] ; 4 uses
  %.047.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 4 uses
  %i.w = icmp slt i32 %.047.lcssa, %3
  br i1 %i.w, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %._crit_edge
  %i.x = zext i32 %.047.lcssa to i64              ; 6 uses
  %i.y = xor i32 %.047.lcssa, -1
  %i.z = add i32 %3, %i.y                         ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.z, 9
  br i1 %min.iters.check, label %.lr.ph58.preheader90, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph58.preheader
  %i.ac = shl nuw nsw i64 %i.x, 1                 ; 3 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.ac  ; 2 uses
  %i.ad = xor i32 %.047.lcssa, -1
  %i.ae = add i32 %3, %i.ad
  %i.af = zext i32 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.x, %i.af
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = add nuw nsw i64 %i.ah, 2                ; 3 uses
  %scevgep76 = getelementptr i8, ptr %2, i64 %i.ai ; 2 uses
  %scevgep77 = getelementptr i8, ptr %0, i64 %i.ac
  %scevgep78 = getelementptr i8, ptr %0, i64 %i.ai
  %scevgep79 = getelementptr i8, ptr %1, i64 %i.ac
  %scevgep80 = getelementptr i8, ptr %1, i64 %i.ai
  %bound0 = icmp ult ptr %scevgep, %scevgep78
  %bound1 = icmp ult ptr %scevgep77, %scevgep76
  %found.conflict = and i1 %bound0, %bound1
  %bound081 = icmp ult ptr %scevgep, %scevgep80
  %bound182 = icmp ult ptr %scevgep79, %scevgep76
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx = or i1 %found.conflict, %found.conflict83
  br i1 %conflict.rdx, label %.lr.ph58.preheader90, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 8589934588              ; 3 uses
  %i.aj = add nuw nsw i64 %n.vec, %i.x
  %i.ak = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.lcssa, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ak, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi84 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  %i.al = add nuw i64 %index, %i.x                ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %wide.load = load <2 x i16>, ptr %i.am, align 2, !tbaa !12, !alias.scope !14
  %wide.load85 = load <2 x i16>, ptr %i.an, align 2, !tbaa !12, !alias.scope !14
  %i.ao = zext <2 x i16> %wide.load to <2 x i32>
  %i.ap = zext <2 x i16> %wide.load85 to <2 x i32>
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.al ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %wide.load86 = load <2 x i16>, ptr %i.aq, align 2, !tbaa !12, !alias.scope !17
  %wide.load87 = load <2 x i16>, ptr %i.ar, align 2, !tbaa !12, !alias.scope !17
  %i.as = zext <2 x i16> %wide.load86 to <2 x i32>
  %i.at = zext <2 x i16> %wide.load87 to <2 x i32>
  %i.au = sub nsw <2 x i32> %i.ao, %i.as          ; 2 uses
  %i.av = sub nsw <2 x i32> %i.ap, %i.at          ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.al ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %wide.load88 = load <2 x i16>, ptr %i.aw, align 2, !tbaa !12, !alias.scope !19, !noalias !21
  %wide.load89 = load <2 x i16>, ptr %i.ax, align 2, !tbaa !12, !alias.scope !19, !noalias !21
  %i.ay = zext <2 x i16> %wide.load88 to <2 x i32>
  %i.az = zext <2 x i16> %wide.load89 to <2 x i32>
  %i.ba = add nsw <2 x i32> %i.au, %i.ay          ; 2 uses
  %i.bb = add nsw <2 x i32> %i.av, %i.az          ; 2 uses
  %i.bc = icmp slt <2 x i32> %i.ba, zeroinitializer
  %i.bd = icmp slt <2 x i32> %i.bb, zeroinitializer
  %i.be = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ba, <2 x i32> %broadcast.splat)
  %i.bf = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bb, <2 x i32> %broadcast.splat)
  %i.bg = trunc <2 x i32> %i.be to <2 x i16>
  %i.bh = trunc <2 x i32> %i.bf to <2 x i16>
  %i.bi = select <2 x i1> %i.bc, <2 x i16> zeroinitializer, <2 x i16> %i.bg
  %i.bj = select <2 x i1> %i.bd, <2 x i16> zeroinitializer, <2 x i16> %i.bh
  store <2 x i16> %i.bi, ptr %i.aw, align 2, !tbaa !12, !alias.scope !19, !noalias !21
  store <2 x i16> %i.bj, ptr %i.ax, align 2, !tbaa !12, !alias.scope !19, !noalias !21
  %i.bk = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.au, i1 true)
  %i.bl = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.av, i1 true)
  %i.bm = zext nneg <2 x i32> %i.bk to <2 x i64>
  %i.bn = zext nneg <2 x i32> %i.bl to <2 x i64>
  %i.bo = add <2 x i64> %vec.phi, %i.bm           ; 2 uses
  %i.bp = add <2 x i64> %vec.phi84, %i.bn         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bp, %i.bo
  %i.br = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %._crit_edge59, label %.lr.ph58.preheader90

.lr.ph58.preheader90:                             ; preds = %vector.memcheck, %.lr.ph58.preheader, %middle.block
  %indvars.iv69.ph = phi i64 [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph58.preheader ], [ %i.aj, %middle.block ]
  %.056.ph = phi i64 [ %.lcssa, %vector.memcheck ], [ %.lcssa, %.lr.ph58.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.preheader90, %.lr.ph58
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph58 ], [ %indvars.iv69.ph, %.lr.ph58.preheader90 ] ; 4 uses
  %.056 = phi i64 [ %i.cj, %.lr.ph58 ], [ %.056.ph, %.lr.ph58.preheader90 ]
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv69
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !12
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv69
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !12
  %i.bx = zext i16 %i.bw to i32
  %i.by = sub nsw i32 %i.bu, %i.bx                ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv69 ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !12
  %i.cb = zext i16 %i.ca to i32
  %i.cc = add nsw i32 %i.by, %i.cb                ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  %i.ce = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.cc, i32 range(i32 -2147483648, 2147483647) %i.a)
  %i.cf = trunc i32 %i.ce to i16
  %i.cg = select i1 %i.cd, i16 0, i16 %i.cf
  store i16 %i.cg, ptr %i.bz, align 2, !tbaa !12
  %i.ch = tail call i32 @llvm.abs.i32(i32 %i.by, i1 true)
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = add i64 %.056, %i.ci                    ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.ck = trunc nuw i64 %indvars.iv.next70 to i32
  %i.cl = icmp sgt i32 %3, %i.ck
  br i1 %i.cl, label %.lr.ph58, label %._crit_edge59, !llvm.loop !25

._crit_edge59:                                    ; preds = %.lr.ph58, %middle.block, %._crit_edge
  %.0.lcssa = phi i64 [ %.lcssa, %._crit_edge ], [ %i.br, %middle.block ], [ %i.cj, %.lr.ph58 ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SharpYuvUpdateRGB_SSE2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %.not27 = icmp slt i32 %3, 8
  br i1 %.not27, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %3 to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %4 = add nuw i32 %3, 2147483640
  %i.b = and i32 %4, 2147483640
  %narrow = add nuw i32 %i.b, 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %.preheader.loopexit ] ; 4 uses
  %i.c = icmp slt i32 %.0.lcssa, %3
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.d = zext i32 %.0.lcssa to i64                ; 8 uses
  %i.e = xor i32 %.0.lcssa, -1
  %i.f = add i32 %3, %i.e                         ; 3 uses
  %i.g = zext i32 %i.f to i64
  %i.h = add nuw nsw i64 %i.g, 1                  ; 5 uses
  %min.iters.check = icmp ult i32 %i.f, 3
  br i1 %min.iters.check, label %.lr.ph30.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.i = shl nuw nsw i64 %i.d, 1                  ; 3 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.i   ; 2 uses
  %i.j = xor i32 %.0.lcssa, -1
  %i.k = add i32 %3, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = add nuw nsw i64 %i.d, %i.l
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = add nuw nsw i64 %i.n, 2                  ; 3 uses
  %scevgep39 = getelementptr i8, ptr %2, i64 %i.o ; 2 uses
  %scevgep40 = getelementptr i8, ptr %0, i64 %i.i
  %scevgep41 = getelementptr i8, ptr %0, i64 %i.o
  %scevgep42 = getelementptr i8, ptr %1, i64 %i.i
  %scevgep43 = getelementptr i8, ptr %1, i64 %i.o
  %bound0 = icmp ult ptr %scevgep, %scevgep41
  %bound1 = icmp ult ptr %scevgep40, %scevgep39
  %found.conflict = and i1 %bound0, %bound1
  %bound044 = icmp ult ptr %scevgep, %scevgep43
  %bound145 = icmp ult ptr %scevgep42, %scevgep39
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  br i1 %conflict.rdx, label %.lr.ph30.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check47 = icmp ult i32 %i.f, 15
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.h, 12
  %n.vec = and i64 %i.h, 8589934576               ; 4 uses
  %i.p = add nuw nsw i64 %n.vec, %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = add nuw i64 %index, %i.d                 ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !12, !alias.scope !26
  %wide.load48 = load <8 x i16>, ptr %i.s, align 2, !tbaa !12, !alias.scope !26
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load49 = load <8 x i16>, ptr %i.t, align 2, !tbaa !12, !alias.scope !29
  %wide.load50 = load <8 x i16>, ptr %i.u, align 2, !tbaa !12, !alias.scope !29
  %i.v = sub <8 x i16> %wide.load, %wide.load49
  %i.w = sub <8 x i16> %wide.load48, %wide.load50
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.q ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %wide.load51 = load <8 x i16>, ptr %i.x, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %wide.load52 = load <8 x i16>, ptr %i.y, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %i.z = add <8 x i16> %i.v, %wide.load51
  %i.aa = add <8 x i16> %i.w, %wide.load52
  store <8 x i16> %i.z, ptr %i.x, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  store <8 x i16> %i.aa, ptr %i.y, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.h, 8589934588             ; 3 uses
  %i.ac = add nuw nsw i64 %n.vec54, %i.d
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = add nuw i64 %index55, %i.d              ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ad
  %wide.load56 = load <4 x i16>, ptr %i.ae, align 2, !tbaa !12, !alias.scope !26
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad
  %wide.load57 = load <4 x i16>, ptr %i.af, align 2, !tbaa !12, !alias.scope !29
  %i.ag = sub <4 x i16> %wide.load56, %wide.load57
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ad ; 2 uses
  %wide.load58 = load <4 x i16>, ptr %i.ah, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %i.ai = add <4 x i16> %i.ag, %wide.load58
  store <4 x i16> %i.ai, ptr %i.ah, align 2, !tbaa !12, !alias.scope !31, !noalias !33
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %i.aj = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %i.h, %n.vec54
  br i1 %cmp.n60, label %._crit_edge, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv36.ph = phi i64 [ %i.d, %iter.check ], [ %i.d, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph30

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv31 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next32, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv31
  %i.al = load <8 x i16>, ptr %i.ak, align 1, !tbaa !9
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv31
  %i.an = load <8 x i16>, ptr %i.am, align 1, !tbaa !9
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv31 ; 2 uses
  %i.ap = load <8 x i16>, ptr %i.ao, align 1, !tbaa !9
  %i.aq = sub <8 x i16> %i.al, %i.an
  %i.ar = add <8 x i16> %i.aq, %i.ap
  store <8 x i16> %i.ar, ptr %i.ao, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 8
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !37

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %.lr.ph30
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %.lr.ph30 ], [ %indvars.iv36.ph, %.lr.ph30.preheader ] ; 4 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv36
  %i.at = load i16, ptr %i.as, align 2, !tbaa !12
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv36
  %i.av = load i16, ptr %i.au, align 2, !tbaa !12
  %i.aw = sub i16 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv36 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !12
  %i.az = add i16 %i.aw, %i.ay
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !12
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.ba = trunc nuw i64 %indvars.iv.next37 to i32
  %i.bb = icmp sgt i32 %3, %i.ba
  br i1 %i.bb, label %.lr.ph30, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph30, %middle.block, %vec.epilog.middle.block, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SharpYuvFilterRow_SSE2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp slt i32 %5, 11
  %notmask.i = shl nsw i32 -1, %5
  %i.b = xor i32 %notmask.i, -1                   ; 7 uses
  %i.c = trunc i32 %i.b to i16
  %i.d = insertelement <8 x i16> poison, i16 %i.c, i64 0
  %i.e = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> zeroinitializer ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not92.i = icmp slt i32 %2, 8
  br i1 %.not92.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.f = zext nneg i32 %2 to i64
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %6 = add nuw i32 %2, 2147483640
  %i.g = and i32 %6, 2147483640
  %narrow.i = add nuw i32 %i.g, 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.b
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %narrow.i, %.preheader.loopexit.i ] ; 4 uses
  %i.h = icmp slt i32 %.0.lcssa.i, %2
  br i1 %i.h, label %.lr.ph95.preheader.i, label %SharpYuvFilterRow16_SSE2.exit

.lr.ph95.preheader.i:                             ; preds = %.preheader.i
  %i.i = zext i32 %.0.lcssa.i to i64              ; 8 uses
  %7 = xor i32 %.0.lcssa.i, -1
  %8 = add i32 %2, %7                             ; 2 uses
  %wide.trip.count23 = zext i32 %8 to i64
  %9 = add nuw nsw i64 %wide.trip.count23, 1      ; 2 uses
  %min.iters.check68 = icmp ult i32 %8, 7
  br i1 %min.iters.check68, label %.lr.ph95.i.preheader, label %vector.memcheck47

vector.memcheck47:                                ; preds = %.lr.ph95.preheader.i
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %scevgep48.a = getelementptr i8, ptr %4, i64 %i.j ; 3 uses
  %10 = xor i32 %.0.lcssa.i, -1
  %11 = add i32 %2, %10
  %12 = zext i32 %11 to i64                       ; 2 uses
  %13 = add nuw nsw i64 %i.i, %12
  %i.k = shl nuw nsw i64 %13, 2
  %14 = add nuw nsw i64 %i.k, 4                   ; 2 uses
  %scevgep49.a = getelementptr i8, ptr %4, i64 %14 ; 3 uses
  %i.l = shl nuw nsw i64 %i.i, 1                  ; 2 uses
  %scevgep50.a = getelementptr i8, ptr %0, i64 %i.l
  %15 = add nuw nsw i64 %i.i, %12
  %i.m = shl nuw nsw i64 %15, 1
  %i.n = add nuw nsw i64 %i.m, 4                  ; 2 uses
  %scevgep51.a = getelementptr i8, ptr %0, i64 %i.n
  %scevgep52.a = getelementptr i8, ptr %1, i64 %i.l
  %scevgep53.a = getelementptr i8, ptr %1, i64 %i.n
  %scevgep54.a = getelementptr i8, ptr %3, i64 %i.j
  %scevgep55 = getelementptr i8, ptr %3, i64 %14
  %bound056 = icmp ult ptr %scevgep48.a, %scevgep51.a
  %bound157 = icmp ult ptr %scevgep50.a, %scevgep49.a
  %found.conflict58 = and i1 %bound056, %bound157
  %bound059 = icmp ult ptr %scevgep48.a, %scevgep53.a
  %bound160 = icmp ult ptr %scevgep52.a, %scevgep49.a
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %found.conflict58, %found.conflict61
  %bound063 = icmp ult ptr %scevgep48.a, %scevgep55
  %bound164 = icmp ult ptr %scevgep54.a, %scevgep49.a
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx66 = or i1 %conflict.rdx62, %found.conflict65
  br i1 %conflict.rdx66, label %.lr.ph95.i.preheader, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck47
  %n.mod.vf70 = and i64 %9, 8589934588            ; 3 uses
  %i.o = add nuw nsw i64 %n.mod.vf70, %i.i
  %broadcast.splatinsert72 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat73 = shufflevector <4 x i32> %broadcast.splatinsert72, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph69
  %index75 = phi i64 [ 0, %vector.ph69 ], [ %index.next84, %vector.body74 ] ; 2 uses
  %i.p = add nuw i64 %index75, %i.i               ; 4 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p
  %wide.load76.a = load <4 x i16>, ptr %i.q, align 2, !tbaa !12, !alias.scope !39
  %i.r = sext <4 x i16> %wide.load76.a to <4 x i32> ; 2 uses
  %16 = add nuw nsw i64 %i.p, 1                   ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %16
  %wide.load77.a = load <4 x i16>, ptr %i.s, align 2, !tbaa !12, !alias.scope !42
  %i.t = sext <4 x i16> %wide.load77.a to <4 x i32>
  %i.u = add nsw <4 x i32> %i.t, %i.r             ; 2 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %16
  %wide.load78.a = load <4 x i16>, ptr %i.v, align 2, !tbaa !12, !alias.scope !39
  %i.w = sext <4 x i16> %wide.load78.a to <4 x i32> ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.p
  %wide.load79 = load <4 x i16>, ptr %i.x, align 2, !tbaa !12, !alias.scope !42
  %i.y = sext <4 x i16> %wide.load79 to <4 x i32>
  %i.z = add nsw <4 x i32> %i.y, %i.w             ; 2 uses
  %i.aa = add nsw <4 x i32> %i.u, splat (i32 8)
  %i.ab = add nsw <4 x i32> %i.aa, %i.z           ; 2 uses
  %i.ac = shl nsw <4 x i32> %i.r, splat (i32 3)
  %i.ad = shl nsw <4 x i32> %i.z, splat (i32 1)
  %i.ae = add nsw <4 x i32> %i.ad, %i.ac
  %i.af = add nsw <4 x i32> %i.ae, %i.ab
  %i.ag = ashr <4 x i32> %i.af, splat (i32 4)
  %i.ah = shl nsw <4 x i32> %i.w, splat (i32 3)
  %i.ai = shl nsw <4 x i32> %i.u, splat (i32 1)
  %i.aj = add nsw <4 x i32> %i.ah, %i.ai
  %i.ak = add nsw <4 x i32> %i.aj, %i.ab
  %i.al = ashr <4 x i32> %i.ak, splat (i32 4)
  %i.am = shl nuw nsw i64 %i.p, 1                 ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.am
  %wide.vec80 = load <8 x i16>, ptr %i.an, align 2, !tbaa !12, !alias.scope !44
  %i.ao = freeze <8 x i16> %wide.vec80            ; 2 uses
  %i.ap = bitcast <8 x i16> %i.ao to <4 x i32>
  %i.aq = bitcast <8 x i16> %i.ao to <4 x i32>
  %i.ar = and <4 x i32> %i.aq, splat (i32 65535)
  %i.as = lshr <4 x i32> %i.ap, splat (i32 16)
  %i.at = add nsw <4 x i32> %i.ag, %i.ar          ; 2 uses
  %i.au = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.at, <4 x i32> %broadcast.splat73)
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.am
  %i.aw = add nsw <4 x i32> %i.al, %i.as          ; 2 uses
  %i.ax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aw, <4 x i32> %broadcast.splat73)
  %i.ay = shufflevector <4 x i32> %i.at, <4 x i32> %i.aw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.az = icmp slt <8 x i32> %i.ay, zeroinitializer
  %i.ba = shufflevector <4 x i32> %i.au, <4 x i32> %i.ax, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bb = trunc <8 x i32> %i.ba to <8 x i16>
  %interleaved.vec83 = select <8 x i1> %i.az, <8 x i16> zeroinitializer, <8 x i16> %i.bb
  store <8 x i16> %interleaved.vec83, ptr %i.av, align 2, !tbaa !12, !alias.scope !46, !noalias !48
  %index.next84 = add nuw i64 %index75, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next84, %n.mod.vf70
  br i1 %i.bc, label %middle.block85, label %vector.body74, !llvm.loop !49

middle.block85:                                   ; preds = %vector.body74
  %cmp.n86 = icmp eq i64 %9, %n.mod.vf70
  br i1 %cmp.n86, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph95.i.preheader

.lr.ph95.i.preheader:                             ; preds = %vector.memcheck47, %.lr.ph95.preheader.i, %middle.block85
  %indvars.iv101.i.ph = phi i64 [ %i.i, %vector.memcheck47 ], [ %i.i, %.lr.ph95.preheader.i ], [ %i.o, %middle.block85 ]
  br label %.lr.ph95.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv96.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next97.i, %.lr.ph.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 8, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv96.i ; 2 uses
  %i.be = load <8 x i16>, ptr %i.bd, align 1, !tbaa !9 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bg = load <8 x i16>, ptr %i.bf, align 1, !tbaa !9 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv96.i ; 2 uses
  %i.bi = load <8 x i16>, ptr %i.bh, align 1, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bk = load <8 x i16>, ptr %i.bj, align 1, !tbaa !9
  %i.bl = add <8 x i16> %i.bk, %i.be              ; 2 uses
  %i.bm = add <8 x i16> %i.bi, %i.bg              ; 2 uses
  %i.bn = add <8 x i16> %i.bm, splat (i16 8)
  %i.bo = add <8 x i16> %i.bn, %i.bl              ; 2 uses
  %i.bp = shl <8 x i16> %i.bl, splat (i16 1)
  %i.bq = shl <8 x i16> %i.bm, splat (i16 1)
  %i.br = add <8 x i16> %i.bp, %i.bo
  %i.bs = ashr <8 x i16> %i.br, splat (i16 3)
  %i.bt = add <8 x i16> %i.bo, %i.bq
  %i.bu = ashr <8 x i16> %i.bt, splat (i16 3)
  %i.bv = add <8 x i16> %i.bu, %i.be
  %i.bw = add <8 x i16> %i.bs, %i.bg
  %i.bx = ashr <8 x i16> %i.bv, splat (i16 1)     ; 2 uses
  %i.by = ashr <8 x i16> %i.bw, splat (i16 1)     ; 2 uses
  %i.bz = shufflevector <8 x i16> %i.bx, <8 x i16> %i.by, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ca = shufflevector <8 x i16> %i.bx, <8 x i16> %i.by, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cb = shl nuw nsw i64 %indvars.iv96.i, 1      ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cb ; 2 uses
  %i.cd = load <8 x i16>, ptr %i.cc, align 1, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load <8 x i16>, ptr %i.ce, align 1, !tbaa !9
  %i.cg = add <8 x i16> %i.bz, %i.cd
  %i.ch = add <8 x i16> %i.ca, %i.cf
  %i.ci = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cg, <8 x i16> %i.e)
  %i.cj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ci, <8 x i16> zeroinitializer)
  %i.ck = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ch, <8 x i16> %i.e)
  %i.cl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ck, <8 x i16> zeroinitializer)
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cb ; 2 uses
  store <8 x i16> %i.cj, ptr %i.cm, align 1, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <8 x i16> %i.cl, ptr %i.cn, align 1, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i, %i.f
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 8
  br i1 %.not.i, label %.preheader.loopexit.i, label %.lr.ph.i, !llvm.loop !50

.lr.ph95.i:                                       ; preds = %.lr.ph95.i.preheader, %.lr.ph95.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %.lr.ph95.i ], [ %indvars.iv101.i.ph, %.lr.ph95.i.preheader ] ; 4 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv101.i
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !12
  %i.cq = sext i16 %i.cp to i32                   ; 2 uses
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 4 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next102.i
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !12
  %i.ct = sext i16 %i.cs to i32
  %i.cu = add nsw i32 %i.ct, %i.cq                ; 2 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next102.i
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !12
  %i.cx = sext i16 %i.cw to i32                   ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv101.i
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !12
  %i.da = sext i16 %i.cz to i32
  %i.db = add nsw i32 %i.da, %i.cx                ; 2 uses
  %i.dc = add nsw i32 %i.cu, 8
  %i.dd = add nsw i32 %i.dc, %i.db                ; 2 uses
  %i.de = shl nsw i32 %i.cq, 3
  %i.df = shl nsw i32 %i.db, 1
  %i.dg = add nsw i32 %i.df, %i.de
  %i.dh = add nsw i32 %i.dg, %i.dd
  %i.di = ashr i32 %i.dh, 4
  %i.dj = shl nsw i32 %i.cx, 3
  %i.dk = shl nsw i32 %i.cu, 1
  %i.dl = add nsw i32 %i.dj, %i.dk
  %i.dm = add nsw i32 %i.dl, %i.dd
  %i.dn = ashr i32 %i.dm, 4
  %i.do = shl nuw nsw i64 %indvars.iv101.i, 1     ; 3 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !12
  %i.dr = zext i16 %i.dq to i32
  %i.ds = add nsw i32 %i.di, %i.dr                ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  %i.du = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.ds, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.dv = trunc i32 %i.du to i16
  %i.dw = select i1 %i.dt, i16 0, i16 %i.dv
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.do
  store i16 %i.dw, ptr %i.dx, align 2, !tbaa !12
  %i.dy = or disjoint i64 %i.do, 1                ; 2 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !12
  %i.eb = zext i16 %i.ea to i32
  %i.ec = add nsw i32 %i.dn, %i.eb                ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 0
  %i.ee = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.ec, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.ef = trunc i32 %i.ee to i16
  %i.eg = select i1 %i.ed, i16 0, i16 %i.ef
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dy
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !12
  %17 = trunc nuw i64 %indvars.iv.next102.i to i32
  %18 = icmp sgt i32 %2, %17
  br i1 %18, label %.lr.ph95.i, label %SharpYuvFilterRow16_SSE2.exit, !llvm.loop !51

bb.c:                                             ; preds = %bb.a
  %.not83.i = icmp slt i32 %2, 4
  br i1 %.not83.i, label %.preheader.i19, label %.lr.ph.preheader.i13

.lr.ph.preheader.i13:                             ; preds = %bb.c
  %i.ei = zext nneg i32 %2 to i64
  br label %.lr.ph.i14

.preheader.loopexit.i18:                          ; preds = %.lr.ph.i14
  %19 = add nuw i32 %2, 2147483644
  %i.ej = and i32 %19, 2147483644
  %narrow.i19 = add nuw i32 %i.ej, 4
  br label %.preheader.i19

.preheader.i19:                                   ; preds = %.preheader.loopexit.i18, %bb.c
  %.0.lcssa.i20 = phi i32 [ 0, %bb.c ], [ %narrow.i19, %.preheader.loopexit.i18 ] ; 4 uses
  %i.ek = icmp slt i32 %.0.lcssa.i20, %2
  br i1 %i.ek, label %.lr.ph86.preheader.i, label %SharpYuvFilterRow16_SSE2.exit

.lr.ph86.preheader.i:                             ; preds = %.preheader.i19
  %i.el = zext i32 %.0.lcssa.i20 to i64           ; 8 uses
  %20 = xor i32 %.0.lcssa.i20, -1
  %21 = add i32 %2, %20                           ; 2 uses
  %wide.trip.count = zext i32 %21 to i64
  %22 = add nuw nsw i64 %wide.trip.count, 1       ; 2 uses
  %min.iters.check = icmp ult i32 %21, 7
  br i1 %min.iters.check, label %.lr.ph86.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph86.preheader.i
  %i.em = shl nuw nsw i64 %i.el, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.em  ; 3 uses
  %23 = xor i32 %.0.lcssa.i20, -1
  %24 = add i32 %2, %23
  %25 = zext i32 %24 to i64                       ; 2 uses
  %26 = add nuw nsw i64 %i.el, %25
  %i.en = shl nuw nsw i64 %26, 2
  %27 = add nuw nsw i64 %i.en, 4                  ; 2 uses
  %scevgep29.a = getelementptr i8, ptr %4, i64 %27 ; 3 uses
  %i.eo = shl nuw nsw i64 %i.el, 1                ; 2 uses
  %scevgep30.a = getelementptr i8, ptr %0, i64 %i.eo
  %28 = add nuw nsw i64 %i.el, %25
  %i.ep = shl nuw nsw i64 %28, 1
  %i.eq = add nuw nsw i64 %i.ep, 4                ; 2 uses
  %scevgep31.a = getelementptr i8, ptr %0, i64 %i.eq
  %scevgep32.a = getelementptr i8, ptr %1, i64 %i.eo
  %scevgep33.a = getelementptr i8, ptr %1, i64 %i.eq
  %scevgep34.a = getelementptr i8, ptr %3, i64 %i.em
  %scevgep35 = getelementptr i8, ptr %3, i64 %27
  %bound0 = icmp ult ptr %scevgep, %scevgep31.a
  %bound1 = icmp ult ptr %scevgep30.a, %scevgep29.a
  %found.conflict = and i1 %bound0, %bound1
  %bound036 = icmp ult ptr %scevgep, %scevgep33.a
  %bound137 = icmp ult ptr %scevgep32.a, %scevgep29.a
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx = or i1 %found.conflict, %found.conflict38
  %bound039 = icmp ult ptr %scevgep, %scevgep35
  %bound140 = icmp ult ptr %scevgep34.a, %scevgep29.a
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx42 = or i1 %conflict.rdx, %found.conflict41
  br i1 %conflict.rdx42, label %.lr.ph86.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %22, 8589934588             ; 3 uses
  %i.er = add nuw nsw i64 %n.mod.vf, %i.el
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.es = add nuw i64 %index, %i.el               ; 4 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.es
  %wide.load = load <4 x i16>, ptr %i.et, align 2, !tbaa !12, !alias.scope !52
  %i.eu = sext <4 x i16> %wide.load to <4 x i32>  ; 2 uses
  %29 = add nuw nsw i64 %i.es, 1                  ; 2 uses
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %29
  %wide.load43.a = load <4 x i16>, ptr %i.ev, align 2, !tbaa !12, !alias.scope !55
  %i.ew = sext <4 x i16> %wide.load43.a to <4 x i32>
  %i.ex = add nsw <4 x i32> %i.ew, %i.eu          ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %29
  %wide.load44.a = load <4 x i16>, ptr %i.ey, align 2, !tbaa !12, !alias.scope !52
  %i.ez = sext <4 x i16> %wide.load44.a to <4 x i32> ; 2 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.es
  %wide.load45 = load <4 x i16>, ptr %i.fa, align 2, !tbaa !12, !alias.scope !55
  %i.fb = sext <4 x i16> %wide.load45 to <4 x i32>
  %i.fc = add nsw <4 x i32> %i.fb, %i.ez          ; 2 uses
  %i.fd = add nsw <4 x i32> %i.ex, splat (i32 8)
  %i.fe = add nsw <4 x i32> %i.fd, %i.fc          ; 2 uses
  %i.ff = shl nsw <4 x i32> %i.eu, splat (i32 3)
  %i.fg = shl nsw <4 x i32> %i.fc, splat (i32 1)
  %i.fh = add nsw <4 x i32> %i.fg, %i.ff
  %i.fi = add nsw <4 x i32> %i.fh, %i.fe
  %i.fj = ashr <4 x i32> %i.fi, splat (i32 4)
  %i.fk = shl nsw <4 x i32> %i.ez, splat (i32 3)
  %i.fl = shl nsw <4 x i32> %i.ex, splat (i32 1)
  %i.fm = add nsw <4 x i32> %i.fk, %i.fl
  %i.fn = add nsw <4 x i32> %i.fm, %i.fe
  %i.fo = ashr <4 x i32> %i.fn, splat (i32 4)
  %i.fp = shl nuw nsw i64 %i.es, 1                ; 2 uses
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.fp
  %wide.vec = load <8 x i16>, ptr %i.fq, align 2, !tbaa !12, !alias.scope !57
  %i.fr = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.fs = bitcast <8 x i16> %i.fr to <4 x i32>
  %i.ft = bitcast <8 x i16> %i.fr to <4 x i32>
  %i.fu = and <4 x i32> %i.ft, splat (i32 65535)
  %i.fv = lshr <4 x i32> %i.fs, splat (i32 16)
  %i.fw = add nsw <4 x i32> %i.fj, %i.fu          ; 2 uses
  %i.fx = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fw, <4 x i32> %broadcast.splat)
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.fp
  %i.fz = add nsw <4 x i32> %i.fo, %i.fv          ; 2 uses
  %i.ga = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fz, <4 x i32> %broadcast.splat)
  %i.gb = shufflevector <4 x i32> %i.fw, <4 x i32> %i.fz, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.gc = icmp slt <8 x i32> %i.gb, zeroinitializer
  %i.gd = shufflevector <4 x i32> %i.fx, <4 x i32> %i.ga, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ge = trunc <8 x i32> %i.gd to <8 x i16>
  %interleaved.vec = select <8 x i1> %i.gc, <8 x i16> zeroinitializer, <8 x i16> %i.ge
  store <8 x i16> %interleaved.vec, ptr %i.fy, align 2, !tbaa !12, !alias.scope !59, !noalias !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.mod.vf
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %22, %n.mod.vf
  br i1 %cmp.n, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph86.preheader.i, %middle.block
  %indvars.iv92.i.ph = phi i64 [ %i.el, %vector.memcheck ], [ %i.el, %.lr.ph86.preheader.i ], [ %i.er, %middle.block ]
  br label %.lr.ph86.i

.lr.ph.i14:                                       ; preds = %.lr.ph.i14, %.lr.ph.preheader.i13
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph.preheader.i13 ], [ %indvars.iv.next88.i, %.lr.ph.i14 ] ; 4 uses
  %indvars.iv.i15 = phi i64 [ 4, %.lr.ph.preheader.i13 ], [ %indvars.iv.next.i16, %.lr.ph.i14 ]
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv87.i ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 1, !tbaa !9
  %i.gi = insertelement <2 x i64> poison, i64 %i.gh, i64 0
  %i.gj = bitcast <2 x i64> %i.gi to <8 x i16>
  %i.gk = shufflevector <8 x i16> %i.gj, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.gl = bitcast <8 x i16> %i.gk to <4 x i32>
  %i.gm = ashr <4 x i32> %i.gl, splat (i32 16)    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %i.go = load i64, ptr %i.gn, align 1, !tbaa !9
  %i.gp = insertelement <2 x i64> poison, i64 %i.go, i64 0
  %i.gq = bitcast <2 x i64> %i.gp to <8 x i16>
  %i.gr = shufflevector <8 x i16> %i.gq, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.gs = bitcast <8 x i16> %i.gr to <4 x i32>
  %i.gt = ashr <4 x i32> %i.gs, splat (i32 16)    ; 2 uses
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv87.i ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 1, !tbaa !9
  %i.gw = insertelement <2 x i64> poison, i64 %i.gv, i64 0
  %i.gx = bitcast <2 x i64> %i.gw to <8 x i16>
  %i.gy = shufflevector <8 x i16> %i.gx, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.gz = bitcast <8 x i16> %i.gy to <4 x i32>
  %i.ha = ashr <4 x i32> %i.gz, splat (i32 16)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 2
  %i.hc = load i64, ptr %i.hb, align 1, !tbaa !9
  %i.hd = insertelement <2 x i64> poison, i64 %i.hc, i64 0
  %i.he = bitcast <2 x i64> %i.hd to <8 x i16>
  %i.hf = shufflevector <8 x i16> %i.he, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.hg = bitcast <8 x i16> %i.hf to <4 x i32>
  %i.hh = ashr <4 x i32> %i.hg, splat (i32 16)
  %i.hi = add nsw <4 x i32> %i.hh, %i.gm          ; 2 uses
  %i.hj = add nsw <4 x i32> %i.ha, %i.gt          ; 2 uses
  %i.hk = add nsw <4 x i32> %i.hj, splat (i32 8)
  %i.hl = add nsw <4 x i32> %i.hk, %i.hi          ; 2 uses
  %i.hm = shl nsw <4 x i32> %i.hi, splat (i32 1)
  %i.hn = shl nsw <4 x i32> %i.hj, splat (i32 1)
  %i.ho = add nsw <4 x i32> %i.hm, %i.hl
  %i.hp = ashr <4 x i32> %i.ho, splat (i32 3)
  %i.hq = add nsw <4 x i32> %i.hl, %i.hn
  %i.hr = ashr <4 x i32> %i.hq, splat (i32 3)
  %i.hs = add nsw <4 x i32> %i.hr, %i.gm
  %i.ht = add nsw <4 x i32> %i.hp, %i.gt
  %i.hu = ashr <4 x i32> %i.hs, splat (i32 1)     ; 2 uses
  %i.hv = ashr <4 x i32> %i.ht, splat (i32 1)     ; 2 uses
  %i.hw = shufflevector <4 x i32> %i.hu, <4 x i32> %i.hv, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.hx = shufflevector <4 x i32> %i.hu, <4 x i32> %i.hv, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.hy = shl nuw nsw i64 %indvars.iv87.i, 1      ; 2 uses
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.hy
  %i.ia = load <8 x i16>, ptr %i.hz, align 1, !tbaa !9
  %i.ib = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hw, <4 x i32> %i.hx)
  %i.ic = add <8 x i16> %i.ib, %i.ia
  %i.id = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ic, <8 x i16> %i.e)
  %i.ie = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.id, <8 x i16> zeroinitializer)
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.hy
  store <8 x i16> %i.ie, ptr %i.if, align 1, !tbaa !9
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i15, 4 ; 2 uses
  %.not.i17 = icmp samesign ugt i64 %indvars.iv.next.i16, %i.ei
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 4
  br i1 %.not.i17, label %.preheader.loopexit.i18, label %.lr.ph.i14, !llvm.loop !63

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %.lr.ph86.i
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %.lr.ph86.i ], [ %indvars.iv92.i.ph, %.lr.ph86.i.preheader ] ; 4 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv92.i
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !12
  %i.ii = sext i16 %i.ih to i32                   ; 2 uses
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 4 uses
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next93.i
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !12
  %i.il = sext i16 %i.ik to i32
  %i.im = add nsw i32 %i.il, %i.ii                ; 2 uses
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next93.i
  %i.io = load i16, ptr %i.in, align 2, !tbaa !12
  %i.ip = sext i16 %i.io to i32                   ; 2 uses
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv92.i
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !12
  %i.is = sext i16 %i.ir to i32
  %i.it = add nsw i32 %i.is, %i.ip                ; 2 uses
  %i.iu = add nsw i32 %i.im, 8
  %i.iv = add nsw i32 %i.iu, %i.it                ; 2 uses
  %i.iw = shl nsw i32 %i.ii, 3
  %i.ix = shl nsw i32 %i.it, 1
  %i.iy = add nsw i32 %i.ix, %i.iw
  %i.iz = add nsw i32 %i.iy, %i.iv
  %i.ja = ashr i32 %i.iz, 4
  %i.jb = shl nsw i32 %i.ip, 3
  %i.jc = shl nsw i32 %i.im, 1
  %i.jd = add nsw i32 %i.jb, %i.jc
  %i.je = add nsw i32 %i.jd, %i.iv
  %i.jf = ashr i32 %i.je, 4
  %i.jg = shl nuw nsw i64 %indvars.iv92.i, 1      ; 3 uses
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !12
  %i.jj = zext i16 %i.ji to i32
  %i.jk = add nsw i32 %i.ja, %i.jj                ; 2 uses
  %i.jl = icmp slt i32 %i.jk, 0
  %i.jm = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.jk, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.jn = trunc i32 %i.jm to i16
  %i.jo = select i1 %i.jl, i16 0, i16 %i.jn
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.jg
  store i16 %i.jo, ptr %i.jp, align 2, !tbaa !12
  %i.jq = or disjoint i64 %i.jg, 1                ; 2 uses
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !12
  %i.jt = zext i16 %i.js to i32
  %i.ju = add nsw i32 %i.jf, %i.jt                ; 2 uses
  %i.jv = icmp slt i32 %i.ju, 0
  %i.jw = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.ju, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.jx = trunc i32 %i.jw to i16
  %i.jy = select i1 %i.jv, i16 0, i16 %i.jx
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.jq
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !12
  %30 = trunc nuw i64 %indvars.iv.next93.i to i32
  %31 = icmp sgt i32 %2, %30
  br i1 %31, label %.lr.ph86.i, label %SharpYuvFilterRow16_SSE2.exit, !llvm.loop !64

SharpYuvFilterRow16_SSE2.exit:                    ; preds = %.lr.ph86.i, %.lr.ph95.i, %middle.block, %middle.block85, %.preheader.i19, %.preheader.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !5, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = !{!20}
!20 = distinct !{!20, !16}
!21 = !{!15, !18}
!22 = distinct !{!22, !11, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = distinct !{!25, !11, !23}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = !{!30}
!30 = distinct !{!30, !28}
!31 = !{!32}
!32 = distinct !{!32, !28}
!33 = !{!27, !30}
!34 = distinct !{!34, !11, !23, !24}
!35 = !{!"branch_weights", i32 4, i32 12}
!36 = distinct !{!36, !11, !23, !24}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11, !23}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = !{!45}
!45 = distinct !{!45, !41}
!46 = !{!47}
!47 = distinct !{!47, !41}
!48 = !{!40, !43, !45}
!49 = distinct !{!49, !11, !23, !24}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11, !23}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = !{!56}
!56 = distinct !{!56, !54}
!57 = !{!58}
!58 = distinct !{!58, !54}
!59 = !{!60}
!60 = distinct !{!60, !54}
!61 = !{!53, !56, !58}
!62 = distinct !{!62, !11, !23, !24}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11, !23}
end_hunk_0
