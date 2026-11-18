Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/ScalarQuantizer?download=true
inline.NumInlined: 2990
inline.NumDeleted: 733
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 162
begin_hunk_0_@_ZN5faiss16scalar_quantizer23QuantizerTurboQuantFullILi5ELNS_9SIMDLevelE0EEC2EmRKSt6vectorIfSaIfEE:bb.a
  %i.aq = icmp eq i8 %i.ao, 0
  br i1 %i.aq, label %.preheader56, label %bb.o

.preheader56:                                     ; preds = %bb.j, %.preheader56
  %storemerge = phi i64 [ %i.as, %.preheader56 ], [ 1, %bb.j ] ; 5 uses
  %i.ar = icmp ult i64 %storemerge, %1
  %i.as = shl i64 %storemerge, 1
  br i1 %i.ar, label %.preheader56, label %bb.k, !llvm.loop !599

bb.k:                                             ; preds = %.preheader56
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 %storemerge, ptr %i.at, align 8, !tbaa !192
  %.not55 = icmp eq i64 %storemerge, 0
  br i1 %.not55, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %storemerge)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %bb.m

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZN5faiss15RandomGeneratorC1El(ptr noundef nonnull align 8 dereferenceable(5000) %4, i64 noundef %i.al)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.au = load i64, ptr %i.at, align 8, !tbaa !192
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.r

bb.m:                                             ; preds = %bb.p, %bb.l, %bb.q, %_ZNSt6vectorIfSaIfEE6resizeEm.exit37
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.lr.ph:                                           ; preds = %.preheader, %bb.n
  %.041 = phi i64 [ %i.bb, %bb.n ], [ 0, %.preheader ] ; 2 uses
  %i.aw = invoke noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000) %4, i32 noundef 2)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.lr.ph
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = select i1 %i.ax, float 1.000000e+00, float -1.000000e+00
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.041
  store float %i.ay, ptr %i.ba, align 4, !tbaa !89
  %i.bb = add nuw i64 %.041, 1                    ; 2 uses
  %i.bc = load i64, ptr %i.at, align 8, !tbaa !192
  %i.bd = icmp ult i64 %i.bb, %i.bc
  br i1 %i.bd, label %.lr.ph, label %._crit_edge, !llvm.loop !600

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.be, align 8, !tbaa !192
  %i.bf = mul i64 %1, %1                          ; 2 uses
  %.not54 = icmp eq i64 %i.bf, 0
  br i1 %.not54, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit37, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bf)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit37_crit_edge43 unwind label %bb.m

._ZNSt6vectorIfSaIfEE6resizeEm.exit37_crit_edge43: ; preds = %bb.p
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !87
  %.pre44 = load i64, ptr %i.a, align 8, !tbaa !185 ; 2 uses
  %.pre45 = mul i64 %.pre44, %.pre44
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit37

_ZNSt6vectorIfSaIfEE6resizeEm.exit37:             ; preds = %bb.o, %._ZNSt6vectorIfSaIfEE6resizeEm.exit37_crit_edge43
  %.pre-phi = phi i64 [ %.pre45, %._ZNSt6vectorIfSaIfEE6resizeEm.exit37_crit_edge43 ], [ 0, %bb.o ]
  %i.bg = phi ptr [ %.pre, %._ZNSt6vectorIfSaIfEE6resizeEm.exit37_crit_edge43 ], [ null, %bb.o ]
  invoke void @_ZN5faiss11float_randnEPfml(ptr noundef %i.bg, i64 noundef %.pre-phi, i64 noundef %i.al)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit37
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !185
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !87
  invoke void @_ZN5faiss9matrix_qrEiiPf(i32 noundef %i.bi, i32 noundef %i.bi, ptr noundef %i.bj)
          to label %bb.r unwind label %bb.m

bb.r:                                             ; preds = %bb.q, %._crit_edge
  ret void

bb.s:                                             ; preds = %bb.m, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.av, %bb.m ]
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !90
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.s, %bb.t
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIfSaIfEED2Ev.exit39, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !90
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit39

_ZNSt6vectorIfSaIfEED2Ev.exit39:                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.u
  resume { ptr, i32 } %.pn30.pn.pn

bb.v:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE1ELS3_0EE13encode_vectorEPKfPh(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01315 = phi i64 [ 0, %.lr.ph ], [ %i.v, %bb.d ] ; 5 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.01315
  %i.g = load float, ptr %i.f, align 4, !tbaa !89 ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01315
  %i.j = load float, ptr %i.i, align 4, !tbaa !89
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.01315
  %i.m = load float, ptr %i.l, align 4, !tbaa !89
  %i.n = fsub float %i.j, %i.m
  %i.o = fdiv float %i.n, %i.g                    ; 2 uses
  %i.p = fcmp olt float %i.o, 0.000000e+00
  %spec.store.select = select i1 %i.p, float 0.000000e+00, float %i.o ; 2 uses
  %i.q = fcmp ogt float %spec.store.select, 1.000000e+00
  %spec.store.select1 = select i1 %i.q, float 1.000000e+00, float %spec.store.select
  %i.r = fmul float %spec.store.select1, 2.550000e+02
  %i.s = fptosi float %i.r to i32
  %i.t = trunc i32 %i.s to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i8 [ %i.t, %bb.c ], [ 0, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.01315
  store i8 %.0, ptr %i.u, align 1, !tbaa !80
  %i.v = add nuw i64 %.01315, 1                   ; 2 uses
  %i.w = load i64, ptr %i.a, align 8, !tbaa !101
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !601
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE1ELS3_0EE13decode_vectorEPKhPf(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101  ; 9 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103  ; 6 uses
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.g = shl i64 %i.b, 2                          ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 %i.g       ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %i.i
  %bound0.a = icmp ult ptr %1, %i.h
  %found.conflict = and i1 %bound0, %bound0.a
  %3 = getelementptr i8, ptr %i.d, i64 %i.g
  %bound020 = icmp ult ptr %2, %3
  %bound121 = icmp ult ptr %i.d, %i.h
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx = or i1 %found.conflict, %found.conflict22
  %4 = getelementptr i8, ptr %i.f, i64 %i.g
  %bound023 = icmp ult ptr %2, %4
  %bound124 = icmp ult ptr %i.f, %i.h
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx26 = or i1 %conflict.rdx, %found.conflict25
  br i1 %conflict.rdx26, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <4 x i8>, ptr %i.j, align 1, !tbaa !80, !alias.scope !609
  %i.k = uitofp <4 x i8> %wide.load to <4 x float>
  %i.l = fadd <4 x float> %i.k, splat (float 5.000000e-01)
  %i.m = fdiv <4 x float> %i.l, splat (float 2.550000e+02)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index
  %wide.load27 = load <4 x float>, ptr %i.n, align 4, !tbaa !89, !alias.scope !610
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index
  %wide.load28 = load <4 x float>, ptr %i.o, align 4, !tbaa !89, !alias.scope !611
  %i.p = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %wide.load28, <4 x float> %wide.load27)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <4 x float> %i.p, ptr %i.q, align 4, !tbaa !89, !alias.scope !612, !noalias !613
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.09.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg = or disjoint i64 %.09.ph, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.09.ph
  %i.t = load i8, ptr %i.s, align 1, !tbaa !80
  %i.u = uitofp i8 %i.t to float
  %i.v = fadd float %i.u, 5.000000e-01
  %i.w = fdiv float %i.v, 2.550000e+02
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.09.ph
  %i.y = load float, ptr %i.x, align 4, !tbaa !89
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.09.ph
  %i.aa = load float, ptr %i.z, align 4, !tbaa !89
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.w, float %i.aa, float %i.y)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.09.ph
  store float %i.ab, ptr %i.ac, align 4, !tbaa !89
  %i.ad = or disjoint i64 %.09.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.unr = phi i64 [ %.09.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %i.ae = icmp eq i64 %i.b, %.neg
  br i1 %i.ae, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09 = phi i64 [ %i.bc, %scalar.ph ], [ %.09.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.09
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !80
  %i.ah = uitofp i8 %i.ag to float
  %i.ai = fadd float %i.ah, 5.000000e-01
  %i.aj = fdiv float %i.ai, 2.550000e+02
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.09
  %i.al = load float, ptr %i.ak, align 4, !tbaa !89
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.09
  %i.an = load float, ptr %i.am, align 4, !tbaa !89
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.an, float %i.al)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.09
  store float %i.ao, ptr %i.ap, align 4, !tbaa !89
  %i.aq = add nuw i64 %.09, 1                     ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !80
  %i.at = uitofp i8 %i.as to float
  %i.au = fadd float %i.at, 5.000000e-01
  %i.av = fdiv float %i.au, 2.550000e+02
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aq
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !89
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aq
  %i.az = load float, ptr %i.ay, align 4, !tbaa !89
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.av, float %i.az, float %i.ax)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aq
  store float %i.ba, ptr %i.bb, align 4, !tbaa !89
  %i.bc = add nuw i64 %.09, 2                     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bc, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !608
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE1ELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #24
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec6bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE1ELS3_0EE13encode_vectorEPKfPh(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !105
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16encode_componentEfPhm.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16encode_componentEfPhm.exit
  %.01315 = phi i64 [ 0, %.lr.ph ], [ %i.aw, %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16encode_componentEfPhm.exit ] ; 6 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.01315
  %i.g = load float, ptr %i.f, align 4, !tbaa !89 ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01315
  %i.j = load float, ptr %i.i, align 4, !tbaa !89
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !106
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.01315
  %i.m = load float, ptr %i.l, align 4, !tbaa !89
  %i.n = fsub float %i.j, %i.m
  %i.o = fdiv float %i.n, %i.g                    ; 2 uses
  %i.p = fcmp olt float %i.o, 0.000000e+00
  %spec.store.select = select i1 %i.p, float 0.000000e+00, float %i.o ; 2 uses
  %i.q = fcmp ogt float %spec.store.select, 1.000000e+00
  %spec.store.select1 = select i1 %i.q, float 1.000000e+00, float %spec.store.select
  %i.r = fpext float %spec.store.select1 to double
  %i.s = fmul double %i.r, 6.300000e+01
  %i.t = fptosi double %i.s to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.t, %bb.c ], [ 0, %bb.b ]     ; 6 uses
  %i.u = lshr i64 %.01315, 2
  %i.v = mul nuw i64 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v ; 8 uses
  %i.x = and i64 %.01315, 3
  switch i64 %i.x, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.w, align 1, !tbaa !80
  %i.z = trunc i32 %.0 to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.w, align 1, !tbaa !80
  br label %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16encode_componentEfPhm.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !80
  %.tr16.i = trunc i32 %.0 to i8
  %i.ac = shl i8 %.tr16.i, 6
  %i.ad = or i8 %i.ab, %i.ac
  store i8 %i.ad, ptr %i.w, align 1, !tbaa !80
  %i.ae = lshr i32 %.0, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !80
  %i.ah = trunc i32 %i.ae to i8
  %i.ai = or i8 %i.ag, %i.ah
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !80
  br label %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16encode_componentEfPhm.exit

bb.g:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !80
  %.tr15.i = trunc i32 %.0 to i8
  %i.al = shl i8 %.tr15.i, 4
  %i.am = or i8 %i.ak, %i.al
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !80
  %i.an = lshr i32 %.0, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.aq = trunc i32 %i.an to i8
  %i.ar = or i8 %i.ap, %i.aq
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !80
  br label %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16encode_componentEfPhm.exit

bb.h:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !80
  %.tr.i = trunc i32 %.0 to i8
  %i.au = shl i8 %.tr.i, 2
  %i.av = or i8 %i.at, %i.au
  store i8 %i.av, ptr %i.as, align 1, !tbaa !80
  br label %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16encode_componentEfPhm.exit

default.unreachable:                              ; preds = %bb.d
  unreachable

_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16encode_componentEfPhm.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.aw = add nuw i64 %.01315, 1                  ; 2 uses
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !105
  %i.ay = icmp ult i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.b, label %._crit_edge, !llvm.loop !614
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec6bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE1ELS3_0EE13decode_vectorEPKhPf(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16decode_componentEPKhm.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16decode_componentEPKhm.exit
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.an, %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16decode_componentEPKhm.exit ] ; 6 uses
  %i.g = lshr i64 %.09, 2
  %i.h = mul nuw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 6 uses
  %i.j = and i64 %.09, 3
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.i, align 1, !tbaa !80
  %i.l = and i8 %i.k, 63
  br label %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16decode_componentEPKhm.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.i, align 1, !tbaa !80
  %i.n = lshr i8 %i.m, 6
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !80
  %i.q = shl i8 %i.p, 2
  %i.r = and i8 %i.q, 60
  %i.s = or disjoint i8 %i.r, %i.n
  br label %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16decode_componentEPKhm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !80
  %i.v = lshr i8 %i.u, 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !80
  %i.y = shl i8 %i.x, 4
  %i.z = and i8 %i.y, 48
  %i.aa = or disjoint i8 %i.z, %i.v
  br label %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16decode_componentEPKhm.exit

bb.f:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !80
  %i.ad = lshr i8 %i.ac, 2
  br label %_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16decode_componentEPKhm.exit

default.unreachable:                              ; preds = %bb.b
  unreachable

_ZN5faiss16scalar_quantizer9Codec6bitILNS_9SIMDLevelE0EE16decode_componentEPKhm.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ %i.l, %bb.c ], [ %i.s, %bb.d ], [ %i.aa, %bb.e ], [ %i.ad, %bb.f ]
  %i.ae = uitofp nneg i8 %.0.i to float
  %i.af = fadd float %i.ae, 5.000000e-01
  %i.ag = fdiv float %i.af, 6.300000e+01
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.09
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !89
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.09
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !89
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ak, float %i.ai)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.09
  store float %i.al, ptr %i.am, align 4, !tbaa !89
  %i.an = add nuw i64 %.09, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !615
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec6bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE1ELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec4bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE1ELS3_0EE13encode_vectorEPKfPh(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01315 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.d ] ; 6 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.01315
  %i.g = load float, ptr %i.f, align 4, !tbaa !89 ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01315
  %i.j = load float, ptr %i.i, align 4, !tbaa !89
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.01315
  %i.m = load float, ptr %i.l, align 4, !tbaa !89
  %i.n = fsub float %i.j, %i.m
  %i.o = fdiv float %i.n, %i.g                    ; 2 uses
  %i.p = fcmp olt float %i.o, 0.000000e+00
  %spec.store.select = select i1 %i.p, float 0.000000e+00, float %i.o ; 2 uses
  %i.q = fcmp ogt float %spec.store.select, 1.000000e+00
  %spec.store.select1 = select i1 %i.q, float 1.000000e+00, float %spec.store.select
  %i.r = fpext float %spec.store.select1 to double
  %i.s = fmul double %i.r, 1.500000e+01
  %i.t = fptosi double %i.s to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.t, %bb.c ], [ 0, %bb.b ]
  %.tr.i = trunc i64 %.01315 to i32
  %i.u = shl i32 %.tr.i, 2
  %i.v = and i32 %i.u, 4
  %i.w = shl i32 %.0, %i.v
  %i.x = lshr i64 %.01315, 1
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !80
  %i.aa = trunc i32 %i.w to i8
  %i.ab = or i8 %i.z, %i.aa
  store i8 %i.ab, ptr %i.y, align 1, !tbaa !80
  %i.ac = add nuw i64 %.01315, 1                  ; 2 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !109
  %i.ae = icmp ult i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.b, label %._crit_edge, !llvm.loop !616
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec4bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE1ELS3_0EE13decode_vectorEPKhPf(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109  ; 7 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111  ; 4 uses
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.g = shl i64 %i.b, 2                          ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 %i.g       ; 3 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %i.g
  %bound0 = icmp ult ptr %2, %i.i
  %bound1 = icmp ult ptr %i.d, %i.h
  %found.conflict = and i1 %bound0, %bound1
  %i.j = getelementptr i8, ptr %i.f, i64 %i.g
  %bound020 = icmp ult ptr %2, %i.j
  %bound0.a = icmp ult ptr %i.f, %i.h
  %found.conflict22 = and i1 %bound020, %bound0.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict22
  %3 = add i64 %i.b, -1
  %4 = lshr i64 %3, 1
  %5 = getelementptr i8, ptr %1, i64 %4
  %6 = getelementptr i8, ptr %5, i64 1
  %bound023 = icmp ult ptr %2, %6
  %bound124 = icmp ult ptr %1, %i.h
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx26 = or i1 %conflict.rdx, %found.conflict25
  br i1 %conflict.rdx26, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.k = lshr exact i64 %index, 1
  %i.l = lshr exact i64 %index, 1
  %i.m = lshr exact i64 %index, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.n, align 1, !tbaa !80, !alias.scope !624
  %i.s = load <2 x i8>, ptr %i.o, align 1, !tbaa !80, !alias.scope !624
  %i.t = load i8, ptr %i.q, align 1, !tbaa !80, !alias.scope !624
  %i.u = insertelement <4 x i8> poison, i8 %i.r, i64 0
  %i.v = shufflevector <2 x i8> %i.s, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.w = shufflevector <4 x i8> %i.u, <4 x i8> %i.v, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.x = insertelement <4 x i8> %i.w, i8 %i.t, i64 3
  %i.y = zext <4 x i8> %i.x to <4 x i32>
  %i.z = shl <4 x i32> %vec.ind, splat (i32 2)
  %i.aa = and <4 x i32> %i.z, splat (i32 4)
  %i.ab = lshr <4 x i32> %i.y, %i.aa
  %i.ac = and <4 x i32> %i.ab, splat (i32 15)
  %i.ad = uitofp nneg <4 x i32> %i.ac to <4 x float>
  %i.ae = fadd <4 x float> %i.ad, splat (float 5.000000e-01)
  %i.af = fdiv <4 x float> %i.ae, splat (float 1.500000e+01)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index
  %wide.load = load <4 x float>, ptr %i.ag, align 4, !tbaa !89, !alias.scope !625
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index
  %wide.load27 = load <4 x float>, ptr %i.ah, align 4, !tbaa !89, !alias.scope !626
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.af, <4 x float> %wide.load27, <4 x float> %wide.load)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <4 x float> %i.ai, ptr %i.aj, align 4, !tbaa !89, !alias.scope !627, !noalias !628
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !622

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.09.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09 = phi i64 [ %i.bc, %scalar.ph ], [ %.09.ph, %scalar.ph.preheader ] ; 6 uses
  %i.al = lshr i64 %.09, 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !80
  %i.ao = zext i8 %i.an to i32
  %.tr.i = trunc i64 %.09 to i32
  %i.ap = shl i32 %.tr.i, 2
  %i.aq = and i32 %i.ap, 4
  %i.ar = lshr i32 %i.ao, %i.aq
  %i.as = and i32 %i.ar, 15
  %i.at = uitofp nneg i32 %i.as to float
  %i.au = fadd float %i.at, 5.000000e-01
  %i.av = fdiv float %i.au, 1.500000e+01
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.09
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !89
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.09
  %i.az = load float, ptr %i.ay, align 4, !tbaa !89
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.av, float %i.az, float %i.ax)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.09
  store float %i.ba, ptr %i.bb, align 4, !tbaa !89
  %i.bc = add nuw i64 %.09, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !623
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec4bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE1ELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS3_0EE13encode_vectorEPKfPh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !113
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01012 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.d ] ; 3 uses
  %i.e = load float, ptr %i.c, align 4, !tbaa !195 ; 2 uses
  %i.f = fcmp une float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01012
  %i.h = load float, ptr %i.g, align 4, !tbaa !89
  %i.i = load float, ptr %i.d, align 8, !tbaa !196
  %i.j = fsub float %i.h, %i.i
  %i.k = fdiv float %i.j, %i.e                    ; 2 uses
  %i.l = fcmp olt float %i.k, 0.000000e+00
  %spec.store.select = select i1 %i.l, float 0.000000e+00, float %i.k ; 2 uses
  %i.m = fcmp ogt float %spec.store.select, 1.000000e+00
  %spec.store.select1 = select i1 %i.m, float 1.000000e+00, float %spec.store.select
  %i.n = fmul float %spec.store.select1, 2.550000e+02
  %i.o = fptosi float %i.n to i32
  %i.p = trunc i32 %i.o to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i8 [ %i.p, %bb.c ], [ 0, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %.01012
  store i8 %.0, ptr %i.q, align 1, !tbaa !80
  %i.r = add nuw i64 %.01012, 1                   ; 2 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !113
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !629
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS3_0EE13decode_vectorEPKhPf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !113  ; 9 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.e = shl i64 %i.b, 2
  %i.f = getelementptr i8, ptr %2, i64 %i.e       ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %i.g
  %bound0.a = icmp ult ptr %1, %i.f
  %found.conflict = and i1 %bound0, %bound0.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %bound013 = icmp ult ptr %2, %3
  %bound114 = icmp ult ptr %i.c, %i.f
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %found.conflict, %found.conflict15
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %i.h = load float, ptr %i.c, align 8, !tbaa !196, !alias.scope !636
  %broadcast.splatinsert16 = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat17 = shufflevector <4 x float> %broadcast.splatinsert16, <4 x float> poison, <4 x i32> zeroinitializer
  %i.i = load float, ptr %i.d, align 4, !tbaa !195, !alias.scope !636
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load = load <4 x i8>, ptr %i.j, align 1, !tbaa !80, !alias.scope !637
  %i.k = uitofp <4 x i8> %wide.load to <4 x float>
  %i.l = fadd <4 x float> %i.k, splat (float 5.000000e-01)
  %i.m = fdiv <4 x float> %i.l, splat (float 2.550000e+02)
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat17)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <4 x float> %i.n, ptr %i.o, align 4, !tbaa !89, !alias.scope !638, !noalias !639
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !634

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.07.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.07.ph, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.07.ph
  %i.r = load i8, ptr %i.q, align 1, !tbaa !80
  %i.s = uitofp i8 %i.r to float
  %i.t = fadd float %i.s, 5.000000e-01
  %i.u = fdiv float %i.t, 2.550000e+02
  %i.v = load float, ptr %i.c, align 8, !tbaa !196
  %i.w = load float, ptr %i.d, align 4, !tbaa !195
  %i.x = tail call float @llvm.fmuladd.f32(float %i.u, float %i.w, float %i.v)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07.ph
  store float %i.x, ptr %i.y, align 4, !tbaa !89
  %i.z = or disjoint i64 %.07.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.07.unr = phi i64 [ %.07.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = icmp eq i64 %i.b, %.neg
  br i1 %i.aa, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07 = phi i64 [ %i.au, %scalar.ph ], [ %.07.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.07
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !80
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = fadd float %i.ad, 5.000000e-01
  %i.af = fdiv float %i.ae, 2.550000e+02
  %i.ag = load float, ptr %i.c, align 8, !tbaa !196
  %i.ah = load float, ptr %i.d, align 4, !tbaa !195
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ah, float %i.ag)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07
  store float %i.ai, ptr %i.aj, align 4, !tbaa !89
  %i.ak = add nuw i64 %.07, 1                     ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !80
  %i.an = uitofp i8 %i.am to float
  %i.ao = fadd float %i.an, 5.000000e-01
  %i.ap = fdiv float %i.ao, 2.550000e+02
  %i.aq = load float, ptr %i.c, align 8, !tbaa !196
  %i.ar = load float, ptr %i.d, align 4, !tbaa !195
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ar, float %i.aq)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ak
  store float %i.as, ptr %i.at, align 4, !tbaa !89
  %i.au = add nuw i64 %.07, 2                     ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.au, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !635
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec8bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec4bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS3_0EE13encode_vectorEPKfPh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01012 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.d ] ; 4 uses
  %i.e = load float, ptr %i.c, align 4, !tbaa !197 ; 2 uses
  %i.f = fcmp une float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01012
  %i.h = load float, ptr %i.g, align 4, !tbaa !89
  %i.i = load float, ptr %i.d, align 8, !tbaa !198
  %i.j = fsub float %i.h, %i.i
  %i.k = fdiv float %i.j, %i.e                    ; 2 uses
  %i.l = fcmp olt float %i.k, 0.000000e+00
  %spec.store.select = select i1 %i.l, float 0.000000e+00, float %i.k ; 2 uses
  %i.m = fcmp ogt float %spec.store.select, 1.000000e+00
  %spec.store.select1 = select i1 %i.m, float 1.000000e+00, float %spec.store.select
  %i.n = fpext float %spec.store.select1 to double
  %i.o = fmul double %i.n, 1.500000e+01
  %i.p = fptosi double %i.o to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ]
  %.tr.i = trunc i64 %.01012 to i32
  %i.q = shl i32 %.tr.i, 2
  %i.r = and i32 %i.q, 4
  %i.s = shl i32 %.0, %i.r
  %i.t = lshr i64 %.01012, 1
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !80
  %i.w = trunc i32 %i.s to i8
  %i.x = or i8 %i.v, %i.w
  store i8 %i.x, ptr %i.u, align 1, !tbaa !80
  %i.y = add nuw i64 %.01012, 1                   ; 2 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !115
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !640
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec4bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS3_0EE13decode_vectorEPKhPf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115  ; 7 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.e = shl i64 %i.b, 2
  %i.f = getelementptr i8, ptr %2, i64 %i.e       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %bound0 = icmp ult ptr %2, %i.g
  %bound1 = icmp ult ptr %i.c, %i.f
  %found.conflict = and i1 %bound0, %bound1
  %3 = add i64 %i.b, -1
  %4 = lshr i64 %3, 1
  %5 = getelementptr i8, ptr %1, i64 %4
  %6 = getelementptr i8, ptr %5, i64 1
  %bound013 = icmp ult ptr %2, %6
  %bound114 = icmp ult ptr %1, %i.f
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %found.conflict, %found.conflict15
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %i.h = load float, ptr %i.c, align 8, !tbaa !198, !alias.scope !647
  %broadcast.splatinsert16 = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat17 = shufflevector <4 x float> %broadcast.splatinsert16, <4 x float> poison, <4 x i32> zeroinitializer
  %i.i = load float, ptr %i.d, align 4, !tbaa !197, !alias.scope !647
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.j = lshr exact i64 %index, 1
  %i.k = lshr exact i64 %index, 1
  %i.l = lshr exact i64 %index, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.m, align 1, !tbaa !80, !alias.scope !648
  %i.r = load <2 x i8>, ptr %i.n, align 1, !tbaa !80, !alias.scope !648
  %i.s = load i8, ptr %i.p, align 1, !tbaa !80, !alias.scope !648
  %i.t = insertelement <4 x i8> poison, i8 %i.q, i64 0
  %i.u = shufflevector <2 x i8> %i.r, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.v = shufflevector <4 x i8> %i.t, <4 x i8> %i.u, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.w = insertelement <4 x i8> %i.v, i8 %i.s, i64 3
  %i.x = zext <4 x i8> %i.w to <4 x i32>
  %i.y = shl <4 x i32> %vec.ind, splat (i32 2)
  %i.z = and <4 x i32> %i.y, splat (i32 4)
  %i.aa = lshr <4 x i32> %i.x, %i.z
  %i.ab = and <4 x i32> %i.aa, splat (i32 15)
  %i.ac = uitofp nneg <4 x i32> %i.ab to <4 x float>
  %i.ad = fadd <4 x float> %i.ac, splat (float 5.000000e-01)
  %i.ae = fdiv <4 x float> %i.ad, splat (float 1.500000e+01)
  %i.af = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %broadcast.splat, <4 x float> %broadcast.splat17)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <4 x float> %i.af, ptr %i.ag, align 4, !tbaa !89, !alias.scope !649, !noalias !650
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !645

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.07.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07 = phi i64 [ %i.ax, %scalar.ph ], [ %.07.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ai = lshr i64 %.07, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !80
  %i.al = zext i8 %i.ak to i32
  %.tr.i = trunc i64 %.07 to i32
  %i.am = shl i32 %.tr.i, 2
  %i.an = and i32 %i.am, 4
  %i.ao = lshr i32 %i.al, %i.an
  %i.ap = and i32 %i.ao, 15
  %i.aq = uitofp nneg i32 %i.ap to float
  %i.ar = fadd float %i.aq, 5.000000e-01
  %i.as = fdiv float %i.ar, 1.500000e+01
  %i.at = load float, ptr %i.c, align 8, !tbaa !198
  %i.au = load float, ptr %i.d, align 4, !tbaa !197
  %i.av = tail call float @llvm.fmuladd.f32(float %i.as, float %i.au, float %i.at)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07
  store float %i.av, ptr %i.aw, align 4, !tbaa !89
  %i.ax = add nuw i64 %.07, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !646
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss16scalar_quantizer17QuantizerTemplateINS0_9Codec4bitILNS_9SIMDLevelE0EEELNS0_24QuantizerTemplateScalingE0ELS3_0EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss16scalar_quantizer13QuantizerFP16ILNS_9SIMDLevelE0EE13encode_vectorEPKfPh(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !117  ; 5 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x float>, ptr %i.c, align 4, !tbaa !89 ; 2 uses
  %i.d = bitcast <4 x float> %wide.load to <4 x i32> ; 2 uses
  %i.e = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.f = bitcast <4 x float> %i.e to <4 x i32>    ; 2 uses
  %i.g = icmp samesign ugt <4 x i32> %i.f, splat (i32 2139095040)
  %i.h = select <4 x i1> %i.g, <4 x i32> splat (i32 32256), <4 x i32> splat (i32 31744)
  %i.i = and <4 x i32> %i.d, splat (i32 2147479552)
  %i.j = bitcast <4 x i32> %i.i to <4 x float>
  %i.k = fmul <4 x float> %i.j, splat (float 1.925930e-34) ; 2 uses
  %i.l = fcmp ogt <4 x float> %i.k, splat (float f0x0F7FF000)
  %i.m = bitcast <4 x float> %i.k to <4 x i32>
  %i.n = icmp samesign ult <4 x i32> %i.f, splat (i32 2139095040)
  %i.o = add <4 x i32> %i.m, splat (i32 4096)
  %i.p = lshr <4 x i32> %i.o, splat (i32 13)
  %i.q = select <4 x i1> %i.l, <4 x i32> splat (i32 31744), <4 x i32> %i.p
  %i.r = select <4 x i1> %i.n, <4 x i32> %i.q, <4 x i32> %i.h
  %i.s = lshr <4 x i32> %i.d, splat (i32 16)
  %i.t = and <4 x i32> %i.s, splat (i32 32768)
  %i.u = or <4 x i32> %i.r, %i.t
  %i.v = trunc <4 x i32> %i.u to <4 x i16>
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  store <4 x i16> %i.v, ptr %i.w, align 2, !tbaa !200
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !651

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader7

.lr.ph.preheader7:                                ; preds = %.lr.ph.preheader, %middle.block
  %.06.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader7, %.lr.ph
  %.06 = phi i64 [ %i.at, %.lr.ph ], [ %.06.ph, %.lr.ph.preheader7 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.06
  %i.z = load float, ptr %i.y, align 4, !tbaa !89 ; 2 uses
  %i.aa = bitcast float %i.z to i32               ; 2 uses
  %i.ab = tail call float @llvm.fabs.f32(float %i.z)
  %i.ac = bitcast float %i.ab to i32              ; 2 uses
  %i.ad = icmp samesign ugt i32 %i.ac, 2139095040
  %i.ae = select i1 %i.ad, i32 32256, i32 31744
  %i.af = and i32 %i.aa, 2147479552
  %i.ag = bitcast i32 %i.af to float
  %i.ah = fmul float %i.ag, 1.925930e-34          ; 2 uses
  %i.ai = fcmp ogt float %i.ah, f0x0F7FF000
  %i.aj = bitcast float %i.ah to i32
  %i.ak = icmp samesign ult i32 %i.ac, 2139095040
  %i.al = add i32 %i.aj, 4096
  %i.am = lshr i32 %i.al, 13
  %i.an = select i1 %i.ai, i32 31744, i32 %i.am
  %.0.i = select i1 %i.ak, i32 %i.an, i32 %i.ae
  %i.ao = lshr i32 %i.aa, 16
  %i.ap = and i32 %i.ao, 32768
  %i.aq = or i32 %.0.i, %i.ap
  %i.ar = trunc i32 %i.aq to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.06
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !200
  %i.at = add nuw i64 %.06, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !652
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss16scalar_quantizer13QuantizerFP16ILNS_9SIMDLevelE0EE13decode_vectorEPKhPf(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !117  ; 5 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i16>, ptr %i.c, align 2, !tbaa !200 ; 2 uses
  %i.d = zext <4 x i16> %wide.load to <4 x i32>
  %i.e = shl nuw nsw <4 x i32> %i.d, splat (i32 13) ; 3 uses
  %i.f = and <4 x i32> %i.e, splat (i32 268427264) ; 2 uses
end_hunk_0
