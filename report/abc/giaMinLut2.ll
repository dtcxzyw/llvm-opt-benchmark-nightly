Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMinLut2?download=true
inline.NumInlined: 405
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ManFindBestPosition:bb.a
  %.not122 = icmp eq i32 %.05372.us.us83, 0
  br i1 %.not122, label %._crit_edge.thread, label %.lr.ph.split.us.split.split.us, !llvm.loop !102

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split, %.lr.ph.split.us.split.split
  %.075.us = phi i32 [ %spec.select99, %.lr.ph.split.us.split.split ], [ 1000000000, %.lr.ph.split.us.split ] ; 2 uses
  %.05074.us = phi i32 [ %i.fs, %.lr.ph.split.us.split.split ], [ %i.aw, %.lr.ph.split.us.split ]
  %.05173.us = phi i32 [ %spec.select98, %.lr.ph.split.us.split.split ], [ -1, %.lr.ph.split.us.split ]
  %.05372.us = phi i32 [ %i.ft, %.lr.ph.split.us.split.split ], [ %i.cg, %.lr.ph.split.us.split ] ; 4 uses
  %i.fr = tail call i32 @Gia_ManSwapTree(ptr noundef nonnull %i.b, i32 noundef %.05372.us)
  %i.fs = add nsw i32 %i.fr, %.05074.us           ; 3 uses
  %.not57.us = icmp slt i32 %.075.us, %i.fs
  %spec.select98 = select i1 %.not57.us, i32 %.05173.us, i32 %.05372.us ; 2 uses
  %spec.select99 = tail call i32 @llvm.smin.i32(i32 %.075.us, i32 %i.fs) ; 2 uses
  %i.ft = add nsw i32 %.05372.us, -1
  %.not121 = icmp eq i32 %.05372.us, 0
  br i1 %.not121, label %._crit_edge.thread, label %.lr.ph.split.us.split.split, !llvm.loop !102

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %Abc_TtCopy.exit64
  %indvar = phi i32 [ 0, %.lr.ph.split.preheader ], [ %indvar.next, %Abc_TtCopy.exit64 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ci, %.lr.ph.split.preheader ], [ %indvars.iv.next, %Abc_TtCopy.exit64 ] ; 3 uses
  %.075 = phi i32 [ 1000000000, %.lr.ph.split.preheader ], [ %.1, %Abc_TtCopy.exit64 ] ; 4 uses
  %.05074 = phi i32 [ %i.aw, %.lr.ph.split.preheader ], [ %i.fz, %Abc_TtCopy.exit64 ]
  %.05173 = phi i32 [ -1, %.lr.ph.split.preheader ], [ %.152, %Abc_TtCopy.exit64 ] ; 2 uses
  %i.fu = mul i32 %i.cl, %indvar
  %i.fv = sub i32 %i.ck, %i.fu
  %i.fw = sext i32 %i.fv to i64
  %i.fx = shl nsw i64 %i.fw, 3
  %indvars104 = trunc i64 %indvars.iv to i32      ; 5 uses
  %i.fy = tail call i32 @Gia_ManSwapTree(ptr noundef nonnull %i.b, i32 noundef %indvars104)
  %i.fz = add nsw i32 %i.fy, %.05074              ; 5 uses
  br i1 %.not56, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %.not57 = icmp slt i32 %.075, %i.fz
  br i1 %.not57, label %bb.g, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split
  %i.ga = icmp sgt i32 %.075, %i.fz
  br i1 %i.ga, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.152 = phi i32 [ %indvars104, %bb.f ], [ %.05173, %bb.d ], [ %.05173, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.fz, %bb.f ], [ %.075, %bb.d ], [ %.075, %bb.e ] ; 2 uses
  %i.gb = add nuw nsw i32 %indvars104, 1
  %i.gc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.gb, i32 noundef %indvars104, i32 noundef %i.fz) ; 0 uses
  %i.gd = mul i32 %i.bf, %indvars104
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ge ; 6 uses
  %i.gg = load ptr, ptr %i.bc, align 8, !tbaa !22 ; 8 uses
  %i.gh = ptrtoaddr ptr %i.gg to i64
  br i1 %i.bg, label %.lr.ph18.i60.preheader, label %Abc_TtCopy.exit64

.lr.ph18.i60.preheader:                           ; preds = %bb.g
  br i1 %min.iters.check130, label %.lr.ph18.i60.preheader175, label %vector.memcheck127

vector.memcheck127:                               ; preds = %.lr.ph18.i60.preheader
  %i.gi = add i64 %i.fx, %i.a
  %i.gj = sub i64 %i.gh, %i.gi
  %diff.check128 = icmp ugt i64 %i.gj, -32
  br i1 %diff.check128, label %.lr.ph18.i60.preheader175, label %vector.body133

vector.body133:                                   ; preds = %vector.memcheck127, %vector.body133
  %index134 = phi i64 [ %index.next137, %vector.body133 ], [ 0, %vector.memcheck127 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %index134 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %wide.load135 = load <2 x i64>, ptr %i.gk, align 8, !tbaa !26
  %wide.load136 = load <2 x i64>, ptr %i.gl, align 8, !tbaa !26
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %index134 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <2 x i64> %wide.load135, ptr %i.gm, align 8, !tbaa !26
  store <2 x i64> %wide.load136, ptr %i.gn, align 8, !tbaa !26
  %index.next137 = add nuw i64 %index134, 4       ; 2 uses
  %i.go = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.go, label %middle.block138, label %vector.body133, !llvm.loop !106

middle.block138:                                  ; preds = %vector.body133
  br i1 %cmp.n139, label %Abc_TtCopy.exit64, label %.lr.ph18.i60.preheader175

.lr.ph18.i60.preheader175:                        ; preds = %vector.memcheck127, %.lr.ph18.i60.preheader, %middle.block138
  %indvars.iv21.i61.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %.lr.ph18.i60.preheader ], [ %n.vec132, %middle.block138 ] ; 3 uses
  br i1 %lcmp.mod178.not, label %.lr.ph18.i60.prol.loopexit, label %.lr.ph18.i60.prol

.lr.ph18.i60.prol:                                ; preds = %.lr.ph18.i60.preheader175, %.lr.ph18.i60.prol
  %indvars.iv21.i61.prol = phi i64 [ %indvars.iv.next22.i62.prol, %.lr.ph18.i60.prol ], [ %indvars.iv21.i61.ph, %.lr.ph18.i60.preheader175 ] ; 3 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %.lr.ph18.i60.prol ], [ 0, %.lr.ph18.i60.preheader175 ]
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv21.i61.prol
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !26
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv21.i61.prol
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !26
  %indvars.iv.next22.i62.prol = add nuw nsw i64 %indvars.iv21.i61.prol, 1 ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %.lr.ph18.i60.prol.loopexit, label %.lr.ph18.i60.prol, !llvm.loop !107

.lr.ph18.i60.prol.loopexit:                       ; preds = %.lr.ph18.i60.prol, %.lr.ph18.i60.preheader175
  %indvars.iv21.i61.unr = phi i64 [ %indvars.iv21.i61.ph, %.lr.ph18.i60.preheader175 ], [ %indvars.iv.next22.i62.prol, %.lr.ph18.i60.prol ]
  %i.gs = sub nsw i64 %indvars.iv21.i61.ph, %wide.trip.count24.i59
  %i.gt = icmp ugt i64 %i.gs, -4
  br i1 %i.gt, label %Abc_TtCopy.exit64, label %.lr.ph18.i60

.lr.ph18.i60:                                     ; preds = %.lr.ph18.i60.prol.loopexit, %.lr.ph18.i60
  %indvars.iv21.i61 = phi i64 [ %indvars.iv.next22.i62.3, %.lr.ph18.i60 ], [ %indvars.iv21.i61.unr, %.lr.ph18.i60.prol.loopexit ] ; 6 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv21.i61
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !26
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv21.i61
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !26
  %indvars.iv.next22.i62 = add nuw nsw i64 %indvars.iv21.i61, 1 ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.next22.i62
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !26
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next22.i62
  store i64 %i.gy, ptr %i.gz, align 8, !tbaa !26
  %indvars.iv.next22.i62.1 = add nuw nsw i64 %indvars.iv21.i61, 2 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.next22.i62.1
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !26
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next22.i62.1
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !26
  %indvars.iv.next22.i62.2 = add nuw nsw i64 %indvars.iv21.i61, 3 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %indvars.iv.next22.i62.2
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !26
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next22.i62.2
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !26
  %indvars.iv.next22.i62.3 = add nuw nsw i64 %indvars.iv21.i61, 4 ; 2 uses
  %exitcond25.not.i63.3 = icmp eq i64 %indvars.iv.next22.i62.3, %wide.trip.count24.i59
  br i1 %exitcond25.not.i63.3, label %Abc_TtCopy.exit64, label %.lr.ph18.i60, !llvm.loop !108

Abc_TtCopy.exit64:                                ; preds = %.lr.ph18.i60.prol.loopexit, %.lr.ph18.i60, %middle.block138, %bb.g
  %i.hg = tail call ptr @Gia_ManContructTree(ptr noundef readonly %i.gg, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 200
  %i.hi = load <16 x i32>, ptr %i.hh, align 4, !tbaa !17
  %i.hj = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.hi)
  %i.hk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.hj) ; 0 uses
  tail call void @Gia_ManTreeFree(ptr noundef %i.hg)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.hl = icmp sgt i64 %indvars.iv, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %i.hl, label %.lr.ph.split, label %._crit_edge, !llvm.loop !102

._crit_edge.thread:                               ; preds = %.lr.ph.split.us.split.split, %.lr.ph.split.us.split.split.us
  %.051.lcssa.ph = phi i32 [ %spec.select96, %.lr.ph.split.us.split.split.us ], [ %spec.select98, %.lr.ph.split.us.split.split ]
  %.0.lcssa.ph = phi i32 [ %spec.select97, %.lr.ph.split.us.split.split.us ], [ %spec.select99, %.lr.ph.split.us.split.split ]
  tail call void @Gia_ManTreeFree(ptr noundef nonnull %i.b)
  br label %bb.i

._crit_edge:                                      ; preds = %Abc_TtCopy.exit64, %Abc_TtCopy.exit71.loopexit.us.us, %Abc_TtCopy.exit71.loopexit.us.us.us, %Abc_TtCopy.exit
  %.051.lcssa = phi i32 [ -1, %Abc_TtCopy.exit ], [ %spec.select94, %Abc_TtCopy.exit71.loopexit.us.us ], [ %spec.select, %Abc_TtCopy.exit71.loopexit.us.us.us ], [ %.152, %Abc_TtCopy.exit64 ] ; 3 uses
  %.0.lcssa = phi i32 [ 1000000000, %Abc_TtCopy.exit ], [ %spec.select95, %Abc_TtCopy.exit71.loopexit.us.us ], [ %spec.select93, %Abc_TtCopy.exit71.loopexit.us.us.us ], [ %.1, %Abc_TtCopy.exit64 ] ; 3 uses
  tail call void @Gia_ManTreeFree(ptr noundef nonnull %i.b)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.hm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.051.lcssa, i32 noundef %.0.lcssa) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread, %bb.h, %._crit_edge
  %.0.lcssa117 = phi i32 [ %.0.lcssa.ph, %._crit_edge.thread ], [ %.0.lcssa, %bb.h ], [ %.0.lcssa, %._crit_edge ]
  %.051.lcssa116 = phi i32 [ %.051.lcssa.ph, %._crit_edge.thread ], [ %.051.lcssa, %bb.h ], [ %.051.lcssa, %._crit_edge ]
  %.not55 = icmp eq ptr %6, null
  br i1 %.not55, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %.0.lcssa117, ptr %6, align 4, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret i32 %.051.lcssa116
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManPermStats(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  %i.g = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.g, i32 noundef %i.d, i32 noundef %i.f) ; 0 uses
  %i.i = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManPermuteTreeOne(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 12 uses
  %i.b = alloca [16 x i32], align 16              ; 18 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = mul i32 %3, %2                           ; 4 uses
  %i.e = mul i32 %i.d, %1
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 0, ptr %i.c, align 4, !tbaa !17
  %i.i = icmp sgt i32 %1, 0                       ; 3 uses
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader150, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x i32> %vec.ind, ptr %i.j, align 16, !tbaa !17
  store <4 x i32> %step.add, ptr %i.k, align 16, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader150

.lr.ph.preheader150:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader150, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader150 ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.o = tail call ptr @Gia_ManContructTree(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 17 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 204
  %i.s = load i32, ptr %i.r, align 4, !tbaa !17
  %i.t = add nsw i32 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17
  %i.w = add nsw i32 %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 212
  %i.y = load i32, ptr %i.x, align 4, !tbaa !17
  %i.z = add nsw i32 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !17
  %i.ac = add nsw i32 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 220
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !17
  %i.af = add nsw i32 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !17
  %i.ai = add nsw i32 %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 228
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !17
  %i.al = add nsw i32 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  %i.an = load i32, ptr %i.am, align 4, !tbaa !17
  %i.ao = add nsw i32 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 236
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !17
  %i.ar = add nsw i32 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.at = load i32, ptr %i.as, align 4, !tbaa !17
  %i.au = add nsw i32 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 244
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !17
  %i.ax = add nsw i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !17
  %i.ba = add nsw i32 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 252
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.bd = add nsw i32 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !17
  %i.bg = add nsw i32 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 260
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !17
  %i.bj = add nsw i32 %i.bg, %i.bi
  tail call void @Gia_ManTreeFree(ptr noundef %i.o)
  %.not = icmp ne i32 %4, 0
  %or.cond = and i1 %.not, %i.i
  br i1 %or.cond, label %.lr.ph107, label %.loopexit

.lr.ph107:                                        ; preds = %._crit_edge
  %i.bk = icmp sgt i32 %2, 0
  br i1 %i.bk, label %.lr.ph104.us.preheader, label %.lr.ph107.split.preheader

.lr.ph107.split.preheader:                        ; preds = %.lr.ph107
  %wide.trip.count123 = zext nneg i32 %1 to i64
  br label %.lr.ph107.split

.lr.ph104.us.preheader:                           ; preds = %.lr.ph107
  %i.bl = sext i32 %3 to i64
  %wide.trip.count133 = zext nneg i32 %1 to i64
  %wide.trip.count128 = zext nneg i32 %2 to i64
  br label %.lr.ph104.us

.lr.ph104.us:                                     ; preds = %.lr.ph104.us.preheader, %._crit_edge105.us
  %indvars.iv130 = phi i64 [ 0, %.lr.ph104.us.preheader ], [ %indvars.iv.next131, %._crit_edge105.us ] ; 3 uses
  %i.bm = tail call i32 @Gia_ManRandom(i32 noundef 0) #27
  %i.bn = urem i32 %i.bm, %1                      ; 2 uses
  %i.bo = trunc nuw nsw i64 %indvars.iv130 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph104.us, %bb.b
  %indvars.iv125 = phi i64 [ 0, %.lr.ph104.us ], [ %indvars.iv.next126, %bb.b ] ; 2 uses
  %i.bp = mul nsw i64 %indvars.iv125, %i.bl
  %i.bq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bp
  tail call fastcc void @Abc_TtSwapVars(ptr noundef %i.bq, i32 noundef %1, i32 noundef %i.bo, i32 noundef %i.bn)
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge105.us, label %bb.b, !llvm.loop !111

._crit_edge105.us:                                ; preds = %bb.b
  %i.br = zext nneg i32 %i.bn to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !17
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv130 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !17
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !17
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !17
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %.loopexit, label %.lr.ph104.us, !llvm.loop !112

.lr.ph107.split:                                  ; preds = %.lr.ph107.split.preheader, %.lr.ph107.split
  %indvars.iv120 = phi i64 [ 0, %.lr.ph107.split.preheader ], [ %indvars.iv.next121, %.lr.ph107.split ] ; 2 uses
  %i.bw = tail call i32 @Gia_ManRandom(i32 noundef 0) #27
  %i.bx = urem i32 %i.bw, %1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !17
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv120 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !17
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !17
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !17
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %.lr.ph115, label %.lr.ph107.split, !llvm.loop !112

.loopexit:                                        ; preds = %._crit_edge105.us, %._crit_edge
  br i1 %i.i, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %.lr.ph107.split, %.loopexit
  %i.cd = mul i32 %1, 10
  %.not96 = icmp eq i32 %6, 0                     ; 2 uses
  %i.ce = icmp sgt i32 %i.d, 0
  %wide.trip.count24.i = zext nneg i32 %i.d to i64
  %i.cf = zext nneg i32 %1 to i64                 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.a, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -4     ; 2 uses
  %i.ci = add i32 %1, -2                          ; 3 uses
  %i.cj = shl nuw nsw i64 %wide.trip.count24.i, 3
  %i.ck = sext i32 %i.ci to i64                   ; 7 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.cd, i32 1)
  %i.cl = shl nsw i64 %i.ck, 2
  %i.cm = add nsw i64 %i.cl, 4                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.cm
  %scevgep147 = getelementptr i8, ptr %i.a, i64 %i.cm
  %8 = add nsw i64 %i.ck, 1                       ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %8
  %10 = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ck ; 2 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %8
  %12 = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ck ; 2 uses
  %indvars.iv.next136.prol = add nsw i64 %i.ck, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph115
  %i.cn = phi i32 [ 0, %.lr.ph115 ], [ %i.dk, %bb.d ]
  %.086113 = phi i32 [ 0, %.lr.ph115 ], [ %i.dp, %bb.d ] ; 3 uses
  %.088112 = phi i32 [ 0, %.lr.ph115 ], [ %i.dn, %bb.d ]
  br i1 %.not96, label %.split, label %.split90

.split90:                                         ; preds = %bb.c
  %i.co = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.086113) ; 0 uses
  br label %.split

.split:                                           ; preds = %bb.c, %.split90
  %.sink146 = phi i32 [ %6, %.split90 ], [ 0, %bb.c ]
  %i.cp = and i32 %.086113, 1
  %i.cq = call i32 @Gia_ManFindBestPosition(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %i.h, i32 noundef %i.cp, ptr noundef nonnull %i.c, i32 noundef %.sink146) ; 4 uses
  br i1 %i.ce, label %.lr.ph18.i.preheader, label %Abc_TtCopy.exit

.lr.ph18.i.preheader:                             ; preds = %.split
  %i.cr = mul i32 %i.d, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr [8 x i8], ptr %i.h, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %i.ct, i64 %i.cj, i1 false), !tbaa !26
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %.lr.ph18.i.preheader, %.split
  %i.cu = load i32, ptr %i.ch, align 4, !tbaa !17
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ch, align 4, !tbaa !17
  %.not97108 = icmp slt i32 %i.ci, %i.cq
  br i1 %.not97108, label %._crit_edge111, label %.lr.ph110.preheader

.lr.ph110.preheader:                              ; preds = %Abc_TtCopy.exit
  %i.cw = sext i32 %i.cq to i64                   ; 2 uses
  %load_initial = load i32, ptr %scevgep, align 4 ; 3 uses
  %load_initial148 = load i32, ptr %scevgep147, align 4 ; 3 uses
  %13 = add nsw i64 %i.ck, %i.cw
  %14 = and i64 %13, 1
  %lcmp.mod.not.not = icmp eq i64 %14, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph110.prol, label %.lr.ph110.prol.loopexit

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader
  %15 = load i32, ptr %10, align 4, !tbaa !17
  store i32 %15, ptr %9, align 4, !tbaa !17
  store i32 %load_initial148, ptr %10, align 4, !tbaa !17
  %16 = load i32, ptr %12, align 4, !tbaa !17
  store i32 %16, ptr %11, align 4, !tbaa !17
  store i32 %load_initial, ptr %12, align 4, !tbaa !17
  br label %.lr.ph110.prol.loopexit

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader
  %indvars.iv135.unr = phi i64 [ %i.ck, %.lr.ph110.preheader ], [ %indvars.iv.next136.prol, %.lr.ph110.prol ]
  %17 = icmp eq i32 %i.ci, %i.cq
  br i1 %17, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %indvars.iv135 = phi i64 [ %indvars.iv.next136.1, %.lr.ph110 ], [ %indvars.iv135.unr, %.lr.ph110.prol.loopexit ] ; 7 uses
  %18 = add nsw i64 %indvars.iv135, 1             ; 2 uses
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %18
  %20 = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv135 ; 2 uses
  %21 = load i32, ptr %20, align 4, !tbaa !17
  store i32 %21, ptr %19, align 4, !tbaa !17
  store i32 %load_initial148, ptr %20, align 4, !tbaa !17
  %22 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %18
  %23 = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv135 ; 2 uses
  %24 = load i32, ptr %23, align 4, !tbaa !17
  store i32 %24, ptr %22, align 4, !tbaa !17
  store i32 %load_initial, ptr %23, align 4, !tbaa !17
  %indvars.iv.next136.a = add nsw i64 %indvars.iv135, -1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv135
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next136.a ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !17
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !17
  store i32 %load_initial148, ptr %i.cy, align 4, !tbaa !17
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv135
  %i.db = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv.next136.a ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !17
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !17
  store i32 %load_initial, ptr %i.db, align 4, !tbaa !17
  %indvars.iv.next136.1 = add nsw i64 %indvars.iv135, -2
  %.not97.not.1 = icmp sgt i64 %indvars.iv.next136.a, %i.cw
  br i1 %.not97.not.1, label %.lr.ph110, label %._crit_edge111, !llvm.loop !113

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %Abc_TtCopy.exit
  br i1 %.not96, label %bb.d, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge111, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %i.cf, %._crit_edge111 ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !17
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !17
  %i.dh = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.di = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.dh, i32 noundef %i.de, i32 noundef %i.dg) ; 0 uses
  %i.dj = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.dj, label %.lr.ph.i, label %Gia_ManPermStats.exit.loopexit, !llvm.loop !1

Gia_ManPermStats.exit.loopexit:                   ; preds = %.lr.ph.i
  %putchar.i = call i32 @putchar(i32 10)          ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %Gia_ManPermStats.exit.loopexit, %._crit_edge111
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.dl = icmp eq i32 %i.cn, %i.dk
  %i.dm = add nsw i32 %.088112, 1
  %i.dn = select i1 %i.dl, i32 %i.dm, i32 0       ; 2 uses
  %i.do = icmp eq i32 %i.dn, 4
  %i.dp = add nuw nsw i32 %.086113, 1             ; 2 uses
  %exitcond138.not = icmp eq i32 %i.dp, %smax
  %or.cond145 = select i1 %i.do, i1 true, i1 %exitcond138.not
  br i1 %or.cond145, label %._crit_edge116, label %bb.c, !llvm.loop !114

._crit_edge116:                                   ; preds = %bb.d, %.loopexit
  %i.dq = call ptr @Gia_ManContructTree(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 17 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 200
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 204
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !17
  %i.dv = add nsw i32 %i.du, %i.ds
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 208
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !17
  %i.dy = add nsw i32 %i.dv, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 212
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !17
  %i.eb = add nsw i32 %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 216
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !17
  %i.ee = add nsw i32 %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 220
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !17
  %i.eh = add nsw i32 %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dq, i64 224
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !17
  %i.ek = add nsw i32 %i.eh, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.dq, i64 228
  %i.em = load i32, ptr %i.el, align 4, !tbaa !17
  %i.en = add nsw i32 %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dq, i64 232
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !17
  %i.eq = add nsw i32 %i.en, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.dq, i64 236
  %i.es = load i32, ptr %i.er, align 4, !tbaa !17
  %i.et = add nsw i32 %i.eq, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dq, i64 240
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !17
  %i.ew = add nsw i32 %i.et, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dq, i64 244
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !17
  %i.ez = add nsw i32 %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dq, i64 248
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !17
  %i.fc = add nsw i32 %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dq, i64 252
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !17
  %i.ff = add nsw i32 %i.fc, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dq, i64 256
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !17
  %i.fi = add nsw i32 %i.ff, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dq, i64 260
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !17
  %i.fl = add nsw i32 %i.fi, %i.fk                ; 2 uses
  %.not98 = icmp eq i32 %7, 0
  br i1 %.not98, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge116
  %i.fm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.bj, i32 noundef %i.fl) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge116
  call void @Gia_ManTreeFree(ptr noundef nonnull %i.dq)
  %.not99 = icmp eq ptr %i.h, null
  br i1 %.not99, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.h) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.not100 = icmp eq ptr %5, null
  br i1 %.not100, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fn = sext i32 %1 to i64
  %i.fo = shl nsw i64 %i.fn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr nonnull align 16 %i.b, i64 %i.fo, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %i.fl
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare i32 @Gia_ManRandom(i32 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_TtSwapVars(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #12 {
bb.a:
  %i.a = icmp eq i32 %2, %3
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.smax.i32(i32 %3, i32 %2) ; 7 uses
  %spec.select117 = tail call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 8 uses
  %i.b = icmp slt i32 %1, 7
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.d = sext i32 %spec.select117 to i64
  %i.e = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.d
  %i.f = sext i32 %spec.select to i64
  %i.g = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = shl nuw i32 1, %spec.select
  %.neg.i = shl nsw i32 -1, %spec.select117
  %i.i = add i32 %i.h, %.neg.i
  %i.j = load i64, ptr %i.g, align 8, !tbaa !26
  %i.k = and i64 %i.j, %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !26
  %i.n = and i64 %i.m, %i.c
  %i.o = zext i32 %i.i to i64                     ; 2 uses
  %i.p = shl i64 %i.n, %i.o
  %i.q = or i64 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26
  %i.t = and i64 %i.s, %i.c
  %i.u = lshr i64 %i.t, %i.o
  %i.v = or i64 %i.q, %i.u
  store i64 %i.v, ptr %0, align 8, !tbaa !26
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.w = icmp slt i32 %spec.select, 6
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %1, -6                       ; 3 uses
  %.not135 = icmp eq i32 %i.x, 31
  br i1 %.not135, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.y = shl nuw i32 1, %i.x                      ; 3 uses
  %.neg = shl nsw i32 -1, %spec.select117
  %i.z = shl nuw nsw i32 1, %spec.select
  %i.aa = add nsw i32 %.neg, %i.z
  %i.ab = sext i32 %spec.select117 to i64
  %i.ac = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ab
  %i.ad = sext i32 %spec.select to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !26 ; 4 uses
  %i.ai = zext i32 %i.aa to i64                   ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26 ; 4 uses
  %min.iters.check204 = icmp slt i32 %i.y, 4
  br i1 %min.iters.check204, label %scalar.ph203, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph
  %i.al = and i32 %i.y, 2147483644
  %n.vec206 = zext nneg i32 %i.al to i64
  %broadcast.splatinsert207 = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat208 = shufflevector <2 x i64> %broadcast.splatinsert207, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert209 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat210 = shufflevector <2 x i64> %broadcast.splatinsert209, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert211 = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat212 = shufflevector <2 x i64> %broadcast.splatinsert211, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert213 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat214 = shufflevector <2 x i64> %broadcast.splatinsert213, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph205
  %index216 = phi i64 [ 0, %vector.ph205 ], [ %index.next219, %vector.body215 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index216 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load217 = load <2 x i64>, ptr %i.am, align 8, !tbaa !26 ; 3 uses
  %wide.load218 = load <2 x i64>, ptr %i.an, align 8, !tbaa !26 ; 3 uses
  %i.ao = and <2 x i64> %broadcast.splat208, %wide.load217
end_hunk_0
