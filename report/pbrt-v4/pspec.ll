Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/pspec?download=true
inline.NumInlined: 1853
inline.NumDeleted: 656
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4pbrt27OwenScrambledRadicalInverseEimj:.lr.ph
  %i.s = lshr i32 %i.r, 16
  %i.t = or i32 %i.s, %i.r                        ; 6 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %_ZN4pbrt18PermutationElementEjjj.exit
  %.030 = phi i64 [ %1, %.lr.ph ], [ %i.u, %_ZN4pbrt18PermutationElementEjjj.exit ] ; 2 uses
  %.02629 = phi i64 [ 0, %.lr.ph ], [ %i.bt, %_ZN4pbrt18PermutationElementEjjj.exit ] ; 2 uses
  %.02728 = phi float [ 1.000000e+00, %.lr.ph ], [ %i.bu, %_ZN4pbrt18PermutationElementEjjj.exit ]
  %i.u = udiv i64 %.030, %i.d                     ; 2 uses
  %i.v = mul i64 %i.u, %i.d                       ; 0 uses
  %.recomposed = urem i64 %.030, %i.d
  %i.w = trunc i64 %.recomposed to i32
  %i.x = xor i64 %.02629, %i.i                    ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, 9202493588570546565       ; 2 uses
  %i.ab = lshr i64 %i.aa, 27
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, -9089707755183418291     ; 2 uses
  %i.ae = lshr i64 %i.ad, 33
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = trunc i64 %i.af to i32                  ; 6 uses
  %i.ah = lshr i32 %i.ag, 16
  %i.ai = lshr i32 %i.ag, 8
  %i.aj = lshr i32 %i.ag, 23
  %i.ak = lshr i32 %i.ag, 27
  %i.al = or i32 %i.ak, 1
  %i.am = mul i32 %i.al, 1765145193
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ %i.w, %bb.a ], [ %i.bo, %bb.b ]
  %i.an = xor i32 %.0.i, %i.ag
  %i.ao = mul i32 %i.an, -512718531
  %i.ap = xor i32 %i.ao, %i.ah                    ; 2 uses
  %i.aq = and i32 %i.ap, %i.t
  %i.ar = lshr i32 %i.aq, 4
  %i.as = xor i32 %i.ai, %i.ar
  %i.at = xor i32 %i.as, %i.ap
  %i.au = mul i32 %i.at, 153742143
  %i.av = xor i32 %i.au, %i.aj                    ; 2 uses
  %i.aw = and i32 %i.av, %i.t
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = xor i32 %i.ax, %i.av
  %i.az = mul i32 %i.am, %i.ay                    ; 2 uses
  %i.ba = and i32 %i.az, %i.t
  %i.bb = lshr i32 %i.ba, 11
  %i.bc = xor i32 %i.bb, %i.az
  %i.bd = mul i32 %i.bc, 1960620803               ; 2 uses
  %i.be = and i32 %i.bd, %i.t
  %i.bf = lshr i32 %i.be, 2
  %i.bg = xor i32 %i.bf, %i.bd
  %i.bh = mul i32 %i.bg, -1638916925              ; 2 uses
  %i.bi = and i32 %i.bh, %i.t
  %i.bj = lshr i32 %i.bi, 2
  %i.bk = xor i32 %i.bj, %i.bh
  %i.bl = mul i32 %i.bk, -933190689
  %i.bm = and i32 %i.bl, %i.t                     ; 2 uses
  %i.bn = lshr i32 %i.bm, 5
  %i.bo = xor i32 %i.bn, %i.bm                    ; 3 uses
  %.not.i = icmp ult i32 %i.bo, %i.c
  br i1 %.not.i, label %_ZN4pbrt18PermutationElementEjjj.exit, label %bb.b, !llvm.loop !7

_ZN4pbrt18PermutationElementEjjj.exit:            ; preds = %bb.b
  %i.bp = add i32 %i.bo, %i.ag
  %i.bq = urem i32 %i.bp, %i.c
  %i.br = mul i64 %.02629, %i.d
  %i.bs = sext i32 %i.bq to i64
  %i.bt = add i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = fmul float %i.h, %.02728                ; 3 uses
  %i.bv = fsub float 1.000000e+00, %i.bu
  %i.bw = fcmp olt float %i.bv, 1.000000e+00
  %i.bx = icmp ult i64 %i.bt, %i.f
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %i.by, label %bb.a, label %._crit_edge, !llvm.loop !402

._crit_edge:                                      ; preds = %_ZN4pbrt18PermutationElementEjjj.exit
  %i.bz = uitofp i64 %i.bt to float
  %i.ca = fmul float %i.bu, %i.bz                 ; 2 uses
  %i.cb = fcmp ogt float %i.ca, f0x3F7FFFFF
  %.sroa.speculated = select i1 %i.cb, float f0x3F7FFFFF, float %i.ca
  ret float %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt13ZSobolSamplerC2EiNS_6Point2IiEENS_17RandomizeStrategyEi(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1, i64 %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !29
  store i32 %3, ptr %0, align 8, !tbaa !126
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %4, ptr %i.b, align 4, !tbaa !127
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %or.cond = icmp eq i32 %i.c, 1
  br i1 %or.cond, label %bb.e, label %_ZN4pbrt10IsPowerOf2IiEEbT_.exit.thread

_ZN4pbrt10IsPowerOf2IiEEbT_.exit.thread:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !23, !alias.scope !405
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !26, !alias.scope !405
  store i8 0, ptr %i.d, align 8, !tbaa !27, !alias.scope !405
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRiJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.50, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt10IsPowerOf2IiEEbT_.exit.thread
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !28, !alias.scope !405 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %common.resume.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !27, !alias.scope !405
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #33
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

_ZN4pbrt12StringPrintfIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %_ZN4pbrt10IsPowerOf2IiEEbT_.exit.thread
  %i.k = load ptr, ptr %5, align 8, !tbaa !28
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.k)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.l = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZN4pbrt7WarningIJRiEEEvPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.d, align 8, !tbaa !27
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #33
  br label %_ZN4pbrt7WarningIJRiEEEvPKcDpOT_.exit

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.d, align 8, !tbaa !27
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %common.resume.i

_ZN4pbrt7WarningIJRiEEEvPKcDpOT_.exit:            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %.pre = load i32, ptr %i.a, align 4, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4pbrt7WarningIJRiEEEvPKcDpOT_.exit
  %i.u = phi i32 [ %1, %bb.a ], [ %.pre, %_ZN4pbrt7WarningIJRiEEEvPKcDpOT_.exit ]
  %.sroa.3.0.extract.shift = lshr i64 %2, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32
  %i.v = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.u, i1 true) ; 2 uses
  %i.w = xor i32 %i.v, 31
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.w, ptr %i.x, align 8, !tbaa !63
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.sroa.0.0.extract.trunc, i32 %.sroa.3.0.extract.trunc)
  %i.y = add nsw i32 %.sroa.speculated, -1        ; 2 uses
  %i.z = ashr i32 %i.y, 1
  %i.aa = or i32 %i.z, %i.y                       ; 2 uses
  %i.ab = ashr i32 %i.aa, 2
  %i.ac = or i32 %i.ab, %i.aa                     ; 2 uses
  %i.ad = ashr i32 %i.ac, 4
  %i.ae = or i32 %i.ad, %i.ac                     ; 2 uses
  %i.af = ashr i32 %i.ae, 8
  %i.ag = or i32 %i.af, %i.ae                     ; 2 uses
  %i.ah = ashr i32 %i.ag, 16
  %i.ai = or i32 %i.ah, %i.ag
  %i.aj = add nsw i32 %i.ai, 1
  %.lhs.trunc = sub nuw nsw i32 32, %i.v
  %.zext = lshr i32 %.lhs.trunc, 1
  %i.ak = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aj, i1 true)
  %i.al = xor i32 %i.ak, 31
  %i.am = add nuw nsw i32 %.zext, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.am, ptr %i.an, align 4, !tbaa !128
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x float> @_ZN4pbrt13ZSobolSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %.not.i = trunc i32 %i.b to i1
  %i.c = and i32 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !128
  %.01821.i = add nsw i32 %i.e, -1                ; 2 uses
  %.not2022.i = icmp slt i32 %.01821.i, %i.c
  br i1 %.not2022.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !62
  %i.j = mul i32 %i.i, 1431655765
  %i.k = zext i32 %i.j to i64
  br label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.ae, %bb.b ] ; 2 uses
  br i1 %.not.i, label %bb.c, label %._crit_edge.i._ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit_crit_edge

._crit_edge.i._ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit_crit_edge: ; preds = %._crit_edge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !62
  br label %_ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.01824.i = phi i32 [ %.01821.i, %.lr.ph.i ], [ %.018.i, %bb.b ] ; 2 uses
  %.023.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ae, %bb.b ]
  %1 = shl nuw nsw i32 %.01824.i, 1
  %2 = sub nuw nsw i32 %1, %i.c                   ; 2 uses
  %3 = zext nneg i32 %2 to i64                    ; 2 uses
  %i.l = lshr i64 %i.g, %3
  %i.m = and i64 %i.l, 3
  %4 = add nuw nsw i32 %2, 2
  %5 = zext nneg i32 %4 to i64
  %i.n = lshr i64 %i.g, %5
  %i.o = xor i64 %i.n, %i.k                       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = mul i64 %i.q, 9202493588570546565        ; 2 uses
  %i.s = lshr i64 %i.r, 27
  %i.t = xor i64 %i.s, %i.r
  %i.u = mul i64 %i.t, -9089707755183418291       ; 2 uses
  %i.v = lshr i64 %i.u, 57
  %i.w = lshr i64 %i.u, 24
  %i.x = xor i64 %i.v, %i.w
  %i.y = urem i64 %i.x, 24
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4pbrt13ZSobolSampler14GetSampleIndexEvE12permutations, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.m
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !27
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl i64 %i.ac, %3
  %i.ae = or i64 %i.ad, %.023.i                   ; 2 uses
  %.018.i = add nsw i32 %.01824.i, -1             ; 2 uses
  %.not20.i = icmp slt i32 %.018.i, %i.c
  br i1 %.not20.i, label %._crit_edge.i, label %bb.b, !llvm.loop !406

bb.c:                                             ; preds = %._crit_edge.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !64 ; 2 uses
  %i.ah = lshr i64 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !62 ; 2 uses
  %i.ak = mul i32 %i.aj, 1431655765
  %i.al = zext i32 %i.ak to i64
  %i.am = xor i64 %i.ah, %i.al                    ; 2 uses
  %i.an = lshr i64 %i.am, 31
  %i.ao = xor i64 %i.an, %i.am
  %i.ap = mul i64 %i.ao, 9202493588570546565      ; 2 uses
  %i.aq = lshr i64 %i.ap, 27
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, -9089707755183418291     ; 2 uses
  %i.at = lshr i64 %i.as, 33
  %i.au = xor i64 %i.ag, %i.at
  %i.av = xor i64 %i.au, %i.as
  %i.aw = and i64 %i.av, 1
  %i.ax = or i64 %i.aw, %.0.lcssa.i
  br label %_ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit

_ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit:  ; preds = %._crit_edge.i._ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit_crit_edge, %bb.c
  %i.ay = phi i32 [ %i.aj, %bb.c ], [ %.pre, %._crit_edge.i._ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit_crit_edge ]
  %.1.i = phi i64 [ %i.ax, %bb.c ], [ %.0.lcssa.i, %._crit_edge.i._ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit_crit_edge ] ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = add nsw i32 %i.ay, 2                    ; 2 uses
  store i32 %i.ba, ptr %i.az, align 8, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !127
  %.sroa.4.0.insert.ext.i = zext i32 %i.bc to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ba to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.bd = mul i64 %.sroa.0.0.insert.insert.i, -4132994306676758123 ; 2 uses
  %i.be = lshr i64 %i.bd, 47
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = mul i64 %i.bf, -4132994306676758123
  %i.bh = xor i64 %i.bg, 3829533694005038248
  %i.bi = mul i64 %i.bh, -4132994306676758123     ; 2 uses
  %i.bj = lshr i64 %i.bi, 47
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = mul i64 %i.bk, -4132994306676758123     ; 3 uses
  %i.bm = lshr i64 %i.bl, 47
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = trunc i64 %i.bn to i32                  ; 6 uses
  %i.bp = lshr i64 %i.bl, 32                      ; 2 uses
  %i.bq = trunc nuw i64 %i.bp to i32              ; 5 uses
  %i.br = load i32, ptr %0, align 8, !tbaa !126
  %.not12.i93 = icmp eq i64 %.1.i, 0              ; 6 uses
  switch i32 %i.br, label %bb.s [
    i32 0, label %bb.d
    i32 1, label %bb.i
    i32 2, label %bb.n
  ]

bb.d:                                             ; preds = %_ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit
  br i1 %.not12.i93, label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit34, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %bb.d, %bb.f
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i17, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %.0914.i = phi i32 [ %.1.i16, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %.01013.i = phi i64 [ %i.bw, %bb.f ], [ %.1.i, %bb.d ] ; 2 uses
  %i.bs = and i64 %.01013.i, 1
  %.not11.i = icmp eq i64 %i.bs, 0
  br i1 %.not11.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i14
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i15
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !29
  %i.bv = xor i32 %i.bu, %.0914.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i14
  %.1.i16 = phi i32 [ %i.bv, %bb.e ], [ %.0914.i, %.lr.ph.i14 ] ; 2 uses
  %i.bw = ashr i64 %.01013.i, 1                   ; 2 uses
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1
  %.not.i18 = icmp eq i64 %i.bw, 0
  br i1 %.not.i18, label %.lr.ph.i22, label %.lr.ph.i14, !llvm.loop !8

._crit_edge.loopexit.i30:                         ; preds = %bb.h
  %i.bx = uitofp i32 %.1.i16 to float
  %i.by = fmul nnan float %i.bx, f0x2F800000      ; 2 uses
  %i.bz = fcmp ogt float %i.by, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.bz, float f0x3F7FFFFF, float %i.by
  %i.ca = uitofp i32 %.1.i27 to float
  %i.cb = fmul nnan float %i.ca, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit34

.lr.ph.i22:                                       ; preds = %bb.f, %bb.h
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i28, %bb.h ], [ 52, %bb.f ] ; 2 uses
  %.0914.i24 = phi i32 [ %.1.i27, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.01013.i25 = phi i64 [ %i.cg, %bb.h ], [ %.1.i, %bb.f ] ; 2 uses
  %i.cc = and i64 %.01013.i25, 1
  %.not11.i26 = icmp eq i64 %i.cc, 0
  br i1 %.not11.i26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i22
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i23
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !29
  %i.cf = xor i32 %i.ce, %.0914.i24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i22
  %.1.i27 = phi i32 [ %i.cf, %bb.g ], [ %.0914.i24, %.lr.ph.i22 ] ; 2 uses
  %i.cg = ashr i64 %.01013.i25, 1                 ; 2 uses
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i23, 1
  %.not.i29 = icmp eq i64 %i.cg, 0
  br i1 %.not.i29, label %._crit_edge.loopexit.i30, label %.lr.ph.i22, !llvm.loop !8

bb.i:                                             ; preds = %_ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit
  br i1 %.not12.i93, label %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit.thread, label %.lr.ph.i37

_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit.thread: ; preds = %bb.i
  %i.ch = uitofp i32 %i.bo to float
  %i.ci = fmul nnan float %i.ch, f0x2F800000      ; 2 uses
  %i.cj = fcmp ogt float %i.ci, f0x3F7FFFFF
  %.sroa.speculated.i48149 = select i1 %i.cj, float f0x3F7FFFFF, float %i.ci
  br label %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit63

.lr.ph.i37:                                       ; preds = %bb.i, %bb.k
  %indvars.iv.i38 = phi i64 [ %indvars.iv.next.i43, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %.0914.i39 = phi i32 [ %.1.i42, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %.01013.i40 = phi i64 [ %i.co, %bb.k ], [ %.1.i, %bb.i ] ; 2 uses
  %i.ck = and i64 %.01013.i40, 1
  %.not11.i41 = icmp eq i64 %i.ck, 0
  br i1 %.not11.i41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i37
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i38
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !29
  %i.cn = xor i32 %i.cm, %.0914.i39
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i37
  %.1.i42 = phi i32 [ %i.cn, %bb.j ], [ %.0914.i39, %.lr.ph.i37 ] ; 2 uses
  %i.co = ashr i64 %.01013.i40, 1                 ; 2 uses
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i38, 1
  %.not.i44 = icmp eq i64 %i.co, 0
  br i1 %.not.i44, label %.lr.ph.i51, label %.lr.ph.i37, !llvm.loop !9

._crit_edge.loopexit.i59:                         ; preds = %bb.m
  %i.cp = xor i32 %.1.i42, %i.bo
  %i.cq = uitofp i32 %i.cp to float
  %i.cr = fmul nnan float %i.cq, f0x2F800000      ; 2 uses
  %i.cs = fcmp ogt float %i.cr, f0x3F7FFFFF
  %.sroa.speculated.i48 = select i1 %i.cs, float f0x3F7FFFFF, float %i.cr
  %i.ct = xor i32 %.1.i56, %i.bq
  br label %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit63

.lr.ph.i51:                                       ; preds = %bb.k, %bb.m
  %indvars.iv.i52 = phi i64 [ %indvars.iv.next.i57, %bb.m ], [ 52, %bb.k ] ; 2 uses
  %.0914.i53 = phi i32 [ %.1.i56, %bb.m ], [ 0, %bb.k ] ; 2 uses
  %.01013.i54 = phi i64 [ %i.cy, %bb.m ], [ %.1.i, %bb.k ] ; 2 uses
  %i.cu = and i64 %.01013.i54, 1
  %.not11.i55 = icmp eq i64 %i.cu, 0
  br i1 %.not11.i55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i51
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i52
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !29
  %i.cx = xor i32 %i.cw, %.0914.i53
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i51
  %.1.i56 = phi i32 [ %i.cx, %bb.l ], [ %.0914.i53, %.lr.ph.i51 ] ; 2 uses
  %i.cy = ashr i64 %.01013.i54, 1                 ; 2 uses
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i52, 1
  %.not.i58 = icmp eq i64 %i.cy, 0
  br i1 %.not.i58, label %._crit_edge.loopexit.i59, label %.lr.ph.i51, !llvm.loop !9

_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit63: ; preds = %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit.thread, %._crit_edge.loopexit.i59
  %.sroa.speculated.i48150 = phi float [ %.sroa.speculated.i48149, %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit.thread ], [ %.sroa.speculated.i48, %._crit_edge.loopexit.i59 ]
  %.09.lcssa.i61 = phi i32 [ %i.bq, %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit.thread ], [ %i.ct, %._crit_edge.loopexit.i59 ]
  %i.cz = uitofp i32 %.09.lcssa.i61 to float
  %i.da = fmul nnan float %i.cz, f0x2F800000
  br label %_ZN4pbrt11SobolSampleINS_12NoRandomizerEEEfliT_.exit34

bb.n:                                             ; preds = %_ZNK4pbrt13ZSobolSampler14GetSampleIndexEv.exit
  br i1 %.not12.i93, label %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit, label %.lr.ph.i66

._crit_edge.loopexit.i74:                         ; preds = %bb.p
  %i.db = tail call i32 @llvm.bitreverse.i32(i32 %.1.i71)
  br label %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit

.lr.ph.i66:                                       ; preds = %bb.n, %bb.p
  %indvars.iv.i67 = phi i64 [ %indvars.iv.next.i72, %bb.p ], [ 0, %bb.n ] ; 2 uses
  %.0914.i68 = phi i32 [ %.1.i71, %bb.p ], [ 0, %bb.n ] ; 2 uses
  %.01013.i69 = phi i64 [ %i.dg, %bb.p ], [ %.1.i, %bb.n ] ; 2 uses
  %i.dc = and i64 %.01013.i69, 1
  %.not11.i70 = icmp eq i64 %i.dc, 0
  br i1 %.not11.i70, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i66
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i67
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !29
  %i.df = xor i32 %i.de, %.0914.i68
  br label %bb.p

end_hunk_0
