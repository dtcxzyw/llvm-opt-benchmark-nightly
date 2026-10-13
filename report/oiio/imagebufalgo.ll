Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo?download=true
inline.NumInlined: 7404
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN7kissfftIfN13kissfft_utils6traitsIfEEE15kf_bfly_genericEPSt7complexIfEmii:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !400  ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !385  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw nsw i64 %i.e, %i.l
  tail call void @_ZNSt6vectorISt7complexIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.n)
  br label %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.l, %i.e
  br i1 %i.o, label %bb.d, label %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPSt7complexIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt7complexIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.p, ptr %i.f, align 8, !tbaa !400
  br label %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt7complexIfES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %.preheader52.lr.ph, label %._crit_edge

.preheader52.lr.ph:                               ; preds = %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit
  %i.r = icmp sgt i32 %4, 0
  %i.s = trunc i64 %2 to i32
  br i1 %i.r, label %.preheader52.lr.ph.split.us, label %._crit_edge

.preheader52.lr.ph.split.us:                      ; preds = %.preheader52.lr.ph
  %.not = icmp eq i32 %4, 1
  %i.t = zext nneg i32 %3 to i64                  ; 9 uses
  br i1 %.not, label %._crit_edge61.split.us67.us.preheader, label %.preheader52.us.us.preheader

._crit_edge61.split.us67.us.preheader:            ; preds = %.preheader52.lr.ph.split.us
  %xtraiter141 = and i64 %i.t, 1
  %i.u = icmp eq i32 %3, 1
  br i1 %i.u, label %._crit_edge61.split.us67.us.epil.preheader, label %._crit_edge61.split.us67.us.preheader.new

._crit_edge61.split.us67.us.preheader.new:        ; preds = %._crit_edge61.split.us67.us.preheader
  %unroll_iter145 = and i64 %i.t, 2147483646
  br label %._crit_edge61.split.us67.us

.preheader52.us.us.preheader:                     ; preds = %.preheader52.lr.ph.split.us
  %wide.trip.count109 = zext nneg i32 %4 to i64   ; 2 uses
  %wide.trip.count114 = zext nneg i32 %4 to i64
  %xtraiter = and i64 %wide.trip.count109, 3      ; 3 uses
  %i.v = icmp ult i32 %4, 4
  %unroll_iter = and i64 %wide.trip.count109, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod140.a = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %._crit_edge61.split.us.us.us, %.preheader52.us.us.preheader
  %indvars.iv102 = phi i64 [ 0, %.preheader52.us.us.preheader ], [ %indvars.iv.next103, %._crit_edge61.split.us.us.us ] ; 4 uses
  br i1 %i.v, label %.lr.ph.us.us.epil.preheader, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us
  %indvars.iv104 = phi i64 [ %indvars.iv.next105.3, %.lr.ph.us.us ], [ %indvars.iv102, %.lr.ph.us.us.preheader ] ; 2 uses
  %indvars.iv100 = phi i64 [ %indvars.iv.next101.3, %.lr.ph.us.us ], [ 0, %.lr.ph.us.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us ], [ 0, %.lr.ph.us.us.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv104
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv100
  %i.z = load i64, ptr %i.w, align 4, !tbaa !103
  store i64 %i.z, ptr %i.y, align 4, !tbaa !103
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, %i.t ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next105
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv100
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.aa, align 4, !tbaa !103
  store i64 %i.ae, ptr %i.ad, align 4, !tbaa !103
  %indvars.iv.next105.1 = add nuw nsw i64 %indvars.iv.next105, %i.t ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next105.1
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv100
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.af, align 4, !tbaa !103
  store i64 %i.aj, ptr %i.ai, align 4, !tbaa !103
  %indvars.iv.next105.2 = add nuw nsw i64 %indvars.iv.next105.1, %i.t ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next105.2
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv100
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load i64, ptr %i.ak, align 4, !tbaa !103
  store i64 %i.ao, ptr %i.an, align 4, !tbaa !103
  %indvars.iv.next105.3 = add nuw nsw i64 %indvars.iv.next105.2, %i.t ; 2 uses
  %indvars.iv.next101.3 = add nuw nsw i64 %indvars.iv100, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph57.us.us.us.preheader.unr-lcssa, label %.lr.ph.us.us, !llvm.loop !1112

.lr.ph57.us.us.us.preheader.unr-lcssa:            ; preds = %.lr.ph.us.us
  br i1 %lcmp.mod.not, label %.lr.ph57.us.us.us.preheader, label %.lr.ph.us.us.epil.preheader

.lr.ph.us.us.epil.preheader:                      ; preds = %.lr.ph57.us.us.us.preheader.unr-lcssa, %.lr.ph.us.us.preheader
  %indvars.iv104.epil.init = phi i64 [ %indvars.iv102, %.lr.ph.us.us.preheader ], [ %indvars.iv.next105.3, %.lr.ph57.us.us.us.preheader.unr-lcssa ]
  %indvars.iv100.epil.init = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next101.3, %.lr.ph57.us.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod140.a)
  br label %.lr.ph.us.us.epil

.lr.ph.us.us.epil:                                ; preds = %.lr.ph.us.us.epil, %.lr.ph.us.us.epil.preheader
  %indvars.iv104.epil = phi i64 [ %indvars.iv104.epil.init, %.lr.ph.us.us.epil.preheader ], [ %indvars.iv.next105.epil, %.lr.ph.us.us.epil ] ; 2 uses
  %indvars.iv100.epil = phi i64 [ %indvars.iv100.epil.init, %.lr.ph.us.us.epil.preheader ], [ %indvars.iv.next101.epil, %.lr.ph.us.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.us.us.epil.preheader ], [ %epil.iter.next, %.lr.ph.us.us.epil ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv104.epil
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv100.epil
  %i.as = load i64, ptr %i.ap, align 4, !tbaa !103
  store i64 %i.as, ptr %i.ar, align 4, !tbaa !103
  %indvars.iv.next105.epil = add nuw nsw i64 %indvars.iv104.epil, %i.t
  %indvars.iv.next101.epil = add nuw nsw i64 %indvars.iv100.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph57.us.us.us.preheader, label %.lr.ph.us.us.epil, !llvm.loop !1113

.lr.ph57.us.us.us.preheader:                      ; preds = %.lr.ph.us.us.epil, %.lr.ph57.us.us.us.preheader.unr-lcssa
  br label %.lr.ph57.us.us.us

.lr.ph57.us.us.us:                                ; preds = %.lr.ph57.us.us.us.preheader, %._crit_edge.us.us.us
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %._crit_edge.us.us.us ], [ %indvars.iv102, %.lr.ph57.us.us.us.preheader ] ; 3 uses
  %.14059.us.us.us = phi i32 [ %i.by, %._crit_edge.us.us.us ], [ 0, %.lr.ph57.us.us.us.preheader ]
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv116 ; 3 uses
  %i.av = load i64, ptr %i.at, align 4, !tbaa !103 ; 2 uses
  store i64 %i.av, ptr %i.au, align 4, !tbaa !103
  %i.aw = trunc nuw i64 %indvars.iv116 to i32
  %i.ax = mul i32 %i.aw, %i.s
  %i.ay = bitcast i64 %i.av to <2 x float>
  br label %bb.e

bb.e:                                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, %.lr.ph57.us.us.us
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us ], [ 1, %.lr.ph57.us.us.us ] ; 2 uses
  %.056.us.us.us = phi i32 [ %spec.select.us.us.us, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us ], [ 0, %.lr.ph57.us.us.us ]
  %i.az = phi <2 x float> [ %i.bx, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us ], [ %i.ay, %.lr.ph57.us.us.us ] ; 2 uses
  %i.ba = add i32 %.056.us.us.us, %i.ax           ; 2 uses
  %.not.us.us.us = icmp slt i32 %i.ba, %i.c
  %i.bb = select i1 %.not.us.us.us, i32 0, i32 %i.c
  %spec.select.us.us.us = sub nsw i32 %i.ba, %i.bb ; 2 uses
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv111
  %i.be = sext i32 %spec.select.us.us.us to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.be
  %i.bg = load <2 x float>, ptr %i.bd, align 4, !tbaa !103 ; 4 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i.i.us.us.us = extractelement <2 x float> %i.bg, i64 0
  %i.bi = load <2 x float>, ptr %i.bf, align 4    ; 4 uses
  %i.bj = fmul <2 x float> %i.bg, %i.bi           ; 2 uses
  %i.bk = fmul <2 x float> %i.bi, %i.bh           ; 2 uses
  %shift = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %i.bj, %shift ; 2 uses
  %i.bl = extractelement <2 x float> %foldExtExtBinop, i64 0
  %shift136 = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop137 = fadd <2 x float> %i.bk, %shift136 ; 2 uses
  %i.bm = fcmp uno float %i.bl, 0.000000e+00
  %i.bn = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %foldExtExtBinop137, <2 x i32> <i32 0, i32 2> ; 2 uses
  br i1 %i.bm, label %bb.f, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, !prof !401

bb.f:                                             ; preds = %bb.e
  %i.bo = extractelement <2 x float> %foldExtExtBinop137, i64 0
  %i.bp = fcmp uno float %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.g, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, !prof !401

bb.g:                                             ; preds = %bb.f
  %i.bq = extractelement <2 x float> %i.bi, i64 0
  %i.br = extractelement <2 x float> %i.bi, i64 1
  %i.bs = extractelement <2 x float> %i.bg, i64 1
  %i.bt = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i.us.us.us, float noundef %i.bs, float noundef %i.bq, float noundef %i.br) #32
  %i.bu = load <2 x float>, ptr %i.au, align 4
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us: ; preds = %bb.g, %bb.f, %bb.e
  %i.bv = phi <2 x float> [ %i.bn, %bb.e ], [ %i.bn, %bb.f ], [ %i.bt, %bb.g ]
  %i.bw = phi <2 x float> [ %i.az, %bb.e ], [ %i.az, %bb.f ], [ %i.bu, %bb.g ]
  %i.bx = fadd <2 x float> %i.bv, %i.bw           ; 2 uses
  store <2 x float> %i.bx, ptr %i.au, align 4
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not.a = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  br i1 %exitcond115.not.a, label %._crit_edge.us.us.us, label %bb.e, !llvm.loop !1114

._crit_edge.us.us.us:                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, %i.t
  %i.by = add nuw nsw i32 %.14059.us.us.us, 1     ; 2 uses
  %exitcond119.not = icmp eq i32 %i.by, %4
  br i1 %exitcond119.not, label %._crit_edge61.split.us.us.us, label %.lr.ph57.us.us.us, !llvm.loop !1115

._crit_edge61.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next103, %i.t
  br i1 %exitcond122.not, label %._crit_edge, label %.lr.ph.us.us.preheader, !llvm.loop !1116

._crit_edge61.split.us67.us:                      ; preds = %._crit_edge61.split.us67.us, %._crit_edge61.split.us67.us.preheader.new
  %indvars.iv84 = phi i64 [ 0, %._crit_edge61.split.us67.us.preheader.new ], [ %indvars.iv.next85.1, %._crit_edge61.split.us67.us ] ; 4 uses
  %niter146 = phi i64 [ 0, %._crit_edge61.split.us67.us.preheader.new ], [ %niter146.next.1, %._crit_edge61.split.us67.us ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84
  %i.ca = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.cb = load i64, ptr %i.bz, align 4, !tbaa !103
  store i64 %i.cb, ptr %i.ca, align 4, !tbaa !103
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !385
  %5 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84
  %i.cd = load i64, ptr %i.cc, align 4, !tbaa !103
  store i64 %i.cd, ptr %5, align 4, !tbaa !103
  %indvars.iv.next85 = or disjoint i64 %indvars.iv84, 1 ; 2 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next85
  %i.ce = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.cf = load i64, ptr %6, align 4, !tbaa !103
  store i64 %i.cf, ptr %i.ce, align 4, !tbaa !103
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !385
  %7 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next85
  %i.ch = load i64, ptr %i.cg, align 4, !tbaa !103
  store i64 %i.ch, ptr %7, align 4, !tbaa !103
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %niter146.next.1 = add i64 %niter146, 2         ; 2 uses
  %niter146.ncmp.1 = icmp eq i64 %niter146.next.1, %unroll_iter145
  br i1 %niter146.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %._crit_edge61.split.us67.us, !llvm.loop !1116

._crit_edge.loopexit.unr-lcssa:                   ; preds = %._crit_edge61.split.us67.us
  %lcmp.mod143.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod143.not, label %._crit_edge, label %._crit_edge61.split.us67.us.epil.preheader

._crit_edge61.split.us67.us.epil.preheader:       ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge61.split.us67.us.preheader
  %indvars.iv84.epil.init = phi i64 [ 0, %._crit_edge61.split.us67.us.preheader ], [ %indvars.iv.next85.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod144 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod144)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84.epil.init
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.ck = load i64, ptr %i.ci, align 4, !tbaa !103
  store i64 %i.ck, ptr %i.cj, align 4, !tbaa !103
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !385
  %8 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84.epil.init
  %i.cm = load i64, ptr %i.cl, align 4, !tbaa !103
  store i64 %i.cm, ptr %8, align 4, !tbaa !103
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge61.split.us.us.us, %._crit_edge61.split.us67.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader52.lr.ph, %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit
  ret void
}

declare <2 x float> @__mulsc3(float, float, float, float) local_unnamed_addr

declare noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39), ptr, i64, i32 noundef, ptr, i64, i8, i8) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15divide_by_alphaERNS1_8ImageBufES2_iE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 51 uses
  %3 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !1119, !nonnull !132, !align !226
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !77
  %.fr47.i.i.i = freeze i32 %i.d                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.f = load i32, ptr %i.e, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.g = load ptr, ptr %0, align 8, !tbaa !1119, !nonnull !132, !align !226
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, i1 noundef zeroext true)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 10 uses
  %i.p = sext i32 %i.f to i64
  %i.q = icmp sgt i32 %.fr47.i.i.i, 0
  br i1 %i.q, label %.split.us.preheader.i.i.i, label %.split.i.preheader.i.i

.split.i.preheader.i.i:                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %.split.i.i.i

.split.us.preheader.i.i.i:                        ; preds = %bb.a
  %wide.trip.count.i.i.i = zext nneg i32 %.fr47.i.i.i to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i.i.i.backedge, %.split.us.preheader.i.i.i
  %i.at = load i8, ptr %i.h, align 8, !tbaa !175, !range !131, !noundef !132
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.b:                                             ; preds = %.split.us.i.i.i
  %i.av = load i32, ptr %i.i, align 4, !tbaa !176
  %i.aw = load i32, ptr %i.j, align 4, !tbaa !178
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ay = load i32, ptr %i.k, align 8, !tbaa !177
  %i.az = load i32, ptr %i.l, align 4, !tbaa !188
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us.i.i.i: ; preds = %bb.c
  %i.bb = load i32, ptr %i.m, align 4, !tbaa !179
  %i.bc = load i32, ptr %i.n, align 8, !tbaa !180
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %.split41.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us.i.i.i, %bb.c, %bb.b, %.split.us.i.i.i
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.p
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !161 ; 2 uses
  %i.bh = fcmp une float %i.bg, 0.000000e+00
  br i1 %i.bh, label %.preheader.us.i.i.i, label %..loopexit_crit_edge.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i, %bb.e
  %i.bi = phi ptr [ %i.bp, %bb.e ], [ %i.be, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.e ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i.i
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !161
  %i.bl = fdiv float %i.bk, %i.bg
  %i.bm = load ptr, ptr %2, align 8, !tbaa !184
  %i.bn = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %.noexc.us.i.i.i unwind label %.split43.us.i.i.i

.noexc.us.i.i.i:                                  ; preds = %.preheader.us.i.i.i
  %i.bo = icmp eq i32 %i.bn, 3
  br i1 %i.bo, label %bb.d, label %bb.e, !prof !185

bb.d:                                             ; preds = %.noexc.us.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.e unwind label %.split43.us.i.i.i

bb.e:                                             ; preds = %bb.d, %.noexc.us.i.i.i
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i.i.i
  store float %i.bl, ptr %i.bq, align 4, !tbaa !161
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %..loopexit_crit_edge.us.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !1117

..loopexit_crit_edge.us.i.i.i:                    ; preds = %bb.e, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i
  %i.br = phi ptr [ %i.be, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ], [ %i.bp, %bb.e ] ; 2 uses
  %i.bs = load i32, ptr %i.i, align 4, !tbaa !176
  %i.bt = add nsw i32 %i.bs, 1                    ; 7 uses
  store i32 %i.bt, ptr %i.i, align 4, !tbaa !176
  %i.bu = load i32, ptr %i.af, align 8, !tbaa !193
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.f, label %bb.m

bb.f:                                             ; preds = %..loopexit_crit_edge.us.i.i.i
  %i.bw = load i8, ptr %i.ah, align 1, !tbaa !194, !range !131, !noundef !132
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.g, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.f
  %.pre.i9.i.i = load i32, ptr %i.k, align 8, !tbaa !177
  %.pre21.i.i = load i32, ptr %i.m, align 4, !tbaa !179
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.by = load i8, ptr %i.ai, align 1, !tbaa !195, !range !131, !noundef !132
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ca = load i64, ptr %i.ak, align 8, !tbaa !196
  %i.cb = getelementptr inbounds i8, ptr %i.br, i64 %i.ca
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !186
  %i.cc = load i32, ptr %i.al, align 8, !tbaa !197
  %.not.i.i12.i.i = icmp slt i32 %i.bt, %i.cc
  br i1 %.not.i.i12.i.i, label %.split.us.i.i.i.backedge, label %bb.i, !prof !144

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %.split.us.i.i.i.backedge unwind label %.split45.us.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.cd = load i8, ptr %i.aj, align 2, !tbaa !198, !range !131, !noundef !132
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %.split.us.i.i.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %i.ak, align 8, !tbaa !196
  %i.cg = getelementptr inbounds i8, ptr %i.br, i64 %i.cf
  store ptr %i.cg, ptr %i.o, align 8, !tbaa !186
  %i.ch = load i32, ptr %i.al, align 8, !tbaa !197
  %i.ci = icmp slt i32 %i.bt, %i.ch               ; 3 uses
  %i.cj = load i32, ptr %i.am, align 4
  %i.ck = icmp sge i32 %i.bt, %i.cj
  %not..i.i10.i.i = xor i1 %i.ci, true
  %or.cond.i.i11.i.i = select i1 %not..i.i10.i.i, i1 true, i1 %i.ck, !prof !199
  %i.cl = load ptr, ptr %i.an, align 8
  %i.cm = icmp eq ptr %i.cl, null
  %i.cn = select i1 %or.cond.i.i11.i.i, i1 true, i1 %i.cm, !prof !199
  br i1 %i.cn, label %bb.l, label %.split.us.i.i.i.backedge, !prof !185

bb.l:                                             ; preds = %bb.k
  %i.co = load ptr, ptr %2, align 8, !tbaa !184
  %i.cp = load i32, ptr %i.k, align 8, !tbaa !177
  %i.cq = load i32, ptr %i.m, align 4, !tbaa !179
  %i.cr = load i32, ptr %i.as, align 8, !tbaa !200
  %i.cs = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i32 noundef %i.bt, i32 noundef %i.cp, i32 noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.ci, i32 noundef %i.cr)
          to label %.noexc14.i.i unwind label %.split45.us.i.i.i

end_hunk_0
