inline.NumInlined: 20898
inline.NumDeleted: 6710
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE17buildFromF14TableIRKS5_EEvOT_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %i.b, 3840
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.b, 768
  br i1 %i.f, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.inv.i = icmp samesign ugt i64 %i.b, 1791
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.b, -4611686018427387649
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = add nsw i64 %i.c, -1
  %i.i = udiv i64 %i.h, 12
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = sub nuw nsw i64 64, %i.j
  %i.l = shl nuw nsw i64 1, %i.k
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn21.i = phi i64 [ %i.l, %bb.g ], [ 1, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %.0.pn.i = phi i64 [ 12, %bb.g ], [ %spec.select.i, %bb.d ], [ 2, %bb.c ] ; 2 uses
  %i.m = and i64 %i.b, 255
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !1830
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64                 ; 2 uses
  %i.t = icmp ugt i64 %i.n, %.pn21.i
  %i.u = icmp samesign ult i64 %.0.pn.i, %i.s
  %or.cond = select i1 %i.t, i1 true, i1 %i.u     ; 2 uses
  %.sroa.09.0 = select i1 %or.cond, i64 %.pn21.i, i64 %i.n
  %.sroa.5.0 = select i1 %or.cond, i64 %.0.pn.i, i64 %i.s
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef %.sroa.09.0, i64 noundef %.sroa.5.0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1823
  %i.x = trunc i64 %i.w to i8
  %i.y = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.z = trunc i64 %i.y to i8
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIbvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit unwind label %bb.j

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIbvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #43 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIbvvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.k, !inline_history !4390

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIbvvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.j
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIbvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ae

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIbvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIbvvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.i, %bb.h, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef %0) local_unnamed_addr #40 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #43
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #43
  tail call void @__cxa_rethrow() #47
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE9itemCountEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !1830   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = and i8 %i.h, 15
  %i.j = zext nneg i8 %i.i to i64                 ; 2 uses
  %i.k = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.l = shl i64 14, %i.e
  %spec.select = select i1 %i.k, i64 %i.j, i64 %i.l
  %i.m = and i64 %i.b, 255                        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE9itemCountEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !1830
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE9itemCountEv.exit58

bb.b:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE9itemCountEv.exit
  %i.t = shl i64 14, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE9itemCountEv.exit58

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE9itemCountEv.exit58: ; preds = %bb.a, %bb.b
  %.0.i57 = phi i64 [ %i.s, %bb.a ], [ %i.t, %bb.b ]
  %i.u = icmp eq i64 %spec.select, %.0.i57
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE9itemCountEv.exit58
  %i.v = or disjoint i64 %i.j, 16
  %i.w = shl i64 32, %i.e
  %.0.i59 = select i1 %i.k, i64 %i.v, i64 %i.w
  %i.x = load ptr, ptr %1, align 8, !tbaa !1830
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 16 %i.x, i64 %.0.i59, i1 false)
  %i.y = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.z = and i64 %i.y, -256
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1823
  %i.ab = and i64 %i.aa, 255
  %i.ac = or disjoint i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !1823
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !3287 ; 2 uses
  %i.af = and i64 %i.ae, 15
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1830
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1830
  %i.ai = and i64 %i.ae, -16
  %i.aj = add i64 %i.ai, -16
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.ag, i64 %i.al
  br label %bb.k

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE9itemCountEv.exit58
  %i.an = load ptr, ptr %1, align 8, !tbaa !1830
  %i.ao = shl nuw i64 1, %i.e                     ; 2 uses
  %i.ap = getelementptr [32 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr [32 x i8], ptr %i.f, i64 %i.ao
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ar = phi i64 [ %i.b, %bb.d ], [ %i.cc, %._crit_edge ]
  %i.as = phi i64 [ %i.d, %bb.d ], [ %i.cd, %._crit_edge ]
  %.pn48 = phi ptr [ %i.aq, %bb.d ], [ %.044, %._crit_edge ] ; 4 uses
  %.pn47 = phi ptr [ %i.ap, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -32   ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -32   ; 4 uses
  %i.at = getelementptr i8, ptr %.pn47, i64 -18
  %i.au = load i8, ptr %i.at, align 2, !tbaa !1831
  %i.av = and i8 %i.au, -16
  %i.aw = getelementptr i8, ptr %.pn48, i64 -18   ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !1831
  %i.ay = add i8 %i.ax, %i.av
  store i8 %i.ay, ptr %i.aw, align 2, !tbaa !1831
  %i.az = getelementptr i8, ptr %.pn47, i64 -17
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !3301
  %i.bb = getelementptr i8, ptr %.pn48, i64 -17
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !3301
  %i.bc = load <16 x i8>, ptr %.043, align 16, !tbaa !14
  %i.bd = icmp slt <16 x i8> %i.bc, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16
  %i.bf = and i16 %i.be, 16383                    ; 2 uses
  %.not7779 = icmp eq i16 %i.bf, 0
  br i1 %.not7779, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.062.0.extract.trunc = zext nneg i16 %i.bf to i32
  %i.bg = icmp ne ptr %.043, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr i8, ptr %.pn47, i64 -16
  %i.bi = getelementptr i8, ptr %.pn48, i64 -16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit
  %.04582 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.081 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit ] ; 2 uses
  %.sroa.062.080 = phi i32 [ %.sroa.062.0.extract.trunc, %.lr.ph ], [ %.sroa.062.1, %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit ] ; 3 uses
  %i.bj = and i32 %.sroa.062.080, 1
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.bk = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.062.080, i1 true) ; 2 uses
  %i.bl = add i32 %.sroa.8.081, %i.bk
  %i.bm = add nuw nsw i32 %i.bk, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi i32 [ %i.bm, %bb.g ], [ 1, %bb.f ]
  %.sroa.8.1.in = phi i32 [ %i.bl, %bb.g ], [ %.sroa.8.081, %bb.f ] ; 2 uses
  %i.bn = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.04582 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !20, !range !92, !noundef !93
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %.044, i64 %.04582 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIbE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.1) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit:  ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.043, i64 %i.bn
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !14
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.062.1 = lshr i32 %.sroa.062.080, %.pn    ; 2 uses
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !14
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.bx = and i64 %i.bw, -256
  %i.by = add i64 %i.bx, 256
  %i.bz = and i64 %i.bw, 255
  %i.ca = or disjoint i64 %i.by, %i.bz            ; 2 uses
  store i64 %i.ca, ptr %i.c, align 8, !tbaa !1823
  %i.cb = add i64 %.04582, 1
  %.not77 = icmp eq i32 %.sroa.062.1, 0
  br i1 %.not77, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !4391

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIbE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1823
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.cc = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ar, %bb.e ] ; 2 uses
  %i.cd = phi i64 [ %i.ca, %._crit_edge.loopexit ], [ %i.as, %bb.e ] ; 2 uses
  %.not.unshifted = xor i64 %i.cc, %i.cd
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %bb.j, label %bb.e, !llvm.loop !4392

bb.j:                                             ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !3287
  %i.cg = load ptr, ptr %1, align 8, !tbaa !1830
  %i.ch = and i64 %i.cf, -16
  %i.ci = add i64 %i.ch, -16
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = load ptr, ptr %0, align 8, !tbaa !1830
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck ; 2 uses
  %i.cn = load <16 x i8>, ptr %i.cm, align 16, !tbaa !14
  %i.co = icmp slt <16 x i8> %i.cn, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16
  %i.cq = and i16 %i.cp, 16383                    ; 2 uses
  %i.cr = zext nneg i16 %i.cq to i32
  %i.cs = icmp ne i16 %i.cq, 0
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true)
  %i.cu = xor i32 %i.ct, 31
  %i.cv = zext nneg i32 %i.cu to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.sink88 = phi ptr [ %i.cm, %bb.j ], [ %i.am, %bb.c ] ; 2 uses
  %.sink87 = phi i64 [ %i.cv, %bb.j ], [ %i.af, %bb.c ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sink88, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sink87
  %i.cy = icmp ne ptr %.sink88, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbvvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.397", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #46
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, %bb.a
  %.0109 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %2, %bb.a ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !3287
  %i.i = load ptr, ptr %1, align 8, !tbaa !1830
  %i.j = and i64 %i.h, -16
  %i.k = add i64 %i.j, -16
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.p = phi i64 [ %i.b, %bb.d ], [ %i.ee, %.loopexit ] ; 4 uses
  %.0101 = phi i64 [ %i.n, %bb.d ], [ %i.eg, %.loopexit ] ; 4 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !1830
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.0101 ; 7 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp slt <16 x i8> %i.s, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = and i16 %i.u, 16383                      ; 2 uses
  %.sroa.073.0.extract.trunc = zext nneg i16 %i.v to i32 ; 2 uses
  %i.w = extractelement <16 x i8> %i.s, i64 14
  %i.x = icmp ult i8 %i.w, 16
  %.not113123 = icmp eq i16 %i.v, 0               ; 2 uses
  br i1 %i.x, label %.preheader, label %.preheader115

.preheader115:                                    ; preds = %bb.e
  br i1 %.not113123, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader115
  %i.y = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.m

.preheader:                                       ; preds = %bb.e
  br i1 %.not113123, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader
  %i.aa = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph126, %bb.l
  %i.ac = phi i64 [ %i.p, %.lr.ph126 ], [ %i.by, %bb.l ]
  %.sroa.12.0125 = phi i32 [ 0, %.lr.ph126 ], [ %.sroa.12.2, %bb.l ] ; 2 uses
  %.sroa.073.0124 = phi i32 [ %.sroa.073.0.extract.trunc, %.lr.ph126 ], [ %.sroa.073.2, %bb.l ] ; 3 uses
  %i.ad = and i32 %.sroa.073.0124, 1
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.g, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.073.0124, i1 true) ; 2 uses
  %i.af = add i32 %.sroa.12.0125, %i.ae
  %i.ag = add nuw nsw i32 %i.ae, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.f, %bb.g
  %.pn114 = phi i32 [ %i.ag, %bb.g ], [ 1, %bb.f ]
  %.sroa.12.2.in = phi i32 [ %i.af, %bb.g ], [ %.sroa.12.0125, %bb.f ] ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %.sroa.073.2 = lshr i32 %.sroa.073.0124, %.pn114 ; 2 uses
  %i.ah = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14  ; 2 uses
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = or disjoint i64 %i.am, 1
  %i.ao = and i64 %i.ac, 255                      ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1830  ; 2 uses
  %i.aq = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0101, i64 range(i64 0, 256) %i.ao) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14  ; 2 uses
  %i.at = icmp ult i8 %i.as, 14
  br i1 %i.at, label %._crit_edge.i, label %.lr.ph.i, !prof !2636

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %_ZN5folly3f146detail8F14ChunkIbE25incrOutboundOverflowCountEv.exit.i
  %i.au = phi i64 [ %i.ba, %_ZN5folly3f146detail8F14ChunkIbE25incrOutboundOverflowCountEv.exit.i ], [ %i.aq, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 15 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !3301 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ax, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIbE25incrOutboundOverflowCountEv.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ay = add i8 %i.ax, 1
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !3301
  br label %_ZN5folly3f146detail8F14ChunkIbE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIbE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.h, %.lr.ph.i
  %i.az = add i64 %i.an, %i.au
  %i.ba = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.az, i64 range(i64 0, 256) %i.ao) ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !14  ; 2 uses
  %i.bd = icmp ult i8 %i.bc, 14
  br i1 %i.bd, label %._crit_edge.i, label %.lr.ph.i, !prof !2638, !llvm.loop !3302

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIbE25incrOutboundOverflowCountEv.exit.i, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE17buildFromF14TableIRKS5_EEvOT_:bb.a
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.b
  %i.g = add nsw i64 %i.c, -1
  %i.h = udiv i64 %i.g, 10
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = sub nuw nsw i32 64, %i.j                 ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 1, %i.l                  ; 2 uses
  %i.n = icmp ugt i64 %i.b, 5243135
  %i.o = shl i32 10, %i.k
  %i.p = zext i32 %i.o to i64
  %i.q = select i1 %i.n, i64 40960, i64 %i.p      ; 2 uses
  %i.r = add nsw i64 %i.m, -1
  %i.s = lshr i64 %i.r, 12
  %i.t = add nuw nsw i64 %i.s, 1
  %i.u = mul i64 %i.t, %i.q
  %i.v = icmp ugt i64 %i.u, 72057594037927935
  br i1 %i.v, label %bb.e, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.e:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.c, %bb.d
  %.pn22.i = phi i64 [ 1, %bb.c ], [ 1, %bb.d ], [ %i.m, %_ZN5folly11findLastSetImEEjT_.exit.i ] ; 2 uses
  %.0.pn.i = phi i64 [ 2, %bb.c ], [ %spec.select.i, %bb.d ], [ %i.q, %_ZN5folly11findLastSetImEEjT_.exit.i ] ; 2 uses
  %i.w = and i64 %i.b, 255
  %i.x = shl nuw i64 1, %i.w                      ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !3578
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.0.copyload.i = load i16, ptr %i.z, align 1
  %i.aa = zext i16 %.0.copyload.i to i64          ; 2 uses
  %i.ab = icmp ugt i64 %i.x, %.pn22.i
  %i.ac = icmp samesign ult i64 %.0.pn.i, %i.aa
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac   ; 2 uses
  %.sroa.09.0 = select i1 %or.cond, i64 %.pn22.i, i64 %i.x
  %.sroa.5.0 = select i1 %or.cond, i64 %.0.pn.i, i64 %i.aa
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef %.sroa.09.0, i64 noundef %.sroa.5.0)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1823
  %i.af = trunc i64 %i.ae to i8
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = icmp eq i8 %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIivvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit unwind label %bb.h

bb.g:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIivvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = tail call ptr @__cxa_begin_catch(ptr %i.ak) #43 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIivvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.i, !inline_history !4437

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIivvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.h
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIivvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.am

bb.k:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIivvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIivvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef %0) local_unnamed_addr #40 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #43
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #43
  tail call void @__cxa_rethrow() #47
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE9itemCountEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3578   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.0.copyload.i.i = load i16, ptr %i.g, align 1
  %i.h = zext i16 %.0.copyload.i.i to i64         ; 2 uses
  %i.i = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.j = shl i64 12, %i.e
  %spec.select = select i1 %i.i, i64 %i.h, i64 %i.j
  %i.k = and i64 %i.b, 255                        ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE9itemCountEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !3578
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.0.copyload.i.i59 = load i16, ptr %i.n, align 1
  %i.o = zext i16 %.0.copyload.i.i59 to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE9itemCountEv.exit60

bb.b:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE9itemCountEv.exit
  %i.p = shl i64 12, %i.k
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE9itemCountEv.exit60

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE9itemCountEv.exit60: ; preds = %bb.a, %bb.b
  %.0.i58 = phi i64 [ %i.o, %bb.a ], [ %i.p, %bb.b ]
  %i.q = icmp eq i64 %spec.select, %.0.i58
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE9itemCountEv.exit60
  %i.r = shl nuw nsw i64 %i.h, 2
  %i.s = add nuw nsw i64 %i.r, 16
  %i.t = shl i64 64, %i.e
  %.0.i61 = select i1 %i.i, i64 %i.s, i64 %i.t
  %i.u = load ptr, ptr %1, align 8, !tbaa !3578
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 16 %i.u, i64 %.0.i61, i1 false)
  %i.v = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.w = and i64 %i.v, -256
  %i.x = load i64, ptr %i.c, align 8, !tbaa !1823
  %i.y = and i64 %i.x, 255
  %i.z = or disjoint i64 %i.y, %i.w
  store i64 %i.z, ptr %i.c, align 8, !tbaa !1823
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !3636 ; 3 uses
  %i.ac = and i64 %i.ab, -4
  %i.ad = shl i64 %i.ab, 2
  %i.ae = and i64 %i.ad, 12                       ; 2 uses
  %i.af = lshr i64 %i.ab, 2
  %i.ag = and i64 %i.af, 3
  %i.ah = or disjoint i64 %i.ae, %i.ag            ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !3578
  %i.aj = load ptr, ptr %1, align 8, !tbaa !3578
  %i.ak = ptrtoint ptr %i.aj to i64
  %.neg86 = add i64 %i.ac, -16
  %i.al = shl nuw nsw i64 %i.ah, 2
  %i.am = add i64 %i.al, %i.ak
  %i.an = sub i64 %.neg86, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 %i.an
  br label %bb.k

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE9itemCountEv.exit60
  %i.ap = load ptr, ptr %1, align 8, !tbaa !3578
  %i.aq = shl nuw i64 1, %i.e                     ; 2 uses
  %i.ar = getelementptr [64 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr [64 x i8], ptr %i.f, i64 %i.aq
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.at = phi i64 [ %i.b, %bb.d ], [ %i.ce, %._crit_edge ]
  %i.au = phi i64 [ %i.d, %bb.d ], [ %i.cf, %._crit_edge ]
  %.pn48 = phi ptr [ %i.as, %bb.d ], [ %.044, %._crit_edge ] ; 4 uses
  %.pn47 = phi ptr [ %i.ar, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -64   ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -64   ; 4 uses
  %i.av = getelementptr i8, ptr %.pn47, i64 -50
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !3616
  %i.ax = and i8 %i.aw, -16
  %i.ay = getelementptr i8, ptr %.pn48, i64 -50   ; 2 uses
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !3616
  %i.ba = add i8 %i.az, %i.ax
  store i8 %i.ba, ptr %i.ay, align 2, !tbaa !3616
  %i.bb = getelementptr i8, ptr %.pn47, i64 -49
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !3613
  %i.bd = getelementptr i8, ptr %.pn48, i64 -49
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !3613
  %i.be = load <16 x i8>, ptr %.043, align 16, !tbaa !14
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 4095                     ; 2 uses
  %.not7987 = icmp eq i16 %i.bh, 0
  br i1 %.not7987, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.064.0.extract.trunc = zext nneg i16 %i.bh to i32
  %i.bi = icmp ne ptr %.043, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr i8, ptr %.pn47, i64 -48
  %i.bk = getelementptr i8, ptr %.pn48, i64 -48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit
  %.04590 = phi i64 [ 0, %.lr.ph ], [ %i.cd, %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.089 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit ] ; 2 uses
  %.sroa.064.088 = phi i32 [ %.sroa.064.0.extract.trunc, %.lr.ph ], [ %.sroa.064.1, %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit ] ; 3 uses
  %i.bl = and i32 %.sroa.064.088, 1
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.bm = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.064.088, i1 true) ; 2 uses
  %i.bn = add i32 %.sroa.8.089, %i.bm
  %i.bo = add nuw nsw i32 %i.bm, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi i32 [ %i.bo, %bb.g ], [ 1, %bb.f ]
  %.sroa.8.1.in = phi i32 [ %i.bn, %bb.g ], [ %.sroa.8.089, %bb.f ] ; 2 uses
  %i.bp = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.04590 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.044, i64 %.04590 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !14
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIiE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.1) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit:  ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %.043, i64 %i.bp
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.064.1 = lshr i32 %.sroa.064.088, %.pn    ; 2 uses
  store i8 %i.bx, ptr %i.bt, align 1, !tbaa !14
  %i.by = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.bz = and i64 %i.by, -256
  %i.ca = add i64 %i.bz, 256
  %i.cb = and i64 %i.by, 255
  %i.cc = or disjoint i64 %i.ca, %i.cb            ; 2 uses
  store i64 %i.cc, ptr %i.c, align 8, !tbaa !1823
  %i.cd = add i64 %.04590, 1
  %.not79 = icmp eq i32 %.sroa.064.1, 0
  br i1 %.not79, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !4438

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIiE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1823
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.ce = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.at, %bb.e ] ; 2 uses
  %i.cf = phi i64 [ %i.cc, %._crit_edge.loopexit ], [ %i.au, %bb.e ] ; 2 uses
  %.not.unshifted = xor i64 %i.ce, %i.cf
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %bb.j, label %bb.e, !llvm.loop !4439

bb.j:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !3636 ; 3 uses
  %i.ci = and i64 %i.ch, -4
  %i.cj = shl i64 %i.ch, 4
  %i.ck = and i64 %i.cj, 48
  %i.cl = and i64 %i.ch, 12
  %i.cm = load ptr, ptr %1, align 8, !tbaa !3578
  %i.cn = ptrtoint ptr %i.cm to i64
  %.neg82 = add i64 %i.ci, -16
  %i.co = or disjoint i64 %i.cl, %i.ck
  %i.cp = add i64 %i.co, %i.cn
  %i.cq = sub i64 %.neg82, %i.cp
  %i.cr = load ptr, ptr %0, align 8, !tbaa !3578
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq ; 2 uses
  %i.ct = load <16 x i8>, ptr %i.cs, align 16, !tbaa !14
  %i.cu = icmp slt <16 x i8> %i.ct, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %i.cw = and i16 %i.cv, 4095                     ; 2 uses
  %i.cx = zext nneg i16 %i.cw to i32
  %i.cy = icmp ne i16 %i.cw, 0
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cx, i1 true)
  %i.da = xor i32 %i.cz, 31
  %i.db = zext nneg i32 %i.da to i64              ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.sink = phi ptr [ %i.cs, %bb.j ], [ %i.ao, %bb.c ] ; 2 uses
  %.sink99 = phi i64 [ %i.db, %bb.j ], [ %i.ah, %bb.c ]
  %.sink95 = phi i64 [ %i.db, %bb.j ], [ %i.ae, %bb.c ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.sink99
  %i.de = icmp ne ptr %.sink, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.de)
  %i.df = lshr i64 %.sink95, 2
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = or i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIivvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.397", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #46
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, %bb.a
  %.0109 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %2, %bb.a ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !3636 ; 3 uses
  %i.i = and i64 %i.h, -4
  %i.j = shl i64 %i.h, 4
  %i.k = and i64 %i.j, 48
  %i.l = and i64 %i.h, 12
  %i.m = load ptr, ptr %1, align 8, !tbaa !3578
  %i.n = ptrtoint ptr %i.m to i64
  %.neg117 = add i64 %i.i, -16
  %i.o = or disjoint i64 %i.l, %i.k
  %i.p = add i64 %i.o, %i.n
  %i.q = sub i64 %.neg117, %i.p
  %i.r = ashr exact i64 %i.q, 6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.t = phi i64 [ %i.b, %bb.d ], [ %i.em, %.loopexit ] ; 4 uses
  %.0101 = phi i64 [ %i.r, %bb.d ], [ %i.eo, %.loopexit ] ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !3578
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.u, i64 %.0101 ; 7 uses
  %i.w = load <16 x i8>, ptr %i.v, align 16       ; 2 uses
  %i.x = icmp slt <16 x i8> %i.w, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = and i16 %i.y, 4095                       ; 2 uses
  %.sroa.073.0.extract.trunc = zext nneg i16 %i.z to i32 ; 2 uses
  %i.aa = extractelement <16 x i8> %i.w, i64 14
  %i.ab = icmp ult i8 %i.aa, 16
  %.not113127 = icmp eq i16 %i.z, 0               ; 2 uses
  br i1 %i.ab, label %.preheader, label %.preheader119

.preheader119:                                    ; preds = %bb.e
  br i1 %.not113127, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader119
  %i.ac = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.m

.preheader:                                       ; preds = %bb.e
  br i1 %.not113127, label %.loopexit, label %.lr.ph130

.lr.ph130:                                        ; preds = %.preheader
  %i.ae = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph130, %bb.l
  %i.ag = phi i64 [ %i.t, %.lr.ph130 ], [ %i.ce, %bb.l ]
  %.sroa.12.0129 = phi i32 [ 0, %.lr.ph130 ], [ %.sroa.12.2, %bb.l ] ; 2 uses
  %.sroa.073.0128 = phi i32 [ %.sroa.073.0.extract.trunc, %.lr.ph130 ], [ %.sroa.073.2, %bb.l ] ; 3 uses
  %i.ah = and i32 %.sroa.073.0128, 1
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.g, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.073.0128, i1 true) ; 2 uses
  %i.aj = add i32 %.sroa.12.0129, %i.ai
  %i.ak = add nuw nsw i32 %i.ai, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.f, %bb.g
  %.pn114 = phi i32 [ %i.ak, %bb.g ], [ 1, %bb.f ]
  %.sroa.12.2.in = phi i32 [ %i.aj, %bb.g ], [ %.sroa.12.0129, %bb.f ] ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %.sroa.073.2 = lshr i32 %.sroa.073.0128, %.pn114 ; 2 uses
  %i.al = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14  ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 1
  %i.ar = or disjoint i64 %i.aq, 1
  %i.as = and i64 %i.ag, 255                      ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !3578  ; 2 uses
  %i.au = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0101, i64 range(i64 0, 256) %i.as) ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14  ; 2 uses
  %i.ax = icmp ult i8 %i.aw, 12
  br i1 %i.ax, label %._crit_edge.i, label %.lr.ph.i, !prof !2636

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %_ZN5folly3f146detail8F14ChunkIiE25incrOutboundOverflowCountEv.exit.i
  %i.ay = phi i64 [ %i.be, %_ZN5folly3f146detail8F14ChunkIiE25incrOutboundOverflowCountEv.exit.i ], [ %i.au, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw [64 x i8], ptr %i.at, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 15 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !3613 ; 2 uses
  %.not.i.i = icmp eq i8 %i.bb, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIiE25incrOutboundOverflowCountEv.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE17buildFromF14TableIRKS5_EEvOT_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %i.b, 3840
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.b, 768
  br i1 %i.f, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.inv.i = icmp samesign ugt i64 %i.b, 1791
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.b, -4611686018427387649
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = add nsw i64 %i.c, -1
  %i.i = udiv i64 %i.h, 12
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = sub nuw nsw i64 64, %i.j
  %i.l = shl nuw nsw i64 1, %i.k
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn21.i = phi i64 [ %i.l, %bb.g ], [ 1, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %.0.pn.i = phi i64 [ 12, %bb.g ], [ %spec.select.i, %bb.d ], [ 2, %bb.c ] ; 2 uses
  %i.m = and i64 %i.b, 255
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !3640
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64                 ; 2 uses
  %i.t = icmp ugt i64 %i.n, %.pn21.i
  %i.u = icmp samesign ult i64 %.0.pn.i, %i.s
  %or.cond = select i1 %i.t, i1 true, i1 %i.u     ; 2 uses
  %.sroa.09.0 = select i1 %or.cond, i64 %.pn21.i, i64 %i.n
  %.sroa.5.0 = select i1 %or.cond, i64 %.0.pn.i, i64 %i.s
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef %.sroa.09.0, i64 noundef %.sroa.5.0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1823
  %i.x = trunc i64 %i.w to i8
  %i.y = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.z = trunc i64 %i.y to i8
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIavvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit unwind label %bb.j

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIavvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #43 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIavvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.k, !inline_history !4484

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIavvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.j
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIavvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ae

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIavvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIavvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.i, %bb.h, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef %0) local_unnamed_addr #40 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #43
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #43
  tail call void @__cxa_rethrow() #47
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE9itemCountEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3640   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = and i8 %i.h, 15
  %i.j = zext nneg i8 %i.i to i64                 ; 2 uses
  %i.k = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.l = shl i64 14, %i.e
  %spec.select = select i1 %i.k, i64 %i.j, i64 %i.l
  %i.m = and i64 %i.b, 255                        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE9itemCountEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !3640
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE9itemCountEv.exit58

bb.b:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE9itemCountEv.exit
  %i.t = shl i64 14, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE9itemCountEv.exit58

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE9itemCountEv.exit58: ; preds = %bb.a, %bb.b
  %.0.i57 = phi i64 [ %i.s, %bb.a ], [ %i.t, %bb.b ]
  %i.u = icmp eq i64 %spec.select, %.0.i57
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE9itemCountEv.exit58
  %i.v = or disjoint i64 %i.j, 16
  %i.w = shl i64 32, %i.e
  %.0.i59 = select i1 %i.k, i64 %i.v, i64 %i.w
  %i.x = load ptr, ptr %1, align 8, !tbaa !3640
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 16 %i.x, i64 %.0.i59, i1 false)
  %i.y = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.z = and i64 %i.y, -256
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1823
  %i.ab = and i64 %i.aa, 255
  %i.ac = or disjoint i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !1823
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !3698 ; 2 uses
  %i.af = and i64 %i.ae, 15
  %i.ag = load ptr, ptr %0, align 8, !tbaa !3640
  %i.ah = load ptr, ptr %1, align 8, !tbaa !3640
  %i.ai = and i64 %i.ae, -16
  %i.aj = add i64 %i.ai, -16
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.ag, i64 %i.al
  br label %bb.k

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE9itemCountEv.exit58
  %i.an = load ptr, ptr %1, align 8, !tbaa !3640
  %i.ao = shl nuw i64 1, %i.e                     ; 2 uses
  %i.ap = getelementptr [32 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr [32 x i8], ptr %i.f, i64 %i.ao
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ar = phi i64 [ %i.b, %bb.d ], [ %i.cc, %._crit_edge ]
  %i.as = phi i64 [ %i.d, %bb.d ], [ %i.cd, %._crit_edge ]
  %.pn48 = phi ptr [ %i.aq, %bb.d ], [ %.044, %._crit_edge ] ; 4 uses
  %.pn47 = phi ptr [ %i.ap, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -32   ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -32   ; 4 uses
  %i.at = getelementptr i8, ptr %.pn47, i64 -18
  %i.au = load i8, ptr %i.at, align 2, !tbaa !3641
  %i.av = and i8 %i.au, -16
  %i.aw = getelementptr i8, ptr %.pn48, i64 -18   ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !3641
  %i.ay = add i8 %i.ax, %i.av
  store i8 %i.ay, ptr %i.aw, align 2, !tbaa !3641
  %i.az = getelementptr i8, ptr %.pn47, i64 -17
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !3677
  %i.bb = getelementptr i8, ptr %.pn48, i64 -17
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !3677
  %i.bc = load <16 x i8>, ptr %.043, align 16, !tbaa !14
  %i.bd = icmp slt <16 x i8> %i.bc, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16
  %i.bf = and i16 %i.be, 16383                    ; 2 uses
  %.not7779 = icmp eq i16 %i.bf, 0
  br i1 %.not7779, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.062.0.extract.trunc = zext nneg i16 %i.bf to i32
  %i.bg = icmp ne ptr %.043, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr i8, ptr %.pn47, i64 -16
  %i.bi = getelementptr i8, ptr %.pn48, i64 -16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit
  %.04582 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.081 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit ] ; 2 uses
  %.sroa.062.080 = phi i32 [ %.sroa.062.0.extract.trunc, %.lr.ph ], [ %.sroa.062.1, %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit ] ; 3 uses
  %i.bj = and i32 %.sroa.062.080, 1
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.bk = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.062.080, i1 true) ; 2 uses
  %i.bl = add i32 %.sroa.8.081, %i.bk
  %i.bm = add nuw nsw i32 %i.bk, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi i32 [ %i.bm, %bb.g ], [ 1, %bb.f ]
  %.sroa.8.1.in = phi i32 [ %i.bl, %bb.g ], [ %.sroa.8.081, %bb.f ] ; 2 uses
  %i.bn = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.04582 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !14
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %.044, i64 %.04582 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIaE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.1) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit:  ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.043, i64 %i.bn
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !14
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.062.1 = lshr i32 %.sroa.062.080, %.pn    ; 2 uses
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !14
  %i.bw = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.bx = and i64 %i.bw, -256
  %i.by = add i64 %i.bx, 256
  %i.bz = and i64 %i.bw, 255
  %i.ca = or disjoint i64 %i.by, %i.bz            ; 2 uses
  store i64 %i.ca, ptr %i.c, align 8, !tbaa !1823
  %i.cb = add i64 %.04582, 1
  %.not77 = icmp eq i32 %.sroa.062.1, 0
  br i1 %.not77, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !4485

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIaE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1823
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.cc = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ar, %bb.e ] ; 2 uses
  %i.cd = phi i64 [ %i.ca, %._crit_edge.loopexit ], [ %i.as, %bb.e ] ; 2 uses
  %.not.unshifted = xor i64 %i.cc, %i.cd
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %bb.j, label %bb.e, !llvm.loop !4486

bb.j:                                             ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !3698
  %i.cg = load ptr, ptr %1, align 8, !tbaa !3640
  %i.ch = and i64 %i.cf, -16
  %i.ci = add i64 %i.ch, -16
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = load ptr, ptr %0, align 8, !tbaa !3640
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck ; 2 uses
  %i.cn = load <16 x i8>, ptr %i.cm, align 16, !tbaa !14
  %i.co = icmp slt <16 x i8> %i.cn, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16
  %i.cq = and i16 %i.cp, 16383                    ; 2 uses
  %i.cr = zext nneg i16 %i.cq to i32
  %i.cs = icmp ne i16 %i.cq, 0
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cr, i1 true)
  %i.cu = xor i32 %i.ct, 31
  %i.cv = zext nneg i32 %i.cu to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.sink88 = phi ptr [ %i.cm, %bb.j ], [ %i.am, %bb.c ] ; 2 uses
  %.sink87 = phi i64 [ %i.cv, %bb.j ], [ %i.af, %bb.c ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sink88, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sink87
  %i.cy = icmp ne ptr %.sink88, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIavvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.397", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #46
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, %bb.a
  %.0109 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %2, %bb.a ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !3698
  %i.i = load ptr, ptr %1, align 8, !tbaa !3640
  %i.j = and i64 %i.h, -16
  %i.k = add i64 %i.j, -16
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.p = phi i64 [ %i.b, %bb.d ], [ %i.ee, %.loopexit ] ; 4 uses
  %.0101 = phi i64 [ %i.n, %bb.d ], [ %i.eg, %.loopexit ] ; 4 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !3640
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.0101 ; 7 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp slt <16 x i8> %i.s, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = and i16 %i.u, 16383                      ; 2 uses
  %.sroa.073.0.extract.trunc = zext nneg i16 %i.v to i32 ; 2 uses
  %i.w = extractelement <16 x i8> %i.s, i64 14
  %i.x = icmp ult i8 %i.w, 16
  %.not113123 = icmp eq i16 %i.v, 0               ; 2 uses
  br i1 %i.x, label %.preheader, label %.preheader115

.preheader115:                                    ; preds = %bb.e
  br i1 %.not113123, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader115
  %i.y = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.m

.preheader:                                       ; preds = %bb.e
  br i1 %.not113123, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader
  %i.aa = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph126, %bb.l
  %i.ac = phi i64 [ %i.p, %.lr.ph126 ], [ %i.by, %bb.l ]
  %.sroa.12.0125 = phi i32 [ 0, %.lr.ph126 ], [ %.sroa.12.2, %bb.l ] ; 2 uses
  %.sroa.073.0124 = phi i32 [ %.sroa.073.0.extract.trunc, %.lr.ph126 ], [ %.sroa.073.2, %bb.l ] ; 3 uses
  %i.ad = and i32 %.sroa.073.0124, 1
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.g, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.073.0124, i1 true) ; 2 uses
  %i.af = add i32 %.sroa.12.0125, %i.ae
  %i.ag = add nuw nsw i32 %i.ae, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.f, %bb.g
  %.pn114 = phi i32 [ %i.ag, %bb.g ], [ 1, %bb.f ]
  %.sroa.12.2.in = phi i32 [ %i.af, %bb.g ], [ %.sroa.12.0125, %bb.f ] ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %.sroa.073.2 = lshr i32 %.sroa.073.0124, %.pn114 ; 2 uses
  %i.ah = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ah
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14  ; 2 uses
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = or disjoint i64 %i.am, 1
  %i.ao = and i64 %i.ac, 255                      ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !3640  ; 2 uses
  %i.aq = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0101, i64 range(i64 0, 256) %i.ao) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14  ; 2 uses
  %i.at = icmp ult i8 %i.as, 14
  br i1 %i.at, label %._crit_edge.i, label %.lr.ph.i, !prof !2636

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %_ZN5folly3f146detail8F14ChunkIaE25incrOutboundOverflowCountEv.exit.i
  %i.au = phi i64 [ %i.ba, %_ZN5folly3f146detail8F14ChunkIaE25incrOutboundOverflowCountEv.exit.i ], [ %i.aq, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 15 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !3677 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ax, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIaE25incrOutboundOverflowCountEv.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ay = add i8 %i.ax, 1
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !3677
  br label %_ZN5folly3f146detail8F14ChunkIaE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIaE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.h, %.lr.ph.i
  %i.az = add i64 %i.an, %i.au
  %i.ba = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.az, i64 range(i64 0, 256) %i.ao) ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !14  ; 2 uses
  %i.bd = icmp ult i8 %i.bc, 14
  br i1 %i.bd, label %._crit_edge.i, label %.lr.ph.i, !prof !2638, !llvm.loop !3678

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIaE25incrOutboundOverflowCountEv.exit.i, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE17buildFromF14TableIRKS5_EEvOT_:bb.a

bb.d:                                             ; preds = %bb.c
  %.inv.i = icmp samesign ugt i64 %i.b, 1791
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.b, -4611686018427387649
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = add nsw i64 %i.c, -1
  %i.i = udiv i64 %i.h, 12
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = sub nuw nsw i64 64, %i.j
  %i.l = shl nuw nsw i64 1, %i.k
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn21.i = phi i64 [ %i.l, %bb.g ], [ 1, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %.0.pn.i = phi i64 [ 12, %bb.g ], [ %spec.select.i, %bb.d ], [ 2, %bb.c ] ; 2 uses
  %i.m = and i64 %i.b, 255
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !3702
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64                 ; 2 uses
  %i.t = icmp ugt i64 %i.n, %.pn21.i
  %i.u = icmp samesign ult i64 %.0.pn.i, %i.s
  %or.cond = select i1 %i.t, i1 true, i1 %i.u     ; 2 uses
  %.sroa.09.0 = select i1 %or.cond, i64 %.pn21.i, i64 %i.n
  %.sroa.5.0 = select i1 %or.cond, i64 %.0.pn.i, i64 %i.s
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef %.sroa.09.0, i64 noundef %.sroa.5.0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1823
  %i.x = trunc i64 %i.w to i8
  %i.y = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.z = trunc i64 %i.y to i8
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIsvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit unwind label %bb.j

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIsvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #43 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIsvvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.k, !inline_history !4531

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIsvvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.j
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIsvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ae

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIsvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIsvvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.i, %bb.h, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef %0) local_unnamed_addr #40 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #43
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #43
  tail call void @__cxa_rethrow() #47
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE9itemCountEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3702   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = and i8 %i.h, 15
  %i.j = zext nneg i8 %i.i to i64                 ; 2 uses
  %i.k = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.l = shl i64 14, %i.e
  %spec.select = select i1 %i.k, i64 %i.j, i64 %i.l
  %i.m = and i64 %i.b, 255                        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE9itemCountEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !3702
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE9itemCountEv.exit58

bb.b:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE9itemCountEv.exit
  %i.t = shl i64 14, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE9itemCountEv.exit58

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE9itemCountEv.exit58: ; preds = %bb.a, %bb.b
  %.0.i57 = phi i64 [ %i.s, %bb.a ], [ %i.t, %bb.b ]
  %i.u = icmp eq i64 %spec.select, %.0.i57
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE9itemCountEv.exit58
  %i.v = shl nuw nsw i64 %i.j, 1
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = shl i64 48, %i.e
  %.0.i59 = select i1 %i.k, i64 %i.w, i64 %i.x
  %i.y = load ptr, ptr %1, align 8, !tbaa !3702
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 16 %i.y, i64 %.0.i59, i1 false)
  %i.z = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.aa = and i64 %i.z, -256
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1823
  %i.ac = and i64 %i.ab, 255
  %i.ad = or disjoint i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !1823
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !3761 ; 3 uses
  %i.ag = and i64 %i.af, -2
  %i.ah = shl i64 %i.af, 3
  %i.ai = and i64 %i.ah, 8                        ; 2 uses
  %i.aj = lshr i64 %i.af, 1
  %i.ak = and i64 %i.aj, 7
  %i.al = or disjoint i64 %i.ai, %i.ak            ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !3702
  %i.an = load ptr, ptr %1, align 8, !tbaa !3702
  %i.ao = ptrtoint ptr %i.an to i64
  %.neg84 = add i64 %i.ag, -16
  %i.ap = shl nuw nsw i64 %i.al, 1
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = sub i64 %.neg84, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 %i.ar
  br label %bb.k

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE9itemCountEv.exit58
  %i.at = load ptr, ptr %1, align 8, !tbaa !3702
  %i.au = shl nuw i64 1, %i.e                     ; 2 uses
  %i.av = getelementptr [48 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr [48 x i8], ptr %i.f, i64 %i.au
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ax = phi i64 [ %i.b, %bb.d ], [ %i.ci, %._crit_edge ]
  %i.ay = phi i64 [ %i.d, %bb.d ], [ %i.cj, %._crit_edge ]
  %.pn48 = phi ptr [ %i.aw, %bb.d ], [ %.044, %._crit_edge ] ; 4 uses
  %.pn47 = phi ptr [ %i.av, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -48   ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -48   ; 4 uses
  %i.az = getelementptr i8, ptr %.pn47, i64 -34
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !3703
  %i.bb = and i8 %i.ba, -16
  %i.bc = getelementptr i8, ptr %.pn48, i64 -34   ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !3703
  %i.be = add i8 %i.bd, %i.bb
  store i8 %i.be, ptr %i.bc, align 2, !tbaa !3703
  %i.bf = getelementptr i8, ptr %.pn47, i64 -33
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !3740
  %i.bh = getelementptr i8, ptr %.pn48, i64 -33
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !3740
  %i.bi = load <16 x i8>, ptr %.043, align 16, !tbaa !14
  %i.bj = icmp slt <16 x i8> %i.bi, zeroinitializer
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = and i16 %i.bk, 16383                    ; 2 uses
  %.not7785 = icmp eq i16 %i.bl, 0
  br i1 %.not7785, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.062.0.extract.trunc = zext nneg i16 %i.bl to i32
  %i.bm = icmp ne ptr %.043, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr i8, ptr %.pn47, i64 -32
  %i.bo = getelementptr i8, ptr %.pn48, i64 -32
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit
  %.04588 = phi i64 [ 0, %.lr.ph ], [ %i.ch, %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.087 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit ] ; 2 uses
  %.sroa.062.086 = phi i32 [ %.sroa.062.0.extract.trunc, %.lr.ph ], [ %.sroa.062.1, %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit ] ; 3 uses
  %i.bp = and i32 %.sroa.062.086, 1
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.bq = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.062.086, i1 true) ; 2 uses
  %i.br = add i32 %.sroa.8.087, %i.bq
  %i.bs = add nuw nsw i32 %i.bq, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi i32 [ %i.bs, %bb.g ], [ 1, %bb.f ]
  %.sroa.8.1.in = phi i32 [ %i.br, %bb.g ], [ %.sroa.8.087, %bb.f ] ; 2 uses
  %i.bt = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %.04588 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  %i.bw = load i16, ptr %i.bu, align 2, !tbaa !3011
  store i16 %i.bw, ptr %i.bv, align 2, !tbaa !3011
  %i.bx = getelementptr inbounds nuw i8, ptr %.044, i64 %.04588 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIsE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.1) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit:  ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.043, i64 %i.bt
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !14
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.062.1 = lshr i32 %.sroa.062.086, %.pn    ; 2 uses
  store i8 %i.cb, ptr %i.bx, align 1, !tbaa !14
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %i.ce = add i64 %i.cd, 256
  %i.cf = and i64 %i.cc, 255
  %i.cg = or disjoint i64 %i.ce, %i.cf            ; 2 uses
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !1823
  %i.ch = add i64 %.04588, 1
  %.not77 = icmp eq i32 %.sroa.062.1, 0
  br i1 %.not77, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !4532

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIsE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1823
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.ci = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ax, %bb.e ] ; 2 uses
  %i.cj = phi i64 [ %i.cg, %._crit_edge.loopexit ], [ %i.ay, %bb.e ] ; 2 uses
  %.not.unshifted = xor i64 %i.ci, %i.cj
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %bb.j, label %bb.e, !llvm.loop !4533

bb.j:                                             ; preds = %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !3761 ; 3 uses
  %i.cm = and i64 %i.cl, -2
  %i.cn = shl i64 %i.cl, 4
  %i.co = and i64 %i.cn, 16
  %i.cp = and i64 %i.cl, 14
  %i.cq = load ptr, ptr %1, align 8, !tbaa !3702
  %i.cr = ptrtoint ptr %i.cq to i64
  %.neg80 = add i64 %i.cm, -16
  %i.cs = or disjoint i64 %i.cp, %i.co
  %i.ct = add i64 %i.cs, %i.cr
  %i.cu = sub i64 %.neg80, %i.ct
  %i.cv = load ptr, ptr %0, align 8, !tbaa !3702
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu ; 2 uses
  %i.cx = load <16 x i8>, ptr %i.cw, align 16, !tbaa !14
  %i.cy = icmp slt <16 x i8> %i.cx, zeroinitializer
  %i.cz = bitcast <16 x i1> %i.cy to i16
  %i.da = and i16 %i.cz, 16383                    ; 2 uses
  %i.db = zext nneg i16 %i.da to i32
  %i.dc = icmp ne i16 %i.da, 0
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.db, i1 true)
  %i.de = xor i32 %i.dd, 31
  %i.df = zext nneg i32 %i.de to i64              ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.sink = phi ptr [ %i.cw, %bb.j ], [ %i.as, %bb.c ] ; 2 uses
  %.sink97 = phi i64 [ %i.df, %bb.j ], [ %i.al, %bb.c ]
  %.sink93 = phi i64 [ %i.df, %bb.j ], [ %i.ai, %bb.c ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %.sink97
  %i.di = icmp ne ptr %.sink, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = lshr i64 %.sink93, 3
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = or i64 %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsvvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.397", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #46
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, %bb.a
  %.0109 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %2, %bb.a ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !3761 ; 3 uses
  %i.i = and i64 %i.h, -2
  %i.j = shl i64 %i.h, 4
  %i.k = and i64 %i.j, 16
  %i.l = and i64 %i.h, 14
  %i.m = load ptr, ptr %1, align 8, !tbaa !3702
  %i.n = ptrtoint ptr %i.m to i64
  %.neg117 = add i64 %i.i, -16
  %i.o = or disjoint i64 %i.l, %i.k
  %i.p = add i64 %i.o, %i.n
  %i.q = sub i64 %.neg117, %i.p
  %i.r = sdiv exact i64 %i.q, 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.t = phi i64 [ %i.b, %bb.d ], [ %i.em, %.loopexit ] ; 4 uses
  %.0101 = phi i64 [ %i.r, %bb.d ], [ %i.eo, %.loopexit ] ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !3702
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %.0101 ; 7 uses
  %i.w = load <16 x i8>, ptr %i.v, align 16       ; 2 uses
  %i.x = icmp slt <16 x i8> %i.w, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = and i16 %i.y, 16383                      ; 2 uses
  %.sroa.073.0.extract.trunc = zext nneg i16 %i.z to i32 ; 2 uses
  %i.aa = extractelement <16 x i8> %i.w, i64 14
  %i.ab = icmp ult i8 %i.aa, 16
  %.not113127 = icmp eq i16 %i.z, 0               ; 2 uses
  br i1 %i.ab, label %.preheader, label %.preheader119

.preheader119:                                    ; preds = %bb.e
  br i1 %.not113127, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader119
  %i.ac = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.m

.preheader:                                       ; preds = %bb.e
  br i1 %.not113127, label %.loopexit, label %.lr.ph130

.lr.ph130:                                        ; preds = %.preheader
  %i.ae = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph130, %bb.l
  %i.ag = phi i64 [ %i.t, %.lr.ph130 ], [ %i.ce, %bb.l ]
  %.sroa.12.0129 = phi i32 [ 0, %.lr.ph130 ], [ %.sroa.12.2, %bb.l ] ; 2 uses
  %.sroa.073.0128 = phi i32 [ %.sroa.073.0.extract.trunc, %.lr.ph130 ], [ %.sroa.073.2, %bb.l ] ; 3 uses
  %i.ah = and i32 %.sroa.073.0128, 1
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.g, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.073.0128, i1 true) ; 2 uses
  %i.aj = add i32 %.sroa.12.0129, %i.ai
  %i.ak = add nuw nsw i32 %i.ai, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.f, %bb.g
  %.pn114 = phi i32 [ %i.ak, %bb.g ], [ 1, %bb.f ]
  %.sroa.12.2.in = phi i32 [ %i.aj, %bb.g ], [ %.sroa.12.0129, %bb.f ] ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %.sroa.073.2 = lshr i32 %.sroa.073.0128, %.pn114 ; 2 uses
  %i.al = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14  ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 1
  %i.ar = or disjoint i64 %i.aq, 1
  %i.as = and i64 %i.ag, 255                      ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !3702  ; 2 uses
  %i.au = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0101, i64 range(i64 0, 256) %i.as) ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14  ; 2 uses
  %i.ax = icmp ult i8 %i.aw, 14
  br i1 %i.ax, label %._crit_edge.i, label %.lr.ph.i, !prof !2636

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %_ZN5folly3f146detail8F14ChunkIsE25incrOutboundOverflowCountEv.exit.i
  %i.ay = phi i64 [ %i.be, %_ZN5folly3f146detail8F14ChunkIsE25incrOutboundOverflowCountEv.exit.i ], [ %i.au, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 15 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !3740 ; 2 uses
  %.not.i.i = icmp eq i8 %i.bb, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIsE25incrOutboundOverflowCountEv.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE17buildFromF14TableIRKS5_EEvOT_:bb.a

bb.d:                                             ; preds = %bb.c
  %.inv.i = icmp samesign ugt i64 %i.b, 1791
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.b, -4611686018427387649
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = add nsw i64 %i.c, -1
  %i.i = udiv i64 %i.h, 12
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = sub nuw nsw i64 64, %i.j
  %i.l = shl nuw nsw i64 1, %i.k
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn21.i = phi i64 [ %i.l, %bb.g ], [ 1, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %.0.pn.i = phi i64 [ 12, %bb.g ], [ %spec.select.i, %bb.d ], [ 2, %bb.c ] ; 2 uses
  %i.m = and i64 %i.b, 255
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !3767
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64                 ; 2 uses
  %i.t = icmp ugt i64 %i.n, %.pn21.i
  %i.u = icmp samesign ult i64 %.0.pn.i, %i.s
  %or.cond = select i1 %i.t, i1 true, i1 %i.u     ; 2 uses
  %.sroa.09.0 = select i1 %or.cond, i64 %.pn21.i, i64 %i.n
  %.sroa.5.0 = select i1 %or.cond, i64 %.0.pn.i, i64 %i.s
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef %.sroa.09.0, i64 noundef %.sroa.5.0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1823
  %i.x = trunc i64 %i.w to i8
  %i.y = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.z = trunc i64 %i.y to i8
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIlvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit unwind label %bb.j

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIlvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #43 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIlvvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.k, !inline_history !4578

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIlvvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.j
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIlvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ae

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIlvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIlvvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.i, %bb.h, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef %0) local_unnamed_addr #40 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #43
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #43
  tail call void @__cxa_rethrow() #47
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE9itemCountEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3767   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = and i8 %i.h, 15
  %i.j = zext nneg i8 %i.i to i64                 ; 2 uses
  %i.k = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.l = shl i64 14, %i.e
  %spec.select = select i1 %i.k, i64 %i.j, i64 %i.l
  %i.m = and i64 %i.b, 255                        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE9itemCountEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !3767
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE9itemCountEv.exit58

bb.b:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE9itemCountEv.exit
  %i.t = shl i64 14, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE9itemCountEv.exit58

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE9itemCountEv.exit58: ; preds = %bb.a, %bb.b
  %.0.i57 = phi i64 [ %i.s, %bb.a ], [ %i.t, %bb.b ]
  %i.u = icmp eq i64 %spec.select, %.0.i57
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE9itemCountEv.exit58
  %i.v = shl nuw nsw i64 %i.j, 3
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = shl i64 128, %i.e
  %.0.i59 = select i1 %i.k, i64 %i.w, i64 %i.x
  %i.y = load ptr, ptr %1, align 8, !tbaa !3767
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 16 %i.y, i64 %.0.i59, i1 false)
  %i.z = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.aa = and i64 %i.z, -256
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1823
  %i.ac = and i64 %i.ab, 255
  %i.ad = or disjoint i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !1823
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !3825 ; 3 uses
  %i.ag = and i64 %i.af, -8
  %i.ah = shl i64 %i.af, 1
  %i.ai = and i64 %i.ah, 14                       ; 2 uses
  %i.aj = lshr i64 %i.af, 3
  %i.ak = and i64 %i.aj, 1
  %i.al = or disjoint i64 %i.ai, %i.ak            ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !3767
  %i.an = load ptr, ptr %1, align 8, !tbaa !3767
  %i.ao = ptrtoint ptr %i.an to i64
  %.neg80 = add i64 %i.ag, -16
  %i.ap = shl nuw nsw i64 %i.al, 3
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = sub i64 %.neg80, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 %i.ar
  br label %bb.k

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE9itemCountEv.exit58
  %i.at = load ptr, ptr %1, align 8, !tbaa !3767
  %i.au = shl nuw i64 1, %i.e                     ; 2 uses
  %i.av = getelementptr [128 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr [128 x i8], ptr %i.f, i64 %i.au
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ax = phi i64 [ %i.b, %bb.d ], [ %i.ci, %._crit_edge ]
  %i.ay = phi i64 [ %i.d, %bb.d ], [ %i.cj, %._crit_edge ]
  %.pn48 = phi ptr [ %i.aw, %bb.d ], [ %.044, %._crit_edge ] ; 4 uses
  %.pn47 = phi ptr [ %i.av, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -128  ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -128  ; 4 uses
  %i.az = getelementptr i8, ptr %.pn47, i64 -114
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !3768
  %i.bb = and i8 %i.ba, -16
  %i.bc = getelementptr i8, ptr %.pn48, i64 -114  ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !3768
  %i.be = add i8 %i.bd, %i.bb
  store i8 %i.be, ptr %i.bc, align 2, !tbaa !3768
  %i.bf = getelementptr i8, ptr %.pn47, i64 -113
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !3804
  %i.bh = getelementptr i8, ptr %.pn48, i64 -113
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !3804
  %i.bi = load <16 x i8>, ptr %.043, align 16, !tbaa !14
  %i.bj = icmp slt <16 x i8> %i.bi, zeroinitializer
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = and i16 %i.bk, 16383                    ; 2 uses
  %.not7781 = icmp eq i16 %i.bl, 0
  br i1 %.not7781, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.062.0.extract.trunc = zext nneg i16 %i.bl to i32
  %i.bm = icmp ne ptr %.043, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr i8, ptr %.pn47, i64 -112
  %i.bo = getelementptr i8, ptr %.pn48, i64 -112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit
  %.04584 = phi i64 [ 0, %.lr.ph ], [ %i.ch, %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.083 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit ] ; 2 uses
  %.sroa.062.082 = phi i32 [ %.sroa.062.0.extract.trunc, %.lr.ph ], [ %.sroa.062.1, %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit ] ; 3 uses
  %i.bp = and i32 %.sroa.062.082, 1
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.bq = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.062.082, i1 true) ; 2 uses
  %i.br = add i32 %.sroa.8.083, %i.bq
  %i.bs = add nuw nsw i32 %i.bq, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi i32 [ %i.bs, %bb.g ], [ 1, %bb.f ]
  %.sroa.8.1.in = phi i32 [ %i.br, %bb.g ], [ %.sroa.8.083, %bb.f ] ; 2 uses
  %i.bt = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.04584 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !106
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !106
  %i.bx = getelementptr inbounds nuw i8, ptr %.044, i64 %.04584 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIlE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.1) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit:  ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.043, i64 %i.bt
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !14
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.062.1 = lshr i32 %.sroa.062.082, %.pn    ; 2 uses
  store i8 %i.cb, ptr %i.bx, align 1, !tbaa !14
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %i.ce = add i64 %i.cd, 256
  %i.cf = and i64 %i.cc, 255
  %i.cg = or disjoint i64 %i.ce, %i.cf            ; 2 uses
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !1823
  %i.ch = add i64 %.04584, 1
  %.not77 = icmp eq i32 %.sroa.062.1, 0
  br i1 %.not77, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !4579

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIlE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1823
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.ci = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ax, %bb.e ] ; 2 uses
  %i.cj = phi i64 [ %i.cg, %._crit_edge.loopexit ], [ %i.ay, %bb.e ] ; 2 uses
  %.not.unshifted = xor i64 %i.ci, %i.cj
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %bb.j, label %bb.e, !llvm.loop !4580

bb.j:                                             ; preds = %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !3825 ; 3 uses
  %i.cm = and i64 %i.cl, -8
  %i.cn = shl i64 %i.cl, 1
  %i.co = and i64 %i.cn, 14
  %i.cp = shl i64 %i.cl, 60
  %i.cq = ashr i64 %i.cp, 63
  %.neg.i = sub nsw i64 %i.cq, %i.co
  %.neg.i.i.i = shl nsw i64 %.neg.i, 3
  %i.cr = load ptr, ptr %1, align 8, !tbaa !3767
  %i.cs = add i64 %i.cm, -16
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = load ptr, ptr %0, align 8, !tbaa !3767
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.cu
  %i.cx = getelementptr i8, ptr %i.cw, i64 %.neg.i.i.i ; 2 uses
  %i.cy = load <16 x i8>, ptr %i.cx, align 16, !tbaa !14
  %i.cz = icmp slt <16 x i8> %i.cy, zeroinitializer
  %i.da = bitcast <16 x i1> %i.cz to i16
  %i.db = and i16 %i.da, 16383                    ; 2 uses
  %i.dc = zext nneg i16 %i.db to i32
  %i.dd = icmp ne i16 %i.db, 0
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dc, i1 true)
  %i.df = xor i32 %i.de, 31
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.sink = phi ptr [ %i.cx, %bb.j ], [ %i.as, %bb.c ] ; 2 uses
  %.sink93 = phi i64 [ %i.dg, %bb.j ], [ %i.al, %bb.c ]
  %.sink89 = phi i64 [ %i.dg, %bb.j ], [ %i.ai, %bb.c ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.sink93
  %i.dj = icmp ne ptr %.sink, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = lshr i64 %.sink89, 1
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = or i64 %i.dk, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlvvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.397", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #46
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, %bb.a
  %.0109 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %2, %bb.a ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !3825 ; 3 uses
  %i.i = and i64 %i.h, -8
  %i.j = shl i64 %i.h, 1
  %i.k = and i64 %i.j, 14
  %i.l = shl i64 %i.h, 60
  %i.m = ashr i64 %i.l, 63
  %.neg.i = sub nsw i64 %i.m, %i.k
  %.neg.i.i.i = shl nsw i64 %.neg.i, 3
  %i.n = load ptr, ptr %1, align 8, !tbaa !3767
  %i.o = add i64 %i.i, -16
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = add i64 %i.q, %.neg.i.i.i
  %i.s = ashr exact i64 %i.r, 7
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.u = phi i64 [ %i.b, %bb.d ], [ %i.em, %.loopexit ] ; 4 uses
  %.0101 = phi i64 [ %i.s, %bb.d ], [ %i.eo, %.loopexit ] ; 4 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !3767
  %i.w = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.0101 ; 7 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16       ; 2 uses
  %i.y = icmp slt <16 x i8> %i.x, zeroinitializer
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = and i16 %i.z, 16383                     ; 2 uses
  %.sroa.073.0.extract.trunc = zext nneg i16 %i.aa to i32 ; 2 uses
  %i.ab = extractelement <16 x i8> %i.x, i64 14
  %i.ac = icmp ult i8 %i.ab, 16
  %.not113123 = icmp eq i16 %i.aa, 0              ; 2 uses
  br i1 %i.ac, label %.preheader, label %.preheader115

.preheader115:                                    ; preds = %bb.e
  br i1 %.not113123, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader115
  %i.ad = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  br label %bb.m

.preheader:                                       ; preds = %bb.e
  br i1 %.not113123, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader
  %i.af = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph126, %bb.l
  %i.ah = phi i64 [ %i.u, %.lr.ph126 ], [ %i.cf, %bb.l ]
  %.sroa.12.0125 = phi i32 [ 0, %.lr.ph126 ], [ %.sroa.12.2, %bb.l ] ; 2 uses
  %.sroa.073.0124 = phi i32 [ %.sroa.073.0.extract.trunc, %.lr.ph126 ], [ %.sroa.073.2, %bb.l ] ; 3 uses
  %i.ai = and i32 %.sroa.073.0124, 1
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.g, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.073.0124, i1 true) ; 2 uses
  %i.ak = add i32 %.sroa.12.0125, %i.aj
  %i.al = add nuw nsw i32 %i.aj, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.f, %bb.g
  %.pn114 = phi i32 [ %i.al, %bb.g ], [ 1, %bb.f ]
  %.sroa.12.2.in = phi i32 [ %i.ak, %bb.g ], [ %.sroa.12.0125, %bb.f ] ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %.sroa.073.2 = lshr i32 %.sroa.073.0124, %.pn114 ; 2 uses
  %i.am = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.am
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14  ; 2 uses
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = and i64 %i.ah, 255                      ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !3767  ; 2 uses
  %i.av = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0101, i64 range(i64 0, 256) %i.at) ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !14  ; 2 uses
  %i.ay = icmp ult i8 %i.ax, 14
  br i1 %i.ay, label %._crit_edge.i, label %.lr.ph.i, !prof !2636

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %_ZN5folly3f146detail8F14ChunkIlE25incrOutboundOverflowCountEv.exit.i
  %i.az = phi i64 [ %i.bf, %_ZN5folly3f146detail8F14ChunkIlE25incrOutboundOverflowCountEv.exit.i ], [ %i.av, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.au, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 15 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !3804 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE17buildFromF14TableIRKS5_EEvOT_:bb.a
  %.inv.i = icmp samesign ugt i64 %i.b, 1791
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.b, -4611686018427387649
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = add nsw i64 %i.c, -1
  %i.i = udiv i64 %i.h, 12
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = sub nuw nsw i64 64, %i.j
  %i.l = shl nuw nsw i64 1, %i.k
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn21.i = phi i64 [ %i.l, %bb.g ], [ 1, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %.0.pn.i = phi i64 [ 12, %bb.g ], [ %spec.select.i, %bb.d ], [ 2, %bb.c ] ; 2 uses
  %i.m = and i64 %i.b, 255
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !3829
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64                 ; 2 uses
  %i.t = icmp ugt i64 %i.n, %.pn21.i
  %i.u = icmp samesign ult i64 %.0.pn.i, %i.s
  %or.cond = select i1 %i.t, i1 true, i1 %i.u     ; 2 uses
  %.sroa.09.0 = select i1 %or.cond, i64 %.pn21.i, i64 %i.n
  %.sroa.5.0 = select i1 %or.cond, i64 %.0.pn.i, i64 %i.s
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef %.sroa.09.0, i64 noundef %.sroa.5.0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1823
  %i.x = trunc i64 %i.w to i8
  %i.y = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.z = trunc i64 %i.y to i8
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyInvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit unwind label %bb.j

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyInvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #43 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyInvvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.k, !inline_history !4625

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyInvvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.j
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyInvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ae

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyInvvvvEEE17buildFromF14TableIRKS6_EEvOT_EUlvE_PFvPS6_EJSD_EvEET2_SB_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyInvvvvEEEEEJS7_ES8_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.i, %bb.h, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE26buildFromF14TableCatchColdEPS5_(ptr noundef %0) local_unnamed_addr #40 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #43
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #43
  tail call void @__cxa_rethrow() #47
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15directBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3829   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = and i8 %i.h, 15
  %i.j = zext nneg i8 %i.i to i64                 ; 2 uses
  %i.k = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.l = shl i64 14, %i.e
  %spec.select = select i1 %i.k, i64 %i.j, i64 %i.l
  %i.m = and i64 %i.b, 255                        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !3829
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit58

bb.b:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit
  %i.t = shl i64 14, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit58

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit58: ; preds = %bb.a, %bb.b
  %.0.i57 = phi i64 [ %i.s, %bb.a ], [ %i.t, %bb.b ]
  %i.u = icmp eq i64 %spec.select, %.0.i57
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit58
  %i.v = shl nuw nsw i64 %i.j, 4
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = shl i64 256, %i.e
  %.0.i59 = select i1 %i.k, i64 %i.w, i64 %i.x
  %i.y = load ptr, ptr %1, align 8, !tbaa !3829
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 16 %i.y, i64 %.0.i59, i1 false)
  %i.z = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.aa = and i64 %i.z, -256
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1823
  %i.ac = and i64 %i.ab, 255
  %i.ad = or disjoint i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !1823
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !3890 ; 2 uses
  %i.ag = and i64 %i.af, -16
  %i.ah = and i64 %i.af, 15                       ; 3 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !3829
  %i.aj = load ptr, ptr %1, align 8, !tbaa !3829
  %i.ak = ptrtoint ptr %i.aj to i64
  %.neg82 = add i64 %i.ag, -16
  %i.al = shl nuw nsw i64 %i.ah, 4
  %i.am = add i64 %i.al, %i.ak
  %i.an = sub i64 %.neg82, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ah
  %i.ar = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = or i64 %i.ah, %i.as
  br label %bb.k

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE9itemCountEv.exit58
  %i.au = load ptr, ptr %1, align 8, !tbaa !3829
  %i.av = shl nuw i64 1, %i.e                     ; 2 uses
  %i.aw = getelementptr [256 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr [256 x i8], ptr %i.f, i64 %i.av
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ay = phi i64 [ %i.b, %bb.d ], [ %i.cj, %._crit_edge ]
  %i.az = phi i64 [ %i.d, %bb.d ], [ %i.ck, %._crit_edge ]
  %.pn48 = phi ptr [ %i.ax, %bb.d ], [ %.044, %._crit_edge ] ; 4 uses
  %.pn47 = phi ptr [ %i.aw, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -256  ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -256  ; 4 uses
  %i.ba = getelementptr i8, ptr %.pn47, i64 -242
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !3830
  %i.bc = and i8 %i.bb, -16
  %i.bd = getelementptr i8, ptr %.pn48, i64 -242  ; 2 uses
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !3830
  %i.bf = add i8 %i.be, %i.bc
  store i8 %i.bf, ptr %i.bd, align 2, !tbaa !3830
  %i.bg = getelementptr i8, ptr %.pn47, i64 -241
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !3869
  %i.bi = getelementptr i8, ptr %.pn48, i64 -241
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !3869
  %i.bj = load <16 x i8>, ptr %.043, align 16, !tbaa !14
  %i.bk = icmp slt <16 x i8> %i.bj, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = and i16 %i.bl, 16383                    ; 2 uses
  %.not7783 = icmp eq i16 %i.bm, 0
  br i1 %.not7783, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.062.0.extract.trunc = zext nneg i16 %i.bm to i32
  %i.bn = icmp ne ptr %.043, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.pn47, i64 -240
  %i.bp = getelementptr i8, ptr %.pn48, i64 -240
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit
  %.04586 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.085 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit ] ; 2 uses
  %.sroa.062.084 = phi i32 [ %.sroa.062.0.extract.trunc, %.lr.ph ], [ %.sroa.062.1, %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit ] ; 3 uses
  %i.bq = and i32 %.sroa.062.084, 1
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.br = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.062.084, i1 true) ; 2 uses
  %i.bs = add i32 %.sroa.8.085, %i.br
  %i.bt = add nuw nsw i32 %i.br, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi i32 [ %i.bt, %bb.g ], [ 1, %bb.f ]
  %.sroa.8.1.in = phi i32 [ %i.bs, %bb.g ], [ %.sroa.8.085, %bb.f ] ; 2 uses
  %i.bu = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.04586 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %i.bx = load i128, ptr %i.bv, align 16, !tbaa !3853
  store i128 %i.bx, ptr %i.bw, align 16, !tbaa !3853
  %i.by = getelementptr inbounds nuw i8, ptr %.044, i64 %.04586 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !14
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkInE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.1) #49
  unreachable

_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit:  ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %.043, i64 %i.bu
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.062.1 = lshr i32 %.sroa.062.084, %.pn    ; 2 uses
  store i8 %i.cc, ptr %i.by, align 1, !tbaa !14
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.ce = and i64 %i.cd, -256
  %i.cf = add i64 %i.ce, 256
  %i.cg = and i64 %i.cd, 255
  %i.ch = or disjoint i64 %i.cf, %i.cg            ; 2 uses
  store i64 %i.ch, ptr %i.c, align 8, !tbaa !1823
  %i.ci = add i64 %.04586, 1
  %.not77 = icmp eq i32 %.sroa.062.1, 0
  br i1 %.not77, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !4626

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkInE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1823
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.cj = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ay, %bb.e ] ; 2 uses
  %i.ck = phi i64 [ %i.ch, %._crit_edge.loopexit ], [ %i.az, %bb.e ] ; 2 uses
  %.not.unshifted = xor i64 %i.cj, %i.ck
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %bb.j, label %bb.e, !llvm.loop !4627

bb.j:                                             ; preds = %._crit_edge
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !3890 ; 2 uses
  %i.cn = and i64 %i.cm, -16
  %i.co = load ptr, ptr %1, align 8, !tbaa !3829
  %i.cp = shl i64 %i.cm, 4
  %i.cq = and i64 %i.cp, 240
  %i.cr = ptrtoint ptr %i.co to i64
  %.neg79 = add i64 %i.cn, -16
  %i.cs = add i64 %i.cq, %i.cr
  %i.ct = sub i64 %.neg79, %i.cs
  %i.cu = load ptr, ptr %0, align 8, !tbaa !3829
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct ; 3 uses
  %i.cw = load <16 x i8>, ptr %i.cv, align 16, !tbaa !14
  %i.cx = icmp slt <16 x i8> %i.cw, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16
  %i.cz = and i16 %i.cy, 16383                    ; 2 uses
  %i.da = zext nneg i16 %i.cz to i32
  %i.db = icmp ne i16 %i.cz, 0
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.da, i1 true)
  %i.dd = xor i32 %i.dc, 31
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.de
  %i.dh = icmp ne ptr %i.cv, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dh)
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = or i64 %i.di, %i.de
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.sink = phi i64 [ %i.dj, %bb.j ], [ %i.at, %bb.c ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.dk, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyInvvvvEEE15rehashBuildFromIRKS5_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.397", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #46
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, %bb.a
  %.0109 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %2, %bb.a ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !3890 ; 2 uses
  %i.i = and i64 %i.h, -16
  %i.j = load ptr, ptr %1, align 8, !tbaa !3829
  %i.k = shl i64 %i.h, 4
  %i.l = and i64 %i.k, 240
  %i.m = ptrtoint ptr %i.j to i64
  %.neg116 = add i64 %i.i, -16
  %i.n = add i64 %i.l, %i.m
  %i.o = sub i64 %.neg116, %i.n
  %i.p = ashr exact i64 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.r = phi i64 [ %i.b, %bb.d ], [ %i.ei, %.loopexit ] ; 4 uses
  %.0101 = phi i64 [ %i.p, %bb.d ], [ %i.ek, %.loopexit ] ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !3829
  %i.t = getelementptr inbounds nuw [256 x i8], ptr %i.s, i64 %.0101 ; 7 uses
  %i.u = load <16 x i8>, ptr %i.t, align 16       ; 2 uses
  %i.v = icmp slt <16 x i8> %i.u, zeroinitializer
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = and i16 %i.w, 16383                      ; 2 uses
  %.sroa.073.0.extract.trunc = zext nneg i16 %i.x to i32 ; 2 uses
  %i.y = extractelement <16 x i8> %i.u, i64 14
  %i.z = icmp ult i8 %i.y, 16
  %.not113125 = icmp eq i16 %i.x, 0               ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader117

.preheader117:                                    ; preds = %bb.e
  br i1 %.not113125, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader117
  %i.aa = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %bb.m

.preheader:                                       ; preds = %bb.e
  br i1 %.not113125, label %.loopexit, label %.lr.ph128

.lr.ph128:                                        ; preds = %.preheader
  %i.ac = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph128, %bb.l
  %i.ae = phi i64 [ %i.r, %.lr.ph128 ], [ %i.cb, %bb.l ]
  %.sroa.12.0127 = phi i32 [ 0, %.lr.ph128 ], [ %.sroa.12.2, %bb.l ] ; 2 uses
  %.sroa.073.0126 = phi i32 [ %.sroa.073.0.extract.trunc, %.lr.ph128 ], [ %.sroa.073.2, %bb.l ] ; 3 uses
  %i.af = and i32 %.sroa.073.0126, 1
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.g, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.ag = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.073.0126, i1 true) ; 2 uses
  %i.ah = add i32 %.sroa.12.0127, %i.ag
  %i.ai = add nuw nsw i32 %i.ag, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.f, %bb.g
  %.pn114 = phi i32 [ %i.ai, %bb.g ], [ 1, %bb.f ]
  %.sroa.12.2.in = phi i32 [ %i.ah, %bb.g ], [ %.sroa.12.0127, %bb.f ] ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %.sroa.073.2 = lshr i32 %.sroa.073.0126, %.pn114 ; 2 uses
  %i.aj = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aj
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14  ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = or disjoint i64 %i.ao, 1
  %i.aq = and i64 %i.ae, 255                      ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !3829  ; 2 uses
  %i.as = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0101, i64 range(i64 0, 256) %i.aq) ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14  ; 2 uses
  %i.av = icmp ult i8 %i.au, 14
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i, !prof !2636

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %_ZN5folly3f146detail8F14ChunkInE25incrOutboundOverflowCountEv.exit.i
  %i.aw = phi i64 [ %i.bc, %_ZN5folly3f146detail8F14ChunkInE25incrOutboundOverflowCountEv.exit.i ], [ %i.as, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !3869 ; 2 uses
  %.not.i.i = icmp eq i8 %i.az, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkInE25incrOutboundOverflowCountEv.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !3869
  br label %_ZN5folly3f146detail8F14ChunkInE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkInE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.h, %.lr.ph.i
  %i.bb = add i64 %i.ap, %i.aw
  %i.bc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bb, i64 range(i64 0, 256) %i.aq) ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE17buildFromF14TableIRKSD_EEvOT_:bb.a
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.b
  %i.g = add nsw i64 %i.c, -1
  %i.h = udiv i64 %i.g, 10
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = sub nuw nsw i32 64, %i.j                 ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 1, %i.l                  ; 2 uses
  %i.n = icmp ugt i64 %i.b, 5243135
  %i.o = shl i32 10, %i.k
  %i.p = zext i32 %i.o to i64
  %i.q = select i1 %i.n, i64 40960, i64 %i.p      ; 2 uses
  %i.r = add nsw i64 %i.m, -1
  %i.s = lshr i64 %i.r, 12
  %i.t = add nuw nsw i64 %i.s, 1
  %i.u = mul i64 %i.t, %i.q
  %i.v = icmp ugt i64 %i.u, 72057594037927935
  br i1 %i.v, label %bb.e, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit

bb.e:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.c, %bb.d
  %.pn22.i = phi i64 [ 1, %bb.c ], [ 1, %bb.d ], [ %i.m, %_ZN5folly11findLastSetImEEjT_.exit.i ] ; 2 uses
  %.0.pn.i = phi i64 [ 2, %bb.c ], [ %spec.select.i, %bb.d ], [ %i.q, %_ZN5folly11findLastSetImEEjT_.exit.i ] ; 2 uses
  %i.w = and i64 %i.b, 255
  %i.x = shl nuw i64 1, %i.w                      ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !3896
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.0.copyload.i = load i16, ptr %i.z, align 1
  %i.aa = zext i16 %.0.copyload.i to i64          ; 2 uses
  %i.ab = icmp ugt i64 %i.x, %.pn22.i
  %i.ac = icmp samesign ult i64 %.0.pn.i, %i.aa
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac   ; 2 uses
  %.sroa.09.0 = select i1 %or.cond, i64 %.pn22.i, i64 %i.x
  %.sroa.5.0 = select i1 %or.cond, i64 %.0.pn.i, i64 %i.aa
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef %.sroa.09.0, i64 noundef %.sroa.5.0)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1823
  %i.af = trunc i64 %i.ae to i8
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = icmp eq i8 %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE15directBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEEvEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit unwind label %bb.h

bb.g:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE15rehashBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEEvEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = tail call ptr @__cxa_begin_catch(ptr %i.ak) #43 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE26buildFromF14TableCatchColdEPSD_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEEvEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.i, !inline_history !4681

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEEvEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.h
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEEvEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.am

bb.k:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEEvEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS8_14NaNAwareEqualsIfLb1EEEvEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE26buildFromF14TableCatchColdEPSD_(ptr noundef %0) local_unnamed_addr #40 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #43
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #43
  tail call void @__cxa_rethrow() #47
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE15directBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE9itemCountEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3896   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.0.copyload.i.i = load i16, ptr %i.g, align 1
  %i.h = zext i16 %.0.copyload.i.i to i64         ; 2 uses
  %i.i = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.j = shl i64 12, %i.e
  %spec.select = select i1 %i.i, i64 %i.h, i64 %i.j
  %i.k = and i64 %i.b, 255                        ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE9itemCountEv.exit
  %i.m = load ptr, ptr %1, align 8, !tbaa !3896
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.0.copyload.i.i59 = load i16, ptr %i.n, align 1
  %i.o = zext i16 %.0.copyload.i.i59 to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE9itemCountEv.exit60

bb.b:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE9itemCountEv.exit
  %i.p = shl i64 12, %i.k
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE9itemCountEv.exit60

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE9itemCountEv.exit60: ; preds = %bb.a, %bb.b
  %.0.i58 = phi i64 [ %i.o, %bb.a ], [ %i.p, %bb.b ]
  %i.q = icmp eq i64 %spec.select, %.0.i58
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE9itemCountEv.exit60
  %i.r = shl nuw nsw i64 %i.h, 2
  %i.s = add nuw nsw i64 %i.r, 16
  %i.t = shl i64 64, %i.e
  %.0.i61 = select i1 %i.i, i64 %i.s, i64 %i.t
  %i.u = load ptr, ptr %1, align 8, !tbaa !3896
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 16 %i.u, i64 %.0.i61, i1 false)
  %i.v = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.w = and i64 %i.v, -256
  %i.x = load i64, ptr %i.c, align 8, !tbaa !1823
  %i.y = and i64 %i.x, 255
  %i.z = or disjoint i64 %i.y, %i.w
  store i64 %i.z, ptr %i.c, align 8, !tbaa !1823
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !3932 ; 3 uses
  %i.ac = and i64 %i.ab, -4
  %i.ad = shl i64 %i.ab, 2
  %i.ae = and i64 %i.ad, 12                       ; 2 uses
  %i.af = lshr i64 %i.ab, 2
  %i.ag = and i64 %i.af, 3
  %i.ah = or disjoint i64 %i.ae, %i.ag            ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !3896
  %i.aj = load ptr, ptr %1, align 8, !tbaa !3896
  %i.ak = ptrtoint ptr %i.aj to i64
  %.neg86 = add i64 %i.ac, -16
  %i.al = shl nuw nsw i64 %i.ah, 2
  %i.am = add i64 %i.al, %i.ak
  %i.an = sub i64 %.neg86, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 %i.an
  br label %bb.k

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE9itemCountEv.exit60
  %i.ap = load ptr, ptr %1, align 8, !tbaa !3896
  %i.aq = shl nuw i64 1, %i.e                     ; 2 uses
  %i.ar = getelementptr [64 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr [64 x i8], ptr %i.f, i64 %i.aq
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.at = phi i64 [ %i.b, %bb.d ], [ %i.ce, %._crit_edge ]
  %i.au = phi i64 [ %i.d, %bb.d ], [ %i.cf, %._crit_edge ]
  %.pn48 = phi ptr [ %i.as, %bb.d ], [ %.044, %._crit_edge ] ; 4 uses
  %.pn47 = phi ptr [ %i.ar, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -64   ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -64   ; 4 uses
  %i.av = getelementptr i8, ptr %.pn47, i64 -50
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !3931
  %i.ax = and i8 %i.aw, -16
  %i.ay = getelementptr i8, ptr %.pn48, i64 -50   ; 2 uses
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !3931
  %i.ba = add i8 %i.az, %i.ax
  store i8 %i.ba, ptr %i.ay, align 2, !tbaa !3931
  %i.bb = getelementptr i8, ptr %.pn47, i64 -49
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !3928
  %i.bd = getelementptr i8, ptr %.pn48, i64 -49
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !3928
  %i.be = load <16 x i8>, ptr %.043, align 16, !tbaa !14
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 4095                     ; 2 uses
  %.not7987 = icmp eq i16 %i.bh, 0
  br i1 %.not7987, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.064.0.extract.trunc = zext nneg i16 %i.bh to i32
  %i.bi = icmp ne ptr %.043, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr i8, ptr %.pn47, i64 -48
  %i.bk = getelementptr i8, ptr %.pn48, i64 -48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit
  %.04590 = phi i64 [ 0, %.lr.ph ], [ %i.cd, %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.089 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit ] ; 2 uses
  %.sroa.064.088 = phi i32 [ %.sroa.064.0.extract.trunc, %.lr.ph ], [ %.sroa.064.1, %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit ] ; 3 uses
  %i.bl = and i32 %.sroa.064.088, 1
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.bm = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.064.088, i1 true) ; 2 uses
  %i.bn = add i32 %.sroa.8.089, %i.bm
  %i.bo = add nuw nsw i32 %i.bm, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi i32 [ %i.bo, %bb.g ], [ 1, %bb.f ]
  %.sroa.8.1.in = phi i32 [ %i.bn, %bb.g ], [ %.sroa.8.089, %bb.f ] ; 2 uses
  %i.bp = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.04590 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %i.bs = load float, ptr %i.bq, align 4, !tbaa !3911
  store float %i.bs, ptr %i.br, align 4, !tbaa !3911
  %i.bt = getelementptr inbounds nuw i8, ptr %.044, i64 %.04590 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !14
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIfE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.1) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit:  ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %.043, i64 %i.bp
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.064.1 = lshr i32 %.sroa.064.088, %.pn    ; 2 uses
  store i8 %i.bx, ptr %i.bt, align 1, !tbaa !14
  %i.by = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.bz = and i64 %i.by, -256
  %i.ca = add i64 %i.bz, 256
  %i.cb = and i64 %i.by, 255
  %i.cc = or disjoint i64 %i.ca, %i.cb            ; 2 uses
  store i64 %i.cc, ptr %i.c, align 8, !tbaa !1823
  %i.cd = add i64 %.04590, 1
  %.not79 = icmp eq i32 %.sroa.064.1, 0
  br i1 %.not79, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !4682

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIfE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1823
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.ce = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.at, %bb.e ] ; 2 uses
  %i.cf = phi i64 [ %i.cc, %._crit_edge.loopexit ], [ %i.au, %bb.e ] ; 2 uses
  %.not.unshifted = xor i64 %i.ce, %i.cf
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %bb.j, label %bb.e, !llvm.loop !4683

bb.j:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !3932 ; 3 uses
  %i.ci = and i64 %i.ch, -4
  %i.cj = shl i64 %i.ch, 4
  %i.ck = and i64 %i.cj, 48
  %i.cl = and i64 %i.ch, 12
  %i.cm = load ptr, ptr %1, align 8, !tbaa !3896
  %i.cn = ptrtoint ptr %i.cm to i64
  %.neg82 = add i64 %i.ci, -16
  %i.co = or disjoint i64 %i.cl, %i.ck
  %i.cp = add i64 %i.co, %i.cn
  %i.cq = sub i64 %.neg82, %i.cp
  %i.cr = load ptr, ptr %0, align 8, !tbaa !3896
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq ; 2 uses
  %i.ct = load <16 x i8>, ptr %i.cs, align 16, !tbaa !14
  %i.cu = icmp slt <16 x i8> %i.ct, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %i.cw = and i16 %i.cv, 4095                     ; 2 uses
  %i.cx = zext nneg i16 %i.cw to i32
  %i.cy = icmp ne i16 %i.cw, 0
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cx, i1 true)
  %i.da = xor i32 %i.cz, 31
  %i.db = zext nneg i32 %i.da to i64              ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.sink = phi ptr [ %i.cs, %bb.j ], [ %i.ao, %bb.c ] ; 2 uses
  %.sink99 = phi i64 [ %i.db, %bb.j ], [ %i.ah, %bb.c ]
  %.sink95 = phi i64 [ %i.db, %bb.j ], [ %i.ae, %bb.c ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.sink99
  %i.de = icmp ne ptr %.sink, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.de)
  %i.df = lshr i64 %.sink95, 2
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = or i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfvN8facebook5velox4util14floating_point12NaNAwareHashIfLb1EEENS7_14NaNAwareEqualsIfLb1EEEvEEE15rehashBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.397", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #46
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, %bb.a
  %.0109 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %2, %bb.a ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !3932 ; 3 uses
  %i.i = and i64 %i.h, -4
  %i.j = shl i64 %i.h, 4
  %i.k = and i64 %i.j, 48
  %i.l = and i64 %i.h, 12
  %i.m = load ptr, ptr %1, align 8, !tbaa !3896
  %i.n = ptrtoint ptr %i.m to i64
  %.neg117 = add i64 %i.i, -16
  %i.o = or disjoint i64 %i.l, %i.k
  %i.p = add i64 %i.o, %i.n
  %i.q = sub i64 %.neg117, %i.p
  %i.r = ashr exact i64 %i.q, 6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.t = phi i64 [ %i.b, %bb.d ], [ %i.ff, %.loopexit ] ; 3 uses
  %.0101 = phi i64 [ %i.r, %bb.d ], [ %i.fh, %.loopexit ] ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !3896
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.u, i64 %.0101 ; 7 uses
  %i.w = load <16 x i8>, ptr %i.v, align 16       ; 2 uses
  %i.x = icmp slt <16 x i8> %i.w, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = and i16 %i.y, 4095                       ; 2 uses
  %.sroa.073.0.extract.trunc = zext nneg i16 %i.z to i32 ; 2 uses
  %i.aa = extractelement <16 x i8> %i.w, i64 14
  %i.ab = icmp ult i8 %i.aa, 16
  %.not113127 = icmp eq i16 %i.z, 0               ; 2 uses
  br i1 %i.ab, label %.preheader, label %.preheader119

.preheader119:                                    ; preds = %bb.e
  br i1 %.not113127, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader119
  %i.ac = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.m

.preheader:                                       ; preds = %bb.e
  br i1 %.not113127, label %.loopexit, label %.lr.ph130

.lr.ph130:                                        ; preds = %.preheader
  %i.ae = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph130, %bb.l
  %i.ag = phi i64 [ %i.t, %.lr.ph130 ], [ %i.ce, %bb.l ]
  %.sroa.12.0129 = phi i32 [ 0, %.lr.ph130 ], [ %.sroa.12.2, %bb.l ] ; 2 uses
  %.sroa.073.0128 = phi i32 [ %.sroa.073.0.extract.trunc, %.lr.ph130 ], [ %.sroa.073.2, %bb.l ] ; 3 uses
  %i.ah = and i32 %.sroa.073.0128, 1
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.g, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.073.0128, i1 true) ; 2 uses
  %i.aj = add i32 %.sroa.12.0129, %i.ai
  %i.ak = add nuw nsw i32 %i.ai, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.f, %bb.g
  %.pn114 = phi i32 [ %i.ak, %bb.g ], [ 1, %bb.f ]
  %.sroa.12.2.in = phi i32 [ %i.aj, %bb.g ], [ %.sroa.12.0129, %bb.f ] ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %.sroa.073.2 = lshr i32 %.sroa.073.0128, %.pn114 ; 2 uses
  %i.al = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14  ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 1
  %i.ar = or disjoint i64 %i.aq, 1
  %i.as = and i64 %i.ag, 255                      ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !3896  ; 2 uses
  %i.au = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0101, i64 range(i64 0, 256) %i.as) ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14  ; 2 uses
  %i.ax = icmp ult i8 %i.aw, 12
  br i1 %i.ax, label %._crit_edge.i, label %.lr.ph.i, !prof !2636

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i
  %i.ay = phi i64 [ %i.be, %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i ], [ %i.au, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw [64 x i8], ptr %i.at, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 15 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !3928 ; 2 uses
  %.not.i.i = icmp eq i8 %i.bb, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIfE25incrOutboundOverflowCountEv.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE17buildFromF14TableIRKSD_EEvOT_:bb.a

bb.d:                                             ; preds = %bb.c
  %.inv.i = icmp samesign ugt i64 %i.b, 1791
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.b, -4611686018427387649
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = add nsw i64 %i.c, -1
  %i.i = udiv i64 %i.h, 12
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = sub nuw nsw i64 64, %i.j
  %i.l = shl nuw nsw i64 1, %i.k
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn21.i = phi i64 [ %i.l, %bb.g ], [ 1, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %.0.pn.i = phi i64 [ 12, %bb.g ], [ %spec.select.i, %bb.d ], [ 2, %bb.c ] ; 2 uses
  %i.m = and i64 %i.b, 255
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !3983
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64                 ; 2 uses
  %i.t = icmp ugt i64 %i.n, %.pn21.i
  %i.u = icmp samesign ult i64 %.0.pn.i, %i.s
  %or.cond = select i1 %i.t, i1 true, i1 %i.u     ; 2 uses
  %.sroa.09.0 = select i1 %or.cond, i64 %.pn21.i, i64 %i.n
  %.sroa.5.0 = select i1 %or.cond, i64 %.0.pn.i, i64 %i.s
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef %.sroa.09.0, i64 noundef %.sroa.5.0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1823
  %i.x = trunc i64 %i.w to i8
  %i.y = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.z = trunc i64 %i.y to i8
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE15directBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEEvEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit unwind label %bb.j

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE15rehashBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEEvEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #43 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE26buildFromF14TableCatchColdEPSD_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEEvEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.k, !inline_history !4737

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEEvEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.j
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEEvEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ae

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEEvEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS8_14NaNAwareEqualsIdLb1EEEvEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.i, %bb.h, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE26buildFromF14TableCatchColdEPSD_(ptr noundef %0) local_unnamed_addr #40 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #43
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #43
  tail call void @__cxa_rethrow() #47
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE15directBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE9itemCountEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3983   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = and i8 %i.h, 15
  %i.j = zext nneg i8 %i.i to i64                 ; 2 uses
  %i.k = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.l = shl i64 14, %i.e
  %spec.select = select i1 %i.k, i64 %i.j, i64 %i.l
  %i.m = and i64 %i.b, 255                        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE9itemCountEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !3983
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE9itemCountEv.exit58

bb.b:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE9itemCountEv.exit
  %i.t = shl i64 14, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE9itemCountEv.exit58

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE9itemCountEv.exit58: ; preds = %bb.a, %bb.b
  %.0.i57 = phi i64 [ %i.s, %bb.a ], [ %i.t, %bb.b ]
  %i.u = icmp eq i64 %spec.select, %.0.i57
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE9itemCountEv.exit58
  %i.v = shl nuw nsw i64 %i.j, 3
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = shl i64 128, %i.e
  %.0.i59 = select i1 %i.k, i64 %i.w, i64 %i.x
  %i.y = load ptr, ptr %1, align 8, !tbaa !3983
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 16 %i.y, i64 %.0.i59, i1 false)
  %i.z = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.aa = and i64 %i.z, -256
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1823
  %i.ac = and i64 %i.ab, 255
  %i.ad = or disjoint i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !1823
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !4019 ; 3 uses
  %i.ag = and i64 %i.af, -8
  %i.ah = shl i64 %i.af, 1
  %i.ai = and i64 %i.ah, 14                       ; 2 uses
  %i.aj = lshr i64 %i.af, 3
  %i.ak = and i64 %i.aj, 1
  %i.al = or disjoint i64 %i.ai, %i.ak            ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !3983
  %i.an = load ptr, ptr %1, align 8, !tbaa !3983
  %i.ao = ptrtoint ptr %i.an to i64
  %.neg80 = add i64 %i.ag, -16
  %i.ap = shl nuw nsw i64 %i.al, 3
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = sub i64 %.neg80, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 %i.ar
  br label %bb.k

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE9itemCountEv.exit58
  %i.at = load ptr, ptr %1, align 8, !tbaa !3983
  %i.au = shl nuw i64 1, %i.e                     ; 2 uses
  %i.av = getelementptr [128 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr [128 x i8], ptr %i.f, i64 %i.au
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ax = phi i64 [ %i.b, %bb.d ], [ %i.ci, %._crit_edge ]
  %i.ay = phi i64 [ %i.d, %bb.d ], [ %i.cj, %._crit_edge ]
  %.pn48 = phi ptr [ %i.aw, %bb.d ], [ %.044, %._crit_edge ] ; 4 uses
  %.pn47 = phi ptr [ %i.av, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -128  ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -128  ; 4 uses
  %i.az = getelementptr i8, ptr %.pn47, i64 -114
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !3984
  %i.bb = and i8 %i.ba, -16
  %i.bc = getelementptr i8, ptr %.pn48, i64 -114  ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !3984
  %i.be = add i8 %i.bd, %i.bb
  store i8 %i.be, ptr %i.bc, align 2, !tbaa !3984
  %i.bf = getelementptr i8, ptr %.pn47, i64 -113
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !4017
  %i.bh = getelementptr i8, ptr %.pn48, i64 -113
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !4017
  %i.bi = load <16 x i8>, ptr %.043, align 16, !tbaa !14
  %i.bj = icmp slt <16 x i8> %i.bi, zeroinitializer
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = and i16 %i.bk, 16383                    ; 2 uses
  %.not7781 = icmp eq i16 %i.bl, 0
  br i1 %.not7781, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.062.0.extract.trunc = zext nneg i16 %i.bl to i32
  %i.bm = icmp ne ptr %.043, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr i8, ptr %.pn47, i64 -112
  %i.bo = getelementptr i8, ptr %.pn48, i64 -112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit
  %.04584 = phi i64 [ 0, %.lr.ph ], [ %i.ch, %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.083 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit ] ; 2 uses
  %.sroa.062.082 = phi i32 [ %.sroa.062.0.extract.trunc, %.lr.ph ], [ %.sroa.062.1, %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit ] ; 3 uses
  %i.bp = and i32 %.sroa.062.082, 1
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.bq = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.062.082, i1 true) ; 2 uses
  %i.br = add i32 %.sroa.8.083, %i.bq
  %i.bs = add nuw nsw i32 %i.bq, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi i32 [ %i.bs, %bb.g ], [ 1, %bb.f ]
  %.sroa.8.1.in = phi i32 [ %i.br, %bb.g ], [ %.sroa.8.083, %bb.f ] ; 2 uses
  %i.bt = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.04584 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !4000
  store double %i.bw, ptr %i.bv, align 8, !tbaa !4000
  %i.bx = getelementptr inbounds nuw i8, ptr %.044, i64 %.04584 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIdE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.1) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit:  ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.043, i64 %i.bt
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !14
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.062.1 = lshr i32 %.sroa.062.082, %.pn    ; 2 uses
  store i8 %i.cb, ptr %i.bx, align 1, !tbaa !14
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %i.ce = add i64 %i.cd, 256
  %i.cf = and i64 %i.cc, 255
  %i.cg = or disjoint i64 %i.ce, %i.cf            ; 2 uses
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !1823
  %i.ch = add i64 %.04584, 1
  %.not77 = icmp eq i32 %.sroa.062.1, 0
  br i1 %.not77, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !4738

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIdE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1823
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.ci = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ax, %bb.e ] ; 2 uses
  %i.cj = phi i64 [ %i.cg, %._crit_edge.loopexit ], [ %i.ay, %bb.e ] ; 2 uses
  %.not.unshifted = xor i64 %i.ci, %i.cj
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %bb.j, label %bb.e, !llvm.loop !4739

bb.j:                                             ; preds = %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !4019 ; 3 uses
  %i.cm = and i64 %i.cl, -8
  %i.cn = shl i64 %i.cl, 1
  %i.co = and i64 %i.cn, 14
  %i.cp = shl i64 %i.cl, 60
  %i.cq = ashr i64 %i.cp, 63
  %.neg.i = sub nsw i64 %i.cq, %i.co
  %.neg.i.i.i = shl nsw i64 %.neg.i, 3
  %i.cr = load ptr, ptr %1, align 8, !tbaa !3983
  %i.cs = add i64 %i.cm, -16
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = load ptr, ptr %0, align 8, !tbaa !3983
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.cu
  %i.cx = getelementptr i8, ptr %i.cw, i64 %.neg.i.i.i ; 2 uses
  %i.cy = load <16 x i8>, ptr %i.cx, align 16, !tbaa !14
  %i.cz = icmp slt <16 x i8> %i.cy, zeroinitializer
  %i.da = bitcast <16 x i1> %i.cz to i16
  %i.db = and i16 %i.da, 16383                    ; 2 uses
  %i.dc = zext nneg i16 %i.db to i32
  %i.dd = icmp ne i16 %i.db, 0
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dc, i1 true)
  %i.df = xor i32 %i.de, 31
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.sink = phi ptr [ %i.cx, %bb.j ], [ %i.as, %bb.c ] ; 2 uses
  %.sink93 = phi i64 [ %i.dg, %bb.j ], [ %i.al, %bb.c ]
  %.sink89 = phi i64 [ %i.dg, %bb.j ], [ %i.ai, %bb.c ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.sink93
  %i.dj = icmp ne ptr %.sink, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = lshr i64 %.sink89, 1
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = or i64 %i.dk, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdvN8facebook5velox4util14floating_point12NaNAwareHashIdLb1EEENS7_14NaNAwareEqualsIdLb1EEEvEEE15rehashBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.397", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #46
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, %bb.a
  %.0109 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %2, %bb.a ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !4019 ; 3 uses
  %i.i = and i64 %i.h, -8
  %i.j = shl i64 %i.h, 1
  %i.k = and i64 %i.j, 14
  %i.l = shl i64 %i.h, 60
  %i.m = ashr i64 %i.l, 63
  %.neg.i = sub nsw i64 %i.m, %i.k
  %.neg.i.i.i = shl nsw i64 %.neg.i, 3
  %i.n = load ptr, ptr %1, align 8, !tbaa !3983
  %i.o = add i64 %i.i, -16
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = add i64 %i.q, %.neg.i.i.i
  %i.s = ashr exact i64 %i.r, 7
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.u = phi i64 [ %i.b, %bb.d ], [ %i.fg, %.loopexit ] ; 3 uses
  %.0101 = phi i64 [ %i.s, %bb.d ], [ %i.fi, %.loopexit ] ; 4 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !3983
  %i.w = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.0101 ; 7 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16       ; 2 uses
  %i.y = icmp slt <16 x i8> %i.x, zeroinitializer
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = and i16 %i.z, 16383                     ; 2 uses
  %.sroa.073.0.extract.trunc = zext nneg i16 %i.aa to i32 ; 2 uses
  %i.ab = extractelement <16 x i8> %i.x, i64 14
  %i.ac = icmp ult i8 %i.ab, 16
  %.not113123 = icmp eq i16 %i.aa, 0              ; 2 uses
  br i1 %i.ac, label %.preheader, label %.preheader115

.preheader115:                                    ; preds = %bb.e
  br i1 %.not113123, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader115
  %i.ad = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  br label %bb.m

.preheader:                                       ; preds = %bb.e
  br i1 %.not113123, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader
  %i.af = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph126, %bb.l
  %i.ah = phi i64 [ %i.u, %.lr.ph126 ], [ %i.cf, %bb.l ]
  %.sroa.12.0125 = phi i32 [ 0, %.lr.ph126 ], [ %.sroa.12.2, %bb.l ] ; 2 uses
  %.sroa.073.0124 = phi i32 [ %.sroa.073.0.extract.trunc, %.lr.ph126 ], [ %.sroa.073.2, %bb.l ] ; 3 uses
  %i.ai = and i32 %.sroa.073.0124, 1
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.g, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.073.0124, i1 true) ; 2 uses
  %i.ak = add i32 %.sroa.12.0125, %i.aj
  %i.al = add nuw nsw i32 %i.aj, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.f, %bb.g
  %.pn114 = phi i32 [ %i.al, %bb.g ], [ 1, %bb.f ]
  %.sroa.12.2.in = phi i32 [ %i.ak, %bb.g ], [ %.sroa.12.0125, %bb.f ] ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %.sroa.073.2 = lshr i32 %.sroa.073.0124, %.pn114 ; 2 uses
  %i.am = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.am
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14  ; 2 uses
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = and i64 %i.ah, 255                      ; 2 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !3983  ; 2 uses
  %i.av = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0101, i64 range(i64 0, 256) %i.at) ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !14  ; 2 uses
  %i.ay = icmp ult i8 %i.ax, 14
  br i1 %i.ay, label %._crit_edge.i, label %.lr.ph.i, !prof !2636

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i
  %i.az = phi i64 [ %i.bf, %_ZN5folly3f146detail8F14ChunkIdE25incrOutboundOverflowCountEv.exit.i ], [ %i.av, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [128 x i8], ptr %i.au, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 15 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !4017 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE17buildFromF14TableIRKS8_EEvOT_:bb.a
  %.inv.i = icmp samesign ugt i64 %i.b, 1791
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.b, -4611686018427387649
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = add nsw i64 %i.c, -1
  %i.i = udiv i64 %i.h, 12
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = sub nuw nsw i64 64, %i.j
  %i.l = shl nuw nsw i64 1, %i.k
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn21.i = phi i64 [ %i.l, %bb.g ], [ 1, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %.0.pn.i = phi i64 [ 12, %bb.g ], [ %spec.select.i, %bb.d ], [ 2, %bb.c ] ; 2 uses
  %i.m = and i64 %i.b, 255
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !4070
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64                 ; 2 uses
  %i.t = icmp ugt i64 %i.n, %.pn21.i
  %i.u = icmp samesign ult i64 %.0.pn.i, %i.s
  %or.cond = select i1 %i.t, i1 true, i1 %i.u     ; 2 uses
  %.sroa.09.0 = select i1 %or.cond, i64 %.pn21.i, i64 %i.n
  %.sroa.5.0 = select i1 %or.cond, i64 %.0.pn.i, i64 %i.s
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef %.sroa.09.0, i64 noundef %.sroa.5.0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1823
  %i.x = trunc i64 %i.w to i8
  %i.y = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.z = trunc i64 %i.y to i8
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE15directBuildFromIRKS8_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE17buildFromF14TableIRKS9_EEvOT_EUlvE_PFvPS9_EJSG_EvEET2_SE_OT0_DpOT1_.exit unwind label %bb.j

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE15rehashBuildFromIRKS8_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE17buildFromF14TableIRKS9_EEvOT_EUlvE_PFvPS9_EJSG_EvEET2_SE_OT0_DpOT1_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #43 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE26buildFromF14TableCatchColdEPS8_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEEEEJSA_ESB_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.k, !inline_history !4796

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEEEEJSA_ESB_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.j
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE17buildFromF14TableIRKS9_EEvOT_EUlvE_PFvPS9_EJSG_EvEET2_SE_OT0_DpOT1_.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ae

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE17buildFromF14TableIRKS9_EEvOT_EUlvE_PFvPS9_EJSG_EvEET2_SE_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEEEEJSA_ESB_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.i, %bb.h, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE26buildFromF14TableCatchColdEPS8_(ptr noundef %0) local_unnamed_addr #40 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #43
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #43
  tail call void @__cxa_rethrow() #47
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE15directBuildFromIRKS8_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE9itemCountEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !4070   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = and i8 %i.h, 15
  %i.j = zext nneg i8 %i.i to i64                 ; 2 uses
  %i.k = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.l = shl i64 14, %i.e
  %spec.select = select i1 %i.k, i64 %i.j, i64 %i.l
  %i.m = and i64 %i.b, 255                        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE9itemCountEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !4070
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE9itemCountEv.exit58

bb.b:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE9itemCountEv.exit
  %i.t = shl i64 14, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE9itemCountEv.exit58

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE9itemCountEv.exit58: ; preds = %bb.a, %bb.b
  %.0.i57 = phi i64 [ %i.s, %bb.a ], [ %i.t, %bb.b ]
  %i.u = icmp eq i64 %spec.select, %.0.i57
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE9itemCountEv.exit58
  %i.v = shl nuw nsw i64 %i.j, 4
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = shl i64 256, %i.e
  %.0.i59 = select i1 %i.k, i64 %i.w, i64 %i.x
  %i.y = load ptr, ptr %1, align 8, !tbaa !4070
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 16 %i.y, i64 %.0.i59, i1 false)
  %i.z = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.aa = and i64 %i.z, -256
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1823
  %i.ac = and i64 %i.ab, 255
  %i.ad = or disjoint i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !1823
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !4095 ; 2 uses
  %i.ag = and i64 %i.af, -16
  %i.ah = and i64 %i.af, 15                       ; 3 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !4070
  %i.aj = load ptr, ptr %1, align 8, !tbaa !4070
  %i.ak = ptrtoint ptr %i.aj to i64
  %.neg82 = add i64 %i.ag, -16
  %i.al = shl nuw nsw i64 %i.ah, 4
  %i.am = add i64 %i.al, %i.ak
  %i.an = sub i64 %.neg82, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ah
  %i.ar = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = or i64 %i.ah, %i.as
  br label %bb.k

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE9itemCountEv.exit58
  %i.au = load ptr, ptr %1, align 8, !tbaa !4070
  %i.av = shl nuw i64 1, %i.e                     ; 2 uses
  %i.aw = getelementptr [256 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr [256 x i8], ptr %i.f, i64 %i.av
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ay = phi i64 [ %i.b, %bb.d ], [ %i.ci, %._crit_edge ]
  %i.az = phi i64 [ %i.d, %bb.d ], [ %i.cj, %._crit_edge ]
  %.pn48 = phi ptr [ %i.ax, %bb.d ], [ %.044, %._crit_edge ] ; 4 uses
  %.pn47 = phi ptr [ %i.aw, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -256  ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -256  ; 4 uses
  %i.ba = getelementptr i8, ptr %.pn47, i64 -242
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !4071
  %i.bc = and i8 %i.bb, -16
  %i.bd = getelementptr i8, ptr %.pn48, i64 -242  ; 2 uses
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !4071
  %i.bf = add i8 %i.be, %i.bc
  store i8 %i.bf, ptr %i.bd, align 2, !tbaa !4071
  %i.bg = getelementptr i8, ptr %.pn47, i64 -241
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !4112
  %i.bi = getelementptr i8, ptr %.pn48, i64 -241
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !4112
  %i.bj = load <16 x i8>, ptr %.043, align 16, !tbaa !14
  %i.bk = icmp slt <16 x i8> %i.bj, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = and i16 %i.bl, 16383                    ; 2 uses
  %.not7783 = icmp eq i16 %i.bm, 0
  br i1 %.not7783, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.062.0.extract.trunc = zext nneg i16 %i.bm to i32
  %i.bn = icmp ne ptr %.043, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.pn47, i64 -240
  %i.bp = getelementptr i8, ptr %.pn48, i64 -240
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit
  %.04586 = phi i64 [ 0, %.lr.ph ], [ %i.ch, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.085 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit ] ; 2 uses
  %.sroa.062.084 = phi i32 [ %.sroa.062.0.extract.trunc, %.lr.ph ], [ %.sroa.062.1, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit ] ; 3 uses
  %i.bq = and i32 %.sroa.062.084, 1
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.br = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.062.084, i1 true) ; 2 uses
  %i.bs = add i32 %.sroa.8.085, %i.br
  %i.bt = add nuw nsw i32 %i.br, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi i32 [ %i.bt, %bb.g ], [ 1, %bb.f ]
  %.sroa.8.1.in = phi i32 [ %i.bs, %bb.g ], [ %.sroa.8.085, %bb.f ] ; 2 uses
  %i.bu = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.04586 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !4109
  %i.bx = getelementptr inbounds nuw i8, ptr %.044, i64 %.04586 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.1) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit: ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.043, i64 %i.bu
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !14
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.062.1 = lshr i32 %.sroa.062.084, %.pn    ; 2 uses
  store i8 %i.cb, ptr %i.bx, align 1, !tbaa !14
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %i.ce = add i64 %i.cd, 256
  %i.cf = and i64 %i.cc, 255
  %i.cg = or disjoint i64 %i.ce, %i.cf            ; 2 uses
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !1823
  %i.ch = add i64 %.04586, 1
  %.not77 = icmp eq i32 %.sroa.062.1, 0
  br i1 %.not77, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !4797

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1823
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.ci = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ay, %bb.e ] ; 2 uses
  %i.cj = phi i64 [ %i.cg, %._crit_edge.loopexit ], [ %i.az, %bb.e ] ; 2 uses
  %.not.unshifted = xor i64 %i.ci, %i.cj
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %bb.j, label %bb.e, !llvm.loop !4798

bb.j:                                             ; preds = %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !4095 ; 2 uses
  %i.cm = and i64 %i.cl, -16
  %i.cn = load ptr, ptr %1, align 8, !tbaa !4070
  %i.co = shl i64 %i.cl, 4
  %i.cp = and i64 %i.co, 240
  %i.cq = ptrtoint ptr %i.cn to i64
  %.neg79 = add i64 %i.cm, -16
  %i.cr = add i64 %i.cp, %i.cq
  %i.cs = sub i64 %.neg79, %i.cr
  %i.ct = load ptr, ptr %0, align 8, !tbaa !4070
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs ; 3 uses
  %i.cv = load <16 x i8>, ptr %i.cu, align 16, !tbaa !14
  %i.cw = icmp slt <16 x i8> %i.cv, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16
  %i.cy = and i16 %i.cx, 16383                    ; 2 uses
  %i.cz = zext nneg i16 %i.cy to i32
  %i.da = icmp ne i16 %i.cy, 0
  tail call void @llvm.assume(i1 %i.da)
  %i.db = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cz, i1 true)
  %i.dc = xor i32 %i.db, 31
  %i.dd = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dd
  %i.dg = icmp ne ptr %i.cu, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = or i64 %i.dh, %i.dd
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.sink = phi i64 [ %i.di, %bb.j ], [ %i.at, %bb.c ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.dj, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox10StringViewEvvvvEEE15rehashBuildFromIRKS8_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %3 = alloca %"struct.std::array.397", align 1   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 4 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 3 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #46
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, %bb.a
  %.0109 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %3, %bb.a ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !4095 ; 2 uses
  %i.i = and i64 %i.h, -16
  %i.j = load ptr, ptr %1, align 8, !tbaa !4070
  %i.k = shl i64 %i.h, 4
  %i.l = and i64 %i.k, 240
  %i.m = ptrtoint ptr %i.j to i64
  %.neg116 = add i64 %i.i, -16
  %i.n = add i64 %i.l, %i.m
  %i.o = sub i64 %.neg116, %i.n
  %i.p = ashr exact i64 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.t = phi i64 [ %i.b, %bb.d ], [ %i.em, %.loopexit ] ; 3 uses
  %.0101 = phi i64 [ %i.p, %bb.d ], [ %i.eo, %.loopexit ] ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !4070
  %i.v = getelementptr inbounds nuw [256 x i8], ptr %i.u, i64 %.0101 ; 7 uses
  %i.w = load <16 x i8>, ptr %i.v, align 16       ; 2 uses
  %i.x = icmp slt <16 x i8> %i.w, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = and i16 %i.y, 16383                      ; 2 uses
  %.sroa.073.0.extract.trunc = zext nneg i16 %i.z to i32 ; 2 uses
  %i.aa = extractelement <16 x i8> %i.w, i64 14
  %i.ab = icmp ult i8 %i.aa, 16
  %.not113125 = icmp eq i16 %i.z, 0               ; 2 uses
  br i1 %i.ab, label %.preheader, label %.preheader117

.preheader117:                                    ; preds = %bb.e
  br i1 %.not113125, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader117
  %i.ac = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.m

.preheader:                                       ; preds = %bb.e
  br i1 %.not113125, label %.loopexit, label %.lr.ph128

.lr.ph128:                                        ; preds = %.preheader
  %i.ae = icmp ne ptr %i.v, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph128, %bb.l
  %i.ag = phi i64 [ %i.t, %.lr.ph128 ], [ %i.cc, %bb.l ]
  %.sroa.12.0127 = phi i32 [ 0, %.lr.ph128 ], [ %.sroa.12.2, %bb.l ] ; 2 uses
  %.sroa.073.0126 = phi i32 [ %.sroa.073.0.extract.trunc, %.lr.ph128 ], [ %.sroa.073.2, %bb.l ] ; 3 uses
  %i.ah = and i32 %.sroa.073.0126, 1
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.g, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.ai = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.073.0126, i1 true) ; 2 uses
  %i.aj = add i32 %.sroa.12.0127, %i.ai
  %i.ak = add nuw nsw i32 %i.ai, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.f, %bb.g
  %.pn114 = phi i32 [ %i.ak, %bb.g ], [ 1, %bb.f ]
  %.sroa.12.2.in = phi i32 [ %i.aj, %bb.g ], [ %.sroa.12.0127, %bb.f ] ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %.sroa.073.2 = lshr i32 %.sroa.073.0126, %.pn114 ; 2 uses
  %i.al = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14  ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 1
  %i.ar = or disjoint i64 %i.aq, 1
  %i.as = and i64 %i.ag, 255                      ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !4070  ; 2 uses
  %i.au = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0101, i64 range(i64 0, 256) %i.as) ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14  ; 2 uses
  %i.ax = icmp ult i8 %i.aw, 14
  br i1 %i.ax, label %._crit_edge.i, label %.lr.ph.i, !prof !2636

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit.i
  %i.ay = phi i64 [ %i.be, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit.i ], [ %i.au, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw [256 x i8], ptr %i.at, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 15 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !4112 ; 2 uses
  %.not.i.i = icmp eq i8 %i.bb, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !4112
  br label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIN8facebook5velox10StringViewEE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.h, %.lr.ph.i
end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE17buildFromF14TableIRKS8_EEvOT_:bb.a
  %.inv.i = icmp samesign ugt i64 %i.b, 1791
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.b, -4611686018427387649
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = add nsw i64 %i.c, -1
  %i.i = udiv i64 %i.h, 12
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = sub nuw nsw i64 64, %i.j
  %i.l = shl nuw nsw i64 1, %i.k
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn21.i = phi i64 [ %i.l, %bb.g ], [ 1, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %.0.pn.i = phi i64 [ 12, %bb.g ], [ %spec.select.i, %bb.d ], [ 2, %bb.c ] ; 2 uses
  %i.m = and i64 %i.b, 255
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !4145
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64                 ; 2 uses
  %i.t = icmp ugt i64 %i.n, %.pn21.i
  %i.u = icmp samesign ult i64 %.0.pn.i, %i.s
  %or.cond = select i1 %i.t, i1 true, i1 %i.u     ; 2 uses
  %.sroa.09.0 = select i1 %or.cond, i64 %.pn21.i, i64 %i.n
  %.sroa.5.0 = select i1 %or.cond, i64 %.0.pn.i, i64 %i.s
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef %.sroa.09.0, i64 noundef %.sroa.5.0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1823
  %i.x = trunc i64 %i.w to i8
  %i.y = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.z = trunc i64 %i.y to i8
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE15directBuildFromIRKS8_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE17buildFromF14TableIRKS9_EEvOT_EUlvE_PFvPS9_EJSG_EvEET2_SE_OT0_DpOT1_.exit unwind label %bb.j

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE15rehashBuildFromIRKS8_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE17buildFromF14TableIRKS9_EEvOT_EUlvE_PFvPS9_EJSG_EvEET2_SE_OT0_DpOT1_.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #43 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE26buildFromF14TableCatchColdEPS8_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEEEEJSA_ESB_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.k, !inline_history !4843

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEEEEJSA_ESB_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.j
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE17buildFromF14TableIRKS9_EEvOT_EUlvE_PFvPS9_EJSG_EvEET2_SE_OT0_DpOT1_.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ae

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #44
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE17buildFromF14TableIRKS9_EEvOT_EUlvE_PFvPS9_EJSG_EvEET2_SE_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEEEEJSA_ESB_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.i, %bb.h, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE26buildFromF14TableCatchColdEPS8_(ptr noundef %0) local_unnamed_addr #40 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #43
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #43
  tail call void @__cxa_rethrow() #47
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE15directBuildFromIRKS8_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE9itemCountEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.e = and i64 %i.d, 255                        ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !4145   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = and i8 %i.h, 15
  %i.j = zext nneg i8 %i.i to i64                 ; 2 uses
  %i.k = icmp eq i64 %i.e, 0                      ; 2 uses
  %i.l = shl i64 14, %i.e
  %spec.select = select i1 %i.k, i64 %i.j, i64 %i.l
  %i.m = and i64 %i.b, 255                        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE9itemCountEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !4145
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 15
  %i.s = zext nneg i8 %i.r to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE9itemCountEv.exit58

bb.b:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE9itemCountEv.exit
  %i.t = shl i64 14, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE9itemCountEv.exit58

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE9itemCountEv.exit58: ; preds = %bb.a, %bb.b
  %.0.i57 = phi i64 [ %i.s, %bb.a ], [ %i.t, %bb.b ]
  %i.u = icmp eq i64 %spec.select, %.0.i57
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE9itemCountEv.exit58
  %i.v = shl nuw nsw i64 %i.j, 4
  %i.w = add nuw nsw i64 %i.v, 16
  %i.x = shl i64 256, %i.e
  %.0.i59 = select i1 %i.k, i64 %i.w, i64 %i.x
  %i.y = load ptr, ptr %1, align 8, !tbaa !4145
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 16 %i.y, i64 %.0.i59, i1 false)
  %i.z = load i64, ptr %i.a, align 8, !tbaa !1823
  %i.aa = and i64 %i.z, -256
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1823
  %i.ac = and i64 %i.ab, 255
  %i.ad = or disjoint i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.c, align 8, !tbaa !1823
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !4169 ; 2 uses
  %i.ag = and i64 %i.af, -16
  %i.ah = and i64 %i.af, 15                       ; 3 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !4145
  %i.aj = load ptr, ptr %1, align 8, !tbaa !4145
  %i.ak = ptrtoint ptr %i.aj to i64
  %.neg82 = add i64 %i.ag, -16
  %i.al = shl nuw nsw i64 %i.ah, 4
  %i.am = add i64 %i.al, %i.ak
  %i.an = sub i64 %.neg82, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ah
  %i.ar = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = or i64 %i.ah, %i.as
  br label %bb.k

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE9itemCountEv.exit58
  %i.au = load ptr, ptr %1, align 8, !tbaa !4145
  %i.av = shl nuw i64 1, %i.e                     ; 2 uses
  %i.aw = getelementptr [256 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr [256 x i8], ptr %i.f, i64 %i.av
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ay = phi i64 [ %i.b, %bb.d ], [ %i.ci, %._crit_edge ]
  %i.az = phi i64 [ %i.d, %bb.d ], [ %i.cj, %._crit_edge ]
  %.pn48 = phi ptr [ %i.ax, %bb.d ], [ %.044, %._crit_edge ] ; 4 uses
  %.pn47 = phi ptr [ %i.aw, %bb.d ], [ %.043, %._crit_edge ] ; 4 uses
  %.044 = getelementptr i8, ptr %.pn48, i64 -256  ; 2 uses
  %.043 = getelementptr i8, ptr %.pn47, i64 -256  ; 4 uses
  %i.ba = getelementptr i8, ptr %.pn47, i64 -242
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !4146
  %i.bc = and i8 %i.bb, -16
  %i.bd = getelementptr i8, ptr %.pn48, i64 -242  ; 2 uses
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !4146
  %i.bf = add i8 %i.be, %i.bc
  store i8 %i.bf, ptr %i.bd, align 2, !tbaa !4146
  %i.bg = getelementptr i8, ptr %.pn47, i64 -241
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !4186
  %i.bi = getelementptr i8, ptr %.pn48, i64 -241
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !4186
  %i.bj = load <16 x i8>, ptr %.043, align 16, !tbaa !14
  %i.bk = icmp slt <16 x i8> %i.bj, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = and i16 %i.bl, 16383                    ; 2 uses
  %.not7783 = icmp eq i16 %i.bm, 0
  br i1 %.not7783, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %.sroa.062.0.extract.trunc = zext nneg i16 %i.bm to i32
  %i.bn = icmp ne ptr %.043, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr i8, ptr %.pn47, i64 -240
  %i.bp = getelementptr i8, ptr %.pn48, i64 -240
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit
  %.04586 = phi i64 [ 0, %.lr.ph ], [ %i.ch, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.085 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit ] ; 2 uses
  %.sroa.062.084 = phi i32 [ %.sroa.062.0.extract.trunc, %.lr.ph ], [ %.sroa.062.1, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit ] ; 3 uses
  %i.bq = and i32 %.sroa.062.084, 1
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.br = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.062.084, i1 true) ; 2 uses
  %i.bs = add i32 %.sroa.8.085, %i.br
  %i.bt = add nuw nsw i32 %i.br, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.pn = phi i32 [ %i.bt, %bb.g ], [ 1, %bb.f ]
  %.sroa.8.1.in = phi i32 [ %i.bs, %bb.g ], [ %.sroa.8.085, %bb.f ] ; 2 uses
  %i.bu = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.04586 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !4183
  %i.bx = getelementptr inbounds nuw i8, ptr %.044, i64 %.04586 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.1) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit: ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %.043, i64 %i.bu
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !14
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %.sroa.062.1 = lshr i32 %.sroa.062.084, %.pn    ; 2 uses
  store i8 %i.cb, ptr %i.bx, align 1, !tbaa !14
  %i.cc = load i64, ptr %i.c, align 8, !tbaa !1823 ; 2 uses
  %i.cd = and i64 %i.cc, -256
  %i.ce = add i64 %i.cd, 256
  %i.cf = and i64 %i.cc, 255
  %i.cg = or disjoint i64 %i.ce, %i.cf            ; 2 uses
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !1823
  %i.ch = add i64 %.04586, 1
  %.not77 = icmp eq i32 %.sroa.062.1, 0
  br i1 %.not77, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !4844

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1823
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.ci = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ay, %bb.e ] ; 2 uses
  %i.cj = phi i64 [ %i.cg, %._crit_edge.loopexit ], [ %i.az, %bb.e ] ; 2 uses
  %.not.unshifted = xor i64 %i.ci, %i.cj
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %bb.j, label %bb.e, !llvm.loop !4845

bb.j:                                             ; preds = %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !4169 ; 2 uses
  %i.cm = and i64 %i.cl, -16
  %i.cn = load ptr, ptr %1, align 8, !tbaa !4145
  %i.co = shl i64 %i.cl, 4
  %i.cp = and i64 %i.co, 240
  %i.cq = ptrtoint ptr %i.cn to i64
  %.neg79 = add i64 %i.cm, -16
  %i.cr = add i64 %i.cp, %i.cq
  %i.cs = sub i64 %.neg79, %i.cr
  %i.ct = load ptr, ptr %0, align 8, !tbaa !4145
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs ; 3 uses
  %i.cv = load <16 x i8>, ptr %i.cu, align 16, !tbaa !14
  %i.cw = icmp slt <16 x i8> %i.cv, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16
  %i.cy = and i16 %i.cx, 16383                    ; 2 uses
  %i.cz = zext nneg i16 %i.cy to i32
  %i.da = icmp ne i16 %i.cy, 0
  tail call void @llvm.assume(i1 %i.da)
  %i.db = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cz, i1 true)
  %i.dc = xor i32 %i.db, 31
  %i.dd = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dd
  %i.dg = icmp ne ptr %i.cu, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = or i64 %i.dh, %i.dd
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.sink = phi i64 [ %i.di, %bb.j ], [ %i.at, %bb.c ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.dj, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIN8facebook5velox9TimestampEvvvvEEE15rehashBuildFromIRKS8_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.397", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1823 ; 2 uses
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 3 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !38

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #47
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #46
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, %bb.a
  %.0109 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %2, %bb.a ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0109, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !4169 ; 2 uses
  %i.i = and i64 %i.h, -16
  %i.j = load ptr, ptr %1, align 8, !tbaa !4145
  %i.k = shl i64 %i.h, 4
  %i.l = and i64 %i.k, 240
  %i.m = ptrtoint ptr %i.j to i64
  %.neg116 = add i64 %i.i, -16
  %i.n = add i64 %i.l, %i.m
  %i.o = sub i64 %.neg116, %i.n
  %i.p = ashr exact i64 %i.o, 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.r = phi i64 [ %i.b, %bb.d ], [ %i.en, %.loopexit ] ; 4 uses
  %.0101 = phi i64 [ %i.p, %bb.d ], [ %i.ep, %.loopexit ] ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !4145
  %i.t = getelementptr inbounds nuw [256 x i8], ptr %i.s, i64 %.0101 ; 7 uses
  %i.u = load <16 x i8>, ptr %i.t, align 16       ; 2 uses
  %i.v = icmp slt <16 x i8> %i.u, zeroinitializer
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = and i16 %i.w, 16383                      ; 2 uses
  %.sroa.073.0.extract.trunc = zext nneg i16 %i.x to i32 ; 2 uses
  %i.y = extractelement <16 x i8> %i.u, i64 14
  %i.z = icmp ult i8 %i.y, 16
  %.not113125 = icmp eq i16 %i.x, 0               ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader117

.preheader117:                                    ; preds = %bb.e
  br i1 %.not113125, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader117
  %i.aa = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %bb.m

.preheader:                                       ; preds = %bb.e
  br i1 %.not113125, label %.loopexit, label %.lr.ph128

.lr.ph128:                                        ; preds = %.preheader
  %i.ac = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph128, %bb.l
  %i.ae = phi i64 [ %i.r, %.lr.ph128 ], [ %i.ca, %bb.l ]
  %.sroa.12.0127 = phi i32 [ 0, %.lr.ph128 ], [ %.sroa.12.2, %bb.l ] ; 2 uses
  %.sroa.073.0126 = phi i32 [ %.sroa.073.0.extract.trunc, %.lr.ph128 ], [ %.sroa.073.2, %bb.l ] ; 3 uses
  %i.af = and i32 %.sroa.073.0126, 1
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.g, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.ag = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.073.0126, i1 true) ; 2 uses
  %i.ah = add i32 %.sroa.12.0127, %i.ag
  %i.ai = add nuw nsw i32 %i.ag, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.f, %bb.g
  %.pn114 = phi i32 [ %i.ai, %bb.g ], [ 1, %bb.f ]
  %.sroa.12.2.in = phi i32 [ %i.ah, %bb.g ], [ %.sroa.12.0127, %bb.f ] ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %.sroa.073.2 = lshr i32 %.sroa.073.0126, %.pn114 ; 2 uses
  %i.aj = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aj
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14  ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = or disjoint i64 %i.ao, 1
  %i.aq = and i64 %i.ae, 255                      ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !4145  ; 2 uses
  %i.as = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0101, i64 range(i64 0, 256) %i.aq) ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14  ; 2 uses
  %i.av = icmp ult i8 %i.au, 14
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i, !prof !2636

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE25incrOutboundOverflowCountEv.exit.i
  %i.aw = phi i64 [ %i.bc, %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE25incrOutboundOverflowCountEv.exit.i ], [ %i.as, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [256 x i8], ptr %i.ar, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !4186 ; 2 uses
  %.not.i.i = icmp eq i8 %i.az, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE25incrOutboundOverflowCountEv.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !4186
  br label %_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIN8facebook5velox9TimestampEE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.h, %.lr.ph.i
  %i.bb = add i64 %i.ap, %i.aw
  %i.bc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bb, i64 range(i64 0, 256) %i.aq) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0109, i64 %i.bc
end_hunk_9
