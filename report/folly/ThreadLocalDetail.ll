Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ThreadLocalDetail?download=true
inline.NumInlined: 1463
inline.NumDeleted: 730
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK5folly18threadlocal_detail14ThreadEntrySet12compressibleEv:bb.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18threadlocal_detail14ThreadEntrySet8compressEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS4_EELb1EE8_S_do_itERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) #31 ; 0 uses
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit

_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %i.j = load i8, ptr %i.i, align 1, !tbaa !49
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE7reserveEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE11reserveImplEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0)
  br label %_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE7reserveEm.exit

_ZN5folly3f146detail11F14BasicMapINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE7reserveEm.exit: ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE13shrink_to_fitEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  %i.c = add i64 %i.b, -256                       ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !50
  %i.d = and i64 %2, 255                          ; 2 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.e)
  %i.f = ptrtoint ptr %1 to i64
  %i.g = or i64 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %i.c, 256
  br i1 %i.k, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE17precheckedAdvanceEv.exit.i, label %bb.c

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
  %i.s = load i8, ptr %i.r, align 1, !tbaa !25
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE17precheckedAdvanceEv.exit.i, !prof !39, !llvm.loop !4

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %.critedge.i.i.i
  %.017.i.i.i = phi ptr [ %i.t, %.critedge.i.i.i ], [ %i.m, %.critedge.i.i.i.preheader ]
  %i.t = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -256 ; 4 uses
  %i.u = load <16 x i8>, ptr %i.t, align 16, !tbaa !25
  %i.v = icmp eq <16 x i8> %i.u, zeroinitializer
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = and i16 %i.w, 16383                      ; 2 uses
  %.not2.i.i = icmp eq i16 %i.x, 16383
  br i1 %.not2.i.i, label %.critedge.i.i.i, label %bb.e, !prof !39, !llvm.loop !5

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
  br label %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE17precheckedAdvanceEv.exit.i

_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE17precheckedAdvanceEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.e, %bb.b
  %.sroa.01.0.i = phi ptr [ null, %bb.b ], [ %i.ag, %bb.e ], [ %i.q, %thread-pre-split.i.i ]
  %.sroa.7.0.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ], [ %i.p, %thread-pre-split.i.i ]
  %i.ah = and i64 %.sroa.7.0.i, 255               ; 2 uses
  %i.ai = icmp samesign ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = ptrtoint ptr %.sroa.01.0.i to i64
  %i.ak = or i64 %i.ah, %i.aj
  store i64 %i.ak, ptr %i.h, align 8, !tbaa !55
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit: ; preds = %bb.a, %_ZN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEEEE17precheckedAdvanceEv.exit.i
  %i.al = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -16
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %.neg.i.i.i ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !25
  %.not.i.i7 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i7, label %bb.f, label %_ZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEm.exit.i

bb.f:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.7) #44
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEm.exit.i: ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE29adjustSizeAndBeginBeforeEraseENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEE.exit
  store i8 0, ptr %i.an, align 1, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !54
  %.not.i = icmp ult i8 %i.aq, 16
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEm.exit.i
  %i.ar = shl i64 %4, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = load i64, ptr %i.a, align 8, !tbaa !50
  %i.au = and i64 %i.at, 255
  %notmask.i.i = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !46    ; 4 uses
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
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !54
  %i.bf = add i8 %i.be, %.010.lcssa.i
  store i8 %i.bf, ptr %i.bd, align 2, !tbaa !54
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %i.bg = phi i64 [ %i.bn, %bb.i ], [ %i.ay, %bb.g ]
  %.01126.i = phi i64 [ %i.bl, %bb.i ], [ %3, %bb.g ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 15 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !76  ; 2 uses
  %.not.i17.i = icmp eq i8 %i.bj, -2
  br i1 %.not.i17.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bk = add i8 %i.bj, -1
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !76
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.bl = add i64 %i.as, %.01126.i                ; 2 uses
  %i.bm = and i64 %i.bl, %i.av
  %i.bn = shl nsw i64 %i.bm, 8                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bn
  %i.bp = icmp eq ptr %i.bo, %i.am
  br i1 %i.bp, label %.thread.i, label %.lr.ph.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10eraseBlankENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEESB_ImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKPNS_18threadlocal_detail11ThreadEntryEmEE8clearTagEm.exit.i, %.thread.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN5folly18threadlocal_detail11ThreadEntry31cachedInSetMatchesElementsArrayEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS4_EELb1EE8_S_do_itERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %reass.sub.fr.i = freeze i64 %i.f               ; 5 uses
  %i.g = icmp ugt i64 %reass.sub.fr.i, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #41
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %reass.sub.fr.i
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #42
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit.i ; 4 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %reass.sub.fr.i
  %i.k = add nsw i64 %reass.sub.fr.i, -24         ; 2 uses
  %i.l = urem i64 %i.k, 24
  %i.m = sub nuw nsw i64 %i.k, %i.l
  %i.n = add nsw i64 %i.m, 24                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.a, i64 %i.n, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.i, i64 %i.n
  %.pre = load ptr, ptr %0, align 8, !tbaa !58
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit

_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.o, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %.09) #31 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit: ; preds = %.noexc5.i, %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE11_M_allocateEm.exit.thread.i.i
  %i.q = phi ptr [ %i.a, %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE11_M_allocateEm.exit.thread.i.i ], [ %.pre, %.noexc5.i ] ; 3 uses
  %.sroa.12.0 = phi ptr [ %i.h, %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE11_M_allocateEm.exit.thread.i.i ], [ %i.j, %.noexc5.i ]
  %.sroa.012.0 = phi ptr [ null, %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE11_M_allocateEm.exit.thread.i.i ], [ %i.i, %.noexc5.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.noexc5.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !58
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !59
  store ptr %.sroa.12.0, ptr %i.r, align 8, !tbaa !68
  %.not.i.i.i10 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #43
  br label %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit

_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit: ; preds = %bb.c, %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit, %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5folly18threadlocal_detail14ThreadEntrySet7ElementESaIS3_EED2Ev.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE11reserveImplEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50   ; 5 uses
  %i.c = lshr i64 %i.b, 8                         ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.c) ; 11 uses
  %i.d = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !46     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.g = load i8, ptr %i.f, align 1, !tbaa !49
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.j = icmp ult i64 %i.b, 256
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %i.b, 255                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !tbaa !55
  store i64 %i.k, ptr %i.a, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi i64 [ %i.b, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.n = load i8, ptr %i.i, align 1, !tbaa !25
  %i.o = icmp eq i64 %i.m, 0
  %i.p = shl i8 %i.n, 4
  %i.q = zext i8 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 16
  %i.s = shl i64 256, %i.m
  %.0.i.i.i = select i1 %i.o, i64 %i.r, i64 %i.s
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %0, align 8, !tbaa !46
  store i64 0, ptr %i.a, align 8, !tbaa !50
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %.0.i.i.i) #31
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE5resetEv.exit

bb.f:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %1, %i.c
  %i.t = and i64 %i.b, 255                        ; 4 uses
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = shl nuw i64 1, %i.t
  %i.v = load ptr, ptr %0, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.x = load i8, ptr %i.w, align 1, !tbaa !25
  %i.y = and i8 %i.x, 15
  %i.z = zext nneg i8 %i.y to i64                 ; 2 uses
  %i.aa = shl i64 %i.z, %i.t
  %i.ab = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.ab, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add i64 %.sroa.speculated, -1
  %i.ad = udiv i64 %i.ac, 12
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = sub nuw nsw i64 64, %i.ae               ; 2 uses
  %i.ag = shl i64 12, %i.af
  %i.ah = icmp ugt i64 %i.ag, 72057594037927935
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #22
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = shl nuw nsw i64 1, %i.af
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i: ; preds = %bb.g, %bb.j
  %.pn21.i.i = phi i64 [ %i.ai, %bb.j ], [ 1, %bb.g ] ; 2 uses
  %.0.pn.i.i = phi i64 [ 12, %bb.j ], [ %.sroa.speculated, %bb.g ] ; 2 uses
  %i.aj = mul i64 %.0.pn.i.i, %.pn21.i.i
  %.not.i = icmp eq i64 %i.aa, %i.aj
  br i1 %.not.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE5resetEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.u, i64 noundef %i.z, i64 noundef %.pn21.i.i, i64 noundef %.0.pn.i.i)
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE5resetEv.exit

bb.l:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.am = load i8, ptr %i.al, align 1, !tbaa !25
  %i.an = and i8 %i.am, 15
  %i.ao = zext nneg i8 %i.an to i64               ; 2 uses
  %i.ap = shl i64 %i.ao, %i.t                     ; 4 uses
  %.not10 = icmp ugt i64 %.sroa.speculated, %i.ap
  br i1 %.not10, label %bb.m, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE5resetEv.exit

bb.m:                                             ; preds = %bb.l
  %i.aq = shl nuw i64 1, %i.t
  %i.ar = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.ar, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.as = add i64 %i.ap, 7
  %i.at = lshr i64 %i.as, 3
  %i.au = add i64 %i.at, %i.ap
  %i.av = icmp ugt i64 %.sroa.speculated, %i.au
  br i1 %i.av, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.aw, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.inv.i.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i.i = select i1 %.inv.i.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i11

bb.q:                                             ; preds = %bb.m
  %i.ax = add i64 %.sroa.speculated, -1
  %i.ay = udiv i64 %i.ax, 12
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.ba = sub nuw nsw i64 64, %i.az               ; 2 uses
  %i.bb = shl i64 12, %i.ba
  %i.bc = icmp ugt i64 %i.bb, 72057594037927935
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #22
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bd = shl nuw nsw i64 1, %i.ba
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i11

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i11: ; preds = %bb.s, %bb.p, %bb.o, %bb.n
  %.pn21.i.i12 = phi i64 [ %i.bd, %bb.s ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ] ; 2 uses
  %.0.pn.i.i13 = phi i64 [ 12, %bb.s ], [ %spec.select.i.i, %bb.p ], [ 2, %bb.o ], [ %.sroa.speculated, %bb.n ] ; 2 uses
  %i.be = mul i64 %.0.pn.i.i13, %.pn21.i.i12
  %.not.i14 = icmp eq i64 %i.ap, %i.be
  br i1 %.not.i14, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE5resetEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i11
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.aq, i64 noundef %i.ao, i64 noundef %.pn21.i.i12, i64 noundef %.0.pn.i.i13)
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE5resetEv.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE5resetEv.exit: ; preds = %bb.t, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i11, %bb.k, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPNS_18threadlocal_detail11ThreadEntryEmvvvEEE25computeChunkCountAndScaleEmbb.exit.i, %bb.e, %bb.b, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly18threadlocal_detail14StaticMetaBaseC2EPFPNS0_11ThreadEntryEvEb(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 4), (8, 80), (88, 97), (104, 128)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8
  store i32 1, ptr %0, align 8, !tbaa !241
end_hunk_0
