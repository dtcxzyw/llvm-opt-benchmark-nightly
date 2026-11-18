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
  %.047.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %i.x = icmp slt i32 %.047.lcssa, %3
  br i1 %i.x, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %._crit_edge
  %i.y = zext i32 %.047.lcssa to i64              ; 6 uses
  %i.z = xor i32 %.047.lcssa, -1
  %i.aa = add i32 %3, %i.z                        ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aa, 9
  br i1 %min.iters.check, label %.lr.ph58.preheader93, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph58.preheader
  %i.ad = shl nuw nsw i64 %i.y, 1                 ; 3 uses
  %i.ae = getelementptr i8, ptr %2, i64 %i.ad     ; 2 uses
  %i.af = add nuw nsw i64 %i.y, %i.ab
  %i.ag = shl nuw nsw i64 %i.af, 1
  %i.ah = add nuw nsw i64 %i.ag, 2                ; 3 uses
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah     ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 %i.ad
  %i.ak = getelementptr i8, ptr %0, i64 %i.ah
  %bound0 = icmp ult ptr %i.ae, %i.ak
  %bound1 = icmp ult ptr %i.aj, %i.ai
  %found.conflict = and i1 %bound0, %bound1
  %5 = getelementptr i8, ptr %1, i64 %i.ad
  %6 = getelementptr i8, ptr %1, i64 %i.ah
  %bound084 = icmp ult ptr %i.ae, %6
  %bound185 = icmp ult ptr %5, %i.ai
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx = or i1 %found.conflict, %found.conflict86
  br i1 %conflict.rdx, label %.lr.ph58.preheader93, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 8589934588              ; 3 uses
  %i.al = add nuw nsw i64 %n.vec, %i.y
  %i.am = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.lcssa, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.am, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi87 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.br, %vector.body ]
  %i.an = add nuw i64 %index, %i.y                ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %wide.load = load <2 x i16>, ptr %i.ao, align 2, !tbaa !11, !alias.scope !23
  %wide.load88 = load <2 x i16>, ptr %i.ap, align 2, !tbaa !11, !alias.scope !23
  %i.aq = zext <2 x i16> %wide.load to <2 x i32>
  %i.ar = zext <2 x i16> %wide.load88 to <2 x i32>
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %wide.load89 = load <2 x i16>, ptr %i.as, align 2, !tbaa !11, !alias.scope !24
  %wide.load90 = load <2 x i16>, ptr %i.at, align 2, !tbaa !11, !alias.scope !24
  %i.au = zext <2 x i16> %wide.load89 to <2 x i32>
  %i.av = zext <2 x i16> %wide.load90 to <2 x i32>
  %i.aw = sub nsw <2 x i32> %i.aq, %i.au          ; 2 uses
  %i.ax = sub nsw <2 x i32> %i.ar, %i.av          ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.an ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %wide.load91 = load <2 x i16>, ptr %i.ay, align 2, !tbaa !11, !alias.scope !25, !noalias !26
  %wide.load92 = load <2 x i16>, ptr %i.az, align 2, !tbaa !11, !alias.scope !25, !noalias !26
  %i.ba = zext <2 x i16> %wide.load91 to <2 x i32>
  %i.bb = zext <2 x i16> %wide.load92 to <2 x i32>
  %i.bc = add nsw <2 x i32> %i.aw, %i.ba          ; 2 uses
  %i.bd = add nsw <2 x i32> %i.ax, %i.bb          ; 2 uses
  %i.be = icmp slt <2 x i32> %i.bc, zeroinitializer
  %i.bf = icmp slt <2 x i32> %i.bd, zeroinitializer
  %i.bg = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bc, <2 x i32> %broadcast.splat)
  %i.bh = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bd, <2 x i32> %broadcast.splat)
  %i.bi = trunc <2 x i32> %i.bg to <2 x i16>
  %i.bj = trunc <2 x i32> %i.bh to <2 x i16>
  %i.bk = select <2 x i1> %i.be, <2 x i16> zeroinitializer, <2 x i16> %i.bi
  %i.bl = select <2 x i1> %i.bf, <2 x i16> zeroinitializer, <2 x i16> %i.bj
  store <2 x i16> %i.bk, ptr %i.ay, align 2, !tbaa !11, !alias.scope !25, !noalias !26
  store <2 x i16> %i.bl, ptr %i.az, align 2, !tbaa !11, !alias.scope !25, !noalias !26
  %i.bm = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.aw, i1 true)
  %i.bn = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.ax, i1 true)
  %i.bo = zext nneg <2 x i32> %i.bm to <2 x i64>
  %i.bp = zext nneg <2 x i32> %i.bn to <2 x i64>
  %i.bq = add <2 x i64> %vec.phi, %i.bo           ; 2 uses
  %i.br = add <2 x i64> %vec.phi87, %i.bp         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.br, %i.bq
  %i.bt = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge59, label %.lr.ph58.preheader93

.lr.ph58.preheader93:                             ; preds = %vector.memcheck, %.lr.ph58.preheader, %middle.block
  %indvars.iv69.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph58.preheader ], [ %i.al, %middle.block ]
  %.056.ph = phi i64 [ %.lcssa, %vector.memcheck ], [ %.lcssa, %.lr.ph58.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.preheader93, %.lr.ph58
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph58 ], [ %indvars.iv69.ph, %.lr.ph58.preheader93 ] ; 4 uses
  %.056 = phi i64 [ %i.cl, %.lr.ph58 ], [ %.056.ph, %.lr.ph58.preheader93 ]
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv69
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !11
  %i.bw = zext i16 %i.bv to i32
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv69
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !11
  %i.bz = zext i16 %i.by to i32
  %i.ca = sub nsw i32 %i.bw, %i.bz                ; 2 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv69 ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !11
  %i.cd = zext i16 %i.cc to i32
  %i.ce = add nsw i32 %i.ca, %i.cd                ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 0
  %i.cg = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.ce, i32 range(i32 -2147483648, 2147483647) %i.a)
  %i.ch = trunc i32 %i.cg to i16
  %i.ci = select i1 %i.cf, i16 0, i16 %i.ch
  store i16 %i.ci, ptr %i.cb, align 2, !tbaa !11
  %i.cj = tail call i32 @llvm.abs.i32(i32 %i.ca, i1 true)
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = add i64 %.056, %i.ck                    ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.cm = trunc nuw i64 %indvars.iv.next70 to i32
  %i.cn = icmp sgt i32 %3, %i.cm
  br i1 %i.cn, label %.lr.ph58, label %._crit_edge59, !llvm.loop !22

._crit_edge59:                                    ; preds = %.lr.ph58, %middle.block, %._crit_edge
  %.0.lcssa = phi i64 [ %.lcssa, %._crit_edge ], [ %i.bt, %middle.block ], [ %i.cl, %.lr.ph58 ]
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
  %i.k = getelementptr i8, ptr %2, i64 %i.j       ; 2 uses
  %i.l = xor i32 %.0.lcssa, -1
  %i.m = add i32 %3, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = add nuw nsw i64 %i.e, %i.n
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = add nuw nsw i64 %i.p, 2                  ; 3 uses
  %i.r = getelementptr i8, ptr %2, i64 %i.q       ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.j
  %i.t = getelementptr i8, ptr %0, i64 %i.q
  %bound0 = icmp ult ptr %i.k, %i.t
  %bound1 = icmp ult ptr %i.s, %i.r
  %found.conflict = and i1 %bound0, %bound1
  %4 = getelementptr i8, ptr %1, i64 %i.j
  %5 = getelementptr i8, ptr %1, i64 %i.q
  %bound047 = icmp ult ptr %i.k, %5
  %bound148 = icmp ult ptr %4, %i.r
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx = or i1 %found.conflict, %found.conflict49
  br i1 %conflict.rdx, label %.lr.ph30.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check50 = icmp ult i32 %i.g, 15
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.i, 12
  %n.vec = and i64 %i.i, 8589934576               ; 4 uses
  %i.v = add nuw nsw i64 %n.vec, %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = add nuw i64 %index, %i.e                 ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <8 x i16>, ptr %i.x, align 2, !tbaa !11, !alias.scope !35
  %wide.load51 = load <8 x i16>, ptr %i.y, align 2, !tbaa !11, !alias.scope !35
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load52 = load <8 x i16>, ptr %i.z, align 2, !tbaa !11, !alias.scope !36
  %wide.load53 = load <8 x i16>, ptr %i.aa, align 2, !tbaa !11, !alias.scope !36
  %i.ab = sub <8 x i16> %wide.load, %wide.load52
  %i.ac = sub <8 x i16> %wide.load51, %wide.load53
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.w ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %wide.load54 = load <8 x i16>, ptr %i.ad, align 2, !tbaa !11, !alias.scope !37, !noalias !38
  %wide.load55 = load <8 x i16>, ptr %i.ae, align 2, !tbaa !11, !alias.scope !37, !noalias !38
  %i.af = add <8 x i16> %i.ab, %wide.load54
  %i.ag = add <8 x i16> %i.ac, %wide.load55
  store <8 x i16> %i.af, ptr %i.ad, align 2, !tbaa !11, !alias.scope !37, !noalias !38
  store <8 x i16> %i.ag, ptr %i.ae, align 2, !tbaa !11, !alias.scope !37, !noalias !38
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.preheader, label %vec.epilog.ph, !prof !39

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %i.i, 8589934588             ; 3 uses
  %i.ai = add nuw nsw i64 %n.vec56, %i.e
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 2 uses
  %i.aj = add nuw i64 %index57, %i.e              ; 3 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aj
  %wide.load58 = load <4 x i16>, ptr %i.ak, align 2, !tbaa !11, !alias.scope !35
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aj
  %wide.load59 = load <4 x i16>, ptr %i.al, align 2, !tbaa !11, !alias.scope !36
  %i.am = sub <4 x i16> %wide.load58, %wide.load59
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aj ; 2 uses
  %wide.load60 = load <4 x i16>, ptr %i.an, align 2, !tbaa !11, !alias.scope !37, !noalias !38
  %i.ao = add <4 x i16> %i.am, %wide.load60
  store <4 x i16> %i.ao, ptr %i.an, align 2, !tbaa !11, !alias.scope !37, !noalias !38
  %index.next61 = add nuw i64 %index57, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next61, %n.vec56
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n62 = icmp eq i64 %i.i, %n.vec56
  br i1 %cmp.n62, label %._crit_edge, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv36.ph = phi i64 [ %i.e, %iter.check ], [ %i.e, %vector.memcheck ], [ %i.v, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %.lr.ph30

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv31 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next32, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv31
  %i.ar = load <8 x i16>, ptr %i.aq, align 1, !tbaa !8
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv31
  %i.at = load <8 x i16>, ptr %i.as, align 1, !tbaa !8
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv31 ; 2 uses
  %i.av = load <8 x i16>, ptr %i.au, align 1, !tbaa !8
  %i.aw = sub <8 x i16> %i.ar, %i.at
  %i.ax = add <8 x i16> %i.aw, %i.av
  store <8 x i16> %i.ax, ptr %i.au, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 8
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !33

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %.lr.ph30
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %.lr.ph30 ], [ %indvars.iv36.ph, %.lr.ph30.preheader ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv36
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !11
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv36
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !11
  %i.bc = sub i16 %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv36 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !11
  %i.bf = add i16 %i.bc, %i.be
  store i16 %i.bf, ptr %i.bd, align 2, !tbaa !11
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.bg = trunc nuw i64 %indvars.iv.next37 to i32
  %i.bh = icmp sgt i32 %3, %i.bg
  br i1 %i.bh, label %.lr.ph30, label %._crit_edge, !llvm.loop !34

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
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ %narrow.i, %.preheader.loopexit.i ] ; 3 uses
  %i.i = icmp slt i32 %.0.lcssa.i, %2
  br i1 %i.i, label %.lr.ph95.preheader.i, label %SharpYuvFilterRow16_SSE2.exit

.lr.ph95.preheader.i:                             ; preds = %.preheader.i
  %i.j = zext i32 %.0.lcssa.i to i64              ; 8 uses
  %i.k = xor i32 %.0.lcssa.i, -1
  %i.l = add i32 %2, %i.k                         ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check73 = icmp ult i32 %i.l, 7
  br i1 %min.iters.check73, label %.lr.ph95.i.preheader, label %vector.memcheck74

vector.memcheck74:                                ; preds = %.lr.ph95.preheader.i
  %i.o = shl nuw nsw i64 %i.j, 2                  ; 2 uses
  %i.p = getelementptr i8, ptr %4, i64 %i.o       ; 3 uses
  %i.q = add nuw nsw i64 %i.j, %i.m
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = getelementptr i8, ptr %4, i64 %i.s       ; 3 uses
  %i.u = shl nuw nsw i64 %i.j, 1                  ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 %i.u
  %i.w = add nuw nsw i64 %i.j, %i.m
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = add nuw nsw i64 %i.x, 4                  ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %i.y
  %bound075 = icmp ult ptr %i.p, %i.z
  %bound176 = icmp ult ptr %i.v, %i.t
  %found.conflict77 = and i1 %bound075, %bound176
  %i.aa = getelementptr i8, ptr %1, i64 %i.u
  %i.ab = getelementptr i8, ptr %1, i64 %i.y
  %bound075.a = icmp ult ptr %i.p, %i.ab
  %bound176.a = icmp ult ptr %i.aa, %i.t
  %found.conflict77.a = and i1 %bound075.a, %bound176.a
  %conflict.rdx81 = or i1 %found.conflict77, %found.conflict77.a
  %6 = getelementptr i8, ptr %3, i64 %i.o
  %7 = getelementptr i8, ptr %3, i64 %i.s
  %bound082 = icmp ult ptr %i.p, %7
  %bound183 = icmp ult ptr %6, %i.t
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx81, %found.conflict84
  br i1 %conflict.rdx85, label %.lr.ph95.i.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck74
  %n.vec87 = and i64 %i.n, 8589934588             ; 3 uses
  %i.ac = add nuw nsw i64 %n.vec87, %i.j
  %broadcast.splatinsert88 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat89 = shufflevector <4 x i32> %broadcast.splatinsert88, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph86
  %index91 = phi i64 [ 0, %vector.ph86 ], [ %index.next100, %vector.body90 ] ; 2 uses
  %i.ad = add nuw i64 %index91, %i.j              ; 4 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ad
  %wide.load92 = load <4 x i16>, ptr %i.ae, align 2, !tbaa !11, !alias.scope !56
  %i.af = sext <4 x i16> %wide.load92 to <4 x i32> ; 2 uses
  %i.ag = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ag
  %wide.load93 = load <4 x i16>, ptr %i.ah, align 2, !tbaa !11, !alias.scope !57
  %i.ai = sext <4 x i16> %wide.load93 to <4 x i32>
  %i.aj = add nsw <4 x i32> %i.ai, %i.af          ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ag
  %wide.load94 = load <4 x i16>, ptr %i.ak, align 2, !tbaa !11, !alias.scope !56
  %i.al = sext <4 x i16> %wide.load94 to <4 x i32> ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ad
  %wide.load95 = load <4 x i16>, ptr %i.am, align 2, !tbaa !11, !alias.scope !57
  %i.an = sext <4 x i16> %wide.load95 to <4 x i32>
  %i.ao = add nsw <4 x i32> %i.an, %i.al          ; 2 uses
  %i.ap = add nsw <4 x i32> %i.aj, splat (i32 8)
  %i.aq = add nsw <4 x i32> %i.ap, %i.ao          ; 2 uses
  %i.ar = shl nsw <4 x i32> %i.af, splat (i32 3)
  %i.as = shl nsw <4 x i32> %i.ao, splat (i32 1)
  %i.at = add nsw <4 x i32> %i.as, %i.ar
  %i.au = add nsw <4 x i32> %i.at, %i.aq
  %i.av = ashr <4 x i32> %i.au, splat (i32 4)
  %i.aw = shl nsw <4 x i32> %i.al, splat (i32 3)
  %i.ax = shl nsw <4 x i32> %i.aj, splat (i32 1)
  %i.ay = add nsw <4 x i32> %i.aw, %i.ax
  %i.az = add nsw <4 x i32> %i.ay, %i.aq
  %i.ba = ashr <4 x i32> %i.az, splat (i32 4)
  %i.bb = shl nuw nsw i64 %i.ad, 1                ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bb
  %wide.vec96 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !11, !alias.scope !58
  %i.bd = freeze <8 x i16> %wide.vec96            ; 2 uses
  %i.be = bitcast <8 x i16> %i.bd to <4 x i32>
  %i.bf = bitcast <8 x i16> %i.bd to <4 x i32>
  %i.bg = and <4 x i32> %i.bf, splat (i32 65535)
  %i.bh = lshr <4 x i32> %i.be, splat (i32 16)
  %i.bi = add nsw <4 x i32> %i.av, %i.bg          ; 2 uses
  %i.bj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bi, <4 x i32> %broadcast.splat89)
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bb
  %i.bl = add nsw <4 x i32> %i.ba, %i.bh          ; 2 uses
  %i.bm = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bl, <4 x i32> %broadcast.splat89)
  %i.bn = shufflevector <4 x i32> %i.bi, <4 x i32> %i.bl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bo = icmp slt <8 x i32> %i.bn, zeroinitializer
  %i.bp = shufflevector <4 x i32> %i.bj, <4 x i32> %i.bm, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bq = trunc <8 x i32> %i.bp to <8 x i16>
  %interleaved.vec99 = select <8 x i1> %i.bo, <8 x i16> zeroinitializer, <8 x i16> %i.bq
  store <8 x i16> %interleaved.vec99, ptr %i.bk, align 2, !tbaa !11, !alias.scope !59, !noalias !60
  %index.next100 = add nuw i64 %index91, 4        ; 2 uses
  %i.br = icmp eq i64 %index.next100, %n.vec87
  br i1 %i.br, label %middle.block101, label %vector.body90, !llvm.loop !45

middle.block101:                                  ; preds = %vector.body90
  %cmp.n102 = icmp eq i64 %i.n, %n.vec87
  br i1 %cmp.n102, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph95.i.preheader

.lr.ph95.i.preheader:                             ; preds = %vector.memcheck74, %.lr.ph95.preheader.i, %middle.block101
  %indvars.iv101.i.ph = phi i64 [ %i.j, %vector.memcheck74 ], [ %i.j, %.lr.ph95.preheader.i ], [ %i.ac, %middle.block101 ]
  br label %.lr.ph95.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv96.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next97.i, %.lr.ph.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 8, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv96.i ; 2 uses
  %i.bt = load <8 x i16>, ptr %i.bs, align 1, !tbaa !8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bv = load <8 x i16>, ptr %i.bu, align 1, !tbaa !8 ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv96.i ; 2 uses
  %i.bx = load <8 x i16>, ptr %i.bw, align 1, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.bz = load <8 x i16>, ptr %i.by, align 1, !tbaa !8
  %i.ca = add <8 x i16> %i.bz, %i.bt              ; 2 uses
  %i.cb = add <8 x i16> %i.bx, %i.bv              ; 2 uses
  %i.cc = add <8 x i16> %i.cb, splat (i16 8)
  %i.cd = add <8 x i16> %i.cc, %i.ca              ; 2 uses
  %i.ce = shl <8 x i16> %i.ca, splat (i16 1)
  %i.cf = shl <8 x i16> %i.cb, splat (i16 1)
  %i.cg = add <8 x i16> %i.ce, %i.cd
  %i.ch = ashr <8 x i16> %i.cg, splat (i16 3)
  %i.ci = add <8 x i16> %i.cd, %i.cf
  %i.cj = ashr <8 x i16> %i.ci, splat (i16 3)
  %i.ck = add <8 x i16> %i.cj, %i.bt
  %i.cl = add <8 x i16> %i.ch, %i.bv
  %i.cm = ashr <8 x i16> %i.ck, splat (i16 1)     ; 2 uses
  %i.cn = ashr <8 x i16> %i.cl, splat (i16 1)     ; 2 uses
  %i.co = shufflevector <8 x i16> %i.cm, <8 x i16> %i.cn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cp = shufflevector <8 x i16> %i.cm, <8 x i16> %i.cn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cq = shl nuw nsw i64 %indvars.iv96.i, 1      ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cq ; 2 uses
  %i.cs = load <8 x i16>, ptr %i.cr, align 1, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = load <8 x i16>, ptr %i.ct, align 1, !tbaa !8
  %i.cv = add <8 x i16> %i.co, %i.cs
  %i.cw = add <8 x i16> %i.cp, %i.cu
  %i.cx = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cv, <8 x i16> %i.e)
  %i.cy = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cx, <8 x i16> zeroinitializer)
  %i.cz = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cw, <8 x i16> %i.e)
  %i.da = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.cz, <8 x i16> zeroinitializer)
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cq ; 2 uses
  store <8 x i16> %i.cy, ptr %i.db, align 1, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <8 x i16> %i.da, ptr %i.dc, align 1, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i, %i.f
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 8
  br i1 %.not.i, label %.preheader.loopexit.i, label %.lr.ph.i, !llvm.loop !46

.lr.ph95.i:                                       ; preds = %.lr.ph95.i.preheader, %.lr.ph95.i
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %.lr.ph95.i ], [ %indvars.iv101.i.ph, %.lr.ph95.i.preheader ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv101.i
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !11
  %i.df = sext i16 %i.de to i32                   ; 2 uses
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 4 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next102.i
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !11
  %i.di = sext i16 %i.dh to i32
  %i.dj = add nsw i32 %i.di, %i.df                ; 2 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next102.i
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !11
  %i.dm = sext i16 %i.dl to i32                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv101.i
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !11
  %i.dp = sext i16 %i.do to i32
  %i.dq = add nsw i32 %i.dp, %i.dm                ; 2 uses
  %i.dr = add nsw i32 %i.dj, 8
  %i.ds = add nsw i32 %i.dr, %i.dq                ; 2 uses
  %i.dt = shl nsw i32 %i.df, 3
  %i.du = shl nsw i32 %i.dq, 1
  %i.dv = add nsw i32 %i.du, %i.dt
  %i.dw = add nsw i32 %i.dv, %i.ds
  %i.dx = ashr i32 %i.dw, 4
  %i.dy = shl nsw i32 %i.dm, 3
  %i.dz = shl nsw i32 %i.dj, 1
  %i.ea = add nsw i32 %i.dy, %i.dz
  %i.eb = add nsw i32 %i.ea, %i.ds
  %i.ec = ashr i32 %i.eb, 4
  %i.ed = shl nuw nsw i64 %indvars.iv101.i, 1     ; 3 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !11
  %i.eg = zext i16 %i.ef to i32
  %i.eh = add nsw i32 %i.dx, %i.eg                ; 2 uses
  %i.ei = icmp slt i32 %i.eh, 0
  %i.ej = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.eh, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.ek = trunc i32 %i.ej to i16
  %i.el = select i1 %i.ei, i16 0, i16 %i.ek
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ed
  store i16 %i.el, ptr %i.em, align 2, !tbaa !11
  %i.en = or disjoint i64 %i.ed, 1                ; 2 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !11
  %i.eq = zext i16 %i.ep to i32
  %i.er = add nsw i32 %i.ec, %i.eq                ; 2 uses
  %i.es = icmp slt i32 %i.er, 0
  %i.et = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.er, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.eu = trunc i32 %i.et to i16
  %i.ev = select i1 %i.es, i16 0, i16 %i.eu
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.en
  store i16 %i.ev, ptr %i.ew, align 2, !tbaa !11
  %i.ex = trunc nuw i64 %indvars.iv.next102.i to i32
  %i.ey = icmp sgt i32 %2, %i.ex
  br i1 %i.ey, label %.lr.ph95.i, label %SharpYuvFilterRow16_SSE2.exit, !llvm.loop !47

bb.c:                                             ; preds = %bb.a
  %.not83.i = icmp slt i32 %2, 4
  br i1 %.not83.i, label %.preheader.i20, label %.lr.ph.preheader.i13

.lr.ph.preheader.i13:                             ; preds = %bb.c
  %i.ez = zext nneg i32 %2 to i64
  br label %.lr.ph.i14

.preheader.loopexit.i18:                          ; preds = %.lr.ph.i14
  %i.fa = add nuw i32 %2, 2147483644
  %i.fb = and i32 %i.fa, 2147483644
  %narrow.i19 = add nuw i32 %i.fb, 4
  br label %.preheader.i20

.preheader.i20:                                   ; preds = %.preheader.loopexit.i18, %bb.c
  %.0.lcssa.i21 = phi i32 [ 0, %bb.c ], [ %narrow.i19, %.preheader.loopexit.i18 ] ; 3 uses
  %i.fc = icmp slt i32 %.0.lcssa.i21, %2
  br i1 %i.fc, label %.lr.ph86.preheader.i, label %SharpYuvFilterRow16_SSE2.exit

.lr.ph86.preheader.i:                             ; preds = %.preheader.i20
  %i.fd = zext i32 %.0.lcssa.i21 to i64           ; 8 uses
  %i.fe = xor i32 %.0.lcssa.i21, -1
  %i.ff = add i32 %2, %i.fe                       ; 2 uses
  %i.fg = zext i32 %i.ff to i64                   ; 3 uses
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ff, 7
  br i1 %min.iters.check, label %.lr.ph86.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph86.preheader.i
  %i.fi = shl nuw nsw i64 %i.fd, 2                ; 2 uses
  %i.fj = getelementptr i8, ptr %4, i64 %i.fi     ; 3 uses
  %i.fk = add nuw nsw i64 %i.fd, %i.fg
  %i.fl = shl nuw nsw i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 4                ; 2 uses
  %i.fn = getelementptr i8, ptr %4, i64 %i.fm     ; 3 uses
  %i.fo = shl nuw nsw i64 %i.fd, 1                ; 2 uses
  %i.fp = getelementptr i8, ptr %0, i64 %i.fo
  %i.fq = add nuw nsw i64 %i.fd, %i.fg
  %i.fr = shl nuw nsw i64 %i.fq, 1
  %i.fs = add nuw nsw i64 %i.fr, 4                ; 2 uses
  %i.ft = getelementptr i8, ptr %0, i64 %i.fs
  %bound0 = icmp ult ptr %i.fj, %i.ft
  %bound1 = icmp ult ptr %i.fp, %i.fn
  %found.conflict = and i1 %bound0, %bound1
  %i.fu = getelementptr i8, ptr %1, i64 %i.fo
  %i.fv = getelementptr i8, ptr %1, i64 %i.fs
  %bound0.a = icmp ult ptr %i.fj, %i.fv
  %bound1.a = icmp ult ptr %i.fu, %i.fn
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  %8 = getelementptr i8, ptr %3, i64 %i.fi
  %9 = getelementptr i8, ptr %3, i64 %i.fm
  %bound045 = icmp ult ptr %i.fj, %9
  %bound146 = icmp ult ptr %8, %i.fn
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  br i1 %conflict.rdx48, label %.lr.ph86.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fh, 8589934588              ; 3 uses
  %i.fw = add nuw nsw i64 %n.vec, %i.fd
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fx = add nuw i64 %index, %i.fd               ; 4 uses
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.fx
  %wide.load = load <4 x i16>, ptr %i.fy, align 2, !tbaa !11, !alias.scope !61
  %i.fz = sext <4 x i16> %wide.load to <4 x i32>  ; 2 uses
  %i.ga = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ga
  %wide.load49 = load <4 x i16>, ptr %i.gb, align 2, !tbaa !11, !alias.scope !62
  %i.gc = sext <4 x i16> %wide.load49 to <4 x i32>
  %i.gd = add nsw <4 x i32> %i.gc, %i.fz          ; 2 uses
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ga
  %wide.load50 = load <4 x i16>, ptr %i.ge, align 2, !tbaa !11, !alias.scope !61
  %i.gf = sext <4 x i16> %wide.load50 to <4 x i32> ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fx
  %wide.load51 = load <4 x i16>, ptr %i.gg, align 2, !tbaa !11, !alias.scope !62
  %i.gh = sext <4 x i16> %wide.load51 to <4 x i32>
  %i.gi = add nsw <4 x i32> %i.gh, %i.gf          ; 2 uses
  %i.gj = add nsw <4 x i32> %i.gd, splat (i32 8)
  %i.gk = add nsw <4 x i32> %i.gj, %i.gi          ; 2 uses
  %i.gl = shl nsw <4 x i32> %i.fz, splat (i32 3)
  %i.gm = shl nsw <4 x i32> %i.gi, splat (i32 1)
  %i.gn = add nsw <4 x i32> %i.gm, %i.gl
  %i.go = add nsw <4 x i32> %i.gn, %i.gk
  %i.gp = ashr <4 x i32> %i.go, splat (i32 4)
  %i.gq = shl nsw <4 x i32> %i.gf, splat (i32 3)
  %i.gr = shl nsw <4 x i32> %i.gd, splat (i32 1)
  %i.gs = add nsw <4 x i32> %i.gq, %i.gr
  %i.gt = add nsw <4 x i32> %i.gs, %i.gk
  %i.gu = ashr <4 x i32> %i.gt, splat (i32 4)
  %i.gv = shl nuw nsw i64 %i.fx, 1                ; 2 uses
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.gv
  %wide.vec = load <8 x i16>, ptr %i.gw, align 2, !tbaa !11, !alias.scope !63
  %i.gx = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.gy = bitcast <8 x i16> %i.gx to <4 x i32>
  %i.gz = bitcast <8 x i16> %i.gx to <4 x i32>
  %i.ha = and <4 x i32> %i.gz, splat (i32 65535)
  %i.hb = lshr <4 x i32> %i.gy, splat (i32 16)
  %i.hc = add nsw <4 x i32> %i.gp, %i.ha          ; 2 uses
  %i.hd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.hc, <4 x i32> %broadcast.splat)
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.gv
  %i.hf = add nsw <4 x i32> %i.gu, %i.hb          ; 2 uses
  %i.hg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.hf, <4 x i32> %broadcast.splat)
  %i.hh = shufflevector <4 x i32> %i.hc, <4 x i32> %i.hf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.hi = icmp slt <8 x i32> %i.hh, zeroinitializer
  %i.hj = shufflevector <4 x i32> %i.hd, <4 x i32> %i.hg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.hk = trunc <8 x i32> %i.hj to <8 x i16>
  %interleaved.vec = select <8 x i1> %i.hi, <8 x i16> zeroinitializer, <8 x i16> %i.hk
  store <8 x i16> %interleaved.vec, ptr %i.he, align 2, !tbaa !11, !alias.scope !64, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fh, %n.vec
  br i1 %cmp.n, label %SharpYuvFilterRow16_SSE2.exit, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph86.preheader.i, %middle.block
  %indvars.iv92.i.ph = phi i64 [ %i.fd, %vector.memcheck ], [ %i.fd, %.lr.ph86.preheader.i ], [ %i.fw, %middle.block ]
  br label %.lr.ph86.i

.lr.ph.i14:                                       ; preds = %.lr.ph.i14, %.lr.ph.preheader.i13
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph.preheader.i13 ], [ %indvars.iv.next88.i, %.lr.ph.i14 ] ; 4 uses
  %indvars.iv.i15 = phi i64 [ 4, %.lr.ph.preheader.i13 ], [ %indvars.iv.next.i16, %.lr.ph.i14 ]
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv87.i ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 1, !tbaa !8
  %i.ho = insertelement <2 x i64> poison, i64 %i.hn, i64 0
  %i.hp = bitcast <2 x i64> %i.ho to <8 x i16>
  %i.hq = shufflevector <8 x i16> %i.hp, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.hr = bitcast <8 x i16> %i.hq to <4 x i32>
  %i.hs = ashr <4 x i32> %i.hr, splat (i32 16)    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.hu = load i64, ptr %i.ht, align 1, !tbaa !8
  %i.hv = insertelement <2 x i64> poison, i64 %i.hu, i64 0
  %i.hw = bitcast <2 x i64> %i.hv to <8 x i16>
  %i.hx = shufflevector <8 x i16> %i.hw, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.hy = bitcast <8 x i16> %i.hx to <4 x i32>
  %i.hz = ashr <4 x i32> %i.hy, splat (i32 16)    ; 2 uses
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv87.i ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 1, !tbaa !8
  %i.ic = insertelement <2 x i64> poison, i64 %i.ib, i64 0
  %i.id = bitcast <2 x i64> %i.ic to <8 x i16>
  %i.ie = shufflevector <8 x i16> %i.id, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.if = bitcast <8 x i16> %i.ie to <4 x i32>
  %i.ig = ashr <4 x i32> %i.if, splat (i32 16)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  %i.ii = load i64, ptr %i.ih, align 1, !tbaa !8
  %i.ij = insertelement <2 x i64> poison, i64 %i.ii, i64 0
  %i.ik = bitcast <2 x i64> %i.ij to <8 x i16>
  %i.il = shufflevector <8 x i16> %i.ik, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.im = bitcast <8 x i16> %i.il to <4 x i32>
  %i.in = ashr <4 x i32> %i.im, splat (i32 16)
  %i.io = add nsw <4 x i32> %i.in, %i.hs          ; 2 uses
  %i.ip = add nsw <4 x i32> %i.ig, %i.hz          ; 2 uses
  %i.iq = add nsw <4 x i32> %i.ip, splat (i32 8)
  %i.ir = add nsw <4 x i32> %i.iq, %i.io          ; 2 uses
  %i.is = shl nsw <4 x i32> %i.io, splat (i32 1)
  %i.it = shl nsw <4 x i32> %i.ip, splat (i32 1)
  %i.iu = add nsw <4 x i32> %i.is, %i.ir
  %i.iv = ashr <4 x i32> %i.iu, splat (i32 3)
  %i.iw = add nsw <4 x i32> %i.ir, %i.it
  %i.ix = ashr <4 x i32> %i.iw, splat (i32 3)
  %i.iy = add nsw <4 x i32> %i.ix, %i.hs
  %i.iz = add nsw <4 x i32> %i.iv, %i.hz
  %i.ja = ashr <4 x i32> %i.iy, splat (i32 1)     ; 2 uses
  %i.jb = ashr <4 x i32> %i.iz, splat (i32 1)     ; 2 uses
  %i.jc = shufflevector <4 x i32> %i.ja, <4 x i32> %i.jb, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.jd = shufflevector <4 x i32> %i.ja, <4 x i32> %i.jb, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.je = shl nuw nsw i64 %indvars.iv87.i, 1      ; 2 uses
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.je
  %i.jg = load <8 x i16>, ptr %i.jf, align 1, !tbaa !8
  %i.jh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.jc, <4 x i32> %i.jd)
  %i.ji = add <8 x i16> %i.jh, %i.jg
  %i.jj = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ji, <8 x i16> %i.e)
  %i.jk = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jj, <8 x i16> zeroinitializer)
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.je
  store <8 x i16> %i.jk, ptr %i.jl, align 1, !tbaa !8
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i15, 4 ; 2 uses
  %.not.i17 = icmp samesign ugt i64 %indvars.iv.next.i16, %i.ez
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 4
  br i1 %.not.i17, label %.preheader.loopexit.i18, label %.lr.ph.i14, !llvm.loop !54

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %.lr.ph86.i
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %.lr.ph86.i ], [ %indvars.iv92.i.ph, %.lr.ph86.i.preheader ] ; 4 uses
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv92.i
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !11
  %i.jo = sext i16 %i.jn to i32                   ; 2 uses
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 4 uses
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next93.i
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !11
  %i.jr = sext i16 %i.jq to i32
  %i.js = add nsw i32 %i.jr, %i.jo                ; 2 uses
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next93.i
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !11
  %i.jv = sext i16 %i.ju to i32                   ; 2 uses
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv92.i
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !11
  %i.jy = sext i16 %i.jx to i32
  %i.jz = add nsw i32 %i.jy, %i.jv                ; 2 uses
  %i.ka = add nsw i32 %i.js, 8
  %i.kb = add nsw i32 %i.ka, %i.jz                ; 2 uses
  %i.kc = shl nsw i32 %i.jo, 3
  %i.kd = shl nsw i32 %i.jz, 1
  %i.ke = add nsw i32 %i.kd, %i.kc
  %i.kf = add nsw i32 %i.ke, %i.kb
  %i.kg = ashr i32 %i.kf, 4
  %i.kh = shl nsw i32 %i.jv, 3
  %i.ki = shl nsw i32 %i.js, 1
  %i.kj = add nsw i32 %i.kh, %i.ki
  %i.kk = add nsw i32 %i.kj, %i.kb
  %i.kl = ashr i32 %i.kk, 4
  %i.km = shl nuw nsw i64 %indvars.iv92.i, 1      ; 3 uses
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !11
  %i.kp = zext i16 %i.ko to i32
  %i.kq = add nsw i32 %i.kg, %i.kp                ; 2 uses
  %i.kr = icmp slt i32 %i.kq, 0
  %i.ks = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.kq, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.kt = trunc i32 %i.ks to i16
  %i.ku = select i1 %i.kr, i16 0, i16 %i.kt
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.km
  store i16 %i.ku, ptr %i.kv, align 2, !tbaa !11
  %i.kw = or disjoint i64 %i.km, 1                ; 2 uses
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.kw
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !11
  %i.kz = zext i16 %i.ky to i32
  %i.la = add nsw i32 %i.kl, %i.kz                ; 2 uses
  %i.lb = icmp slt i32 %i.la, 0
  %i.lc = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.la, i32 range(i32 -2147483648, 2147483647) %i.b)
  %i.ld = trunc i32 %i.lc to i16
  %i.le = select i1 %i.lb, i16 0, i16 %i.ld
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.kw
  store i16 %i.le, ptr %i.lf, align 2, !tbaa !11
  %i.lg = trunc nuw i64 %indvars.iv.next93.i to i32
  %i.lh = icmp sgt i32 %2, %i.lg
  br i1 %i.lh, label %.lr.ph86.i, label %SharpYuvFilterRow16_SSE2.exit, !llvm.loop !55

SharpYuvFilterRow16_SSE2.exit:                    ; preds = %.lr.ph86.i, %.lr.ph95.i, %middle.block, %middle.block101, %.preheader.i20, %.preheader.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #3
end_hunk_0
