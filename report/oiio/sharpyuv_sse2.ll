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
  %i.t = and i32 %3, 2147483640
  %i.u = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.s)
  %i.v = zext i32 %i.u to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.v, %._crit_edge.loopexit ] ; 4 uses
  %.047.lcssa = phi i32 [ 0, %bb.a ], [ %i.t, %._crit_edge.loopexit ] ; 4 uses
  %i.w = icmp slt i32 %.047.lcssa, %3
  br i1 %i.w, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %._crit_edge
  %i.x = zext nneg i32 %.047.lcssa to i64         ; 6 uses
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
  %i.al = add i64 %index, %i.x                    ; 3 uses
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
  %i.b = and i32 %3, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %.preheader.loopexit ] ; 4 uses
  %i.c = icmp slt i32 %.0.lcssa, %3
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.d = zext nneg i32 %.0.lcssa to i64           ; 8 uses
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
  %i.q = add i64 %index, %i.d                     ; 3 uses
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
  %i.ad = add i64 %index55, %i.d                  ; 3 uses
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
  %i.g = and i32 %2, 2147483640
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.b
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.g, %.preheader.loopexit.i ] ; 2 uses
  %i.h = icmp slt i32 %.0.lcssa.i, %2
  br i1 %i.h, label %.lr.ph95.preheader.i, label %SharpYuvFilterRow16_SSE2.exit

.lr.ph95.preheader.i:                             ; preds = %.preheader.i
  %i.i = zext nneg i32 %.0.lcssa.i to i64         ; 7 uses
  %wide.trip.count23 = zext i32 %2 to i64         ; 5 uses
  %i.j = sub nsw i64 %wide.trip.count23, %i.i     ; 2 uses
  %min.iters.check68 = icmp ult i64 %i.j, 8
  br i1 %min.iters.check68, label %.lr.ph95.i.preheader, label %vector.memcheck47

vector.memcheck47:                                ; preds = %.lr.ph95.preheader.i
  %i.k = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %scevgep48 = getelementptr i8, ptr %4, i64 %i.k ; 3 uses
  %i.l = shl nuw nsw i64 %wide.trip.count23, 2    ; 2 uses
  %scevgep49 = getelementptr i8, ptr %4, i64 %i.l ; 3 uses
  %i.m = shl nuw nsw i64 %i.i, 1                  ; 2 uses
  %scevgep50 = getelementptr i8, ptr %0, i64 %i.m
  %i.n = shl nuw nsw i64 %wide.trip.count23, 1
  %i.o = add nuw nsw i64 %i.n, 2                  ; 2 uses
  %scevgep51 = getelementptr i8, ptr %0, i64 %i.o
  %scevgep52 = getelementptr i8, ptr %1, i64 %i.m
  %scevgep53 = getelementptr i8, ptr %1, i64 %i.o
  %scevgep54 = getelementptr i8, ptr %3, i64 %i.k
  %scevgep55 = getelementptr i8, ptr %3, i64 %i.l
  %bound056 = icmp ult ptr %scevgep48, %scevgep51
  %bound157 = icmp ult ptr %scevgep50, %scevgep49
  %found.conflict58 = and i1 %bound056, %bound157
  %bound059 = icmp ult ptr %scevgep48, %scevgep53
  %bound160 = icmp ult ptr %scevgep52, %scevgep49
  %found.conflict61 = and i1 %bound059, %bound160
  %conflict.rdx62 = or i1 %found.conflict58, %found.conflict61
  %bound063 = icmp ult ptr %scevgep48, %scevgep55
  %bound164 = icmp ult ptr %scevgep54, %scevgep49
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx66 = or i1 %conflict.rdx62, %found.conflict65
  br i1 %conflict.rdx66, label %.lr.ph95.i.preheader, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck47
  %n.mod.vf70 = and i64 %wide.trip.count23, 3     ; 2 uses
  %n.vec71 = sub nsw i64 %i.j, %n.mod.vf70        ; 2 uses
  %i.p = add nsw i64 %n.vec71, %i.i
  %broadcast.splatinsert72 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat73 = shufflevector <4 x i32> %broadcast.splatinsert72, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph69
  %index75 = phi i64 [ 0, %vector.ph69 ], [ %index.next84, %vector.body74 ] ; 2 uses
  %i.q = add i64 %index75, %i.i                   ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.q
  %wide.load76 = load <4 x i16>, ptr %i.r, align 2, !tbaa !12, !alias.scope !39
  %i.s = sext <4 x i16> %wide.load76 to <4 x i32> ; 2 uses
  %i.t = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.t
  %wide.load77 = load <4 x i16>, ptr %i.u, align 2, !tbaa !12, !alias.scope !42
  %i.v = sext <4 x i16> %wide.load77 to <4 x i32>
  %i.w = add nsw <4 x i32> %i.v, %i.s             ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.t
  %wide.load78 = load <4 x i16>, ptr %i.x, align 2, !tbaa !12, !alias.scope !39
  %i.y = sext <4 x i16> %wide.load78 to <4 x i32> ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  %wide.load79 = load <4 x i16>, ptr %i.z, align 2, !tbaa !12, !alias.scope !42
  %i.aa = sext <4 x i16> %wide.load79 to <4 x i32>
  %i.ab = add nsw <4 x i32> %i.aa, %i.y           ; 2 uses
  %i.ac = add nsw <4 x i32> %i.w, splat (i32 8)
  %i.ad = add nsw <4 x i32> %i.ac, %i.ab          ; 2 uses
  %i.ae = shl nsw <4 x i32> %i.s, splat (i32 3)
  %i.af = shl nsw <4 x i32> %i.ab, splat (i32 1)
  %i.ag = add nsw <4 x i32> %i.af, %i.ae
  %i.ah = add nsw <4 x i32> %i.ag, %i.ad
  %i.ai = ashr <4 x i32> %i.ah, splat (i32 4)
  %i.aj = shl nsw <4 x i32> %i.y, splat (i32 3)
  %i.ak = shl nsw <4 x i32> %i.w, splat (i32 1)
  %i.al = add nsw <4 x i32> %i.aj, %i.ak
  %i.am = add nsw <4 x i32> %i.al, %i.ad
  %i.an = ashr <4 x i32> %i.am, splat (i32 4)
  %i.ao = shl nuw nsw i64 %i.q, 1                 ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ao
  %wide.vec80 = load <8 x i16>, ptr %i.ap, align 2, !tbaa !12, !alias.scope !44
  %i.aq = freeze <8 x i16> %wide.vec80            ; 2 uses
  %i.ar = bitcast <8 x i16> %i.aq to <4 x i32>
  %i.as = bitcast <8 x i16> %i.aq to <4 x i32>
  %i.at = and <4 x i32> %i.as, splat (i32 65535)
  %i.au = lshr <4 x i32> %i.ar, splat (i32 16)
  %i.av = add nsw <4 x i32> %i.ai, %i.at          ; 2 uses
  %i.aw = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.av, <4 x i32> %broadcast.splat73)
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ao
  %i.ay = add nsw <4 x i32> %i.an, %i.au          ; 2 uses
  %i.az = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ay, <4 x i32> %broadcast.splat73)
  %i.ba = shufflevector <4 x i32> %i.av, <4 x i32> %i.ay, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bb = icmp slt <8 x i32> %i.ba, zeroinitializer
  %i.bc = shufflevector <4 x i32> %i.aw, <4 x i32> %i.az, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bd = trunc <8 x i32> %i.bc to <8 x i16>
  %interleaved.vec83 = select <8 x i1> %i.bb, <8 x i16> zeroinitializer, <8 x i16> %i.bd
  store <8 x i16> %interleaved.vec83, ptr %i.ax, align 2, !tbaa !12, !alias.scope !46, !noalias !48
  %index.next84 = add nuw i64 %index75, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next84, %n.vec71
  br i1 %i.be, label %middle.block85, label %vector.body74, !llvm.loop !49

middle.block85:                                   ; preds = %vector.body74
  %cmp.n86 = icmp eq i64 %n.mod.vf70, 0
  br i1 %cmp.n86, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph95.i.preheader

.lr.ph95.i.preheader:                             ; preds = %vector.memcheck47, %.lr.ph95.preheader.i, %middle.block85
  %indvars.iv101.i.ph = phi i64 [ %i.i, %vector.memcheck47 ], [ %i.i, %.lr.ph95.preheader.i ], [ %i.p, %middle.block85 ]
  br label %.lr.ph95.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv96.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next97.i, %.lr.ph.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 8, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv96.i ; 2 uses
  %i.bg = load <8 x i16>, ptr %i.bf, align 1, !tbaa !9 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bi = load <8 x i16>, ptr %i.bh, align 1, !tbaa !9 ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv96.i ; 2 uses
  %i.bk = load <8 x i16>, ptr %i.bj, align 1, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bm = load <8 x i16>, ptr %i.bl, align 1, !tbaa !9
  %i.bn = add <8 x i16> %i.bm, %i.bg              ; 2 uses
  %i.bo = add <8 x i16> %i.bk, %i.bi              ; 2 uses
  %i.bp = add <8 x i16> %i.bo, splat (i16 8)
  %i.bq = add <8 x i16> %i.bp, %i.bn              ; 2 uses
  %i.br = shl <8 x i16> %i.bn, splat (i16 1)
  %i.bs = shl <8 x i16> %i.bo, splat (i16 1)
  %i.bt = add <8 x i16> %i.br, %i.bq
  %i.bu = ashr <8 x i16> %i.bt, splat (i16 3)
  %i.bv = add <8 x i16> %i.bq, %i.bs
  %i.bw = ashr <8 x i16> %i.bv, splat (i16 3)
  %i.bx = add <8 x i16> %i.bw, %i.bg
  %i.by = add <8 x i16> %i.bu, %i.bi
  %i.bz = ashr <8 x i16> %i.bx, splat (i16 1)     ; 2 uses
  %i.ca = ashr <8 x i16> %i.by, splat (i16 1)     ; 2 uses
  %i.cb = shufflevector <8 x i16> %i.bz, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cc = shufflevector <8 x i16> %i.bz, <8 x i16> %i.ca, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cd = shl nuw nsw i64 %indvars.iv96.i, 1      ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cd ; 2 uses
  %i.cf = load <8 x i16>, ptr %i.ce, align 1, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ch = load <8 x i16>, ptr %i.cg, align 1, !tbaa !9
  %i.ci = add <8 x i16> %i.cb, %i.cf
  %i.cj = add <8 x i16> %i.cc, %i.ch
  %i.ck = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ci, <8 x i16> %i.e)
  %i.cl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ck, <8 x i16> zeroinitializer)
  %i.cm = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cj, <8 x i16> %i.e)
  %i.cn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cm, <8 x i16> zeroinitializer)
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cd ; 2 uses
  store <8 x i16> %i.cl, ptr %i.co, align 1, !tbaa !9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <8 x i16> %i.cn, ptr %i.cp, align 1, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i, %i.f
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 8
  br i1 %.not.i, label %.preheader.loopexit.i, label %.lr.ph.i, !llvm.loop !50

.lr.ph95.i:                                       ; preds = %.lr.ph95.i.preheader, %.lr.ph95.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %.lr.ph95.i ], [ %indvars.iv101.i.ph, %.lr.ph95.i.preheader ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv101.i
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !12
  %i.cs = sext i16 %i.cr to i32                   ; 2 uses
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 4 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next102.i
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !12
  %i.cv = sext i16 %i.cu to i32
  %i.cw = add nsw i32 %i.cv, %i.cs                ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next102.i
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !12
  %i.cz = sext i16 %i.cy to i32                   ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv101.i
  %i.db = load i16, ptr %i.da, align 2, !tbaa !12
  %i.dc = sext i16 %i.db to i32
  %i.dd = add nsw i32 %i.dc, %i.cz                ; 2 uses
  %i.de = add nsw i32 %i.cw, 8
  %i.df = add nsw i32 %i.de, %i.dd                ; 2 uses
  %i.dg = shl nsw i32 %i.cs, 3
  %i.dh = shl nsw i32 %i.dd, 1
  %i.di = add nsw i32 %i.dh, %i.dg
  %i.dj = add nsw i32 %i.di, %i.df
  %i.dk = ashr i32 %i.dj, 4
  %i.dl = shl nsw i32 %i.cz, 3
  %i.dm = shl nsw i32 %i.cw, 1
  %i.dn = add nsw i32 %i.dl, %i.dm
  %i.do = add nsw i32 %i.dn, %i.df
  %i.dp = ashr i32 %i.do, 4
  %i.dq = shl nuw nsw i64 %indvars.iv101.i, 1     ; 3 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !12
  %i.dt = zext i16 %i.ds to i32
  %i.du = add nsw i32 %i.dk, %i.dt                ; 2 uses
  %i.dv = icmp slt i32 %i.du, 0
  %i.dw = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.du, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = select i1 %i.dv, i16 0, i16 %i.dx
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dq
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !12
  %i.ea = or disjoint i64 %i.dq, 1                ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !12
  %i.ed = zext i16 %i.ec to i32
  %i.ee = add nsw i32 %i.dp, %i.ed                ; 2 uses
  %i.ef = icmp slt i32 %i.ee, 0
  %i.eg = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.ee, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.eh = trunc i32 %i.eg to i16
  %i.ei = select i1 %i.ef, i16 0, i16 %i.eh
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ea
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !12
  %exitcond24.not = icmp eq i64 %indvars.iv.next102.i, %wide.trip.count23
  br i1 %exitcond24.not, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph95.i, !llvm.loop !51

bb.c:                                             ; preds = %bb.a
  %.not83.i = icmp slt i32 %2, 4
  br i1 %.not83.i, label %.preheader.i19, label %.lr.ph.preheader.i13

.lr.ph.preheader.i13:                             ; preds = %bb.c
  %i.ek = zext nneg i32 %2 to i64
  br label %.lr.ph.i14

.preheader.loopexit.i18:                          ; preds = %.lr.ph.i14
  %i.el = and i32 %2, 2147483644
  br label %.preheader.i19

.preheader.i19:                                   ; preds = %.preheader.loopexit.i18, %bb.c
  %.0.lcssa.i20 = phi i32 [ 0, %bb.c ], [ %i.el, %.preheader.loopexit.i18 ] ; 2 uses
  %i.em = icmp slt i32 %.0.lcssa.i20, %2
  br i1 %i.em, label %.lr.ph86.preheader.i, label %SharpYuvFilterRow16_SSE2.exit

.lr.ph86.preheader.i:                             ; preds = %.preheader.i19
  %i.en = zext nneg i32 %.0.lcssa.i20 to i64      ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %i.eo = sub nsw i64 %wide.trip.count, %i.en     ; 2 uses
  %min.iters.check = icmp ult i64 %i.eo, 8
  br i1 %min.iters.check, label %.lr.ph86.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph86.preheader.i
  %i.ep = shl nuw nsw i64 %i.en, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.ep  ; 3 uses
  %i.eq = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep29 = getelementptr i8, ptr %4, i64 %i.eq ; 3 uses
  %i.er = shl nuw nsw i64 %i.en, 1                ; 2 uses
  %scevgep30 = getelementptr i8, ptr %0, i64 %i.er
  %i.es = shl nuw nsw i64 %wide.trip.count, 1
  %i.et = add nuw nsw i64 %i.es, 2                ; 2 uses
  %scevgep31 = getelementptr i8, ptr %0, i64 %i.et
  %scevgep32 = getelementptr i8, ptr %1, i64 %i.er
  %scevgep33 = getelementptr i8, ptr %1, i64 %i.et
  %scevgep34 = getelementptr i8, ptr %3, i64 %i.ep
  %scevgep35 = getelementptr i8, ptr %3, i64 %i.eq
  %bound0 = icmp ult ptr %scevgep, %scevgep31
  %bound1 = icmp ult ptr %scevgep30, %scevgep29
  %found.conflict = and i1 %bound0, %bound1
  %bound036 = icmp ult ptr %scevgep, %scevgep33
  %bound137 = icmp ult ptr %scevgep32, %scevgep29
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx = or i1 %found.conflict, %found.conflict38
  %bound039 = icmp ult ptr %scevgep, %scevgep35
  %bound140 = icmp ult ptr %scevgep34, %scevgep29
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx42 = or i1 %conflict.rdx, %found.conflict41
  br i1 %conflict.rdx42, label %.lr.ph86.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %wide.trip.count, 3         ; 2 uses
  %n.vec = sub nsw i64 %i.eo, %n.mod.vf           ; 2 uses
  %i.eu = add nsw i64 %n.vec, %i.en
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ev = add i64 %index, %i.en                   ; 4 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ev
  %wide.load = load <4 x i16>, ptr %i.ew, align 2, !tbaa !12, !alias.scope !52
  %i.ex = sext <4 x i16> %wide.load to <4 x i32>  ; 2 uses
  %i.ey = or disjoint i64 %i.ev, 1                ; 2 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ey
  %wide.load43 = load <4 x i16>, ptr %i.ez, align 2, !tbaa !12, !alias.scope !55
  %i.fa = sext <4 x i16> %wide.load43 to <4 x i32>
  %i.fb = add nsw <4 x i32> %i.fa, %i.ex          ; 2 uses
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ey
  %wide.load44 = load <4 x i16>, ptr %i.fc, align 2, !tbaa !12, !alias.scope !52
  %i.fd = sext <4 x i16> %wide.load44 to <4 x i32> ; 2 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ev
  %wide.load45 = load <4 x i16>, ptr %i.fe, align 2, !tbaa !12, !alias.scope !55
  %i.ff = sext <4 x i16> %wide.load45 to <4 x i32>
  %i.fg = add nsw <4 x i32> %i.ff, %i.fd          ; 2 uses
  %i.fh = add nsw <4 x i32> %i.fb, splat (i32 8)
  %i.fi = add nsw <4 x i32> %i.fh, %i.fg          ; 2 uses
  %i.fj = shl nsw <4 x i32> %i.ex, splat (i32 3)
  %i.fk = shl nsw <4 x i32> %i.fg, splat (i32 1)
  %i.fl = add nsw <4 x i32> %i.fk, %i.fj
  %i.fm = add nsw <4 x i32> %i.fl, %i.fi
  %i.fn = ashr <4 x i32> %i.fm, splat (i32 4)
  %i.fo = shl nsw <4 x i32> %i.fd, splat (i32 3)
  %i.fp = shl nsw <4 x i32> %i.fb, splat (i32 1)
  %i.fq = add nsw <4 x i32> %i.fo, %i.fp
  %i.fr = add nsw <4 x i32> %i.fq, %i.fi
  %i.fs = ashr <4 x i32> %i.fr, splat (i32 4)
  %i.ft = shl nuw nsw i64 %i.ev, 1                ; 2 uses
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ft
  %wide.vec = load <8 x i16>, ptr %i.fu, align 2, !tbaa !12, !alias.scope !57
  %i.fv = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.fw = bitcast <8 x i16> %i.fv to <4 x i32>
  %i.fx = bitcast <8 x i16> %i.fv to <4 x i32>
  %i.fy = and <4 x i32> %i.fx, splat (i32 65535)
  %i.fz = lshr <4 x i32> %i.fw, splat (i32 16)
  %i.ga = add nsw <4 x i32> %i.fn, %i.fy          ; 2 uses
  %i.gb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ga, <4 x i32> %broadcast.splat)
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ft
  %i.gd = add nsw <4 x i32> %i.fs, %i.fz          ; 2 uses
  %i.ge = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gd, <4 x i32> %broadcast.splat)
  %i.gf = shufflevector <4 x i32> %i.ga, <4 x i32> %i.gd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.gg = icmp slt <8 x i32> %i.gf, zeroinitializer
  %i.gh = shufflevector <4 x i32> %i.gb, <4 x i32> %i.ge, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.gi = trunc <8 x i32> %i.gh to <8 x i16>
  %interleaved.vec = select <8 x i1> %i.gg, <8 x i16> zeroinitializer, <8 x i16> %i.gi
  store <8 x i16> %interleaved.vec, ptr %i.gc, align 2, !tbaa !12, !alias.scope !59, !noalias !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph86.preheader.i, %middle.block
  %indvars.iv92.i.ph = phi i64 [ %i.en, %vector.memcheck ], [ %i.en, %.lr.ph86.preheader.i ], [ %i.eu, %middle.block ]
  br label %.lr.ph86.i

.lr.ph.i14:                                       ; preds = %.lr.ph.i14, %.lr.ph.preheader.i13
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph.preheader.i13 ], [ %indvars.iv.next88.i, %.lr.ph.i14 ] ; 4 uses
  %indvars.iv.i15 = phi i64 [ 4, %.lr.ph.preheader.i13 ], [ %indvars.iv.next.i16, %.lr.ph.i14 ]
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv87.i ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 1, !tbaa !9
  %i.gm = insertelement <2 x i64> poison, i64 %i.gl, i64 0
  %i.gn = bitcast <2 x i64> %i.gm to <8 x i16>
  %i.go = shufflevector <8 x i16> %i.gn, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.gp = bitcast <8 x i16> %i.go to <4 x i32>
  %i.gq = ashr <4 x i32> %i.gp, splat (i32 16)    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.gs = load i64, ptr %i.gr, align 1, !tbaa !9
  %i.gt = insertelement <2 x i64> poison, i64 %i.gs, i64 0
  %i.gu = bitcast <2 x i64> %i.gt to <8 x i16>
  %i.gv = shufflevector <8 x i16> %i.gu, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.gw = bitcast <8 x i16> %i.gv to <4 x i32>
  %i.gx = ashr <4 x i32> %i.gw, splat (i32 16)    ; 2 uses
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv87.i ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 1, !tbaa !9
  %i.ha = insertelement <2 x i64> poison, i64 %i.gz, i64 0
  %i.hb = bitcast <2 x i64> %i.ha to <8 x i16>
  %i.hc = shufflevector <8 x i16> %i.hb, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.hd = bitcast <8 x i16> %i.hc to <4 x i32>
  %i.he = ashr <4 x i32> %i.hd, splat (i32 16)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %i.hg = load i64, ptr %i.hf, align 1, !tbaa !9
  %i.hh = insertelement <2 x i64> poison, i64 %i.hg, i64 0
  %i.hi = bitcast <2 x i64> %i.hh to <8 x i16>
  %i.hj = shufflevector <8 x i16> %i.hi, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.hk = bitcast <8 x i16> %i.hj to <4 x i32>
  %i.hl = ashr <4 x i32> %i.hk, splat (i32 16)
  %i.hm = add nsw <4 x i32> %i.hl, %i.gq          ; 2 uses
  %i.hn = add nsw <4 x i32> %i.he, %i.gx          ; 2 uses
  %i.ho = add nsw <4 x i32> %i.hn, splat (i32 8)
  %i.hp = add nsw <4 x i32> %i.ho, %i.hm          ; 2 uses
  %i.hq = shl nsw <4 x i32> %i.hm, splat (i32 1)
  %i.hr = shl nsw <4 x i32> %i.hn, splat (i32 1)
  %i.hs = add nsw <4 x i32> %i.hq, %i.hp
  %i.ht = ashr <4 x i32> %i.hs, splat (i32 3)
  %i.hu = add nsw <4 x i32> %i.hp, %i.hr
  %i.hv = ashr <4 x i32> %i.hu, splat (i32 3)
  %i.hw = add nsw <4 x i32> %i.hv, %i.gq
  %i.hx = add nsw <4 x i32> %i.ht, %i.gx
  %i.hy = ashr <4 x i32> %i.hw, splat (i32 1)     ; 2 uses
  %i.hz = ashr <4 x i32> %i.hx, splat (i32 1)     ; 2 uses
  %i.ia = shufflevector <4 x i32> %i.hy, <4 x i32> %i.hz, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ib = shufflevector <4 x i32> %i.hy, <4 x i32> %i.hz, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ic = shl nuw nsw i64 %indvars.iv87.i, 1      ; 2 uses
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ic
  %i.ie = load <8 x i16>, ptr %i.id, align 1, !tbaa !9
  %i.if = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ia, <4 x i32> %i.ib)
  %i.ig = add <8 x i16> %i.if, %i.ie
  %i.ih = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ig, <8 x i16> %i.e)
  %i.ii = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ih, <8 x i16> zeroinitializer)
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ic
  store <8 x i16> %i.ii, ptr %i.ij, align 1, !tbaa !9
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i15, 4 ; 2 uses
  %.not.i17 = icmp samesign ugt i64 %indvars.iv.next.i16, %i.ek
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 4
  br i1 %.not.i17, label %.preheader.loopexit.i18, label %.lr.ph.i14, !llvm.loop !63

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %.lr.ph86.i
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %.lr.ph86.i ], [ %indvars.iv92.i.ph, %.lr.ph86.i.preheader ] ; 4 uses
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv92.i
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !12
  %i.im = sext i16 %i.il to i32                   ; 2 uses
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 4 uses
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next93.i
  %i.io = load i16, ptr %i.in, align 2, !tbaa !12
  %i.ip = sext i16 %i.io to i32
  %i.iq = add nsw i32 %i.ip, %i.im                ; 2 uses
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next93.i
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !12
  %i.it = sext i16 %i.is to i32                   ; 2 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv92.i
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !12
  %i.iw = sext i16 %i.iv to i32
  %i.ix = add nsw i32 %i.iw, %i.it                ; 2 uses
  %i.iy = add nsw i32 %i.iq, 8
  %i.iz = add nsw i32 %i.iy, %i.ix                ; 2 uses
  %i.ja = shl nsw i32 %i.im, 3
  %i.jb = shl nsw i32 %i.ix, 1
  %i.jc = add nsw i32 %i.jb, %i.ja
  %i.jd = add nsw i32 %i.jc, %i.iz
  %i.je = ashr i32 %i.jd, 4
  %i.jf = shl nsw i32 %i.it, 3
  %i.jg = shl nsw i32 %i.iq, 1
  %i.jh = add nsw i32 %i.jf, %i.jg
  %i.ji = add nsw i32 %i.jh, %i.iz
  %i.jj = ashr i32 %i.ji, 4
  %i.jk = shl nuw nsw i64 %indvars.iv92.i, 1      ; 3 uses
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.jk
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !12
  %i.jn = zext i16 %i.jm to i32
  %i.jo = add nsw i32 %i.je, %i.jn                ; 2 uses
  %i.jp = icmp slt i32 %i.jo, 0
  %i.jq = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.jo, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.jr = trunc i32 %i.jq to i16
  %i.js = select i1 %i.jp, i16 0, i16 %i.jr
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.jk
  store i16 %i.js, ptr %i.jt, align 2, !tbaa !12
  %i.ju = or disjoint i64 %i.jk, 1                ; 2 uses
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !12
  %i.jx = zext i16 %i.jw to i32
  %i.jy = add nsw i32 %i.jj, %i.jx                ; 2 uses
  %i.jz = icmp slt i32 %i.jy, 0
  %i.ka = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.jy, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.kb = trunc i32 %i.ka to i16
  %i.kc = select i1 %i.jz, i16 0, i16 %i.kb
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ju
  store i16 %i.kc, ptr %i.kd, align 2, !tbaa !12
  %exitcond.not = icmp eq i64 %indvars.iv.next93.i, %wide.trip.count
  br i1 %exitcond.not, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph86.i, !llvm.loop !64

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
end_hunk_0
