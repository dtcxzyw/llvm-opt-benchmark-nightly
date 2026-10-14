Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tldEnsembleClassifier?download=true
inline.NumInlined: 293
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier24posteriorProbabilityFastEPKh:bb.a
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !35
  %i.an = icmp ult i8 %i.ah, %i.am
  %i.ao = zext i1 %i.an to i32
  %spec.select.i.1 = or disjoint i32 %i.ab, %i.ao ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !2

_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %i.ap = and i64 %i.g, 4
  %lcmp.mod.not = icmp eq i64 %i.ap, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit.loopexit.unr-lcssa ]
  %.0910.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i.1, %_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit.loopexit.unr-lcssa ]
  %lcmp.mod11 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.aq = shl i32 %.0910.i.epil.init, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %1, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !27
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %1, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !35
  %i.bb = icmp ult i8 %i.av, %i.ba
  %i.bc = zext i1 %i.bb to i32
  %spec.select.i.epil = or disjoint i32 %i.aq, %i.bc
  br label %_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit.loopexit

_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit.loopexit: ; preds = %_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit.loopexit.unr-lcssa, %.epil.preheader
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.1, %_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit.loopexit.unr-lcssa ], [ %spec.select.i.epil, %.epil.preheader ]
  %i.bd = sext i32 %spec.select.i.lcssa to i64
  br label %_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit

_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit: ; preds = %_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit.loopexit, %bb.a
  %.09.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.bd, %_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh.exit.loopexit ]
  %i.be = load ptr, ptr %0, align 8, !tbaa !30
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.09.lcssa.i ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !26 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27 ; 2 uses
  %i.bj = icmp eq i32 %i.bg, 0
  %i.bk = icmp eq i32 %i.bi, 0
  %or.cond = select i1 %i.bj, i1 %i.bk, i1 false
  %i.bl = sitofp i32 %i.bi to double
  %i.bm = sitofp i32 %i.bg to double              ; 2 uses
  %i.bn = fadd double %i.bm, %i.bl
  %i.bo = fdiv double %i.bm, %i.bn
  %.0 = select i1 %or.cond, double 0.000000e+00, double %i.bo
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK2cv8tracking4impl3tld21TLDEnsembleClassifier8codeFastEPKh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30   ; 3 uses
  %i.m = and i64 %i.g, 8589934588
  %i.n = icmp eq i64 %i.m, 4
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.h, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %i.o = and i64 %i.g, 4
  %lcmp.mod.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0910.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod14 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod14)
  %i.p = shl i32 %.0910.epil.init, 1
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.epil.init ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !27
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = icmp ult i8 %i.u, %i.z
  %i.ab = zext i1 %i.aa to i32
  %spec.select.epil = or disjoint i32 %i.p, %i.ab
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.09.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  ret i32 %.09.lcssa

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.0910 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = icmp ult i8 %i.ag, %i.al
  %i.an = shl i32 %.0910, 2
  %i.ao = select i1 %i.am, i32 2, i32 0
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %1, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !27
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %1, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !35
  %i.bb = icmp ult i8 %i.av, %i.ba
  %i.bc = zext i1 %i.bb to i32
  %spec.select.1 = or disjoint i32 %i.ap, %i.bc   ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !2
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier15makeClassifiersENS_5Size_IiEEiiRSt6vectorIS3_SaIS3_EE(i64 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.0", align 8     ; 18 uses
  %5 = alloca %"class.cv::Vec", align 4           ; 10 uses
  %6 = alloca %"class.cv::tracking::impl::tld::TLDEnsembleClassifier", align 16 ; 15 uses
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32
  %.sroa.3.0.extract.shift = lshr i64 %0, 32      ; 3 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = mul i32 %1, 10
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  br label %bb.ad

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EE9push_backERKS2_.exit
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !34
  %.pre56 = load ptr, ptr %4, align 8, !tbaa !32
  %i.h = ptrtoint ptr %.pre to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.i = phi ptr [ %.pre56, %._crit_edge.loopexit ], [ null, %bb.a ] ; 3 uses
  %.pre57 = phi i64 [ %i.h, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.j = sub nsw i32 %.sroa.0.0.extract.trunc, %2 ; 2 uses
  %i.k = add nsw i32 %2, -1                       ; 8 uses
  %i.l = sdiv i32 %i.j, %i.k                      ; 5 uses
  %i.m = srem i32 %i.j, %i.k                      ; 4 uses
  %i.n = add nsw i32 %i.l, 1                      ; 6 uses
  %i.o = sdiv i32 %i.m, 2                         ; 7 uses
  %i.p = sub nsw i32 %i.m, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = sub i64 %.pre57, %i.r
  %i.t = lshr exact i64 %i.s, 2
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit33

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.w = xor i32 %i.m, -1
  %i.x = add i32 %2, %i.w                         ; 3 uses
  %i.y = add nsw i32 %i.o, %i.x
  %i.z = trunc i64 %0 to i8
  %i.aa = add i8 %i.z, -1
  %i.ab = mul nsw i32 %i.x, %i.l
  %i.ac = mul nsw i32 %i.o, %i.n
  %i.ad = trunc i32 %i.n to i8
  %i.ae = add i8 %i.ad, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.af = phi ptr [ %i.i, %.lr.ph.i ], [ %i.aw, %bb.h ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35  ; 4 uses
  %i.ai = zext i8 %i.ah to i32                    ; 5 uses
  %i.aj = icmp sgt i32 %i.p, %i.ai
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ak = mul i8 %i.ah, %i.ae
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.al = icmp sgt i32 %i.y, %i.ai
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = sub nsw i32 %i.ai, %i.o
  %i.an = mul nsw i32 %i.am, %i.l
  %i.ao = add nsw i32 %i.an, %i.ac
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = add i8 %i.ah, %i.ap
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ar = icmp sgt i32 %i.k, %i.ai
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %reass.add.reass.i = sub i32 %i.ai, %i.x
  %reass.mul.i = mul i32 %reass.add.reass.i, %i.n
  %i.as = add i32 %reass.mul.i, %i.ab
  %i.at = trunc i32 %i.as to i8
  %i.au = add i8 %i.ah, %i.at
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.sink.i = phi i8 [ %i.ak, %bb.c ], [ %i.au, %bb.g ], [ %i.aq, %bb.e ], [ %i.aa, %bb.f ]
  store i8 %.sink.i, ptr %i.ag, align 1, !tbaa !35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.aw = load ptr, ptr %4, align 8, !tbaa !32    ; 4 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 2 uses
  %i.ba = shl i64 %i.az, 30
  %i.bb = ashr i64 %i.ba, 32
  %i.bc = icmp slt i64 %indvars.iv.next.i, %i.bb
  br i1 %i.bc, label %bb.b, label %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit, !llvm.loop !0

_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit: ; preds = %bb.h
  %.pre62 = lshr exact i64 %i.az, 2
  %.pre64 = trunc i64 %.pre62 to i32              ; 2 uses
  %i.bd = icmp sgt i32 %.pre64, 0
  br i1 %i.bd, label %.lr.ph.i27, label %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit33

.lr.ph.i27:                                       ; preds = %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit
  %i.be = xor i32 %i.m, -1
  %i.bf = add i32 %2, %i.be                       ; 3 uses
  %i.bg = add nsw i32 %i.o, %i.bf
  %i.bh = trunc i64 %0 to i8
  %i.bi = add i8 %i.bh, -1
  %i.bj = mul nsw i32 %i.bf, %i.l
  %i.bk = mul nsw i32 %i.o, %i.n
  %i.bl = trunc i32 %i.n to i8
  %i.bm = add i8 %i.bl, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i27
  %indvars.iv.i28 = phi i64 [ 0, %.lr.ph.i27 ], [ %indvars.iv.next.i30, %bb.o ] ; 2 uses
  %i.bn = phi ptr [ %i.aw, %.lr.ph.i27 ], [ %i.cf, %bb.o ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !35  ; 4 uses
  %i.br = zext i8 %i.bq to i32                    ; 5 uses
  %i.bs = icmp sgt i32 %i.p, %i.br
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = mul i8 %i.bq, %i.bm
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.bu = icmp sgt i32 %i.bg, %i.br
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = sub nsw i32 %i.br, %i.o
  %i.bw = mul nsw i32 %i.bv, %i.l
  %i.bx = add nsw i32 %i.bw, %i.bk
  %i.by = trunc i32 %i.bx to i8
  %i.bz = add i8 %i.bq, %i.by
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ca = icmp sgt i32 %i.k, %i.br
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %reass.add.reass.i31 = sub i32 %i.br, %i.bf
  %reass.mul.i32 = mul i32 %reass.add.reass.i31, %i.n
  %i.cb = add i32 %reass.mul.i32, %i.bj
  %i.cc = trunc i32 %i.cb to i8
  %i.cd = add i8 %i.bq, %i.cc
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %.sink.i29 = phi i8 [ %i.bt, %bb.j ], [ %i.cd, %bb.n ], [ %i.bz, %bb.l ], [ %i.bi, %bb.m ]
  store i8 %.sink.i29, ptr %i.bp, align 1, !tbaa !35
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %i.ce = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.cf = load ptr, ptr %4, align 8, !tbaa !32    ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 2 uses
  %i.cj = shl i64 %i.ci, 30
  %i.ck = ashr i64 %i.cj, 32
  %i.cl = icmp slt i64 %indvars.iv.next.i30, %i.ck
  br i1 %i.cl, label %bb.i, label %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit33.loopexit, !llvm.loop !0

_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit33.loopexit: ; preds = %bb.o
  %.pre69 = lshr exact i64 %i.ci, 2
  %.pre71 = trunc i64 %.pre69 to i32
  br label %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit33

_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit33: ; preds = %._crit_edge, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit33.loopexit, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit
  %.pre-phi72 = phi i32 [ %.pre71, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit33.loopexit ], [ %.pre64, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit ], [ %i.u, %._crit_edge ] ; 2 uses
  %7 = phi ptr [ %i.cf, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit33.loopexit ], [ %i.aw, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit ], [ %i.i, %._crit_edge ] ; 2 uses
  %i.cm = sub nsw i32 %.sroa.3.0.extract.trunc, %2 ; 2 uses
  %i.cn = sdiv i32 %i.cm, %i.k                    ; 5 uses
  %i.co = srem i32 %i.cm, %i.k                    ; 4 uses
  %i.cp = add nsw i32 %i.cn, 1                    ; 6 uses
  %i.cq = sdiv i32 %i.co, 2                       ; 7 uses
  %i.cr = sub nsw i32 %i.co, %i.cq                ; 2 uses
  %i.cs = icmp sgt i32 %.pre-phi72, 0
  br i1 %i.cs, label %.lr.ph.i34, label %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit47

.lr.ph.i34:                                       ; preds = %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit33
  %i.ct = xor i32 %i.co, -1
  %i.cu = add i32 %2, %i.ct                       ; 3 uses
  %i.cv = add nsw i32 %i.cq, %i.cu
  %i.cw = trunc i64 %.sroa.3.0.extract.shift to i8
  %i.cx = add i8 %i.cw, -1
  %i.cy = mul nsw i32 %i.cu, %i.cn
  %i.cz = mul nsw i32 %i.cq, %i.cp
  %i.da = trunc i32 %i.cp to i8
  %i.db = add i8 %i.da, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.v, %.lr.ph.i34
  %indvars.iv.i35 = phi i64 [ 0, %.lr.ph.i34 ], [ %indvars.iv.next.i37, %bb.v ] ; 2 uses
  %i.dc = phi ptr [ %7, %.lr.ph.i34 ], [ %i.du, %bb.v ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i35
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !35  ; 4 uses
  %i.dg = zext i8 %i.df to i32                    ; 5 uses
  %i.dh = icmp sgt i32 %i.cr, %i.dg
  br i1 %i.dh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.di = mul i8 %i.df, %i.db
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.dj = icmp sgt i32 %i.cv, %i.dg
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dk = sub nsw i32 %i.dg, %i.cq
  %i.dl = mul nsw i32 %i.dk, %i.cn
  %i.dm = add nsw i32 %i.dl, %i.cz
  %i.dn = trunc i32 %i.dm to i8
  %i.do = add i8 %i.df, %i.dn
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dp = icmp sgt i32 %i.k, %i.dg
  br i1 %i.dp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %reass.add.reass.i38 = sub i32 %i.dg, %i.cu
  %reass.mul.i39 = mul i32 %reass.add.reass.i38, %i.cp
  %i.dq = add i32 %reass.mul.i39, %i.cy
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = add i8 %i.df, %i.dr
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  %.sink.i36 = phi i8 [ %i.di, %bb.q ], [ %i.ds, %bb.u ], [ %i.do, %bb.s ], [ %i.cx, %bb.t ]
  store i8 %.sink.i36, ptr %i.de, align 1, !tbaa !35
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %i.dt = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.du = load ptr, ptr %4, align 8, !tbaa !32    ; 4 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 2 uses
  %i.dy = shl i64 %i.dx, 30
  %i.dz = ashr i64 %i.dy, 32
  %i.ea = icmp slt i64 %indvars.iv.next.i37, %i.dz
  br i1 %i.ea, label %bb.p, label %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit40, !llvm.loop !0

_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit40: ; preds = %bb.v
  %.pre76 = lshr exact i64 %i.dx, 2
  %.pre78 = trunc i64 %.pre76 to i32              ; 2 uses
  %i.eb = icmp sgt i32 %.pre78, 0
  br i1 %i.eb, label %.lr.ph.i41, label %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit47

.lr.ph.i41:                                       ; preds = %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit40
  %i.ec = xor i32 %i.co, -1
  %i.ed = add i32 %2, %i.ec                       ; 3 uses
  %i.ee = add nsw i32 %i.cq, %i.ed
  %i.ef = trunc i64 %.sroa.3.0.extract.shift to i8
  %i.eg = add i8 %i.ef, -1
  %i.eh = mul nsw i32 %i.ed, %i.cn
  %i.ei = mul nsw i32 %i.cq, %i.cp
  %i.ej = trunc i32 %i.cp to i8
  %i.ek = add i8 %i.ej, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.ac, %.lr.ph.i41
  %indvars.iv.i42 = phi i64 [ 0, %.lr.ph.i41 ], [ %indvars.iv.next.i44, %bb.ac ] ; 2 uses
  %i.el = phi ptr [ %i.du, %.lr.ph.i41 ], [ %i.fd, %bb.ac ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.i42
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 3 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !35  ; 4 uses
  %i.ep = zext i8 %i.eo to i32                    ; 5 uses
  %i.eq = icmp sgt i32 %i.cr, %i.ep
  br i1 %i.eq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.er = mul i8 %i.eo, %i.ek
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.es = icmp sgt i32 %i.ee, %i.ep
  br i1 %i.es, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.et = sub nsw i32 %i.ep, %i.cq
  %i.eu = mul nsw i32 %i.et, %i.cn
  %i.ev = add nsw i32 %i.eu, %i.ei
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = add i8 %i.eo, %i.ew
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.ey = icmp sgt i32 %i.k, %i.ep
  br i1 %i.ey, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %reass.add.reass.i45 = sub i32 %i.ep, %i.ed
  %reass.mul.i46 = mul i32 %reass.add.reass.i45, %i.cp
  %i.ez = add i32 %reass.mul.i46, %i.eh
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = add i8 %i.eo, %i.fa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %.sink.i43 = phi i8 [ %i.er, %bb.x ], [ %i.fb, %bb.ab ], [ %i.ex, %bb.z ], [ %i.eg, %bb.aa ]
  store i8 %.sink.i43, ptr %i.en, align 1, !tbaa !35
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %i.fc = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.fd = load ptr, ptr %4, align 8, !tbaa !32    ; 3 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 2 uses
  %i.fh = shl i64 %i.fg, 30
  %i.fi = ashr i64 %i.fh, 32
  %i.fj = icmp slt i64 %indvars.iv.next.i44, %i.fi
  br i1 %i.fj, label %bb.w, label %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit47.loopexit, !llvm.loop !0

_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit47.loopexit: ; preds = %bb.ac
  %.pre83 = lshr exact i64 %i.fg, 2
  %.pre85 = trunc i64 %.pre83 to i32
  br label %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit47

_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit47: ; preds = %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit33, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit47.loopexit, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit40
  %.pre-phi86 = phi i32 [ %.pre85, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit47.loopexit ], [ %.pre78, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit40 ], [ %.pre-phi72, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit33 ]
  %8 = phi ptr [ %i.fd, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit47.loopexit ], [ %i.du, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit40 ], [ %7, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit33 ]
  %i.fk = sdiv i32 %.pre-phi86, %1                ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph53, label %._crit_edge54

.lr.ph53:                                         ; preds = %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit47
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 72
  br label %bb.ai

bb.ad:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EE9push_backERKS2_.exit
  %.02351 = phi i32 [ 0, %.lr.ph ], [ %i.gr, %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EE9push_backERKS2_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i32 0, ptr %5, align 4
  %i.fu = call i32 @rand() #13
  %i.fv = srem i32 %i.fu, 15
  %i.fw = trunc nsw i32 %i.fv to i8
  store i8 %i.fw, ptr %5, align 4, !tbaa !35
  %i.fx = call i32 @rand() #13
  %i.fy = srem i32 %i.fx, 15
  %i.fz = trunc nsw i32 %i.fy to i8
  store i8 %i.fz, ptr %i.c, align 1, !tbaa !35
  %i.ga = call i32 @rand() #13
  %i.gb = srem i32 %i.ga, 15
  %i.gc = trunc nsw i32 %i.gb to i8
  store i8 %i.gc, ptr %i.d, align 2, !tbaa !35
  %i.gd = call i32 @rand() #13
  %i.ge = srem i32 %i.gd, 15
  %i.gf = trunc nsw i32 %i.ge to i8
  store i8 %i.gf, ptr %i.e, align 1, !tbaa !35
  %i.gg = load ptr, ptr %i.f, align 8, !tbaa !34  ; 6 uses
  %i.gh = load ptr, ptr %i.g, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.gg, %i.gh
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gi = load i8, ptr %5, align 4, !tbaa !35
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !35
  %i.gj = load i8, ptr %i.c, align 1, !tbaa !35
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !35
  %i.gl = load i8, ptr %i.d, align 2, !tbaa !35
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !35
  %i.gn = load i8, ptr %i.e, align 1, !tbaa !35
  %i.go = getelementptr inbounds nuw i8, ptr %i.gg, i64 3
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !35
  %i.gp = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store ptr %i.gq, ptr %i.f, align 8, !tbaa !34
  br label %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EE9push_backERKS2_.exit

bb.af:                                            ; preds = %bb.ad
  invoke void @_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.gg, ptr noundef nonnull align 1 dereferenceable(4) %5)
          to label %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EE9push_backERKS2_.exit unwind label %bb.ag

_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.gr = add nuw nsw i32 %.02351, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.gr, %smax
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.ad, !llvm.loop !58

bb.ag:                                            ; preds = %bb.af
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.ar

._crit_edge54.loopexit:                           ; preds = %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifierD2Ev.exit
  %.pre59 = load ptr, ptr %4, align 8, !tbaa !32
  br label %._crit_edge54

._crit_edge54:                                    ; preds = %._crit_edge54.loopexit, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit47
  %i.gt = phi ptr [ %.pre59, %._crit_edge54.loopexit ], [ %8, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifier12stepPrefSuffERSt6vectorINS_3VecIhLi4EEESaIS6_EEiii.exit47 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !39
  %i.gw = load ptr, ptr %3, align 8, !tbaa !40
  %.not.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge54
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !33
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gt to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.hb) #14
  br label %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit:   ; preds = %._crit_edge54, %bb.ah
  %i.hc = ptrtoint ptr %i.gv to i64
  %i.hd = ptrtoint ptr %i.gw to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = sdiv exact i64 %i.he, 80
  %i.hg = trunc i64 %i.hf to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.hg

bb.ai:                                            ; preds = %.lr.ph53, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifierD2Ev.exit
  %.052 = phi i32 [ 0, %.lr.ph53 ], [ %i.hi, %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifierD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.hh = mul nsw i32 %.052, %1
  %i.hi = add nuw nsw i32 %.052, 1                ; 3 uses
  %i.hj = mul nsw i32 %i.hi, %1
  invoke void @_ZN2cv8tracking4impl3tld21TLDEnsembleClassifierC2ERKSt6vectorINS_3VecIhLi4EEESaIS6_EEii(ptr noundef nonnull align 8 dereferenceable(76) %6, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.hh, i32 noundef %i.hj)
          to label %bb.aj unwind label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.hk = load ptr, ptr %i.fm, align 8, !tbaa !39 ; 10 uses
  %i.hl = load ptr, ptr %i.fn, align 8, !tbaa !41
  %.not.i.i = icmp eq ptr %i.hk, %i.hl
  br i1 %.not.i.i, label %bb.ak, label %_ZNSt6vectorIN2cv8tracking4impl3tld21TLDEnsembleClassifierESaIS4_EE9push_backEOS4_.exit.thread

_ZNSt6vectorIN2cv8tracking4impl3tld21TLDEnsembleClassifierESaIS4_EE9push_backEOS4_.exit.thread: ; preds = %bb.aj
  %i.hm = load <2 x ptr>, ptr %6, align 16, !tbaa !42
  store <2 x ptr> %i.hm, ptr %i.hk, align 8, !tbaa !42
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.ho = load ptr, ptr %i.fo, align 16, !tbaa !31
  store ptr %i.ho, ptr %i.hn, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %6, i8 0, i64 24, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hq = load <2 x ptr>, ptr %i.fp, align 8, !tbaa !29
  store <2 x ptr> %i.hq, ptr %i.hp, align 8, !tbaa !29
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 40
  %i.hs = load ptr, ptr %i.fq, align 8, !tbaa !33
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i8 0, i64 24, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %i.hu = load <2 x ptr>, ptr %i.fr, align 16, !tbaa !42
  store <2 x ptr> %i.hu, ptr %i.ht, align 8, !tbaa !42
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  %i.hw = load ptr, ptr %i.fs, align 16, !tbaa !31
  store ptr %i.hw, ptr %i.hv, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.fr, i8 0, i64 24, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  %i.hy = load i32, ptr %i.ft, align 8, !tbaa !23
  store i32 %i.hy, ptr %i.hx, align 8, !tbaa !23
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hk, i64 80
  store ptr %i.hz, ptr %i.fm, align 8, !tbaa !39
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNSt6vectorIN2cv8tracking4impl3tld21TLDEnsembleClassifierESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.hk, ptr noundef nonnull align 8 dereferenceable(76) %6)
          to label %_ZNSt6vectorIN2cv8tracking4impl3tld21TLDEnsembleClassifierESaIS4_EE9push_backEOS4_.exit unwind label %bb.ap

_ZNSt6vectorIN2cv8tracking4impl3tld21TLDEnsembleClassifierESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.ak
  %.pre58 = load ptr, ptr %i.fr, align 16, !tbaa !30 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pre58, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN2cv8tracking4impl3tld21TLDEnsembleClassifierESaIS4_EE9push_backEOS4_.exit
  %i.ia = load ptr, ptr %i.fs, align 16, !tbaa !31
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %.pre58 to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %.pre58, i64 noundef %i.id) #14
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i:  ; preds = %_ZNSt6vectorIN2cv8tracking4impl3tld21TLDEnsembleClassifierESaIS4_EE9push_backEOS4_.exit.thread, %bb.al, %_ZNSt6vectorIN2cv8tracking4impl3tld21TLDEnsembleClassifierESaIS4_EE9push_backEOS4_.exit
  %i.ie = load ptr, ptr %i.fp, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i
  %i.if = load ptr, ptr %i.fq, align 8, !tbaa !33
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = ptrtoint ptr %i.ie to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ii) #14
  br label %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit.i: ; preds = %bb.am, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i
  %i.ij = load ptr, ptr %6, align 16, !tbaa !30   ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i2.i, label %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifierD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit.i
  %i.ik = load ptr, ptr %i.fo, align 16, !tbaa !31
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ij to i64
  %i.in = sub i64 %i.il, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.in) #14
  br label %_ZN2cv8tracking4impl3tld21TLDEnsembleClassifierD2Ev.exit

_ZN2cv8tracking4impl3tld21TLDEnsembleClassifierD2Ev.exit: ; preds = %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %exitcond55.not = icmp eq i32 %i.hi, %i.fk
  br i1 %exitcond55.not, label %._crit_edge54.loopexit, label %bb.ai, !llvm.loop !59

bb.ao:                                            ; preds = %bb.ai
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv8tracking4impl3tld21TLDEnsembleClassifierD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %6) #13
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.ip, %bb.ap ], [ %i.io, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ag
  %.pn25 = phi { ptr, i32 } [ %i.gs, %bb.ag ], [ %.pn, %bb.aq ]
  %i.iq = load ptr, ptr %4, align 8, !tbaa !32    ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit50, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !33
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %i.iq to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iv) #14
  br label %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit50

_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit50: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn25
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8tracking4impl3tld21TLDEnsembleClassifierD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #14
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #14
  br label %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit:   ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN2cv3VecIhLi4EEESaIS2_EED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #14
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit3

end_hunk_0
