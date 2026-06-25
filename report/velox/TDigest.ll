inline.NumInlined: 1039
inline.NumDeleted: 404
begin_hunk_0_@_ZN5folly7TDigest10merge2ImplERKS0_S2_:bb.a
  %i.et = call double @llvm.fmuladd.f64(double %i.es, double %i.er, double 1.000000e+00)
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i68

bb.ab:                                            ; preds = %.noexc70
  %i.eu = fmul double %i.ep, 2.000000e+00
  %i.ev = fmul double %i.ep, %i.eu
  br label %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i68

_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i68:       ; preds = %bb.ab, %bb.aa
  %.0.i.i69 = phi double [ %i.et, %bb.aa ], [ %i.ev, %bb.ab ]
  %i.ew = load double, ptr %i.bu, align 16, !tbaa !64
  %i.ex = fmul double %.0.i.i69, %i.ew            ; 2 uses
  store double %i.ex, ptr %i.bw, align 16, !tbaa !66
  %i.ey = load i8, ptr %i.ch, align 16, !tbaa !68, !range !44, !noundef !45
  %i.ez = trunc nuw i8 %i.ey to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ck, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.010.0.sink.i.lcssa133, i64 16, i1 false)
  br i1 %i.ez, label %.noexc56.outer.outer.backedge, label %bb.ac

.noexc56.outer.outer.backedge:                    ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i68, %bb.ac
  br label %.noexc56.outer.outer, !llvm.loop !93

bb.ac:                                            ; preds = %_ZN5folly12_GLOBAL__N_16k_to_qEdd.exit.i68
  store i8 1, ptr %i.ch, align 16, !tbaa !68
  br label %.noexc56.outer.outer.backedge

"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit": ; preds = %bb.r, %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.fa, align 8, !tbaa !11
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.fc, align 8, !tbaa !28
  br i1 %.ph130, label %bb.ad, label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit

bb.ad:                                            ; preds = %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit"
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
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.sroa.05.0.i.i = phi ptr [ %i.fm, %bb.ad ], [ %i.fp, %bb.af ] ; 3 uses
  %i.fo = icmp eq ptr %.sroa.05.0.i.i, %i.fn
  br i1 %i.fo, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fp = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -16 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !69, !noalias !96
  %i.fr = fcmp olt double %i.fj, %i.fq
  br i1 %i.fr, label %bb.ae, label %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i, !prof !35, !llvm.loop !74

_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i: ; preds = %bb.af, %bb.ae
  %i.fs = invoke ptr @_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr %.sroa.05.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ck)
          to label %.noexc57 unwind label %bb.ai  ; 0 uses

.noexc57:                                         ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.ft = load <2 x ptr>, ptr %3, align 16, !tbaa !29, !noalias !96
  %i.fu = load ptr, ptr %i.bs, align 16, !tbaa !27, !noalias !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %3, i8 0, i64 24, i1 false), !noalias !96
  %i.fv = load double, ptr %i.cg, align 8, !tbaa !28, !noalias !96
  br label %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit

_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit: ; preds = %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit", %.noexc57
  %i.fw = phi ptr [ %i.fu, %.noexc57 ], [ null, %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit" ] ; 2 uses
  %.sroa.13.0 = phi double [ %i.fv, %.noexc57 ], [ 0.000000e+00, %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit" ]
  %i.fx = phi <2 x ptr> [ %i.ft, %.noexc57 ], [ splat (ptr null), %"_ZN5folly12_GLOBAL__N_116merge2ContainersISt6vectorINS_7TDigest8CentroidESaIS4_EES6_St4lessIvEZNS3_10merge2ImplERKS3_SA_E3$_0EEvRKT_RKT0_OT1_OT2_.exit" ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.fx, ptr %0, align 8, !tbaa !29
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !27
  store double %.sroa.13.0, ptr %i.fb, align 8, !tbaa !28
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.134.1, ptr %i.fz, align 8, !tbaa !22
  store <2 x double> %i.bp, ptr %i.fc, align 8, !tbaa !28
  %i.ga = extractelement <2 x ptr> %i.fx, i64 1
  %i.gb = icmp eq ptr %i.fw, %i.ga
  br i1 %i.gb, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.gc = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly7TDigest8CentroidESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) #23 ; 0 uses
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit

bb.ah:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i67
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly7TDigestD2Ev.exit

bb.ai:                                            ; preds = %_ZN5folly7TDigest14CentroidMerger6commitERKNS0_8CentroidE.exit.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly7TDigestD2Ev.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit: ; preds = %bb.ag, %_ZNSt4pairISt6vectorIN5folly7TDigest8CentroidESaIS3_EEdED2Ev.exit
  %i.gf = load ptr, ptr %3, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i59, label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  %i.gg = load ptr, ptr %i.bs, align 16, !tbaa !27
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.gf to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gj) #24
  br label %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit

_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit: ; preds = %bb.aj, %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.al

_ZN5folly7TDigestD2Ev.exit:                       ; preds = %bb.ai, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %i.gd, %bb.ah ], [ %i.ge, %bb.ai ]
  %i.gk = load ptr, ptr %3, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i.i62, label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit63, label %bb.ak

bb.ak:                                            ; preds = %_ZN5folly7TDigestD2Ev.exit
  %i.gl = load ptr, ptr %i.bs, align 16, !tbaa !27
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gk to i64
  %i.go = sub i64 %i.gm, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.go) #24
  br label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit63

_ZN5folly7TDigest14CentroidMergerD2Ev.exit63:     ; preds = %bb.ak, %_ZN5folly7TDigestD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn

bb.al:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EED2Ev.exit, %_ZN5folly7TDigestC2ERKS0_.exit53, %_ZN5folly7TDigestC2ERKS0_.exit
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
  %i.e = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
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
  %i.m = sub i64 %i.e, %i.f
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
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi262 = phi <4 x ptr> [ splat (ptr null), %vector.ph ], [ %i.ax, %vector.body ]
  %i.u = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %pointer.phi = phi ptr [ %1, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 64, i64 128, i64 192> ; 5 uses
  %i.v = extractelement <4 x ptr> %vector.gep, i64 0 ; 2 uses
  %5 = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.w = extractelement <4 x ptr> %vector.gep, i64 1 ; 2 uses
  %6 = load ptr, ptr %i.w, align 8, !tbaa !29
  %7 = extractelement <4 x ptr> %vector.gep, i64 2 ; 2 uses
  %i.x = load ptr, ptr %7, align 8, !tbaa !29
  %8 = extractelement <4 x ptr> %vector.gep, i64 3 ; 2 uses
  %i.y = load ptr, ptr %8, align 8, !tbaa !29
  %i.z = insertelement <4 x ptr> poison, ptr %5, i64 0
  %i.aa = insertelement <4 x ptr> %i.z, ptr %6, i64 1
  %i.ab = insertelement <4 x ptr> %i.aa, ptr %i.x, i64 2
  %i.ac = insertelement <4 x ptr> %i.ab, ptr %i.y, i64 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !29
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.al = insertelement <4 x ptr> poison, ptr %i.ah, i64 0
  %i.am = insertelement <4 x ptr> %i.al, ptr %i.ai, i64 1
  %i.an = insertelement <4 x ptr> %i.am, ptr %i.aj, i64 2
  %i.ao = insertelement <4 x ptr> %i.an, ptr %i.ak, i64 3 ; 2 uses
  %i.ap = icmp ne <4 x ptr> %i.ac, %i.ao
  %i.aq = freeze <4 x i1> %i.ap                   ; 3 uses
  %i.ar = ptrtoint <4 x ptr> %i.ao to <4 x i64>
  %i.as = ptrtoint <4 x ptr> %i.ac to <4 x i64>
  %i.at = sub <4 x i64> %i.ar, %i.as
  %i.au = ashr exact <4 x i64> %i.at, splat (i64 4)
  %i.av = bitcast <4 x i1> %i.aq to i4
  %.not264 = icmp eq i4 %i.av, 0                  ; 2 uses
  %i.aw = select i1 %.not264, <4 x i1> %i.u, <4 x i1> %i.aq ; 2 uses
  %i.ax = select i1 %.not264, <4 x ptr> %vec.phi262, <4 x ptr> %vector.gep ; 2 uses
  %i.ay = select <4 x i1> %i.aq, <4 x i64> %i.au, <4 x i64> zeroinitializer
  %i.az = add <4 x i64> %i.ay, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 256
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %i.bb = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.az)
  %i.bc = tail call ptr @llvm.experimental.vector.extract.last.active.v4p0(<4 x ptr> %i.ax, <4 x i1> %i.aw, ptr null)
  br label %.lr.ph.preheader274

.lr.ph.preheader274:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0181.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bb, %middle.block ]
  %.046180.ph = phi ptr [ null, %.lr.ph.preheader ], [ %i.bc, %middle.block ]
  %.048179.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.bd = icmp eq i64 %.1, 0
  br i1 %i.bd, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader274, %.lr.ph
  %.0181 = phi i64 [ %.1, %.lr.ph ], [ %.0181.ph, %.lr.ph.preheader274 ]
  %.046180 = phi ptr [ %.147, %.lr.ph ], [ %.046180.ph, %.lr.ph.preheader274 ]
  %.048179 = phi ptr [ %i.bn, %.lr.ph ], [ %.048179.ph, %.lr.ph.preheader274 ] ; 4 uses
  %i.be = load ptr, ptr %.048179, align 8, !tbaa !29 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.048179, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !29 ; 2 uses
  %i.bh = icmp eq ptr %i.be, %i.bg                ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.be to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 4
  %.147 = select i1 %i.bh, ptr %.046180, ptr %.048179 ; 4 uses
  %i.bm = select i1 %i.bh, i64 0, i64 %i.bl
  %.1 = add i64 %i.bm, %.0181                     ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.048179, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.bn, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !102

bb.e:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %i.bo, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  store <2 x double> splat (double +qnan), ptr %i.bq, align 8, !tbaa !28
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.f:                                             ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %.147, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !25 ; 3 uses
  %i.bt = load ptr, ptr %.147, align 8, !tbaa !26 ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 5 uses
  %i.bx = ashr exact i64 %i.bw, 4
  %i.by = icmp eq i64 %.1, %i.bx
  br i1 %i.by, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %.147, i64 24 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !11
  %i.cb = icmp eq i64 %i.ca, %i.l
  br i1 %i.cb, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr null, i64 %i.bw
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !27
  br label %_ZN5folly7TDigestC2ERKS0_.exit

bb.i:                                             ; preds = %bb.h
  %i.cf = icmp ugt i64 %i.bw, 9223372036854775792
  br i1 %i.cf, label %.noexc.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !35

.noexc.i.i.i:                                     ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.i
  %i.cg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #29 ; 4 uses
  store ptr %i.cg, ptr %0, align 8, !tbaa !26
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !25
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bw
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !27
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !36
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.bs
  br i1 %i.cm, label %_ZN5folly7TDigestC2ERKS0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !37

_ZN5folly7TDigestC2ERKS0_.exit:                   ; preds = %.lr.ph.i.i.i.i.i.i, %.thread
  %i.cn = phi ptr [ %i.cc, %.thread ], [ %i.ch, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.cl, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.cn, align 8, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.co, ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i64 40, i1 false)
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.j:                                             ; preds = %bb.f, %bb.g
  %i.cp = icmp ugt i64 %i.h, 576460752303423487
  br i1 %i.cp, label %.noexc70, label %.lr.ph191.preheader

.noexc70:                                         ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #28
  unreachable

.lr.ph191.preheader:                              ; preds = %bb.j
  %i.cq = ashr exact i64 %i.g, 2
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #29 ; 3 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.h
  br label %.lr.ph191

._crit_edge192:                                   ; preds = %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZN5folly7TDigest9mergeImplIPKS3_EES3_NS2_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEENS0_5__ops15_Iter_less_iterEEvS8_S8_RT0_(ptr %.sroa.0119.1, ptr %.sroa.14.1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.o unwind label %bb.ae

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit
  %.057190 = phi double [ %.158, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ 0.000000e+00, %.lr.ph191.preheader ] ; 2 uses
  %.059189 = phi ptr [ %i.em, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %1, %.lr.ph191.preheader ] ; 7 uses
  %.sroa.0119.0188 = phi ptr [ %.sroa.0119.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %i.cr, %.lr.ph191.preheader ] ; 8 uses
  %.sroa.14.0187 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %i.cr, %.lr.ph191.preheader ] ; 10 uses
  %.sroa.25.0184 = phi ptr [ %.sroa.25.1, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ %i.cs, %.lr.ph191.preheader ] ; 3 uses
  %i.ct = phi <2 x double> [ %i.el, %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit ], [ <double -inf, double +inf>, %.lr.ph191.preheader ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.059189, i64 40
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !22 ; 2 uses
  %i.cw = fcmp ogt double %i.cv, 0.000000e+00
  br i1 %i.cw, label %bb.k, label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit

bb.k:                                             ; preds = %.lr.ph191
  %i.cx = getelementptr inbounds nuw i8, ptr %.059189, i64 48
  %i.cy = load <2 x double>, ptr %i.cx, align 8, !tbaa !28 ; 3 uses
  %i.cz = shufflevector <2 x double> %i.ct, <2 x double> %i.cy, <2 x i32> <i32 0, i32 3>
  %i.da = shufflevector <2 x double> %i.cy, <2 x double> %i.ct, <2 x i32> <i32 0, i32 3>
  %i.db = fcmp olt <2 x double> %i.cz, %i.da
  %i.dc = select <2 x i1> %i.db, <2 x double> %i.cy, <2 x double> %i.ct ; 2 uses
  %i.dd = fadd double %.057190, %i.cv             ; 2 uses
  %.not.i = icmp eq ptr %.sroa.14.0187, %.sroa.25.0184
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = load ptr, ptr %.059189, align 8, !tbaa !26 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.059189, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !25
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  store ptr %i.de, ptr %.sroa.14.0187, align 8, !tbaa !103
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.14.0187, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dj
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !105
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.14.0187, i64 16
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12emplace_backIJRKS_INS1_8CentroidESaISC_EEEEERS8_DpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.dn = ptrtoint ptr %.sroa.14.0187 to i64
  %i.do = ptrtoint ptr %.sroa.0119.0188 to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 4 uses
  %i.dq = icmp eq i64 %i.dp, 9223372036854775792
  br i1 %i.dq, label %bb.n, label %_ZNKSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #28
          to label %.noexc75 unwind label %.loopexit.split-lp
end_hunk_0
