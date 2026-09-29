Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/sharpyuv_sse2?download=true
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
  store ptr @SharpYuvUpdateY_SSE2, ptr @SharpYuvUpdateY, align 8, !tbaa !15
  store ptr @SharpYuvUpdateRGB_SSE2, ptr @SharpYuvUpdateRGB, align 8, !tbaa !15
  store ptr @SharpYuvFilterRow_SSE2, ptr @SharpYuvFilterRow, align 8, !tbaa !15
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
  %i.h = load <8 x i16>, ptr %i.g, align 1, !tbaa !8
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv64
  %i.j = load <8 x i16>, ptr %i.i, align 1, !tbaa !8
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv64 ; 2 uses
  %i.l = load <8 x i16>, ptr %i.k, align 1, !tbaa !8
  %i.m = sub <8 x i16> %i.h, %i.j                 ; 3 uses
  %.lobit.i = ashr <8 x i16> %i.m, splat (i16 15)
  %i.n = add <8 x i16> %i.l, %i.m
  %i.o = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.n, <8 x i16> %i.d)
  %i.p = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.o, <8 x i16> zeroinitializer)
  %i.q = or <8 x i16> %.lobit.i, splat (i16 1)
  %i.r = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.m, <8 x i16> %i.q)
  store <8 x i16> %i.p, ptr %i.k, align 1, !tbaa !8
  %i.s = add <4 x i32> %i.r, %i.f                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.e
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !16

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.t = add nuw i32 %3, 2147483640
  %i.u = and i32 %i.t, 2147483640
  %narrow = add nuw i32 %i.u, 8
  %i.v = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.s)
  %i.w = zext i32 %i.v to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.w, %._crit_edge.loopexit ] ; 4 uses
  %.047.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 4 uses
  %i.x = icmp slt i32 %.047.lcssa, %3
  br i1 %i.x, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %._crit_edge
  %i.y = zext i32 %.047.lcssa to i64              ; 6 uses
  %i.z = xor i32 %.047.lcssa, -1
  %i.aa = add i32 %3, %i.z                        ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aa, 9
  br i1 %min.iters.check, label %.lr.ph58.preheader90, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph58.preheader
  %i.ad = shl nuw nsw i64 %i.y, 1                 ; 3 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.ad  ; 2 uses
  %5 = xor i32 %.047.lcssa, -1
  %6 = add i32 %3, %5
  %7 = zext i32 %6 to i64
  %i.ae = add nuw nsw i64 %i.y, %7
  %i.af = shl nuw nsw i64 %i.ae, 1
  %i.ag = add nuw nsw i64 %i.af, 2                ; 3 uses
  %scevgep76 = getelementptr i8, ptr %2, i64 %i.ag ; 2 uses
  %scevgep77 = getelementptr i8, ptr %0, i64 %i.ad
  %scevgep78 = getelementptr i8, ptr %0, i64 %i.ag
  %scevgep79 = getelementptr i8, ptr %1, i64 %i.ad
  %scevgep80 = getelementptr i8, ptr %1, i64 %i.ag
  %bound0 = icmp ult ptr %scevgep, %scevgep78
  %bound1 = icmp ult ptr %scevgep77, %scevgep76
  %found.conflict = and i1 %bound0, %bound1
  %bound081 = icmp ult ptr %scevgep, %scevgep80
  %bound182 = icmp ult ptr %scevgep79, %scevgep76
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx = or i1 %found.conflict, %found.conflict83
  br i1 %conflict.rdx, label %.lr.ph58.preheader90, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 8589934588              ; 3 uses
  %i.ah = add nuw nsw i64 %n.vec, %i.y
  %i.ai = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.lcssa, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ai, %vector.ph ], [ %i.bm, %vector.body ]
  %vec.phi84 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bn, %vector.body ]
  %i.aj = add nuw i64 %index, %i.y                ; 3 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %wide.load = load <2 x i16>, ptr %i.ak, align 2, !tbaa !11, !alias.scope !23
  %wide.load85 = load <2 x i16>, ptr %i.al, align 2, !tbaa !11, !alias.scope !23
  %i.am = zext <2 x i16> %wide.load to <2 x i32>
  %i.an = zext <2 x i16> %wide.load85 to <2 x i32>
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aj ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %wide.load86 = load <2 x i16>, ptr %i.ao, align 2, !tbaa !11, !alias.scope !24
  %wide.load87 = load <2 x i16>, ptr %i.ap, align 2, !tbaa !11, !alias.scope !24
  %i.aq = zext <2 x i16> %wide.load86 to <2 x i32>
  %i.ar = zext <2 x i16> %wide.load87 to <2 x i32>
  %i.as = sub nsw <2 x i32> %i.am, %i.aq          ; 2 uses
  %i.at = sub nsw <2 x i32> %i.an, %i.ar          ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aj ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %wide.load88 = load <2 x i16>, ptr %i.au, align 2, !tbaa !11, !alias.scope !25, !noalias !26
  %wide.load89 = load <2 x i16>, ptr %i.av, align 2, !tbaa !11, !alias.scope !25, !noalias !26
  %i.aw = zext <2 x i16> %wide.load88 to <2 x i32>
  %i.ax = zext <2 x i16> %wide.load89 to <2 x i32>
  %i.ay = add nsw <2 x i32> %i.as, %i.aw          ; 2 uses
  %i.az = add nsw <2 x i32> %i.at, %i.ax          ; 2 uses
  %i.ba = icmp slt <2 x i32> %i.ay, zeroinitializer
  %i.bb = icmp slt <2 x i32> %i.az, zeroinitializer
  %i.bc = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ay, <2 x i32> %broadcast.splat)
  %i.bd = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.az, <2 x i32> %broadcast.splat)
  %i.be = trunc <2 x i32> %i.bc to <2 x i16>
  %i.bf = trunc <2 x i32> %i.bd to <2 x i16>
  %i.bg = select <2 x i1> %i.ba, <2 x i16> zeroinitializer, <2 x i16> %i.be
  %i.bh = select <2 x i1> %i.bb, <2 x i16> zeroinitializer, <2 x i16> %i.bf
  store <2 x i16> %i.bg, ptr %i.au, align 2, !tbaa !11, !alias.scope !25, !noalias !26
  store <2 x i16> %i.bh, ptr %i.av, align 2, !tbaa !11, !alias.scope !25, !noalias !26
  %i.bi = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.as, i1 true)
  %i.bj = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.at, i1 true)
  %i.bk = zext nneg <2 x i32> %i.bi to <2 x i64>
  %i.bl = zext nneg <2 x i32> %i.bj to <2 x i64>
  %i.bm = add <2 x i64> %vec.phi, %i.bk           ; 2 uses
  %i.bn = add <2 x i64> %vec.phi84, %i.bl         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bn, %i.bm
  %i.bp = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge59, label %.lr.ph58.preheader90

.lr.ph58.preheader90:                             ; preds = %vector.memcheck, %.lr.ph58.preheader, %middle.block
  %indvars.iv69.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph58.preheader ], [ %i.ah, %middle.block ]
  %.056.ph = phi i64 [ %.lcssa, %vector.memcheck ], [ %.lcssa, %.lr.ph58.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.preheader90, %.lr.ph58
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph58 ], [ %indvars.iv69.ph, %.lr.ph58.preheader90 ] ; 4 uses
  %.056 = phi i64 [ %i.ch, %.lr.ph58 ], [ %.056.ph, %.lr.ph58.preheader90 ]
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv69
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !11
  %i.bs = zext i16 %i.br to i32
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv69
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !11
  %i.bv = zext i16 %i.bu to i32
  %i.bw = sub nsw i32 %i.bs, %i.bv                ; 2 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv69 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !11
  %i.bz = zext i16 %i.by to i32
  %i.ca = add nsw i32 %i.bw, %i.bz                ; 2 uses
  %i.cb = icmp slt i32 %i.ca, 0
  %i.cc = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.ca, i32 range(i32 -2147483648, 2147483647) %i.a)
  %i.cd = trunc i32 %i.cc to i16
  %i.ce = select i1 %i.cb, i16 0, i16 %i.cd
  store i16 %i.ce, ptr %i.bx, align 2, !tbaa !11
  %i.cf = tail call i32 @llvm.abs.i32(i32 %i.bw, i1 true)
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = add i64 %.056, %i.cg                    ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.ci = trunc nuw i64 %indvars.iv.next70 to i32
  %i.cj = icmp sgt i32 %3, %i.ci
  br i1 %i.cj, label %.lr.ph58, label %._crit_edge59, !llvm.loop !22

._crit_edge59:                                    ; preds = %.lr.ph58, %middle.block, %._crit_edge
  %.0.lcssa = phi i64 [ %.lcssa, %._crit_edge ], [ %i.bp, %middle.block ], [ %i.ch, %.lr.ph58 ]
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
  %i.b = add nuw i32 %3, 2147483640
  %i.c = and i32 %i.b, 2147483640
  %narrow = add nuw i32 %i.c, 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %.preheader.loopexit ] ; 4 uses
  %i.d = icmp slt i32 %.0.lcssa, %3
  br i1 %i.d, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.e = zext i32 %.0.lcssa to i64                ; 8 uses
  %i.f = xor i32 %.0.lcssa, -1
  %i.g = add i32 %3, %i.f                         ; 3 uses
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 1                  ; 5 uses
  %min.iters.check = icmp ult i32 %i.g, 3
  br i1 %min.iters.check, label %.lr.ph30.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.j = shl nuw nsw i64 %i.e, 1                  ; 3 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.j   ; 2 uses
  %i.k = xor i32 %.0.lcssa, -1
  %i.l = add i32 %3, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = add nuw nsw i64 %i.e, %i.m
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = add nuw nsw i64 %i.o, 2                  ; 3 uses
  %scevgep39 = getelementptr i8, ptr %2, i64 %i.p ; 2 uses
  %scevgep40 = getelementptr i8, ptr %0, i64 %i.j
  %scevgep41 = getelementptr i8, ptr %0, i64 %i.p
  %scevgep42 = getelementptr i8, ptr %1, i64 %i.j
  %scevgep43 = getelementptr i8, ptr %1, i64 %i.p
  %bound0 = icmp ult ptr %scevgep, %scevgep41
  %bound1 = icmp ult ptr %scevgep40, %scevgep39
  %found.conflict = and i1 %bound0, %bound1
  %bound044 = icmp ult ptr %scevgep, %scevgep43
  %bound145 = icmp ult ptr %scevgep42, %scevgep39
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict, %found.conflict46
  br i1 %conflict.rdx, label %.lr.ph30.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check47 = icmp ult i32 %i.g, 15
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 8589934576               ; 4 uses
  %i.r = add nuw nsw i64 %n.vec, %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = add nuw i64 %index, %i.e                 ; 3 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <8 x i16>, ptr %i.t, align 2, !tbaa !11, !alias.scope !35
  %wide.load48 = load <8 x i16>, ptr %i.u, align 2, !tbaa !11, !alias.scope !35
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load49 = load <8 x i16>, ptr %i.v, align 2, !tbaa !11, !alias.scope !36
  %wide.load50 = load <8 x i16>, ptr %i.w, align 2, !tbaa !11, !alias.scope !36
  %i.x = sub <8 x i16> %wide.load, %wide.load49
  %i.y = sub <8 x i16> %wide.load48, %wide.load50
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.s ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %wide.load51 = load <8 x i16>, ptr %i.z, align 2, !tbaa !11, !alias.scope !37, !noalias !38
  %wide.load52 = load <8 x i16>, ptr %i.aa, align 2, !tbaa !11, !alias.scope !37, !noalias !38
  %i.ab = add <8 x i16> %i.x, %wide.load51
  %i.ac = add <8 x i16> %i.y, %wide.load52
  store <8 x i16> %i.ab, ptr %i.z, align 2, !tbaa !11, !alias.scope !37, !noalias !38
  store <8 x i16> %i.ac, ptr %i.aa, align 2, !tbaa !11, !alias.scope !37, !noalias !38
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.i, 8589934588             ; 3 uses
  %i.ae = add nuw nsw i64 %n.vec53, %i.e
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %i.af = add nuw i64 %index54, %i.e              ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af
  %wide.load55 = load <4 x i16>, ptr %i.ag, align 2, !tbaa !11, !alias.scope !35
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.af
  %wide.load56 = load <4 x i16>, ptr %i.ah, align 2, !tbaa !11, !alias.scope !36
  %i.ai = sub <4 x i16> %wide.load55, %wide.load56
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.af ; 2 uses
  %wide.load57 = load <4 x i16>, ptr %i.aj, align 2, !tbaa !11, !alias.scope !37, !noalias !38
  %i.ak = add <4 x i16> %i.ai, %wide.load57
  store <4 x i16> %i.ak, ptr %i.aj, align 2, !tbaa !11, !alias.scope !37, !noalias !38
  %index.next58 = add nuw i64 %index54, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.i, %n.vec53
  br i1 %cmp.n59, label %._crit_edge, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv36.ph = phi i64 [ %i.e, %iter.check ], [ %i.e, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph30

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv31 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next32, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv31
  %i.an = load <8 x i16>, ptr %i.am, align 1, !tbaa !8
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv31
  %i.ap = load <8 x i16>, ptr %i.ao, align 1, !tbaa !8
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv31 ; 2 uses
  %i.ar = load <8 x i16>, ptr %i.aq, align 1, !tbaa !8
  %i.as = sub <8 x i16> %i.an, %i.ap
  %i.at = add <8 x i16> %i.as, %i.ar
  store <8 x i16> %i.at, ptr %i.aq, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 8
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !33

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %.lr.ph30
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %.lr.ph30 ], [ %indvars.iv36.ph, %.lr.ph30.preheader ] ; 4 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv36
  %i.av = load i16, ptr %i.au, align 2, !tbaa !11
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv36
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !11
  %i.ay = sub i16 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv36 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !11
  %i.bb = add i16 %i.ay, %i.ba
  store i16 %i.bb, ptr %i.az, align 2, !tbaa !11
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.bc = trunc nuw i64 %indvars.iv.next37 to i32
  %i.bd = icmp sgt i32 %3, %i.bc
  br i1 %i.bd, label %.lr.ph30, label %._crit_edge, !llvm.loop !34

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
  %i.g = add nuw i32 %2, 2147483640
  %i.h = and i32 %i.g, 2147483640
  %narrow.i = add nuw i32 %i.h, 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.b
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %narrow.i, %.preheader.loopexit.i ] ; 4 uses
  %i.i = icmp slt i32 %.0.lcssa.i, %2
  br i1 %i.i, label %.lr.ph95.preheader.i, label %SharpYuvFilterRow16_SSE2.exit

.lr.ph95.preheader.i:                             ; preds = %.preheader.i
  %i.j = zext i32 %.0.lcssa.i to i64              ; 8 uses
  %i.k = xor i32 %.0.lcssa.i, -1
  %i.l = add i32 %2, %i.k                         ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check67 = icmp ult i32 %i.l, 7
  br i1 %min.iters.check67, label %.lr.ph95.i.preheader, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph95.preheader.i
  %i.o = shl nuw nsw i64 %i.j, 2                  ; 2 uses
  %scevgep47 = getelementptr i8, ptr %4, i64 %i.o ; 3 uses
  %6 = xor i32 %.0.lcssa.i, -1
  %7 = add i32 %2, %6
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.p = add nuw nsw i64 %i.j, %8
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = add nuw nsw i64 %i.q, 4                  ; 2 uses
  %scevgep48 = getelementptr i8, ptr %4, i64 %i.r ; 3 uses
  %i.s = shl nuw nsw i64 %i.j, 1                  ; 2 uses
  %scevgep49 = getelementptr i8, ptr %0, i64 %i.s
  %i.t = add nuw nsw i64 %i.j, %8
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = add nuw nsw i64 %i.u, 4                  ; 2 uses
  %scevgep50 = getelementptr i8, ptr %0, i64 %i.v
  %scevgep51 = getelementptr i8, ptr %1, i64 %i.s
  %scevgep52 = getelementptr i8, ptr %1, i64 %i.v
  %scevgep53 = getelementptr i8, ptr %3, i64 %i.o
  %scevgep54 = getelementptr i8, ptr %3, i64 %i.r
  %bound055 = icmp ult ptr %scevgep47, %scevgep50
  %bound156 = icmp ult ptr %scevgep49, %scevgep48
  %found.conflict57 = and i1 %bound055, %bound156
  %bound058 = icmp ult ptr %scevgep47, %scevgep52
  %bound159 = icmp ult ptr %scevgep51, %scevgep48
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx61 = or i1 %found.conflict57, %found.conflict60
  %bound062 = icmp ult ptr %scevgep47, %scevgep54
  %bound163 = icmp ult ptr %scevgep53, %scevgep48
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx65 = or i1 %conflict.rdx61, %found.conflict64
  br i1 %conflict.rdx65, label %.lr.ph95.i.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck46
  %n.vec69 = and i64 %i.n, 8589934588             ; 3 uses
  %i.w = add nuw nsw i64 %n.vec69, %i.j
  %broadcast.splatinsert70 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat71 = shufflevector <4 x i32> %broadcast.splatinsert70, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph68
  %index73 = phi i64 [ 0, %vector.ph68 ], [ %index.next82, %vector.body72 ] ; 2 uses
  %i.x = add nuw i64 %index73, %i.j               ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.x
  %wide.load74 = load <4 x i16>, ptr %i.y, align 2, !tbaa !11, !alias.scope !56
  %i.z = sext <4 x i16> %wide.load74 to <4 x i32> ; 2 uses
  %i.aa = add nuw nsw i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aa
  %wide.load75 = load <4 x i16>, ptr %i.ab, align 2, !tbaa !11, !alias.scope !57
  %i.ac = sext <4 x i16> %wide.load75 to <4 x i32>
  %i.ad = add nsw <4 x i32> %i.ac, %i.z           ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aa
  %wide.load76 = load <4 x i16>, ptr %i.ae, align 2, !tbaa !11, !alias.scope !56
  %i.af = sext <4 x i16> %wide.load76 to <4 x i32> ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.x
  %wide.load77 = load <4 x i16>, ptr %i.ag, align 2, !tbaa !11, !alias.scope !57
  %i.ah = sext <4 x i16> %wide.load77 to <4 x i32>
  %i.ai = add nsw <4 x i32> %i.ah, %i.af          ; 2 uses
  %i.aj = add nsw <4 x i32> %i.ad, splat (i32 8)
  %i.ak = add nsw <4 x i32> %i.aj, %i.ai          ; 2 uses
  %i.al = shl nsw <4 x i32> %i.z, splat (i32 3)
  %i.am = shl nsw <4 x i32> %i.ai, splat (i32 1)
  %i.an = add nsw <4 x i32> %i.am, %i.al
  %i.ao = add nsw <4 x i32> %i.an, %i.ak
  %i.ap = ashr <4 x i32> %i.ao, splat (i32 4)
  %i.aq = shl nsw <4 x i32> %i.af, splat (i32 3)
  %i.ar = shl nsw <4 x i32> %i.ad, splat (i32 1)
  %i.as = add nsw <4 x i32> %i.aq, %i.ar
  %i.at = add nsw <4 x i32> %i.as, %i.ak
  %i.au = ashr <4 x i32> %i.at, splat (i32 4)
  %i.av = shl nuw nsw i64 %i.x, 1                 ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.av
  %wide.vec78 = load <8 x i16>, ptr %i.aw, align 2, !tbaa !11, !alias.scope !58
  %i.ax = freeze <8 x i16> %wide.vec78            ; 2 uses
  %i.ay = bitcast <8 x i16> %i.ax to <4 x i32>
  %i.az = bitcast <8 x i16> %i.ax to <4 x i32>
  %i.ba = and <4 x i32> %i.az, splat (i32 65535)
  %i.bb = lshr <4 x i32> %i.ay, splat (i32 16)
  %i.bc = add nsw <4 x i32> %i.ap, %i.ba          ; 2 uses
  %i.bd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bc, <4 x i32> %broadcast.splat71)
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.av
  %i.bf = add nsw <4 x i32> %i.au, %i.bb          ; 2 uses
  %i.bg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bf, <4 x i32> %broadcast.splat71)
  %i.bh = shufflevector <4 x i32> %i.bc, <4 x i32> %i.bf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bi = icmp slt <8 x i32> %i.bh, zeroinitializer
  %i.bj = shufflevector <4 x i32> %i.bd, <4 x i32> %i.bg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bk = trunc <8 x i32> %i.bj to <8 x i16>
  %interleaved.vec81 = select <8 x i1> %i.bi, <8 x i16> zeroinitializer, <8 x i16> %i.bk
  store <8 x i16> %interleaved.vec81, ptr %i.be, align 2, !tbaa !11, !alias.scope !59, !noalias !60
  %index.next82 = add nuw i64 %index73, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next82, %n.vec69
  br i1 %i.bl, label %middle.block83, label %vector.body72, !llvm.loop !45

middle.block83:                                   ; preds = %vector.body72
  %cmp.n84 = icmp eq i64 %i.n, %n.vec69
  br i1 %cmp.n84, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph95.i.preheader

.lr.ph95.i.preheader:                             ; preds = %vector.memcheck46, %.lr.ph95.preheader.i, %middle.block83
  %indvars.iv101.i.ph = phi i64 [ %i.j, %vector.memcheck46 ], [ %i.j, %.lr.ph95.preheader.i ], [ %i.w, %middle.block83 ]
  br label %.lr.ph95.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv96.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next97.i, %.lr.ph.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 8, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv96.i ; 2 uses
  %i.bn = load <8 x i16>, ptr %i.bm, align 1, !tbaa !8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bp = load <8 x i16>, ptr %i.bo, align 1, !tbaa !8 ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv96.i ; 2 uses
  %i.br = load <8 x i16>, ptr %i.bq, align 1, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bt = load <8 x i16>, ptr %i.bs, align 1, !tbaa !8
  %i.bu = add <8 x i16> %i.bt, %i.bn              ; 2 uses
  %i.bv = add <8 x i16> %i.br, %i.bp              ; 2 uses
  %i.bw = add <8 x i16> %i.bv, splat (i16 8)
  %i.bx = add <8 x i16> %i.bw, %i.bu              ; 2 uses
  %i.by = shl <8 x i16> %i.bu, splat (i16 1)
  %i.bz = shl <8 x i16> %i.bv, splat (i16 1)
  %i.ca = add <8 x i16> %i.by, %i.bx
  %i.cb = ashr <8 x i16> %i.ca, splat (i16 3)
  %i.cc = add <8 x i16> %i.bx, %i.bz
  %i.cd = ashr <8 x i16> %i.cc, splat (i16 3)
  %i.ce = add <8 x i16> %i.cd, %i.bn
  %i.cf = add <8 x i16> %i.cb, %i.bp
  %i.cg = ashr <8 x i16> %i.ce, splat (i16 1)     ; 2 uses
  %i.ch = ashr <8 x i16> %i.cf, splat (i16 1)     ; 2 uses
  %i.ci = shufflevector <8 x i16> %i.cg, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cj = shufflevector <8 x i16> %i.cg, <8 x i16> %i.ch, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ck = shl nuw nsw i64 %indvars.iv96.i, 1      ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ck ; 2 uses
  %i.cm = load <8 x i16>, ptr %i.cl, align 1, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.co = load <8 x i16>, ptr %i.cn, align 1, !tbaa !8
  %i.cp = add <8 x i16> %i.ci, %i.cm
  %i.cq = add <8 x i16> %i.cj, %i.co
  %i.cr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cp, <8 x i16> %i.e)
  %i.cs = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cr, <8 x i16> zeroinitializer)
  %i.ct = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cq, <8 x i16> %i.e)
  %i.cu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ct, <8 x i16> zeroinitializer)
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ck ; 2 uses
  store <8 x i16> %i.cs, ptr %i.cv, align 1, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <8 x i16> %i.cu, ptr %i.cw, align 1, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i, %i.f
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 8
  br i1 %.not.i, label %.preheader.loopexit.i, label %.lr.ph.i, !llvm.loop !46

.lr.ph95.i:                                       ; preds = %.lr.ph95.i.preheader, %.lr.ph95.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %.lr.ph95.i ], [ %indvars.iv101.i.ph, %.lr.ph95.i.preheader ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv101.i
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !11
  %i.cz = sext i16 %i.cy to i32                   ; 2 uses
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 4 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next102.i
  %i.db = load i16, ptr %i.da, align 2, !tbaa !11
  %i.dc = sext i16 %i.db to i32
  %i.dd = add nsw i32 %i.dc, %i.cz                ; 2 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next102.i
  %i.df = load i16, ptr %i.de, align 2, !tbaa !11
  %i.dg = sext i16 %i.df to i32                   ; 2 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv101.i
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !11
  %i.dj = sext i16 %i.di to i32
  %i.dk = add nsw i32 %i.dj, %i.dg                ; 2 uses
  %i.dl = add nsw i32 %i.dd, 8
  %i.dm = add nsw i32 %i.dl, %i.dk                ; 2 uses
  %i.dn = shl nsw i32 %i.cz, 3
  %i.do = shl nsw i32 %i.dk, 1
  %i.dp = add nsw i32 %i.do, %i.dn
  %i.dq = add nsw i32 %i.dp, %i.dm
  %i.dr = ashr i32 %i.dq, 4
  %i.ds = shl nsw i32 %i.dg, 3
  %i.dt = shl nsw i32 %i.dd, 1
  %i.du = add nsw i32 %i.ds, %i.dt
  %i.dv = add nsw i32 %i.du, %i.dm
  %i.dw = ashr i32 %i.dv, 4
  %i.dx = shl nuw nsw i64 %indvars.iv101.i, 1     ; 3 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !11
  %i.ea = zext i16 %i.dz to i32
  %i.eb = add nsw i32 %i.dr, %i.ea                ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  %i.ed = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.eb, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = select i1 %i.ec, i16 0, i16 %i.ee
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dx
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !11
  %i.eh = or disjoint i64 %i.dx, 1                ; 2 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !11
  %i.ek = zext i16 %i.ej to i32
  %i.el = add nsw i32 %i.dw, %i.ek                ; 2 uses
  %i.em = icmp slt i32 %i.el, 0
  %i.en = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.el, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.eo = trunc i32 %i.en to i16
  %i.ep = select i1 %i.em, i16 0, i16 %i.eo
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.eh
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !11
  %i.er = trunc nuw i64 %indvars.iv.next102.i to i32
  %i.es = icmp sgt i32 %2, %i.er
  br i1 %i.es, label %.lr.ph95.i, label %SharpYuvFilterRow16_SSE2.exit, !llvm.loop !47

bb.c:                                             ; preds = %bb.a
  %.not83.i = icmp slt i32 %2, 4
  br i1 %.not83.i, label %.preheader.i20, label %.lr.ph.preheader.i13

.lr.ph.preheader.i13:                             ; preds = %bb.c
  %i.et = zext nneg i32 %2 to i64
  br label %.lr.ph.i14

.preheader.loopexit.i18:                          ; preds = %.lr.ph.i14
  %i.eu = add nuw i32 %2, 2147483644
  %i.ev = and i32 %i.eu, 2147483644
  %narrow.i19 = add nuw i32 %i.ev, 4
  br label %.preheader.i20

.preheader.i20:                                   ; preds = %.preheader.loopexit.i18, %bb.c
  %.0.lcssa.i21 = phi i32 [ 0, %bb.c ], [ %narrow.i19, %.preheader.loopexit.i18 ] ; 4 uses
  %i.ew = icmp slt i32 %.0.lcssa.i21, %2
  br i1 %i.ew, label %.lr.ph86.preheader.i, label %SharpYuvFilterRow16_SSE2.exit

.lr.ph86.preheader.i:                             ; preds = %.preheader.i20
  %i.ex = zext i32 %.0.lcssa.i21 to i64           ; 8 uses
  %i.ey = xor i32 %.0.lcssa.i21, -1
  %i.ez = add i32 %2, %i.ey                       ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ez, 7
  br i1 %min.iters.check, label %.lr.ph86.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph86.preheader.i
  %i.fc = shl nuw nsw i64 %i.ex, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.fc  ; 3 uses
  %9 = xor i32 %.0.lcssa.i21, -1
  %10 = add i32 %2, %9
  %11 = zext i32 %10 to i64                       ; 2 uses
  %i.fd = add nuw nsw i64 %i.ex, %11
  %i.fe = shl nuw nsw i64 %i.fd, 2
  %i.ff = add nuw nsw i64 %i.fe, 4                ; 2 uses
  %scevgep28 = getelementptr i8, ptr %4, i64 %i.ff ; 3 uses
  %i.fg = shl nuw nsw i64 %i.ex, 1                ; 2 uses
  %scevgep29 = getelementptr i8, ptr %0, i64 %i.fg
  %i.fh = add nuw nsw i64 %i.ex, %11
  %i.fi = shl nuw nsw i64 %i.fh, 1
  %i.fj = add nuw nsw i64 %i.fi, 4                ; 2 uses
  %scevgep30 = getelementptr i8, ptr %0, i64 %i.fj
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.fg
  %scevgep32 = getelementptr i8, ptr %1, i64 %i.fj
  %scevgep33 = getelementptr i8, ptr %3, i64 %i.fc
  %scevgep34 = getelementptr i8, ptr %3, i64 %i.ff
  %bound0 = icmp ult ptr %scevgep, %scevgep30
  %bound1 = icmp ult ptr %scevgep29, %scevgep28
  %found.conflict = and i1 %bound0, %bound1
  %bound035 = icmp ult ptr %scevgep, %scevgep32
  %bound136 = icmp ult ptr %scevgep31, %scevgep28
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %found.conflict, %found.conflict37
  %bound038 = icmp ult ptr %scevgep, %scevgep34
  %bound139 = icmp ult ptr %scevgep33, %scevgep28
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx, %found.conflict40
  br i1 %conflict.rdx41, label %.lr.ph86.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fb, 8589934588              ; 3 uses
  %i.fk = add nuw nsw i64 %n.vec, %i.ex
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fl = add nuw i64 %index, %i.ex               ; 4 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.fl
  %wide.load = load <4 x i16>, ptr %i.fm, align 2, !tbaa !11, !alias.scope !61
  %i.fn = sext <4 x i16> %wide.load to <4 x i32>  ; 2 uses
  %i.fo = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fo
  %wide.load42 = load <4 x i16>, ptr %i.fp, align 2, !tbaa !11, !alias.scope !62
  %i.fq = sext <4 x i16> %wide.load42 to <4 x i32>
  %i.fr = add nsw <4 x i32> %i.fq, %i.fn          ; 2 uses
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.fo
  %wide.load43 = load <4 x i16>, ptr %i.fs, align 2, !tbaa !11, !alias.scope !61
  %i.ft = sext <4 x i16> %wide.load43 to <4 x i32> ; 2 uses
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fl
  %wide.load44 = load <4 x i16>, ptr %i.fu, align 2, !tbaa !11, !alias.scope !62
  %i.fv = sext <4 x i16> %wide.load44 to <4 x i32>
  %i.fw = add nsw <4 x i32> %i.fv, %i.ft          ; 2 uses
  %i.fx = add nsw <4 x i32> %i.fr, splat (i32 8)
  %i.fy = add nsw <4 x i32> %i.fx, %i.fw          ; 2 uses
  %i.fz = shl nsw <4 x i32> %i.fn, splat (i32 3)
  %i.ga = shl nsw <4 x i32> %i.fw, splat (i32 1)
  %i.gb = add nsw <4 x i32> %i.ga, %i.fz
  %i.gc = add nsw <4 x i32> %i.gb, %i.fy
  %i.gd = ashr <4 x i32> %i.gc, splat (i32 4)
  %i.ge = shl nsw <4 x i32> %i.ft, splat (i32 3)
  %i.gf = shl nsw <4 x i32> %i.fr, splat (i32 1)
  %i.gg = add nsw <4 x i32> %i.ge, %i.gf
  %i.gh = add nsw <4 x i32> %i.gg, %i.fy
  %i.gi = ashr <4 x i32> %i.gh, splat (i32 4)
  %i.gj = shl nuw nsw i64 %i.fl, 1                ; 2 uses
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.gj
  %wide.vec = load <8 x i16>, ptr %i.gk, align 2, !tbaa !11, !alias.scope !63
  %i.gl = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.gm = bitcast <8 x i16> %i.gl to <4 x i32>
  %i.gn = bitcast <8 x i16> %i.gl to <4 x i32>
  %i.go = and <4 x i32> %i.gn, splat (i32 65535)
  %i.gp = lshr <4 x i32> %i.gm, splat (i32 16)
  %i.gq = add nsw <4 x i32> %i.gd, %i.go          ; 2 uses
  %i.gr = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gq, <4 x i32> %broadcast.splat)
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.gj
  %i.gt = add nsw <4 x i32> %i.gi, %i.gp          ; 2 uses
  %i.gu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gt, <4 x i32> %broadcast.splat)
  %i.gv = shufflevector <4 x i32> %i.gq, <4 x i32> %i.gt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.gw = icmp slt <8 x i32> %i.gv, zeroinitializer
  %i.gx = shufflevector <4 x i32> %i.gr, <4 x i32> %i.gu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.gy = trunc <8 x i32> %i.gx to <8 x i16>
  %interleaved.vec = select <8 x i1> %i.gw, <8 x i16> zeroinitializer, <8 x i16> %i.gy
  store <8 x i16> %interleaved.vec, ptr %i.gs, align 2, !tbaa !11, !alias.scope !64, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gz = icmp eq i64 %index.next, %n.vec
  br i1 %i.gz, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fb, %n.vec
  br i1 %cmp.n, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph86.preheader.i, %middle.block
  %indvars.iv92.i.ph = phi i64 [ %i.ex, %vector.memcheck ], [ %i.ex, %.lr.ph86.preheader.i ], [ %i.fk, %middle.block ]
  br label %.lr.ph86.i

.lr.ph.i14:                                       ; preds = %.lr.ph.i14, %.lr.ph.preheader.i13
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph.preheader.i13 ], [ %indvars.iv.next88.i, %.lr.ph.i14 ] ; 4 uses
  %indvars.iv.i15 = phi i64 [ 4, %.lr.ph.preheader.i13 ], [ %indvars.iv.next.i16, %.lr.ph.i14 ]
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv87.i ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 1, !tbaa !8
  %i.hc = insertelement <2 x i64> poison, i64 %i.hb, i64 0
  %i.hd = bitcast <2 x i64> %i.hc to <8 x i16>
  %i.he = shufflevector <8 x i16> %i.hd, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.hf = bitcast <8 x i16> %i.he to <4 x i32>
  %i.hg = ashr <4 x i32> %i.hf, splat (i32 16)    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  %i.hi = load i64, ptr %i.hh, align 1, !tbaa !8
  %i.hj = insertelement <2 x i64> poison, i64 %i.hi, i64 0
  %i.hk = bitcast <2 x i64> %i.hj to <8 x i16>
  %i.hl = shufflevector <8 x i16> %i.hk, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.hm = bitcast <8 x i16> %i.hl to <4 x i32>
  %i.hn = ashr <4 x i32> %i.hm, splat (i32 16)    ; 2 uses
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv87.i ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 1, !tbaa !8
  %i.hq = insertelement <2 x i64> poison, i64 %i.hp, i64 0
  %i.hr = bitcast <2 x i64> %i.hq to <8 x i16>
  %i.hs = shufflevector <8 x i16> %i.hr, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.ht = bitcast <8 x i16> %i.hs to <4 x i32>
  %i.hu = ashr <4 x i32> %i.ht, splat (i32 16)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hw = load i64, ptr %i.hv, align 1, !tbaa !8
  %i.hx = insertelement <2 x i64> poison, i64 %i.hw, i64 0
  %i.hy = bitcast <2 x i64> %i.hx to <8 x i16>
  %i.hz = shufflevector <8 x i16> %i.hy, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.ia = bitcast <8 x i16> %i.hz to <4 x i32>
  %i.ib = ashr <4 x i32> %i.ia, splat (i32 16)
  %i.ic = add nsw <4 x i32> %i.ib, %i.hg          ; 2 uses
  %i.id = add nsw <4 x i32> %i.hu, %i.hn          ; 2 uses
  %i.ie = add nsw <4 x i32> %i.id, splat (i32 8)
  %i.if = add nsw <4 x i32> %i.ie, %i.ic          ; 2 uses
  %i.ig = shl nsw <4 x i32> %i.ic, splat (i32 1)
  %i.ih = shl nsw <4 x i32> %i.id, splat (i32 1)
  %i.ii = add nsw <4 x i32> %i.ig, %i.if
  %i.ij = ashr <4 x i32> %i.ii, splat (i32 3)
  %i.ik = add nsw <4 x i32> %i.if, %i.ih
  %i.il = ashr <4 x i32> %i.ik, splat (i32 3)
  %i.im = add nsw <4 x i32> %i.il, %i.hg
  %i.in = add nsw <4 x i32> %i.ij, %i.hn
  %i.io = ashr <4 x i32> %i.im, splat (i32 1)     ; 2 uses
  %i.ip = ashr <4 x i32> %i.in, splat (i32 1)     ; 2 uses
  %i.iq = shufflevector <4 x i32> %i.io, <4 x i32> %i.ip, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ir = shufflevector <4 x i32> %i.io, <4 x i32> %i.ip, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.is = shl nuw nsw i64 %indvars.iv87.i, 1      ; 2 uses
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.is
  %i.iu = load <8 x i16>, ptr %i.it, align 1, !tbaa !8
  %i.iv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.iq, <4 x i32> %i.ir)
  %i.iw = add <8 x i16> %i.iv, %i.iu
  %i.ix = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.iw, <8 x i16> %i.e)
  %i.iy = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ix, <8 x i16> zeroinitializer)
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.is
  store <8 x i16> %i.iy, ptr %i.iz, align 1, !tbaa !8
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i15, 4 ; 2 uses
  %.not.i17 = icmp samesign ugt i64 %indvars.iv.next.i16, %i.et
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 4
  br i1 %.not.i17, label %.preheader.loopexit.i18, label %.lr.ph.i14, !llvm.loop !54

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %.lr.ph86.i
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %.lr.ph86.i ], [ %indvars.iv92.i.ph, %.lr.ph86.i.preheader ] ; 4 uses
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv92.i
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !11
  %i.jc = sext i16 %i.jb to i32                   ; 2 uses
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 4 uses
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next93.i
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !11
  %i.jf = sext i16 %i.je to i32
  %i.jg = add nsw i32 %i.jf, %i.jc                ; 2 uses
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next93.i
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !11
  %i.jj = sext i16 %i.ji to i32                   ; 2 uses
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv92.i
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !11
  %i.jm = sext i16 %i.jl to i32
  %i.jn = add nsw i32 %i.jm, %i.jj                ; 2 uses
  %i.jo = add nsw i32 %i.jg, 8
  %i.jp = add nsw i32 %i.jo, %i.jn                ; 2 uses
  %i.jq = shl nsw i32 %i.jc, 3
  %i.jr = shl nsw i32 %i.jn, 1
  %i.js = add nsw i32 %i.jr, %i.jq
  %i.jt = add nsw i32 %i.js, %i.jp
  %i.ju = ashr i32 %i.jt, 4
  %i.jv = shl nsw i32 %i.jj, 3
  %i.jw = shl nsw i32 %i.jg, 1
  %i.jx = add nsw i32 %i.jv, %i.jw
  %i.jy = add nsw i32 %i.jx, %i.jp
  %i.jz = ashr i32 %i.jy, 4
  %i.ka = shl nuw nsw i64 %indvars.iv92.i, 1      ; 3 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !11
  %i.kd = zext i16 %i.kc to i32
  %i.ke = add nsw i32 %i.ju, %i.kd                ; 2 uses
  %i.kf = icmp slt i32 %i.ke, 0
  %i.kg = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.ke, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.kh = trunc i32 %i.kg to i16
  %i.ki = select i1 %i.kf, i16 0, i16 %i.kh
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ka
  store i16 %i.ki, ptr %i.kj, align 2, !tbaa !11
  %i.kk = or disjoint i64 %i.ka, 1                ; 2 uses
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.kk
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !11
  %i.kn = zext i16 %i.km to i32
  %i.ko = add nsw i32 %i.jz, %i.kn                ; 2 uses
  %i.kp = icmp slt i32 %i.ko, 0
  %i.kq = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.ko, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.kr = trunc i32 %i.kq to i16
  %i.ks = select i1 %i.kp, i16 0, i16 %i.kr
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.kk
  store i16 %i.ks, ptr %i.kt, align 2, !tbaa !11
end_hunk_0
