Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/extension_set?download=true
inline.NumInlined: 3753
inline.NumDeleted: 1327
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6google8protobuf8internal12ExtensionSet21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !62   ; 3 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 3 uses
  %i.i = zext nneg i16 %i.b to i64                ; 3 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 4 uses
  br i1 %i.f, label %bb.g, label %bb.c, !prof !47

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i16 %i.e to i64
  %.idx = shl nuw nsw i64 %i.m, 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %.not25.i = icmp eq i16 %i.e, 0
  br i1 %.not25.i, label %.sink.split, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.f
  %.028.i = phi i64 [ %i.y, %bb.f ], [ %i.i, %bb.c ]
  %.01627.i = phi ptr [ %.121.i, %bb.f ], [ %i.h, %bb.c ] ; 2 uses
  %.01726.i = phi ptr [ %i.z, %bb.f ], [ %i.l, %bb.c ] ; 3 uses
  %.not1823.i = icmp eq ptr %.01627.i, %i.j
  br i1 %.not1823.i, label %.critedge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.o = load i32, ptr %.01726.i, align 8, !tbaa !80 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.124.i = phi ptr [ %.01627.i, %.lr.ph.i ], [ %i.r, %bb.e ] ; 4 uses
  %i.p = load i32, ptr %.124.i, align 8, !tbaa !80 ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.o
  br i1 %i.q, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.124.i, i64 32 ; 2 uses
  %.not18.i = icmp eq ptr %i.r, %i.j
  br i1 %.not18.i, label %.critedge.thread.i, label %bb.d, !llvm.loop !256

.critedge.i:                                      ; preds = %bb.d
  %i.s = icmp sgt i32 %i.p, %i.o
  br i1 %i.s, label %.critedge.thread.i, label %bb.f

.critedge.thread.i:                               ; preds = %bb.e, %.critedge.i, %.preheader.i
  %.122.i = phi ptr [ %.124.i, %.critedge.i ], [ %i.j, %.preheader.i ], [ %i.j, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %.01726.i, i64 18
  %i.u = load i8, ptr %i.t, align 2
  %i.v = and i8 %i.u, 2
  %.not19.i = icmp eq i8 %i.v, 0
  %i.w = zext i1 %.not19.i to i64
  br label %bb.f

bb.f:                                             ; preds = %.critedge.thread.i, %.critedge.i
  %.121.i = phi ptr [ %.124.i, %.critedge.i ], [ %.122.i, %.critedge.thread.i ]
  %i.x = phi i64 [ 0, %.critedge.i ], [ %i.w, %.critedge.thread.i ]
  %i.y = add i64 %i.x, %.028.i                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01726.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.n
  br i1 %.not.i, label %.sink.split, label %.preheader.i, !llvm.loop !257

bb.g:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !27
  %i.ag = zext i8 %i.af to i32
  %i.ah = tail call fastcc noundef i64 @_ZN6google8protobuf8internal12_GLOBAL__N_111SizeOfUnionIPNS1_12ExtensionSet8KeyValueEN4absl12lts_2025051218container_internal14btree_iteratorINS9_10btree_nodeINS9_10map_paramsIiNS4_9ExtensionESt4lessIiESaISt4pairIKiSD_EELi256ELb0EEEEERSI_PSI_EEEEmT_SP_T0_SQ_(ptr noundef %i.h, ptr noundef %i.j, ptr %i.ab, i32 0, ptr %i.ad, i32 %i.ag)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.c, %bb.g
  %.0.lcssa.i.sink = phi i64 [ %i.ah, %bb.g ], [ %i.i, %bb.c ], [ %i.y, %bb.f ]
  tail call void @_ZN6google8protobuf8internal12ExtensionSet12GrowCapacityEPNS0_5ArenaEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %.0.lcssa.i.sink)
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.val = load i16, ptr %i.ai, align 2, !tbaa !62 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val21 = load ptr, ptr %i.aj, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %2, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ak = icmp slt i16 %.val, 0
  br i1 %i.ak, label %bb.i, label %bb.j, !prof !47

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %.val21, align 8, !tbaa !68
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %.val21, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 10
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !27
  %i.ar = zext i8 %i.aq to i32
  tail call fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNS2_21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_SN_E3$_0NS2_8PrefetchEEEvT_SV_T0_T1_"(ptr %i.am, i32 0, ptr %i.ao, i32 %i.ar, ptr noundef nonnull byval(%class.anon.36) align 8 %5)
  br label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit"

bb.j:                                             ; preds = %bb.h
  %i.as = zext nneg i16 %.val to i64
  %.idx.i = shl nuw nsw i64 %i.as, 5
  %i.at = getelementptr inbounds nuw i8, ptr %.val21, i64 %.idx.i ; 5 uses
  %.not34.i.i = icmp eq i16 %.val, 0
  br i1 %.not34.i.i, label %.preheader23.i.i, label %.lr.ph.i.i

.preheader23.i.i:                                 ; preds = %.lr.ph.i.i, %bb.j
  %.018.lcssa.i.i = phi ptr [ %.val21, %bb.j ], [ %i.az, %.lr.ph.i.i ] ; 2 uses
  %.not26.i.i = icmp eq ptr %.018.lcssa.i.i, %i.at
  br i1 %.not26.i.i, label %.preheader.i.i, label %.lr.ph29.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.025.i.i = phi i32 [ %i.ba, %.lr.ph.i.i ], [ 0, %bb.j ] ; 2 uses
  %.01824.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.val21, %bb.j ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 18
  %i.aw = load i8, ptr %i.av, align 2
  %i.ax = trunc i8 %i.aw to i1
  %i.ay = load ptr, ptr %i.au, align 8
  %spec.select.i.i.i = select i1 %i.ax, ptr %i.ay, ptr %i.au
  tail call void @llvm.prefetch.p0(ptr %spec.select.i.i.i, i32 0, i32 3, i32 1)
  %i.az = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 32 ; 3 uses
  %i.ba = add nuw nsw i32 %.025.i.i, 1
  %i.bb = icmp ne ptr %i.az, %i.at
  %i.bc = icmp samesign ult i32 %.025.i.i, 15
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %.lr.ph.i.i, label %.preheader23.i.i, !llvm.loop !258

.preheader.i.i:                                   ; preds = %.lr.ph29.i.i, %.preheader23.i.i
  %.019.lcssa.i.i = phi ptr [ %.val21, %.preheader23.i.i ], [ %i.bl, %.lr.ph29.i.i ] ; 2 uses
  %.not2131.i.i = icmp eq ptr %.019.lcssa.i.i, %i.at
  br i1 %.not2131.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i

.lr.ph29.i.i:                                     ; preds = %.preheader23.i.i, %.lr.ph29.i.i
  %.128.i.i = phi ptr [ %i.bm, %.lr.ph29.i.i ], [ %.018.lcssa.i.i, %.preheader23.i.i ] ; 3 uses
  %.01927.i.i = phi ptr [ %i.bl, %.lr.ph29.i.i ], [ %.val21, %.preheader23.i.i ] ; 3 uses
  %i.be = load i32, ptr %.01927.i.i, align 8, !tbaa !80
  %i.bf = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 8
  tail call void @_ZN6google8protobuf8internal12ExtensionSet26InternalExtensionMergeFromEPNS0_5ArenaEPKNS0_11MessageLiteEiRKNS2_9ExtensionES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr poison, i32 noundef %i.be, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bf, ptr poison)
  %i.bg = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 18
  %i.bi = load i8, ptr %i.bh, align 2
  %i.bj = trunc i8 %i.bi to i1
  %i.bk = load ptr, ptr %i.bg, align 8
  %spec.select.i22.i.i = select i1 %i.bj, ptr %i.bk, ptr %i.bg
  tail call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i, i32 0, i32 3, i32 1)
  %i.bl = getelementptr inbounds nuw i8, ptr %.01927.i.i, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.128.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, %i.at
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph29.i.i, !llvm.loop !259

.lr.ph33.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph33.i.i
  %.12032.i.i = phi ptr [ %i.bp, %.lr.ph33.i.i ], [ %.019.lcssa.i.i, %.preheader.i.i ] ; 3 uses
  %i.bn = load i32, ptr %.12032.i.i, align 8, !tbaa !80
  %i.bo = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 8
  tail call void @_ZN6google8protobuf8internal12ExtensionSet26InternalExtensionMergeFromEPNS0_5ArenaEPKNS0_11MessageLiteEiRKNS2_9ExtensionES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr poison, i32 noundef %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bo, ptr poison)
  %i.bp = getelementptr inbounds nuw i8, ptr %.12032.i.i, i64 32 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.bp, %i.at
  br i1 %.not21.i.i, label %"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit", label %.lr.ph33.i.i, !llvm.loop !260

"_ZNK6google8protobuf8internal12ExtensionSet7ForEachIZNS2_21InternalMergeFromSlowEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S5_E3$_0NS2_8PrefetchEEEvT_T0_.exit": ; preds = %.lr.ph33.i.i, %bb.i, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet27InternalReduceSmallCapacityEPNS0_5ArenaE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !62   ; 2 uses
  %i.c = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.b)
  %or.cond.i = icmp eq i16 %i.c, 1
  %i.d = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.b, i1 false) ; 2 uses
  br i1 %or.cond.i, label %bb.b, label %_ZN4absl12lts_2025051214has_single_bitItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEbE4typeES3_.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %narrow.i.i = sub nuw nsw i16 16, %i.d
  %i.e = zext nneg i16 %narrow.i.i to i32
  %i.f = add nsw i32 %i.e, -1
  %i.g = shl nuw nsw i32 1, %i.f
  br label %_ZN4absl12lts_202505128bit_ceilItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit

_ZN4absl12lts_2025051214has_single_bitItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEbE4typeES3_.exit.thread.i: ; preds = %bb.a
  %narrow.i = sub nuw nsw i16 32, %i.d
  %i.h = zext nneg i16 %narrow.i to i32
  %i.i = shl nuw i32 1, %i.h
  %i.j = lshr i32 %i.i, 16
  br label %_ZN4absl12lts_202505128bit_ceilItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit

_ZN4absl12lts_202505128bit_ceilItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit: ; preds = %bb.b, %_ZN4absl12lts_2025051214has_single_bitItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEbE4typeES3_.exit.thread.i
  %.in.i = phi i32 [ %i.g, %bb.b ], [ %i.j, %_ZN4absl12lts_2025051214has_single_bitItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEbE4typeES3_.exit.thread.i ] ; 2 uses
  %2 = zext nneg i32 %.in.i to i64
  %3 = icmp eq ptr %1, null
  %4 = shl nuw nsw i64 %2, 5                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %3, label %bb.c, label %bb.d, !prof !47

bb.c:                                             ; preds = %_ZN4absl12lts_202505128bit_ceilItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %4) #37 ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %i.n = load i16, ptr %i.a, align 2, !tbaa !62
  %i.o = zext i16 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.m, i64 %i.p, i1 false)
  %i.q = load i16, ptr %0, align 8, !tbaa !70
  %i.r = zext i16 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 5
  tail call void @_ZdaPvm(ptr noundef %i.m, i64 noundef %i.s) #34
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

bb.d:                                             ; preds = %_ZN4absl12lts_202505128bit_ceilItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueES3_E4typeES3_.exit
  %i.t = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %4) ; 4 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.v = load i16, ptr %i.a, align 2, !tbaa !62
  %i.w = zext i16 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.t, ptr align 8 %i.u, i64 %i.x, i1 false)
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !27   ; 6 uses
  %i.z = load i16, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.aa = zext i16 %i.z to i64                    ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 5                ; 2 uses
  %i.ac = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !119
  %i.af = load i64, ptr %1, align 8, !tbaa !146
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit, !prof !46

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !147 ; 5 uses
  %i.aj = icmp ne i16 %i.z, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.al = sub nuw nsw i64 59, %i.ak               ; 2 uses
  %i.am = load i8, ptr %i.ai, align 8, !tbaa !148 ; 3 uses
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %.not.i.i.i = icmp samesign ult i64 %i.al, %i.an
  br i1 %.not.i.i.i, label %bb.i, label %bb.f, !prof !46

bb.f:                                             ; preds = %bb.e
  %i.ao = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !149 ; 2 uses
  %i.ar = icmp ugt i8 %i.am, 1
  br i1 %i.ar, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i, label %bb.g, !prof !46

bb.g:                                             ; preds = %bb.f
  %i.as = icmp eq i8 %i.am, 1
  br i1 %i.as, label %bb.h, label %.lr.ph.preheader.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !151
  store ptr %i.at, ptr %i.y, align 8, !tbaa !151
  br label %.lr.ph.preheader.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %bb.f
  %.idx.i.i.i = shl nuw nsw i64 %i.an, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.aq, i64 %.idx.i.i.i, i1 false)
  %.pre.i.i.i = load i8, ptr %i.ai, align 8, !tbaa !148
  %i.au = zext i8 %.pre.i.i.i to i64              ; 2 uses
  %.not4.i.i.i.i.i.i = icmp samesign eq i64 %i.ao, %i.au
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i, %bb.h, %bb.g
  %i.av = phi i64 [ %i.au, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i ], [ 1, %bb.h ], [ 0, %bb.g ]
  %.idx24.i.i.i = shl nuw nsw i64 %i.av, 3        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i
  %gepdiff.i.i.i = sub nsw i64 %i.ab, %.idx24.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %gepdiff.i.i.i, i1 false), !tbaa !151
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i
  store ptr %i.y, ptr %i.ap, align 8, !tbaa !149
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 64)
  %i.ax = trunc nuw nsw i64 %.sroa.speculated.i.i.i to i8
  store i8 %i.ax, ptr %i.ai, align 8, !tbaa !148
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

bb.i:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !149
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.al ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !151
  store ptr %i.bb, ptr %i.y, align 8, !tbaa !153
  store ptr %i.y, ptr %i.ba, align 8, !tbaa !151
  br label %_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit

_ZN6google8protobuf5Arena17ReturnArrayMemoryEPvm.exit: ; preds = %bb.i, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i, %bb.d, %bb.c
  %.0.i.i10 = phi ptr [ %i.l, %bb.c ], [ %i.t, %bb.d ], [ %i.t, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i ], [ %i.t, %bb.i ]
  %i.bc = trunc nuw i32 %.in.i to i16
  store ptr %.0.i.i10, ptr %i.k, align 8, !tbaa !27
  store i16 %i.bc, ptr %0, align 8, !tbaa !70
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal12ExtensionSet12GrowCapacityEPNS0_5ArenaEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.53", align 8     ; 5 uses
  %4 = alloca %"struct.std::pair.41", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !62   ; 5 uses
  %i.c = icmp sgt i16 %i.b, -1
  %i.d = load i16, ptr %0, align 8                ; 2 uses
  %i.e = zext i16 %i.d to i64
  %.not = icmp ugt i64 %2, %i.e
  %or.cond = select i1 %i.c, i1 %.not, i1 false, !prof !263
  br i1 %or.cond, label %.preheader, label %bb.u, !prof !263

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi i16 [ %i.h, %.preheader ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = icmp eq i16 %.0, 0
  %i.g = shl i16 %.0, 2
  %i.h = select i1 %i.f, i16 1, i16 %i.g          ; 4 uses
  %i.i = zext i16 %i.h to i64                     ; 2 uses
  %i.j = icmp ugt i64 %2, %i.i
  br i1 %i.j, label %.preheader, label %bb.b, !llvm.loop !261

bb.b:                                             ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 11 uses
  %i.m = zext nneg i16 %i.b to i64
  %.idx49 = shl nuw nsw i64 %i.m, 5               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx49
  %i.o = icmp ugt i16 %i.h, 256
  %i.p = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %bb.d, label %bb.e, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37
  br label %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noundef ptr @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmmPFvPvE(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 24, i64 noundef 8, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectIN4absl12lts_202505129btree_mapIiNS1_12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEEEvPv)
  br label %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.sink = phi ptr [ %i.q, %bb.d ], [ %i.r, %bb.e ] ; 5 uses
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %.sink, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.s, align 8, !tbaa !264
  %i.t = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  store i64 0, ptr %i.t, align 8, !tbaa !71
  %.not3845 = icmp eq i16 %i.b, 0
  br i1 %.not3845, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %_ZN6google8protobuf5Arena6CreateIN4absl12lts_202505129btree_mapIiNS0_8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EEEEJEEEPT_PS1_DpOT0_.exit
  store i16 -1, ptr %i.a, align 2, !tbaa !62
  br label %_ZSt4copyIPN6google8protobuf8internal12ExtensionSet8KeyValueES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.pn4148 = phi i32 [ 0, %.lr.ph ], [ %.sroa.26.0.copyload.i, %bb.f ]
  %.pn4347 = phi ptr [ @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, %.lr.ph ], [ %.sroa.05.0.copyload.i, %bb.f ]
  %.03446 = phi ptr [ %i.l, %.lr.ph ], [ %i.x, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.v = getelementptr inbounds nuw i8, ptr %.03446, i64 8
  %i.w = load i32, ptr %.03446, align 4, !tbaa !26
  store i32 %i.w, ptr %4, align 8, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !156
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS8_EELi256ELb0EEEE18insert_hint_uniqueIiJSD_EEESB_INS1_14btree_iteratorINS1_10btree_nodeISF_EERSD_PSD_EEbESN_RKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.53") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %.sink, ptr %.pn4347, i32 %.pn4148, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %.sroa.05.0.copyload.i = load ptr, ptr %3, align 8
  %.sroa.26.0.copyload.i = load i32, ptr %.sroa.26.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.x = getelementptr inbounds nuw i8, ptr %.03446, i64 32 ; 2 uses
  %.not38 = icmp eq ptr %i.x, %i.n
  br i1 %.not38, label %._crit_edge, label %bb.f, !llvm.loop !262

bb.g:                                             ; preds = %bb.b
  %i.y = shl nuw nsw i64 %i.i, 5                  ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.i, !prof !47

bb.h:                                             ; preds = %bb.g
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #37
  br label %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.y)
  br label %_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit

_ZN6google8protobuf8internal12ExtensionSet15AllocateFlatMapEPNS0_5ArenaEt.exit: ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.z, %bb.h ], [ %i.aa, %bb.i ] ; 5 uses
  %i.ab = icmp samesign ugt i16 %i.b, 1
end_hunk_0
