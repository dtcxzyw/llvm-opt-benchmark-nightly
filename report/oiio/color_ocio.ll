Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/color_ocio?download=true
inline.NumInlined: 6229
inline.NumDeleted: 1603
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E11rehash_implEm:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !392  ; 3 uses
  %.not21 = icmp eq ptr %i.i, %i.k
  %.sroa.0.0.copyload.i.i.pre24 = load i64, ptr %3, align 8 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre27 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not21, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.r
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !388
  %.pre26 = load ptr, ptr %i.j, align 8, !tbaa !390
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %i.l = phi ptr [ %.pre26, %._crit_edge.loopexit ], [ %i.k, %bb.a ] ; 3 uses
  %i.m = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.i, %bb.a ] ; 4 uses
  %i.n = load i64, ptr %0, align 8, !tbaa !91
  store i64 %i.n, ptr %3, align 8, !tbaa !91
  store i64 %.sroa.0.0.copyload.i.i.pre24, ptr %0, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !389
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.o, align 8, !tbaa !392
  store ptr %i.m, ptr %i.o, align 8, !tbaa !388
  store ptr %i.l, ptr %i.p, align 8, !tbaa !390
  store <2 x ptr> %i.t, ptr %i.h, align 8, !tbaa !392
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !392
  store ptr %i.r, ptr %i.s, align 8, !tbaa !389
  store <2 x ptr> %i.v, ptr %i.q, align 8, !tbaa !392
  store ptr %.pre27, ptr %i.u, align 8, !tbaa !392
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load <2 x i64>, ptr %i.w, align 8, !tbaa !91
  store i64 %i.f, ptr %i.w, align 8, !tbaa !91
  store <2 x i64> %i.x, ptr %i.e, align 8, !tbaa !91
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !91
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !91
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !91
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !91
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.a, align 8, !tbaa !118
  %i.ae = load <2 x float>, ptr %i.ac, align 8, !tbaa !118
  store <2 x float> %i.ad, ptr %i.ac, align 8, !tbaa !118
  store <2 x float> %i.ae, ptr %i.a, align 8, !tbaa !118
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = load i8, ptr %i.af, align 8, !tbaa !72, !range !73, !noundef !74
  %i.ai = load i8, ptr %i.ag, align 8, !tbaa !72, !range !73, !noundef !74
  store i8 %i.ai, ptr %i.af, align 8, !tbaa !72
  store i8 %i.ah, ptr %i.ag, align 8, !tbaa !72
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 73 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !72, !range !73, !noundef !74
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !72, !range !73, !noundef !74
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !72
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !72
  %.not4.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bh, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEEEvPT_.exit.i.i.i.i ], [ %i.m, %._crit_edge ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !166
  %i.ap = icmp eq i16 %i.ao, -1
  br i1 %i.ap, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !95 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.as, align 8, !tbaa !97
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !98
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !100
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #38, !inline_history !1202
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !100
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #38, !inline_history !1202
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.av, %bb.f ], [ %i.bf, %bb.g ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.h, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, !prof !101

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #38
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %bb.b
  store i16 -1, ptr %i.an, align 4, !tbaa !166
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, %i.l
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !56

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.o, align 8, !tbaa !388
  br label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge
  %i.bi = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.m, %._crit_edge ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i1.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i.i
  %i.bj = load ptr, ptr %i.q, align 8, !tbaa !389
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #40
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS5_14ColorProcessorEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.r
  %.sroa.017.022 = phi ptr [ %i.cr, %bb.r ], [ %i.i, %bb.a ] ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 4
  %i.bo = load i16, ptr %i.bn, align 4, !tbaa !166
  %i.bp = icmp eq i16 %i.bo, -1
  br i1 %i.bp, label %bb.r, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  br i1 %i.g, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = load i32, ptr %.sroa.017.022, align 4, !tbaa !397
  %i.br = zext i32 %i.bq to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 88
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !183
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bu = phi i64 [ %i.br, %bb.k ], [ %i.bt, %bb.l ] ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 96 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 104 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %.013.i = phi i16 [ 0, %bb.m ], [ %i.cm, %bb.q ] ; 4 uses
  %.012.i = phi i32 [ %i.bv, %bb.m ], [ %.1.i, %bb.q ] ; 3 uses
  %.pn = phi i64 [ %i.bu, %bb.m ], [ %i.cn, %bb.q ]
  %.0.i = and i64 %.pn, %.sroa.0.0.copyload.i.i.pre24 ; 2 uses
  %i.bz = getelementptr inbounds nuw [112 x i8], ptr %.pre27, i64 %.0.i ; 9 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 4 uses
  %i.cb = load i16, ptr %i.ca, align 4, !tbaa !166 ; 2 uses
  %i.cc = icmp sgt i16 %.013.i, %i.cb
  br i1 %i.cc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cd = icmp eq i16 %i.cb, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  br i1 %i.cd, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOS9_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.bw, i64 88, i1 false), !tbaa.struct !396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bw, ptr noundef nonnull align 8 dereferenceable(104) %i.ce, i64 88, i1 false), !tbaa.struct !396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ce, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false), !tbaa.struct !396
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 96 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !193
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 104
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !95
  %i.cj = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !110
  store ptr %i.cg, ptr %i.bx, align 8, !tbaa !193
  store <2 x ptr> %i.cj, ptr %i.cf, align 8, !tbaa !110
  store ptr %i.ci, ptr %i.by, align 8, !tbaa !95
  %i.ck = load i16, ptr %i.ca, align 4, !tbaa !398
  store i16 %.013.i, ptr %i.ca, align 4, !tbaa !398
  %i.cl = load i32, ptr %i.bz, align 8, !tbaa !397
  store i32 %.012.i, ptr %i.bz, align 8, !tbaa !397
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.114.i = phi i16 [ %i.ck, %bb.p ], [ %.013.i, %bb.n ]
  %.1.i = phi i32 [ %i.cl, %bb.p ], [ %.012.i, %bb.n ]
  %i.cm = add i16 %.114.i, 1
  %i.cn = add i64 %.0.i, 1
  br label %bb.n, !llvm.loop !1203

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOS9_.exit: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ce, ptr noundef nonnull align 8 dereferenceable(104) %i.bw, i64 88, i1 false), !tbaa.struct !396
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 104
  store ptr null, ptr %i.cp, align 8, !tbaa !95
  %i.cq = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !110
  store ptr null, ptr %i.by, align 8, !tbaa !95
  store <2 x ptr> %i.cq, ptr %i.co, align 8, !tbaa !110
  store ptr null, ptr %i.bx, align 8, !tbaa !143
  store i32 %.012.i, ptr %i.bz, align 8, !tbaa !397
  store i16 %.013.i, ptr %i.ca, align 4, !tbaa !166
  br label %bb.r

bb.r:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOS9_.exit, %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 112 ; 2 uses
  %.not = icmp eq ptr %i.cr, %i.k
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_114ColorProcessorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_121ColorProcessor_MatrixD0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_121ColorProcessor_Matrix5applyEPfiiilll(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) unnamed_addr #15 align 2 {
bb.a:
  %i.a = icmp eq i32 %4, 3
  %i.b = icmp eq i64 %5, 4                        ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph408, label %.loopexit

.lr.ph408:                                        ; preds = %.preheader
  %i.d = icmp sgt i32 %2, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  br i1 %i.d, label %.lr.ph405.preheader, label %.loopexit

.lr.ph405.preheader:                              ; preds = %.lr.ph408
  %wide.trip.count436 = zext nneg i32 %3 to i64
  br label %.lr.ph405

.lr.ph405:                                        ; preds = %.lr.ph405.preheader, %._crit_edge406
  %indvars.iv433 = phi i64 [ 0, %.lr.ph405.preheader ], [ %indvars.iv.next434, %._crit_edge406 ] ; 2 uses
  %i.i = mul nsw i64 %7, %indvars.iv433
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  br label %bb.b

._crit_edge406:                                   ; preds = %bb.b
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 2 uses
  %exitcond437.not = icmp eq i64 %indvars.iv.next434, %wide.trip.count436
  br i1 %exitcond437.not, label %.loopexit, label %.lr.ph405, !llvm.loop !1204

bb.b:                                             ; preds = %.lr.ph405, %bb.b
  %.063403 = phi i32 [ 0, %.lr.ph405 ], [ %i.aj, %bb.b ]
  %.064402 = phi ptr [ %i.j, %.lr.ph405 ], [ %i.ak, %bb.b ] ; 5 uses
  %i.k = load float, ptr %.064402, align 4, !tbaa !118
  %i.l = getelementptr inbounds nuw i8, ptr %.064402, i64 4 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !118
  %i.n = getelementptr inbounds nuw i8, ptr %.064402, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !118
  %i.p = insertelement <4 x float> poison, float %i.k, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = load <4 x float>, ptr %i.e, align 16, !tbaa !79
  %i.s = fmul <4 x float> %i.q, %i.r
  %i.t = insertelement <4 x float> poison, float %i.m, i64 0
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = load <4 x float>, ptr %i.f, align 16, !tbaa !79
  %i.w = fmul <4 x float> %i.u, %i.v
  %i.x = fadd <4 x float> %i.s, %i.w
  %i.y = insertelement <4 x float> poison, float %i.o, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = load <4 x float>, ptr %i.g, align 16, !tbaa !79
  %i.ab = fmul <4 x float> %i.z, %i.aa
  %i.ac = fadd <4 x float> %i.x, %i.ab
  %i.ad = load <4 x float>, ptr %i.h, align 16, !tbaa !79
  %i.ae = fmul <4 x float> %i.ad, zeroinitializer
  %i.af = fadd <4 x float> %i.ac, %i.ae           ; 2 uses
  %i.ag = bitcast <4 x float> %i.af to <4 x i32>
  %i.ah = extractelement <4 x i32> %i.ag, i64 0
  store i32 %i.ah, ptr %.064402, align 4, !tbaa !118
  %i.ai = shufflevector <4 x float> %i.af, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.ai, ptr %i.l, align 4, !tbaa !118
  %i.aj = add nuw nsw i32 %.063403, 1             ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.064402, i64 %6
  %exitcond432.not = icmp eq i32 %i.aj, %2
  br i1 %exitcond432.not, label %._crit_edge406, label %bb.b, !llvm.loop !1205

bb.c:                                             ; preds = %bb.a
  %i.al = icmp sgt i32 %4, 3
  %or.cond3 = and i1 %i.al, %i.b
  br i1 %or.cond3, label %.preheader369, label %bb.e

.preheader369:                                    ; preds = %bb.c
  %i.am = icmp sgt i32 %3, 0
  br i1 %i.am, label %.lr.ph401, label %.loopexit

.lr.ph401:                                        ; preds = %.preheader369
  %i.an = icmp sgt i32 %2, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  br i1 %i.an, label %.lr.ph399.preheader, label %.loopexit

.lr.ph399.preheader:                              ; preds = %.lr.ph401
  %wide.trip.count430 = zext nneg i32 %3 to i64
  br label %.lr.ph399

.lr.ph399:                                        ; preds = %.lr.ph399.preheader, %._crit_edge
  %indvars.iv427 = phi i64 [ 0, %.lr.ph399.preheader ], [ %indvars.iv.next428, %._crit_edge ] ; 2 uses
  %i.as = mul nsw i64 %7, %indvars.iv427
  %i.at = getelementptr inbounds i8, ptr %1, i64 %i.as
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 1 ; 2 uses
  %exitcond431.not = icmp eq i64 %indvars.iv.next428, %wide.trip.count430
  br i1 %exitcond431.not, label %.loopexit, label %.lr.ph399, !llvm.loop !1206

bb.d:                                             ; preds = %.lr.ph399, %bb.d
  %.060398 = phi i32 [ 0, %.lr.ph399 ], [ %i.bk, %bb.d ]
  %.061397 = phi ptr [ %i.at, %.lr.ph399 ], [ %i.bl, %bb.d ] ; 3 uses
  %i.au = load <4 x float>, ptr %.061397, align 1, !tbaa !79 ; 4 uses
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = load <4 x float>, ptr %i.ao, align 16, !tbaa !79
  %i.ax = fmul <4 x float> %i.aw, %i.av
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.az = load <4 x float>, ptr %i.ap, align 16, !tbaa !79
  %i.ba = fmul <4 x float> %i.ay, %i.az
  %i.bb = fadd <4 x float> %i.ax, %i.ba
  %i.bc = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bd = load <4 x float>, ptr %i.aq, align 16, !tbaa !79
  %i.be = fmul <4 x float> %i.bc, %i.bd
  %i.bf = fadd <4 x float> %i.bb, %i.be
  %i.bg = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bh = load <4 x float>, ptr %i.ar, align 16, !tbaa !79
  %i.bi = fmul <4 x float> %i.bg, %i.bh
  %i.bj = fadd <4 x float> %i.bf, %i.bi
  store <4 x float> %i.bj, ptr %.061397, align 1, !tbaa !79
  %i.bk = add nuw nsw i32 %.060398, 1             ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.061397, i64 %6
  %exitcond426.not = icmp eq i32 %i.bk, %2
  br i1 %exitcond426.not, label %._crit_edge, label %bb.d, !llvm.loop !1207

bb.e:                                             ; preds = %bb.c
  %i.bm = icmp sgt i32 %3, 0
  br i1 %i.bm, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.bn = icmp sgt i32 %2, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bs = icmp sgt i32 %4, 0
  %or.cond452 = and i1 %i.bn, %i.bs
  br i1 %or.cond452, label %.lr.ph382.us.us.preheader, label %.loopexit

.lr.ph382.us.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count424 = zext nneg i32 %3 to i64
  %exitcond414.not = icmp eq i32 %4, 1
  %exitcond414.not.1 = icmp eq i32 %4, 2
  %exitcond414.not.2 = icmp eq i32 %4, 3
  %exitcond419.not = icmp eq i32 %4, 1
  %exitcond419.not.1 = icmp eq i32 %4, 2
  %exitcond419.not.2 = icmp eq i32 %4, 3
  br label %.lr.ph382.us.us

.lr.ph382.us.us:                                  ; preds = %.lr.ph382.us.us.preheader, %._crit_edge383.split.us.us.split.us.us
  %indvars.iv421 = phi i64 [ 0, %.lr.ph382.us.us.preheader ], [ %indvars.iv.next422, %._crit_edge383.split.us.us.split.us.us ] ; 2 uses
  %i.bt = mul nsw i64 %7, %indvars.iv421
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %i.bt
end_hunk_0
