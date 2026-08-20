inline.NumInlined: 21
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter18convert8BitTo24BitEPKhPhiiS2_ib(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = mul nsw i32 %2, 3                        ; 2 uses
  %i.d = mul nsw i32 %i.c, %3
  %i.e = sext i32 %i.d to i64
  %.046.idx = select i1 %6, i64 %i.e, i64 0
  %.046 = getelementptr inbounds i8, ptr %1, i64 %.046.idx ; 3 uses
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.lr.ph58, label %.loopexit

.lr.ph58:                                         ; preds = %bb.b
  %i.g = sext i32 %i.c to i64                     ; 6 uses
  %i.h = sub nsw i64 0, %i.g
  %.2.idx = select i1 %6, i64 %i.h, i64 0         ; 4 uses
  %i.i = icmp sgt i32 %2, 0
  %.3.idx = select i1 %6, i64 0, i64 %i.g         ; 3 uses
  %i.j = sext i32 %5 to i64                       ; 3 uses
  br i1 %i.i, label %.lr.ph58.split, label %.loopexit

.lr.ph58.split:                                   ; preds = %.lr.ph58
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.lr.ph.us.preheader, label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %.lr.ph58.split
  %xtraiter = and i32 %3, 1
  %i.k = icmp eq i32 %3, 1
  br i1 %i.k, label %.lr.ph.us.epil.preheader, label %.lr.ph.us.preheader.new

.lr.ph.us.preheader.new:                          ; preds = %.lr.ph.us.preheader
  %unroll_iter = and i32 %3, 2147483646
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.split.us.us.1, %.lr.ph.us.preheader.new
  %.04555.us = phi ptr [ %0, %.lr.ph.us.preheader.new ], [ %i.aa, %._crit_edge.split.us.us.1 ]
  %.14754.us = phi ptr [ %.046, %.lr.ph.us.preheader.new ], [ %.3.us.1, %._crit_edge.split.us.us.1 ]
  %niter = phi i32 [ 0, %.lr.ph.us.preheader.new ], [ %niter.next.1, %._crit_edge.split.us.us.1 ]
  %.2.us = getelementptr inbounds i8, ptr %.14754.us, i64 %.2.idx ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.us
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %bb.c ], [ 0, %.lr.ph.us ] ; 2 uses
  %.152.us.us = phi ptr [ %i.q, %bb.c ], [ %.04555.us, %.lr.ph.us ] ; 3 uses
  %i.l = load i8, ptr %.152.us.us, align 1, !tbaa !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.2.us, i64 %indvars.iv64 ; 3 uses
  store i8 %i.l, ptr %i.m, align 1, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.l, ptr %i.n, align 1, !tbaa !8
  %i.o = load i8, ptr %.152.us.us, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  store i8 %i.o, ptr %i.p, align 1, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %.152.us.us, i64 1 ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 3 ; 2 uses
  %i.r = icmp slt i64 %indvars.iv.next65, %i.g
  br i1 %i.r, label %bb.c, label %._crit_edge.split.us.us, !llvm.loop !9

._crit_edge.split.us.us:                          ; preds = %bb.c
  %.3.us = getelementptr inbounds nuw i8, ptr %.2.us, i64 %.3.idx
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.j
  %.2.us.1 = getelementptr inbounds i8, ptr %.3.us, i64 %.2.idx ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %._crit_edge.split.us.us
  %indvars.iv64.1 = phi i64 [ %indvars.iv.next65.1, %bb.d ], [ 0, %._crit_edge.split.us.us ] ; 2 uses
  %.152.us.us.1 = phi ptr [ %i.y, %bb.d ], [ %i.s, %._crit_edge.split.us.us ] ; 3 uses
  %i.t = load i8, ptr %.152.us.us.1, align 1, !tbaa !8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.2.us.1, i64 %indvars.iv64.1 ; 3 uses
  store i8 %i.t, ptr %i.u, align 1, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %i.t, ptr %i.v, align 1, !tbaa !8
  %i.w = load i8, ptr %.152.us.us.1, align 1, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %.152.us.us.1, i64 1 ; 2 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64.1, 3 ; 2 uses
  %i.z = icmp slt i64 %indvars.iv.next65.1, %i.g
  br i1 %i.z, label %bb.d, label %._crit_edge.split.us.us.1, !llvm.loop !9

._crit_edge.split.us.us.1:                        ; preds = %bb.d
  %.3.us.1 = getelementptr inbounds nuw i8, ptr %.2.us.1, i64 %.3.idx ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.j ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.us, !llvm.loop !11

.lr.ph:                                           ; preds = %.lr.ph58.split, %._crit_edge.split
  %.04456 = phi i32 [ %i.ac, %._crit_edge.split ], [ 0, %.lr.ph58.split ]
  %.04555 = phi ptr [ %i.ab, %._crit_edge.split ], [ %0, %.lr.ph58.split ]
  %.14754 = phi ptr [ %.3, %._crit_edge.split ], [ %.046, %.lr.ph58.split ]
  %.2 = getelementptr inbounds i8, ptr %.14754, i64 %.2.idx ; 2 uses
  br label %bb.e

._crit_edge.split:                                ; preds = %bb.e
  %.3 = getelementptr inbounds nuw i8, ptr %.2, i64 %.3.idx
  %i.ab = getelementptr inbounds i8, ptr %i.ax, i64 %i.j
  %i.ac = add nuw nsw i32 %.04456, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !11

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.152 = phi ptr [ %.04555, %.lr.ph ], [ %i.ax, %bb.e ] ; 4 uses
  %i.ad = load i8, ptr %.152, align 1, !tbaa !8
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %.2, i64 %indvars.iv ; 3 uses
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !8
  %i.ak = load i8, ptr %.152, align 1, !tbaa !8
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 2
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !8
  %i.ar = load i8, ptr %.152, align 1, !tbaa !8
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %.152, i64 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ay = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.ay, label %bb.e, label %._crit_edge.split, !llvm.loop !9

.loopexit.loopexit.unr-lcssa:                     ; preds = %._crit_edge.split.us.us.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.us.epil.preheader

.lr.ph.us.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.us.preheader
  %.04555.us.epil.init = phi ptr [ %0, %.lr.ph.us.preheader ], [ %i.aa, %.loopexit.loopexit.unr-lcssa ]
  %.14754.us.epil.init = phi ptr [ %.046, %.lr.ph.us.preheader ], [ %.3.us.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod79 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %.2.us.epil = getelementptr inbounds i8, ptr %.14754.us.epil.init, i64 %.2.idx
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.us.epil.preheader
  %indvars.iv64.epil = phi i64 [ %indvars.iv.next65.epil, %bb.f ], [ 0, %.lr.ph.us.epil.preheader ] ; 2 uses
  %.152.us.us.epil = phi ptr [ %i.be, %bb.f ], [ %.04555.us.epil.init, %.lr.ph.us.epil.preheader ] ; 3 uses
  %i.az = load i8, ptr %.152.us.us.epil, align 1, !tbaa !8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.2.us.epil, i64 %indvars.iv64.epil ; 3 uses
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !8
  %i.bc = load i8, ptr %.152.us.us.epil, align 1, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %.152.us.us.epil, i64 1
  %indvars.iv.next65.epil = add nuw nsw i64 %indvars.iv64.epil, 3 ; 2 uses
  %i.bf = icmp slt i64 %indvars.iv.next65.epil, %i.g
  br i1 %i.bf, label %bb.f, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %._crit_edge.split, %.loopexit.loopexit.unr-lcssa, %bb.f, %bb.b, %.lr.ph58, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN5video15CColorConverter18convert8BitTo32BitEPKhPhiiS2_ib(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit48

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %2, 2                        ; 2 uses
  %i.d = mul i32 %i.c, %3
  %i.e = zext i32 %i.d to i64
  %.041.idx = select i1 %6, i64 %i.e, i64 0       ; 3 uses
  %.041 = getelementptr inbounds nuw i8, ptr %1, i64 %.041.idx ; 2 uses
  %.not57 = icmp eq i32 %3, 0
  br i1 %.not57, label %.loopexit48, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.b
  %i.f = zext i32 %i.c to i64                     ; 3 uses
  %i.g = sub nsw i64 0, %i.f                      ; 2 uses
  %.2.idx = select i1 %6, i64 %i.g, i64 0         ; 4 uses
  %.not = icmp eq ptr %4, null
  %.3.idx = select i1 %6, i64 0, i64 %i.f         ; 2 uses
  %i.h = add i32 %5, %2                           ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %.not59 = icmp eq i32 %2, 0                     ; 2 uses
  br i1 %.not, label %.lr.ph56.split.us, label %.lr.ph56.split

.lr.ph56.split.us:                                ; preds = %.lr.ph56
  br i1 %.not59, label %.loopexit48, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph56.split.us
  %wide.trip.count66 = zext i32 %2 to i64         ; 7 uses
  %7 = getelementptr i8, ptr %1, i64 %.041.idx
  %scevgep = getelementptr i8, ptr %7, i64 %.2.idx
  %i.j = select i1 %6, i64 %i.g, i64 %i.f         ; 2 uses
  %i.k = add i32 %3, -1
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = mul i64 %i.j, %i.l
  %i.n = shl nuw nsw i64 %wide.trip.count66, 2
  %8 = getelementptr i8, ptr %1, i64 %.041.idx
  %i.o = getelementptr i8, ptr %8, i64 %.2.idx
  %i.p = getelementptr i8, ptr %i.o, i64 %i.m
  %scevgep77 = getelementptr i8, ptr %i.p, i64 %i.n
  %i.q = mul nsw i64 %i.i, %i.l
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %scevgep78 = getelementptr i8, ptr %i.r, i64 %wide.trip.count66
  %min.iters.check = icmp ult i32 %2, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep78
  %bound1 = icmp ult ptr %0, %scevgep77
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.j, 0
  %i.s = or i1 %found.conflict, %stride.check
  %stride.check79 = icmp slt i32 %i.h, 0
  %i.t = or i1 %i.s, %stride.check79
  %n.vec = and i64 %wide.trip.count66, 4294967288 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count66
  %xtraiter83 = and i64 %wide.trip.count66, 3     ; 2 uses
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %.055.us = phi i32 [ %i.bm, %..loopexit_crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %.04053.us = phi ptr [ %i.bl, %..loopexit_crit_edge.us ], [ %0, %.preheader.us.preheader ] ; 7 uses
  %.14252.us = phi ptr [ %.3.us, %..loopexit_crit_edge.us ], [ %.041, %.preheader.us.preheader ]
  %.2.us = getelementptr inbounds i8, ptr %.14252.us, i64 %.2.idx ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.t
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04053.us, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %wide.load = load <4 x i8>, ptr %i.u, align 1, !tbaa !8, !alias.scope !12
  %wide.load80 = load <4 x i8>, ptr %i.v, align 1, !tbaa !8, !alias.scope !12
  %i.w = zext <4 x i8> %wide.load to <4 x i32>
  %i.x = zext <4 x i8> %wide.load80 to <4 x i32>
  %i.y = mul nuw nsw <4 x i32> %i.w, splat (i32 65793)
  %i.z = mul nuw nsw <4 x i32> %i.x, splat (i32 65793)
  %i.aa = or disjoint <4 x i32> %i.y, splat (i32 -16777216)
  %i.ab = or disjoint <4 x i32> %i.z, splat (i32 -16777216)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.2.us, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x i32> %i.aa, ptr %i.ac, align 4, !tbaa !15, !alias.scope !16, !noalias !12
  store <4 x i32> %i.ab, ptr %i.ad, align 4, !tbaa !15, !alias.scope !16, !noalias !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv63.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us ] ; 3 uses
  br i1 %lcmp.mod84.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv63.prol = phi i64 [ %indvars.iv.next64.prol, %scalar.ph.prol ], [ %indvars.iv63.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.04053.us, i64 %indvars.iv63.prol
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ah, 65793
  %i.aj = or disjoint i32 %i.ai, -16777216
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.2.us, i64 %indvars.iv63.prol
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !15
  %indvars.iv.next64.prol = add nuw nsw i64 %indvars.iv63.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter83
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !21

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv63.unr = phi i64 [ %indvars.iv63.ph, %scalar.ph.preheader ], [ %indvars.iv.next64.prol, %scalar.ph.prol ]
  %i.al = sub nsw i64 %indvars.iv63.ph, %wide.trip.count66
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %..loopexit_crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv63 = phi i64 [ %indvars.iv.next64.3, %scalar.ph ], [ %indvars.iv63.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.04053.us, i64 %indvars.iv63
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !8
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nuw nsw i32 %i.ap, 65793
  %i.ar = or disjoint i32 %i.aq, -16777216
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.2.us, i64 %indvars.iv63
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !15
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.04053.us, i64 %indvars.iv.next64
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = zext i8 %i.au to i32
  %i.aw = mul nuw nsw i32 %i.av, 65793
  %i.ax = or disjoint i32 %i.aw, -16777216
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.2.us, i64 %indvars.iv.next64
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !15
  %indvars.iv.next64.1 = add nuw nsw i64 %indvars.iv63, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.04053.us, i64 %indvars.iv.next64.1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bb = zext i8 %i.ba to i32
  %i.bc = mul nuw nsw i32 %i.bb, 65793
  %i.bd = or disjoint i32 %i.bc, -16777216
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.2.us, i64 %indvars.iv.next64.1
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !15
  %indvars.iv.next64.2 = add nuw nsw i64 %indvars.iv63, 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.04053.us, i64 %indvars.iv.next64.2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 65793
  %i.bj = or disjoint i32 %i.bi, -16777216
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.2.us, i64 %indvars.iv.next64.2
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !15
  %indvars.iv.next64.3 = add nuw nsw i64 %indvars.iv63, 4 ; 2 uses
  %exitcond67.not.3 = icmp eq i64 %indvars.iv.next64.3, %wide.trip.count66
  br i1 %exitcond67.not.3, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !23

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.3.us = getelementptr inbounds nuw i8, ptr %.2.us, i64 %.3.idx
  %i.bl = getelementptr inbounds i8, ptr %.04053.us, i64 %i.i
  %i.bm = add nuw i32 %.055.us, 1                 ; 2 uses
  %exitcond68.not = icmp eq i32 %i.bm, %3
  br i1 %exitcond68.not, label %.loopexit48, label %.preheader.us, !llvm.loop !24

.lr.ph56.split:                                   ; preds = %.lr.ph56
  br i1 %.not59, label %.loopexit48, label %.preheader46.preheader

.preheader46.preheader:                           ; preds = %.lr.ph56.split
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bn = icmp ult i32 %2, 4
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod82 = icmp ne i64 %xtraiter, 0
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.preheader, %..loopexit47_crit_edge
  %.055 = phi i32 [ %i.ct, %..loopexit47_crit_edge ], [ 0, %.preheader46.preheader ]
  %.04053 = phi ptr [ %i.cs, %..loopexit47_crit_edge ], [ %0, %.preheader46.preheader ] ; 6 uses
  %.14252 = phi ptr [ %.3, %..loopexit47_crit_edge ], [ %.041, %.preheader46.preheader ]
  %.2 = getelementptr inbounds i8, ptr %.14252, i64 %.2.idx ; 6 uses
  br i1 %i.bn, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46, %.preheader46.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader46.new ], [ 0, %.preheader46 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader46.new ], [ 0, %.preheader46 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.04053, i64 %indvars.iv
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !8
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !15
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !15
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.04053, i64 %indvars.iv.next
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !15
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv.next
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !15
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.04053, i64 %indvars.iv.next.1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !8
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !15
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv.next.1
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !15
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.04053, i64 %indvars.iv.next.2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !8
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !15
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv.next.2
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit47_crit_edge.unr-lcssa, label %.preheader46.new, !llvm.loop !25

..loopexit47_crit_edge.unr-lcssa:                 ; preds = %.preheader46.new
  br i1 %lcmp.mod.not, label %..loopexit47_crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit47_crit_edge.unr-lcssa, %.preheader46
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next.3, %..loopexit47_crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.04053, i64 %indvars.iv.epil
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !15
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv.epil
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !15
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit47_crit_edge, label %bb.c, !llvm.loop !26

end_hunk_0
