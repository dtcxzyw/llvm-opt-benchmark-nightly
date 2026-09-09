Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/RegexMatchCache?download=true
inline.NumInlined: 9173
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZNK5folly15RegexMatchCache11InspectView5printERSo:bb.a
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.ad
  %.01422.i.i.i = phi i64 [ %i.jn, %bb.ad ], [ 0, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %i.jf = lshr i64 %.01422.i.i.i, 6
  %i.jg = and i64 %.01422.i.i.i, 63
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i98779, i64 %i.jf
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !19676, !noalias !20420
  %i.jj = lshr i64 %i.ji, %i.jg                   ; 2 uses
  %.not.i.i.i102 = icmp eq i64 %i.jj, 0
  br i1 %.not.i.i.i102, label %bb.ad, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.jk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jj, i1 true)
  %i.jl = add i64 %i.jk, %.01422.i.i.i
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.jm = and i64 %.01422.i.i.i, -64
  %i.jn = add i64 %i.jm, 64                       ; 3 uses
  %i.jo = icmp ult i64 %i.jn, %.sroa.3.0.i.i.i97777
  br i1 %i.jo, label %.lr.ph.i.i.i, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, !llvm.loop !720

_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit: ; preds = %bb.ad, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, %.thread.i.i.i
  %.sroa.0.0.i.i.i98780 = phi ptr [ %.sroa.0.0.i.i.i98779, %.thread.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %.sroa.0.0.i.i.i98779, %bb.ad ]
  %.sroa.3.0.i.i.i97778 = phi i64 [ %.sroa.3.0.i.i.i97777, %.thread.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %.sroa.3.0.i.i.i97777, %bb.ad ] ; 4 uses
  %.2.i.i.i = phi i64 [ %i.jl, %.thread.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.jn, %bb.ad ] ; 2 uses
  %.not447603 = icmp eq i64 %.2.i.i.i, %.sroa.3.0.i.i.i97778
  br i1 %.not447603, label %._crit_edge606, label %.lr.ph605

._crit_edge606:                                   ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit
  %i.jp = getelementptr inbounds i8, ptr %.sroa.0423.0609, i64 -16
  %.neg.i.i.i107 = mul nsw i64 %.sroa.9426.0608, -16
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 %.neg.i.i.i107 ; 2 uses
  %.not19.i5.i108 = icmp eq i64 %.sroa.9426.0608, 0
  br i1 %.not19.i5.i108, label %.critedge.i.i113.preheader, label %thread-pre-split.i109

.critedge.i.i113.preheader:                       ; preds = %bb.ae, %._crit_edge606
  br label %.critedge.i.i113

bb.ae:                                            ; preds = %thread-pre-split.i109
  %.not19.i.i111 = icmp eq i64 %i.jt, 0
  br i1 %.not19.i.i111, label %.critedge.i.i113.preheader, label %thread-pre-split.i109

thread-pre-split.i109:                            ; preds = %._crit_edge606, %bb.ae
  %i.jr = phi i64 [ %i.jt, %bb.ae ], [ %.sroa.9426.0608, %._crit_edge606 ]
  %i.js = phi ptr [ %i.ju, %bb.ae ], [ %.sroa.0423.0609, %._crit_edge606 ]
  %i.jt = add nsw i64 %i.jr, -1                   ; 4 uses
  %i.ju = getelementptr inbounds i8, ptr %i.js, i64 -16 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jt
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !19682
  %.not.i110 = icmp eq i8 %i.jw, 0
  br i1 %.not.i110, label %bb.ae, label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit, !prof !19683, !llvm.loop !715

.critedge.i.i113:                                 ; preds = %.critedge.i.i113.preheader, %bb.af
  %.017.i.i114 = phi ptr [ %i.ka, %bb.af ], [ %i.jq, %.critedge.i.i113.preheader ] ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.017.i.i114, i64 14
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !19682
  %i.jz = and i8 %i.jy, 15
  %.not2.i115 = icmp eq i8 %i.jz, 0
  br i1 %.not2.i115, label %bb.af, label %._crit_edge611, !prof !19685

bb.af:                                            ; preds = %.critedge.i.i113
  %i.ka = getelementptr inbounds i8, ptr %.017.i.i114, i64 -256 ; 4 uses
  %i.kb = load <16 x i8>, ptr %i.ka, align 16, !tbaa !19682
  %i.kc = icmp eq <16 x i8> %i.kb, zeroinitializer
  %i.kd = bitcast <16 x i1> %i.kc to i16
  %i.ke = and i16 %i.kd, 16383                    ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %.017.i.i114, i64 -512
  call void @llvm.prefetch.p0(ptr nonnull %i.kf, i32 0, i32 3, i32 1)
  %.not3.i117 = icmp eq i16 %i.ke, 16383
  br i1 %.not3.i117, label %.critedge.i.i113, label %bb.ag, !prof !19683, !llvm.loop !716

bb.ag:                                            ; preds = %bb.af
  %i.kg = xor i16 %i.ke, 16383
  %i.kh = zext nneg i16 %i.kg to i32
  %i.ki = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kh, i1 true)
  %i.kj = xor i32 %i.ki, 31
  %i.kk = zext nneg i32 %i.kj to i64              ; 2 uses
  %i.kl = icmp ne ptr %i.ka, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.kl)
  %i.km = shl nuw nsw i64 %i.kk, 4
  %i.kn = getelementptr i8, ptr %i.ka, i64 %i.km
  %i.ko = getelementptr i8, ptr %i.kn, i64 16
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit

_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit: ; preds = %thread-pre-split.i109, %bb.ag
  %.sroa.9426.3 = phi i64 [ %i.kk, %bb.ag ], [ %i.jt, %thread-pre-split.i109 ]
  %.sroa.0423.1 = phi ptr [ %i.ko, %bb.ag ], [ %i.ju, %thread-pre-split.i109 ] ; 2 uses
  %.not442 = icmp eq ptr %.sroa.0423.1, null
  br i1 %.not442, label %._crit_edge611, label %bb.z

.loopexit474:                                     ; preds = %bb.z, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91, %bb.ac, %.noexc290, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i287, %.noexc292
  %lpad.loopexit476 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp475:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp477 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp475, %.loopexit474
  %lpad.phi478 = phi { ptr, i32 } [ %lpad.loopexit476, %.loopexit474 ], [ %lpad.loopexit.split-lp477, %.loopexit.split-lp475 ]
  %i.kp = load ptr, ptr %12, align 8, !tbaa !19672 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.bs
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.ah
  %i.kr = load i64, ptr %i.bs, align 8, !tbaa !19682
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %common.resume

.lr.ph605:                                        ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit
  %.sroa.7415.0604 = phi i64 [ %.2.i.i, %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit ], [ %.2.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit ] ; 5 uses
  %i.kt = load ptr, ptr %0, align 8, !tbaa !20410, !nonnull !1339, !align !19737 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 56
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !19695 ; 3 uses
  %i.kw = icmp ult i64 %i.kv, 512
  br i1 %i.kw, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph605
  %i.kx = icmp samesign ult i64 %i.kv, 256
  br i1 %i.kx, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 64
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !19767
  %i.la = and i64 %i.kz, -16
  %i.lb = inttoptr i64 %i.la to ptr               ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 16, !tbaa !19676
  %i.ld = icmp eq i64 %.sroa.7415.0604, %i.lc
  br i1 %i.ld, label %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i

bb.ak:                                            ; preds = %.lr.ph605
  %i.le = getelementptr inbounds nuw i8, ptr %i.kt, i64 48
  %i.lf = zext i64 %.sroa.7415.0604 to i128
  %i.lg = mul nuw i128 %i.lf, 14181476777654086739
  %i.lh = lshr i128 %i.lg, 64
  %i.li = trunc nuw i128 %i.lh to i64
  %i.lj = mul i64 %.sroa.7415.0604, -4265267296055464877
  %i.lk = xor i64 %i.lj, %i.li
  %i.ll = mul i64 %i.lk, -4265267296055464877     ; 2 uses
  %i.lm = lshr i64 %i.ll, 14
  %i.ln = and i64 %i.lm, 255
  %i.lo = lshr i64 %i.ll, 22
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ln, i64 1) ; 2 uses
  %i.lp = shl nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  %i.lq = or disjoint i64 %i.lp, 1
  %i.lr = trunc nuw i64 %.sroa.speculated.i.i.i.i to i8
  %i.ls = insertelement <16 x i8> poison, i8 %i.lr, i64 0
  %i.lt = shufflevector <16 x i8> %i.ls, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.lu = and i64 %i.kv, 255                      ; 2 uses
  %i.lv = shl nuw i64 1, %i.lu
  %notmask.i.i = shl nsw i64 -1, %i.lu
  %i.lw = xor i64 %notmask.i.i, -1
  %i.lx = load ptr, ptr %i.le, align 8, !tbaa !19691
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.024.i62.i = phi i64 [ %i.lv, %bb.ak ], [ %i.mv, %bb.an ]
  %.026.i61.i = phi i64 [ %i.lo, %bb.ak ], [ %i.mw, %bb.an ] ; 2 uses
  %i.ly = and i64 %.026.i61.i, %i.lw
  %i.lz = shl nsw i64 %i.ly, 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lz ; 4 uses
  %i.mb = getelementptr i8, ptr %i.ma, i64 144
  call void @llvm.prefetch.p0(ptr %i.mb, i32 0, i32 3, i32 1)
  %i.mc = load <16 x i8>, ptr %i.ma, align 16     ; 2 uses
  %i.md = icmp eq <16 x i8> %i.mc, %i.lt
  %i.me = bitcast <16 x i1> %i.md to i16
  %i.mf = zext i16 %i.me to i32                   ; 2 uses
  %i.mg = and i32 %i.mf, 16383
  %.not.i121 = icmp eq i32 %i.mg, 0
  %i.mh = extractelement <16 x i8> %i.mc, i64 15
  br i1 %.not.i121, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.al
  %i.mi = icmp ne ptr %i.ma, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.mi)
  br label %bb.am

bb.am:                                            ; preds = %.critedge.i.i122, %.preheader.i
  %.sroa.019.0.i = phi i32 [ %i.ms, %.critedge.i.i122 ], [ %i.mf, %.preheader.i ] ; 4 uses
  %i.mj = icmp ne i32 %.sroa.019.0.i, 0
  call void @llvm.assume(i1 %i.mj)
  %i.mk = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.i, i1 true)
  %i.ml = shl nuw nsw i32 %i.mk, 4
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr i8, ptr %i.ma, i64 %i.mm  ; 2 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 16
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !19676
  %i.mq = icmp eq i64 %.sroa.7415.0604, %i.mp
  br i1 %i.mq, label %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit.loopexit, label %.critedge.i.i122, !prof !19685

.critedge.i.i122:                                 ; preds = %bb.am
  %i.mr = add nsw i32 %.sroa.019.0.i, -1
  %i.ms = and i32 %i.mr, %.sroa.019.0.i           ; 2 uses
  %i.mt = and i32 %i.ms, 16382
  %.not58.i = icmp eq i32 %i.mt, 0
  br i1 %.not58.i, label %.loopexit.i, label %bb.am, !llvm.loop !721

.loopexit.i:                                      ; preds = %.critedge.i.i122, %bb.al
  %i.mu = icmp eq i8 %i.mh, 0
  br i1 %i.mu, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i, label %bb.an, !prof !19685

bb.an:                                            ; preds = %.loopexit.i
  %i.mv = add i64 %.024.i62.i, -1                 ; 2 uses
  %i.mw = add i64 %i.lq, %.026.i61.i
  %.not.i.i = icmp eq i64 %i.mv, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i, label %bb.al, !llvm.loop !722

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i: ; preds = %bb.aj, %bb.ai, %bb.an, %.loopexit.i
  call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.12) #20
  unreachable

_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit.loopexit: ; preds = %bb.am
  %i.mx = getelementptr i8, ptr %i.mn, i64 16
  br label %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit

_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit: ; preds = %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit.loopexit, %bb.aj
  %.sroa.018.149.i = phi ptr [ %i.lb, %bb.aj ], [ %i.mx, %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit.loopexit ]
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.018.149.i, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !19769
  %i.na = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  %.val70.val = load ptr, ptr %i.bt, align 8, !tbaa !20415 ; 2 uses
  %i.nb = load ptr, ptr %.val70.val, align 8, !tbaa !797, !noalias !20421
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !noalias !20421
  %i.ne = call { i64, ptr } %i.nd(ptr noundef nonnull align 8 dereferenceable(8) %.val70.val, ptr noundef nonnull align 8 dereferenceable(32) %i.mz), !noalias !20421, !call_target !809, !inline_history !20371 ; 2 uses
  %i.nf = extractvalue { i64, ptr } %i.ne, 0
  %i.ng = extractvalue { i64, ptr } %i.ne, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40, !noalias !20422
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nf
  store ptr %i.bu, ptr %5, align 8, !tbaa !19764, !alias.scope !20423, !noalias !20422
  store i64 0, ptr %i.bv, align 8, !tbaa !19673, !alias.scope !20423, !noalias !20422
  store i8 0, ptr %i.bu, align 8, !tbaa !19682, !alias.scope !20423, !noalias !20422
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.ng, ptr %i.nh, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc1.i299 unwind label %bb.ao, !noalias !20422

bb.ao:                                            ; preds = %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit
  %i.ni = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nj = load ptr, ptr %5, align 8, !tbaa !19672, !alias.scope !20423, !noalias !20422 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.bu
  br i1 %i.nk, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i295: ; preds = %bb.ao
  %i.nl = load i64, ptr %i.bu, align 8, !tbaa !19682, !alias.scope !20423, !noalias !20422
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #41, !noalias !20422
  br label %common.resume

.noexc1.i299:                                     ; preds = %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !20424
  %i.nn = load ptr, ptr %5, align 8, !tbaa !19672, !noalias !20422
  %i.no = load i64, ptr %i.bv, align 8, !tbaa !19673, !noalias !20422
  %i.np = ptrtoint ptr %i.nn to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i300 = zext i64 %i.no to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i301 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i300, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i302 = zext i64 %i.np to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i303 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i301, %.sroa.01.sroa.0.0.insert.ext.i.i302
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i303, ptr %4, align 16, !noalias !20424
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %4)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %.noexc1.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !20424
  %i.nq = load ptr, ptr %5, align 8, !tbaa !19672, !noalias !20422 ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.bu
  br i1 %i.nr, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i307: ; preds = %bb.ap
  %i.ns = load i64, ptr %i.bu, align 8, !tbaa !19682, !noalias !20422
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nt) #41
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit309

bb.aq:                                            ; preds = %.noexc1.i299
  %i.nu = landingpad { ptr, i32 }
          cleanup
  %i.nv = load ptr, ptr %5, align 8, !tbaa !19672, !noalias !20422 ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.bu
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i304: ; preds = %bb.aq
  %i.nx = load i64, ptr %i.bu, align 8, !tbaa !19682, !noalias !20422
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i305: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i304
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !20422
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit309: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !20422
  %i.nz = load ptr, ptr %13, align 8, !tbaa !19672
  %i.oa = load i64, ptr %i.bw, align 8, !tbaa !19673
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.nz, i64 noundef %i.oa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit123 unwind label %.loopexit469 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit123: ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit309
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !797
  %i.od = getelementptr i8, ptr %i.oc, i64 -24
  %i.oe = load i64, ptr %i.od, align 8
  %i.of = getelementptr inbounds i8, ptr %i.ob, i64 %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 240
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !20411 ; 6 uses
  %.not.i.i.i310 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i.i310, label %bb.ar, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i311

bb.ar:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit123
  invoke void @_ZSt16__throw_bad_castv() #43
          to label %.noexc315 unwind label %.loopexit.split-lp470

.noexc315:                                        ; preds = %bb.ar
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i311: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit123
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 56
  %i.oj = load i8, ptr %i.oi, align 8, !tbaa !19758
  %.not.i1.i.i312 = icmp eq i8 %i.oj, 0
  br i1 %.not.i1.i.i312, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i311
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 67
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !19682
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i313

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i311
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.oh)
          to label %.noexc316 unwind label %.loopexit469

.noexc316:                                        ; preds = %bb.at
  %i.om = load ptr, ptr %i.oh, align 8, !tbaa !797
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 48
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = invoke noundef signext i8 %i.oo(ptr noundef nonnull align 8 dereferenceable(570) %i.oh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i313 unwind label %.loopexit469, !inline_history !20372

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i313: ; preds = %.noexc316, %bb.as
  %.0.i.i.i314 = phi i8 [ %i.ol, %bb.as ], [ %i.op, %.noexc316 ]
  %i.oq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ob, i8 noundef signext %.0.i.i.i314)
          to label %.noexc318 unwind label %.loopexit469

.noexc318:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i313
  %i.or = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oq)
          to label %_ZNSolsEPFRSoS_E.exit124 unwind label %.loopexit469 ; 0 uses

_ZNSolsEPFRSoS_E.exit124:                         ; preds = %.noexc318
  %i.os = load ptr, ptr %13, align 8, !tbaa !19672 ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.bx
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNSolsEPFRSoS_E.exit124
  %i.ou = load i64, ptr %i.bx, align 8, !tbaa !19682
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSolsEPFRSoS_E.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  %i.ow = add i64 %.sroa.7415.0604, 1             ; 3 uses
  %i.ox = icmp ult i64 %i.ow, %.sroa.3.0.i.i.i97778
  br i1 %i.ox, label %.lr.ph.i.i, label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %bb.au
  %.01422.i.i = phi i64 [ %i.pg, %bb.au ], [ %i.ow, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ] ; 4 uses
  %i.oy = lshr i64 %.01422.i.i, 6
  %i.oz = and i64 %.01422.i.i, 63
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i98780, i64 %i.oy
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !19676
  %i.pc = lshr i64 %i.pb, %i.oz                   ; 2 uses
  %.not.i.i128 = icmp eq i64 %i.pc, 0
  br i1 %.not.i.i128, label %bb.au, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.pd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pc, i1 true)
  %i.pe = add i64 %i.pd, %.01422.i.i
  br label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit

bb.au:                                            ; preds = %.lr.ph.i.i
  %i.pf = and i64 %.01422.i.i, -64
  %i.pg = add i64 %i.pf, 64                       ; 3 uses
  %i.ph = icmp ult i64 %i.pg, %.sroa.3.0.i.i.i97778
  br i1 %i.ph, label %.lr.ph.i.i, label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit, !llvm.loop !720

_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit: ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %.thread.i.i
  %.2.i.i = phi i64 [ %i.pe, %.thread.i.i ], [ %i.ow, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %i.pg, %bb.au ] ; 2 uses
  %.not447 = icmp eq i64 %.2.i.i, %.sroa.3.0.i.i.i97778
  br i1 %.not447, label %._crit_edge606, label %.lr.ph605

.loopexit469:                                     ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit309, %bb.at, %.noexc316, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i313, %.noexc318
  %lpad.loopexit471 = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZNK5folly15RegexMatchCache11InspectView5printERSo:bb.a
  br label %.lr.ph.i.i.i158

.lr.ph.i.i.i158:                                  ; preds = %.lr.ph.i.i.i158.preheader, %bb.bd
  %.01422.i.i.i159 = phi i64 [ %i.sn, %bb.bd ], [ 0, %.lr.ph.i.i.i158.preheader ] ; 4 uses
  %i.sf = lshr i64 %.01422.i.i.i159, 6
  %i.sg = and i64 %.01422.i.i.i159, 63
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i146789, i64 %i.sf
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !19676, !noalias !20425
  %i.sj = lshr i64 %i.si, %i.sg                   ; 2 uses
  %.not.i.i.i160 = icmp eq i64 %i.sj, 0
  br i1 %.not.i.i.i160, label %bb.bd, label %.thread.i.i.i161

.thread.i.i.i161:                                 ; preds = %.lr.ph.i.i.i158
  %i.sk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sj, i1 true)
  %i.sl = add i64 %i.sk, %.01422.i.i.i159
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit163

bb.bd:                                            ; preds = %.lr.ph.i.i.i158
  %i.sm = and i64 %.01422.i.i.i159, -64
  %i.sn = add i64 %i.sm, 64                       ; 3 uses
  %i.so = icmp ult i64 %i.sn, %.sroa.3.0.i.i.i145787
  br i1 %i.so, label %.lr.ph.i.i.i158, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit163, !llvm.loop !720

_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit163: ; preds = %bb.bd, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit152, %.thread.i.i.i161
  %.sroa.0.0.i.i.i146790 = phi ptr [ %.sroa.0.0.i.i.i146789, %.thread.i.i.i161 ], [ %.sroa.0.0.copyload.i.i.i149, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit152 ], [ %.sroa.0.0.i.i.i146789, %bb.bd ]
  %.sroa.3.0.i.i.i145788 = phi i64 [ %.sroa.3.0.i.i.i145787, %.thread.i.i.i161 ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit152 ], [ %.sroa.3.0.i.i.i145787, %bb.bd ] ; 4 uses
  %.2.i.i.i162 = phi i64 [ %i.sl, %.thread.i.i.i161 ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit152 ], [ %i.sn, %bb.bd ] ; 2 uses
  %.not446613 = icmp eq i64 %.2.i.i.i162, %.sroa.3.0.i.i.i145788
  br i1 %.not446613, label %._crit_edge616, label %.lr.ph615

._crit_edge616:                                   ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit207, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit163
  %i.sp = getelementptr inbounds i8, ptr %.sroa.0406.0619, i64 -16
  %.neg.i.i.i168 = mul nsw i64 %.sroa.9.0618, -16
  %i.sq = getelementptr inbounds i8, ptr %i.sp, i64 %.neg.i.i.i168 ; 2 uses
  %.not19.i5.i169 = icmp eq i64 %.sroa.9.0618, 0
  br i1 %.not19.i5.i169, label %.critedge.i.i174.preheader, label %thread-pre-split.i170

.critedge.i.i174.preheader:                       ; preds = %bb.be, %._crit_edge616
  br label %.critedge.i.i174

bb.be:                                            ; preds = %thread-pre-split.i170
  %.not19.i.i172 = icmp eq i64 %i.st, 0
  br i1 %.not19.i.i172, label %.critedge.i.i174.preheader, label %thread-pre-split.i170

thread-pre-split.i170:                            ; preds = %._crit_edge616, %bb.be
  %i.sr = phi i64 [ %i.st, %bb.be ], [ %.sroa.9.0618, %._crit_edge616 ]
  %i.ss = phi ptr [ %i.su, %bb.be ], [ %.sroa.0406.0619, %._crit_edge616 ]
  %i.st = add nsw i64 %i.sr, -1                   ; 4 uses
  %i.su = getelementptr inbounds i8, ptr %i.ss, i64 -16 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.st
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !19682
  %.not.i171 = icmp eq i8 %i.sw, 0
  br i1 %.not.i171, label %bb.be, label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit, !prof !19683, !llvm.loop !723

.critedge.i.i174:                                 ; preds = %.critedge.i.i174.preheader, %bb.bf
  %.017.i.i175 = phi ptr [ %i.ta, %bb.bf ], [ %i.sq, %.critedge.i.i174.preheader ] ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.017.i.i175, i64 14
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !19682
  %i.sz = and i8 %i.sy, 15
  %.not2.i176 = icmp eq i8 %i.sz, 0
  br i1 %.not2.i176, label %bb.bf, label %._crit_edge621, !prof !19685

bb.bf:                                            ; preds = %.critedge.i.i174
  %i.ta = getelementptr inbounds i8, ptr %.017.i.i175, i64 -256 ; 4 uses
  %i.tb = load <16 x i8>, ptr %i.ta, align 16, !tbaa !19682
  %i.tc = icmp eq <16 x i8> %i.tb, zeroinitializer
  %i.td = bitcast <16 x i1> %i.tc to i16
  %i.te = and i16 %i.td, 16383                    ; 2 uses
  %i.tf = getelementptr inbounds i8, ptr %.017.i.i175, i64 -512
  call void @llvm.prefetch.p0(ptr nonnull %i.tf, i32 0, i32 3, i32 1)
  %.not3.i178 = icmp eq i16 %i.te, 16383
  br i1 %.not3.i178, label %.critedge.i.i174, label %bb.bg, !prof !19683, !llvm.loop !724

bb.bg:                                            ; preds = %bb.bf
  %i.tg = xor i16 %i.te, 16383
  %i.th = zext nneg i16 %i.tg to i32
  %i.ti = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.th, i1 true)
  %i.tj = xor i32 %i.ti, 31
  %i.tk = zext nneg i32 %i.tj to i64              ; 2 uses
  %i.tl = icmp ne ptr %i.ta, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.tl)
  %i.tm = shl nuw nsw i64 %i.tk, 4
  %i.tn = getelementptr i8, ptr %i.ta, i64 %i.tm
  %i.to = getelementptr i8, ptr %i.tn, i64 16
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit

_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit: ; preds = %thread-pre-split.i170, %bb.bg
  %.sroa.9.3 = phi i64 [ %i.tk, %bb.bg ], [ %i.st, %thread-pre-split.i170 ]
  %.sroa.0406.1 = phi ptr [ %i.to, %bb.bg ], [ %i.su, %thread-pre-split.i170 ] ; 2 uses
  %.not443 = icmp eq ptr %.sroa.0406.1, null
  br i1 %.not443, label %._crit_edge621, label %bb.az

.loopexit462:                                     ; preds = %bb.az, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit139, %bb.bc, %.noexc333, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i330, %.noexc335
  %lpad.loopexit464 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp463:                            ; preds = %bb.ba
  %lpad.loopexit.split-lp465 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %.loopexit.split-lp463, %.loopexit462
  %lpad.phi466 = phi { ptr, i32 } [ %lpad.loopexit464, %.loopexit462 ], [ %lpad.loopexit.split-lp465, %.loopexit.split-lp463 ]
  %i.tp = load ptr, ptr %14, align 8, !tbaa !19672 ; 2 uses
  %i.tq = icmp eq ptr %i.tp, %i.hr
  br i1 %i.tq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.bh
  %i.tr = load i64, ptr %i.hr, align 8, !tbaa !19682
  %i.ts = add i64 %i.tr, 1
  call void @_ZdlPvm(ptr noundef %i.tp, i64 noundef %i.ts) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %common.resume

.lr.ph615:                                        ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit163, %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit207
  %.sroa.7.0614 = phi i64 [ %.2.i.i202, %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit207 ], [ %.2.i.i.i162, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit163 ] ; 5 uses
  %i.tt = load ptr, ptr %0, align 8, !tbaa !20410, !nonnull !1339, !align !19737 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 56
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !19695 ; 3 uses
  %i.tw = icmp ult i64 %i.tv, 512
  br i1 %i.tw, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.lr.ph615
  %i.tx = icmp samesign ult i64 %i.tv, 256
  br i1 %i.tx, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i193, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tt, i64 64
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !19767
  %i.ua = and i64 %i.tz, -16
  %i.ub = inttoptr i64 %i.ua to ptr               ; 2 uses
  %i.uc = load i64, ptr %i.ub, align 16, !tbaa !19676
  %i.ud = icmp eq i64 %.sroa.7.0614, %i.uc
  br i1 %i.ud, label %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit196, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i193

bb.bk:                                            ; preds = %.lr.ph615
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tt, i64 48
  %i.uf = zext i64 %.sroa.7.0614 to i128
  %i.ug = mul nuw i128 %i.uf, 14181476777654086739
  %i.uh = lshr i128 %i.ug, 64
  %i.ui = trunc nuw i128 %i.uh to i64
  %i.uj = mul i64 %.sroa.7.0614, -4265267296055464877
  %i.uk = xor i64 %i.uj, %i.ui
  %i.ul = mul i64 %i.uk, -4265267296055464877     ; 2 uses
  %i.um = lshr i64 %i.ul, 14
  %i.un = and i64 %i.um, 255
  %i.uo = lshr i64 %i.ul, 22
  %.sroa.speculated.i.i.i.i182 = call i64 @llvm.umax.i64(i64 %i.un, i64 1) ; 2 uses
  %i.up = shl nuw nsw i64 %.sroa.speculated.i.i.i.i182, 1
  %i.uq = or disjoint i64 %i.up, 1
  %i.ur = trunc nuw i64 %.sroa.speculated.i.i.i.i182 to i8
  %i.us = insertelement <16 x i8> poison, i8 %i.ur, i64 0
  %i.ut = shufflevector <16 x i8> %i.us, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.uu = and i64 %i.tv, 255                      ; 2 uses
  %i.uv = shl nuw i64 1, %i.uu
  %notmask.i.i183 = shl nsw i64 -1, %i.uu
  %i.uw = xor i64 %notmask.i.i183, -1
  %i.ux = load ptr, ptr %i.ue, align 8, !tbaa !19691
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %bb.bk
  %.024.i62.i184 = phi i64 [ %i.uv, %bb.bk ], [ %i.vv, %bb.bn ]
  %.026.i61.i185 = phi i64 [ %i.uo, %bb.bk ], [ %i.vw, %bb.bn ] ; 2 uses
  %i.uy = and i64 %.026.i61.i185, %i.uw
  %i.uz = shl nsw i64 %i.uy, 8
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uz ; 4 uses
  %i.vb = getelementptr i8, ptr %i.va, i64 144
  call void @llvm.prefetch.p0(ptr %i.vb, i32 0, i32 3, i32 1)
  %i.vc = load <16 x i8>, ptr %i.va, align 16     ; 2 uses
  %i.vd = icmp eq <16 x i8> %i.vc, %i.ut
  %i.ve = bitcast <16 x i1> %i.vd to i16
  %i.vf = zext i16 %i.ve to i32                   ; 2 uses
  %i.vg = and i32 %i.vf, 16383
  %.not.i186 = icmp eq i32 %i.vg, 0
  %i.vh = extractelement <16 x i8> %i.vc, i64 15
  br i1 %.not.i186, label %.loopexit.i191, label %.preheader.i187

.preheader.i187:                                  ; preds = %bb.bl
  %i.vi = icmp ne ptr %i.va, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.vi)
  br label %bb.bm

bb.bm:                                            ; preds = %.critedge.i.i189, %.preheader.i187
  %.sroa.019.0.i188 = phi i32 [ %i.vs, %.critedge.i.i189 ], [ %i.vf, %.preheader.i187 ] ; 4 uses
  %i.vj = icmp ne i32 %.sroa.019.0.i188, 0
  call void @llvm.assume(i1 %i.vj)
  %i.vk = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.i188, i1 true)
  %i.vl = shl nuw nsw i32 %i.vk, 4
  %i.vm = zext nneg i32 %i.vl to i64
  %i.vn = getelementptr i8, ptr %i.va, i64 %i.vm  ; 2 uses
  %i.vo = getelementptr i8, ptr %i.vn, i64 16
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !19676
  %i.vq = icmp eq i64 %.sroa.7.0614, %i.vp
  br i1 %i.vq, label %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit196.loopexit, label %.critedge.i.i189, !prof !19685

.critedge.i.i189:                                 ; preds = %bb.bm
  %i.vr = add nsw i32 %.sroa.019.0.i188, -1
  %i.vs = and i32 %i.vr, %.sroa.019.0.i188        ; 2 uses
  %i.vt = and i32 %i.vs, 16382
  %.not58.i190 = icmp eq i32 %i.vt, 0
  br i1 %.not58.i190, label %.loopexit.i191, label %bb.bm, !llvm.loop !721

.loopexit.i191:                                   ; preds = %.critedge.i.i189, %bb.bl
  %i.vu = icmp eq i8 %i.vh, 0
  br i1 %i.vu, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i193, label %bb.bn, !prof !19685

bb.bn:                                            ; preds = %.loopexit.i191
  %i.vv = add i64 %.024.i62.i184, -1              ; 2 uses
  %i.vw = add i64 %i.uq, %.026.i61.i185
  %.not.i.i192 = icmp eq i64 %i.vv, 0
  br i1 %.not.i.i192, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i193, label %bb.bl, !llvm.loop !722

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i193: ; preds = %bb.bj, %bb.bi, %bb.bn, %.loopexit.i191
  call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.12) #20
  unreachable

_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit196.loopexit: ; preds = %bb.bm
  %i.vx = getelementptr i8, ptr %i.vn, i64 16
  br label %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit196

_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit196: ; preds = %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit196.loopexit, %bb.bj
  %.sroa.018.149.i195 = phi ptr [ %i.ub, %bb.bj ], [ %i.vx, %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit196.loopexit ]
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.018.149.i195, i64 8
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !19769
  %i.wa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  %.val69.val = load ptr, ptr %i.hs, align 8, !tbaa !20415 ; 2 uses
  %i.wb = load ptr, ptr %.val69.val, align 8, !tbaa !797, !noalias !20426
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  %i.wd = load ptr, ptr %i.wc, align 8, !noalias !20426
  %i.we = call { i64, ptr } %i.wd(ptr noundef nonnull align 8 dereferenceable(8) %.val69.val, ptr noundef nonnull align 8 dereferenceable(32) %i.vz), !noalias !20426, !call_target !809, !inline_history !20371 ; 2 uses
  %i.wf = extractvalue { i64, ptr } %i.we, 0
  %i.wg = extractvalue { i64, ptr } %i.we, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !20427
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.wf
  store ptr %i.ht, ptr %3, align 8, !tbaa !19764, !alias.scope !20428, !noalias !20427
  store i64 0, ptr %i.hu, align 8, !tbaa !19673, !alias.scope !20428, !noalias !20427
  store i8 0, ptr %i.ht, align 8, !tbaa !19682, !alias.scope !20428, !noalias !20427
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.wg, ptr %i.wh, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc1.i342 unwind label %bb.bo, !noalias !20427

bb.bo:                                            ; preds = %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit196
  %i.wi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wj = load ptr, ptr %3, align 8, !tbaa !19672, !alias.scope !20428, !noalias !20427 ; 2 uses
  %i.wk = icmp eq ptr %i.wj, %i.ht
  br i1 %i.wk, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i338: ; preds = %bb.bo
  %i.wl = load i64, ptr %i.ht, align 8, !tbaa !19682, !alias.scope !20428, !noalias !20427
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wm) #41, !noalias !20427
  br label %common.resume

.noexc1.i342:                                     ; preds = %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit196
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !20429
  %i.wn = load ptr, ptr %3, align 8, !tbaa !19672, !noalias !20427
  %i.wo = load i64, ptr %i.hu, align 8, !tbaa !19673, !noalias !20427
  %i.wp = ptrtoint ptr %i.wn to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i343 = zext i64 %i.wo to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i344 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i343, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i345 = zext i64 %i.wp to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i346 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i344, %.sroa.01.sroa.0.0.insert.ext.i.i345
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i346, ptr %2, align 16, !noalias !20429
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %2)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %.noexc1.i342
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !20429
  %i.wq = load ptr, ptr %3, align 8, !tbaa !19672, !noalias !20427 ; 2 uses
  %i.wr = icmp eq ptr %i.wq, %i.ht
  br i1 %i.wr, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i350: ; preds = %bb.bp
  %i.ws = load i64, ptr %i.ht, align 8, !tbaa !19682, !noalias !20427
  %i.wt = add i64 %i.ws, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wt) #41
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit352

bb.bq:                                            ; preds = %.noexc1.i342
  %i.wu = landingpad { ptr, i32 }
          cleanup
  %i.wv = load ptr, ptr %3, align 8, !tbaa !19672, !noalias !20427 ; 2 uses
  %i.ww = icmp eq ptr %i.wv, %i.ht
  br i1 %i.ww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i347: ; preds = %bb.bq
  %i.wx = load i64, ptr %i.ht, align 8, !tbaa !19682, !noalias !20427
  %i.wy = add i64 %i.wx, 1
  call void @_ZdlPvm(ptr noundef %i.wv, i64 noundef %i.wy) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i348: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !20427
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit352: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i350
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !20427
  %i.wz = load ptr, ptr %15, align 8, !tbaa !19672
  %i.xa = load i64, ptr %i.hv, align 8, !tbaa !19673
  %i.xb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.wz, i64 noundef %i.xa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit197 unwind label %.loopexit457 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit197: ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit352
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !797
  %i.xd = getelementptr i8, ptr %i.xc, i64 -24
  %i.xe = load i64, ptr %i.xd, align 8
  %i.xf = getelementptr inbounds i8, ptr %i.xb, i64 %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 240
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !20411 ; 6 uses
  %.not.i.i.i353 = icmp eq ptr %i.xh, null
  br i1 %.not.i.i.i353, label %bb.br, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i354

bb.br:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit197
  invoke void @_ZSt16__throw_bad_castv() #43
          to label %.noexc358 unwind label %.loopexit.split-lp458

.noexc358:                                        ; preds = %bb.br
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i354: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit197
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 56
  %i.xj = load i8, ptr %i.xi, align 8, !tbaa !19758
  %.not.i1.i.i355 = icmp eq i8 %i.xj, 0
  br i1 %.not.i1.i.i355, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i354
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 67
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !19682
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i356

bb.bt:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i354
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.xh)
          to label %.noexc359 unwind label %.loopexit457

.noexc359:                                        ; preds = %bb.bt
  %i.xm = load ptr, ptr %i.xh, align 8, !tbaa !797
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 48
  %i.xo = load ptr, ptr %i.xn, align 8
  %i.xp = invoke noundef signext i8 %i.xo(ptr noundef nonnull align 8 dereferenceable(570) %i.xh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i356 unwind label %.loopexit457, !inline_history !20372

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i356: ; preds = %.noexc359, %bb.bs
  %.0.i.i.i357 = phi i8 [ %i.xl, %bb.bs ], [ %i.xp, %.noexc359 ]
  %i.xq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.xb, i8 noundef signext %.0.i.i.i357)
          to label %.noexc361 unwind label %.loopexit457

.noexc361:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i356
  %i.xr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xq)
          to label %_ZNSolsEPFRSoS_E.exit198 unwind label %.loopexit457 ; 0 uses

_ZNSolsEPFRSoS_E.exit198:                         ; preds = %.noexc361
  %i.xs = load ptr, ptr %15, align 8, !tbaa !19672 ; 2 uses
  %i.xt = icmp eq ptr %i.xs, %i.hw
  br i1 %i.xt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSolsEPFRSoS_E.exit198
  %i.xu = load i64, ptr %i.hw, align 8, !tbaa !19682
  %i.xv = add i64 %i.xu, 1
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xv) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %_ZNSolsEPFRSoS_E.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  %i.xw = add i64 %.sroa.7.0614, 1                ; 3 uses
  %i.xx = icmp ult i64 %i.xw, %.sroa.3.0.i.i.i145788
  br i1 %i.xx, label %.lr.ph.i.i203, label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit207

.lr.ph.i.i203:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %bb.bu
  %.01422.i.i204 = phi i64 [ %i.yg, %bb.bu ], [ %i.xw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ] ; 4 uses
  %i.xy = lshr i64 %.01422.i.i204, 6
  %i.xz = and i64 %.01422.i.i204, 63
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i146790, i64 %i.xy
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !19676
  %i.yc = lshr i64 %i.yb, %i.xz                   ; 2 uses
  %.not.i.i205 = icmp eq i64 %i.yc, 0
  br i1 %.not.i.i205, label %bb.bu, label %.thread.i.i206

.thread.i.i206:                                   ; preds = %.lr.ph.i.i203
  %i.yd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yc, i1 true)
  %i.ye = add i64 %i.yd, %.01422.i.i204
  br label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit207

bb.bu:                                            ; preds = %.lr.ph.i.i203
  %i.yf = and i64 %.01422.i.i204, -64
  %i.yg = add i64 %i.yf, 64                       ; 3 uses
  %i.yh = icmp ult i64 %i.yg, %.sroa.3.0.i.i.i145788
  br i1 %i.yh, label %.lr.ph.i.i203, label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit207, !llvm.loop !720

_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit207: ; preds = %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %.thread.i.i206
  %.2.i.i202 = phi i64 [ %i.ye, %.thread.i.i206 ], [ %i.xw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ], [ %i.yg, %bb.bu ] ; 2 uses
  %.not446 = icmp eq i64 %.2.i.i202, %.sroa.3.0.i.i.i145788
  br i1 %.not446, label %._crit_edge616, label %.lr.ph615

.loopexit457:                                     ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit352, %bb.bt, %.noexc359, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i356, %.noexc361
  %lpad.loopexit459 = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZNK5folly15RegexMatchCache11InspectView5printERSo:bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aby = load ptr, ptr %17, align 8, !tbaa !19672 ; 2 uses
  %i.abz = icmp eq ptr %i.aby, %i.qw
  br i1 %i.abz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.cg
  %i.aca = load i64, ptr %i.qw, align 8, !tbaa !19682
  %i.acb = add i64 %i.aca, 1
  call void @_ZdlPvm(ptr noundef %i.aby, i64 noundef %i.acb) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19672  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !19682
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %1, ptr %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v9::format_arg_store", align 16 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !19764, !alias.scope !20438
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !19673, !alias.scope !20438
  store i8 0, ptr %i.b, align 8, !tbaa !19682, !alias.scope !20438
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %2, ptr %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc1 unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !19672, !alias.scope !20438 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !19682, !alias.scope !20438
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #41
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  %common.resume.op = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

.noexc1:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !20439
  %i.i = load ptr, ptr %4, align 8, !tbaa !19672
  %i.j = load i64, ptr %i.c, align 8, !tbaa !19673
  %i.k = ptrtoint ptr %i.i to i64
  %.sroa.01.sroa.4.0.insert.ext.i = zext i64 %i.j to i128
  %.sroa.01.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i, 64
  %.sroa.01.sroa.0.0.insert.ext.i = zext i64 %i.k to i128
  %.sroa.01.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i, %.sroa.01.sroa.0.0.insert.ext.i
  store i128 %.sroa.01.sroa.0.0.insert.insert.i, ptr %3, align 16, !noalias !20439
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !20439
  %i.l = load ptr, ptr %4, align 8, !tbaa !19672  ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.b, align 8, !tbaa !19682
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

bb.d:                                             ; preds = %.noexc1
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !19672  ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.s = load i64, ptr %i.b, align 8, !tbaa !19682
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = icmp ult i64 %i.b, 512
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i64 %i.b, 256
  br i1 %i.d, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19767
  %i.g = and i64 %i.f, -16
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load i64, ptr %i.h, align 16, !tbaa !19676
  %i.j = icmp eq i64 %1, %i.i
  br i1 %i.j, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE2atIKS8_mEERDaRT_RKT0_.exit, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = zext i64 %1 to i128
  %i.m = mul nuw i128 %i.l, 14181476777654086739
  %i.n = lshr i128 %i.m, 64
  %i.o = trunc nuw i128 %i.n to i64
  %i.p = mul i64 %1, -4265267296055464877
  %i.q = xor i64 %i.p, %i.o
  %i.r = mul i64 %i.q, -4265267296055464877       ; 2 uses
  %i.s = lshr i64 %i.r, 14
  %i.t = and i64 %i.s, 255
  %i.u = lshr i64 %i.r, 22
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1) ; 2 uses
  %i.v = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.w = or disjoint i64 %i.v, 1
  %i.x = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.y = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aa = and i64 %i.b, 255                       ; 2 uses
  %i.ab = shl nuw i64 1, %i.aa
  %notmask.i = shl nsw i64 -1, %i.aa
  %i.ac = xor i64 %notmask.i, -1
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !19691
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %.024.i62 = phi i64 [ %i.ab, %bb.d ], [ %i.bb, %bb.g ]
  %.026.i61 = phi i64 [ %i.u, %bb.d ], [ %i.bc, %bb.g ] ; 2 uses
  %i.ae = and i64 %.026.i61, %i.ac
  %i.af = shl nsw i64 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.ah, i32 0, i32 3, i32 1)
  %i.ai = load <16 x i8>, ptr %i.ag, align 16     ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.ai, %i.z
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = and i32 %i.al, 16383
  %.not = icmp eq i32 %i.am, 0
  %i.an = extractelement <16 x i8> %i.ai, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ao = icmp ne ptr %i.ag, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ao)
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.019.0 = phi i32 [ %i.ay, %.critedge.i ], [ %i.al, %.preheader ] ; 4 uses
  %i.ap = icmp ne i32 %.sroa.019.0, 0
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0, i1 true)
  %i.ar = shl nuw nsw i32 %i.aq, 4
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %i.ag, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !19676
  %i.aw = icmp eq i64 %1, %i.av
  br i1 %i.aw, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE2atIKS8_mEERDaRT_RKT0_.exit.loopexit, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.f
  %i.ax = add nsw i32 %.sroa.019.0, -1
  %i.ay = and i32 %i.ax, %.sroa.019.0             ; 2 uses
  %i.az = and i32 %i.ay, 16382
  %.not58 = icmp eq i32 %i.az, 0
  br i1 %.not58, label %.loopexit, label %bb.f, !llvm.loop !721

.loopexit:                                        ; preds = %.critedge.i, %bb.e
  %i.ba = icmp eq i8 %i.an, 0
  br i1 %i.ba, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread, label %bb.g, !prof !19685

bb.g:                                             ; preds = %.loopexit
  %i.bb = add i64 %.024.i62, -1                   ; 2 uses
  %i.bc = add i64 %i.w, %.026.i61
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread, label %bb.e, !llvm.loop !722

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread: ; preds = %.loopexit, %bb.g, %bb.c, %bb.b
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.12) #20
  unreachable

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE2atIKS8_mEERDaRT_RKT0_.exit.loopexit: ; preds = %bb.f
  %i.bd = getelementptr i8, ptr %i.at, i64 16
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE2atIKS8_mEERDaRT_RKT0_.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE2atIKS8_mEERDaRT_RKT0_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE2atIKS8_mEERDaRT_RKT0_.exit.loopexit, %bb.c
  %.sroa.018.149 = phi ptr [ %i.h, %bb.c ], [ %i.bd, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE2atIKS8_mEERDaRT_RKT0_.exit.loopexit ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.018.149, i64 8
  ret ptr %i.be
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #15

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #17

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #15

declare void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i8 92, ptr %i.a, align 4, !tbaa !19682
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19673 ; 4 uses
  %i.g = sub i64 9223372036854775807, %i.f
  %i.h = icmp ult i64 %i.g, %i.d
  br i1 %i.h, label %bb.b, label %bb.c, !prof !19683

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.9) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = add i64 %i.f, %i.d                       ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !19672
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.c
  %i.m = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.k, align 8, !tbaa !19682
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.o = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %.not.i = icmp ugt i64 %i.i, %i.o
  br i1 %.not.i, label %bb.d, label %_ZNK5folly19grow_capacity_by_fnclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_NS8_9size_typeE.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.p = shl i64 %i.f, 1
  %i.q = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.p)
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.q)
  br label %_ZNK5folly19grow_capacity_by_fnclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_NS8_9size_typeE.exit

_ZNK5folly19grow_capacity_by_fnclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_NS8_9size_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.d
  %.not71 = icmp eq ptr %0, %1
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5folly19grow_capacity_by_fnclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_NS8_9size_typeE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.aa
  %.073 = phi ptr [ %0, %.lr.ph ], [ %.1, %bb.aa ] ; 11 uses
  %.03072 = phi ptr [ %0, %.lr.ph ], [ %.131, %bb.aa ] ; 8 uses
  %i.u = load i8, ptr %.03072, align 1, !tbaa !19682 ; 4 uses
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @_ZN5folly6detail12cEscapeTableE, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19682 ; 2 uses
  switch i8 %i.x, label %bb.q [
    i8 80, label %bb.f
    i8 79, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.03072, i64 1
  br label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.z = ptrtoint ptr %.03072 to i64
  %i.aa = ptrtoint ptr %.073 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !19673 ; 5 uses
  %i.ad = sub i64 9223372036854775807, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #43
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.g
  %i.af = add i64 %i.ac, %i.ab                    ; 3 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !19672 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.k
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ai = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ai)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aj = load i64, ptr %i.k, align 8, !tbaa !19682
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ak = phi i64 [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.af, %i.ak
  br i1 %.not.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq ptr %.03072, %.073
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac ; 2 uses
  %cond.i.i = icmp eq i64 %i.ab, 1
  br i1 %cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load i8, ptr %.073, align 1, !tbaa !19682
  store i8 %i.am, ptr %i.al, align 1, !tbaa !19682
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %.073, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ac, i64 noundef 0, ptr noundef %.073, i64 noundef %i.ab)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.af, ptr %i.e, align 8, !tbaa !19673
  %i.an = load ptr, ptr %2, align 8, !tbaa !19672
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 0, ptr %i.ao, align 1, !tbaa !19682
  %i.ap = lshr i8 %i.u, 6
  %i.aq = or disjoint i8 %i.ap, 48
  store i8 %i.aq, ptr %i.r, align 1, !tbaa !19682
  %i.ar = lshr i8 %i.u, 3
  %i.as = and i8 %i.ar, 7
  %i.at = or disjoint i8 %i.as, 48
  store i8 %i.at, ptr %i.s, align 2, !tbaa !19682
  %i.au = and i8 %i.u, 7
  %i.av = or disjoint i8 %i.au, 48
  store i8 %i.av, ptr %i.t, align 1, !tbaa !19682
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !19673 ; 5 uses
  %i.ax = and i64 %i.aw, -4
  %i.ay = icmp eq i64 %i.ax, 9223372036854775804
  br i1 %i.ay, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i33

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #43
  unreachable

end_hunk_2
begin_hunk_3_@_ZNK5folly15RegexMatchCache11consistencyERNS0_24ConsistencyReportMatcherERKNS0_6KeyMapENS_11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE:bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %90, i64 16 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %91, i64 16 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 8 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %96, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %97, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %97, i64 16 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %96, i64 16 ; 4 uses
  br label %bb.cz

bb.f:                                             ; preds = %.lr.ph2044, %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit
  %.sroa.01462.02043 = phi ptr [ %i.ar, %.lr.ph2044 ], [ %.sroa.01462.1, %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit ] ; 3 uses
  %.sroa.91465.02042 = phi i64 [ %i.aw, %.lr.ph2044 ], [ %.sroa.91465.3, %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit ] ; 3 uses
  %i.fd = load ptr, ptr %.sroa.01462.02043, align 8, !tbaa !19734 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01459, ptr noundef nonnull align 8 dereferenceable(32) %i.fd, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01459, i64 32, i1 false)
  %i.fe = load ptr, ptr %2, align 8, !tbaa !797
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = call { i64, ptr } %i.fg(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %54), !call_target !809, !inline_history !21209 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %54)
  %i.fi = extractvalue { i64, ptr } %i.fh, 1      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store ptr %i.fd, ptr %i.a, align 8, !tbaa !19769
  %i.fj = call noundef i64 @_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14index_of_valueERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.fk = load i64, ptr %i.ax, align 8, !tbaa !19675 ; 2 uses
  %i.fl = and i64 %i.fk, -16                      ; 2 uses
  %.not17182038 = icmp eq i64 %i.fl, 0
  br i1 %.not17182038, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = and i64 %i.fk, 15
  %i.fo = extractvalue { i64, ptr } %i.fh, 0
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.fs = lshr i64 %i.fj, 6                       ; 2 uses
  %i.ft = and i64 %i.fj, 63
  %i.fu = shl nuw i64 1, %i.ft                    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fo ; 6 uses
  %i.fw = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.fx = zext i64 %i.fw to i128
  %i.fy = mul nuw i128 %i.fx, 14181476777654086739
  %i.fz = lshr i128 %i.fy, 64
  %i.ga = trunc nuw i128 %i.fz to i64
  %i.gb = mul i64 %i.fw, -4265267296055464877
  %i.gc = xor i64 %i.gb, %i.ga
  %i.gd = mul i64 %i.gc, -4265267296055464877     ; 2 uses
  %i.ge = lshr i64 %i.gd, 14
  %i.gf = and i64 %i.ge, 255
  %i.gg = lshr i64 %i.gd, 22
  %.sroa.speculated.i.i.i.i596 = call i64 @llvm.umax.i64(i64 %i.gf, i64 1) ; 2 uses
  %i.gh = shl nuw nsw i64 %.sroa.speculated.i.i.i.i596, 1
  %i.gi = or disjoint i64 %i.gh, 1
  %i.gj = trunc nuw i64 %.sroa.speculated.i.i.i.i596 to i8
  %i.gk = insertelement <16 x i8> poison, i8 %i.gj, i64 0
  %i.gl = shufflevector <16 x i8> %i.gk, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit, %.critedge.i.i741, %bb.f
  %i.gm = getelementptr inbounds i8, ptr %.sroa.01462.02043, i64 -16
  %.neg.i.i.i = mul nsw i64 %.sroa.91465.02042, -8
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 %.neg.i.i.i ; 2 uses
  %.not19.i5.i = icmp eq i64 %.sroa.91465.02042, 0
  br i1 %.not19.i5.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

.critedge.i.i.preheader:                          ; preds = %bb.g, %._crit_edge
  br label %.critedge.i.i

bb.g:                                             ; preds = %thread-pre-split.i
  %.not19.i.i = icmp eq i64 %i.gq, 0
  br i1 %.not19.i.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %._crit_edge, %bb.g
  %i.go = phi i64 [ %i.gq, %bb.g ], [ %.sroa.91465.02042, %._crit_edge ]
  %i.gp = phi ptr [ %i.gr, %bb.g ], [ %.sroa.01462.02043, %._crit_edge ]
  %i.gq = add nsw i64 %i.go, -1                   ; 4 uses
  %i.gr = getelementptr inbounds i8, ptr %i.gp, i64 -8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gq
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !19682
  %.not.i530 = icmp eq i8 %i.gt, 0
  br i1 %.not.i530, label %bb.g, label %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit, !prof !19683, !llvm.loop !718

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %bb.h
  %.017.i.i = phi ptr [ %i.gx, %bb.h ], [ %i.gn, %.critedge.i.i.preheader ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 14
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !19682
  %i.gw = and i8 %i.gv, 15
  %.not2.i = icmp eq i8 %i.gw, 0
  br i1 %.not2.i, label %bb.h, label %._crit_edge2045, !prof !19685

bb.h:                                             ; preds = %.critedge.i.i
  %i.gx = getelementptr inbounds i8, ptr %.017.i.i, i64 -128 ; 4 uses
  %i.gy = load <16 x i8>, ptr %i.gx, align 16, !tbaa !19682
  %i.gz = icmp eq <16 x i8> %i.gy, zeroinitializer
  %i.ha = bitcast <16 x i1> %i.gz to i16
  %i.hb = and i16 %i.ha, 16383                    ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %.017.i.i, i64 -256
  call void @llvm.prefetch.p0(ptr nonnull %i.hc, i32 0, i32 3, i32 1)
  %.not3.i = icmp eq i16 %i.hb, 16383
  br i1 %.not3.i, label %.critedge.i.i, label %bb.i, !prof !19683, !llvm.loop !719

bb.i:                                             ; preds = %bb.h
  %i.hd = xor i16 %i.hb, 16383
  %i.he = zext nneg i16 %i.hd to i32
  %i.hf = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.he, i1 true)
  %i.hg = xor i32 %i.hf, 31
  %i.hh = zext nneg i32 %i.hg to i64              ; 2 uses
  %i.hi = icmp ne ptr %i.gx, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.hi)
  %i.hj = shl nuw nsw i64 %i.hh, 3
  %i.hk = getelementptr i8, ptr %i.gx, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.hk, i64 16
  br label %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit

_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit: ; preds = %thread-pre-split.i, %bb.i
  %.sroa.91465.3 = phi i64 [ %i.hh, %bb.i ], [ %i.gq, %thread-pre-split.i ]
  %.sroa.01462.1 = phi ptr [ %i.hl, %bb.i ], [ %i.gr, %thread-pre-split.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.01462.1, null
  br i1 %.not, label %._crit_edge2045, label %bb.f

bb.j:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit
  %.sroa.01455.02040 = phi ptr [ %i.fm, %.lr.ph ], [ %.sroa.01455.1, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit ] ; 14 uses
  %.sroa.91458.02039 = phi i64 [ %i.fn, %.lr.ph ], [ %.sroa.91458.3, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit ] ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.01455.02040, i64 8 ; 2 uses
  %i.hn = load i64, ptr %i.fq, align 8, !tbaa !19695 ; 2 uses
  %i.ho = icmp ult i64 %i.hn, 256
  br i1 %i.ho, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit366, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hp = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763 ; 2 uses
  %i.hq = ptrtoint ptr %i.hp to i64               ; 2 uses
  %i.hr = zext i64 %i.hq to i128
  %i.hs = mul nuw i128 %i.hr, 14181476777654086739
  %i.ht = lshr i128 %i.hs, 64
  %i.hu = trunc nuw i128 %i.ht to i64
  %i.hv = mul i64 %i.hq, -4265267296055464877
  %i.hw = xor i64 %i.hv, %i.hu
  %i.hx = mul i64 %i.hw, -4265267296055464877     ; 2 uses
  %i.hy = lshr i64 %i.hx, 14
  %i.hz = and i64 %i.hy, 255
  %i.ia = lshr i64 %i.hx, 22
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hz, i64 1) ; 2 uses
  %i.ib = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ic = or disjoint i64 %i.ib, 1
  %i.id = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ie = insertelement <16 x i8> poison, i8 %i.id, i64 0
  %i.if = shufflevector <16 x i8> %i.ie, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ig = and i64 %i.hn, 255                      ; 2 uses
  %i.ih = shl nuw i64 1, %i.ig
  %notmask.i = shl nsw i64 -1, %i.ig
  %i.ii = xor i64 %notmask.i, -1
  %i.ij = load ptr, ptr %i.fr, align 8, !tbaa !19720
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.n
  %.023.i4012034 = phi i64 [ %i.ih, %bb.k ], [ %i.jk, %bb.n ]
  %.025.i4002033 = phi i64 [ %i.ia, %bb.k ], [ %i.jl, %bb.n ] ; 2 uses
  %i.ik = and i64 %.025.i4002033, %i.ii
  %i.il = shl nsw i64 %i.ik, 6
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.il ; 3 uses
  %i.in = load <16 x i8>, ptr %i.im, align 16     ; 2 uses
  %i.io = icmp eq <16 x i8> %i.in, %i.if
  %i.ip = bitcast <16 x i1> %i.io to i16
  %i.iq = zext i16 %i.ip to i32                   ; 2 uses
  %i.ir = and i32 %i.iq, 4095
  %.not1719 = icmp eq i32 %i.ir, 0
  %i.is = extractelement <16 x i8> %i.in, i64 15
  br i1 %.not1719, label %.loopexit1740, label %.preheader1739

.preheader1739:                                   ; preds = %bb.l
  %i.it = icmp ne ptr %i.im, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.it)
  %i.iu = load ptr, ptr %i.fp, align 8, !tbaa !20277
  br label %bb.m

bb.m:                                             ; preds = %.preheader1739, %.critedge.i414
  %.sroa.01581.0 = phi i32 [ %i.jh, %.critedge.i414 ], [ %i.iq, %.preheader1739 ] ; 4 uses
  %i.iv = icmp ne i32 %.sroa.01581.0, 0
  call void @llvm.assume(i1 %i.iv)
  %i.iw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.01581.0, i1 true)
  %i.ix = shl nuw nsw i32 %i.iw, 2
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr i8, ptr %i.im, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.iz, i64 16
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !19786
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.jc
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !19763
  %i.jf = icmp eq ptr %i.hp, %i.je
  br i1 %i.jf, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit366, label %.critedge.i414, !prof !19685

.critedge.i414:                                   ; preds = %bb.m
  %i.jg = add nsw i32 %.sroa.01581.0, -1
  %i.jh = and i32 %i.jg, %.sroa.01581.0           ; 2 uses
  %i.ji = and i32 %i.jh, 4094
  %.not1720 = icmp eq i32 %i.ji, 0
  br i1 %.not1720, label %.loopexit1740, label %bb.m, !llvm.loop !762

.loopexit1740:                                    ; preds = %.critedge.i414, %bb.l
  %i.jj = icmp eq i8 %i.is, 0
  br i1 %i.jj, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit366, label %bb.n, !prof !19685

bb.n:                                             ; preds = %.loopexit1740
  %i.jk = add i64 %.023.i4012034, -1              ; 2 uses
  %i.jl = add i64 %i.ic, %.025.i4002033
  %.not.i402 = icmp eq i64 %i.jk, 0
  br i1 %.not.i402, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit366, label %bb.l, !llvm.loop !763

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit366: ; preds = %bb.n, %.loopexit1740, %bb.m, %bb.j
  %.sroa.01565.0 = phi i1 [ true, %bb.j ], [ false, %bb.m ], [ true, %.loopexit1740 ], [ true, %bb.n ] ; 4 uses
  %i.jm = xor i1 %.sroa.01565.0, true             ; 2 uses
  %i.jn = load i64, ptr %i.hm, align 8, !tbaa !19676 ; 2 uses
  %i.jo = icmp slt i64 %i.jn, 0
  br i1 %i.jo, label %bb.o, label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

bb.o:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit366
  %i.jp = shl i64 %i.jn, 1
  %i.jq = inttoptr i64 %i.jp to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.jq, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !19676
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i: ; preds = %bb.o, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit366
  %.sroa.3.0.i.i = phi i64 [ %.sroa.3.0.copyload.i.i, %bb.o ], [ 64, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit366 ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.o ], [ %i.hm, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit366 ]
  %i.jr = icmp ult i64 %i.fj, %.sroa.3.0.i.i
  br i1 %i.jr, label %bb.p, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit

bb.p:                                             ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.fs
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !19676
  %i.ju = and i64 %i.jt, %i.fu
  %i.jv = icmp ne i64 %i.ju, 0
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit

_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit: ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i, %bb.p
  %.0.i = phi i1 [ %i.jv, %bb.p ], [ false, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i ] ; 3 uses
  %or.cond = or i1 %.sroa.01565.0, %.0.i
  br i1 %or.cond, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #40, !noalias !21390
  store ptr %i.ay, ptr %48, align 8, !tbaa !19764, !alias.scope !21391, !noalias !21390
  store i64 0, ptr %i.az, align 8, !tbaa !19673, !alias.scope !21391, !noalias !21390
  store i8 0, ptr %i.ay, align 8, !tbaa !19682, !alias.scope !21391, !noalias !21390
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.fi, ptr %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %.noexc1.i unwind label %bb.r, !noalias !21390

bb.r:                                             ; preds = %bb.q
  %i.jw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jx = load ptr, ptr %48, align 8, !tbaa !19672, !alias.scope !21391, !noalias !21390 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.ay
  br i1 %i.jy, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.jz = load i64, ptr %i.ay, align 8, !tbaa !19682, !alias.scope !21391, !noalias !21390
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #41, !noalias !21390
  br label %common.resume

common.resume:                                    ; preds = %bb.hf, %bb.gf, %bb.fy, %bb.ff, %bb.ej, %bb.dy, %bb.cm, %bb.cb, %bb.bq, %bb.bf, %bb.ac, %bb.r, %bb.e, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit933, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit775, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1075, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1378, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1331, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1309, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1262, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1092, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.blw, %bb.gf ], [ %i.aj, %bb.e ], [ %i.jw, %bb.r ], [ %i.mu, %bb.ac ], [ %i.vo, %bb.bf ], [ %i.yh, %bb.bq ], [ %i.abf, %bb.cb ], [ %i.ady, %bb.cm ], [ %i.arx, %bb.dy ], [ %i.avs, %bb.ej ], [ %i.bds, %bb.ff ], [ %i.bjw, %bb.fy ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ng, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1102 ], [ %i.mu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1092 ], [ %i.wa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1134 ], [ %i.vo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1124 ], [ %i.yt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1166 ], [ %i.yh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1156 ], [ %i.abr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1198 ], [ %i.abf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1188 ], [ %i.aek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1230 ], [ %i.ady, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1220 ], [ %i.asj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1262 ], [ %i.arx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1252 ], [ %i.awe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1277 ], [ %i.avs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1267 ], [ %i.bee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1309 ], [ %i.bds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1299 ], [ %i.bki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1341 ], [ %i.bjw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1331 ], [ %i.bmi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1356 ], [ %i.blw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1346 ], [ %i.bty, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1388 ], [ %i.btm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1378 ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i523 ], [ %.pn278.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638 ], [ %.pn259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841 ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i507 ], [ %.pn244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974 ], [ %.pn251.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1075 ], [ %.pn246.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016 ], [ %i.t, %bb.d ], [ %.pn270.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit553 ], [ %.pn273.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585 ], [ %.pn287.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734 ], [ %.pn284.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702 ], [ %.pn281.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit670 ], [ %.pn256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit775 ], [ %.pn265.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit933 ], [ %.pn261.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877 ], [ %i.btm, %bb.hf ]
  resume { ptr, i32 } %common.resume.op

.noexc1.i:                                        ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #40, !noalias !21392
  %i.kb = load ptr, ptr %48, align 8, !tbaa !19672, !noalias !21390
  %i.kc = load i64, ptr %i.az, align 8, !tbaa !19673, !noalias !21390
  %i.kd = ptrtoint ptr %i.kb to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i = zext i64 %i.kc to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i = zext i64 %i.kd to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i, %.sroa.01.sroa.0.0.insert.ext.i.i
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i, ptr %47, align 16, !noalias !21392
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %71, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %47)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #40, !noalias !21392
  %i.ke = load ptr, ptr %48, align 8, !tbaa !19672, !noalias !21390 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.ay
  br i1 %i.kf, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.kg = load i64, ptr %i.ay, align 8, !tbaa !19682, !noalias !21390
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #41
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.t:                                             ; preds = %.noexc1.i
  %i.ki = landingpad { ptr, i32 }
          cleanup
  %i.kj = load ptr, ptr %48, align 8, !tbaa !19672, !noalias !21390 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.ay
  br i1 %i.kk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.t
  %i.kl = load i64, ptr %i.ay, align 8, !tbaa !19682, !noalias !21390
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #40, !noalias !21390
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #40, !noalias !21390
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #40
  %i.kn = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !19672 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !19673
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #40, !noalias !21393
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kq
  store ptr %i.ba, ptr %46, align 8, !tbaa !19764, !alias.scope !21394, !noalias !21393
  store i64 0, ptr %i.bb, align 8, !tbaa !19673, !alias.scope !21394, !noalias !21393
  store i8 0, ptr %i.ba, align 8, !tbaa !19682, !alias.scope !21394, !noalias !21393
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.ko, ptr %i.kr, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %.noexc1.i1081 unwind label %bb.u, !noalias !21393

bb.u:                                             ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ks = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kt = load ptr, ptr %46, align 8, !tbaa !19672, !alias.scope !21394, !noalias !21393 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.ba
  br i1 %i.ku, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1077

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1077: ; preds = %bb.u
  %i.kv = load i64, ptr %i.ba, align 8, !tbaa !19682, !alias.scope !21394, !noalias !21393
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #41, !noalias !21393
  br label %.body

.noexc1.i1081:                                    ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #40, !noalias !21395
  %i.kx = load ptr, ptr %46, align 8, !tbaa !19672, !noalias !21393
  %i.ky = load i64, ptr %i.bb, align 8, !tbaa !19673, !noalias !21393
  %i.kz = ptrtoint ptr %i.kx to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1082 = zext i64 %i.ky to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1083 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1082, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1084 = zext i64 %i.kz to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1085 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1083, %.sroa.01.sroa.0.0.insert.ext.i.i1084
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1085, ptr %45, align 16, !noalias !21395
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %45)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.noexc1.i1081
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #40, !noalias !21395
  %i.la = load ptr, ptr %46, align 8, !tbaa !19672, !noalias !21393 ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.ba
  br i1 %i.lb, label %.noexc350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1089

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1089: ; preds = %bb.v
  %i.lc = load i64, ptr %i.ba, align 8, !tbaa !19682, !noalias !21393
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #41
  br label %.noexc350

bb.w:                                             ; preds = %.noexc1.i1081
  %i.le = landingpad { ptr, i32 }
          cleanup
  %i.lf = load ptr, ptr %46, align 8, !tbaa !19672, !noalias !21393 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.ba
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1087, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1086

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1086: ; preds = %bb.w
  %i.lh = load i64, ptr %i.ba, align 8, !tbaa !19682, !noalias !21393
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1087

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1087: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1086
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #40, !noalias !21393
  br label %.body

.noexc350:                                        ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1089
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #40, !noalias !21393
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #40, !noalias !21396
  call void @llvm.experimental.noalias.scope.decl(metadata !21397)
  %i.lj = load ptr, ptr %71, align 8, !tbaa !19672, !noalias !21397
  %i.lk = load i64, ptr %i.bc, align 8, !tbaa !19673, !noalias !21397
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = load ptr, ptr %72, align 8, !tbaa !19672, !noalias !21397
  %i.ln = load i64, ptr %i.bd, align 8, !tbaa !19673, !noalias !21397
  %i.lo = ptrtoint ptr %i.lm to i64
  %.sroa.04.sroa.4.0.insert.ext.i = zext i64 %i.lk to i128
  %.sroa.04.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i, 64
  %.sroa.04.sroa.0.0.insert.ext.i = zext i64 %i.ll to i128
  %.sroa.04.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i, %.sroa.04.sroa.0.0.insert.ext.i
end_hunk_3
begin_hunk_4_@_ZNK5folly15RegexMatchCache11consistencyERNS0_24ConsistencyReportMatcherERKNS0_6KeyMapENS_11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !21405)
  %i.oc = load ptr, ptr %74, align 8, !tbaa !19672, !noalias !21405
  %i.od = load i64, ptr %i.bm, align 8, !tbaa !19673, !noalias !21405
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = load ptr, ptr %75, align 8, !tbaa !19672, !noalias !21405
  %i.og = load i64, ptr %i.bn, align 8, !tbaa !19673, !noalias !21405
  %i.oh = ptrtoint ptr %i.of to i64
  %.sroa.04.sroa.4.0.insert.ext.i558 = zext i64 %i.od to i128
  %.sroa.04.sroa.4.0.insert.shift.i559 = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i558, 64
  %.sroa.04.sroa.0.0.insert.ext.i560 = zext i64 %i.oe to i128
  %.sroa.04.sroa.0.0.insert.insert.i561 = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i559, %.sroa.04.sroa.0.0.insert.ext.i560
  store i128 %.sroa.04.sroa.0.0.insert.insert.i561, ptr %56, align 16, !tbaa !19682, !alias.scope !21405
  %.sroa.0.sroa.4.0.insert.ext.i562 = zext i64 %i.og to i128
  %.sroa.0.sroa.4.0.insert.shift.i563 = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i562, 64
  %.sroa.0.sroa.0.0.insert.ext.i564 = zext i64 %i.oh to i128
  %.sroa.0.sroa.0.0.insert.insert.i565 = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i563, %.sroa.0.sroa.0.0.insert.ext.i564
  store i128 %.sroa.0.sroa.0.0.insert.insert.i565, ptr %i.bo, align 16, !tbaa !19682, !alias.scope !21405
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %73, ptr nonnull @.str.278, i64 32, i64 221, ptr nonnull %56)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc346
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #40, !noalias !21404
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit567 unwind label %bb.ak, !inline_history !21208

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit567: ; preds = %bb.ai
  %i.oi = load ptr, ptr %73, align 8, !tbaa !19672 ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.bp
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i568

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i568: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit567
  %i.ok = load i64, ptr %i.bp, align 8, !tbaa !19682
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit567, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i568
  %i.om = load ptr, ptr %75, align 8, !tbaa !19672 ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.bq
  br i1 %i.on, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570
  %i.oo = load i64, ptr %i.bq, align 8, !tbaa !19682
  %i.op = add i64 %i.oo, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.op) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit570, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #40
  %i.oq = load ptr, ptr %74, align 8, !tbaa !19672 ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.br
  br i1 %i.or, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573
  %i.os = load i64, ptr %i.br, align 8, !tbaa !19682
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ot) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #40
  br label %bb.al

bb.aj:                                            ; preds = %.noexc346
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579

bb.ak:                                            ; preds = %bb.ai
  %i.ov = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ow = load ptr, ptr %73, align 8, !tbaa !19672 ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.bp
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577: ; preds = %bb.ak
  %i.oy = load i64, ptr %i.bp, align 8, !tbaa !19682
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577, %bb.aj
  %.pn273 = phi { ptr, i32 } [ %i.ou, %bb.aj ], [ %i.ov, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577 ], [ %i.ov, %bb.ak ] ; 2 uses
  %i.pa = load ptr, ptr %75, align 8, !tbaa !19672 ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.bq
  br i1 %i.pb, label %.body1121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579
  %i.pc = load i64, ptr %i.bq, align 8, !tbaa !19682
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pd) #41
  br label %.body1121

.body1121:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1107
  %.pn273.pn = phi { ptr, i32 } [ %i.nl, %bb.af ], [ %.pn273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580 ], [ %i.nx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1117 ], [ %i.nl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1107 ], [ %.pn273, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #40
  %i.pe = load ptr, ptr %74, align 8, !tbaa !19672 ; 2 uses
  %i.pf = icmp eq ptr %i.pe, %i.br
  br i1 %i.pf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583: ; preds = %.body1121
  %i.pg = load i64, ptr %i.br, align 8, !tbaa !19682
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.ph) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585: ; preds = %.body1121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #40
  br label %common.resume

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, %bb.aa
  %i.pi = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763
  %i.pj = load ptr, ptr %1, align 8, !tbaa !797
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8
  %i.pm = call noundef zeroext i1 %i.pl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull byval(%"class.folly::RegexMatchCacheKey") align 8 %i.fd, ptr noundef %i.pi) ; 4 uses
  %i.pn = or i1 %.sroa.01565.0, %.not2
  %i.po = and i1 %i.pn, %i.pm
  br i1 %i.po, label %bb.am, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.pp = load i64, ptr %i.bs, align 8, !tbaa !19695 ; 3 uses
  %i.pq = icmp ult i64 %i.pp, 512
  br i1 %i.pq, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.pr = icmp samesign ult i64 %i.pp, 256
  br i1 %i.pr, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ps = load i64, ptr %i.bu, align 8, !tbaa !19765
  %i.pt = and i64 %i.ps, -16
  %i.pu = inttoptr i64 %i.pt to ptr               ; 2 uses
  %i.pv = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763
  %i.pw = load ptr, ptr %i.pu, align 16, !tbaa !19763
  %i.px = icmp eq ptr %i.pv, %i.pw
  br i1 %i.px, label %.loopexit1738, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread

bb.ap:                                            ; preds = %bb.am
  %i.py = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763 ; 2 uses
  %i.pz = ptrtoint ptr %i.py to i64               ; 2 uses
  %i.qa = zext i64 %i.pz to i128
  %i.qb = mul nuw i128 %i.qa, 14181476777654086739
  %i.qc = lshr i128 %i.qb, 64
  %i.qd = trunc nuw i128 %i.qc to i64
  %i.qe = mul i64 %i.pz, -4265267296055464877
  %i.qf = xor i64 %i.qe, %i.qd
  %i.qg = mul i64 %i.qf, -4265267296055464877     ; 2 uses
  %i.qh = lshr i64 %i.qg, 14
  %i.qi = and i64 %i.qh, 255
  %i.qj = lshr i64 %i.qg, 22
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.qi, i64 1) ; 2 uses
  %i.qk = shl nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  %i.ql = or disjoint i64 %i.qk, 1
  %i.qm = trunc nuw i64 %.sroa.speculated.i.i.i.i to i8
  %i.qn = insertelement <16 x i8> poison, i8 %i.qm, i64 0
  %i.qo = shufflevector <16 x i8> %i.qn, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.qp = and i64 %i.pp, 255                      ; 2 uses
  %i.qq = shl nuw i64 1, %i.qp
  %notmask.i.i = shl nsw i64 -1, %i.qp
  %i.qr = xor i64 %notmask.i.i, -1
  %i.qs = load ptr, ptr %i.bt, align 8, !tbaa !19725
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %.024.i62.i = phi i64 [ %i.qq, %bb.ap ], [ %i.rq, %bb.as ]
  %.026.i61.i = phi i64 [ %i.qj, %bb.ap ], [ %i.rr, %bb.as ] ; 2 uses
  %i.qt = and i64 %.026.i61.i, %i.qr
  %i.qu = shl nsw i64 %i.qt, 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qu ; 4 uses
  %i.qw = getelementptr i8, ptr %i.qv, i64 144
  call void @llvm.prefetch.p0(ptr %i.qw, i32 0, i32 3, i32 1)
  %i.qx = load <16 x i8>, ptr %i.qv, align 16     ; 2 uses
  %i.qy = icmp eq <16 x i8> %i.qx, %i.qo
  %i.qz = bitcast <16 x i1> %i.qy to i16
  %i.ra = zext i16 %i.qz to i32                   ; 2 uses
  %i.rb = and i32 %i.ra, 16383
  %.not.i586 = icmp eq i32 %i.rb, 0
  %i.rc = extractelement <16 x i8> %i.qx, i64 15
  br i1 %.not.i586, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aq
  %i.rd = icmp ne ptr %i.qv, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.rd)
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge.i.i587, %.preheader.i
  %.sroa.019.0.i = phi i32 [ %i.rn, %.critedge.i.i587 ], [ %i.ra, %.preheader.i ] ; 4 uses
  %i.re = icmp ne i32 %.sroa.019.0.i, 0
  call void @llvm.assume(i1 %i.re)
  %i.rf = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.i, i1 true)
  %i.rg = shl nuw nsw i32 %i.rf, 4
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr i8, ptr %i.qv, i64 %i.rh  ; 2 uses
  %i.rj = getelementptr i8, ptr %i.ri, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !19763
  %i.rl = icmp eq ptr %i.py, %i.rk
  br i1 %i.rl, label %.loopexit1738.loopexit, label %.critedge.i.i587, !prof !19685

.critedge.i.i587:                                 ; preds = %bb.ar
  %i.rm = add nsw i32 %.sroa.019.0.i, -1
  %i.rn = and i32 %i.rm, %.sroa.019.0.i           ; 2 uses
  %i.ro = and i32 %i.rn, 16382
  %.not58.i = icmp eq i32 %i.ro, 0
  br i1 %.not58.i, label %.loopexit.i, label %bb.ar, !llvm.loop !764

.loopexit.i:                                      ; preds = %.critedge.i.i587, %bb.aq
  %i.rp = icmp eq i8 %i.rc, 0
  br i1 %i.rp, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread, label %bb.as, !prof !19685

bb.as:                                            ; preds = %.loopexit.i
  %i.rq = add i64 %.024.i62.i, -1                 ; 2 uses
  %i.rr = add i64 %i.ql, %.026.i61.i
  %.not.i.i = icmp eq i64 %i.rq, 0
  br i1 %.not.i.i, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread, label %bb.aq, !llvm.loop !765

.loopexit1738.loopexit:                           ; preds = %bb.ar
  %i.rs = getelementptr i8, ptr %i.ri, i64 16
  br label %.loopexit1738

.loopexit1738:                                    ; preds = %.loopexit1738.loopexit, %bb.ao
  %.sroa.018.149.i = phi ptr [ %i.pu, %bb.ao ], [ %i.rs, %.loopexit1738.loopexit ]
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.018.149.i, i64 8 ; 2 uses
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !19676 ; 2 uses
  %i.rv = icmp slt i64 %i.ru, 0
  br i1 %i.rv, label %bb.at, label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i588

bb.at:                                            ; preds = %.loopexit1738
  %i.rw = shl i64 %i.ru, 1
  %i.rx = inttoptr i64 %i.rw to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i592 = load ptr, ptr %i.rx, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i593 = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %.sroa.3.0.copyload.i.i594 = load i64, ptr %.sroa.3.0..sroa_idx.i.i593, align 8, !tbaa !19676
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i588

_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i588: ; preds = %bb.at, %.loopexit1738
  %.sroa.3.0.i.i589 = phi i64 [ %.sroa.3.0.copyload.i.i594, %bb.at ], [ 64, %.loopexit1738 ]
  %.sroa.0.0.i.i590 = phi ptr [ %.sroa.0.0.copyload.i.i592, %bb.at ], [ %i.rt, %.loopexit1738 ]
  %i.ry = icmp ult i64 %i.fj, %.sroa.3.0.i.i589
  br i1 %i.ry, label %bb.au, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread

bb.au:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i588
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i590, i64 %i.fs
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !19676
  %i.sb = and i64 %i.sa, %i.fu
  %i.sc = icmp ne i64 %i.sb, 0
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread

_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread: ; preds = %bb.as, %.loopexit.i, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i588, %bb.au, %bb.ao, %bb.an
  %i.sd = phi i1 [ false, %bb.ao ], [ false, %bb.an ], [ false, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i588 ], [ %i.sc, %bb.au ], [ false, %.loopexit.i ], [ false, %bb.as ]
  %i.se = load i64, ptr %i.bv, align 8, !tbaa !19695 ; 2 uses
  %i.sf = icmp ult i64 %i.se, 256
  br i1 %i.sf, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.av

bb.av:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread
  %i.sg = and i64 %i.se, 255                      ; 2 uses
  %i.sh = shl nuw i64 1, %i.sg
  %notmask.i.i597 = shl nsw i64 -1, %i.sg
  %i.si = xor i64 %notmask.i.i597, -1
  %i.sj = load ptr, ptr %i.bx, align 8, !tbaa !19714
  %i.sk = load ptr, ptr %i.bw, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %bb.av
  %.023.i54.i = phi i64 [ %i.sh, %bb.av ], [ %i.tk, %bb.ay ]
  %.025.i53.i = phi i64 [ %i.gg, %bb.av ], [ %i.tl, %bb.ay ] ; 2 uses
  %i.sl = and i64 %.025.i53.i, %i.si
  %i.sm = shl nsw i64 %i.sl, 6
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sm ; 3 uses
  %i.so = load <16 x i8>, ptr %i.sn, align 16     ; 2 uses
  %i.sp = icmp eq <16 x i8> %i.so, %i.gl
  %i.sq = bitcast <16 x i1> %i.sp to i16
  %i.sr = zext i16 %i.sq to i32                   ; 2 uses
  %i.ss = and i32 %i.sr, 4095
  %.not.i598 = icmp eq i32 %i.ss, 0
  %i.st = extractelement <16 x i8> %i.so, i64 15
  br i1 %.not.i598, label %.loopexit.i601, label %.preheader.i599

.preheader.i599:                                  ; preds = %bb.aw
  %i.su = icmp ne ptr %i.sn, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.su)
  br label %bb.ax

bb.ax:                                            ; preds = %.critedge.i.i600, %.preheader.i599
  %.sroa.014.0.i = phi i32 [ %i.th, %.critedge.i.i600 ], [ %i.sr, %.preheader.i599 ] ; 4 uses
  %i.sv = icmp ne i32 %.sroa.014.0.i, 0
  call void @llvm.assume(i1 %i.sv)
  %i.sw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.014.0.i, i1 true)
  %i.sx = shl nuw nsw i32 %i.sw, 2
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = getelementptr i8, ptr %i.sn, i64 %i.sy
  %i.ta = getelementptr i8, ptr %i.sz, i64 16
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !19786
  %i.tc = zext i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw [32 x i8], ptr %i.sk, i64 %i.tc ; 4 uses
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !19769
  %i.tf = icmp eq ptr %i.fd, %i.te
  br i1 %i.tf, label %bb.az, label %.critedge.i.i600, !prof !19685

.critedge.i.i600:                                 ; preds = %bb.ax
  %i.tg = add nsw i32 %.sroa.014.0.i, -1
  %i.th = and i32 %i.tg, %.sroa.014.0.i           ; 2 uses
  %i.ti = and i32 %i.th, 4094
  %.not50.i = icmp eq i32 %i.ti, 0
  br i1 %.not50.i, label %.loopexit.i601, label %bb.ax, !llvm.loop !766

.loopexit.i601:                                   ; preds = %.critedge.i.i600, %bb.aw
  %i.tj = icmp eq i8 %i.st, 0
  br i1 %i.tj, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.ay, !prof !19685

bb.ay:                                            ; preds = %.loopexit.i601
  %i.tk = add i64 %.023.i54.i, -1                 ; 2 uses
  %i.tl = add i64 %i.gi, %.025.i53.i
  %.not.i.i602 = icmp eq i64 %i.tk, 0
  br i1 %.not.i.i602, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.aw, !llvm.loop !767

bb.az:                                            ; preds = %bb.ax
  %i.tm = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tn = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !19695 ; 2 uses
  %i.tp = icmp ult i64 %i.to, 256
  br i1 %i.tp, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.tq = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763 ; 2 uses
  %i.tr = ptrtoint ptr %i.tq to i64               ; 2 uses
  %i.ts = zext i64 %i.tr to i128
  %i.tt = mul nuw i128 %i.ts, 14181476777654086739
  %i.tu = lshr i128 %i.tt, 64
  %i.tv = trunc nuw i128 %i.tu to i64
  %i.tw = mul i64 %i.tr, -4265267296055464877
  %i.tx = xor i64 %i.tw, %i.tv
  %i.ty = mul i64 %i.tx, -4265267296055464877     ; 2 uses
  %i.tz = lshr i64 %i.ty, 14
  %i.ua = and i64 %i.tz, 255
  %i.ub = lshr i64 %i.ty, 22
  %.sroa.speculated.i.i.i603 = call i64 @llvm.umax.i64(i64 %i.ua, i64 1) ; 2 uses
  %i.uc = shl nuw nsw i64 %.sroa.speculated.i.i.i603, 1
  %i.ud = or disjoint i64 %i.uc, 1
  %i.ue = trunc nuw i64 %.sroa.speculated.i.i.i603 to i8
  %i.uf = insertelement <16 x i8> poison, i8 %i.ue, i64 0
  %i.ug = shufflevector <16 x i8> %i.uf, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.uh = and i64 %i.to, 255                      ; 2 uses
  %i.ui = shl nuw i64 1, %i.uh
  %notmask.i606 = shl nsw i64 -1, %i.uh
  %i.uj = xor i64 %notmask.i606, -1
  %i.uk = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !19720
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.bd
  %.023.i3852037 = phi i64 [ %i.ui, %bb.ba ], [ %i.vm, %bb.bd ]
  %.025.i3842036 = phi i64 [ %i.ub, %bb.ba ], [ %i.vn, %bb.bd ] ; 2 uses
  %i.um = and i64 %.025.i3842036, %i.uj
  %i.un = shl nsw i64 %i.um, 6
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.un ; 3 uses
  %i.up = load <16 x i8>, ptr %i.uo, align 16     ; 2 uses
  %i.uq = icmp eq <16 x i8> %i.up, %i.ug
  %i.ur = bitcast <16 x i1> %i.uq to i16
  %i.us = zext i16 %i.ur to i32                   ; 2 uses
  %i.ut = and i32 %i.us, 4095
  %.not1721 = icmp eq i32 %i.ut, 0
  %i.uu = extractelement <16 x i8> %i.up, i64 15
  br i1 %.not1721, label %.loopexit1737, label %.preheader1736

.preheader1736:                                   ; preds = %bb.bb
  %i.uv = icmp ne ptr %i.uo, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.uv)
  %i.uw = load ptr, ptr %i.tm, align 8, !tbaa !20277
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader1736, %.critedge.i398
  %.sroa.01576.0 = phi i32 [ %i.vj, %.critedge.i398 ], [ %i.us, %.preheader1736 ] ; 4 uses
  %i.ux = icmp ne i32 %.sroa.01576.0, 0
  call void @llvm.assume(i1 %i.ux)
  %i.uy = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.01576.0, i1 true)
  %i.uz = shl nuw nsw i32 %i.uy, 2
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = getelementptr i8, ptr %i.uo, i64 %i.va
  %i.vc = getelementptr i8, ptr %i.vb, i64 16
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !19786
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.ve
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !19763
  %i.vh = icmp eq ptr %i.tq, %i.vg
  br i1 %i.vh, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %.critedge.i398, !prof !19685

.critedge.i398:                                   ; preds = %bb.bc
  %i.vi = add nsw i32 %.sroa.01576.0, -1
  %i.vj = and i32 %i.vi, %.sroa.01576.0           ; 2 uses
  %i.vk = and i32 %i.vj, 4094
  %.not1722 = icmp eq i32 %i.vk, 0
  br i1 %.not1722, label %.loopexit1737, label %bb.bc, !llvm.loop !762

.loopexit1737:                                    ; preds = %.critedge.i398, %bb.bb
  %i.vl = icmp eq i8 %i.uu, 0
  br i1 %i.vl, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.bd, !prof !19685

bb.bd:                                            ; preds = %.loopexit1737
  %i.vm = add i64 %.023.i3852037, -1              ; 2 uses
  %i.vn = add i64 %i.ud, %.025.i3842036
  %.not.i386 = icmp eq i64 %i.vm, 0
  br i1 %.not.i386, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread, label %bb.bb, !llvm.loop !763

_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread: ; preds = %.loopexit.i601, %bb.ay, %.loopexit1737, %bb.bd, %bb.bc, %bb.az, %bb.al, %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread
  %or.cond12 = phi i1 [ false, %.loopexit1737 ], [ false, %bb.al ], [ false, %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit595.thread ], [ %i.sd, %bb.bc ], [ false, %bb.az ], [ false, %bb.bd ], [ false, %bb.ay ], [ false, %.loopexit.i601 ] ; 2 uses
  %or.cond7 = or i1 %.sroa.01565.0, %i.pm
  br i1 %or.cond7, label %bb.bo, label %bb.be

bb.be:                                            ; preds = %_ZN5folly7get_ptrINS_10F14FastMapIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS4_vEENS_26HeterogeneousAccessEqualToIS4_vEESaISt4pairIKS4_S6_EEEES4_EEDaRKT_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #40, !noalias !21406
  store ptr %i.by, ptr %40, align 8, !tbaa !19764, !alias.scope !21407, !noalias !21406
  store i64 0, ptr %i.bz, align 8, !tbaa !19673, !alias.scope !21407, !noalias !21406
  store i8 0, ptr %i.by, align 8, !tbaa !19682, !alias.scope !21407, !noalias !21406
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.fi, ptr %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %.noexc1.i1128 unwind label %bb.bf, !noalias !21406

bb.bf:                                            ; preds = %bb.be
  %i.vo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vp = load ptr, ptr %40, align 8, !tbaa !19672, !alias.scope !21407, !noalias !21406 ; 2 uses
  %i.vq = icmp eq ptr %i.vp, %i.by
  br i1 %i.vq, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1124: ; preds = %bb.bf
  %i.vr = load i64, ptr %i.by, align 8, !tbaa !19682, !alias.scope !21407, !noalias !21406
  %i.vs = add i64 %i.vr, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vs) #41, !noalias !21406
  br label %common.resume

.noexc1.i1128:                                    ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #40, !noalias !21408
  %i.vt = load ptr, ptr %40, align 8, !tbaa !19672, !noalias !21406
  %i.vu = load i64, ptr %i.bz, align 8, !tbaa !19673, !noalias !21406
  %i.vv = ptrtoint ptr %i.vt to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1129 = zext i64 %i.vu to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1130 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1129, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1131 = zext i64 %i.vv to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1132 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1130, %.sroa.01.sroa.0.0.insert.ext.i.i1131
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1132, ptr %39, align 16, !noalias !21408
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %77, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %39)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %.noexc1.i1128
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #40, !noalias !21408
  %i.vw = load ptr, ptr %40, align 8, !tbaa !19672, !noalias !21406 ; 2 uses
  %i.vx = icmp eq ptr %i.vw, %i.by
  br i1 %i.vx, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1136: ; preds = %bb.bg
  %i.vy = load i64, ptr %i.by, align 8, !tbaa !19682, !noalias !21406
  %i.vz = add i64 %i.vy, 1
  call void @_ZdlPvm(ptr noundef %i.vw, i64 noundef %i.vz) #41
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1138

bb.bh:                                            ; preds = %.noexc1.i1128
  %i.wa = landingpad { ptr, i32 }
          cleanup
  %i.wb = load ptr, ptr %40, align 8, !tbaa !19672, !noalias !21406 ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.by
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1133: ; preds = %bb.bh
  %i.wd = load i64, ptr %i.by, align 8, !tbaa !19682, !noalias !21406
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.we) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1134: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1133
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #40, !noalias !21406
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1138: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1136
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #40, !noalias !21406
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #40
  %i.wf = load ptr, ptr %.sroa.01455.02040, align 8, !tbaa !19763 ; 2 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !19672 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !19673
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #40, !noalias !21409
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.wi
  store ptr %i.ca, ptr %38, align 8, !tbaa !19764, !alias.scope !21410, !noalias !21409
  store i64 0, ptr %i.cb, align 8, !tbaa !19673, !alias.scope !21410, !noalias !21409
  store i8 0, ptr %i.ca, align 8, !tbaa !19682, !alias.scope !21410, !noalias !21409
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.wg, ptr %i.wj, ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %.noexc1.i1143 unwind label %bb.bi, !noalias !21409

bb.bi:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1138
  %i.wk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wl = load ptr, ptr %38, align 8, !tbaa !19672, !alias.scope !21410, !noalias !21409 ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.ca
  br i1 %i.wm, label %.body1153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1139: ; preds = %bb.bi
  %i.wn = load i64, ptr %i.ca, align 8, !tbaa !19682, !alias.scope !21410, !noalias !21409
  %i.wo = add i64 %i.wn, 1
  call void @_ZdlPvm(ptr noundef %i.wl, i64 noundef %i.wo) #41, !noalias !21409
  br label %.body1153

.noexc1.i1143:                                    ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1138
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #40, !noalias !21411
  %i.wp = load ptr, ptr %38, align 8, !tbaa !19672, !noalias !21409
  %i.wq = load i64, ptr %i.cb, align 8, !tbaa !19673, !noalias !21409
  %i.wr = ptrtoint ptr %i.wp to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1144 = zext i64 %i.wq to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1145 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1144, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1146 = zext i64 %i.wr to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1147 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1145, %.sroa.01.sroa.0.0.insert.ext.i.i1146
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1147, ptr %37, align 16, !noalias !21411
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %78, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %37)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %.noexc1.i1143
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #40, !noalias !21411
  %i.ws = load ptr, ptr %38, align 8, !tbaa !19672, !noalias !21409 ; 2 uses
  %i.wt = icmp eq ptr %i.ws, %i.ca
  br i1 %i.wt, label %.noexc342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1151: ; preds = %bb.bj
  %i.wu = load i64, ptr %i.ca, align 8, !tbaa !19682, !noalias !21409
  %i.wv = add i64 %i.wu, 1
  call void @_ZdlPvm(ptr noundef %i.ws, i64 noundef %i.wv) #41
  br label %.noexc342

bb.bk:                                            ; preds = %.noexc1.i1143
  %i.ww = landingpad { ptr, i32 }
          cleanup
  %i.wx = load ptr, ptr %38, align 8, !tbaa !19672, !noalias !21409 ; 2 uses
  %i.wy = icmp eq ptr %i.wx, %i.ca
  br i1 %i.wy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1148: ; preds = %bb.bk
  %i.wz = load i64, ptr %i.ca, align 8, !tbaa !19682, !noalias !21409
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %i.wx, i64 noundef %i.xa) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1149: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1148
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40, !noalias !21409
  br label %.body1153

.noexc342:                                        ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1151
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #40, !noalias !21409
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #40, !noalias !21412
  call void @llvm.experimental.noalias.scope.decl(metadata !21413)
  %i.xb = load ptr, ptr %77, align 8, !tbaa !19672, !noalias !21413
  %i.xc = load i64, ptr %i.cc, align 8, !tbaa !19673, !noalias !21413
  %i.xd = ptrtoint ptr %i.xb to i64
  %i.xe = load ptr, ptr %78, align 8, !tbaa !19672, !noalias !21413
  %i.xf = load i64, ptr %i.cd, align 8, !tbaa !19673, !noalias !21413
  %i.xg = ptrtoint ptr %i.xe to i64
  %.sroa.04.sroa.4.0.insert.ext.i611 = zext i64 %i.xc to i128
  %.sroa.04.sroa.4.0.insert.shift.i612 = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i611, 64
  %.sroa.04.sroa.0.0.insert.ext.i613 = zext i64 %i.xd to i128
  %.sroa.04.sroa.0.0.insert.insert.i614 = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i612, %.sroa.04.sroa.0.0.insert.ext.i613
  store i128 %.sroa.04.sroa.0.0.insert.insert.i614, ptr %57, align 16, !tbaa !19682, !alias.scope !21413
  %.sroa.0.sroa.4.0.insert.ext.i615 = zext i64 %i.xf to i128
  %.sroa.0.sroa.4.0.insert.shift.i616 = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i615, 64
  %.sroa.0.sroa.0.0.insert.ext.i617 = zext i64 %i.xg to i128
  %.sroa.0.sroa.0.0.insert.insert.i618 = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i616, %.sroa.0.sroa.0.0.insert.ext.i617
  store i128 %.sroa.0.sroa.0.0.insert.insert.i618, ptr %i.ce, align 16, !tbaa !19682, !alias.scope !21413
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, ptr nonnull @.str.277, i64 32, i64 221, ptr nonnull %57)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %.noexc342
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #40, !noalias !21412
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit620 unwind label %bb.bn, !inline_history !21208

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit620: ; preds = %bb.bl
  %i.xh = load ptr, ptr %76, align 8, !tbaa !19672 ; 2 uses
  %i.xi = icmp eq ptr %i.xh, %i.cf
  br i1 %i.xi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i621

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i621: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit620
  %i.xj = load i64, ptr %i.cf, align 8, !tbaa !19682
  %i.xk = add i64 %i.xj, 1
  call void @_ZdlPvm(ptr noundef %i.xh, i64 noundef %i.xk) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit620, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i621
  %i.xl = load ptr, ptr %78, align 8, !tbaa !19672 ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.cg
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623
  %i.xn = load i64, ptr %i.cg, align 8, !tbaa !19682
end_hunk_4
begin_hunk_5_@_ZNK5folly15RegexMatchCache11consistencyERNS0_24ConsistencyReportMatcherERKNS0_6KeyMapENS_11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE:bb.a
  %i.agj = icmp eq ptr %i.agi, %i.dl
  br i1 %i.agj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i732

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i732: ; preds = %.body1249
  %i.agk = load i64, ptr %i.dl, align 8, !tbaa !19682
  %i.agl = add i64 %i.agk, 1
  call void @_ZdlPvm(ptr noundef %i.agi, i64 noundef %i.agl) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734: ; preds = %.body1249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i732
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #40
  br label %common.resume

bb.cv:                                            ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit725
  %i.agm = getelementptr inbounds i8, ptr %.sroa.01455.02040, i64 -16
  %.neg.i.i.i735 = mul nsw i64 %.sroa.91458.02039, -16
  %i.agn = getelementptr inbounds i8, ptr %i.agm, i64 %.neg.i.i.i735 ; 2 uses
  %.not19.i5.i736 = icmp eq i64 %.sroa.91458.02039, 0
  br i1 %.not19.i5.i736, label %.critedge.i.i741.preheader, label %thread-pre-split.i737

.critedge.i.i741.preheader:                       ; preds = %bb.cw, %bb.cv
  br label %.critedge.i.i741

bb.cw:                                            ; preds = %thread-pre-split.i737
  %.not19.i.i739 = icmp eq i64 %i.agq, 0
  br i1 %.not19.i.i739, label %.critedge.i.i741.preheader, label %thread-pre-split.i737

thread-pre-split.i737:                            ; preds = %bb.cv, %bb.cw
  %i.ago = phi i64 [ %i.agq, %bb.cw ], [ %.sroa.91458.02039, %bb.cv ]
  %i.agp = phi ptr [ %i.agr, %bb.cw ], [ %.sroa.01455.02040, %bb.cv ]
  %i.agq = add nsw i64 %i.ago, -1                 ; 4 uses
  %i.agr = getelementptr inbounds i8, ptr %i.agp, i64 -16 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agn, i64 %i.agq
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !19682
  %.not.i738 = icmp eq i8 %i.agt, 0
  br i1 %.not.i738, label %bb.cw, label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit, !prof !19683, !llvm.loop !715

.critedge.i.i741:                                 ; preds = %.critedge.i.i741.preheader, %bb.cx
  %.017.i.i742 = phi ptr [ %i.agx, %bb.cx ], [ %i.agn, %.critedge.i.i741.preheader ] ; 3 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %.017.i.i742, i64 14
  %i.agv = load i8, ptr %i.agu, align 1, !tbaa !19682
  %i.agw = and i8 %i.agv, 15
  %.not2.i743 = icmp eq i8 %i.agw, 0
  br i1 %.not2.i743, label %bb.cx, label %._crit_edge, !prof !19685

bb.cx:                                            ; preds = %.critedge.i.i741
  %i.agx = getelementptr inbounds i8, ptr %.017.i.i742, i64 -256 ; 4 uses
  %i.agy = load <16 x i8>, ptr %i.agx, align 16, !tbaa !19682
  %i.agz = icmp eq <16 x i8> %i.agy, zeroinitializer
  %i.aha = bitcast <16 x i1> %i.agz to i16
  %i.ahb = and i16 %i.aha, 16383                  ; 2 uses
  %i.ahc = getelementptr inbounds i8, ptr %.017.i.i742, i64 -512
  call void @llvm.prefetch.p0(ptr nonnull %i.ahc, i32 0, i32 3, i32 1)
  %.not3.i745 = icmp eq i16 %i.ahb, 16383
  br i1 %.not3.i745, label %.critedge.i.i741, label %bb.cy, !prof !19683, !llvm.loop !716

bb.cy:                                            ; preds = %bb.cx
  %i.ahd = xor i16 %i.ahb, 16383
  %i.ahe = zext nneg i16 %i.ahd to i32
  %i.ahf = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahe, i1 true)
  %i.ahg = xor i32 %i.ahf, 31
  %i.ahh = zext nneg i32 %i.ahg to i64            ; 2 uses
  %i.ahi = icmp ne ptr %i.agx, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ahi)
  %i.ahj = shl nuw nsw i64 %i.ahh, 4
  %i.ahk = getelementptr i8, ptr %i.agx, i64 %i.ahj
  %i.ahl = getelementptr i8, ptr %i.ahk, i64 16
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit

_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit: ; preds = %thread-pre-split.i737, %bb.cy
  %.sroa.91458.3 = phi i64 [ %i.ahh, %bb.cy ], [ %i.agq, %thread-pre-split.i737 ]
  %.sroa.01455.1 = phi ptr [ %i.ahl, %bb.cy ], [ %i.agr, %thread-pre-split.i737 ] ; 2 uses
  %.not1718 = icmp eq ptr %.sroa.01455.1, null
  br i1 %.not1718, label %._crit_edge, label %bb.j

._crit_edge2061:                                  ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit, %.critedge.i.i795, %._crit_edge2045
  %i.ahm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ahn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aho = load i64, ptr %i.ahn, align 8, !tbaa !19695
  %i.ahp = lshr i64 %i.aho, 8                     ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.ahp, 0
  %i.ahq = load ptr, ptr %i.ahm, align 8          ; 2 uses
  br i1 %.not.i.i.i.not, label %._crit_edge2072, label %.lr.ph2071

.lr.ph2071:                                       ; preds = %._crit_edge2061
  %i.ahr = getelementptr inbounds nuw [32 x i8], ptr %i.ahq, i64 %i.ahp
  %i.ahs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aht = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %101, i64 8
  %i.ahy = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.ahz = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.aia = getelementptr inbounds nuw i8, ptr %100, i64 16 ; 4 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %102, i64 16 ; 4 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %101, i64 16 ; 4 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 8 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %99, i64 8
  %i.aig = getelementptr inbounds nuw i8, ptr %98, i64 16 ; 4 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %99, i64 16 ; 4 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aij = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aik = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ail = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %104, i64 8
  %i.aiq = getelementptr inbounds nuw i8, ptr %105, i64 8
  %i.air = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.ais = getelementptr inbounds nuw i8, ptr %103, i64 16 ; 4 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 4 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %104, i64 16 ; 4 uses
  br label %.backedge1727

bb.cz:                                            ; preds = %.lr.ph2060, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit
  %.sroa.01449.02058 = phi ptr [ %i.dq, %.lr.ph2060 ], [ %.sroa.01449.1, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit ] ; 10 uses
  %.sroa.9.02057 = phi i64 [ %i.dr, %.lr.ph2060 ], [ %.sroa.9.3, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit ] ; 3 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %.sroa.01449.02058, i64 8 ; 2 uses
  %i.aiw = load i64, ptr %i.ds, align 8, !tbaa !19695 ; 3 uses
  %i.aix = icmp ult i64 %i.aiw, 512
  br i1 %i.aix, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.aiy = icmp samesign ult i64 %i.aiw, 256
  br i1 %i.aiy, label %.noexc301, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.aiz = load i64, ptr %i.du, align 8, !tbaa !19675
  %i.aja = and i64 %i.aiz, -16
  %i.ajb = inttoptr i64 %i.aja to ptr             ; 2 uses
  %i.ajc = load ptr, ptr %.sroa.01449.02058, align 8, !tbaa !19763
  %i.ajd = load ptr, ptr %i.ajb, align 16, !tbaa !19763
  %i.aje = icmp eq ptr %i.ajc, %i.ajd
  br i1 %i.aje, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit, label %.noexc301

bb.dc:                                            ; preds = %bb.cz
  %i.ajf = load ptr, ptr %.sroa.01449.02058, align 8, !tbaa !19763 ; 2 uses
  %i.ajg = ptrtoint ptr %i.ajf to i64             ; 2 uses
  %i.ajh = zext i64 %i.ajg to i128
  %i.aji = mul nuw i128 %i.ajh, 14181476777654086739
  %i.ajj = lshr i128 %i.aji, 64
  %i.ajk = trunc nuw i128 %i.ajj to i64
  %i.ajl = mul i64 %i.ajg, -4265267296055464877
  %i.ajm = xor i64 %i.ajl, %i.ajk
  %i.ajn = mul i64 %i.ajm, -4265267296055464877   ; 2 uses
  %i.ajo = lshr i64 %i.ajn, 14
  %i.ajp = and i64 %i.ajo, 255
  %i.ajq = lshr i64 %i.ajn, 22
  %.sroa.speculated.i.i.i.i748 = call i64 @llvm.umax.i64(i64 %i.ajp, i64 1) ; 2 uses
  %i.ajr = shl nuw nsw i64 %.sroa.speculated.i.i.i.i748, 1
  %i.ajs = or disjoint i64 %i.ajr, 1
  %i.ajt = trunc nuw i64 %.sroa.speculated.i.i.i.i748 to i8
  %i.aju = insertelement <16 x i8> poison, i8 %i.ajt, i64 0
  %i.ajv = shufflevector <16 x i8> %i.aju, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ajw = and i64 %i.aiw, 255                    ; 2 uses
  %i.ajx = shl nuw i64 1, %i.ajw
  %notmask.i.i749 = shl nsw i64 -1, %i.ajw
  %i.ajy = xor i64 %notmask.i.i749, -1
  %i.ajz = load ptr, ptr %i.dt, align 8, !tbaa !20271
  br label %bb.dd

bb.dd:                                            ; preds = %bb.df, %bb.dc
  %.024.i62.i750 = phi i64 [ %i.ajx, %bb.dc ], [ %i.akx, %bb.df ]
  %.026.i61.i751 = phi i64 [ %i.ajq, %bb.dc ], [ %i.aky, %bb.df ] ; 2 uses
  %i.aka = and i64 %.026.i61.i751, %i.ajy
  %i.akb = shl nsw i64 %i.aka, 8
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %i.akb ; 4 uses
  %i.akd = getelementptr i8, ptr %i.akc, i64 144
  call void @llvm.prefetch.p0(ptr %i.akd, i32 0, i32 3, i32 1)
  %i.ake = load <16 x i8>, ptr %i.akc, align 16   ; 2 uses
  %i.akf = icmp eq <16 x i8> %i.ake, %i.ajv
  %i.akg = bitcast <16 x i1> %i.akf to i16
  %i.akh = zext i16 %i.akg to i32                 ; 2 uses
  %i.aki = and i32 %i.akh, 16383
  %.not.i752 = icmp eq i32 %i.aki, 0
  %i.akj = extractelement <16 x i8> %i.ake, i64 15
  br i1 %.not.i752, label %.loopexit.i757, label %.preheader.i753

.preheader.i753:                                  ; preds = %bb.dd
  %i.akk = icmp ne ptr %i.akc, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.akk)
  br label %bb.de

bb.de:                                            ; preds = %.critedge.i.i755, %.preheader.i753
  %.sroa.019.0.i754 = phi i32 [ %i.aku, %.critedge.i.i755 ], [ %i.akh, %.preheader.i753 ] ; 4 uses
  %i.akl = icmp ne i32 %.sroa.019.0.i754, 0
  call void @llvm.assume(i1 %i.akl)
  %i.akm = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.i754, i1 true)
  %i.akn = shl nuw nsw i32 %i.akm, 4
  %i.ako = zext nneg i32 %i.akn to i64
  %i.akp = getelementptr i8, ptr %i.akc, i64 %i.ako ; 2 uses
  %i.akq = getelementptr i8, ptr %i.akp, i64 16
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !19763
  %i.aks = icmp eq ptr %i.ajf, %i.akr
  br i1 %i.aks, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit.loopexit, label %.critedge.i.i755, !prof !19685

.critedge.i.i755:                                 ; preds = %bb.de
  %i.akt = add nsw i32 %.sroa.019.0.i754, -1
  %i.aku = and i32 %i.akt, %.sroa.019.0.i754      ; 2 uses
  %i.akv = and i32 %i.aku, 16382
  %.not58.i756 = icmp eq i32 %i.akv, 0
  br i1 %.not58.i756, label %.loopexit.i757, label %bb.de, !llvm.loop !768

.loopexit.i757:                                   ; preds = %.critedge.i.i755, %bb.dd
  %i.akw = icmp eq i8 %i.akj, 0
  br i1 %i.akw, label %.noexc301, label %bb.df, !prof !19685

bb.df:                                            ; preds = %.loopexit.i757
  %i.akx = add i64 %.024.i62.i750, -1             ; 2 uses
  %i.aky = add i64 %i.ajs, %.026.i61.i751
  %.not.i.i758 = icmp eq i64 %i.akx, 0
  br i1 %.not.i.i758, label %.noexc301, label %bb.dd, !llvm.loop !769

_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit.loopexit: ; preds = %bb.de
  %i.akz = getelementptr i8, ptr %i.akp, i64 16
  br label %_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit

_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit: ; preds = %_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit.loopexit, %bb.db
  %.sroa.018.149.i759 = phi ptr [ %i.ajb, %bb.db ], [ %i.akz, %_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit.loopexit ]
  %i.ala = getelementptr inbounds nuw i8, ptr %.sroa.018.149.i759, i64 8
  br label %bb.dj

.noexc301:                                        ; preds = %bb.df, %.loopexit.i757, %bb.db, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #40
  %i.alb = load ptr, ptr %.sroa.01449.02058, align 8, !tbaa !19763 ; 2 uses
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !19672
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %i.ale = load i64, ptr %i.ald, align 8, !tbaa !19673
  call fastcc void @_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nonnull writable align 8 %89, i64 %i.ale, ptr %i.alc)
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #40, !noalias !21438
  %i.alf = load ptr, ptr %89, align 8, !tbaa !19672
  %i.alg = load i64, ptr %i.dv, align 8, !tbaa !19673
  %i.alh = ptrtoint ptr %i.alf to i64
  %.sroa.01.sroa.4.0.insert.ext.i = zext i64 %i.alg to i128
  %.sroa.01.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i, 64
  %.sroa.01.sroa.0.0.insert.ext.i = zext i64 %i.alh to i128
  %.sroa.01.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i, %.sroa.01.sroa.0.0.insert.ext.i
  store i128 %.sroa.01.sroa.0.0.insert.insert.i, ptr %65, align 16, !noalias !21438
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %88, ptr nonnull @.str.281, i64 35, i64 13, ptr nonnull %65)
          to label %bb.dg unwind label %bb.dh

bb.dg:                                            ; preds = %.noexc301
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #40, !noalias !21438
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit763 unwind label %bb.di, !inline_history !21208

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit763: ; preds = %bb.dg
  %i.ali = load ptr, ptr %88, align 8, !tbaa !19672 ; 2 uses
  %i.alj = icmp eq ptr %i.ali, %i.dw
  br i1 %i.alj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i764

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i764: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit763
  %i.alk = load i64, ptr %i.dw, align 8, !tbaa !19682
  %i.all = add i64 %i.alk, 1
  call void @_ZdlPvm(ptr noundef %i.ali, i64 noundef %i.all) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit763, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i764
  %i.alm = load ptr, ptr %89, align 8, !tbaa !19672 ; 2 uses
  %i.aln = icmp eq ptr %i.alm, %i.dx
  br i1 %i.aln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i767

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i767: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766
  %i.alo = load i64, ptr %i.dx, align 8, !tbaa !19682
  %i.alp = add i64 %i.alo, 1
  call void @_ZdlPvm(ptr noundef %i.alm, i64 noundef %i.alp) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i767
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #40
  br label %bb.dj

bb.dh:                                            ; preds = %.noexc301
  %i.alq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

bb.di:                                            ; preds = %bb.dg
  %i.alr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.als = load ptr, ptr %88, align 8, !tbaa !19672 ; 2 uses
  %i.alt = icmp eq ptr %i.als, %i.dw
  br i1 %i.alt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770: ; preds = %bb.di
  %i.alu = load i64, ptr %i.dw, align 8, !tbaa !19682
  %i.alv = add i64 %i.alu, 1
  call void @_ZdlPvm(ptr noundef %i.als, i64 noundef %i.alv) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770, %bb.dh
  %.pn256 = phi { ptr, i32 } [ %i.alq, %bb.dh ], [ %i.alr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i770 ], [ %i.alr, %bb.di ]
  %i.alw = load ptr, ptr %89, align 8, !tbaa !19672 ; 2 uses
  %i.alx = icmp eq ptr %i.alw, %i.dx
  br i1 %i.alx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit775, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i773

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i773: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772
  %i.aly = load i64, ptr %i.dx, align 8, !tbaa !19682
  %i.alz = add i64 %i.aly, 1
  call void @_ZdlPvm(ptr noundef %i.alw, i64 noundef %i.alz) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit775

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit775: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i773
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #40
  br label %common.resume

bb.dj:                                            ; preds = %_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769
  %.not2551633 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769 ], [ false, %_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit ]
  %i.ama = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit769 ], [ %i.ala, %_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit ] ; 2 uses
  %i.amb = load i64, ptr %i.aiv, align 8, !tbaa !19676 ; 2 uses
  %i.amc = icmp slt i64 %i.amb, 0
  br i1 %i.amc, label %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, label %.lr.ph.i.i.i.preheader

_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit: ; preds = %bb.dj
  %i.amd = shl i64 %i.amb, 1
  %i.ame = inttoptr i64 %i.amd to ptr             ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ame, align 8, !tbaa !19766 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ame, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !19676 ; 2 uses
  %.not.i783 = icmp eq i64 %.sroa.3.0.copyload.i.i.i, 0
  br i1 %.not.i783, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.dj, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit
  %.sroa.0.0.i.i.i7772471 = phi ptr [ %.sroa.0.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.aiv, %bb.dj ] ; 3 uses
  %.sroa.3.0.i.i.i7762469 = phi i64 [ %.sroa.3.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ 64, %bb.dj ] ; 3 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.dk
  %.01422.i.i.i = phi i64 [ %i.amn, %bb.dk ], [ 0, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %i.amf = lshr i64 %.01422.i.i.i, 6
  %i.amg = and i64 %.01422.i.i.i, 63
  %i.amh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i7772471, i64 %i.amf
  %i.ami = load i64, ptr %i.amh, align 8, !tbaa !19676, !noalias !21439
  %i.amj = lshr i64 %i.ami, %i.amg                ; 2 uses
  %.not.i.i.i784 = icmp eq i64 %i.amj, 0
  br i1 %.not.i.i.i784, label %bb.dk, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.amk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.amj, i1 true)
  %i.aml = add i64 %i.amk, %.01422.i.i.i
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit

bb.dk:                                            ; preds = %.lr.ph.i.i.i
  %i.amm = and i64 %.01422.i.i.i, -64
  %i.amn = add i64 %i.amm, 64                     ; 3 uses
  %i.amo = icmp ult i64 %i.amn, %.sroa.3.0.i.i.i7762469
  br i1 %i.amo, label %.lr.ph.i.i.i, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, !llvm.loop !720

_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit: ; preds = %bb.dk, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, %.thread.i.i.i
  %.sroa.0.0.i.i.i7772472 = phi ptr [ %.sroa.0.0.i.i.i7772471, %.thread.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %.sroa.0.0.i.i.i7772471, %bb.dk ]
  %.sroa.3.0.i.i.i7762470 = phi i64 [ %.sroa.3.0.i.i.i7762469, %.thread.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %.sroa.3.0.i.i.i7762469, %bb.dk ] ; 4 uses
  %.2.i.i.i = phi i64 [ %i.aml, %.thread.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.amn, %bb.dk ] ; 2 uses
  %.not17132052 = icmp eq i64 %.2.i.i.i, %.sroa.3.0.i.i.i7762470
  br i1 %.not17132052, label %._crit_edge2055, label %.lr.ph2054

._crit_edge2055:                                  ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit
  %i.amp = getelementptr inbounds i8, ptr %.sroa.01449.02058, i64 -16
  %.neg.i.i.i789 = mul nsw i64 %.sroa.9.02057, -16
  %i.amq = getelementptr inbounds i8, ptr %i.amp, i64 %.neg.i.i.i789 ; 2 uses
  %.not19.i5.i790 = icmp eq i64 %.sroa.9.02057, 0
  br i1 %.not19.i5.i790, label %.critedge.i.i795.preheader, label %thread-pre-split.i791

.critedge.i.i795.preheader:                       ; preds = %bb.dl, %._crit_edge2055
  br label %.critedge.i.i795

bb.dl:                                            ; preds = %thread-pre-split.i791
  %.not19.i.i793 = icmp eq i64 %i.amt, 0
  br i1 %.not19.i.i793, label %.critedge.i.i795.preheader, label %thread-pre-split.i791

thread-pre-split.i791:                            ; preds = %._crit_edge2055, %bb.dl
  %i.amr = phi i64 [ %i.amt, %bb.dl ], [ %.sroa.9.02057, %._crit_edge2055 ]
  %i.ams = phi ptr [ %i.amu, %bb.dl ], [ %.sroa.01449.02058, %._crit_edge2055 ]
  %i.amt = add nsw i64 %i.amr, -1                 ; 4 uses
  %i.amu = getelementptr inbounds i8, ptr %i.ams, i64 -16 ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amq, i64 %i.amt
  %i.amw = load i8, ptr %i.amv, align 1, !tbaa !19682
  %.not.i792 = icmp eq i8 %i.amw, 0
  br i1 %.not.i792, label %bb.dl, label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit, !prof !19683, !llvm.loop !723

.critedge.i.i795:                                 ; preds = %.critedge.i.i795.preheader, %bb.dm
  %.017.i.i796 = phi ptr [ %i.ana, %bb.dm ], [ %i.amq, %.critedge.i.i795.preheader ] ; 3 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %.017.i.i796, i64 14
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !19682
  %i.amz = and i8 %i.amy, 15
  %.not2.i797 = icmp eq i8 %i.amz, 0
  br i1 %.not2.i797, label %bb.dm, label %._crit_edge2061, !prof !19685

bb.dm:                                            ; preds = %.critedge.i.i795
  %i.ana = getelementptr inbounds i8, ptr %.017.i.i796, i64 -256 ; 4 uses
  %i.anb = load <16 x i8>, ptr %i.ana, align 16, !tbaa !19682
  %i.anc = icmp eq <16 x i8> %i.anb, zeroinitializer
  %i.and = bitcast <16 x i1> %i.anc to i16
  %i.ane = and i16 %i.and, 16383                  ; 2 uses
  %i.anf = getelementptr inbounds i8, ptr %.017.i.i796, i64 -512
  call void @llvm.prefetch.p0(ptr nonnull %i.anf, i32 0, i32 3, i32 1)
  %.not3.i799 = icmp eq i16 %i.ane, 16383
  br i1 %.not3.i799, label %.critedge.i.i795, label %bb.dn, !prof !19683, !llvm.loop !724

bb.dn:                                            ; preds = %bb.dm
  %i.ang = xor i16 %i.ane, 16383
  %i.anh = zext nneg i16 %i.ang to i32
  %i.ani = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.anh, i1 true)
  %i.anj = xor i32 %i.ani, 31
  %i.ank = zext nneg i32 %i.anj to i64            ; 2 uses
  %i.anl = icmp ne ptr %i.ana, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.anl)
  %i.anm = shl nuw nsw i64 %i.ank, 4
  %i.ann = getelementptr i8, ptr %i.ana, i64 %i.anm
  %i.ano = getelementptr i8, ptr %i.ann, i64 16
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit

_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit: ; preds = %thread-pre-split.i791, %bb.dn
  %.sroa.9.3 = phi i64 [ %i.ank, %bb.dn ], [ %i.amt, %thread-pre-split.i791 ]
  %.sroa.01449.1 = phi ptr [ %i.ano, %bb.dn ], [ %i.amu, %thread-pre-split.i791 ] ; 2 uses
  %.not1707 = icmp eq ptr %.sroa.01449.1, null
  br i1 %.not1707, label %._crit_edge2061, label %bb.cz

.lr.ph2054:                                       ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit
  %.sroa.7.02053 = phi i64 [ %.2.i.i, %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit ], [ %.2.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit ] ; 8 uses
  %i.anp = load i64, ptr %i.dy, align 8, !tbaa !19695 ; 3 uses
  %i.anq = icmp ult i64 %i.anp, 512
  br i1 %i.anq, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %.lr.ph2054
  %i.anr = icmp samesign ult i64 %i.anp, 256
  br i1 %i.anr, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ans = load i64, ptr %i.ea, align 8, !tbaa !19767
  %i.ant = and i64 %i.ans, -16
  %i.anu = inttoptr i64 %i.ant to ptr             ; 2 uses
  %i.anv = load i64, ptr %i.anu, align 16, !tbaa !19676
  %i.anw = icmp eq i64 %.sroa.7.02053, %i.anv
  br i1 %i.anw, label %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i

bb.dq:                                            ; preds = %.lr.ph2054
  %i.anx = zext i64 %.sroa.7.02053 to i128
  %i.any = mul nuw i128 %i.anx, 14181476777654086739
  %i.anz = lshr i128 %i.any, 64
  %i.aoa = trunc nuw i128 %i.anz to i64
  %i.aob = mul i64 %.sroa.7.02053, -4265267296055464877
  %i.aoc = xor i64 %i.aob, %i.aoa
  %i.aod = mul i64 %i.aoc, -4265267296055464877   ; 2 uses
  %i.aoe = lshr i64 %i.aod, 14
  %i.aof = and i64 %i.aoe, 255
  %i.aog = lshr i64 %i.aod, 22
  %.sroa.speculated.i.i.i.i800 = call i64 @llvm.umax.i64(i64 %i.aof, i64 1) ; 2 uses
  %i.aoh = shl nuw nsw i64 %.sroa.speculated.i.i.i.i800, 1
  %i.aoi = or disjoint i64 %i.aoh, 1
  %i.aoj = trunc nuw i64 %.sroa.speculated.i.i.i.i800 to i8
  %i.aok = insertelement <16 x i8> poison, i8 %i.aoj, i64 0
  %i.aol = shufflevector <16 x i8> %i.aok, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aom = and i64 %i.anp, 255                    ; 2 uses
  %i.aon = shl nuw i64 1, %i.aom
  %notmask.i.i801 = shl nsw i64 -1, %i.aom
  %i.aoo = xor i64 %notmask.i.i801, -1
  %i.aop = load ptr, ptr %i.dz, align 8, !tbaa !19691
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dt, %bb.dq
  %.024.i62.i802 = phi i64 [ %i.aon, %bb.dq ], [ %i.apn, %bb.dt ]
  %.026.i61.i803 = phi i64 [ %i.aog, %bb.dq ], [ %i.apo, %bb.dt ] ; 2 uses
  %i.aoq = and i64 %.026.i61.i803, %i.aoo
  %i.aor = shl nsw i64 %i.aoq, 8
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aop, i64 %i.aor ; 4 uses
  %i.aot = getelementptr i8, ptr %i.aos, i64 144
  call void @llvm.prefetch.p0(ptr %i.aot, i32 0, i32 3, i32 1)
  %i.aou = load <16 x i8>, ptr %i.aos, align 16   ; 2 uses
  %i.aov = icmp eq <16 x i8> %i.aou, %i.aol
  %i.aow = bitcast <16 x i1> %i.aov to i16
  %i.aox = zext i16 %i.aow to i32                 ; 2 uses
  %i.aoy = and i32 %i.aox, 16383
  %.not.i804 = icmp eq i32 %i.aoy, 0
  %i.aoz = extractelement <16 x i8> %i.aou, i64 15
  br i1 %.not.i804, label %.loopexit.i809, label %.preheader.i805

.preheader.i805:                                  ; preds = %bb.dr
  %i.apa = icmp ne ptr %i.aos, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.apa)
  br label %bb.ds

bb.ds:                                            ; preds = %.critedge.i.i807, %.preheader.i805
  %.sroa.019.0.i806 = phi i32 [ %i.apk, %.critedge.i.i807 ], [ %i.aox, %.preheader.i805 ] ; 4 uses
  %i.apb = icmp ne i32 %.sroa.019.0.i806, 0
  call void @llvm.assume(i1 %i.apb)
  %i.apc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.i806, i1 true)
  %i.apd = shl nuw nsw i32 %i.apc, 4
  %i.ape = zext nneg i32 %i.apd to i64
  %i.apf = getelementptr i8, ptr %i.aos, i64 %i.ape ; 2 uses
  %i.apg = getelementptr i8, ptr %i.apf, i64 16
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !19676
  %i.api = icmp eq i64 %.sroa.7.02053, %i.aph
  br i1 %i.api, label %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit.loopexit, label %.critedge.i.i807, !prof !19685

.critedge.i.i807:                                 ; preds = %bb.ds
  %i.apj = add nsw i32 %.sroa.019.0.i806, -1
  %i.apk = and i32 %i.apj, %.sroa.019.0.i806      ; 2 uses
  %i.apl = and i32 %i.apk, 16382
  %.not58.i808 = icmp eq i32 %i.apl, 0
  br i1 %.not58.i808, label %.loopexit.i809, label %bb.ds, !llvm.loop !721

.loopexit.i809:                                   ; preds = %.critedge.i.i807, %bb.dr
  %i.apm = icmp eq i8 %i.aoz, 0
  br i1 %i.apm, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i, label %bb.dt, !prof !19685

bb.dt:                                            ; preds = %.loopexit.i809
  %i.apn = add i64 %.024.i62.i802, -1             ; 2 uses
  %i.apo = add i64 %i.aoi, %.026.i61.i803
  %.not.i.i810 = icmp eq i64 %i.apn, 0
  br i1 %.not.i.i810, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i, label %bb.dr, !llvm.loop !722

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i: ; preds = %bb.dp, %bb.do, %bb.dt, %.loopexit.i809
  call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.12) #20
  unreachable

_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit.loopexit: ; preds = %bb.ds
  %i.app = getelementptr i8, ptr %i.apf, i64 16
  br label %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit

_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit: ; preds = %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit.loopexit, %bb.dp
  %.sroa.018.149.i811 = phi ptr [ %i.anu, %bb.dp ], [ %i.app, %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit.loopexit ]
  %i.apq = getelementptr inbounds nuw i8, ptr %.sroa.018.149.i811, i64 8
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !19769 ; 10 uses
  %i.aps = load i64, ptr %i.eb, align 8, !tbaa !19695 ; 2 uses
  %i.apt = icmp ult i64 %i.aps, 256
  br i1 %i.apt, label %.loopexit1733, label %bb.du

bb.du:                                            ; preds = %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit
  %i.apu = ptrtoint ptr %i.apr to i64             ; 2 uses
  %i.apv = zext i64 %i.apu to i128
  %i.apw = mul nuw i128 %i.apv, 14181476777654086739
  %i.apx = lshr i128 %i.apw, 64
  %i.apy = trunc nuw i128 %i.apx to i64
  %i.apz = mul i64 %i.apu, -4265267296055464877
  %i.aqa = xor i64 %i.apz, %i.apy
  %i.aqb = mul i64 %i.aqa, -4265267296055464877   ; 2 uses
  %i.aqc = lshr i64 %i.aqb, 14
  %i.aqd = and i64 %i.aqc, 255
  %i.aqe = lshr i64 %i.aqb, 22
  %.sroa.speculated.i.i.i.i812 = call i64 @llvm.umax.i64(i64 %i.aqd, i64 1) ; 2 uses
  %i.aqf = shl nuw nsw i64 %.sroa.speculated.i.i.i.i812, 1
  %i.aqg = or disjoint i64 %i.aqf, 1
  %i.aqh = trunc nuw i64 %.sroa.speculated.i.i.i.i812 to i8
  %i.aqi = insertelement <16 x i8> poison, i8 %i.aqh, i64 0
  %i.aqj = shufflevector <16 x i8> %i.aqi, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aqk = and i64 %i.aps, 255                    ; 2 uses
  %i.aql = shl nuw i64 1, %i.aqk
  %notmask.i.i813 = shl nsw i64 -1, %i.aqk
  %i.aqm = xor i64 %notmask.i.i813, -1
  %i.aqn = load ptr, ptr %i.ed, align 8, !tbaa !19714
  %i.aqo = load ptr, ptr %i.ec, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dx, %bb.du
  %.023.i54.i814 = phi i64 [ %i.aql, %bb.du ], [ %i.aro, %bb.dx ]
  %.025.i53.i815 = phi i64 [ %i.aqe, %bb.du ], [ %i.arp, %bb.dx ] ; 2 uses
  %i.aqp = and i64 %.025.i53.i815, %i.aqm
  %i.aqq = shl nsw i64 %i.aqp, 6
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqn, i64 %i.aqq ; 3 uses
  %i.aqs = load <16 x i8>, ptr %i.aqr, align 16   ; 2 uses
  %i.aqt = icmp eq <16 x i8> %i.aqs, %i.aqj
  %i.aqu = bitcast <16 x i1> %i.aqt to i16
  %i.aqv = zext i16 %i.aqu to i32                 ; 2 uses
  %i.aqw = and i32 %i.aqv, 4095
  %.not.i816 = icmp eq i32 %i.aqw, 0
  %i.aqx = extractelement <16 x i8> %i.aqs, i64 15
  br i1 %.not.i816, label %.loopexit.i821, label %.preheader.i817

.preheader.i817:                                  ; preds = %bb.dv
  %i.aqy = icmp ne ptr %i.aqr, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.aqy)
  br label %bb.dw

bb.dw:                                            ; preds = %.critedge.i.i819, %.preheader.i817
  %.sroa.014.0.i818 = phi i32 [ %i.arl, %.critedge.i.i819 ], [ %i.aqv, %.preheader.i817 ] ; 4 uses
  %i.aqz = icmp ne i32 %.sroa.014.0.i818, 0
  call void @llvm.assume(i1 %i.aqz)
  %i.ara = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.014.0.i818, i1 true)
  %i.arb = shl nuw nsw i32 %i.ara, 2
  %i.arc = zext nneg i32 %i.arb to i64
  %i.ard = getelementptr i8, ptr %i.aqr, i64 %i.arc
  %i.are = getelementptr i8, ptr %i.ard, i64 16
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !19786
  %i.arg = zext i32 %i.arf to i64
  %i.arh = getelementptr inbounds nuw [32 x i8], ptr %i.aqo, i64 %i.arg ; 4 uses
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !19769
  %i.arj = icmp eq ptr %i.apr, %i.ari
  br i1 %i.arj, label %bb.ee, label %.critedge.i.i819, !prof !19685

.critedge.i.i819:                                 ; preds = %bb.dw
  %i.ark = add nsw i32 %.sroa.014.0.i818, -1
  %i.arl = and i32 %i.ark, %.sroa.014.0.i818      ; 2 uses
  %i.arm = and i32 %i.arl, 4094
  %.not50.i820 = icmp eq i32 %i.arm, 0
  br i1 %.not50.i820, label %.loopexit.i821, label %bb.dw, !llvm.loop !766

.loopexit.i821:                                   ; preds = %.critedge.i.i819, %bb.dv
  %i.arn = icmp eq i8 %i.aqx, 0
  br i1 %i.arn, label %.loopexit1733, label %bb.dx, !prof !19685

bb.dx:                                            ; preds = %.loopexit.i821
  %i.aro = add i64 %.023.i54.i814, -1             ; 2 uses
  %i.arp = add i64 %i.aqg, %.025.i53.i815
  %.not.i.i822 = icmp eq i64 %i.aro, 0
  br i1 %.not.i.i822, label %.loopexit1733, label %bb.dv, !llvm.loop !767

.loopexit1733:                                    ; preds = %bb.dx, %.loopexit.i821, %_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01431, ptr noundef nonnull align 8 dereferenceable(32) %i.apr, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01431, i64 32, i1 false)
  %i.arq = load ptr, ptr %2, align 8, !tbaa !797
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 16
  %i.ars = load ptr, ptr %i.arr, align 8
  %i.art = call { i64, ptr } %i.ars(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %53), !call_target !809, !inline_history !21209 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53)
  %i.aru = extractvalue { i64, ptr } %i.art, 0
  %i.arv = extractvalue { i64, ptr } %i.art, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #40, !noalias !21440
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 %i.aru
  store ptr %i.eo, ptr %24, align 8, !tbaa !19764, !alias.scope !21441, !noalias !21440
  store i64 0, ptr %i.ep, align 8, !tbaa !19673, !alias.scope !21441, !noalias !21440
  store i8 0, ptr %i.eo, align 8, !tbaa !19682, !alias.scope !21441, !noalias !21440
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.arv, ptr %i.arw, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %.noexc1.i1256 unwind label %bb.dy, !noalias !21440

bb.dy:                                            ; preds = %.loopexit1733
  %i.arx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ary = load ptr, ptr %24, align 8, !tbaa !19672, !alias.scope !21441, !noalias !21440 ; 2 uses
  %i.arz = icmp eq ptr %i.ary, %i.eo
  br i1 %i.arz, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1252: ; preds = %bb.dy
  %i.asa = load i64, ptr %i.eo, align 8, !tbaa !19682, !alias.scope !21441, !noalias !21440
  %i.asb = add i64 %i.asa, 1
  call void @_ZdlPvm(ptr noundef %i.ary, i64 noundef %i.asb) #41, !noalias !21440
  br label %common.resume

.noexc1.i1256:                                    ; preds = %.loopexit1733
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #40, !noalias !21442
  %i.asc = load ptr, ptr %24, align 8, !tbaa !19672, !noalias !21440
  %i.asd = load i64, ptr %i.ep, align 8, !tbaa !19673, !noalias !21440
  %i.ase = ptrtoint ptr %i.asc to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1257 = zext i64 %i.asd to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1258 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1257, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1259 = zext i64 %i.ase to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1260 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1258, %.sroa.01.sroa.0.0.insert.ext.i.i1259
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1260, ptr %23, align 16, !noalias !21442
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %91, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %23)
          to label %bb.dz unwind label %bb.ea

bb.dz:                                            ; preds = %.noexc1.i1256
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #40, !noalias !21442
  %i.asf = load ptr, ptr %24, align 8, !tbaa !19672, !noalias !21440 ; 2 uses
  %i.asg = icmp eq ptr %i.asf, %i.eo
  br i1 %i.asg, label %.noexc297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1264: ; preds = %bb.dz
  %i.ash = load i64, ptr %i.eo, align 8, !tbaa !19682, !noalias !21440
  %i.asi = add i64 %i.ash, 1
  call void @_ZdlPvm(ptr noundef %i.asf, i64 noundef %i.asi) #41
  br label %.noexc297

bb.ea:                                            ; preds = %.noexc1.i1256
  %i.asj = landingpad { ptr, i32 }
          cleanup
  %i.ask = load ptr, ptr %24, align 8, !tbaa !19672, !noalias !21440 ; 2 uses
  %i.asl = icmp eq ptr %i.ask, %i.eo
  br i1 %i.asl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1261: ; preds = %bb.ea
  %i.asm = load i64, ptr %i.eo, align 8, !tbaa !19682, !noalias !21440
  %i.asn = add i64 %i.asm, 1
  call void @_ZdlPvm(ptr noundef %i.ask, i64 noundef %i.asn) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1262: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1261
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #40, !noalias !21440
  br label %common.resume

.noexc297:                                        ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1264
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #40, !noalias !21440
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #40, !noalias !21443
  %i.aso = load ptr, ptr %91, align 8, !tbaa !19672
  %i.asp = load i64, ptr %i.eq, align 8, !tbaa !19673
  %i.asq = ptrtoint ptr %i.aso to i64
  %.sroa.01.sroa.4.0.insert.ext.i824 = zext i64 %i.asp to i128
  %.sroa.01.sroa.4.0.insert.shift.i825 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i824, 64
  %.sroa.01.sroa.0.0.insert.ext.i826 = zext i64 %i.asq to i128
  %.sroa.01.sroa.0.0.insert.insert.i827 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i825, %.sroa.01.sroa.0.0.insert.ext.i826
  store i128 %.sroa.01.sroa.0.0.insert.insert.i827, ptr %66, align 16, !noalias !21443
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %90, ptr nonnull @.str.282, i64 35, i64 13, ptr nonnull %66)
          to label %bb.eb unwind label %bb.ec

bb.eb:                                            ; preds = %.noexc297
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #40, !noalias !21443
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %90, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit829 unwind label %bb.ed, !inline_history !21208

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit829: ; preds = %bb.eb
  %i.asr = load ptr, ptr %90, align 8, !tbaa !19672 ; 2 uses
  %i.ass = icmp eq ptr %i.asr, %i.er
  br i1 %i.ass, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit829
  %i.ast = load i64, ptr %i.er, align 8, !tbaa !19682
  %i.asu = add i64 %i.ast, 1
  call void @_ZdlPvm(ptr noundef %i.asr, i64 noundef %i.asu) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit829, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i830
  %i.asv = load ptr, ptr %91, align 8, !tbaa !19672 ; 2 uses
  %i.asw = icmp eq ptr %i.asv, %i.es
  br i1 %i.asw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832
  %i.asx = load i64, ptr %i.es, align 8, !tbaa !19682
  %i.asy = add i64 %i.asx, 1
  call void @_ZdlPvm(ptr noundef %i.asv, i64 noundef %i.asy) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit832, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i833
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #40
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit378

bb.ec:                                            ; preds = %.noexc297
  %i.asz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit838

bb.ed:                                            ; preds = %bb.eb
  %i.ata = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.atb = load ptr, ptr %90, align 8, !tbaa !19672 ; 2 uses
  %i.atc = icmp eq ptr %i.atb, %i.er
  br i1 %i.atc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit838, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i836

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i836: ; preds = %bb.ed
  %i.atd = load i64, ptr %i.er, align 8, !tbaa !19682
  %i.ate = add i64 %i.atd, 1
  call void @_ZdlPvm(ptr noundef %i.atb, i64 noundef %i.ate) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit838

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit838: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i836, %bb.ec
  %.pn259 = phi { ptr, i32 } [ %i.asz, %bb.ec ], [ %i.ata, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i836 ], [ %i.ata, %bb.ed ]
  %i.atf = load ptr, ptr %91, align 8, !tbaa !19672 ; 2 uses
  %i.atg = icmp eq ptr %i.atf, %i.es
  br i1 %i.atg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i839

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i839: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit838
  %i.ath = load i64, ptr %i.es, align 8, !tbaa !19682
  %i.ati = add i64 %i.ath, 1
  call void @_ZdlPvm(ptr noundef %i.atf, i64 noundef %i.ati) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit838, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i839
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #40
  br label %common.resume

bb.ee:                                            ; preds = %bb.dw
  %i.atj = getelementptr inbounds nuw i8, ptr %i.arh, i64 8
  %i.atk = getelementptr inbounds nuw i8, ptr %i.arh, i64 24
  %i.atl = load i64, ptr %i.atk, align 8, !tbaa !19695 ; 2 uses
  %i.atm = icmp ult i64 %i.atl, 256
  br i1 %i.atm, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit378.thread, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.atn = load ptr, ptr %.sroa.01449.02058, align 8, !tbaa !19763 ; 2 uses
  %i.ato = ptrtoint ptr %i.atn to i64             ; 2 uses
  %i.atp = zext i64 %i.ato to i128
  %i.atq = mul nuw i128 %i.atp, 14181476777654086739
  %i.atr = lshr i128 %i.atq, 64
  %i.ats = trunc nuw i128 %i.atr to i64
  %i.att = mul i64 %i.ato, -4265267296055464877
  %i.atu = xor i64 %i.att, %i.ats
  %i.atv = mul i64 %i.atu, -4265267296055464877   ; 2 uses
  %i.atw = lshr i64 %i.atv, 14
  %i.atx = and i64 %i.atw, 255
  %i.aty = lshr i64 %i.atv, 22
  %.sroa.speculated.i.i.i842 = call i64 @llvm.umax.i64(i64 %i.atx, i64 1) ; 2 uses
  %i.atz = shl nuw nsw i64 %.sroa.speculated.i.i.i842, 1
  %i.aua = or disjoint i64 %i.atz, 1
  %i.aub = trunc nuw i64 %.sroa.speculated.i.i.i842 to i8
  %i.auc = insertelement <16 x i8> poison, i8 %i.aub, i64 0
  %i.aud = shufflevector <16 x i8> %i.auc, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aue = and i64 %i.atl, 255                    ; 2 uses
  %i.auf = shl nuw i64 1, %i.aue
  %notmask.i845 = shl nsw i64 -1, %i.aue
  %i.aug = xor i64 %notmask.i845, -1
  %i.auh = getelementptr inbounds nuw i8, ptr %i.arh, i64 16
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !19720
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ei
  %.023.i2049 = phi i64 [ %i.auf, %bb.ef ], [ %i.avj, %bb.ei ]
  %.025.i2048 = phi i64 [ %i.aty, %bb.ef ], [ %i.avk, %bb.ei ] ; 2 uses
  %i.auj = and i64 %.025.i2048, %i.aug
  %i.auk = shl nsw i64 %i.auj, 6
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aui, i64 %i.auk ; 3 uses
  %i.aum = load <16 x i8>, ptr %i.aul, align 16   ; 2 uses
  %i.aun = icmp eq <16 x i8> %i.aum, %i.aud
  %i.auo = bitcast <16 x i1> %i.aun to i16
  %i.aup = zext i16 %i.auo to i32                 ; 2 uses
  %i.auq = and i32 %i.aup, 4095
  %.not1714 = icmp eq i32 %i.auq, 0
  %i.aur = extractelement <16 x i8> %i.aum, i64 15
  br i1 %.not1714, label %.loopexit1732, label %.preheader1731

.preheader1731:                                   ; preds = %bb.eg
  %i.aus = icmp ne ptr %i.aul, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.aus)
  %i.aut = load ptr, ptr %i.atj, align 8, !tbaa !20277
  br label %bb.eh

bb.eh:                                            ; preds = %.preheader1731, %.critedge.i
  %.sroa.01571.0 = phi i32 [ %i.avg, %.critedge.i ], [ %i.aup, %.preheader1731 ] ; 4 uses
  %i.auu = icmp ne i32 %.sroa.01571.0, 0
  call void @llvm.assume(i1 %i.auu)
  %i.auv = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.01571.0, i1 true)
  %i.auw = shl nuw nsw i32 %i.auv, 2
  %i.aux = zext nneg i32 %i.auw to i64
  %i.auy = getelementptr i8, ptr %i.aul, i64 %i.aux
  %i.auz = getelementptr i8, ptr %i.auy, i64 16
  %i.ava = load i32, ptr %i.auz, align 4, !tbaa !19786
  %i.avb = zext i32 %i.ava to i64
  %i.avc = getelementptr inbounds nuw [8 x i8], ptr %i.aut, i64 %i.avb
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !19763
  %i.ave = icmp eq ptr %i.atn, %i.avd
  br i1 %i.ave, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit378, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.eh
  %i.avf = add nsw i32 %.sroa.01571.0, -1
  %i.avg = and i32 %i.avf, %.sroa.01571.0         ; 2 uses
  %i.avh = and i32 %i.avg, 4094
  %.not1715 = icmp eq i32 %i.avh, 0
  br i1 %.not1715, label %.loopexit1732, label %bb.eh, !llvm.loop !762

.loopexit1732:                                    ; preds = %.critedge.i, %bb.eg
  %i.avi = icmp eq i8 %i.aur, 0
  br i1 %i.avi, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit378.thread, label %bb.ei, !prof !19685

bb.ei:                                            ; preds = %.loopexit1732
  %i.avj = add i64 %.023.i2049, -1                ; 2 uses
  %i.avk = add i64 %i.aua, %.025.i2048
  %.not.i = icmp eq i64 %i.avj, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit378.thread, label %bb.eg, !llvm.loop !763

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit378.thread: ; preds = %.loopexit1732, %bb.ei, %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01430, ptr noundef nonnull align 8 dereferenceable(32) %i.apr, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01430, i64 32, i1 false)
  %i.avl = load ptr, ptr %2, align 8, !tbaa !797
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 16
  %i.avn = load ptr, ptr %i.avm, align 8
  %i.avo = call { i64, ptr } %i.avn(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %52), !call_target !809, !inline_history !21209 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  %i.avp = extractvalue { i64, ptr } %i.avo, 0
  %i.avq = extractvalue { i64, ptr } %i.avo, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #40, !noalias !21444
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 %i.avp
  store ptr %i.ee, ptr %22, align 8, !tbaa !19764, !alias.scope !21445, !noalias !21444
  store i64 0, ptr %i.ef, align 8, !tbaa !19673, !alias.scope !21445, !noalias !21444
  store i8 0, ptr %i.ee, align 8, !tbaa !19682, !alias.scope !21445, !noalias !21444
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.avq, ptr %i.avr, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %.noexc1.i1271 unwind label %bb.ej, !noalias !21444

bb.ej:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit378.thread
  %i.avs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.avt = load ptr, ptr %22, align 8, !tbaa !19672, !alias.scope !21445, !noalias !21444 ; 2 uses
  %i.avu = icmp eq ptr %i.avt, %i.ee
  br i1 %i.avu, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1267: ; preds = %bb.ej
  %i.avv = load i64, ptr %i.ee, align 8, !tbaa !19682, !alias.scope !21445, !noalias !21444
  %i.avw = add i64 %i.avv, 1
  call void @_ZdlPvm(ptr noundef %i.avt, i64 noundef %i.avw) #41, !noalias !21444
  br label %common.resume

.noexc1.i1271:                                    ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit378.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #40, !noalias !21446
  %i.avx = load ptr, ptr %22, align 8, !tbaa !19672, !noalias !21444
  %i.avy = load i64, ptr %i.ef, align 8, !tbaa !19673, !noalias !21444
  %i.avz = ptrtoint ptr %i.avx to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1272 = zext i64 %i.avy to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1273 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1272, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1274 = zext i64 %i.avz to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1275 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1273, %.sroa.01.sroa.0.0.insert.ext.i.i1274
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1275, ptr %21, align 16, !noalias !21446
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %93, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %21)
          to label %bb.ek unwind label %bb.el

bb.ek:                                            ; preds = %.noexc1.i1271
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #40, !noalias !21446
  %i.awa = load ptr, ptr %22, align 8, !tbaa !19672, !noalias !21444 ; 2 uses
  %i.awb = icmp eq ptr %i.awa, %i.ee
  br i1 %i.awb, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1279: ; preds = %bb.ek
  %i.awc = load i64, ptr %i.ee, align 8, !tbaa !19682, !noalias !21444
  %i.awd = add i64 %i.awc, 1
  call void @_ZdlPvm(ptr noundef %i.awa, i64 noundef %i.awd) #41
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1281

bb.el:                                            ; preds = %.noexc1.i1271
  %i.awe = landingpad { ptr, i32 }
          cleanup
  %i.awf = load ptr, ptr %22, align 8, !tbaa !19672, !noalias !21444 ; 2 uses
  %i.awg = icmp eq ptr %i.awf, %i.ee
  br i1 %i.awg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1276: ; preds = %bb.el
  %i.awh = load i64, ptr %i.ee, align 8, !tbaa !19682, !noalias !21444
  %i.awi = add i64 %i.awh, 1
  call void @_ZdlPvm(ptr noundef %i.awf, i64 noundef %i.awi) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1277: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1276
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40, !noalias !21444
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1281: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1279
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #40, !noalias !21444
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #40
  %i.awj = load ptr, ptr %.sroa.01449.02058, align 8, !tbaa !19763 ; 2 uses
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !19672 ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awj, i64 8
  %i.awm = load i64, ptr %i.awl, align 8, !tbaa !19673
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #40, !noalias !21447
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awk, i64 %i.awm
  store ptr %i.eg, ptr %20, align 8, !tbaa !19764, !alias.scope !21448, !noalias !21447
  store i64 0, ptr %i.eh, align 8, !tbaa !19673, !alias.scope !21448, !noalias !21447
  store i8 0, ptr %i.eg, align 8, !tbaa !19682, !alias.scope !21448, !noalias !21447
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.awk, ptr %i.awn, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %.noexc1.i1286 unwind label %bb.em, !noalias !21447

bb.em:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1281
  %i.awo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.awp = load ptr, ptr %20, align 8, !tbaa !19672, !alias.scope !21448, !noalias !21447 ; 2 uses
  %i.awq = icmp eq ptr %i.awp, %i.eg
  br i1 %i.awq, label %.body1296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1282: ; preds = %bb.em
  %i.awr = load i64, ptr %i.eg, align 8, !tbaa !19682, !alias.scope !21448, !noalias !21447
  %i.aws = add i64 %i.awr, 1
  call void @_ZdlPvm(ptr noundef %i.awp, i64 noundef %i.aws) #41, !noalias !21447
  br label %.body1296

.noexc1.i1286:                                    ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1281
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #40, !noalias !21449
  %i.awt = load ptr, ptr %20, align 8, !tbaa !19672, !noalias !21447
  %i.awu = load i64, ptr %i.eh, align 8, !tbaa !19673, !noalias !21447
  %i.awv = ptrtoint ptr %i.awt to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1287 = zext i64 %i.awu to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1288 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1287, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1289 = zext i64 %i.awv to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1290 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1288, %.sroa.01.sroa.0.0.insert.ext.i.i1289
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1290, ptr %19, align 16, !noalias !21449
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %94, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %19)
          to label %bb.en unwind label %bb.eo

bb.en:                                            ; preds = %.noexc1.i1286
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40, !noalias !21449
  %i.aww = load ptr, ptr %20, align 8, !tbaa !19672, !noalias !21447 ; 2 uses
  %i.awx = icmp eq ptr %i.aww, %i.eg
  br i1 %i.awx, label %.noexc326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1294: ; preds = %bb.en
  %i.awy = load i64, ptr %i.eg, align 8, !tbaa !19682, !noalias !21447
  %i.awz = add i64 %i.awy, 1
  call void @_ZdlPvm(ptr noundef %i.aww, i64 noundef %i.awz) #41
  br label %.noexc326

bb.eo:                                            ; preds = %.noexc1.i1286
  %i.axa = landingpad { ptr, i32 }
          cleanup
  %i.axb = load ptr, ptr %20, align 8, !tbaa !19672, !noalias !21447 ; 2 uses
  %i.axc = icmp eq ptr %i.axb, %i.eg
  br i1 %i.axc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1291: ; preds = %bb.eo
  %i.axd = load i64, ptr %i.eg, align 8, !tbaa !19682, !noalias !21447
  %i.axe = add i64 %i.axd, 1
  call void @_ZdlPvm(ptr noundef %i.axb, i64 noundef %i.axe) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1292: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1291
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #40, !noalias !21447
  br label %.body1296

.noexc326:                                        ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1294
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #40, !noalias !21447
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #40, !noalias !21450
  call void @llvm.experimental.noalias.scope.decl(metadata !21451)
  %i.axf = load ptr, ptr %93, align 8, !tbaa !19672, !noalias !21451
  %i.axg = load i64, ptr %i.ei, align 8, !tbaa !19673, !noalias !21451
  %i.axh = ptrtoint ptr %i.axf to i64
  %i.axi = load ptr, ptr %94, align 8, !tbaa !19672, !noalias !21451
  %i.axj = load i64, ptr %i.ej, align 8, !tbaa !19673, !noalias !21451
  %i.axk = ptrtoint ptr %i.axi to i64
  %.sroa.04.sroa.4.0.insert.ext.i850 = zext i64 %i.axg to i128
  %.sroa.04.sroa.4.0.insert.shift.i851 = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i850, 64
  %.sroa.04.sroa.0.0.insert.ext.i852 = zext i64 %i.axh to i128
  %.sroa.04.sroa.0.0.insert.insert.i853 = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i851, %.sroa.04.sroa.0.0.insert.ext.i852
  store i128 %.sroa.04.sroa.0.0.insert.insert.i853, ptr %61, align 16, !tbaa !19682, !alias.scope !21451
  %.sroa.0.sroa.4.0.insert.ext.i854 = zext i64 %i.axj to i128
  %.sroa.0.sroa.4.0.insert.shift.i855 = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i854, 64
  %.sroa.0.sroa.0.0.insert.ext.i856 = zext i64 %i.axk to i128
  %.sroa.0.sroa.0.0.insert.insert.i857 = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i855, %.sroa.0.sroa.0.0.insert.ext.i856
  store i128 %.sroa.0.sroa.0.0.insert.insert.i857, ptr %i.ek, align 16, !tbaa !19682, !alias.scope !21451
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %92, ptr nonnull @.str.283, i64 40, i64 221, ptr nonnull %61)
          to label %bb.ep unwind label %bb.eq

bb.ep:                                            ; preds = %.noexc326
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #40, !noalias !21450
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit859 unwind label %bb.er, !inline_history !21208

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit859: ; preds = %bb.ep
  %i.axl = load ptr, ptr %92, align 8, !tbaa !19672 ; 2 uses
  %i.axm = icmp eq ptr %i.axl, %i.el
  br i1 %i.axm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit862, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i860

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i860: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit859
  %i.axn = load i64, ptr %i.el, align 8, !tbaa !19682
  %i.axo = add i64 %i.axn, 1
  call void @_ZdlPvm(ptr noundef %i.axl, i64 noundef %i.axo) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit862

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit862: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit859, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i860
  %i.axp = load ptr, ptr %94, align 8, !tbaa !19672 ; 2 uses
  %i.axq = icmp eq ptr %i.axp, %i.em
  br i1 %i.axq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i863

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i863: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit862
  %i.axr = load i64, ptr %i.em, align 8, !tbaa !19682
  %i.axs = add i64 %i.axr, 1
  call void @_ZdlPvm(ptr noundef %i.axp, i64 noundef %i.axs) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit862, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i863
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #40
  %i.axt = load ptr, ptr %93, align 8, !tbaa !19672 ; 2 uses
  %i.axu = icmp eq ptr %i.axt, %i.en
  br i1 %i.axu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit868, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i866

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i866: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865
  %i.axv = load i64, ptr %i.en, align 8, !tbaa !19682
  %i.axw = add i64 %i.axv, 1
  call void @_ZdlPvm(ptr noundef %i.axt, i64 noundef %i.axw) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit868

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit868: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit865, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i866
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #40
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit378

bb.eq:                                            ; preds = %.noexc326
  %i.axx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit871

bb.er:                                            ; preds = %bb.ep
  %i.axy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.axz = load ptr, ptr %92, align 8, !tbaa !19672 ; 2 uses
  %i.aya = icmp eq ptr %i.axz, %i.el
  br i1 %i.aya, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit871, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i869

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i869: ; preds = %bb.er
  %i.ayb = load i64, ptr %i.el, align 8, !tbaa !19682
  %i.ayc = add i64 %i.ayb, 1
  call void @_ZdlPvm(ptr noundef %i.axz, i64 noundef %i.ayc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit871

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit871: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i869, %bb.eq
  %.pn261 = phi { ptr, i32 } [ %i.axx, %bb.eq ], [ %i.axy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i869 ], [ %i.axy, %bb.er ] ; 2 uses
  %i.ayd = load ptr, ptr %94, align 8, !tbaa !19672 ; 2 uses
  %i.aye = icmp eq ptr %i.ayd, %i.em
  br i1 %i.aye, label %.body1296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i872

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i872: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit871
  %i.ayf = load i64, ptr %i.em, align 8, !tbaa !19682
  %i.ayg = add i64 %i.ayf, 1
  call void @_ZdlPvm(ptr noundef %i.ayd, i64 noundef %i.ayg) #41
  br label %.body1296

.body1296:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit871, %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i872, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1282
  %.pn261.pn = phi { ptr, i32 } [ %i.awo, %bb.em ], [ %.pn261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i872 ], [ %i.axa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1292 ], [ %i.awo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1282 ], [ %.pn261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit871 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #40
  %i.ayh = load ptr, ptr %93, align 8, !tbaa !19672 ; 2 uses
  %i.ayi = icmp eq ptr %i.ayh, %i.en
  br i1 %i.ayi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i875

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i875: ; preds = %.body1296
  %i.ayj = load i64, ptr %i.en, align 8, !tbaa !19682
  %i.ayk = add i64 %i.ayj, 1
  call void @_ZdlPvm(ptr noundef %i.ayh, i64 noundef %i.ayk) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit877: ; preds = %.body1296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i875
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #40
  br label %common.resume

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit378: ; preds = %bb.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit868, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit835
  br i1 %.not2551633, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit885, label %bb.es

bb.es:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit378
  %i.ayl = load i64, ptr %i.ama, align 8, !tbaa !19676 ; 2 uses
  %i.aym = icmp slt i64 %i.ayl, 0
  br i1 %i.aym, label %bb.et, label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i878

bb.et:                                            ; preds = %bb.es
  %i.ayn = shl i64 %i.ayl, 1
  %i.ayo = inttoptr i64 %i.ayn to ptr             ; 2 uses
  %.sroa.0.0.copyload.i.i882 = load ptr, ptr %i.ayo, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i883 = getelementptr inbounds nuw i8, ptr %i.ayo, i64 8
  %.sroa.3.0.copyload.i.i884 = load i64, ptr %.sroa.3.0..sroa_idx.i.i883, align 8, !tbaa !19676
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i878

_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i878: ; preds = %bb.et, %bb.es
  %.sroa.3.0.i.i879 = phi i64 [ %.sroa.3.0.copyload.i.i884, %bb.et ], [ 64, %bb.es ]
  %.sroa.0.0.i.i880 = phi ptr [ %.sroa.0.0.copyload.i.i882, %bb.et ], [ %i.ama, %bb.es ]
  %i.ayp = icmp ult i64 %.sroa.7.02053, %.sroa.3.0.i.i879
  br i1 %i.ayp, label %bb.eu, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit885

bb.eu:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i878
  %i.ayq = lshr i64 %.sroa.7.02053, 6
  %i.ayr = and i64 %.sroa.7.02053, 63
  %i.ays = shl nuw i64 1, %i.ayr
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i880, i64 %i.ayq
  %i.ayu = load i64, ptr %i.ayt, align 8, !tbaa !19676
  %i.ayv = and i64 %i.ayu, %i.ays
  %i.ayw = icmp ne i64 %i.ayv, 0
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit885

_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit885: ; preds = %bb.eu, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i878, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit378
  %i.ayx = phi i1 [ false, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit378 ], [ %i.ayw, %bb.eu ], [ false, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i878 ] ; 2 uses
  %i.ayy = load i64, ptr %i.c, align 8, !tbaa !19695 ; 3 uses
  %i.ayz = icmp ult i64 %i.ayy, 512
  br i1 %i.ayz, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit885
  %i.aza = icmp samesign ult i64 %i.ayy, 256
  br i1 %i.aza, label %_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_.exit.thread, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.azb = load i64, ptr %i.ao, align 8, !tbaa !19761
  %i.azc = and i64 %i.azb, -8
  %i.azd = inttoptr i64 %i.azc to ptr
  %i.aze = load ptr, ptr %i.azd, align 8, !tbaa !19734 ; 3 uses
  %i.azf = load i128, ptr %i.apr, align 8
  %i.azg = load i128, ptr %i.aze, align 8
  %i.azh = xor i128 %i.azf, %i.azg
  %i.azi = getelementptr i8, ptr %i.apr, i64 16
  %i.azj = getelementptr i8, ptr %i.aze, i64 16
  %i.azk = load i128, ptr %i.azi, align 8
  %i.azl = load i128, ptr %i.azj, align 8
  %i.azm = xor i128 %i.azk, %i.azl
  %i.azn = or i128 %i.azh, %i.azm
  %i.azo = icmp ne i128 %i.azn, 0
  %i.azp = zext i1 %i.azo to i32
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.azp, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %.loopexit1730, label %_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_.exit.thread

bb.ex:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit885
  %i.azq = load i64, ptr %i.apr, align 8, !tbaa !19676 ; 2 uses
  %i.azr = lshr i64 %i.azq, 56
  %.sroa.speculated.i.i.i.i886 = call i64 @llvm.umax.i64(i64 %i.azr, i64 1) ; 2 uses
  %i.azs = shl nuw nsw i64 %.sroa.speculated.i.i.i.i886, 1
  %i.azt = or disjoint i64 %i.azs, 1
  %i.azu = trunc nuw i64 %.sroa.speculated.i.i.i.i886 to i8
  %i.azv = insertelement <16 x i8> poison, i8 %i.azu, i64 0
  %i.azw = shufflevector <16 x i8> %i.azv, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.azx = and i64 %i.ayy, 255                    ; 2 uses
  %i.azy = shl nuw i64 1, %i.azx
  %notmask.i.i887 = shl nsw i64 -1, %i.azx
  %i.azz = xor i64 %notmask.i.i887, -1
  %i.baa = load ptr, ptr %i.b, align 8, !tbaa !19732
  br label %bb.ey

bb.ey:                                            ; preds = %bb.fa, %bb.ex
  %.024.i62.i888 = phi i64 [ %i.azy, %bb.ex ], [ %i.bbi, %bb.fa ]
  %.026.i61.i889 = phi i64 [ %i.azq, %bb.ex ], [ %i.bbj, %bb.fa ] ; 2 uses
  %i.bab = and i64 %.026.i61.i889, %i.azz
  %i.bac = shl nsw i64 %i.bab, 7
  %i.bad = getelementptr inbounds nuw i8, ptr %i.baa, i64 %i.bac ; 4 uses
  %i.bae = getelementptr i8, ptr %i.bad, i64 80
  call void @llvm.prefetch.p0(ptr %i.bae, i32 0, i32 3, i32 1)
  %i.baf = load <16 x i8>, ptr %i.bad, align 16   ; 2 uses
  %i.bag = icmp eq <16 x i8> %i.baf, %i.azw
  %i.bah = bitcast <16 x i1> %i.bag to i16
  %i.bai = zext i16 %i.bah to i32                 ; 2 uses
  %i.baj = and i32 %i.bai, 16383
  %.not.i890 = icmp eq i32 %i.baj, 0
  %i.bak = extractelement <16 x i8> %i.baf, i64 15
  br i1 %.not.i890, label %.loopexit.i895, label %.preheader.i891

.preheader.i891:                                  ; preds = %bb.ey
  %i.bal = icmp ne ptr %i.bad, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bal)
  br label %bb.ez

bb.ez:                                            ; preds = %.critedge.i.i893, %.preheader.i891
  %.sroa.019.0.i892 = phi i32 [ %i.bbf, %.critedge.i.i893 ], [ %i.bai, %.preheader.i891 ] ; 4 uses
  %i.bam = icmp ne i32 %.sroa.019.0.i892, 0
  call void @llvm.assume(i1 %i.bam)
  %i.ban = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.i892, i1 true)
  %i.bao = shl nuw nsw i32 %i.ban, 3
  %i.bap = zext nneg i32 %i.bao to i64
  %i.baq = getelementptr i8, ptr %i.bad, i64 %i.bap
  %i.bar = getelementptr i8, ptr %i.baq, i64 16
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !19734 ; 3 uses
  %i.bat = load i128, ptr %i.apr, align 8
  %i.bau = load i128, ptr %i.bas, align 8
  %i.bav = xor i128 %i.bat, %i.bau
  %i.baw = getelementptr i8, ptr %i.apr, i64 16
  %i.bax = getelementptr i8, ptr %i.bas, i64 16
  %i.bay = load i128, ptr %i.baw, align 8
  %i.baz = load i128, ptr %i.bax, align 8
  %i.bba = xor i128 %i.bay, %i.baz
  %i.bbb = or i128 %i.bav, %i.bba
  %i.bbc = icmp ne i128 %i.bbb, 0
  %i.bbd = zext i1 %i.bbc to i32
  %.not9.i.i.i.i.i.i.i.i11.i = icmp eq i32 %i.bbd, 0
  br i1 %.not9.i.i.i.i.i.i.i.i11.i, label %.loopexit1730, label %.critedge.i.i893, !prof !19685

.critedge.i.i893:                                 ; preds = %bb.ez
  %i.bbe = add nsw i32 %.sroa.019.0.i892, -1
  %i.bbf = and i32 %i.bbe, %.sroa.019.0.i892      ; 2 uses
  %i.bbg = and i32 %i.bbf, 16382
  %.not58.i894 = icmp eq i32 %i.bbg, 0
  br i1 %.not58.i894, label %.loopexit.i895, label %bb.ez, !llvm.loop !770

.loopexit.i895:                                   ; preds = %.critedge.i.i893, %bb.ey
  %i.bbh = icmp eq i8 %i.bak, 0
  br i1 %i.bbh, label %_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_.exit.thread, label %bb.fa, !prof !19685

bb.fa:                                            ; preds = %.loopexit.i895
  %i.bbi = add i64 %.024.i62.i888, -1             ; 2 uses
  %i.bbj = add i64 %i.azt, %.026.i61.i889
  %.not.i.i896 = icmp eq i64 %i.bbi, 0
  br i1 %.not.i.i896, label %_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_.exit.thread, label %bb.ey, !llvm.loop !771

_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_.exit.thread: ; preds = %bb.fa, %.loopexit.i895, %bb.ew, %bb.ev
  br i1 %i.ayx, label %.critedge, label %bb.fq

.loopexit1730:                                    ; preds = %bb.ez, %bb.ew
  %i.bbk = phi ptr [ %i.aze, %bb.ew ], [ %i.bas, %bb.ez ] ; 3 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 40
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbk, i64 56
  %i.bbn = load i64, ptr %i.bbm, align 8, !tbaa !19695 ; 2 uses
  %i.bbo = icmp ult i64 %i.bbn, 256
  br i1 %i.bbo, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit447, label %bb.fb

bb.fb:                                            ; preds = %.loopexit1730
  %i.bbp = load ptr, ptr %.sroa.01449.02058, align 8, !tbaa !19763 ; 2 uses
  %i.bbq = ptrtoint ptr %i.bbp to i64             ; 2 uses
  %i.bbr = zext i64 %i.bbq to i128
  %i.bbs = mul nuw i128 %i.bbr, 14181476777654086739
  %i.bbt = lshr i128 %i.bbs, 64
  %i.bbu = trunc nuw i128 %i.bbt to i64
  %i.bbv = mul i64 %i.bbq, -4265267296055464877
  %i.bbw = xor i64 %i.bbv, %i.bbu
  %i.bbx = mul i64 %i.bbw, -4265267296055464877   ; 2 uses
  %i.bby = lshr i64 %i.bbx, 14
  %i.bbz = and i64 %i.bby, 255
  %i.bca = lshr i64 %i.bbx, 22
  %.sroa.speculated.i.i.i897 = call i64 @llvm.umax.i64(i64 %i.bbz, i64 1) ; 2 uses
  %i.bcb = shl nuw nsw i64 %.sroa.speculated.i.i.i897, 1
  %i.bcc = or disjoint i64 %i.bcb, 1
  %i.bcd = trunc nuw i64 %.sroa.speculated.i.i.i897 to i8
  %i.bce = insertelement <16 x i8> poison, i8 %i.bcd, i64 0
  %i.bcf = shufflevector <16 x i8> %i.bce, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bcg = and i64 %i.bbn, 255                    ; 2 uses
  %i.bch = shl nuw i64 1, %i.bcg
  %notmask.i900 = shl nsw i64 -1, %i.bcg
  %i.bci = xor i64 %notmask.i900, -1
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bbk, i64 48
  %i.bck = load ptr, ptr %i.bcj, align 8, !tbaa !19720
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fe
  %.023.i4332051 = phi i64 [ %i.bch, %bb.fb ], [ %i.bdl, %bb.fe ]
  %.025.i4322050 = phi i64 [ %i.bca, %bb.fb ], [ %i.bdm, %bb.fe ] ; 2 uses
  %i.bcl = and i64 %.025.i4322050, %i.bci
  %i.bcm = shl nsw i64 %i.bcl, 6
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bck, i64 %i.bcm ; 3 uses
  %i.bco = load <16 x i8>, ptr %i.bcn, align 16   ; 2 uses
  %i.bcp = icmp eq <16 x i8> %i.bco, %i.bcf
  %i.bcq = bitcast <16 x i1> %i.bcp to i16
  %i.bcr = zext i16 %i.bcq to i32                 ; 2 uses
  %i.bcs = and i32 %i.bcr, 4095
  %.not1716 = icmp eq i32 %i.bcs, 0
  %i.bct = extractelement <16 x i8> %i.bco, i64 15
  br i1 %.not1716, label %.loopexit1729, label %.preheader1728

.preheader1728:                                   ; preds = %bb.fc
  %i.bcu = icmp ne ptr %i.bcn, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bcu)
  %i.bcv = load ptr, ptr %i.bbl, align 8, !tbaa !20277
  br label %bb.fd

bb.fd:                                            ; preds = %.preheader1728, %.critedge.i446
  %.sroa.01591.0 = phi i32 [ %i.bdi, %.critedge.i446 ], [ %i.bcr, %.preheader1728 ] ; 4 uses
  %i.bcw = icmp ne i32 %.sroa.01591.0, 0
  call void @llvm.assume(i1 %i.bcw)
  %i.bcx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.01591.0, i1 true)
  %i.bcy = shl nuw nsw i32 %i.bcx, 2
  %i.bcz = zext nneg i32 %i.bcy to i64
  %i.bda = getelementptr i8, ptr %i.bcn, i64 %i.bcz
  %i.bdb = getelementptr i8, ptr %i.bda, i64 16
  %i.bdc = load i32, ptr %i.bdb, align 4, !tbaa !19786
  %i.bdd = zext i32 %i.bdc to i64
  %i.bde = getelementptr inbounds nuw [8 x i8], ptr %i.bcv, i64 %i.bdd
  %i.bdf = load ptr, ptr %i.bde, align 8, !tbaa !19763
  %i.bdg = icmp eq ptr %i.bbp, %i.bdf
  br i1 %i.bdg, label %.critedge, label %.critedge.i446, !prof !19685

.critedge.i446:                                   ; preds = %bb.fd
  %i.bdh = add nsw i32 %.sroa.01591.0, -1
  %i.bdi = and i32 %i.bdh, %.sroa.01591.0         ; 2 uses
  %i.bdj = and i32 %i.bdi, 4094
  %.not1717 = icmp eq i32 %i.bdj, 0
  br i1 %.not1717, label %.loopexit1729, label %bb.fd, !llvm.loop !762

.loopexit1729:                                    ; preds = %.critedge.i446, %bb.fc
  %i.bdk = icmp eq i8 %i.bct, 0
  br i1 %i.bdk, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit447, label %bb.fe, !prof !19685

bb.fe:                                            ; preds = %.loopexit1729
  %i.bdl = add i64 %.023.i4332051, -1             ; 2 uses
  %i.bdm = add i64 %i.bcc, %.025.i4322050
  %.not.i434 = icmp eq i64 %i.bdl, 0
  br i1 %.not.i434, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit447, label %bb.fc, !llvm.loop !763

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit447: ; preds = %bb.fe, %.loopexit1729, %.loopexit1730
  br i1 %i.ayx, label %.critedge, label %bb.fq

.critedge:                                        ; preds = %bb.fd, %_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_.exit.thread, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit447
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #40
  %i.bdn = load ptr, ptr %.sroa.01449.02058, align 8, !tbaa !19763 ; 2 uses
  %i.bdo = load ptr, ptr %i.bdn, align 8, !tbaa !19672 ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdn, i64 8
  %i.bdq = load i64, ptr %i.bdp, align 8, !tbaa !19673
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40, !noalias !21452
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdo, i64 %i.bdq
  store ptr %i.et, ptr %18, align 8, !tbaa !19764, !alias.scope !21453, !noalias !21452
  store i64 0, ptr %i.eu, align 8, !tbaa !19673, !alias.scope !21453, !noalias !21452
  store i8 0, ptr %i.et, align 8, !tbaa !19682, !alias.scope !21453, !noalias !21452
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.bdo, ptr %i.bdr, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %.noexc1.i1303 unwind label %bb.ff, !noalias !21452

bb.ff:                                            ; preds = %.critedge
  %i.bds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bdt = load ptr, ptr %18, align 8, !tbaa !19672, !alias.scope !21453, !noalias !21452 ; 2 uses
  %i.bdu = icmp eq ptr %i.bdt, %i.et
  br i1 %i.bdu, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1299: ; preds = %bb.ff
  %i.bdv = load i64, ptr %i.et, align 8, !tbaa !19682, !alias.scope !21453, !noalias !21452
  %i.bdw = add i64 %i.bdv, 1
  call void @_ZdlPvm(ptr noundef %i.bdt, i64 noundef %i.bdw) #41, !noalias !21452
  br label %common.resume

.noexc1.i1303:                                    ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40, !noalias !21454
  %i.bdx = load ptr, ptr %18, align 8, !tbaa !19672, !noalias !21452
  %i.bdy = load i64, ptr %i.eu, align 8, !tbaa !19673, !noalias !21452
  %i.bdz = ptrtoint ptr %i.bdx to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1304 = zext i64 %i.bdy to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1305 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1304, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1306 = zext i64 %i.bdz to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1307 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1305, %.sroa.01.sroa.0.0.insert.ext.i.i1306
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1307, ptr %17, align 16, !noalias !21454
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %96, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %17)
          to label %bb.fg unwind label %bb.fh

bb.fg:                                            ; preds = %.noexc1.i1303
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40, !noalias !21454
  %i.bea = load ptr, ptr %18, align 8, !tbaa !19672, !noalias !21452 ; 2 uses
  %i.beb = icmp eq ptr %i.bea, %i.et
  br i1 %i.beb, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1311: ; preds = %bb.fg
  %i.bec = load i64, ptr %i.et, align 8, !tbaa !19682, !noalias !21452
  %i.bed = add i64 %i.bec, 1
  call void @_ZdlPvm(ptr noundef %i.bea, i64 noundef %i.bed) #41
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1313

bb.fh:                                            ; preds = %.noexc1.i1303
  %i.bee = landingpad { ptr, i32 }
          cleanup
  %i.bef = load ptr, ptr %18, align 8, !tbaa !19672, !noalias !21452 ; 2 uses
  %i.beg = icmp eq ptr %i.bef, %i.et
  br i1 %i.beg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1308: ; preds = %bb.fh
  %i.beh = load i64, ptr %i.et, align 8, !tbaa !19682, !noalias !21452
  %i.bei = add i64 %i.beh, 1
  call void @_ZdlPvm(ptr noundef %i.bef, i64 noundef %i.bei) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1309: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1308
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40, !noalias !21452
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1313: ; preds = %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1311
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40, !noalias !21452
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01429, ptr noundef nonnull align 8 dereferenceable(32) %i.apr, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01429, i64 32, i1 false)
  %i.bej = load ptr, ptr %2, align 8, !tbaa !797
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 16
  %i.bel = load ptr, ptr %i.bek, align 8
  %i.bem = invoke { i64, ptr } %i.bel(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %bb.fi unwind label %bb.fn, !inline_history !21209 ; 2 uses

bb.fi:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1313
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  %i.ben = extractvalue { i64, ptr } %i.bem, 0
  %i.beo = extractvalue { i64, ptr } %i.bem, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40, !noalias !21455
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 %i.ben
  store ptr %i.ev, ptr %16, align 8, !tbaa !19764, !alias.scope !21456, !noalias !21455
  store i64 0, ptr %i.ew, align 8, !tbaa !19673, !alias.scope !21456, !noalias !21455
  store i8 0, ptr %i.ev, align 8, !tbaa !19682, !alias.scope !21456, !noalias !21455
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.beo, ptr %i.bep, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %.noexc1.i1318 unwind label %bb.fj, !noalias !21455

bb.fj:                                            ; preds = %bb.fi
  %i.beq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ber = load ptr, ptr %16, align 8, !tbaa !19672, !alias.scope !21456, !noalias !21455 ; 2 uses
  %i.bes = icmp eq ptr %i.ber, %i.ev
  br i1 %i.bes, label %.body1328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1314: ; preds = %bb.fj
  %i.bet = load i64, ptr %i.ev, align 8, !tbaa !19682, !alias.scope !21456, !noalias !21455
  %i.beu = add i64 %i.bet, 1
  call void @_ZdlPvm(ptr noundef %i.ber, i64 noundef %i.beu) #41, !noalias !21455
  br label %.body1328

.noexc1.i1318:                                    ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40, !noalias !21457
  %i.bev = load ptr, ptr %16, align 8, !tbaa !19672, !noalias !21455
  %i.bew = load i64, ptr %i.ew, align 8, !tbaa !19673, !noalias !21455
  %i.bex = ptrtoint ptr %i.bev to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1319 = zext i64 %i.bew to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1320 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1319, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1321 = zext i64 %i.bex to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1322 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1320, %.sroa.01.sroa.0.0.insert.ext.i.i1321
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1322, ptr %15, align 16, !noalias !21457
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %97, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %15)
          to label %bb.fk unwind label %bb.fl

bb.fk:                                            ; preds = %.noexc1.i1318
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40, !noalias !21457
  %i.bey = load ptr, ptr %16, align 8, !tbaa !19672, !noalias !21455 ; 2 uses
  %i.bez = icmp eq ptr %i.bey, %i.ev
  br i1 %i.bez, label %.noexc322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1326: ; preds = %bb.fk
  %i.bfa = load i64, ptr %i.ev, align 8, !tbaa !19682, !noalias !21455
  %i.bfb = add i64 %i.bfa, 1
  call void @_ZdlPvm(ptr noundef %i.bey, i64 noundef %i.bfb) #41
  br label %.noexc322

bb.fl:                                            ; preds = %.noexc1.i1318
  %i.bfc = landingpad { ptr, i32 }
          cleanup
  %i.bfd = load ptr, ptr %16, align 8, !tbaa !19672, !noalias !21455 ; 2 uses
  %i.bfe = icmp eq ptr %i.bfd, %i.ev
  br i1 %i.bfe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1323: ; preds = %bb.fl
  %i.bff = load i64, ptr %i.ev, align 8, !tbaa !19682, !noalias !21455
  %i.bfg = add i64 %i.bff, 1
  call void @_ZdlPvm(ptr noundef %i.bfd, i64 noundef %i.bfg) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1324: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1323
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40, !noalias !21455
  br label %.body1328

.noexc322:                                        ; preds = %bb.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1326
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40, !noalias !21455
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #40, !noalias !21458
  call void @llvm.experimental.noalias.scope.decl(metadata !21459)
  %i.bfh = load ptr, ptr %96, align 8, !tbaa !19672, !noalias !21459
  %i.bfi = load i64, ptr %i.ex, align 8, !tbaa !19673, !noalias !21459
  %i.bfj = ptrtoint ptr %i.bfh to i64
  %i.bfk = load ptr, ptr %97, align 8, !tbaa !19672, !noalias !21459
  %i.bfl = load i64, ptr %i.ey, align 8, !tbaa !19673, !noalias !21459
  %i.bfm = ptrtoint ptr %i.bfk to i64
  %.sroa.04.sroa.4.0.insert.ext.i906 = zext i64 %i.bfi to i128
  %.sroa.04.sroa.4.0.insert.shift.i907 = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i906, 64
  %.sroa.04.sroa.0.0.insert.ext.i908 = zext i64 %i.bfj to i128
  %.sroa.04.sroa.0.0.insert.insert.i909 = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i907, %.sroa.04.sroa.0.0.insert.ext.i908
  store i128 %.sroa.04.sroa.0.0.insert.insert.i909, ptr %62, align 16, !tbaa !19682, !alias.scope !21459
  %.sroa.0.sroa.4.0.insert.ext.i910 = zext i64 %i.bfl to i128
  %.sroa.0.sroa.4.0.insert.shift.i911 = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i910, 64
  %.sroa.0.sroa.0.0.insert.ext.i912 = zext i64 %i.bfm to i128
  %.sroa.0.sroa.0.0.insert.insert.i913 = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i911, %.sroa.0.sroa.0.0.insert.ext.i912
  store i128 %.sroa.0.sroa.0.0.insert.insert.i913, ptr %i.ez, align 16, !tbaa !19682, !alias.scope !21459
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %95, ptr nonnull @.str.284, i64 38, i64 221, ptr nonnull %62)
          to label %bb.fm unwind label %bb.fo

bb.fm:                                            ; preds = %.noexc322
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #40, !noalias !21458
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %95, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit915 unwind label %bb.fp, !inline_history !21208

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit915: ; preds = %bb.fm
  %i.bfn = load ptr, ptr %95, align 8, !tbaa !19672 ; 2 uses
  %i.bfo = icmp eq ptr %i.bfn, %i.fa
  br i1 %i.bfo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit918, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i916

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i916: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit915
end_hunk_5
begin_hunk_6_@_ZNK5folly15RegexMatchCache11consistencyERNS0_24ConsistencyReportMatcherERKNS0_6KeyMapENS_11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit921, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i922
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #40
  br label %bb.fq

bb.fn:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1313
  %i.bfz = landingpad { ptr, i32 }
          cleanup
  br label %.body1328

bb.fo:                                            ; preds = %.noexc322
  %i.bga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927

bb.fp:                                            ; preds = %bb.fm
  %i.bgb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bgc = load ptr, ptr %95, align 8, !tbaa !19672 ; 2 uses
  %i.bgd = icmp eq ptr %i.bgc, %i.fa
  br i1 %i.bgd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925: ; preds = %bb.fp
  %i.bge = load i64, ptr %i.fa, align 8, !tbaa !19682
  %i.bgf = add i64 %i.bge, 1
  call void @_ZdlPvm(ptr noundef %i.bgc, i64 noundef %i.bgf) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925, %bb.fo
  %.pn265 = phi { ptr, i32 } [ %i.bga, %bb.fo ], [ %i.bgb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i925 ], [ %i.bgb, %bb.fp ] ; 2 uses
  %i.bgg = load ptr, ptr %97, align 8, !tbaa !19672 ; 2 uses
  %i.bgh = icmp eq ptr %i.bgg, %i.fb
  br i1 %i.bgh, label %.body1328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927
  %i.bgi = load i64, ptr %i.fb, align 8, !tbaa !19682
  %i.bgj = add i64 %i.bgi, 1
  call void @_ZdlPvm(ptr noundef %i.bgg, i64 noundef %i.bgj) #41
  br label %.body1328

.body1328:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927, %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928, %bb.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1314
  %.pn265.pn = phi { ptr, i32 } [ %.pn265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i928 ], [ %i.bfz, %bb.fn ], [ %i.bfc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1324 ], [ %i.beq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1314 ], [ %i.beq, %bb.fj ], [ %.pn265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit927 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #40
  %i.bgk = load ptr, ptr %96, align 8, !tbaa !19672 ; 2 uses
  %i.bgl = icmp eq ptr %i.bgk, %i.fc
  br i1 %i.bgl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit933, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i931

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i931: ; preds = %.body1328
  %i.bgm = load i64, ptr %i.fc, align 8, !tbaa !19682
  %i.bgn = add i64 %i.bgm, 1
  call void @_ZdlPvm(ptr noundef %i.bgk, i64 noundef %i.bgn) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit933

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit933: ; preds = %.body1328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i931
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #40
  br label %common.resume

bb.fq:                                            ; preds = %_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_.exit.thread, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit447, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit924
  %i.bgo = add i64 %.sroa.7.02053, 1              ; 3 uses
  %i.bgp = icmp ult i64 %i.bgo, %.sroa.3.0.i.i.i7762470
  br i1 %i.bgp, label %.lr.ph.i.i, label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit

.lr.ph.i.i:                                       ; preds = %bb.fq, %bb.fr
  %.01422.i.i = phi i64 [ %i.bgy, %bb.fr ], [ %i.bgo, %bb.fq ] ; 4 uses
  %i.bgq = lshr i64 %.01422.i.i, 6
  %i.bgr = and i64 %.01422.i.i, 63
  %i.bgs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i7772472, i64 %i.bgq
  %i.bgt = load i64, ptr %i.bgs, align 8, !tbaa !19676
  %i.bgu = lshr i64 %i.bgt, %i.bgr                ; 2 uses
  %.not.i.i934 = icmp eq i64 %i.bgu, 0
  br i1 %.not.i.i934, label %bb.fr, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.bgv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bgu, i1 true)
  %i.bgw = add i64 %i.bgv, %.01422.i.i
  br label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit

bb.fr:                                            ; preds = %.lr.ph.i.i
  %i.bgx = and i64 %.01422.i.i, -64
  %i.bgy = add i64 %i.bgx, 64                     ; 3 uses
  %i.bgz = icmp ult i64 %i.bgy, %.sroa.3.0.i.i.i7762470
  br i1 %i.bgz, label %.lr.ph.i.i, label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit, !llvm.loop !720

_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit: ; preds = %bb.fr, %bb.fq, %.thread.i.i
  %.2.i.i = phi i64 [ %i.bgw, %.thread.i.i ], [ %i.bgo, %bb.fq ], [ %i.bgy, %bb.fr ] ; 2 uses
  %.not1713 = icmp eq i64 %.2.i.i, %.sroa.3.0.i.i.i7762470
  br i1 %.not1713, label %._crit_edge2055, label %.lr.ph2054

._crit_edge2072:                                  ; preds = %._crit_edge2068, %._crit_edge2061
  ret void

.backedge1727:                                    ; preds = %._crit_edge2068, %.lr.ph2071
  %.pn = phi ptr [ %i.ahr, %.lr.ph2071 ], [ %.sroa.01425.02069, %._crit_edge2068 ] ; 3 uses
  %.sroa.01425.02069 = getelementptr inbounds i8, ptr %.pn, i64 -32 ; 6 uses
  %i.bha = getelementptr inbounds i8, ptr %.pn, i64 -24
  %i.bhb = call noundef i64 @_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14index_of_valueERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01425.02069) ; 4 uses
  %i.bhc = load ptr, ptr %.sroa.01425.02069, align 8, !tbaa !19769
  %i.bhd = call noundef ptr @_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.bhc) ; 4 uses
  %i.bhe = getelementptr inbounds i8, ptr %.pn, i64 -8
  %i.bhf = load i64, ptr %i.bhe, align 8, !tbaa !19695
  %i.bhg = lshr i64 %i.bhf, 8                     ; 2 uses
  %.not.i.i.i935.not = icmp eq i64 %i.bhg, 0
  %i.bhh = load ptr, ptr %i.bha, align 8          ; 2 uses
  br i1 %.not.i.i.i935.not, label %._crit_edge2068, label %.lr.ph2067

.lr.ph2067:                                       ; preds = %.backedge1727
  %i.bhi = getelementptr inbounds nuw [8 x i8], ptr %i.bhh, i64 %i.bhg
  %i.bhj = lshr i64 %i.bhb, 6                     ; 2 uses
  %i.bhk = and i64 %i.bhb, 63
  %i.bhl = shl nuw i64 1, %i.bhk                  ; 2 uses
  %.not250 = icmp eq ptr %i.bhd, null
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhd, i64 8
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhd, i64 24
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhd, i64 16
  br label %.backedge

._crit_edge2068:                                  ; preds = %bb.ho, %.backedge1727
  %i.bhp = icmp eq ptr %i.ahq, %.sroa.01425.02069
  br i1 %i.bhp, label %._crit_edge2072, label %.backedge1727, !prof !19683

.backedge:                                        ; preds = %bb.ho, %.lr.ph2067
  %.pn2532 = phi ptr [ %i.bhi, %.lr.ph2067 ], [ %.sroa.01420.02065, %bb.ho ]
  %.sroa.01420.02065 = getelementptr inbounds i8, ptr %.pn2532, i64 -8 ; 3 uses
  %i.bhq = load ptr, ptr %.sroa.01420.02065, align 8, !tbaa !19763 ; 14 uses
  %i.bhr = load i64, ptr %i.ahs, align 8, !tbaa !19695 ; 3 uses
  %i.bhs = icmp ult i64 %i.bhr, 512
  br i1 %i.bhs, label %bb.fs, label %bb.fu

bb.fs:                                            ; preds = %.backedge
  %i.bht = icmp samesign ult i64 %i.bhr, 256
  br i1 %i.bht, label %.loopexit1726, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.bhu = load i64, ptr %i.dn, align 8, !tbaa !19765
  %i.bhv = and i64 %i.bhu, -16
  %i.bhw = inttoptr i64 %i.bhv to ptr             ; 2 uses
  %i.bhx = load ptr, ptr %i.bhw, align 16, !tbaa !19763
  %i.bhy = icmp eq ptr %i.bhq, %i.bhx
  br i1 %i.bhy, label %.loopexit1725, label %.loopexit1726

bb.fu:                                            ; preds = %.backedge
  %i.bhz = ptrtoint ptr %i.bhq to i64             ; 2 uses
  %i.bia = zext i64 %i.bhz to i128
  %i.bib = mul nuw i128 %i.bia, 14181476777654086739
  %i.bic = lshr i128 %i.bib, 64
  %i.bid = trunc nuw i128 %i.bic to i64
  %i.bie = mul i64 %i.bhz, -4265267296055464877
  %i.bif = xor i64 %i.bie, %i.bid
  %i.big = mul i64 %i.bif, -4265267296055464877   ; 2 uses
  %i.bih = lshr i64 %i.big, 14
  %i.bii = and i64 %i.bih, 255
  %i.bij = lshr i64 %i.big, 22
  %.sroa.speculated.i.i.i.i940 = call i64 @llvm.umax.i64(i64 %i.bii, i64 1) ; 2 uses
  %i.bik = shl nuw nsw i64 %.sroa.speculated.i.i.i.i940, 1
  %i.bil = or disjoint i64 %i.bik, 1
  %i.bim = trunc nuw i64 %.sroa.speculated.i.i.i.i940 to i8
  %i.bin = insertelement <16 x i8> poison, i8 %i.bim, i64 0
  %i.bio = shufflevector <16 x i8> %i.bin, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bip = and i64 %i.bhr, 255                    ; 2 uses
  %i.biq = shl nuw i64 1, %i.bip
  %notmask.i.i941 = shl nsw i64 -1, %i.bip
  %i.bir = xor i64 %notmask.i.i941, -1
  %i.bis = load ptr, ptr %i.dm, align 8, !tbaa !19725
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fx, %bb.fu
  %.024.i62.i942 = phi i64 [ %i.biq, %bb.fu ], [ %i.bjq, %bb.fx ]
  %.026.i61.i943 = phi i64 [ %i.bij, %bb.fu ], [ %i.bjr, %bb.fx ] ; 2 uses
  %i.bit = and i64 %.026.i61.i943, %i.bir
  %i.biu = shl nsw i64 %i.bit, 8
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bis, i64 %i.biu ; 4 uses
  %i.biw = getelementptr i8, ptr %i.biv, i64 144
  call void @llvm.prefetch.p0(ptr %i.biw, i32 0, i32 3, i32 1)
  %i.bix = load <16 x i8>, ptr %i.biv, align 16   ; 2 uses
  %i.biy = icmp eq <16 x i8> %i.bix, %i.bio
  %i.biz = bitcast <16 x i1> %i.biy to i16
  %i.bja = zext i16 %i.biz to i32                 ; 2 uses
  %i.bjb = and i32 %i.bja, 16383
  %.not.i944 = icmp eq i32 %i.bjb, 0
  %i.bjc = extractelement <16 x i8> %i.bix, i64 15
  br i1 %.not.i944, label %.loopexit.i949, label %.preheader.i945

.preheader.i945:                                  ; preds = %bb.fv
  %i.bjd = icmp ne ptr %i.biv, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bjd)
  br label %bb.fw

bb.fw:                                            ; preds = %.critedge.i.i947, %.preheader.i945
  %.sroa.019.0.i946 = phi i32 [ %i.bjn, %.critedge.i.i947 ], [ %i.bja, %.preheader.i945 ] ; 4 uses
  %i.bje = icmp ne i32 %.sroa.019.0.i946, 0
  call void @llvm.assume(i1 %i.bje)
  %i.bjf = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.i946, i1 true)
  %i.bjg = shl nuw nsw i32 %i.bjf, 4
  %i.bjh = zext nneg i32 %i.bjg to i64
  %i.bji = getelementptr i8, ptr %i.biv, i64 %i.bjh ; 2 uses
  %i.bjj = getelementptr i8, ptr %i.bji, i64 16
  %i.bjk = load ptr, ptr %i.bjj, align 8, !tbaa !19763
  %i.bjl = icmp eq ptr %i.bhq, %i.bjk
  br i1 %i.bjl, label %.loopexit1725.loopexit, label %.critedge.i.i947, !prof !19685

.critedge.i.i947:                                 ; preds = %bb.fw
  %i.bjm = add nsw i32 %.sroa.019.0.i946, -1
  %i.bjn = and i32 %i.bjm, %.sroa.019.0.i946      ; 2 uses
  %i.bjo = and i32 %i.bjn, 16382
  %.not58.i948 = icmp eq i32 %i.bjo, 0
  br i1 %.not58.i948, label %.loopexit.i949, label %bb.fw, !llvm.loop !764

.loopexit.i949:                                   ; preds = %.critedge.i.i947, %bb.fv
  %i.bjp = icmp eq i8 %i.bjc, 0
  br i1 %i.bjp, label %.loopexit1726, label %bb.fx, !prof !19685

bb.fx:                                            ; preds = %.loopexit.i949
  %i.bjq = add i64 %.024.i62.i942, -1             ; 2 uses
  %i.bjr = add i64 %i.bil, %.026.i61.i943
  %.not.i.i950 = icmp eq i64 %i.bjq, 0
  br i1 %.not.i.i950, label %.loopexit1726, label %bb.fv, !llvm.loop !765

.loopexit1726:                                    ; preds = %bb.fx, %.loopexit.i949, %bb.ft, %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #40
  %i.bjs = load ptr, ptr %i.bhq, align 8, !tbaa !19672 ; 2 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bhq, i64 8
  %i.bju = load i64, ptr %i.bjt, align 8, !tbaa !19673
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40, !noalias !21460
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjs, i64 %i.bju
  store ptr %i.aid, ptr %14, align 8, !tbaa !19764, !alias.scope !21461, !noalias !21460
  store i64 0, ptr %i.aie, align 8, !tbaa !19673, !alias.scope !21461, !noalias !21460
  store i8 0, ptr %i.aid, align 8, !tbaa !19682, !alias.scope !21461, !noalias !21460
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.bjs, ptr %i.bjv, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %.noexc1.i1335 unwind label %bb.fy, !noalias !21460

bb.fy:                                            ; preds = %.loopexit1726
  %i.bjw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bjx = load ptr, ptr %14, align 8, !tbaa !19672, !alias.scope !21461, !noalias !21460 ; 2 uses
  %i.bjy = icmp eq ptr %i.bjx, %i.aid
  br i1 %i.bjy, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1331: ; preds = %bb.fy
  %i.bjz = load i64, ptr %i.aid, align 8, !tbaa !19682, !alias.scope !21461, !noalias !21460
  %i.bka = add i64 %i.bjz, 1
  call void @_ZdlPvm(ptr noundef %i.bjx, i64 noundef %i.bka) #41, !noalias !21460
  br label %common.resume

.noexc1.i1335:                                    ; preds = %.loopexit1726
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40, !noalias !21462
  %i.bkb = load ptr, ptr %14, align 8, !tbaa !19672, !noalias !21460
  %i.bkc = load i64, ptr %i.aie, align 8, !tbaa !19673, !noalias !21460
  %i.bkd = ptrtoint ptr %i.bkb to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1336 = zext i64 %i.bkc to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1337 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1336, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1338 = zext i64 %i.bkd to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1339 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1337, %.sroa.01.sroa.0.0.insert.ext.i.i1338
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1339, ptr %13, align 16, !noalias !21462
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %99, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %13)
          to label %bb.fz unwind label %bb.ga

bb.fz:                                            ; preds = %.noexc1.i1335
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40, !noalias !21462
  %i.bke = load ptr, ptr %14, align 8, !tbaa !19672, !noalias !21460 ; 2 uses
  %i.bkf = icmp eq ptr %i.bke, %i.aid
  br i1 %i.bkf, label %.noexc294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1343: ; preds = %bb.fz
  %i.bkg = load i64, ptr %i.aid, align 8, !tbaa !19682, !noalias !21460
  %i.bkh = add i64 %i.bkg, 1
  call void @_ZdlPvm(ptr noundef %i.bke, i64 noundef %i.bkh) #41
  br label %.noexc294

bb.ga:                                            ; preds = %.noexc1.i1335
  %i.bki = landingpad { ptr, i32 }
          cleanup
  %i.bkj = load ptr, ptr %14, align 8, !tbaa !19672, !noalias !21460 ; 2 uses
  %i.bkk = icmp eq ptr %i.bkj, %i.aid
  br i1 %i.bkk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1340: ; preds = %bb.ga
  %i.bkl = load i64, ptr %i.aid, align 8, !tbaa !19682, !noalias !21460
  %i.bkm = add i64 %i.bkl, 1
  call void @_ZdlPvm(ptr noundef %i.bkj, i64 noundef %i.bkm) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1341: ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1340
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40, !noalias !21460
  br label %common.resume

.noexc294:                                        ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1343
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40, !noalias !21460
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #40, !noalias !21463
  %i.bkn = load ptr, ptr %99, align 8, !tbaa !19672
  %i.bko = load i64, ptr %i.aif, align 8, !tbaa !19673
  %i.bkp = ptrtoint ptr %i.bkn to i64
  %.sroa.01.sroa.4.0.insert.ext.i957 = zext i64 %i.bko to i128
  %.sroa.01.sroa.4.0.insert.shift.i958 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i957, 64
  %.sroa.01.sroa.0.0.insert.ext.i959 = zext i64 %i.bkp to i128
  %.sroa.01.sroa.0.0.insert.insert.i960 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i958, %.sroa.01.sroa.0.0.insert.ext.i959
  store i128 %.sroa.01.sroa.0.0.insert.insert.i960, ptr %67, align 16, !noalias !21463
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %98, ptr nonnull @.str.285, i64 36, i64 13, ptr nonnull %67)
          to label %bb.gb unwind label %bb.gc

bb.gb:                                            ; preds = %.noexc294
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #40, !noalias !21463
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %98, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit962 unwind label %bb.gd, !inline_history !21208

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit962: ; preds = %bb.gb
  %i.bkq = load ptr, ptr %98, align 8, !tbaa !19672 ; 2 uses
  %i.bkr = icmp eq ptr %i.bkq, %i.aig
  br i1 %i.bkr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i963

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i963: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit962
  %i.bks = load i64, ptr %i.aig, align 8, !tbaa !19682
  %i.bkt = add i64 %i.bks, 1
  call void @_ZdlPvm(ptr noundef %i.bkq, i64 noundef %i.bkt) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit962, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i963
  %i.bku = load ptr, ptr %99, align 8, !tbaa !19672 ; 2 uses
  %i.bkv = icmp eq ptr %i.bku, %i.aih
  br i1 %i.bkv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit968, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i966

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i966: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965
  %i.bkw = load i64, ptr %i.aih, align 8, !tbaa !19682
  %i.bkx = add i64 %i.bkw, 1
  call void @_ZdlPvm(ptr noundef %i.bku, i64 noundef %i.bkx) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit968

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit968: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i966
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #40
  br label %bb.gq

bb.gc:                                            ; preds = %.noexc294
  %i.bky = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971

bb.gd:                                            ; preds = %bb.gb
  %i.bkz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bla = load ptr, ptr %98, align 8, !tbaa !19672 ; 2 uses
  %i.blb = icmp eq ptr %i.bla, %i.aig
  br i1 %i.blb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i969

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i969: ; preds = %bb.gd
  %i.blc = load i64, ptr %i.aig, align 8, !tbaa !19682
  %i.bld = add i64 %i.blc, 1
  call void @_ZdlPvm(ptr noundef %i.bla, i64 noundef %i.bld) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i969, %bb.gc
  %.pn244 = phi { ptr, i32 } [ %i.bky, %bb.gc ], [ %i.bkz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i969 ], [ %i.bkz, %bb.gd ]
  %i.ble = load ptr, ptr %99, align 8, !tbaa !19672 ; 2 uses
  %i.blf = icmp eq ptr %i.ble, %i.aih
  br i1 %i.blf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i972

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i972: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971
  %i.blg = load i64, ptr %i.aih, align 8, !tbaa !19682
  %i.blh = add i64 %i.blg, 1
  call void @_ZdlPvm(ptr noundef %i.ble, i64 noundef %i.blh) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i972
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #40
  br label %common.resume

.loopexit1725.loopexit:                           ; preds = %bb.fw
  %i.bli = getelementptr i8, ptr %i.bji, i64 16
  br label %.loopexit1725

.loopexit1725:                                    ; preds = %.loopexit1725.loopexit, %bb.ft
  %.sroa.018.149.i953 = phi ptr [ %i.bhw, %bb.ft ], [ %i.bli, %.loopexit1725.loopexit ]
  %i.blj = getelementptr inbounds nuw i8, ptr %.sroa.018.149.i953, i64 8 ; 2 uses
  %i.blk = load i64, ptr %i.blj, align 8, !tbaa !19676 ; 2 uses
  %i.bll = icmp slt i64 %i.blk, 0
  br i1 %i.bll, label %bb.ge, label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i975

bb.ge:                                            ; preds = %.loopexit1725
  %i.blm = shl i64 %i.blk, 1
  %i.bln = inttoptr i64 %i.blm to ptr             ; 2 uses
  %.sroa.0.0.copyload.i.i979 = load ptr, ptr %i.bln, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i980 = getelementptr inbounds nuw i8, ptr %i.bln, i64 8
  %.sroa.3.0.copyload.i.i981 = load i64, ptr %.sroa.3.0..sroa_idx.i.i980, align 8, !tbaa !19676
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i975

_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i975: ; preds = %bb.ge, %.loopexit1725
  %.sroa.3.0.i.i976 = phi i64 [ %.sroa.3.0.copyload.i.i981, %bb.ge ], [ 64, %.loopexit1725 ]
  %.sroa.0.0.i.i977 = phi ptr [ %.sroa.0.0.copyload.i.i979, %bb.ge ], [ %i.blj, %.loopexit1725 ]
  %i.blo = icmp ult i64 %i.bhb, %.sroa.3.0.i.i976
  br i1 %i.blo, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit982, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit982.thread

_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit982: ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i975
  %i.blp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i977, i64 %i.bhj
  %i.blq = load i64, ptr %i.blp, align 8, !tbaa !19676
  %i.blr = and i64 %i.blq, %i.bhl
  %.not1710 = icmp eq i64 %i.blr, 0
  br i1 %.not1710, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit982.thread, label %bb.gq

_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit982.thread: ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i975, %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit982
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #40
  %i.bls = load ptr, ptr %i.bhq, align 8, !tbaa !19672 ; 2 uses
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bhq, i64 8
  %i.blu = load i64, ptr %i.blt, align 8, !tbaa !19673
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40, !noalias !21464
end_hunk_6
begin_hunk_7_@_ZNK5folly15RegexMatchCache11consistencyERNS0_24ConsistencyReportMatcherERKNS0_6KeyMapENS_11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1371: ; preds = %bb.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1370
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40, !noalias !21467
  br label %.body1375

.noexc318:                                        ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1373
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40, !noalias !21467
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #40, !noalias !21470
  call void @llvm.experimental.noalias.scope.decl(metadata !21471)
  %i.bnm = load ptr, ptr %101, align 8, !tbaa !19672, !noalias !21471
  %i.bnn = load i64, ptr %i.ahx, align 8, !tbaa !19673, !noalias !21471
  %i.bno = ptrtoint ptr %i.bnm to i64
  %i.bnp = load ptr, ptr %102, align 8, !tbaa !19672, !noalias !21471
  %i.bnq = load i64, ptr %i.ahy, align 8, !tbaa !19673, !noalias !21471
  %i.bnr = ptrtoint ptr %i.bnp to i64
  %.sroa.04.sroa.4.0.insert.ext.i989 = zext i64 %i.bnn to i128
  %.sroa.04.sroa.4.0.insert.shift.i990 = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i989, 64
  %.sroa.04.sroa.0.0.insert.ext.i991 = zext i64 %i.bno to i128
  %.sroa.04.sroa.0.0.insert.insert.i992 = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i990, %.sroa.04.sroa.0.0.insert.ext.i991
  store i128 %.sroa.04.sroa.0.0.insert.insert.i992, ptr %63, align 16, !tbaa !19682, !alias.scope !21471
  %.sroa.0.sroa.4.0.insert.ext.i993 = zext i64 %i.bnq to i128
  %.sroa.0.sroa.4.0.insert.shift.i994 = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i993, 64
  %.sroa.0.sroa.0.0.insert.ext.i995 = zext i64 %i.bnr to i128
  %.sroa.0.sroa.0.0.insert.insert.i996 = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i994, %.sroa.0.sroa.0.0.insert.ext.i995
  store i128 %.sroa.0.sroa.0.0.insert.insert.i996, ptr %i.ahz, align 16, !tbaa !19682, !alias.scope !21471
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %100, ptr nonnull @.str.286, i64 39, i64 221, ptr nonnull %63)
          to label %bb.gm unwind label %bb.go

bb.gm:                                            ; preds = %.noexc318
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #40, !noalias !21470
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %100, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit998 unwind label %bb.gp, !inline_history !21208

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit998: ; preds = %bb.gm
  %i.bns = load ptr, ptr %100, align 8, !tbaa !19672 ; 2 uses
  %i.bnt = icmp eq ptr %i.bns, %i.aia
  br i1 %i.bnt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i999

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i999: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit998
  %i.bnu = load i64, ptr %i.aia, align 8, !tbaa !19682
  %i.bnv = add i64 %i.bnu, 1
  call void @_ZdlPvm(ptr noundef %i.bns, i64 noundef %i.bnv) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit998, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i999
  %i.bnw = load ptr, ptr %102, align 8, !tbaa !19672 ; 2 uses
  %i.bnx = icmp eq ptr %i.bnw, %i.aib
  br i1 %i.bnx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001
  %i.bny = load i64, ptr %i.aib, align 8, !tbaa !19682
  %i.bnz = add i64 %i.bny, 1
  call void @_ZdlPvm(ptr noundef %i.bnw, i64 noundef %i.bnz) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1002
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #40
  %i.boa = load ptr, ptr %101, align 8, !tbaa !19672 ; 2 uses
  %i.bob = icmp eq ptr %i.boa, %i.aic
  br i1 %i.bob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1007, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1005

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1005: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004
  %i.boc = load i64, ptr %i.aic, align 8, !tbaa !19682
  %i.bod = add i64 %i.boc, 1
  call void @_ZdlPvm(ptr noundef %i.boa, i64 noundef %i.bod) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1007

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1007: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1005
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #40
  br label %bb.gq

bb.gn:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1360
  %i.boe = landingpad { ptr, i32 }
          cleanup
  br label %.body1375

bb.go:                                            ; preds = %.noexc318
  %i.bof = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010

bb.gp:                                            ; preds = %bb.gm
  %i.bog = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.boh = load ptr, ptr %100, align 8, !tbaa !19672 ; 2 uses
  %i.boi = icmp eq ptr %i.boh, %i.aia
  br i1 %i.boi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1008

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1008: ; preds = %bb.gp
  %i.boj = load i64, ptr %i.aia, align 8, !tbaa !19682
  %i.bok = add i64 %i.boj, 1
  call void @_ZdlPvm(ptr noundef %i.boh, i64 noundef %i.bok) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010: ; preds = %bb.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1008, %bb.go
  %.pn246 = phi { ptr, i32 } [ %i.bof, %bb.go ], [ %i.bog, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1008 ], [ %i.bog, %bb.gp ] ; 2 uses
  %i.bol = load ptr, ptr %102, align 8, !tbaa !19672 ; 2 uses
  %i.bom = icmp eq ptr %i.bol, %i.aib
  br i1 %i.bom, label %.body1375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1011

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1011: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010
  %i.bon = load i64, ptr %i.aib, align 8, !tbaa !19682
  %i.boo = add i64 %i.bon, 1
  call void @_ZdlPvm(ptr noundef %i.bol, i64 noundef %i.boo) #41
  br label %.body1375

.body1375:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010, %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1011, %bb.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1361
  %.pn246.pn = phi { ptr, i32 } [ %.pn246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1011 ], [ %i.boe, %bb.gn ], [ %i.bnh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1371 ], [ %i.bmv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1361 ], [ %i.bmv, %bb.gj ], [ %.pn246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #40
  %i.bop = load ptr, ptr %101, align 8, !tbaa !19672 ; 2 uses
  %i.boq = icmp eq ptr %i.bop, %i.aic
  br i1 %i.boq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014: ; preds = %.body1375
  %i.bor = load i64, ptr %i.aic, align 8, !tbaa !19682
  %i.bos = add i64 %i.bor, 1
  call void @_ZdlPvm(ptr noundef %i.bop, i64 noundef %i.bos) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016: ; preds = %.body1375, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1014
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #40
  br label %common.resume

bb.gq:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1007, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit968
  %i.bot = load i64, ptr %i.aii, align 8, !tbaa !19695 ; 3 uses
  %i.bou = icmp ult i64 %i.bot, 512
  br i1 %i.bou, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %bb.gq
  %i.bov = icmp samesign ult i64 %i.bot, 256
  br i1 %i.bov, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit1039, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.bow = load i64, ptr %i.aik, align 8, !tbaa !19675
  %i.box = and i64 %i.bow, -16
  %i.boy = inttoptr i64 %i.box to ptr             ; 2 uses
  %i.boz = load ptr, ptr %i.boy, align 16, !tbaa !19763
  %i.bpa = icmp eq ptr %i.bhq, %i.boz
  br i1 %i.bpa, label %.loopexit1724, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit1039

bb.gt:                                            ; preds = %bb.gq
  %i.bpb = ptrtoint ptr %i.bhq to i64             ; 2 uses
  %i.bpc = zext i64 %i.bpb to i128
  %i.bpd = mul nuw i128 %i.bpc, 14181476777654086739
  %i.bpe = lshr i128 %i.bpd, 64
  %i.bpf = trunc nuw i128 %i.bpe to i64
  %i.bpg = mul i64 %i.bpb, -4265267296055464877
  %i.bph = xor i64 %i.bpg, %i.bpf
  %i.bpi = mul i64 %i.bph, -4265267296055464877   ; 2 uses
  %i.bpj = lshr i64 %i.bpi, 14
  %i.bpk = and i64 %i.bpj, 255
  %i.bpl = lshr i64 %i.bpi, 22
  %.sroa.speculated.i.i.i.i1017 = call i64 @llvm.umax.i64(i64 %i.bpk, i64 1) ; 2 uses
  %i.bpm = shl nuw nsw i64 %.sroa.speculated.i.i.i.i1017, 1
  %i.bpn = or disjoint i64 %i.bpm, 1
  %i.bpo = trunc nuw i64 %.sroa.speculated.i.i.i.i1017 to i8
  %i.bpp = insertelement <16 x i8> poison, i8 %i.bpo, i64 0
  %i.bpq = shufflevector <16 x i8> %i.bpp, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bpr = and i64 %i.bot, 255                    ; 2 uses
  %i.bps = shl nuw i64 1, %i.bpr
  %notmask.i.i1018 = shl nsw i64 -1, %i.bpr
  %i.bpt = xor i64 %notmask.i.i1018, -1
  %i.bpu = load ptr, ptr %i.aij, align 8, !tbaa !20271
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gw, %bb.gt
  %.024.i62.i1019 = phi i64 [ %i.bps, %bb.gt ], [ %i.bqs, %bb.gw ]
  %.026.i61.i1020 = phi i64 [ %i.bpl, %bb.gt ], [ %i.bqt, %bb.gw ] ; 2 uses
  %i.bpv = and i64 %.026.i61.i1020, %i.bpt
  %i.bpw = shl nsw i64 %i.bpv, 8
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpu, i64 %i.bpw ; 4 uses
  %i.bpy = getelementptr i8, ptr %i.bpx, i64 144
  call void @llvm.prefetch.p0(ptr %i.bpy, i32 0, i32 3, i32 1)
  %i.bpz = load <16 x i8>, ptr %i.bpx, align 16   ; 2 uses
  %i.bqa = icmp eq <16 x i8> %i.bpz, %i.bpq
  %i.bqb = bitcast <16 x i1> %i.bqa to i16
  %i.bqc = zext i16 %i.bqb to i32                 ; 2 uses
  %i.bqd = and i32 %i.bqc, 16383
  %.not.i1021 = icmp eq i32 %i.bqd, 0
  %i.bqe = extractelement <16 x i8> %i.bpz, i64 15
  br i1 %.not.i1021, label %.loopexit.i1026, label %.preheader.i1022

.preheader.i1022:                                 ; preds = %bb.gu
  %i.bqf = icmp ne ptr %i.bpx, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bqf)
  br label %bb.gv

bb.gv:                                            ; preds = %.critedge.i.i1024, %.preheader.i1022
  %.sroa.019.0.i1023 = phi i32 [ %i.bqp, %.critedge.i.i1024 ], [ %i.bqc, %.preheader.i1022 ] ; 4 uses
  %i.bqg = icmp ne i32 %.sroa.019.0.i1023, 0
  call void @llvm.assume(i1 %i.bqg)
  %i.bqh = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.i1023, i1 true)
  %i.bqi = shl nuw nsw i32 %i.bqh, 4
  %i.bqj = zext nneg i32 %i.bqi to i64
  %i.bqk = getelementptr i8, ptr %i.bpx, i64 %i.bqj ; 2 uses
  %i.bql = getelementptr i8, ptr %i.bqk, i64 16
  %i.bqm = load ptr, ptr %i.bql, align 8, !tbaa !19763
  %i.bqn = icmp eq ptr %i.bhq, %i.bqm
  br i1 %i.bqn, label %.loopexit1724.loopexit, label %.critedge.i.i1024, !prof !19685

.critedge.i.i1024:                                ; preds = %bb.gv
  %i.bqo = add nsw i32 %.sroa.019.0.i1023, -1
  %i.bqp = and i32 %i.bqo, %.sroa.019.0.i1023     ; 2 uses
  %i.bqq = and i32 %i.bqp, 16382
  %.not58.i1025 = icmp eq i32 %i.bqq, 0
  br i1 %.not58.i1025, label %.loopexit.i1026, label %bb.gv, !llvm.loop !768

.loopexit.i1026:                                  ; preds = %.critedge.i.i1024, %bb.gu
  %i.bqr = icmp eq i8 %i.bqe, 0
  br i1 %i.bqr, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit1039, label %bb.gw, !prof !19685

bb.gw:                                            ; preds = %.loopexit.i1026
  %i.bqs = add i64 %.024.i62.i1019, -1            ; 2 uses
  %i.bqt = add i64 %i.bpn, %.026.i61.i1020
  %.not.i.i1027 = icmp eq i64 %i.bqs, 0
  br i1 %.not.i.i1027, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit1039, label %bb.gu, !llvm.loop !769

.loopexit1724.loopexit:                           ; preds = %bb.gv
  %i.bqu = getelementptr i8, ptr %i.bqk, i64 16
  br label %.loopexit1724

.loopexit1724:                                    ; preds = %.loopexit1724.loopexit, %bb.gs
  %.sroa.018.149.i1030 = phi ptr [ %i.boy, %bb.gs ], [ %i.bqu, %.loopexit1724.loopexit ]
  %i.bqv = getelementptr inbounds nuw i8, ptr %.sroa.018.149.i1030, i64 8 ; 2 uses
  %i.bqw = load i64, ptr %i.bqv, align 8, !tbaa !19676 ; 2 uses
  %i.bqx = icmp slt i64 %i.bqw, 0
  br i1 %i.bqx, label %bb.gx, label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i1032

bb.gx:                                            ; preds = %.loopexit1724
  %i.bqy = shl i64 %i.bqw, 1
  %i.bqz = inttoptr i64 %i.bqy to ptr             ; 2 uses
  %.sroa.0.0.copyload.i.i1036 = load ptr, ptr %i.bqz, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i1037 = getelementptr inbounds nuw i8, ptr %i.bqz, i64 8
  %.sroa.3.0.copyload.i.i1038 = load i64, ptr %.sroa.3.0..sroa_idx.i.i1037, align 8, !tbaa !19676
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i1032

_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i1032: ; preds = %bb.gx, %.loopexit1724
  %.sroa.3.0.i.i1033 = phi i64 [ %.sroa.3.0.copyload.i.i1038, %bb.gx ], [ 64, %.loopexit1724 ]
  %.sroa.0.0.i.i1034 = phi ptr [ %.sroa.0.0.copyload.i.i1036, %bb.gx ], [ %i.bqv, %.loopexit1724 ]
  %i.bra = icmp ult i64 %i.bhb, %.sroa.3.0.i.i1033
  br i1 %i.bra, label %bb.gy, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit1039

bb.gy:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i1032
  %i.brb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i1034, i64 %i.bhj
  %i.brc = load i64, ptr %i.brb, align 8, !tbaa !19676
  %i.brd = and i64 %i.brc, %i.bhl
  %i.bre = icmp ne i64 %i.brd, 0
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit1039

_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit1039: ; preds = %.loopexit.i1026, %bb.gw, %bb.gr, %bb.gs, %bb.gy, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i1032
  %i.brf = phi i1 [ false, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i1032 ], [ %i.bre, %bb.gy ], [ false, %bb.gs ], [ false, %bb.gr ], [ false, %bb.gw ], [ false, %.loopexit.i1026 ] ; 2 uses
  br i1 %.not250, label %bb.he, label %bb.gz

bb.gz:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit1039
  %i.brg = load i64, ptr %i.bhn, align 8, !tbaa !19695 ; 2 uses
  %i.brh = icmp ult i64 %i.brg, 256
  br i1 %i.brh, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit360, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bri = ptrtoint ptr %i.bhq to i64             ; 2 uses
  %i.brj = zext i64 %i.bri to i128
  %i.brk = mul nuw i128 %i.brj, 14181476777654086739
  %i.brl = lshr i128 %i.brk, 64
  %i.brm = trunc nuw i128 %i.brl to i64
  %i.brn = mul i64 %i.bri, -4265267296055464877
  %i.bro = xor i64 %i.brn, %i.brm
  %i.brp = mul i64 %i.bro, -4265267296055464877   ; 2 uses
  %i.brq = lshr i64 %i.brp, 14
  %i.brr = and i64 %i.brq, 255
  %i.brs = lshr i64 %i.brp, 22
  %.sroa.speculated.i.i.i1040 = call i64 @llvm.umax.i64(i64 %i.brr, i64 1) ; 2 uses
  %i.brt = shl nuw nsw i64 %.sroa.speculated.i.i.i1040, 1
  %i.bru = or disjoint i64 %i.brt, 1
  %i.brv = trunc nuw i64 %.sroa.speculated.i.i.i1040 to i8
  %i.brw = insertelement <16 x i8> poison, i8 %i.brv, i64 0
  %i.brx = shufflevector <16 x i8> %i.brw, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bry = and i64 %i.brg, 255                    ; 2 uses
  %i.brz = shl nuw i64 1, %i.bry
  %notmask.i1043 = shl nsw i64 -1, %i.bry
  %i.bsa = xor i64 %notmask.i1043, -1
  %i.bsb = load ptr, ptr %i.bho, align 8, !tbaa !19720
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.hd
  %.023.i4172064 = phi i64 [ %i.brz, %bb.ha ], [ %i.btc, %bb.hd ]
  %.025.i4162063 = phi i64 [ %i.brs, %bb.ha ], [ %i.btd, %bb.hd ] ; 2 uses
  %i.bsc = and i64 %.025.i4162063, %i.bsa
  %i.bsd = shl nsw i64 %i.bsc, 6
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsb, i64 %i.bsd ; 3 uses
  %i.bsf = load <16 x i8>, ptr %i.bse, align 16   ; 2 uses
  %i.bsg = icmp eq <16 x i8> %i.bsf, %i.brx
  %i.bsh = bitcast <16 x i1> %i.bsg to i16
  %i.bsi = zext i16 %i.bsh to i32                 ; 2 uses
  %i.bsj = and i32 %i.bsi, 4095
  %.not1711 = icmp eq i32 %i.bsj, 0
  %i.bsk = extractelement <16 x i8> %i.bsf, i64 15
  br i1 %.not1711, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.hb
  %i.bsl = icmp ne ptr %i.bse, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bsl)
  %i.bsm = load ptr, ptr %i.bhm, align 8, !tbaa !20277
  br label %bb.hc

bb.hc:                                            ; preds = %.preheader, %.critedge.i430
  %.sroa.01586.0 = phi i32 [ %i.bsz, %.critedge.i430 ], [ %i.bsi, %.preheader ] ; 4 uses
  %i.bsn = icmp ne i32 %.sroa.01586.0, 0
  call void @llvm.assume(i1 %i.bsn)
  %i.bso = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.01586.0, i1 true)
  %i.bsp = shl nuw nsw i32 %i.bso, 2
  %i.bsq = zext nneg i32 %i.bsp to i64
  %i.bsr = getelementptr i8, ptr %i.bse, i64 %i.bsq
  %i.bss = getelementptr i8, ptr %i.bsr, i64 16
  %i.bst = load i32, ptr %i.bss, align 4, !tbaa !19786
  %i.bsu = zext i32 %i.bst to i64
  %i.bsv = getelementptr inbounds nuw [8 x i8], ptr %i.bsm, i64 %i.bsu
  %i.bsw = load ptr, ptr %i.bsv, align 8, !tbaa !19763
  %i.bsx = icmp eq ptr %i.bhq, %i.bsw
  br i1 %i.bsx, label %.critedge1723, label %.critedge.i430, !prof !19685

.critedge.i430:                                   ; preds = %bb.hc
  %i.bsy = add nsw i32 %.sroa.01586.0, -1
  %i.bsz = and i32 %i.bsy, %.sroa.01586.0         ; 2 uses
  %i.bta = and i32 %i.bsz, 4094
  %.not1712 = icmp eq i32 %i.bta, 0
  br i1 %.not1712, label %.loopexit, label %bb.hc, !llvm.loop !762

.loopexit:                                        ; preds = %.critedge.i430, %bb.hb
  %i.btb = icmp eq i8 %i.bsk, 0
  br i1 %i.btb, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit360, label %bb.hd, !prof !19685

bb.hd:                                            ; preds = %.loopexit
  %i.btc = add i64 %.023.i4172064, -1             ; 2 uses
  %i.btd = add i64 %i.bru, %.025.i4162063
  %.not.i418 = icmp eq i64 %i.btc, 0
  br i1 %.not.i418, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit360, label %bb.hb, !llvm.loop !763

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit360: ; preds = %bb.hd, %.loopexit, %bb.gz
  br i1 %i.brf, label %.critedge1723, label %bb.ho

bb.he:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit1039
  br i1 %i.brf, label %.critedge1723, label %bb.ho

.critedge1723:                                    ; preds = %bb.hc, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit360, %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #40
  %i.bte = load ptr, ptr %.sroa.01425.02069, align 8, !tbaa !19769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.bte, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.btf = load ptr, ptr %2, align 8, !tbaa !797
  %i.btg = getelementptr inbounds nuw i8, ptr %i.btf, i64 16
  %i.bth = load ptr, ptr %i.btg, align 8
  %i.bti = call { i64, ptr } %i.bth(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %49), !call_target !809, !inline_history !21209 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  %i.btj = extractvalue { i64, ptr } %i.bti, 0
  %i.btk = extractvalue { i64, ptr } %i.bti, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40, !noalias !21472
  %i.btl = getelementptr inbounds nuw i8, ptr %i.btk, i64 %i.btj
  store ptr %i.ail, ptr %8, align 8, !tbaa !19764, !alias.scope !21473, !noalias !21472
  store i64 0, ptr %i.aim, align 8, !tbaa !19673, !alias.scope !21473, !noalias !21472
  store i8 0, ptr %i.ail, align 8, !tbaa !19682, !alias.scope !21473, !noalias !21472
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.btk, ptr %i.btl, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc1.i1382 unwind label %bb.hf, !noalias !21472

bb.hf:                                            ; preds = %.critedge1723
  %i.btm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.btn = load ptr, ptr %8, align 8, !tbaa !19672, !alias.scope !21473, !noalias !21472 ; 2 uses
  %i.bto = icmp eq ptr %i.btn, %i.ail
  br i1 %i.bto, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1378: ; preds = %bb.hf
  %i.btp = load i64, ptr %i.ail, align 8, !tbaa !19682, !alias.scope !21473, !noalias !21472
  %i.btq = add i64 %i.btp, 1
  call void @_ZdlPvm(ptr noundef %i.btn, i64 noundef %i.btq) #41, !noalias !21472
  br label %common.resume

.noexc1.i1382:                                    ; preds = %.critedge1723
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40, !noalias !21474
  %i.btr = load ptr, ptr %8, align 8, !tbaa !19672, !noalias !21472
  %i.bts = load i64, ptr %i.aim, align 8, !tbaa !19673, !noalias !21472
  %i.btt = ptrtoint ptr %i.btr to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1383 = zext i64 %i.bts to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1384 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1383, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1385 = zext i64 %i.btt to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1386 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1384, %.sroa.01.sroa.0.0.insert.ext.i.i1385
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1386, ptr %7, align 16, !noalias !21474
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %104, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %7)
          to label %bb.hg unwind label %bb.hh

bb.hg:                                            ; preds = %.noexc1.i1382
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40, !noalias !21474
  %i.btu = load ptr, ptr %8, align 8, !tbaa !19672, !noalias !21472 ; 2 uses
  %i.btv = icmp eq ptr %i.btu, %i.ail
  br i1 %i.btv, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1392, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1390: ; preds = %bb.hg
  %i.btw = load i64, ptr %i.ail, align 8, !tbaa !19682, !noalias !21472
  %i.btx = add i64 %i.btw, 1
  call void @_ZdlPvm(ptr noundef %i.btu, i64 noundef %i.btx) #41
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1392

bb.hh:                                            ; preds = %.noexc1.i1382
  %i.bty = landingpad { ptr, i32 }
          cleanup
  %i.btz = load ptr, ptr %8, align 8, !tbaa !19672, !noalias !21472 ; 2 uses
  %i.bua = icmp eq ptr %i.btz, %i.ail
  br i1 %i.bua, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1387

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1387: ; preds = %bb.hh
  %i.bub = load i64, ptr %i.ail, align 8, !tbaa !19682, !noalias !21472
  %i.buc = add i64 %i.bub, 1
  call void @_ZdlPvm(ptr noundef %i.btz, i64 noundef %i.buc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1388: ; preds = %bb.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1387
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40, !noalias !21472
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1392: ; preds = %bb.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1390
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40, !noalias !21472
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #40
  %i.bud = load ptr, ptr %i.bhq, align 8, !tbaa !19672 ; 2 uses
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bhq, i64 8
  %i.buf = load i64, ptr %i.bue, align 8, !tbaa !19673
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40, !noalias !21475
  %i.bug = getelementptr inbounds nuw i8, ptr %i.bud, i64 %i.buf
  store ptr %i.ain, ptr %6, align 8, !tbaa !19764, !alias.scope !21476, !noalias !21475
  store i64 0, ptr %i.aio, align 8, !tbaa !19673, !alias.scope !21476, !noalias !21475
  store i8 0, ptr %i.ain, align 8, !tbaa !19682, !alias.scope !21476, !noalias !21475
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.bud, ptr %i.bug, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc1.i1397 unwind label %bb.hi, !noalias !21475

bb.hi:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1392
  %i.buh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bui = load ptr, ptr %6, align 8, !tbaa !19672, !alias.scope !21476, !noalias !21475 ; 2 uses
  %i.buj = icmp eq ptr %i.bui, %i.ain
  br i1 %i.buj, label %.body1407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1393: ; preds = %bb.hi
  %i.buk = load i64, ptr %i.ain, align 8, !tbaa !19682, !alias.scope !21476, !noalias !21475
  %i.bul = add i64 %i.buk, 1
  call void @_ZdlPvm(ptr noundef %i.bui, i64 noundef %i.bul) #41, !noalias !21475
  br label %.body1407

.noexc1.i1397:                                    ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1392
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40, !noalias !21477
  %i.bum = load ptr, ptr %6, align 8, !tbaa !19672, !noalias !21475
  %i.bun = load i64, ptr %i.aio, align 8, !tbaa !19673, !noalias !21475
  %i.buo = ptrtoint ptr %i.bum to i64
  %.sroa.01.sroa.4.0.insert.ext.i.i1398 = zext i64 %i.bun to i128
  %.sroa.01.sroa.4.0.insert.shift.i.i1399 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i.i1398, 64
  %.sroa.01.sroa.0.0.insert.ext.i.i1400 = zext i64 %i.buo to i128
  %.sroa.01.sroa.0.0.insert.insert.i.i1401 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i.i1399, %.sroa.01.sroa.0.0.insert.ext.i.i1400
  store i128 %.sroa.01.sroa.0.0.insert.insert.i.i1401, ptr %5, align 16, !noalias !21477
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %105, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %5)
          to label %bb.hj unwind label %bb.hk

bb.hj:                                            ; preds = %.noexc1.i1397
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !21477
  %i.bup = load ptr, ptr %6, align 8, !tbaa !19672, !noalias !21475 ; 2 uses
  %i.buq = icmp eq ptr %i.bup, %i.ain
  br i1 %i.buq, label %.noexc315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1405: ; preds = %bb.hj
  %i.bur = load i64, ptr %i.ain, align 8, !tbaa !19682, !noalias !21475
  %i.bus = add i64 %i.bur, 1
  call void @_ZdlPvm(ptr noundef %i.bup, i64 noundef %i.bus) #41
  br label %.noexc315

bb.hk:                                            ; preds = %.noexc1.i1397
  %i.but = landingpad { ptr, i32 }
          cleanup
  %i.buu = load ptr, ptr %6, align 8, !tbaa !19672, !noalias !21475 ; 2 uses
  %i.buv = icmp eq ptr %i.buu, %i.ain
  br i1 %i.buv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1402

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1402: ; preds = %bb.hk
  %i.buw = load i64, ptr %i.ain, align 8, !tbaa !19682, !noalias !21475
  %i.bux = add i64 %i.buw, 1
  call void @_ZdlPvm(ptr noundef %i.buu, i64 noundef %i.bux) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1403: ; preds = %bb.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i1402
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40, !noalias !21475
  br label %.body1407

.noexc315:                                        ; preds = %bb.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1405
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40, !noalias !21475
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #40, !noalias !21478
  call void @llvm.experimental.noalias.scope.decl(metadata !21479)
  %i.buy = load ptr, ptr %104, align 8, !tbaa !19672, !noalias !21479
  %i.buz = load i64, ptr %i.aip, align 8, !tbaa !19673, !noalias !21479
  %i.bva = ptrtoint ptr %i.buy to i64
  %i.bvb = load ptr, ptr %105, align 8, !tbaa !19672, !noalias !21479
  %i.bvc = load i64, ptr %i.aiq, align 8, !tbaa !19673, !noalias !21479
  %i.bvd = ptrtoint ptr %i.bvb to i64
  %.sroa.04.sroa.4.0.insert.ext.i1048 = zext i64 %i.buz to i128
  %.sroa.04.sroa.4.0.insert.shift.i1049 = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i1048, 64
  %.sroa.04.sroa.0.0.insert.ext.i1050 = zext i64 %i.bva to i128
  %.sroa.04.sroa.0.0.insert.insert.i1051 = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i1049, %.sroa.04.sroa.0.0.insert.ext.i1050
  store i128 %.sroa.04.sroa.0.0.insert.insert.i1051, ptr %64, align 16, !tbaa !19682, !alias.scope !21479
  %.sroa.0.sroa.4.0.insert.ext.i1052 = zext i64 %i.bvc to i128
  %.sroa.0.sroa.4.0.insert.shift.i1053 = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i1052, 64
  %.sroa.0.sroa.0.0.insert.ext.i1054 = zext i64 %i.bvd to i128
  %.sroa.0.sroa.0.0.insert.insert.i1055 = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i1053, %.sroa.0.sroa.0.0.insert.ext.i1054
  store i128 %.sroa.0.sroa.0.0.insert.insert.i1055, ptr %i.air, align 16, !tbaa !19682, !alias.scope !21479
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %103, ptr nonnull @.str.287, i64 39, i64 221, ptr nonnull %64)
          to label %bb.hl unwind label %bb.hm

bb.hl:                                            ; preds = %.noexc315
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #40, !noalias !21478
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit1057 unwind label %bb.hn, !inline_history !21208

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit1057: ; preds = %bb.hl
  %i.bve = load ptr, ptr %103, align 8, !tbaa !19672 ; 2 uses
  %i.bvf = icmp eq ptr %i.bve, %i.ais
  br i1 %i.bvf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1060, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1058

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1058: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit1057
  %i.bvg = load i64, ptr %i.ais, align 8, !tbaa !19682
  %i.bvh = add i64 %i.bvg, 1
  call void @_ZdlPvm(ptr noundef %i.bve, i64 noundef %i.bvh) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1060

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1060: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit1057, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1058
  %i.bvi = load ptr, ptr %105, align 8, !tbaa !19672 ; 2 uses
  %i.bvj = icmp eq ptr %i.bvi, %i.ait
  br i1 %i.bvj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1063, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1061

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1061: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1060
  %i.bvk = load i64, ptr %i.ait, align 8, !tbaa !19682
  %i.bvl = add i64 %i.bvk, 1
  call void @_ZdlPvm(ptr noundef %i.bvi, i64 noundef %i.bvl) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1063

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1063: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1060, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1061
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #40
  %i.bvm = load ptr, ptr %104, align 8, !tbaa !19672 ; 2 uses
  %i.bvn = icmp eq ptr %i.bvm, %i.aiu
  br i1 %i.bvn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1066, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1064

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1064: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1063
  %i.bvo = load i64, ptr %i.aiu, align 8, !tbaa !19682
  %i.bvp = add i64 %i.bvo, 1
  call void @_ZdlPvm(ptr noundef %i.bvm, i64 noundef %i.bvp) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1066

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1066: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1063, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1064
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #40
  br label %bb.ho

bb.hm:                                            ; preds = %.noexc315
  %i.bvq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069

bb.hn:                                            ; preds = %bb.hl
  %i.bvr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bvs = load ptr, ptr %103, align 8, !tbaa !19672 ; 2 uses
  %i.bvt = icmp eq ptr %i.bvs, %i.ais
  br i1 %i.bvt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1067

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1067: ; preds = %bb.hn
  %i.bvu = load i64, ptr %i.ais, align 8, !tbaa !19682
  %i.bvv = add i64 %i.bvu, 1
  call void @_ZdlPvm(ptr noundef %i.bvs, i64 noundef %i.bvv) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069: ; preds = %bb.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1067, %bb.hm
  %.pn251 = phi { ptr, i32 } [ %i.bvq, %bb.hm ], [ %i.bvr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1067 ], [ %i.bvr, %bb.hn ] ; 2 uses
  %i.bvw = load ptr, ptr %105, align 8, !tbaa !19672 ; 2 uses
  %i.bvx = icmp eq ptr %i.bvw, %i.ait
  br i1 %i.bvx, label %.body1407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1070

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1070: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069
  %i.bvy = load i64, ptr %i.ait, align 8, !tbaa !19682
  %i.bvz = add i64 %i.bvy, 1
  call void @_ZdlPvm(ptr noundef %i.bvw, i64 noundef %i.bvz) #41
  br label %.body1407

.body1407:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069, %bb.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1070, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1403, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1393
  %.pn251.pn = phi { ptr, i32 } [ %i.buh, %bb.hi ], [ %.pn251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1070 ], [ %i.but, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i1403 ], [ %i.buh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1393 ], [ %.pn251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #40
  %i.bwa = load ptr, ptr %104, align 8, !tbaa !19672 ; 2 uses
  %i.bwb = icmp eq ptr %i.bwa, %i.aiu
  br i1 %i.bwb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1075, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1073

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1073: ; preds = %.body1407
  %i.bwc = load i64, ptr %i.aiu, align 8, !tbaa !19682
  %i.bwd = add i64 %i.bwc, 1
  call void @_ZdlPvm(ptr noundef %i.bwa, i64 noundef %i.bwd) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1075

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1075: ; preds = %.body1407, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1073
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #40
  br label %common.resume

bb.ho:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit360, %bb.he, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1066
  %i.bwe = icmp eq ptr %i.bhh, %.sroa.01420.02065
  br i1 %i.bwe, label %._crit_edge2068, label %.backedge, !prof !19683
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14index_of_valueERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = icmp ult i64 %i.b, 512
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i64 %i.b, 256
  br i1 %i.d, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEERKT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20278
  %i.g = and i64 %i.f, -16
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !19769
  %i.j = load ptr, ptr %i.h, align 16, !tbaa !19769
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE2atIKS8_S6_EERDaRT_RKT0_.exit, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEERKT_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %1, align 8, !tbaa !19769  ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw i128 %i.o, 14181476777654086739
  %i.q = lshr i128 %i.p, 64
  %i.r = trunc nuw i128 %i.q to i64
  %i.s = mul i64 %i.n, -4265267296055464877
  %i.t = xor i64 %i.s, %i.r
  %i.u = mul i64 %i.t, -4265267296055464877       ; 2 uses
  %i.v = lshr i64 %i.u, 14
  %i.w = and i64 %i.v, 255
  %i.x = lshr i64 %i.u, 22
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1) ; 2 uses
  %i.y = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.z = or disjoint i64 %i.y, 1
  %i.aa = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ab = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ad = and i64 %i.b, 255                       ; 2 uses
  %i.ae = shl nuw i64 1, %i.ad
  %notmask.i = shl nsw i64 -1, %i.ad
  %i.af = xor i64 %notmask.i, -1
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !19703
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %.024.i61 = phi i64 [ %i.ae, %bb.d ], [ %i.be, %bb.g ]
  %.026.i60 = phi i64 [ %i.x, %bb.d ], [ %i.bf, %bb.g ] ; 2 uses
  %i.ah = and i64 %.026.i60, %i.af
  %i.ai = shl nsw i64 %i.ah, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.ak, i32 0, i32 3, i32 1)
  %i.al = load <16 x i8>, ptr %i.aj, align 16     ; 2 uses
  %i.am = icmp eq <16 x i8> %i.al, %i.ac
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = and i32 %i.ao, 16383
  %.not = icmp eq i32 %i.ap, 0
  %i.aq = extractelement <16 x i8> %i.al, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ar = icmp ne ptr %i.aj, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ar)
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.018.0 = phi i32 [ %i.bb, %.critedge.i ], [ %i.ao, %.preheader ] ; 4 uses
  %i.as = icmp ne i32 %.sroa.018.0, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.018.0, i1 true)
  %i.au = shl nuw nsw i32 %i.at, 4
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr i8, ptr %i.aj, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19769
  %i.az = icmp eq ptr %i.m, %i.ay
  br i1 %i.az, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE2atIKS8_S6_EERDaRT_RKT0_.exit.loopexit, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.f
  %i.ba = add nsw i32 %.sroa.018.0, -1
  %i.bb = and i32 %i.ba, %.sroa.018.0             ; 2 uses
  %i.bc = and i32 %i.bb, 16382
  %.not57 = icmp eq i32 %i.bc, 0
  br i1 %.not57, label %.loopexit, label %bb.f, !llvm.loop !772

.loopexit:                                        ; preds = %.critedge.i, %bb.e
  %i.bd = icmp eq i8 %i.aq, 0
  br i1 %i.bd, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEERKT_.exit.thread, label %bb.g, !prof !19685

bb.g:                                             ; preds = %.loopexit
  %i.be = add i64 %.024.i61, -1                   ; 2 uses
  %i.bf = add i64 %i.z, %.026.i60
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEERKT_.exit.thread, label %bb.e, !llvm.loop !773

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEERKT_.exit.thread: ; preds = %.loopexit, %bb.g, %bb.c, %bb.b
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.12) #20
  unreachable

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE2atIKS8_S6_EERDaRT_RKT0_.exit.loopexit: ; preds = %bb.f
  %i.bg = getelementptr i8, ptr %i.aw, i64 16
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE2atIKS8_S6_EERDaRT_RKT0_.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE2atIKS8_S6_EERDaRT_RKT0_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE2atIKS8_S6_EERDaRT_RKT0_.exit.loopexit, %bb.c
  %.sroa.017.148 = phi ptr [ %i.h, %bb.c ], [ %i.bg, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE2atIKS8_S6_EERDaRT_RKT0_.exit.loopexit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.017.148, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !19676
  ret i64 %i.bi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = icmp ult i64 %i.b, 512
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i64 %i.b, 256
  br i1 %i.d, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19761
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19734 ; 3 uses
  %i.j = load i128, ptr %1, align 8
  %i.k = load i128, ptr %i.i, align 8
  %i.l = xor i128 %i.j, %i.k
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = getelementptr i8, ptr %i.i, i64 16
  %i.o = load i128, ptr %i.m, align 8
  %i.p = load i128, ptr %i.n, align 8
  %i.q = xor i128 %i.o, %i.p
  %i.r = or i128 %i.l, %i.q
  %i.s = icmp ne i128 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread44, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.u = load i64, ptr %1, align 8, !tbaa !19676  ; 2 uses
  %i.v = lshr i64 %i.u, 56
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1) ; 2 uses
  %i.w = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.x = or disjoint i64 %i.w, 1
  %i.y = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.z = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ab = and i64 %i.b, 255                       ; 2 uses
  %i.ac = shl nuw i64 1, %i.ab
  %notmask.i = shl nsw i64 -1, %i.ab
  %i.ad = xor i64 %notmask.i, -1
  %i.ae = load ptr, ptr %0, align 8, !tbaa !19732
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %.024.i62 = phi i64 [ %i.ac, %bb.d ], [ %i.bm, %bb.g ]
  %.026.i61 = phi i64 [ %i.u, %bb.d ], [ %i.bn, %bb.g ] ; 2 uses
  %i.af = and i64 %.026.i61, %i.ad
  %i.ag = shl nsw i64 %i.af, 7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.ai, i32 0, i32 3, i32 1)
  %i.aj = load <16 x i8>, ptr %i.ah, align 16     ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.aj, %i.aa
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = and i32 %i.am, 16383
  %.not = icmp eq i32 %i.an, 0
  %i.ao = extractelement <16 x i8> %i.aj, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ap = icmp ne ptr %i.ah, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ap)
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.019.0 = phi i32 [ %i.bj, %.critedge.i ], [ %i.am, %.preheader ] ; 4 uses
  %i.aq = icmp ne i32 %.sroa.019.0, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0, i1 true)
  %i.as = shl nuw nsw i32 %i.ar, 3
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19734 ; 3 uses
  %i.ax = load i128, ptr %1, align 8
  %i.ay = load i128, ptr %i.aw, align 8
  %i.az = xor i128 %i.ax, %i.ay
  %i.ba = getelementptr i8, ptr %1, i64 16
  %i.bb = getelementptr i8, ptr %i.aw, i64 16
  %i.bc = load i128, ptr %i.ba, align 8
  %i.bd = load i128, ptr %i.bb, align 8
  %i.be = xor i128 %i.bc, %i.bd
  %i.bf = or i128 %i.az, %i.be
  %i.bg = icmp ne i128 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %.not9.i.i.i.i.i.i.i.i11 = icmp eq i32 %i.bh, 0
  br i1 %.not9.i.i.i.i.i.i.i.i11, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread44, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.f
  %i.bi = add nsw i32 %.sroa.019.0, -1
  %i.bj = and i32 %i.bi, %.sroa.019.0             ; 2 uses
  %i.bk = and i32 %i.bj, 16382
  %.not58 = icmp eq i32 %i.bk, 0
  br i1 %.not58, label %.loopexit, label %bb.f, !llvm.loop !770

.loopexit:                                        ; preds = %.critedge.i, %bb.e
  %i.bl = icmp eq i8 %i.ao, 0
  br i1 %i.bl, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread, label %bb.g, !prof !19685

bb.g:                                             ; preds = %.loopexit
  %i.bm = add i64 %.024.i62, -1                   ; 2 uses
  %i.bn = add i64 %i.x, %.026.i61
  %.not.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread, label %bb.e, !llvm.loop !771

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread44: ; preds = %bb.f, %bb.c
  %i.bo = phi ptr [ %i.i, %bb.c ], [ %i.aw, %bb.f ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread: ; preds = %.loopexit, %bb.g, %bb.c, %bb.b, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread44
  %i.bq = phi ptr [ %i.bp, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread44 ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.g ], [ null, %.loopexit ]
  ret ptr %i.bq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5folly15RegexMatchCache8hasRegexERKNS_18RegexMatchCacheKeyE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = icmp ult i64 %i.b, 512
  br i1 %i.c, label %bb.b, label %.noexc3

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i64 %i.b, 256
  br i1 %i.d, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE8findImplIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.i, label %.noexc

.noexc:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19761
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19734 ; 2 uses
  %i.j = load i128, ptr %1, align 8
  %i.k = load i128, ptr %i.i, align 8
  %i.l = xor i128 %i.j, %i.k
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = getelementptr i8, ptr %i.i, i64 16
  %i.o = load i128, ptr %i.m, align 8
  %i.p = load i128, ptr %i.n, align 8
  %i.q = xor i128 %i.o, %i.p
  %i.r = or i128 %i.l, %i.q
  %i.s = icmp ne i128 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE8findImplIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.i

.noexc3:                                          ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %1, align 8, !tbaa !19676  ; 2 uses
  %i.w = lshr i64 %i.v, 56
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1) ; 2 uses
  %i.x = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.y = or disjoint i64 %i.x, 1
  %i.z = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.aa = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ac = and i64 %i.b, 255                       ; 2 uses
  %i.ad = shl nuw i64 1, %i.ac
  %notmask.i = shl nsw i64 -1, %i.ac
  %i.ae = xor i64 %notmask.i, -1
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !19732
  br label %.noexc6

.noexc6:                                          ; preds = %.noexc3, %bb.c
  %.024.i.i40 = phi i64 [ %i.ad, %.noexc3 ], [ %i.bn, %bb.c ]
  %.026.i.i39 = phi i64 [ %i.v, %.noexc3 ], [ %i.bo, %bb.c ] ; 2 uses
  %i.ag = and i64 %.026.i.i39, %i.ae
  %i.ah = shl nsw i64 %i.ag, 7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.aj, i32 0, i32 3, i32 1)
  %i.ak = load <16 x i8>, ptr %i.ai, align 16     ; 2 uses
  %i.al = icmp eq <16 x i8> %i.ak, %i.ab
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = and i32 %i.an, 16383
  %.not = icmp eq i32 %i.ao, 0
  %i.ap = extractelement <16 x i8> %i.ak, i64 15
  br i1 %.not, label %.loopexit, label %.noexc9.preheader

.noexc9.preheader:                                ; preds = %.noexc6
  %i.aq = icmp ne ptr %i.ai, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aq)
  br label %.noexc9

.noexc9:                                          ; preds = %.noexc9.preheader, %.critedge.i.i
  %.sroa.015.0 = phi i32 [ %i.bk, %.critedge.i.i ], [ %i.an, %.noexc9.preheader ] ; 4 uses
  %i.ar = icmp ne i32 %.sroa.015.0, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.015.0, i1 true)
  %i.at = shl nuw nsw i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr i8, ptr %i.ai, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19734 ; 2 uses
  %i.ay = load i128, ptr %1, align 8
  %i.az = load i128, ptr %i.ax, align 8
  %i.ba = xor i128 %i.ay, %i.az
  %i.bb = getelementptr i8, ptr %1, i64 16
  %i.bc = getelementptr i8, ptr %i.ax, i64 16
  %i.bd = load i128, ptr %i.bb, align 8
  %i.be = load i128, ptr %i.bc, align 8
  %i.bf = xor i128 %i.bd, %i.be
  %i.bg = or i128 %i.ba, %i.bf
  %i.bh = icmp ne i128 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %.not9.i.i.i.i.i.i.i.i12 = icmp eq i32 %i.bi, 0
  br i1 %.not9.i.i.i.i.i.i.i.i12, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE8findImplIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.i, label %.critedge.i.i, !prof !19685

.critedge.i.i:                                    ; preds = %.noexc9
  %i.bj = add nsw i32 %.sroa.015.0, -1
  %i.bk = and i32 %i.bj, %.sroa.015.0             ; 2 uses
  %i.bl = and i32 %i.bk, 16382
  %.not37 = icmp eq i32 %i.bl, 0
  br i1 %.not37, label %.loopexit, label %.noexc9, !llvm.loop !770

.loopexit:                                        ; preds = %.critedge.i.i, %.noexc6
  %i.bm = icmp eq i8 %i.ap, 0
  br i1 %i.bm, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE8findImplIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.i, label %bb.c, !prof !19685

bb.c:                                             ; preds = %.loopexit
  %i.bn = add i64 %.024.i.i40, -1                 ; 2 uses
  %i.bo = add i64 %i.y, %.026.i.i39
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE8findImplIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.i, label %.noexc6, !llvm.loop !771

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE8findImplIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.i: ; preds = %bb.c, %.loopexit, %.noexc9, %.noexc, %bb.b
  %.sroa.014.1 = phi i1 [ %.not9.i.i.i.i.i.i.i.i, %.noexc ], [ false, %bb.b ], [ true, %.noexc9 ], [ false, %.loopexit ], [ false, %bb.c ]
  ret i1 %.sroa.014.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15RegexMatchCache8addRegexERKNS_18RegexMatchCacheKeyE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.452", align 8    ; 3 uses
  %3 = alloca %"struct.std::pair.469", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.472", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.221", align 1    ; 3 uses
  %6 = alloca %"struct.std::pair.452", align 8    ; 5 uses
  %7 = alloca %"class.std::tuple.415", align 8    ; 4 uses
  %8 = alloca %"class.std::tuple.221", align 1    ; 3 uses
  %9 = alloca %"struct.std::pair.384", align 8    ; 5 uses
  %10 = alloca %"class.std::tuple.154", align 8   ; 4 uses
  %11 = alloca %"class.std::tuple.221", align 1   ; 3 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %12 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40, !noalias !21512
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40, !noalias !21512
  store ptr %1, ptr %10, align 8, !tbaa !19769, !alias.scope !21513, !noalias !21512
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40, !noalias !21512
  %i.c = load i64, ptr %1, align 8, !tbaa !19676, !noalias !21514 ; 2 uses
  %i.d = lshr i64 %i.c, 56
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 1)
  call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.384") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 %i.c, i64 %.sroa.speculated.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11), !noalias !21512
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40, !noalias !21512
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40, !noalias !21512
  %.sroa.03.0.copyload.i = load ptr, ptr %9, align 8, !tbaa !20280, !noalias !21512
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20155, !range !20060, !noalias !21515, !noundef !1339
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40, !noalias !21512
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.h = load ptr, ptr %.sroa.03.0.copyload.i, align 8, !tbaa !19734
  store ptr %i.h, ptr %i.a, align 8, !tbaa !19769
  %i.i = invoke { i64, i8 } @_ZN5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract = extractvalue { i64, i8 } %i.i, 0 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19695
  %i.l = icmp ult i64 %i.k, 256
  br i1 %i.l, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit53

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40, !noalias !21516
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40, !noalias !21516
  store ptr %i.a, ptr %7, align 8, !tbaa !20282, !alias.scope !21517, !noalias !21516
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40, !noalias !21516
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !19769, !noalias !21518
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw i128 %i.q, 14181476777654086739
  %i.s = lshr i128 %i.r, 64
  %i.t = trunc nuw i128 %i.s to i64
  %i.u = mul i64 %i.p, -4265267296055464877
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, -4265267296055464877       ; 2 uses
  %i.x = lshr i64 %i.w, 14
  %i.y = and i64 %i.x, 255
  %i.z = lshr i64 %i.w, 22
  %.sroa.speculated.i.i.i.i.i38 = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.452") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 %i.z, i64 %.sroa.speculated.i.i.i.i.i38, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40, !noalias !21516
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40, !noalias !21516
  %i.aa = load ptr, ptr %6, align 8, !tbaa !20284, !noalias !21516 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !19715, !noalias !21516, !nonnull !1339, !noundef !1339
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !19786, !noalias !21516
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.ae
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  %.sroa.0.0.i.i = phi ptr [ %i.af, %bb.f ], [ null, %.noexc ]
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !20155, !range !20060, !noalias !21519, !noundef !1339
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40, !noalias !21516
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.critedge, label %bb.h, !prof !19685

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull @.str.288, i32 noundef 301)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %bb.j unwind label %bb.m       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.289, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.290, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #42
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit53

bb.l:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit53

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.j, %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #42
  unreachable

.critedge:                                        ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !19675 ; 2 uses
  %i.as = and i64 %i.ar, -16                      ; 2 uses
  %.not85 = icmp eq i64 %i.as, 0
  br i1 %.not85, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = and i64 %i.ar, 15
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = icmp eq i64 %.fca.0.extract, 63
  %i.ax = lshr i64 %.fca.0.extract, 6
  %i.ay = and i64 %.fca.0.extract, 63
  %i.az = shl nuw i64 1, %i.ay
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit
  %.sroa.056.087 = phi ptr [ %i.at, %.lr.ph ], [ %.sroa.056.1, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit ] ; 8 uses
  %.sroa.9.086 = phi i64 [ %i.au, %.lr.ph ], [ %.sroa.9.3, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !21520
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !21520
  store ptr %.sroa.056.087, ptr %4, align 8, !tbaa !20285, !alias.scope !21521, !noalias !21520
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40, !noalias !21520
  %i.ba = load ptr, ptr %.sroa.056.087, align 8, !tbaa !19763, !noalias !21522
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bc = zext i64 %i.bb to i128
  %i.bd = mul nuw i128 %i.bc, 14181476777654086739
  %i.be = lshr i128 %i.bd, 64
  %i.bf = trunc nuw i128 %i.be to i64
  %i.bg = mul i64 %i.bb, -4265267296055464877
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = mul i64 %i.bh, -4265267296055464877     ; 2 uses
  %i.bj = lshr i64 %i.bi, 14
  %i.bk = and i64 %i.bj, 255
  %i.bl = lshr i64 %i.bi, 22
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.469") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 %i.bl, i64 %.sroa.speculated.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.056.087, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !21520
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !21520
  %.sroa.03.0.copyload.i.i = load ptr, ptr %3, align 8, !tbaa !20287, !noalias !21520
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !21520
end_hunk_7
begin_hunk_8_@_ZN5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS3_:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20272
  %i.v = load ptr, ptr %0, align 8, !tbaa !19707  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19695
  %i.ac = lshr i64 %i.ab, 8                       ; 2 uses
  %i.ad = icmp ult i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19708
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.x
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = sub nsw i64 %i.ac, %i.ai
  invoke void @_ZNK5folly19grow_capacity_by_fnclISt6vectorImSaImEEEEvRT_NS5_9size_typeE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly16grow_capacity_byE, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aj)
          to label %._crit_edge unwind label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !19766
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE_Lb1EED2Ev.exit14

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.al = phi ptr [ %.pre, %._crit_edge ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19766 ; 2 uses
  %i.ao = icmp ne ptr %i.al, %i.an                ; 2 uses
  %i.ap = zext i1 %i.ao to i8
  store i8 %i.ap, ptr %i.a, align 1, !tbaa !20155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !19695
  %i.ar = lshr i64 %i.aq, 8
  %i.as = add nsw i64 %i.ar, -1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !19676
  store ptr %i.at, ptr %i.am, align 8, !tbaa !19708
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i64 [ %i.au, %bb.g ], [ %i.as, %bb.f ] ; 4 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !19676
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 8
  store i64 %.sink, ptr %i.av, align 8, !tbaa !20293
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  store i8 0, ptr %9, align 8, !tbaa !20291, !alias.scope !21546
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.aw, align 8, !tbaa !20295
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21547
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19766
  %i.ax = load ptr, ptr %1, align 8, !tbaa !19769
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !21548
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40, !noalias !21548
  store ptr %i.b, ptr %3, align 8, !tbaa !19766, !alias.scope !21549, !noalias !21548
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !21548
  %i.az = zext i64 %.sink to i128
  %i.ba = mul nuw i128 %i.az, 14181476777654086739
  %i.bb = lshr i128 %i.ba, 64
  %i.bc = trunc nuw i128 %i.bb to i64
  %i.bd = mul i64 %.sink, -4265267296055464877
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = mul i64 %i.be, -4265267296055464877     ; 2 uses
  %i.bg = lshr i64 %i.bf, 14
  %i.bh = and i64 %i.bg, 255
  %i.bi = lshr i64 %i.bf, 22
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE19tryEmplaceValueImplImJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.436") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 %i.bi, i64 %.sroa.speculated.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit13

_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !21548
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !21548
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !20298, !noalias !21548
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !21548
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 8
  store ptr %i.ax, ptr %i.bj, align 8, !tbaa !19769
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.i

_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit13: ; preds = %bb.h
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EE7executeEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE_Lb1EED2Ev.exit14

_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE_Lb1EED2Ev.exit14: ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit13, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit13 ], [ %i.ak, %bb.d ]
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE_Lb1EE7executeEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit, %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !19676
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %i.bm, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %i.q, 1
  ret { i64, i8 } %.fca.1.insert
}

declare void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #32

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.384") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !19732 ; 3 uses
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i82 = phi i64 [ %i.j, %bb.b ], [ %i.as, %bb.e ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.at, %bb.e ] ; 2 uses
  %i.l = and i64 %.026.i81, %i.k
  %i.m = shl nsw i64 %i.l, 7
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.m ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.o, i32 0, i32 3, i32 1)
  %i.p = load <16 x i8>, ptr %i.n, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = and i32 %i.s, 16383
  %.not71 = icmp eq i32 %i.t, 0
  %i.u = extractelement <16 x i8> %i.p, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.v = icmp ne ptr %i.n, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.v)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.ap, %.critedge.i ], [ %i.s, %.preheader ] ; 4 uses
  %i.w = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = getelementptr i8, ptr %i.n, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19734 ; 2 uses
  %i.ad = load i128, ptr %4, align 8
  %i.ae = load i128, ptr %i.ac, align 8
  %i.af = xor i128 %i.ad, %i.ae
  %i.ag = getelementptr i8, ptr %4, i64 16
  %i.ah = getelementptr i8, ptr %i.ac, i64 16
  %i.ai = load i128, ptr %i.ag, align 8
  %i.aj = load i128, ptr %i.ah, align 8
  %i.ak = xor i128 %i.ai, %i.aj
  %i.al = or i128 %i.af, %i.ak
  %i.am = icmp ne i128 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.ao = add nsw i32 %.sroa.044.0, -1
  %i.ap = and i32 %i.ao, %.sroa.044.0             ; 2 uses
  %i.aq = and i32 %i.ap, 16382
  %.not72 = icmp eq i32 %i.aq, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !770

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ar = icmp eq i8 %i.u, 0
  br i1 %i.ar, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.as = add i64 %.024.i82, -1                   ; 2 uses
  %i.at = add i64 %i.e, %.026.i81
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !771

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr i8, ptr %i.aa, i64 16
  br label %bb.n

.thread69:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi93 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19682
  %i.ax = and i8 %i.aw, 15
  %i.ay = zext nneg i8 %i.ax to i64               ; 2 uses
  %i.az = shl i64 %i.ay, %.pre-phi93              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.az
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ba = shl nuw i64 1, %.pre-phi93
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ba, i64 noundef %i.ay, i64 noundef %i.az)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %1, align 8, !tbaa !19732
  %.pre91 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi93, %.thread69 ], [ %.pre91, %bb.g ]
  %i.bb = phi ptr [ %.pre, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.bc = xor i64 %notmask.i33, -1                ; 2 uses
  %i.bd = and i64 %2, %i.bc
  %i.be = shl nsw i64 %i.bd, 7                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be ; 2 uses
  %i.bg = load <16 x i8>, ptr %i.bf, align 16, !tbaa !19682
  %i.bh = icmp eq <16 x i8> %i.bg, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = and i16 %i.bi, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.bj, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit
  %i.bk = shl i64 %3, 1
  %i.bl = or disjoint i64 %i.bk, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bm = phi i64 [ %i.be, %bb.h ], [ %i.bt, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 15 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !20299 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bp, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = add i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !20299
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.br = add i64 %i.bl, %.030                    ; 2 uses
  %i.bs = and i64 %i.br, %i.bc
  %i.bt = shl nsw i64 %i.bs, 7                    ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bt
  %i.bv = load <16 x i8>, ptr %i.bu, align 16     ; 2 uses
  %i.bw = icmp eq <16 x i8> %i.bv, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = and i16 %i.bx, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.by, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21550

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bt ; 2 uses
  %i.ca = extractelement <16 x i8> %i.bv, i64 14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 14
  %i.cc = add i8 %i.ca, 16
  store i8 %i.cc, ptr %i.cb, align 2, !tbaa !19736
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.bj, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.by, %bb.k ]
  %.1 = phi ptr [ %i.bf, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bz, %bb.k ] ; 3 uses
  %i.cd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64              ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !19682
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit: ; preds = %bb.l
  %i.ci = trunc i64 %3 to i8
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !19682
  %i.cj = shl nuw nsw i64 %i.ce, 3
  %i.ck = getelementptr i8, ptr %.1, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 16     ; 3 uses
  %i.cm = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.cl, i64 %i.ce, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit
  %.sink108 = phi ptr [ %i.au, %bb.f ], [ %i.cl, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit ]
  %.lcssa103.sink = phi i64 [ %i.y, %bb.f ], [ %i.ce, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit ]
  store ptr %.sink108, ptr %0, align 8, !tbaa !20280
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa103.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cn, align 8, !tbaa !21552
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #44
          to label %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit unwind label %bb.b ; 5 uses

_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit: ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !19734
  %i.b = load i64, ptr %6, align 8, !tbaa !19769
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.e, align 8, !tbaa !19720
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.f, align 8, !tbaa !19695
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #40 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE14eraseBlankColdEPS8_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S7_EEEEESD_ImmEEJSA_RSJ_RSK_ESL_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.c, !inline_history !21553

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S7_EEEEESD_ImmEEJSA_RSJ_RSK_ESL_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #42
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S7_EEEEESD_ImmEEJSA_RSJ_RSK_ESL_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.m = and i64 %2, 255                          ; 2 uses
  %i.n = icmp samesign ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = lshr i64 %i.m, 1
  %i.p = ptrtoint ptr %1 to i64
  %i.q = or i64 %i.o, %i.p                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19761
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.f, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %i.q, ptr %i.r, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19695 ; 2 uses
  %i.w = and i64 %i.v, -256
  %i.x = add i64 %i.w, 256
  %i.y = and i64 %i.v, 255
  %i.z = or disjoint i64 %i.x, %i.y
end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE:bb.a
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE8clearTagEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE8clearTagEm.exit: ; preds = %bb.a
  store i8 0, ptr %i.c, align 1, !tbaa !19682
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.f = load i8, ptr %i.e, align 2, !tbaa !19736
  %.not = icmp ult i8 %i.f, 16
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE8clearTagEm.exit
  %i.g = shl i64 %4, 1
  %i.h = or disjoint i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19695
  %i.k = and i64 %i.j, 255
  %notmask.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i, -1                   ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !19732  ; 4 uses
  %i.n = and i64 %3, %i.l
  %i.o = shl nsw i64 %i.n, 7                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.e, %bb.c
  %.010.lcssa = phi i8 [ 0, %bb.c ], [ -16, %bb.e ]
  %i.r = phi i64 [ %i.o, %bb.c ], [ %i.ad, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 14 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !tbaa !19736
  %i.v = add i8 %i.u, %.010.lcssa
  store i8 %i.v, ptr %i.t, align 2, !tbaa !19736
  br label %bb.f

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.w = phi i64 [ %i.ad, %bb.e ], [ %i.o, %bb.c ]
  %.01126 = phi i64 [ %i.ab, %bb.e ], [ %3, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 15 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20299 ; 2 uses
  %.not.i17 = icmp eq i8 %i.z, -2
  br i1 %.not.i17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aa = add i8 %i.z, -1
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !20299
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.ab = add i64 %i.h, %.01126                   ; 2 uses
  %i.ac = and i64 %i.ab, %i.l
  %i.ad = shl nsw i64 %i.ac, 7                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ad
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %.thread, label %.lr.ph

bb.f:                                             ; preds = %.thread, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE8clearTagEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly19grow_capacity_by_fnclISt6vectorImSaImEEEEvRT_NS5_9size_typeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19708
  %i.c = load ptr, ptr %1, align 8, !tbaa !19707
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = sub nsw i64 1152921504606846975, %i.g
  %i.i = icmp ult i64 %i.h, %2
  br i1 %i.i, label %bb.b, label %bb.c, !prof !19683

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.9) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.g, %2                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20272
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = ashr exact i64 %i.n, 3
  %.not = icmp ugt i64 %i.j, %i.o
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.p = ashr exact i64 %i.f, 2
  %i.q = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.p) ; 3 uses
  %i.r = icmp ugt i64 %i.q, 1152921504606846975
  br i1 %i.r, label %bb.e, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.273) #43
  unreachable

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.s = shl nuw nsw i64 %i.q, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #44 ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !19707  ; 4 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !19708
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.u, i64 %i.y, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.f, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.u, null
  br i1 %.not.i8.i, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !20272
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #41
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i, %bb.g
  store ptr %i.t, ptr %1, align 8, !tbaa !19707
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.f
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !19708
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q
  store ptr %i.ae, ptr %i.k, align 8, !tbaa !20272
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZNSt6vectorImSaImEE7reserveEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_mEEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.412") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !19703 ; 3 uses
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i82 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.e ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %i.m = and i64 %.026.i81, %i.k
  %i.n = shl nsw i64 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not71 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.ag, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19769
  %i.ae = icmp eq ptr %i.l, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.af = add nsw i32 %.sroa.044.0, -1
  %i.ag = and i32 %i.af, %.sroa.044.0             ; 2 uses
  %i.ah = and i32 %i.ag, 16382
  %.not72 = icmp eq i32 %i.ah, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !772

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.aj = add i64 %.024.i82, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.026.i81
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !773

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  br label %bb.o

.thread69:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi93 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19682
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi93              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ar = shl nuw i64 1, %.pre-phi93
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %1, align 8, !tbaa !19703
  %.pre91 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi93, %.thread69 ], [ %.pre91, %bb.g ]
  %i.as = phi ptr [ %.pre, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.at = xor i64 %notmask.i33, -1                ; 2 uses
  %i.au = and i64 %2, %i.at
  %i.av = shl nsw i64 %i.au, 8                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !19682
  %i.ay = icmp eq <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.ba, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bd = phi i64 [ %i.av, %bb.h ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20307 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bg, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !20307
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bi = add i64 %i.bc, %.030                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = shl nsw i64 %i.bj, 8                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bp, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21575

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE25incrOutboundOverflowCountEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk ; 2 uses
  %i.br = extractelement <16 x i8> %i.bm, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !19705
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.k ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19682
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !19682
  %i.ca = shl nuw nsw i64 %i.bv, 4
  %i.cb = getelementptr i8, ptr %.1, i64 %i.ca    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 4 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ce = load i64, ptr %6, align 8, !tbaa !20282
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !19769
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !20308
  %i.ch = getelementptr i8, ptr %i.cb, i64 24
  store i64 0, ptr %i.ch, align 8, !tbaa !20293
  %i.ci = ptrtoint ptr %i.cc to i64
  %i.cj = or i64 %i.ci, %i.bv                     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !20278
  %i.cm = icmp ult i64 %i.cl, %i.cj
  br i1 %i.cm, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmm.exit
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE6setTagEmm.exit, %bb.n
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !19695 ; 2 uses
  %i.co = and i64 %i.cn, -256
  %i.cp = add i64 %i.co, 256
  %i.cq = and i64 %i.cn, 255
  %i.cr = or disjoint i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %i.a, align 8, !tbaa !19695
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit
  %.sink109 = phi ptr [ %i.al, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit ]
  %.lcssa104.sink = phi i64 [ %i.z, %bb.f ], [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS6_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_mEEEEESK_ImmEDpOT_.exit ]
  store ptr %.sink109, ptr %0, align 8, !tbaa !20289
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa104.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cs, align 8, !tbaa !21577
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19695
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
end_hunk_9
begin_hunk_10_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmm:bb.a
  %i.fl = load i64, ptr %i.ba, align 8, !tbaa !19695
  %i.fm = and i64 %i.fl, 255
  %i.fn = shl nuw i64 1, %i.fm
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.x
  %.0.in = phi i64 [ %i.fn, %._crit_edge ], [ %.0, %bb.x ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0113158, i64 %.0
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !19682 ; 3 uses
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.x, label %bb.y, !llvm.loop !21586

bb.y:                                             ; preds = %bb.x
  %i.fr = load ptr, ptr %0, align 8, !tbaa !19703
  %i.fs = shl nsw i64 %.0, 8
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 %i.fs ; 2 uses
  %i.fu = zext nneg i8 %i.fp to i64
  %i.fv = add nsw i64 %i.fu, -1                   ; 2 uses
  %i.fw = shl nuw nsw i64 %i.fv, 4
  %i.fx = getelementptr i8, ptr %i.ft, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 16     ; 2 uses
  %i.fz = icmp ne ptr %i.ft, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fz)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fy) ]
  %i.ga = icmp ult i8 %i.fp, 17
  call void @llvm.assume(i1 %i.ga)
  %i.gb = ptrtoint ptr %i.fy to i64
  %i.gc = or i64 %i.fv, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !19676
  br i1 %.not, label %bb.z, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %.0113158, i64 noundef %4) #41
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.aa

bb.aa:                                            ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !20155
  %i.ge = load i64, ptr %i.d, align 8, !tbaa !19676
  %.not.i.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gf = load ptr, ptr %i.c, align 8, !tbaa !20310 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gg = load i64, ptr %i.e, align 8, !tbaa !19676
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gg) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !20291, !range !20060, !noundef !1339
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21591, !nonnull !1339
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20155, !range !20060, !noundef !1339
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !19685

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21592, !nonnull !1339, !align !19737
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19676
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21593, !nonnull !1339, !align !19737
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20310
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21594, !nonnull !1339, !align !19737
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19676
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21595 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21596, !nonnull !1339, !align !19737
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19794
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21597, !nonnull !1339, !align !19737
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19676
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21593, !nonnull !1339, !align !19737
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20310
  store ptr %i.z, ptr %i.q, align 8, !tbaa !19703
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21598, !nonnull !1339, !align !19737
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19676 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !19695
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !19695
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE19tryEmplaceValueImplImJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.436") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !19691 ; 3 uses
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = load i64, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i82 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.e ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %i.m = and i64 %.026.i81, %i.k
  %i.n = shl nsw i64 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not71 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.ag, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19676
  %i.ae = icmp eq i64 %i.l, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.af = add nsw i32 %.sroa.044.0, -1
  %i.ag = and i32 %i.af, %.sroa.044.0             ; 2 uses
  %i.ah = and i32 %i.ag, 16382
  %.not72 = icmp eq i32 %i.ah, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !721

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.aj = add i64 %.024.i82, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.026.i81
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !722

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  br label %bb.o

.thread69:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi93 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19682
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi93              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ar = shl nuw i64 1, %.pre-phi93
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %1, align 8, !tbaa !19691
  %.pre91 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi93, %.thread69 ], [ %.pre91, %bb.g ]
  %i.as = phi ptr [ %.pre, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.at = xor i64 %notmask.i33, -1                ; 2 uses
  %i.au = and i64 %2, %i.at
  %i.av = shl nsw i64 %i.au, 8                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !19682
  %i.ay = icmp eq <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.ba, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bd = phi i64 [ %i.av, %bb.h ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20313 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bg, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !20313
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bi = add i64 %i.bc, %.030                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = shl nsw i64 %i.bj, 8                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bp, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21599

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE25incrOutboundOverflowCountEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk ; 2 uses
  %i.br = extractelement <16 x i8> %i.bm, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !19698
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.k ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19682
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !19682
  %i.ca = shl nuw nsw i64 %i.bv, 4
  %i.cb = getelementptr i8, ptr %.1, i64 %i.ca    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 4 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ce = load i64, ptr %6, align 8, !tbaa !19766
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !19676
  store i64 %i.cg, ptr %i.cc, align 8, !tbaa !20315
  %i.ch = getelementptr i8, ptr %i.cb, i64 24
  store ptr null, ptr %i.ch, align 8, !tbaa !20316
  %i.ci = ptrtoint ptr %i.cc to i64
  %i.cj = or i64 %i.ci, %i.bv                     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !19767
  %i.cm = icmp ult i64 %i.cl, %i.cj
  br i1 %i.cm, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmm.exit
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE6setTagEmm.exit, %bb.n
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !19695 ; 2 uses
  %i.co = and i64 %i.cn, -256
  %i.cp = add i64 %i.co, 256
  %i.cq = and i64 %i.cn, 255
  %i.cr = or disjoint i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %i.a, align 8, !tbaa !19695
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit
  %.sink109 = phi ptr [ %i.al, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit ]
  %.lcssa104.sink = phi i64 [ %i.z, %bb.f ], [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISE_S6_EEEEESK_ImmEDpOT_.exit ]
  store ptr %.sink109, ptr %0, align 8, !tbaa !20298
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa104.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cs, align 8, !tbaa !21602
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19695
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
end_hunk_10
begin_hunk_11_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.c, 256
  br i1 %i.k, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -16
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.d, %bb.c
  br label %.critedge.i.i.i

bb.d:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %i.p, %bb.d ], [ %2, %bb.c ]
  %i.o = phi ptr [ %i.q, %bb.d ], [ %1, %bb.c ]
  %i.p = add i64 %i.n, -1                         ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19682
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEEEE17precheckedAdvanceEv.exit.i, !prof !19683, !llvm.loop !775

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.t, %.critedge.i.i.i ], [ %i.m, %.critedge.i.i.i.preheader ]
  %i.t = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -256 ; 4 uses
  %i.u = load <16 x i8>, ptr %i.t, align 16, !tbaa !19682
  %i.v = icmp eq <16 x i8> %i.u, zeroinitializer
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = and i16 %i.w, 16383                      ; 2 uses
  %.not2.i.i = icmp eq i16 %i.x, 16383
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.e, !prof !19683, !llvm.loop !776

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.y = xor i16 %i.x, 16383
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.z, i1 true)
  %i.ab = xor i32 %i.aa, 31
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = shl nuw nsw i64 %i.ac, 4
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.ag, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ], [ %i.p, %thread-pre-split.i.i ]
  %i.ah = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.ai = icmp samesign ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = ptrtoint ptr %.sroa.01.0.i to i64
  %i.ak = or i64 %i.ah, %i.aj
  store i64 %i.ak, ptr %i.h, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEEEE17precheckedAdvanceEv.exit.i
  %i.al = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -16
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %.neg.i.i.i ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19682
  %.not.i.i7 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i7, label %bb.f, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE8clearTagEm.exit.i

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit
  store i8 0, ptr %i.an, align 1, !tbaa !19682
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !19705
  %.not.i = icmp ult i8 %i.aq, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE8clearTagEm.exit.i
  %i.ar = shl i64 %4, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = load i64, ptr %i.a, align 8, !tbaa !19695
  %i.au = and i64 %i.at, 255
  %notmask.i.i = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !19703 ; 4 uses
  %i.ax = and i64 %3, %i.av
  %i.ay = shl nsw i64 %i.ax, 8                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.ba = icmp eq ptr %i.az, %i.am
  br i1 %i.ba, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i, %bb.g
  %.010.lcssa.i = phi i8 [ 0, %bb.g ], [ -16, %bb.i ]
  %i.bb = phi i64 [ %i.ay, %bb.g ], [ %i.bn, %bb.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 14 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !19705
  %i.bf = add i8 %i.be, %.010.lcssa.i
  store i8 %i.bf, ptr %i.bd, align 2, !tbaa !19705
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %i.bg = phi i64 [ %i.bn, %bb.i ], [ %i.ay, %bb.g ]
  %.01126.i = phi i64 [ %i.bl, %bb.i ], [ %3, %bb.g ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 15 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !20307 ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bj, -2
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bk = add i8 %i.bj, -1
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !20307
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bl = add i64 %i.as, %.01126.i                ; 2 uses
  %i.bm = and i64 %i.bl, %i.av
  %i.bn = shl nsw i64 %i.bm, 8                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bn
  %i.bp = icmp eq ptr %i.bo, %i.am
  br i1 %i.bp, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNS_18RegexMatchCacheKeyEmEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.452") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread69_crit_edge, label %bb.b

..thread69_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19714
  %.pre92 = shl nuw i64 1, %i.b
  br label %.thread69

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19714 ; 3 uses
  %i.n = load ptr, ptr %1, align 8
  %i.o = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.023.i82 = phi i64 [ %i.j, %bb.b ], [ %i.ao, %bb.e ]
  %.025.i81 = phi i64 [ %2, %bb.b ], [ %i.ap, %bb.e ] ; 2 uses
  %i.p = and i64 %.025.i81, %i.k
  %i.q = shl nsw i64 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q ; 3 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, %i.h
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 4095
  %.not71 = icmp eq i32 %i.w, 0
  %i.x = extractelement <16 x i8> %i.s, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.y = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.y)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.al, %.critedge.i ], [ %i.v, %.preheader ] ; 4 uses
  %i.z = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19786
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19769
  %i.aj = icmp eq ptr %i.o, %i.ai
  br i1 %i.aj, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.ak = add nsw i32 %.sroa.044.0, -1
  %i.al = and i32 %i.ak, %.sroa.044.0             ; 2 uses
  %i.am = and i32 %i.al, 4094
  %.not72 = icmp eq i32 %i.am, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !766

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.an = icmp eq i8 %i.x, 0
  br i1 %i.an, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.ao = add i64 %.023.i82, -1                   ; 2 uses
  %i.ap = add i64 %i.e, %.025.i81
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !767

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %i.ad, i64 16
  br label %bb.n

.thread69:                                        ; preds = %bb.e, %.loopexit, %..thread69_crit_edge
  %.pre-phi93 = phi i64 [ %.pre92, %..thread69_crit_edge ], [ %i.j, %.loopexit ], [ %i.j, %bb.e ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread69_crit_edge ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ]
  %i.ar = phi ptr [ %.pre, %..thread69_crit_edge ], [ %i.m, %.loopexit ], [ %i.m, %bb.e ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.0.copyload.i.i = load i16, ptr %i.as, align 1
  %i.at = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.au = add i64 %.pre-phi93, -1
  %i.av = lshr i64 %i.au, 12
  %i.aw = add nuw nsw i64 %i.av, 1
  %i.ax = mul i64 %i.aw, %i.at                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ax
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi93, i64 noundef %i.at, i64 noundef %i.ax)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %i.ay, align 8, !tbaa !19714
  %.pre94 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi95 = phi i64 [ %.pre-phi, %.thread69 ], [ %.pre94, %bb.g ]
  %i.az = phi ptr [ %i.ar, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi95
  %i.ba = xor i64 %notmask.i33, -1                ; 2 uses
  %i.bb = and i64 %2, %i.ba
  %i.bc = shl nsw i64 %i.bb, 6                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16, !tbaa !19682
  %i.bf = icmp eq <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 4095                     ; 2 uses
  %.not73 = icmp eq i16 %i.bh, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bi = shl i64 %3, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bk = phi i64 [ %i.bc, %bb.h ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 15 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20321 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bn, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = add i8 %i.bn, 1
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !20321
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bp = add i64 %i.bj, %.030                    ; 2 uses
  %i.bq = and i64 %i.bp, %i.ba
  %i.br = shl nsw i64 %i.bq, 6                    ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br
  %i.bt = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bu = icmp eq <16 x i8> %i.bt, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = and i16 %i.bv, 4095                     ; 2 uses
  %.not74 = icmp eq i16 %i.bw, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21633

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br ; 2 uses
  %i.by = extractelement <16 x i8> %i.bt, i64 14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 14
  %i.ca = add i8 %i.by, 16
  store i8 %i.ca, ptr %i.bz, align 2, !tbaa !20322
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.bh, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bw, %bb.k ]
  %.1 = phi ptr [ %i.bd, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bx, %bb.k ] ; 3 uses
  %i.cb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64              ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !19682
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.cg = trunc i64 %3 to i8
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !19682
  %i.ch = shl nuw nsw i64 %i.cc, 2
  %i.ci = getelementptr i8, ptr %.1, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 16     ; 3 uses
  %i.ck = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ck)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !19695
  %i.cm = lshr i64 %i.cl, 8                       ; 2 uses
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !19786
  %i.co = load ptr, ptr %1, align 8, !tbaa !19715, !nonnull !1339, !noundef !1339
  %i.cp = and i64 %i.cm, 4294967295
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cp ; 4 uses
  %i.cr = load i64, ptr %6, align 8, !tbaa !20282
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !19769
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !20328
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 0, ptr %i.cu, align 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cv, align 8, !tbaa !19720
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i64 0, ptr %i.cw, align 8, !tbaa !19695
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !19695 ; 2 uses
  %i.cy = and i64 %i.cx, -256
  %i.cz = add i64 %i.cy, 256
  %i.da = and i64 %i.cx, 255
  %i.db = or disjoint i64 %i.cz, %i.da
  store i64 %i.db, ptr %i.a, align 8, !tbaa !19695
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink110 = phi ptr [ %i.aq, %bb.f ], [ %i.cj, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa105.sink = phi i64 [ %i.ab, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink110, ptr %0, align 8, !tbaa !19861
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa105.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.dc, align 8, !tbaa !20330
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable
end_hunk_11
begin_hunk_12_@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv:bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !21647
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !20155, !range !20060
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21648
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !19676
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21654, !nonnull !1339, !align !19737
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !19676
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21655, !nonnull !1339, !align !19737
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19676
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21656, !nonnull !1339, !align !19737
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20332
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS5_S7_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS5_S7_EbmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = shl i64 %i.as, 5
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #40
  br label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS5_S7_EbmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE11afterRehashEPSt4pairIKS5_S7_EbmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #42
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS5_S7_Em(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !19715  ; 2 uses
  %xtraiter = and i64 %2, 1
  %i.b = icmp eq i64 %2, 1
  br i1 %i.b, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %2, -2
  br label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i

_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i: ; preds = %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i, %.new
  %.01418.i = phi ptr [ %i.a, %.new ], [ %i.u, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i ] ; 9 uses
  %.01517.i = phi ptr [ %1, %.new ], [ %i.v, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i ] ; 8 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.01418.i, i64 8
  %i.d = load <2 x ptr>, ptr %.01418.i, align 8, !tbaa !19800
  store <2 x ptr> %i.d, ptr %.01517.i, align 8, !tbaa !19800
  store ptr null, ptr %i.c, align 8, !tbaa !20277
  %i.e = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.e, align 8, !tbaa !19720
  %i.f = getelementptr inbounds nuw i8, ptr %.01517.i, i64 24 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !19695
  %i.g = getelementptr inbounds nuw i8, ptr %.01418.i, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20331
  store ptr %i.h, ptr %i.e, align 8, !tbaa !20331
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.g, align 8, !tbaa !20331
  %i.i = getelementptr inbounds nuw i8, ptr %.01418.i, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19676
  store i64 %i.j, ptr %i.f, align 8, !tbaa !19676
  store i64 0, ptr %i.i, align 8, !tbaa !19676
  %i.k = getelementptr inbounds nuw i8, ptr %.01418.i, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.01517.i, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %.01418.i, i64 40
  %i.n = load <2 x ptr>, ptr %i.k, align 8, !tbaa !19800
  store <2 x ptr> %i.n, ptr %i.l, align 8, !tbaa !19800
  store ptr null, ptr %i.m, align 8, !tbaa !20277
  %i.o = getelementptr inbounds nuw i8, ptr %.01517.i, i64 48 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.o, align 8, !tbaa !19720
  %i.p = getelementptr inbounds nuw i8, ptr %.01517.i, i64 56 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !19695
  %i.q = getelementptr inbounds nuw i8, ptr %.01418.i, i64 48 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20331
  store ptr %i.r, ptr %i.o, align 8, !tbaa !20331
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.q, align 8, !tbaa !20331
  %i.s = getelementptr inbounds nuw i8, ptr %.01418.i, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19676
  store i64 %i.t, ptr %i.p, align 8, !tbaa !19676
  store i64 0, ptr %i.s, align 8, !tbaa !19676
  %i.u = getelementptr inbounds nuw i8, ptr %.01418.i, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01517.i, i64 64 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit.loopexit.unr-lcssa, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i, !llvm.loop !777

_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit.loopexit.unr-lcssa: ; preds = %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.epil.preheader

_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.epil.preheader: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit.loopexit.unr-lcssa, %bb.b
  %.01418.i.epil.init = phi ptr [ %i.a, %bb.b ], [ %i.u, %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit.loopexit.unr-lcssa ] ; 4 uses
  %.01517.i.epil.init = phi ptr [ %1, %bb.b ], [ %i.v, %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod5 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.epil.init) ]
  %i.w = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 8
  %i.x = load <2 x ptr>, ptr %.01418.i.epil.init, align 8, !tbaa !19800
  store <2 x ptr> %i.x, ptr %.01517.i.epil.init, align 8, !tbaa !19800
  store ptr null, ptr %i.w, align 8, !tbaa !20277
  %i.y = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 16 ; 2 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.y, align 8, !tbaa !19720
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.epil.init, i64 24 ; 2 uses
  store i64 0, ptr %i.z, align 8, !tbaa !19695
  %i.aa = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20331
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !20331
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.aa, align 8, !tbaa !20331
  %i.ac = getelementptr inbounds nuw i8, ptr %.01418.i.epil.init, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19676
  store i64 %i.ad, ptr %i.z, align 8, !tbaa !19676
  store i64 0, ptr %i.ac, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit

_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit: ; preds = %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit.i.epil.preheader, %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit.loopexit.unr-lcssa, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !19715
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.469") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !19725 ; 3 uses
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i82 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.e ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %i.m = and i64 %.026.i81, %i.k
  %i.n = shl nsw i64 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not71 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.ag, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19763
  %i.ae = icmp eq ptr %i.l, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.af = add nsw i32 %.sroa.044.0, -1
  %i.ag = and i32 %i.af, %.sroa.044.0             ; 2 uses
  %i.ah = and i32 %i.ag, 16382
  %.not72 = icmp eq i32 %i.ah, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !764

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.aj = add i64 %.024.i82, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.026.i81
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !765

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  br label %bb.o

.thread69:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi93 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19682
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi93              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ar = shl nuw i64 1, %.pre-phi93
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %1, align 8, !tbaa !19725
  %.pre91 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi93, %.thread69 ], [ %.pre91, %bb.g ]
  %i.as = phi ptr [ %.pre, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.at = xor i64 %notmask.i33, -1                ; 2 uses
  %i.au = and i64 %2, %i.at
  %i.av = shl nsw i64 %i.au, 8                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !19682
  %i.ay = icmp eq <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.ba, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bd = phi i64 [ %i.av, %bb.h ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20337 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bg, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !20337
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bi = add i64 %i.bc, %.030                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = shl nsw i64 %i.bj, 8                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bp, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21657

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE25incrOutboundOverflowCountEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk ; 2 uses
  %i.br = extractelement <16 x i8> %i.bm, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !19727
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.k ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19682
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !19682
  %i.ca = shl nuw nsw i64 %i.bv, 4
  %i.cb = getelementptr i8, ptr %.1, i64 %i.ca    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 4 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ce = load i64, ptr %6, align 8, !tbaa !20285
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !19763
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !20340
  %i.ch = getelementptr i8, ptr %i.cb, i64 24
  store i64 0, ptr %i.ch, align 8, !tbaa !19681
  %i.ci = ptrtoint ptr %i.cc to i64
  %i.cj = or i64 %i.ci, %i.bv                     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !19765
  %i.cm = icmp ult i64 %i.cl, %i.cj
  br i1 %i.cm, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE6setTagEmm.exit, %bb.n
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !19695 ; 2 uses
  %i.co = and i64 %i.cn, -256
  %i.cp = add i64 %i.co, 256
  %i.cq = and i64 %i.cn, 255
  %i.cr = or disjoint i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %i.a, align 8, !tbaa !19695
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit
  %.sink109 = phi ptr [ %i.al, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ]
  %.lcssa104.sink = phi i64 [ %i.z, %bb.f ], [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ]
  store ptr %.sink109, ptr %0, align 8, !tbaa !20287
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa104.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cs, align 8, !tbaa !21660
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19695
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
end_hunk_12
begin_hunk_13_@_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev:bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21676, !nonnull !1339, !align !19737
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20341
  store ptr %i.z, ptr %i.q, align 8, !tbaa !19725
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21681, !nonnull !1339, !align !19737
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19676 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !19695
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !19695
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZN5folly28RegexMatchCacheDynamicBitset8reserve_Em(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not.i.i20 = icmp eq i64 %1, -1
  br i1 %.not.i.i20, label %_ZN5folly16strictNextPowTwoImEET_S1_.exit.thread, label %_ZN5folly16strictNextPowTwoImEET_S1_.exit

_ZN5folly16strictNextPowTwoImEET_S1_.exit:        ; preds = %bb.a
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 false)
  %i.b = sub nuw nsw i64 64, %i.a
  %i.c = shl nuw i64 1, %i.b
  %i.d = icmp ult i64 %1, 64
  br i1 %i.d, label %_ZN5folly16strictNextPowTwoImEET_S1_.exit.thread, label %bb.b

_ZN5folly16strictNextPowTwoImEET_S1_.exit.thread: ; preds = %bb.a, %_ZN5folly16strictNextPowTwoImEET_S1_.exit
  br label %bb.b

bb.b:                                             ; preds = %_ZN5folly16strictNextPowTwoImEET_S1_.exit, %_ZN5folly16strictNextPowTwoImEET_S1_.exit.thread
  %.sroa.3.0 = phi i64 [ 128, %_ZN5folly16strictNextPowTwoImEET_S1_.exit.thread ], [ %i.c, %_ZN5folly16strictNextPowTwoImEET_S1_.exit ] ; 5 uses
  %i.e = lshr i64 %.sroa.3.0, 3
  %i.f = and i64 %i.e, 2305843009213693944
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #44 ; 5 uses
  %i.h = load i64, ptr %0, align 8, !tbaa !19676  ; 3 uses
  %i.i = icmp slt i64 %i.h, 0                     ; 2 uses
  br i1 %i.i, label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit, label %.thread

_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit: ; preds = %bb.b
  %i.j = shl i64 %i.h, 1
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !tbaa !19766 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !19676 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.3.0.copyload.i, 0
  br i1 %.not.i, label %_ZN5folly10nextPowTwoImEET_S1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit
  %i.l = add i64 %.sroa.3.0.copyload.i, -1        ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_ZN5folly11findLastSetImEEjT_.exit.i, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.m = phi i64 [ %i.l, %bb.c ], [ 63, %bb.b ]
  %.sroa.0.0.i3136 = phi ptr [ %.sroa.0.0.copyload.i, %bb.c ], [ %0, %bb.b ]
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = sub nuw nsw i64 64, %i.n
  br label %_ZN5folly11findLastSetImEEjT_.exit.i

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %.thread, %bb.c
  %.sroa.0.0.i3137 = phi ptr [ %.sroa.0.0.i3136, %.thread ], [ %.sroa.0.0.copyload.i, %bb.c ]
  %i.p = phi i64 [ %i.o, %.thread ], [ 0, %bb.c ]
  %i.q = shl nuw i64 1, %i.p
  br label %_ZN5folly10nextPowTwoImEET_S1_.exit

_ZN5folly10nextPowTwoImEET_S1_.exit:              ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit, %_ZN5folly11findLastSetImEEjT_.exit.i
  %.sroa.0.0.i32 = phi ptr [ %.sroa.0.0.i3137, %_ZN5folly11findLastSetImEEjT_.exit.i ], [ %.sroa.0.0.copyload.i, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit ]
  %i.r = phi i64 [ %i.q, %_ZN5folly11findLastSetImEEjT_.exit.i ], [ 1, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit ] ; 3 uses
  %i.s = lshr i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 8 %.sroa.0.0.i32, i64 %i.s, i1 false)
  %i.t = lshr i64 %i.r, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.t
  %i.v = sub i64 %.sroa.3.0, %i.r
  %i.w = lshr i64 %i.v, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.u, i8 0, i64 %i.w, i1 false)
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5folly10nextPowTwoImEET_S1_.exit
  %i.x = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44 ; 3 uses
  store ptr %i.g, ptr %i.x, align 8, !tbaa !19679
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.sroa.3.0, ptr %i.y, align 8, !tbaa !21682
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = lshr i64 %i.z, 1
  %i.ab = or disjoint i64 %i.aa, -9223372036854775808
  store i64 %i.ab, ptr %0, align 8, !tbaa !19681
  br label %bb.h

bb.e:                                             ; preds = %_ZN5folly10nextPowTwoImEET_S1_.exit
  %i.ac = shl i64 %i.h, 1
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19679 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.ae) #41
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.g, ptr %i.ad, align 8, !tbaa !19766
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19676
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.g, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE19tryEmplaceValueImplISB_JRKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.452") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread67_crit_edge, label %bb.b

..thread67_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19720
  %.pre90 = shl nuw i64 1, %i.b
  br label %.thread67

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19720 ; 3 uses
  %i.n = load ptr, ptr %1, align 8
  %i.o = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.023.i80 = phi i64 [ %i.j, %bb.b ], [ %i.ao, %bb.e ]
  %.025.i79 = phi i64 [ %2, %bb.b ], [ %i.ap, %bb.e ] ; 2 uses
  %i.p = and i64 %.025.i79, %i.k
  %i.q = shl nsw i64 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q ; 3 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, %i.h
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 4095
  %.not69 = icmp eq i32 %i.w, 0
  %i.x = extractelement <16 x i8> %i.s, i64 15
  br i1 %.not69, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.y = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.y)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.042.0 = phi i32 [ %i.al, %.critedge.i ], [ %i.v, %.preheader ] ; 4 uses
  %i.z = icmp ne i32 %.sroa.042.0, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19786
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19763
  %i.aj = icmp eq ptr %i.o, %i.ai
  br i1 %i.aj, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.ak = add nsw i32 %.sroa.042.0, -1
  %i.al = and i32 %i.ak, %.sroa.042.0             ; 2 uses
  %i.am = and i32 %i.al, 4094
  %.not70 = icmp eq i32 %i.am, 0
  br i1 %.not70, label %.loopexit, label %bb.d, !llvm.loop !762

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.an = icmp eq i8 %i.x, 0
  br i1 %i.an, label %.thread67, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.ao = add i64 %.023.i80, -1                   ; 2 uses
  %i.ap = add i64 %i.e, %.025.i79
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.thread67, label %bb.c, !llvm.loop !763

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %i.ad, i64 16
  br label %bb.n

.thread67:                                        ; preds = %bb.e, %.loopexit, %..thread67_crit_edge
  %.pre-phi91 = phi i64 [ %.pre90, %..thread67_crit_edge ], [ %i.j, %.loopexit ], [ %i.j, %bb.e ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread67_crit_edge ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ]
  %i.ar = phi ptr [ %.pre, %..thread67_crit_edge ], [ %i.m, %.loopexit ], [ %i.m, %bb.e ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.0.copyload.i.i = load i16, ptr %i.as, align 1
  %i.at = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.au = add i64 %.pre-phi91, -1
  %i.av = lshr i64 %i.au, 12
  %i.aw = add nuw nsw i64 %i.av, 1
  %i.ax = mul i64 %i.aw, %i.at                    ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.ax
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi91, i64 noundef %i.at, i64 noundef %i.ax)
  %.pre87 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre88 = load ptr, ptr %i.ay, align 8, !tbaa !19720
  %.pre92 = and i64 %.pre87, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi93 = phi i64 [ %.pre-phi, %.thread67 ], [ %.pre92, %bb.g ]
  %i.az = phi ptr [ %i.ar, %.thread67 ], [ %.pre88, %bb.g ] ; 4 uses
  %notmask.i31 = shl nsw i64 -1, %.pre-phi93
  %i.ba = xor i64 %notmask.i31, -1                ; 2 uses
  %i.bb = and i64 %2, %i.ba
  %i.bc = shl nsw i64 %i.bb, 6                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16, !tbaa !19682
  %i.bf = icmp eq <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 4095                     ; 2 uses
  %.not71 = icmp eq i16 %i.bh, 0
  br i1 %.not71, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit
  %i.bi = shl i64 %3, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bk = phi i64 [ %i.bc, %bb.h ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.h ], [ %i.bp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 15 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20321 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bn, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = add i8 %i.bn, 1
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !20321
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bp = add i64 %i.bj, %.028                    ; 2 uses
  %i.bq = and i64 %i.bp, %i.ba
  %i.br = shl nsw i64 %i.bq, 6                    ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br
  %i.bt = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bu = icmp eq <16 x i8> %i.bt, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = and i16 %i.bv, 4095                     ; 2 uses
  %.not72 = icmp eq i16 %i.bw, 0
  br i1 %.not72, label %bb.i, label %bb.k, !llvm.loop !21683

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br ; 2 uses
  %i.by = extractelement <16 x i8> %i.bt, i64 14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 14
  %i.ca = add i8 %i.by, 16
  store i8 %i.ca, ptr %i.bz, align 2, !tbaa !20322
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit
  %.sroa.036.0.in = phi i16 [ %i.bh, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit ], [ %i.bw, %bb.k ]
  %.1 = phi ptr [ %i.bd, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16reserveForInsertEm.exit ], [ %i.bx, %bb.k ] ; 3 uses
  %i.cb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64              ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !19682
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.cg = trunc i64 %3 to i8
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !19682
  %i.ch = shl nuw nsw i64 %i.cc, 2
  %i.ci = getelementptr i8, ptr %.1, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 16     ; 3 uses
  %i.ck = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ck)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.cm = lshr i64 %i.cl, 8                       ; 2 uses
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !19786
  %i.co = load ptr, ptr %1, align 8, !tbaa !20277, !nonnull !1339, !noundef !1339
  %i.cp = and i64 %i.cm, 4294967295
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load ptr, ptr %5, align 8, !tbaa !19763
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !19763
  %i.cs = and i64 %i.cl, -256
  %i.ct = add i64 %i.cs, 256
  %i.cu = and i64 %i.cl, 255
  %i.cv = or disjoint i64 %i.ct, %i.cu
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !19695
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink108 = phi ptr [ %i.aq, %bb.f ], [ %i.cj, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa103.sink = phi i64 [ %i.ab, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink108, ptr %0, align 8, !tbaa !19861
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa103.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !19676
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cw, align 8, !tbaa !20330
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !19695
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
end_hunk_13
begin_hunk_14_@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmmENKUlvE_clEv:bb.a
bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21699, !nonnull !1339, !align !19737
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20331
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21700, !nonnull !1339, !align !19737
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19676
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21701, !nonnull !1339, !align !19737
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19794 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21702, !nonnull !1339, !align !19737
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19676 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21699, !nonnull !1339, !align !19737
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20331
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !19720
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21703, !nonnull !1339, !align !19737
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19676 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !19695
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !19695
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #40
  %.pre = load ptr, ptr %0, align 8, !tbaa !21697
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !20155, !range !20060
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21698
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !19676
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21704, !nonnull !1339, !align !19737
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !19676
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21705, !nonnull !1339, !align !19737
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19676
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21706, !nonnull !1339, !align !19737
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20285
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE17afterFailedRehashEPSA_m(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE11afterRehashEPSA_bmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = shl i64 %i.as, 3
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #40
  br label %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE11afterRehashEPSA_bmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE11afterRehashEPSA_bmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #42
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE17afterFailedRehashEPSA_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #33 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !20277
  %i.b = shl i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.a, i64 %i.b, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !20277
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15RegexMatchCache10eraseRegexERKNS_18RegexMatchCacheKeyE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %2 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19695 ; 3 uses
  %i.e = icmp ult i64 %i.d, 512
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i64 %i.d, 256
  br i1 %i.f, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19761 ; 3 uses
  %i.i = and i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = shl i64 %i.h, 1
  %i.l = and i64 %i.k, 14
  %i.m = lshr i64 %i.h, 3
  %i.n = and i64 %i.m, 1
  %i.o = or disjoint i64 %i.l, %i.n
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !19734 ; 2 uses
  %i.q = load i128, ptr %1, align 8
  %i.r = load i128, ptr %i.p, align 8
  %i.s = xor i128 %i.q, %i.r
  %i.t = getelementptr i8, ptr %1, i64 16
  %i.u = getelementptr i8, ptr %i.p, i64 16
  %i.v = load i128, ptr %i.t, align 8
  %i.w = load i128, ptr %i.u, align 8
  %i.x = xor i128 %i.v, %i.w
  %i.y = or i128 %i.s, %i.x
  %i.z = icmp ne i128 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread387, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.ab = load i64, ptr %1, align 8, !tbaa !19676 ; 2 uses
  %i.ac = lshr i64 %i.ab, 56
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1) ; 2 uses
  %i.ad = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ag = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ai = and i64 %i.d, 255                       ; 2 uses
  %i.aj = shl nuw i64 1, %i.ai
  %notmask.i = shl nsw i64 -1, %i.ai
  %i.ak = xor i64 %notmask.i, -1
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !19732
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %.024.i.i538 = phi i64 [ %i.aj, %bb.d ], [ %i.bt, %bb.g ]
  %.026.i.i537 = phi i64 [ %i.ab, %bb.d ], [ %i.bu, %bb.g ] ; 2 uses
  %i.am = and i64 %.026.i.i537, %i.ak
  %i.an = shl nsw i64 %i.am, 7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.ap, i32 0, i32 3, i32 1)
  %i.aq = load <16 x i8>, ptr %i.ao, align 16     ; 2 uses
  %i.ar = icmp eq <16 x i8> %i.aq, %i.ah
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = and i32 %i.at, 16383
  %.not = icmp eq i32 %i.au, 0
  %i.av = extractelement <16 x i8> %i.aq, i64 15
  br i1 %.not, label %.loopexit514, label %.preheader513

.preheader513:                                    ; preds = %bb.e
  %i.aw = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aw)
  br label %bb.f

bb.f:                                             ; preds = %.preheader513, %.critedge.i.i
  %.sroa.0291.0 = phi i32 [ %i.bq, %.critedge.i.i ], [ %i.at, %.preheader513 ] ; 4 uses
  %i.ax = icmp ne i32 %.sroa.0291.0, 0
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0291.0, i1 true)
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = getelementptr i8, ptr %i.ao, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !19734 ; 2 uses
  %i.be = load i128, ptr %1, align 8
  %i.bf = load i128, ptr %i.bd, align 8
  %i.bg = xor i128 %i.be, %i.bf
  %i.bh = getelementptr i8, ptr %1, i64 16
  %i.bi = getelementptr i8, ptr %i.bd, i64 16
  %i.bj = load i128, ptr %i.bh, align 8
  %i.bk = load i128, ptr %i.bi, align 8
  %i.bl = xor i128 %i.bj, %i.bk
  %i.bm = or i128 %i.bg, %i.bl
  %i.bn = icmp ne i128 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %.not9.i.i.i.i.i.i.i.i170 = icmp eq i32 %i.bo, 0
  br i1 %.not9.i.i.i.i.i.i.i.i170, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread387.loopexit, label %.critedge.i.i, !prof !19685

.critedge.i.i:                                    ; preds = %bb.f
  %i.bp = add nsw i32 %.sroa.0291.0, -1
  %i.bq = and i32 %i.bp, %.sroa.0291.0            ; 2 uses
  %i.br = and i32 %i.bq, 16382
  %.not490 = icmp eq i32 %i.br, 0
  br i1 %.not490, label %.loopexit514, label %bb.f, !llvm.loop !770

.loopexit514:                                     ; preds = %.critedge.i.i, %bb.e
  %i.bs = icmp eq i8 %i.av, 0
  br i1 %i.bs, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread, label %bb.g, !prof !19685

bb.g:                                             ; preds = %.loopexit514
  %i.bt = add i64 %.024.i.i538, -1                ; 2 uses
  %i.bu = add i64 %i.ae, %.026.i.i537
  %.not.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread, label %bb.e, !llvm.loop !771

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread387.loopexit: ; preds = %bb.f
  %i.bv = getelementptr i8, ptr %i.bb, i64 16
  br label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread387

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread387: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread387.loopexit, %bb.c
  %.sroa.7290.1393 = phi i64 [ %i.o, %bb.c ], [ %i.az, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread387.loopexit ] ; 4 uses
  %.sroa.0289.1392 = phi ptr [ %i.j, %bb.c ], [ %i.bv, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread387.loopexit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.bw = load ptr, ptr %.sroa.0289.1392, align 8, !tbaa !19734
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !19769
  %i.bx = invoke noundef i64 @_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14index_of_valueERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.j       ; 8 uses

bb.h:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread387
  %i.by = load ptr, ptr %.sroa.0289.1392, align 8, !tbaa !19734 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !19695
  %i.cc = lshr i64 %i.cb, 8                       ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.cc, 0
  %i.cd = load ptr, ptr %i.bz, align 8            ; 2 uses
  br i1 %.not.i.i.i.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ci = icmp eq i64 %i.bx, 63
  %i.cj = lshr i64 %i.bx, 6
  %i.ck = and i64 %i.bx, 63
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = xor i64 %i.cl, -1
  br label %.backedge512

._crit_edge:                                      ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit, %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !19695 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 256
  br i1 %i.cq, label %.noexc145, label %.noexc63

.noexc63:                                         ; preds = %._crit_edge
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !19769 ; 2 uses
  %i.cs = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.ct = zext i64 %i.cs to i128
  %i.cu = mul nuw i128 %i.ct, 14181476777654086739
  %i.cv = lshr i128 %i.cu, 64
  %i.cw = trunc nuw i128 %i.cv to i64
  %i.cx = mul i64 %i.cs, -4265267296055464877
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = mul i64 %i.cy, -4265267296055464877     ; 2 uses
  %i.da = lshr i64 %i.cz, 14
  %i.db = and i64 %i.da, 255
  %i.dc = lshr i64 %i.cz, 22
  %.sroa.speculated.i.i.i171 = call i64 @llvm.umax.i64(i64 %i.db, i64 1) ; 2 uses
  %i.dd = shl nuw nsw i64 %.sroa.speculated.i.i.i171, 1
  %i.de = or disjoint i64 %i.dd, 1
  %i.df = trunc nuw i64 %.sroa.speculated.i.i.i171 to i8
  %i.dg = insertelement <16 x i8> poison, i8 %i.df, i64 0
  %i.dh = shufflevector <16 x i8> %i.dg, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.di = and i64 %i.cp, 255                      ; 2 uses
  %i.dj = shl nuw i64 1, %i.di
  %notmask.i174 = shl nsw i64 -1, %i.di
  %i.dk = xor i64 %notmask.i174, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !19714
  br label %.noexc66

.noexc66:                                         ; preds = %.noexc63, %bb.i
  %.023.i.i543 = phi i64 [ %i.dj, %.noexc63 ], [ %i.en, %bb.i ]
  %.025.i.i542 = phi i64 [ %i.dc, %.noexc63 ], [ %i.eo, %bb.i ] ; 2 uses
  %i.dn = and i64 %.025.i.i542, %i.dk
  %i.do = shl nsw i64 %i.dn, 6
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.do ; 3 uses
  %i.dq = load <16 x i8>, ptr %i.dp, align 16     ; 2 uses
  %i.dr = icmp eq <16 x i8> %i.dq, %i.dh
  %i.ds = bitcast <16 x i1> %i.dr to i16
  %i.dt = zext i16 %i.ds to i32                   ; 2 uses
  %i.du = and i32 %i.dt, 4095
  %.not492 = icmp eq i32 %i.du, 0
  %i.dv = extractelement <16 x i8> %i.dq, i64 15
  br i1 %.not492, label %.loopexit511, label %.noexc68.preheader

.noexc68.preheader:                               ; preds = %.noexc66
  %i.dw = icmp ne ptr %i.dp, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.dw)
  %i.dx = load ptr, ptr %i.cn, align 8, !tbaa !19715
  br label %.noexc68

.noexc68:                                         ; preds = %.noexc68.preheader, %.critedge.i.i62
  %.sroa.0302.0 = phi i32 [ %i.ek, %.critedge.i.i62 ], [ %i.dt, %.noexc68.preheader ] ; 4 uses
  %i.dy = icmp ne i32 %.sroa.0302.0, 0
  call void @llvm.assume(i1 %i.dy)
  %i.dz = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0302.0, i1 true)
  %i.ea = shl nuw nsw i32 %i.dz, 2
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr i8, ptr %i.dp, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !19786 ; 2 uses
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.dx, i64 %i.ef ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !19769
  %i.ei = icmp eq ptr %i.cr, %i.eh
  br i1 %i.ei, label %bb.q, label %.critedge.i.i62, !prof !19685

.critedge.i.i62:                                  ; preds = %.noexc68
  %i.ej = add nsw i32 %.sroa.0302.0, -1
  %i.ek = and i32 %i.ej, %.sroa.0302.0            ; 2 uses
  %i.el = and i32 %i.ek, 4094
  %.not493 = icmp eq i32 %i.el, 0
  br i1 %.not493, label %.loopexit511, label %.noexc68, !llvm.loop !766

.loopexit511:                                     ; preds = %.critedge.i.i62, %.noexc66
  %i.em = icmp eq i8 %i.dv, 0
  br i1 %i.em, label %.noexc145, label %bb.i, !prof !19685

bb.i:                                             ; preds = %.loopexit511
  %i.en = add i64 %.023.i.i543, -1                ; 2 uses
  %i.eo = add i64 %i.de, %.025.i.i542
  %.not.i.i47 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i47, label %.noexc145, label %.noexc66, !llvm.loop !767

bb.j:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread387
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit241

.backedge512:                                     ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit, %.lr.ph
  %.pn = phi ptr [ %i.ce, %.lr.ph ], [ %.sroa.0264.0540, %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit ]
  %.sroa.0264.0540 = getelementptr inbounds i8, ptr %.pn, i64 -8 ; 3 uses
  %i.eq = load ptr, ptr %.sroa.0264.0540, align 8, !tbaa !19763 ; 3 uses
  %i.er = load i64, ptr %i.cf, align 8, !tbaa !19695 ; 3 uses
  %i.es = icmp ult i64 %i.er, 512
  br i1 %i.es, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.backedge512
  %i.et = icmp samesign ugt i64 %i.er, 255
  call void @llvm.assume(i1 %i.et)
  %i.eu = load i64, ptr %i.ch, align 8, !tbaa !19675
  %i.ev = and i64 %i.eu, -16
  %i.ew = inttoptr i64 %i.ev to ptr               ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 16, !tbaa !19763
  %i.ey = icmp eq ptr %i.eq, %i.ex
  call void @llvm.assume(i1 %i.ey)
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE4findERKSB_.exit.thread37.i

bb.l:                                             ; preds = %.backedge512
  %i.ez = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.fa = zext i64 %i.ez to i128
  %i.fb = mul nuw i128 %i.fa, 14181476777654086739
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = trunc nuw i128 %i.fc to i64
  %i.fe = mul i64 %i.ez, -4265267296055464877
  %i.ff = xor i64 %i.fe, %i.fd
  %i.fg = mul i64 %i.ff, -4265267296055464877     ; 2 uses
  %i.fh = lshr i64 %i.fg, 14
  %i.fi = and i64 %i.fh, 255
  %i.fj = lshr i64 %i.fg, 22
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fi, i64 1) ; 2 uses
  %i.fk = shl nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  %i.fl = or disjoint i64 %i.fk, 1
  %i.fm = trunc nuw i64 %.sroa.speculated.i.i.i.i to i8
  %i.fn = insertelement <16 x i8> poison, i8 %i.fm, i64 0
  %i.fo = shufflevector <16 x i8> %i.fn, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fp = and i64 %i.er, 255
  %notmask.i.i = shl nsw i64 -1, %i.fp
  %i.fq = xor i64 %notmask.i.i, -1
  %i.fr = load ptr, ptr %i.cg, align 8, !tbaa !20271
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.i, %bb.l
  %.026.i.i53.i = phi i64 [ %i.fj, %bb.l ], [ %i.gn, %.loopexit.i ] ; 2 uses
  %i.fs = and i64 %.026.i.i53.i, %i.fq
  %i.ft = shl nsw i64 %i.fs, 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ft ; 4 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 144
  call void @llvm.prefetch.p0(ptr %i.fv, i32 0, i32 3, i32 1)
  %i.fw = load <16 x i8>, ptr %i.fu, align 16
  %i.fx = icmp eq <16 x i8> %i.fw, %i.fo
  %i.fy = bitcast <16 x i1> %i.fx to i16
  %i.fz = zext i16 %i.fy to i32                   ; 2 uses
  %i.ga = and i32 %i.fz, 16383
  %.not.i177 = icmp eq i32 %i.ga, 0
  br i1 %.not.i177, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.gb = icmp ne ptr %i.fu, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.gb)
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i.i.i, %.preheader.i
  %.sroa.012.0.i = phi i32 [ %i.gl, %.critedge.i.i.i ], [ %i.fz, %.preheader.i ] ; 4 uses
  %i.gc = icmp ne i32 %.sroa.012.0.i, 0
  call void @llvm.assume(i1 %i.gc)
  %i.gd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0.i, i1 true)
  %i.ge = shl nuw nsw i32 %i.gd, 4
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr i8, ptr %i.fu, i64 %i.gf  ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !19763
  %i.gj = icmp eq ptr %i.eq, %i.gi
  br i1 %i.gj, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE4findERKSB_.exit.thread37.i.loopexit, label %.critedge.i.i.i, !prof !19685

.critedge.i.i.i:                                  ; preds = %bb.n
  %i.gk = add nsw i32 %.sroa.012.0.i, -1
  %i.gl = and i32 %i.gk, %.sroa.012.0.i           ; 2 uses
  %i.gm = and i32 %i.gl, 16382
  %.not50.i = icmp eq i32 %i.gm, 0
  br i1 %.not50.i, label %.loopexit.i, label %bb.n, !llvm.loop !768

.loopexit.i:                                      ; preds = %.critedge.i.i.i, %bb.m
  %i.gn = add i64 %i.fl, %.026.i.i53.i
  br label %bb.m

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE4findERKSB_.exit.thread37.i.loopexit: ; preds = %bb.n
  %i.go = getelementptr i8, ptr %i.gg, i64 16
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE4findERKSB_.exit.thread37.i

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE4findERKSB_.exit.thread37.i: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE4findERKSB_.exit.thread37.i.loopexit, %bb.k
  %.sroa.011.142.i = phi ptr [ %i.ew, %bb.k ], [ %i.go, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE4findERKSB_.exit.thread37.i.loopexit ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.011.142.i, i64 8 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !19676 ; 2 uses
  %i.gr = icmp slt i64 %i.gq, 0
  br i1 %i.gr, label %bb.o, label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

bb.o:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE4findERKSB_.exit.thread37.i
  %i.gs = shl i64 %i.gq, 1
  %i.gt = inttoptr i64 %i.gs to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.gt, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !19676
  br label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i: ; preds = %bb.o, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE4findERKSB_.exit.thread37.i
  %.sroa.3.0.i.i = phi i64 [ %.sroa.3.0.copyload.i.i, %bb.o ], [ 64, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE4findERKSB_.exit.thread37.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.o ], [ %i.gp, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE4findERKSB_.exit.thread37.i ]
  %i.gu = icmp uge i64 %i.bx, %.sroa.3.0.i.i
  %i.gv = icmp eq i64 %.sroa.3.0.i.i, 64
  %or.cond.i = and i1 %i.ci, %i.gv
  %or.cond = or i1 %i.gu, %or.cond.i
  br i1 %or.cond, label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %i.cj ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !19676
  %i.gy = and i64 %i.gx, %i.cm
  store i64 %i.gy, ptr %i.gw, align 8, !tbaa !19676
  br label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit

_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit: ; preds = %bb.p, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i
  %i.gz = icmp eq ptr %i.cd, %.sroa.0264.0540
  br i1 %i.gz, label %._crit_edge, label %.backedge512, !prof !19683

bb.q:                                             ; preds = %.noexc68
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !19695
  %i.hd = lshr i64 %i.hc, 8                       ; 2 uses
  %.not.i.i.i180.not = icmp eq i64 %i.hd, 0
  %i.he = load ptr, ptr %i.ha, align 8            ; 2 uses
  br i1 %.not.i.i.i180.not, label %.noexc127, label %.lr.ph551

.lr.ph551:                                        ; preds = %bb.q
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hd
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.hj = icmp eq i64 %i.bx, 63
  %i.hk = lshr i64 %i.bx, 6
  %i.hl = and i64 %i.bx, 63
  %i.hm = shl nuw i64 1, %i.hl
  %i.hn = xor i64 %i.hm, -1
  br label %.backedge

.noexc127.loopexit:                               ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit
  %.pre583 = load i64, ptr %i.co, align 8, !tbaa !19695
  br label %.noexc127

.noexc127:                                        ; preds = %.noexc127.loopexit, %bb.q
  %i.ho = phi i64 [ %.pre583, %.noexc127.loopexit ], [ %i.cp, %bb.q ] ; 2 uses
  %i.hp = icmp ult i64 %i.ho, 256
  br i1 %i.hp, label %.noexc128, label %.noexc139

.noexc139:                                        ; preds = %.noexc127
  %i.hq = load ptr, ptr %i.cn, align 8, !tbaa !19715
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.hq, i64 %i.ef
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !19769
  %i.ht = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.hu = zext i64 %i.ht to i128
  %i.hv = mul nuw i128 %i.hu, 14181476777654086739
  %i.hw = lshr i128 %i.hv, 64
  %i.hx = trunc nuw i128 %i.hw to i64
  %i.hy = mul i64 %i.ht, -4265267296055464877
  %i.hz = xor i64 %i.hy, %i.hx
  %i.ia = mul i64 %i.hz, -4265267296055464877     ; 2 uses
  %i.ib = lshr i64 %i.ia, 14
  %i.ic = and i64 %i.ib, 255
  %i.id = lshr i64 %i.ia, 22
  %.sroa.speculated.i.i.i187 = call i64 @llvm.umax.i64(i64 %i.ic, i64 1) ; 2 uses
  %i.ie = shl nuw nsw i64 %.sroa.speculated.i.i.i187, 1
  %i.if = or disjoint i64 %i.ie, 1
  %i.ig = trunc nuw i64 %.sroa.speculated.i.i.i187 to i8
  %i.ih = insertelement <16 x i8> poison, i8 %i.ig, i64 0
  %i.ii = shufflevector <16 x i8> %i.ih, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ij = and i64 %i.ho, 255                      ; 2 uses
  %i.ik = shl nuw i64 1, %i.ij
  %notmask.i190 = shl nsw i64 -1, %i.ij
  %i.il = xor i64 %notmask.i190, -1
  %i.im = load ptr, ptr %i.dl, align 8, !tbaa !19714
  br label %.noexc142

.noexc142:                                        ; preds = %.noexc139, %bb.r
  %.023.i554 = phi i64 [ %i.ik, %.noexc139 ], [ %i.jj, %bb.r ]
  %.025.i553 = phi i64 [ %i.id, %.noexc139 ], [ %i.jk, %bb.r ] ; 2 uses
  %i.in = and i64 %.025.i553, %i.il
  %i.io = shl nsw i64 %i.in, 6
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.io ; 3 uses
  %i.iq = load <16 x i8>, ptr %i.ip, align 16     ; 2 uses
  %i.ir = icmp eq <16 x i8> %i.iq, %i.ii
  %i.is = bitcast <16 x i1> %i.ir to i16
  %i.it = zext i16 %i.is to i32                   ; 2 uses
  %i.iu = and i32 %i.it, 4095
  %.not495 = icmp eq i32 %i.iu, 0
  %i.iv = extractelement <16 x i8> %i.iq, i64 15
  br i1 %.not495, label %.loopexit, label %.noexc143.preheader

.noexc143.preheader:                              ; preds = %.noexc142
  %i.iw = icmp ne ptr %i.ip, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.iw)
  br label %.noexc143

.noexc143:                                        ; preds = %.noexc143.preheader, %.critedge.i
  %.sroa.0345.0 = phi i32 [ %i.jg, %.critedge.i ], [ %i.it, %.noexc143.preheader ] ; 4 uses
  %i.ix = icmp ne i32 %.sroa.0345.0, 0
  call void @llvm.assume(i1 %i.ix)
  %i.iy = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0345.0, i1 true)
  %i.iz = zext nneg i32 %i.iy to i64              ; 2 uses
  %i.ja = shl nuw nsw i64 %i.iz, 2
  %i.jb = getelementptr i8, ptr %i.ip, i64 %i.ja  ; 2 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 16
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !19786
  %i.je = icmp eq i32 %i.ee, %i.jd
  br i1 %i.je, label %.noexc128.loopexit, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %.noexc143
  %i.jf = add nsw i32 %.sroa.0345.0, -1
  %i.jg = and i32 %i.jf, %.sroa.0345.0            ; 2 uses
  %i.jh = and i32 %i.jg, 4094
  %.not496 = icmp eq i32 %i.jh, 0
  br i1 %.not496, label %.loopexit, label %.noexc143, !llvm.loop !778

.loopexit:                                        ; preds = %.critedge.i, %.noexc142
  %i.ji = icmp eq i8 %i.iv, 0
  br i1 %i.ji, label %.noexc128, label %bb.r, !prof !19685

bb.r:                                             ; preds = %.loopexit
  %i.jj = add i64 %.023.i554, -1                  ; 2 uses
  %i.jk = add i64 %i.if, %.025.i553
  %.not.i = icmp eq i64 %i.jj, 0
  br i1 %.not.i, label %.noexc128, label %.noexc142, !llvm.loop !779

.noexc128.loopexit:                               ; preds = %.noexc143
  %i.jl = getelementptr i8, ptr %i.jb, i64 16
  br label %.noexc128

.noexc128:                                        ; preds = %bb.r, %.loopexit, %.noexc128.loopexit, %.noexc127
  %.sroa.5344.0 = phi i64 [ 0, %.noexc127 ], [ %i.iz, %.noexc128.loopexit ], [ 0, %.loopexit ], [ 0, %bb.r ]
  %.sroa.0343.0 = phi ptr [ null, %.noexc127 ], [ %i.jl, %.noexc128.loopexit ], [ null, %.loopexit ], [ null, %bb.r ]
  invoke void @_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr %.sroa.0343.0, i64 %.sroa.5344.0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %.noexc145 unwind label %bb.s

bb.s:                                             ; preds = %bb.ai, %.noexc128
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit241

.backedge:                                        ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit, %.lr.ph551
  %.pn647 = phi ptr [ %i.hf, %.lr.ph551 ], [ %.sroa.0252.0549, %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit ]
  %.sroa.0252.0549 = getelementptr inbounds i8, ptr %.pn647, i64 -8 ; 3 uses
  %i.jn = load ptr, ptr %.sroa.0252.0549, align 8, !tbaa !19763 ; 4 uses
  %i.jo = load i64, ptr %i.hh, align 8, !tbaa !19695 ; 3 uses
  %i.jp = icmp ult i64 %i.jo, 512
  br i1 %i.jp, label %bb.t, label %.noexc98

bb.t:                                             ; preds = %.backedge
  %i.jq = icmp samesign ult i64 %i.jo, 256
  br i1 %i.jq, label %.thread, label %.noexc96

.noexc96:                                         ; preds = %bb.t
  %i.jr = load i64, ptr %i.hi, align 8, !tbaa !19765 ; 2 uses
  %i.js = and i64 %i.jr, -16
  %i.jt = inttoptr i64 %i.js to ptr               ; 2 uses
  %i.ju = and i64 %i.jr, 15
  %i.jv = load ptr, ptr %i.jt, align 16, !tbaa !19763
  %i.jw = icmp eq ptr %i.jn, %i.jv
  br i1 %i.jw, label %.critedge, label %.thread

.noexc98:                                         ; preds = %.backedge
  %i.jx = ptrtoint ptr %i.jn to i64               ; 2 uses
  %i.jy = zext i64 %i.jx to i128
  %i.jz = mul nuw i128 %i.jy, 14181476777654086739
  %i.ka = lshr i128 %i.jz, 64
  %i.kb = trunc nuw i128 %i.ka to i64
  %i.kc = mul i64 %i.jx, -4265267296055464877
  %i.kd = xor i64 %i.kc, %i.kb
  %i.ke = mul i64 %i.kd, -4265267296055464877     ; 2 uses
  %i.kf = lshr i64 %i.ke, 14
  %i.kg = and i64 %i.kf, 255
  %i.kh = lshr i64 %i.ke, 22
  %.sroa.speculated.i.i.i195 = call i64 @llvm.umax.i64(i64 %i.kg, i64 1) ; 2 uses
  %i.ki = shl nuw nsw i64 %.sroa.speculated.i.i.i195, 1
  %i.kj = or disjoint i64 %i.ki, 1
  %i.kk = trunc nuw i64 %.sroa.speculated.i.i.i195 to i8
  %i.kl = insertelement <16 x i8> poison, i8 %i.kk, i64 0
  %i.km = shufflevector <16 x i8> %i.kl, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.kn = and i64 %i.jo, 255                      ; 2 uses
  %i.ko = shl nuw i64 1, %i.kn
  %notmask.i198 = shl nsw i64 -1, %i.kn
  %i.kp = xor i64 %notmask.i198, -1
  %i.kq = load ptr, ptr %i.hg, align 8, !tbaa !19725
  br label %.noexc101

.noexc101:                                        ; preds = %.noexc98, %bb.u
  %.024.i.i72546 = phi i64 [ %i.ko, %.noexc98 ], [ %i.lo, %bb.u ]
  %.026.i.i71545 = phi i64 [ %i.kh, %.noexc98 ], [ %i.lp, %bb.u ] ; 2 uses
  %i.kr = and i64 %.026.i.i71545, %i.kp
  %i.ks = shl nsw i64 %i.kr, 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.ks ; 4 uses
  %i.ku = getelementptr i8, ptr %i.kt, i64 144
  call void @llvm.prefetch.p0(ptr %i.ku, i32 0, i32 3, i32 1)
  %i.kv = load <16 x i8>, ptr %i.kt, align 16     ; 2 uses
  %i.kw = icmp eq <16 x i8> %i.kv, %i.km
  %i.kx = bitcast <16 x i1> %i.kw to i16
  %i.ky = zext i16 %i.kx to i32                   ; 2 uses
  %i.kz = and i32 %i.ky, 16383
  %.not497 = icmp eq i32 %i.kz, 0
  %i.la = extractelement <16 x i8> %i.kv, i64 15
  br i1 %.not497, label %.loopexit507, label %.noexc104.preheader

.noexc104.preheader:                              ; preds = %.noexc101
  %i.lb = icmp ne ptr %i.kt, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.lb)
  br label %.noexc104

.noexc104:                                        ; preds = %.noexc104.preheader, %.critedge.i.i95
  %.sroa.0313.0 = phi i32 [ %i.ll, %.critedge.i.i95 ], [ %i.ky, %.noexc104.preheader ] ; 4 uses
  %i.lc = icmp ne i32 %.sroa.0313.0, 0
  call void @llvm.assume(i1 %i.lc)
  %i.ld = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0313.0, i1 true)
  %i.le = zext nneg i32 %i.ld to i64              ; 2 uses
  %i.lf = shl nuw nsw i64 %i.le, 4
  %i.lg = getelementptr i8, ptr %i.kt, i64 %i.lf  ; 2 uses
  %i.lh = getelementptr i8, ptr %i.lg, i64 16
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !19763
  %i.lj = icmp eq ptr %i.jn, %i.li
  br i1 %i.lj, label %.critedge.loopexit, label %.critedge.i.i95, !prof !19685

.critedge.i.i95:                                  ; preds = %.noexc104
  %i.lk = add nsw i32 %.sroa.0313.0, -1
  %i.ll = and i32 %i.lk, %.sroa.0313.0            ; 2 uses
  %i.lm = and i32 %i.ll, 16382
  %.not498 = icmp eq i32 %i.lm, 0
  br i1 %.not498, label %.loopexit507, label %.noexc104, !llvm.loop !764

.loopexit507:                                     ; preds = %.critedge.i.i95, %.noexc101
  %i.ln = icmp eq i8 %i.la, 0
  br i1 %i.ln, label %.thread, label %bb.u, !prof !19685

bb.u:                                             ; preds = %.loopexit507
  %i.lo = add i64 %.024.i.i72546, -1              ; 2 uses
  %i.lp = add i64 %i.kj, %.026.i.i71545
  %.not.i.i73 = icmp eq i64 %i.lo, 0
  br i1 %.not.i.i73, label %.thread, label %.noexc101, !llvm.loop !765

.thread:                                          ; preds = %.noexc96, %bb.t, %.loopexit507, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.288, i32 noundef 325)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %.thread
  %i.lq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lq, ptr noundef nonnull @.str.298, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.w
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #42
  unreachable

bb.x:                                             ; preds = %bb.ae
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit241

bb.y:                                             ; preds = %.thread
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit241

bb.z:                                             ; preds = %bb.w, %bb.v
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #42
  unreachable

.critedge.loopexit:                               ; preds = %.noexc104
  %i.lv = getelementptr i8, ptr %i.lg, i64 16
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.noexc96
  %.sroa.7312.1477 = phi i64 [ %i.ju, %.noexc96 ], [ %i.le, %.critedge.loopexit ] ; 4 uses
  %.sroa.0311.1475 = phi ptr [ %i.jt, %.noexc96 ], [ %i.lv, %.critedge.loopexit ] ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0311.1475, i64 8 ; 4 uses
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !19676 ; 3 uses
  %i.ly = icmp slt i64 %i.lx, 0
  br i1 %i.ly, label %bb.aa, label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i200

bb.aa:                                            ; preds = %.critedge
  %i.lz = shl i64 %i.lx, 1
  %i.ma = inttoptr i64 %i.lz to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i205 = load ptr, ptr %i.ma, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i206 = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %.sroa.3.0.copyload.i.i207 = load i64, ptr %.sroa.3.0..sroa_idx.i.i206, align 8, !tbaa !19676
  br label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i200

_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i200: ; preds = %bb.aa, %.critedge
  %.sroa.3.0.i.i201 = phi i64 [ %.sroa.3.0.copyload.i.i207, %bb.aa ], [ 64, %.critedge ] ; 2 uses
  %.sroa.0.0.i.i202 = phi ptr [ %.sroa.0.0.copyload.i.i205, %bb.aa ], [ %i.lw, %.critedge ]
  %i.mb = icmp uge i64 %i.bx, %.sroa.3.0.i.i201
  %i.mc = icmp eq i64 %.sroa.3.0.i.i201, 64
  %or.cond.i203 = and i1 %i.hj, %i.mc
  %or.cond557 = or i1 %i.mb, %or.cond.i203
  br i1 %or.cond557, label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit208, label %bb.ab

bb.ab:                                            ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i200
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i202, i64 %i.hk ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !tbaa !19676
  %i.mf = and i64 %i.me, %i.hn
  store i64 %i.mf, ptr %i.md, align 8, !tbaa !19676
  %.pre = load i64, ptr %i.lw, align 8, !tbaa !19676
  br label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit208

_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit208: ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i200, %bb.ab
  %i.mg = phi i64 [ %i.lx, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i200 ], [ %.pre, %bb.ab ] ; 2 uses
  %i.mh = icmp slt i64 %i.mg, 0
  br i1 %i.mh, label %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, label %.lr.ph.i.i.i.i.preheader

_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit: ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit208
  %i.mi = shl i64 %i.mg, 1
  %i.mj = inttoptr i64 %i.mi to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.mj, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !19676 ; 2 uses
  %.not.i.i214 = icmp eq i64 %.sroa.3.0.copyload.i.i.i, 0
  br i1 %.not.i.i214, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5emptyEv.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit208, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit
  %.sroa.0.0.i.i.i210613 = phi ptr [ %.sroa.0.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.lw, %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit208 ]
  %.sroa.3.0.i.i.i209611 = phi i64 [ %.sroa.3.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ 64, %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit208 ] ; 3 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.ac
  %.01422.i.i.i.i = phi i64 [ %i.ms, %bb.ac ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %i.mk = lshr i64 %.01422.i.i.i.i, 6
  %i.ml = and i64 %.01422.i.i.i.i, 63
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i210613, i64 %i.mk
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !19676, !noalias !21709
  %i.mo = lshr i64 %i.mn, %i.ml                   ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.mo, 0
  br i1 %.not.i.i.i.i, label %bb.ac, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i
  %i.mp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mo, i1 true)
  %i.mq = add i64 %i.mp, %.01422.i.i.i.i
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5emptyEv.exit

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i
  %i.mr = and i64 %.01422.i.i.i.i, -64
  %i.ms = add i64 %i.mr, 64                       ; 3 uses
  %i.mt = icmp ult i64 %i.ms, %.sroa.3.0.i.i.i209611
  br i1 %i.mt, label %.lr.ph.i.i.i.i, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5emptyEv.exit, !llvm.loop !720

_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5emptyEv.exit: ; preds = %bb.ac, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, %.thread.i.i.i.i
  %.sroa.3.0.i.i.i209612 = phi i64 [ %.sroa.3.0.i.i.i209611, %.thread.i.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %.sroa.3.0.i.i.i209611, %bb.ac ]
  %.2.i.i.i.i = phi i64 [ %i.mq, %.thread.i.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.ms, %bb.ac ]
  %i.mu = icmp eq i64 %.2.i.i.i.i, %.sroa.3.0.i.i.i209612
  br i1 %i.mu, label %.noexc109, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit

.noexc109:                                        ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5emptyEv.exit
  %.neg.i.i.i = mul nsw i64 %.sroa.7312.1477, -16 ; 2 uses
  %i.mv = getelementptr i8, ptr %.sroa.0311.1475, i64 %.neg.i.i.i
  %i.mw = getelementptr i8, ptr %i.mv, i64 -2
  %i.mx = load i8, ptr %i.mw, align 2, !tbaa !19727
  %.not.i220 = icmp ult i8 %i.mx, 16
  br i1 %.not.i220, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.noexc109
  %i.my = ptrtoint ptr %i.jn to i64               ; 2 uses
  %i.mz = zext i64 %i.my to i128
  %i.na = mul nuw i128 %i.mz, 14181476777654086739
  %i.nb = lshr i128 %i.na, 64
  %i.nc = trunc nuw i128 %i.nb to i64
  %i.nd = mul i64 %i.my, -4265267296055464877
  %i.ne = xor i64 %i.nd, %i.nc
  %i.nf = mul i64 %i.ne, -4265267296055464877     ; 2 uses
  %i.ng = lshr i64 %i.nf, 14
  %i.nh = and i64 %i.ng, 255
  %i.ni = lshr i64 %i.nf, 22
  %.sroa.speculated.i.i.i221 = call i64 @llvm.umax.i64(i64 %i.nh, i64 1)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.noexc109
  %.sroa.5.0.i = phi i64 [ 0, %.noexc109 ], [ %.sroa.speculated.i.i.i221, %bb.ad ]
  %.sroa.04.0.i = phi i64 [ 0, %.noexc109 ], [ %i.ni, %bb.ad ]
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr nonnull %.sroa.0311.1475, i64 %.sroa.7312.1477, i64 %.sroa.04.0.i, i64 %.sroa.5.0.i)
          to label %.noexc120 unwind label %bb.x

.noexc120:                                        ; preds = %bb.ae
  %i.nj = getelementptr inbounds i8, ptr %.sroa.0311.1475, i64 -16
  %i.nk = getelementptr inbounds i8, ptr %i.nj, i64 %.neg.i.i.i ; 2 uses
  %.not19.i.i677 = icmp eq i64 %.sroa.7312.1477, 0
  br i1 %.not19.i.i677, label %.preheader508.preheader, label %.lr.ph679

.preheader508.preheader:                          ; preds = %bb.af, %.noexc120
  br label %.preheader508

bb.af:                                            ; preds = %.lr.ph679
  %.not19.i.i = icmp eq i64 %i.nl, 0
  br i1 %.not19.i.i, label %.preheader508.preheader, label %.lr.ph679, !llvm.loop !723

.lr.ph679:                                        ; preds = %.noexc120, %bb.af
  %.sroa.10325.0678 = phi i64 [ %i.nl, %bb.af ], [ %.sroa.7312.1477, %.noexc120 ]
  %i.nl = add nsw i64 %.sroa.10325.0678, -1       ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !19682
  %.not499 = icmp eq i8 %i.nn, 0
  br i1 %.not499, label %bb.af, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit, !prof !19683, !llvm.loop !723

bb.ag:                                            ; preds = %.noexc122
  %i.no = add i64 %.0.i.i548, 1                   ; 2 uses
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit, label %.preheader508, !llvm.loop !724

.preheader508:                                    ; preds = %.preheader508.preheader, %bb.ag
  %.0.i.i548 = phi i64 [ %i.no, %bb.ag ], [ 1, %.preheader508.preheader ]
  %.017.i.i547 = phi ptr [ %i.nt, %bb.ag ], [ %i.nk, %.preheader508.preheader ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.017.i.i547, i64 14
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !19682
  %i.ns = and i8 %i.nr, 15
  %.not500 = icmp eq i8 %i.ns, 0
  br i1 %.not500, label %.noexc122, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit, !prof !19685

.noexc122:                                        ; preds = %.preheader508
  %i.nt = getelementptr inbounds i8, ptr %.017.i.i547, i64 -256 ; 3 uses
  %i.nu = load <16 x i8>, ptr %i.nt, align 16, !tbaa !19682
  %i.nv = icmp eq <16 x i8> %i.nu, zeroinitializer
  %i.nw = bitcast <16 x i1> %i.nv to i16
  %i.nx = and i16 %i.nw, 16383
  %.not501 = icmp eq i16 %i.nx, 16383
  br i1 %.not501, label %bb.ag, label %.noexc124, !prof !19683

.noexc124:                                        ; preds = %.noexc122
  %i.ny = icmp ne ptr %i.nt, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ny)
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit: ; preds = %.lr.ph679, %.preheader508, %bb.ag, %.noexc124, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5emptyEv.exit
  %i.nz = icmp eq ptr %i.he, %.sroa.0252.0549
  br i1 %i.nz, label %.noexc127.loopexit, label %.backedge, !prof !19683

.noexc145:                                        ; preds = %.loopexit511, %bb.i, %.noexc128, %._crit_edge
  %i.oa = call noundef zeroext i1 @_ZN5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE11erase_valueERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #40 ; 0 uses
  %.neg.i.i.i229 = mul nsw i64 %.sroa.7290.1393, -8 ; 2 uses
  %i.ob = getelementptr i8, ptr %.sroa.0289.1392, i64 %.neg.i.i.i229
  %i.oc = getelementptr i8, ptr %i.ob, i64 -2
  %i.od = load i8, ptr %i.oc, align 2, !tbaa !19736
  %.not.i230 = icmp ult i8 %i.od, 16
  br i1 %.not.i230, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.noexc145
  %i.oe = load ptr, ptr %.sroa.0289.1392, align 8, !tbaa !19734
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !19676 ; 2 uses
  %i.og = lshr i64 %i.of, 56
  %.sroa.speculated.i.i.i231 = call i64 @llvm.umax.i64(i64 %i.og, i64 1)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.noexc145
  %.sroa.5.0.i232 = phi i64 [ 0, %.noexc145 ], [ %.sroa.speculated.i.i.i231, %bb.ah ]
  %.sroa.04.0.i233 = phi i64 [ 0, %.noexc145 ], [ %i.of, %bb.ah ]
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr nonnull %.sroa.0289.1392, i64 %.sroa.7290.1393, i64 %.sroa.04.0.i233, i64 %.sroa.5.0.i232)
          to label %.noexc162 unwind label %bb.s

.noexc162:                                        ; preds = %bb.ai
  %i.oh = getelementptr inbounds i8, ptr %.sroa.0289.1392, i64 -16
  %i.oi = getelementptr inbounds i8, ptr %i.oh, i64 %.neg.i.i.i229 ; 2 uses
  %.not19.i.i158680 = icmp eq i64 %.sroa.7290.1393, 0
  br i1 %.not19.i.i158680, label %.preheader.preheader, label %.lr.ph682

.preheader.preheader:                             ; preds = %bb.aj, %.noexc162
  br label %.preheader

bb.aj:                                            ; preds = %.lr.ph682
  %.not19.i.i158 = icmp eq i64 %i.oj, 0
  br i1 %.not19.i.i158, label %.preheader.preheader, label %.lr.ph682, !llvm.loop !718

.lr.ph682:                                        ; preds = %.noexc162, %bb.aj
  %.sroa.10355.0681 = phi i64 [ %i.oj, %bb.aj ], [ %.sroa.7290.1393, %.noexc162 ]
  %i.oj = add nsw i64 %.sroa.10355.0681, -1       ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !19682
  %.not502 = icmp eq i8 %i.ol, 0
  br i1 %.not502, label %bb.aj, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, !prof !19683, !llvm.loop !718

bb.ak:                                            ; preds = %.noexc164
  %i.om = add i64 %.0.i.i160556, 1                ; 2 uses
  %i.on = icmp eq i64 %i.om, 0
  br i1 %i.on, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %.preheader, !llvm.loop !719

.preheader:                                       ; preds = %.preheader.preheader, %bb.ak
  %.0.i.i160556 = phi i64 [ %i.om, %bb.ak ], [ 1, %.preheader.preheader ]
  %.017.i.i159555 = phi ptr [ %i.or, %bb.ak ], [ %i.oi, %.preheader.preheader ] ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.017.i.i159555, i64 14
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !19682
  %i.oq = and i8 %i.op, 15
  %.not503 = icmp eq i8 %i.oq, 0
  br i1 %.not503, label %.noexc164, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, !prof !19685

.noexc164:                                        ; preds = %.preheader
  %i.or = getelementptr inbounds i8, ptr %.017.i.i159555, i64 -128 ; 3 uses
  %i.os = load <16 x i8>, ptr %i.or, align 16, !tbaa !19682
  %i.ot = icmp eq <16 x i8> %i.os, zeroinitializer
  %i.ou = bitcast <16 x i1> %i.ot to i16
  %i.ov = and i16 %i.ou, 16383
  %.not504 = icmp eq i16 %i.ov, 16383
  br i1 %.not504, label %bb.ak, label %.noexc166, !prof !19683

.noexc166:                                        ; preds = %.noexc164
  %i.ow = icmp ne ptr %i.or, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ow)
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit: ; preds = %.lr.ph682, %bb.ak, %.preheader, %.noexc166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread: ; preds = %.loopexit514, %bb.g, %bb.c, %bb.b, %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit
  ret void

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit241: ; preds = %bb.s, %bb.y, %bb.x, %bb.j
  %.pn41.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jm, %bb.s ], [ %i.ep, %bb.j ], [ %i.lt, %bb.y ], [ %i.ls, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @_ZN5folly15RegexMatchCache6repairEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #40, !inline_history !774
  resume { ptr, i32 } %.pn41.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE11erase_valueERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.494, align 8            ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19695 ; 3 uses
  %i.e = icmp ult i64 %i.d, 512
  br i1 %i.e, label %bb.b, label %.noexc20

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i64 %i.d, 256
  br i1 %i.f, label %.thread85, label %.noexc18

.noexc18:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20278 ; 2 uses
  %i.i = and i64 %i.h, -16
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = and i64 %i.h, 15
  %i.l = load ptr, ptr %1, align 8, !tbaa !19769
  %i.m = load ptr, ptr %i.j, align 16, !tbaa !19769
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %.thread90, label %.thread85

.noexc20:                                         ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !tbaa !19769  ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw i128 %i.q, 14181476777654086739
  %i.s = lshr i128 %i.r, 64
  %i.t = trunc nuw i128 %i.s to i64
  %i.u = mul i64 %i.p, -4265267296055464877
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, -4265267296055464877       ; 2 uses
  %i.x = lshr i64 %i.w, 14
  %i.y = and i64 %i.x, 255
  %i.z = lshr i64 %i.w, 22
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1) ; 2 uses
  %i.aa = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ab = or disjoint i64 %i.aa, 1
  %i.ac = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ad = insertelement <16 x i8> poison, i8 %i.ac, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.af = and i64 %i.d, 255                       ; 2 uses
  %i.ag = shl nuw i64 1, %i.af
  %notmask.i = shl nsw i64 -1, %i.af
  %i.ah = xor i64 %notmask.i, -1
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !19703
  br label %.noexc23

.noexc23:                                         ; preds = %.noexc20, %bb.c
  %.024.i.i116 = phi i64 [ %i.ag, %.noexc20 ], [ %i.bg, %bb.c ]
  %.026.i.i115 = phi i64 [ %i.z, %.noexc20 ], [ %i.bh, %bb.c ] ; 2 uses
  %i.aj = and i64 %.026.i.i115, %i.ah
  %i.ak = shl nsw i64 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.am, i32 0, i32 3, i32 1)
  %i.an = load <16 x i8>, ptr %i.al, align 16     ; 2 uses
  %i.ao = icmp eq <16 x i8> %i.an, %i.ae
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = and i32 %i.aq, 16383
  %.not = icmp eq i32 %i.ar, 0
  %i.as = extractelement <16 x i8> %i.an, i64 15
  br i1 %.not, label %.loopexit109, label %.noexc25.preheader

.noexc25.preheader:                               ; preds = %.noexc23
  %i.at = icmp ne ptr %i.al, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.at)
  br label %.noexc25

.noexc25:                                         ; preds = %.noexc25.preheader, %.critedge.i.i
  %.sroa.061.0 = phi i32 [ %i.bd, %.critedge.i.i ], [ %i.aq, %.noexc25.preheader ] ; 4 uses
  %i.au = icmp ne i32 %.sroa.061.0, 0
  tail call void @llvm.assume(i1 %i.au)
  %i.av = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.061.0, i1 true)
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = shl nuw nsw i64 %i.aw, 4
  %i.ay = getelementptr i8, ptr %i.al, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19769
  %i.bb = icmp eq ptr %i.o, %i.ba
  br i1 %i.bb, label %.thread90.loopexit, label %.critedge.i.i, !prof !19685

.critedge.i.i:                                    ; preds = %.noexc25
  %i.bc = add nsw i32 %.sroa.061.0, -1
  %i.bd = and i32 %i.bc, %.sroa.061.0             ; 2 uses
  %i.be = and i32 %i.bd, 16382
  %.not104 = icmp eq i32 %i.be, 0
  br i1 %.not104, label %.loopexit109, label %.noexc25, !llvm.loop !772

.loopexit109:                                     ; preds = %.critedge.i.i, %.noexc23
  %i.bf = icmp eq i8 %i.as, 0
  br i1 %i.bf, label %.thread85, label %bb.c, !prof !19685

bb.c:                                             ; preds = %.loopexit109
  %i.bg = add i64 %.024.i.i116, -1                ; 2 uses
  %i.bh = add i64 %i.ab, %.026.i.i115
  %.not.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i, label %.thread85, label %.noexc23, !llvm.loop !773

.thread90.loopexit:                               ; preds = %.noexc25
  %i.bi = getelementptr i8, ptr %i.ay, i64 16
  br label %.thread90

.thread90:                                        ; preds = %.thread90.loopexit, %.noexc18
  %.sroa.060.196 = phi ptr [ %i.j, %.noexc18 ], [ %i.bi, %.thread90.loopexit ] ; 5 uses
  %.sroa.7.195 = phi i64 [ %i.k, %.noexc18 ], [ %i.aw, %.thread90.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.060.196, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !20293 ; 3 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !19676
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !19708 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !20272
  %.not.i = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread90
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !19676
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !19708
  br label %.noexc

bb.e:                                             ; preds = %.thread90
  %i.bq = load ptr, ptr %0, align 8, !tbaa !19707 ; 4 uses
  %i.br = ptrtoint ptr %i.bm to i64
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 5 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #43
          to label %.noexc28 unwind label %bb.n

.noexc28:                                         ; preds = %bb.f
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i27 = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i27, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #44
          to label %.noexc29 unwind label %bb.n   ; 4 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bt ; 2 uses
  store i64 %i.bk, ptr %i.cc, align 8, !tbaa !19676
  %i.cd = icmp sgt i64 %i.bt, 0
  br i1 %i.cd, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc29
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %i.bq, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc29
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.cf = load ptr, ptr %i.bn, align 8, !tbaa !20272
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.ch) #41
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.cb, ptr %0, align 8, !tbaa !19707
  store ptr %i.ce, ptr %i.bl, align 8, !tbaa !19708
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.ci, ptr %i.bn, align 8, !tbaa !20272
  br label %.noexc

.noexc:                                           ; preds = %bb.d, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %.neg.i.i.i = mul nsw i64 %.sroa.7.195, -16     ; 2 uses
  %i.cj = getelementptr i8, ptr %.sroa.060.196, i64 %.neg.i.i.i
  %i.ck = getelementptr i8, ptr %i.cj, i64 -2
  %i.cl = load i8, ptr %i.ck, align 2, !tbaa !19705
  %.not.i35 = icmp ult i8 %i.cl, 16
  br i1 %.not.i35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.cm = load ptr, ptr %.sroa.060.196, align 8, !tbaa !19769
  %i.cn = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.co = zext i64 %i.cn to i128
  %i.cp = mul nuw i128 %i.co, 14181476777654086739
  %i.cq = lshr i128 %i.cp, 64
  %i.cr = trunc nuw i128 %i.cq to i64
  %i.cs = mul i64 %i.cn, -4265267296055464877
  %i.ct = xor i64 %i.cs, %i.cr
  %i.cu = mul i64 %i.ct, -4265267296055464877     ; 2 uses
  %i.cv = lshr i64 %i.cu, 14
  %i.cw = and i64 %i.cv, 255
  %i.cx = lshr i64 %i.cu, 22
  %.sroa.speculated.i.i.i36 = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.noexc
  %.sroa.5.0.i = phi i64 [ 0, %.noexc ], [ %.sroa.speculated.i.i.i36, %bb.i ]
  %.sroa.04.0.i = phi i64 [ 0, %.noexc ], [ %i.cx, %bb.i ]
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr nonnull %.sroa.060.196, i64 %.sroa.7.195, i64 %.sroa.04.0.i, i64 %.sroa.5.0.i)
          to label %.noexc9 unwind label %bb.n

.noexc9:                                          ; preds = %bb.j
  %i.cy = getelementptr inbounds i8, ptr %.sroa.060.196, i64 -16
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %.neg.i.i.i ; 2 uses
  %.not19.i142 = icmp eq i64 %.sroa.7.195, 0
  br i1 %.not19.i142, label %.preheader.preheader, label %.lr.ph

.preheader.preheader:                             ; preds = %bb.k, %.noexc9
  br label %.preheader

bb.k:                                             ; preds = %.lr.ph
  %.not19.i = icmp eq i64 %i.da, 0
  br i1 %.not19.i, label %.preheader.preheader, label %.lr.ph, !llvm.loop !775

.lr.ph:                                           ; preds = %.noexc9, %bb.k
  %.sroa.10.0143 = phi i64 [ %i.da, %bb.k ], [ %.sroa.7.195, %.noexc9 ]
  %i.da = add nsw i64 %.sroa.10.0143, -1          ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !19682
  %.not105 = icmp eq i8 %i.dc, 0
  br i1 %.not105, label %bb.k, label %.loopexit, !prof !19683, !llvm.loop !775

bb.l:                                             ; preds = %.noexc11
  %i.dd = add i64 %.0.i118, 1                     ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %.loopexit, label %.preheader, !llvm.loop !776

.preheader:                                       ; preds = %.preheader.preheader, %bb.l
  %.0.i118 = phi i64 [ %i.dd, %bb.l ], [ 1, %.preheader.preheader ]
  %.017.i117 = phi ptr [ %i.di, %bb.l ], [ %i.cz, %.preheader.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.017.i117, i64 14
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !19682
  %i.dh = and i8 %i.dg, 15
  %.not106 = icmp eq i8 %i.dh, 0
  br i1 %.not106, label %.noexc11, label %.loopexit, !prof !19685

.noexc11:                                         ; preds = %.preheader
  %i.di = getelementptr inbounds i8, ptr %.017.i117, i64 -256 ; 3 uses
  %i.dj = load <16 x i8>, ptr %i.di, align 16, !tbaa !19682
  %i.dk = icmp eq <16 x i8> %i.dj, zeroinitializer
  %i.dl = bitcast <16 x i1> %i.dk to i16
  %i.dm = and i16 %i.dl, 16383
  %.not107 = icmp eq i16 %i.dm, 16383
  br i1 %.not107, label %bb.l, label %.noexc12, !prof !19683

.noexc12:                                         ; preds = %.noexc11
  %i.dn = icmp ne ptr %i.di, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.dn)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.l, %.preheader, %.noexc12
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store ptr @_ZN5folly13variadic_noopE, ptr %2, align 8, !tbaa !20348
  %i.dp = invoke noundef i64 @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE12eraseKeyIntoImZNS1_11F14BasicMapIS7_E17tableEraseKeyIntoImRKNS_16variadic_noop_fnEEEmRKT_OT0_EUlOSt4pairIKmS6_EE_EEmSI_SK_(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %.thread85

.thread85:                                        ; preds = %.loopexit109, %bb.c, %.noexc18, %bb.b, %bb.m
  %.0 = phi i1 [ true, %bb.m ], [ false, %.noexc18 ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.loopexit109 ]
  ret i1 %.0

bb.n:                                             ; preds = %.loopexit, %bb.j, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %bb.f
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #42
  unreachable
}

; Function Attrs: mustprogress uwtable
end_hunk_14
begin_hunk_15_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE:bb.a
  %i.ar = or i64 %i.ao, %i.aq
  store i64 %i.ar, ptr %i.o, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit: ; preds = %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEEE17precheckedAdvanceEv.exit.i
  %i.as = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -16
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %.neg.i.i.i ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %2 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !19682
  %.not.i.i7 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i7, label %bb.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE8clearTagEm.exit.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit
  store i8 0, ptr %i.au, align 1, !tbaa !19682
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 14
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !19727
  %.not.i = icmp ult i8 %i.ax, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE8clearTagEm.exit.i
  %i.ay = shl i64 %4, 1
  %i.az = or disjoint i64 %i.ay, 1
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !19695
  %i.bb = and i64 %i.ba, 255
  %notmask.i.i = shl nsw i64 -1, %i.bb
  %i.bc = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !19725 ; 4 uses
  %i.be = and i64 %3, %i.bc
  %i.bf = shl nsw i64 %i.be, 8                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf
  %i.bh = icmp eq ptr %i.bg, %i.at
  br i1 %i.bh, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.l, %bb.j
  %.010.lcssa.i = phi i8 [ 0, %bb.j ], [ -16, %bb.l ]
  %i.bi = phi i64 [ %i.bf, %bb.j ], [ %i.bu, %bb.l ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 14 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !19727
  %i.bm = add i8 %i.bl, %.010.lcssa.i
  store i8 %i.bm, ptr %i.bk, align 2, !tbaa !19727
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE.exit

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %i.bn = phi i64 [ %i.bu, %bb.l ], [ %i.bf, %bb.j ]
  %.01126.i = phi i64 [ %i.bs, %bb.l ], [ %3, %bb.j ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 15 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !20337 ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bq, -2
  br i1 %.not.i17.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.br = add i8 %i.bq, -1
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !20337
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.bs = add i64 %i.az, %.01126.i                ; 2 uses
  %i.bt = and i64 %i.bs, %i.bc
  %i.bu = shl nsw i64 %i.bt, 8                    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bu
  %i.bw = icmp eq ptr %i.bv, %i.at
  br i1 %i.bw, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.493, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !19715  ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !19786  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  store ptr %3, ptr %4, align 8, !tbaa !20348
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISB_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS6_S8_EE_EEvSO_SQ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19720 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 15
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19694
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19695 ; 2 uses
  %i.l = and i64 %i.k, 255                        ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i16, ptr %i.m, align 1
  %i.n = zext i16 %.0.copyload.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.l
  %i.o = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  %i.p = lshr i64 %i.o, 12
  %i.q = add nuw nsw i64 %i.p, 1
  %i.r = icmp ult i64 %i.k, 256
  br i1 %i.r, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.l, ptr %i.j, align 8, !tbaa !19695
  %.0.copyload.i.pre.i.i.i.i.i.i.i = load i16, ptr %i.m, align 1
  %.pre20.i.i.i.i.i.i.i = zext i16 %.0.copyload.i.pre.i.i.i.i.i.i.i to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi21.i.i.i.i.i.i.i = phi i64 [ %.pre20.i.i.i.i.i.i.i, %bb.c ], [ %i.n, %bb.b ]
  %i.s = icmp eq i64 %i.l, 0
  %i.t = shl nuw nsw i64 %.pre-phi21.i.i.i.i.i.i.i, 2
  %.neg17.i.i.i.i.i.i.i = sub nuw nsw i64 -16, %i.t
  %.neg18.i.i.i.i.i.i.i = shl i64 -64, %i.l
  %.0.i.neg.i.i.i.i.i.i.i = select i1 %i.s, i64 %.neg17.i.i.i.i.i.i.i, i64 %.neg18.i.i.i.i.i.i.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.e, align 8, !tbaa !19720
  store i64 0, ptr %i.j, align 8, !tbaa !19695
  %i.u = and i64 %.0.i.neg.i.i.i.i.i.i.i, -8
  %i.v = shl nuw nsw i64 %i.n, 3
  %i.w = mul i64 %i.v, %i.q
  %i.x = sub i64 %i.w, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.x) #40
  br label %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit

_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit: ; preds = %bb.a, %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19695 ; 2 uses
  %i.aa = lshr i64 %i.z, 8                        ; 5 uses
  %.not = icmp eq i64 %i.aa, %i.c
  br i1 %.not, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = icmp ne i64 %i.aa, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = load ptr, ptr %0, align 8, !tbaa !19715
  %i.ae = and i64 %i.aa, 4294967295
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19769
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = zext i64 %i.ah to i128
  %i.aj = mul nuw i128 %i.ai, 14181476777654086739
  %i.ak = lshr i128 %i.aj, 64
  %i.al = trunc nuw i128 %i.ak to i64
  %i.am = mul i64 %i.ah, -4265267296055464877
  %i.an = xor i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, -4265267296055464877     ; 2 uses
  %i.ap = lshr i64 %i.ao, 14
  %i.aq = and i64 %i.ap, 255
  %i.ar = lshr i64 %i.ao, 22
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 1) ; 2 uses
  %i.as = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.at = or disjoint i64 %i.as, 1
  %i.au = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.av = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.aw = shufflevector <16 x i8> %i.av, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ax = and i64 %i.z, 255
  %notmask.i = shl nsw i64 -1, %i.ax
  %i.ay = xor i64 %notmask.i, -1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19714
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %.025.i = phi i64 [ %i.ar, %bb.d ], [ %i.bv, %.loopexit ] ; 2 uses
  %i.bb = and i64 %.025.i, %i.ay
  %i.bc = shl nsw i64 %i.bb, 6
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc ; 3 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16
  %i.bf = icmp eq <16 x i8> %i.be, %i.aw
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = zext i16 %i.bg to i32                   ; 2 uses
  %i.bi = and i32 %i.bh, 4095
  %.not45 = icmp eq i32 %i.bi, 0
  br i1 %.not45, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.bj = icmp ne ptr %i.bd, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bj)
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.024.0 = phi i32 [ %i.bt, %.critedge.i ], [ %i.bh, %.preheader ] ; 4 uses
  %i.bk = icmp ne i32 %.sroa.024.0, 0
  call void @llvm.assume(i1 %i.bk)
  %i.bl = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0, i1 true)
  %i.bm = shl nuw nsw i32 %i.bl, 2
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr i8, ptr %i.bd, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !19786
  %i.br = icmp eq i32 %i.bq, %i.ab
  br i1 %i.br, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSC_8PrefetchE.exit, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.f
  %i.bs = add nsw i32 %.sroa.024.0, -1
  %i.bt = and i32 %i.bs, %.sroa.024.0             ; 2 uses
  %i.bu = and i32 %i.bt, 4094
  %.not46 = icmp eq i32 %i.bu, 0
  br i1 %.not46, label %.loopexit, label %bb.f, !llvm.loop !778

.loopexit:                                        ; preds = %.critedge.i, %bb.e
  %i.bv = add i64 %i.at, %.025.i
  br label %bb.e, !llvm.loop !779

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSC_8PrefetchE.exit: ; preds = %bb.f
  %i.bw = getelementptr i8, ptr %i.bo, i64 16
  store i32 %i.b, ptr %i.bw, align 4, !tbaa !19786
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.aa ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !19800
  store <2 x ptr> %i.bz, ptr %i.d, align 8, !tbaa !19800
  store ptr null, ptr %i.by, align 8, !tbaa !20277
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.e, align 8, !tbaa !19720
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store i64 0, ptr %i.ca, align 8, !tbaa !19695
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !20331
  store ptr %i.cc, ptr %i.e, align 8, !tbaa !20331
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cb, align 8, !tbaa !20331
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !19676
  store i64 %i.ce, ptr %i.ca, align 8, !tbaa !19676
  store i64 0, ptr %i.cd, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit

_ZN5folly3f146detail21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS5_S7_EEPSD_SG_m.exit: ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSC_8PrefetchE.exit, %_ZSt10destroy_atISt4pairIKPKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache23StringQueueReverseEntryEEEvPT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISB_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS6_S8_EE_EEvSO_SQ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -4
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg.i.i ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !20322
  %.not = icmp ult i8 %i.d, 16
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !19715
  %i.f = load i32, ptr %1, align 4, !tbaa !19786
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19769
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = zext i64 %i.j to i128
  %i.l = mul nuw i128 %i.k, 14181476777654086739
  %i.m = lshr i128 %i.l, 64
  %i.n = trunc nuw i128 %i.m to i64
  %i.o = mul i64 %i.j, -4265267296055464877
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, -4265267296055464877       ; 2 uses
  %i.r = lshr i64 %i.q, 14
  %i.s = and i64 %i.r, 255
  %i.t = lshr i64 %i.q, 22
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.u = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.v = or disjoint i64 %i.u, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0 = phi i64 [ 1, %bb.a ], [ %i.v, %bb.b ]
  %.sroa.04.0 = phi i64 [ 0, %bb.a ], [ %i.t, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19695
  %i.y = add i64 %i.x, -256
  store i64 %i.y, ptr %i.w, align 8, !tbaa !19695
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %2 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19682
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i: ; preds = %bb.c
  store i8 0, ptr %i.z, align 1, !tbaa !19682
  %i.ab = load i8, ptr %i.c, align 2, !tbaa !20322
  %.not.i.i = icmp ult i8 %i.ab, 16
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !19695
  %i.ad = and i64 %i.ac, 255
  %notmask.i.i.i = shl nsw i64 -1, %i.ad
  %i.ae = xor i64 %notmask.i.i.i, -1              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19714 ; 4 uses
  %i.ah = and i64 %.sroa.04.0, %i.ae
  %i.ai = shl nuw nsw i64 %i.ah, 6                ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %.thread.i.i, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %bb.g, %bb.e
  %.010.lcssa.i.i = phi i8 [ 0, %bb.e ], [ -16, %bb.g ]
  %i.al = phi i64 [ %i.ai, %bb.e ], [ %i.ax, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 14 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !20322
  %i.ap = add i8 %i.ao, %.010.lcssa.i.i
  store i8 %i.ap, ptr %i.an, align 2, !tbaa !20322
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g
  %i.aq = phi i64 [ %i.ax, %bb.g ], [ %i.ai, %bb.e ]
  %.01126.i.i = phi i64 [ %i.av, %bb.g ], [ %.sroa.04.0, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 15 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !20321 ; 2 uses
  %.not.i17.i.i = icmp eq i8 %i.at, -2
  br i1 %.not.i17.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.au = add i8 %i.at, -1
  store i8 %i.au, ptr %i.as, align 1, !tbaa !20321
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.av = add i64 %.01126.i.i, %.sroa.5.0         ; 2 uses
  %i.aw = and i64 %i.av, %i.ae
  %i.ax = shl nsw i64 %i.aw, 6                    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ax
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %.thread.i.i, label %.lr.ph.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i, %.thread.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE12eraseKeyIntoImZNS1_11F14BasicMapIS7_E17tableEraseKeyIntoImRKNS_16variadic_noop_fnEEEmRKT_OT0_EUlOSt4pairIKmS6_EE_EEmSI_SK_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 2 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE8findImplImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.thread, label %bb.b, !prof !19683

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !19676  ; 3 uses
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw i128 %i.e, 14181476777654086739
  %i.g = lshr i128 %i.f, 64
  %i.h = trunc nuw i128 %i.g to i64
  %i.i = mul i64 %i.d, -4265267296055464877
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.j, -4265267296055464877       ; 2 uses
  %i.l = lshr i64 %i.k, 14
  %i.m = and i64 %i.l, 255
  %i.n = lshr i64 %i.k, 22                        ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1) ; 3 uses
  %i.o = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.p = or disjoint i64 %i.o, 1
  %i.q = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.r = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.t = and i64 %i.b, 255                        ; 2 uses
  %i.u = shl nuw i64 1, %i.t
  %notmask.i = shl nsw i64 -1, %i.t
  %i.v = xor i64 %notmask.i, -1
  %i.w = load ptr, ptr %0, align 8, !tbaa !19691
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i42 = phi i64 [ %i.u, %bb.b ], [ %i.au, %bb.e ]
  %.026.i41 = phi i64 [ %i.n, %bb.b ], [ %i.av, %bb.e ] ; 2 uses
  %i.x = and i64 %.026.i41, %i.v
  %i.y = shl nsw i64 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y ; 4 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = load <16 x i8>, ptr %i.z, align 16      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.ab, %i.s
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = and i32 %i.ae, 16383
  %.not = icmp eq i32 %i.af, 0
  %i.ag = extractelement <16 x i8> %i.ab, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ah = icmp ne ptr %i.z, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ah)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.012.0 = phi i32 [ %i.ar, %.critedge.i ], [ %i.ae, %.preheader ] ; 4 uses
  %i.ai = icmp ne i32 %.sroa.012.0, 0
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = getelementptr i8, ptr %i.z, i64 %i.al   ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19676
  %i.ap = icmp eq i64 %i.d, %i.ao
  br i1 %i.ap, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.aq = add nsw i32 %.sroa.012.0, -1
  %i.ar = and i32 %i.aq, %.sroa.012.0             ; 2 uses
  %i.as = and i32 %i.ar, 16382
  %.not36 = icmp eq i32 %i.as, 0
  br i1 %.not36, label %.loopexit, label %bb.d, !llvm.loop !721

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.at = icmp eq i8 %i.ag, 0
  br i1 %i.at, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE8findImplImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.thread, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.au = add i64 %.024.i42, -1                   ; 2 uses
  %i.av = add i64 %i.p, %.026.i41
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE8findImplImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.thread, label %bb.c, !llvm.loop !722

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr i8, ptr %i.am, i64 16
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.aw, i64 %i.ak, i64 %i.n, i64 %.sroa.speculated.i.i.i)
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE8findImplImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.thread

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE8findImplImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.thread: ; preds = %.loopexit, %bb.e, %bb.f, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %.loopexit ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695
  %i.c = add i64 %i.b, -256                       ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !19695
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  %i.f = ptrtoint ptr %1 to i64
  %i.g = or i64 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19767
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.c, 256
  br i1 %i.k, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEEEE17precheckedAdvanceEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -16
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.d, %bb.c
  br label %.critedge.i.i.i

bb.d:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %i.p, %bb.d ], [ %2, %bb.c ]
  %i.o = phi ptr [ %i.q, %bb.d ], [ %1, %bb.c ]
  %i.p = add i64 %i.n, -1                         ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19682
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEEEE17precheckedAdvanceEv.exit.i, !prof !19683, !llvm.loop !21710

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.t, %.critedge.i.i.i ], [ %i.m, %.critedge.i.i.i.preheader ]
  %i.t = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -256 ; 4 uses
  %i.u = load <16 x i8>, ptr %i.t, align 16, !tbaa !19682
  %i.v = icmp eq <16 x i8> %i.u, zeroinitializer
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = and i16 %i.w, 16383                      ; 2 uses
  %.not2.i.i = icmp eq i16 %i.x, 16383
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.e, !prof !19683, !llvm.loop !21711

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.y = xor i16 %i.x, 16383
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.z, i1 true)
  %i.ab = xor i32 %i.aa, 31
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = shl nuw nsw i64 %i.ac, 4
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.ag, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ], [ %i.p, %thread-pre-split.i.i ]
  %i.ah = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.ai = icmp samesign ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = ptrtoint ptr %.sroa.01.0.i to i64
  %i.ak = or i64 %i.ah, %i.aj
  store i64 %i.ak, ptr %i.h, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEEEE17precheckedAdvanceEv.exit.i
  %i.al = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -16
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %.neg.i.i.i ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19682
  %.not.i.i7 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i7, label %bb.f, label %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE8clearTagEm.exit.i

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEE.exit
  store i8 0, ptr %i.an, align 1, !tbaa !19682
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !19698
  %.not.i = icmp ult i8 %i.aq, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE8clearTagEm.exit.i
  %i.ar = shl i64 %4, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = load i64, ptr %i.a, align 8, !tbaa !19695
  %i.au = and i64 %i.at, 255
  %notmask.i.i = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !19691 ; 4 uses
  %i.ax = and i64 %3, %i.av
  %i.ay = shl nsw i64 %i.ax, 8                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.ba = icmp eq ptr %i.az, %i.am
  br i1 %i.ba, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.i, %bb.g
  %.010.lcssa.i = phi i8 [ 0, %bb.g ], [ -16, %bb.i ]
  %i.bb = phi i64 [ %i.ay, %bb.g ], [ %i.bn, %bb.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 14 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !19698
  %i.bf = add i8 %i.be, %.010.lcssa.i
  store i8 %i.bf, ptr %i.bd, align 2, !tbaa !19698
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %i.bg = phi i64 [ %i.bn, %bb.i ], [ %i.ay, %bb.g ]
  %.01126.i = phi i64 [ %i.bl, %bb.i ], [ %3, %bb.g ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 15 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !20313 ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bj, -2
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bk = add i8 %i.bj, -1
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !20313
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bl = add i64 %i.as, %.01126.i                ; 2 uses
  %i.bm = and i64 %i.bl, %i.av
  %i.bn = shl nsw i64 %i.bm, 8                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bn
  %i.bp = icmp eq ptr %i.bo, %i.am
  br i1 %i.bp, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEESB_ImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKmPKNS_18RegexMatchCacheKeyEEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19734  ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5folly3f146detail19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvE11destroyItemERPSt4pairIKS3_S5_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19720 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.e = load i8, ptr %i.d, align 1, !tbaa !19694
  %i.f = icmp eq i8 %i.e, -1
  br i1 %i.f, label %_ZNSt16allocator_traitsISaISt4pairIKN5folly18RegexMatchCacheKeyENS1_15RegexMatchCache17RegexToMatchEntryEEEE10deallocateERS7_PS6_m.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19695 ; 2 uses
  %i.i = and i64 %i.h, 255                        ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.j, align 1
  %i.k = zext i16 %.0.copyload.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.i
  %i.l = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.m = lshr i64 %i.l, 12
  %i.n = add nuw nsw i64 %i.m, 1
end_hunk_15
begin_hunk_16_@_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE:bb.a
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.f, %bb.g
  %i.ak = phi i64 [ %i.am, %bb.g ], [ %2, %bb.f ]
  %i.al = phi ptr [ %i.an, %bb.g ], [ %1, %bb.f ]
  %i.am = add i64 %i.ak, -1                       ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19682
  %.not.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEEE17precheckedAdvanceEv.exit.i, !prof !19683, !llvm.loop !718

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.aq, %.critedge.i.i.i ], [ %i.aj, %.critedge.i.i.i.preheader ]
  %i.aq = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -128 ; 4 uses
  %i.ar = load <16 x i8>, ptr %i.aq, align 16, !tbaa !19682
  %i.as = icmp eq <16 x i8> %i.ar, zeroinitializer
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = and i16 %i.at, 16383                    ; 2 uses
  %.not2.i.i = icmp eq i16 %i.au, 16383
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.h, !prof !19683, !llvm.loop !719

bb.h:                                             ; preds = %.critedge.i.i.i
  %i.av = xor i16 %i.au, 16383
  %i.aw = zext nneg i16 %i.av to i32
  %i.ax = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aw, i1 true)
  %i.ay = xor i32 %i.ax, 31
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = icmp ne ptr %i.aq, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = shl nuw nsw i64 %i.az, 3
  %i.bc = getelementptr i8, ptr %i.aq, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.h, %bb.e
  %.sroa.01.0.i = phi ptr [ null, %bb.e ], [ %i.bd, %bb.h ], [ %i.an, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.e ], [ %i.az, %bb.h ], [ %i.am, %thread-pre-split.i.i ]
  %i.be = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.bf = icmp samesign ult i64 %i.be, 16
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = lshr i64 %i.be, 1
  %i.bh = ptrtoint ptr %.sroa.01.0.i to i64
  %i.bi = or i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %i.ae, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit: ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvE11destroyItemERPSt4pairIKS3_S5_E.exit, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEEE17precheckedAdvanceEv.exit.i
  %i.bj = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -8
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.neg.i.i.i ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %2 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19682
  %.not.i.i7 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i7, label %bb.i, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE8clearTagEm.exit.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit
  store i8 0, ptr %i.bl, align 1, !tbaa !19682
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !19736
  %.not.i8 = icmp ult i8 %i.bo, 16
  br i1 %.not.i8, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE8clearTagEm.exit.i
  %i.bp = shl i64 %4, 1
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = load i64, ptr %i.w, align 8, !tbaa !19695
  %i.bs = and i64 %i.br, 255
  %notmask.i.i = shl nsw i64 -1, %i.bs
  %i.bt = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !19732 ; 4 uses
  %i.bv = and i64 %3, %i.bt
  %i.bw = shl nsw i64 %i.bv, 7                    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = icmp eq ptr %i.bx, %i.bk
  br i1 %i.by, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.l, %bb.j
  %.010.lcssa.i = phi i8 [ 0, %bb.j ], [ -16, %bb.l ]
  %i.bz = phi i64 [ %i.bw, %bb.j ], [ %i.cl, %bb.l ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 14 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !19736
  %i.cd = add i8 %i.cc, %.010.lcssa.i
  store i8 %i.cd, ptr %i.cb, align 2, !tbaa !19736
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE.exit

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %i.ce = phi i64 [ %i.cl, %bb.l ], [ %i.bw, %bb.j ]
  %.01126.i = phi i64 [ %i.cj, %bb.l ], [ %3, %bb.j ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 15 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !20299 ; 2 uses
  %.not.i17.i = icmp eq i8 %i.ch, -2
  br i1 %.not.i17.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.ci = add i8 %i.ch, -1
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !20299
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.cj = add i64 %i.bq, %.01126.i                ; 2 uses
  %i.ck = and i64 %i.cj, %i.bt
  %i.cl = shl nsw i64 %i.ck, 7                    ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cl
  %i.cn = icmp eq ptr %i.cm, %i.bk
  br i1 %i.cn, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESB_ImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5folly15RegexMatchCache9hasStringEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = icmp ult i64 %i.b, 512
  br i1 %i.c, label %bb.b, label %.noexc2

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i64 %i.b, 256
  br i1 %i.d, label %.thread86, label %.noexc

.noexc:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19675
  %i.g = and i64 %i.f, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !19763
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %.thread90, label %.thread86

.noexc2:                                          ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = zext i64 %i.l to i128
  %i.n = mul nuw i128 %i.m, 14181476777654086739
  %i.o = lshr i128 %i.n, 64
  %i.p = trunc nuw i128 %i.o to i64
  %i.q = mul i64 %i.l, -4265267296055464877
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, -4265267296055464877       ; 2 uses
  %i.t = lshr i64 %i.s, 14
  %i.u = and i64 %i.t, 255
  %i.v = lshr i64 %i.s, 22
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1) ; 2 uses
  %i.w = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.x = or disjoint i64 %i.w, 1
  %i.y = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.z = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ab = and i64 %i.b, 255                       ; 2 uses
  %i.ac = shl nuw i64 1, %i.ab
  %notmask.i = shl nsw i64 -1, %i.ab
  %i.ad = xor i64 %notmask.i, -1
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !20271
  br label %.noexc5

.noexc5:                                          ; preds = %.noexc2, %bb.c
  %.024.i.i126 = phi i64 [ %i.ac, %.noexc2 ], [ %i.bc, %bb.c ]
  %.026.i.i125 = phi i64 [ %i.v, %.noexc2 ], [ %i.bd, %bb.c ] ; 2 uses
  %i.af = and i64 %.026.i.i125, %i.ad
  %i.ag = shl nsw i64 %i.af, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.ai, i32 0, i32 3, i32 1)
  %i.aj = load <16 x i8>, ptr %i.ah, align 16     ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.aj, %i.aa
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = and i32 %i.am, 16383
  %.not = icmp eq i32 %i.an, 0
  %i.ao = extractelement <16 x i8> %i.aj, i64 15
  br i1 %.not, label %.loopexit124, label %.noexc8.preheader

.noexc8.preheader:                                ; preds = %.noexc5
  %i.ap = icmp ne ptr %i.ah, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ap)
  br label %.noexc8

.noexc8:                                          ; preds = %.noexc8.preheader, %.critedge.i.i
  %.sroa.053.0 = phi i32 [ %i.az, %.critedge.i.i ], [ %i.am, %.noexc8.preheader ] ; 4 uses
  %i.aq = icmp ne i32 %.sroa.053.0, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.053.0, i1 true)
  %i.as = shl nuw nsw i32 %i.ar, 4
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19763
  %i.ax = icmp eq ptr %1, %i.aw
  br i1 %i.ax, label %.thread90, label %.critedge.i.i, !prof !19685

.critedge.i.i:                                    ; preds = %.noexc8
  %i.ay = add nsw i32 %.sroa.053.0, -1
  %i.az = and i32 %i.ay, %.sroa.053.0             ; 2 uses
  %i.ba = and i32 %i.az, 16382
  %.not119 = icmp eq i32 %i.ba, 0
  br i1 %.not119, label %.loopexit124, label %.noexc8, !llvm.loop !768

.loopexit124:                                     ; preds = %.critedge.i.i, %.noexc5
  %i.bb = icmp eq i8 %i.ao, 0
  br i1 %i.bb, label %.thread86, label %bb.c, !prof !19685

bb.c:                                             ; preds = %.loopexit124
  %i.bc = add i64 %.024.i.i126, -1                ; 2 uses
  %i.bd = add i64 %i.x, %.026.i.i125
  %.not.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i, label %.thread86, label %.noexc5, !llvm.loop !769

.thread86:                                        ; preds = %.loopexit124, %bb.c, %.noexc, %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !19695 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 512
  br i1 %i.bg, label %bb.d, label %.noexc32

bb.d:                                             ; preds = %.thread86
  %i.bh = icmp samesign ult i64 %i.bf, 256
  br i1 %i.bh, label %.thread90, label %.noexc30

.noexc30:                                         ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !19765
  %i.bk = and i64 %i.bj, -16
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load ptr, ptr %i.bl, align 16, !tbaa !19763
  %i.bn = icmp eq ptr %1, %i.bm
  br label %.thread90

.noexc32:                                         ; preds = %.thread86
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bp = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bq = zext i64 %i.bp to i128
  %i.br = mul nuw i128 %i.bq, 14181476777654086739
  %i.bs = lshr i128 %i.br, 64
  %i.bt = trunc nuw i128 %i.bs to i64
  %i.bu = mul i64 %i.bp, -4265267296055464877
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = mul i64 %i.bv, -4265267296055464877     ; 2 uses
  %i.bx = lshr i64 %i.bw, 14
  %i.by = and i64 %i.bx, 255
  %i.bz = lshr i64 %i.bw, 22
  %.sroa.speculated.i.i.i42 = tail call i64 @llvm.umax.i64(i64 %i.by, i64 1) ; 2 uses
  %i.ca = shl nuw nsw i64 %.sroa.speculated.i.i.i42, 1
  %i.cb = or disjoint i64 %i.ca, 1
  %i.cc = trunc nuw i64 %.sroa.speculated.i.i.i42 to i8
  %i.cd = insertelement <16 x i8> poison, i8 %i.cc, i64 0
  %i.ce = shufflevector <16 x i8> %i.cd, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cf = and i64 %i.bf, 255                      ; 2 uses
  %i.cg = shl nuw i64 1, %i.cf
  %notmask.i45 = shl nsw i64 -1, %i.cf
  %i.ch = xor i64 %notmask.i45, -1
  %i.ci = load ptr, ptr %i.bo, align 8, !tbaa !19725
  br label %.noexc35

.noexc35:                                         ; preds = %.noexc32, %bb.e
  %.024.i.i11128 = phi i64 [ %i.cg, %.noexc32 ], [ %i.dg, %bb.e ]
  %.026.i.i10127 = phi i64 [ %i.bz, %.noexc32 ], [ %i.dh, %bb.e ] ; 2 uses
  %i.cj = and i64 %.026.i.i10127, %i.ch
  %i.ck = shl nsw i64 %i.cj, 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck ; 4 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.cm, i32 0, i32 3, i32 1)
  %i.cn = load <16 x i8>, ptr %i.cl, align 16     ; 2 uses
  %i.co = icmp eq <16 x i8> %i.cn, %i.ce
  %i.cp = bitcast <16 x i1> %i.co to i16
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = and i32 %i.cq, 16383
  %.not120 = icmp eq i32 %i.cr, 0
  %i.cs = extractelement <16 x i8> %i.cn, i64 15
  br i1 %.not120, label %.loopexit, label %.noexc38.preheader

.noexc38.preheader:                               ; preds = %.noexc35
  %i.ct = icmp ne ptr %i.cl, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ct)
  br label %.noexc38

.noexc38:                                         ; preds = %.noexc38.preheader, %.critedge.i.i29
  %.sroa.064.0 = phi i32 [ %i.dd, %.critedge.i.i29 ], [ %i.cq, %.noexc38.preheader ] ; 4 uses
  %i.cu = icmp ne i32 %.sroa.064.0, 0
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.064.0, i1 true)
  %i.cw = shl nuw nsw i32 %i.cv, 4
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %i.cl, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !19763
  %i.db = icmp eq ptr %1, %i.da
  br i1 %i.db, label %.thread90, label %.critedge.i.i29, !prof !19685

.critedge.i.i29:                                  ; preds = %.noexc38
  %i.dc = add nsw i32 %.sroa.064.0, -1
  %i.dd = and i32 %i.dc, %.sroa.064.0             ; 2 uses
  %i.de = and i32 %i.dd, 16382
  %.not121 = icmp eq i32 %i.de, 0
  br i1 %.not121, label %.loopexit, label %.noexc38, !llvm.loop !764

.loopexit:                                        ; preds = %.critedge.i.i29, %.noexc35
  %i.df = icmp eq i8 %i.cs, 0
  br i1 %i.df, label %.thread90, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.dg = add i64 %.024.i.i11128, -1              ; 2 uses
  %i.dh = add i64 %i.cb, %.026.i.i10127
  %.not.i.i12 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i12, label %.thread90, label %.noexc35, !llvm.loop !765

.thread90:                                        ; preds = %.noexc8, %.loopexit, %bb.e, %.noexc38, %bb.d, %.noexc30, %.noexc
  %i.di = phi i1 [ true, %.noexc ], [ true, %.noexc38 ], [ %i.bn, %.noexc30 ], [ false, %bb.d ], [ false, %.loopexit ], [ false, %bb.e ], [ true, %.noexc8 ]
  ret i1 %i.di
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15RegexMatchCache9addStringEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.452", align 8    ; 3 uses
  %3 = alloca %"struct.std::pair.452", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.513", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.221", align 1    ; 3 uses
  %6 = alloca %"struct.std::pair.469", align 8    ; 5 uses
  %7 = alloca %"class.std::tuple.472", align 8    ; 4 uses
  %8 = alloca %"class.std::tuple.221", align 1    ; 3 uses
  %9 = alloca %"struct.std::pair.501", align 8    ; 4 uses
  %10 = alloca %"class.std::tuple.472", align 8   ; 4 uses
  %11 = alloca %"class.std::tuple.221", align 1   ; 3 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %12 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !19763
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40, !noalias !21740
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40, !noalias !21740
  store ptr %i.a, ptr %10, align 8, !tbaa !20285, !alias.scope !21741, !noalias !21740
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40, !noalias !21740
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw i128 %i.f, 14181476777654086739
  %i.h = lshr i128 %i.g, 64
  %i.i = trunc nuw i128 %i.h to i64
  %i.j = mul i64 %i.e, -4265267296055464877
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4265267296055464877       ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = and i64 %i.m, 255
  %i.o = lshr i64 %i.l, 22
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.501") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 %i.o, i64 %.sroa.speculated.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11), !noalias !21740
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40, !noalias !21740
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40, !noalias !21740
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !20155, !range !20060, !noalias !21742, !noundef !1339
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40, !noalias !21740
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19695
  %i.u = icmp ult i64 %i.t, 256
  br i1 %i.u, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40, !noalias !21743
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40, !noalias !21743
  store ptr %i.a, ptr %7, align 8, !tbaa !20285, !alias.scope !21744, !noalias !21743
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40, !noalias !21743
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !19763, !noalias !21745
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = zext i64 %i.x to i128
  %i.z = mul nuw i128 %i.y, 14181476777654086739
  %i.aa = lshr i128 %i.z, 64
  %i.ab = trunc nuw i128 %i.aa to i64
  %i.ac = mul i64 %i.x, -4265267296055464877
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = mul i64 %i.ad, -4265267296055464877     ; 2 uses
  %i.af = lshr i64 %i.ae, 14
  %i.ag = and i64 %i.af, 255
  %i.ah = lshr i64 %i.ae, 22
  %.sroa.speculated.i.i.i.i.i32 = call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.469") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 %i.ah, i64 %.sroa.speculated.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40, !noalias !21743
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40, !noalias !21743
  %.sroa.03.0.copyload.i33 = load ptr, ptr %6, align 8, !tbaa !20287, !noalias !21743
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !20155, !range !20060, !noalias !21746, !noundef !1339
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40, !noalias !21743
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.critedge, label %bb.e, !prof !19685

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull @.str.288, i32 noundef 354)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.299, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.300, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #42
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit45

bb.i:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit45

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g, %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #42
  unreachable

.critedge:                                        ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i33, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = load i64, ptr %i.as, align 8, !tbaa !19761 ; 3 uses
  %i.au = and i64 %i.at, -8                       ; 2 uses
  %.not75 = icmp eq i64 %i.au, 0
  br i1 %.not75, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = shl i64 %i.at, 1
  %i.ax = and i64 %i.aw, 14
  %i.ay = lshr i64 %i.at, 3
  %i.az = and i64 %i.ay, 1
  %i.ba = or disjoint i64 %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail21NodeContainerIteratorIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit
  %.sroa.048.077 = phi ptr [ %i.av, %.lr.ph ], [ %.sroa.048.1, %_ZN5folly3f146detail21NodeContainerIteratorIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit ] ; 3 uses
  %.sroa.9.076 = phi i64 [ %i.ba, %.lr.ph ], [ %.sroa.9.3, %_ZN5folly3f146detail21NodeContainerIteratorIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit ] ; 3 uses
  %i.bc = load ptr, ptr %.sroa.048.077, align 8, !tbaa !19734 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !19769
  %i.bd = invoke noundef i64 @_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14index_of_valueERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.l unwind label %bb.u       ; 5 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.be = load i64, ptr %i.ar, align 8, !tbaa !19676 ; 2 uses
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.m, label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bg = shl i64 %i.be, 1
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bh, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !19676
  br label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i: ; preds = %bb.m, %bb.l
  %.sroa.3.0.i.i = phi i64 [ %.sroa.3.0.copyload.i.i, %bb.m ], [ 64, %bb.l ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.m ], [ %i.ar, %bb.l ]
  %i.bi = icmp ult i64 %i.bd, %.sroa.3.0.i.i
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i
  %i.bj = icmp eq i64 %.sroa.3.0.i.i, 64
  %i.bk = icmp eq i64 %i.bd, 63
  %or.cond.i = and i1 %i.bk, %i.bj
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i
  %i.bl = invoke { ptr, i64 } @_ZN5folly28RegexMatchCacheDynamicBitset8reserve_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i64 noundef %i.bd)
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.o
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0
  br label %bb.p
end_hunk_16
begin_hunk_17_@_ZN5folly15RegexMatchCache9addStringEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.bt = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.bu = zext i64 %i.bt to i128
  %i.bv = mul nuw i128 %i.bu, 14181476777654086739
  %i.bw = lshr i128 %i.bv, 64
  %i.bx = trunc nuw i128 %i.bw to i64
  %i.by = mul i64 %i.bt, -4265267296055464877
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = mul i64 %i.bz, -4265267296055464877     ; 2 uses
  %i.cb = lshr i64 %i.ca, 14
  %i.cc = and i64 %i.cb, 255
  %i.cd = lshr i64 %i.ca, 22
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJOS6_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.452") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 %i.cd, i64 %.sroa.speculated.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !21747
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !21747
  %i.ce = load ptr, ptr %3, align 8, !tbaa !20284, !noalias !21747, !nonnull !1339, !noundef !1339
  %i.cf = load ptr, ptr %i.bb, align 8, !tbaa !19715, !noalias !21747, !nonnull !1339, !noundef !1339
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !19786, !noalias !21747
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %i.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !21747
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !21749
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !19763, !noalias !21750
  %i.cl = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cm = zext i64 %i.cl to i128
  %i.cn = mul nuw i128 %i.cm, 14181476777654086739
  %i.co = lshr i128 %i.cn, 64
  %i.cp = trunc nuw i128 %i.co to i64
  %i.cq = mul i64 %i.cl, -4265267296055464877
  %i.cr = xor i64 %i.cq, %i.cp
  %i.cs = mul i64 %i.cr, -4265267296055464877     ; 2 uses
  %i.ct = lshr i64 %i.cs, 14
  %i.cu = and i64 %i.ct, 255
  %i.cv = lshr i64 %i.cs, 22
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE19tryEmplaceValueImplISB_JRKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.452") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 %i.cv, i64 %.sroa.speculated.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc39 unwind label %bb.x

.noexc39:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !21749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  %i.cw = getelementptr inbounds i8, ptr %.sroa.048.077, i64 -16
  %.neg.i.i.i = mul nsw i64 %.sroa.9.076, -8
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %.neg.i.i.i ; 2 uses
  %.not19.i5.i = icmp eq i64 %.sroa.9.076, 0
  br i1 %.not19.i5.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

.critedge.i.i.preheader:                          ; preds = %bb.r, %.noexc39
  br label %.critedge.i.i

bb.r:                                             ; preds = %thread-pre-split.i
  %.not19.i.i = icmp eq i64 %i.da, 0
  br i1 %.not19.i.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %.noexc39, %bb.r
  %i.cy = phi i64 [ %i.da, %bb.r ], [ %.sroa.9.076, %.noexc39 ]
  %i.cz = phi ptr [ %i.db, %bb.r ], [ %.sroa.048.077, %.noexc39 ]
  %i.da = add nsw i64 %i.cy, -1                   ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !19682
  %.not.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i, label %bb.r, label %_ZN5folly3f146detail21NodeContainerIteratorIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit, !prof !19683, !llvm.loop !718

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %bb.s
  %.017.i.i = phi ptr [ %i.dh, %bb.s ], [ %i.cx, %.critedge.i.i.preheader ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 14
  %i.df = load i8, ptr %i.de, align 1, !tbaa !19682
  %i.dg = and i8 %i.df, 15
  %.not2.i = icmp eq i8 %i.dg, 0
  br i1 %.not2.i, label %bb.s, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, !prof !19685

bb.s:                                             ; preds = %.critedge.i.i
  %i.dh = getelementptr inbounds i8, ptr %.017.i.i, i64 -128 ; 4 uses
  %i.di = load <16 x i8>, ptr %i.dh, align 16, !tbaa !19682
  %i.dj = icmp eq <16 x i8> %i.di, zeroinitializer
  %i.dk = bitcast <16 x i1> %i.dj to i16
  %i.dl = and i16 %i.dk, 16383                    ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.017.i.i, i64 -256
  call void @llvm.prefetch.p0(ptr nonnull %i.dm, i32 0, i32 3, i32 1)
  %.not3.i = icmp eq i16 %i.dl, 16383
  br i1 %.not3.i, label %.critedge.i.i, label %bb.t, !prof !19683, !llvm.loop !719

bb.t:                                             ; preds = %bb.s
  %i.dn = xor i16 %i.dl, 16383
  %i.do = zext nneg i16 %i.dn to i32
  %i.dp = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.do, i1 true)
  %i.dq = xor i32 %i.dp, 31
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ds = icmp ne ptr %i.dh, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ds)
  %i.dt = shl nuw nsw i64 %i.dr, 3
  %i.du = getelementptr i8, ptr %i.dh, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 16
  br label %_ZN5folly3f146detail21NodeContainerIteratorIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit

_ZN5folly3f146detail21NodeContainerIteratorIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit: ; preds = %thread-pre-split.i, %bb.t
  %.sroa.9.3 = phi i64 [ %i.dr, %bb.t ], [ %i.da, %thread-pre-split.i ]
  %.sroa.048.1 = phi ptr [ %i.dv, %bb.t ], [ %i.db, %thread-pre-split.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.048.1, null
  br i1 %.not, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %bb.k

bb.u:                                             ; preds = %bb.k
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit45

bb.v:                                             ; preds = %bb.o
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit45

bb.w:                                             ; preds = %bb.p
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.q
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.x ], [ %i.dy, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit45

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit: ; preds = %_ZN5folly3f146detail21NodeContainerIteratorIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit, %.critedge.i.i, %.critedge, %bb.b, %bb.a
  ret void

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit45: ; preds = %bb.y, %bb.v, %bb.u, %bb.i, %bb.h
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.ap, %bb.i ], [ %i.dw, %bb.u ], [ %i.dx, %bb.v ], [ %.pn, %bb.y ]
  call void @_ZN5folly15RegexMatchCache6repairEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #40, !inline_history !774
  resume { ptr, i32 } %.pn27.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE19tryEmplaceValueImplISB_JRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISP_ISL_SD_EEEEEbESP_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.501") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !20271 ; 3 uses
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i82 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.e ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %i.m = and i64 %.026.i81, %i.k
  %i.n = shl nsw i64 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not71 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.ag, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19763
  %i.ae = icmp eq ptr %i.l, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.af = add nsw i32 %.sroa.044.0, -1
  %i.ag = and i32 %i.af, %.sroa.044.0             ; 2 uses
  %i.ah = and i32 %i.ag, 16382
  %.not72 = icmp eq i32 %i.ah, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !768

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.aj = add i64 %.024.i82, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.026.i81
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !769

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  br label %bb.o

.thread69:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi93 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19682
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi93              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ar = shl nuw i64 1, %.pre-phi93
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %1, align 8, !tbaa !20271
  %.pre91 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi93, %.thread69 ], [ %.pre91, %bb.g ]
  %i.as = phi ptr [ %.pre, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi
  %i.at = xor i64 %notmask.i33, -1                ; 2 uses
  %i.au = and i64 %2, %i.at
  %i.av = shl nsw i64 %i.au, 8                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !19682
  %i.ay = icmp eq <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.ba, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bd = phi i64 [ %i.av, %bb.h ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20350 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bg, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !20350
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bi = add i64 %i.bc, %.030                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = shl nsw i64 %i.bj, 8                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.bp, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21751

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE25incrOutboundOverflowCountEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk ; 2 uses
  %i.br = extractelement <16 x i8> %i.bm, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !20351
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.k ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !19682
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !19682
  %i.ca = shl nuw nsw i64 %i.bv, 4
  %i.cb = getelementptr i8, ptr %.1, i64 %i.ca    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 4 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ce = load i64, ptr %6, align 8, !tbaa !20285
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !19763
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !20354
  %i.ch = getelementptr i8, ptr %i.cb, i64 24
  store i64 0, ptr %i.ch, align 8, !tbaa !19681
  %i.ci = ptrtoint ptr %i.cc to i64
  %i.cj = or i64 %i.ci, %i.bv                     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !19675
  %i.cm = icmp ult i64 %i.cl, %i.cj
  br i1 %i.cm, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE6setTagEmm.exit, %bb.n
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !19695 ; 2 uses
  %i.co = and i64 %i.cn, -256
  %i.cp = add i64 %i.co, 256
  %i.cq = and i64 %i.cn, 255
  %i.cr = or disjoint i64 %i.cp, %i.cq
  store i64 %i.cr, ptr %i.a, align 8, !tbaa !19695
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit
  %.sink109 = phi ptr [ %i.al, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ]
  %.lcssa104.sink = phi i64 [ %i.z, %bb.f ], [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKSB_EESK_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairISL_SD_EEEEESR_ImmEDpOT_.exit ]
  store ptr %.sink109, ptr %0, align 8, !tbaa !21753
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa104.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cs, align 8, !tbaa !21756
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #33 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19695
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
end_hunk_17
begin_hunk_18_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmm:bb.a
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !19682 ; 3 uses
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %bb.x, label %bb.y, !llvm.loop !21765

bb.y:                                             ; preds = %bb.x
  %i.fx = load ptr, ptr %0, align 8, !tbaa !20271
  %i.fy = shl nsw i64 %.0, 8
  %i.fz = getelementptr inbounds i8, ptr %i.fx, i64 %i.fy ; 2 uses
  %i.ga = zext nneg i8 %i.fv to i64
  %i.gb = add nsw i64 %i.ga, -1                   ; 2 uses
  %i.gc = shl nuw nsw i64 %i.gb, 4
  %i.gd = getelementptr i8, ptr %i.fz, i64 %i.gc
  %i.ge = getelementptr i8, ptr %i.gd, i64 16     ; 2 uses
  %i.gf = icmp ne ptr %i.fz, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.gf)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ge) ]
  %i.gg = icmp ult i8 %i.fv, 17
  call void @llvm.assume(i1 %i.gg)
  %i.gh = ptrtoint ptr %i.ge to i64
  %i.gi = or i64 %i.gb, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !19676
  br i1 %.not, label %bb.z, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %.0116169, i64 noundef %4) #41
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge139, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !20155
  %i.gk = load i64, ptr %i.d, align 8, !tbaa !19676
  %.not.i.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gl = load ptr, ptr %i.c, align 8, !tbaa !20355 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gm = load i64, ptr %i.e, align 8, !tbaa !19676
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gm) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !20291, !range !20060, !noundef !1339
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21770, !nonnull !1339
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20155, !range !20060, !noundef !1339
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !19685

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21771, !nonnull !1339, !align !19737
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19676
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21772, !nonnull !1339, !align !19737
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20355
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21773, !nonnull !1339, !align !19737
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19676
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21774 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21775, !nonnull !1339, !align !19737
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19794
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21776, !nonnull !1339, !align !19737
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19676
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21772, !nonnull !1339, !align !19737
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20355
  store ptr %i.z, ptr %i.q, align 8, !tbaa !20271
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21777, !nonnull !1339, !align !19737
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19676 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !19695
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !19695
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #40
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJOS6_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.452") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread69_crit_edge, label %bb.b

..thread69_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19714
  %.pre92 = shl nuw i64 1, %i.b
  br label %.thread69

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19714 ; 3 uses
  %i.n = load ptr, ptr %1, align 8
  %i.o = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.023.i82 = phi i64 [ %i.j, %bb.b ], [ %i.ao, %bb.e ]
  %.025.i81 = phi i64 [ %2, %bb.b ], [ %i.ap, %bb.e ] ; 2 uses
  %i.p = and i64 %.025.i81, %i.k
  %i.q = shl nsw i64 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q ; 3 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, %i.h
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 4095
  %.not71 = icmp eq i32 %i.w, 0
  %i.x = extractelement <16 x i8> %i.s, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.y = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.y)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.al, %.critedge.i ], [ %i.v, %.preheader ] ; 4 uses
  %i.z = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19786
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19769
  %i.aj = icmp eq ptr %i.o, %i.ai
  br i1 %i.aj, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.ak = add nsw i32 %.sroa.044.0, -1
  %i.al = and i32 %i.ak, %.sroa.044.0             ; 2 uses
  %i.am = and i32 %i.al, 4094
  %.not72 = icmp eq i32 %i.am, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !766

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.an = icmp eq i8 %i.x, 0
  br i1 %i.an, label %.thread69, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.ao = add i64 %.023.i82, -1                   ; 2 uses
  %i.ap = add i64 %i.e, %.025.i81
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !767

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %i.ad, i64 16
  br label %bb.n

.thread69:                                        ; preds = %bb.e, %.loopexit, %..thread69_crit_edge
  %.pre-phi93 = phi i64 [ %.pre92, %..thread69_crit_edge ], [ %i.j, %.loopexit ], [ %i.j, %bb.e ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread69_crit_edge ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ]
  %i.ar = phi ptr [ %.pre, %..thread69_crit_edge ], [ %i.m, %.loopexit ], [ %i.m, %bb.e ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.0.copyload.i.i = load i16, ptr %i.as, align 1
  %i.at = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.au = add i64 %.pre-phi93, -1
  %i.av = lshr i64 %i.au, 12
  %i.aw = add nuw nsw i64 %i.av, 1
  %i.ax = mul i64 %i.aw, %i.at                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ax
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi93, i64 noundef %i.at, i64 noundef %i.ax)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !19695
  %.pre90 = load ptr, ptr %i.ay, align 8, !tbaa !19714
  %.pre94 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi95 = phi i64 [ %.pre-phi, %.thread69 ], [ %.pre94, %bb.g ]
  %i.az = phi ptr [ %i.ar, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi95
  %i.ba = xor i64 %notmask.i33, -1                ; 2 uses
  %i.bb = and i64 %2, %i.ba
  %i.bc = shl nsw i64 %i.bb, 6                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16, !tbaa !19682
  %i.bf = icmp eq <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 4095                     ; 2 uses
  %.not73 = icmp eq i16 %i.bh, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bi = shl i64 %3, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bk = phi i64 [ %i.bc, %bb.h ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.bp, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 15 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20321 ; 2 uses
  %.not.i34 = icmp eq i8 %i.bn, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = add i8 %i.bn, 1
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !20321
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bp = add i64 %i.bj, %.030                    ; 2 uses
  %i.bq = and i64 %i.bp, %i.ba
  %i.br = shl nsw i64 %i.bq, 6                    ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br
  %i.bt = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bu = icmp eq <16 x i8> %i.bt, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = and i16 %i.bv, 4095                     ; 2 uses
  %.not74 = icmp eq i16 %i.bw, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !21778

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.br ; 2 uses
  %i.by = extractelement <16 x i8> %i.bt, i64 14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 14
  %i.ca = add i8 %i.by, 16
  store i8 %i.ca, ptr %i.bz, align 2, !tbaa !20322
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.bh, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bw, %bb.k ]
  %.1 = phi ptr [ %i.bd, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bx, %bb.k ] ; 3 uses
  %i.cb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.cc = zext nneg i16 %i.cb to i64              ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !19682
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.cg = trunc i64 %3 to i8
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !19682
  %i.ch = shl nuw nsw i64 %i.cc, 2
  %i.ci = getelementptr i8, ptr %.1, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 16     ; 3 uses
  %i.ck = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ck)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !19695
  %i.cm = lshr i64 %i.cl, 8                       ; 2 uses
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !19786
  %i.co = load ptr, ptr %1, align 8, !tbaa !19715, !nonnull !1339, !noundef !1339
  %i.cp = and i64 %i.cm, 4294967295
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cp ; 4 uses
  %i.cr = load i64, ptr %6, align 8, !tbaa !20282
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !19769
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !20328
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i64 0, ptr %i.cu, align 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.cv, align 8, !tbaa !19720
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i64 0, ptr %i.cw, align 8, !tbaa !19695
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !19695 ; 2 uses
  %i.cy = and i64 %i.cx, -256
  %i.cz = add i64 %i.cy, 256
  %i.da = and i64 %i.cx, 255
  %i.db = or disjoint i64 %i.cz, %i.da
  store i64 %i.db, ptr %i.a, align 8, !tbaa !19695
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink110 = phi ptr [ %i.aq, %bb.f ], [ %i.cj, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa105.sink = phi i64 [ %i.ab, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink110, ptr %0, align 8, !tbaa !19861
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa105.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !19676
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.dc, align 8, !tbaa !20330
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15RegexMatchCache11eraseStringEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !19763
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19695 ; 3 uses
  %i.e = icmp ult i64 %i.d, 512
  br i1 %i.e, label %bb.b, label %.noexc53

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i64 %i.d, 256
  br i1 %i.f, label %.thread395, label %.noexc51

.noexc51:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19765 ; 2 uses
  %i.i = and i64 %i.h, -16
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = and i64 %i.h, 15
  %i.l = load ptr, ptr %i.j, align 16, !tbaa !19763
  %i.m = icmp eq ptr %1, %i.l
  br i1 %i.m, label %.thread400, label %.thread395

.noexc53:                                         ; preds = %bb.a
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw i128 %i.o, 14181476777654086739
  %i.q = lshr i128 %i.p, 64
  %i.r = trunc nuw i128 %i.q to i64
  %i.s = mul i64 %i.n, -4265267296055464877
  %i.t = xor i64 %i.s, %i.r
  %i.u = mul i64 %i.t, -4265267296055464877       ; 2 uses
  %i.v = lshr i64 %i.u, 14
  %i.w = and i64 %i.v, 255
  %i.x = lshr i64 %i.u, 22
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1) ; 2 uses
  %i.y = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.z = or disjoint i64 %i.y, 1
  %i.aa = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ab = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ad = and i64 %i.d, 255                       ; 2 uses
  %i.ae = shl nuw i64 1, %i.ad
  %notmask.i = shl nsw i64 -1, %i.ad
  %i.af = xor i64 %notmask.i, -1
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !19725
  br label %.noexc56

.noexc56:                                         ; preds = %.noexc53, %bb.c
  %.024.i.i553 = phi i64 [ %i.ae, %.noexc53 ], [ %i.be, %bb.c ]
  %.026.i.i552 = phi i64 [ %i.x, %.noexc53 ], [ %i.bf, %bb.c ] ; 2 uses
  %i.ah = and i64 %.026.i.i552, %i.af
  %i.ai = shl nsw i64 %i.ah, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 4 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 144
  tail call void @llvm.prefetch.p0(ptr %i.ak, i32 0, i32 3, i32 1)
  %i.al = load <16 x i8>, ptr %i.aj, align 16     ; 2 uses
  %i.am = icmp eq <16 x i8> %i.al, %i.ac
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = and i32 %i.ao, 16383
  %.not = icmp eq i32 %i.ap, 0
  %i.aq = extractelement <16 x i8> %i.al, i64 15
  br i1 %.not, label %.loopexit518, label %.noexc59.preheader

.noexc59.preheader:                               ; preds = %.noexc56
  %i.ar = icmp ne ptr %i.aj, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ar)
  br label %.noexc59

.noexc59:                                         ; preds = %.noexc59.preheader, %.critedge.i.i50
  %.sroa.0311.0 = phi i32 [ %i.bb, %.critedge.i.i50 ], [ %i.ao, %.noexc59.preheader ] ; 4 uses
  %i.as = icmp ne i32 %.sroa.0311.0, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0311.0, i1 true)
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = getelementptr i8, ptr %i.aj, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19763
  %i.az = icmp eq ptr %1, %i.ay
  br i1 %i.az, label %.thread400.loopexit, label %.critedge.i.i50, !prof !19685

.critedge.i.i50:                                  ; preds = %.noexc59
  %i.ba = add nsw i32 %.sroa.0311.0, -1
  %i.bb = and i32 %i.ba, %.sroa.0311.0            ; 2 uses
  %i.bc = and i32 %i.bb, 16382
  %.not496 = icmp eq i32 %i.bc, 0
  br i1 %.not496, label %.loopexit518, label %.noexc59, !llvm.loop !764

.loopexit518:                                     ; preds = %.critedge.i.i50, %.noexc56
  %i.bd = icmp eq i8 %i.aq, 0
  br i1 %i.bd, label %.thread395, label %bb.c, !prof !19685

bb.c:                                             ; preds = %.loopexit518
  %i.be = add i64 %.024.i.i553, -1                ; 2 uses
  %i.bf = add i64 %i.z, %.026.i.i552
  %.not.i.i35 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i35, label %.thread395, label %.noexc56, !llvm.loop !765

.thread400.loopexit:                              ; preds = %.noexc59
  %i.bg = getelementptr i8, ptr %i.aw, i64 16
  br label %.thread400

.thread400:                                       ; preds = %.thread400.loopexit, %.noexc51
  %.sroa.7310.1406 = phi i64 [ %i.k, %.noexc51 ], [ %i.au, %.thread400.loopexit ] ; 4 uses
  %.sroa.0309.1405 = phi ptr [ %i.j, %.noexc51 ], [ %i.bg, %.thread400.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0309.1405, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !19676 ; 2 uses
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, label %.lr.ph.i.i.i.preheader

_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit: ; preds = %.thread400
  %i.bk = shl i64 %i.bi, 1
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !19766 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !19676 ; 2 uses
  %.not.i165 = icmp eq i64 %.sroa.3.0.copyload.i.i.i, 0
  br i1 %.not.i165, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.thread400, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit
  %.sroa.0.0.i.i.i637 = phi ptr [ %.sroa.0.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.bh, %.thread400 ] ; 3 uses
  %.sroa.3.0.i.i.i635 = phi i64 [ %.sroa.3.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ 64, %.thread400 ] ; 3 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.d
  %.01422.i.i.i = phi i64 [ %i.bu, %bb.d ], [ 0, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %i.bm = lshr i64 %.01422.i.i.i, 6
  %i.bn = and i64 %.01422.i.i.i, 63
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i637, i64 %i.bm
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !19676, !noalias !21783
  %i.bq = lshr i64 %i.bp, %i.bn                   ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i, label %bb.d, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bq, i1 true)
  %i.bs = add i64 %i.br, %.01422.i.i.i
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.bt = and i64 %.01422.i.i.i, -64
  %i.bu = add i64 %i.bt, 64                       ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %.sroa.3.0.i.i.i635
  br i1 %i.bv, label %.lr.ph.i.i.i, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, !llvm.loop !720

_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit: ; preds = %bb.d, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, %.thread.i.i.i
  %.sroa.0.0.i.i.i638 = phi ptr [ %.sroa.0.0.i.i.i637, %.thread.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %.sroa.0.0.i.i.i637, %bb.d ]
  %.sroa.3.0.i.i.i636 = phi i64 [ %.sroa.3.0.i.i.i635, %.thread.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %.sroa.3.0.i.i.i635, %bb.d ] ; 4 uses
  %.2.i.i.i = phi i64 [ %i.bs, %.thread.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.bu, %bb.d ] ; 2 uses
  %.not497558 = icmp eq i64 %.2.i.i.i, %.sroa.3.0.i.i.i636
  br i1 %.not497558, label %.noexc98, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %bb.j

.noexc98:                                         ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit
  %.neg.i.i.i = mul nsw i64 %.sroa.7310.1406, -16 ; 2 uses
  %i.bz = getelementptr i8, ptr %.sroa.0309.1405, i64 %.neg.i.i.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 -2
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !19727
  %.not.i175 = icmp ult i8 %i.cb, 16
  br i1 %.not.i175, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc98
  %i.cc = load ptr, ptr %.sroa.0309.1405, align 8, !tbaa !19763
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = zext i64 %i.cd to i128
  %i.cf = mul nuw i128 %i.ce, 14181476777654086739
  %i.cg = lshr i128 %i.cf, 64
  %i.ch = trunc nuw i128 %i.cg to i64
  %i.ci = mul i64 %i.cd, -4265267296055464877
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = mul i64 %i.cj, -4265267296055464877     ; 2 uses
  %i.cl = lshr i64 %i.ck, 14
  %i.cm = and i64 %i.cl, 255
  %i.cn = lshr i64 %i.ck, 22
  %.sroa.speculated.i.i.i176 = call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc98
  %.sroa.5.0.i = phi i64 [ 0, %.noexc98 ], [ %.sroa.speculated.i.i.i176, %bb.e ]
  %.sroa.04.0.i = phi i64 [ 0, %.noexc98 ], [ %i.cn, %bb.e ]
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr nonnull %.sroa.0309.1405, i64 %.sroa.7310.1406, i64 %.sroa.04.0.i, i64 %.sroa.5.0.i)
          to label %.noexc109 unwind label %bb.i

.noexc109:                                        ; preds = %bb.f
  %i.co = getelementptr inbounds i8, ptr %.sroa.0309.1405, i64 -16
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %.neg.i.i.i ; 2 uses
  %.not19.i.i729 = icmp eq i64 %.sroa.7310.1406, 0
  br i1 %.not19.i.i729, label %.preheader513.preheader, label %.lr.ph731

.preheader513.preheader:                          ; preds = %bb.g, %.noexc109
  br label %.preheader513

bb.g:                                             ; preds = %.lr.ph731
  %.not19.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not19.i.i, label %.preheader513.preheader, label %.lr.ph731, !llvm.loop !723

.lr.ph731:                                        ; preds = %.noexc109, %bb.g
  %.sroa.10336.0730 = phi i64 [ %i.cq, %bb.g ], [ %.sroa.7310.1406, %.noexc109 ]
  %i.cq = add nsw i64 %.sroa.10336.0730, -1       ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !19682
  %.not498 = icmp eq i8 %i.cs, 0
  br i1 %.not498, label %bb.g, label %.thread395, !prof !19683, !llvm.loop !723

bb.h:                                             ; preds = %.noexc111
  %i.ct = add i64 %.0.i.i561, 1                   ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.thread395, label %.preheader513, !llvm.loop !724

.preheader513:                                    ; preds = %.preheader513.preheader, %bb.h
  %.0.i.i561 = phi i64 [ %i.ct, %bb.h ], [ 1, %.preheader513.preheader ]
  %.017.i.i560 = phi ptr [ %i.cy, %bb.h ], [ %i.cp, %.preheader513.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.017.i.i560, i64 14
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !19682
  %i.cx = and i8 %i.cw, 15
  %.not499 = icmp eq i8 %i.cx, 0
  br i1 %.not499, label %.noexc111, label %.thread395, !prof !19685

.noexc111:                                        ; preds = %.preheader513
  %i.cy = getelementptr inbounds i8, ptr %.017.i.i560, i64 -256 ; 3 uses
  %i.cz = load <16 x i8>, ptr %i.cy, align 16, !tbaa !19682
  %i.da = icmp eq <16 x i8> %i.cz, zeroinitializer
  %i.db = bitcast <16 x i1> %i.da to i16
  %i.dc = and i16 %i.db, 16383
  %.not500 = icmp eq i16 %i.dc, 16383
  br i1 %.not500, label %bb.h, label %.noexc113, !prof !19683

.noexc113:                                        ; preds = %.noexc111
  %i.dd = icmp ne ptr %i.cy, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.dd)
  br label %.thread395

bb.i:                                             ; preds = %bb.f
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit249

bb.j:                                             ; preds = %.lr.ph, %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit
  %.sroa.7272.0559 = phi i64 [ %.2.i.i.i, %.lr.ph ], [ %.2.i.i193, %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit ] ; 2 uses
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %.sroa.7272.0559)
          to label %.noexc27 unwind label %bb.l

.noexc27:                                         ; preds = %bb.j
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !19769 ; 2 uses
  %i.dh = load i64, ptr %i.bx, align 8, !tbaa !19695 ; 2 uses
  %i.di = icmp ugt i64 %i.dh, 255
  call void @llvm.assume(i1 %i.di)
  %i.dj = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.dk = zext i64 %i.dj to i128
  %i.dl = mul nuw i128 %i.dk, 14181476777654086739
  %i.dm = lshr i128 %i.dl, 64
  %i.dn = trunc nuw i128 %i.dm to i64
  %i.do = mul i64 %i.dj, -4265267296055464877
  %i.dp = xor i64 %i.do, %i.dn
  %i.dq = mul i64 %i.dp, -4265267296055464877     ; 2 uses
  %i.dr = lshr i64 %i.dq, 14
  %i.ds = and i64 %i.dr, 255
  %i.dt = lshr i64 %i.dq, 22
  %.sroa.speculated.i.i.i178 = call i64 @llvm.umax.i64(i64 %i.ds, i64 1) ; 2 uses
  %i.du = shl nuw nsw i64 %.sroa.speculated.i.i.i178, 1
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = trunc nuw i64 %.sroa.speculated.i.i.i178 to i8
  %i.dx = insertelement <16 x i8> poison, i8 %i.dw, i64 0
  %i.dy = shufflevector <16 x i8> %i.dx, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.dz = and i64 %i.dh, 255
  %notmask.i181 = shl nsw i64 -1, %i.dz
  %i.ea = xor i64 %notmask.i181, -1
  %i.eb = load ptr, ptr %i.by, align 8, !tbaa !19714
  br label %.noexc30

.noexc30:                                         ; preds = %.loopexit516, %.noexc27
  %.025.i.i = phi i64 [ %i.dt, %.noexc27 ], [ %i.fa, %.loopexit516 ] ; 2 uses
  %i.ec = and i64 %.025.i.i, %i.ea
  %i.ed = shl nsw i64 %i.ec, 6
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed ; 3 uses
  %i.ef = load <16 x i8>, ptr %i.ee, align 16
  %i.eg = icmp eq <16 x i8> %i.ef, %i.dy
  %i.eh = bitcast <16 x i1> %i.eg to i16
  %i.ei = zext i16 %i.eh to i32                   ; 2 uses
  %i.ej = and i32 %i.ei, 4095
  %.not501 = icmp eq i32 %i.ej, 0
  br i1 %.not501, label %.loopexit516, label %.noexc32.preheader

.noexc32.preheader:                               ; preds = %.noexc30
  %i.ek = icmp ne ptr %i.ee, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ek)
  %i.el = load ptr, ptr %i.bw, align 8, !tbaa !19715
  br label %.noexc32

.noexc32:                                         ; preds = %.noexc32.preheader, %.critedge.i.i
  %.sroa.0300.0 = phi i32 [ %i.ey, %.critedge.i.i ], [ %i.ei, %.noexc32.preheader ] ; 4 uses
  %i.em = icmp ne i32 %.sroa.0300.0, 0
  call void @llvm.assume(i1 %i.em)
  %i.en = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0300.0, i1 true)
  %i.eo = shl nuw nsw i32 %i.en, 2
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr i8, ptr %i.ee, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  %i.es = load i32, ptr %i.er, align 4, !tbaa !19786 ; 2 uses
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.el, i64 %i.et ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !19769
  %i.ew = icmp eq ptr %i.dg, %i.ev
  br i1 %i.ew, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.thread, label %.critedge.i.i, !prof !19685

.critedge.i.i:                                    ; preds = %.noexc32
  %i.ex = add nsw i32 %.sroa.0300.0, -1
  %i.ey = and i32 %i.ex, %.sroa.0300.0            ; 2 uses
  %i.ez = and i32 %i.ey, 4094
  %.not502 = icmp eq i32 %i.ez, 0
  br i1 %.not502, label %.loopexit516, label %.noexc32, !llvm.loop !766

.loopexit516:                                     ; preds = %.critedge.i.i, %.noexc30
  %i.fa = add i64 %i.dv, %.025.i.i
  br label %.noexc30, !llvm.loop !767

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.thread: ; preds = %.noexc32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fc = invoke noundef i64 @_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISA_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit unwind label %bb.m ; 0 uses

_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit: ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.thread
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !19695
  %i.ff = icmp ult i64 %i.fe, 256
  br i1 %i.ff, label %.noexc116, label %_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit

.noexc116:                                        ; preds = %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit
  %i.fg = load i64, ptr %i.bx, align 8, !tbaa !19695 ; 2 uses
  %i.fh = icmp ult i64 %i.fg, 256
  br i1 %i.fh, label %.noexc117, label %.noexc128

.noexc128:                                        ; preds = %.noexc116
  %i.fi = load ptr, ptr %i.bw, align 8, !tbaa !19715
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.fi, i64 %i.et
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !19769
  %i.fl = ptrtoint ptr %i.fk to i64               ; 2 uses
  %i.fm = zext i64 %i.fl to i128
  %i.fn = mul nuw i128 %i.fm, 14181476777654086739
  %i.fo = lshr i128 %i.fn, 64
  %i.fp = trunc nuw i128 %i.fo to i64
  %i.fq = mul i64 %i.fl, -4265267296055464877
  %i.fr = xor i64 %i.fq, %i.fp
  %i.fs = mul i64 %i.fr, -4265267296055464877     ; 2 uses
  %i.ft = lshr i64 %i.fs, 14
  %i.fu = and i64 %i.ft, 255
  %i.fv = lshr i64 %i.fs, 22
  %.sroa.speculated.i.i.i187 = call i64 @llvm.umax.i64(i64 %i.fu, i64 1) ; 2 uses
  %i.fw = shl nuw nsw i64 %.sroa.speculated.i.i.i187, 1
  %i.fx = or disjoint i64 %i.fw, 1
  %i.fy = trunc nuw i64 %.sroa.speculated.i.i.i187 to i8
  %i.fz = insertelement <16 x i8> poison, i8 %i.fy, i64 0
  %i.ga = shufflevector <16 x i8> %i.fz, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.gb = and i64 %i.fg, 255                      ; 2 uses
  %i.gc = shl nuw i64 1, %i.gb
  %notmask.i190 = shl nsw i64 -1, %i.gb
  %i.gd = xor i64 %notmask.i190, -1
  %i.ge = load ptr, ptr %i.by, align 8, !tbaa !19714
  br label %.noexc131

.noexc131:                                        ; preds = %.noexc128, %bb.k
  %.023.i557 = phi i64 [ %i.gc, %.noexc128 ], [ %i.hb, %bb.k ]
  %.025.i556 = phi i64 [ %i.fv, %.noexc128 ], [ %i.hc, %bb.k ] ; 2 uses
  %i.gf = and i64 %.025.i556, %i.gd
  %i.gg = shl nsw i64 %i.gf, 6
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gg ; 3 uses
  %i.gi = load <16 x i8>, ptr %i.gh, align 16     ; 2 uses
  %i.gj = icmp eq <16 x i8> %i.gi, %i.ga
  %i.gk = bitcast <16 x i1> %i.gj to i16
  %i.gl = zext i16 %i.gk to i32                   ; 2 uses
  %i.gm = and i32 %i.gl, 4095
  %.not503 = icmp eq i32 %i.gm, 0
  %i.gn = extractelement <16 x i8> %i.gi, i64 15
  br i1 %.not503, label %.loopexit515, label %.noexc132.preheader

.noexc132.preheader:                              ; preds = %.noexc131
  %i.go = icmp ne ptr %i.gh, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.go)
  br label %.noexc132

.noexc132:                                        ; preds = %.noexc132.preheader, %.critedge.i
  %.sroa.0356.0 = phi i32 [ %i.gy, %.critedge.i ], [ %i.gl, %.noexc132.preheader ] ; 4 uses
  %i.gp = icmp ne i32 %.sroa.0356.0, 0
  call void @llvm.assume(i1 %i.gp)
  %i.gq = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0356.0, i1 true)
  %i.gr = zext nneg i32 %i.gq to i64              ; 2 uses
  %i.gs = shl nuw nsw i64 %i.gr, 2
  %i.gt = getelementptr i8, ptr %i.gh, i64 %i.gs  ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !19786
  %i.gw = icmp eq i32 %i.es, %i.gv
  br i1 %i.gw, label %.noexc117.loopexit, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %.noexc132
  %i.gx = add nsw i32 %.sroa.0356.0, -1
  %i.gy = and i32 %i.gx, %.sroa.0356.0            ; 2 uses
  %i.gz = and i32 %i.gy, 4094
  %.not504 = icmp eq i32 %i.gz, 0
  br i1 %.not504, label %.loopexit515, label %.noexc132, !llvm.loop !778

.loopexit515:                                     ; preds = %.critedge.i, %.noexc131
  %i.ha = icmp eq i8 %i.gn, 0
  br i1 %i.ha, label %.noexc117, label %bb.k, !prof !19685

bb.k:                                             ; preds = %.loopexit515
  %i.hb = add i64 %.023.i557, -1                  ; 2 uses
  %i.hc = add i64 %i.fx, %.025.i556
  %.not.i = icmp eq i64 %i.hb, 0
  br i1 %.not.i, label %.noexc117, label %.noexc131, !llvm.loop !779

.noexc117.loopexit:                               ; preds = %.noexc132
  %i.hd = getelementptr i8, ptr %i.gt, i64 16
  br label %.noexc117

.noexc117:                                        ; preds = %bb.k, %.loopexit515, %.noexc117.loopexit, %.noexc116
  %.sroa.5355.0 = phi i64 [ 0, %.noexc116 ], [ %i.gr, %.noexc117.loopexit ], [ 0, %.loopexit515 ], [ 0, %bb.k ]
  %.sroa.0354.0 = phi ptr [ null, %.noexc116 ], [ %i.hd, %.noexc117.loopexit ], [ null, %.loopexit515 ], [ null, %bb.k ]
  invoke void @_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr %.sroa.0354.0, i64 %.sroa.5355.0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit249

bb.m:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.i.thread, %.noexc117
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit249

_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit: ; preds = %.noexc117, %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit
  %i.hg = add i64 %.sroa.7272.0559, 1             ; 3 uses
  %i.hh = icmp ult i64 %i.hg, %.sroa.3.0.i.i.i636
  br i1 %i.hh, label %.lr.ph.i.i, label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit

.lr.ph.i.i:                                       ; preds = %_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit, %bb.n
  %.01422.i.i = phi i64 [ %i.hq, %bb.n ], [ %i.hg, %_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit ] ; 4 uses
  %i.hi = lshr i64 %.01422.i.i, 6
  %i.hj = and i64 %.01422.i.i, 63
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i638, i64 %i.hi
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !19676
  %i.hm = lshr i64 %i.hl, %i.hj                   ; 2 uses
  %.not.i.i194 = icmp eq i64 %i.hm, 0
  br i1 %.not.i.i194, label %bb.n, label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.hn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hm, i1 true)
  %i.ho = add i64 %i.hn, %.01422.i.i
  br label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.hp = and i64 %.01422.i.i, -64
  %i.hq = add i64 %i.hp, 64                       ; 3 uses
  %i.hr = icmp ult i64 %i.hq, %.sroa.3.0.i.i.i636
  br i1 %i.hr, label %.lr.ph.i.i, label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit, !llvm.loop !720

_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit: ; preds = %bb.n, %_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit, %.thread.i.i
  %.2.i.i193 = phi i64 [ %i.ho, %.thread.i.i ], [ %i.hg, %_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit ], [ %i.hq, %bb.n ] ; 2 uses
  %.not497 = icmp eq i64 %.2.i.i193, %.sroa.3.0.i.i.i636
  br i1 %.not497, label %.noexc98, label %bb.j

.thread395:                                       ; preds = %.loopexit518, %bb.c, %.lr.ph731, %.preheader513, %bb.h, %.noexc113, %.noexc51, %bb.b
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !19695 ; 3 uses
  %i.hv = icmp ult i64 %i.hu, 512
  br i1 %i.hv, label %bb.o, label %.noexc90

bb.o:                                             ; preds = %.thread395
  %i.hw = icmp samesign ult i64 %i.hu, 256
  br i1 %i.hw, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %.noexc88

.noexc88:                                         ; preds = %bb.o
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !19675 ; 2 uses
  %i.hz = and i64 %i.hy, -16
  %i.ia = inttoptr i64 %i.hz to ptr               ; 2 uses
  %i.ib = and i64 %i.hy, 15
  %i.ic = load ptr, ptr %i.a, align 8, !tbaa !19763
  %i.id = load ptr, ptr %i.ia, align 16, !tbaa !19763
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %.thread482, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit

.noexc90:                                         ; preds = %.thread395
  %i.if = load ptr, ptr %i.a, align 8, !tbaa !19763 ; 2 uses
  %i.ig = ptrtoint ptr %i.if to i64               ; 2 uses
  %i.ih = zext i64 %i.ig to i128
  %i.ii = mul nuw i128 %i.ih, 14181476777654086739
  %i.ij = lshr i128 %i.ii, 64
  %i.ik = trunc nuw i128 %i.ij to i64
  %i.il = mul i64 %i.ig, -4265267296055464877
  %i.im = xor i64 %i.il, %i.ik
  %i.in = mul i64 %i.im, -4265267296055464877     ; 2 uses
  %i.io = lshr i64 %i.in, 14
  %i.ip = and i64 %i.io, 255
  %i.iq = lshr i64 %i.in, 22
  %.sroa.speculated.i.i.i197 = call i64 @llvm.umax.i64(i64 %i.ip, i64 1) ; 2 uses
  %i.ir = shl nuw nsw i64 %.sroa.speculated.i.i.i197, 1
  %i.is = or disjoint i64 %i.ir, 1
  %i.it = trunc nuw i64 %.sroa.speculated.i.i.i197 to i8
  %i.iu = insertelement <16 x i8> poison, i8 %i.it, i64 0
  %i.iv = shufflevector <16 x i8> %i.iu, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.iw = and i64 %i.hu, 255                      ; 2 uses
  %i.ix = shl nuw i64 1, %i.iw
  %notmask.i200 = shl nsw i64 -1, %i.iw
  %i.iy = xor i64 %notmask.i200, -1
  %i.iz = load ptr, ptr %i.hs, align 8, !tbaa !20271
  br label %.noexc93

.noexc93:                                         ; preds = %.noexc90, %bb.p
  %.024.i.i64564 = phi i64 [ %i.ix, %.noexc90 ], [ %i.jx, %bb.p ]
  %.026.i.i63563 = phi i64 [ %i.iq, %.noexc90 ], [ %i.jy, %bb.p ] ; 2 uses
  %i.ja = and i64 %.026.i.i63563, %i.iy
  %i.jb = shl nsw i64 %i.ja, 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.jb ; 4 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 144
  call void @llvm.prefetch.p0(ptr %i.jd, i32 0, i32 3, i32 1)
  %i.je = load <16 x i8>, ptr %i.jc, align 16     ; 2 uses
  %i.jf = icmp eq <16 x i8> %i.je, %i.iv
  %i.jg = bitcast <16 x i1> %i.jf to i16
  %i.jh = zext i16 %i.jg to i32                   ; 2 uses
  %i.ji = and i32 %i.jh, 16383
  %.not505 = icmp eq i32 %i.ji, 0
  %i.jj = extractelement <16 x i8> %i.je, i64 15
  br i1 %.not505, label %.loopexit, label %.noexc96.preheader

.noexc96.preheader:                               ; preds = %.noexc93
  %i.jk = icmp ne ptr %i.jc, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.jk)
  br label %.noexc96

.noexc96:                                         ; preds = %.noexc96.preheader, %.critedge.i.i87
  %.sroa.0326.0 = phi i32 [ %i.ju, %.critedge.i.i87 ], [ %i.jh, %.noexc96.preheader ] ; 4 uses
  %i.jl = icmp ne i32 %.sroa.0326.0, 0
  call void @llvm.assume(i1 %i.jl)
  %i.jm = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0326.0, i1 true)
  %i.jn = zext nneg i32 %i.jm to i64              ; 2 uses
  %i.jo = shl nuw nsw i64 %i.jn, 4
  %i.jp = getelementptr i8, ptr %i.jc, i64 %i.jo  ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !19763
  %i.js = icmp eq ptr %i.if, %i.jr
  br i1 %i.js, label %.thread482.loopexit, label %.critedge.i.i87, !prof !19685

.critedge.i.i87:                                  ; preds = %.noexc96
  %i.jt = add nsw i32 %.sroa.0326.0, -1
  %i.ju = and i32 %i.jt, %.sroa.0326.0            ; 2 uses
  %i.jv = and i32 %i.ju, 16382
  %.not506 = icmp eq i32 %i.jv, 0
  br i1 %.not506, label %.loopexit, label %.noexc96, !llvm.loop !768

.loopexit:                                        ; preds = %.critedge.i.i87, %.noexc93
  %i.jw = icmp eq i8 %i.jj, 0
  br i1 %i.jw, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %bb.p, !prof !19685

bb.p:                                             ; preds = %.loopexit
  %i.jx = add i64 %.024.i.i64564, -1              ; 2 uses
  %i.jy = add i64 %i.is, %.026.i.i63563
  %.not.i.i65 = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i65, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %.noexc93, !llvm.loop !769

.thread482.loopexit:                              ; preds = %.noexc96
  %i.jz = getelementptr i8, ptr %i.jp, i64 16
  br label %.thread482

.thread482:                                       ; preds = %.thread482.loopexit, %.noexc88
  %.sroa.7325.1488 = phi i64 [ %i.ib, %.noexc88 ], [ %i.jn, %.thread482.loopexit ] ; 4 uses
  %.sroa.0324.1487 = phi ptr [ %i.ia, %.noexc88 ], [ %i.jz, %.thread482.loopexit ] ; 5 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0324.1487, i64 8 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !19676 ; 2 uses
  %i.kc = icmp slt i64 %i.kb, 0
  br i1 %i.kc, label %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit208, label %.lr.ph.i.i.i214.preheader

_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit208: ; preds = %.thread482
  %i.kd = shl i64 %i.kb, 1
  %i.ke = inttoptr i64 %i.kd to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.i205 = load ptr, ptr %i.ke, align 8, !tbaa !19766 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i206 = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %.sroa.3.0.copyload.i.i.i207 = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i206, align 8, !tbaa !19676 ; 2 uses
  %.not.i213 = icmp eq i64 %.sroa.3.0.copyload.i.i.i207, 0
  br i1 %.not.i213, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit219, label %.lr.ph.i.i.i214.preheader

.lr.ph.i.i.i214.preheader:                        ; preds = %.thread482, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit208
  %.sroa.0.0.i.i.i202644 = phi ptr [ %.sroa.0.0.copyload.i.i.i205, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit208 ], [ %i.ka, %.thread482 ] ; 3 uses
  %.sroa.3.0.i.i.i201642 = phi i64 [ %.sroa.3.0.copyload.i.i.i207, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit208 ], [ 64, %.thread482 ] ; 3 uses
  br label %.lr.ph.i.i.i214

.lr.ph.i.i.i214:                                  ; preds = %.lr.ph.i.i.i214.preheader, %bb.q
  %.01422.i.i.i215 = phi i64 [ %i.kn, %bb.q ], [ 0, %.lr.ph.i.i.i214.preheader ] ; 4 uses
  %i.kf = lshr i64 %.01422.i.i.i215, 6
  %i.kg = and i64 %.01422.i.i.i215, 63
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i202644, i64 %i.kf
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !19676, !noalias !21784
  %i.kj = lshr i64 %i.ki, %i.kg                   ; 2 uses
  %.not.i.i.i216 = icmp eq i64 %i.kj, 0
  br i1 %.not.i.i.i216, label %bb.q, label %.thread.i.i.i217

.thread.i.i.i217:                                 ; preds = %.lr.ph.i.i.i214
  %i.kk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kj, i1 true)
  %i.kl = add i64 %i.kk, %.01422.i.i.i215
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit219

bb.q:                                             ; preds = %.lr.ph.i.i.i214
  %i.km = and i64 %.01422.i.i.i215, -64
  %i.kn = add i64 %i.km, 64                       ; 3 uses
  %i.ko = icmp ult i64 %i.kn, %.sroa.3.0.i.i.i201642
  br i1 %i.ko, label %.lr.ph.i.i.i214, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit219, !llvm.loop !720

_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit219: ; preds = %bb.q, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit208, %.thread.i.i.i217
  %.sroa.0.0.i.i.i202645 = phi ptr [ %.sroa.0.0.i.i.i202644, %.thread.i.i.i217 ], [ %.sroa.0.0.copyload.i.i.i205, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit208 ], [ %.sroa.0.0.i.i.i202644, %bb.q ]
  %.sroa.3.0.i.i.i201643 = phi i64 [ %.sroa.3.0.i.i.i201642, %.thread.i.i.i217 ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit208 ], [ %.sroa.3.0.i.i.i201642, %bb.q ] ; 4 uses
  %.2.i.i.i218 = phi i64 [ %i.kl, %.thread.i.i.i217 ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit208 ], [ %i.kn, %bb.q ] ; 2 uses
  %.not507565 = icmp eq i64 %.2.i.i.i218, %.sroa.3.0.i.i.i201643
  br i1 %.not507565, label %.noexc135, label %.lr.ph567

.lr.ph567:                                        ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit219
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.w

.noexc135:                                        ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit243, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit219
  %.neg.i.i.i229 = mul nsw i64 %.sroa.7325.1488, -16 ; 2 uses
  %i.kq = getelementptr i8, ptr %.sroa.0324.1487, i64 %.neg.i.i.i229
  %i.kr = getelementptr i8, ptr %i.kq, i64 -2
  %i.ks = load i8, ptr %i.kr, align 2, !tbaa !20351
  %.not.i230 = icmp ult i8 %i.ks, 16
  br i1 %.not.i230, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc135
  %i.kt = load ptr, ptr %.sroa.0324.1487, align 8, !tbaa !19763
  %i.ku = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.kv = zext i64 %i.ku to i128
  %i.kw = mul nuw i128 %i.kv, 14181476777654086739
  %i.kx = lshr i128 %i.kw, 64
  %i.ky = trunc nuw i128 %i.kx to i64
  %i.kz = mul i64 %i.ku, -4265267296055464877
  %i.la = xor i64 %i.kz, %i.ky
  %i.lb = mul i64 %i.la, -4265267296055464877     ; 2 uses
  %i.lc = lshr i64 %i.lb, 14
  %i.ld = and i64 %i.lc, 255
  %i.le = lshr i64 %i.lb, 22
  %.sroa.speculated.i.i.i231 = call i64 @llvm.umax.i64(i64 %i.ld, i64 1)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.noexc135
  %.sroa.5.0.i232 = phi i64 [ 0, %.noexc135 ], [ %.sroa.speculated.i.i.i231, %bb.r ]
  %.sroa.04.0.i233 = phi i64 [ 0, %.noexc135 ], [ %i.le, %bb.r ]
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, ptr nonnull %.sroa.0324.1487, i64 %.sroa.7325.1488, i64 %.sroa.04.0.i233, i64 %.sroa.5.0.i232)
          to label %.noexc152 unwind label %bb.v

.noexc152:                                        ; preds = %bb.s
  %i.lf = getelementptr inbounds i8, ptr %.sroa.0324.1487, i64 -16
  %i.lg = getelementptr inbounds i8, ptr %i.lf, i64 %.neg.i.i.i229 ; 2 uses
  %.not19.i.i148732 = icmp eq i64 %.sroa.7325.1488, 0
  br i1 %.not19.i.i148732, label %.noexc153.preheader, label %.lr.ph734

.noexc153.preheader:                              ; preds = %bb.t, %.noexc152
  br label %.noexc153

bb.t:                                             ; preds = %.lr.ph734
  %.not19.i.i148 = icmp eq i64 %i.lh, 0
  br i1 %.not19.i.i148, label %.noexc153.preheader, label %.lr.ph734, !llvm.loop !715

.lr.ph734:                                        ; preds = %.noexc152, %bb.t
  %.sroa.10366.0733 = phi i64 [ %i.lh, %bb.t ], [ %.sroa.7325.1488, %.noexc152 ]
  %i.lh = add nsw i64 %.sroa.10366.0733, -1       ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !19682
  %.not508 = icmp eq i8 %i.lj, 0
  br i1 %.not508, label %bb.t, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, !prof !19683, !llvm.loop !715

bb.u:                                             ; preds = %.noexc155
  %i.lk = add i64 %.0.i.i150569, 1                ; 2 uses
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %.noexc153, !llvm.loop !716

.noexc153:                                        ; preds = %.noexc153.preheader, %bb.u
  %.0.i.i150569 = phi i64 [ %i.lk, %bb.u ], [ 1, %.noexc153.preheader ]
  %.017.i.i149568 = phi ptr [ %i.lp, %bb.u ], [ %i.lg, %.noexc153.preheader ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.017.i.i149568, i64 14
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !19682
  %i.lo = and i8 %i.ln, 15
  %.not509 = icmp eq i8 %i.lo, 0
  br i1 %.not509, label %.noexc155, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, !prof !19685

.noexc155:                                        ; preds = %.noexc153
  %i.lp = getelementptr inbounds i8, ptr %.017.i.i149568, i64 -256 ; 3 uses
  %i.lq = load <16 x i8>, ptr %i.lp, align 16, !tbaa !19682
  %i.lr = icmp eq <16 x i8> %i.lq, zeroinitializer
  %i.ls = bitcast <16 x i1> %i.lr to i16
  %i.lt = and i16 %i.ls, 16383
  %.not510 = icmp eq i16 %i.lt, 16383
  br i1 %.not510, label %bb.u, label %.noexc157, !prof !19683

.noexc157:                                        ; preds = %.noexc155
  %i.lu = icmp ne ptr %i.lp, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.lu)
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit

bb.v:                                             ; preds = %bb.s
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit249

bb.w:                                             ; preds = %.lr.ph567, %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit243
  %.sroa.7.0566 = phi i64 [ %.2.i.i.i218, %.lr.ph567 ], [ %.2.i.i238, %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit243 ] ; 2 uses
  %i.lw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE14value_at_indexEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %.sroa.7.0566)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !19769
  %i.ly = invoke noundef ptr @_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.kp, ptr noundef nonnull align 8 dereferenceable(32) %i.lx)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = invoke noundef i64 @_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISA_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.lz, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit237 unwind label %bb.aa ; 0 uses

_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit237: ; preds = %bb.y
  %i.mb = add i64 %.sroa.7.0566, 1                ; 3 uses
  %i.mc = icmp ult i64 %i.mb, %.sroa.3.0.i.i.i201643
  br i1 %i.mc, label %.lr.ph.i.i239, label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit243

.lr.ph.i.i239:                                    ; preds = %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit237, %bb.z
  %.01422.i.i240 = phi i64 [ %i.ml, %bb.z ], [ %i.mb, %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit237 ] ; 4 uses
  %i.md = lshr i64 %.01422.i.i240, 6
  %i.me = and i64 %.01422.i.i240, 63
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i202645, i64 %i.md
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !19676
  %i.mh = lshr i64 %i.mg, %i.me                   ; 2 uses
  %.not.i.i241 = icmp eq i64 %i.mh, 0
  br i1 %.not.i.i241, label %bb.z, label %.thread.i.i242

.thread.i.i242:                                   ; preds = %.lr.ph.i.i239
  %i.mi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mh, i1 true)
  %i.mj = add i64 %i.mi, %.01422.i.i240
  br label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit243

bb.z:                                             ; preds = %.lr.ph.i.i239
  %i.mk = and i64 %.01422.i.i240, -64
  %i.ml = add i64 %i.mk, 64                       ; 3 uses
  %i.mm = icmp ult i64 %i.ml, %.sroa.3.0.i.i.i201643
  br i1 %i.mm, label %.lr.ph.i.i239, label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit243, !llvm.loop !720

_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit243: ; preds = %bb.z, %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit237, %.thread.i.i242
  %.2.i.i238 = phi i64 [ %i.mj, %.thread.i.i242 ], [ %i.mb, %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit237 ], [ %i.ml, %bb.z ] ; 2 uses
  %.not507 = icmp eq i64 %.2.i.i238, %.sroa.3.0.i.i.i201643
  br i1 %.not507, label %.noexc135, label %bb.w

bb.aa:                                            ; preds = %bb.y, %bb.x, %bb.w
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit249

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit: ; preds = %.loopexit, %bb.p, %.lr.ph734, %.noexc153, %bb.u, %.noexc157, %.noexc88, %bb.o
  ret void

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit249: ; preds = %bb.v, %bb.aa, %bb.l, %bb.m, %bb.i
  %.pn23.pn.pn = phi { ptr, i32 } [ %i.lv, %bb.v ], [ %i.he, %bb.l ], [ %i.de, %bb.i ], [ %i.mn, %bb.aa ], [ %i.hf, %bb.m ]
  call void @_ZN5folly15RegexMatchCache6repairEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #40, !inline_history !774
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = icmp ult i64 %i.b, 512
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i64 %i.b, 256
  br i1 %i.d, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19761
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19734 ; 3 uses
  %i.j = load i128, ptr %1, align 8
  %i.k = load i128, ptr %i.i, align 8
  %i.l = xor i128 %i.j, %i.k
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = getelementptr i8, ptr %i.i, i64 16
  %i.o = load i128, ptr %i.m, align 8
  %i.p = load i128, ptr %i.n, align 8
  %i.q = xor i128 %i.o, %i.p
  %i.r = or i128 %i.l, %i.q
  %i.s = icmp ne i128 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread39, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.u = load i64, ptr %1, align 8, !tbaa !19676  ; 2 uses
  %i.v = lshr i64 %i.u, 56
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1) ; 2 uses
  %i.w = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.x = or disjoint i64 %i.w, 1
  %i.y = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.z = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ab = and i64 %i.b, 255                       ; 2 uses
  %i.ac = shl nuw i64 1, %i.ab
  %notmask.i = shl nsw i64 -1, %i.ab
  %i.ad = xor i64 %notmask.i, -1
  %i.ae = load ptr, ptr %0, align 8, !tbaa !19732
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %.024.i.i56 = phi i64 [ %i.ac, %bb.d ], [ %i.bm, %bb.g ]
  %.026.i.i55 = phi i64 [ %i.u, %bb.d ], [ %i.bn, %bb.g ] ; 2 uses
  %i.af = and i64 %.026.i.i55, %i.ad
  %i.ag = shl nsw i64 %i.af, 7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.ai, i32 0, i32 3, i32 1)
  %i.aj = load <16 x i8>, ptr %i.ah, align 16     ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.aj, %i.aa
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = and i32 %i.am, 16383
  %.not = icmp eq i32 %i.an, 0
  %i.ao = extractelement <16 x i8> %i.aj, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ap = icmp ne ptr %i.ah, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ap)
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.critedge.i.i
  %.sroa.012.0 = phi i32 [ %i.bj, %.critedge.i.i ], [ %i.am, %.preheader ] ; 4 uses
  %i.aq = icmp ne i32 %.sroa.012.0, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0, i1 true)
  %i.as = shl nuw nsw i32 %i.ar, 3
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19734 ; 3 uses
  %i.ax = load i128, ptr %1, align 8
  %i.ay = load i128, ptr %i.aw, align 8
  %i.az = xor i128 %i.ax, %i.ay
  %i.ba = getelementptr i8, ptr %1, i64 16
  %i.bb = getelementptr i8, ptr %i.aw, i64 16
  %i.bc = load i128, ptr %i.ba, align 8
  %i.bd = load i128, ptr %i.bb, align 8
  %i.be = xor i128 %i.bc, %i.bd
  %i.bf = or i128 %i.az, %i.be
  %i.bg = icmp ne i128 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %.not9.i.i.i.i.i.i.i.i4 = icmp eq i32 %i.bh, 0
  br i1 %.not9.i.i.i.i.i.i.i.i4, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread39, label %.critedge.i.i, !prof !19685

.critedge.i.i:                                    ; preds = %bb.f
  %i.bi = add nsw i32 %.sroa.012.0, -1
  %i.bj = and i32 %i.bi, %.sroa.012.0             ; 2 uses
  %i.bk = and i32 %i.bj, 16382
  %.not52 = icmp eq i32 %i.bk, 0
  br i1 %.not52, label %.loopexit, label %bb.f, !llvm.loop !770

.loopexit:                                        ; preds = %.critedge.i.i, %bb.e
  %i.bl = icmp eq i8 %i.ao, 0
  br i1 %i.bl, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread, label %bb.g, !prof !19685

bb.g:                                             ; preds = %.loopexit
  %i.bm = add i64 %.024.i.i56, -1                 ; 2 uses
  %i.bn = add i64 %i.x, %.026.i.i55
  %.not.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread, label %bb.e, !llvm.loop !771

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread39: ; preds = %bb.f, %bb.c
  %i.bo = phi ptr [ %i.i, %bb.c ], [ %i.aw, %bb.f ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  br label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread: ; preds = %.loopexit, %bb.g, %bb.c, %bb.b, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread39
  %i.bq = phi ptr [ %i.bp, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread39 ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.g ], [ null, %.loopexit ]
  ret ptr %i.bq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISA_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 2 uses
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !19763  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw i128 %i.f, 14181476777654086739
  %i.h = lshr i128 %i.g, 64
  %i.i = trunc nuw i128 %i.h to i64
  %i.j = mul i64 %i.e, -4265267296055464877
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4265267296055464877       ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = and i64 %i.m, 255
  %i.o = lshr i64 %i.l, 22
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1) ; 2 uses
  %i.p = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.q = or disjoint i64 %i.p, 1
  %i.r = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = and i64 %i.b, 255                        ; 2 uses
  %i.v = shl nuw i64 1, %i.u
  %notmask.i = shl nsw i64 -1, %i.u
  %i.w = xor i64 %notmask.i, -1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19720
  %i.z = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.023.i48 = phi i64 [ %i.v, %bb.b ], [ %i.az, %bb.e ]
  %.025.i47 = phi i64 [ %i.o, %bb.b ], [ %i.ba, %bb.e ] ; 2 uses
  %i.aa = and i64 %.025.i47, %i.w
  %i.ab = shl nsw i64 %i.aa, 6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab ; 3 uses
  %i.ad = load <16 x i8>, ptr %i.ac, align 16     ; 2 uses
  %i.ae = icmp eq <16 x i8> %i.ad, %i.t
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = and i32 %i.ag, 4095
  %.not = icmp eq i32 %i.ah, 0
  %i.ai = extractelement <16 x i8> %i.ad, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.aj = icmp ne ptr %i.ac, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aj)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.010.0 = phi i32 [ %i.aw, %.critedge.i ], [ %i.ag, %.preheader ] ; 4 uses
  %i.ak = icmp ne i32 %.sroa.010.0, 0
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.010.0, i1 true)
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.an  ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !19786
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !19763
  %i.au = icmp eq ptr %i.d, %i.at
  br i1 %i.au, label %bb.f, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.d
  %i.av = add nsw i32 %.sroa.010.0, -1
  %i.aw = and i32 %i.av, %.sroa.010.0             ; 2 uses
  %i.ax = and i32 %i.aw, 4094
  %.not42 = icmp eq i32 %i.ax, 0
  br i1 %.not42, label %.loopexit, label %bb.d, !llvm.loop !762

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ay = icmp eq i8 %i.ai, 0
  br i1 %i.ay, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.e, !prof !19685

bb.e:                                             ; preds = %.loopexit
  %i.az = add i64 %.023.i48, -1                   ; 2 uses
  %i.ba = add i64 %i.q, %.025.i47
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread, label %bb.c, !llvm.loop !763

bb.f:                                             ; preds = %bb.d
  %i.bb = getelementptr i8, ptr %i.ao, i64 16
  tail call void @_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.bb, i64 %i.am, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit.thread: ; preds = %.loopexit, %bb.e, %bb.a, %bb.f
  %.0 = phi i64 [ 1, %bb.f ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %.loopexit ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20277  ; 4 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !19786  ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -4
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.neg.i.i.i ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 14 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !20322
  %.not.i20 = icmp ult i8 %i.f, 16
  br i1 %.not.i20, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.b to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19763
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = zext i64 %i.j to i128
  %i.l = mul nuw i128 %i.k, 14181476777654086739
  %i.m = lshr i128 %i.l, 64
  %i.n = trunc nuw i128 %i.m to i64
  %i.o = mul i64 %i.j, -4265267296055464877
  %i.p = xor i64 %i.o, %i.n
  %i.q = mul i64 %i.p, -4265267296055464877       ; 2 uses
  %i.r = lshr i64 %i.q, 14
  %i.s = and i64 %i.r, 255
  %i.t = lshr i64 %i.q, 22
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.u = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.v = or disjoint i64 %i.u, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi i64 [ 1, %bb.a ], [ %i.v, %bb.b ]
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.t, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19695
  %i.y = add i64 %i.x, -256
  store i64 %i.y, ptr %i.w, align 8, !tbaa !19695
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 %2 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19682
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i: ; preds = %bb.c
  store i8 0, ptr %i.z, align 1, !tbaa !19682
  %i.ab = load i8, ptr %i.e, align 2, !tbaa !20322
  %.not.i.i.i = icmp ult i8 %i.ab, 16
  %.pre = load i64, ptr %i.w, align 8, !tbaa !19695 ; 3 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.ac = and i64 %.pre, 255
  %notmask.i.i.i.i = shl nsw i64 -1, %i.ac
  %i.ad = xor i64 %notmask.i.i.i.i, -1            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19720 ; 4 uses
  %i.ag = and i64 %.sroa.04.0.i, %i.ad
  %i.ah = shl nuw nsw i64 %i.ag, 6                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  %i.aj = icmp eq ptr %i.ai, %i.d
  br i1 %i.aj, label %.thread.i.i.i, label %.lr.ph.i.i.i

.thread.i.i.i:                                    ; preds = %bb.g, %bb.e
  %.010.lcssa.i.i.i = phi i8 [ 0, %bb.e ], [ -16, %bb.g ]
  %i.ak = phi i64 [ %i.ah, %bb.e ], [ %i.aw, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 14 ; 2 uses
  %i.an = load i8, ptr %i.am, align 2, !tbaa !20322
  %i.ao = add i8 %i.an, %.010.lcssa.i.i.i
  store i8 %i.ao, ptr %i.am, align 2, !tbaa !20322
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.g
  %i.ap = phi i64 [ %i.aw, %bb.g ], [ %i.ah, %bb.e ]
  %.01126.i.i.i = phi i64 [ %i.au, %bb.g ], [ %.sroa.04.0.i, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 15 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !20321 ; 2 uses
  %.not.i17.i.i.i = icmp eq i8 %i.as, -2
  br i1 %.not.i17.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.at = add i8 %i.as, -1
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !20321
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.au = add i64 %.01126.i.i.i, %.sroa.5.0.i     ; 2 uses
  %i.av = and i64 %i.au, %i.ad
  %i.aw = shl nsw i64 %i.av, 6                    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aw
  %i.ay = icmp eq ptr %i.ax, %i.d
  br i1 %i.ay, label %.thread.i.i.i, label %.lr.ph.i.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i, %.thread.i.i.i
  %i.az = zext i32 %i.b to i64                    ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.az
  %i.bb = lshr i64 %.pre, 8                       ; 5 uses
  %.not = icmp eq i64 %i.bb, %i.az
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = load ptr, ptr %0, align 8, !tbaa !20277
  %i.bf = and i64 %i.bb, 4294967295
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !19763
  %i.bi = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bj = zext i64 %i.bi to i128
  %i.bk = mul nuw i128 %i.bj, 14181476777654086739
  %i.bl = lshr i128 %i.bk, 64
  %i.bm = trunc nuw i128 %i.bl to i64
  %i.bn = mul i64 %i.bi, -4265267296055464877
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = mul i64 %i.bo, -4265267296055464877     ; 2 uses
  %i.bq = lshr i64 %i.bp, 14
  %i.br = and i64 %i.bq, 255
  %i.bs = lshr i64 %i.bp, 22
  %.sroa.speculated.i.i.i21 = tail call i64 @llvm.umax.i64(i64 %i.br, i64 1) ; 2 uses
  %i.bt = shl nuw nsw i64 %.sroa.speculated.i.i.i21, 1
  %i.bu = or disjoint i64 %i.bt, 1
  %i.bv = trunc nuw i64 %.sroa.speculated.i.i.i21 to i8
  %i.bw = insertelement <16 x i8> poison, i8 %i.bv, i64 0
  %i.bx = shufflevector <16 x i8> %i.bw, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.by = and i64 %.pre, 255
  %notmask.i = shl nsw i64 -1, %i.by
  %i.bz = xor i64 %notmask.i, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !19720
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.h
  %.025.i = phi i64 [ %i.bs, %bb.h ], [ %i.cw, %.loopexit ] ; 2 uses
  %i.cc = and i64 %.025.i, %i.bz
  %i.cd = shl nsw i64 %i.cc, 6
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd ; 3 uses
  %i.cf = load <16 x i8>, ptr %i.ce, align 16
  %i.cg = icmp eq <16 x i8> %i.cf, %i.bx
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = zext i16 %i.ch to i32                   ; 2 uses
  %i.cj = and i32 %i.ci, 4095
  %.not47 = icmp eq i32 %i.cj, 0
  br i1 %.not47, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ck = icmp ne ptr %i.ce, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ck)
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.026.0 = phi i32 [ %i.cu, %.critedge.i ], [ %i.ci, %.preheader ] ; 4 uses
  %i.cl = icmp ne i32 %.sroa.026.0, 0
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.026.0, i1 true)
  %i.cn = shl nuw nsw i32 %i.cm, 2
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr i8, ptr %i.ce, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !19786
  %i.cs = icmp eq i32 %i.cr, %i.bc
  br i1 %i.cs, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %bb.j
  %i.ct = add nsw i32 %.sroa.026.0, -1
  %i.cu = and i32 %i.ct, %.sroa.026.0             ; 2 uses
  %i.cv = and i32 %i.cu, 4094
  %.not48 = icmp eq i32 %i.cv, 0
  br i1 %.not48, label %.loopexit, label %bb.j, !llvm.loop !21785

.loopexit:                                        ; preds = %.critedge.i, %bb.i
  %i.cw = add i64 %i.bu, %.025.i
  br label %bb.i, !llvm.loop !21786

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit: ; preds = %bb.j
  %i.cx = getelementptr i8, ptr %i.cp, i64 16
  store i32 %i.b, ptr %i.cx, align 4, !tbaa !19786
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bb
  %i.cz = load i64, ptr %i.cy, align 1
  store i64 %i.cz, ptr %i.ba, align 1
  br label %bb.k

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19676 ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %i.b, 1
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19679 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 16) #41
  br label %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit

_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit: ; preds = %bb.a, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19695
  %i.j = add i64 %i.i, -256                       ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !19695
  %i.k = and i64 %2, 255                          ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = ptrtoint ptr %1 to i64
  %i.n = or i64 %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19675
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit

bb.e:                                             ; preds = %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit
  %i.r = icmp ult i64 %i.j, 256
  br i1 %i.r, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEEE17precheckedAdvanceEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i.i = mul i64 %2, -16
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i4.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i4.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.g, %bb.f
  br label %.critedge.i.i.i

bb.g:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.f, %bb.g
  %i.u = phi i64 [ %i.w, %bb.g ], [ %2, %bb.f ]
  %i.v = phi ptr [ %i.x, %bb.g ], [ %1, %bb.f ]
  %i.w = add i64 %i.u, -1                         ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19682
  %.not.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEEE17precheckedAdvanceEv.exit.i, !prof !19683, !llvm.loop !715

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.aa, %.critedge.i.i.i ], [ %i.t, %.critedge.i.i.i.preheader ]
  %i.aa = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -256 ; 4 uses
  %i.ab = load <16 x i8>, ptr %i.aa, align 16, !tbaa !19682
  %i.ac = icmp eq <16 x i8> %i.ab, zeroinitializer
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = and i16 %i.ad, 16383                    ; 2 uses
  %.not2.i.i = icmp eq i16 %i.ae, 16383
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.h, !prof !19683, !llvm.loop !716

bb.h:                                             ; preds = %.critedge.i.i.i
  %i.af = xor i16 %i.ae, 16383
  %i.ag = zext nneg i16 %i.af to i32
  %i.ah = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ag, i1 true)
  %i.ai = xor i32 %i.ah, 31
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = icmp ne ptr %i.aa, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = shl nuw nsw i64 %i.aj, 4
  %i.am = getelementptr i8, ptr %i.aa, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 16
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.h, %bb.e
  %.sroa.01.0.i = phi ptr [ null, %bb.e ], [ %i.an, %bb.h ], [ %i.x, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.e ], [ %i.aj, %bb.h ], [ %i.w, %thread-pre-split.i.i ]
  %i.ao = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.ap = icmp samesign ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = ptrtoint ptr %.sroa.01.0.i to i64
  %i.ar = or i64 %i.ao, %i.aq
  store i64 %i.ar, ptr %i.o, align 8, !tbaa !19676
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit: ; preds = %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEEE17precheckedAdvanceEv.exit.i
  %i.as = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -16
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %.neg.i.i.i ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %2 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !19682
  %.not.i.i7 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i7, label %bb.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE8clearTagEm.exit.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.15) #48
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEE.exit
  store i8 0, ptr %i.au, align 1, !tbaa !19682
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 14
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !20351
  %.not.i = icmp ult i8 %i.ax, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE8clearTagEm.exit.i
  %i.ay = shl i64 %4, 1
  %i.az = or disjoint i64 %i.ay, 1
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !19695
  %i.bb = and i64 %i.ba, 255
  %notmask.i.i = shl nsw i64 -1, %i.bb
  %i.bc = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !20271 ; 4 uses
  %i.be = and i64 %3, %i.bc
  %i.bf = shl nsw i64 %i.be, 8                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf
  %i.bh = icmp eq ptr %i.bg, %i.at
  br i1 %i.bh, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.l, %bb.j
  %.010.lcssa.i = phi i8 [ 0, %bb.j ], [ -16, %bb.l ]
  %i.bi = phi i64 [ %i.bf, %bb.j ], [ %i.bu, %bb.l ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 14 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !20351
  %i.bm = add i8 %i.bl, %.010.lcssa.i
  store i8 %i.bm, ptr %i.bk, align 2, !tbaa !20351
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE.exit

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %i.bn = phi i64 [ %i.bu, %bb.l ], [ %i.bf, %bb.j ]
  %.01126.i = phi i64 [ %i.bs, %bb.l ], [ %3, %bb.j ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 15 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !20350 ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bq, -2
  br i1 %.not.i17.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.br = add i8 %i.bq, -1
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !20350
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.bs = add i64 %i.az, %.01126.i                ; 2 uses
  %i.bt = and i64 %i.bs, %i.bc
  %i.bu = shl nsw i64 %i.bt, 8                    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bu
  %i.bw = icmp eq ptr %i.bv, %i.at
  br i1 %i.bw, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly15RegexMatchCache19findMatchesUncachedB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.355") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, i64 %2, ptr %3) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.folly::RegexMatchCache::RegexObject", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
end_hunk_18
begin_hunk_19_@_ZNK5folly15RegexMatchCache19findMatchesUncachedB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.an) #41
  br label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i
  store ptr %i.av, ptr %0, align 8, !tbaa !20274
  store ptr %i.az, ptr %i.i, align 8, !tbaa !20275
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at ; 2 uses
  store ptr %i.ba, ptr %i.j, align 8, !tbaa !20276
  br label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit

.loopexit:                                        ; preds = %bb.h, %_ZNKSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit: ; preds = %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.j, %_ZNK5folly15RegexMatchCache11RegexObjectclESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bb = phi ptr [ %i.ba, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %i.ab, %bb.j ], [ %i.ab, %_ZNK5folly15RegexMatchCache11RegexObjectclESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.bc = phi ptr [ %i.az, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %i.ak, %bb.j ], [ %i.ac, %_ZNK5folly15RegexMatchCache11RegexObjectclESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.bd = phi ptr [ %i.av, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.pre, %bb.j ], [ %.pre, %_ZNK5folly15RegexMatchCache11RegexObjectclESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.be = getelementptr inbounds i8, ptr %.sroa.020.031, i64 -16
  %.neg.i.i.i = mul nsw i64 %.sroa.9.030, -16
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %.neg.i.i.i ; 2 uses
  %.not19.i5.i = icmp eq i64 %.sroa.9.030, 0
  br i1 %.not19.i5.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

.critedge.i.i.preheader:                          ; preds = %bb.o, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit
  br label %.critedge.i.i

bb.o:                                             ; preds = %thread-pre-split.i
  %.not19.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not19.i.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit, %bb.o
  %i.bg = phi i64 [ %i.bi, %bb.o ], [ %.sroa.9.030, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit ]
  %i.bh = phi ptr [ %i.bj, %bb.o ], [ %.sroa.020.031, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit ]
  %i.bi = add nsw i64 %i.bg, -1                   ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bi
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !19682
  %.not.i18 = icmp eq i8 %i.bl, 0
  br i1 %.not.i18, label %bb.o, label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit, !prof !19683, !llvm.loop !715

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %bb.p
  %.017.i.i = phi ptr [ %i.bp, %bb.p ], [ %i.bf, %.critedge.i.i.preheader ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 14
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !19682
  %i.bo = and i8 %i.bn, 15
  %.not2.i = icmp eq i8 %i.bo, 0
  br i1 %.not2.i, label %bb.p, label %._crit_edge, !prof !19685

bb.p:                                             ; preds = %.critedge.i.i
  %i.bp = getelementptr inbounds i8, ptr %.017.i.i, i64 -256 ; 4 uses
  %i.bq = load <16 x i8>, ptr %i.bp, align 16, !tbaa !19682
  %i.br = icmp eq <16 x i8> %i.bq, zeroinitializer
  %i.bs = bitcast <16 x i1> %i.br to i16
  %i.bt = and i16 %i.bs, 16383                    ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %.017.i.i, i64 -512
  call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %.not3.i = icmp eq i16 %i.bt, 16383
  br i1 %.not3.i, label %.critedge.i.i, label %bb.q, !prof !19683, !llvm.loop !716

bb.q:                                             ; preds = %bb.p
  %i.bv = xor i16 %i.bt, 16383
  %i.bw = zext nneg i16 %i.bv to i32
  %i.bx = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true)
  %i.by = xor i32 %i.bx, 31
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = icmp ne ptr %i.bp, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ca)
  %i.cb = shl nuw nsw i64 %i.bz, 4
  %i.cc = getelementptr i8, ptr %i.bp, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit

_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit: ; preds = %thread-pre-split.i, %bb.q
  %.sroa.9.3 = phi i64 [ %i.bz, %bb.q ], [ %i.bi, %thread-pre-split.i ]
  %.sroa.020.1 = phi ptr [ %i.cd, %bb.q ], [ %i.bj, %thread-pre-split.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.020.1, null
  br i1 %.not, label %._crit_edge, label %bb.h

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @_ZN5folly15RegexMatchCache11RegexObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %.not.i.i.i19 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.body
  %i.ce = ptrtoint ptr %i.ab to i64
  %i.cf = ptrtoint ptr %.pre to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cg) #41
  br label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EED2Ev.exit

_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EED2Ev.exit: ; preds = %.body.thread, %.body, %bb.r
  %.pn.pn50 = phi { ptr, i32 } [ %i.c, %.body.thread ], [ %lpad.phi, %.body ], [ %lpad.phi, %bb.r ]
  resume { ptr, i32 } %.pn.pn50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5folly15RegexMatchCache20isReadyToFindMatchesERKNS_18RegexMatchCacheKeyE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = icmp ult i64 %i.b, 512
  br i1 %i.c, label %bb.b, label %.noexc12

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i64 %i.b, 256
  br i1 %i.d, label %.thread77, label %.noexc3

.noexc3:                                          ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19761
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19734 ; 3 uses
  %i.j = load i128, ptr %1, align 8
  %i.k = load i128, ptr %i.i, align 8
  %i.l = xor i128 %i.j, %i.k
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = getelementptr i8, ptr %i.i, i64 16
  %i.o = load i128, ptr %i.m, align 8
  %i.p = load i128, ptr %i.n, align 8
  %i.q = xor i128 %i.o, %i.p
  %i.r = or i128 %i.l, %i.q
  %i.s = icmp ne i128 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %.thread82, label %.thread77

.noexc12:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %1, align 8, !tbaa !19676  ; 2 uses
  %i.w = lshr i64 %i.v, 56
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1) ; 2 uses
  %i.x = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.y = or disjoint i64 %i.x, 1
  %i.z = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.aa = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ac = and i64 %i.b, 255                       ; 2 uses
  %i.ad = shl nuw i64 1, %i.ac
  %notmask.i = shl nsw i64 -1, %i.ac
  %i.ae = xor i64 %notmask.i, -1
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !19732
  br label %.noexc15

.noexc15:                                         ; preds = %.noexc12, %bb.c
  %.024.i123 = phi i64 [ %i.ad, %.noexc12 ], [ %i.bn, %bb.c ]
  %.026.i122 = phi i64 [ %i.v, %.noexc12 ], [ %i.bo, %bb.c ] ; 2 uses
  %i.ag = and i64 %.026.i122, %i.ae
  %i.ah = shl nsw i64 %i.ag, 7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.aj, i32 0, i32 3, i32 1)
  %i.ak = load <16 x i8>, ptr %i.ai, align 16     ; 2 uses
  %i.al = icmp eq <16 x i8> %i.ak, %i.ab
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = and i32 %i.an, 16383
  %.not = icmp eq i32 %i.ao, 0
  %i.ap = extractelement <16 x i8> %i.ak, i64 15
  br i1 %.not, label %.loopexit118, label %.noexc18.preheader

.noexc18.preheader:                               ; preds = %.noexc15
  %i.aq = icmp ne ptr %i.ai, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aq)
  br label %.noexc18

.noexc18:                                         ; preds = %.noexc18.preheader, %.critedge.i
  %.sroa.046.0 = phi i32 [ %i.bk, %.critedge.i ], [ %i.an, %.noexc18.preheader ] ; 4 uses
  %i.ar = icmp ne i32 %.sroa.046.0, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.046.0, i1 true)
  %i.at = shl nuw nsw i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr i8, ptr %i.ai, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19734 ; 3 uses
  %i.ay = load i128, ptr %1, align 8
  %i.az = load i128, ptr %i.ax, align 8
  %i.ba = xor i128 %i.ay, %i.az
  %i.bb = getelementptr i8, ptr %1, i64 16
  %i.bc = getelementptr i8, ptr %i.ax, i64 16
  %i.bd = load i128, ptr %i.bb, align 8
  %i.be = load i128, ptr %i.bc, align 8
  %i.bf = xor i128 %i.bd, %i.be
  %i.bg = or i128 %i.ba, %i.bf
  %i.bh = icmp ne i128 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %.not9.i.i.i.i.i.i.i.i31 = icmp eq i32 %i.bi, 0
  br i1 %.not9.i.i.i.i.i.i.i.i31, label %.thread82, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %.noexc18
  %i.bj = add nsw i32 %.sroa.046.0, -1
  %i.bk = and i32 %i.bj, %.sroa.046.0             ; 2 uses
  %i.bl = and i32 %i.bk, 16382
  %.not114 = icmp eq i32 %i.bl, 0
  br i1 %.not114, label %.loopexit118, label %.noexc18, !llvm.loop !770

.loopexit118:                                     ; preds = %.critedge.i, %.noexc15
  %i.bm = icmp eq i8 %i.ap, 0
  br i1 %i.bm, label %.thread77, label %bb.c, !prof !19685

bb.c:                                             ; preds = %.loopexit118
  %i.bn = add i64 %.024.i123, -1                  ; 2 uses
  %i.bo = add i64 %i.y, %.026.i122
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %.thread77, label %.noexc15, !llvm.loop !771

.thread82:                                        ; preds = %.noexc18, %.noexc3
  %i.bp = phi ptr [ %i.i, %.noexc3 ], [ %i.ax, %.noexc18 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !19695 ; 2 uses
  %i.bt = icmp ult i64 %i.bs, 256
  br i1 %i.bt, label %.thread77, label %.noexc21

.noexc21:                                         ; preds = %.thread82
  %i.bu = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bv = zext i64 %i.bu to i128
  %i.bw = mul nuw i128 %i.bv, 14181476777654086739
  %i.bx = lshr i128 %i.bw, 64
  %i.by = trunc nuw i128 %i.bx to i64
  %i.bz = mul i64 %i.bu, -4265267296055464877
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = mul i64 %i.ca, -4265267296055464877     ; 2 uses
  %i.cc = lshr i64 %i.cb, 14
  %i.cd = and i64 %i.cc, 255
  %i.ce = lshr i64 %i.cb, 22
  %.sroa.speculated.i.i.i34 = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1) ; 2 uses
  %i.cf = shl nuw nsw i64 %.sroa.speculated.i.i.i34, 1
  %i.cg = or disjoint i64 %i.cf, 1
  %i.ch = trunc nuw i64 %.sroa.speculated.i.i.i34 to i8
  %i.ci = insertelement <16 x i8> poison, i8 %i.ch, i64 0
  %i.cj = shufflevector <16 x i8> %i.ci, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ck = and i64 %i.bs, 255                      ; 2 uses
  %i.cl = shl nuw i64 1, %i.ck
  %notmask.i37 = shl nsw i64 -1, %i.ck
  %i.cm = xor i64 %notmask.i37, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !19714
  %i.cp = load ptr, ptr %i.bq, align 8
  br label %.noexc24

.noexc24:                                         ; preds = %.noexc21, %bb.d
  %.023.i.i125 = phi i64 [ %i.cl, %.noexc21 ], [ %i.dp, %bb.d ]
  %.025.i.i124 = phi i64 [ %i.ce, %.noexc21 ], [ %i.dq, %bb.d ] ; 2 uses
  %i.cq = and i64 %.025.i.i124, %i.cm
  %i.cr = shl nsw i64 %i.cq, 6
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr ; 3 uses
  %i.ct = load <16 x i8>, ptr %i.cs, align 16     ; 2 uses
  %i.cu = icmp eq <16 x i8> %i.ct, %i.cj
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %i.cw = zext i16 %i.cv to i32                   ; 2 uses
  %i.cx = and i32 %i.cw, 4095
  %.not115 = icmp eq i32 %i.cx, 0
  %i.cy = extractelement <16 x i8> %i.ct, i64 15
  br i1 %.not115, label %.loopexit, label %.noexc26.preheader

.noexc26.preheader:                               ; preds = %.noexc24
  %i.cz = icmp ne ptr %i.cs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cz)
  br label %.noexc26

.noexc26:                                         ; preds = %.noexc26.preheader, %.critedge.i.i
  %.sroa.055.0 = phi i32 [ %i.dm, %.critedge.i.i ], [ %i.cw, %.noexc26.preheader ] ; 4 uses
  %i.da = icmp ne i32 %.sroa.055.0, 0
  tail call void @llvm.assume(i1 %i.da)
  %i.db = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.055.0, i1 true)
  %i.dc = shl nuw nsw i32 %i.db, 2
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr i8, ptr %i.cs, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !19786
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !19769
  %i.dk = icmp eq ptr %i.bp, %i.dj
  br i1 %i.dk, label %.thread77, label %.critedge.i.i, !prof !19685

.critedge.i.i:                                    ; preds = %.noexc26
  %i.dl = add nsw i32 %.sroa.055.0, -1
  %i.dm = and i32 %i.dl, %.sroa.055.0             ; 2 uses
  %i.dn = and i32 %i.dm, 4094
  %.not116 = icmp eq i32 %i.dn, 0
  br i1 %.not116, label %.loopexit, label %.noexc26, !llvm.loop !766

.loopexit:                                        ; preds = %.critedge.i.i, %.noexc24
  %i.do = icmp eq i8 %i.cy, 0
  br i1 %i.do, label %.thread77, label %bb.d, !prof !19685

bb.d:                                             ; preds = %.loopexit
  %i.dp = add i64 %.023.i.i125, -1                ; 2 uses
  %i.dq = add i64 %i.cg, %.025.i.i124
  %.not.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i, label %.thread77, label %.noexc24, !llvm.loop !767

.thread77:                                        ; preds = %.loopexit118, %bb.c, %.loopexit, %bb.d, %.noexc26, %.thread82, %.noexc3, %bb.b
  %i.dr = phi i1 [ false, %.noexc3 ], [ true, %.loopexit ], [ false, %bb.b ], [ false, %.noexc26 ], [ true, %.thread82 ], [ true, %bb.d ], [ false, %bb.c ], [ false, %.loopexit118 ]
  ret i1 %i.dr
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15RegexMatchCache20prepareToFindMatchesERKNS_25RegexMatchCacheKeyAndViewE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.452", align 8    ; 3 uses
  %3 = alloca %"struct.std::pair.452", align 8    ; 3 uses
  %4 = alloca %"struct.std::pair.384", align 8    ; 6 uses
  %5 = alloca %"class.std::tuple.154", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.221", align 1    ; 3 uses
  %7 = alloca %"struct.std::pair.369", align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %8 = alloca %"struct.std::pair.375", align 8    ; 8 uses
  %9 = alloca %"struct.google::CheckOpString", align 8 ; 5 uses
  %10 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %11 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %12 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %13 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %14 = alloca %"class.folly::RegexMatchCache::RegexObject", align 8 ; 9 uses
  %15 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %16 = alloca %"class.folly::RegexMatchCache::RegexObject", align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %17 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %18 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %19 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21817)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40, !noalias !21817
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40, !noalias !21817
  store ptr %1, ptr %5, align 8, !tbaa !19769, !alias.scope !21818, !noalias !21817
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40, !noalias !21817
  %i.d = load i64, ptr %1, align 8, !tbaa !19676, !noalias !21819 ; 2 uses
  %i.e = lshr i64 %i.d, 56
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.384") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 %i.d, i64 %.sroa.speculated.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40, !noalias !21817
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40, !noalias !21817
  %.sroa.03.0.copyload.i = load ptr, ptr %4, align 8, !tbaa !20280, !noalias !21817 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.44.0.copyload.i = load i64, ptr %.sroa.44.0..sroa_idx.i, align 8, !tbaa !19676, !noalias !21817
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !21820)
  store ptr %.sroa.03.0.copyload.i, ptr %7, align 8, !alias.scope !21817
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21817
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.h = load i8, ptr %i.f, align 8, !tbaa !20155, !range !20060, !noalias !21821, !noundef !1339
  store i8 %i.h, ptr %i.g, align 8, !tbaa !21824, !alias.scope !21821
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40, !noalias !21817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.i = load ptr, ptr %.sroa.03.0.copyload.i, align 8, !tbaa !19734 ; 3 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !19769
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  %i.j = invoke { i64, i8 } @_ZN5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract = extractvalue { i64, i8 } %i.j, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.j, 1 ; 3 uses
  store i64 %.fca.0.extract, ptr %8, align 8
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i8 %.fca.1.extract, ptr %.sroa.257.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.k = load i8, ptr %i.g, align 8, !tbaa !20155, !range !20060, !noundef !1339
  %i.l = icmp eq i8 %.fca.1.extract, %i.k
  br i1 %i.l, label %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, label %bb.d, !prof !19685

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef ptr @_ZN6google17MakeCheckOpStringIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.257.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull @.str.301)
          to label %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit unwind label %bb.g ; 2 uses

_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.d
  store ptr %i.m, ptr %9, align 8, !tbaa !21826
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge, label %bb.h

_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge: ; preds = %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  %.pre = load i8, ptr %i.g, align 8, !tbaa !20155, !range !20060
  br label %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread

_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %bb.c, %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge
  %i.n = phi i8 [ %.pre, %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge ], [ %.fca.1.extract, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19695 ; 3 uses
  %i.s = icmp ult i64 %i.r, 256                   ; 3 uses
  br i1 %i.o, label %bb.n, label %bb.az

bb.e:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit403

bb.f:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  invoke void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull @.str.288, i32 noundef 422, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #42
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #42
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.g
  %.pn130 = phi { ptr, i32 } [ %i.x, %bb.k ], [ %i.v, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit

bb.n:                                             ; preds = %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread
  br i1 %i.s, label %.critedge, label %.noexc279

.noexc279:                                        ; preds = %bb.n
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !19769 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = zext i64 %i.aa to i128
  %i.ac = mul nuw i128 %i.ab, 14181476777654086739
  %i.ad = lshr i128 %i.ac, 64
  %i.ae = trunc nuw i128 %i.ad to i64
  %i.af = mul i64 %i.aa, -4265267296055464877
  %i.ag = xor i64 %i.af, %i.ae
  %i.ah = mul i64 %i.ag, -4265267296055464877     ; 2 uses
  %i.ai = lshr i64 %i.ah, 14
  %i.aj = and i64 %i.ai, 255
  %i.ak = lshr i64 %i.ah, 22
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1) ; 2 uses
  %i.al = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.am = or disjoint i64 %i.al, 1
  %i.an = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ao = insertelement <16 x i8> poison, i8 %i.an, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aq = and i64 %i.r, 255                       ; 2 uses
  %i.ar = shl nuw i64 1, %i.aq
  %notmask.i = shl nsw i64 -1, %i.aq
  %i.as = xor i64 %notmask.i, -1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19714
  br label %.noexc282

.noexc282:                                        ; preds = %.noexc279, %bb.o
  %.023.i.i257749 = phi i64 [ %i.ar, %.noexc279 ], [ %i.bv, %bb.o ]
  %.025.i.i256748 = phi i64 [ %i.ak, %.noexc279 ], [ %i.bw, %bb.o ] ; 2 uses
  %i.av = and i64 %.025.i.i256748, %i.as
  %i.aw = shl nsw i64 %i.av, 6
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw ; 3 uses
  %i.ay = load <16 x i8>, ptr %i.ax, align 16     ; 2 uses
  %i.az = icmp eq <16 x i8> %i.ay, %i.ap
  %i.ba = bitcast <16 x i1> %i.az to i16
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = and i32 %i.bb, 4095
  %.not699 = icmp eq i32 %i.bc, 0
  %i.bd = extractelement <16 x i8> %i.ay, i64 15
  br i1 %.not699, label %.loopexit, label %.noexc284.preheader

.noexc284.preheader:                              ; preds = %.noexc282
  %i.be = icmp ne ptr %i.ax, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.be)
  %i.bf = load ptr, ptr %i.p, align 8, !tbaa !19715
  br label %.noexc284

.noexc284:                                        ; preds = %.noexc284.preheader, %.critedge.i.i277
  %.sroa.0523.0 = phi i32 [ %i.bs, %.critedge.i.i277 ], [ %i.bb, %.noexc284.preheader ] ; 4 uses
  %i.bg = icmp ne i32 %.sroa.0523.0, 0
  call void @llvm.assume(i1 %i.bg)
  %i.bh = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0523.0, i1 true)
  %i.bi = shl nuw nsw i32 %i.bh, 2
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %i.ax, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !19786
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !19769
  %i.bq = icmp eq ptr %i.z, %i.bp
  br i1 %i.bq, label %bb.p, label %.critedge.i.i277, !prof !19685

.critedge.i.i277:                                 ; preds = %.noexc284
  %i.br = add nsw i32 %.sroa.0523.0, -1
  %i.bs = and i32 %i.br, %.sroa.0523.0            ; 2 uses
  %i.bt = and i32 %i.bs, 4094
  %.not700 = icmp eq i32 %i.bt, 0
  br i1 %.not700, label %.loopexit, label %.noexc284, !llvm.loop !766

.loopexit:                                        ; preds = %.critedge.i.i277, %.noexc282
  %i.bu = icmp eq i8 %i.bd, 0
  br i1 %i.bu, label %.critedge, label %bb.o, !prof !19685

bb.o:                                             ; preds = %.loopexit
  %i.bv = add i64 %.023.i.i257749, -1             ; 2 uses
  %i.bw = add i64 %i.am, %.025.i.i256748
  %.not.i.i258 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i258, label %.critedge, label %.noexc282, !llvm.loop !767

bb.p:                                             ; preds = %.noexc284
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %11, ptr noundef nonnull @.str.288, i32 noundef 426)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %11)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.302, i64 noundef 52)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.r
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %11) #42
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %11) #42
  unreachable

.critedge:                                        ; preds = %.loopexit, %bb.o, %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !19695
  %i.cd = icmp ult i64 %i.cc, 256
  br i1 %i.cd, label %bb.u, label %bb.af

bb.u:                                             ; preds = %.critedge
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !19695
  %i.cg = icmp ult i64 %i.cf, 256
  br i1 %i.cg, label %.critedge138, label %bb.v, !prof !19685

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #40
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull @.str.288, i32 noundef 428)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.303, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290: ; preds = %bb.x
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #42
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #40
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #42
  unreachable

.critedge138:                                     ; preds = %bb.u
  br i1 %i.s, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %bb.aa, !prof !19685

bb.aa:                                            ; preds = %.critedge138
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #40
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull @.str.288, i32 noundef 429)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %13)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.304, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit292: ; preds = %bb.ac
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %13) #42
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #40
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %13) #42
  unreachable

bb.af:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #40
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.037.0.copyload = load i64, ptr %i.cp, align 8, !tbaa !19676
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.238.0.copyload = load ptr, ptr %.sroa.238.0..sroa_idx, align 8, !tbaa !19794 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.238.0.copyload, i64 %.sroa.037.0.copyload
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.cr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9do_assignEPKcS7_j(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef %.sroa.238.0.copyload, ptr noundef %i.cq, i32 noundef 0)
          to label %_ZN5folly15RegexMatchCache11RegexObjectC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5boost13re_detail_50026basic_regex_implementationIcNS0_12regex_traitsIcNS0_16cpp_regex_traitsIcEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #40
  br label %.body

_ZN5folly15RegexMatchCache11RegexObjectC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !19675 ; 2 uses
  %i.cv = and i64 %i.cu, -16                      ; 2 uses
  %.not701750 = icmp eq i64 %i.cv, 0
  br i1 %.not701750, label %._crit_edge754, label %.lr.ph753

.lr.ph753:                                        ; preds = %_ZN5folly15RegexMatchCache11RegexObjectC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = and i64 %i.cu, 15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  br label %bb.an

._crit_edge754:                                   ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit, %.critedge.i.i301, %_ZN5folly15RegexMatchCache11RegexObjectC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !19782 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i, label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge754
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.db, align 8, !tbaa !19784
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !19785
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !797
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #40, !call_target !5069, !inline_history !780
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !797
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #40, !call_target !5070, !inline_history !780
  br label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19682
  %.not.i.i.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !19786
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i.i.i = phi i32 [ %i.de, %bb.ak ], [ %i.do, %bb.al ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dp, label %bb.am, label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit, !prof !19683

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #40
  br label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit

_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit: ; preds = %._crit_edge754, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit
end_hunk_19
begin_hunk_20_@_ZN5folly15RegexMatchCache20prepareToFindMatchesERKNS_25RegexMatchCacheKeyAndViewE:bb.a
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE19tryEmplaceValueImplISB_JRKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.452") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 %i.ei, i64 %.sroa.speculated.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0436.0752, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0436.0752)
          to label %.noexc296 unwind label %bb.at

.noexc296:                                        ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40, !noalias !21827
  %i.ej = load i64, ptr %8, align 8, !tbaa !19676 ; 5 uses
  %i.ek = load i64, ptr %i.dq, align 8, !tbaa !19676 ; 2 uses
  %i.el = icmp slt i64 %i.ek, 0
  br i1 %i.el, label %bb.ap, label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

bb.ap:                                            ; preds = %.noexc296
  %i.em = shl i64 %i.ek, 1
  %i.en = inttoptr i64 %i.em to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.en, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !19676
  br label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i: ; preds = %bb.ap, %.noexc296
  %.sroa.3.0.i.i = phi i64 [ %.sroa.3.0.copyload.i.i, %bb.ap ], [ 64, %.noexc296 ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.ap ], [ %i.dq, %.noexc296 ]
  %i.eo = icmp ult i64 %i.ej, %.sroa.3.0.i.i
  br i1 %i.eo, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i
  %i.ep = icmp eq i64 %.sroa.3.0.i.i, 64
  %i.eq = icmp eq i64 %i.ej, 63
  %or.cond.i = and i1 %i.eq, %i.ep
  br i1 %or.cond.i, label %bb.ar, label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit

bb.ar:                                            ; preds = %bb.aq, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i
  %i.er = invoke { ptr, i64 } @_ZN5folly28RegexMatchCacheDynamicBitset8reserve_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, i64 noundef %i.ej)
          to label %.noexc298 unwind label %bb.as

.noexc298:                                        ; preds = %bb.ar
  %i.es = extractvalue { ptr, i64 } %i.er, 0
  br label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit

_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit: ; preds = %bb.aq, %.noexc298
  %.pn.i297 = phi ptr [ %i.es, %.noexc298 ], [ %.sroa.0.0.i.i, %bb.aq ]
  %i.et = lshr i64 %i.ej, 6
  %i.eu = and i64 %i.ej, 63
  %i.ev = shl nuw i64 1, %i.eu
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.pn.i297, i64 %i.et ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !19676
  %i.ey = or i64 %i.ex, %i.ev
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !19676
  br label %bb.au

bb.as:                                            ; preds = %bb.ar, %bb.an
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.at:                                            ; preds = %bb.ao
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.au:                                            ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit, %_ZNK5folly15RegexMatchCache11RegexObjectclESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.fb = getelementptr inbounds i8, ptr %.sroa.0436.0752, i64 -16
  %.neg.i.i.i = mul nsw i64 %.sroa.9439.0751, -16
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %.neg.i.i.i ; 2 uses
  %.not19.i5.i = icmp eq i64 %.sroa.9439.0751, 0
  br i1 %.not19.i5.i, label %.critedge.i.i301.preheader, label %thread-pre-split.i

.critedge.i.i301.preheader:                       ; preds = %bb.av, %bb.au
  br label %.critedge.i.i301

bb.av:                                            ; preds = %thread-pre-split.i
  %.not19.i.i300 = icmp eq i64 %i.ff, 0
  br i1 %.not19.i.i300, label %.critedge.i.i301.preheader, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.au, %bb.av
  %i.fd = phi i64 [ %i.ff, %bb.av ], [ %.sroa.9439.0751, %bb.au ]
  %i.fe = phi ptr [ %i.fg, %bb.av ], [ %.sroa.0436.0752, %bb.au ]
  %i.ff = add nsw i64 %i.fd, -1                   ; 4 uses
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 -16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !19682
  %.not.i299 = icmp eq i8 %i.fi, 0
  br i1 %.not.i299, label %bb.av, label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit, !prof !19683, !llvm.loop !715

.critedge.i.i301:                                 ; preds = %.critedge.i.i301.preheader, %bb.aw
  %.017.i.i302 = phi ptr [ %i.fm, %bb.aw ], [ %i.fc, %.critedge.i.i301.preheader ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.017.i.i302, i64 14
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !19682
  %i.fl = and i8 %i.fk, 15
  %.not2.i = icmp eq i8 %i.fl, 0
  br i1 %.not2.i, label %bb.aw, label %._crit_edge754, !prof !19685

bb.aw:                                            ; preds = %.critedge.i.i301
  %i.fm = getelementptr inbounds i8, ptr %.017.i.i302, i64 -256 ; 4 uses
  %i.fn = load <16 x i8>, ptr %i.fm, align 16, !tbaa !19682
  %i.fo = icmp eq <16 x i8> %i.fn, zeroinitializer
  %i.fp = bitcast <16 x i1> %i.fo to i16
  %i.fq = and i16 %i.fp, 16383                    ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %.017.i.i302, i64 -512
  call void @llvm.prefetch.p0(ptr nonnull %i.fr, i32 0, i32 3, i32 1)
  %.not3.i = icmp eq i16 %i.fq, 16383
  br i1 %.not3.i, label %.critedge.i.i301, label %bb.ax, !prof !19683, !llvm.loop !716

bb.ax:                                            ; preds = %bb.aw
  %i.fs = xor i16 %i.fq, 16383
  %i.ft = zext nneg i16 %i.fs to i32
  %i.fu = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ft, i1 true)
  %i.fv = xor i32 %i.fu, 31
  %i.fw = zext nneg i32 %i.fv to i64              ; 2 uses
  %i.fx = icmp ne ptr %i.fm, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fx)
  %i.fy = shl nuw nsw i64 %i.fw, 4
  %i.fz = getelementptr i8, ptr %i.fm, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit: ; preds = %thread-pre-split.i, %bb.ax
  %.sroa.9439.3 = phi i64 [ %i.fw, %bb.ax ], [ %i.ff, %thread-pre-split.i ]
  %.sroa.0436.1 = phi ptr [ %i.ga, %bb.ax ], [ %i.fg, %thread-pre-split.i ] ; 2 uses
  %.not701 = icmp eq ptr %.sroa.0436.1, null
  br i1 %.not701, label %._crit_edge754, label %bb.an

bb.ay:                                            ; preds = %bb.at, %bb.as
  %.pn127 = phi { ptr, i32 } [ %i.fa, %bb.at ], [ %i.ez, %bb.as ]
  call void @_ZN5folly15RegexMatchCache11RegexObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #40
  br label %.body

.body:                                            ; preds = %bb.ag, %bb.ay
  %.pn127.pn = phi { ptr, i32 } [ %.pn127, %bb.ay ], [ %i.cs, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #40
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit

bb.az:                                            ; preds = %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread
  br i1 %i.s, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %.noexc149

.noexc149:                                        ; preds = %bb.az
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !19769 ; 2 uses
  %i.gc = ptrtoint ptr %i.gb to i64               ; 2 uses
  %i.gd = zext i64 %i.gc to i128
  %i.ge = mul nuw i128 %i.gd, 14181476777654086739
  %i.gf = lshr i128 %i.ge, 64
  %i.gg = trunc nuw i128 %i.gf to i64
  %i.gh = mul i64 %i.gc, -4265267296055464877
  %i.gi = xor i64 %i.gh, %i.gg
  %i.gj = mul i64 %i.gi, -4265267296055464877     ; 2 uses
  %i.gk = lshr i64 %i.gj, 14
  %i.gl = and i64 %i.gk, 255
  %i.gm = lshr i64 %i.gj, 22                      ; 2 uses
  %.sroa.speculated.i.i.i303 = call i64 @llvm.umax.i64(i64 %i.gl, i64 1) ; 2 uses
  %i.gn = shl nuw nsw i64 %.sroa.speculated.i.i.i303, 1
  %i.go = or disjoint i64 %i.gn, 1                ; 2 uses
  %i.gp = trunc nuw i64 %.sroa.speculated.i.i.i303 to i8
  %i.gq = insertelement <16 x i8> poison, i8 %i.gp, i64 0
  %i.gr = shufflevector <16 x i8> %i.gq, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.gs = and i64 %i.r, 255                       ; 2 uses
  %i.gt = shl nuw i64 1, %i.gs
  %notmask.i306 = shl nsw i64 -1, %i.gs
  %i.gu = xor i64 %notmask.i306, -1
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !19714
  br label %.noexc152

.noexc152:                                        ; preds = %.noexc149, %bb.ba
  %.023.i.i735 = phi i64 [ %i.gt, %.noexc149 ], [ %i.hx, %bb.ba ]
  %.025.i.i734 = phi i64 [ %i.gm, %.noexc149 ], [ %i.hy, %bb.ba ] ; 2 uses
  %i.gx = and i64 %.025.i.i734, %i.gu
  %i.gy = shl nsw i64 %i.gx, 6
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gy ; 3 uses
  %i.ha = load <16 x i8>, ptr %i.gz, align 16     ; 2 uses
  %i.hb = icmp eq <16 x i8> %i.ha, %i.gr
  %i.hc = bitcast <16 x i1> %i.hb to i16
  %i.hd = zext i16 %i.hc to i32                   ; 2 uses
  %i.he = and i32 %i.hd, 4095
  %.not686 = icmp eq i32 %i.he, 0
  %i.hf = extractelement <16 x i8> %i.ha, i64 15
  br i1 %.not686, label %.loopexit710, label %.noexc154.preheader

.noexc154.preheader:                              ; preds = %.noexc152
  %i.hg = icmp ne ptr %i.gz, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.hg)
  %i.hh = load ptr, ptr %i.p, align 8, !tbaa !19715
  br label %.noexc154

.noexc154:                                        ; preds = %.noexc154.preheader, %.critedge.i.i
  %.sroa.0459.0 = phi i32 [ %i.hu, %.critedge.i.i ], [ %i.hd, %.noexc154.preheader ] ; 4 uses
  %i.hi = icmp ne i32 %.sroa.0459.0, 0
  call void @llvm.assume(i1 %i.hi)
  %i.hj = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0459.0, i1 true)
  %i.hk = shl nuw nsw i32 %i.hj, 2
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr i8, ptr %i.gz, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 16
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !19786 ; 2 uses
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.hh, i64 %i.hp ; 4 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !19769
  %i.hs = icmp eq ptr %i.gb, %i.hr
  br i1 %i.hs, label %bb.bb, label %.critedge.i.i, !prof !19685

.critedge.i.i:                                    ; preds = %.noexc154
  %i.ht = add nsw i32 %.sroa.0459.0, -1
  %i.hu = and i32 %i.ht, %.sroa.0459.0            ; 2 uses
  %i.hv = and i32 %i.hu, 4094
  %.not687 = icmp eq i32 %i.hv, 0
  br i1 %.not687, label %.loopexit710, label %.noexc154, !llvm.loop !766

.loopexit710:                                     ; preds = %.critedge.i.i, %.noexc152
  %i.hw = icmp eq i8 %i.hf, 0
  br i1 %i.hw, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %bb.ba, !prof !19685

bb.ba:                                            ; preds = %.loopexit710
  %i.hx = add i64 %.023.i.i735, -1                ; 2 uses
  %i.hy = add i64 %.025.i.i734, %i.go
  %.not.i.i = icmp eq i64 %i.hx, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %.noexc152, !llvm.loop !767

bb.bb:                                            ; preds = %.noexc154
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !20277 ; 2 uses
  store ptr null, ptr %i.hz, align 8, !tbaa !20277
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !20331 ; 6 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.ib, align 8, !tbaa !20331
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 24 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !19676 ; 4 uses
  store i64 0, ptr %i.id, align 8, !tbaa !19676
  %i.if = icmp ult i64 %i.ie, 256
  br i1 %i.if, label %bb.bc, label %.noexc238, !prof !19683

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #40
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %15, ptr noundef nonnull @.str.288, i32 noundef 449)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.ig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %15)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.ih = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef nonnull @.str.305, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310 unwind label %bb.bg ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310: ; preds = %bb.be
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %15) #42
  unreachable

bb.bf:                                            ; preds = %bb.bc
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #40
  br label %bb.de

bb.bg:                                            ; preds = %bb.be, %bb.bd
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %15) #42
  unreachable

.noexc238:                                        ; preds = %bb.bb
  %i.ik = load i64, ptr %i.q, align 8, !tbaa !19695 ; 2 uses
  %i.il = icmp ult i64 %i.ik, 256
  br i1 %i.il, label %.noexc239, label %.noexc250

.noexc250:                                        ; preds = %.noexc238
  %i.im = and i64 %i.ik, 255                      ; 2 uses
  %i.in = shl nuw i64 1, %i.im
  %notmask.i316 = shl nsw i64 -1, %i.im
  %i.io = xor i64 %notmask.i316, -1
  %i.ip = load ptr, ptr %i.gv, align 8, !tbaa !19714
  br label %.noexc253

.noexc253:                                        ; preds = %.noexc250, %bb.bh
  %.023.i738 = phi i64 [ %i.in, %.noexc250 ], [ %i.jm, %bb.bh ]
  %.025.i737 = phi i64 [ %i.gm, %.noexc250 ], [ %i.jn, %bb.bh ] ; 2 uses
  %i.iq = and i64 %.025.i737, %i.io
  %i.ir = shl nsw i64 %i.iq, 6
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ir ; 3 uses
  %i.it = load <16 x i8>, ptr %i.is, align 16     ; 2 uses
  %i.iu = icmp eq <16 x i8> %i.it, %i.gr
  %i.iv = bitcast <16 x i1> %i.iu to i16
  %i.iw = zext i16 %i.iv to i32                   ; 2 uses
  %i.ix = and i32 %i.iw, 4095
  %.not688 = icmp eq i32 %i.ix, 0
  %i.iy = extractelement <16 x i8> %i.it, i64 15
  br i1 %.not688, label %.loopexit708, label %.noexc254.preheader

.noexc254.preheader:                              ; preds = %.noexc253
  %i.iz = icmp ne ptr %i.is, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.iz)
  br label %.noexc254

.noexc254:                                        ; preds = %.noexc254.preheader, %.critedge.i
  %.sroa.0514.0 = phi i32 [ %i.jj, %.critedge.i ], [ %i.iw, %.noexc254.preheader ] ; 4 uses
  %i.ja = icmp ne i32 %.sroa.0514.0, 0
  call void @llvm.assume(i1 %i.ja)
  %i.jb = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0514.0, i1 true)
  %i.jc = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.jd = shl nuw nsw i64 %i.jc, 2
  %i.je = getelementptr i8, ptr %i.is, i64 %i.jd  ; 2 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 16
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !19786
  %i.jh = icmp eq i32 %i.ho, %i.jg
  br i1 %i.jh, label %.noexc239.loopexit, label %.critedge.i, !prof !19685

.critedge.i:                                      ; preds = %.noexc254
  %i.ji = add nsw i32 %.sroa.0514.0, -1
  %i.jj = and i32 %i.ji, %.sroa.0514.0            ; 2 uses
  %i.jk = and i32 %i.jj, 4094
  %.not689 = icmp eq i32 %i.jk, 0
  br i1 %.not689, label %.loopexit708, label %.noexc254, !llvm.loop !778

.loopexit708:                                     ; preds = %.critedge.i, %.noexc253
  %i.jl = icmp eq i8 %i.iy, 0
  br i1 %i.jl, label %.noexc239, label %bb.bh, !prof !19685

bb.bh:                                            ; preds = %.loopexit708
  %i.jm = add i64 %.023.i738, -1                  ; 2 uses
  %i.jn = add i64 %.025.i737, %i.go
  %.not.i = icmp eq i64 %i.jm, 0
  br i1 %.not.i, label %.noexc239, label %.noexc253, !llvm.loop !779

.noexc239.loopexit:                               ; preds = %.noexc254
  %i.jo = getelementptr i8, ptr %i.je, i64 16
  br label %.noexc239

.noexc239:                                        ; preds = %bb.bh, %.loopexit708, %.noexc239.loopexit, %.noexc238
  %.sroa.5513.0 = phi i64 [ 0, %.noexc238 ], [ %i.jc, %.noexc239.loopexit ], [ 0, %.loopexit708 ], [ 0, %bb.bh ]
  %.sroa.0512.0 = phi ptr [ null, %.noexc238 ], [ %i.jo, %.noexc239.loopexit ], [ null, %.loopexit708 ], [ null, %bb.bh ]
  invoke void @_ZN5folly3f146detail16F14VectorMapImplIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaISt4pairIKS5_S7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr %.sroa.0512.0, i64 %.sroa.5513.0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %.noexc240 unwind label %bb.bp

.noexc240:                                        ; preds = %.noexc239
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #40
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.018.0.copyload = load i64, ptr %i.jp, align 8, !tbaa !19676
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.219.0.copyload = load ptr, ptr %.sroa.219.0..sroa_idx, align 8, !tbaa !19794 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.219.0.copyload, i64 %.sroa.018.0.copyload
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.jr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9do_assignEPKcS7_j(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef %.sroa.219.0.copyload, ptr noundef %i.jq, i32 noundef 0)
          to label %.lr.ph unwind label %bb.bi    ; 0 uses

bb.bi:                                            ; preds = %.noexc240
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5boost13re_detail_50026basic_regex_implementationIcNS0_12regex_traitsIcNS0_16cpp_regex_traitsIcEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #40
  br label %.body319

.lr.ph:                                           ; preds = %.noexc240
  %i.jt = lshr i64 %i.ie, 8
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.kb = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  br label %.backedge

._crit_edge:                                      ; preds = %bb.cw
  %i.kc = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !19782 ; 8 uses
  %.not.i.i.i.i324 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i.i324, label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit328, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 4 uses
  %i.kf = load atomic i64, ptr %i.ke acquire, align 8 ; 2 uses
  %i.kg = icmp eq i64 %i.kf, 4294967297
  %i.kh = trunc i64 %i.kf to i32                  ; 2 uses
  br i1 %i.kg, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.ke, align 8, !tbaa !19784
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  store i32 0, ptr %i.ki, align 4, !tbaa !19785
  %i.kj = load ptr, ptr %i.kd, align 8, !tbaa !797
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(16) %i.kd) #40, !call_target !5069, !inline_history !780
  %i.km = load ptr, ptr %i.kd, align 8, !tbaa !797
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dereferenceable(16) %i.kd) #40, !call_target !5070, !inline_history !780
  br label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit328

bb.bl:                                            ; preds = %bb.bj
  %i.kp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19682
  %.not.i.i.i.i.i325 = icmp eq i8 %i.kp, 0
  br i1 %.not.i.i.i.i.i325, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kq = add nsw i32 %i.kh, -1
  store i32 %i.kq, ptr %i.ke, align 8, !tbaa !19786
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i326

bb.bn:                                            ; preds = %bb.bl
  %i.kr = atomicrmw volatile add ptr %i.ke, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i326

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i326: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i.i.i327 = phi i32 [ %i.kh, %bb.bm ], [ %i.kr, %bb.bn ]
  %i.ks = icmp eq i32 %.0.i.i.i.i.i.i327, 1
  br i1 %i.ks, label %bb.bo, label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit328, !prof !19683

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i326
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kd) #40
  br label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit328

_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit328: ; preds = %._crit_edge, %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i326, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ic, i64 15
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !19694
  %i.kv = icmp eq i8 %i.ku, -1
  br i1 %i.kv, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i

_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i: ; preds = %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit328
  %i.kw = and i64 %i.ie, 255                      ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.kx, align 1
  %i.ky = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.kw
  %i.kz = xor i64 %notmask.i.i.i.i.i, -1
  %i.la = icmp eq i64 %i.kw, 0
  %i.lb = shl nuw nsw i64 %i.ky, 2
  %.neg17.i.i.i.i = sub nuw nsw i64 -16, %i.lb
  %.neg18.i.i.i.i = shl i64 -64, %i.kw
  %.0.i.neg.i.i.i.i = select i1 %i.la, i64 %.neg17.i.i.i.i, i64 %.neg18.i.i.i.i
  %i.lc = and i64 %.0.i.neg.i.i.i.i, -8
  %i.ld = lshr i64 %i.kz, 9
  %i.le = and i64 %i.ld, 18014398509481976
  %i.lf = add nuw nsw i64 %i.le, 8
  %i.lg = mul i64 %i.lf, %i.ky
  %i.lh = sub i64 %i.lg, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.lh) #40
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit

bb.bp:                                            ; preds = %.noexc239
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.backedge:                                        ; preds = %bb.cw, %.lr.ph
  %.pn = phi ptr [ %i.ju, %.lr.ph ], [ %.sroa.0422.0747, %bb.cw ]
  %.sroa.0422.0747 = getelementptr inbounds i8, ptr %.pn, i64 -8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.lj = load ptr, ptr %.sroa.0422.0747, align 8, !tbaa !19763 ; 5 uses
  store ptr %i.lj, ptr %i.b, align 8, !tbaa !19763
  %i.lk = load i64, ptr %i.jw, align 8, !tbaa !19695 ; 3 uses
  %i.ll = icmp ult i64 %i.lk, 512
  br i1 %i.ll, label %bb.bq, label %.noexc175

bb.bq:                                            ; preds = %.backedge
  %i.lm = icmp samesign ult i64 %i.lk, 256
  br i1 %i.lm, label %.thread622, label %.noexc173

.noexc173:                                        ; preds = %bb.bq
  %i.ln = load i64, ptr %i.jx, align 8, !tbaa !19765 ; 2 uses
  %i.lo = and i64 %i.ln, -16
  %i.lp = inttoptr i64 %i.lo to ptr               ; 2 uses
  %i.lq = and i64 %i.ln, 15
  %i.lr = load ptr, ptr %i.lp, align 16, !tbaa !19763
  %i.ls = icmp eq ptr %i.lj, %i.lr
  br i1 %i.ls, label %.critedge144, label %.thread622

.noexc175:                                        ; preds = %.backedge
  %i.lt = ptrtoint ptr %i.lj to i64               ; 2 uses
  %i.lu = zext i64 %i.lt to i128
  %i.lv = mul nuw i128 %i.lu, 14181476777654086739
  %i.lw = lshr i128 %i.lv, 64
  %i.lx = trunc nuw i128 %i.lw to i64
  %i.ly = mul i64 %i.lt, -4265267296055464877
  %i.lz = xor i64 %i.ly, %i.lx
  %i.ma = mul i64 %i.lz, -4265267296055464877     ; 2 uses
  %i.mb = lshr i64 %i.ma, 14
  %i.mc = and i64 %i.mb, 255
  %i.md = lshr i64 %i.ma, 22
  %.sroa.speculated.i.i.i331 = call i64 @llvm.umax.i64(i64 %i.mc, i64 1) ; 2 uses
  %i.me = shl nuw nsw i64 %.sroa.speculated.i.i.i331, 1
  %i.mf = or disjoint i64 %i.me, 1
  %i.mg = trunc nuw i64 %.sroa.speculated.i.i.i331 to i8
  %i.mh = insertelement <16 x i8> poison, i8 %i.mg, i64 0
  %i.mi = shufflevector <16 x i8> %i.mh, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.mj = and i64 %i.lk, 255                      ; 2 uses
  %i.mk = shl nuw i64 1, %i.mj
  %notmask.i334 = shl nsw i64 -1, %i.mj
  %i.ml = xor i64 %notmask.i334, -1
  %i.mm = load ptr, ptr %i.jv, align 8, !tbaa !19725
  br label %.noexc178

.noexc178:                                        ; preds = %.noexc175, %bb.br
  %.024.i.i741 = phi i64 [ %i.mk, %.noexc175 ], [ %i.nk, %bb.br ]
  %.026.i.i740 = phi i64 [ %i.md, %.noexc175 ], [ %i.nl, %bb.br ] ; 2 uses
  %i.mn = and i64 %.026.i.i740, %i.ml
  %i.mo = shl nsw i64 %i.mn, 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mo ; 4 uses
  %i.mq = getelementptr i8, ptr %i.mp, i64 144
  call void @llvm.prefetch.p0(ptr %i.mq, i32 0, i32 3, i32 1)
  %i.mr = load <16 x i8>, ptr %i.mp, align 16     ; 2 uses
  %i.ms = icmp eq <16 x i8> %i.mr, %i.mi
  %i.mt = bitcast <16 x i1> %i.ms to i16
  %i.mu = zext i16 %i.mt to i32                   ; 2 uses
  %i.mv = and i32 %i.mu, 16383
  %.not691 = icmp eq i32 %i.mv, 0
  %i.mw = extractelement <16 x i8> %i.mr, i64 15
  br i1 %.not691, label %.loopexit704, label %.noexc181.preheader

.noexc181.preheader:                              ; preds = %.noexc178
  %i.mx = icmp ne ptr %i.mp, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.mx)
  br label %.noexc181

.noexc181:                                        ; preds = %.noexc181.preheader, %.critedge.i.i172
  %.sroa.0470.0 = phi i32 [ %i.nh, %.critedge.i.i172 ], [ %i.mu, %.noexc181.preheader ] ; 4 uses
  %i.my = icmp ne i32 %.sroa.0470.0, 0
  call void @llvm.assume(i1 %i.my)
  %i.mz = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0470.0, i1 true)
  %i.na = zext nneg i32 %i.mz to i64              ; 2 uses
  %i.nb = shl nuw nsw i64 %i.na, 4
  %i.nc = getelementptr i8, ptr %i.mp, i64 %i.nb  ; 2 uses
  %i.nd = getelementptr i8, ptr %i.nc, i64 16
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !19763
  %i.nf = icmp eq ptr %i.lj, %i.ne
  br i1 %i.nf, label %.critedge144.loopexit, label %.critedge.i.i172, !prof !19685

.critedge.i.i172:                                 ; preds = %.noexc181
  %i.ng = add nsw i32 %.sroa.0470.0, -1
  %i.nh = and i32 %i.ng, %.sroa.0470.0            ; 2 uses
  %i.ni = and i32 %i.nh, 16382
  %.not692 = icmp eq i32 %i.ni, 0
  br i1 %.not692, label %.loopexit704, label %.noexc181, !llvm.loop !764

.loopexit704:                                     ; preds = %.critedge.i.i172, %.noexc178
  %i.nj = icmp eq i8 %i.mw, 0
  br i1 %i.nj, label %.thread622, label %bb.br, !prof !19685

bb.br:                                            ; preds = %.loopexit704
  %i.nk = add i64 %.024.i.i741, -1                ; 2 uses
  %i.nl = add i64 %i.mf, %.026.i.i740
  %.not.i.i157 = icmp eq i64 %i.nk, 0
  br i1 %.not.i.i157, label %.thread622, label %.noexc178, !llvm.loop !765

.thread622:                                       ; preds = %.noexc173, %bb.bq, %.loopexit704, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #40
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull @.str.288, i32 noundef 454)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %.thread622
  %i.nm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %17)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.nn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nm, ptr noundef nonnull @.str.298, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit336 unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit336: ; preds = %bb.bt
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %17) #42
  unreachable

bb.bu:                                            ; preds = %bb.ch
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.bv:                                            ; preds = %.thread622
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #40
  br label %bb.cx

bb.bw:                                            ; preds = %bb.bt, %bb.bs
  %i.nq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %17) #42
  unreachable

.critedge144.loopexit:                            ; preds = %.noexc181
  %i.nr = getelementptr i8, ptr %i.nc, i64 16
  br label %.critedge144

.critedge144:                                     ; preds = %.critedge144.loopexit, %.noexc173
  %.sroa.7469.1630 = phi i64 [ %i.lq, %.noexc173 ], [ %i.na, %.critedge144.loopexit ] ; 4 uses
  %.sroa.0468.1628 = phi ptr [ %i.lp, %.noexc173 ], [ %i.nr, %.critedge144.loopexit ] ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0468.1628, i64 8 ; 5 uses
  %i.nt = load i64, ptr %8, align 8, !tbaa !19676 ; 5 uses
  %i.nu = load i64, ptr %i.ns, align 8, !tbaa !19676 ; 5 uses
  %i.nv = icmp slt i64 %i.nu, 0                   ; 2 uses
  br i1 %i.nv, label %bb.bx, label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

bb.bx:                                            ; preds = %.critedge144
  %i.nw = shl i64 %i.nu, 1
  %i.nx = inttoptr i64 %i.nw to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i340 = load ptr, ptr %i.nx, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i341 = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %.sroa.3.0.copyload.i.i342 = load i64, ptr %.sroa.3.0..sroa_idx.i.i341, align 8, !tbaa !19676
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i

_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i: ; preds = %bb.bx, %.critedge144
  %.sroa.3.0.i.i337 = phi i64 [ %.sroa.3.0.copyload.i.i342, %bb.bx ], [ 64, %.critedge144 ]
  %.sroa.0.0.i.i338 = phi ptr [ %.sroa.0.0.copyload.i.i340, %bb.bx ], [ %i.ns, %.critedge144 ]
  %i.ny = icmp ult i64 %i.nt, %.sroa.3.0.i.i337
  br i1 %i.ny, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit.thread, !prof !21829

_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit: ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i
  %i.nz = lshr i64 %i.nt, 6                       ; 2 uses
  %i.oa = and i64 %i.nt, 63
  %i.ob = shl nuw i64 1, %i.oa                    ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i338, i64 %i.nz
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !19676
  %i.oe = and i64 %i.od, %i.ob
  %.not693 = icmp eq i64 %i.oe, 0
  br i1 %.not693, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit.thread, label %.critedge146, !prof !21830

_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit.thread: ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i, %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #40
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %18, ptr noundef nonnull @.str.288, i32 noundef 455)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit.thread
  %i.of = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %18)
          to label %bb.bz unwind label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.of, ptr noundef nonnull @.str.306, i64 noundef 56)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344 unwind label %bb.cb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit344: ; preds = %bb.bz
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %18) #42
  unreachable

bb.ca:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit.thread
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #40
  br label %bb.cx

bb.cb:                                            ; preds = %bb.bz, %bb.by
  %i.oi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %18) #42
  unreachable

.critedge146:                                     ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit
  br i1 %i.nv, label %bb.cc, label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i345

bb.cc:                                            ; preds = %.critedge146
  %i.oj = shl i64 %i.nu, 1
  %i.ok = inttoptr i64 %i.oj to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i350 = load ptr, ptr %i.ok, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i351 = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %.sroa.3.0.copyload.i.i352 = load i64, ptr %.sroa.3.0..sroa_idx.i.i351, align 8, !tbaa !19676
  br label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i345

_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i345: ; preds = %bb.cc, %.critedge146
  %.sroa.3.0.i.i346 = phi i64 [ %.sroa.3.0.copyload.i.i352, %bb.cc ], [ 64, %.critedge146 ] ; 2 uses
  %.sroa.0.0.i.i347 = phi ptr [ %.sroa.0.0.copyload.i.i350, %bb.cc ], [ %i.ns, %.critedge146 ]
  %i.ol = icmp ult i64 %i.nt, %.sroa.3.0.i.i346
  br i1 %i.ol, label %bb.cd, label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit353

bb.cd:                                            ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i345
  %i.om = icmp eq i64 %.sroa.3.0.i.i346, 64
  %i.on = icmp eq i64 %i.nt, 63
  %or.cond.i348 = and i1 %i.on, %i.om
  br i1 %or.cond.i348, label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit353, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i347, i64 %i.nz ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !19676
  %i.oq = xor i64 %i.ob, -1
  %i.or = and i64 %i.op, %i.oq
  store i64 %i.or, ptr %i.oo, align 8, !tbaa !19676
  %.pre782 = load i64, ptr %i.ns, align 8, !tbaa !19676
  br label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit353

_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit353: ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i345, %bb.cd, %bb.ce
  %i.os = phi i64 [ %i.nu, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i345 ], [ %i.nu, %bb.cd ], [ %.pre782, %bb.ce ] ; 2 uses
  %i.ot = icmp slt i64 %i.os, 0
  br i1 %i.ot, label %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, label %.lr.ph.i.i.i.i.preheader

_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit: ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit353
  %i.ou = shl i64 %i.os, 1
  %i.ov = inttoptr i64 %i.ou to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ov, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !19676 ; 2 uses
  %.not.i.i359 = icmp eq i64 %.sroa.3.0.copyload.i.i.i, 0
  br i1 %.not.i.i359, label %.noexc220, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit353, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit
  %.sroa.0.0.i.i.i355824 = phi ptr [ %.sroa.0.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.ns, %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit353 ]
  %.sroa.3.0.i.i.i354822 = phi i64 [ %.sroa.3.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ 64, %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit353 ] ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.cf
  %.01422.i.i.i.i = phi i64 [ %i.pe, %bb.cf ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %i.ow = lshr i64 %.01422.i.i.i.i, 6
  %i.ox = and i64 %.01422.i.i.i.i, 63
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i355824, i64 %i.ow
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !19676, !noalias !21831
  %i.pa = lshr i64 %i.oz, %i.ox                   ; 2 uses
  %.not.i.i.i.i360 = icmp eq i64 %i.pa, 0
  br i1 %.not.i.i.i.i360, label %bb.cf, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i
  %i.pb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pa, i1 true)
  %i.pc = add i64 %i.pb, %.01422.i.i.i.i
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5emptyEv.exit

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i
  %i.pd = and i64 %.01422.i.i.i.i, -64
  %i.pe = add i64 %i.pd, 64                       ; 3 uses
  %i.pf = icmp ult i64 %i.pe, %.sroa.3.0.i.i.i354822
  br i1 %i.pf, label %.lr.ph.i.i.i.i, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5emptyEv.exit, !llvm.loop !720

_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5emptyEv.exit: ; preds = %bb.cf, %.thread.i.i.i.i
  %.2.i.i.i.i = phi i64 [ %i.pc, %.thread.i.i.i.i ], [ %i.pe, %bb.cf ]
  %i.pg = icmp eq i64 %.2.i.i.i.i, %.sroa.3.0.i.i.i354822
  br i1 %i.pg, label %.noexc220, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit

.noexc220:                                        ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5emptyEv.exit
  %.neg.i.i.i366 = mul nsw i64 %.sroa.7469.1630, -16 ; 2 uses
  %i.ph = getelementptr i8, ptr %.sroa.0468.1628, i64 %.neg.i.i.i366
  %i.pi = getelementptr i8, ptr %i.ph, i64 -2
  %i.pj = load i8, ptr %i.pi, align 2, !tbaa !19727
  %.not.i367 = icmp ult i8 %i.pj, 16
  br i1 %.not.i367, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %.noexc220
  %i.pk = ptrtoint ptr %i.lj to i64               ; 2 uses
  %i.pl = zext i64 %i.pk to i128
  %i.pm = mul nuw i128 %i.pl, 14181476777654086739
  %i.pn = lshr i128 %i.pm, 64
  %i.po = trunc nuw i128 %i.pn to i64
  %i.pp = mul i64 %i.pk, -4265267296055464877
  %i.pq = xor i64 %i.pp, %i.po
  %i.pr = mul i64 %i.pq, -4265267296055464877     ; 2 uses
  %i.ps = lshr i64 %i.pr, 14
  %i.pt = and i64 %i.ps, 255
  %i.pu = lshr i64 %i.pr, 22
  %.sroa.speculated.i.i.i368 = call i64 @llvm.umax.i64(i64 %i.pt, i64 1)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.noexc220
  %.sroa.5.0.i = phi i64 [ 0, %.noexc220 ], [ %.sroa.speculated.i.i.i368, %bb.cg ]
  %.sroa.04.0.i = phi i64 [ 0, %.noexc220 ], [ %i.pu, %bb.cg ]
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %i.jv, ptr nonnull %.sroa.0468.1628, i64 %.sroa.7469.1630, i64 %.sroa.04.0.i, i64 %.sroa.5.0.i)
          to label %.noexc231 unwind label %bb.bu

.noexc231:                                        ; preds = %bb.ch
  %i.pv = getelementptr inbounds i8, ptr %.sroa.0468.1628, i64 -16
  %i.pw = getelementptr inbounds i8, ptr %i.pv, i64 %.neg.i.i.i366 ; 2 uses
  %.not19.i.i1025 = icmp eq i64 %.sroa.7469.1630, 0
  br i1 %.not19.i.i1025, label %.preheader.preheader, label %.lr.ph1027

.preheader.preheader:                             ; preds = %bb.ci, %.noexc231
  br label %.preheader

bb.ci:                                            ; preds = %.lr.ph1027
  %.not19.i.i = icmp eq i64 %i.px, 0
  br i1 %.not19.i.i, label %.preheader.preheader, label %.lr.ph1027, !llvm.loop !723

.lr.ph1027:                                       ; preds = %.noexc231, %bb.ci
  %.sroa.10.01026 = phi i64 [ %i.px, %bb.ci ], [ %.sroa.7469.1630, %.noexc231 ]
  %i.px = add nsw i64 %.sroa.10.01026, -1         ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !19682
  %.not694 = icmp eq i8 %i.pz, 0
  br i1 %.not694, label %bb.ci, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit, !prof !19683, !llvm.loop !723

bb.cj:                                            ; preds = %.noexc233
  %i.qa = add i64 %.0.i.i743, 1                   ; 2 uses
  %i.qb = icmp eq i64 %i.qa, 0
  br i1 %i.qb, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit, label %.preheader, !llvm.loop !724

.preheader:                                       ; preds = %.preheader.preheader, %bb.cj
  %.0.i.i743 = phi i64 [ %i.qa, %bb.cj ], [ 1, %.preheader.preheader ]
  %.017.i.i742 = phi ptr [ %i.qf, %bb.cj ], [ %i.pw, %.preheader.preheader ] ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.017.i.i742, i64 14
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !19682
  %i.qe = and i8 %i.qd, 15
  %.not695 = icmp eq i8 %i.qe, 0
  br i1 %.not695, label %.noexc233, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit, !prof !19685

.noexc233:                                        ; preds = %.preheader
  %i.qf = getelementptr inbounds i8, ptr %.017.i.i742, i64 -256 ; 3 uses
  %i.qg = load <16 x i8>, ptr %i.qf, align 16, !tbaa !19682
  %i.qh = icmp eq <16 x i8> %i.qg, zeroinitializer
  %i.qi = bitcast <16 x i1> %i.qh to i16
  %i.qj = and i16 %i.qi, 16383
  %.not696 = icmp eq i16 %i.qj, 16383
  br i1 %.not696, label %bb.cj, label %.noexc235, !prof !19683

.noexc235:                                        ; preds = %.noexc233
  %i.qk = icmp ne ptr %i.qf, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.qk)
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit: ; preds = %.lr.ph1027, %.preheader, %bb.cj, %.noexc235, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5emptyEv.exit
  %i.ql = load i64, ptr %i.jz, align 8, !tbaa !19695 ; 3 uses
  %i.qm = icmp ult i64 %i.ql, 512
  br i1 %i.qm, label %bb.ck, label %.noexc212

bb.ck:                                            ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit
  %i.qn = icmp samesign ult i64 %i.ql, 256
  br i1 %i.qn, label %.thread664, label %.noexc210

.noexc210:                                        ; preds = %bb.ck
  %i.qo = load i64, ptr %i.ka, align 8, !tbaa !19675
  %i.qp = and i64 %i.qo, -16
  %i.qq = inttoptr i64 %i.qp to ptr               ; 2 uses
  %i.qr = load ptr, ptr %i.b, align 8, !tbaa !19763 ; 2 uses
  %i.qs = load ptr, ptr %i.qq, align 16, !tbaa !19763
  %i.qt = icmp eq ptr %i.qr, %i.qs
  br i1 %i.qt, label %.critedge148, label %.thread664

.noexc212:                                        ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEvvvEEE5eraseENS1_22ValueContainerIteratorIPSt4pairIKSB_SD_EEE.exit
  %i.qu = load ptr, ptr %i.b, align 8, !tbaa !19763 ; 3 uses
  %i.qv = ptrtoint ptr %i.qu to i64               ; 2 uses
  %i.qw = zext i64 %i.qv to i128
  %i.qx = mul nuw i128 %i.qw, 14181476777654086739
  %i.qy = lshr i128 %i.qx, 64
  %i.qz = trunc nuw i128 %i.qy to i64
  %i.ra = mul i64 %i.qv, -4265267296055464877
  %i.rb = xor i64 %i.ra, %i.qz
  %i.rc = mul i64 %i.rb, -4265267296055464877     ; 2 uses
  %i.rd = lshr i64 %i.rc, 14
  %i.re = and i64 %i.rd, 255
  %i.rf = lshr i64 %i.rc, 22
  %.sroa.speculated.i.i.i372 = call i64 @llvm.umax.i64(i64 %i.re, i64 1) ; 2 uses
  %i.rg = shl nuw nsw i64 %.sroa.speculated.i.i.i372, 1
  %i.rh = or disjoint i64 %i.rg, 1
  %i.ri = trunc nuw i64 %.sroa.speculated.i.i.i372 to i8
  %i.rj = insertelement <16 x i8> poison, i8 %i.ri, i64 0
  %i.rk = shufflevector <16 x i8> %i.rj, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.rl = and i64 %i.ql, 255                      ; 2 uses
  %i.rm = shl nuw i64 1, %i.rl
  %notmask.i375 = shl nsw i64 -1, %i.rl
  %i.rn = xor i64 %notmask.i375, -1
  %i.ro = load ptr, ptr %i.jy, align 8, !tbaa !20271
  br label %.noexc215

.noexc215:                                        ; preds = %.noexc212, %bb.cl
  %.024.i.i186746 = phi i64 [ %i.rm, %.noexc212 ], [ %i.sm, %bb.cl ]
  %.026.i.i185745 = phi i64 [ %i.rf, %.noexc212 ], [ %i.sn, %bb.cl ] ; 2 uses
  %i.rp = and i64 %.026.i.i185745, %i.rn
  %i.rq = shl nsw i64 %i.rp, 8
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rq ; 4 uses
  %i.rs = getelementptr i8, ptr %i.rr, i64 144
  call void @llvm.prefetch.p0(ptr %i.rs, i32 0, i32 3, i32 1)
  %i.rt = load <16 x i8>, ptr %i.rr, align 16     ; 2 uses
  %i.ru = icmp eq <16 x i8> %i.rt, %i.rk
  %i.rv = bitcast <16 x i1> %i.ru to i16
  %i.rw = zext i16 %i.rv to i32                   ; 2 uses
  %i.rx = and i32 %i.rw, 16383
  %.not697 = icmp eq i32 %i.rx, 0
  %i.ry = extractelement <16 x i8> %i.rt, i64 15
  br i1 %.not697, label %.loopexit703, label %.noexc218.preheader

.noexc218.preheader:                              ; preds = %.noexc215
  %i.rz = icmp ne ptr %i.rr, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.rz)
  br label %.noexc218

.noexc218:                                        ; preds = %.noexc218.preheader, %.critedge.i.i209
  %.sroa.0485.0 = phi i32 [ %i.sj, %.critedge.i.i209 ], [ %i.rw, %.noexc218.preheader ] ; 4 uses
  %i.sa = icmp ne i32 %.sroa.0485.0, 0
  call void @llvm.assume(i1 %i.sa)
  %i.sb = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0485.0, i1 true)
  %i.sc = shl nuw nsw i32 %i.sb, 4
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = getelementptr i8, ptr %i.rr, i64 %i.sd  ; 2 uses
  %i.sf = getelementptr i8, ptr %i.se, i64 16
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !19763
  %i.sh = icmp eq ptr %i.qu, %i.sg
  br i1 %i.sh, label %.critedge148.loopexit, label %.critedge.i.i209, !prof !19685

.critedge.i.i209:                                 ; preds = %.noexc218
  %i.si = add nsw i32 %.sroa.0485.0, -1
  %i.sj = and i32 %i.si, %.sroa.0485.0            ; 2 uses
  %i.sk = and i32 %i.sj, 16382
  %.not698 = icmp eq i32 %i.sk, 0
  br i1 %.not698, label %.loopexit703, label %.noexc218, !llvm.loop !768

.loopexit703:                                     ; preds = %.critedge.i.i209, %.noexc215
  %i.sl = icmp eq i8 %i.ry, 0
  br i1 %i.sl, label %.thread664, label %bb.cl, !prof !19685

bb.cl:                                            ; preds = %.loopexit703
  %i.sm = add i64 %.024.i.i186746, -1             ; 2 uses
  %i.sn = add i64 %i.rh, %.026.i.i185745
  %.not.i.i187 = icmp eq i64 %i.sm, 0
  br i1 %.not.i.i187, label %.thread664, label %.noexc215, !llvm.loop !769

.thread664:                                       ; preds = %.noexc210, %bb.ck, %.loopexit703, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #40
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %19, ptr noundef nonnull @.str.288, i32 noundef 462)
          to label %bb.cm unwind label %bb.co

bb.cm:                                            ; preds = %.thread664
  %i.so = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %19)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.sp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.so, ptr noundef nonnull @.str.307, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377 unwind label %bb.cp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit377: ; preds = %bb.cn
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %19) #42
  unreachable

bb.co:                                            ; preds = %.thread664
  %i.sq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #40
  br label %bb.cx

bb.cp:                                            ; preds = %bb.cn, %bb.cm
  %i.sr = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %19) #42
  unreachable

.critedge148.loopexit:                            ; preds = %.noexc218
  %i.ss = getelementptr i8, ptr %i.se, i64 16
  br label %.critedge148

.critedge148:                                     ; preds = %.critedge148.loopexit, %.noexc210
  %i.st = phi ptr [ %i.qr, %.noexc210 ], [ %i.qu, %.critedge148.loopexit ] ; 2 uses
  %.sroa.0483.1670 = phi ptr [ %i.qq, %.noexc210 ], [ %i.ss, %.critedge148.loopexit ]
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.0483.1670, i64 8 ; 3 uses
  %i.sv = load ptr, ptr %i.st, align 8, !tbaa !19672 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !19673
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sx
  %i.sz = invoke noundef zeroext i1 @_ZN5boost11regex_matchIPKccNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEbT_S7_RKNS_11basic_regexIT0_T1_EENS_15regex_constants12_match_flagsE(ptr noundef %i.sv, ptr noundef %i.sy, ptr noundef nonnull align 8 dereferenceable(16) %16, i32 noundef 0)
          to label %_ZNK5folly15RegexMatchCache11RegexObjectclESt17basic_string_viewIcSt11char_traitsIcEE.exit381 unwind label %bb.cu

_ZNK5folly15RegexMatchCache11RegexObjectclESt17basic_string_viewIcSt11char_traitsIcEE.exit381: ; preds = %.critedge148
  br i1 %i.sz, label %bb.cq, label %bb.cw

bb.cq:                                            ; preds = %_ZNK5folly15RegexMatchCache11RegexObjectclESt17basic_string_viewIcSt11char_traitsIcEE.exit381
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40, !noalias !21832
  %i.ta = load ptr, ptr %i.b, align 8, !tbaa !19763, !noalias !21833
  %i.tb = ptrtoint ptr %i.ta to i64               ; 2 uses
  %i.tc = zext i64 %i.tb to i128
  %i.td = mul nuw i128 %i.tc, 14181476777654086739
  %i.te = lshr i128 %i.td, 64
  %i.tf = trunc nuw i128 %i.te to i64
  %i.tg = mul i64 %i.tb, -4265267296055464877
  %i.th = xor i64 %i.tg, %i.tf
  %i.ti = mul i64 %i.th, -4265267296055464877     ; 2 uses
  %i.tj = lshr i64 %i.ti, 14
  %i.tk = and i64 %i.tj, 255
  %i.tl = lshr i64 %i.ti, 22
  %.sroa.speculated.i.i.i.i.i.i.i.i382 = call i64 @llvm.umax.i64(i64 %i.tk, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE19tryEmplaceValueImplISB_JRKSB_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESJ_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.452") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.kb, i64 %i.tl, i64 %.sroa.speculated.i.i.i.i.i.i.i.i382, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc386 unwind label %bb.cv

.noexc386:                                        ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40, !noalias !21832
  %i.tm = load i64, ptr %8, align 8, !tbaa !19676 ; 5 uses
  %i.tn = load i64, ptr %i.su, align 8, !tbaa !19676 ; 2 uses
  %i.to = icmp slt i64 %i.tn, 0
  br i1 %i.to, label %bb.cr, label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i388

bb.cr:                                            ; preds = %.noexc386
  %i.tp = shl i64 %i.tn, 1
  %i.tq = inttoptr i64 %i.tp to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i393 = load ptr, ptr %i.tq, align 8, !tbaa !19766
  %.sroa.3.0..sroa_idx.i.i394 = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %.sroa.3.0.copyload.i.i395 = load i64, ptr %.sroa.3.0..sroa_idx.i.i394, align 8, !tbaa !19676
  br label %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i388

_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i388: ; preds = %bb.cr, %.noexc386
  %.sroa.3.0.i.i389 = phi i64 [ %.sroa.3.0.copyload.i.i395, %bb.cr ], [ 64, %.noexc386 ] ; 2 uses
  %.sroa.0.0.i.i390 = phi ptr [ %.sroa.0.0.copyload.i.i393, %bb.cr ], [ %i.su, %.noexc386 ]
  %i.tr = icmp ult i64 %i.tm, %.sroa.3.0.i.i389
  br i1 %i.tr, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i388
  %i.ts = icmp eq i64 %.sroa.3.0.i.i389, 64
  %i.tt = icmp eq i64 %i.tm, 63
  %or.cond.i392 = and i1 %i.tt, %i.ts
  br i1 %or.cond.i392, label %bb.ct, label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit397

bb.ct:                                            ; preds = %bb.cs, %_ZN5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i388
  %i.tu = invoke { ptr, i64 } @_ZN5folly28RegexMatchCacheDynamicBitset8reserve_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.su, i64 noundef %i.tm)
          to label %.noexc396 unwind label %bb.cu

.noexc396:                                        ; preds = %bb.ct
  %i.tv = extractvalue { ptr, i64 } %i.tu, 0
  br label %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit397

_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit397: ; preds = %bb.cs, %.noexc396
  %.pn.i391 = phi ptr [ %i.tv, %.noexc396 ], [ %.sroa.0.0.i.i390, %bb.cs ]
  %i.tw = lshr i64 %i.tm, 6
  %i.tx = and i64 %i.tm, 63
  %i.ty = shl nuw i64 1, %i.tx
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %.pn.i391, i64 %i.tw ; 2 uses
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !19676
  %i.ub = or i64 %i.ua, %i.ty
  store i64 %i.ub, ptr %i.tz, align 8, !tbaa !19676
  br label %bb.cw

bb.cu:                                            ; preds = %bb.ct, %.critedge148
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cv:                                            ; preds = %bb.cq
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cw:                                            ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit397, %_ZNK5folly15RegexMatchCache11RegexObjectclESt17basic_string_viewIcSt11char_traitsIcEE.exit381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.ue = icmp eq ptr %i.ia, %.sroa.0422.0747
  br i1 %i.ue, label %._crit_edge, label %.backedge, !prof !19683

bb.cx:                                            ; preds = %bb.cv, %bb.cu, %bb.co, %bb.bv, %bb.ca, %bb.bu
  %.pn115.pn.pn = phi { ptr, i32 } [ %i.ud, %bb.cv ], [ %i.no, %bb.bu ], [ %i.sq, %bb.co ], [ %i.oh, %bb.ca ], [ %i.np, %bb.bv ], [ %i.uc, %bb.cu ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.uf = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !19782 ; 8 uses
  %.not.i.i.i.i857 = icmp eq ptr %i.ug, null
  br i1 %.not.i.i.i.i857, label %.body319, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8 ; 4 uses
  %i.ui = load atomic i64, ptr %i.uh acquire, align 8 ; 2 uses
  %i.uj = icmp eq i64 %i.ui, 4294967297
  %i.uk = trunc i64 %i.ui to i32                  ; 2 uses
  br i1 %i.uj, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.uh, align 8, !tbaa !19784
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ug, i64 12
  store i32 0, ptr %i.ul, align 4, !tbaa !19785
  %i.um = load ptr, ptr %i.ug, align 8, !tbaa !797
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.uo = load ptr, ptr %i.un, align 8
  call void %i.uo(ptr noundef nonnull align 8 dereferenceable(16) %i.ug) #40, !call_target !5069, !inline_history !780
  %i.up = load ptr, ptr %i.ug, align 8, !tbaa !797
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(16) %i.ug) #40, !call_target !5070, !inline_history !780
  br label %.body319

bb.da:                                            ; preds = %bb.cy
  %i.us = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19682
  %.not.i.i.i.i.i858 = icmp eq i8 %i.us, 0
  br i1 %.not.i.i.i.i.i858, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ut = add nsw i32 %i.uk, -1
  store i32 %i.ut, ptr %i.uh, align 8, !tbaa !19786
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i859

bb.dc:                                            ; preds = %bb.da
  %i.uu = atomicrmw volatile add ptr %i.uh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i859

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i859: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i.i.i860 = phi i32 [ %i.uk, %bb.db ], [ %i.uu, %bb.dc ]
  %i.uv = icmp eq i32 %.0.i.i.i.i.i.i860, 1
  br i1 %i.uv, label %bb.dd, label %.body319, !prof !19683

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i859
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ug) #40
  br label %.body319

.body319:                                         ; preds = %bb.dd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i859, %bb.cz, %bb.cx, %bb.bi
  %.pn115.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.js, %bb.bi ], [ %.pn115.pn.pn, %bb.cx ], [ %.pn115.pn.pn, %bb.cz ], [ %.pn115.pn.pn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i859 ], [ %.pn115.pn.pn, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #40
  br label %bb.de

bb.de:                                            ; preds = %.body319, %bb.bp, %bb.bf
  %.pn115.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn115.pn.pn.pn.pn.pn, %.body319 ], [ %i.li, %bb.bp ], [ %i.ii, %bb.bf ] ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ic, i64 15
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !19694
  %i.uy = icmp eq i8 %i.ux, -1
  br i1 %i.uy, label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i864

_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i864: ; preds = %bb.de
  %i.uz = and i64 %i.ie, 255                      ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  %.0.copyload.i.i.i.i.i.i862 = load i16, ptr %i.va, align 1
  %i.vb = zext i16 %.0.copyload.i.i.i.i.i.i862 to i64 ; 2 uses
  %notmask.i.i.i.i.i863 = shl nsw i64 -1, %i.uz
  %i.vc = xor i64 %notmask.i.i.i.i.i863, -1
  %i.vd = icmp eq i64 %i.uz, 0
  %i.ve = shl nuw nsw i64 %i.vb, 2
  %.neg17.i.i.i.i865 = sub nuw nsw i64 -16, %i.ve
  %.neg18.i.i.i.i866 = shl i64 -64, %i.uz
  %.0.i.neg.i.i.i.i867 = select i1 %i.vd, i64 %.neg17.i.i.i.i865, i64 %.neg18.i.i.i.i866
  %i.vf = and i64 %.0.i.neg.i.i.i.i867, -8
  %i.vg = lshr i64 %i.vc, 9
  %i.vh = and i64 %i.vg, 18014398509481976
  %i.vi = add nuw nsw i64 %i.vh, 8
  %i.vj = mul i64 %i.vi, %i.vb
  %i.vk = sub i64 %i.vj, %i.vf
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.vk) #40
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit: ; preds = %.loopexit710, %bb.ba, %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit328, %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i, %bb.az, %.critedge138, %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  ret void

_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i864, %bb.de, %bb.m, %bb.s, %bb.y, %bb.ad, %.body, %bb.f
  %.pn130.pn.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %.pn130, %bb.m ], [ %i.cn, %bb.ad ], [ %i.cj, %bb.y ], [ %.pn127.pn, %.body ], [ %i.bz, %bb.s ], [ %.pn115.pn.pn.pn.pn.pn.pn, %bb.de ], [ %.pn115.pn.pn.pn.pn.pn.pn, %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i864 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit403

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit403: ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit, %bb.e
  %.pn130.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn130.pn.pn, %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit ], [ %i.t, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @_ZN5folly15RegexMatchCache6repairEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #40, !inline_history !774
  resume { ptr, i32 } %.pn130.pn.pn.pn.pn.pn
}

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) local_unnamed_addr #33 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !21836
  %i.b = load i8, ptr %0, align 1, !tbaa !20155, !range !20060, !noundef !1339
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext %i.c)
          to label %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit: ; preds = %bb.a
  %i.e = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit
  %i.f = load i8, ptr %1, align 1, !tbaa !20155, !range !20060, !noundef !1339
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext %i.g)
          to label %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit4 unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit4: ; preds = %bb.b
  %i.i = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit4
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret ptr %i.i

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit4, %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.j
}

declare void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #15

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define nonnull ptr @_ZNK5folly15RegexMatchCache17findMatchesUnsafeERKNS_18RegexMatchCacheKeyENSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 %2) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19695 ; 3 uses
  %i.c = icmp ult i64 %i.b, 512
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i64 %i.b, 256
  br i1 %i.d, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.i.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19761
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19734 ; 3 uses
  %i.j = load i128, ptr %1, align 8
  %i.k = load i128, ptr %i.i, align 8
  %i.l = xor i128 %i.j, %i.k
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = getelementptr i8, ptr %i.i, i64 16
  %i.o = load i128, ptr %i.m, align 8
  %i.p = load i128, ptr %i.n, align 8
  %i.q = xor i128 %i.o, %i.p
  %i.r = or i128 %i.l, %i.q
  %i.s = icmp ne i128 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE2atIKS8_S4_EERDaRT_RKT0_.exit, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.i.thread

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %1, align 8, !tbaa !19676  ; 2 uses
  %i.w = lshr i64 %i.v, 56
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1) ; 2 uses
  %i.x = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.y = or disjoint i64 %i.x, 1
  %i.z = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.aa = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ac = and i64 %i.b, 255                       ; 2 uses
  %i.ad = shl nuw i64 1, %i.ac
  %notmask.i = shl nsw i64 -1, %i.ac
  %i.ae = xor i64 %notmask.i, -1
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !19732
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %.024.i.i60 = phi i64 [ %i.ad, %bb.d ], [ %i.bn, %bb.g ]
  %.026.i.i59 = phi i64 [ %i.v, %bb.d ], [ %i.bo, %bb.g ] ; 2 uses
  %i.ag = and i64 %.026.i.i59, %i.ae
  %i.ah = shl nsw i64 %i.ag, 7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.aj, i32 0, i32 3, i32 1)
  %i.ak = load <16 x i8>, ptr %i.ai, align 16     ; 2 uses
  %i.al = icmp eq <16 x i8> %i.ak, %i.ab
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = and i32 %i.an, 16383
  %.not = icmp eq i32 %i.ao, 0
  %i.ap = extractelement <16 x i8> %i.ak, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.aq = icmp ne ptr %i.ai, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aq)
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.critedge.i.i
  %.sroa.018.0 = phi i32 [ %i.bk, %.critedge.i.i ], [ %i.an, %.preheader ] ; 4 uses
  %i.ar = icmp ne i32 %.sroa.018.0, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.018.0, i1 true)
  %i.at = shl nuw nsw i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr i8, ptr %i.ai, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19734 ; 3 uses
  %i.ay = load i128, ptr %1, align 8
  %i.az = load i128, ptr %i.ax, align 8
  %i.ba = xor i128 %i.ay, %i.az
  %i.bb = getelementptr i8, ptr %1, i64 16
  %i.bc = getelementptr i8, ptr %i.ax, i64 16
  %i.bd = load i128, ptr %i.bb, align 8
  %i.be = load i128, ptr %i.bc, align 8
  %i.bf = xor i128 %i.bd, %i.be
  %i.bg = or i128 %i.ba, %i.bf
  %i.bh = icmp ne i128 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %.not9.i.i.i.i.i.i.i.i7 = icmp eq i32 %i.bi, 0
  br i1 %.not9.i.i.i.i.i.i.i.i7, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE2atIKS8_S4_EERDaRT_RKT0_.exit, label %.critedge.i.i, !prof !19685

.critedge.i.i:                                    ; preds = %bb.f
  %i.bj = add nsw i32 %.sroa.018.0, -1
  %i.bk = and i32 %i.bj, %.sroa.018.0             ; 2 uses
  %i.bl = and i32 %i.bk, 16382
  %.not56 = icmp eq i32 %i.bl, 0
  br i1 %.not56, label %.loopexit, label %bb.f, !llvm.loop !770

.loopexit:                                        ; preds = %.critedge.i.i, %bb.e
  %i.bm = icmp eq i8 %i.ap, 0
  br i1 %i.bm, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.i.thread, label %bb.g, !prof !19685

bb.g:                                             ; preds = %.loopexit
  %i.bn = add i64 %.024.i.i60, -1                 ; 2 uses
  %i.bo = add i64 %i.y, %.026.i.i59
  %.not.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.i.thread, label %bb.e, !llvm.loop !771

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.i.thread: ; preds = %.loopexit, %bb.g, %bb.c, %bb.b
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.12) #20
  unreachable

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE2atIKS8_S4_EERDaRT_RKT0_.exit: ; preds = %bb.f, %bb.c
  %i.bp = phi ptr [ %i.i, %bb.c ], [ %i.ax, %bb.f ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 3 uses
  %i.br = load atomic i64, ptr %i.bq monotonic, align 8 ; 2 uses
  %.sroa.0.0.copyload.sroa.speculated.i7.i = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.br)
  %i.bs = cmpxchg weak ptr %i.bq, i64 %i.br, i64 %.sroa.0.0.copyload.sroa.speculated.i7.i monotonic monotonic, align 8 ; 2 uses
  %i.bt = extractvalue { i64, i1 } %i.bs, 1
  br i1 %i.bt, label %"_ZNK5folly22atomic_fetch_modify_fnclISt6atomicINSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEEZNKS_15RegexMatchCache17findMatchesUnsafeERKNS_18RegexMatchCacheKeyESB_E3$_0EENS_6detail12conditional_IX13is_detected_vINSI_24atomic_value_type_alias_5applyET_EEE5applyISK_NSI_23atomic_value_type_load_EE5applyISM_EERSM_T0_St12memory_order.exit", label %_ZNSt6atomicINSt6chrono10time_pointIN5folly6chrono19coarse_steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i, !prof !21838

_ZNSt6atomicINSt6chrono10time_pointIN5folly6chrono19coarse_steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE2atIKS8_S4_EERDaRT_RKT0_.exit, %_ZNSt6atomicINSt6chrono10time_pointIN5folly6chrono19coarse_steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i
  %i.bu = phi { i64, i1 } [ %i.bw, %_ZNSt6atomicINSt6chrono10time_pointIN5folly6chrono19coarse_steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i ], [ %i.bs, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE2atIKS8_S4_EERDaRT_RKT0_.exit ]
  %i.bv = extractvalue { i64, i1 } %i.bu, 0       ; 2 uses
  %.sroa.0.0.copyload.sroa.speculated.i.i = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.bv)
  %i.bw = cmpxchg weak ptr %i.bq, i64 %i.bv, i64 %.sroa.0.0.copyload.sroa.speculated.i.i monotonic monotonic, align 8 ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.bx, label %"_ZNK5folly22atomic_fetch_modify_fnclISt6atomicINSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEEZNKS_15RegexMatchCache17findMatchesUnsafeERKNS_18RegexMatchCacheKeyESB_E3$_0EENS_6detail12conditional_IX13is_detected_vINSI_24atomic_value_type_alias_5applyET_EEE5applyISK_NSI_23atomic_value_type_load_EE5applyISM_EERSM_T0_St12memory_order.exit", label %_ZNSt6atomicINSt6chrono10time_pointIN5folly6chrono19coarse_steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i, !prof !21839, !llvm.loop !21837

"_ZNK5folly22atomic_fetch_modify_fnclISt6atomicINSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEEZNKS_15RegexMatchCache17findMatchesUnsafeERKNS_18RegexMatchCacheKeyESB_E3$_0EENS_6detail12conditional_IX13is_detected_vINSI_24atomic_value_type_alias_5applyET_EEE5applyISK_NSI_23atomic_value_type_load_EE5applyISM_EERSM_T0_St12memory_order.exit": ; preds = %_ZNSt6atomicINSt6chrono10time_pointIN5folly6chrono19coarse_steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE2atIKS8_S4_EERDaRT_RKT0_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  ret ptr %i.by
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly15RegexMatchCache11findMatchesB5cxx11ERKNS_18RegexMatchCacheKeyENSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.355") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @_ZNK5folly15RegexMatchCache17findMatchesUnsafeERKNS_18RegexMatchCacheKeyENSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 %3) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19695
  %i.d = lshr i64 %i.c, 8                         ; 5 uses
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_M_allocateEm.exit.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d ; 2 uses
  %i.g = add nuw nsw i64 %i.d, 2305843009213693951
  %i.h = and i64 %i.g, 2305843009213693951
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #44 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !20274
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !20276
  %i.n = add nuw nsw i64 %i.d, 2305843009213693951
  %i.o = and i64 %i.n, 2305843009213693951
  %xtraiter = and i64 %i.d, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %_ZNSt12_Vector_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_M_allocateEm.exit.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn.prol = phi ptr [ %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.f, %_ZNSt12_Vector_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_M_allocateEm.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_M_allocateEm.exit.i.i ]
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.prol = getelementptr inbounds i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn.prol, i64 -8 ; 3 uses
  %i.p = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !19763
  store ptr %i.p, ptr %.08.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !19763
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !21840

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_M_allocateEm.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_M_allocateEm.exit.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.k, %_ZNSt12_Vector_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_M_allocateEm.exit.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn.unr = phi ptr [ %i.f, %_ZNSt12_Vector_baseIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_M_allocateEm.exit.i.i ], [ %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.r = icmp samesign ult i64 %i.o, 7
  br i1 %i.r, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn = phi ptr [ %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn, i64 -8
  %i.s = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !19763
  store ptr %i.s, ptr %.08.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !19763
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn, i64 -16
  %i.u = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !19763
  store ptr %i.u, ptr %i.t, align 8, !tbaa !19763
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 16
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn, i64 -24
  %i.w = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !19763
  store ptr %i.w, ptr %i.v, align 8, !tbaa !19763
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 24
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn, i64 -32
  %i.y = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.3, align 8, !tbaa !19763
  store ptr %i.y, ptr %i.x, align 8, !tbaa !19763
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 32
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn, i64 -40
  %i.aa = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.4, align 8, !tbaa !19763
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !19763
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 40
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn, i64 -48
  %i.ac = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.5, align 8, !tbaa !19763
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !19763
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 48
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn, i64 -56
  %i.ae = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.6, align 8, !tbaa !19763
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !19763
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 56
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn, i64 -64 ; 3 uses
  %i.ag = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.7, align 8, !tbaa !19763
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !19763
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.ai = icmp eq ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.7, %i.e
  br i1 %i.ai, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !21841

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.a
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !20275
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5folly15RegexMatchCache15hasItemsToPurgeENSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, i64 %1) local_unnamed_addr #36 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19761 ; 3 uses
  %i.c = and i64 %i.b, -8                         ; 2 uses
  %.not26.not = icmp eq i64 %i.c, 0
  br i1 %.not26.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = shl i64 %i.b, 1
  %i.e = and i64 %i.d, 14
  %i.f = lshr i64 %i.b, 3
  %i.g = and i64 %i.f, 1
  %i.h = or disjoint i64 %i.e, %i.g
  %i.i = inttoptr i64 %i.c to ptr
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit
  %.sroa.014.028 = phi ptr [ %.sroa.014.1, %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  %.sroa.8.027 = phi i64 [ %.sroa.8.3, %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %i.j = load ptr, ptr %.sroa.014.028, align 8, !tbaa !19734
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  %.not19.not.not = icmp sle i64 %i.l, %1         ; 3 uses
  br i1 %.not19.not.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds i8, ptr %.sroa.014.028, i64 -16
  %.neg.i.i.i = mul nsw i64 %.sroa.8.027, -8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %.neg.i.i.i ; 2 uses
  %.not19.i5.i = icmp eq i64 %.sroa.8.027, 0
  br i1 %.not19.i5.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

.critedge.i.i.preheader:                          ; preds = %bb.c, %bb.b
  br label %.critedge.i.i

bb.c:                                             ; preds = %thread-pre-split.i
  %.not19.i.i = icmp eq i64 %i.q, 0
  br i1 %.not19.i.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.q, %bb.c ], [ %.sroa.8.027, %bb.b ]
  %i.p = phi ptr [ %i.r, %bb.c ], [ %.sroa.014.028, %bb.b ]
  %i.q = add nsw i64 %i.o, -1                     ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19682
  %.not.i = icmp eq i8 %i.t, 0
  br i1 %.not.i, label %bb.c, label %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEEppEv.exit, !prof !19683, !llvm.loop !718

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %bb.d
  %.017.i.i = phi ptr [ %i.x, %bb.d ], [ %i.n, %.critedge.i.i.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 14
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19682
  %i.w = and i8 %i.v, 15
  %.not2.i = icmp eq i8 %i.w, 0
  br i1 %.not2.i, label %bb.d, label %._crit_edge, !prof !19685

bb.d:                                             ; preds = %.critedge.i.i
  %i.x = getelementptr inbounds i8, ptr %.017.i.i, i64 -128 ; 4 uses
  %i.y = load <16 x i8>, ptr %i.x, align 16, !tbaa !19682
  %i.z = icmp eq <16 x i8> %i.y, zeroinitializer
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = and i16 %i.aa, 16383                    ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.017.i.i, i64 -256
end_hunk_20
