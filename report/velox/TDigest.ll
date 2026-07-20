inline.NumInlined: 1039
inline.NumDeleted: 404
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5folly7TDigest10merge2ImplERKS0_S2_:bb.a
  store double %i.ea, ptr %i.cn, align 8, !tbaa !70
  %i.eb = fdiv double %i.dz, %i.ea                ; 2 uses
  store double %i.eb, ptr %i.ck, align 16, !tbaa !69
  %i.ec = load double, ptr %i.cg, align 8, !tbaa !67
  %i.ed = fadd double %i.dz, %i.ec
  store double %i.ed, ptr %i.cg, align 8, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  %i.ee = load ptr, ptr %i.br, align 8, !tbaa !29
  %i.ef = load ptr, ptr %3, align 16, !tbaa !29
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %.loopexit
  %.sroa.05.0.i.i64 = phi ptr [ %i.ee, %.loopexit ], [ %i.eh, %bb.aa ] ; 3 uses
  %i.eg = icmp eq ptr %.sroa.05.0.i.i64, %i.ef
  br i1 %i.eg, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i65, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eh = getelementptr inbounds i8, ptr %.sroa.05.0.i.i64, i64 -16 ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !69
  %i.ej = fcmp olt double %i.eb, %i.ei
  br i1 %i.ej, label %bb.z, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i65, !prof !35, !llvm.loop !74

_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i65: ; preds = %bb.aa, %bb.z
  %i.ek = invoke ptr @_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr %.sroa.05.0.i.i64, ptr noundef nonnull align 8 dereferenceable(16) %i.ck)
          to label %.noexc68 unwind label %bb.ai  ; 0 uses

.noexc68:                                         ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i65
  %i.el = load double, ptr %i.bv, align 8, !tbaa !65 ; 2 uses
  %i.em = fadd double %i.el, 1.000000e+00         ; 2 uses
  store double %i.em, ptr %i.bv, align 8, !tbaa !65
  %i.en = load i64, ptr %i.bt, align 8, !tbaa !57 ; 2 uses
  %i.eo = uitofp i64 %i.en to double
  %i.ep = fdiv double %i.el, %i.eo                ; 4 uses
  %i.eq = fcmp ult double %i.ep, 5.000000e-01
  br i1 %i.eq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc68
  %i.er = fsub double 1.000000e+00, %i.ep         ; 2 uses
  %i.es = fmul nnan double %i.er, -2.000000e+00
  %i.et = call double @llvm.fmuladd.f64(double %i.es, double %i.er, double 1.000000e+00)
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i66

bb.ac:                                            ; preds = %.noexc68
  %i.eu = fmul double %i.ep, 2.000000e+00
  %i.ev = fmul double %i.ep, %i.eu
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i66

_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i66:       ; preds = %bb.ac, %bb.ab
  %.0.i.i67 = phi double [ %i.et, %bb.ab ], [ %i.ev, %bb.ac ]
  %i.ew = load double, ptr %i.bu, align 16, !tbaa !64
  %i.ex = fmul double %.0.i.i67, %i.ew            ; 2 uses
  store double %i.ex, ptr %i.bw, align 16, !tbaa !66
  %i.ey = load i8, ptr %i.ch, align 16, !tbaa !68, !range !44, !noundef !45
  %i.ez = trunc nuw i8 %i.ey to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ck, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.010.0.sink.i.lcssa131, i64 16, i1 false)
  br i1 %i.ez, label %.noexc54.outer.outer.backedge, label %bb.ad

.noexc54.outer.outer.backedge:                    ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i66, %bb.ad
  br label %.noexc54.outer.outer, !llvm.loop !93

bb.ad:                                            ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i66
  store i8 1, ptr %i.ch, align 16, !tbaa !68
  br label %.noexc54.outer.outer.backedge

"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit": ; preds = %bb.s, %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.fa, align 8, !tbaa !11
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.fc, align 8, !tbaa !28
  br i1 %.ph128, label %bb.ae, label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit

bb.ae:                                            ; preds = %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit"
  %i.fd = load double, ptr %i.cl, align 16, !tbaa !72, !noalias !96
  %i.fe = load double, ptr %i.cm, align 8, !tbaa !73, !noalias !96
  %i.ff = load double, ptr %i.ck, align 16, !tbaa !69, !noalias !96
  %i.fg = load double, ptr %i.cn, align 8, !tbaa !70, !noalias !96 ; 2 uses
  %i.fh = call noundef double @llvm.fmuladd.f64(double %i.ff, double %i.fg, double %i.fd) ; 2 uses
  %i.fi = fadd double %i.fe, %i.fg                ; 2 uses
  store double %i.fi, ptr %i.cn, align 8, !tbaa !70, !noalias !96
  %i.fj = fdiv double %i.fh, %i.fi                ; 2 uses
  store double %i.fj, ptr %i.ck, align 16, !tbaa !69, !noalias !96
  %i.fk = load double, ptr %i.cg, align 8, !tbaa !67, !noalias !96
  %i.fl = fadd double %i.fh, %i.fk
  store double %i.fl, ptr %i.cg, align 8, !tbaa !67, !noalias !96
  %i.fm = load ptr, ptr %i.br, align 8, !tbaa !29, !noalias !96
  %i.fn = load ptr, ptr %3, align 16, !tbaa !29, !noalias !96
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %.sroa.05.0.i.i = phi ptr [ %i.fm, %bb.ae ], [ %i.fp, %bb.ag ] ; 3 uses
  %i.fo = icmp eq ptr %.sroa.05.0.i.i, %i.fn
  br i1 %i.fo, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fp = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -16 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !69, !noalias !96
  %i.fr = fcmp olt double %i.fj, %i.fq
  br i1 %i.fr, label %bb.af, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, !prof !35, !llvm.loop !74

_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i: ; preds = %bb.ag, %bb.af
  %i.fs = invoke ptr @_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr %.sroa.05.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ck)
          to label %.noexc55 unwind label %bb.aj  ; 0 uses

.noexc55:                                         ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.ft = load <2 x ptr>, ptr %3, align 16, !tbaa !29, !noalias !96
  %i.fu = load ptr, ptr %i.bs, align 16, !tbaa !27, !noalias !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %3, i8 0, i64 24, i1 false), !noalias !96
  %i.fv = load double, ptr %i.cg, align 8, !tbaa !28, !noalias !96
  br label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit

_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit: ; preds = %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit", %.noexc55
  %i.fw = phi ptr [ %i.fu, %.noexc55 ], [ null, %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit" ] ; 2 uses
  %.sroa.13.0 = phi double [ %i.fv, %.noexc55 ], [ 0.000000e+00, %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit" ]
  %i.fx = phi <2 x ptr> [ %i.ft, %.noexc55 ], [ splat (ptr null), %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit" ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.fx, ptr %0, align 8, !tbaa !29
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !27
  store double %.sroa.13.0, ptr %i.fb, align 8, !tbaa !28
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.134.1, ptr %i.fz, align 8, !tbaa !22
  store <2 x double> %i.bp, ptr %i.fc, align 8, !tbaa !28
  %i.ga = extractelement <2 x ptr> %i.fx, i64 1
  %i.gb = icmp eq ptr %i.fw, %i.ga
  br i1 %i.gb, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.gc = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly7TDigest8CentroidESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) #23 ; 0 uses
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit

bb.ai:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i65
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly7TDigestD2Ev.exit

bb.aj:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly7TDigestD2Ev.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit: ; preds = %bb.ah, %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.gf = load ptr, ptr %3, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i57 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i57, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  %i.gg = load ptr, ptr %i.bs, align 16, !tbaa !27
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.gf to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gj) #24
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit: ; preds = %bb.ak, %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.am

_ZN5folly7TDigestD2Ev.exit:                       ; preds = %bb.aj, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %i.gd, %bb.ai ], [ %i.ge, %bb.aj ]
  %i.gk = load ptr, ptr %3, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i60 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i.i60, label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit61, label %bb.al

bb.al:                                            ; preds = %_ZN5folly7TDigestD2Ev.exit
  %i.gl = load ptr, ptr %i.bs, align 16, !tbaa !27
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.go) #24
  br label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit61

_ZN5folly7TDigest14CentroidMergerD2Ev.exit61:     ; preds = %bb.al, %_ZN5folly7TDigestD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn

bb.am:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit, %_ZN5folly7TDigestC2ERKS0_.exit51, %_ZN5folly7TDigestC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"class.folly::TDigest::CentroidMerger", align 16 ; 30 uses
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 100, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.d, align 8, !tbaa !28
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 6                   ; 2 uses
  %i.i = icmp eq i64 %i.g, 128
  br i1 %i.i, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_ZN5folly7TDigest10merge2ImplERKS0_S2_(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.j)
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11   ; 9 uses
  %5 = ptrtoaddr ptr %2 to i64
  %6 = ptrtoaddr ptr %1 to i64
  %i.m = sub i64 %5, %6
  %i.n = add i64 %i.m, -64                        ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 1024
  br i1 %min.iters.check, label %.lr.ph.preheader274, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.o = lshr i64 %i.n, 6
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %n.mod.vf = and i64 %i.p, 3                     ; 2 uses
  %i.q = icmp eq i64 %n.mod.vf, 0
  %i.r = select i1 %i.q, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.p, %i.r                 ; 2 uses
  %i.s = shl i64 %n.vec, 6
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi262 = phi <4 x ptr> [ splat (ptr null), %vector.ph ], [ %i.bb, %vector.body ]
  %i.u = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %pointer.phi = phi ptr [ %1, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 64, i64 128, i64 192> ; 5 uses
  %i.v = extractelement <4 x ptr> %vector.gep, i64 0 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.x = extractelement <4 x ptr> %vector.gep, i64 1 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = extractelement <4 x ptr> %vector.gep, i64 2 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = extractelement <4 x ptr> %vector.gep, i64 3 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = insertelement <4 x ptr> poison, ptr %i.w, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %i.y, i64 1
  %i.af = insertelement <4 x ptr> %i.ae, ptr %i.aa, i64 2
  %i.ag = insertelement <4 x ptr> %i.af, ptr %i.ac, i64 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !29
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !29
  %i.ap = insertelement <4 x ptr> poison, ptr %i.al, i64 0
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %i.am, i64 1
  %i.ar = insertelement <4 x ptr> %i.aq, ptr %i.an, i64 2
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.ao, i64 3 ; 2 uses
  %i.at = icmp ne <4 x ptr> %i.ag, %i.as
  %i.au = freeze <4 x i1> %i.at                   ; 3 uses
  %i.av = ptrtoint <4 x ptr> %i.as to <4 x i64>
  %i.aw = ptrtoint <4 x ptr> %i.ag to <4 x i64>
  %i.ax = sub <4 x i64> %i.av, %i.aw
  %i.ay = ashr exact <4 x i64> %i.ax, splat (i64 4)
  %i.az = bitcast <4 x i1> %i.au to i4
  %.not264 = icmp eq i4 %i.az, 0                  ; 2 uses
  %i.ba = select i1 %.not264, <4 x i1> %i.u, <4 x i1> %i.au ; 2 uses
  %i.bb = select i1 %.not264, <4 x ptr> %vec.phi262, <4 x ptr> %vector.gep ; 2 uses
  %i.bc = select <4 x i1> %i.au, <4 x i64> %i.ay, <4 x i64> zeroinitializer
  %i.bd = add <4 x i64> %i.bc, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 256
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %i.bf = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bd)
  %i.bg = tail call ptr @llvm.experimental.vector.extract.last.active.v4p0(<4 x ptr> %i.bb, <4 x i1> %i.ba, ptr null)
  br label %.lr.ph.preheader274

.lr.ph.preheader274:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0181.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bf, %middle.block ]
  %.046180.ph = phi ptr [ null, %.lr.ph.preheader ], [ %i.bg, %middle.block ]
  %.048179.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.bh = icmp eq i64 %.1, 0
  br i1 %i.bh, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader274, %.lr.ph
  %.0181 = phi i64 [ %.1, %.lr.ph ], [ %.0181.ph, %.lr.ph.preheader274 ]
  %.046180 = phi ptr [ %.147, %.lr.ph ], [ %.046180.ph, %.lr.ph.preheader274 ]
  %.048179 = phi ptr [ %i.br, %.lr.ph ], [ %.048179.ph, %.lr.ph.preheader274 ] ; 4 uses
  %i.bi = load ptr, ptr %.048179, align 8, !tbaa !29 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.048179, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !29 ; 2 uses
  %i.bl = icmp eq ptr %i.bi, %i.bk                ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 4
  %.147 = select i1 %i.bl, ptr %.046180, ptr %.048179 ; 4 uses
  %i.bq = select i1 %i.bl, i64 0, i64 %i.bp
  %.1 = add i64 %i.bq, %.0181                     ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.048179, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.br, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !102

bb.e:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.bs, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.bu, align 8, !tbaa !28
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.f:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %.147, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !25 ; 3 uses
  %i.bx = load ptr, ptr %.147, align 8, !tbaa !26 ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 5 uses
  %i.cb = ashr exact i64 %i.ca, 4
  %i.cc = icmp eq i64 %.1, %i.cb
  br i1 %i.cc, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %.147, i64 24 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !11
  %i.cf = icmp eq i64 %i.ce, %i.l
  br i1 %i.cf, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr null, i64 %i.ca
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !27
  br label %_ZN5folly7TDigestC2ERKS0_.exit

bb.i:                                             ; preds = %bb.h
  %i.cj = icmp ugt i64 %i.ca, 9223372036854775792
  br i1 %i.cj, label %.noexc.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !35

.noexc.i.i.i:                                     ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.i
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #29 ; 4 uses
  store ptr %i.ck, ptr %0, align 8, !tbaa !26
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ca
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !27
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !36
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.bw
  br i1 %i.cq, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !37

_ZN5folly7TDigestC2ERKS0_.exit:                   ; preds = %.lr.ph.i.i.i.i.i.i, %.thread
  %i.cr = phi ptr [ %i.cg, %.thread ], [ %i.cl, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.cp, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.cr, align 8, !tbaa !25
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %i.cd, i64 40, i1 false)
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.j:                                             ; preds = %bb.f, %bb.g
  %i.ct = icmp ugt i64 %i.h, 576460752303423487
  br i1 %i.ct, label %.noexc70, label %.lr.ph191.preheader

.noexc70:                                         ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

.lr.ph191.preheader:                              ; preds = %bb.j
  %i.cu = ashr exact i64 %i.g, 2
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #29 ; 3 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.h
  br label %.lr.ph191

._crit_edge192:                                   ; preds = %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvS8_S8_RT0_(ptr %.sroa.0119.1, ptr %.sroa.14.1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.o unwind label %bb.ae

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit
  %.057190 = phi double [ %.158, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ 0.000000e+00, %.lr.ph191.preheader ] ; 2 uses
  %.059189 = phi ptr [ %i.eq, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %1, %.lr.ph191.preheader ] ; 7 uses
  %.sroa.0119.0188 = phi ptr [ %.sroa.0119.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %i.cv, %.lr.ph191.preheader ] ; 8 uses
  %.sroa.14.0187 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %i.cv, %.lr.ph191.preheader ] ; 10 uses
  %.sroa.25.0184 = phi ptr [ %.sroa.25.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %i.cw, %.lr.ph191.preheader ] ; 3 uses
  %i.cx = phi <2 x double> [ %i.ep, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ <double -inf, double +inf>, %.lr.ph191.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.059189, i64 40
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !22 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE:bb.a
  store double %i.kn, ptr %i.jm, align 8, !tbaa !28
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.158, ptr %i.ku, align 8, !tbaa !22
  store <2 x double> %i.ep, ptr %i.jn, align 8, !tbaa !28
  %i.kv = icmp eq ptr %i.kt, %i.ks
  br i1 %i.kv, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.kw = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly7TDigest8CentroidESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) #23 ; 0 uses
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit

bb.aq:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ky = load ptr, ptr %0, align 8, !tbaa !26    ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i.i93, label %_ZN5folly7TDigestD2Ev.exit, label %bb.at

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit: ; preds = %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit.thread, %bb.ap, %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.kz = load ptr, ptr %4, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i90 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.i90, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  %i.la = load ptr, ptr %i.ew, align 16, !tbaa !27
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.kz to i64
  %i.ld = sub i64 %i.lb, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.ld) #24
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.le = ptrtoint ptr %.sroa.25.1 to i64
  %i.lf = ptrtoint ptr %.sroa.0119.1 to i64
  %i.lg = sub i64 %i.le, %i.lf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.1, i64 noundef %i.lg) #24
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.at:                                            ; preds = %bb.aq
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !27
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = ptrtoint ptr %i.ky to i64
  %i.ll = sub i64 %i.lj, %i.lk
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.ll) #24
  br label %_ZN5folly7TDigestD2Ev.exit

_ZN5folly7TDigestD2Ev.exit:                       ; preds = %bb.at, %bb.aq, %bb.ag
  %.pn63 = phi { ptr, i32 } [ %i.hz, %bb.ag ], [ %i.kx, %bb.aq ], [ %i.kx, %bb.at ]
  %i.lm = load ptr, ptr %4, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i94 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i.i94, label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95, label %bb.au

bb.au:                                            ; preds = %_ZN5folly7TDigestD2Ev.exit
  %i.ln = load ptr, ptr %i.ew, align 16, !tbaa !27
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = ptrtoint ptr %i.lm to i64
  %i.lq = sub i64 %i.lo, %i.lp
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.lq) #24
  br label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95

_ZN5folly7TDigest14CentroidMergerD2Ev.exit95:     ; preds = %bb.au, %_ZN5folly7TDigestD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit99

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit99: ; preds = %.loopexit, %.loopexit.split-lp, %bb.ae, %bb.af, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95
  %.sroa.25.0176 = phi ptr [ %.sroa.25.1, %bb.af ], [ %.sroa.25.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95 ], [ %.sroa.25.1, %bb.ae ], [ %.sroa.14.0187, %.loopexit ], [ %.sroa.14.0187, %.loopexit.split-lp ]
  %.sroa.0119.0166 = phi ptr [ %.sroa.0119.1, %bb.af ], [ %.sroa.0119.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95 ], [ %.sroa.0119.1, %bb.ae ], [ %.sroa.0119.0188, %.loopexit ], [ %.sroa.0119.0188, %.loopexit.split-lp ] ; 2 uses
  %.pn67.pn = phi { ptr, i32 } [ %i.hy, %bb.af ], [ %.pn63, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95 ], [ %i.hx, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.lr = ptrtoint ptr %.sroa.25.0176 to i64
  %i.ls = ptrtoint ptr %.sroa.0119.0166 to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.0166, i64 noundef %i.lt) #24
  resume { ptr, i32 } %.pn67.pn

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit: ; preds = %bb.as, %bb.e, %_ZN5folly7TDigestC2ERKS0_.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvS8_S8_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.ap, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %.09 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8
  %.sroa.02.0.copyload = load ptr, ptr %i.p, align 8
  %i.r = icmp slt i64 %.09, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.037.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %bb.c ] ; 2 uses
  %i.s = shl i64 %.037.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.v
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !103
  %i.y = load double, ptr %i.x, align 8, !tbaa !69
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !103
  %i.aa = load double, ptr %i.z, align 8, !tbaa !69
  %i.ab = fcmp ogt double %i.y, %i.aa
  %spec.select.i = select i1 %i.ab, i64 %i.v, i64 %i.t ; 4 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.ae = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !115

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.af = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ag = icmp sgt i64 %.1.i, %.09
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !103
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !69
  %i.ak = load double, ptr %.sroa.02.0.copyload, align 8, !tbaa !69
  %i.al = fcmp ogt double %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.019.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.an = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.an, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit, !llvm.loop !116

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  store <2 x ptr> %i.q, ptr %i.ao, align 8
  %.not = icmp eq i64 %.09, 0
  %i.ap = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !117

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEElSA_NS0_5__ops15_Iter_less_iterEEvS8_T0_SI_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly7TDigest5mergeENS_5RangeIPPKS0_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"class.folly::TDigest::CentroidMerger", align 16 ; 30 uses
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 100, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.d, align 8, !tbaa !28
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp eq i64 %i.g, 16
  %i.j = load ptr, ptr %1, align 8, !tbaa !118    ; 2 uses
  br i1 %i.i, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118
  tail call void @_ZN5folly7TDigest10merge2ImplERKS0_S2_(ptr dead_on_unwind writable sret(%"class.folly::TDigest") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.l)
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 9 uses
  %5 = ptrtoaddr ptr %2 to i64
  %6 = ptrtoaddr ptr %1 to i64
  %i.o = sub i64 %5, %6
  %i.p = add i64 %i.o, -8                         ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 344
  br i1 %min.iters.check, label %.lr.ph.preheader277, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, 4611686018427387900      ; 3 uses
  %i.s = shl i64 %n.vec, 3
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi262 = phi <4 x ptr> [ splat (ptr null), %vector.ph ], [ %i.bd, %vector.body ]
  %i.u = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.v = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.v
  %i.w = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !118 ; 5 uses
  %i.x = extractelement <4 x ptr> %i.w, i64 0     ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = extractelement <4 x ptr> %i.w, i64 1     ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = extractelement <4 x ptr> %i.w, i64 2    ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = extractelement <4 x ptr> %i.w, i64 3    ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.af = insertelement <4 x ptr> poison, ptr %i.y, i64 0
  %i.ag = insertelement <4 x ptr> %i.af, ptr %i.aa, i64 1
  %i.ah = insertelement <4 x ptr> %i.ag, ptr %i.ac, i64 2
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %i.ae, i64 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !29
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !29
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.ar = insertelement <4 x ptr> poison, ptr %i.an, i64 0
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.ao, i64 1
  %i.at = insertelement <4 x ptr> %i.as, ptr %i.ap, i64 2
  %i.au = insertelement <4 x ptr> %i.at, ptr %i.aq, i64 3 ; 2 uses
  %i.av = icmp ne <4 x ptr> %i.ai, %i.au
  %i.aw = freeze <4 x i1> %i.av                   ; 3 uses
  %i.ax = ptrtoint <4 x ptr> %i.au to <4 x i64>
  %i.ay = ptrtoint <4 x ptr> %i.ai to <4 x i64>
  %i.az = sub <4 x i64> %i.ax, %i.ay
  %i.ba = ashr exact <4 x i64> %i.az, splat (i64 4)
  %i.bb = bitcast <4 x i1> %i.aw to i4
  %.not267 = icmp eq i4 %i.bb, 0                  ; 2 uses
  %i.bc = select i1 %.not267, <4 x i1> %i.u, <4 x i1> %i.aw ; 2 uses
  %i.bd = select i1 %.not267, <4 x ptr> %vec.phi262, <4 x ptr> %i.w ; 2 uses
  %i.be = select <4 x i1> %i.aw, <4 x i64> %i.ba, <4 x i64> zeroinitializer
  %i.bf = add <4 x i64> %i.be, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %i.bh = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bf) ; 2 uses
  %i.bi = tail call ptr @llvm.experimental.vector.extract.last.active.v4p0(<4 x ptr> %i.bd, <4 x i1> %i.bc, ptr null) ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader277

.lr.ph.preheader277:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0181.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bh, %middle.block ]
  %.046180.ph = phi ptr [ null, %.lr.ph.preheader ], [ %i.bi, %middle.block ]
  %.048179.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.147.lcssa = phi ptr [ %i.bi, %middle.block ], [ %.147, %.lr.ph ] ; 4 uses
  %.1.lcssa = phi i64 [ %i.bh, %middle.block ], [ %.1, %.lr.ph ] ; 2 uses
  %i.bj = icmp eq i64 %.1.lcssa, 0
  br i1 %i.bj, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader277, %.lr.ph
  %.0181 = phi i64 [ %.1, %.lr.ph ], [ %.0181.ph, %.lr.ph.preheader277 ]
  %.046180 = phi ptr [ %.147, %.lr.ph ], [ %.046180.ph, %.lr.ph.preheader277 ]
  %.048179 = phi ptr [ %i.bu, %.lr.ph ], [ %.048179.ph, %.lr.ph.preheader277 ] ; 2 uses
  %i.bk = load ptr, ptr %.048179, align 8, !tbaa !118 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !29 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29 ; 2 uses
  %i.bo = icmp eq ptr %i.bl, %i.bn                ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 4
  %.147 = select i1 %i.bo, ptr %.046180, ptr %i.bk ; 2 uses
  %i.bt = select i1 %i.bo, i64 0, i64 %i.bs
  %.1 = add i64 %i.bt, %.0181                     ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.048179, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bu, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121

bb.e:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.bv, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.bx, align 8, !tbaa !28
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

bb.f:                                             ; preds = %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %.147.lcssa, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !25 ; 2 uses
  %i.ca = load ptr, ptr %.147.lcssa, align 8, !tbaa !26 ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = ashr exact i64 %i.cd, 4
  %i.cf = icmp eq i64 %.1.lcssa, %i.ce
  br i1 %i.cf, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %.147.lcssa, i64 24 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11
  %i.ci = icmp eq i64 %i.ch, %i.n
  br i1 %i.ci, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = icmp ugt i64 %i.cd, 9223372036854775792
  br i1 %i.cj, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, !prof !35

.noexc.i.i.i:                                     ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #29
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i, %bb.h
  %i.cl = phi ptr [ null, %bb.h ], [ %i.ck, %_ZNSt15__new_allocatorIN5folly7TDigest8CentroidEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.cl, ptr %0, align 8, !tbaa !26
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !25
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !27
  %i.cp = load ptr, ptr %.147.lcssa, align 8, !tbaa !29 ; 2 uses
  %i.cq = load ptr, ptr %i.by, align 8, !tbaa !29 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i ], [ %i.cl, %bb.j ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i ], [ %i.cp, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !36
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.cq
  br i1 %i.cu, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !37

_ZN5folly7TDigestC2ERKS0_.exit:                   ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cl, %bb.j ], [ %i.ct, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.cm, align 8, !tbaa !25
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cv, ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i64 40, i1 false)
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EED2Ev.exit

bb.k:                                             ; preds = %bb.f, %bb.g
  %i.cw = icmp ugt i64 %i.h, 576460752303423487
  br i1 %i.cw, label %.noexc70, label %.lr.ph191.preheader

.noexc70:                                         ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

.lr.ph191.preheader:                              ; preds = %bb.k
  %i.cx = shl nuw nsw i64 %i.g, 1
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #29 ; 3 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.h
  br label %.lr.ph191

._crit_edge192:                                   ; preds = %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_less_iterEEvS9_S9_RT0_(ptr %.sroa.0119.1, ptr %.sroa.14.1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.p unwind label %bb.af

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit
  %.057190 = phi double [ %.158, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ 0.000000e+00, %.lr.ph191.preheader ] ; 2 uses
  %.059189 = phi ptr [ %i.eu, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ %1, %.lr.ph191.preheader ] ; 2 uses
  %.sroa.0119.0188 = phi ptr [ %.sroa.0119.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ %i.cy, %.lr.ph191.preheader ] ; 8 uses
  %.sroa.14.0187 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ %i.cy, %.lr.ph191.preheader ] ; 10 uses
  %.sroa.25.0184 = phi ptr [ %.sroa.25.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ %i.cz, %.lr.ph191.preheader ] ; 3 uses
  %i.da = phi <2 x double> [ %i.et, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit ], [ <double -inf, double +inf>, %.lr.ph191.preheader ] ; 4 uses
  %i.db = load ptr, ptr %.059189, align 8, !tbaa !118 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !22 ; 2 uses
end_hunk_1
