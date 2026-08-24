Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilMisc?download=true
inline.NumInlined: 106
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@Extra_TruthCanonNN:bb.a
  %i.ac = and i32 %i.ab, %.037.us
  %.not.i.us.1 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.us.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.us.1
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.next.i.us
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !17 ; 2 uses
  %i.af = xor i32 %i.ae, -1
  %i.ag = and i32 %.1.i.us, %i.af
  %i.ah = and i32 %i.ae, %.1.i.us
  %i.ai = shl i32 %i.ag, %i.ab
  %i.aj = lshr i32 %i.ah, %i.ab
  %i.ak = or i32 %i.ai, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.us.1
  %.1.i.us.1 = phi i32 [ %i.ak, %bb.c ], [ %.1.i.us, %.lr.ph.i.us.1 ] ; 3 uses
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i25.us.preheader.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !45

.lr.ph.i25.us.preheader.unr-lcssa:                ; preds = %bb.d
  br i1 %lcmp.mod.not, label %.lr.ph.i25.us.preheader, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %.lr.ph.i25.us.preheader.unr-lcssa, %.lr.ph.preheader.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us.1, %.lr.ph.i25.us.preheader.unr-lcssa ] ; 2 uses
  %.01920.i.us.epil.init = phi i32 [ %0, %.lr.ph.preheader.i.us ], [ %.1.i.us.1, %.lr.ph.i25.us.preheader.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.al = trunc nuw nsw i64 %indvars.iv.i.us.epil.init to i32
  %i.am = shl nuw i32 1, %i.al                    ; 3 uses
  %i.an = and i32 %i.am, %.037.us
  %.not.i.us.epil = icmp eq i32 %i.an, 0
  br i1 %.not.i.us.epil, label %.lr.ph.i25.us.preheader, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.us.epil.preheader
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.i.us.epil.init
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !17 ; 2 uses
  %i.aq = xor i32 %i.ap, -1
  %i.ar = and i32 %.01920.i.us.epil.init, %i.aq
  %i.as = and i32 %i.ap, %.01920.i.us.epil.init
  %i.at = shl i32 %i.ar, %i.am
  %i.au = lshr i32 %i.as, %i.am
  %i.av = or i32 %i.at, %i.au
  br label %.lr.ph.i25.us.preheader

.lr.ph.i25.us.preheader:                          ; preds = %.lr.ph.i.us.epil.preheader, %bb.e, %.lr.ph.i25.us.preheader.unr-lcssa
  %.1.i.us.lcssa = phi i32 [ %.1.i.us.1, %.lr.ph.i25.us.preheader.unr-lcssa ], [ %i.av, %bb.e ], [ %.01920.i.us.epil.init, %.lr.ph.i.us.epil.preheader ]
  br i1 %i.i, label %.lr.ph.i25.us.epil.preheader, label %.lr.ph.i25.us

.lr.ph.i25.us:                                    ; preds = %.lr.ph.i25.us.preheader, %bb.h
  %indvars.iv.i26.us = phi i64 [ %indvars.iv.next.i30.us.1, %bb.h ], [ 0, %.lr.ph.i25.us.preheader ] ; 4 uses
  %.01920.i27.us = phi i32 [ %.1.i29.us.1, %bb.h ], [ %i.e, %.lr.ph.i25.us.preheader ] ; 3 uses
  %niter57 = phi i64 [ %niter57.next.1, %bb.h ], [ 0, %.lr.ph.i25.us.preheader ]
  %i.aw = trunc nuw nsw i64 %indvars.iv.i26.us to i32
  %i.ax = shl nuw i32 1, %i.aw                    ; 3 uses
  %i.ay = and i32 %i.ax, %.037.us
  %.not.i28.us = icmp eq i32 %i.ay, 0
  br i1 %.not.i28.us, label %.lr.ph.i25.us.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i25.us
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.i26.us
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.bb = xor i32 %i.ba, -1
  %i.bc = and i32 %.01920.i27.us, %i.bb
  %i.bd = and i32 %i.ba, %.01920.i27.us
  %i.be = shl i32 %i.bc, %i.ax
  %i.bf = lshr i32 %i.bd, %i.ax
  %i.bg = or i32 %i.be, %i.bf
  br label %.lr.ph.i25.us.1

.lr.ph.i25.us.1:                                  ; preds = %bb.f, %.lr.ph.i25.us
  %.1.i29.us = phi i32 [ %i.bg, %bb.f ], [ %.01920.i27.us, %.lr.ph.i25.us ] ; 3 uses
  %indvars.iv.next.i30.us = or disjoint i64 %indvars.iv.i26.us, 1 ; 2 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv.next.i30.us to i32
  %i.bi = shl nuw i32 1, %i.bh                    ; 3 uses
  %i.bj = and i32 %i.bi, %.037.us
  %.not.i28.us.1 = icmp eq i32 %i.bj, 0
  br i1 %.not.i28.us.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i25.us.1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.next.i30.us
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !17 ; 2 uses
  %i.bm = xor i32 %i.bl, -1
  %i.bn = and i32 %.1.i29.us, %i.bm
  %i.bo = and i32 %i.bl, %.1.i29.us
  %i.bp = shl i32 %i.bn, %i.bi
  %i.bq = lshr i32 %i.bo, %i.bi
  %i.br = or i32 %i.bp, %i.bq
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i25.us.1
  %.1.i29.us.1 = phi i32 [ %i.br, %bb.g ], [ %.1.i29.us, %.lr.ph.i25.us.1 ] ; 3 uses
  %indvars.iv.next.i30.us.1 = add nuw nsw i64 %indvars.iv.i26.us, 2 ; 2 uses
  %niter57.next.1 = add i64 %niter57, 2           ; 2 uses
  %niter57.ncmp.1 = icmp eq i64 %niter57.next.1, %unroll_iter56
  br i1 %niter57.ncmp.1, label %Extra_TruthPolarize.exit32.loopexit.us.unr-lcssa, label %.lr.ph.i25.us, !llvm.loop !45

Extra_TruthPolarize.exit32.loopexit.us.unr-lcssa: ; preds = %bb.h
  br i1 %lcmp.mod53.not, label %Extra_TruthPolarize.exit32.loopexit.us, label %.lr.ph.i25.us.epil.preheader

.lr.ph.i25.us.epil.preheader:                     ; preds = %Extra_TruthPolarize.exit32.loopexit.us.unr-lcssa, %.lr.ph.i25.us.preheader
  %indvars.iv.i26.us.epil.init = phi i64 [ 0, %.lr.ph.i25.us.preheader ], [ %indvars.iv.next.i30.us.1, %Extra_TruthPolarize.exit32.loopexit.us.unr-lcssa ] ; 2 uses
  %.01920.i27.us.epil.init = phi i32 [ %i.e, %.lr.ph.i25.us.preheader ], [ %.1.i29.us.1, %Extra_TruthPolarize.exit32.loopexit.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.bs = trunc nuw nsw i64 %indvars.iv.i26.us.epil.init to i32
  %i.bt = shl nuw i32 1, %i.bs                    ; 3 uses
  %i.bu = and i32 %i.bt, %.037.us
  %.not.i28.us.epil = icmp eq i32 %i.bu, 0
  br i1 %.not.i28.us.epil, label %Extra_TruthPolarize.exit32.loopexit.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i25.us.epil.preheader
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.i26.us.epil.init
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !17 ; 2 uses
  %i.bx = xor i32 %i.bw, -1
  %i.by = and i32 %.01920.i27.us.epil.init, %i.bx
  %i.bz = and i32 %i.bw, %.01920.i27.us.epil.init
  %i.ca = shl i32 %i.by, %i.bt
  %i.cb = lshr i32 %i.bz, %i.bt
  %i.cc = or i32 %i.ca, %i.cb
  br label %Extra_TruthPolarize.exit32.loopexit.us

Extra_TruthPolarize.exit32.loopexit.us:           ; preds = %.lr.ph.i25.us.epil.preheader, %bb.i, %Extra_TruthPolarize.exit32.loopexit.us.unr-lcssa
  %.1.i29.us.lcssa = phi i32 [ %.1.i29.us.1, %Extra_TruthPolarize.exit32.loopexit.us.unr-lcssa ], [ %i.cc, %bb.i ], [ %.01920.i27.us.epil.init, %.lr.ph.i25.us.epil.preheader ]
  %spec.select.us = tail call i32 @llvm.umin.i32(i32 %.01936.us, i32 %.1.i.us.lcssa)
  %.2.us = tail call i32 @llvm.umin.i32(i32 %spec.select.us, i32 %.1.i29.us.lcssa) ; 2 uses
  %i.cd = add nuw nsw i32 %.037.us, 1             ; 2 uses
  %exitcond40.not = icmp eq i32 %i.cd, %smax39
  br i1 %exitcond40.not, label %._crit_edge, label %.lr.ph.preheader.i.us, !llvm.loop !48

Extra_TruthPolarize.exit.thread:                  ; preds = %Extra_TruthPolarize.exit.thread.preheader
  %.2 = tail call i32 @llvm.umin.i32(i32 %0, i32 %i.e)
  %exitcond.not = icmp slt i32 %i.a, 2            ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %Extra_TruthPolarize.exit32.loopexit.us, %Extra_TruthPolarize.exit.thread, %middle.block, %bb.a
  %.019.lcssa = phi i32 [ -1, %bb.a ], [ %.2, %Extra_TruthPolarize.exit.thread ], [ %i.o, %middle.block ], [ %.2.us, %Extra_TruthPolarize.exit32.loopexit.us ]
  ret i32 %.019.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Extra_TruthCanonP(i32 noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 7 uses
  %i.b = alloca [50 x i8], align 16               ; 7 uses
  %i.c = load ptr, ptr @Extra_TruthCanonP.pPerms, align 8, !tbaa !49 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp slt i32 %1, 1
  br i1 %.not7.i, label %Extra_Factorial.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %min.iters.check106 = icmp ult i32 %1, 8
  br i1 %min.iters.check106, label %.lr.ph.i.preheader173, label %vector.ph107

vector.ph107:                                     ; preds = %.lr.ph.i.preheader
  %n.vec108 = and i32 %1, 2147483640              ; 3 uses
  %i.e = or disjoint i32 %n.vec108, 1
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph107
  %index110 = phi i32 [ 0, %vector.ph107 ], [ %index.next115, %vector.body109 ]
  %vec.phi111 = phi <4 x i32> [ splat (i32 1), %vector.ph107 ], [ %i.f, %vector.body109 ]
  %vec.phi112 = phi <4 x i32> [ splat (i32 1), %vector.ph107 ], [ %i.g, %vector.body109 ]
  %vec.ind113 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph107 ], [ %vec.ind.next116, %vector.body109 ] ; 3 uses
  %step.add114 = add nuw <4 x i32> %vec.ind113, splat (i32 4)
  %i.f = mul <4 x i32> %vec.ind113, %vec.phi111   ; 2 uses
  %i.g = mul <4 x i32> %step.add114, %vec.phi112  ; 2 uses
  %index.next115 = add nuw i32 %index110, 8       ; 2 uses
  %vec.ind.next116 = add nuw <4 x i32> %vec.ind113, splat (i32 8)
  %i.h = icmp eq i32 %index.next115, %n.vec108
  br i1 %i.h, label %middle.block117, label %vector.body109, !llvm.loop !52

middle.block117:                                  ; preds = %vector.body109
  %bin.rdx118 = mul <4 x i32> %i.g, %i.f
  %i.i = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx118) ; 2 uses
  %cmp.n119 = icmp eq i32 %1, %n.vec108
  br i1 %cmp.n119, label %Extra_Factorial.exit, label %.lr.ph.i.preheader173

.lr.ph.i.preheader173:                            ; preds = %.lr.ph.i.preheader, %middle.block117
  %.09.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.i, %middle.block117 ]
  %.068.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.e, %middle.block117 ]
  br label %.lr.ph.i

Extra_Factorial.exit.thread:                      ; preds = %bb.b
  store i32 1, ptr @Extra_TruthCanonP.nPerms, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  br label %Extra_Factorial.exit.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader173, %.lr.ph.i
  %.09.i = phi i32 [ %i.j, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader173 ]
  %.068.i = phi i32 [ %i.k, %.lr.ph.i ], [ %.068.i.ph, %.lr.ph.i.preheader173 ] ; 3 uses
  %i.j = mul nuw nsw i32 %.068.i, %.09.i          ; 2 uses
  %i.k = add nuw i32 %.068.i, 1
  %exitcond.not.i = icmp eq i32 %.068.i, %1
  br i1 %exitcond.not.i, label %Extra_Factorial.exit, label %.lr.ph.i, !llvm.loop !53

Extra_Factorial.exit:                             ; preds = %.lr.ph.i, %middle.block117
  %.lcssa64 = phi i32 [ %i.i, %middle.block117 ], [ %i.j, %.lr.ph.i ]
  store i32 %.lcssa64, ptr @Extra_TruthCanonP.nPerms, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %min.iters.check123 = icmp ult i32 %1, 8
  br i1 %min.iters.check123, label %.lr.ph.i.i.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %Extra_Factorial.exit
  %n.vec125 = and i32 %1, 2147483640              ; 3 uses
  %i.l = or disjoint i32 %n.vec125, 1
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i32 [ 0, %vector.ph124 ], [ %index.next132, %vector.body126 ]
  %vec.phi128 = phi <4 x i32> [ splat (i32 1), %vector.ph124 ], [ %i.m, %vector.body126 ]
  %vec.phi129 = phi <4 x i32> [ splat (i32 1), %vector.ph124 ], [ %i.n, %vector.body126 ]
  %vec.ind130 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph124 ], [ %vec.ind.next133, %vector.body126 ] ; 3 uses
  %step.add131 = add nuw <4 x i32> %vec.ind130, splat (i32 4)
  %i.m = mul <4 x i32> %vec.ind130, %vec.phi128   ; 2 uses
  %i.n = mul <4 x i32> %step.add131, %vec.phi129  ; 2 uses
  %index.next132 = add nuw i32 %index127, 8       ; 2 uses
  %vec.ind.next133 = add nuw <4 x i32> %vec.ind130, splat (i32 8)
  %i.o = icmp eq i32 %index.next132, %n.vec125
  br i1 %i.o, label %middle.block134, label %vector.body126, !llvm.loop !54

middle.block134:                                  ; preds = %vector.body126
  %bin.rdx135 = mul <4 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx135) ; 2 uses
  %cmp.n136 = icmp eq i32 %1, %n.vec125
  br i1 %cmp.n136, label %Extra_Factorial.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %Extra_Factorial.exit, %middle.block134
  %.09.i.i.ph = phi i32 [ 1, %Extra_Factorial.exit ], [ %i.p, %middle.block134 ]
  %.068.i.i.ph = phi i32 [ 1, %Extra_Factorial.exit ], [ %i.l, %middle.block134 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %i.q, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader ]
  %.068.i.i = phi i32 [ %i.r, %.lr.ph.i.i ], [ %.068.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.q = mul nuw nsw i32 %.068.i.i, %.09.i.i      ; 2 uses
  %i.r = add nuw i32 %.068.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.068.i.i, %1
  br i1 %exitcond.not.i.i, label %Extra_Factorial.exit.i, label %.lr.ph.i.i, !llvm.loop !55

Extra_Factorial.exit.i:                           ; preds = %.lr.ph.i.i, %middle.block134, %Extra_Factorial.exit.thread
  %.0.lcssa.i.i = phi i32 [ 1, %Extra_Factorial.exit.thread ], [ %i.p, %middle.block134 ], [ %i.q, %.lr.ph.i.i ] ; 5 uses
  %i.s = sext i32 %.0.lcssa.i.i to i64            ; 2 uses
  %i.t = sext i32 %1 to i64
  %i.u = add nsw i64 %i.t, 8
  %i.v = mul nsw i64 %i.u, %i.s
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #38 ; 9 uses
  %i.x = shl nsw i64 %i.s, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 6 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !26
  %i.z = icmp sgt i32 %.0.lcssa.i.i, 1
  br i1 %i.z, label %.lr.ph.i12.i, label %Extra_ArrayAlloc.exit.i

.lr.ph.i12.i:                                     ; preds = %Extra_Factorial.exit.i
  %wide.trip.count.i.i = zext nneg i32 %.0.lcssa.i.i to i64
  %i.aa = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %xtraiter186 = and i64 %i.aa, 3                 ; 3 uses
  %i.ab = add nsw i32 %.0.lcssa.i.i, -2
  %i.ac = icmp ult i32 %i.ab, 3
  br i1 %i.ac, label %.epil.preheader185, label %.lr.ph.i12.i.new

.lr.ph.i12.i.new:                                 ; preds = %.lr.ph.i12.i
  %unroll_iter190 = and i64 %i.aa, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i12.i.new
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i12.i.new ], [ %indvars.iv.next.i.i.3, %bb.c ] ; 6 uses
  %niter191 = phi i64 [ 0, %.lr.ph.i12.i.new ], [ %niter191.next.3, %bb.c ]
  %i.ad = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ae = mul i32 %1, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !26
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.aj = mul i32 %1, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.y, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i
  store ptr %i.al, ptr %i.am, align 8, !tbaa !26
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.next.i.i.1 to i32
  %i.ao = mul i32 %1, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.y, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.1
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !26
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next.i.i.2 to i32
  %i.at = mul i32 %1, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.y, i64 %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.2
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !26
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter191.next.3 = add nuw i64 %niter191, 4     ; 2 uses
  %niter191.ncmp.3 = icmp eq i64 %niter191.next.3, %unroll_iter190
  br i1 %niter191.ncmp.3, label %Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa, label %bb.c, !llvm.loop !28

Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa:       ; preds = %bb.c
  %lcmp.mod188.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod188.not, label %Extra_ArrayAlloc.exit.i, label %.epil.preheader185

.epil.preheader185:                               ; preds = %Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa, %.lr.ph.i12.i
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.i12.i ], [ %indvars.iv.next.i.i.3, %Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod189 = icmp ne i64 %xtraiter186, 0
  tail call void @llvm.assume(i1 %lcmp.mod189)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader185
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader185 ], [ %indvars.iv.next.i.i.epil, %bb.d ] ; 3 uses
  %epil.iter187 = phi i64 [ 0, %.epil.preheader185 ], [ %epil.iter187.next, %bb.d ]
  %i.ax = trunc nuw nsw i64 %indvars.iv.i.i.epil to i32
  %i.ay = mul i32 %1, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.y, i64 %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i.epil
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !26
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter187.next = add i64 %epil.iter187, 1   ; 2 uses
  %epil.iter187.cmp.not = icmp eq i64 %epil.iter187.next, %xtraiter186
  br i1 %epil.iter187.cmp.not, label %Extra_ArrayAlloc.exit.i, label %bb.d, !llvm.loop !56

Extra_ArrayAlloc.exit.i:                          ; preds = %Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa, %bb.d, %Extra_Factorial.exit.i
  %i.bc = icmp sgt i32 %1, 0
  br i1 %i.bc, label %iter.check154, label %Extra_Permutations.exit

iter.check154:                                    ; preds = %Extra_ArrayAlloc.exit.i
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 6 uses
  %min.iters.check140 = icmp ult i32 %1, 4
  br i1 %min.iters.check140, label %.lr.ph.i20.preheader, label %vector.main.loop.iter.check141

vector.main.loop.iter.check141:                   ; preds = %iter.check154
  %min.iters.check142 = icmp ult i32 %1, 32
  br i1 %min.iters.check142, label %vec.epilog.ph158, label %vector.ph143

vector.ph143:                                     ; preds = %vector.main.loop.iter.check141
  %i.bd = and i64 %wide.trip.count.i, 28
  %n.vec144 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next149, %vector.body145 ] ; 2 uses
  %vec.ind147 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph143 ], [ %vec.ind.next150, %vector.body145 ] ; 3 uses
  %step.add148 = add <16 x i8> %vec.ind147, splat (i8 16)
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 %index146 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %vec.ind147, ptr %i.be, align 16, !tbaa !19
  store <16 x i8> %step.add148, ptr %i.bf, align 16, !tbaa !19
  %index.next149 = add nuw i64 %index146, 32      ; 2 uses
  %vec.ind.next150 = add <16 x i8> %vec.ind147, splat (i8 32)
  %i.bg = icmp eq i64 %index.next149, %n.vec144
  br i1 %i.bg, label %middle.block151, label %vector.body145, !llvm.loop !57

middle.block151:                                  ; preds = %vector.body145
  %cmp.n152 = icmp eq i64 %n.vec144, %wide.trip.count.i
  br i1 %cmp.n152, label %Extra_Permutations.exit, label %vec.epilog.iter.check156

vec.epilog.iter.check156:                         ; preds = %middle.block151
  %min.epilog.iters.check157 = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check157, label %.lr.ph.i20.preheader, label %vec.epilog.ph158, !prof !31

vec.epilog.ph158:                                 ; preds = %vector.main.loop.iter.check141, %vec.epilog.iter.check156
  %vec.epilog.resume.val153 = phi i64 [ %n.vec144, %vec.epilog.iter.check156 ], [ 0, %vector.main.loop.iter.check141 ] ; 2 uses
  %n.vec159 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %i.bh = trunc i64 %vec.epilog.resume.val153 to i8
  %broadcast.splatinsert160 = insertelement <4 x i8> poison, i8 %i.bh, i64 0
  %broadcast.splat161 = shufflevector <4 x i8> %broadcast.splatinsert160, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction162 = or disjoint <4 x i8> %broadcast.splat161, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body163

vec.epilog.vector.body163:                        ; preds = %vec.epilog.vector.body163, %vec.epilog.ph158
  %index164 = phi i64 [ %vec.epilog.resume.val153, %vec.epilog.ph158 ], [ %index.next166, %vec.epilog.vector.body163 ] ; 2 uses
  %vec.ind165 = phi <4 x i8> [ %induction162, %vec.epilog.ph158 ], [ %vec.ind.next167, %vec.epilog.vector.body163 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 %index164
  store <4 x i8> %vec.ind165, ptr %i.bi, align 4, !tbaa !19
  %index.next166 = add nuw i64 %index164, 4       ; 2 uses
  %vec.ind.next167 = add <4 x i8> %vec.ind165, splat (i8 4)
  %i.bj = icmp eq i64 %index.next166, %n.vec159
  br i1 %i.bj, label %vec.epilog.middle.block168, label %vec.epilog.vector.body163, !llvm.loop !58

vec.epilog.middle.block168:                       ; preds = %vec.epilog.vector.body163
  %cmp.n169 = icmp eq i64 %n.vec159, %wide.trip.count.i
  br i1 %cmp.n169, label %Extra_Permutations.exit, label %.lr.ph.i20.preheader

.lr.ph.i20.preheader:                             ; preds = %iter.check154, %vec.epilog.iter.check156, %vec.epilog.middle.block168
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check154 ], [ %n.vec144, %vec.epilog.iter.check156 ], [ %n.vec159, %vec.epilog.middle.block168 ]
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader, %.lr.ph.i20
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i20 ], [ %indvars.iv.i.ph, %.lr.ph.i20.preheader ] ; 3 uses
  %i.bk = trunc i64 %indvars.iv.i to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i21, label %Extra_Permutations.exit, label %.lr.ph.i20, !llvm.loop !59

Extra_Permutations.exit:                          ; preds = %.lr.ph.i20, %middle.block151, %vec.epilog.middle.block168, %Extra_ArrayAlloc.exit.i
  call fastcc void @Extra_Permutations_rec(ptr noundef nonnull %i.w, i32 noundef %.0.lcssa.i.i, i32 noundef %1, ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.bm = load i32, ptr @Extra_TruthCanonP.nVarsOld, align 4, !tbaa !17
  %.not = icmp eq i32 %i.bm, %1
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.c) #37
  %.not7.i22 = icmp slt i32 %1, 1
  br i1 %.not7.i22, label %Extra_Factorial.exit28.thread, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %bb.f
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i23.preheader180, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i23.preheader
  %n.vec = and i32 %1, 2147483640                 ; 3 uses
  %i.bn = or disjoint i32 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi67 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.bp, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.bo = mul <4 x i32> %vec.ind, %vec.phi        ; 2 uses
  %i.bp = mul <4 x i32> %step.add, %vec.phi67     ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.bq = icmp eq i32 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.bp, %i.bo
  %i.br = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %Extra_Factorial.exit28, label %.lr.ph.i23.preheader180

.lr.ph.i23.preheader180:                          ; preds = %.lr.ph.i23.preheader, %middle.block
  %.09.i24.ph = phi i32 [ 1, %.lr.ph.i23.preheader ], [ %i.br, %middle.block ]
  %.068.i25.ph = phi i32 [ 1, %.lr.ph.i23.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i23

Extra_Factorial.exit28.thread:                    ; preds = %bb.f
  store i32 1, ptr @Extra_TruthCanonP.nPerms, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  br label %Extra_Factorial.exit.i34

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader180, %.lr.ph.i23
  %.09.i24 = phi i32 [ %i.bs, %.lr.ph.i23 ], [ %.09.i24.ph, %.lr.ph.i23.preheader180 ]
  %.068.i25 = phi i32 [ %i.bt, %.lr.ph.i23 ], [ %.068.i25.ph, %.lr.ph.i23.preheader180 ] ; 3 uses
  %i.bs = mul nuw nsw i32 %.068.i25, %.09.i24     ; 2 uses
  %i.bt = add nuw i32 %.068.i25, 1
  %exitcond.not.i26 = icmp eq i32 %.068.i25, %1
  br i1 %exitcond.not.i26, label %Extra_Factorial.exit28, label %.lr.ph.i23, !llvm.loop !61

Extra_Factorial.exit28:                           ; preds = %.lr.ph.i23, %middle.block
  %.lcssa66 = phi i32 [ %i.br, %middle.block ], [ %i.bs, %.lr.ph.i23 ]
  store i32 %.lcssa66, ptr @Extra_TruthCanonP.nPerms, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %min.iters.check69 = icmp ult i32 %1, 8
  br i1 %min.iters.check69, label %.lr.ph.i.i30.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %Extra_Factorial.exit28
  %n.vec71 = and i32 %1, 2147483640               ; 3 uses
  %i.bu = or disjoint i32 %n.vec71, 1
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i32 [ 0, %vector.ph70 ], [ %index.next78, %vector.body72 ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph70 ], [ %i.bv, %vector.body72 ]
  %vec.phi75 = phi <4 x i32> [ splat (i32 1), %vector.ph70 ], [ %i.bw, %vector.body72 ]
  %vec.ind76 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph70 ], [ %vec.ind.next79, %vector.body72 ] ; 3 uses
  %step.add77 = add nuw <4 x i32> %vec.ind76, splat (i32 4)
  %i.bv = mul <4 x i32> %vec.ind76, %vec.phi74    ; 2 uses
  %i.bw = mul <4 x i32> %step.add77, %vec.phi75   ; 2 uses
  %index.next78 = add nuw i32 %index73, 8         ; 2 uses
  %vec.ind.next79 = add nuw <4 x i32> %vec.ind76, splat (i32 8)
  %i.bx = icmp eq i32 %index.next78, %n.vec71
  br i1 %i.bx, label %middle.block80, label %vector.body72, !llvm.loop !62

middle.block80:                                   ; preds = %vector.body72
  %bin.rdx81 = mul <4 x i32> %i.bw, %i.bv
  %i.by = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx81) ; 2 uses
  %cmp.n82 = icmp eq i32 %1, %n.vec71
  br i1 %cmp.n82, label %Extra_Factorial.exit.i34, label %.lr.ph.i.i30.preheader

.lr.ph.i.i30.preheader:                           ; preds = %Extra_Factorial.exit28, %middle.block80
  %.09.i.i31.ph = phi i32 [ 1, %Extra_Factorial.exit28 ], [ %i.by, %middle.block80 ]
  %.068.i.i32.ph = phi i32 [ 1, %Extra_Factorial.exit28 ], [ %i.bu, %middle.block80 ]
  br label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %.lr.ph.i.i30.preheader, %.lr.ph.i.i30
  %.09.i.i31 = phi i32 [ %i.bz, %.lr.ph.i.i30 ], [ %.09.i.i31.ph, %.lr.ph.i.i30.preheader ]
  %.068.i.i32 = phi i32 [ %i.ca, %.lr.ph.i.i30 ], [ %.068.i.i32.ph, %.lr.ph.i.i30.preheader ] ; 3 uses
  %i.bz = mul nuw nsw i32 %.068.i.i32, %.09.i.i31 ; 2 uses
  %i.ca = add nuw i32 %.068.i.i32, 1
  %exitcond.not.i.i33 = icmp eq i32 %.068.i.i32, %1
  br i1 %exitcond.not.i.i33, label %Extra_Factorial.exit.i34, label %.lr.ph.i.i30, !llvm.loop !63

Extra_Factorial.exit.i34:                         ; preds = %.lr.ph.i.i30, %middle.block80, %Extra_Factorial.exit28.thread
  %.0.lcssa.i.i35 = phi i32 [ 1, %Extra_Factorial.exit28.thread ], [ %i.by, %middle.block80 ], [ %i.bz, %.lr.ph.i.i30 ] ; 5 uses
  %i.cb = sext i32 %.0.lcssa.i.i35 to i64         ; 2 uses
  %i.cc = sext i32 %1 to i64
  %i.cd = add nsw i64 %i.cc, 8
  %i.ce = mul nsw i64 %i.cd, %i.cb
  %i.cf = tail call noalias ptr @malloc(i64 noundef %i.ce) #38 ; 9 uses
  %i.cg = shl nsw i64 %i.cb, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg ; 6 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !26
  %i.ci = icmp sgt i32 %.0.lcssa.i.i35, 1
  br i1 %i.ci, label %.lr.ph.i12.i43, label %Extra_ArrayAlloc.exit.i36

.lr.ph.i12.i43:                                   ; preds = %Extra_Factorial.exit.i34
  %wide.trip.count.i.i44 = zext nneg i32 %.0.lcssa.i.i35 to i64
  %i.cj = add nsw i64 %wide.trip.count.i.i44, -1  ; 2 uses
  %xtraiter = and i64 %i.cj, 3                    ; 3 uses
  %i.ck = add nsw i32 %.0.lcssa.i.i35, -2
  %i.cl = icmp ult i32 %i.ck, 3
  br i1 %i.cl, label %.epil.preheader, label %.lr.ph.i12.i43.new

.lr.ph.i12.i43.new:                               ; preds = %.lr.ph.i12.i43
  %unroll_iter = and i64 %i.cj, -4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i12.i43.new
  %indvars.iv.i.i45 = phi i64 [ 1, %.lr.ph.i12.i43.new ], [ %indvars.iv.next.i.i46.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i12.i43.new ], [ %niter.next.3, %bb.g ]
  %i.cm = trunc nuw nsw i64 %indvars.iv.i.i45 to i32
  %i.cn = mul i32 %1, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.ch, i64 %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.i45
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !26
  %indvars.iv.next.i.i46 = add nuw nsw i64 %indvars.iv.i.i45, 1 ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next.i.i46 to i32
  %i.cs = mul i32 %1, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.ch, i64 %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i46
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !26
  %indvars.iv.next.i.i46.1 = add nuw nsw i64 %indvars.iv.i.i45, 2 ; 2 uses
  %i.cw = trunc nuw nsw i64 %indvars.iv.next.i.i46.1 to i32
  %i.cx = mul i32 %1, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.ch, i64 %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i46.1
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !26
  %indvars.iv.next.i.i46.2 = add nuw nsw i64 %indvars.iv.i.i45, 3 ; 2 uses
  %i.db = trunc nuw nsw i64 %indvars.iv.next.i.i46.2 to i32
  %i.dc = mul i32 %1, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.ch, i64 %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i46.2
  store ptr %i.de, ptr %i.df, align 8, !tbaa !26
  %indvars.iv.next.i.i46.3 = add nuw nsw i64 %indvars.iv.i.i45, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Extra_ArrayAlloc.exit.i36.loopexit.unr-lcssa, label %bb.g, !llvm.loop !28

Extra_ArrayAlloc.exit.i36.loopexit.unr-lcssa:     ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Extra_ArrayAlloc.exit.i36, label %.epil.preheader

.epil.preheader:                                  ; preds = %Extra_ArrayAlloc.exit.i36.loopexit.unr-lcssa, %.lr.ph.i12.i43
  %indvars.iv.i.i45.epil.init = phi i64 [ 1, %.lr.ph.i12.i43 ], [ %indvars.iv.next.i.i46.3, %Extra_ArrayAlloc.exit.i36.loopexit.unr-lcssa ]
  %lcmp.mod184 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod184)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.i.i45.epil = phi i64 [ %indvars.iv.i.i45.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i46.epil, %bb.h ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.dg = trunc nuw nsw i64 %indvars.iv.i.i45.epil to i32
  %i.dh = mul i32 %1, %i.dg
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.ch, i64 %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.i45.epil
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !26
  %indvars.iv.next.i.i46.epil = add nuw nsw i64 %indvars.iv.i.i45.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Extra_ArrayAlloc.exit.i36, label %bb.h, !llvm.loop !64

Extra_ArrayAlloc.exit.i36:                        ; preds = %Extra_ArrayAlloc.exit.i36.loopexit.unr-lcssa, %bb.h, %Extra_Factorial.exit.i34
  %i.dl = icmp sgt i32 %1, 0
  br i1 %i.dl, label %iter.check, label %Extra_Permutations.exit48

iter.check:                                       ; preds = %Extra_ArrayAlloc.exit.i36
  %wide.trip.count.i38 = zext nneg i32 %1 to i64  ; 6 uses
  %min.iters.check86 = icmp ult i32 %1, 4
  br i1 %min.iters.check86, label %.lr.ph.i39.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check87 = icmp ult i32 %1, 32
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph88

vector.ph88:                                      ; preds = %vector.main.loop.iter.check
  %i.dm = and i64 %wide.trip.count.i38, 28
  %n.vec89 = and i64 %wide.trip.count.i38, 2147483616 ; 4 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next94, %vector.body90 ] ; 2 uses
  %vec.ind92 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph88 ], [ %vec.ind.next95, %vector.body90 ] ; 3 uses
  %step.add93 = add <16 x i8> %vec.ind92, splat (i8 16)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %index91 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <16 x i8> %vec.ind92, ptr %i.dn, align 16, !tbaa !19
  store <16 x i8> %step.add93, ptr %i.do, align 16, !tbaa !19
  %index.next94 = add nuw i64 %index91, 32        ; 2 uses
  %vec.ind.next95 = add <16 x i8> %vec.ind92, splat (i8 32)
  %i.dp = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.dp, label %middle.block96, label %vector.body90, !llvm.loop !65

middle.block96:                                   ; preds = %vector.body90
  %cmp.n97 = icmp eq i64 %n.vec89, %wide.trip.count.i38
  br i1 %cmp.n97, label %Extra_Permutations.exit48, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block96
  %min.epilog.iters.check = icmp eq i64 %i.dm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i39.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec89, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec98 = and i64 %wide.trip.count.i38, 2147483644 ; 3 uses
  %i.dq = trunc i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.dq, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index99 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind100 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next102, %vec.epilog.vector.body ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %index99
  store <4 x i8> %vec.ind100, ptr %i.dr, align 4, !tbaa !19
  %index.next101 = add nuw i64 %index99, 4        ; 2 uses
  %vec.ind.next102 = add <4 x i8> %vec.ind100, splat (i8 4)
  %i.ds = icmp eq i64 %index.next101, %n.vec98
  br i1 %i.ds, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n103 = icmp eq i64 %n.vec98, %wide.trip.count.i38
  br i1 %cmp.n103, label %Extra_Permutations.exit48, label %.lr.ph.i39.preheader

.lr.ph.i39.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i40.ph = phi i64 [ 0, %iter.check ], [ %n.vec89, %vec.epilog.iter.check ], [ %n.vec98, %vec.epilog.middle.block ]
  br label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader, %.lr.ph.i39
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i41, %.lr.ph.i39 ], [ %indvars.iv.i40.ph, %.lr.ph.i39.preheader ] ; 3 uses
  %i.dt = trunc i64 %indvars.iv.i40 to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i40
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !19
  %indvars.iv.next.i41 = add nuw nsw i64 %indvars.iv.i40, 1 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %indvars.iv.next.i41, %wide.trip.count.i38
  br i1 %exitcond.not.i42, label %Extra_Permutations.exit48, label %.lr.ph.i39, !llvm.loop !67

Extra_Permutations.exit48:                        ; preds = %.lr.ph.i39, %middle.block96, %vec.epilog.middle.block, %Extra_ArrayAlloc.exit.i36
  call fastcc void @Extra_Permutations_rec(ptr noundef nonnull %i.cf, i32 noundef %.0.lcssa.i.i35, i32 noundef %1, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %.sink.split

.sink.split:                                      ; preds = %Extra_Permutations.exit, %Extra_Permutations.exit48
  %.sink = phi ptr [ %i.cf, %Extra_Permutations.exit48 ], [ %i.w, %Extra_Permutations.exit ]
  store ptr %.sink, ptr @Extra_TruthCanonP.pPerms, align 8, !tbaa !49
  store i32 %1, ptr @Extra_TruthCanonP.nVarsOld, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e
  %2 = load i32, ptr @Extra_TruthCanonP.nPerms, align 4, !tbaa !17
  %i.dv = icmp sgt i32 %2, 0
  br i1 %i.dv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.i ] ; 2 uses
  %.01654 = phi i32 [ %spec.select, %.lr.ph ], [ -1, %bb.i ]
  %i.dw = load ptr, ptr @Extra_TruthCanonP.pPerms, align 8, !tbaa !49
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !35
  %i.dz = tail call i32 @Extra_TruthPermute(i32 noundef %0, ptr noundef %i.dy, i32 noundef %1, i32 noundef 0)
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.01654, i32 %i.dz) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ea = load i32, ptr @Extra_TruthCanonP.nPerms, align 4, !tbaa !17
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next, %i.eb
  br i1 %i.ec, label %.lr.ph, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph, %bb.i
  %.016.lcssa = phi i32 [ -1, %bb.i ], [ %spec.select, %.lr.ph ]
  ret i32 %.016.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Extra_TruthCanonNP(i32 noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 7 uses
  %i.b = alloca [50 x i8], align 16               ; 7 uses
  %i.c = load ptr, ptr @Extra_TruthCanonNP.pPerms, align 8, !tbaa !49 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp slt i32 %1, 1
  br i1 %.not7.i, label %Extra_Factorial.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %min.iters.check140 = icmp ult i32 %1, 8
  br i1 %min.iters.check140, label %.lr.ph.i.preheader221, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph.i.preheader
  %n.vec142 = and i32 %1, 2147483640              ; 3 uses
  %i.e = or disjoint i32 %n.vec142, 1
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i32 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ]
  %vec.phi145 = phi <4 x i32> [ splat (i32 1), %vector.ph141 ], [ %i.f, %vector.body143 ]
  %vec.phi146 = phi <4 x i32> [ splat (i32 1), %vector.ph141 ], [ %i.g, %vector.body143 ]
  %vec.ind147 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph141 ], [ %vec.ind.next150, %vector.body143 ] ; 3 uses
  %step.add148 = add nuw <4 x i32> %vec.ind147, splat (i32 4)
  %i.f = mul <4 x i32> %vec.ind147, %vec.phi145   ; 2 uses
  %i.g = mul <4 x i32> %step.add148, %vec.phi146  ; 2 uses
  %index.next149 = add nuw i32 %index144, 8       ; 2 uses
  %vec.ind.next150 = add nuw <4 x i32> %vec.ind147, splat (i32 8)
  %i.h = icmp eq i32 %index.next149, %n.vec142
  br i1 %i.h, label %middle.block151, label %vector.body143, !llvm.loop !69

middle.block151:                                  ; preds = %vector.body143
  %bin.rdx152 = mul <4 x i32> %i.g, %i.f
  %i.i = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx152) ; 2 uses
  %cmp.n153 = icmp eq i32 %1, %n.vec142
  br i1 %cmp.n153, label %Extra_Factorial.exit, label %.lr.ph.i.preheader221

.lr.ph.i.preheader221:                            ; preds = %.lr.ph.i.preheader, %middle.block151
  %.09.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.i, %middle.block151 ]
  %.068.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.e, %middle.block151 ]
  br label %.lr.ph.i

Extra_Factorial.exit.thread:                      ; preds = %bb.b
  store i32 1, ptr @Extra_TruthCanonNP.nPerms, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  br label %Extra_Factorial.exit.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader221, %.lr.ph.i
  %.09.i = phi i32 [ %i.j, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader221 ]
  %.068.i = phi i32 [ %i.k, %.lr.ph.i ], [ %.068.i.ph, %.lr.ph.i.preheader221 ] ; 3 uses
  %i.j = mul nuw nsw i32 %.068.i, %.09.i          ; 2 uses
  %i.k = add nuw i32 %.068.i, 1
  %exitcond.not.i = icmp eq i32 %.068.i, %1
  br i1 %exitcond.not.i, label %Extra_Factorial.exit, label %.lr.ph.i, !llvm.loop !70

Extra_Factorial.exit:                             ; preds = %.lr.ph.i, %middle.block151
  %.lcssa98 = phi i32 [ %i.i, %middle.block151 ], [ %i.j, %.lr.ph.i ]
  store i32 %.lcssa98, ptr @Extra_TruthCanonNP.nPerms, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %min.iters.check157 = icmp ult i32 %1, 8
  br i1 %min.iters.check157, label %.lr.ph.i.i.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %Extra_Factorial.exit
  %n.vec159 = and i32 %1, 2147483640              ; 3 uses
  %i.l = or disjoint i32 %n.vec159, 1
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i32 [ 0, %vector.ph158 ], [ %index.next166, %vector.body160 ]
  %vec.phi162 = phi <4 x i32> [ splat (i32 1), %vector.ph158 ], [ %i.m, %vector.body160 ]
  %vec.phi163 = phi <4 x i32> [ splat (i32 1), %vector.ph158 ], [ %i.n, %vector.body160 ]
  %vec.ind164 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph158 ], [ %vec.ind.next167, %vector.body160 ] ; 3 uses
  %step.add165 = add nuw <4 x i32> %vec.ind164, splat (i32 4)
  %i.m = mul <4 x i32> %vec.ind164, %vec.phi162   ; 2 uses
  %i.n = mul <4 x i32> %step.add165, %vec.phi163  ; 2 uses
  %index.next166 = add nuw i32 %index161, 8       ; 2 uses
  %vec.ind.next167 = add nuw <4 x i32> %vec.ind164, splat (i32 8)
  %i.o = icmp eq i32 %index.next166, %n.vec159
  br i1 %i.o, label %middle.block168, label %vector.body160, !llvm.loop !71

middle.block168:                                  ; preds = %vector.body160
  %bin.rdx169 = mul <4 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx169) ; 2 uses
  %cmp.n170 = icmp eq i32 %1, %n.vec159
  br i1 %cmp.n170, label %Extra_Factorial.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %Extra_Factorial.exit, %middle.block168
  %.09.i.i.ph = phi i32 [ 1, %Extra_Factorial.exit ], [ %i.p, %middle.block168 ]
  %.068.i.i.ph = phi i32 [ 1, %Extra_Factorial.exit ], [ %i.l, %middle.block168 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %i.q, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader ]
  %.068.i.i = phi i32 [ %i.r, %.lr.ph.i.i ], [ %.068.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.q = mul nuw nsw i32 %.068.i.i, %.09.i.i      ; 2 uses
  %i.r = add nuw i32 %.068.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.068.i.i, %1
  br i1 %exitcond.not.i.i, label %Extra_Factorial.exit.i, label %.lr.ph.i.i, !llvm.loop !72

Extra_Factorial.exit.i:                           ; preds = %.lr.ph.i.i, %middle.block168, %Extra_Factorial.exit.thread
  %.0.lcssa.i.i = phi i32 [ 1, %Extra_Factorial.exit.thread ], [ %i.p, %middle.block168 ], [ %i.q, %.lr.ph.i.i ] ; 5 uses
  %i.s = sext i32 %.0.lcssa.i.i to i64            ; 2 uses
  %i.t = sext i32 %1 to i64
  %i.u = add nsw i64 %i.t, 8
  %i.v = mul nsw i64 %i.u, %i.s
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #38 ; 9 uses
  %i.x = shl nsw i64 %i.s, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 6 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !26
  %i.z = icmp sgt i32 %.0.lcssa.i.i, 1
  br i1 %i.z, label %.lr.ph.i12.i, label %Extra_ArrayAlloc.exit.i

.lr.ph.i12.i:                                     ; preds = %Extra_Factorial.exit.i
  %wide.trip.count.i.i = zext nneg i32 %.0.lcssa.i.i to i64
  %i.aa = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %xtraiter234 = and i64 %i.aa, 3                 ; 3 uses
  %i.ab = add nsw i32 %.0.lcssa.i.i, -2
  %i.ac = icmp ult i32 %i.ab, 3
  br i1 %i.ac, label %.epil.preheader233, label %.lr.ph.i12.i.new

.lr.ph.i12.i.new:                                 ; preds = %.lr.ph.i12.i
  %unroll_iter238 = and i64 %i.aa, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i12.i.new
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i12.i.new ], [ %indvars.iv.next.i.i.3, %bb.c ] ; 6 uses
  %niter239 = phi i64 [ 0, %.lr.ph.i12.i.new ], [ %niter239.next.3, %bb.c ]
  %i.ad = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ae = mul i32 %1, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !26
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.aj = mul i32 %1, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.y, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i
  store ptr %i.al, ptr %i.am, align 8, !tbaa !26
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.next.i.i.1 to i32
  %i.ao = mul i32 %1, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.y, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.1
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !26
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next.i.i.2 to i32
  %i.at = mul i32 %1, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.y, i64 %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.2
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !26
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter239.next.3 = add nuw i64 %niter239, 4     ; 2 uses
  %niter239.ncmp.3 = icmp eq i64 %niter239.next.3, %unroll_iter238
  br i1 %niter239.ncmp.3, label %Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa, label %bb.c, !llvm.loop !28

Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa:       ; preds = %bb.c
  %lcmp.mod236.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod236.not, label %Extra_ArrayAlloc.exit.i, label %.epil.preheader233

.epil.preheader233:                               ; preds = %Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa, %.lr.ph.i12.i
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.i12.i ], [ %indvars.iv.next.i.i.3, %Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod237 = icmp ne i64 %xtraiter234, 0
  tail call void @llvm.assume(i1 %lcmp.mod237)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader233
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader233 ], [ %indvars.iv.next.i.i.epil, %bb.d ] ; 3 uses
  %epil.iter235 = phi i64 [ 0, %.epil.preheader233 ], [ %epil.iter235.next, %bb.d ]
  %i.ax = trunc nuw nsw i64 %indvars.iv.i.i.epil to i32
  %i.ay = mul i32 %1, %i.ax
  %i.az = sext i32 %i.ay to i64
end_hunk_0
begin_hunk_1_@Extra_TruthCanonNP:bb.a
  br i1 %i.bx, label %middle.block114, label %vector.body106, !llvm.loop !79

middle.block114:                                  ; preds = %vector.body106
  %bin.rdx115 = mul <4 x i32> %i.bw, %i.bv
  %i.by = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx115) ; 2 uses
  %cmp.n116 = icmp eq i32 %1, %n.vec105
  br i1 %cmp.n116, label %Extra_Factorial.exit.i42, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %Extra_Factorial.exit36, %middle.block114
  %.09.i.i39.ph = phi i32 [ 1, %Extra_Factorial.exit36 ], [ %i.by, %middle.block114 ]
  %.068.i.i40.ph = phi i32 [ 1, %Extra_Factorial.exit36 ], [ %i.bu, %middle.block114 ]
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader, %.lr.ph.i.i38
  %.09.i.i39 = phi i32 [ %i.bz, %.lr.ph.i.i38 ], [ %.09.i.i39.ph, %.lr.ph.i.i38.preheader ]
  %.068.i.i40 = phi i32 [ %i.ca, %.lr.ph.i.i38 ], [ %.068.i.i40.ph, %.lr.ph.i.i38.preheader ] ; 3 uses
  %i.bz = mul nuw nsw i32 %.068.i.i40, %.09.i.i39 ; 2 uses
  %i.ca = add nuw i32 %.068.i.i40, 1
  %exitcond.not.i.i41 = icmp eq i32 %.068.i.i40, %1
  br i1 %exitcond.not.i.i41, label %Extra_Factorial.exit.i42, label %.lr.ph.i.i38, !llvm.loop !80

Extra_Factorial.exit.i42:                         ; preds = %.lr.ph.i.i38, %middle.block114, %Extra_Factorial.exit36.thread
  %.0.lcssa.i.i43 = phi i32 [ 1, %Extra_Factorial.exit36.thread ], [ %i.by, %middle.block114 ], [ %i.bz, %.lr.ph.i.i38 ] ; 5 uses
  %i.cb = sext i32 %.0.lcssa.i.i43 to i64         ; 2 uses
  %i.cc = sext i32 %1 to i64
  %i.cd = add nsw i64 %i.cc, 8
  %i.ce = mul nsw i64 %i.cd, %i.cb
  %i.cf = tail call noalias ptr @malloc(i64 noundef %i.ce) #38 ; 9 uses
  %i.cg = shl nsw i64 %i.cb, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg ; 6 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !26
  %i.ci = icmp sgt i32 %.0.lcssa.i.i43, 1
  br i1 %i.ci, label %.lr.ph.i12.i51, label %Extra_ArrayAlloc.exit.i44

.lr.ph.i12.i51:                                   ; preds = %Extra_Factorial.exit.i42
  %wide.trip.count.i.i52 = zext nneg i32 %.0.lcssa.i.i43 to i64
  %i.cj = add nsw i64 %wide.trip.count.i.i52, -1  ; 2 uses
  %xtraiter = and i64 %i.cj, 3                    ; 3 uses
  %i.ck = add nsw i32 %.0.lcssa.i.i43, -2
  %i.cl = icmp ult i32 %i.ck, 3
  br i1 %i.cl, label %.epil.preheader, label %.lr.ph.i12.i51.new

.lr.ph.i12.i51.new:                               ; preds = %.lr.ph.i12.i51
  %unroll_iter = and i64 %i.cj, -4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i12.i51.new
  %indvars.iv.i.i53 = phi i64 [ 1, %.lr.ph.i12.i51.new ], [ %indvars.iv.next.i.i54.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i12.i51.new ], [ %niter.next.3, %bb.g ]
  %i.cm = trunc nuw nsw i64 %indvars.iv.i.i53 to i32
  %i.cn = mul i32 %1, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.ch, i64 %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.i53
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !26
  %indvars.iv.next.i.i54 = add nuw nsw i64 %indvars.iv.i.i53, 1 ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next.i.i54 to i32
  %i.cs = mul i32 %1, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.ch, i64 %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i54
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !26
  %indvars.iv.next.i.i54.1 = add nuw nsw i64 %indvars.iv.i.i53, 2 ; 2 uses
  %i.cw = trunc nuw nsw i64 %indvars.iv.next.i.i54.1 to i32
  %i.cx = mul i32 %1, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.ch, i64 %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i54.1
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !26
  %indvars.iv.next.i.i54.2 = add nuw nsw i64 %indvars.iv.i.i53, 3 ; 2 uses
  %i.db = trunc nuw nsw i64 %indvars.iv.next.i.i54.2 to i32
  %i.dc = mul i32 %1, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.ch, i64 %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i54.2
  store ptr %i.de, ptr %i.df, align 8, !tbaa !26
  %indvars.iv.next.i.i54.3 = add nuw nsw i64 %indvars.iv.i.i53, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Extra_ArrayAlloc.exit.i44.loopexit.unr-lcssa, label %bb.g, !llvm.loop !28

Extra_ArrayAlloc.exit.i44.loopexit.unr-lcssa:     ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Extra_ArrayAlloc.exit.i44, label %.epil.preheader

.epil.preheader:                                  ; preds = %Extra_ArrayAlloc.exit.i44.loopexit.unr-lcssa, %.lr.ph.i12.i51
  %indvars.iv.i.i53.epil.init = phi i64 [ 1, %.lr.ph.i12.i51 ], [ %indvars.iv.next.i.i54.3, %Extra_ArrayAlloc.exit.i44.loopexit.unr-lcssa ]
  %lcmp.mod232 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod232)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.i.i53.epil = phi i64 [ %indvars.iv.i.i53.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i54.epil, %bb.h ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.dg = trunc nuw nsw i64 %indvars.iv.i.i53.epil to i32
  %i.dh = mul i32 %1, %i.dg
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.ch, i64 %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.i53.epil
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !26
  %indvars.iv.next.i.i54.epil = add nuw nsw i64 %indvars.iv.i.i53.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Extra_ArrayAlloc.exit.i44, label %bb.h, !llvm.loop !81

Extra_ArrayAlloc.exit.i44:                        ; preds = %Extra_ArrayAlloc.exit.i44.loopexit.unr-lcssa, %bb.h, %Extra_Factorial.exit.i42
  %i.dl = icmp sgt i32 %1, 0
  br i1 %i.dl, label %iter.check, label %Extra_Permutations.exit56

iter.check:                                       ; preds = %Extra_ArrayAlloc.exit.i44
  %wide.trip.count.i46 = zext nneg i32 %1 to i64  ; 6 uses
  %min.iters.check120 = icmp ult i32 %1, 4
  br i1 %min.iters.check120, label %.lr.ph.i47.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check121 = icmp ult i32 %1, 32
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph122

vector.ph122:                                     ; preds = %vector.main.loop.iter.check
  %i.dm = and i64 %wide.trip.count.i46, 28
  %n.vec123 = and i64 %wide.trip.count.i46, 2147483616 ; 4 uses
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph122
  %index125 = phi i64 [ 0, %vector.ph122 ], [ %index.next128, %vector.body124 ] ; 2 uses
  %vec.ind126 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph122 ], [ %vec.ind.next129, %vector.body124 ] ; 3 uses
  %step.add127 = add <16 x i8> %vec.ind126, splat (i8 16)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %index125 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <16 x i8> %vec.ind126, ptr %i.dn, align 16, !tbaa !19
  store <16 x i8> %step.add127, ptr %i.do, align 16, !tbaa !19
  %index.next128 = add nuw i64 %index125, 32      ; 2 uses
  %vec.ind.next129 = add <16 x i8> %vec.ind126, splat (i8 32)
  %i.dp = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.dp, label %middle.block130, label %vector.body124, !llvm.loop !82

middle.block130:                                  ; preds = %vector.body124
  %cmp.n131 = icmp eq i64 %n.vec123, %wide.trip.count.i46
  br i1 %cmp.n131, label %Extra_Permutations.exit56, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block130
  %min.epilog.iters.check = icmp eq i64 %i.dm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i47.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec123, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec132 = and i64 %wide.trip.count.i46, 2147483644 ; 3 uses
  %i.dq = trunc i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.dq, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index133 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind134 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next136, %vec.epilog.vector.body ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %index133
  store <4 x i8> %vec.ind134, ptr %i.dr, align 4, !tbaa !19
  %index.next135 = add nuw i64 %index133, 4       ; 2 uses
  %vec.ind.next136 = add <4 x i8> %vec.ind134, splat (i8 4)
  %i.ds = icmp eq i64 %index.next135, %n.vec132
  br i1 %i.ds, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !83

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n137 = icmp eq i64 %n.vec132, %wide.trip.count.i46
  br i1 %cmp.n137, label %Extra_Permutations.exit56, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i48.ph = phi i64 [ 0, %iter.check ], [ %n.vec123, %vec.epilog.iter.check ], [ %n.vec132, %vec.epilog.middle.block ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader, %.lr.ph.i47
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i49, %.lr.ph.i47 ], [ %indvars.iv.i48.ph, %.lr.ph.i47.preheader ] ; 3 uses
  %i.dt = trunc i64 %indvars.iv.i48 to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i48
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !19
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %wide.trip.count.i46
  br i1 %exitcond.not.i50, label %Extra_Permutations.exit56, label %.lr.ph.i47, !llvm.loop !84

Extra_Permutations.exit56:                        ; preds = %.lr.ph.i47, %middle.block130, %vec.epilog.middle.block, %Extra_ArrayAlloc.exit.i44
  call fastcc void @Extra_Permutations_rec(ptr noundef nonnull %i.cf, i32 noundef %.0.lcssa.i.i43, i32 noundef %1, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %.sink.split

.sink.split:                                      ; preds = %Extra_Permutations.exit, %Extra_Permutations.exit56
  %.sink = phi ptr [ %i.cf, %Extra_Permutations.exit56 ], [ %i.w, %Extra_Permutations.exit ] ; 2 uses
  store ptr %.sink, ptr @Extra_TruthCanonNP.pPerms, align 8, !tbaa !49
  store i32 %1, ptr @Extra_TruthCanonNP.nVarsOld, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e
  %i.dv = phi ptr [ %i.c, %bb.e ], [ %.sink, %.sink.split ]
  %.not86 = icmp eq i32 %1, 31
  br i1 %.not86, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.i
  %i.dw = shl nuw nsw i32 1, %1                   ; 3 uses
  %i.dx = icmp sgt i32 %1, 0                      ; 2 uses
  %wide.trip.count.i58 = zext i32 %1 to i64       ; 5 uses
  %i.dy = zext nneg i32 %i.dw to i64
  %i.dz = shl nuw nsw i64 %i.dy, 2                ; 3 uses
  %wide.trip.count.i64.a = zext nneg i32 %i.dw to i64 ; 5 uses
  %i.ea = add nsw i64 %wide.trip.count.i58, -1    ; 2 uses
  %xtraiter240 = and i64 %wide.trip.count.i58, 1
  %i.eb = icmp eq i64 %i.ea, 0
  %unroll_iter245 = and i64 %wide.trip.count.i58, 2147483646
  %lcmp.mod242.not = icmp eq i64 %xtraiter240, 0
  %lcmp.mod244 = trunc i32 %1 to i1
  %min.iters.check206 = icmp ult i32 %1, 3
  %n.vec208 = and i64 %wide.trip.count.i64.a, 2147483640
  %xtraiter248 = and i64 %wide.trip.count.i58, 1
  %i.ec = icmp eq i64 %i.ea, 0
  %unroll_iter252 = and i64 %wide.trip.count.i58, 2147483646
  %lcmp.mod250.not = icmp eq i64 %xtraiter248, 0
  %lcmp.mod251 = trunc i32 %1 to i1
  %xtraiter254 = and i64 %wide.trip.count.i64.a, 1
  %i.ed = icmp eq i32 %1, 0
  %unroll_iter259 = and i64 %wide.trip.count.i64.a, 2147483646
  %lcmp.mod256.not = icmp eq i64 %xtraiter254, 0
  %lcmp.mod258 = icmp eq i32 %1, 0
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph83, %._crit_edge
  %.081 = phi i32 [ 0, %.lr.ph83 ], [ %i.ht, %._crit_edge ] ; 4 uses
  %.02480 = phi i32 [ -1, %.lr.ph83 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  br i1 %i.dx, label %.lr.ph.i59.preheader, label %Extra_TruthPolarize.exit

.lr.ph.i59.preheader:                             ; preds = %bb.j
  br i1 %i.eb, label %.lr.ph.i59.epil.preheader, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %.lr.ph.i59.preheader, %bb.m
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i61.1, %bb.m ], [ 0, %.lr.ph.i59.preheader ] ; 4 uses
  %.01920.i = phi i32 [ %.1.i.1, %bb.m ], [ %0, %.lr.ph.i59.preheader ] ; 3 uses
  %niter246 = phi i64 [ %niter246.next.1, %bb.m ], [ 0, %.lr.ph.i59.preheader ]
  %i.ee = trunc nuw nsw i64 %indvars.iv.i60 to i32
  %i.ef = shl nuw i32 1, %i.ee                    ; 3 uses
  %i.eg = and i32 %i.ef, %.081
  %.not.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i, label %.lr.ph.i59.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i59
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.i60
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !17 ; 2 uses
  %i.ej = xor i32 %i.ei, -1
  %i.ek = and i32 %.01920.i, %i.ej
  %i.el = and i32 %i.ei, %.01920.i
  %i.em = shl i32 %i.ek, %i.ef
  %i.en = lshr i32 %i.el, %i.ef
  %i.eo = or i32 %i.em, %i.en
  br label %.lr.ph.i59.1

.lr.ph.i59.1:                                     ; preds = %bb.k, %.lr.ph.i59
  %.1.i = phi i32 [ %i.eo, %bb.k ], [ %.01920.i, %.lr.ph.i59 ] ; 3 uses
  %indvars.iv.next.i61 = or disjoint i64 %indvars.iv.i60, 1 ; 2 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv.next.i61 to i32
  %i.eq = shl nuw i32 1, %i.ep                    ; 3 uses
  %i.er = and i32 %i.eq, %.081
  %.not.i.1 = icmp eq i32 %i.er, 0
  br i1 %.not.i.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i59.1
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.next.i61
  %i.et = load i32, ptr %i.es, align 4, !tbaa !17 ; 2 uses
  %i.eu = xor i32 %i.et, -1
  %i.ev = and i32 %.1.i, %i.eu
  %i.ew = and i32 %i.et, %.1.i
  %i.ex = shl i32 %i.ev, %i.eq
  %i.ey = lshr i32 %i.ew, %i.eq
  %i.ez = or i32 %i.ex, %i.ey
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i59.1
  %.1.i.1 = phi i32 [ %i.ez, %bb.l ], [ %.1.i, %.lr.ph.i59.1 ] ; 3 uses
  %indvars.iv.next.i61.1 = add nuw nsw i64 %indvars.iv.i60, 2 ; 2 uses
  %niter246.next.1 = add i64 %niter246, 2         ; 2 uses
  %niter246.ncmp.1 = icmp eq i64 %niter246.next.1, %unroll_iter245
  br i1 %niter246.ncmp.1, label %Extra_TruthPolarize.exit.loopexit.unr-lcssa, label %.lr.ph.i59, !llvm.loop !45

Extra_TruthPolarize.exit.loopexit.unr-lcssa:      ; preds = %bb.m
  br i1 %lcmp.mod242.not, label %Extra_TruthPolarize.exit, label %.lr.ph.i59.epil.preheader

.lr.ph.i59.epil.preheader:                        ; preds = %Extra_TruthPolarize.exit.loopexit.unr-lcssa, %.lr.ph.i59.preheader
  %indvars.iv.i60.epil.init = phi i64 [ 0, %.lr.ph.i59.preheader ], [ %indvars.iv.next.i61.1, %Extra_TruthPolarize.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01920.i.epil.init = phi i32 [ %0, %.lr.ph.i59.preheader ], [ %.1.i.1, %Extra_TruthPolarize.exit.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod244)
  %i.fa = trunc nuw nsw i64 %indvars.iv.i60.epil.init to i32
  %i.fb = shl nuw i32 1, %i.fa                    ; 3 uses
  %i.fc = and i32 %i.fb, %.081
  %.not.i.epil = icmp eq i32 %i.fc, 0
  br i1 %.not.i.epil, label %Extra_TruthPolarize.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i59.epil.preheader
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.i60.epil.init
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !17 ; 2 uses
  %i.ff = xor i32 %i.fe, -1
  %i.fg = and i32 %.01920.i.epil.init, %i.ff
  %i.fh = and i32 %i.fe, %.01920.i.epil.init
  %i.fi = shl i32 %i.fg, %i.fb
  %i.fj = lshr i32 %i.fh, %i.fb
  %i.fk = or i32 %i.fi, %i.fj
  br label %Extra_TruthPolarize.exit

Extra_TruthPolarize.exit:                         ; preds = %Extra_TruthPolarize.exit.loopexit.unr-lcssa, %bb.n, %.lr.ph.i59.epil.preheader, %bb.j
  %.019.lcssa.i = phi i32 [ %0, %bb.j ], [ %.1.i.1, %Extra_TruthPolarize.exit.loopexit.unr-lcssa ], [ %i.fk, %bb.n ], [ %.01920.i.epil.init, %.lr.ph.i59.epil.preheader ] ; 3 uses
  %2 = load i32, ptr @Extra_TruthCanonNP.nPerms, align 4, !tbaa !17
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph.preheader.i63, label %._crit_edge

.lr.ph.preheader.i63:                             ; preds = %Extra_TruthPolarize.exit, %Extra_TruthPermute.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Extra_TruthPermute.exit ], [ 0, %Extra_TruthPolarize.exit ] ; 2 uses
  %.178 = phi i32 [ %spec.select, %Extra_TruthPermute.exit ], [ %.02480, %Extra_TruthPolarize.exit ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !35 ; 3 uses
  %i.fn = tail call noalias ptr @malloc(i64 noundef %i.dz) #38 ; 5 uses
  %i.fo = tail call noalias ptr @malloc(i64 noundef %i.dz) #38 ; 6 uses
  br i1 %min.iters.check206, label %.lr.ph.i65, label %vector.body209

vector.body209:                                   ; preds = %.lr.ph.preheader.i63, %vector.body209
  %index210 = phi i64 [ %index.next213, %vector.body209 ], [ 0, %.lr.ph.preheader.i63 ] ; 2 uses
  %vec.ind211 = phi <4 x i32> [ %vec.ind.next214, %vector.body209 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.preheader.i63 ] ; 3 uses
  %step.add212 = add <4 x i32> %vec.ind211, splat (i32 4)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %index210 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <4 x i32> %vec.ind211, ptr %i.fp, align 4, !tbaa !17
  store <4 x i32> %step.add212, ptr %i.fq, align 4, !tbaa !17
  %index.next213 = add nuw i64 %index210, 8       ; 2 uses
  %vec.ind.next214 = add <4 x i32> %vec.ind211, splat (i32 8)
  %i.fr = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.fr, label %._crit_edge.i, label %vector.body209, !llvm.loop !85

.lr.ph.i65:                                       ; preds = %.lr.ph.preheader.i63, %.lr.ph.i65
  %indvars.iv.i66 = phi i64 [ %indvars.iv.next.i67, %.lr.ph.i65 ], [ 0, %.lr.ph.preheader.i63 ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i66
  %i.ft = trunc nuw nsw i64 %indvars.iv.i66 to i32
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !17
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i66, 1 ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %indvars.iv.next.i67, %wide.trip.count.i64.a
  br i1 %exitcond.not.i68, label %._crit_edge.i, label %.lr.ph.i65, !llvm.loop !86

._crit_edge.i:                                    ; preds = %vector.body209, %.lr.ph.i65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fo, i8 0, i64 %i.dz, i1 false)
  br i1 %i.dx, label %.preheader.i.i, label %.lr.ph53.i.preheader

.preheader.i.i:                                   ; preds = %._crit_edge.i, %._crit_edge.i.i
  %indvars.iv19.i.i = phi i64 [ %indvars.iv.next20.i.i, %._crit_edge.i.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv19.i.i
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv19.i.i ; 6 uses
  %i.fw = load i32, ptr %i.fu, align 4, !tbaa !17 ; 3 uses
  br i1 %i.ec, label %.epil.preheader247, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i, %bb.r
  %indvars.iv.i.i70 = phi i64 [ %indvars.iv.next.i.i71.1, %bb.r ], [ 0, %.preheader.i.i ] ; 4 uses
  %niter253 = phi i64 [ %niter253.next.1, %bb.r ], [ 0, %.preheader.i.i ]
  %i.fx = trunc nuw nsw i64 %indvars.iv.i.i70 to i32
  %i.fy = shl nuw i32 1, %i.fx
  %i.fz = and i32 %i.fy, %i.fw
  %.not.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i.new
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.i.i70
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !19
  %i.gc = zext nneg i8 %i.gb to i32
  %i.gd = shl nuw i32 1, %i.gc
  %i.ge = load i32, ptr %i.fv, align 4, !tbaa !17
  %i.gf = or i32 %i.gd, %i.ge
  store i32 %i.gf, ptr %i.fv, align 4, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader.i.i.new
  %indvars.iv.next.i.i71 = or disjoint i64 %indvars.iv.i.i70, 1 ; 2 uses
  %i.gg = trunc nuw nsw i64 %indvars.iv.next.i.i71 to i32
  %i.gh = shl nuw i32 1, %i.gg
  %i.gi = and i32 %i.gh, %i.fw
  %.not.i.i.1 = icmp eq i32 %i.gi, 0
  br i1 %.not.i.i.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.next.i.i71
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !19
  %i.gl = zext nneg i8 %i.gk to i32
  %i.gm = shl nuw i32 1, %i.gl
  %i.gn = load i32, ptr %i.fv, align 4, !tbaa !17
  %i.go = or i32 %i.gm, %i.gn
  store i32 %i.go, ptr %i.fv, align 4, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.next.i.i71.1 = add nuw nsw i64 %indvars.iv.i.i70, 2 ; 2 uses
  %niter253.next.1 = add i64 %niter253, 2         ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.preheader.i.i.new, !llvm.loop !40

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.r
  br i1 %lcmp.mod250.not, label %._crit_edge.i.i, label %.epil.preheader247

.epil.preheader247:                               ; preds = %._crit_edge.i.i.unr-lcssa, %.preheader.i.i
  %indvars.iv.i.i70.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i71.1, %._crit_edge.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.gp = trunc nuw nsw i64 %indvars.iv.i.i70.epil.init to i32
  %i.gq = shl nuw i32 1, %i.gp
  %i.gr = and i32 %i.gq, %i.fw
  %.not.i.i.epil = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i.epil, label %._crit_edge.i.i, label %bb.s

bb.s:                                             ; preds = %.epil.preheader247
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.i.i70.epil.init
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !19
  %i.gu = zext nneg i8 %i.gt to i32
  %i.gv = shl nuw i32 1, %i.gu
  %i.gw = load i32, ptr %i.fv, align 4, !tbaa !17
  %i.gx = or i32 %i.gv, %i.gw
  store i32 %i.gx, ptr %i.fv, align 4, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.epil.preheader247, %bb.s, %._crit_edge.i.i.unr-lcssa
  %indvars.iv.next20.i.i = add nuw nsw i64 %indvars.iv19.i.i, 1 ; 2 uses
  %exitcond23.not.i.i = icmp eq i64 %indvars.iv.next20.i.i, %wide.trip.count.i64.a
  br i1 %exitcond23.not.i.i, label %.lr.ph53.i.preheader, label %.preheader.i.i, !llvm.loop !41

.lr.ph53.i.preheader:                             ; preds = %._crit_edge.i.i, %._crit_edge.i
  br i1 %i.ed, label %.lr.ph53.i.epil.preheader, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %bb.v
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i.1, %bb.v ], [ 0, %.lr.ph53.i.preheader ] ; 4 uses
  %.251.i = phi i32 [ %.3.i.1, %bb.v ], [ 0, %.lr.ph53.i.preheader ] ; 2 uses
  %niter260 = phi i64 [ %niter260.next.1, %bb.v ], [ 0, %.lr.ph53.i.preheader ]
  %i.gy = trunc nuw nsw i64 %indvars.iv66.i to i32
  %i.gz = shl nuw i32 1, %i.gy
  %i.ha = and i32 %i.gz, %.019.lcssa.i
  %.not41.i = icmp eq i32 %i.ha, 0
  br i1 %.not41.i, label %.lr.ph53.i.1, label %bb.t

bb.t:                                             ; preds = %.lr.ph53.i
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv66.i
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !17
  %i.hd = shl nuw i32 1, %i.hc
  %i.he = or i32 %i.hd, %.251.i
  br label %.lr.ph53.i.1

.lr.ph53.i.1:                                     ; preds = %bb.t, %.lr.ph53.i
  %.3.i = phi i32 [ %i.he, %bb.t ], [ %.251.i, %.lr.ph53.i ] ; 2 uses
  %indvars.iv.next67.i = or disjoint i64 %indvars.iv66.i, 1 ; 2 uses
  %i.hf = trunc nuw nsw i64 %indvars.iv.next67.i to i32
  %i.hg = shl nuw i32 1, %i.hf
  %i.hh = and i32 %i.hg, %.019.lcssa.i
  %.not41.i.1 = icmp eq i32 %i.hh, 0
  br i1 %.not41.i.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph53.i.1
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.next67.i
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !17
  %i.hk = shl nuw i32 1, %i.hj
  %i.hl = or i32 %i.hk, %.3.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph53.i.1
  %.3.i.1 = phi i32 [ %i.hl, %bb.u ], [ %.3.i, %.lr.ph53.i.1 ] ; 3 uses
  %indvars.iv.next67.i.1 = add nuw nsw i64 %indvars.iv66.i, 2 ; 2 uses
  %niter260.next.1 = add i64 %niter260, 2         ; 2 uses
  %niter260.ncmp.1 = icmp eq i64 %niter260.next.1, %unroll_iter259
  br i1 %niter260.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph53.i, !llvm.loop !44

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.v
  br i1 %lcmp.mod256.not, label %.loopexit.i.loopexit, label %.lr.ph53.i.epil.preheader

.lr.ph53.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph53.i.preheader
  %indvars.iv66.i.epil.init = phi i64 [ 0, %.lr.ph53.i.preheader ], [ %indvars.iv.next67.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.251.i.epil.init = phi i32 [ 0, %.lr.ph53.i.preheader ], [ %.3.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod258)
  %i.hm = trunc nuw nsw i64 %indvars.iv66.i.epil.init to i32
  %i.hn = shl nuw i32 1, %i.hm
  %i.ho = and i32 %i.hn, %.019.lcssa.i
  %.not41.i.epil = icmp eq i32 %i.ho, 0
  br i1 %.not41.i.epil, label %.loopexit.i.loopexit, label %bb.w

bb.w:                                             ; preds = %.lr.ph53.i.epil.preheader
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv66.i.epil.init
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !17
  %i.hr = shl nuw i32 1, %i.hq
  %i.hs = or i32 %i.hr, %.251.i.epil.init
  br label %.loopexit.i.loopexit

.loopexit.i.loopexit:                             ; preds = %.lr.ph53.i.epil.preheader, %bb.w, %.loopexit.i.loopexit.unr-lcssa
  %.3.i.lcssa = phi i32 [ %.3.i.1, %.loopexit.i.loopexit.unr-lcssa ], [ %i.hs, %bb.w ], [ %.251.i.epil.init, %.lr.ph53.i.epil.preheader ]
  %.not42.i = icmp eq ptr %i.fn, null
  br i1 %.not42.i, label %Extra_TruthPermute.exit, label %bb.x

bb.x:                                             ; preds = %.loopexit.i.loopexit
  tail call void @free(ptr noundef nonnull %i.fn) #37
  br label %Extra_TruthPermute.exit

Extra_TruthPermute.exit:                          ; preds = %.loopexit.i.loopexit, %bb.x
  tail call void @free(ptr noundef nonnull %i.fo) #37
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.178, i32 %.3.i.lcssa) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %4 = load i32, ptr @Extra_TruthCanonNP.nPerms, align 4, !tbaa !17
  %5 = sext i32 %4 to i64
  %6 = icmp slt i64 %indvars.iv.next, %5
  br i1 %6, label %.lr.ph.preheader.i63, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %Extra_TruthPermute.exit, %Extra_TruthPolarize.exit
  %.1.lcssa = phi i32 [ %.02480, %Extra_TruthPolarize.exit ], [ %spec.select, %Extra_TruthPermute.exit ] ; 2 uses
  %i.ht = add nuw nsw i32 %.081, 1                ; 2 uses
  %exitcond.not.a = icmp eq i32 %i.ht, %i.dw
  br i1 %exitcond.not.a, label %._crit_edge84, label %bb.j, !llvm.loop !88

._crit_edge84:                                    ; preds = %._crit_edge, %bb.i
  %.024.lcssa = phi i32 [ -1, %bb.i ], [ %.1.lcssa, %._crit_edge ]
  ret i32 %.024.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Extra_TruthCanonNPN(i32 noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 7 uses
  %i.b = alloca [50 x i8], align 16               ; 7 uses
  %i.c = load ptr, ptr @Extra_TruthCanonNPN.pPerms, align 8, !tbaa !49 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp slt i32 %1, 1
  br i1 %.not7.i, label %Extra_Factorial.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %min.iters.check216 = icmp ult i32 %1, 8
  br i1 %min.iters.check216, label %.lr.ph.i.preheader314, label %vector.ph217

vector.ph217:                                     ; preds = %.lr.ph.i.preheader
  %n.vec218 = and i32 %1, 2147483640              ; 3 uses
  %i.e = or disjoint i32 %n.vec218, 1
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i32 [ 0, %vector.ph217 ], [ %index.next225, %vector.body219 ]
  %vec.phi221 = phi <4 x i32> [ splat (i32 1), %vector.ph217 ], [ %i.f, %vector.body219 ]
  %vec.phi222 = phi <4 x i32> [ splat (i32 1), %vector.ph217 ], [ %i.g, %vector.body219 ]
  %vec.ind223 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph217 ], [ %vec.ind.next226, %vector.body219 ] ; 3 uses
  %step.add224 = add nuw <4 x i32> %vec.ind223, splat (i32 4)
  %i.f = mul <4 x i32> %vec.ind223, %vec.phi221   ; 2 uses
  %i.g = mul <4 x i32> %step.add224, %vec.phi222  ; 2 uses
  %index.next225 = add nuw i32 %index220, 8       ; 2 uses
  %vec.ind.next226 = add nuw <4 x i32> %vec.ind223, splat (i32 8)
  %i.h = icmp eq i32 %index.next225, %n.vec218
  br i1 %i.h, label %middle.block227, label %vector.body219, !llvm.loop !89

middle.block227:                                  ; preds = %vector.body219
  %bin.rdx228 = mul <4 x i32> %i.g, %i.f
  %i.i = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx228) ; 2 uses
  %cmp.n229 = icmp eq i32 %1, %n.vec218
  br i1 %cmp.n229, label %Extra_Factorial.exit, label %.lr.ph.i.preheader314

.lr.ph.i.preheader314:                            ; preds = %.lr.ph.i.preheader, %middle.block227
  %.09.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.i, %middle.block227 ]
  %.068.i.ph = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.e, %middle.block227 ]
  br label %.lr.ph.i

Extra_Factorial.exit.thread:                      ; preds = %bb.b
  store i32 1, ptr @Extra_TruthCanonNPN.nPerms, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  br label %Extra_Factorial.exit.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader314, %.lr.ph.i
  %.09.i = phi i32 [ %i.j, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader314 ]
  %.068.i = phi i32 [ %i.k, %.lr.ph.i ], [ %.068.i.ph, %.lr.ph.i.preheader314 ] ; 3 uses
  %i.j = mul nuw nsw i32 %.068.i, %.09.i          ; 2 uses
  %i.k = add nuw i32 %.068.i, 1
  %exitcond.not.i = icmp eq i32 %.068.i, %1
  br i1 %exitcond.not.i, label %Extra_Factorial.exit, label %.lr.ph.i, !llvm.loop !90

Extra_Factorial.exit:                             ; preds = %.lr.ph.i, %middle.block227
  %.lcssa174 = phi i32 [ %i.i, %middle.block227 ], [ %i.j, %.lr.ph.i ]
  store i32 %.lcssa174, ptr @Extra_TruthCanonNPN.nPerms, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %min.iters.check233 = icmp ult i32 %1, 8
  br i1 %min.iters.check233, label %.lr.ph.i.i.preheader, label %vector.ph234

vector.ph234:                                     ; preds = %Extra_Factorial.exit
  %n.vec235 = and i32 %1, 2147483640              ; 3 uses
  %i.l = or disjoint i32 %n.vec235, 1
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i32 [ 0, %vector.ph234 ], [ %index.next242, %vector.body236 ]
  %vec.phi238 = phi <4 x i32> [ splat (i32 1), %vector.ph234 ], [ %i.m, %vector.body236 ]
  %vec.phi239 = phi <4 x i32> [ splat (i32 1), %vector.ph234 ], [ %i.n, %vector.body236 ]
  %vec.ind240 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph234 ], [ %vec.ind.next243, %vector.body236 ] ; 3 uses
  %step.add241 = add nuw <4 x i32> %vec.ind240, splat (i32 4)
  %i.m = mul <4 x i32> %vec.ind240, %vec.phi238   ; 2 uses
  %i.n = mul <4 x i32> %step.add241, %vec.phi239  ; 2 uses
  %index.next242 = add nuw i32 %index237, 8       ; 2 uses
  %vec.ind.next243 = add nuw <4 x i32> %vec.ind240, splat (i32 8)
  %i.o = icmp eq i32 %index.next242, %n.vec235
  br i1 %i.o, label %middle.block244, label %vector.body236, !llvm.loop !91

middle.block244:                                  ; preds = %vector.body236
  %bin.rdx245 = mul <4 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx245) ; 2 uses
  %cmp.n246 = icmp eq i32 %1, %n.vec235
  br i1 %cmp.n246, label %Extra_Factorial.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %Extra_Factorial.exit, %middle.block244
  %.09.i.i.ph = phi i32 [ 1, %Extra_Factorial.exit ], [ %i.p, %middle.block244 ]
  %.068.i.i.ph = phi i32 [ 1, %Extra_Factorial.exit ], [ %i.l, %middle.block244 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.09.i.i = phi i32 [ %i.q, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader ]
  %.068.i.i = phi i32 [ %i.r, %.lr.ph.i.i ], [ %.068.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.q = mul nuw nsw i32 %.068.i.i, %.09.i.i      ; 2 uses
  %i.r = add nuw i32 %.068.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.068.i.i, %1
  br i1 %exitcond.not.i.i, label %Extra_Factorial.exit.i, label %.lr.ph.i.i, !llvm.loop !92

Extra_Factorial.exit.i:                           ; preds = %.lr.ph.i.i, %middle.block244, %Extra_Factorial.exit.thread
  %.0.lcssa.i.i = phi i32 [ 1, %Extra_Factorial.exit.thread ], [ %i.p, %middle.block244 ], [ %i.q, %.lr.ph.i.i ] ; 5 uses
  %i.s = sext i32 %.0.lcssa.i.i to i64            ; 2 uses
  %i.t = sext i32 %1 to i64
  %i.u = add nsw i64 %i.t, 8
  %i.v = mul nsw i64 %i.u, %i.s
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #38 ; 9 uses
  %i.x = shl nsw i64 %i.s, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 6 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !26
  %i.z = icmp sgt i32 %.0.lcssa.i.i, 1
  br i1 %i.z, label %.lr.ph.i12.i, label %Extra_ArrayAlloc.exit.i

.lr.ph.i12.i:                                     ; preds = %Extra_Factorial.exit.i
  %wide.trip.count.i.i = zext nneg i32 %.0.lcssa.i.i to i64
  %i.aa = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %xtraiter327 = and i64 %i.aa, 3                 ; 3 uses
  %i.ab = add nsw i32 %.0.lcssa.i.i, -2
  %i.ac = icmp ult i32 %i.ab, 3
  br i1 %i.ac, label %.epil.preheader326, label %.lr.ph.i12.i.new

.lr.ph.i12.i.new:                                 ; preds = %.lr.ph.i12.i
  %unroll_iter331 = and i64 %i.aa, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i12.i.new
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i12.i.new ], [ %indvars.iv.next.i.i.3, %bb.c ] ; 6 uses
  %niter332 = phi i64 [ 0, %.lr.ph.i12.i.new ], [ %niter332.next.3, %bb.c ]
  %i.ad = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.ae = mul i32 %1, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !26
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.aj = mul i32 %1, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.y, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i
  store ptr %i.al, ptr %i.am, align 8, !tbaa !26
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.next.i.i.1 to i32
  %i.ao = mul i32 %1, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.y, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.1
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !26
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next.i.i.2 to i32
  %i.at = mul i32 %1, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.y, i64 %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.2
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !26
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter332.next.3 = add nuw i64 %niter332, 4     ; 2 uses
  %niter332.ncmp.3 = icmp eq i64 %niter332.next.3, %unroll_iter331
  br i1 %niter332.ncmp.3, label %Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa, label %bb.c, !llvm.loop !28

Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa:       ; preds = %bb.c
  %lcmp.mod329.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod329.not, label %Extra_ArrayAlloc.exit.i, label %.epil.preheader326

.epil.preheader326:                               ; preds = %Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa, %.lr.ph.i12.i
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.i12.i ], [ %indvars.iv.next.i.i.3, %Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod330 = icmp ne i64 %xtraiter327, 0
  tail call void @llvm.assume(i1 %lcmp.mod330)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader326
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader326 ], [ %indvars.iv.next.i.i.epil, %bb.d ] ; 3 uses
  %epil.iter328 = phi i64 [ 0, %.epil.preheader326 ], [ %epil.iter328.next, %bb.d ]
  %i.ax = trunc nuw nsw i64 %indvars.iv.i.i.epil to i32
  %i.ay = mul i32 %1, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.y, i64 %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i.i.epil
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !26
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter328.next = add i64 %epil.iter328, 1   ; 2 uses
  %epil.iter328.cmp.not = icmp eq i64 %epil.iter328.next, %xtraiter327
  br i1 %epil.iter328.cmp.not, label %Extra_ArrayAlloc.exit.i, label %bb.d, !llvm.loop !93

Extra_ArrayAlloc.exit.i:                          ; preds = %Extra_ArrayAlloc.exit.i.loopexit.unr-lcssa, %bb.d, %Extra_Factorial.exit.i
end_hunk_1
begin_hunk_2_@Extra_TruthCanonNPN:bb.a
  %i.by = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx191) ; 2 uses
  %cmp.n192 = icmp eq i32 %1, %n.vec181
  br i1 %cmp.n192, label %Extra_Factorial.exit.i58, label %.lr.ph.i.i54.preheader

.lr.ph.i.i54.preheader:                           ; preds = %Extra_Factorial.exit52, %middle.block190
  %.09.i.i55.ph = phi i32 [ 1, %Extra_Factorial.exit52 ], [ %i.by, %middle.block190 ]
  %.068.i.i56.ph = phi i32 [ 1, %Extra_Factorial.exit52 ], [ %i.bu, %middle.block190 ]
  br label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %.lr.ph.i.i54.preheader, %.lr.ph.i.i54
  %.09.i.i55 = phi i32 [ %i.bz, %.lr.ph.i.i54 ], [ %.09.i.i55.ph, %.lr.ph.i.i54.preheader ]
  %.068.i.i56 = phi i32 [ %i.ca, %.lr.ph.i.i54 ], [ %.068.i.i56.ph, %.lr.ph.i.i54.preheader ] ; 3 uses
  %i.bz = mul nuw nsw i32 %.068.i.i56, %.09.i.i55 ; 2 uses
  %i.ca = add nuw i32 %.068.i.i56, 1
  %exitcond.not.i.i57 = icmp eq i32 %.068.i.i56, %1
  br i1 %exitcond.not.i.i57, label %Extra_Factorial.exit.i58, label %.lr.ph.i.i54, !llvm.loop !100

Extra_Factorial.exit.i58:                         ; preds = %.lr.ph.i.i54, %middle.block190, %Extra_Factorial.exit52.thread
  %.0.lcssa.i.i59 = phi i32 [ 1, %Extra_Factorial.exit52.thread ], [ %i.by, %middle.block190 ], [ %i.bz, %.lr.ph.i.i54 ] ; 5 uses
  %i.cb = sext i32 %.0.lcssa.i.i59 to i64         ; 2 uses
  %i.cc = sext i32 %1 to i64
  %i.cd = add nsw i64 %i.cc, 8
  %i.ce = mul nsw i64 %i.cd, %i.cb
  %i.cf = tail call noalias ptr @malloc(i64 noundef %i.ce) #38 ; 9 uses
  %i.cg = shl nsw i64 %i.cb, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg ; 6 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !26
  %i.ci = icmp sgt i32 %.0.lcssa.i.i59, 1
  br i1 %i.ci, label %.lr.ph.i12.i67, label %Extra_ArrayAlloc.exit.i60

.lr.ph.i12.i67:                                   ; preds = %Extra_Factorial.exit.i58
  %wide.trip.count.i.i68 = zext nneg i32 %.0.lcssa.i.i59 to i64
  %i.cj = add nsw i64 %wide.trip.count.i.i68, -1  ; 2 uses
  %xtraiter = and i64 %i.cj, 3                    ; 3 uses
  %i.ck = add nsw i32 %.0.lcssa.i.i59, -2
  %i.cl = icmp ult i32 %i.ck, 3
  br i1 %i.cl, label %.epil.preheader, label %.lr.ph.i12.i67.new

.lr.ph.i12.i67.new:                               ; preds = %.lr.ph.i12.i67
  %unroll_iter = and i64 %i.cj, -4
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i12.i67.new
  %indvars.iv.i.i69 = phi i64 [ 1, %.lr.ph.i12.i67.new ], [ %indvars.iv.next.i.i70.3, %bb.g ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i12.i67.new ], [ %niter.next.3, %bb.g ]
  %i.cm = trunc nuw nsw i64 %indvars.iv.i.i69 to i32
  %i.cn = mul i32 %1, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds i8, ptr %i.ch, i64 %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.i69
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !26
  %indvars.iv.next.i.i70 = add nuw nsw i64 %indvars.iv.i.i69, 1 ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next.i.i70 to i32
  %i.cs = mul i32 %1, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.ch, i64 %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i70
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !26
  %indvars.iv.next.i.i70.1 = add nuw nsw i64 %indvars.iv.i.i69, 2 ; 2 uses
  %i.cw = trunc nuw nsw i64 %indvars.iv.next.i.i70.1 to i32
  %i.cx = mul i32 %1, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.ch, i64 %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i70.1
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !26
  %indvars.iv.next.i.i70.2 = add nuw nsw i64 %indvars.iv.i.i69, 3 ; 2 uses
  %i.db = trunc nuw nsw i64 %indvars.iv.next.i.i70.2 to i32
  %i.dc = mul i32 %1, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.ch, i64 %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i70.2
  store ptr %i.de, ptr %i.df, align 8, !tbaa !26
  %indvars.iv.next.i.i70.3 = add nuw nsw i64 %indvars.iv.i.i69, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Extra_ArrayAlloc.exit.i60.loopexit.unr-lcssa, label %bb.g, !llvm.loop !28

Extra_ArrayAlloc.exit.i60.loopexit.unr-lcssa:     ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Extra_ArrayAlloc.exit.i60, label %.epil.preheader

.epil.preheader:                                  ; preds = %Extra_ArrayAlloc.exit.i60.loopexit.unr-lcssa, %.lr.ph.i12.i67
  %indvars.iv.i.i69.epil.init = phi i64 [ 1, %.lr.ph.i12.i67 ], [ %indvars.iv.next.i.i70.3, %Extra_ArrayAlloc.exit.i60.loopexit.unr-lcssa ]
  %lcmp.mod325 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod325)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.i.i69.epil = phi i64 [ %indvars.iv.i.i69.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i70.epil, %bb.h ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.dg = trunc nuw nsw i64 %indvars.iv.i.i69.epil to i32
  %i.dh = mul i32 %1, %i.dg
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.ch, i64 %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.i69.epil
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !26
  %indvars.iv.next.i.i70.epil = add nuw nsw i64 %indvars.iv.i.i69.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Extra_ArrayAlloc.exit.i60, label %bb.h, !llvm.loop !101

Extra_ArrayAlloc.exit.i60:                        ; preds = %Extra_ArrayAlloc.exit.i60.loopexit.unr-lcssa, %bb.h, %Extra_Factorial.exit.i58
  %i.dl = icmp sgt i32 %1, 0
  br i1 %i.dl, label %iter.check, label %Extra_Permutations.exit72

iter.check:                                       ; preds = %Extra_ArrayAlloc.exit.i60
  %wide.trip.count.i62 = zext nneg i32 %1 to i64  ; 6 uses
  %min.iters.check196 = icmp ult i32 %1, 4
  br i1 %min.iters.check196, label %.lr.ph.i63.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check197 = icmp ult i32 %1, 32
  br i1 %min.iters.check197, label %vec.epilog.ph, label %vector.ph198

vector.ph198:                                     ; preds = %vector.main.loop.iter.check
  %i.dm = and i64 %wide.trip.count.i62, 28
  %n.vec199 = and i64 %wide.trip.count.i62, 2147483616 ; 4 uses
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next204, %vector.body200 ] ; 2 uses
  %vec.ind202 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph198 ], [ %vec.ind.next205, %vector.body200 ] ; 3 uses
  %step.add203 = add <16 x i8> %vec.ind202, splat (i8 16)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %index201 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <16 x i8> %vec.ind202, ptr %i.dn, align 16, !tbaa !19
  store <16 x i8> %step.add203, ptr %i.do, align 16, !tbaa !19
  %index.next204 = add nuw i64 %index201, 32      ; 2 uses
  %vec.ind.next205 = add <16 x i8> %vec.ind202, splat (i8 32)
  %i.dp = icmp eq i64 %index.next204, %n.vec199
  br i1 %i.dp, label %middle.block206, label %vector.body200, !llvm.loop !102

middle.block206:                                  ; preds = %vector.body200
  %cmp.n207 = icmp eq i64 %n.vec199, %wide.trip.count.i62
  br i1 %cmp.n207, label %Extra_Permutations.exit72, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block206
  %min.epilog.iters.check = icmp eq i64 %i.dm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i63.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec199, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec208 = and i64 %wide.trip.count.i62, 2147483644 ; 3 uses
  %i.dq = trunc i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.dq, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index209 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next211, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind210 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next212, %vec.epilog.vector.body ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %index209
  store <4 x i8> %vec.ind210, ptr %i.dr, align 4, !tbaa !19
  %index.next211 = add nuw i64 %index209, 4       ; 2 uses
  %vec.ind.next212 = add <4 x i8> %vec.ind210, splat (i8 4)
  %i.ds = icmp eq i64 %index.next211, %n.vec208
  br i1 %i.ds, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !103

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n213 = icmp eq i64 %n.vec208, %wide.trip.count.i62
  br i1 %cmp.n213, label %Extra_Permutations.exit72, label %.lr.ph.i63.preheader

.lr.ph.i63.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i64.ph = phi i64 [ 0, %iter.check ], [ %n.vec199, %vec.epilog.iter.check ], [ %n.vec208, %vec.epilog.middle.block ]
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.preheader, %.lr.ph.i63
  %indvars.iv.i64 = phi i64 [ %indvars.iv.next.i65, %.lr.ph.i63 ], [ %indvars.iv.i64.ph, %.lr.ph.i63.preheader ] ; 3 uses
  %i.dt = trunc i64 %indvars.iv.i64 to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i64
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !19
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %wide.trip.count.i62
  br i1 %exitcond.not.i66, label %Extra_Permutations.exit72, label %.lr.ph.i63, !llvm.loop !104

Extra_Permutations.exit72:                        ; preds = %.lr.ph.i63, %middle.block206, %vec.epilog.middle.block, %Extra_ArrayAlloc.exit.i60
  call fastcc void @Extra_Permutations_rec(ptr noundef nonnull %i.cf, i32 noundef %.0.lcssa.i.i59, i32 noundef %1, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %.sink.split

.sink.split:                                      ; preds = %Extra_Permutations.exit, %Extra_Permutations.exit72
  %.sink = phi ptr [ %i.cf, %Extra_Permutations.exit72 ], [ %i.w, %Extra_Permutations.exit ] ; 2 uses
  store ptr %.sink, ptr @Extra_TruthCanonNPN.pPerms, align 8, !tbaa !49
  store i32 %1, ptr @Extra_TruthCanonNPN.nVarsOld, align 4, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e
  %i.dv = phi ptr [ %i.c, %bb.e ], [ %.sink, %.sink.split ] ; 2 uses
  %i.dw = shl nuw i32 1, %1                       ; 4 uses
  %i.dx = xor i32 %0, -1
  %i.dy = sub nsw i32 32, %i.dw
  %i.dz = lshr i32 -1, %i.dy
  %i.ea = and i32 %i.dz, %i.dx                    ; 3 uses
  %.not156 = icmp eq i32 %1, 31
  br i1 %.not156, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.i
  %i.eb = icmp sgt i32 %1, 0                      ; 4 uses
  %wide.trip.count.i74 = zext i32 %1 to i64       ; 9 uses
  %i.ec = sext i32 %i.dw to i64
  %i.ed = shl nsw i64 %i.ec, 2                    ; 6 uses
  %wide.trip.count.i80 = zext i32 %i.dw to i64    ; 11 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.dw, i32 1)
  %i.ee = add nsw i64 %wide.trip.count.i74, -1    ; 4 uses
  %i.ef = add nsw i64 %wide.trip.count.i80, -1    ; 2 uses
  %xtraiter333 = and i64 %wide.trip.count.i74, 1
  %i.eg = icmp eq i64 %i.ee, 0
  %unroll_iter338 = and i64 %wide.trip.count.i74, 2147483646
  %lcmp.mod335.not = icmp eq i64 %xtraiter333, 0
  %lcmp.mod337 = trunc i32 %1 to i1
  %min.iters.check295 = icmp ult i32 %1, 3
  %n.vec297 = and i64 %wide.trip.count.i80, 4294967288
  %xtraiter341 = and i64 %wide.trip.count.i74, 1
  %i.eh = icmp eq i64 %i.ee, 0
  %unroll_iter345 = and i64 %wide.trip.count.i74, 2147483646
  %lcmp.mod343.not = icmp eq i64 %xtraiter341, 0
  %lcmp.mod344 = trunc i32 %1 to i1
  %xtraiter347 = and i64 %wide.trip.count.i80, 1
  %i.ei = icmp eq i64 %i.ef, 0
  %unroll_iter352 = and i64 %wide.trip.count.i80, 4294967294
  %lcmp.mod349.not = icmp eq i64 %xtraiter347, 0
  %lcmp.mod351 = icmp eq i32 %1, 0
  %xtraiter354 = and i64 %wide.trip.count.i74, 1
  %i.ej = icmp eq i64 %i.ee, 0
  %unroll_iter359 = and i64 %wide.trip.count.i74, 2147483646
  %lcmp.mod356.not = icmp eq i64 %xtraiter354, 0
  %lcmp.mod358 = trunc i32 %1 to i1
  %min.iters.check282 = icmp ult i32 %1, 3
  %n.vec284 = and i64 %wide.trip.count.i80, 4294967288
  %xtraiter362 = and i64 %wide.trip.count.i74, 1
  %i.ek = icmp eq i64 %i.ee, 0
  %unroll_iter366 = and i64 %wide.trip.count.i74, 2147483646
  %lcmp.mod364.not = icmp eq i64 %xtraiter362, 0
  %lcmp.mod365 = trunc i32 %1 to i1
  %xtraiter368 = and i64 %wide.trip.count.i80, 1
  %i.el = icmp eq i64 %i.ef, 0
  %unroll_iter373 = and i64 %wide.trip.count.i80, 4294967294
  %lcmp.mod370.not = icmp eq i64 %xtraiter368, 0
  %lcmp.mod372 = icmp eq i32 %1, 0
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph153, %._crit_edge148
  %.0151 = phi i32 [ 0, %.lr.ph153 ], [ %i.lq, %._crit_edge148 ] ; 7 uses
  %.037150 = phi i32 [ -1, %.lr.ph153 ], [ %.3.lcssa, %._crit_edge148 ] ; 2 uses
  br i1 %i.eb, label %.lr.ph.i75.preheader, label %Extra_TruthPolarize.exit

.lr.ph.i75.preheader:                             ; preds = %bb.j
  br i1 %i.eg, label %.lr.ph.i75.epil.preheader, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.preheader, %bb.m
  %indvars.iv.i76 = phi i64 [ %indvars.iv.next.i77.1, %bb.m ], [ 0, %.lr.ph.i75.preheader ] ; 4 uses
  %.01920.i = phi i32 [ %.1.i.1, %bb.m ], [ %0, %.lr.ph.i75.preheader ] ; 3 uses
  %niter339 = phi i64 [ %niter339.next.1, %bb.m ], [ 0, %.lr.ph.i75.preheader ]
  %i.em = trunc nuw nsw i64 %indvars.iv.i76 to i32
  %i.en = shl nuw i32 1, %i.em                    ; 3 uses
  %i.eo = and i32 %i.en, %.0151
  %.not.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i, label %.lr.ph.i75.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i75
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.i76
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !17 ; 2 uses
  %i.er = xor i32 %i.eq, -1
  %i.es = and i32 %.01920.i, %i.er
  %i.et = and i32 %i.eq, %.01920.i
  %i.eu = shl i32 %i.es, %i.en
  %i.ev = lshr i32 %i.et, %i.en
  %i.ew = or i32 %i.eu, %i.ev
  br label %.lr.ph.i75.1

.lr.ph.i75.1:                                     ; preds = %bb.k, %.lr.ph.i75
  %.1.i = phi i32 [ %i.ew, %bb.k ], [ %.01920.i, %.lr.ph.i75 ] ; 3 uses
  %indvars.iv.next.i77 = or disjoint i64 %indvars.iv.i76, 1 ; 2 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv.next.i77 to i32
  %i.ey = shl nuw i32 1, %i.ex                    ; 3 uses
  %i.ez = and i32 %i.ey, %.0151
  %.not.i.1 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i75.1
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.next.i77
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !17 ; 2 uses
  %i.fc = xor i32 %i.fb, -1
  %i.fd = and i32 %.1.i, %i.fc
  %i.fe = and i32 %i.fb, %.1.i
  %i.ff = shl i32 %i.fd, %i.ey
  %i.fg = lshr i32 %i.fe, %i.ey
  %i.fh = or i32 %i.ff, %i.fg
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i75.1
  %.1.i.1 = phi i32 [ %i.fh, %bb.l ], [ %.1.i, %.lr.ph.i75.1 ] ; 3 uses
  %indvars.iv.next.i77.1 = add nuw nsw i64 %indvars.iv.i76, 2 ; 2 uses
  %niter339.next.1 = add i64 %niter339, 2         ; 2 uses
  %niter339.ncmp.1 = icmp eq i64 %niter339.next.1, %unroll_iter338
  br i1 %niter339.ncmp.1, label %Extra_TruthPolarize.exit.loopexit.unr-lcssa, label %.lr.ph.i75, !llvm.loop !45

Extra_TruthPolarize.exit.loopexit.unr-lcssa:      ; preds = %bb.m
  br i1 %lcmp.mod335.not, label %Extra_TruthPolarize.exit, label %.lr.ph.i75.epil.preheader

.lr.ph.i75.epil.preheader:                        ; preds = %Extra_TruthPolarize.exit.loopexit.unr-lcssa, %.lr.ph.i75.preheader
  %indvars.iv.i76.epil.init = phi i64 [ 0, %.lr.ph.i75.preheader ], [ %indvars.iv.next.i77.1, %Extra_TruthPolarize.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01920.i.epil.init = phi i32 [ %0, %.lr.ph.i75.preheader ], [ %.1.i.1, %Extra_TruthPolarize.exit.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod337)
  %i.fi = trunc nuw nsw i64 %indvars.iv.i76.epil.init to i32
  %i.fj = shl nuw i32 1, %i.fi                    ; 3 uses
  %i.fk = and i32 %i.fj, %.0151
  %.not.i.epil = icmp eq i32 %i.fk, 0
  br i1 %.not.i.epil, label %Extra_TruthPolarize.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i75.epil.preheader
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.i76.epil.init
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !17 ; 2 uses
  %i.fn = xor i32 %i.fm, -1
  %i.fo = and i32 %.01920.i.epil.init, %i.fn
  %i.fp = and i32 %i.fm, %.01920.i.epil.init
  %i.fq = shl i32 %i.fo, %i.fj
  %i.fr = lshr i32 %i.fp, %i.fj
  %i.fs = or i32 %i.fq, %i.fr
  br label %Extra_TruthPolarize.exit

Extra_TruthPolarize.exit:                         ; preds = %Extra_TruthPolarize.exit.loopexit.unr-lcssa, %bb.n, %.lr.ph.i75.epil.preheader, %bb.j
  %.019.lcssa.i = phi i32 [ %0, %bb.j ], [ %.1.i.1, %Extra_TruthPolarize.exit.loopexit.unr-lcssa ], [ %i.fs, %bb.n ], [ %.01920.i.epil.init, %.lr.ph.i75.epil.preheader ] ; 3 uses
  %2 = load i32, ptr @Extra_TruthCanonNPN.nPerms, align 4, !tbaa !17
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph.i81.preheader, label %._crit_edge

.lr.ph.i81.preheader:                             ; preds = %Extra_TruthPolarize.exit, %Extra_TruthPermute.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Extra_TruthPermute.exit ], [ 0, %Extra_TruthPolarize.exit ] ; 2 uses
  %.138143 = phi i32 [ %spec.select, %Extra_TruthPermute.exit ], [ %.037150, %Extra_TruthPolarize.exit ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !35 ; 3 uses
  %i.fv = tail call noalias ptr @malloc(i64 noundef %i.ed) #38 ; 5 uses
  %i.fw = tail call noalias ptr @malloc(i64 noundef %i.ed) #38 ; 6 uses
  br i1 %min.iters.check295, label %.lr.ph.i81, label %vector.body298

vector.body298:                                   ; preds = %.lr.ph.i81.preheader, %vector.body298
  %index299 = phi i64 [ %index.next302, %vector.body298 ], [ 0, %.lr.ph.i81.preheader ] ; 2 uses
  %vec.ind300 = phi <4 x i32> [ %vec.ind.next303, %vector.body298 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.i81.preheader ] ; 3 uses
  %step.add301 = add <4 x i32> %vec.ind300, splat (i32 4)
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %index299 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <4 x i32> %vec.ind300, ptr %i.fx, align 4, !tbaa !17
  store <4 x i32> %step.add301, ptr %i.fy, align 4, !tbaa !17
  %index.next302 = add nuw i64 %index299, 8       ; 2 uses
  %vec.ind.next303 = add <4 x i32> %vec.ind300, splat (i32 8)
  %i.fz = icmp eq i64 %index.next302, %n.vec297
  br i1 %i.fz, label %._crit_edge.i, label %vector.body298, !llvm.loop !105

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.preheader, %.lr.ph.i81
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i83, %.lr.ph.i81 ], [ 0, %.lr.ph.i81.preheader ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.i82
  %i.gb = trunc nuw nsw i64 %indvars.iv.i82 to i32
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !17
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i82, 1 ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %indvars.iv.next.i83, %wide.trip.count.i80
  br i1 %exitcond.not.i84, label %._crit_edge.i, label %.lr.ph.i81, !llvm.loop !106

._crit_edge.i:                                    ; preds = %vector.body298, %.lr.ph.i81
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fw, i8 0, i64 %i.ed, i1 false)
  br i1 %i.eb, label %.preheader.i.i, label %.lr.ph53.i.preheader

.preheader.i.i:                                   ; preds = %._crit_edge.i, %._crit_edge.i.i
  %indvars.iv19.i.i = phi i64 [ %indvars.iv.next20.i.i, %._crit_edge.i.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv19.i.i
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv19.i.i ; 6 uses
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !17 ; 3 uses
  br i1 %i.eh, label %.epil.preheader340, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i, %bb.r
  %indvars.iv.i.i86 = phi i64 [ %indvars.iv.next.i.i87.1, %bb.r ], [ 0, %.preheader.i.i ] ; 4 uses
  %niter346 = phi i64 [ %niter346.next.1, %bb.r ], [ 0, %.preheader.i.i ]
  %i.gf = trunc nuw nsw i64 %indvars.iv.i.i86 to i32
  %i.gg = shl nuw i32 1, %i.gf
  %i.gh = and i32 %i.gg, %i.ge
  %.not.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i.new
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fu, i64 %indvars.iv.i.i86
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !19
  %i.gk = zext nneg i8 %i.gj to i32
  %i.gl = shl nuw i32 1, %i.gk
  %i.gm = load i32, ptr %i.gd, align 4, !tbaa !17
  %i.gn = or i32 %i.gl, %i.gm
  store i32 %i.gn, ptr %i.gd, align 4, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader.i.i.new
  %indvars.iv.next.i.i87 = or disjoint i64 %indvars.iv.i.i86, 1 ; 2 uses
  %i.go = trunc nuw nsw i64 %indvars.iv.next.i.i87 to i32
  %i.gp = shl nuw i32 1, %i.go
  %i.gq = and i32 %i.gp, %i.ge
  %.not.i.i.1 = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fu, i64 %indvars.iv.next.i.i87
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !19
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = shl nuw i32 1, %i.gt
  %i.gv = load i32, ptr %i.gd, align 4, !tbaa !17
  %i.gw = or i32 %i.gu, %i.gv
  store i32 %i.gw, ptr %i.gd, align 4, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.next.i.i87.1 = add nuw nsw i64 %indvars.iv.i.i86, 2 ; 2 uses
  %niter346.next.1 = add i64 %niter346, 2         ; 2 uses
  %niter346.ncmp.1 = icmp eq i64 %niter346.next.1, %unroll_iter345
  br i1 %niter346.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.preheader.i.i.new, !llvm.loop !40

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.r
  br i1 %lcmp.mod343.not, label %._crit_edge.i.i, label %.epil.preheader340

.epil.preheader340:                               ; preds = %._crit_edge.i.i.unr-lcssa, %.preheader.i.i
  %indvars.iv.i.i86.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i87.1, %._crit_edge.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod344)
  %i.gx = trunc nuw nsw i64 %indvars.iv.i.i86.epil.init to i32
  %i.gy = shl nuw i32 1, %i.gx
  %i.gz = and i32 %i.gy, %i.ge
  %.not.i.i.epil = icmp eq i32 %i.gz, 0
  br i1 %.not.i.i.epil, label %._crit_edge.i.i, label %bb.s

bb.s:                                             ; preds = %.epil.preheader340
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fu, i64 %indvars.iv.i.i86.epil.init
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !19
  %i.hc = zext nneg i8 %i.hb to i32
  %i.hd = shl nuw i32 1, %i.hc
  %i.he = load i32, ptr %i.gd, align 4, !tbaa !17
  %i.hf = or i32 %i.hd, %i.he
  store i32 %i.hf, ptr %i.gd, align 4, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.epil.preheader340, %bb.s, %._crit_edge.i.i.unr-lcssa
  %indvars.iv.next20.i.i = add nuw nsw i64 %indvars.iv19.i.i, 1 ; 2 uses
  %exitcond23.not.i.i = icmp eq i64 %indvars.iv.next20.i.i, %wide.trip.count.i80
  br i1 %exitcond23.not.i.i, label %.lr.ph53.i.preheader, label %.preheader.i.i, !llvm.loop !41

.lr.ph53.i.preheader:                             ; preds = %._crit_edge.i.i, %._crit_edge.i
  br i1 %i.ei, label %.lr.ph53.i.epil.preheader, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.preheader, %bb.v
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i.1, %bb.v ], [ 0, %.lr.ph53.i.preheader ] ; 4 uses
  %.251.i = phi i32 [ %.3.i.1, %bb.v ], [ 0, %.lr.ph53.i.preheader ] ; 2 uses
  %niter353 = phi i64 [ %niter353.next.1, %bb.v ], [ 0, %.lr.ph53.i.preheader ]
  %i.hg = trunc nuw nsw i64 %indvars.iv66.i to i32
  %i.hh = shl nuw i32 1, %i.hg
  %i.hi = and i32 %i.hh, %.019.lcssa.i
  %.not41.i = icmp eq i32 %i.hi, 0
  br i1 %.not41.i, label %.lr.ph53.i.1, label %bb.t

bb.t:                                             ; preds = %.lr.ph53.i
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv66.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !17
  %i.hl = shl nuw i32 1, %i.hk
  %i.hm = or i32 %i.hl, %.251.i
  br label %.lr.ph53.i.1

.lr.ph53.i.1:                                     ; preds = %bb.t, %.lr.ph53.i
  %.3.i = phi i32 [ %i.hm, %bb.t ], [ %.251.i, %.lr.ph53.i ] ; 2 uses
  %indvars.iv.next67.i = or disjoint i64 %indvars.iv66.i, 1 ; 2 uses
  %i.hn = trunc nuw nsw i64 %indvars.iv.next67.i to i32
  %i.ho = shl nuw i32 1, %i.hn
  %i.hp = and i32 %i.ho, %.019.lcssa.i
  %.not41.i.1 = icmp eq i32 %i.hp, 0
  br i1 %.not41.i.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph53.i.1
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv.next67.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !17
  %i.hs = shl nuw i32 1, %i.hr
  %i.ht = or i32 %i.hs, %.3.i
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph53.i.1
  %.3.i.1 = phi i32 [ %i.ht, %bb.u ], [ %.3.i, %.lr.ph53.i.1 ] ; 3 uses
  %indvars.iv.next67.i.1 = add nuw nsw i64 %indvars.iv66.i, 2 ; 2 uses
  %niter353.next.1 = add i64 %niter353, 2         ; 2 uses
  %niter353.ncmp.1 = icmp eq i64 %niter353.next.1, %unroll_iter352
  br i1 %niter353.ncmp.1, label %.loopexit.i.unr-lcssa, label %.lr.ph53.i, !llvm.loop !44

.loopexit.i.unr-lcssa:                            ; preds = %bb.v
  br i1 %lcmp.mod349.not, label %.loopexit.i, label %.lr.ph53.i.epil.preheader

.lr.ph53.i.epil.preheader:                        ; preds = %.loopexit.i.unr-lcssa, %.lr.ph53.i.preheader
  %indvars.iv66.i.epil.init = phi i64 [ 0, %.lr.ph53.i.preheader ], [ %indvars.iv.next67.i.1, %.loopexit.i.unr-lcssa ] ; 2 uses
  %.251.i.epil.init = phi i32 [ 0, %.lr.ph53.i.preheader ], [ %.3.i.1, %.loopexit.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod351)
  %i.hu = trunc nuw nsw i64 %indvars.iv66.i.epil.init to i32
  %i.hv = shl nuw i32 1, %i.hu
  %i.hw = and i32 %i.hv, %.019.lcssa.i
  %.not41.i.epil = icmp eq i32 %i.hw, 0
  br i1 %.not41.i.epil, label %.loopexit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph53.i.epil.preheader
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv66.i.epil.init
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !17
  %i.hz = shl nuw i32 1, %i.hy
  %i.ia = or i32 %i.hz, %.251.i.epil.init
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph53.i.epil.preheader, %bb.w, %.loopexit.i.unr-lcssa
  %.3.i.lcssa = phi i32 [ %.3.i.1, %.loopexit.i.unr-lcssa ], [ %i.ia, %bb.w ], [ %.251.i.epil.init, %.lr.ph53.i.epil.preheader ]
  %.not42.i = icmp eq ptr %i.fv, null
  br i1 %.not42.i, label %Extra_TruthPermute.exit, label %bb.x

bb.x:                                             ; preds = %.loopexit.i
  tail call void @free(ptr noundef nonnull %i.fv) #37
  br label %Extra_TruthPermute.exit

Extra_TruthPermute.exit:                          ; preds = %.loopexit.i, %bb.x
  tail call void @free(ptr noundef nonnull %i.fw) #37
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.138143, i32 %.3.i.lcssa) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %4 = load i32, ptr @Extra_TruthCanonNPN.nPerms, align 4, !tbaa !17 ; 2 uses
  %5 = sext i32 %4 to i64
  %6 = icmp slt i64 %indvars.iv.next, %5
  br i1 %6, label %.lr.ph.i81.preheader, label %._crit_edge.loopexit, !llvm.loop !107

._crit_edge.loopexit:                             ; preds = %Extra_TruthPermute.exit
  %7 = icmp sgt i32 %4, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %Extra_TruthPolarize.exit
  %8 = phi i1 [ false, %Extra_TruthPolarize.exit ], [ %7, %._crit_edge.loopexit ]
  %.138.lcssa = phi i32 [ %.037150, %Extra_TruthPolarize.exit ], [ %spec.select, %._crit_edge.loopexit ] ; 2 uses
  br i1 %i.eb, label %.lr.ph.i93.preheader, label %Extra_TruthPolarize.exit100

.lr.ph.i93.preheader:                             ; preds = %._crit_edge
  br i1 %i.ej, label %.lr.ph.i93.epil.preheader, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %.lr.ph.i93.preheader, %bb.aa
  %indvars.iv.i94 = phi i64 [ %indvars.iv.next.i98.1, %bb.aa ], [ 0, %.lr.ph.i93.preheader ] ; 4 uses
  %.01920.i95 = phi i32 [ %.1.i97.1, %bb.aa ], [ %i.ea, %.lr.ph.i93.preheader ] ; 3 uses
  %niter360 = phi i64 [ %niter360.next.1, %bb.aa ], [ 0, %.lr.ph.i93.preheader ]
  %i.ib = trunc nuw nsw i64 %indvars.iv.i94 to i32
  %i.ic = shl nuw i32 1, %i.ib                    ; 3 uses
  %i.id = and i32 %i.ic, %.0151
  %.not.i96 = icmp eq i32 %i.id, 0
  br i1 %.not.i96, label %.lr.ph.i93.1, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i93
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.i94
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !17 ; 2 uses
  %i.ig = xor i32 %i.if, -1
  %i.ih = and i32 %.01920.i95, %i.ig
  %i.ii = and i32 %i.if, %.01920.i95
  %i.ij = shl i32 %i.ih, %i.ic
  %i.ik = lshr i32 %i.ii, %i.ic
  %i.il = or i32 %i.ij, %i.ik
  br label %.lr.ph.i93.1

.lr.ph.i93.1:                                     ; preds = %bb.y, %.lr.ph.i93
  %.1.i97 = phi i32 [ %i.il, %bb.y ], [ %.01920.i95, %.lr.ph.i93 ] ; 3 uses
  %indvars.iv.next.i98 = or disjoint i64 %indvars.iv.i94, 1 ; 2 uses
  %i.im = trunc nuw nsw i64 %indvars.iv.next.i98 to i32
  %i.in = shl nuw i32 1, %i.im                    ; 3 uses
  %i.io = and i32 %i.in, %.0151
  %.not.i96.1 = icmp eq i32 %i.io, 0
  br i1 %.not.i96.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i93.1
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.next.i98
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !17 ; 2 uses
  %i.ir = xor i32 %i.iq, -1
  %i.is = and i32 %.1.i97, %i.ir
  %i.it = and i32 %i.iq, %.1.i97
  %i.iu = shl i32 %i.is, %i.in
  %i.iv = lshr i32 %i.it, %i.in
  %i.iw = or i32 %i.iu, %i.iv
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i93.1
  %.1.i97.1 = phi i32 [ %i.iw, %bb.z ], [ %.1.i97, %.lr.ph.i93.1 ] ; 3 uses
  %indvars.iv.next.i98.1 = add nuw nsw i64 %indvars.iv.i94, 2 ; 2 uses
  %niter360.next.1 = add i64 %niter360, 2         ; 2 uses
  %niter360.ncmp.1 = icmp eq i64 %niter360.next.1, %unroll_iter359
  br i1 %niter360.ncmp.1, label %Extra_TruthPolarize.exit100.loopexit.unr-lcssa, label %.lr.ph.i93, !llvm.loop !45

Extra_TruthPolarize.exit100.loopexit.unr-lcssa:   ; preds = %bb.aa
  br i1 %lcmp.mod356.not, label %Extra_TruthPolarize.exit100, label %.lr.ph.i93.epil.preheader

.lr.ph.i93.epil.preheader:                        ; preds = %Extra_TruthPolarize.exit100.loopexit.unr-lcssa, %.lr.ph.i93.preheader
  %indvars.iv.i94.epil.init = phi i64 [ 0, %.lr.ph.i93.preheader ], [ %indvars.iv.next.i98.1, %Extra_TruthPolarize.exit100.loopexit.unr-lcssa ] ; 2 uses
  %.01920.i95.epil.init = phi i32 [ %i.ea, %.lr.ph.i93.preheader ], [ %.1.i97.1, %Extra_TruthPolarize.exit100.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod358)
  %i.ix = trunc nuw nsw i64 %indvars.iv.i94.epil.init to i32
  %i.iy = shl nuw i32 1, %i.ix                    ; 3 uses
  %i.iz = and i32 %i.iy, %.0151
  %.not.i96.epil = icmp eq i32 %i.iz, 0
  br i1 %.not.i96.epil, label %Extra_TruthPolarize.exit100, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i93.epil.preheader
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr @Extra_TruthPolarize.Signs, i64 %indvars.iv.i94.epil.init
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !17 ; 2 uses
  %i.jc = xor i32 %i.jb, -1
  %i.jd = and i32 %.01920.i95.epil.init, %i.jc
  %i.je = and i32 %i.jb, %.01920.i95.epil.init
  %i.jf = shl i32 %i.jd, %i.iy
  %i.jg = lshr i32 %i.je, %i.iy
  %i.jh = or i32 %i.jf, %i.jg
  br label %Extra_TruthPolarize.exit100

Extra_TruthPolarize.exit100:                      ; preds = %Extra_TruthPolarize.exit100.loopexit.unr-lcssa, %bb.ab, %.lr.ph.i93.epil.preheader, %._crit_edge
  %.019.lcssa.i90 = phi i32 [ %i.ea, %._crit_edge ], [ %.1.i97.1, %Extra_TruthPolarize.exit100.loopexit.unr-lcssa ], [ %i.jh, %bb.ab ], [ %.01920.i95.epil.init, %.lr.ph.i93.epil.preheader ] ; 3 uses
  br i1 %8, label %.lr.ph.i105.preheader, label %._crit_edge148

.lr.ph.i105.preheader:                            ; preds = %Extra_TruthPolarize.exit100, %Extra_TruthPermute.exit137
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %Extra_TruthPermute.exit137 ], [ 0, %Extra_TruthPolarize.exit100 ] ; 2 uses
  %.3145 = phi i32 [ %spec.select43, %Extra_TruthPermute.exit137 ], [ %.138.lcssa, %Extra_TruthPolarize.exit100 ]
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv161
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !35 ; 3 uses
  %i.jk = tail call noalias ptr @malloc(i64 noundef %i.ed) #38 ; 5 uses
  %i.jl = tail call noalias ptr @malloc(i64 noundef %i.ed) #38 ; 6 uses
  br i1 %min.iters.check282, label %.lr.ph.i105, label %vector.body285

vector.body285:                                   ; preds = %.lr.ph.i105.preheader, %vector.body285
  %index286 = phi i64 [ %index.next289, %vector.body285 ], [ 0, %.lr.ph.i105.preheader ] ; 2 uses
  %vec.ind287 = phi <4 x i32> [ %vec.ind.next290, %vector.body285 ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.i105.preheader ] ; 3 uses
  %step.add288 = add <4 x i32> %vec.ind287, splat (i32 4)
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %index286 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store <4 x i32> %vec.ind287, ptr %i.jm, align 4, !tbaa !17
  store <4 x i32> %step.add288, ptr %i.jn, align 4, !tbaa !17
  %index.next289 = add nuw i64 %index286, 8       ; 2 uses
  %vec.ind.next290 = add <4 x i32> %vec.ind287, splat (i32 8)
  %i.jo = icmp eq i64 %index.next289, %n.vec284
  br i1 %i.jo, label %._crit_edge.i109, label %vector.body285, !llvm.loop !108

.lr.ph.i105:                                      ; preds = %.lr.ph.i105.preheader, %.lr.ph.i105
  %indvars.iv.i106 = phi i64 [ %indvars.iv.next.i107, %.lr.ph.i105 ], [ 0, %.lr.ph.i105.preheader ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv.i106
  %i.jq = trunc nuw nsw i64 %indvars.iv.i106 to i32
  store i32 %i.jq, ptr %i.jp, align 4, !tbaa !17
  %indvars.iv.next.i107 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %indvars.iv.next.i107, %wide.trip.count.i80
  br i1 %exitcond.not.i108, label %._crit_edge.i109, label %.lr.ph.i105, !llvm.loop !109

._crit_edge.i109:                                 ; preds = %vector.body285, %.lr.ph.i105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.jl, i8 0, i64 %i.ed, i1 false)
  br i1 %i.eb, label %.preheader.i.i127, label %.lr.ph53.i114.preheader

.preheader.i.i127:                                ; preds = %._crit_edge.i109, %._crit_edge.i.i133
  %indvars.iv19.i.i128 = phi i64 [ %indvars.iv.next20.i.i134, %._crit_edge.i.i133 ], [ 0, %._crit_edge.i109 ] ; 3 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv19.i.i128
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv19.i.i128 ; 6 uses
  %i.jt = load i32, ptr %i.jr, align 4, !tbaa !17 ; 3 uses
  br i1 %i.ek, label %.epil.preheader361, label %.preheader.i.i127.new

.preheader.i.i127.new:                            ; preds = %.preheader.i.i127, %bb.af
  %indvars.iv.i.i129 = phi i64 [ %indvars.iv.next.i.i131.1, %bb.af ], [ 0, %.preheader.i.i127 ] ; 4 uses
  %niter367 = phi i64 [ %niter367.next.1, %bb.af ], [ 0, %.preheader.i.i127 ]
  %i.ju = trunc nuw nsw i64 %indvars.iv.i.i129 to i32
  %i.jv = shl nuw i32 1, %i.ju
  %i.jw = and i32 %i.jv, %i.jt
  %.not.i.i130 = icmp eq i32 %i.jw, 0
  br i1 %.not.i.i130, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader.i.i127.new
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jj, i64 %indvars.iv.i.i129
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !19
  %i.jz = zext nneg i8 %i.jy to i32
  %i.ka = shl nuw i32 1, %i.jz
  %i.kb = load i32, ptr %i.js, align 4, !tbaa !17
  %i.kc = or i32 %i.ka, %i.kb
  store i32 %i.kc, ptr %i.js, align 4, !tbaa !17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i.i127.new
  %indvars.iv.next.i.i131 = or disjoint i64 %indvars.iv.i.i129, 1 ; 2 uses
  %i.kd = trunc nuw nsw i64 %indvars.iv.next.i.i131 to i32
  %i.ke = shl nuw i32 1, %i.kd
  %i.kf = and i32 %i.ke, %i.jt
  %.not.i.i130.1 = icmp eq i32 %i.kf, 0
  br i1 %.not.i.i130.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jj, i64 %indvars.iv.next.i.i131
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !19
  %i.ki = zext nneg i8 %i.kh to i32
  %i.kj = shl nuw i32 1, %i.ki
  %i.kk = load i32, ptr %i.js, align 4, !tbaa !17
  %i.kl = or i32 %i.kj, %i.kk
  store i32 %i.kl, ptr %i.js, align 4, !tbaa !17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %indvars.iv.next.i.i131.1 = add nuw nsw i64 %indvars.iv.i.i129, 2 ; 2 uses
  %niter367.next.1 = add i64 %niter367, 2         ; 2 uses
  %niter367.ncmp.1 = icmp eq i64 %niter367.next.1, %unroll_iter366
  br i1 %niter367.ncmp.1, label %._crit_edge.i.i133.unr-lcssa, label %.preheader.i.i127.new, !llvm.loop !40

._crit_edge.i.i133.unr-lcssa:                     ; preds = %bb.af
  br i1 %lcmp.mod364.not, label %._crit_edge.i.i133, label %.epil.preheader361

.epil.preheader361:                               ; preds = %._crit_edge.i.i133.unr-lcssa, %.preheader.i.i127
  %indvars.iv.i.i129.epil.init = phi i64 [ 0, %.preheader.i.i127 ], [ %indvars.iv.next.i.i131.1, %._crit_edge.i.i133.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod365)
  %i.km = trunc nuw nsw i64 %indvars.iv.i.i129.epil.init to i32
  %i.kn = shl nuw i32 1, %i.km
  %i.ko = and i32 %i.kn, %i.jt
  %.not.i.i130.epil = icmp eq i32 %i.ko, 0
  br i1 %.not.i.i130.epil, label %._crit_edge.i.i133, label %bb.ag

bb.ag:                                            ; preds = %.epil.preheader361
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jj, i64 %indvars.iv.i.i129.epil.init
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !19
  %i.kr = zext nneg i8 %i.kq to i32
  %i.ks = shl nuw i32 1, %i.kr
  %i.kt = load i32, ptr %i.js, align 4, !tbaa !17
  %i.ku = or i32 %i.ks, %i.kt
  store i32 %i.ku, ptr %i.js, align 4, !tbaa !17
  br label %._crit_edge.i.i133

._crit_edge.i.i133:                               ; preds = %.epil.preheader361, %bb.ag, %._crit_edge.i.i133.unr-lcssa
  %indvars.iv.next20.i.i134 = add nuw nsw i64 %indvars.iv19.i.i128, 1 ; 2 uses
  %exitcond23.not.i.i135 = icmp eq i64 %indvars.iv.next20.i.i134, %wide.trip.count.i80
  br i1 %exitcond23.not.i.i135, label %.lr.ph53.i114.preheader, label %.preheader.i.i127, !llvm.loop !41

.lr.ph53.i114.preheader:                          ; preds = %._crit_edge.i.i133, %._crit_edge.i109
  br i1 %i.el, label %.lr.ph53.i114.epil.preheader, label %.lr.ph53.i114

.lr.ph53.i114:                                    ; preds = %.lr.ph53.i114.preheader, %bb.aj
  %indvars.iv66.i115 = phi i64 [ %indvars.iv.next67.i119.1, %bb.aj ], [ 0, %.lr.ph53.i114.preheader ] ; 4 uses
  %.251.i116 = phi i32 [ %.3.i118.1, %bb.aj ], [ 0, %.lr.ph53.i114.preheader ] ; 2 uses
  %niter374 = phi i64 [ %niter374.next.1, %bb.aj ], [ 0, %.lr.ph53.i114.preheader ]
  %i.kv = trunc nuw nsw i64 %indvars.iv66.i115 to i32
  %i.kw = shl nuw i32 1, %i.kv
  %i.kx = and i32 %i.kw, %.019.lcssa.i90
  %.not41.i117 = icmp eq i32 %i.kx, 0
  br i1 %.not41.i117, label %.lr.ph53.i114.1, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph53.i114
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv66.i115
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !17
  %i.la = shl nuw i32 1, %i.kz
  %i.lb = or i32 %i.la, %.251.i116
  br label %.lr.ph53.i114.1

.lr.ph53.i114.1:                                  ; preds = %bb.ah, %.lr.ph53.i114
  %.3.i118 = phi i32 [ %i.lb, %bb.ah ], [ %.251.i116, %.lr.ph53.i114 ] ; 2 uses
  %indvars.iv.next67.i119 = or disjoint i64 %indvars.iv66.i115, 1 ; 2 uses
  %i.lc = trunc nuw nsw i64 %indvars.iv.next67.i119 to i32
  %i.ld = shl nuw i32 1, %i.lc
  %i.le = and i32 %i.ld, %.019.lcssa.i90
  %.not41.i117.1 = icmp eq i32 %i.le, 0
  br i1 %.not41.i117.1, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph53.i114.1
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv.next67.i119
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !17
  %i.lh = shl nuw i32 1, %i.lg
  %i.li = or i32 %i.lh, %.3.i118
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph53.i114.1
  %.3.i118.1 = phi i32 [ %i.li, %bb.ai ], [ %.3.i118, %.lr.ph53.i114.1 ] ; 3 uses
  %indvars.iv.next67.i119.1 = add nuw nsw i64 %indvars.iv66.i115, 2 ; 2 uses
  %niter374.next.1 = add i64 %niter374, 2         ; 2 uses
  %niter374.ncmp.1 = icmp eq i64 %niter374.next.1, %unroll_iter373
  br i1 %niter374.ncmp.1, label %.loopexit.i121.unr-lcssa, label %.lr.ph53.i114, !llvm.loop !44

.loopexit.i121.unr-lcssa:                         ; preds = %bb.aj
  br i1 %lcmp.mod370.not, label %.loopexit.i121, label %.lr.ph53.i114.epil.preheader

.lr.ph53.i114.epil.preheader:                     ; preds = %.loopexit.i121.unr-lcssa, %.lr.ph53.i114.preheader
  %indvars.iv66.i115.epil.init = phi i64 [ 0, %.lr.ph53.i114.preheader ], [ %indvars.iv.next67.i119.1, %.loopexit.i121.unr-lcssa ] ; 2 uses
  %.251.i116.epil.init = phi i32 [ 0, %.lr.ph53.i114.preheader ], [ %.3.i118.1, %.loopexit.i121.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod372)
  %i.lj = trunc nuw nsw i64 %indvars.iv66.i115.epil.init to i32
  %i.lk = shl nuw i32 1, %i.lj
  %i.ll = and i32 %i.lk, %.019.lcssa.i90
  %.not41.i117.epil = icmp eq i32 %i.ll, 0
  br i1 %.not41.i117.epil, label %.loopexit.i121, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph53.i114.epil.preheader
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv66.i115.epil.init
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !17
  %i.lo = shl nuw i32 1, %i.ln
  %i.lp = or i32 %i.lo, %.251.i116.epil.init
  br label %.loopexit.i121

.loopexit.i121:                                   ; preds = %.lr.ph53.i114.epil.preheader, %bb.ak, %.loopexit.i121.unr-lcssa
  %.3.i118.lcssa = phi i32 [ %.3.i118.1, %.loopexit.i121.unr-lcssa ], [ %i.lp, %bb.ak ], [ %.251.i116.epil.init, %.lr.ph53.i114.epil.preheader ]
  %.not42.i123 = icmp eq ptr %i.jk, null
  br i1 %.not42.i123, label %Extra_TruthPermute.exit137, label %bb.al

bb.al:                                            ; preds = %.loopexit.i121
  tail call void @free(ptr noundef nonnull %i.jk) #37
  br label %Extra_TruthPermute.exit137

Extra_TruthPermute.exit137:                       ; preds = %.loopexit.i121, %bb.al
  tail call void @free(ptr noundef nonnull %i.jl) #37
  %spec.select43 = tail call i32 @llvm.umin.i32(i32 %.3145, i32 %.3.i118.lcssa) ; 2 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %9 = load i32, ptr @Extra_TruthCanonNPN.nPerms, align 4, !tbaa !17
  %10 = sext i32 %9 to i64
  %11 = icmp slt i64 %indvars.iv.next162, %10
  br i1 %11, label %.lr.ph.i105.preheader, label %._crit_edge148, !llvm.loop !110

._crit_edge148:                                   ; preds = %Extra_TruthPermute.exit137, %Extra_TruthPolarize.exit100
  %.3.lcssa = phi i32 [ %.138.lcssa, %Extra_TruthPolarize.exit100 ], [ %spec.select43, %Extra_TruthPermute.exit137 ] ; 2 uses
  %i.lq = add nuw nsw i32 %.0151, 1               ; 2 uses
  %exitcond.not.a = icmp eq i32 %i.lq, %smax
  br i1 %exitcond.not.a, label %._crit_edge154, label %bb.j, !llvm.loop !111

._crit_edge154:                                   ; preds = %._crit_edge148, %bb.i
  %.037.lcssa = phi i32 [ -1, %bb.i ], [ %.3.lcssa, %._crit_edge148 ]
  ret i32 %.037.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Extra_Truth4VarNPN(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #14 {
Extra_ArrayAlloc.exit.i:
  %i.a = alloca [50 x i8], align 16               ; 4 uses
  %calloc191 = tail call dereferenceable_or_null(131072) ptr @calloc(i64 1, i64 131072) ; 7 uses
  %calloc192 = tail call dereferenceable_or_null(65536) ptr @calloc(i64 1, i64 65536) ; 7 uses
  %calloc193 = tail call dereferenceable_or_null(65536) ptr @calloc(i64 1, i64 65536) ; 6 uses
  %calloc194 = tail call dereferenceable_or_null(65536) ptr @calloc(i64 1, i64 65536) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.b = tail call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #38 ; 52 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr %i.c, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 204
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.l, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.n, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.p, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.r, ptr %i.s, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 228
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.t, ptr %i.u, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.v, ptr %i.w, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 236
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.x, ptr %i.y, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 252
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.al, ptr %i.am, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.at, ptr %i.au, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 284
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !26
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %i.a, align 16, !tbaa !19
  call fastcc void @Extra_Permutations_rec(ptr noundef nonnull %i.b, i32 noundef 24, i32 noundef 4, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.a

bb.a:                                             ; preds = %Extra_ArrayAlloc.exit.i, %.loopexit
  %indvars.iv182 = phi i64 [ 1, %Extra_ArrayAlloc.exit.i ], [ %indvars.iv.next183, %.loopexit ] ; 7 uses
  %.0108175 = phi i8 [ 1, %Extra_ArrayAlloc.exit.i ], [ %.1109, %.loopexit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %calloc191, i64 %indvars.iv182
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !112 ; 2 uses
  %.not125 = icmp eq i16 %i.ay, 0
  br i1 %.not125, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %calloc194, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %calloc194, i64 %indvars.iv182
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !19
  %i.bd = and i64 %indvars.iv182, 4294967295
  %i.be = xor i64 %i.bd, 65535
  %i.bf = getelementptr inbounds nuw i8, ptr %calloc194, i64 %i.be
  store i8 %i.bb, ptr %i.bf, align 1, !tbaa !19
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %calloc194, i64 %indvars.iv182
  store i8 %.0108175, ptr %i.bg, align 1, !tbaa !19
  %i.bh = trunc nuw nsw i64 %indvars.iv182 to i32 ; 4 uses
  %i.bi = trunc i64 %indvars.iv182 to i16         ; 4 uses
  %i.bj = xor i32 %i.bh, 65535                    ; 3 uses
  %i.bk = shl i32 %i.bh, 1
  %i.bl = and i32 %i.bk, -1431655766
  %i.bm = lshr i32 %i.bh, 1
  %i.bn = and i32 %i.bm, 1431655765
  %i.bo = or disjoint i32 %i.bl, %i.bn
  %i.bp = shl i32 %i.bj, 1
  %i.bq = and i32 %i.bp, -1431655766
  %i.br = lshr i32 %i.bj, 1
  %i.bs = and i32 %i.br, 1431655765
  %i.bt = or disjoint i32 %i.bq, %i.bs
  br label %.lr.ph.i126.preheader

.lr.ph.i126.preheader:                            ; preds = %bb.c, %bb.bf
  %.0107173 = phi i32 [ 0, %bb.c ], [ %i.ng, %bb.bf ] ; 6 uses
  %i.bu = and i32 %.0107173, 1
  %.not.i = icmp eq i32 %i.bu, 0                  ; 2 uses
  %spec.select = select i1 %.not.i, i32 %i.bh, i32 %i.bo ; 3 uses
  %i.bv = and i32 %.0107173, 2
  %.not.i.1 = icmp eq i32 %i.bv, 0                ; 2 uses
  br i1 %.not.i.1, label %.lr.ph.i126.2, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i126.preheader
  %i.bw = shl i32 %spec.select, 2
  %i.bx = and i32 %i.bw, -858993460
  %i.by = lshr i32 %spec.select, 2
  %i.bz = and i32 %i.by, 858993459
  %i.ca = or disjoint i32 %i.bx, %i.bz
  br label %.lr.ph.i126.2

.lr.ph.i126.2:                                    ; preds = %bb.d, %.lr.ph.i126.preheader
  %.1.i.1 = phi i32 [ %i.ca, %bb.d ], [ %spec.select, %.lr.ph.i126.preheader ] ; 3 uses
  %i.cb = and i32 %.0107173, 4
  %.not.i.2 = icmp eq i32 %i.cb, 0                ; 2 uses
  br i1 %.not.i.2, label %.lr.ph.i126.3, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i126.2
  %i.cc = shl i32 %.1.i.1, 4
  %i.cd = and i32 %i.cc, -252645136
  %i.ce = lshr i32 %.1.i.1, 4
  %i.cf = and i32 %i.ce, 252645135
  %i.cg = or disjoint i32 %i.cd, %i.cf
  br label %.lr.ph.i126.3

.lr.ph.i126.3:                                    ; preds = %bb.e, %.lr.ph.i126.2
  %.1.i.2 = phi i32 [ %i.cg, %bb.e ], [ %.1.i.1, %.lr.ph.i126.2 ] ; 3 uses
  %i.ch = and i32 %.0107173, 8
  %.not.i.3 = icmp eq i32 %i.ch, 0                ; 2 uses
  br i1 %.not.i.3, label %Extra_TruthPolarize.exit.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i126.3
  %i.ci = shl i32 %.1.i.2, 8
  %i.cj = and i32 %i.ci, -16711936
  %i.ck = lshr i32 %.1.i.2, 8
  %i.cl = and i32 %i.ck, 16711935
  %i.cm = or disjoint i32 %i.cj, %i.cl
  br label %Extra_TruthPolarize.exit.preheader

Extra_TruthPolarize.exit.preheader:               ; preds = %bb.f, %.lr.ph.i126.3
  %.1.i.3 = phi i32 [ %i.cm, %bb.f ], [ %.1.i.2, %.lr.ph.i126.3 ]
  %i.cn = trunc nuw nsw i32 %.0107173 to i8       ; 3 uses
  %i.co = or disjoint i8 %i.cn, 16                ; 2 uses
  %i.cp = insertelement <16 x i32> poison, i32 %.1.i.3, i64 0
  %i.cq = shufflevector <16 x i32> %i.cp, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cr = and <16 x i32> %i.cq, <i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1>
  %i.cs = icmp eq <16 x i32> %i.cr, zeroinitializer ; 16 uses
  %i.ct = extractelement <16 x i1> %i.cs, i64 0
  %i.cu = extractelement <16 x i1> %i.cs, i64 1
  %i.cv = extractelement <16 x i1> %i.cs, i64 2
  %i.cw = extractelement <16 x i1> %i.cs, i64 3
  %i.cx = extractelement <16 x i1> %i.cs, i64 4
  %i.cy = extractelement <16 x i1> %i.cs, i64 5
  %i.cz = extractelement <16 x i1> %i.cs, i64 6
  %i.da = extractelement <16 x i1> %i.cs, i64 7
  %i.db = extractelement <16 x i1> %i.cs, i64 8
  %i.dc = extractelement <16 x i1> %i.cs, i64 9
  %i.dd = extractelement <16 x i1> %i.cs, i64 10
end_hunk_2
