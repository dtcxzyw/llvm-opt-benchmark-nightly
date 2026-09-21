Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hnsw?download=true
inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@vectors_distance_bin:bb.a
  %i.y = add i32 %.0.i.i, %.01112.i               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !102

hnsw_vectors_distance_bin.exit:                   ; preds = %bb.f, %._crit_edge.loopexit.i
  %.011.lcssa.i = phi float [ 0.000000e+00, %bb.f ], [ %i.o, %._crit_edge.loopexit.i ]
  %i.z = uitofp i32 %2 to float
  %i.aa = fdiv float %.011.lcssa.i, %i.z
  br label %bb.k

bb.k:                                             ; preds = %hnsw_vectors_distance_bin.exit, %bb.e, %bb.c
  %.0 = phi float [ %i.d, %bb.c ], [ %i.h, %bb.e ], [ %i.aa, %hnsw_vectors_distance_bin.exit ]
  ret float %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc float @vectors_distance_bin_avx512_vpopcnt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 512, 0) %2) unnamed_addr #12 {
bb.a:
  %i.a = add i32 %2, 63                           ; 2 uses
  %i.b = lshr i32 %i.a, 6                         ; 3 uses
  %i.c = icmp ugt i32 %i.a, 511
  br i1 %i.c, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.02739 = phi <8 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.k, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.f = load <8 x i64>, ptr %i.e, align 1, !tbaa !43
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = load <8 x i64>, ptr %i.g, align 1, !tbaa !43
  %i.i = xor <8 x i64> %i.h, %i.f
  %i.j = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.i)
  %i.k = add <8 x i64> %i.j, %.02739              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.l = or disjoint i64 %indvars.iv.next, 7
  %i.m = icmp samesign ult i64 %i.l, %i.d
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.o = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.k)
  %i.p = trunc i64 %i.o to i32
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.126 = phi i32 [ %i.n, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.0 = phi i32 [ %i.p, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %i.q = icmp samesign ult i32 %.126, %i.b
  br i1 %i.q, label %iter.check, label %._crit_edge46

iter.check:                                       ; preds = %bb.b
  %i.r = zext nneg i32 %.126 to i64               ; 6 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %i.s = sub nsw i64 %wide.trip.count, %i.r       ; 7 uses
  %min.iters.check = icmp ult i64 %i.s, 8
  br i1 %min.iters.check, label %.lr.ph45.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check57 = icmp ult i64 %i.s, 32
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.s, 24
  %n.vec = and i64 %i.s, -32                      ; 4 uses
  %i.u = add nsw i64 %n.vec, %i.r
  %i.v = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.v, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi58 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi59 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi60 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %i.w = add nuw i64 %index, %i.r                 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %wide.load = load <8 x i64>, ptr %i.x, align 8, !tbaa !27
  %wide.load61 = load <8 x i64>, ptr %i.y, align 8, !tbaa !27
  %wide.load62 = load <8 x i64>, ptr %i.z, align 8, !tbaa !27
  %wide.load63 = load <8 x i64>, ptr %i.aa, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.w ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %wide.load64 = load <8 x i64>, ptr %i.ab, align 8, !tbaa !27
  %wide.load65 = load <8 x i64>, ptr %i.ac, align 8, !tbaa !27
  %wide.load66 = load <8 x i64>, ptr %i.ad, align 8, !tbaa !27
  %wide.load67 = load <8 x i64>, ptr %i.ae, align 8, !tbaa !27
  %i.af = xor <8 x i64> %wide.load64, %wide.load
  %i.ag = xor <8 x i64> %wide.load65, %wide.load61
  %i.ah = xor <8 x i64> %wide.load66, %wide.load62
  %i.ai = xor <8 x i64> %wide.load67, %wide.load63
  %i.aj = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.af)
  %i.ak = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.ag)
  %i.al = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.ah)
  %i.am = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.ai)
  %i.an = trunc nuw nsw <8 x i64> %i.aj to <8 x i32>
  %i.ao = trunc nuw nsw <8 x i64> %i.ak to <8 x i32>
  %i.ap = trunc nuw nsw <8 x i64> %i.al to <8 x i32>
  %i.aq = trunc nuw nsw <8 x i64> %i.am to <8 x i32>
  %i.ar = add <8 x i32> %vec.phi, %i.an           ; 2 uses
  %i.as = add <8 x i32> %vec.phi58, %i.ao         ; 2 uses
  %i.at = add <8 x i32> %vec.phi59, %i.ap         ; 2 uses
  %i.au = add <8 x i32> %vec.phi60, %i.aq         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.as, %i.ar
  %bin.rdx68 = add <8 x i32> %i.at, %bin.rdx
  %bin.rdx69 = add <8 x i32> %i.au, %bin.rdx68
  %i.aw = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx69) ; 3 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge46, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph45.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.aw, %vec.epilog.iter.check ], [ %.0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.s, -8                     ; 3 uses
  %i.ax = add nsw i64 %n.vec70, %i.r
  %i.ay = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next75, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi72 = phi <8 x i32> [ %i.ay, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %i.az = add nuw i64 %index71, %i.r              ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.az
  %wide.load73 = load <8 x i64>, ptr %i.ba, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.az
  %wide.load74 = load <8 x i64>, ptr %i.bb, align 8, !tbaa !27
  %i.bc = xor <8 x i64> %wide.load74, %wide.load73
  %i.bd = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.bc)
  %i.be = trunc nuw nsw <8 x i64> %i.bd to <8 x i32>
  %i.bf = add <8 x i32> %vec.phi72, %i.be         ; 2 uses
  %index.next75 = add nuw i64 %index71, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bh = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bf) ; 2 uses
  %cmp.n76 = icmp eq i64 %i.s, %n.vec70
  br i1 %cmp.n76, label %._crit_edge46, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv51.ph = phi i64 [ %i.r, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.143.ph = phi i32 [ %.0, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %.lr.ph45
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph45 ], [ %indvars.iv51.ph, %.lr.ph45.preheader ] ; 3 uses
  %.143 = phi i32 [ %i.bp, %.lr.ph45 ], [ %.143.ph, %.lr.ph45.preheader ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv51
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv51
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !27
  %i.bm = xor i64 %i.bl, %i.bj
  %i.bn = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bm)
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = add i32 %.143, %i.bo                    ; 2 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge46, label %.lr.ph45, !llvm.loop !107

._crit_edge46:                                    ; preds = %.lr.ph45, %middle.block, %vec.epilog.middle.block, %bb.b
  %.1.lcssa = phi i32 [ %.0, %bb.b ], [ %i.bh, %vec.epilog.middle.block ], [ %i.aw, %middle.block ], [ %i.bp, %.lr.ph45 ]
  %i.bq = uitofp i32 %.1.lcssa to float
  %i.br = fmul nnan float %i.bq, 2.000000e+00
  %i.bs = uitofp i32 %2 to float
  %i.bt = fdiv float %i.br, %i.bs
  ret float %i.bt
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc float @vectors_distance_bin_avx2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 256, 0) %2) unnamed_addr #9 {
bb.a:
  %i.a = add i32 %2, 63                           ; 2 uses
  %i.b = lshr i32 %i.a, 6                         ; 3 uses
  %i.c = icmp ugt i32 %i.a, 255
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %slprdx.acc = phi <4 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %slprdx.acc70, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.f = load <4 x i64>, ptr %i.e, align 1, !tbaa !43
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.h = load <4 x i64>, ptr %i.g, align 1, !tbaa !43
  %i.i = xor <4 x i64> %i.h, %i.f
  %i.j = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.i)
  %3 = trunc nuw nsw <4 x i64> %i.j to <4 x i32>
  %slprdx.acc70 = add <4 x i32> %slprdx.acc, %3   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.k = or disjoint i64 %indvars.iv.next, 3
  %i.l = icmp samesign ult i64 %i.k, %i.d
  br i1 %i.l, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !108

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.m = trunc nuw nsw i64 %indvars.iv.next to i32
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %slprdx.acc70)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.127.a = phi i32 [ 0, %bb.a ], [ %4, %.loopexit.loopexit ] ; 4 uses
  %.1 = phi i32 [ 0, %bb.a ], [ %i.m, %.loopexit.loopexit ] ; 2 uses
  %i.n = icmp samesign ult i32 %.1, %i.b
  br i1 %i.n, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.loopexit
  %i.o = zext nneg i32 %.1 to i64                 ; 6 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %i.p = sub nsw i64 %wide.trip.count, %i.o       ; 7 uses
  %min.iters.check = icmp ult i64 %i.p, 4
  br i1 %min.iters.check, label %.lr.ph38.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i64 %i.p, 16
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.p, 12
  %n.vec = and i64 %i.p, -16                      ; 4 uses
  %i.r = add nsw i64 %n.vec, %i.o
  %i.s = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.127.a, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.s, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi49 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi50 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi51 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.t = add nuw i64 %index, %i.o                 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.t ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %wide.load = load <4 x i64>, ptr %i.u, align 8, !tbaa !27
  %wide.load52 = load <4 x i64>, ptr %i.v, align 8, !tbaa !27
  %wide.load53 = load <4 x i64>, ptr %i.w, align 8, !tbaa !27
  %wide.load54 = load <4 x i64>, ptr %i.x, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %wide.load55 = load <4 x i64>, ptr %i.y, align 8, !tbaa !27
  %wide.load56 = load <4 x i64>, ptr %i.z, align 8, !tbaa !27
  %wide.load57 = load <4 x i64>, ptr %i.aa, align 8, !tbaa !27
  %wide.load58 = load <4 x i64>, ptr %i.ab, align 8, !tbaa !27
  %i.ac = xor <4 x i64> %wide.load55, %wide.load
  %i.ad = xor <4 x i64> %wide.load56, %wide.load52
  %i.ae = xor <4 x i64> %wide.load57, %wide.load53
  %i.af = xor <4 x i64> %wide.load58, %wide.load54
  %i.ag = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ac)
  %i.ah = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ad)
  %i.ai = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ae)
  %i.aj = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.af)
  %i.ak = trunc nuw nsw <4 x i64> %i.ag to <4 x i32>
  %i.al = trunc nuw nsw <4 x i64> %i.ah to <4 x i32>
  %i.am = trunc nuw nsw <4 x i64> %i.ai to <4 x i32>
  %i.an = trunc nuw nsw <4 x i64> %i.aj to <4 x i32>
  %i.ao = add <4 x i32> %vec.phi, %i.ak           ; 2 uses
  %i.ap = add <4 x i32> %vec.phi49, %i.al         ; 2 uses
  %i.aq = add <4 x i32> %vec.phi50, %i.am         ; 2 uses
  %i.ar = add <4 x i32> %vec.phi51, %i.an         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %bin.rdx59 = add <4 x i32> %i.aq, %bin.rdx
  %bin.rdx60 = add <4 x i32> %i.ar, %bin.rdx59
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx60) ; 3 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph38.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.at, %vec.epilog.iter.check ], [ %.127.a, %vector.main.loop.iter.check ]
  %n.vec61 = and i64 %i.p, -4                     ; 3 uses
  %i.au = add nsw i64 %n.vec61, %i.o
  %i.av = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next66, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi63 = phi <4 x i32> [ %i.av, %vec.epilog.ph ], [ %i.bc, %vec.epilog.vector.body ]
  %i.aw = add nuw i64 %index62, %i.o              ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aw
  %wide.load64 = load <4 x i64>, ptr %i.ax, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aw
  %wide.load65 = load <4 x i64>, ptr %i.ay, align 8, !tbaa !27
  %i.az = xor <4 x i64> %wide.load65, %wide.load64
  %i.ba = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.az)
  %i.bb = trunc nuw nsw <4 x i64> %i.ba to <4 x i32>
  %i.bc = add <4 x i32> %vec.phi63, %i.bb         ; 2 uses
  %index.next66 = add nuw i64 %index62, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !110

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bc) ; 2 uses
  %cmp.n67 = icmp eq i64 %i.p, %n.vec61
  br i1 %cmp.n67, label %._crit_edge, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv43.ph = phi i64 [ %i.o, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  %.237.ph = phi i32 [ %.127.a, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ]
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.lr.ph38
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %.lr.ph38 ], [ %indvars.iv43.ph, %.lr.ph38.preheader ] ; 3 uses
  %.237 = phi i32 [ %i.bm, %.lr.ph38 ], [ %.237.ph, %.lr.ph38.preheader ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv43
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv43
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !27
  %i.bj = xor i64 %i.bi, %i.bg
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bj)
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = add i32 %.237, %i.bl                    ; 2 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph38, !llvm.loop !111

._crit_edge:                                      ; preds = %.lr.ph38, %middle.block, %vec.epilog.middle.block, %.loopexit
  %.2.lcssa = phi i32 [ %.127.a, %.loopexit ], [ %i.be, %vec.epilog.middle.block ], [ %i.at, %middle.block ], [ %i.bm, %.lr.ph38 ]
  %i.bn = uitofp i32 %.2.lcssa to float
  %i.bo = fmul nnan float %i.bn, 2.000000e+00
  %i.bp = uitofp i32 %2 to float
  %i.bq = fdiv float %i.bo, %i.bp
  ret float %i.bq
}

; Function Attrs: nounwind uwtable
define dso_local float @hnsw_distance(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !51
  %i.i = tail call float @vectors_distance_float(ptr noundef %i.d, ptr noundef %i.f, i32 noundef %i.h)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load float, ptr %i.p, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load float, ptr %i.r, align 8, !tbaa !39
  %i.t = tail call float @vectors_distance_q8(ptr noundef %i.k, ptr noundef %i.m, i32 noundef %i.o, float noundef %i.q, float noundef %i.s)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !51
  %i.aa = tail call float @vectors_distance_bin(ptr noundef %i.v, ptr noundef %i.x, i32 noundef %i.z)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi float [ %i.i, %bb.b ], [ %i.t, %bb.c ], [ %i.aa, %bb.d ]
  ret float %.0
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @quantize_to_q8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #14 {
bb.a:
  %.not43 = icmp eq i32 %2, 0
  br i1 %.not43, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64           ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.03037.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.2.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod58 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.c = load float, ptr %i.b, align 4, !tbaa !39 ; 3 uses
  %i.d = fcmp ogt float %i.c, %.03037.epil.init
  %.1.epil = select i1 %i.d, float %i.c, float %.03037.epil.init ; 2 uses
  %i.e = fneg float %i.c                          ; 2 uses
  %i.f = fcmp olt float %.1.epil, %i.e
  %.2.epil = select i1 %i.f, float %i.e, float %.1.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.2.lcssa = phi float [ %.2.1, %._crit_edge.unr-lcssa ], [ %.2.epil, %.lr.ph.epil.preheader ] ; 3 uses
  %i.g = fcmp oeq float %.2.lcssa, 0.000000e+00
  br i1 %i.g, label %._crit_edge.thread, label %.lr.ph41.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.03037 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.2.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.i = load float, ptr %i.h, align 4, !tbaa !39 ; 3 uses
  %i.j = fcmp ogt float %i.i, %.03037
  %.1 = select i1 %i.j, float %i.i, float %.03037 ; 2 uses
  %i.k = fneg float %i.i                          ; 2 uses
  %i.l = fcmp olt float %.1, %i.k
  %.2 = select i1 %i.l, float %i.k, float %.1     ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !39 ; 3 uses
  %i.p = fcmp ogt float %i.o, %.2
  %.1.1 = select i1 %i.p, float %i.o, float %.2   ; 2 uses
  %i.q = fneg float %i.o                          ; 2 uses
  %i.r = fcmp olt float %.1.1, %i.q
  %.2.1 = select i1 %i.r, float %i.q, float %.1.1 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !5

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.not36 = icmp eq ptr %3, null
  br i1 %.not36, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread
  store float 0.000000e+00, ptr %3, align 4, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.thread
  %i.s = zext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.s, i1 false)
  br label %bb.e

.lr.ph41.preheader:                               ; preds = %._crit_edge
  %i.t = fdiv float 1.270000e+02, %.2.lcssa       ; 4 uses
  %wide.trip.count49 = zext i32 %2 to i64
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph41.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph41.preheader
  %scevgep = getelementptr i8, ptr %1, i64 %wide.trip.count
  %i.u = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep55 = getelementptr i8, ptr %0, i64 %i.u
  %bound0 = icmp ult ptr %1, %scevgep55
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph41.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.t, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x float>, ptr %i.v, align 4, !tbaa !39, !alias.scope !118
  %i.w = fmul <4 x float> %broadcast.splat, %wide.load
  %i.x = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.w)
  %i.y = fptosi <4 x float> %i.x to <4 x i8>
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %index
  store <4 x i8> %i.y, ptr %i.z, align 1, !tbaa !43, !alias.scope !119, !noalias !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge42, label %.lr.ph41.preheader56

.lr.ph41.preheader56:                             ; preds = %vector.memcheck, %.lr.ph41.preheader, %middle.block
  %indvars.iv46.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph41.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter59 = and i64 %wide.trip.count, 1
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %.lr.ph41.prol.loopexit, label %.lr.ph41.prol

.lr.ph41.prol:                                    ; preds = %.lr.ph41.preheader56
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv46.ph
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !39
  %i.ad = fmul float %i.t, %i.ac
  %i.ae = tail call float @llvm.round.f32(float %i.ad)
  %i.af = fptosi float %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv46.ph
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !43
  %indvars.iv.next47.prol = or disjoint i64 %indvars.iv46.ph, 1
  br label %.lr.ph41.prol.loopexit

.lr.ph41.prol.loopexit:                           ; preds = %.lr.ph41.prol, %.lr.ph41.preheader56
  %indvars.iv46.unr = phi i64 [ %indvars.iv46.ph, %.lr.ph41.preheader56 ], [ %indvars.iv.next47.prol, %.lr.ph41.prol ]
  %i.ah = add nsw i64 %wide.trip.count, -1
  %i.ai = icmp eq i64 %indvars.iv46.ph, %i.ah
  br i1 %i.ai, label %._crit_edge42, label %.lr.ph41
end_hunk_0
begin_hunk_1_@hnsw_ground_truth_with_filter:bb.a
.lr.ph68.split.us.epil:                           ; preds = %.lr.ph68.split.us.epil, %.lr.ph68.split.us.epil.preheader
  %indvars.iv74.epil = phi i64 [ %indvars.iv.next75.epil, %.lr.ph68.split.us.epil ], [ %indvars.iv74.epil.init, %.lr.ph68.split.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph68.split.us.epil ], [ 0, %.lr.ph68.split.us.epil.preheader ]
  %indvars.iv.next75.epil = add nuw nsw i64 %indvars.iv74.epil, 1 ; 2 uses
  %i.cp = sub nuw nsw i64 %i.bw, %indvars.iv.next75.epil
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !42
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv74.epil
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !38
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter102
  br i1 %epil.iter.cmp.not, label %pq_free.exit, label %.lr.ph68.split.us.epil, !llvm.loop !258

pq_free.exit.loopexit97.unr-lcssa:                ; preds = %.lr.ph68.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pq_free.exit, label %.lr.ph68.split.epil.preheader

.lr.ph68.split.epil.preheader:                    ; preds = %pq_free.exit.loopexit97.unr-lcssa, %.lr.ph68.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph68.split.preheader ], [ %indvars.iv.next.1, %pq_free.exit.loopexit97.unr-lcssa ] ; 3 uses
  %lcmp.mod101 = trunc i32 %. to i1
  tail call void @llvm.assume(i1 %lcmp.mod101)
  %indvars.iv.next.epil.neg = xor i64 %indvars.iv.epil.init, -1
  %i.ct = getelementptr [16 x i8], ptr %.pre79, i64 %indvars.iv.next.epil.neg
  %i.cu = getelementptr [16 x i8], ptr %i.ct, i64 %i.bw ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !42
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !37
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
  store float %i.cy, ptr %i.cz, align 4, !tbaa !39
  br label %pq_free.exit

pq_free.exit:                                     ; preds = %.lr.ph68.split.epil.preheader, %pq_free.exit.loopexit97.unr-lcssa, %pq_free.exit.loopexit.unr-lcssa, %.lr.ph68.split.us.epil, %._crit_edge
  %i.da = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.da(ptr noundef %.pre79) #34, !inline_history !70
  %i.db = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.db(ptr noundef nonnull %i.d) #34, !inline_history !70
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !29 ; 2 uses
  %.not.i56 = icmp eq ptr %i.dd, %1
  br i1 %.not.i56, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

.lr.ph68.split:                                   ; preds = %.lr.ph68.split, %.lr.ph68.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph68.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph68.split ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph68.split.preheader.new ], [ %niter.next.1, %.lr.ph68.split ]
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.de = sub nuw nsw i64 %i.bw, %indvars.iv.next
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.de ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !38
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dj = load float, ptr %i.di, align 8, !tbaa !37
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store float %i.dj, ptr %i.dk, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.dl = sub nuw nsw i64 %i.bw, %indvars.iv.next.1
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.dl ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !42
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !38
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !37
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store float %i.dq, ptr %i.dr, align 4, !tbaa !39
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %pq_free.exit.loopexit97.unr-lcssa, label %.lr.ph68.split, !llvm.loop !257

hnsw_free_tmp_node.exit.sink.split:               ; preds = %pq_free.exit, %bb.e
  %.sink = phi ptr [ %i.k, %bb.e ], [ %i.dd, %pq_free.exit ]
  %.1.ph = phi i32 [ -1, %bb.e ], [ %., %pq_free.exit ]
  %i.ds = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.ds(ptr noundef %.sink) #34
  br label %hnsw_free_tmp_node.exit

hnsw_free_tmp_node.exit:                          ; preds = %hnsw_free_tmp_node.exit.sink.split, %pq_free.exit, %bb.e, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %., %pq_free.exit ], [ -1, %bb.e ], [ %.1.ph, %hnsw_free_tmp_node.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #26

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) #27

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse3.hadd.ps(<4 x float>, <4 x float>) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16>, <32 x i16>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc i32 @hnsw_popcount64(i64 noundef %0) unnamed_addr #30 {
bb.a:
  %i.a = and i64 %0, 6148914691236517205
  %i.b = lshr i64 %0, 1
  %i.c = and i64 %i.b, 6148914691236517205
  %i.d = add nuw i64 %i.c, %i.a                   ; 2 uses
  %i.e = and i64 %i.d, 3689348814741910323
  %i.f = lshr i64 %i.d, 2
  %i.g = and i64 %i.f, 3689348814741910323
  %i.h = add nuw nsw i64 %i.g, %i.e               ; 2 uses
  %i.i = and i64 %i.h, 506381209866536711
  %i.j = lshr i64 %i.h, 4
  %i.k = and i64 %i.j, 506381209866536711
  %i.l = add nuw nsw i64 %i.k, %i.i               ; 2 uses
  %i.m = and i64 %i.l, 4222189076152335
  %i.n = lshr i64 %i.l, 8
  %i.o = and i64 %i.n, 4222189076152335
  %i.p = add nuw nsw i64 %i.o, %i.m               ; 2 uses
  %i.q = and i64 %i.p, 133143986207
  %i.r = lshr i64 %i.p, 16
  %i.s = and i64 %i.r, 133143986207
  %i.t = add nuw nsw i64 %i.s, %i.q               ; 2 uses
  %i.u = lshr i64 %i.t, 32
  %i.v = add nuw nsw i64 %i.u, %i.t
  %i.w = trunc i64 %i.v to i32
  ret i32 %i.w
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #32

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+avx512vpopcntdq,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #30 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nofree nounwind }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nounwind }
attributes #35 = { noreturn nounwind }

!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}
!llvm.errno.tbaa = !{!25}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = distinct !{!2, !41}
!3 = distinct !{!3, !41}
!4 = distinct !{!4, !41}
!5 = distinct !{!5, !41}
!6 = distinct !{!6, !41}
!7 = distinct !{!7, !41}
!8 = distinct !{!8, !41}
!9 = distinct !{!9, !41}
!10 = distinct !{!10, !41}
!11 = distinct !{!11, !41}
!12 = distinct !{!12, !41}
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{i32 1, !"ThinLTO", i32 0}
!20 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!21 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !{!"omnipotent char", !22, i64 0}
!24 = !{!"int", !23, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"long", !23, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"any pointer", !23, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"", !28, i64 0, !24, i64 8, !24, i64 12}
!31 = !{!30, !28, i64 0}
!32 = !{!30, !24, i64 8}
!33 = !{!30, !24, i64 12}
!34 = !{!"p1 _ZTS8hnswNode", !28, i64 0}
!35 = !{!"float", !23, i64 0}
!36 = !{!"", !34, i64 0, !35, i64 8}
!37 = !{!36, !35, i64 8}
!38 = !{!34, !34, i64 0}
!39 = !{!35, !35, i64 0}
!40 = !{i64 0, i64 8, !38, i64 8, i64 4, !39}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!36, !34, i64 0}
!43 = !{!23, !23, i64 0}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 8, i32 24}
!48 = !{!"p1 _ZTS10hnswCursor", !28, i64 0}
!49 = !{!"HNSW", !34, i64 0, !24, i64 8, !24, i64 12, !24, i64 16, !26, i64 24, !23, i64 32, !23, i64 40, !34, i64 296, !23, i64 304, !23, i64 360, !23, i64 1640, !23, i64 1648, !24, i64 1656, !48, i64 1664}
!50 = !{!49, !24, i64 1656}
!51 = !{!49, !24, i64 16}
!52 = !{!49, !24, i64 8}
!53 = !{!49, !34, i64 0}
!54 = !{!49, !24, i64 12}
!55 = !{!49, !26, i64 24}
!56 = !{!49, !23, i64 32}
!57 = !{!49, !48, i64 1664}
!58 = !{!49, !23, i64 1648}
!59 = !{!"any p2 pointer", !28, i64 0}
!60 = !{!"p2 _ZTS8hnswNode", !59, i64 0}
!61 = !{!"", !60, i64 0, !24, i64 8, !24, i64 12, !35, i64 16, !24, i64 20}
!62 = !{!61, !24, i64 12}
!63 = !{!61, !24, i64 8}
!64 = !{!61, !35, i64 16}
!65 = !{!61, !24, i64 20}
!66 = !{!61, !60, i64 0}
!67 = !{!49, !34, i64 296}
!68 = !{ptr @hnsw_node_free}
!69 = !{ptr @pq_new}
!70 = !{ptr @pq_free}
!71 = !{!"p1 _ZTS4HNSW", !28, i64 0}
!72 = !{!"hnswCursor", !71, i64 0, !34, i64 8, !48, i64 16}
!73 = !{!72, !34, i64 8}
!74 = !{!48, !48, i64 0}
!75 = !{!"InsertContext", !23, i64 0, !34, i64 128, !26, i64 136}
!76 = !{!75, !26, i64 136}
!77 = !{!75, !34, i64 128}
!78 = !{!"p1 long", !28, i64 0}
!79 = !{!"hnswSerNode", !28, i64 0, !24, i64 8, !78, i64 16, !24, i64 24}
!80 = !{!79, !78, i64 16}
!81 = !{!72, !71, i64 0}
!82 = !{!72, !48, i64 16}
!83 = distinct !{!83, !41}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !44}
!86 = distinct !{!86, !41}
!87 = distinct !{!87, !41}
!88 = distinct !{!88, !44}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !44}
!91 = distinct !{!91, !41}
!92 = distinct !{!92, !41, !45, !46}
!93 = distinct !{!93, !41, !45, !46}
!94 = distinct !{!94, !41, !46, !45}
!95 = !{!"branch_weights", i32 8, i32 56}
!96 = distinct !{!96, !41}
!97 = distinct !{!97, !41, !45, !46}
!98 = distinct !{!98, !41, !45, !46}
!99 = distinct !{!99, !41, !46, !45}
!100 = distinct !{!100, !41, !45, !46}
!101 = distinct !{!101, !41, !46, !45}
!102 = distinct !{!102, !41}
!103 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!104 = distinct !{!104, !41}
!105 = distinct !{!105, !41, !45, !46}
!106 = distinct !{!106, !41, !45, !46}
!107 = distinct !{!107, !41, !46, !45}
!108 = distinct !{!108, !41}
!109 = distinct !{!109, !41, !45, !46}
!110 = distinct !{!110, !41, !45, !46}
!111 = distinct !{!111, !41, !46, !45}
!112 = !{!"branch_weights", i32 4, i32 12}
!113 = distinct !{!113, !"LVerDomain"}
!114 = distinct !{!114, !113}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !41, !45, !46}
!117 = distinct !{!117, !41, !45}
!118 = !{!114}
!119 = !{!115}
!120 = distinct !{!120, !44}
!121 = distinct !{!121, !41, !45, !46}
!122 = distinct !{!122, !41, !46, !45}
!123 = distinct !{!123, !41}
!124 = !{!49, !23, i64 1640}
!125 = distinct !{!125, !"LVerDomain"}
!126 = distinct !{!126, !125}
!127 = distinct !{!127, !125}
!128 = distinct !{!128, !125}
!129 = distinct !{!129, !41, !45, !46}
!130 = distinct !{!130, !41, !45}
!131 = distinct !{!131, !41, !45, !46}
!132 = distinct !{!132, !41, !46, !45}
!133 = distinct !{!133, !"LVerDomain"}
!134 = distinct !{!134, !133}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !41, !45, !46}
!137 = distinct !{!137, !44}
!138 = distinct !{!138, !41, !45}
!139 = !{!126}
!140 = !{!127}
!141 = !{!128}
!142 = !{!127, !126}
!143 = !{!134}
!144 = !{!135}
!145 = distinct !{!145, !44}
!146 = distinct !{!146, !41, !45, !46}
!147 = distinct !{!147, !41, !46, !45}
!148 = distinct !{!148, !"LVerDomain"}
!149 = distinct !{!149, !148}
!150 = distinct !{!150, !148}
!151 = distinct !{!151, !41, !45, !46}
!152 = distinct !{!152, !41, !45}
!153 = distinct !{!153, !41}
end_hunk_1
