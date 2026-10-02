Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec16?download=true
inline.NumInlined: 202
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 76
begin_hunk_0_@If_CluMinimumBase:bb.a
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.i.loopexit.unr-lcssa, label %.lr.ph95.us.i.i, !llvm.loop !317

._crit_edge.us.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph95.us.i.i
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.i, label %.lr.ph95.us.i.i.epil.preheader

.lr.ph95.us.i.i.epil.preheader:                   ; preds = %._crit_edge.us.i.i.loopexit.unr-lcssa, %.lr.ph95.us.i.i.preheader
  %indvars.iv150.i.i.epil.init = phi i64 [ 0, %.lr.ph95.us.i.i.preheader ], [ %indvars.iv.next151.i.i.3, %._crit_edge.us.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod207)
  br label %.lr.ph95.us.i.i.epil

.lr.ph95.us.i.i.epil:                             ; preds = %.lr.ph95.us.i.i.epil, %.lr.ph95.us.i.i.epil.preheader
  %indvars.iv150.i.i.epil = phi i64 [ %indvars.iv.next151.i.i.epil, %.lr.ph95.us.i.i.epil ], [ %indvars.iv150.i.i.epil.init, %.lr.ph95.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph95.us.i.i.epil ], [ 0, %.lr.ph95.us.i.i.epil.preheader ]
  %i.en = add nsw i64 %indvars.iv150.i.i.epil, %i.dn ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %.07996.us.i.i, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !44
  %i.eq = getelementptr inbounds [8 x i8], ptr %.07897.us.i.i, i64 %i.en
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !44
  %indvars.iv.next151.i.i.epil = add nuw nsw i64 %indvars.iv150.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.i, label %.lr.ph95.us.i.i.epil, !llvm.loop !318

._crit_edge.us.i.i:                               ; preds = %vector.body192, %._crit_edge.us.i.i.loopexit.unr-lcssa, %.lr.ph95.us.i.i.epil
  %i.er = getelementptr inbounds [8 x i8], ptr %.07996.us.i.i, i64 %i.di
  %i.es = getelementptr inbounds [8 x i8], ptr %.07897.us.i.i, i64 %i.di
  %i.et = add nsw i32 %.098.us.i.i, %i.dh         ; 2 uses
  %i.eu = icmp slt i32 %i.et, %i.at
  br i1 %i.eu, label %.lr.ph.us.preheader.i.i, label %If_CluSwapAdjacent.exit.i, !llvm.loop !8

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv155.i.i = phi i64 [ %indvars.iv.next156.i.i.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 4 uses
  %niter213 = phi i64 [ %niter213.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.13045.i, i64 %indvars.iv155.i.i
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.12746.i, i64 %indvars.iv155.i.i
  %i.ex = load <2 x i64>, ptr %i.ev, align 8, !tbaa !44 ; 3 uses
  %i.ey = and <2 x i64> %i.ex, <i64 4294967295, i64 -4294967296>
  %i.ez = shl <2 x i64> %i.ex, splat (i64 32)
  %i.fa = lshr <2 x i64> %i.ex, splat (i64 32)
  %i.fb = shufflevector <2 x i64> %i.ez, <2 x i64> %i.fa, <2 x i32> <i32 1, i32 2>
  %i.fc = or disjoint <2 x i64> %i.fb, %i.ey
  store <2 x i64> %i.fc, ptr %i.ew, align 8, !tbaa !44
  %indvars.iv.next156.i.i = or disjoint i64 %indvars.iv155.i.i, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.13045.i, i64 %indvars.iv.next156.i.i
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.12746.i, i64 %indvars.iv.next156.i.i
  %i.ff = load <2 x i64>, ptr %i.fd, align 8, !tbaa !44 ; 3 uses
  %i.fg = and <2 x i64> %i.ff, <i64 4294967295, i64 -4294967296>
  %i.fh = shl <2 x i64> %i.ff, splat (i64 32)
  %i.fi = lshr <2 x i64> %i.ff, splat (i64 32)
  %i.fj = shufflevector <2 x i64> %i.fh, <2 x i64> %i.fi, <2 x i32> <i32 1, i32 2>
  %i.fk = or disjoint <2 x i64> %i.fj, %i.fg
  store <2 x i64> %i.fk, ptr %i.fe, align 8, !tbaa !44
  %indvars.iv.next156.i.i.1 = add nuw nsw i64 %indvars.iv155.i.i, 4 ; 2 uses
  %niter213.next.1 = add nuw nsw i64 %niter213, 2 ; 2 uses
  %niter213.ncmp.1.not = icmp eq i64 %niter213.next.1, %unroll_iter212
  br i1 %niter213.ncmp.1.not, label %If_CluSwapAdjacent.exit.i.loopexit203.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !9

If_CluSwapAdjacent.exit.i.loopexit.unr-lcssa:     ; preds = %scalar.ph
  br i1 %lcmp.mod216.not, label %If_CluSwapAdjacent.exit.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %If_CluSwapAdjacent.exit.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv158.i.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next159.i.i.1, %If_CluSwapAdjacent.exit.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod217)
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.13045.i, i64 %indvars.iv158.i.i.epil.init
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !44 ; 3 uses
  %i.fn = and i64 %i.fm, %i.bj
  %i.fo = and i64 %i.fm, %i.bl
  %i.fp = shl i64 %i.fo, %i.bm
  %i.fq = or i64 %i.fp, %i.fn
  %i.fr = and i64 %i.fm, %i.bo
  %i.fs = lshr i64 %i.fr, %i.bm
  %i.ft = or i64 %i.fq, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.12746.i, i64 %indvars.iv158.i.i.epil.init
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !44
  br label %If_CluSwapAdjacent.exit.i

If_CluSwapAdjacent.exit.i.loopexit203.unr-lcssa:  ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod210.not.not, label %.lr.ph.i.i.epil.preheader, label %If_CluSwapAdjacent.exit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %If_CluSwapAdjacent.exit.i.loopexit203.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv155.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %indvars.iv.next156.i.i.1, %If_CluSwapAdjacent.exit.i.loopexit203.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod211)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.13045.i, i64 %indvars.iv155.i.i.epil.init
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.12746.i, i64 %indvars.iv155.i.i.epil.init
  %i.fx = load <2 x i64>, ptr %i.fv, align 8, !tbaa !44 ; 3 uses
  %i.fy = and <2 x i64> %i.fx, <i64 4294967295, i64 -4294967296>
  %i.fz = shl <2 x i64> %i.fx, splat (i64 32)
  %i.ga = lshr <2 x i64> %i.fx, splat (i64 32)
  %i.gb = shufflevector <2 x i64> %i.fz, <2 x i64> %i.ga, <2 x i32> <i32 1, i32 2>
  %i.gc = or disjoint <2 x i64> %i.gb, %i.fy
  store <2 x i64> %i.gc, ptr %i.fw, align 8, !tbaa !44
  br label %If_CluSwapAdjacent.exit.i

If_CluSwapAdjacent.exit.i:                        ; preds = %._crit_edge.us.i.i, %.lr.ph.i.i.epil.preheader, %If_CluSwapAdjacent.exit.i.loopexit203.unr-lcssa, %vector.body, %scalar.ph.epil.preheader, %If_CluSwapAdjacent.exit.i.loopexit.unr-lcssa, %.preheader87.lr.ph.i.i, %bb.n, %.preheader.i.i, %bb.l
  %.not35.not.i = icmp sgt i64 %indvars.iv.next67.i, %i.be
  br i1 %.not35.not.i, label %.lr.ph.i38, label %._crit_edge.loopexit.i, !llvm.loop !319

._crit_edge.loopexit.i:                           ; preds = %If_CluSwapAdjacent.exit.i
  %i.gd = add i32 %.056.i, %indvars69.i
  %i.ge = sub i32 %i.gd, %.02255.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.130.lcssa.i = phi ptr [ %.02951.i, %.preheader.i ], [ %.12746.i, %._crit_edge.loopexit.i ]
  %.127.lcssa.i = phi ptr [ %.02652.i, %.preheader.i ], [ %.13045.i, %._crit_edge.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.056.i, %.preheader.i ], [ %i.ge, %._crit_edge.loopexit.i ]
  %i.gf = add nsw i32 %.02255.i, 1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %bb.k
  %.231.i = phi ptr [ %.130.lcssa.i, %._crit_edge.i ], [ %.02951.i, %bb.k ] ; 2 uses
  %.228.i = phi ptr [ %.127.lcssa.i, %._crit_edge.i ], [ %.02652.i, %bb.k ] ; 2 uses
  %.123.i = phi i32 [ %i.gf, %._crit_edge.i ], [ %.02255.i, %bb.k ]
  %.2.i35 = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %.056.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i36, %wide.trip.count.i33
  br i1 %exitcond.not.i37, label %._crit_edge59.i, label %bb.k, !llvm.loop !320

._crit_edge59.i:                                  ; preds = %bb.o
  %i.gg = and i32 %.2.i35, 1
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %If_CluTruthShrink.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge59.i
  %i.gi = icmp slt i32 %2, 7
  %i.gj = select i1 %i.gi, i32 1, i32 %i.as       ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %.lr.ph.preheader.i36.i, label %If_CluTruthShrink.exit

.lr.ph.preheader.i36.i:                           ; preds = %bb.p
  %wide.trip.count.i37.i = zext nneg i32 %i.gj to i64
  %i.gl = shl nuw nsw i64 %wide.trip.count.i37.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.228.i, ptr noundef nonnull align 8 dereferenceable(1) %.231.i, i64 %i.gl, i1 false), !tbaa !44
  br label %If_CluTruthShrink.exit

If_CluTruthShrink.exit:                           ; preds = %bb.j, %._crit_edge59.i, %bb.p, %.lr.ph.preheader.i36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.i, %If_CluTruthShrink.exit
  %.025 = phi i32 [ 1, %If_CluTruthShrink.exit ], [ 0, %bb.i ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define void @If_CluCheck(ptr dead_on_unwind noalias nofree writable sret(%struct.If_Grp_t_) align 1 captures(none) initializes((0, 18)) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef captures(address_is_null) %11, i32 noundef %12) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x [256 x i64]], align 16       ; 8 uses
  %13 = alloca %struct.If_Grp_t_, align 1         ; 17 uses
  %i.b = alloca [1024 x i64], align 16            ; 6 uses
  %i.c = alloca [1024 x i64], align 16            ; 24 uses
  %i.d = alloca [18 x i32], align 16              ; 12 uses
  %i.e = alloca [18 x i32], align 16              ; 15 uses
  %i.f = alloca [18 x i32], align 16              ; 6 uses
  %i.g = alloca [18 x i32], align 16              ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %0, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %13, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.h = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = load i32, ptr %i.j, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %i.k, %bb.b ], [ %3, %bb.a ]   ; 5 uses
  %.not = icmp eq ptr %8, null                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %8, align 1, !tbaa !78
  store i64 0, ptr %9, align 8, !tbaa !44
  store i64 0, ptr %10, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = icmp slt i32 %i.l, 7
  %i.n = add nsw i32 %i.l, -6
  %i.o = shl nuw i32 1, %i.n
  %i.p = select i1 %i.m, i32 1, i32 %i.o          ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i, label %If_CluCopy.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %wide.trip.count.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %2, i64 %i.r, i1 false), !tbaa !44
  br label %If_CluCopy.exit

If_CluCopy.exit:                                  ; preds = %.lr.ph.preheader.i, %bb.e
  %i.s = icmp slt i32 %3, 7
  %i.t = add nsw i32 %3, -6
  %i.u = shl nuw i32 1, %i.t
  %.fr.i = freeze i32 %i.u
  %i.v = select i1 %i.s, i32 1, i32 %.fr.i        ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0                     ; 2 uses
  br i1 %i.w, label %.lr.ph.preheader.i145, label %If_CluCopy.exit151

.lr.ph.preheader.i145:                            ; preds = %If_CluCopy.exit
  %wide.trip.count.i146 = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %wide.trip.count.i146, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 16 %i.b, i64 %i.x, i1 false), !tbaa !44
  br label %If_CluCopy.exit151

If_CluCopy.exit151:                               ; preds = %.lr.ph.preheader.i145, %If_CluCopy.exit
  %i.y = icmp sgt i32 %3, 0
  br i1 %i.y, label %.lr.ph.preheader, label %If_CluSupport.exit.thread

.lr.ph.preheader:                                 ; preds = %If_CluCopy.exit151
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader299, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %vec.ind, ptr %i.z, align 16, !tbaa !35
  store <4 x i32> %step.add, ptr %i.aa, align 16, !tbaa !35
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %vec.ind, ptr %i.ab, align 16, !tbaa !35
  store <4 x i32> %step.add, ptr %i.ac, align 16, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph.i152, label %.lr.ph.preheader299

.lr.ph.preheader299:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader299, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader299 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.af = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !35
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.i152, label %.lr.ph, !llvm.loop !322

.lr.ph.i152:                                      ; preds = %.lr.ph, %middle.block
  %wide.trip.count52.i.i = zext nneg i32 %i.v to i64
  br i1 %i.w, label %.lr.ph.split.us.split.us.preheader.i, label %If_CluSupport.exit.thread

.lr.ph.split.us.split.us.preheader.i:             ; preds = %.lr.ph.i152
  %wide.trip.count96.i = zext nneg i32 %3 to i64
  br label %.lr.ph.split.us.split.us.i

.lr.ph.split.us.split.us.i:                       ; preds = %If_CluHasVar.exit.thread.us.us.i, %.lr.ph.split.us.split.us.preheader.i
  %indvars.iv93.i = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader.i ], [ %indvars.iv.next94.i, %If_CluHasVar.exit.thread.us.us.i ] ; 7 uses
  %.021.us.us.i = phi i32 [ 0, %.lr.ph.split.us.split.us.preheader.i ], [ %i.bk, %If_CluHasVar.exit.thread.us.us.i ] ; 4 uses
  %i.ah = icmp samesign ult i64 %indvars.iv93.i, 6
  br i1 %i.ah, label %.lr.ph.i.us.us.i, label %.preheader.lr.ph.i.us.us.i

.preheader.lr.ph.i.us.us.i:                       ; preds = %.lr.ph.split.us.split.us.i
  %i.ai = add nsw i64 %indvars.iv93.i, -6         ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 31
  %i.ak = trunc nuw nsw i64 %i.ai to i32          ; 2 uses
  %i.al = shl i32 2, %i.ak                        ; 2 uses
  %i.am = sext i32 %i.al to i64
  br i1 %i.aj, label %If_CluHasVar.exit.us.us.i, label %.preheader.us.preheader.i.us.us.i

.preheader.us.preheader.i.us.us.i:                ; preds = %.preheader.lr.ph.i.us.us.i
  %i.an = shl nuw nsw i32 1, %i.ak                ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64
  %wide.trip.count.i.us.us.i = zext nneg i32 %i.an to i64
  br label %.preheader.us.i.us.us.i

.preheader.us.i.us.us.i:                          ; preds = %._crit_edge.us.i.us.us.i, %.preheader.us.preheader.i.us.us.i
  %.041.us.i.us.us.i = phi i32 [ %i.at, %._crit_edge.us.i.us.us.i ], [ 0, %.preheader.us.preheader.i.us.us.i ]
  %.03140.us.i.us.us.i = phi ptr [ %i.as, %._crit_edge.us.i.us.us.i ], [ %i.c, %.preheader.us.preheader.i.us.us.i ] ; 3 uses
  %invariant.gep.i.us.us.i = getelementptr [8 x i8], ptr %.03140.us.i.us.us.i, i64 %i.ao
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.us.i.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ 0, %.preheader.us.i.us.us.i ], [ %indvars.iv.next.i.us.us.i, %bb.g ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.03140.us.i.us.us.i, i64 %indvars.iv.i.us.us.i
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !44
  %gep.i.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.i, i64 %indvars.iv.i.us.us.i
  %i.ar = load i64, ptr %gep.i.us.us.i, align 8, !tbaa !44
  %.not.us.i.us.us.i = icmp eq i64 %i.aq, %i.ar
  br i1 %.not.us.i.us.us.i, label %bb.g, label %If_CluHasVar.exit.thread14.us.us.loopexit.i

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count.i.us.us.i
  br i1 %exitcond.not.i.us.us.i, label %._crit_edge.us.i.us.us.i, label %bb.f, !llvm.loop !1

._crit_edge.us.i.us.us.i:                         ; preds = %bb.g
  %i.as = getelementptr inbounds [8 x i8], ptr %.03140.us.i.us.us.i, i64 %i.am
  %i.at = add nsw i32 %.041.us.i.us.us.i, %i.al   ; 2 uses
  %i.au = icmp slt i32 %i.at, %i.v
  br i1 %i.au, label %.preheader.us.i.us.us.i, label %If_CluHasVar.exit.thread.us.us.i, !llvm.loop !2

If_CluHasVar.exit.us.us.i:                        ; preds = %.preheader.lr.ph.i.us.us.i
  %i.av = trunc nuw nsw i64 %indvars.iv93.i to i32
  %i.aw = shl nuw nsw i32 1, %i.av
  %i.ax = or i32 %i.aw, %.021.us.us.i
  br label %If_CluHasVar.exit.thread.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.split.us.split.us.i
  %i.ay = trunc nuw nsw i64 %indvars.iv93.i to i32
  %i.az = shl nuw nsw i32 1, %i.ay                ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv93.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !44 ; 2 uses
  %i.bc = xor i64 %i.bb, -1
  %i.bd = zext nneg i32 %i.az to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.us.us.i
  %indvars.iv49.i.us.us.i = phi i64 [ 0, %.lr.ph.i.us.us.i ], [ %indvars.iv.next50.i.us.us.i, %bb.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv49.i.us.us.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !44 ; 2 uses
  %i.bg = and i64 %i.bf, %i.bc
  %i.bh = and i64 %i.bf, %i.bb
  %i.bi = lshr i64 %i.bh, %i.bd
  %.not36.i.us.us.i = icmp eq i64 %i.bg, %i.bi
  br i1 %.not36.i.us.us.i, label %bb.i, label %If_CluHasVar.exit.thread14.us.us.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next50.i.us.us.i = add nuw nsw i64 %indvars.iv49.i.us.us.i, 1 ; 2 uses
  %exitcond53.not.i.us.us.i = icmp eq i64 %indvars.iv.next50.i.us.us.i, %wide.trip.count52.i.i
  br i1 %exitcond53.not.i.us.us.i, label %If_CluHasVar.exit.thread.us.us.i, label %bb.h, !llvm.loop !3

If_CluHasVar.exit.thread14.us.us.loopexit.i:      ; preds = %bb.f
  %.pre.i = trunc nuw nsw i64 %indvars.iv93.i to i32
  %.pre98.i = shl nuw i32 1, %.pre.i
  br label %If_CluHasVar.exit.thread14.us.us.i

If_CluHasVar.exit.thread14.us.us.i:               ; preds = %bb.h, %If_CluHasVar.exit.thread14.us.us.loopexit.i
  %.pre-phi99.i = phi i32 [ %.pre98.i, %If_CluHasVar.exit.thread14.us.us.loopexit.i ], [ %i.az, %bb.h ]
  %i.bj = or i32 %.pre-phi99.i, %.021.us.us.i
  br label %If_CluHasVar.exit.thread.us.us.i

If_CluHasVar.exit.thread.us.us.i:                 ; preds = %._crit_edge.us.i.us.us.i, %bb.i, %If_CluHasVar.exit.thread14.us.us.i, %If_CluHasVar.exit.us.us.i
  %i.bk = phi i32 [ %i.bj, %If_CluHasVar.exit.thread14.us.us.i ], [ %i.ax, %If_CluHasVar.exit.us.us.i ], [ %.021.us.us.i, %bb.i ], [ %.021.us.us.i, %._crit_edge.us.i.us.us.i ] ; 4 uses
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next94.i, %wide.trip.count96.i
  br i1 %exitcond97.not.i, label %If_CluSupport.exit, label %.lr.ph.split.us.split.us.i, !llvm.loop !323

If_CluSupport.exit:                               ; preds = %If_CluHasVar.exit.thread.us.us.i
  %.not133 = icmp eq i32 %i.bk, 0
  br i1 %.not133, label %If_CluSupport.exit.thread, label %bb.j

bb.j:                                             ; preds = %If_CluSupport.exit
  %i.bl = add nsw i32 %i.bk, 1
  %i.bm = and i32 %i.bl, %i.bk
  %.not189 = icmp eq i32 %i.bm, 0
  br i1 %.not189, label %bb.k, label %If_CluSupport.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bn = icmp ne i32 %12, 0
  %or.cond = and i1 %i.h, %i.bn
  br i1 %or.cond, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bo = call ptr @If_CluHashLookup(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef 0) ; 4 uses
  %.not135 = icmp eq ptr %i.bo, null
  br i1 %.not135, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !35 ; 8 uses
  %.not136 = icmp eq i32 %i.bp, 255
  br i1 %.not136, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = trunc i32 %i.bp to i8                   ; 2 uses
  %i.br = and i8 %i.bq, 15                        ; 2 uses
  store i8 %i.br, ptr %0, align 1, !tbaa !71
  %i.bs = lshr i8 %i.bq, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !71
  %i.bu = lshr i32 %i.bp, 8
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = and i8 %i.bv, 15
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !71
  %i.by = lshr i32 %i.bp, 12
  %i.bz = trunc i32 %i.by to i8
  %i.ca = and i8 %i.bz, 15
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !71
  %i.cc = lshr i32 %i.bp, 16
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = and i8 %i.cd, 15
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !71
  %i.cg = lshr i32 %i.bp, 20
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = and i8 %i.ch, 15
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !71
  %i.ck = lshr i32 %i.bp, 24
  %i.cl = trunc nuw i32 %i.ck to i8
  %i.cm = and i8 %i.cl, 15
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !71
  %i.co = lshr i32 %i.bp, 28
  %i.cp = trunc nuw nsw i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !71
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.k
  %i.cr = phi i8 [ %i.br, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.0112 = phi ptr [ %i.bo, %bb.n ], [ %i.bo, %bb.m ], [ null, %bb.l ], [ null, %bb.k ] ; 3 uses
  %.not137 = icmp eq i32 %5, 0
  br i1 %.not137, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = add nsw i32 %3, -1
  call void @If_CluMoveVar(ptr noundef nonnull %i.c, i32 noundef %3, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef %i.cs)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ct = icmp eq i8 %i.cr, 0
  br i1 %i.ct, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.cu = load i32, ptr @s_Count2, align 4, !tbaa !35
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr @s_Count2, align 4, !tbaa !35
  %i.cw = icmp eq i32 %4, 0
  br i1 %i.cw, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  call void @If_CluDecUsingCofs(ptr dead_on_unwind nonnull writable sret(%struct.If_Grp_t_) align 1 %0, ptr noundef nonnull %i.b, i32 noundef %3, i32 noundef %6)
  %.pre = load i8, ptr %0, align 1, !tbaa !78     ; 2 uses
  %i.cx = icmp eq i8 %.pre, 0
  br i1 %i.cx, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.r, %bb.s
  %i.cy = add nsw i32 %7, %6                      ; 3 uses
  %i.cz = add nuw nsw i32 %3, 1                   ; 3 uses
  %i.da = icmp eq i32 %i.cy, %i.cz
  %i.db = zext i1 %i.da to i32                    ; 2 uses
  call void @If_CluFindGroup(ptr dead_on_unwind nonnull writable sret(%struct.If_Grp_t_) align 1 %0, ptr noundef nonnull %i.c, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %6, i32 noundef %i.db)
  %i.dc = load i8, ptr %0, align 1, !tbaa !78     ; 2 uses
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %.thread
  %i.de = add nsw i32 %i.cy, -2
  %i.df = icmp slt i32 %3, %i.de
  br i1 %i.df, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dg = add nsw i32 %6, -1                      ; 2 uses
  %i.dh = add nsw i32 %i.dg, %7
  %i.di = icmp eq i32 %i.dh, %i.cz
  %i.dj = zext i1 %i.di to i32
  call void @If_CluFindGroup(ptr dead_on_unwind nonnull writable sret(%struct.If_Grp_t_) align 1 %0, ptr noundef nonnull %i.c, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %i.dg, i32 noundef %i.dj)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dk = icmp sgt i32 %6, 4
  %i.dl = add nsw i32 %i.cy, -3
  %i.dm = icmp slt i32 %3, %i.dl
  %or.cond144 = select i1 %i.dk, i1 %i.dm, i1 false
  br i1 %or.cond144, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = add nsw i32 %6, -2                      ; 2 uses
  %i.do = add nsw i32 %i.dn, %7
  %i.dp = icmp eq i32 %i.do, %i.cz
  %i.dq = zext i1 %i.dp to i32
  call void @If_CluFindGroup(ptr dead_on_unwind nonnull writable sret(%struct.If_Grp_t_) align 1 %0, ptr noundef nonnull %i.c, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %i.dn, i32 noundef %i.dq)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dr = load i8, ptr %0, align 1, !tbaa !78     ; 2 uses
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @If_CluReverseOrder(ptr noundef nonnull %i.c, i32 noundef %3, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %4)
  call void @If_CluFindGroup(ptr dead_on_unwind nonnull writable sret(%struct.If_Grp_t_) align 1 %0, ptr noundef nonnull %i.c, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %6, i32 noundef %i.db)
  %i.dt = load i8, ptr %0, align 1, !tbaa !78     ; 2 uses
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %.not142 = icmp eq ptr %.0112, null
  br i1 %.not142, label %If_CluSupport.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = call fastcc i32 @If_CluGrp2Uns(ptr noundef nonnull %0)
  br label %If_CluSupport.exit.thread.sink.split

bb.ab:                                            ; preds = %bb.s, %bb.x, %bb.y, %.thread, %bb.q
  %i.dw = phi i8 [ %.pre, %bb.s ], [ %i.dr, %bb.x ], [ %i.dt, %bb.y ], [ %i.dc, %.thread ], [ %i.cr, %bb.q ] ; 7 uses
  br i1 %.not, label %bb.ap, label %bb.ac
end_hunk_0
