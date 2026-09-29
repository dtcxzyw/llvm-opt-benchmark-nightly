Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourPathCorridor?download=true
inline.NumInlined: 32
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN14dtPathCorridorC1Ev = unnamed_addr alias void (ptr), ptr @_ZN14dtPathCorridorC2Ev
@_ZN14dtPathCorridorD1Ev = unnamed_addr alias void (ptr), ptr @_ZN14dtPathCorridorD2Ev

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_Z25dtMergeCorridorStartMovedPjiiPKji(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.split.us.preheader, label %.split67.us.thread

.split.us.preheader:                              ; preds = %bb.a
  %i.b = zext nneg i32 %4 to i64                  ; 5 uses
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.preheader.us.lr.ph, label %.split67.us

.preheader.us.lr.ph:                              ; preds = %.split.us.preheader
  %i.d = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.b, 2147483644               ; 2 uses
  %i.e = and i64 %i.b, 3
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br label %.preheader.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.04962.us = phi i1 [ %.1.us, %scalar.ph ], [ %.04962.us.ph, %scalar.ph.preheader ]
  %.15361.us = phi i32 [ %.2.us, %scalar.ph ], [ %.15361.us.ph, %scalar.ph.preheader ]
  %.15560.us = phi i32 [ %.256.us, %scalar.ph ], [ %.15560.us.ph, %scalar.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11
  %i.h = icmp eq i32 %i.m, %i.g                   ; 3 uses
  %.256.us = select i1 %i.h, i32 %indvars87, i32 %.15560.us ; 2 uses
  %i.i = trunc nuw nsw i64 %indvars.iv.next to i32
  %.2.us = select i1 %i.h, i32 %i.i, i32 %.15361.us ; 2 uses
  %.1.us = select i1 %i.h, i1 true, i1 %.04962.us ; 2 uses
  %i.j = icmp sgt i64 %indvars.iv, 1
  br i1 %i.j, label %scalar.ph, label %._crit_edge.us, !llvm.loop !23

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.us.lr.ph
  %indvars.iv.next7286.in = phi i64 [ %i.d, %.preheader.us.lr.ph ], [ %indvars.iv.next7286, %._crit_edge.us ]
  %.052.us85 = phi i32 [ -1, %.preheader.us.lr.ph ], [ %.2.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.054.us84 = phi i32 [ -1, %.preheader.us.lr.ph ], [ %.256.us.lcssa, %._crit_edge.us ] ; 2 uses
  %indvars.iv.next7286 = add nsw i64 %indvars.iv.next7286.in, -1 ; 4 uses
  %indvars87 = trunc i64 %indvars.iv.next7286 to i32 ; 2 uses
  %i.k = and i64 %indvars.iv.next7286, 4294967295
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.052.us85, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat92 = shufflevector <4 x i32> %broadcast.splatinsert91, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi93 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.aa, %vector.body ]
  %i.n = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi94 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.o = sub i64 %i.b, %index                     ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %3, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %wide.load = load <4 x i32>, ptr %i.q, align 4, !tbaa !11
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.r = icmp eq <4 x i32> %broadcast.splat92, %reverse
  %i.s = freeze <4 x i1> %i.r                     ; 4 uses
  %i.t = or <4 x i1> %vec.phi94, %i.s             ; 2 uses
  %i.u = trunc i64 %i.o to i32
  %i.v = insertelement <4 x i32> poison, i32 %i.u, i64 0
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.x = add <4 x i32> %i.w, <i32 -1, i32 -2, i32 -3, i32 -4>
  %i.y = bitcast <4 x i1> %i.s to i4
  %.not = icmp eq i4 %i.y, 0                      ; 2 uses
  %i.z = select i1 %.not, <4 x i1> %i.n, <4 x i1> %i.s ; 2 uses
  %i.aa = select i1 %.not, <4 x i32> %vec.phi93, <4 x i32> %i.x ; 2 uses
  %i.ab = or <4 x i1> %vec.phi, %i.s              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %i.ad = bitcast <4 x i1> %i.ab to i4
  %i.ae = icmp ne i4 %i.ad, 0                     ; 2 uses
  %i.af = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.aa, <4 x i1> %i.z, i32 %.052.us85) ; 2 uses
  %i.ag = bitcast <4 x i1> %i.t to i4
  %.not115 = icmp eq i4 %i.ag, 0
  %rdx.select = select i1 %.not115, i32 %.054.us84, i32 %indvars87 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.b, %.preheader.us ], [ %i.e, %middle.block ]
  %.04962.us.ph = phi i1 [ false, %.preheader.us ], [ %i.ae, %middle.block ]
  %.15361.us.ph = phi i32 [ %.052.us85, %.preheader.us ], [ %i.af, %middle.block ]
  %.15560.us.ph = phi i32 [ %.054.us84, %.preheader.us ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.256.us.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.256.us, %scalar.ph ] ; 2 uses
  %.2.us.lcssa = phi i32 [ %i.af, %middle.block ], [ %.2.us, %scalar.ph ] ; 2 uses
  %.1.us.lcssa = phi i1 [ %i.ae, %middle.block ], [ %.1.us, %scalar.ph ]
  %i.ah = trunc nuw i64 %indvars.iv.next7286 to i32
  %i.ai = icmp slt i32 %i.ah, 1
  %or.cond117.not = select i1 %.1.us.lcssa, i1 true, i1 %i.ai
  br i1 %or.cond117.not, label %.split67.us, label %.preheader.us

.split67.us:                                      ; preds = %._crit_edge.us, %.split.us.preheader
  %.us-phi = phi i32 [ -1, %.split.us.preheader ], [ %.256.us.lcssa, %._crit_edge.us ] ; 2 uses
  %.us-phi68 = phi i32 [ -1, %.split.us.preheader ], [ %.2.us.lcssa, %._crit_edge.us ] ; 2 uses
  %i.aj = icmp eq i32 %.us-phi, -1
  %i.ak = icmp eq i32 %.us-phi68, -1
  %or.cond = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond, label %.split67.us.thread, label %bb.b

bb.b:                                             ; preds = %.split67.us
  %i.al = sub nsw i32 %4, %.us-phi68              ; 5 uses
  %i.am = add nuw nsw i32 %.us-phi, 1
  %i.an = tail call noundef i32 @llvm.smin.i32(i32 %i.am, i32 %1) ; 2 uses
  %i.ao = sub nsw i32 %1, %i.an                   ; 2 uses
  %i.ap = add nsw i32 %i.ao, %i.al
  %i.aq = icmp sgt i32 %i.ap, %2
  %i.ar = sub nsw i32 %2, %i.al
  %spec.select = select i1 %i.aq, i32 %i.ar, i32 %i.ao ; 3 uses
  %i.as = icmp sgt i32 %spec.select, 0
  br i1 %i.as, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = sext i32 %i.al to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %i.at
  %i.av = sext i32 %i.an to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.av
  %i.ax = zext nneg i32 %spec.select to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.au, ptr align 4 %i.aw, i64 %i.ay, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.az = tail call noundef i32 @llvm.smin.i32(i32 %i.al, i32 %2) ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.az to i64   ; 7 uses
  %min.iters.check100 = icmp ult i32 %i.az, 24
  br i1 %min.iters.check100, label %.lr.ph.preheader119, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.bb = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.bc = trunc nsw i64 %i.bb to i32
  %i.bd = xor i32 %i.bc, -1
  %i.be = add i32 %4, %i.bd
  %i.bf = icmp sge i32 %i.be, %4
  %i.bg = icmp ugt i64 %i.bb, 4294967295
  %i.bh = or i1 %i.bf, %i.bg
  br i1 %i.bh, label %.lr.ph.preheader119, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bi = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.bi
  %i.bj = add nsw i32 %4, -1
  %i.bk = sext i32 %i.bj to i64
  %i.bl = shl nsw i64 %i.bk, 2
  %i.bm = add nsw i64 %i.bl, 4                    ; 2 uses
  %i.bn = sub nsw i64 %i.bm, %i.bi
  %i.bo = getelementptr i8, ptr %3, i64 %i.bn
  %scevgep98 = getelementptr i8, ptr %3, i64 %i.bm
  %bound0 = icmp ult ptr %0, %scevgep98
  %bound1 = icmp ult ptr %i.bo, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader119, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck
  %n.vec102 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body103 ] ; 3 uses
  %i.bp = trunc i64 %index104 to i32
  %i.bq = xor i32 %i.bp, -1
  %i.br = add i32 %4, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -12
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -28
  %wide.load105 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !11, !alias.scope !30
  %wide.load106 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !11, !alias.scope !30
  %reverse107 = shufflevector <4 x i32> %wide.load105, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse108 = shufflevector <4 x i32> %wide.load106, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index104 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <4 x i32> %reverse107, ptr %i.bw, align 4, !tbaa !11, !alias.scope !31, !noalias !30
  store <4 x i32> %reverse108, ptr %i.bx, align 4, !tbaa !11, !alias.scope !31, !noalias !30
  %index.next109 = add nuw i64 %index104, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.by, label %middle.block110, label %vector.body103, !llvm.loop !28

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %n.vec102, %wide.trip.count
  br i1 %cmp.n111, label %._crit_edge, label %.lr.ph.preheader119

.lr.ph.preheader119:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block110
  %indvars.iv74.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec102, %middle.block110 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader119
  %i.bz = trunc nuw nsw i64 %indvars.iv74.ph to i32
  %i.ca = xor i32 %i.bz, -1
  %i.cb = add nsw i32 %4, %i.ca
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !11
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv74.ph
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !11
  %indvars.iv.next75.prol = or disjoint i64 %indvars.iv74.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader119
  %indvars.iv74.unr = phi i64 [ %indvars.iv74.ph, %.lr.ph.preheader119 ], [ %indvars.iv.next75.prol, %.lr.ph.prol ]
  %i.cg = add nsw i64 %wide.trip.count, -1
  %i.ch = icmp eq i64 %indvars.iv74.ph, %i.cg
  br i1 %i.ch, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block110, %bb.d
  %i.ci = add nsw i32 %spec.select, %i.al
  br label %.split67.us.thread

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.1, %.lr.ph ], [ %indvars.iv74.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.cj = trunc i64 %indvars.iv74 to i32
  %i.ck = xor i32 %i.cj, -1
  %i.cl = add i32 %4, %i.ck
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !11
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv74
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !11
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.cq = trunc i64 %indvars.iv.next75 to i32
  %i.cr = xor i32 %i.cq, -1
  %i.cs = add i32 %4, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !11
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next75
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !11
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next75.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !29

.split67.us.thread:                               ; preds = %bb.a, %.split67.us, %._crit_edge
  %.058 = phi i32 [ %i.ci, %._crit_edge ], [ %1, %.split67.us ], [ %1, %bb.a ]
  ret i32 %.058
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @_Z23dtMergeCorridorEndMovedPjiiPKji(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  %i.b = icmp sgt i32 %4, 0
  %or.cond72 = and i1 %i.a, %i.b
  br i1 %or.cond72, label %.preheader.us.preheader, label %._crit_edge52.thread

.preheader.us.preheader:                          ; preds = %bb.a
  %i.c = zext nneg i32 %4 to i64                  ; 5 uses
  %i.d = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.c, 2147483644               ; 2 uses
  %i.e = and i64 %i.c, 3
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv64 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next65, %._crit_edge.us ] ; 3 uses
  %.03550.us = phi i32 [ -1, %.preheader.us.preheader ], [ %.2.us.lcssa, %._crit_edge.us ] ; 3 uses
  %.03749.us = phi i32 [ -1, %.preheader.us.preheader ], [ %.239.us.lcssa, %._crit_edge.us ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv64
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11   ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv64 to i32   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.03550.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat74 = shufflevector <4 x i32> %broadcast.splatinsert73, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi75 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.v, %vector.body ]
  %i.i = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi76 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.j = sub i64 %i.c, %index                     ; 2 uses
  %i.k = getelementptr [4 x i8], ptr %3, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -16
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !tbaa !11
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.m = icmp eq <4 x i32> %broadcast.splat74, %reverse
  %i.n = freeze <4 x i1> %i.m                     ; 4 uses
  %i.o = or <4 x i1> %vec.phi76, %i.n             ; 2 uses
  %i.p = trunc i64 %i.j to i32
  %i.q = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %i.r = shufflevector <4 x i32> %i.q, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.s = add <4 x i32> %i.r, <i32 -1, i32 -2, i32 -3, i32 -4>
  %i.t = bitcast <4 x i1> %i.n to i4
  %.not79 = icmp eq i4 %i.t, 0                    ; 2 uses
  %i.u = select i1 %.not79, <4 x i1> %i.i, <4 x i1> %i.n ; 2 uses
  %i.v = select i1 %.not79, <4 x i32> %vec.phi75, <4 x i32> %i.s ; 2 uses
  %i.w = or <4 x i1> %vec.phi, %i.n               ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %i.y = bitcast <4 x i1> %i.w to i4
  %i.z = icmp ne i4 %i.y, 0                       ; 2 uses
  %i.aa = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.v, <4 x i1> %i.u, i32 %.03550.us) ; 2 uses
  %i.ab = bitcast <4 x i1> %i.o to i4
  %.not82 = icmp eq i4 %i.ab, 0
  %rdx.select = select i1 %.not82, i32 %.03749.us, i32 %i.h ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.c, %.preheader.us ], [ %i.e, %middle.block ]
  %.03245.us.ph = phi i1 [ false, %.preheader.us ], [ %i.z, %middle.block ]
  %.13644.us.ph = phi i32 [ %.03550.us, %.preheader.us ], [ %i.aa, %middle.block ]
  %.13843.us.ph = phi i32 [ %.03749.us, %.preheader.us ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.03245.us = phi i1 [ %.1.us, %scalar.ph ], [ %.03245.us.ph, %scalar.ph.preheader ]
  %.13644.us = phi i32 [ %.2.us, %scalar.ph ], [ %.13644.us.ph, %scalar.ph.preheader ]
  %.13843.us = phi i32 [ %.239.us, %scalar.ph ], [ %.13843.us.ph, %scalar.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %i.ae = icmp eq i32 %i.g, %i.ad                 ; 3 uses
  %.239.us = select i1 %i.ae, i32 %i.h, i32 %.13843.us ; 2 uses
  %i.af = trunc nuw nsw i64 %indvars.iv.next to i32
  %.2.us = select i1 %i.ae, i32 %i.af, i32 %.13644.us ; 2 uses
  %.1.us = select i1 %i.ae, i1 true, i1 %.03245.us ; 2 uses
  %i.ag = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ag, label %scalar.ph, label %._crit_edge.us, !llvm.loop !33

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %.239.us.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.239.us, %scalar.ph ] ; 3 uses
  %.2.us.lcssa = phi i32 [ %i.aa, %middle.block ], [ %.2.us, %scalar.ph ] ; 3 uses
  %.1.us.lcssa = phi i1 [ %i.z, %middle.block ], [ %.1.us, %scalar.ph ]
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.ah = icmp samesign uge i64 %indvars.iv.next65, %i.d
  %or.cond61.not = select i1 %.1.us.lcssa, i1 true, i1 %i.ah
  br i1 %or.cond61.not, label %._crit_edge52, label %.preheader.us

._crit_edge52:                                    ; preds = %._crit_edge.us
  %i.ai = icmp eq i32 %.239.us.lcssa, -1
end_hunk_0
begin_hunk_1_@_ZN14dtPathCorridor25moveOverOffmeshConnectionEjPjPfS1_P14dtNavMeshQuery:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.af, ptr %i.ag, align 4, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ai, ptr %i.aj, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge42, %._crit_edge
  %.1 = phi i1 [ false, %._crit_edge ], [ false, %._crit_edge42 ], [ true, %bb.b ]
  ret i1 %.1
}

declare noundef i32 @_ZNK9dtNavMesh33getOffMeshConnectionPolyEndPointsEjjPfS0_(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_ZN14dtPathCorridor12movePositionEPKfP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = alloca [16 x i32], align 16              ; 11 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.c, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11
  %i.h = call noundef i32 @_ZNK14dtNavMeshQuery16moveAlongSurfaceEjPKfS1_PK13dtQueryFilterPfPjPii(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %i.g, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 16) #10
  %i.i = and i32 %i.h, 1073741824
  %i.j = icmp ne i32 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !18   ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !20   ; 3 uses
  %i.p = load i32, ptr %i.c, align 4, !tbaa !11   ; 11 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.split.us.preheader.i, label %_Z25dtMergeCorridorStartMovedPjiiPKji.exit

.split.us.preheader.i:                            ; preds = %bb.b
  %i.r = zext nneg i32 %i.p to i64                ; 5 uses
  %i.s = icmp sgt i32 %i.m, 0
  br i1 %i.s, label %.preheader.us.i.lr.ph, label %.split67.us.i

.preheader.us.i.lr.ph:                            ; preds = %.split.us.preheader.i
  %i.t = zext nneg i32 %i.m to i64
  %min.iters.check = icmp ult i32 %i.p, 8
  %n.vec = and i64 %i.r, 2147483644               ; 2 uses
  %i.u = and i64 %i.r, 3
  %cmp.n = icmp eq i64 %n.vec, %i.r
  br label %.preheader.us.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.04962.us.i = phi i1 [ %.1.us.i, %scalar.ph ], [ %.04962.us.i.ph, %scalar.ph.preheader ]
  %.15361.us.i = phi i32 [ %.2.us.i, %scalar.ph ], [ %.15361.us.i.ph, %scalar.ph.preheader ]
  %.15560.us.i = phi i32 [ %.256.us.i, %scalar.ph ], [ %.15560.us.i.ph, %scalar.ph.preheader ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !11
  %i.x = icmp eq i32 %i.ac, %i.w                  ; 3 uses
  %.256.us.i = select i1 %i.x, i32 %indvars.i12, i32 %.15560.us.i ; 2 uses
  %i.y = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %.2.us.i = select i1 %i.x, i32 %i.y, i32 %.15361.us.i ; 2 uses
  %.1.us.i = select i1 %i.x, i1 true, i1 %.04962.us.i ; 2 uses
  %i.z = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.z, label %scalar.ph, label %._crit_edge.us.i, !llvm.loop !58

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.i.lr.ph
  %indvars.iv.next72.i11.in = phi i64 [ %i.t, %.preheader.us.i.lr.ph ], [ %indvars.iv.next72.i11, %._crit_edge.us.i ]
  %.052.us.i10 = phi i32 [ -1, %.preheader.us.i.lr.ph ], [ %.2.us.i.lcssa, %._crit_edge.us.i ] ; 3 uses
  %.054.us.i9 = phi i32 [ -1, %.preheader.us.i.lr.ph ], [ %.256.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next72.i11 = add nsw i64 %indvars.iv.next72.i11.in, -1 ; 4 uses
  %indvars.i12 = trunc i64 %indvars.iv.next72.i11 to i32 ; 2 uses
  %i.aa = and i64 %indvars.iv.next72.i11, 4294967295
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !11 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.052.us.i10, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert16 = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %broadcast.splat17 = shufflevector <4 x i32> %broadcast.splatinsert16, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.aq, %vector.body ]
  %i.ad = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi19 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ae = sub i64 %i.r, %index                    ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.b, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -16
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !tbaa !11
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ah = icmp eq <4 x i32> %broadcast.splat17, %reverse
  %i.ai = freeze <4 x i1> %i.ah                   ; 4 uses
  %i.aj = or <4 x i1> %vec.phi19, %i.ai           ; 2 uses
  %i.ak = trunc i64 %i.ae to i32
  %i.al = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.am = shufflevector <4 x i32> %i.al, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.an = add <4 x i32> %i.am, <i32 -1, i32 -2, i32 -3, i32 -4>
  %i.ao = bitcast <4 x i1> %i.ai to i4
  %.not = icmp eq i4 %i.ao, 0                     ; 2 uses
  %i.ap = select i1 %.not, <4 x i1> %i.ad, <4 x i1> %i.ai ; 2 uses
  %i.aq = select i1 %.not, <4 x i32> %vec.phi18, <4 x i32> %i.an ; 2 uses
  %i.ar = or <4 x i1> %vec.phi, %i.ai             ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %i.at = bitcast <4 x i1> %i.ar to i4
  %i.au = icmp ne i4 %i.at, 0                     ; 2 uses
  %i.av = call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.aq, <4 x i1> %i.ap, i32 %.052.us.i10) ; 2 uses
  %i.aw = bitcast <4 x i1> %i.aj to i4
  %.not40 = icmp eq i4 %i.aw, 0
  %rdx.select = select i1 %.not40, i32 %.054.us.i9, i32 %indvars.i12 ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.r, %.preheader.us.i ], [ %i.u, %middle.block ]
  %.04962.us.i.ph = phi i1 [ false, %.preheader.us.i ], [ %i.au, %middle.block ]
  %.15361.us.i.ph = phi i32 [ %.052.us.i10, %.preheader.us.i ], [ %i.av, %middle.block ]
  %.15560.us.i.ph = phi i32 [ %.054.us.i9, %.preheader.us.i ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %.256.us.i.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.256.us.i, %scalar.ph ] ; 2 uses
  %.2.us.i.lcssa = phi i32 [ %i.av, %middle.block ], [ %.2.us.i, %scalar.ph ] ; 2 uses
  %.1.us.i.lcssa = phi i1 [ %i.au, %middle.block ], [ %.1.us.i, %scalar.ph ]
  %i.ax = trunc nuw i64 %indvars.iv.next72.i11 to i32
  %i.ay = icmp slt i32 %i.ax, 1
  %or.cond.not = select i1 %.1.us.i.lcssa, i1 true, i1 %i.ay
  br i1 %or.cond.not, label %.split67.us.i, label %.preheader.us.i

.split67.us.i:                                    ; preds = %._crit_edge.us.i, %.split.us.preheader.i
  %.us-phi.i = phi i32 [ -1, %.split.us.preheader.i ], [ %.256.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %.us-phi68.i = phi i32 [ -1, %.split.us.preheader.i ], [ %.2.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %i.az = icmp eq i32 %.us-phi.i, -1
  %i.ba = icmp eq i32 %.us-phi68.i, -1
  %or.cond.i = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %_Z25dtMergeCorridorStartMovedPjiiPKji.exit, label %bb.c

bb.c:                                             ; preds = %.split67.us.i
  %i.bb = sub nsw i32 %i.p, %.us-phi68.i          ; 5 uses
  %i.bc = add nuw nsw i32 %.us-phi.i, 1
  %i.bd = call noundef i32 @llvm.smin.i32(i32 %i.bc, i32 %i.m) ; 2 uses
  %i.be = sub nsw i32 %i.m, %i.bd                 ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.bb
  %i.bg = icmp sgt i32 %i.bf, %i.o
  %i.bh = sub nsw i32 %i.o, %i.bb
  %spec.select.i = select i1 %i.bg, i32 %i.bh, i32 %i.be ; 3 uses
  %i.bi = icmp sgt i32 %spec.select.i, 0
  br i1 %i.bi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bj = sext i32 %i.bb to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bj
  %i.bl = sext i32 %i.bd to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bl
  %i.bn = zext nneg i32 %spec.select.i to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.bm, i64 %i.bo, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bp = call noundef i32 @llvm.smin.i32(i32 %i.bb, i32 %i.o) ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.bp to i64 ; 7 uses
  %min.iters.check25 = icmp ult i32 %i.bp, 24
  br i1 %min.iters.check25, label %.lr.ph.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader.i
  %i.br = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.bs = trunc nsw i64 %i.br to i32
  %i.bt = xor i32 %i.bs, -1
  %i.bu = add i32 %i.p, %i.bt
  %i.bv = icmp sge i32 %i.bu, %i.p
  %i.bw = icmp ugt i64 %i.br, 4294967295
  %i.bx = or i1 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.by = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.by
  %i.bz = add nsw i32 %i.p, -1
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 2
  %i.cc = add nsw i64 %i.cb, 4                    ; 2 uses
  %i.cd = sub nsw i64 %i.cc, %i.by
  %i.ce = getelementptr i8, ptr %i.b, i64 %i.cd
  %scevgep23 = getelementptr i8, ptr %i.b, i64 %i.cc
  %bound0 = icmp ult ptr %i.k, %scevgep23
  %bound1 = icmp ult ptr %i.ce, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck
  %n.vec27 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph26
  %index29 = phi i64 [ 0, %vector.ph26 ], [ %index.next34, %vector.body28 ] ; 3 uses
  %i.cf = trunc i64 %index29 to i32
  %i.cg = xor i32 %i.cf, -1
  %i.ch = add i32 %i.p, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -12
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -28
  %wide.load30 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !11, !alias.scope !65
  %wide.load31 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !11, !alias.scope !65
  %reverse32 = shufflevector <4 x i32> %wide.load30, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse33 = shufflevector <4 x i32> %wide.load31, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index29 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <4 x i32> %reverse32, ptr %i.cm, align 4, !tbaa !11, !alias.scope !66, !noalias !65
  store <4 x i32> %reverse33, ptr %i.cn, align 4, !tbaa !11, !alias.scope !66, !noalias !65
  %index.next34 = add nuw i64 %index29, 8         ; 2 uses
  %i.co = icmp eq i64 %index.next34, %n.vec27
  br i1 %i.co, label %middle.block35, label %vector.body28, !llvm.loop !63

middle.block35:                                   ; preds = %vector.body28
  %cmp.n36 = icmp eq i64 %n.vec27, %wide.trip.count.i
  br i1 %cmp.n36, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader.i, %middle.block35
  %indvars.iv74.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec27, %middle.block35 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.cp = trunc nuw nsw i64 %indvars.iv74.i.ph to i32
  %i.cq = xor i32 %i.cp, -1
  %i.cr = add nsw i32 %i.p, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !11
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv74.i.ph
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !11
  %indvars.iv.next75.i.prol = or disjoint i64 %indvars.iv74.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv74.i.unr = phi i64 [ %indvars.iv74.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next75.i.prol, %.lr.ph.i.prol ]
  %i.cw = add nsw i64 %wide.trip.count.i, -1
  %i.cx = icmp eq i64 %indvars.iv74.i.ph, %i.cw
  br i1 %i.cx, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block35, %bb.e
  %i.cy = add nsw i32 %spec.select.i, %i.bb
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !18
  br label %_Z25dtMergeCorridorStartMovedPjiiPKji.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i.1, %.lr.ph.i ], [ %indvars.iv74.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.cz = trunc i64 %indvars.iv74.i to i32
  %i.da = xor i32 %i.cz, -1
  %i.db = add i32 %i.p, %i.da
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !11
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv74.i
  store i32 %i.de, ptr %i.df, align 4, !tbaa !11
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %i.dg = trunc i64 %indvars.iv.next75.i to i32
  %i.dh = xor i32 %i.dg, -1
  %i.di = add i32 %i.p, %i.dh
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !11
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next75.i
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !11
  %indvars.iv.next75.i.1 = add nuw nsw i64 %indvars.iv74.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next75.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !64

_Z25dtMergeCorridorStartMovedPjiiPKji.exit:       ; preds = %bb.b, %.split67.us.i, %._crit_edge.i
  %i.dn = phi ptr [ %.pre, %._crit_edge.i ], [ %i.k, %.split67.us.i ], [ %i.k, %bb.b ]
  %.058.i = phi i32 [ %i.cy, %._crit_edge.i ], [ %i.m, %.split67.us.i ], [ %i.m, %bb.b ]
  store i32 %.058.i, ptr %i.l, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !22
  store float %i.dp, ptr %i.d, align 4, !tbaa !22
  %i.dq = load i32, ptr %i.dn, align 4, !tbaa !11
  %i.dr = call noundef i32 @_ZNK14dtNavMeshQuery13getPolyHeightEjPKfPf(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %i.dq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.ds = load float, ptr %i.d, align 4, !tbaa !22
  %i.dt = load float, ptr %i.a, align 4, !tbaa !22
  store float %i.dt, ptr %0, align 8, !tbaa !22
  store float %i.ds, ptr %i.do, align 4, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dv = load float, ptr %i.du, align 4, !tbaa !22
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.dv, ptr %i.dw, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_Z25dtMergeCorridorStartMovedPjiiPKji.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %i.j
}

declare noundef i32 @_ZNK14dtNavMeshQuery16moveAlongSurfaceEjPKfS1_PK13dtQueryFilterPfPjPii(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK14dtNavMeshQuery13getPolyHeightEjPKfPf(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_ZN14dtPathCorridor18moveTargetPositionEPKfP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = alloca [16 x i32], align 16              ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.c, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr [4 x i8], ptr %i.e, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = call noundef i32 @_ZNK14dtNavMeshQuery16moveAlongSurfaceEjPKfS1_PK13dtQueryFilterPfPjPii(ptr noundef nonnull align 8 dereferenceable(104) %2, i32 noundef %i.k, ptr noundef nonnull %i.l, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 16) #10
  %i.n = and i32 %i.m, 1073741824
  %i.o = icmp ne i32 %i.n, 0                      ; 2 uses
  br i1 %i.o, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.q = load i32, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !20
  %i.t = load i32, ptr %i.c, align 4, !tbaa !11   ; 4 uses
  %i.u = icmp sgt i32 %i.q, 0
  %i.v = icmp sgt i32 %i.t, 0
  %or.cond72.i = and i1 %i.u, %i.v
  br i1 %or.cond72.i, label %.preheader.us.preheader.i, label %_Z23dtMergeCorridorEndMovedPjiiPKji.exit

.preheader.us.preheader.i:                        ; preds = %bb.b
  %i.w = zext nneg i32 %i.t to i64                ; 5 uses
  %i.x = zext nneg i32 %i.q to i64
  %min.iters.check = icmp ult i32 %i.t, 8
  %n.vec = and i64 %i.w, 2147483644               ; 2 uses
  %i.y = and i64 %i.w, 3
  %cmp.n = icmp eq i64 %n.vec, %i.w
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next65.i, %._crit_edge.us.i ] ; 3 uses
  %.03550.us.i = phi i32 [ -1, %.preheader.us.preheader.i ], [ %.2.us.i.lcssa, %._crit_edge.us.i ] ; 3 uses
  %.03749.us.i = phi i32 [ -1, %.preheader.us.preheader.i ], [ %.239.us.i.lcssa, %._crit_edge.us.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv64.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11  ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv64.i to i32 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.03550.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert7 = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat8 = shufflevector <4 x i32> %broadcast.splatinsert7, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi9 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ap, %vector.body ]
  %i.ac = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi10 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.ad = sub i64 %i.w, %index                    ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %i.b, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -16
  %wide.load = load <4 x i32>, ptr %i.af, align 4, !tbaa !11
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ag = icmp eq <4 x i32> %broadcast.splat8, %reverse
  %i.ah = freeze <4 x i1> %i.ag                   ; 4 uses
  %i.ai = or <4 x i1> %vec.phi10, %i.ah           ; 2 uses
  %i.aj = trunc i64 %i.ad to i32
  %i.ak = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.al = shufflevector <4 x i32> %i.ak, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.am = add <4 x i32> %i.al, <i32 -1, i32 -2, i32 -3, i32 -4>
  %i.an = bitcast <4 x i1> %i.ah to i4
  %.not = icmp eq i4 %i.an, 0                     ; 2 uses
  %i.ao = select i1 %.not, <4 x i1> %i.ac, <4 x i1> %i.ah ; 2 uses
  %i.ap = select i1 %.not, <4 x i32> %vec.phi9, <4 x i32> %i.am ; 2 uses
  %i.aq = or <4 x i1> %vec.phi, %i.ah             ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
end_hunk_1
