inline.NumInlined: 1039
inline.NumDeleted: 404
begin_hunk_0_@_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE:bb.a
  br i1 %.not.i.i.i.i90, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit
  %i.kz = load ptr, ptr %i.ev, align 16, !tbaa !27
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.ky to i64
  %i.lc = sub i64 %i.la, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.lc) #24
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN5folly7TDigest8CentroidESaIS2_EE13shrink_to_fitEv.exit, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ld = ptrtoint ptr %.sroa.25.1 to i64
  %i.le = ptrtoint ptr %.sroa.0119.1 to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.1, i64 noundef %i.lf) #24
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit

bb.au:                                            ; preds = %bb.ar
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !27
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.kx to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.kx, i64 noundef %i.lk) #24
  br label %_ZN5folly7TDigestD2Ev.exit

_ZN5folly7TDigestD2Ev.exit:                       ; preds = %bb.au, %bb.ar, %bb.ah
  %.pn63 = phi { ptr, i32 } [ %i.hy, %bb.ah ], [ %i.kw, %bb.ar ], [ %i.kw, %bb.au ]
  %i.ll = load ptr, ptr %4, align 16, !tbaa !26   ; 3 uses
  %.not.i.i.i.i94 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i.i94, label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95, label %bb.av

bb.av:                                            ; preds = %_ZN5folly7TDigestD2Ev.exit
  %i.lm = load ptr, ptr %i.ev, align 16, !tbaa !27
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.ll to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.ll, i64 noundef %i.lp) #24
  br label %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95

_ZN5folly7TDigest14CentroidMergerD2Ev.exit95:     ; preds = %bb.av, %_ZN5folly7TDigestD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit99

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit99: ; preds = %.loopexit, %.loopexit.split-lp, %bb.af, %bb.ag, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95
  %.sroa.25.0176 = phi ptr [ %.sroa.25.1, %bb.ag ], [ %.sroa.25.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95 ], [ %.sroa.25.1, %bb.af ], [ %.sroa.14.0187, %.loopexit ], [ %.sroa.14.0187, %.loopexit.split-lp ]
  %.sroa.0119.0166 = phi ptr [ %.sroa.0119.1, %bb.ag ], [ %.sroa.0119.1, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95 ], [ %.sroa.0119.1, %bb.af ], [ %.sroa.0119.0188, %.loopexit ], [ %.sroa.0119.0188, %.loopexit.split-lp ] ; 2 uses
  %.pn67.pn = phi { ptr, i32 } [ %i.hx, %bb.ag ], [ %.pn63, %_ZN5folly7TDigest14CentroidMergerD2Ev.exit95 ], [ %i.hw, %bb.af ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.lq = ptrtoint ptr %.sroa.25.0176 to i64
  %i.lr = ptrtoint ptr %.sroa.0119.0166 to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.0166, i64 noundef %i.ls) #24
  resume { ptr, i32 } %.pn67.pn

_ZNSt6vectorIZN5folly7TDigest9mergeImplIPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS8_EED2Ev.exit: ; preds = %bb.at, %bb.e, %_ZN5folly7TDigestC2ERKS0_.exit, %bb.d, %bb.b
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
  %i.e = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
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
  %i.o = add i64 %i.e, -8
  %i.p = sub i64 %i.o, %i.f                       ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 184
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
  %i.de = fcmp ogt double %i.dd, 0.000000e+00
  br i1 %i.de, label %bb.l, label %_ZNSt6vectorIZN5folly7TDigest9mergeImplIPPKS1_EES1_NS0_5RangeIT_EEE6CursorSaIS9_EE12emplace_backIJRKS_INS1_8CentroidESaISD_EEEEERS9_DpOT_.exit

bb.l:                                             ; preds = %.lr.ph191
end_hunk_0
