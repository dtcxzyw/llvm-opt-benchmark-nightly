Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/nb_func?download=true
inline.NumInlined: 459
inline.NumDeleted: 216
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11insert_implIS3_JRKSt21piecewise_construct_tSt5tupleIJOS3_EESN_IJODnEEEEES2_INSI_14robin_iteratorILb0EEEbERKT_DpOT0_:bb.a
  %i.bo = phi i64 [ %i.bf, %.lr.ph.i.i ], [ %i.cb, %bb.i ]
  %i.bp = phi i16 [ %i.bk, %.lr.ph.i.i ], [ %i.cg, %bb.i ]
  %i.bq = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %i.cf, %bb.i ] ; 2 uses
  %i.br = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %i.ce, %bb.i ] ; 4 uses
  %storemerge25.i.i = phi i16 [ %storemerge22.i.i, %.lr.ph.i.i ], [ %storemerge.i.i, %bb.i ] ; 4 uses
  %.024.i.i = phi i64 [ %i.bg, %.lr.ph.i.i ], [ %i.cd, %bb.i ]
  %.01823.i.i = phi i32 [ %i.bd, %.lr.ph.i.i ], [ %.1.i.i, %bb.i ] ; 2 uses
  %i.bs = icmp sgt i16 %storemerge25.i.i, %i.bp
  br i1 %i.bs, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bt = icmp sgt i16 %storemerge25.i.i, 8192
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.bm, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  store ptr %.sroa.06.0.i, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  store ptr %.sroa.8.0.i, ptr %i.bw, align 8
  %i.by = load i16, ptr %i.bq, align 2
  store i16 %storemerge25.i.i, ptr %i.bq, align 2
  %i.bz = load i32, ptr %i.br, align 8
  store i32 %.01823.i.i, ptr %i.br, align 8
  %.pre.i.i = load i64, ptr %0, align 8
  %.pre32.i.i = load ptr, ptr %i.l, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.sroa.06.1.i = phi ptr [ %i.bv, %bb.h ], [ %.sroa.06.0.i, %bb.e ] ; 2 uses
  %.sroa.8.1.i = phi ptr [ %i.bx, %bb.h ], [ %.sroa.8.0.i, %bb.e ] ; 2 uses
  %i.ca = phi ptr [ %.pre32.i.i, %bb.h ], [ %i.bn, %bb.e ] ; 2 uses
  %i.cb = phi i64 [ %.pre.i.i, %bb.h ], [ %i.bo, %bb.e ] ; 2 uses
  %.120.i.i = phi i16 [ %i.by, %bb.h ], [ %storemerge25.i.i, %bb.e ]
  %.1.i.i = phi i32 [ %i.bz, %bb.h ], [ %.01823.i.i, %bb.e ] ; 2 uses
  %i.cc = add i64 %.024.i.i, 1
  %i.cd = and i64 %i.cb, %i.cc                    ; 2 uses
  %storemerge.i.i = add i16 %.120.i.i, 1          ; 2 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.cd ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 3 uses
  %i.cg = load i16, ptr %i.cf, align 4            ; 2 uses
  %i.ch = icmp eq i16 %i.cg, -1
  br i1 %i.ch, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESN_IJODnEEEEEvmsjDpOT_.exit, label %bb.e, !llvm.loop !83

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESN_IJODnEEEEEvmsjDpOT_.exit: ; preds = %bb.i, %bb.d
  %.sroa.06.2.i = phi ptr [ %i.ba, %bb.d ], [ %.sroa.06.1.i, %bb.i ]
  %.sroa.8.2.i = phi ptr [ %i.bc, %bb.d ], [ %.sroa.8.1.i, %bb.i ]
  %.018.lcssa.i.i = phi i32 [ %i.bd, %bb.d ], [ %.1.i.i, %bb.i ]
  %storemerge.lcssa.i.i = phi i16 [ %storemerge22.i.i, %bb.d ], [ %storemerge.i.i, %bb.i ]
  %.lcssa21.i.i = phi ptr [ %i.bi, %bb.d ], [ %i.ce, %bb.i ] ; 3 uses
  %.lcssa.i.i = phi ptr [ %i.bj, %bb.d ], [ %i.cf, %bb.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.lcssa21.i.i, i64 8
  store ptr %.sroa.06.2.i, ptr %i.ci, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa21.i.i, i64 16
  store ptr %.sroa.8.2.i, ptr %.sroa.8.0..sroa_idx.i, align 8
  store i32 %.018.lcssa.i.i, ptr %.lcssa21.i.i, align 8
  store i16 %storemerge.lcssa.i.i, ptr %.lcssa.i.i, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESN_IJODnEEEEEvmsjDpOT_.exit, %bb.c
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8
  %i.cm = load ptr, ptr %i.l, align 8
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.1.lcssa
  br label %.loopexit49

.loopexit49:                                      ; preds = %.lr.ph, %bb.j
  %.pn47 = phi ptr [ %i.cn, %bb.j ], [ %i.r, %.lr.ph ]
  %.pn45 = phi i8 [ 1, %bb.j ], [ 0, %.lr.ph ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i8 } poison, ptr %.pn47, 0
  %.pn = insertvalue { ptr, i8 } %.fca.0.insert.i.pn, i8 %.pn45, 1
  ret { ptr, i8 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp sgt i16 %1, 8192
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %.not = icmp ult i64 %i.f, %i.h
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i64, ptr %0, align 8                ; 2 uses
  %i.j = add i64 %i.i, -4611686018427387904
  %i.k = icmp ult i64 %i.j, -4611686018427387905
  br i1 %i.k, label %bb.d, label %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.45)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #30
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #25
  resume { ptr, i32 } %i.m

_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit: ; preds = %bb.c
  %i.n = shl nsw i64 %i.i, 1
  %i.o = add i64 %i.n, 2
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %i.o)
  store i8 0, ptr %i.a, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !range !7, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.p, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load float, ptr %i.s, align 8            ; 2 uses
  %i.u = fcmp une float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = uitofp i64 %i.f to float                 ; 2 uses
  %i.z = uitofp i64 %i.w to float
  %i.aa = fdiv float %i.y, %i.z
  %.0.i = select i1 %i.x, float 0.000000e+00, float %i.aa
  %i.ab = fcmp olt float %.0.i, %i.t
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = add nuw i64 %i.f, 1
  %i.ad = uitofp i64 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.y, i64 1
  %i.ai = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv <2 x float> %i.ah, %i.aj
  %i.al = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ak) ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %i.an = fptoui float %i.am to i64
  %i.ao = extractelement <2 x float> %i.al, i64 1
  %i.ap = fptoui float %i.ao to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.ap)
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %.sroa.speculated.i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.j, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit
  %.0 = phi i1 [ true, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit ], [ true, %bb.j ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tsl::detail_robin_hash::robin_hash", align 8 ; 17 uses
  %3 = alloca %"class.std::allocator.25", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load float, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load float, ptr %i.c, align 4
  call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_EC2EmRKS8_RKSA_RKSB_ff(ptr noundef nonnull align 8 dereferenceable(74) %2, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, float noundef %i.b, float noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not23 = icmp eq ptr %i.g, %i.i
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8
  %.fr25 = freeze i64 %i.j
  %i.k = icmp ult i64 %.fr25, 4294967297
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.sroa.019.024.us = phi ptr [ %i.an, %bb.g ], [ %i.g, %.lr.ph ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.019.024.us, i64 4
  %i.n = load i16, ptr %i.m, align 4
  %i.o = icmp eq i16 %i.n, -1
  br i1 %i.o, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.p = load i32, ptr %.sroa.019.024.us, align 4 ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = load i64, ptr %2, align 8                ; 2 uses
  %i.s = and i64 %i.r, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.019.024.us, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.019.024.us, i64 16 ; 2 uses
  %.pre17.i.us = load ptr, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.v = phi i64 [ %i.r, %bb.b ], [ %i.aj, %bb.f ]
  %4 = phi ptr [ %.pre17.i.us, %bb.b ], [ %5, %bb.f ] ; 2 uses
  %.013.i.us = phi i16 [ 0, %bb.b ], [ %i.ak, %bb.f ] ; 4 uses
  %.012.i.us = phi i32 [ %i.p, %bb.b ], [ %.1.i.us, %bb.f ] ; 3 uses
  %.0.i.us = phi i64 [ %i.s, %bb.b ], [ %i.am, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %.0.i.us ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 4 uses
  %i.y = load i16, ptr %i.x, align 4              ; 2 uses
  %i.z = icmp sgt i16 %.013.i.us, %i.y
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i16 %i.y, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  br i1 %i.aa, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.t, align 8
  %i.ad = load ptr, ptr %i.ab, align 8
  store ptr %i.ad, ptr %i.t, align 8
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8
  %i.ag = load ptr, ptr %i.ae, align 8
  store ptr %i.ag, ptr %i.u, align 8
  store ptr %i.af, ptr %i.ae, align 8
  %i.ah = load i16, ptr %i.x, align 4
  store i16 %.013.i.us, ptr %i.x, align 4
  %i.ai = load i32, ptr %i.w, align 8
  store i32 %.012.i.us, ptr %i.w, align 8
  %.pre.i.us = load ptr, ptr %i.l, align 8
  %.pre30 = load i64, ptr %2, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.aj = phi i64 [ %.pre30, %bb.e ], [ %i.v, %bb.c ] ; 2 uses
  %5 = phi ptr [ %.pre.i.us, %bb.e ], [ %4, %bb.c ]
  %.114.i.us = phi i16 [ %i.ah, %bb.e ], [ %.013.i.us, %bb.c ]
  %.1.i.us = phi i32 [ %i.ai, %bb.e ], [ %.012.i.us, %bb.c ]
  %i.ak = add i16 %.114.i.us, 1
  %i.al = add i64 %.0.i.us, 1
  %i.am = and i64 %i.aj, %i.al
  br label %bb.c, !llvm.loop !84

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit.us: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  store i32 %.012.i.us, ptr %i.w, align 8
  store i16 %.013.i.us, ptr %i.x, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit.us, %.lr.ph.split.us
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.019.024.us, i64 24 ; 2 uses
  %.not.us = icmp eq ptr %i.an, %i.i
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.n, %bb.g, %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8
  %i.ao = load i64, ptr %0, align 8
  store i64 %i.ao, ptr %2, align 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.f, align 8
  %i.as = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.au = load <2 x ptr>, ptr %i.ap, align 8
  store <2 x ptr> %i.ar, ptr %i.ap, align 8
  store <2 x ptr> %i.au, ptr %i.f, align 8
  %i.av = load <2 x ptr>, ptr %i.at, align 8
  %i.aw = load ptr, ptr %i.at, align 8
  %i.ax = load <2 x ptr>, ptr %i.aq, align 8
  store <2 x ptr> %i.av, ptr %i.aq, align 8
  store <2 x ptr> %i.ax, ptr %i.at, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = load i64, ptr %i.e, align 8
  %i.ba = load <2 x i64>, ptr %i.ay, align 8
  store i64 %i.az, ptr %i.ay, align 8
  store <2 x i64> %i.ba, ptr %i.e, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bd = load i64, ptr %i.bb, align 8
  %i.be = load i64, ptr %i.bc, align 8
  store i64 %i.be, ptr %i.bb, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.a, align 8
  %i.bh = load <2 x float>, ptr %i.bf, align 8
  store <2 x float> %i.bg, ptr %i.bf, align 8
  store <2 x float> %i.bh, ptr %i.a, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bk = load i8, ptr %i.bi, align 8, !range !7, !noundef !8
  %i.bl = load i8, ptr %i.bj, align 8, !range !7, !noundef !8
  store i8 %i.bl, ptr %i.bi, align 8
  store i8 %i.bk, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 73 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.bo = load i8, ptr %i.bm, align 1, !range !7, !noundef !8
  %i.bp = load i8, ptr %i.bn, align 1, !range !7, !noundef !8
  store i8 %i.bp, ptr %i.bm, align 1
  store i8 %i.bo, ptr %i.bn, align 1
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bq = ptrtoint ptr %i.aw to i64
  %i.br = ptrtoint ptr %i.as to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.bs) #31
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_ED2Ev.exit: ; preds = %._crit_edge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %.sroa.019.024 = phi ptr [ %i.dd, %bb.n ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 4
  %i.bu = load i16, ptr %i.bt, align 4
  %i.bv = icmp eq i16 %i.bu, -1
  br i1 %i.bv, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 8 ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.bz = lshr i64 %i.by, 33
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = mul i64 %i.ca, -49064778989728563       ; 2 uses
  %i.cc = lshr i64 %i.cb, 33
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = mul i64 %i.cd, -4265267296055464877     ; 2 uses
  %i.cf = lshr i64 %i.ce, 33
  %i.cg = xor i64 %i.cf, %i.ce                    ; 2 uses
  %i.ch = load i64, ptr %2, align 8               ; 2 uses
  %i.ci = and i64 %i.ch, %i.cg
  %i.cj = trunc i64 %i.cg to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 16 ; 2 uses
  %.pre17.i = load ptr, ptr %i.l, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.cl = phi i64 [ %i.ch, %bb.i ], [ %i.cz, %bb.m ]
  %6 = phi ptr [ %.pre17.i, %bb.i ], [ %7, %bb.m ] ; 2 uses
  %.013.i = phi i16 [ 0, %bb.i ], [ %i.da, %bb.m ] ; 4 uses
  %.012.i = phi i32 [ %i.cj, %bb.i ], [ %.1.i, %bb.m ] ; 3 uses
  %.0.i = phi i64 [ %i.ci, %bb.i ], [ %i.dc, %bb.m ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %.0.i ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 4 uses
  %i.co = load i16, ptr %i.cn, align 4            ; 2 uses
  %i.cp = icmp sgt i16 %.013.i, %i.co
  br i1 %i.cp, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cq = icmp eq i16 %i.co, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  br i1 %i.cq, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cs = load ptr, ptr %i.bw, align 8
  %i.ct = load ptr, ptr %i.cr, align 8
  store ptr %i.ct, ptr %i.bw, align 8
  store ptr %i.cs, ptr %i.cr, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.cv = load ptr, ptr %i.ck, align 8
  %i.cw = load ptr, ptr %i.cu, align 8
  store ptr %i.cw, ptr %i.ck, align 8
  store ptr %i.cv, ptr %i.cu, align 8
  %i.cx = load i16, ptr %i.cn, align 4
  store i16 %.013.i, ptr %i.cn, align 4
  %i.cy = load i32, ptr %i.cm, align 8
  store i32 %.012.i, ptr %i.cm, align 8
  %.pre.i = load ptr, ptr %i.l, align 8
  %.pre = load i64, ptr %2, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.cz = phi i64 [ %.pre, %bb.l ], [ %i.cl, %bb.j ] ; 2 uses
  %7 = phi ptr [ %.pre.i, %bb.l ], [ %6, %bb.j ]
  %.114.i = phi i16 [ %i.cx, %bb.l ], [ %.013.i, %bb.j ]
  %.1.i = phi i32 [ %i.cy, %bb.l ], [ %.012.i, %bb.j ]
  %i.da = add i16 %.114.i, 1
  %i.db = add i64 %.0.i, 1
  %i.dc = and i64 %i.cz, %i.db
  br label %bb.j, !llvm.loop !84

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false)
  store i32 %.012.i, ptr %i.cm, align 8
  store i16 %.013.i, ptr %i.cn, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS4_.exit, %.lr.ph.split
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.dd, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_EC2EmRKS8_RKSA_RKSB_ff(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, float noundef %5, float noundef %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.45)
          to label %bb.c unwind label %common.resume

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #25
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i

_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i: ; preds = %bb.d
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  br i1 %i.e, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i
  %i.f = add i64 %1, -1                           ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p
  %i.s = add nuw i64 %i.r, 1
  br label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit

_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i, %bb.e
  %.012.i.i = phi i64 [ %i.s, %bb.e ], [ %1, %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i ] ; 9 uses
  %i.t = add i64 %.012.i.i, -1
  store i64 %i.t, ptr %0, align 8
  %i.u = icmp ugt i64 %.012.i.i, 384307168202282325
  br i1 %i.u, label %.noexc, label %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i

.noexc:                                           ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #30
  unreachable

_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = mul nuw nsw i64 %.012.i.i, 24
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #32 ; 5 uses
  store ptr %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.012.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.z, align 8
  %xtraiter = and i64 %.012.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ]
  store i32 0, ptr %.08.i.i.i.i.i.prol, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 4
  store i16 -1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 6
  store i8 0, ptr %i.ab, align 2
  %i.ac = add i64 %.057.i.i.i.i.i.prol, -1        ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !85

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIPvS4_ELb1EEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %.012.i.i, 4
  br i1 %i.ae, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  store i16 -1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 6
  store i8 0, ptr %i.ag, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 28
  store i16 -1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 30
  store i8 0, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 52
  store i16 -1, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 54
  store i8 0, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 76
  store i16 -1, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 78
  store i8 0, ptr %i.ap, align 2
  %i.aq = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.3, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !86

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.at = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.g, label %.thread, !prof !87

bb.g:                                             ; preds = %bb.f
  %i.av = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket) #25
  %.not.i10 = icmp eq i32 %i.av, 0
  br i1 %.not.i10, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket) #25
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIPvS3_ENS_9robin_mapIS3_S3_N8nanobind6detail8ptr_hashESt8equal_toIS3_ESaIS4_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.as, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.ay, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  br label %bb.i

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.lcssa, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %.012.i.i, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.be, align 1
  %i.bf = load ptr, ptr %i.az, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -18
  store i8 1, ptr %i.bg, align 2
  %.pre = load i64, ptr %i.bb, align 8
  %i.bh = uitofp i64 %.pre to float
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.unr-lcssa
  %i.bi = phi float [ %i.bh, %.unr-lcssa ], [ 0.000000e+00, %.thread ]
  %i.bj = fcmp olt float %5, 0.000000e+00
  %i.bk = select i1 %i.bj, float 0.000000e+00, float %5 ; 2 uses
  %i.bl = fcmp ogt float %i.bk, 1.500000e-01
  %.sroa.speculated.i = select i1 %i.bl, float 1.500000e-01, float %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_0
