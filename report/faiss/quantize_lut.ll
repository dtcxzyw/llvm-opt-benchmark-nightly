Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/quantize_lut?download=true
inline.NumInlined: 213
inline.NumDeleted: 81
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5faiss12quantize_lut28round_uint8_per_column_multiEPfmmmS1_S1_:bb.a
  %.048103 = phi i64 [ 0, %.lr.ph106.split.preheader.new ], [ %i.fp, %.lr.ph106.split ] ; 9 uses
  %.049102 = phi float [ 0.000000e+00, %.lr.ph106.split.preheader.new ], [ %i.fo, %.lr.ph106.split ]
  %niter212 = phi i64 [ 0, %.lr.ph106.split.preheader.new ], [ %niter212.next.7, %.lr.ph106.split ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.el = load float, ptr %i.ek, align 4, !tbaa !12
  %i.em = fadd float %.049102, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !12
  %i.eq = fadd float %i.em, %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load float, ptr %i.es, align 4, !tbaa !12
  %i.eu = fadd float %i.eq, %i.et
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !12
  %i.ey = fadd float %i.eu, %i.ex
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !12
  %i.fc = fadd float %i.ey, %i.fb
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 20
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !12
  %i.fg = fadd float %i.fc, %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !12
  %i.fk = fadd float %i.fg, %i.fj
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.048103
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 28
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !12
  %i.fo = fadd float %i.fk, %i.fn                 ; 3 uses
  %i.fp = add nuw nsw i64 %.048103, 8             ; 2 uses
  %niter212.next.7 = add nuw nsw i64 %niter212, 8 ; 2 uses
  %niter212.ncmp.7 = icmp eq i64 %niter212.next.7, %unroll_iter211
  br i1 %niter212.ncmp.7, label %._crit_edge107.loopexit.unr-lcssa, label %.lr.ph106.split, !llvm.loop !44

bb.b:                                             ; preds = %._crit_edge107
  store float %i.ej, ptr %4, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge107
  %.not58 = icmp eq ptr %5, null
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %.049.lcssa, ptr %5, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not.i.i.i = icmp eq ptr %.sroa.079.0142147, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fq = ptrtoint ptr %.sroa.11.0140149 to i64
  %i.fr = ptrtoint ptr %.sroa.079.0142147 to i64
  %i.fs = sub i64 %i.fq, %i.fr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.079.0142147, i64 noundef %i.fs) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss12quantize_lut21quantize_LUT_and_biasEmmmbPKfS2_PhmPtPfS5_(i64 noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(none) %6, i64 noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.a, ptr %11, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !23
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #17 ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %i.c to i64                ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.f)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %11, align 8, !tbaa !24
  %i.h = load i64, ptr %i.b, align 8, !tbaa !22
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.g, i64 noundef %i.h, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.k = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12quantize_lut21quantize_LUT_and_biasEmmmbPKfS2_PhmPtPfS5_, ptr noundef nonnull @.str.3, i32 noundef 147)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #14
          to label %bb.ai unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.k) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.l, %bb.i ]
  %i.m = load ptr, ptr %11, align 8, !tbaa !24    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.o = load i64, ptr %i.a, align 8, !tbaa !23
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit388

bb.k:                                             ; preds = %bb.b
  %i.q = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.q, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i64 %1, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge732, label %.noexc294

.noexc294:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.r = shl nuw nsw i64 %1, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #15 ; 6 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !12
  %i.u = add nsw i64 %1, -1                       ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.lr.ph731, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc294
  %i.w = getelementptr i8, ptr %i.s, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.u, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !12
  br label %.lr.ph731

.lr.ph731:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc294
  %.not.i = icmp eq i64 %2, 0
  %i.x = add i64 %2, -1                           ; 2 uses
  %xtraiter1169 = and i64 %2, 3                   ; 3 uses
  %i.y = icmp ult i64 %i.x, 3
  %unroll_iter1174 = and i64 %2, -4
  %lcmp.mod1171.not = icmp eq i64 %xtraiter1169, 0
  %lcmp.mod1173 = icmp ne i64 %xtraiter1169, 0
  %xtraiter1176 = and i64 %2, 3                   ; 3 uses
  %i.z = icmp ult i64 %i.x, 3
  %unroll_iter1181 = and i64 %2, -4
  %lcmp.mod1178.not = icmp eq i64 %xtraiter1176, 0
  %lcmp.mod1180 = icmp ne i64 %xtraiter1176, 0
  br label %bb.l

._crit_edge732.loopexit:                          ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit
  %i.aa = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %.sroa.speculated577, i64 1
  br label %._crit_edge732

._crit_edge732:                                   ; preds = %._crit_edge732.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0582.0844 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.s, %._crit_edge732.loopexit ] ; 4 uses
  %.sroa.12588.0842 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %._crit_edge732.loopexit ] ; 2 uses
  %.0596.lcssa = phi float [ 0.000000e+00, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cl, %._crit_edge732.loopexit ] ; 3 uses
  %i.ac = phi <2 x float> [ <float 0.000000e+00, float -inf>, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ab, %._crit_edge732.loopexit ] ; 2 uses
  %i.ad = fcmp ogt <2 x float> %i.ac, zeroinitializer
  %i.ae = fdiv <2 x float> <float 6.553500e+04, float 2.550000e+02>, %i.ac
  %i.af = select <2 x i1> %i.ad, <2 x float> %i.ae, <2 x float> splat (float +inf) ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.ah = extractelement <2 x float> %i.af, i64 1 ; 2 uses
  %i.ai = fcmp olt float %i.ag, %i.ah
  %.sroa.speculated571 = select i1 %i.ai, float %i.ag, float %i.ah ; 2 uses
  %i.aj = tail call float @llvm.fabs.f32(float %.sroa.speculated571)
  %i.ak = fcmp one float %i.aj, +inf
  %.0270 = select i1 %i.ak, float %.sroa.speculated571, float 0.000000e+00 ; 7 uses
  %.not.i303 = icmp eq i64 %2, 0
  %or.cond = or i1 %.not.i.i.i.i, %.not.i303
  %i.al = mul i64 %2, %1                          ; 2 uses
  %12 = getelementptr i8, ptr %6, i64 %i.al       ; 2 uses
  br i1 %or.cond, label %._crit_edge739.split, label %.lr.ph.i304.preheader.preheader

.lr.ph.i304.preheader.preheader:                  ; preds = %._crit_edge732
  %i.am = shl i64 %i.al, 2
  %scevgep1054 = getelementptr i8, ptr %4, i64 %i.am
  %min.iters.check1061 = icmp ult i64 %2, 4
  %bound01055 = icmp ult ptr %6, %scevgep1054
  %bound11056 = icmp ult ptr %4, %12
  %found.conflict1057 = and i1 %bound01055, %bound11056
  %i.an = and i64 %2, -6917529027641081856
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = or i1 %found.conflict1057, %i.ao
  %n.vec1063 = and i64 %2, 6917529027641081852    ; 3 uses
  %broadcast.splatinsert1066 = insertelement <4 x float> poison, float %.0270, i64 0
  %broadcast.splat1067 = shufflevector <4 x float> %broadcast.splatinsert1066, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n1073 = icmp eq i64 %2, %n.vec1063
  %xtraiter1183 = and i64 %2, 1
  %lcmp.mod1184.not = icmp eq i64 %xtraiter1183, 0
  br label %.lr.ph.i304.preheader

bb.l:                                             ; preds = %.lr.ph731, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit
  %.0259730 = phi i64 [ 0, %.lr.ph731 ], [ %i.cm, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit ] ; 4 uses
  %.0260729 = phi float [ 0.000000e+00, %.lr.ph731 ], [ %i.ck, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit ]
  %.0596728 = phi float [ 0.000000e+00, %.lr.ph731 ], [ %i.cl, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit ]
  %.0601727 = phi float [ -inf, %.lr.ph731 ], [ %.sroa.speculated577, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit ] ; 2 uses
  %i.aq = mul i64 %.0259730, %2
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aq ; 10 uses
  br i1 %.not.i, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l
  br i1 %i.y, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit.thread: ; preds = %bb.l
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0259730
  store float +inf, ptr %i.as, align 4, !tbaa !12
  br label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.011.i = phi i64 [ %i.bi, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %.0810.i = phi float [ %.1.i.3, %.lr.ph.i ], [ +inf, %.lr.ph.i.preheader ] ; 2 uses
  %niter1175 = phi i64 [ %niter1175.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.011.i
  %i.au = load float, ptr %i.at, align 4, !tbaa !12 ; 2 uses
  %i.av = fcmp olt float %i.au, %.0810.i
  %.1.i = select i1 %i.av, float %i.au, float %.0810.i ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.011.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !12 ; 2 uses
  %i.az = fcmp olt float %i.ay, %.1.i
  %.1.i.1 = select i1 %i.az, float %i.ay, float %.1.i ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.011.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12 ; 2 uses
  %i.bd = fcmp olt float %i.bc, %.1.i.1
  %.1.i.2 = select i1 %i.bd, float %i.bc, float %.1.i.1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.011.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !12 ; 2 uses
  %i.bh = fcmp olt float %i.bg, %.1.i.2
  %.1.i.3 = select i1 %i.bh, float %i.bg, float %.1.i.2 ; 3 uses
  %i.bi = add nuw i64 %.011.i, 4                  ; 2 uses
  %niter1175.next.3 = add nuw i64 %niter1175, 4   ; 2 uses
  %niter1175.ncmp.3 = icmp eq i64 %niter1175.next.3, %unroll_iter1174
  br i1 %niter1175.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit.unr-lcssa: ; preds = %.lr.ph.i
  br i1 %lcmp.mod1171.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bi, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit.unr-lcssa ]
  %.0810.i.epil.init = phi float [ +inf, %.lr.ph.i.preheader ], [ %.1.i.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1173)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.011.i.epil = phi i64 [ %i.bm, %.lr.ph.i.epil ], [ %.011.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0810.i.epil = phi float [ %.1.i.epil, %.lr.ph.i.epil ], [ %.0810.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter1170 = phi i64 [ %epil.iter1170.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.011.i.epil
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bl = fcmp olt float %i.bk, %.0810.i.epil
  %.1.i.epil = select i1 %i.bl, float %i.bk, float %.0810.i.epil ; 2 uses
  %i.bm = add nuw i64 %.011.i.epil, 1
  %epil.iter1170.next = add i64 %epil.iter1170, 1 ; 2 uses
  %epil.iter1170.cmp.not = icmp eq i64 %epil.iter1170.next, %xtraiter1169
  br i1 %epil.iter1170.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit, label %.lr.ph.i.epil, !llvm.loop !50

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit: ; preds = %.lr.ph.i.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit.unr-lcssa
  %.1.i.lcssa = phi float [ %.1.i.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0259730
  store float %.1.i.lcssa, ptr %i.bn, align 4, !tbaa !12
  br i1 %i.z, label %.lr.ph.i296.epil.preheader, label %.lr.ph.i296

.lr.ph.i296:                                      ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit, %.lr.ph.i296
  %.011.i297 = phi i64 [ %i.cd, %.lr.ph.i296 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit ] ; 5 uses
  %.0810.i298 = phi float [ %.1.i299.3, %.lr.ph.i296 ], [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit ] ; 2 uses
  %niter1182 = phi i64 [ %niter1182.next.3, %.lr.ph.i296 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.011.i297
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12 ; 2 uses
  %i.bq = fcmp ogt float %i.bp, %.0810.i298
  %.1.i299 = select i1 %i.bq, float %i.bp, float %.0810.i298 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.011.i297
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !12 ; 2 uses
  %i.bu = fcmp ogt float %i.bt, %.1.i299
  %.1.i299.1 = select i1 %i.bu, float %i.bt, float %.1.i299 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.011.i297
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !12 ; 2 uses
  %i.by = fcmp ogt float %i.bx, %.1.i299.1
  %.1.i299.2 = select i1 %i.by, float %i.bx, float %.1.i299.1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.011.i297
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !12 ; 2 uses
  %i.cc = fcmp ogt float %i.cb, %.1.i299.2
  %.1.i299.3 = select i1 %i.cc, float %i.cb, float %.1.i299.2 ; 3 uses
  %i.cd = add nuw i64 %.011.i297, 4               ; 2 uses
  %niter1182.next.3 = add i64 %niter1182, 4       ; 2 uses
  %niter1182.ncmp.3 = icmp eq i64 %niter1182.next.3, %unroll_iter1181
  br i1 %niter1182.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa, label %.lr.ph.i296, !llvm.loop !1

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i296
  br i1 %lcmp.mod1178.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit, label %.lr.ph.i296.epil.preheader

.lr.ph.i296.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit
  %.011.i297.epil.init = phi i64 [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit ], [ %i.cd, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ]
  %.0810.i298.epil.init = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit ], [ %.1.i299.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1180)
  br label %.lr.ph.i296.epil

.lr.ph.i296.epil:                                 ; preds = %.lr.ph.i296.epil, %.lr.ph.i296.epil.preheader
  %.011.i297.epil = phi i64 [ %i.ch, %.lr.ph.i296.epil ], [ %.011.i297.epil.init, %.lr.ph.i296.epil.preheader ] ; 2 uses
  %.0810.i298.epil = phi float [ %.1.i299.epil, %.lr.ph.i296.epil ], [ %.0810.i298.epil.init, %.lr.ph.i296.epil.preheader ] ; 2 uses
  %epil.iter1177 = phi i64 [ %epil.iter1177.next, %.lr.ph.i296.epil ], [ 0, %.lr.ph.i296.epil.preheader ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.011.i297.epil
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !12 ; 2 uses
  %i.cg = fcmp ogt float %i.cf, %.0810.i298.epil
  %.1.i299.epil = select i1 %i.cg, float %i.cf, float %.0810.i298.epil ; 2 uses
  %i.ch = add nuw i64 %.011.i297.epil, 1
  %epil.iter1177.next = add i64 %epil.iter1177, 1 ; 2 uses
  %epil.iter1177.cmp.not = icmp eq i64 %epil.iter1177.next, %xtraiter1176
  br i1 %epil.iter1177.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit, label %.lr.ph.i296.epil, !llvm.loop !51

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa, %.lr.ph.i296.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit.thread
  %.08.lcssa.i609 = phi float [ +inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit.thread ], [ %.1.i.lcssa, %.lr.ph.i296.epil ], [ %.1.i.lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ] ; 2 uses
  %.08.lcssa.i301 = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit.thread ], [ %.1.i299.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ], [ %.1.i299.epil, %.lr.ph.i296.epil ]
  %i.ci = fsub float %.08.lcssa.i301, %.08.lcssa.i609 ; 3 uses
  %i.cj = fcmp olt float %.0601727, %i.ci
  %.sroa.speculated577 = select i1 %i.cj, float %i.ci, float %.0601727 ; 2 uses
  %i.ck = fadd float %.0260729, %i.ci             ; 2 uses
  %i.cl = fadd float %.0596728, %.08.lcssa.i609   ; 2 uses
  %i.cm = add nuw nsw i64 %.0259730, 1            ; 2 uses
  %exitcond795.not = icmp eq i64 %i.cm, %1
  br i1 %exitcond795.not, label %._crit_edge732.loopexit, label %bb.l, !llvm.loop !52

._crit_edge739.split:                             ; preds = %._crit_edge732
  %i.cn = sub i64 %7, %1
  %i.co = mul i64 %i.cn, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %12, i8 0, i64 %i.co, i1 false)
  %.not.i.i.i = icmp eq ptr %.sroa.0582.0844, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split

.lr.ph.i304.preheader:                            ; preds = %.lr.ph.i304.preheader.preheader, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit
  %.0258736 = phi i64 [ %i.ee, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit ], [ 0, %.lr.ph.i304.preheader.preheader ] ; 3 uses
  %i.cp = mul i64 %.0258736, %2                   ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cp ; 4 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0844, i64 %.0258736
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !12 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 %i.cp ; 4 uses
  %brmerge = or i1 %min.iters.check1061, %i.ap
  br i1 %brmerge, label %.lr.ph.i304.preheader1075, label %vector.ph1062

vector.ph1062:                                    ; preds = %.lr.ph.i304.preheader
  %broadcast.splatinsert1064 = insertelement <4 x float> poison, float %i.cs, i64 0
  %broadcast.splat1065 = shufflevector <4 x float> %broadcast.splatinsert1064, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1068

vector.body1068:                                  ; preds = %vector.body1068, %vector.ph1062
  %index1069 = phi i64 [ 0, %vector.ph1062 ], [ %index.next1071, %vector.body1068 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %index1069
  %wide.load1070 = load <4 x float>, ptr %i.cu, align 4, !tbaa !12, !alias.scope !105
  %i.cv = fsub <4 x float> %wide.load1070, %broadcast.splat1065
  %i.cw = fmul <4 x float> %broadcast.splat1067, %i.cv
  %i.cx = fadd <4 x float> %i.cw, splat (float 5.000000e-01)
  %i.cy = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.cx)
  %i.cz = fptoui <4 x float> %i.cy to <4 x i8>
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 %index1069
  store <4 x i8> %i.cz, ptr %i.da, align 1, !tbaa !23, !alias.scope !106, !noalias !105
  %index.next1071 = add nuw i64 %index1069, 4     ; 2 uses
  %i.db = icmp eq i64 %index.next1071, %n.vec1063
  br i1 %i.db, label %middle.block1072, label %vector.body1068, !llvm.loop !56

middle.block1072:                                 ; preds = %vector.body1068
  br i1 %cmp.n1073, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit, label %.lr.ph.i304.preheader1075

.lr.ph.i304.preheader1075:                        ; preds = %.lr.ph.i304.preheader, %middle.block1072
  %.08.i.ph = phi i64 [ %n.vec1063, %middle.block1072 ], [ 0, %.lr.ph.i304.preheader ] ; 5 uses
  %.neg1187 = or disjoint i64 %.08.i.ph, 1
  br i1 %lcmp.mod1184.not, label %.lr.ph.i304.prol.loopexit, label %.lr.ph.i304.prol

.lr.ph.i304.prol:                                 ; preds = %.lr.ph.i304.preheader1075
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.08.i.ph
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !12
  %i.de = fsub float %i.dd, %i.cs
  %i.df = fmul float %.0270, %i.de
  %i.dg = fadd float %i.df, 5.000000e-01
  %i.dh = tail call float @llvm.floor.f32(float %i.dg)
  %i.di = fptoui float %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.08.i.ph
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !23
  %i.dk = or disjoint i64 %.08.i.ph, 1
  br label %.lr.ph.i304.prol.loopexit

.lr.ph.i304.prol.loopexit:                        ; preds = %.lr.ph.i304.prol, %.lr.ph.i304.preheader1075
  %.08.i.unr = phi i64 [ %.08.i.ph, %.lr.ph.i304.preheader1075 ], [ %i.dk, %.lr.ph.i304.prol ]
  %i.dl = icmp eq i64 %2, %.neg1187
  br i1 %i.dl, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit, label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %.lr.ph.i304.prol.loopexit, %.lr.ph.i304
  %.08.i = phi i64 [ %i.ed, %.lr.ph.i304 ], [ %.08.i.unr, %.lr.ph.i304.prol.loopexit ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.08.i
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !12
  %i.do = fsub float %i.dn, %i.cs
  %i.dp = fmul float %.0270, %i.do
  %i.dq = fadd float %i.dp, 5.000000e-01
  %i.dr = tail call float @llvm.floor.f32(float %i.dq)
  %i.ds = fptoui float %i.dr to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.08.i
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !23
  %i.du = add nuw i64 %.08.i, 1                   ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !12
  %i.dx = fsub float %i.dw, %i.cs
  %i.dy = fmul float %.0270, %i.dx
  %i.dz = fadd float %i.dy, 5.000000e-01
  %i.ea = tail call float @llvm.floor.f32(float %i.dz)
  %i.eb = fptoui float %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.du
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !23
  %i.ed = add nuw i64 %.08.i, 2                   ; 2 uses
  %exitcond.not.i305.1 = icmp eq i64 %i.ed, %2
  br i1 %exitcond.not.i305.1, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit, label %.lr.ph.i304, !llvm.loop !57

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit: ; preds = %.lr.ph.i304.prol.loopexit, %.lr.ph.i304, %middle.block1072
  %i.ee = add nuw nsw i64 %.0258736, 1            ; 2 uses
  %exitcond796.not = icmp eq i64 %i.ee, %1
  br i1 %exitcond796.not, label %._crit_edge739.split.thread, label %.lr.ph.i304.preheader, !llvm.loop !58

._crit_edge739.split.thread:                      ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit
  %i.ef = mul i64 %2, %1
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 %i.ef
  %i.eh = sub i64 %7, %1
  %i.ei = mul i64 %i.eh, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eg, i8 0, i64 %i.ei, i1 false)
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split

bb.m:                                             ; preds = %bb.a
  br i1 %3, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ej = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.ej, label %.noexc312, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i306

.noexc312:                                        ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i306: ; preds = %bb.n
  %.not.i.i.i.i307 = icmp eq i64 %1, 0            ; 3 uses
  br i1 %.not.i.i.i.i307, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314, label %.noexc313

.noexc313:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i306
  %i.ek = shl nuw nsw i64 %1, 2
  %i.el = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #15 ; 5 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %1 ; 2 uses
  store float 0.000000e+00, ptr %i.el, align 4, !tbaa !12
  %i.en = add nsw i64 %1, -1                      ; 2 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i308

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i308: ; preds = %.noexc313
  %i.ep = getelementptr i8, ptr %i.el, i64 4
  %.idx.i.i.i.i.i.i.i309 = shl nuw nsw i64 %i.en, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ep, i8 0, i64 %.idx.i.i.i.i.i.i.i309, i1 false), !tbaa !12
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i308, %.noexc313, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i306
  %.sroa.12568.0 = phi ptr [ %i.em, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i308 ], [ %i.em, %.noexc313 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i306 ]
  %.sroa.0562.0 = phi ptr [ %i.el, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i308 ], [ %i.el, %.noexc313 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i306 ] ; 5 uses
  %.not.i315 = icmp eq i64 %0, 0                  ; 2 uses
  br i1 %.not.i315, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330, label %.lr.ph.i316.preheader

.lr.ph.i316.preheader:                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314
  %i.eq = add i64 %0, -1                          ; 2 uses
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.er = icmp ult i64 %i.eq, 3
  br i1 %i.er, label %.lr.ph.i316.epil.preheader, label %.lr.ph.i316.preheader.new

.lr.ph.i316.preheader.new:                        ; preds = %.lr.ph.i316.preheader
  %unroll_iter = and i64 %0, -4
  br label %.lr.ph.i316

.lr.ph.i316:                                      ; preds = %.lr.ph.i316, %.lr.ph.i316.preheader.new
  %.011.i317 = phi i64 [ 0, %.lr.ph.i316.preheader.new ], [ %i.fh, %.lr.ph.i316 ] ; 5 uses
  %.0810.i318 = phi float [ +inf, %.lr.ph.i316.preheader.new ], [ %.1.i319.3, %.lr.ph.i316 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i316.preheader.new ], [ %niter.next.3, %.lr.ph.i316 ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i317
  %i.et = load float, ptr %i.es, align 4, !tbaa !12 ; 2 uses
  %i.eu = fcmp olt float %i.et, %.0810.i318
  %.1.i319 = select i1 %i.eu, float %i.et, float %.0810.i318 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i317
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !12 ; 2 uses
  %i.ey = fcmp olt float %i.ex, %.1.i319
  %.1.i319.1 = select i1 %i.ey, float %i.ex, float %.1.i319 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i317
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !12 ; 2 uses
  %i.fc = fcmp olt float %i.fb, %.1.i319.1
  %.1.i319.2 = select i1 %i.fc, float %i.fb, float %.1.i319.1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i317
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !12 ; 2 uses
  %i.fg = fcmp olt float %i.ff, %.1.i319.2
  %.1.i319.3 = select i1 %i.fg, float %i.ff, float %.1.i319.2 ; 3 uses
  %i.fh = add nuw i64 %.011.i317, 4               ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i324.preheader.unr-lcssa, label %.lr.ph.i316, !llvm.loop !0

.lr.ph.i324.preheader.unr-lcssa:                  ; preds = %.lr.ph.i316
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i324.preheader, label %.lr.ph.i316.epil.preheader

.lr.ph.i316.epil.preheader:                       ; preds = %.lr.ph.i324.preheader.unr-lcssa, %.lr.ph.i316.preheader
  %.011.i317.epil.init = phi i64 [ 0, %.lr.ph.i316.preheader ], [ %i.fh, %.lr.ph.i324.preheader.unr-lcssa ]
  %.0810.i318.epil.init = phi float [ +inf, %.lr.ph.i316.preheader ], [ %.1.i319.3, %.lr.ph.i324.preheader.unr-lcssa ]
  %lcmp.mod1097 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1097)
  br label %.lr.ph.i316.epil

.lr.ph.i316.epil:                                 ; preds = %.lr.ph.i316.epil, %.lr.ph.i316.epil.preheader
  %.011.i317.epil = phi i64 [ %i.fl, %.lr.ph.i316.epil ], [ %.011.i317.epil.init, %.lr.ph.i316.epil.preheader ] ; 2 uses
  %.0810.i318.epil = phi float [ %.1.i319.epil, %.lr.ph.i316.epil ], [ %.0810.i318.epil.init, %.lr.ph.i316.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i316.epil ], [ 0, %.lr.ph.i316.epil.preheader ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i317.epil
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !12 ; 2 uses
  %i.fk = fcmp olt float %i.fj, %.0810.i318.epil
  %.1.i319.epil = select i1 %i.fk, float %i.fj, float %.0810.i318.epil ; 2 uses
  %i.fl = add nuw i64 %.011.i317.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i324.preheader, label %.lr.ph.i316.epil, !llvm.loop !59

.lr.ph.i324.preheader:                            ; preds = %.lr.ph.i316.epil, %.lr.ph.i324.preheader.unr-lcssa
  %.1.i319.lcssa = phi float [ %.1.i319.3, %.lr.ph.i324.preheader.unr-lcssa ], [ %.1.i319.epil, %.lr.ph.i316.epil ] ; 2 uses
  %xtraiter1098 = and i64 %0, 3                   ; 3 uses
  %i.fm = icmp ult i64 %i.eq, 3
  br i1 %i.fm, label %.lr.ph.i324.epil.preheader, label %.lr.ph.i324.preheader.new

.lr.ph.i324.preheader.new:                        ; preds = %.lr.ph.i324.preheader
  %unroll_iter1103 = and i64 %0, -4
  br label %.lr.ph.i324

.lr.ph.i324:                                      ; preds = %.lr.ph.i324, %.lr.ph.i324.preheader.new
  %.011.i325 = phi i64 [ 0, %.lr.ph.i324.preheader.new ], [ %i.gc, %.lr.ph.i324 ] ; 5 uses
  %.0810.i326 = phi float [ -inf, %.lr.ph.i324.preheader.new ], [ %.1.i327.3, %.lr.ph.i324 ] ; 2 uses
  %niter1104 = phi i64 [ 0, %.lr.ph.i324.preheader.new ], [ %niter1104.next.3, %.lr.ph.i324 ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i325
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !12 ; 2 uses
  %i.fp = fcmp ogt float %i.fo, %.0810.i326
  %.1.i327 = select i1 %i.fp, float %i.fo, float %.0810.i326 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i325
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !12 ; 2 uses
  %i.ft = fcmp ogt float %i.fs, %.1.i327
  %.1.i327.1 = select i1 %i.ft, float %i.fs, float %.1.i327 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i325
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !12 ; 2 uses
  %i.fx = fcmp ogt float %i.fw, %.1.i327.1
  %.1.i327.2 = select i1 %i.fx, float %i.fw, float %.1.i327.1 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i325
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !12 ; 2 uses
  %i.gb = fcmp ogt float %i.ga, %.1.i327.2
  %.1.i327.3 = select i1 %i.gb, float %i.ga, float %.1.i327.2 ; 3 uses
  %i.gc = add nuw i64 %.011.i325, 4               ; 2 uses
  %niter1104.next.3 = add nuw i64 %niter1104, 4   ; 2 uses
  %niter1104.ncmp.3 = icmp eq i64 %niter1104.next.3, %unroll_iter1103
  br i1 %niter1104.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa, label %.lr.ph.i324, !llvm.loop !1

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa: ; preds = %.lr.ph.i324
  %lcmp.mod1100.not = icmp eq i64 %xtraiter1098, 0
  br i1 %lcmp.mod1100.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330, label %.lr.ph.i324.epil.preheader

.lr.ph.i324.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa, %.lr.ph.i324.preheader
  %.011.i325.epil.init = phi i64 [ 0, %.lr.ph.i324.preheader ], [ %i.gc, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa ]
  %.0810.i326.epil.init = phi float [ -inf, %.lr.ph.i324.preheader ], [ %.1.i327.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa ]
  %lcmp.mod1102 = icmp ne i64 %xtraiter1098, 0
  tail call void @llvm.assume(i1 %lcmp.mod1102)
  br label %.lr.ph.i324.epil

.lr.ph.i324.epil:                                 ; preds = %.lr.ph.i324.epil, %.lr.ph.i324.epil.preheader
  %.011.i325.epil = phi i64 [ %i.gg, %.lr.ph.i324.epil ], [ %.011.i325.epil.init, %.lr.ph.i324.epil.preheader ] ; 2 uses
  %.0810.i326.epil = phi float [ %.1.i327.epil, %.lr.ph.i324.epil ], [ %.0810.i326.epil.init, %.lr.ph.i324.epil.preheader ] ; 2 uses
  %epil.iter1099 = phi i64 [ %epil.iter1099.next, %.lr.ph.i324.epil ], [ 0, %.lr.ph.i324.epil.preheader ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i325.epil
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !12 ; 2 uses
  %i.gf = fcmp ogt float %i.ge, %.0810.i326.epil
  %.1.i327.epil = select i1 %i.gf, float %i.ge, float %.0810.i326.epil ; 2 uses
  %i.gg = add nuw i64 %.011.i325.epil, 1
  %epil.iter1099.next = add i64 %epil.iter1099, 1 ; 2 uses
  %epil.iter1099.cmp.not = icmp eq i64 %epil.iter1099.next, %xtraiter1098
  br i1 %epil.iter1099.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330, label %.lr.ph.i324.epil, !llvm.loop !60

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa, %.lr.ph.i324.epil, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314
  %.08.lcssa.i321611 = phi float [ +inf, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314 ], [ %.1.i319.lcssa, %.lr.ph.i324.epil ], [ %.1.i319.lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa ] ; 4 uses
  %.08.lcssa.i329 = phi float [ -inf, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit314 ], [ %.1.i327.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330.loopexit.unr-lcssa ], [ %.1.i327.epil, %.lr.ph.i324.epil ]
  %i.gh = fsub float %.08.lcssa.i329, %.08.lcssa.i321611 ; 2 uses
  br i1 %.not.i.i.i.i307, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330
  %.not.i332 = icmp eq i64 %2, 0
  %i.gi = add i64 %2, -1                          ; 2 uses
  %xtraiter1105 = and i64 %2, 3                   ; 3 uses
  %i.gj = icmp ult i64 %i.gi, 3
  %unroll_iter1110 = and i64 %2, -4
  %lcmp.mod1107.not = icmp eq i64 %xtraiter1105, 0
  %lcmp.mod1109 = icmp ne i64 %xtraiter1105, 0
  %xtraiter1112 = and i64 %2, 3                   ; 3 uses
  %i.gk = icmp ult i64 %i.gi, 3
  %unroll_iter1117 = and i64 %2, -4
  %lcmp.mod1114.not = icmp eq i64 %xtraiter1112, 0
  %lcmp.mod1116 = icmp ne i64 %xtraiter1112, 0
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330
  %.0607.lcssa = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330 ], [ %.sroa.speculated557, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ]
  %.1597.lcssa = phi float [ 0.000000e+00, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330 ], [ %i.iv, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ]
  %.0257.lcssa = phi float [ %i.gh, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit330 ], [ %i.iu, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ]
  %i.gl = insertelement <2 x float> poison, float %.0257.lcssa, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %.0607.lcssa, i64 1 ; 2 uses
  %i.gn = fcmp ogt <2 x float> %i.gm, zeroinitializer
  %i.go = fdiv <2 x float> <float 6.553500e+04, float 2.550000e+02>, %i.gm
  %i.gp = select <2 x i1> %i.gn, <2 x float> %i.go, <2 x float> splat (float +inf) ; 2 uses
  %i.gq = extractelement <2 x float> %i.gp, i64 0 ; 2 uses
  %i.gr = extractelement <2 x float> %i.gp, i64 1 ; 2 uses
  %i.gs = fcmp olt float %i.gq, %i.gr
  %.sroa.speculated551 = select i1 %i.gs, float %i.gq, float %i.gr ; 2 uses
  %i.gt = tail call float @llvm.fabs.f32(float %.sroa.speculated551)
  %i.gu = fcmp one float %i.gt, +inf
  %.1271 = select i1 %i.gu, float %.sroa.speculated551, float 0.000000e+00 ; 8 uses
  %i.gv = fadd float %.08.lcssa.i321611, %.1597.lcssa ; 2 uses
  %.not.i355 = icmp eq i64 %2, 0
  %or.cond740 = or i1 %.not.i.i.i.i307, %.not.i355
  br i1 %or.cond740, label %._crit_edge642.split, label %.lr.ph.i356.preheader.preheader

.lr.ph.i356.preheader.preheader:                  ; preds = %._crit_edge
  %i.gw = mul i64 %2, %1                          ; 2 uses
  %scevgep = getelementptr i8, ptr %6, i64 %i.gw
  %13 = shl i64 %i.gw, 2
  %scevgep943 = getelementptr i8, ptr %4, i64 %13
  %min.iters.check = icmp ult i64 %2, 4
  %bound0 = icmp ult ptr %6, %scevgep943
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.gx = and i64 %2, -6917529027641081856
  %i.gy = icmp ne i64 %i.gx, 0
  %i.gz = or i1 %found.conflict, %i.gy
  %n.vec = and i64 %2, 6917529027641081852        ; 3 uses
  %broadcast.splatinsert945 = insertelement <4 x float> poison, float %.1271, i64 0
  %broadcast.splat946 = shufflevector <4 x float> %broadcast.splatinsert945, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %2, %n.vec
  %xtraiter1119 = and i64 %2, 1
  %lcmp.mod1120.not = icmp eq i64 %xtraiter1119, 0
  br label %.lr.ph.i356.preheader

bb.o:                                             ; preds = %.lr.ph, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347
  %.0256636 = phi i64 [ 0, %.lr.ph ], [ %i.iw, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ] ; 4 uses
  %.0257635 = phi float [ %i.gh, %.lr.ph ], [ %i.iu, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ]
  %.1597634 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.iv, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ]
  %.0607633 = phi float [ -inf, %.lr.ph ], [ %.sroa.speculated557, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347 ] ; 2 uses
  %i.ha = mul i64 %.0256636, %2
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ha ; 10 uses
  br i1 %.not.i332, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.thread, label %.lr.ph.i333.preheader

.lr.ph.i333.preheader:                            ; preds = %bb.o
  br i1 %i.gj, label %.lr.ph.i333.epil.preheader, label %.lr.ph.i333

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.thread: ; preds = %bb.o
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0562.0, i64 %.0256636
  store float +inf, ptr %i.hc, align 4, !tbaa !12
  br label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347

.lr.ph.i333:                                      ; preds = %.lr.ph.i333.preheader, %.lr.ph.i333
  %.011.i334 = phi i64 [ %i.hs, %.lr.ph.i333 ], [ 0, %.lr.ph.i333.preheader ] ; 5 uses
  %.0810.i335 = phi float [ %.1.i336.3, %.lr.ph.i333 ], [ +inf, %.lr.ph.i333.preheader ] ; 2 uses
  %niter1111 = phi i64 [ %niter1111.next.3, %.lr.ph.i333 ], [ 0, %.lr.ph.i333.preheader ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.011.i334
  %i.he = load float, ptr %i.hd, align 4, !tbaa !12 ; 2 uses
  %i.hf = fcmp olt float %i.he, %.0810.i335
  %.1.i336 = select i1 %i.hf, float %i.he, float %.0810.i335 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.011.i334
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !12 ; 2 uses
  %i.hj = fcmp olt float %i.hi, %.1.i336
  %.1.i336.1 = select i1 %i.hj, float %i.hi, float %.1.i336 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.011.i334
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !12 ; 2 uses
  %i.hn = fcmp olt float %i.hm, %.1.i336.1
  %.1.i336.2 = select i1 %i.hn, float %i.hm, float %.1.i336.1 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.011.i334
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !12 ; 2 uses
  %i.hr = fcmp olt float %i.hq, %.1.i336.2
  %.1.i336.3 = select i1 %i.hr, float %i.hq, float %.1.i336.2 ; 3 uses
  %i.hs = add nuw i64 %.011.i334, 4               ; 2 uses
  %niter1111.next.3 = add nuw i64 %niter1111, 4   ; 2 uses
  %niter1111.ncmp.3 = icmp eq i64 %niter1111.next.3, %unroll_iter1110
  br i1 %niter1111.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa, label %.lr.ph.i333, !llvm.loop !0

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa: ; preds = %.lr.ph.i333
  br i1 %lcmp.mod1107.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339, label %.lr.ph.i333.epil.preheader

.lr.ph.i333.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa, %.lr.ph.i333.preheader
  %.011.i334.epil.init = phi i64 [ 0, %.lr.ph.i333.preheader ], [ %i.hs, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa ]
  %.0810.i335.epil.init = phi float [ +inf, %.lr.ph.i333.preheader ], [ %.1.i336.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1109)
  br label %.lr.ph.i333.epil

.lr.ph.i333.epil:                                 ; preds = %.lr.ph.i333.epil, %.lr.ph.i333.epil.preheader
  %.011.i334.epil = phi i64 [ %i.hw, %.lr.ph.i333.epil ], [ %.011.i334.epil.init, %.lr.ph.i333.epil.preheader ] ; 2 uses
  %.0810.i335.epil = phi float [ %.1.i336.epil, %.lr.ph.i333.epil ], [ %.0810.i335.epil.init, %.lr.ph.i333.epil.preheader ] ; 2 uses
  %epil.iter1106 = phi i64 [ %epil.iter1106.next, %.lr.ph.i333.epil ], [ 0, %.lr.ph.i333.epil.preheader ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.011.i334.epil
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !12 ; 2 uses
  %i.hv = fcmp olt float %i.hu, %.0810.i335.epil
  %.1.i336.epil = select i1 %i.hv, float %i.hu, float %.0810.i335.epil ; 2 uses
  %i.hw = add nuw i64 %.011.i334.epil, 1
  %epil.iter1106.next = add i64 %epil.iter1106, 1 ; 2 uses
  %epil.iter1106.cmp.not = icmp eq i64 %epil.iter1106.next, %xtraiter1105
  br i1 %epil.iter1106.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339, label %.lr.ph.i333.epil, !llvm.loop !61

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339: ; preds = %.lr.ph.i333.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa
  %.1.i336.lcssa = phi float [ %.1.i336.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.unr-lcssa ], [ %.1.i336.epil, %.lr.ph.i333.epil ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0562.0, i64 %.0256636
  store float %.1.i336.lcssa, ptr %i.hx, align 4, !tbaa !12
  br i1 %i.gk, label %.lr.ph.i341.epil.preheader, label %.lr.ph.i341

.lr.ph.i341:                                      ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339, %.lr.ph.i341
  %.011.i342 = phi i64 [ %i.in, %.lr.ph.i341 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339 ] ; 5 uses
  %.0810.i343 = phi float [ %.1.i344.3, %.lr.ph.i341 ], [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339 ] ; 2 uses
  %niter1118 = phi i64 [ %niter1118.next.3, %.lr.ph.i341 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339 ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.011.i342
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !12 ; 2 uses
  %i.ia = fcmp ogt float %i.hz, %.0810.i343
  %.1.i344 = select i1 %i.ia, float %i.hz, float %.0810.i343 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.011.i342
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = load float, ptr %i.ic, align 4, !tbaa !12 ; 2 uses
  %i.ie = fcmp ogt float %i.id, %.1.i344
  %.1.i344.1 = select i1 %i.ie, float %i.id, float %.1.i344 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.011.i342
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !12 ; 2 uses
  %i.ii = fcmp ogt float %i.ih, %.1.i344.1
  %.1.i344.2 = select i1 %i.ii, float %i.ih, float %.1.i344.1 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.011.i342
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  %i.il = load float, ptr %i.ik, align 4, !tbaa !12 ; 2 uses
  %i.im = fcmp ogt float %i.il, %.1.i344.2
  %.1.i344.3 = select i1 %i.im, float %i.il, float %.1.i344.2 ; 3 uses
  %i.in = add nuw i64 %.011.i342, 4               ; 2 uses
  %niter1118.next.3 = add i64 %niter1118, 4       ; 2 uses
  %niter1118.ncmp.3 = icmp eq i64 %niter1118.next.3, %unroll_iter1117
  br i1 %niter1118.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa, label %.lr.ph.i341, !llvm.loop !1

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa: ; preds = %.lr.ph.i341
  br i1 %lcmp.mod1114.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347, label %.lr.ph.i341.epil.preheader

.lr.ph.i341.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339
  %.011.i342.epil.init = phi i64 [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339 ], [ %i.in, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa ]
  %.0810.i343.epil.init = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339 ], [ %.1.i344.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1116)
  br label %.lr.ph.i341.epil

.lr.ph.i341.epil:                                 ; preds = %.lr.ph.i341.epil, %.lr.ph.i341.epil.preheader
  %.011.i342.epil = phi i64 [ %i.ir, %.lr.ph.i341.epil ], [ %.011.i342.epil.init, %.lr.ph.i341.epil.preheader ] ; 2 uses
  %.0810.i343.epil = phi float [ %.1.i344.epil, %.lr.ph.i341.epil ], [ %.0810.i343.epil.init, %.lr.ph.i341.epil.preheader ] ; 2 uses
  %epil.iter1113 = phi i64 [ %epil.iter1113.next, %.lr.ph.i341.epil ], [ 0, %.lr.ph.i341.epil.preheader ]
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.011.i342.epil
  %i.ip = load float, ptr %i.io, align 4, !tbaa !12 ; 2 uses
  %i.iq = fcmp ogt float %i.ip, %.0810.i343.epil
  %.1.i344.epil = select i1 %i.iq, float %i.ip, float %.0810.i343.epil ; 2 uses
  %i.ir = add nuw i64 %.011.i342.epil, 1
  %epil.iter1113.next = add i64 %epil.iter1113, 1 ; 2 uses
  %epil.iter1113.cmp.not = icmp eq i64 %epil.iter1113.next, %xtraiter1112
  br i1 %epil.iter1113.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347, label %.lr.ph.i341.epil, !llvm.loop !62

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa, %.lr.ph.i341.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.thread
  %.08.lcssa.i338613 = phi float [ +inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.thread ], [ %.1.i336.lcssa, %.lr.ph.i341.epil ], [ %.1.i336.lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa ] ; 2 uses
  %.08.lcssa.i346 = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit339.thread ], [ %.1.i344.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit347.loopexit.unr-lcssa ], [ %.1.i344.epil, %.lr.ph.i341.epil ]
  %i.is = fsub float %.08.lcssa.i346, %.08.lcssa.i338613 ; 3 uses
  %i.it = fcmp olt float %.0607633, %i.is
  %.sroa.speculated557 = select i1 %i.it, float %i.is, float %.0607633 ; 2 uses
  %i.iu = fadd float %.0257635, %i.is             ; 2 uses
  %i.iv = fadd float %.1597634, %.08.lcssa.i338613 ; 2 uses
  %i.iw = add nuw nsw i64 %.0256636, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.iw, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !63

._crit_edge642.split:                             ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit359.loopexit, %._crit_edge
  %i.ix = mul i64 %2, %1
  %i.iy = getelementptr inbounds nuw i8, ptr %6, i64 %i.ix
  %i.iz = sub i64 %7, %1
  %i.ja = mul i64 %i.iz, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.iy, i8 0, i64 %i.ja, i1 false)
  br i1 %.not.i315, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, label %.lr.ph.i350.preheader

.lr.ph.i350.preheader:                            ; preds = %._crit_edge642.split
  %min.iters.check948 = icmp ult i64 %0, 4
  br i1 %min.iters.check948, label %.lr.ph.i350.preheader1092, label %vector.ph949

vector.ph949:                                     ; preds = %.lr.ph.i350.preheader
  %n.vec950 = and i64 %0, -4                      ; 3 uses
  %broadcast.splatinsert951 = insertelement <4 x float> poison, float %.08.lcssa.i321611, i64 0
  %broadcast.splat952 = shufflevector <4 x float> %broadcast.splatinsert951, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert953 = insertelement <4 x float> poison, float %.1271, i64 0
  %broadcast.splat954 = shufflevector <4 x float> %broadcast.splatinsert953, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body955

vector.body955:                                   ; preds = %vector.body955, %vector.ph949
  %index956 = phi i64 [ 0, %vector.ph949 ], [ %index.next958, %vector.body955 ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index956
  %wide.load957 = load <4 x float>, ptr %i.jb, align 4, !tbaa !12
  %i.jc = fsub <4 x float> %wide.load957, %broadcast.splat952
  %i.jd = fmul <4 x float> %broadcast.splat954, %i.jc
  %i.je = fadd <4 x float> %i.jd, splat (float 5.000000e-01)
  %i.jf = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.je)
  %i.jg = fptoui <4 x float> %i.jf to <4 x i16>
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index956
  store <4 x i16> %i.jg, ptr %i.jh, align 2, !tbaa !26
  %index.next958 = add nuw i64 %index956, 4       ; 2 uses
  %i.ji = icmp eq i64 %index.next958, %n.vec950
  br i1 %i.ji, label %middle.block959, label %vector.body955, !llvm.loop !64

middle.block959:                                  ; preds = %vector.body955
  %cmp.n960 = icmp eq i64 %0, %n.vec950
  br i1 %cmp.n960, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, label %.lr.ph.i350.preheader1092

.lr.ph.i350.preheader1092:                        ; preds = %.lr.ph.i350.preheader, %middle.block959
  %.08.i351.ph = phi i64 [ 0, %.lr.ph.i350.preheader ], [ %n.vec950, %middle.block959 ]
  br label %.lr.ph.i350

.lr.ph.i350:                                      ; preds = %.lr.ph.i350.preheader1092, %.lr.ph.i350
  %.08.i351 = phi i64 [ %i.jr, %.lr.ph.i350 ], [ %.08.i351.ph, %.lr.ph.i350.preheader1092 ] ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.08.i351
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !12
  %i.jl = fsub float %i.jk, %.08.lcssa.i321611
  %i.jm = fmul float %.1271, %i.jl
  %i.jn = fadd float %i.jm, 5.000000e-01
  %i.jo = tail call float @llvm.floor.f32(float %i.jn)
  %i.jp = fptoui float %i.jo to i16
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %.08.i351
end_hunk_0
begin_hunk_1_@_ZN5faiss12quantize_lut21quantize_LUT_and_biasEmmmbPKfS2_PhmPtPfS5_:bb.a
  %i.kv = fptoui float %i.ku to i8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.08.i357
  store i8 %i.kv, ptr %i.kw, align 1, !tbaa !23
  %i.kx = add nuw i64 %.08.i357, 1                ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.kx
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !12
  %i.la = fsub float %i.kz, %i.jv
  %i.lb = fmul float %.1271, %i.la
  %i.lc = fadd float %i.lb, 5.000000e-01
  %i.ld = tail call float @llvm.floor.f32(float %i.lc)
  %i.le = fptoui float %i.ld to i8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.kx
  store i8 %i.le, ptr %i.lf, align 1, !tbaa !23
  %i.lg = add nuw i64 %.08.i357, 2                ; 2 uses
  %exitcond.not.i358.1 = icmp eq i64 %i.lg, %2
  br i1 %exitcond.not.i358.1, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit359.loopexit, label %.lr.ph.i356, !llvm.loop !70

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit359.loopexit: ; preds = %.lr.ph.i356.prol.loopexit, %.lr.ph.i356, %middle.block
  %i.lh = add nuw nsw i64 %.0255639, 1            ; 2 uses
  %exitcond781.not = icmp eq i64 %i.lh, %1
  br i1 %exitcond781.not, label %._crit_edge642.split, label %.lr.ph.i356.preheader, !llvm.loop !71

bb.p:                                             ; preds = %bb.m
  %.not285 = icmp eq ptr %8, null
  br i1 %.not285, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.li = mul i64 %1, %0                          ; 5 uses
  %i.lj = icmp ugt i64 %i.li, 2305843009213693951
  br i1 %i.lj, label %.noexc366, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i360

.noexc366:                                        ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i360: ; preds = %bb.q
  %.not.i.i.i.i361 = icmp eq i64 %i.li, 0
  br i1 %.not.i.i.i.i361, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit368, label %.noexc367

.noexc367:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i360
  %i.lk = shl nuw nsw i64 %i.li, 2
  %i.ll = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lk) #15 ; 5 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.li ; 2 uses
  store float 0.000000e+00, ptr %i.ll, align 4, !tbaa !12
  %i.ln = add nsw i64 %i.li, -1                   ; 2 uses
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit368, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i362

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i362: ; preds = %.noexc367
  %i.lp = getelementptr i8, ptr %i.ll, i64 4
  %.idx.i.i.i.i.i.i.i363 = shl nuw nsw i64 %i.ln, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.lp, i8 0, i64 %.idx.i.i.i.i.i.i.i363, i1 false), !tbaa !12
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit368

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit368:            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i362, %.noexc367, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i360
  %.sroa.0541.0 = phi ptr [ %i.ll, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i362 ], [ %i.ll, %.noexc367 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i360 ] ; 12 uses
  %.sroa.13547.0 = phi ptr [ %i.lm, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i362 ], [ %i.lm, %.noexc367 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i360 ] ; 2 uses
  %i.lq = icmp ugt i64 %0, 2305843009213693951
  br i1 %i.lq, label %bb.r, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit368
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
          to label %.noexc375 unwind label %bb.t

.noexc375:                                        ; preds = %bb.r
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit368
  %.not.i.i.i.i370 = icmp eq i64 %0, 0            ; 2 uses
  br i1 %.not.i.i.i.i370, label %._crit_edge664, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369
  %i.lr = shl nuw nsw i64 %0, 2
  %i.ls = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lr) #15
          to label %.noexc376 unwind label %bb.t  ; 5 uses

.noexc376:                                        ; preds = %bb.s
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %0
  store float 0.000000e+00, ptr %i.ls, align 4, !tbaa !12
  %i.lu = add nsw i64 %0, -1                      ; 2 uses
  %i.lv = icmp eq i64 %i.lu, 0
  br i1 %i.lv, label %.lr.ph.i379.preheader, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i371

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i371: ; preds = %.noexc376
  %i.lw = getelementptr i8, ptr %i.ls, i64 4
  %.idx.i.i.i.i.i.i.i372 = shl nuw nsw i64 %i.lu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.lw, i8 0, i64 %.idx.i.i.i.i.i.i.i372, i1 false), !tbaa !12
  br label %.lr.ph.i379.preheader

.lr.ph.i379.preheader:                            ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i371, %.noexc376
  %i.lx = add nsw i64 %0, -1
  %xtraiter1121 = and i64 %0, 3                   ; 3 uses
  %i.ly = icmp ult i64 %i.lx, 3
  br i1 %i.ly, label %.lr.ph.i379.epil.preheader, label %.lr.ph.i379.preheader.new

.lr.ph.i379.preheader.new:                        ; preds = %.lr.ph.i379.preheader
  %unroll_iter1126 = and i64 %0, 2305843009213693948
  br label %.lr.ph.i379

.lr.ph.i379:                                      ; preds = %.lr.ph.i379, %.lr.ph.i379.preheader.new
  %.011.i380 = phi i64 [ 0, %.lr.ph.i379.preheader.new ], [ %i.mo, %.lr.ph.i379 ] ; 5 uses
  %.0810.i381 = phi float [ +inf, %.lr.ph.i379.preheader.new ], [ %.1.i382.3, %.lr.ph.i379 ] ; 2 uses
  %niter1127 = phi i64 [ 0, %.lr.ph.i379.preheader.new ], [ %niter1127.next.3, %.lr.ph.i379 ]
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i380
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !12 ; 2 uses
  %i.mb = fcmp olt float %i.ma, %.0810.i381
  %.1.i382 = select i1 %i.mb, float %i.ma, float %.0810.i381 ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i380
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.me = load float, ptr %i.md, align 4, !tbaa !12 ; 2 uses
  %i.mf = fcmp olt float %i.me, %.1.i382
  %.1.i382.1 = select i1 %i.mf, float %i.me, float %.1.i382 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i380
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !12 ; 2 uses
  %i.mj = fcmp olt float %i.mi, %.1.i382.1
  %.1.i382.2 = select i1 %i.mj, float %i.mi, float %.1.i382.1 ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i380
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 12
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !12 ; 2 uses
  %i.mn = fcmp olt float %i.mm, %.1.i382.2
  %.1.i382.3 = select i1 %i.mn, float %i.mm, float %.1.i382.2 ; 3 uses
  %i.mo = add nuw nsw i64 %.011.i380, 4           ; 2 uses
  %niter1127.next.3 = add nuw nsw i64 %niter1127, 4 ; 2 uses
  %niter1127.ncmp.3 = icmp eq i64 %niter1127.next.3, %unroll_iter1126
  br i1 %niter1127.ncmp.3, label %.lr.ph663.unr-lcssa, label %.lr.ph.i379, !llvm.loop !0

.lr.ph663.unr-lcssa:                              ; preds = %.lr.ph.i379
  %lcmp.mod1123.not = icmp eq i64 %xtraiter1121, 0
  br i1 %lcmp.mod1123.not, label %.lr.ph663, label %.lr.ph.i379.epil.preheader

.lr.ph.i379.epil.preheader:                       ; preds = %.lr.ph663.unr-lcssa, %.lr.ph.i379.preheader
  %.011.i380.epil.init = phi i64 [ 0, %.lr.ph.i379.preheader ], [ %i.mo, %.lr.ph663.unr-lcssa ]
  %.0810.i381.epil.init = phi float [ +inf, %.lr.ph.i379.preheader ], [ %.1.i382.3, %.lr.ph663.unr-lcssa ]
  %lcmp.mod1125 = icmp ne i64 %xtraiter1121, 0
  tail call void @llvm.assume(i1 %lcmp.mod1125)
  br label %.lr.ph.i379.epil

.lr.ph.i379.epil:                                 ; preds = %.lr.ph.i379.epil, %.lr.ph.i379.epil.preheader
  %.011.i380.epil = phi i64 [ %i.ms, %.lr.ph.i379.epil ], [ %.011.i380.epil.init, %.lr.ph.i379.epil.preheader ] ; 2 uses
  %.0810.i381.epil = phi float [ %.1.i382.epil, %.lr.ph.i379.epil ], [ %.0810.i381.epil.init, %.lr.ph.i379.epil.preheader ] ; 2 uses
  %epil.iter1122 = phi i64 [ %epil.iter1122.next, %.lr.ph.i379.epil ], [ 0, %.lr.ph.i379.epil.preheader ]
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.011.i380.epil
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !12 ; 2 uses
  %i.mr = fcmp olt float %i.mq, %.0810.i381.epil
  %.1.i382.epil = select i1 %i.mr, float %i.mq, float %.0810.i381.epil ; 2 uses
  %i.ms = add nuw nsw i64 %.011.i380.epil, 1
  %epil.iter1122.next = add i64 %epil.iter1122, 1 ; 2 uses
  %epil.iter1122.cmp.not = icmp eq i64 %epil.iter1122.next, %xtraiter1121
  br i1 %epil.iter1122.cmp.not, label %.lr.ph663, label %.lr.ph.i379.epil, !llvm.loop !72

.lr.ph663:                                        ; preds = %.lr.ph.i379.epil, %.lr.ph663.unr-lcssa
  %.1.i382.lcssa = phi float [ %.1.i382.3, %.lr.ph663.unr-lcssa ], [ %.1.i382.epil, %.lr.ph.i379.epil ]
  %i.mt = ptrtoint ptr %i.lt to i64
  %.not743 = icmp eq i64 %1, 0
  %.not.i391 = icmp eq i64 %2, 0
  %i.mu = add i64 %2, -1                          ; 2 uses
  %i.mv = add i64 %1, -1
  %xtraiter1128 = and i64 %2, 3                   ; 3 uses
  %i.mw = icmp ult i64 %i.mu, 3
  %unroll_iter1133 = and i64 %2, -4
  %lcmp.mod1130.not = icmp eq i64 %xtraiter1128, 0
  %lcmp.mod1132 = icmp ne i64 %xtraiter1128, 0
  %xtraiter1135 = and i64 %2, 3                   ; 3 uses
  %i.mx = icmp ult i64 %i.mu, 3
  %unroll_iter1140 = and i64 %2, -4
  %lcmp.mod1137.not = icmp eq i64 %xtraiter1135, 0
  %lcmp.mod1139 = icmp ne i64 %xtraiter1135, 0
  %xtraiter1142 = and i64 %1, 3                   ; 2 uses
  %lcmp.mod1143.not = icmp eq i64 %xtraiter1142, 0
  %i.my = icmp ult i64 %i.mv, 3
  br label %bb.v

._crit_edge664.loopexit:                          ; preds = %._crit_edge650
  %i.mz = insertelement <2 x float> poison, float %.sroa.speculated528, i64 0
  %i.na = insertelement <2 x float> %i.mz, float %.1606.lcssa, i64 1
  br label %._crit_edge664

._crit_edge664:                                   ; preds = %._crit_edge664.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369
  %.sroa.0535.0616850 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369 ], [ %i.ls, %._crit_edge664.loopexit ] ; 5 uses
  %.sroa.10539.0617849 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369 ], [ %i.mt, %._crit_edge664.loopexit ]
  %.2598.lcssa = phi float [ +inf, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369 ], [ %.sroa.speculated523, %._crit_edge664.loopexit ] ; 4 uses
  %i.nb = phi <2 x float> [ splat (float -inf), %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i369 ], [ %i.na, %._crit_edge664.loopexit ] ; 2 uses
  %i.nc = fcmp ogt <2 x float> %i.nb, zeroinitializer
  %i.nd = fdiv <2 x float> <float 6.553500e+04, float 2.550000e+02>, %i.nb
  %i.ne = select <2 x i1> %i.nc, <2 x float> %i.nd, <2 x float> splat (float +inf) ; 2 uses
  %i.nf = extractelement <2 x float> %i.ne, i64 0 ; 2 uses
  %i.ng = extractelement <2 x float> %i.ne, i64 1 ; 2 uses
  %i.nh = fcmp olt float %i.nf, %i.ng
  %.sroa.speculated511 = select i1 %i.nh, float %i.nf, float %i.ng ; 2 uses
  %i.ni = tail call float @llvm.fabs.f32(float %.sroa.speculated511)
  %i.nj = fcmp one float %i.ni, +inf
  %.2272 = select i1 %i.nj, float %.sroa.speculated511, float 0.000000e+00 ; 8 uses
  br i1 %.not.i.i.i.i370, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412, label %.preheader632.lr.ph

.preheader632.lr.ph:                              ; preds = %._crit_edge664
  %.not745 = icmp eq i64 %1, 0
  %.not.i417 = icmp eq i64 %2, 0
  %i.nk = sub i64 %7, %1                          ; 2 uses
  %i.nl = mul i64 %i.nk, %2
  %i.nm = shl i64 %2, 2                           ; 2 uses
  %min.iters.check973 = icmp ult i64 %2, 4
  %14 = or i64 %i.nm, %2
  %15 = icmp slt i64 %14, 0
  %n.vec975 = and i64 %2, -4                      ; 3 uses
  %broadcast.splatinsert978 = insertelement <4 x float> poison, float %.2272, i64 0
  %broadcast.splat979 = shufflevector <4 x float> %broadcast.splatinsert978, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n985 = icmp eq i64 %2, %n.vec975
  %xtraiter1144 = and i64 %2, 1
  %lcmp.mod1145.not = icmp eq i64 %xtraiter1144, 0
  br label %.preheader632

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.nn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i387 = icmp eq ptr %.sroa.0541.0, null
  br i1 %.not.i.i.i387, label %_ZNSt6vectorIfSaIfEED2Ev.exit388, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.no = ptrtoint ptr %.sroa.13547.0 to i64
  %i.np = ptrtoint ptr %.sroa.0541.0 to i64
  %i.nq = sub i64 %i.no, %i.np
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0541.0, i64 noundef %i.nq) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit388

bb.v:                                             ; preds = %.lr.ph663, %._crit_edge650
  %.0250662 = phi i64 [ 0, %.lr.ph663 ], [ %i.ov, %._crit_edge650 ] ; 3 uses
  %.0251661 = phi i64 [ 0, %.lr.ph663 ], [ %.1252.lcssa, %._crit_edge650 ] ; 5 uses
  %.2598660 = phi float [ +inf, %.lr.ph663 ], [ %.sroa.speculated523, %._crit_edge650 ] ; 2 uses
  %.0604659 = phi float [ -inf, %.lr.ph663 ], [ %.sroa.speculated528, %._crit_edge650 ] ; 2 uses
  %.0605658 = phi float [ -inf, %.lr.ph663 ], [ %.1606.lcssa, %._crit_edge650 ] ; 4 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0250662
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !12 ; 4 uses
  %i.nt = fsub float %i.ns, %.1.i382.lcssa        ; 3 uses
  br i1 %.not743, label %._crit_edge650, label %.lr.ph649

.lr.ph649:                                        ; preds = %bb.v
  %i.nu = add i64 %1, %.0251661                   ; 5 uses
  %i.nv = insertelement <2 x float> poison, float %i.nt, i64 0
  %i.nw = insertelement <2 x float> %i.nv, float %i.ns, i64 1 ; 2 uses
  br i1 %.not.i391, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader, label %.lr.ph.i392.preheader

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader: ; preds = %.lr.ph649
  br i1 %lcmp.mod1143.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol
  %.1252646.us.prol = phi i64 [ %i.oa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol ], [ %.0251661, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ] ; 2 uses
  %i.nx = phi <2 x float> [ %i.nz, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol ], [ %i.nw, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ]
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0541.0, i64 %.1252646.us.prol
  store float +inf, ptr %i.ny, align 4, !tbaa !12
  %i.nz = fadd <2 x float> %i.nx, <float -inf, float +inf> ; 4 uses
  %i.oa = add i64 %.1252646.us.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1142
  br i1 %prol.iter.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol, !llvm.loop !73

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol
  %i.ob = extractelement <2 x float> %i.nz, i64 1
  %i.oc = extractelement <2 x float> %i.nz, i64 0
  br label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader
  %.lcssa1090.unr = phi float [ poison, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ], [ %i.oc, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa ]
  %.lcssa1089.unr = phi float [ poison, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ], [ %i.ob, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa ]
  %.1252646.us.unr = phi i64 [ %.0251661, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ], [ %i.oa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x float> [ %i.nw, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.preheader ], [ %i.nz, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit.unr-lcssa ]
  br i1 %i.my, label %._crit_edge650, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us
  %.1252646.us = phi i64 [ %i.op, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us ], [ %.1252646.us.unr, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit ] ; 5 uses
  %i.od = phi <2 x float> [ %i.oo, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us ], [ %.unr, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit ]
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0541.0, i64 %.1252646.us
  store float +inf, ptr %i.oe, align 4, !tbaa !12
  %i.of = fadd <2 x float> %i.od, <float -inf, float +inf>
  %i.og = getelementptr [4 x i8], ptr %.sroa.0541.0, i64 %.1252646.us
  %i.oh = getelementptr i8, ptr %i.og, i64 4
  store float +inf, ptr %i.oh, align 4, !tbaa !12
  %i.oi = fadd <2 x float> %i.of, <float -inf, float +inf>
  %i.oj = getelementptr [4 x i8], ptr %.sroa.0541.0, i64 %.1252646.us
  %i.ok = getelementptr i8, ptr %i.oj, i64 8
  store float +inf, ptr %i.ok, align 4, !tbaa !12
  %i.ol = fadd <2 x float> %i.oi, <float -inf, float +inf>
  %i.om = getelementptr [4 x i8], ptr %.sroa.0541.0, i64 %.1252646.us
  %i.on = getelementptr i8, ptr %i.om, i64 12
  store float +inf, ptr %i.on, align 4, !tbaa !12
  %i.oo = fadd <2 x float> %i.ol, <float -inf, float +inf> ; 3 uses
  %i.op = add i64 %.1252646.us, 4                 ; 2 uses
  %exitcond783.not.3 = icmp eq i64 %i.op, %i.nu
  br i1 %exitcond783.not.3, label %._crit_edge650.loopexit.unr-lcssa, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us, !llvm.loop !74

._crit_edge650.loopexit.unr-lcssa:                ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us
  %i.oq = extractelement <2 x float> %i.oo, i64 1
  %i.or = extractelement <2 x float> %i.oo, i64 0
  br label %._crit_edge650

._crit_edge650:                                   ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit, %._crit_edge650.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit, %bb.v
  %.1606.lcssa = phi float [ %.0605658, %bb.v ], [ %.0605658, %._crit_edge650.loopexit.unr-lcssa ], [ %.0605658, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit ], [ %.sroa.speculated517, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ] ; 2 uses
  %.0603.lcssa = phi float [ %i.nt, %bb.v ], [ %i.or, %._crit_edge650.loopexit.unr-lcssa ], [ %.lcssa1090.unr, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit ], [ %i.qp, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ] ; 2 uses
  %.0602.lcssa = phi float [ %i.ns, %bb.v ], [ %i.oq, %._crit_edge650.loopexit.unr-lcssa ], [ %.lcssa1089.unr, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit ], [ %i.qq, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ] ; 3 uses
  %.1252.lcssa = phi i64 [ %.0251661, %bb.v ], [ %i.nu, %._crit_edge650.loopexit.unr-lcssa ], [ %i.nu, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.thread.us.prol.loopexit ], [ %i.nu, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ]
  %i.os = fcmp olt float %.0604659, %.0603.lcssa
  %.sroa.speculated528 = select i1 %i.os, float %.0603.lcssa, float %.0604659 ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %.0250662
  store float %.0602.lcssa, ptr %i.ot, align 4, !tbaa !12
  %i.ou = fcmp olt float %.0602.lcssa, %.2598660
  %.sroa.speculated523 = select i1 %i.ou, float %.0602.lcssa, float %.2598660 ; 2 uses
  %i.ov = add nuw nsw i64 %.0250662, 1            ; 2 uses
  %exitcond784.not = icmp eq i64 %i.ov, %0
  br i1 %exitcond784.not, label %._crit_edge664.loopexit, label %bb.v, !llvm.loop !75

.lr.ph.i392.preheader:                            ; preds = %.lr.ph649, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit
  %.1252646 = phi i64 [ %i.qr, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ], [ %.0251661, %.lr.ph649 ] ; 3 uses
  %.0602645 = phi float [ %i.qq, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ], [ %i.ns, %.lr.ph649 ]
  %.0603644 = phi float [ %i.qp, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ], [ %i.nt, %.lr.ph649 ]
  %.1606643 = phi float [ %.sroa.speculated517, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit ], [ %.0605658, %.lr.ph649 ] ; 2 uses
  %i.ow = mul i64 %.1252646, %2
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ow ; 10 uses
  br i1 %i.mw, label %.lr.ph.i392.epil.preheader, label %.lr.ph.i392

.lr.ph.i392:                                      ; preds = %.lr.ph.i392.preheader, %.lr.ph.i392
  %.011.i393 = phi i64 [ %i.pn, %.lr.ph.i392 ], [ 0, %.lr.ph.i392.preheader ] ; 5 uses
  %.0810.i394 = phi float [ %.1.i395.3, %.lr.ph.i392 ], [ +inf, %.lr.ph.i392.preheader ] ; 2 uses
  %niter1134 = phi i64 [ %niter1134.next.3, %.lr.ph.i392 ], [ 0, %.lr.ph.i392.preheader ]
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %.011.i393
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !12 ; 2 uses
  %i.pa = fcmp olt float %i.oz, %.0810.i394
  %.1.i395 = select i1 %i.pa, float %i.oz, float %.0810.i394 ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %.011.i393
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !12 ; 2 uses
  %i.pe = fcmp olt float %i.pd, %.1.i395
  %.1.i395.1 = select i1 %i.pe, float %i.pd, float %.1.i395 ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %.011.i393
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !12 ; 2 uses
  %i.pi = fcmp olt float %i.ph, %.1.i395.1
  %.1.i395.2 = select i1 %i.pi, float %i.ph, float %.1.i395.1 ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %.011.i393
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 12
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !12 ; 2 uses
  %i.pm = fcmp olt float %i.pl, %.1.i395.2
  %.1.i395.3 = select i1 %i.pm, float %i.pl, float %.1.i395.2 ; 3 uses
  %i.pn = add nuw i64 %.011.i393, 4               ; 2 uses
  %niter1134.next.3 = add nuw i64 %niter1134, 4   ; 2 uses
  %niter1134.ncmp.3 = icmp eq i64 %niter1134.next.3, %unroll_iter1133
  br i1 %niter1134.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa, label %.lr.ph.i392, !llvm.loop !0

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa: ; preds = %.lr.ph.i392
  br i1 %lcmp.mod1130.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398, label %.lr.ph.i392.epil.preheader

.lr.ph.i392.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa, %.lr.ph.i392.preheader
  %.011.i393.epil.init = phi i64 [ 0, %.lr.ph.i392.preheader ], [ %i.pn, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa ]
  %.0810.i394.epil.init = phi float [ +inf, %.lr.ph.i392.preheader ], [ %.1.i395.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1132)
  br label %.lr.ph.i392.epil

.lr.ph.i392.epil:                                 ; preds = %.lr.ph.i392.epil, %.lr.ph.i392.epil.preheader
  %.011.i393.epil = phi i64 [ %i.pr, %.lr.ph.i392.epil ], [ %.011.i393.epil.init, %.lr.ph.i392.epil.preheader ] ; 2 uses
  %.0810.i394.epil = phi float [ %.1.i395.epil, %.lr.ph.i392.epil ], [ %.0810.i394.epil.init, %.lr.ph.i392.epil.preheader ] ; 2 uses
  %epil.iter1129 = phi i64 [ %epil.iter1129.next, %.lr.ph.i392.epil ], [ 0, %.lr.ph.i392.epil.preheader ]
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %.011.i393.epil
  %i.pp = load float, ptr %i.po, align 4, !tbaa !12 ; 2 uses
  %i.pq = fcmp olt float %i.pp, %.0810.i394.epil
  %.1.i395.epil = select i1 %i.pq, float %i.pp, float %.0810.i394.epil ; 2 uses
  %i.pr = add nuw i64 %.011.i393.epil, 1
  %epil.iter1129.next = add i64 %epil.iter1129, 1 ; 2 uses
  %epil.iter1129.cmp.not = icmp eq i64 %epil.iter1129.next, %xtraiter1128
  br i1 %epil.iter1129.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398, label %.lr.ph.i392.epil, !llvm.loop !76

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398: ; preds = %.lr.ph.i392.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa
  %.1.i395.lcssa = phi float [ %.1.i395.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398.unr-lcssa ], [ %.1.i395.epil, %.lr.ph.i392.epil ] ; 3 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0541.0, i64 %.1252646
  store float %.1.i395.lcssa, ptr %i.ps, align 4, !tbaa !12
  br i1 %i.mx, label %.lr.ph.i400.epil.preheader, label %.lr.ph.i400

.lr.ph.i400:                                      ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398, %.lr.ph.i400
  %.011.i401 = phi i64 [ %i.qi, %.lr.ph.i400 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398 ] ; 5 uses
  %.0810.i402 = phi float [ %.1.i403.3, %.lr.ph.i400 ], [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398 ] ; 2 uses
  %niter1141 = phi i64 [ %niter1141.next.3, %.lr.ph.i400 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398 ]
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %.011.i401
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !12 ; 2 uses
  %i.pv = fcmp ogt float %i.pu, %.0810.i402
  %.1.i403 = select i1 %i.pv, float %i.pu, float %.0810.i402 ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %.011.i401
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.py = load float, ptr %i.px, align 4, !tbaa !12 ; 2 uses
  %i.pz = fcmp ogt float %i.py, %.1.i403
  %.1.i403.1 = select i1 %i.pz, float %i.py, float %.1.i403 ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %.011.i401
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !12 ; 2 uses
  %i.qd = fcmp ogt float %i.qc, %.1.i403.1
  %.1.i403.2 = select i1 %i.qd, float %i.qc, float %.1.i403.1 ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %.011.i401
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 12
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !12 ; 2 uses
  %i.qh = fcmp ogt float %i.qg, %.1.i403.2
  %.1.i403.3 = select i1 %i.qh, float %i.qg, float %.1.i403.2 ; 3 uses
  %i.qi = add nuw i64 %.011.i401, 4               ; 2 uses
  %niter1141.next.3 = add nuw i64 %niter1141, 4   ; 2 uses
  %niter1141.ncmp.3 = icmp eq i64 %niter1141.next.3, %unroll_iter1140
  br i1 %niter1141.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit.unr-lcssa, label %.lr.ph.i400, !llvm.loop !1

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit.unr-lcssa: ; preds = %.lr.ph.i400
  br i1 %lcmp.mod1137.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit, label %.lr.ph.i400.epil.preheader

.lr.ph.i400.epil.preheader:                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398
  %.011.i401.epil.init = phi i64 [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398 ], [ %i.qi, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit.unr-lcssa ]
  %.0810.i402.epil.init = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit398 ], [ %.1.i403.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1139)
  br label %.lr.ph.i400.epil

.lr.ph.i400.epil:                                 ; preds = %.lr.ph.i400.epil, %.lr.ph.i400.epil.preheader
  %.011.i401.epil = phi i64 [ %i.qm, %.lr.ph.i400.epil ], [ %.011.i401.epil.init, %.lr.ph.i400.epil.preheader ] ; 2 uses
  %.0810.i402.epil = phi float [ %.1.i403.epil, %.lr.ph.i400.epil ], [ %.0810.i402.epil.init, %.lr.ph.i400.epil.preheader ] ; 2 uses
  %epil.iter1136 = phi i64 [ %epil.iter1136.next, %.lr.ph.i400.epil ], [ 0, %.lr.ph.i400.epil.preheader ]
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %.011.i401.epil
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !12 ; 2 uses
  %i.ql = fcmp ogt float %i.qk, %.0810.i402.epil
  %.1.i403.epil = select i1 %i.ql, float %i.qk, float %.0810.i402.epil ; 2 uses
  %i.qm = add nuw i64 %.011.i401.epil, 1
  %epil.iter1136.next = add i64 %epil.iter1136, 1 ; 2 uses
  %epil.iter1136.cmp.not = icmp eq i64 %epil.iter1136.next, %xtraiter1135
  br i1 %epil.iter1136.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit, label %.lr.ph.i400.epil, !llvm.loop !77

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit: ; preds = %.lr.ph.i400.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit.unr-lcssa
  %.1.i403.lcssa = phi float [ %.1.i403.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit406.loopexit.unr-lcssa ], [ %.1.i403.epil, %.lr.ph.i400.epil ]
  %i.qn = fsub float %.1.i403.lcssa, %.1.i395.lcssa ; 3 uses
  %i.qo = fcmp olt float %.1606643, %i.qn
  %.sroa.speculated517 = select i1 %i.qo, float %i.qn, float %.1606643 ; 2 uses
  %i.qp = fadd float %.0603644, %i.qn             ; 2 uses
  %i.qq = fadd float %.0602645, %.1.i395.lcssa    ; 2 uses
  %i.qr = add i64 %.1252646, 1                    ; 2 uses
  %exitcond782.not = icmp eq i64 %i.qr, %i.nu
  br i1 %exitcond782.not, label %._crit_edge650, label %.lr.ph.i392.preheader, !llvm.loop !74

.preheader632:                                    ; preds = %.preheader632.lr.ph, %._crit_edge672
  %.0246679 = phi i64 [ 0, %.preheader632.lr.ph ], [ %i.rn, %._crit_edge672 ]
  %.0247678 = phi i64 [ 0, %.preheader632.lr.ph ], [ %i.rm, %._crit_edge672 ] ; 5 uses
  %.2253677 = phi i64 [ 0, %.preheader632.lr.ph ], [ %.3254.lcssa, %._crit_edge672 ] ; 5 uses
  br i1 %.not745, label %._crit_edge672, label %.lr.ph671

.lr.ph671:                                        ; preds = %.preheader632
  %i.qs = add i64 %1, %.2253677                   ; 3 uses
  br i1 %.not.i417, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.us.preheader, label %.lr.ph.i418.preheader.preheader

.lr.ph.i418.preheader.preheader:                  ; preds = %.lr.ph671
  %16 = mul i64 %2, %.0247678
  %scevgep963 = getelementptr i8, ptr %6, i64 %16
  %17 = add i64 %1, %.0247678
  %i.qt = mul i64 %2, %17
  %scevgep964 = getelementptr i8, ptr %6, i64 %i.qt
  %i.qu = mul i64 %i.nm, %.2253677
  %scevgep965 = getelementptr i8, ptr %4, i64 %i.qu
  %i.qv = add i64 %1, %.2253677
  %18 = shl i64 %i.qv, 2
  %i.qw = mul i64 %2, %18
  %scevgep966 = getelementptr i8, ptr %4, i64 %i.qw
  %bound0967 = icmp ult ptr %scevgep963, %scevgep966
  %bound1968 = icmp ult ptr %scevgep965, %scevgep964
  %found.conflict969 = and i1 %bound0967, %bound1968
  %i.qx = or i1 %found.conflict969, %15
  br label %.lr.ph.i418.preheader

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.us.preheader: ; preds = %.lr.ph671
  %i.qy = add i64 %1, %.0247678
  br label %._crit_edge672

.lr.ph.i409:                                      ; preds = %.lr.ph.i409.preheader1083, %.lr.ph.i409
  %.08.i410 = phi i64 [ %i.rh, %.lr.ph.i409 ], [ %.08.i410.ph, %.lr.ph.i409.preheader1083 ] ; 3 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0535.0616850, i64 %.08.i410
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !12
  %i.rb = fsub float %i.ra, %.2598.lcssa
  %i.rc = fmul float %.2272, %i.rb
  %i.rd = fadd float %i.rc, 5.000000e-01
  %i.re = tail call float @llvm.floor.f32(float %i.rd)
  %i.rf = fptoui float %i.re to i16
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %.08.i410
  store i16 %i.rf, ptr %i.rg, align 2, !tbaa !26
  %i.rh = add nuw nsw i64 %.08.i410, 1            ; 2 uses
  %exitcond.not.i411 = icmp eq i64 %i.rh, %0
  br i1 %exitcond.not.i411, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412.thread, label %.lr.ph.i409, !llvm.loop !78

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412: ; preds = %._crit_edge664
  %.not.i.i.i413 = icmp eq ptr %.sroa.0535.0616850, null
  br i1 %.not.i.i.i413, label %_ZNSt6vectorIfSaIfEED2Ev.exit414, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412.thread

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412.thread: ; preds = %.lr.ph.i409, %middle.block999, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412
  %i.ri = ptrtoint ptr %.sroa.0535.0616850 to i64
  %i.rj = sub i64 %.sroa.10539.0617849, %i.ri
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0535.0616850, i64 noundef %i.rj) #16
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit414

_ZNSt6vectorIfSaIfEED2Ev.exit414:                 ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412.thread
  %.not.i.i.i415 = icmp eq ptr %.sroa.0541.0, null
  br i1 %.not.i.i.i415, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %_ZNSt6vectorIfSaIfEED2Ev.exit.sink.split

._crit_edge672:                                   ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.us.preheader, %.preheader632
  %.3254.lcssa = phi i64 [ %.2253677, %.preheader632 ], [ %i.qs, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.us.preheader ], [ %i.qs, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit ]
  %.1248.lcssa = phi i64 [ %.0247678, %.preheader632 ], [ %i.qy, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.us.preheader ], [ %i.tn, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit ] ; 2 uses
  %i.rk = mul i64 %.1248.lcssa, %2
  %i.rl = getelementptr inbounds nuw i8, ptr %6, i64 %i.rk
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rl, i8 0, i64 %i.nl, i1 false)
  %i.rm = add i64 %.1248.lcssa, %i.nk
  %i.rn = add nuw nsw i64 %.0246679, 1            ; 2 uses
  %exitcond786.not = icmp eq i64 %i.rn, %0
  br i1 %exitcond786.not, label %.lr.ph.i409.preheader, label %.preheader632, !llvm.loop !79

.lr.ph.i409.preheader:                            ; preds = %._crit_edge672
  %min.iters.check988 = icmp ult i64 %0, 4
  br i1 %min.iters.check988, label %.lr.ph.i409.preheader1083, label %vector.ph989

vector.ph989:                                     ; preds = %.lr.ph.i409.preheader
  %n.vec990 = and i64 %0, 2305843009213693948     ; 3 uses
  %broadcast.splatinsert991 = insertelement <4 x float> poison, float %.2598.lcssa, i64 0
  %broadcast.splat992 = shufflevector <4 x float> %broadcast.splatinsert991, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert993 = insertelement <4 x float> poison, float %.2272, i64 0
  %broadcast.splat994 = shufflevector <4 x float> %broadcast.splatinsert993, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %vector.ph989
  %index996 = phi i64 [ 0, %vector.ph989 ], [ %index.next998, %vector.body995 ] ; 3 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0535.0616850, i64 %index996
  %wide.load997 = load <4 x float>, ptr %i.ro, align 4, !tbaa !12
  %i.rp = fsub <4 x float> %wide.load997, %broadcast.splat992
  %i.rq = fmul <4 x float> %broadcast.splat994, %i.rp
  %i.rr = fadd <4 x float> %i.rq, splat (float 5.000000e-01)
  %i.rs = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.rr)
  %i.rt = fptoui <4 x float> %i.rs to <4 x i16>
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %index996
  store <4 x i16> %i.rt, ptr %i.ru, align 2, !tbaa !26
  %index.next998 = add nuw i64 %index996, 4       ; 2 uses
  %i.rv = icmp eq i64 %index.next998, %n.vec990
  br i1 %i.rv, label %middle.block999, label %vector.body995, !llvm.loop !80

middle.block999:                                  ; preds = %vector.body995
  %cmp.n1000 = icmp eq i64 %0, %n.vec990
  br i1 %cmp.n1000, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit412.thread, label %.lr.ph.i409.preheader1083

.lr.ph.i409.preheader1083:                        ; preds = %.lr.ph.i409.preheader, %middle.block999
  %.08.i410.ph = phi i64 [ 0, %.lr.ph.i409.preheader ], [ %n.vec990, %middle.block999 ]
  br label %.lr.ph.i409

.lr.ph.i418.preheader:                            ; preds = %.lr.ph.i418.preheader.preheader, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit
  %.1248669 = phi i64 [ %i.tn, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit ], [ %.0247678, %.lr.ph.i418.preheader.preheader ] ; 2 uses
  %.3254668 = phi i64 [ %i.tm, %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit ], [ %.2253677, %.lr.ph.i418.preheader.preheader ] ; 3 uses
  %i.rw = mul i64 %.3254668, %2
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.rw ; 4 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0541.0, i64 %.3254668
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !12 ; 4 uses
  %i.sa = mul i64 %.1248669, %2
  %i.sb = getelementptr inbounds nuw i8, ptr %6, i64 %i.sa ; 4 uses
  %brmerge1215 = select i1 %min.iters.check973, i1 true, i1 %i.qx
  br i1 %brmerge1215, label %.lr.ph.i418.preheader1084, label %vector.ph974

vector.ph974:                                     ; preds = %.lr.ph.i418.preheader
  %broadcast.splatinsert976 = insertelement <4 x float> poison, float %i.rz, i64 0
  %broadcast.splat977 = shufflevector <4 x float> %broadcast.splatinsert976, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body980

vector.body980:                                   ; preds = %vector.body980, %vector.ph974
  %index981 = phi i64 [ 0, %vector.ph974 ], [ %index.next983, %vector.body980 ] ; 3 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %index981
  %wide.load982 = load <4 x float>, ptr %i.sc, align 4, !tbaa !12, !alias.scope !109
  %i.sd = fsub <4 x float> %wide.load982, %broadcast.splat977
  %i.se = fmul <4 x float> %broadcast.splat979, %i.sd
  %i.sf = fadd <4 x float> %i.se, splat (float 5.000000e-01)
  %i.sg = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.sf)
  %i.sh = fptoui <4 x float> %i.sg to <4 x i8>
  %i.si = getelementptr inbounds nuw i8, ptr %i.sb, i64 %index981
  store <4 x i8> %i.sh, ptr %i.si, align 1, !tbaa !23, !alias.scope !110, !noalias !109
  %index.next983 = add nuw i64 %index981, 4       ; 2 uses
  %i.sj = icmp eq i64 %index.next983, %n.vec975
  br i1 %i.sj, label %middle.block984, label %vector.body980, !llvm.loop !84

middle.block984:                                  ; preds = %vector.body980
  br i1 %cmp.n985, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit, label %.lr.ph.i418.preheader1084

.lr.ph.i418.preheader1084:                        ; preds = %.lr.ph.i418.preheader, %middle.block984
  %.08.i419.ph = phi i64 [ %n.vec975, %middle.block984 ], [ 0, %.lr.ph.i418.preheader ] ; 5 uses
  %.neg1186 = or disjoint i64 %.08.i419.ph, 1
  br i1 %lcmp.mod1145.not, label %.lr.ph.i418.prol.loopexit, label %.lr.ph.i418.prol

.lr.ph.i418.prol:                                 ; preds = %.lr.ph.i418.preheader1084
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %.08.i419.ph
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !12
  %i.sm = fsub float %i.sl, %i.rz
  %i.sn = fmul float %.2272, %i.sm
  %i.so = fadd float %i.sn, 5.000000e-01
  %i.sp = tail call float @llvm.floor.f32(float %i.so)
  %i.sq = fptoui float %i.sp to i8
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sb, i64 %.08.i419.ph
  store i8 %i.sq, ptr %i.sr, align 1, !tbaa !23
  %i.ss = or disjoint i64 %.08.i419.ph, 1
  br label %.lr.ph.i418.prol.loopexit

.lr.ph.i418.prol.loopexit:                        ; preds = %.lr.ph.i418.prol, %.lr.ph.i418.preheader1084
  %.08.i419.unr = phi i64 [ %.08.i419.ph, %.lr.ph.i418.preheader1084 ], [ %i.ss, %.lr.ph.i418.prol ]
  %i.st = icmp eq i64 %2, %.neg1186
  br i1 %i.st, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit, label %.lr.ph.i418

.lr.ph.i418:                                      ; preds = %.lr.ph.i418.prol.loopexit, %.lr.ph.i418
  %.08.i419 = phi i64 [ %i.tl, %.lr.ph.i418 ], [ %.08.i419.unr, %.lr.ph.i418.prol.loopexit ] ; 4 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %.08.i419
  %i.sv = load float, ptr %i.su, align 4, !tbaa !12
  %i.sw = fsub float %i.sv, %i.rz
  %i.sx = fmul float %.2272, %i.sw
  %i.sy = fadd float %i.sx, 5.000000e-01
  %i.sz = tail call float @llvm.floor.f32(float %i.sy)
  %i.ta = fptoui float %i.sz to i8
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sb, i64 %.08.i419
  store i8 %i.ta, ptr %i.tb, align 1, !tbaa !23
  %i.tc = add nuw i64 %.08.i419, 1                ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.tc
  %i.te = load float, ptr %i.td, align 4, !tbaa !12
  %i.tf = fsub float %i.te, %i.rz
  %i.tg = fmul float %.2272, %i.tf
  %i.th = fadd float %i.tg, 5.000000e-01
  %i.ti = tail call float @llvm.floor.f32(float %i.th)
  %i.tj = fptoui float %i.ti to i8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.tc
  store i8 %i.tj, ptr %i.tk, align 1, !tbaa !23
  %i.tl = add nuw i64 %.08.i419, 2                ; 2 uses
  %exitcond.not.i420.1 = icmp eq i64 %i.tl, %2
  br i1 %exitcond.not.i420.1, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit, label %.lr.ph.i418, !llvm.loop !85

_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit421.loopexit: ; preds = %.lr.ph.i418.prol.loopexit, %.lr.ph.i418, %middle.block984
  %i.tm = add i64 %.3254668, 1                    ; 2 uses
  %i.tn = add i64 %.1248669, 1                    ; 2 uses
  %exitcond785.not = icmp eq i64 %i.tm, %i.qs
  br i1 %exitcond785.not, label %._crit_edge672, label %.lr.ph.i418.preheader, !llvm.loop !86

bb.w:                                             ; preds = %bb.p
  %i.to = mul i64 %2, %1
  %i.tp = mul i64 %i.to, %0                       ; 5 uses
  %i.tq = icmp ugt i64 %i.tp, 2305843009213693951
  br i1 %i.tq, label %.noexc428, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422

.noexc428:                                        ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422: ; preds = %bb.w
  %.not.i.i.i.i423 = icmp eq i64 %i.tp, 0
  br i1 %.not.i.i.i.i423, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430, label %.noexc429

.noexc429:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i422
  %i.tr = shl nuw nsw i64 %i.tp, 2
  %i.ts = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tr) #15 ; 5 uses
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.tp ; 2 uses
  store float 0.000000e+00, ptr %i.ts, align 4, !tbaa !12
  %i.tu = add nsw i64 %i.tp, -1                   ; 2 uses
  %i.tv = icmp eq i64 %i.tu, 0
  br i1 %i.tv, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i424

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i424: ; preds = %.noexc429
  %i.tw = getelementptr i8, ptr %i.ts, i64 4
  %.idx.i.i.i.i.i.i.i425 = shl nuw nsw i64 %i.tu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.tw, i8 0, i64 %.idx.i.i.i.i.i.i.i425, i1 false), !tbaa !12
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit430
end_hunk_1
begin_hunk_2_@_ZN5faiss12quantize_lut24aq_quantize_LUT_and_biasEmmmPKfS2_miPhmPtPfS5_:bb.a
  %.1.i.1 = select i1 %i.o, float %i.n, float %.1.i ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !12 ; 2 uses
  %i.s = fcmp olt float %i.r, %.1.i.1
  %.1.i.2 = select i1 %i.s, float %i.r, float %.1.i.1 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load float, ptr %i.u, align 4, !tbaa !12 ; 2 uses
  %i.w = fcmp olt float %i.v, %.1.i.2
  %.1.i.3 = select i1 %i.w, float %i.v, float %.1.i.2 ; 3 uses
  %i.x = add nuw i64 %.011.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i67.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i67.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i67.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.i67.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.x, %.lr.ph.i67.preheader.unr-lcssa ]
  %.0810.i.epil.init = phi float [ +inf, %.lr.ph.i.preheader ], [ %.1.i.3, %.lr.ph.i67.preheader.unr-lcssa ]
  %lcmp.mod174 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod174)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.011.i.epil = phi i64 [ %i.ab, %.lr.ph.i.epil ], [ %.011.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0810.i.epil = phi float [ %.1.i.epil, %.lr.ph.i.epil ], [ %.0810.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i.epil
  %i.z = load float, ptr %i.y, align 4, !tbaa !12 ; 2 uses
  %i.aa = fcmp olt float %i.z, %.0810.i.epil
  %.1.i.epil = select i1 %i.aa, float %i.z, float %.0810.i.epil ; 2 uses
  %i.ab = add nuw i64 %.011.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i67.preheader, label %.lr.ph.i.epil, !llvm.loop !114

.lr.ph.i67.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph.i67.preheader.unr-lcssa
  %.1.i.lcssa = phi float [ %.1.i.3, %.lr.ph.i67.preheader.unr-lcssa ], [ %.1.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %xtraiter175 = and i64 %0, 3                    ; 3 uses
  %i.ac = icmp ult i64 %0, 4
  br i1 %i.ac, label %.lr.ph.i67.epil.preheader, label %.lr.ph.i67.preheader.new

.lr.ph.i67.preheader.new:                         ; preds = %.lr.ph.i67.preheader
  %unroll_iter180 = and i64 %0, -4
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.lr.ph.i67, %.lr.ph.i67.preheader.new
  %.011.i68 = phi i64 [ 0, %.lr.ph.i67.preheader.new ], [ %i.as, %.lr.ph.i67 ] ; 5 uses
  %.0810.i69 = phi float [ -inf, %.lr.ph.i67.preheader.new ], [ %.1.i70.3, %.lr.ph.i67 ] ; 2 uses
  %niter181 = phi i64 [ 0, %.lr.ph.i67.preheader.new ], [ %niter181.next.3, %.lr.ph.i67 ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i68
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12 ; 2 uses
  %i.af = fcmp ogt float %i.ae, %.0810.i69
  %.1.i70 = select i1 %i.af, float %i.ae, float %.0810.i69 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !12 ; 2 uses
  %i.aj = fcmp ogt float %i.ai, %.1.i70
  %.1.i70.1 = select i1 %i.aj, float %i.ai, float %.1.i70 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i68
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !12 ; 2 uses
  %i.an = fcmp ogt float %i.am, %.1.i70.1
  %.1.i70.2 = select i1 %i.an, float %i.am, float %.1.i70.1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i68
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !12 ; 2 uses
  %i.ar = fcmp ogt float %i.aq, %.1.i70.2
  %.1.i70.3 = select i1 %i.ar, float %i.aq, float %.1.i70.2 ; 3 uses
  %i.as = add nuw i64 %.011.i68, 4                ; 2 uses
  %niter181.next.3 = add nuw i64 %niter181, 4     ; 2 uses
  %niter181.ncmp.3 = icmp eq i64 %niter181.next.3, %unroll_iter180
  br i1 %niter181.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa, label %.lr.ph.i67, !llvm.loop !1

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i67
  %lcmp.mod177.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod177.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit, label %.lr.ph.i67.epil.preheader

.lr.ph.i67.epil.preheader:                        ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa, %.lr.ph.i67.preheader
  %.011.i68.epil.init = phi i64 [ 0, %.lr.ph.i67.preheader ], [ %i.as, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ]
  %.0810.i69.epil.init = phi float [ -inf, %.lr.ph.i67.preheader ], [ %.1.i70.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ]
  %lcmp.mod179 = icmp ne i64 %xtraiter175, 0
  tail call void @llvm.assume(i1 %lcmp.mod179)
  br label %.lr.ph.i67.epil

.lr.ph.i67.epil:                                  ; preds = %.lr.ph.i67.epil, %.lr.ph.i67.epil.preheader
  %.011.i68.epil = phi i64 [ %i.aw, %.lr.ph.i67.epil ], [ %.011.i68.epil.init, %.lr.ph.i67.epil.preheader ] ; 2 uses
  %.0810.i69.epil = phi float [ %.1.i70.epil, %.lr.ph.i67.epil ], [ %.0810.i69.epil.init, %.lr.ph.i67.epil.preheader ] ; 2 uses
  %epil.iter176 = phi i64 [ %epil.iter176.next, %.lr.ph.i67.epil ], [ 0, %.lr.ph.i67.epil.preheader ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011.i68.epil
  %i.au = load float, ptr %i.at, align 4, !tbaa !12 ; 2 uses
  %i.av = fcmp ogt float %i.au, %.0810.i69.epil
  %.1.i70.epil = select i1 %i.av, float %i.au, float %.0810.i69.epil ; 2 uses
  %i.aw = add nuw i64 %.011.i68.epil, 1
  %epil.iter176.next = add i64 %epil.iter176, 1   ; 2 uses
  %epil.iter176.cmp.not = icmp eq i64 %epil.iter176.next, %xtraiter175
  br i1 %epil.iter176.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit, label %.lr.ph.i67.epil, !llvm.loop !115

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa, %.lr.ph.i67.epil, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.08.lcssa.i112 = phi float [ +inf, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %.1.i.lcssa, %.lr.ph.i67.epil ], [ %.1.i.lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ] ; 4 uses
  %.08.lcssa.i72 = phi float [ -inf, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit ], [ %.1.i70.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit.loopexit.unr-lcssa ], [ %.1.i70.epil, %.lr.ph.i67.epil ]
  %i.ax = fsub float %.08.lcssa.i72, %.08.lcssa.i112 ; 4 uses
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit
  %.not.i73 = icmp eq i64 %2, 0
  %i.ay = sub i64 %1, %5                          ; 4 uses
  %i.az = sitofp i32 %6 to float                  ; 2 uses
  br i1 %.not.i73, label %.lr.ph.split.us, label %.lr.ph.i74.preheader.preheader

.lr.ph.i74.preheader.preheader:                   ; preds = %.lr.ph
  %xtraiter182 = and i64 %2, 3                    ; 3 uses
  %i.ba = icmp ult i64 %2, 4
  %unroll_iter187 = and i64 %2, -4
  %lcmp.mod184.not = icmp eq i64 %xtraiter182, 0
  %lcmp.mod186 = icmp ne i64 %xtraiter182, 0
  %xtraiter189 = and i64 %2, 3                    ; 3 uses
  %i.bb = icmp ult i64 %2, 4
  %unroll_iter194 = and i64 %2, -4
  %lcmp.mod191.not = icmp eq i64 %xtraiter189, 0
  %lcmp.mod193 = icmp ne i64 %xtraiter189, 0
  br label %.lr.ph.i74.preheader

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bc = fmul float %i.az, -inf                  ; 3 uses
  %xtraiter196 = and i64 %1, 1
  %i.bd = icmp eq i64 %1, 1
  br i1 %i.bd, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter202 = and i64 %1, 2305843009213693950
  br label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us: ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us, %.lr.ph.split.us.new
  %.060118.us = phi i64 [ 0, %.lr.ph.split.us.new ], [ %i.bn, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us ] ; 4 uses
  %.061117.us = phi float [ %i.ax, %.lr.ph.split.us.new ], [ %i.bl, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us ]
  %.063116.us = phi float [ 0.000000e+00, %.lr.ph.split.us.new ], [ %i.bm, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us ]
  %niter203 = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter203.next.1, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0105.0, i64 %.060118.us
  store float +inf, ptr %i.be, align 4, !tbaa !12
  %.not.us = icmp ult i64 %.060118.us, %i.ay
  %i.bf = select i1 %.not.us, float -inf, float %i.bc
  %i.bg = fadd float %.061117.us, %i.bf
  %i.bh = fadd float %.063116.us, +inf
  %i.bi = or disjoint i64 %.060118.us, 1          ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0105.0, i64 %i.bi
  store float +inf, ptr %i.bj, align 4, !tbaa !12
  %.not.us.1 = icmp ult i64 %i.bi, %i.ay
  %i.bk = select i1 %.not.us.1, float -inf, float %i.bc
  %i.bl = fadd float %i.bg, %i.bk                 ; 3 uses
  %i.bm = fadd float %i.bh, +inf                  ; 3 uses
  %i.bn = add nuw nsw i64 %.060118.us, 2          ; 2 uses
  %niter203.next.1 = add nuw nsw i64 %niter203, 2 ; 2 uses
  %niter203.ncmp.1 = icmp eq i64 %niter203.next.1, %unroll_iter202
  br i1 %niter203.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us, !llvm.loop !116

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us
  %lcmp.mod198.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod198.not, label %._crit_edge, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us
  %.060118.us.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %i.bn, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.061117.us.epil.init = phi float [ %i.ax, %.lr.ph.split.us ], [ %i.bl, %._crit_edge.loopexit.unr-lcssa ]
  %.063116.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.split.us ], [ %i.bm, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod201 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod201)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0105.0, i64 %.060118.us.epil.init
  store float +inf, ptr %i.bo, align 4, !tbaa !12
  %.not.us.epil = icmp ult i64 %.060118.us.epil.init, %i.ay
  %i.bp = select i1 %.not.us.epil, float -inf, float %i.bc
  %i.bq = fadd float %.061117.us.epil.init, %i.bp
  %i.br = fadd float %.063116.us.epil.init, +inf
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit
  %.0110.lcssa = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit ], [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader ], [ -inf, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated100, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ]
  %.063.lcssa = phi float [ 0.000000e+00, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit ], [ %i.br, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader ], [ %i.bm, %._crit_edge.loopexit.unr-lcssa ], [ %i.ec, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ]
  %.061.lcssa = phi float [ %i.ax, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit ], [ %i.bq, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.thread.us.epil.preheader ], [ %i.bl, %._crit_edge.loopexit.unr-lcssa ], [ %i.eb, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ]
  %i.bs = insertelement <2 x float> poison, float %.061.lcssa, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %.0110.lcssa, i64 1 ; 2 uses
  %i.bu = fcmp ogt <2 x float> %i.bt, zeroinitializer
  %i.bv = fdiv <2 x float> <float 6.553500e+04, float 2.550000e+02>, %i.bt
  %i.bw = select <2 x i1> %i.bu, <2 x float> %i.bv, <2 x float> splat (float +inf) ; 2 uses
  %i.bx = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %i.by = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.bz = fcmp olt float %i.bx, %i.by
  %.sroa.speculated = select i1 %i.bz, float %i.bx, float %i.by ; 2 uses
  %i.ca = tail call float @llvm.fabs.f32(float %.sroa.speculated)
  %i.cb = fcmp one float %i.ca, +inf
  %.062 = select i1 %i.cb, float %.sroa.speculated, float 0.000000e+00 ; 7 uses
  %.not.i93 = icmp eq i64 %2, 0
  %or.cond = or i1 %.not.i.i.i.i, %.not.i93
  br i1 %or.cond, label %._crit_edge126.split, label %.lr.ph.i94.preheader.preheader

.lr.ph.i94.preheader.preheader:                   ; preds = %._crit_edge
  %i.cc = mul i64 %2, %1                          ; 2 uses
  %scevgep = getelementptr i8, ptr %7, i64 %i.cc
  %12 = shl i64 %i.cc, 2
  %scevgep148 = getelementptr i8, ptr %3, i64 %12
  %min.iters.check = icmp ult i64 %2, 4
  %bound0 = icmp ult ptr %7, %scevgep148
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.cd = and i64 %2, -6917529027641081856
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = or i1 %found.conflict, %i.ce
  %n.vec = and i64 %2, 6917529027641081852        ; 3 uses
  %broadcast.splatinsert150 = insertelement <4 x float> poison, float %.062, i64 0
  %broadcast.splat151 = shufflevector <4 x float> %broadcast.splatinsert150, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %2, %n.vec
  %xtraiter204 = and i64 %2, 1
  %lcmp.mod205.not = icmp eq i64 %xtraiter204, 0
  br label %.lr.ph.i94.preheader

.lr.ph.i74.preheader:                             ; preds = %.lr.ph.i74.preheader.preheader, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit
  %.060118 = phi i64 [ %i.ed, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ], [ 0, %.lr.ph.i74.preheader.preheader ] ; 4 uses
  %.061117 = phi float [ %i.eb, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ], [ %i.ax, %.lr.ph.i74.preheader.preheader ]
  %.063116 = phi float [ %i.ec, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ], [ 0.000000e+00, %.lr.ph.i74.preheader.preheader ]
  %.0110115 = phi float [ %.sroa.speculated100, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit ], [ -inf, %.lr.ph.i74.preheader.preheader ] ; 2 uses
  %i.cg = mul i64 %.060118, %2
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cg ; 10 uses
  br i1 %i.ba, label %.lr.ph.i74.epil.preheader, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %.lr.ph.i74
  %.011.i75 = phi i64 [ %i.cx, %.lr.ph.i74 ], [ 0, %.lr.ph.i74.preheader ] ; 5 uses
  %.0810.i76 = phi float [ %.1.i77.3, %.lr.ph.i74 ], [ +inf, %.lr.ph.i74.preheader ] ; 2 uses
  %niter188 = phi i64 [ %niter188.next.3, %.lr.ph.i74 ], [ 0, %.lr.ph.i74.preheader ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.011.i75
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !12 ; 2 uses
  %i.ck = fcmp olt float %i.cj, %.0810.i76
  %.1.i77 = select i1 %i.ck, float %i.cj, float %.0810.i76 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.011.i75
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !12 ; 2 uses
  %i.co = fcmp olt float %i.cn, %.1.i77
  %.1.i77.1 = select i1 %i.co, float %i.cn, float %.1.i77 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.011.i75
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !12 ; 2 uses
  %i.cs = fcmp olt float %i.cr, %.1.i77.1
  %.1.i77.2 = select i1 %i.cs, float %i.cr, float %.1.i77.1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.011.i75
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !12 ; 2 uses
  %i.cw = fcmp olt float %i.cv, %.1.i77.2
  %.1.i77.3 = select i1 %i.cw, float %i.cv, float %.1.i77.2 ; 3 uses
  %i.cx = add nuw i64 %.011.i75, 4                ; 2 uses
  %niter188.next.3 = add nuw i64 %niter188, 4     ; 2 uses
  %niter188.ncmp.3 = icmp eq i64 %niter188.next.3, %unroll_iter187
  br i1 %niter188.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa, label %.lr.ph.i74, !llvm.loop !0

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa: ; preds = %.lr.ph.i74
  br i1 %lcmp.mod184.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80, label %.lr.ph.i74.epil.preheader

.lr.ph.i74.epil.preheader:                        ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa, %.lr.ph.i74.preheader
  %.011.i75.epil.init = phi i64 [ 0, %.lr.ph.i74.preheader ], [ %i.cx, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa ]
  %.0810.i76.epil.init = phi float [ +inf, %.lr.ph.i74.preheader ], [ %.1.i77.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod186)
  br label %.lr.ph.i74.epil

.lr.ph.i74.epil:                                  ; preds = %.lr.ph.i74.epil, %.lr.ph.i74.epil.preheader
  %.011.i75.epil = phi i64 [ %i.db, %.lr.ph.i74.epil ], [ %.011.i75.epil.init, %.lr.ph.i74.epil.preheader ] ; 2 uses
  %.0810.i76.epil = phi float [ %.1.i77.epil, %.lr.ph.i74.epil ], [ %.0810.i76.epil.init, %.lr.ph.i74.epil.preheader ] ; 2 uses
  %epil.iter183 = phi i64 [ %epil.iter183.next, %.lr.ph.i74.epil ], [ 0, %.lr.ph.i74.epil.preheader ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.011.i75.epil
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !12 ; 2 uses
  %i.da = fcmp olt float %i.cz, %.0810.i76.epil
  %.1.i77.epil = select i1 %i.da, float %i.cz, float %.0810.i76.epil ; 2 uses
  %i.db = add nuw i64 %.011.i75.epil, 1
  %epil.iter183.next = add i64 %epil.iter183, 1   ; 2 uses
  %epil.iter183.cmp.not = icmp eq i64 %epil.iter183.next, %xtraiter182
  br i1 %epil.iter183.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80, label %.lr.ph.i74.epil, !llvm.loop !117

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80: ; preds = %.lr.ph.i74.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa
  %.1.i77.lcssa = phi float [ %.1.i77.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80.unr-lcssa ], [ %.1.i77.epil, %.lr.ph.i74.epil ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0105.0, i64 %.060118
  store float %.1.i77.lcssa, ptr %i.dc, align 4, !tbaa !12
  br i1 %i.bb, label %.lr.ph.i82.epil.preheader, label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80, %.lr.ph.i82
  %.011.i83 = phi i64 [ %i.ds, %.lr.ph.i82 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80 ] ; 5 uses
  %.0810.i84 = phi float [ %.1.i85.3, %.lr.ph.i82 ], [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80 ] ; 2 uses
  %niter195 = phi i64 [ %niter195.next.3, %.lr.ph.i82 ], [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.011.i83
  %i.de = load float, ptr %i.dd, align 4, !tbaa !12 ; 2 uses
  %i.df = fcmp ogt float %i.de, %.0810.i84
  %.1.i85 = select i1 %i.df, float %i.de, float %.0810.i84 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.011.i83
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !12 ; 2 uses
  %i.dj = fcmp ogt float %i.di, %.1.i85
  %.1.i85.1 = select i1 %i.dj, float %i.di, float %.1.i85 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.011.i83
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !12 ; 2 uses
  %i.dn = fcmp ogt float %i.dm, %.1.i85.1
  %.1.i85.2 = select i1 %i.dn, float %i.dm, float %.1.i85.1 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.011.i83
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !12 ; 2 uses
  %i.dr = fcmp ogt float %i.dq, %.1.i85.2
  %.1.i85.3 = select i1 %i.dr, float %i.dq, float %.1.i85.2 ; 3 uses
  %i.ds = add nuw i64 %.011.i83, 4                ; 2 uses
  %niter195.next.3 = add nuw i64 %niter195, 4     ; 2 uses
  %niter195.ncmp.3 = icmp eq i64 %niter195.next.3, %unroll_iter194
  br i1 %niter195.ncmp.3, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa, label %.lr.ph.i82, !llvm.loop !1

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa: ; preds = %.lr.ph.i82
  br i1 %lcmp.mod191.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit, label %.lr.ph.i82.epil.preheader

.lr.ph.i82.epil.preheader:                        ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80
  %.011.i83.epil.init = phi i64 [ 0, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80 ], [ %i.ds, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa ]
  %.0810.i84.epil.init = phi float [ -inf, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_minEPKfm.exit80 ], [ %.1.i85.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod193)
  br label %.lr.ph.i82.epil

.lr.ph.i82.epil:                                  ; preds = %.lr.ph.i82.epil, %.lr.ph.i82.epil.preheader
  %.011.i83.epil = phi i64 [ %i.dw, %.lr.ph.i82.epil ], [ %.011.i83.epil.init, %.lr.ph.i82.epil.preheader ] ; 2 uses
  %.0810.i84.epil = phi float [ %.1.i85.epil, %.lr.ph.i82.epil ], [ %.0810.i84.epil.init, %.lr.ph.i82.epil.preheader ] ; 2 uses
  %epil.iter190 = phi i64 [ %epil.iter190.next, %.lr.ph.i82.epil ], [ 0, %.lr.ph.i82.epil.preheader ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.011.i83.epil
  %i.du = load float, ptr %i.dt, align 4, !tbaa !12 ; 2 uses
  %i.dv = fcmp ogt float %i.du, %.0810.i84.epil
  %.1.i85.epil = select i1 %i.dv, float %i.du, float %.0810.i84.epil ; 2 uses
  %i.dw = add nuw i64 %.011.i83.epil, 1
  %epil.iter190.next = add i64 %epil.iter190, 1   ; 2 uses
  %epil.iter190.cmp.not = icmp eq i64 %epil.iter190.next, %xtraiter189
  br i1 %epil.iter190.cmp.not, label %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit, label %.lr.ph.i82.epil, !llvm.loop !118

_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit: ; preds = %.lr.ph.i82.epil, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa
  %.1.i85.lcssa = phi float [ %.1.i85.3, %_ZN5faiss12quantize_lut12_GLOBAL__N_17tab_maxEPKfm.exit88.loopexit.unr-lcssa ], [ %.1.i85.epil, %.lr.ph.i82.epil ]
  %i.dx = fsub float %.1.i85.lcssa, %.1.i77.lcssa ; 4 uses
  %i.dy = fcmp olt float %.0110115, %i.dx
  %.sroa.speculated100 = select i1 %i.dy, float %i.dx, float %.0110115 ; 2 uses
  %.not = icmp ult i64 %.060118, %i.ay
  %i.dz = fmul float %i.dx, %i.az
  %i.ea = select i1 %.not, float %i.dx, float %i.dz
  %i.eb = fadd float %.061117, %i.ea              ; 2 uses
  %i.ec = fadd float %.063116, %.1.i77.lcssa      ; 2 uses
  %i.ed = add nuw nsw i64 %.060118, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ed, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i74.preheader, !llvm.loop !116

._crit_edge126.split:                             ; preds = %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabIhEEvPKfmffPT_.exit.loopexit, %._crit_edge
  %i.ee = fadd float %.08.lcssa.i112, %.063.lcssa
  %i.ef = mul i64 %2, %1
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 %i.ef
  %i.eh = sub i64 %8, %1
  %i.ei = mul i64 %i.eh, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eg, i8 0, i64 %i.ei, i1 false)
  br i1 %.not.i, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, label %.lr.ph.i91.preheader

.lr.ph.i91.preheader:                             ; preds = %._crit_edge126.split
  %min.iters.check153 = icmp ult i64 %0, 4
  br i1 %min.iters.check153, label %.lr.ph.i91.preheader167, label %vector.ph154

vector.ph154:                                     ; preds = %.lr.ph.i91.preheader
  %n.vec155 = and i64 %0, -4                      ; 3 uses
  %broadcast.splatinsert156 = insertelement <4 x float> poison, float %.08.lcssa.i112, i64 0
  %broadcast.splat157 = shufflevector <4 x float> %broadcast.splatinsert156, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert158 = insertelement <4 x float> poison, float %.062, i64 0
  %broadcast.splat159 = shufflevector <4 x float> %broadcast.splatinsert158, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph154
  %index161 = phi i64 [ 0, %vector.ph154 ], [ %index.next163, %vector.body160 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index161
  %wide.load162 = load <4 x float>, ptr %i.ej, align 4, !tbaa !12
  %i.ek = fsub <4 x float> %wide.load162, %broadcast.splat157
  %i.el = fmul <4 x float> %broadcast.splat159, %i.ek
  %i.em = fadd <4 x float> %i.el, splat (float 5.000000e-01)
  %i.en = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.em)
  %i.eo = fptoui <4 x float> %i.en to <4 x i16>
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %index161
  store <4 x i16> %i.eo, ptr %i.ep, align 2, !tbaa !26
  %index.next163 = add nuw i64 %index161, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next163, %n.vec155
  br i1 %i.eq, label %middle.block164, label %vector.body160, !llvm.loop !119

middle.block164:                                  ; preds = %vector.body160
  %cmp.n165 = icmp eq i64 %0, %n.vec155
  br i1 %cmp.n165, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, label %.lr.ph.i91.preheader167

.lr.ph.i91.preheader167:                          ; preds = %.lr.ph.i91.preheader, %middle.block164
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i91.preheader ], [ %n.vec155, %middle.block164 ]
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.preheader167, %.lr.ph.i91
  %.08.i = phi i64 [ %i.ez, %.lr.ph.i91 ], [ %.08.i.ph, %.lr.ph.i91.preheader167 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.08.i
  %i.es = load float, ptr %i.er, align 4, !tbaa !12
  %i.et = fsub float %i.es, %.08.lcssa.i112
  %i.eu = fmul float %.062, %i.et
  %i.ev = fadd float %i.eu, 5.000000e-01
  %i.ew = tail call float @llvm.floor.f32(float %i.ev)
  %i.ex = fptoui float %i.ew to i16
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %.08.i
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !26
  %i.ez = add nuw i64 %.08.i, 1                   ; 2 uses
  %exitcond.not.i92 = icmp eq i64 %i.ez, %0
  br i1 %exitcond.not.i92, label %_ZN5faiss12quantize_lut12_GLOBAL__N_19round_tabItEEvPKfmffPT_.exit, label %.lr.ph.i91, !llvm.loop !120

end_hunk_2
